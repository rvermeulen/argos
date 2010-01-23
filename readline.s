	.file	"readline.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.data
	.align 4
	.type	term_hist_entry, @object
	.size	term_hist_entry, 4
term_hist_entry:
	.long	-1
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"%s"
	.text
	.p2align 4,,15
	.type	term_show_prompt2, @function
term_show_prompt2:
.LFB99:
	.file 1 "readline.c"
	.loc 1 61 0
	subq	$8, %rsp
.LCFI0:
	.loc 1 62 0
	movl	$term_prompt, %esi
	movl	$.LC0, %edi
	xorl	%eax, %eax
	call	term_printf
	.loc 1 63 0
	call	term_flush
	.loc 1 64 0
	movl	$0, term_last_cmd_buf_index(%rip)
	.loc 1 65 0
	movl	$0, term_last_cmd_buf_size(%rip)
	.loc 1 66 0
	movl	$0, term_esc_state(%rip)
	addq	$8, %rsp
	ret
.LFE99:
	.size	term_show_prompt2, .-term_show_prompt2
	.p2align 4,,15
	.type	term_insert_char, @function
term_insert_char:
.LFB102:
	.loc 1 117 0
	.loc 1 118 0
	movl	term_cmd_buf_index(%rip), %eax
	.loc 1 117 0
	pushq	%rbx
.LCFI1:
	.loc 1 117 0
	movl	%edi, %ebx
	.loc 1 118 0
	cmpl	$4094, %eax
	jle	.L5
	.loc 1 126 0
	popq	%rbx
	ret
	.p2align 4,,7
.L5:
	.loc 1 119 0
	movl	term_cmd_buf_size(%rip), %edx
	movslq	%eax,%rdi
	leaq	term_cmd_buf(%rdi), %rsi
	addq	$term_cmd_buf+1, %rdi
	subl	%eax, %edx
	movslq	%edx,%rdx
	call	memmove
	.loc 1 122 0
	movl	term_cmd_buf_index(%rip), %eax
	.loc 1 123 0
	incl	term_cmd_buf_size(%rip)
	.loc 1 122 0
	movslq	%eax,%rdx
	.loc 1 124 0
	incl	%eax
	.loc 1 122 0
	movb	%bl, term_cmd_buf(%rdx)
	.loc 1 126 0
	popq	%rbx
	.loc 1 124 0
	movl	%eax, term_cmd_buf_index(%rip)
	.loc 1 126 0
	ret
.LFE102:
	.size	term_insert_char, .-term_insert_char
	.p2align 4,,15
	.type	term_backward_char, @function
term_backward_char:
.LFB103:
	.loc 1 129 0
	.loc 1 130 0
	movl	term_cmd_buf_index(%rip), %eax
	testl	%eax, %eax
	jle	.L6
	.loc 1 131 0
	decl	%eax
	movl	%eax, term_cmd_buf_index(%rip)
.L6:
	rep ; ret
.LFE103:
	.size	term_backward_char, .-term_backward_char
	.p2align 4,,15
	.type	term_delete_char, @function
term_delete_char:
.LFB105:
	.loc 1 143 0
	subq	$8, %rsp
.LCFI2:
	.loc 1 144 0
	movl	term_cmd_buf_index(%rip), %ecx
	movl	term_cmd_buf_size(%rip), %eax
	cmpl	%eax, %ecx
	jl	.L10
	.loc 1 150 0
	addq	$8, %rsp
	ret
	.p2align 4,,7
.L10:
	.loc 1 145 0
	subl	%ecx, %eax
	movslq	%ecx,%rdi
	leal	-1(%rax), %edx
	leaq	term_cmd_buf+1(%rdi), %rsi
	addq	$term_cmd_buf, %rdi
	movslq	%edx,%rdx
	call	memmove
	.loc 1 148 0
	decl	term_cmd_buf_size(%rip)
	.loc 1 150 0
	addq	$8, %rsp
	ret
.LFE105:
	.size	term_delete_char, .-term_delete_char
	.p2align 4,,15
	.type	term_bol, @function
term_bol:
.LFB108:
	.loc 1 200 0
	.loc 1 201 0
	movl	$0, term_cmd_buf_index(%rip)
	ret
.LFE108:
	.size	term_bol, .-term_bol
	.p2align 4,,15
	.type	term_eol, @function
term_eol:
.LFB109:
	.loc 1 205 0
	.loc 1 206 0
	movl	term_cmd_buf_size(%rip), %eax
	movl	%eax, term_cmd_buf_index(%rip)
	ret
.LFE109:
	.size	term_eol, .-term_eol
	.p2align 4,,15
.globl add_completion
	.type	add_completion, @function
add_completion:
.LFB113:
	.loc 1 296 0
	.loc 1 297 0
	movl	nb_completions(%rip), %eax
	.loc 1 296 0
	pushq	%rbx
.LCFI3:
	.loc 1 297 0
	cmpl	$255, %eax
	jle	.L15
	.loc 1 300 0
	popq	%rbx
	ret
	.p2align 4,,7
.L15:
	.loc 1 298 0
	movslq	%eax,%rbx
	incl	%eax
	movl	%eax, nb_completions(%rip)
	call	qemu_strdup
	movq	%rax, completions(,%rbx,8)
	.loc 1 300 0
	popq	%rbx
	ret
.LFE113:
	.size	add_completion, .-add_completion
	.section	.rodata.str1.1
.LC4:
	.string	"*"
.LC5:
	.string	"\033[K"
.LC3:
	.string	"\033[D"
.LC6:
	.string	"\033[C"
.LC1:
	.string	"\n"
.LC2:
	.string	"%-*s"
	.text
	.p2align 4,,15
.globl readline_handle_byte
	.type	readline_handle_byte, @function
readline_handle_byte:
.LFB115:
	.loc 1 371 0
	pushq	%r15
.LCFI4:
	pushq	%r14
.LCFI5:
	pushq	%r13
.LCFI6:
	pushq	%r12
.LCFI7:
	pushq	%rbp
.LCFI8:
	pushq	%rbx
.LCFI9:
	subq	$24, %rsp
.LCFI10:
	.loc 1 372 0
	movl	term_esc_state(%rip), %eax
	cmpl	$1, %eax
	je	.L106
	jle	.L212
	cmpl	$2, %eax
	je	.L109
.L133:
.L196:
	movl	term_cmd_buf_size(%rip), %ebp
.L17:
.LBB2:
.LBB3:
	.loc 1 81 0
	cmpl	term_last_cmd_buf_size(%rip), %ebp
	je	.L213
.L144:
	.loc 1 83 0
	xorl	%ebx, %ebx
	cmpl	term_last_cmd_buf_index(%rip), %ebx
	jl	.L148
	.loc 1 86 0
	movslq	%ebp,%rax
	movb	$0, term_cmd_buf(%rax)
	.loc 1 87 0
	movl	term_is_password(%rip), %eax
	testl	%eax, %eax
	je	.L149
.L215:
	.loc 1 88 0
	movl	$term_cmd_buf, %edi
	.loc 1 89 0
	xorl	%ebx, %ebx
	.loc 1 88 0
	call	strlen
	movl	%eax, %ebp
	.loc 1 89 0
	cmpl	%ebp, %ebx
	jge	.L154
	.p2align 4,,7
.L214:
	.loc 1 90 0
	movl	$.LC4, %edi
	xorl	%eax, %eax
	.loc 1 89 0
	incl	%ebx
	.loc 1 90 0
	call	term_printf
	.loc 1 89 0
	cmpl	%ebp, %ebx
	jl	.L214
.L154:
	.loc 1 94 0
	movl	$.LC5, %edi
	xorl	%eax, %eax
	call	term_printf
	.loc 1 95 0
	movslq	term_cmd_buf_size(%rip),%rdx
	movl	$term_cmd_buf, %esi
	movl	$term_last_cmd_buf, %edi
	call	memcpy
	.loc 1 96 0
	movl	term_cmd_buf_size(%rip), %eax
	movl	%eax, term_last_cmd_buf_size(%rip)
	.loc 1 97 0
	movl	%eax, term_last_cmd_buf_index(%rip)
.L143:
	.loc 1 99 0
	movl	term_cmd_buf_index(%rip), %r12d
	movl	term_last_cmd_buf_index(%rip), %eax
	cmpl	%eax, %r12d
	je	.L155
	.loc 1 100 0
	movl	%r12d, %ebp
	subl	%eax, %ebp
	.loc 1 101 0
	testl	%ebp, %ebp
	jle	.L156
	.loc 1 102 0
	xorl	%ebx, %ebx
	cmpl	%ebp, %ebx
	jl	.L160
.L161:
	.loc 1 111 0
	movl	%r12d, term_last_cmd_buf_index(%rip)
.L155:
.LBE3:
.LBE2:
	.loc 1 113 0
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
.LBB4:
.LBB5:
	jmp	term_flush
	.p2align 4,,7
.L148:
	.loc 1 84 0
	xorl	%eax, %eax
	movl	$.LC3, %edi
	.loc 1 83 0
	incl	%ebx
	.loc 1 84 0
	call	term_printf
	.loc 1 83 0
	cmpl	term_last_cmd_buf_index(%rip), %ebx
	jl	.L148
	movl	term_cmd_buf_size(%rip), %ebp
	.loc 1 86 0
	movslq	%ebp,%rax
	movb	$0, term_cmd_buf(%rax)
	.loc 1 87 0
	movl	term_is_password(%rip), %eax
	testl	%eax, %eax
	jne	.L215
.L149:
	.loc 1 92 0
	movl	$term_cmd_buf, %esi
	movl	$.LC0, %edi
	xorl	%eax, %eax
	call	term_printf
	jmp	.L154
	.p2align 4,,7
.L160:
	.loc 1 103 0
	xorl	%eax, %eax
	movl	$.LC6, %edi
	.loc 1 102 0
	incl	%ebx
	.loc 1 103 0
	call	term_printf
	.loc 1 102 0
	cmpl	%ebp, %ebx
	jl	.L160
.L208:
	movl	term_cmd_buf_index(%rip), %r12d
	jmp	.L161
.L106:
.LBE5:
.LBE4:
	.loc 1 422 0
	cmpl	$91, %edi
	.p2align 4,,2
	je	.L216
	.loc 1 426 0
	movl	$0, term_esc_state(%rip)
	jmp	.L196
.L213:
.LBB6:
.LBB7:
	.loc 1 81 0
	movslq	%ebp,%rcx
	movl	$term_cmd_buf, %esi
	movl	$term_last_cmd_buf, %edi
	cld
	cmpq	%rcx, %rcx
	repz
	cmpsb
	je	.L143
	jmp	.L144
.L109:
.LBE7:
.LBE6:
	.loc 1 430 0
	leal	-48(%rdi), %eax
	cmpl	$78, %eax
	ja	.L201
	mov	%eax, %eax
	.p2align 4,,5
	jmp	*.L141(,%rax,8)
	.section	.rodata
	.align 8
	.align 4
.L141:
	.quad	.L132
	.quad	.L132
	.quad	.L132
	.quad	.L132
	.quad	.L132
	.quad	.L132
	.quad	.L132
	.quad	.L132
	.quad	.L132
	.quad	.L132
	.quad	.L201
	.quad	.L201
	.quad	.L201
	.quad	.L201
	.quad	.L201
	.quad	.L201
	.quad	.L201
	.quad	.L112
	.quad	.L123
	.quad	.L129
	.quad	.L128
	.quad	.L123
	.quad	.L112
	.quad	.L201
	.quad	.L201
	.quad	.L201
	.quad	.L201
	.quad	.L201
	.quad	.L201
	.quad	.L201
	.quad	.L201
	.quad	.L201
	.quad	.L201
	.quad	.L201
	.quad	.L201
	.quad	.L201
	.quad	.L201
	.quad	.L201
	.quad	.L201
	.quad	.L201
	.quad	.L201
	.quad	.L201
	.quad	.L201
	.quad	.L201
	.quad	.L201
	.quad	.L201
	.quad	.L201
	.quad	.L201
	.quad	.L201
	.quad	.L201
	.quad	.L201
	.quad	.L201
	.quad	.L201
	.quad	.L201
	.quad	.L201
	.quad	.L201
	.quad	.L201
	.quad	.L201
	.quad	.L201
	.quad	.L201
	.quad	.L201
	.quad	.L201
	.quad	.L201
	.quad	.L201
	.quad	.L201
	.quad	.L201
	.quad	.L201
	.quad	.L201
	.quad	.L201
	.quad	.L201
	.quad	.L201
	.quad	.L201
	.quad	.L201
	.quad	.L201
	.quad	.L201
	.quad	.L201
	.quad	.L201
	.quad	.L201
	.quad	.L134
	.text
.L134:
	.loc 1 449 0
	movl	term_esc_param(%rip), %eax
	cmpl	$3, %eax
	je	.L137
	.p2align 4,,2
	jg	.L139
	decl	%eax
	.p2align 4,,3
	jne	.L201
	.loc 1 451 0
	.p2align 4,,10
	call	term_bol
.L201:
	movl	term_cmd_buf_size(%rip), %ebp
.L110:
	.loc 1 464 0
	movl	$0, term_esc_state(%rip)
	jmp	.L17
.L212:
	.loc 1 372 0
	testl	%eax, %eax
	jne	.L196
	.loc 1 374 0
	cmpl	$10, %edi
	je	.L62
	.p2align 4,,7
	jle	.L217
	cmpl	$27, %edi
	.p2align 4,,7
	je	.L95
	.p2align 4,,9
	jg	.L105
	cmpl	$13, %edi
	.p2align 4,,7
	je	.L62
	cmpl	$23, %edi
	.p2align 4,,7
	je	.L82
.L101:
	.loc 1 415 0
	cmpl	$31, %edi
	.p2align 4,,5
	jle	.L196
	.loc 1 416 0
	.p2align 4,,7
	call	term_insert_char
	.p2align 4,,6
	jmp	.L196
	.p2align 4,,7
.L156:
.LBB8:
.LBB9:
	.loc 1 106 0
	negl	%ebp
	.loc 1 107 0
	xorl	%ebx, %ebx
	cmpl	%ebp, %ebx
	.p2align 4,,2
	jge	.L161
	.p2align 4,,7
.L165:
	.loc 1 108 0
	xorl	%eax, %eax
	movl	$.LC3, %edi
	.loc 1 107 0
	incl	%ebx
	.loc 1 108 0
	call	term_printf
	.loc 1 107 0
	cmpl	%ebp, %ebx
	jl	.L165
	jmp	.L208
.L216:
.LBE9:
.LBE8:
	.loc 1 423 0
	movl	$2, term_esc_state(%rip)
	.loc 1 424 0
	movl	$0, term_esc_param(%rip)
	jmp	.L196
.L217:
	.loc 1 374 0
	cmpl	$5, %edi
	je	.L22
	jg	.L104
	cmpl	$1, %edi
	.p2align 4,,7
	je	.L20
	cmpl	$4, %edi
	.p2align 4,,7
	jne	.L101
.LBB10:
.LBB11:
	.loc 1 156 0
	.p2align 4,,7
	call	term_delete_char
	.p2align 4,,6
	jmp	.L196
.L112:
.LBE11:
.LBE10:
.LBB12:
.LBB13:
	.loc 1 213 0
	movl	term_hist_entry(%rip), %eax
	testl	%eax, %eax
	je	.L201
	.loc 1 215 0
	cmpl	$-1, %eax
	.p2align 4,,2
	je	.L218
.L115:
	.loc 1 223 0
	decl	%eax
	.loc 1 224 0
	testl	%eax, %eax
	.loc 1 223 0
	movl	%eax, term_hist_entry(%rip)
	.loc 1 224 0
	js	.L201
	.loc 1 225 0
	cltq
	movl	$term_cmd_buf, %edi
	movl	$4096, %esi
	movq	term_history(,%rax,8), %rdx
	call	pstrcpy
	.loc 1 227 0
	movl	$term_cmd_buf, %edi
	call	strlen
.L206:
	movl	%eax, %ebp
.LBE13:
.LBE12:
.LBB14:
.LBB15:
	.loc 1 241 0
	movl	%eax, term_cmd_buf_size(%rip)
	movl	%eax, term_cmd_buf_index(%rip)
	jmp	.L110
.L123:
	.loc 1 233 0
	movl	term_hist_entry(%rip), %ecx
	cmpl	$63, %ecx
	sete	%dl
	cmpl	$-1, %ecx
	sete	%al
	orl	%edx, %eax
	testb	$1, %al
	jne	.L201
	.loc 1 235 0
	incl	%ecx
	movslq	%ecx,%rax
	movq	term_history(,%rax,8), %rdx
	testq	%rdx, %rdx
	jne	.L219
	.loc 1 239 0
	movl	$-1, term_hist_entry(%rip)
.L127:
	.loc 1 241 0
	movl	$term_cmd_buf, %edi
	call	strlen
	jmp	.L206
.L129:
.LBE15:
.LBE14:
.LBB16:
.LBB17:
	.loc 1 137 0
	movl	term_cmd_buf_index(%rip), %eax
	movl	term_cmd_buf_size(%rip), %ebp
	cmpl	%ebp, %eax
	jge	.L110
	.loc 1 138 0
	incl	%eax
	movl	%eax, term_cmd_buf_index(%rip)
	jmp	.L110
.L128:
.LBE17:
.LBE16:
	.loc 1 440 0
	call	term_backward_char
	.p2align 4,,2
	jmp	.L201
.L132:
	.loc 1 446 0
	movl	term_esc_param(%rip), %eax
	movl	$10, %edx
	imull	%edx, %eax
	leal	-48(%rax,%rdi), %eax
	movl	%eax, term_esc_param(%rip)
	jmp	.L196
.L62:
	.loc 1 389 0
	movslq	term_cmd_buf_size(%rip),%rax
	.loc 1 390 0
	movl	term_is_password(%rip), %esi
	testl	%esi, %esi
	.loc 1 389 0
	movb	$0, term_cmd_buf(%rax)
	.loc 1 390 0
	jne	.L63
.LBB18:
.LBB19:
	.loc 1 249 0
	cmpb	$0, term_cmd_buf(%rip)
	je	.L63
	.loc 1 252 0
	movl	term_hist_entry(%rip), %eax
	.loc 1 251 0
	xorl	%r13d, %r13d
	.loc 1 252 0
	cmpl	$-1, %eax
	je	.L66
	.loc 1 254 0
	movslq	%eax,%r12
.LBB20:
	.loc 1 256 0
	movl	$term_cmd_buf, %esi
.LBE20:
	.loc 1 255 0
	movl	%eax, %ebp
	.loc 1 254 0
	movq	term_history(,%r12,8), %rbx
.LBB21:
	.loc 1 256 0
	movq	%rbx, %rdi
	call	strcmp
.LBE21:
	testl	%eax, %eax
	je	.L68
.L66:
	.loc 1 261 0
	xorl	%ebp, %ebp
	jmp	.L79
	.p2align 4,,7
.L220:
.LBB22:
	.loc 1 265 0
	movl	$term_cmd_buf, %esi
	movq	%rbx, %rdi
	call	strcmp
.LBE22:
	testl	%eax, %eax
	je	.L68
	.loc 1 261 0
	incl	%ebp
	cmpl	$63, %ebp
	jg	.L70
.L79:
	.loc 1 262 0
	movslq	%ebp,%r12
	movq	term_history(,%r12,8), %rbx
	.loc 1 263 0
	testq	%rbx, %rbx
	jne	.L220
.L70:
	.loc 1 279 0
	cmpl	$64, %ebp
	je	.L221
.L80:
	.loc 1 287 0
	testq	%r13, %r13
	je	.L222
.L81:
	.loc 1 289 0
	movslq	%ebp,%rax
	.loc 1 290 0
	movl	$-1, term_hist_entry(%rip)
	.loc 1 289 0
	movq	%r13, term_history(,%rax,8)
.L63:
.LBE19:
.LBE18:
	.loc 1 392 0
	movl	$.LC1, %edi
	xorl	%eax, %eax
	call	term_printf
	.loc 1 398 0
	movq	term_readline_opaque(%rip), %rdi
	movl	$term_cmd_buf, %esi
	.loc 1 393 0
	movl	$0, term_cmd_buf_index(%rip)
	.loc 1 394 0
	movl	$0, term_cmd_buf_size(%rip)
	.loc 1 395 0
	movl	$0, term_last_cmd_buf_index(%rip)
	.loc 1 396 0
	movl	$0, term_last_cmd_buf_size(%rip)
	.loc 1 398 0
	call	*term_readline_func(%rip)
	jmp	.L196
.L68:
.LBB23:
.LBB24:
	.loc 1 269 0
	leaq	0(,%r12,8), %rdi
	movl	$65, %edx
	.loc 1 267 0
	movq	%rbx, %r13
	.loc 1 269 0
	subl	%ebp, %edx
	leaq	term_history+8(%rdi), %rsi
	movslq	%edx,%rdx
	addq	$term_history, %rdi
	salq	$3, %rdx
	call	memmove
	.loc 1 272 0
	cmpl	$63, %ebp
	.loc 1 271 0
	movq	$0, term_history+504(%rip)
	.loc 1 272 0
	jle	.L78
	jmp	.L70
	.p2align 4,,7
.L223:
	incl	%ebp
	cmpl	$63, %ebp
	jg	.L70
	movslq	%ebp,%r12
.L78:
	.loc 1 273 0
	cmpq	$0, term_history(,%r12,8)
	jne	.L223
	jmp	.L70
	.p2align 4,,7
.L104:
.LBE24:
.LBE23:
	.loc 1 374 0
	cmpl	$8, %edi
	je	.L97
	cmpl	$9, %edi
	.p2align 4,,7
	jne	.L101
.LBB25:
.LBB26:
	.loc 1 309 0
	movl	term_cmd_buf_index(%rip), %edi
	.loc 1 307 0
	movl	$0, nb_completions(%rip)
	.loc 1 309 0
	incl	%edi
	movslq	%edi,%rdi
	call	qemu_malloc
	.loc 1 310 0
	testq	%rax, %rax
	.loc 1 309 0
	movq	%rax, %rbx
	.loc 1 310 0
	je	.L196
	.loc 1 312 0
	movslq	term_cmd_buf_index(%rip),%rdx
	movl	$term_cmd_buf, %esi
	movq	%rax, %rdi
	call	memcpy
	.loc 1 313 0
	movslq	term_cmd_buf_index(%rip),%rax
	.loc 1 314 0
	movq	%rbx, %rdi
	.loc 1 313 0
	movb	$0, (%rax,%rbx)
	.loc 1 314 0
	call	readline_find_completion
	.loc 1 315 0
	movq	%rbx, %rdi
	call	qemu_free
	.loc 1 318 0
	movl	nb_completions(%rip), %eax
	testl	%eax, %eax
	jle	.L196
	.loc 1 320 0
	decl	%eax
	jne	.L27
	.loc 1 321 0
	movq	completions(%rip), %rdi
	call	strlen
	.loc 1 322 0
	movl	completion_index(%rip), %ebx
	.loc 1 321 0
	movl	%eax, %ebp
.L204:
	.loc 1 322 0
	cmpl	%ebp, %ebx
	jge	.L168
	.loc 1 323 0
	movq	completions(%rip), %rdx
	movslq	%ebx,%rax
	.loc 1 322 0
	incl	%ebx
	.loc 1 323 0
	movsbl	(%rdx,%rax),%edi
	call	term_insert_char
	jmp	.L204
.L105:
.LBE26:
.LBE25:
	.loc 1 374 0
	cmpl	$127, %edi
	je	.L97
	cmpl	$155, %edi
	.p2align 4,,7
	jne	.L101
	.loc 1 412 0
	movl	$2, term_esc_state(%rip)
	.p2align 4,,2
	jmp	.L196
.L95:
	.loc 1 405 0
	movl	$1, term_esc_state(%rip)
	jmp	.L196
.L97:
.LBB27:
.LBB28:
	.loc 1 154 0
	movl	term_cmd_buf_index(%rip), %ecx
	testl	%ecx, %ecx
	jle	.L196
	.loc 1 155 0
	call	term_backward_char
	.loc 1 156 0
	call	term_delete_char
	.p2align 4,,5
	jmp	.L196
.L139:
.LBE28:
.LBE27:
	.loc 1 449 0
	cmpl	$4, %eax
	.p2align 4,,6
	jne	.L201
	.loc 1 457 0
	.p2align 4,,9
	call	term_eol
	.p2align 4,,6
	jmp	.L201
.L22:
	.loc 1 382 0
	.p2align 4,,8
	call	term_eol
	.p2align 4,,8
	jmp	.L196
.L82:
.LBB29:
.LBB30:
	.loc 1 164 0
	movl	term_cmd_buf_index(%rip), %r12d
	testl	%r12d, %r12d
	je	.L196
	movl	term_cmd_buf_size(%rip), %ebp
	cmpl	%ebp, %r12d
	jg	.L17
	.loc 1 168 0
	leal	-1(%r12), %ebx
	.loc 1 176 0
	testl	%ebx, %ebx
	jle	.L91
	call	__ctype_b_loc
	movq	(%rax), %rdx
.L89:
	.loc 1 172 0
	movslq	%ebx,%rax
	movsbq	term_cmd_buf(%rax),%rax
	testb	$32, 1(%rdx,%rax,2)
	je	.L87
	.loc 1 176 0
	decl	%ebx
	testl	%ebx, %ebx
	jg	.L89
.L91:
	.loc 1 190 0
	cmpl	%r12d, %ebx
	jge	.L17
	.loc 1 191 0
	subl	%r12d, %ebp
	movslq	%r12d,%rsi
	movslq	%ebx,%rdi
	movslq	%ebp,%rdx
	addq	$term_cmd_buf, %rsi
	addq	$term_cmd_buf, %rdi
	call	memmove
	.loc 1 194 0
	movl	term_cmd_buf_index(%rip), %eax
	movl	term_cmd_buf_size(%rip), %edx
	.loc 1 195 0
	movl	%ebx, term_cmd_buf_index(%rip)
	.loc 1 194 0
	subl	%ebx, %eax
	subl	%eax, %edx
	movl	%edx, %ebp
	movl	%edx, term_cmd_buf_size(%rip)
	jmp	.L17
	.p2align 4,,7
.L219:
.LBE30:
.LBE29:
.LBB31:
.LBB32:
	.loc 1 236 0
	movl	$4096, %esi
	movl	$term_cmd_buf, %edi
	movl	%ecx, term_hist_entry(%rip)
	call	pstrcpy
	jmp	.L127
.L137:
.LBE32:
.LBE31:
	.loc 1 454 0
	call	term_delete_char
	.p2align 4,,8
	jmp	.L201
.L20:
	.loc 1 376 0
	.p2align 4,,8
	call	term_bol
	.p2align 4,,8
	jmp	.L196
.L218:
.LBB33:
.LBB34:
	.loc 1 217 0
	xorl	%edx, %edx
	.p2align 4,,6
	jmp	.L120
	.p2align 4,,7
.L224:
	incl	%edx
	cmpl	$63, %edx
	.p2align 4,,6
	jg	.L117
.L120:
	.loc 1 218 0
	movslq	%edx,%rax
	cmpq	$0, term_history(,%rax,8)
	jne	.L224
.L117:
	movl	%edx, %eax
	.loc 1 221 0
	movl	%edx, term_hist_entry(%rip)
	jmp	.L115
.L221:
.LBE34:
.LBE33:
.LBB35:
.LBB36:
	.loc 1 281 0
	movq	term_history(%rip), %rdi
	.loc 1 285 0
	movb	$63, %bpl
	.loc 1 281 0
	call	free
	.loc 1 282 0
	movl	$504, %edx
	movq	$term_history+8, %rsi
	movl	$term_history, %edi
	call	memcpy
	.loc 1 284 0
	movq	$0, term_history+504(%rip)
	jmp	.L80
.L222:
	.loc 1 288 0
	movl	$term_cmd_buf, %edi
	call	__strdup
	movq	%rax, %r13
	jmp	.L81
.L27:
.LBE36:
.LBE35:
.LBB37:
.LBB38:
	.loc 1 329 0
	xorl	%eax, %eax
	movl	$.LC1, %edi
	.loc 1 332 0
	xorl	%ebx, %ebx
	.loc 1 329 0
	call	term_printf
	.loc 1 332 0
	movl	nb_completions(%rip), %r13d
	.loc 1 330 0
	xorl	%r15d, %r15d
	.loc 1 331 0
	xorl	%r14d, %r14d
	.loc 1 332 0
	cmpl	%r13d, %ebx
	jge	.L47
	movq	completions(%rip), %rax
	movq	%rax, 8(%rsp)
.L46:
	.loc 1 333 0
	movslq	%ebx,%rax
	movq	completions(,%rax,8), %rax
	movq	%rax, 16(%rsp)
	movq	%rax, %rdi
	call	strlen
	.loc 1 334 0
	testl	%ebx, %ebx
	.loc 1 333 0
	movl	%eax, %ebp
	.loc 1 334 0
	jne	.L37
	.loc 1 335 0
	movl	%eax, %r14d
.L38:
	.loc 1 345 0
	cmpl	%r15d, %ebp
	cmovg	%ebp, %r15d
	.loc 1 332 0
	incl	%ebx
	cmpl	%r13d, %ebx
	jl	.L46
	.loc 1 347 0
	testl	%r14d, %r14d
	jle	.L47
	.loc 1 348 0
	movl	completion_index(%rip), %ebx
	cmpl	%r14d, %ebx
	jl	.L51
.L47:
	.loc 1 351 0
	addl	$2, %r15d
	.loc 1 352 0
	cmpl	$9, %r15d
	jg	.L52
	.loc 1 353 0
	movl	$10, %r15d
.L53:
	.loc 1 356 0
	movl	$80, %edx
	.loc 1 357 0
	xorl	%r12d, %r12d
	.loc 1 358 0
	xorl	%ebx, %ebx
	.loc 1 356 0
	movl	%edx, %eax
	cltd
	idivl	%r15d
	movl	%eax, %ebp
.L205:
	.loc 1 358 0
	cmpl	%r13d, %ebx
	jge	.L174
	.loc 1 359 0
	movslq	%ebx,%rax
	movl	%r15d, %esi
	movl	$.LC2, %edi
	movq	completions(,%rax,8), %rdx
	.loc 1 360 0
	incl	%r12d
	.loc 1 359 0
	xorl	%eax, %eax
	call	term_printf
	.loc 1 360 0
	cmpl	%ebp, %r12d
	je	.L59
	movl	nb_completions(%rip), %r13d
	leal	-1(%r13), %eax
	cmpl	%ebx, %eax
	je	.L59
	.loc 1 358 0
	incl	%ebx
	jmp	.L205
.L51:
	.loc 1 349 0
	movq	completions(%rip), %rdx
	movslq	%ebx,%rax
	.loc 1 348 0
	incl	%ebx
	.loc 1 349 0
	movsbl	(%rdx,%rax),%edi
	call	term_insert_char
	.loc 1 348 0
	cmpl	%r14d, %ebx
	jl	.L51
	movl	nb_completions(%rip), %r13d
	jmp	.L47
	.p2align 4,,7
.L59:
	.loc 1 361 0
	movl	$.LC1, %edi
	xorl	%eax, %eax
	.loc 1 362 0
	xorl	%r12d, %r12d
	.loc 1 361 0
	call	term_printf
	movl	nb_completions(%rip), %r13d
	.loc 1 358 0
	incl	%ebx
	jmp	.L205
.L37:
	.loc 1 338 0
	cmpl	%r14d, %eax
	cmovl	%eax, %r14d
	.loc 1 339 0
	xorl	%r12d, %r12d
	cmpl	%r14d, %r12d
	jge	.L38
	movq	16(%rsp), %rcx
.L44:
	.loc 1 340 0
	movq	8(%rsp), %rsi
	movslq	%r12d,%rdx
	movzbl	(%rsi,%rdx), %eax
	.loc 1 341 0
	cmpb	%al, (%rcx,%rdx)
	cmovne	%r12d, %r14d
	.loc 1 339 0
	incl	%r12d
	cmpl	%r14d, %r12d
	jl	.L44
	jmp	.L38
.L174:
	.loc 1 365 0
	call	term_show_prompt2
	.p2align 4,,8
	jmp	.L196
.L168:
	.loc 1 326 0
	testl	%ebp, %ebp
	.p2align 4,,6
	jle	.L196
	movq	completions(%rip), %rax
	movslq	%ebp,%rdx
	.loc 1 327 0
	movl	$32, %edi
	.loc 1 326 0
	cmpb	$47, -1(%rax,%rdx)
	je	.L196
.LBE38:
.LBE37:
	.loc 1 416 0
	call	term_insert_char
	jmp	.L196
.L87:
.LBB39:
.LBB40:
	.loc 1 186 0
	testl	%ebx, %ebx
	.p2align 4,,6
	jle	.L91
	.p2align 4,,9
	call	__ctype_b_loc
	movq	(%rax), %rdx
	.p2align 4,,4
	jmp	.L93
	.p2align 4,,7
.L225:
	decl	%ebx
	testl	%ebx, %ebx
	.p2align 4,,3
	jle	.L91
.L93:
	.loc 1 181 0
	movslq	%ebx,%rax
	movsbq	term_cmd_buf(%rax),%rax
	testb	$32, 1(%rdx,%rax,2)
	je	.L225
	.loc 1 182 0
	incl	%ebx
	jmp	.L91
.L52:
.LBE40:
.LBE39:
.LBB41:
.LBB42:
	.loc 1 355 0
	cmpl	$81, %r15d
	movl	$80, %eax
	cmovge	%eax, %r15d
	jmp	.L53
.LBE42:
.LBE41:
.LFE115:
	.size	readline_handle_byte, .-readline_handle_byte
	.p2align 4,,15
.globl readline_start
	.type	readline_start, @function
readline_start:
.LFB116:
	.loc 1 473 0
	movq	%rbx, -24(%rsp)
.LCFI11:
	movq	%r12, -16(%rsp)
.LCFI12:
	movq	%rdx, %rbx
	movq	%rcx, %r12
	movq	%r13, -8(%rsp)
.LCFI13:
	.loc 1 474 0
	movq	%rdi, %rdx
	.loc 1 473 0
	subq	$24, %rsp
.LCFI14:
	.loc 1 473 0
	movl	%esi, %r13d
	.loc 1 474 0
	movl	$term_prompt, %edi
	movl	$256, %esi
	call	pstrcpy
	.loc 1 475 0
	movq	%rbx, term_readline_func(%rip)
	.loc 1 476 0
	movq	%r12, term_readline_opaque(%rip)
	.loc 1 477 0
	movl	%r13d, term_is_password(%rip)
.LBB43:
.LBB44:
	.loc 1 71 0
	call	term_show_prompt2
.LBE44:
.LBE43:
	.loc 1 73 0
	movq	(%rsp), %rbx
	movq	8(%rsp), %r12
	movq	16(%rsp), %r13
.LBB45:
.LBB46:
	.loc 1 72 0
	movl	$0, term_cmd_buf_index(%rip)
	.loc 1 73 0
	movl	$0, term_cmd_buf_size(%rip)
.LBE46:
.LBE45:
	addq	$24, %rsp
	ret
.LFE116:
	.size	readline_start, .-readline_start
	.p2align 4,,15
.globl readline_get_history
	.type	readline_get_history, @function
readline_get_history:
.LFB117:
	.loc 1 482 0
	.loc 1 484 0
	xorl	%eax, %eax
	.loc 1 483 0
	cmpl	$63, %edi
	ja	.L228
	.loc 1 485 0
	mov	%edi, %eax
	movq	term_history(,%rax,8), %rax
.L228:
	.loc 1 486 0
	rep ; ret
.LFE117:
	.size	readline_get_history, .-readline_get_history
	.comm	completion_index,4,4
	.local	term_cmd_buf
	.comm	term_cmd_buf,4096,32
	.local	term_cmd_buf_index
	.comm	term_cmd_buf_index,4,4
	.local	term_cmd_buf_size
	.comm	term_cmd_buf_size,4,4
	.local	term_last_cmd_buf
	.comm	term_last_cmd_buf,4096,32
	.local	term_last_cmd_buf_index
	.comm	term_last_cmd_buf_index,4,4
	.local	term_last_cmd_buf_size
	.comm	term_last_cmd_buf_size,4,4
	.local	term_esc_state
	.comm	term_esc_state,4,4
	.local	term_esc_param
	.comm	term_esc_param,4,4
	.local	term_history
	.comm	term_history,512,32
	.local	nb_completions
	.comm	nb_completions,4,4
	.local	completions
	.comm	completions,2048,32
	.local	term_readline_func
	.comm	term_readline_func,8,8
	.local	term_is_password
	.comm	term_is_password,4,4
	.local	term_prompt
	.comm	term_prompt,256,32
	.local	term_readline_opaque
	.comm	term_readline_opaque,8,8
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
	.quad	.LFB99
	.quad	.LFE99-.LFB99
	.byte	0x4
	.long	.LCFI0-.LFB99
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE0:
.LSFDE2:
	.long	.LEFDE2-.LASFDE2
.LASFDE2:
	.long	.Lframe0
	.quad	.LFB102
	.quad	.LFE102-.LFB102
	.byte	0x4
	.long	.LCFI1-.LFB102
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
	.quad	.LFB103
	.quad	.LFE103-.LFB103
	.align 8
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.quad	.LFB105
	.quad	.LFE105-.LFB105
	.byte	0x4
	.long	.LCFI2-.LFB105
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE6:
.LSFDE8:
	.long	.LEFDE8-.LASFDE8
.LASFDE8:
	.long	.Lframe0
	.quad	.LFB108
	.quad	.LFE108-.LFB108
	.align 8
.LEFDE8:
.LSFDE10:
	.long	.LEFDE10-.LASFDE10
.LASFDE10:
	.long	.Lframe0
	.quad	.LFB109
	.quad	.LFE109-.LFB109
	.align 8
.LEFDE10:
.LSFDE12:
	.long	.LEFDE12-.LASFDE12
.LASFDE12:
	.long	.Lframe0
	.quad	.LFB113
	.quad	.LFE113-.LFB113
	.byte	0x4
	.long	.LCFI3-.LFB113
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
	.long	.LCFI4-.LFB115
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI5-.LCFI4
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI6-.LCFI5
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI7-.LCFI6
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI8-.LCFI7
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI9-.LCFI8
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI10-.LCFI9
	.byte	0xe
	.uleb128 0x50
	.byte	0x83
	.uleb128 0x7
	.byte	0x86
	.uleb128 0x6
	.byte	0x8c
	.uleb128 0x5
	.byte	0x8d
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8f
	.uleb128 0x2
	.align 8
.LEFDE14:
.LSFDE16:
	.long	.LEFDE16-.LASFDE16
.LASFDE16:
	.long	.Lframe0
	.quad	.LFB116
	.quad	.LFE116-.LFB116
	.byte	0x4
	.long	.LCFI12-.LFB116
	.byte	0x8c
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI14-.LCFI12
	.byte	0xe
	.uleb128 0x20
	.byte	0x8d
	.uleb128 0x2
	.align 8
.LEFDE16:
.LSFDE18:
	.long	.LEFDE18-.LASFDE18
.LASFDE18:
	.long	.Lframe0
	.quad	.LFB117
	.quad	.LFE117-.LFB117
	.align 8
.LEFDE18:
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
	.quad	.LFB99
	.quad	.LFE99-.LFB99
	.byte	0x4
	.long	.LCFI0-.LFB99
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE1:
.LSFDE3:
	.long	.LEFDE3-.LASFDE3
.LASFDE3:
	.long	.LASFDE3-.Lframe1
	.quad	.LFB102
	.quad	.LFE102-.LFB102
	.byte	0x4
	.long	.LCFI1-.LFB102
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
	.quad	.LFB103
	.quad	.LFE103-.LFB103
	.align 8
.LEFDE5:
.LSFDE7:
	.long	.LEFDE7-.LASFDE7
.LASFDE7:
	.long	.LASFDE7-.Lframe1
	.quad	.LFB105
	.quad	.LFE105-.LFB105
	.byte	0x4
	.long	.LCFI2-.LFB105
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE7:
.LSFDE9:
	.long	.LEFDE9-.LASFDE9
.LASFDE9:
	.long	.LASFDE9-.Lframe1
	.quad	.LFB108
	.quad	.LFE108-.LFB108
	.align 8
.LEFDE9:
.LSFDE11:
	.long	.LEFDE11-.LASFDE11
.LASFDE11:
	.long	.LASFDE11-.Lframe1
	.quad	.LFB109
	.quad	.LFE109-.LFB109
	.align 8
.LEFDE11:
.LSFDE13:
	.long	.LEFDE13-.LASFDE13
.LASFDE13:
	.long	.LASFDE13-.Lframe1
	.quad	.LFB113
	.quad	.LFE113-.LFB113
	.byte	0x4
	.long	.LCFI3-.LFB113
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
	.long	.LCFI4-.LFB115
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI5-.LCFI4
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI6-.LCFI5
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI7-.LCFI6
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI8-.LCFI7
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI9-.LCFI8
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI10-.LCFI9
	.byte	0xe
	.uleb128 0x50
	.byte	0x83
	.uleb128 0x7
	.byte	0x86
	.uleb128 0x6
	.byte	0x8c
	.uleb128 0x5
	.byte	0x8d
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8f
	.uleb128 0x2
	.align 8
.LEFDE15:
.LSFDE17:
	.long	.LEFDE17-.LASFDE17
.LASFDE17:
	.long	.LASFDE17-.Lframe1
	.quad	.LFB116
	.quad	.LFE116-.LFB116
	.byte	0x4
	.long	.LCFI12-.LFB116
	.byte	0x8c
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI14-.LCFI12
	.byte	0xe
	.uleb128 0x20
	.byte	0x8d
	.uleb128 0x2
	.align 8
.LEFDE17:
.LSFDE19:
	.long	.LEFDE19-.LASFDE19
.LASFDE19:
	.long	.LASFDE19-.Lframe1
	.quad	.LFB117
	.quad	.LFE117-.LFB117
	.align 8
.LEFDE19:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/3.4.6/include/stddef.h"
	.file 3 "console.h"
	.file 4 "/usr/include/stdio.h"
	.file 5 "/usr/include/libio.h"
	.file 6 "/usr/include/bits/types.h"
	.text
.Letext0:
	.section	.debug_info
	.long	0xa57
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.Ldebug_line0
	.quad	.Letext0
	.quad	.Ltext0
	.long	.LASF109
	.byte	0x1
	.long	.LASF110
	.long	.LASF111
	.uleb128 0x2
	.long	.LASF9
	.byte	0x2
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
	.byte	0x6
	.byte	0x8d
	.long	0x4d
	.uleb128 0x2
	.long	.LASF11
	.byte	0x6
	.byte	0x8e
	.long	0x4d
	.uleb128 0x7
	.byte	0x8
	.uleb128 0x5
	.byte	0x8
	.long	0x74
	.uleb128 0x3
	.long	.LASF12
	.byte	0x8
	.byte	0x7
	.uleb128 0x8
	.long	0x281
	.long	.LASF43
	.byte	0xd8
	.byte	0x4
	.byte	0x2d
	.uleb128 0x9
	.long	.LASF13
	.byte	0x5
	.value	0x110
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF14
	.byte	0x5
	.value	0x115
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF15
	.byte	0x5
	.value	0x116
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.long	.LASF16
	.byte	0x5
	.value	0x117
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.long	.LASF17
	.byte	0x5
	.value	0x118
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.long	.LASF18
	.byte	0x5
	.value	0x119
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.long	.LASF19
	.byte	0x5
	.value	0x11a
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.long	.LASF20
	.byte	0x5
	.value	0x11b
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.long	.LASF21
	.byte	0x5
	.value	0x11c
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.long	.LASF22
	.byte	0x5
	.value	0x11e
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x9
	.long	.LASF23
	.byte	0x5
	.value	0x11f
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x9
	.long	.LASF24
	.byte	0x5
	.value	0x120
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x9
	.long	.LASF25
	.byte	0x5
	.value	0x122
	.long	0x2bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x9
	.long	.LASF26
	.byte	0x5
	.value	0x124
	.long	0x2c5
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x9
	.long	.LASF27
	.byte	0x5
	.value	0x126
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x9
	.long	.LASF28
	.byte	0x5
	.value	0x12a
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x9
	.long	.LASF29
	.byte	0x5
	.value	0x12c
	.long	0x90
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x9
	.long	.LASF30
	.byte	0x5
	.value	0x130
	.long	0x62
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x9
	.long	.LASF31
	.byte	0x5
	.value	0x131
	.long	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0x82
	.uleb128 0x9
	.long	.LASF32
	.byte	0x5
	.value	0x132
	.long	0x2cb
	.byte	0x3
	.byte	0x23
	.uleb128 0x83
	.uleb128 0x9
	.long	.LASF33
	.byte	0x5
	.value	0x136
	.long	0x2db
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x9
	.long	.LASF34
	.byte	0x5
	.value	0x13f
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x9
	.long	.LASF35
	.byte	0x5
	.value	0x148
	.long	0xa6
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x9
	.long	.LASF36
	.byte	0x5
	.value	0x149
	.long	0xa6
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x9
	.long	.LASF37
	.byte	0x5
	.value	0x14a
	.long	0xa6
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x9
	.long	.LASF38
	.byte	0x5
	.value	0x14b
	.long	0xa6
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x9
	.long	.LASF39
	.byte	0x5
	.value	0x14c
	.long	0x2d
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x9
	.long	.LASF40
	.byte	0x5
	.value	0x14e
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x9
	.long	.LASF41
	.byte	0x5
	.value	0x150
	.long	0x2e1
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.byte	0x0
	.uleb128 0xa
	.long	.LASF42
	.byte	0x5
	.byte	0xb4
	.uleb128 0x8
	.long	0x2bf
	.long	.LASF44
	.byte	0x18
	.byte	0x5
	.byte	0xba
	.uleb128 0xb
	.long	.LASF45
	.byte	0x5
	.byte	0xbb
	.long	0x2bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF46
	.byte	0x5
	.byte	0xbc
	.long	0x2c5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF47
	.byte	0x5
	.byte	0xc0
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x288
	.uleb128 0x5
	.byte	0x8
	.long	0xb5
	.uleb128 0xc
	.long	0x2db
	.long	0x74
	.uleb128 0xd
	.long	0x5b
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x281
	.uleb128 0xc
	.long	0x2f1
	.long	0x74
	.uleb128 0xd
	.long	0x5b
	.byte	0x13
	.byte	0x0
	.uleb128 0xe
	.long	0x302
	.byte	0x1
	.uleb128 0xf
	.long	0xa6
	.uleb128 0xf
	.long	0x69
	.byte	0x0
	.uleb128 0x2
	.long	.LASF48
	.byte	0x3
	.byte	0x90
	.long	0x2f1
	.uleb128 0x10
	.long	.LASF49
	.byte	0x1
	.byte	0x3d
	.byte	0x1
	.quad	.LFB99
	.quad	.LFE99
	.byte	0x1
	.byte	0x57
	.uleb128 0x11
	.long	0x352
	.long	.LASF56
	.byte	0x1
	.byte	0x75
	.byte	0x1
	.quad	.LFB102
	.quad	.LFE102
	.byte	0x1
	.byte	0x57
	.uleb128 0x12
	.string	"ch"
	.byte	0x1
	.byte	0x74
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x10
	.long	.LASF50
	.byte	0x1
	.byte	0x81
	.byte	0x1
	.quad	.LFB103
	.quad	.LFE103
	.byte	0x1
	.byte	0x57
	.uleb128 0x10
	.long	.LASF51
	.byte	0x1
	.byte	0x8f
	.byte	0x1
	.quad	.LFB105
	.quad	.LFE105
	.byte	0x1
	.byte	0x57
	.uleb128 0x10
	.long	.LASF52
	.byte	0x1
	.byte	0xc8
	.byte	0x1
	.quad	.LFB108
	.quad	.LFE108
	.byte	0x1
	.byte	0x57
	.uleb128 0x10
	.long	.LASF53
	.byte	0x1
	.byte	0xcd
	.byte	0x1
	.quad	.LFB109
	.quad	.LFE109
	.byte	0x1
	.byte	0x57
	.uleb128 0x13
	.long	0x3e9
	.byte	0x1
	.long	.LASF54
	.byte	0x1
	.value	0x128
	.byte	0x1
	.quad	.LFB113
	.quad	.LFE113
	.byte	0x1
	.byte	0x57
	.uleb128 0x14
	.string	"str"
	.byte	0x1
	.value	0x127
	.long	0x69
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x13
	.long	0x5fd
	.byte	0x1
	.long	.LASF55
	.byte	0x1
	.value	0x173
	.byte	0x1
	.quad	.LFB115
	.quad	.LFE115
	.byte	0x1
	.byte	0x57
	.uleb128 0x14
	.string	"ch"
	.byte	0x1
	.value	0x172
	.long	0x3f
	.byte	0x1
	.byte	0x55
	.uleb128 0x15
	.long	.LASF67
	.byte	0x1
	.value	0x1d1
	.quad	.L133
	.uleb128 0x16
	.long	0x470
	.long	0x5fd
	.quad	.LBB2
	.quad	.LBE2
	.uleb128 0x17
	.long	0x60a
	.byte	0x1
	.byte	0x53
	.uleb128 0x17
	.long	0x613
	.byte	0x1
	.byte	0x56
	.uleb128 0x17
	.long	0x61e
	.byte	0x1
	.byte	0x56
	.uleb128 0x18
	.long	.Ldebug_ranges0+0x0
	.uleb128 0x17
	.long	0x60a
	.byte	0x1
	.byte	0x53
	.uleb128 0x17
	.long	0x613
	.byte	0x1
	.byte	0x56
	.uleb128 0x17
	.long	0x61e
	.byte	0x1
	.byte	0x56
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
	.long	0x62a
	.quad	.LBB10
	.quad	.LBE10
	.uleb128 0x16
	.long	0x4b3
	.long	0x633
	.quad	.LBB12
	.quad	.LBE12
	.uleb128 0x17
	.long	0x640
	.byte	0x1
	.byte	0x51
	.uleb128 0x18
	.long	.Ldebug_ranges0+0x50
	.uleb128 0x17
	.long	0x640
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
	.long	0x64c
	.quad	.LBB14
	.quad	.LBE14
	.uleb128 0x19
	.long	0x655
	.quad	.LBB16
	.quad	.LBE16
	.uleb128 0x16
	.long	0x554
	.long	0x65e
	.quad	.LBB18
	.quad	.LBE18
	.uleb128 0x1a
	.long	0x66b
	.uleb128 0x18
	.long	.Ldebug_ranges0+0x80
	.uleb128 0x17
	.long	0x676
	.byte	0x1
	.byte	0x53
	.uleb128 0x17
	.long	0x681
	.byte	0x1
	.byte	0x5d
	.uleb128 0x17
	.long	0x68c
	.byte	0x1
	.byte	0x56
	.uleb128 0x1b
	.long	0x697
	.quad	.L68
	.uleb128 0x1c
	.long	0x536
	.long	.Ldebug_ranges0+0xc0
	.uleb128 0x1d
	.long	0x6a4
	.uleb128 0x1d
	.long	0x6b0
	.byte	0x0
	.uleb128 0x1e
	.quad	.LBB22
	.quad	.LBE22
	.uleb128 0x1d
	.long	0x6fa
	.uleb128 0x1d
	.long	0x706
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
	.long	0x5d2
	.long	0x771
	.quad	.LBB25
	.quad	.LBE25
	.uleb128 0x17
	.long	0x77f
	.byte	0x1
	.byte	0x56
	.uleb128 0x17
	.long	0x78b
	.byte	0x1
	.byte	0x53
	.uleb128 0x17
	.long	0x795
	.byte	0x1
	.byte	0x5c
	.uleb128 0x17
	.long	0x79f
	.byte	0x1
	.byte	0x5f
	.uleb128 0x1d
	.long	0x7ab
	.uleb128 0x17
	.long	0x7b7
	.byte	0x1
	.byte	0x5e
	.uleb128 0x17
	.long	0x7c3
	.byte	0x1
	.byte	0x53
	.uleb128 0x18
	.long	.Ldebug_ranges0+0xf0
	.uleb128 0x17
	.long	0x77f
	.byte	0x1
	.byte	0x56
	.uleb128 0x17
	.long	0x78b
	.byte	0x1
	.byte	0x53
	.uleb128 0x17
	.long	0x795
	.byte	0x1
	.byte	0x5c
	.uleb128 0x17
	.long	0x79f
	.byte	0x1
	.byte	0x5f
	.uleb128 0x1d
	.long	0x7ab
	.uleb128 0x17
	.long	0x7b7
	.byte	0x1
	.byte	0x5e
	.uleb128 0x17
	.long	0x7c3
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
	.long	0x7d0
	.quad	.LBB29
	.quad	.LBE29
	.uleb128 0x17
	.long	0x7dd
	.byte	0x1
	.byte	0x53
	.uleb128 0x18
	.long	.Ldebug_ranges0+0x130
	.uleb128 0x17
	.long	0x7dd
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
	.long	0x62a
	.long	.LASF57
	.byte	0x1
	.byte	0x4e
	.byte	0x1
	.byte	0x1
	.uleb128 0x21
	.string	"i"
	.byte	0x1
	.byte	0x4f
	.long	0x3f
	.uleb128 0x22
	.long	.LASF58
	.byte	0x1
	.byte	0x4f
	.long	0x3f
	.uleb128 0x21
	.string	"len"
	.byte	0x1
	.byte	0x4f
	.long	0x3f
	.byte	0x0
	.uleb128 0x23
	.long	.LASF59
	.byte	0x1
	.byte	0x99
	.byte	0x1
	.byte	0x1
	.uleb128 0x20
	.long	0x64c
	.long	.LASF60
	.byte	0x1
	.byte	0xd2
	.byte	0x1
	.byte	0x1
	.uleb128 0x21
	.string	"idx"
	.byte	0x1
	.byte	0xd3
	.long	0x3f
	.byte	0x0
	.uleb128 0x23
	.long	.LASF61
	.byte	0x1
	.byte	0xe8
	.byte	0x1
	.byte	0x1
	.uleb128 0x23
	.long	.LASF62
	.byte	0x1
	.byte	0x88
	.byte	0x1
	.byte	0x1
	.uleb128 0x20
	.long	0x766
	.long	.LASF63
	.byte	0x1
	.byte	0xf5
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.long	.LASF64
	.byte	0x1
	.byte	0xf4
	.long	0x69
	.uleb128 0x22
	.long	.LASF65
	.byte	0x1
	.byte	0xf6
	.long	0xa8
	.uleb128 0x22
	.long	.LASF66
	.byte	0x1
	.byte	0xf6
	.long	0xa8
	.uleb128 0x21
	.string	"idx"
	.byte	0x1
	.byte	0xf7
	.long	0x3f
	.uleb128 0x25
	.long	.LASF68
	.byte	0x1
	.value	0x10a
	.uleb128 0x26
	.long	0x6f5
	.uleb128 0x27
	.long	.LASF69
	.byte	0x1
	.value	0x100
	.long	0x2d
	.uleb128 0x27
	.long	.LASF70
	.byte	0x1
	.value	0x100
	.long	0x2d
	.uleb128 0x26
	.long	0x6da
	.uleb128 0x27
	.long	.LASF71
	.byte	0x1
	.value	0x100
	.long	0x766
	.uleb128 0x27
	.long	.LASF72
	.byte	0x1
	.value	0x100
	.long	0x3f
	.byte	0x0
	.uleb128 0x28
	.uleb128 0x27
	.long	.LASF73
	.byte	0x1
	.value	0x100
	.long	0x766
	.uleb128 0x27
	.long	.LASF72
	.byte	0x1
	.value	0x100
	.long	0x3f
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.long	0x74b
	.uleb128 0x27
	.long	.LASF69
	.byte	0x1
	.value	0x109
	.long	0x2d
	.uleb128 0x27
	.long	.LASF70
	.byte	0x1
	.value	0x109
	.long	0x2d
	.uleb128 0x26
	.long	0x730
	.uleb128 0x27
	.long	.LASF71
	.byte	0x1
	.value	0x109
	.long	0x766
	.uleb128 0x27
	.long	.LASF72
	.byte	0x1
	.value	0x109
	.long	0x3f
	.byte	0x0
	.uleb128 0x28
	.uleb128 0x27
	.long	.LASF73
	.byte	0x1
	.value	0x109
	.long	0x766
	.uleb128 0x27
	.long	.LASF72
	.byte	0x1
	.value	0x109
	.long	0x3f
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.uleb128 0x27
	.long	.LASF74
	.byte	0x1
	.value	0x120
	.long	0x2d
	.uleb128 0x27
	.long	.LASF75
	.byte	0x1
	.value	0x120
	.long	0xa8
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x76c
	.uleb128 0x6
	.long	0x7b
	.uleb128 0x29
	.long	0x7d0
	.long	.LASF76
	.byte	0x1
	.value	0x12f
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.string	"len"
	.byte	0x1
	.value	0x130
	.long	0x3f
	.uleb128 0x2a
	.string	"i"
	.byte	0x1
	.value	0x130
	.long	0x3f
	.uleb128 0x2a
	.string	"j"
	.byte	0x1
	.value	0x130
	.long	0x3f
	.uleb128 0x27
	.long	.LASF77
	.byte	0x1
	.value	0x130
	.long	0x3f
	.uleb128 0x27
	.long	.LASF78
	.byte	0x1
	.value	0x130
	.long	0x3f
	.uleb128 0x27
	.long	.LASF79
	.byte	0x1
	.value	0x130
	.long	0x3f
	.uleb128 0x27
	.long	.LASF64
	.byte	0x1
	.value	0x131
	.long	0xa8
	.byte	0x0
	.uleb128 0x20
	.long	0x7e9
	.long	.LASF80
	.byte	0x1
	.byte	0xa1
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.long	.LASF81
	.byte	0x1
	.byte	0xa2
	.long	0x3f
	.byte	0x0
	.uleb128 0x13
	.long	0x857
	.byte	0x1
	.long	.LASF82
	.byte	0x1
	.value	0x1d9
	.byte	0x1
	.quad	.LFB116
	.quad	.LFE116
	.byte	0x1
	.byte	0x57
	.uleb128 0x2b
	.long	.LASF83
	.byte	0x1
	.value	0x1d7
	.long	0x69
	.byte	0x1
	.byte	0x55
	.uleb128 0x2b
	.long	.LASF84
	.byte	0x1
	.value	0x1d7
	.long	0x3f
	.byte	0x1
	.byte	0x5d
	.uleb128 0x2b
	.long	.LASF85
	.byte	0x1
	.value	0x1d8
	.long	0x857
	.byte	0x1
	.byte	0x53
	.uleb128 0x2b
	.long	.LASF86
	.byte	0x1
	.value	0x1d8
	.long	0xa6
	.byte	0x1
	.byte	0x5c
	.uleb128 0x19
	.long	0x85d
	.quad	.LBB43
	.quad	.LBE43
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x302
	.uleb128 0x23
	.long	.LASF87
	.byte	0x1
	.byte	0x46
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.long	0x899
	.byte	0x1
	.long	.LASF88
	.byte	0x1
	.value	0x1e2
	.byte	0x1
	.long	0x69
	.quad	.LFB117
	.quad	.LFE117
	.byte	0x1
	.byte	0x57
	.uleb128 0x2b
	.long	.LASF89
	.byte	0x1
	.value	0x1e1
	.long	0x46
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x2d
	.long	.LASF90
	.byte	0x4
	.byte	0x91
	.long	0x2c5
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.long	.LASF91
	.byte	0x4
	.byte	0x92
	.long	0x2c5
	.byte	0x1
	.byte	0x1
	.uleb128 0x2e
	.long	.LASF92
	.byte	0x1
	.byte	0x34
	.long	0x3f
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	completion_index
	.uleb128 0xc
	.long	0x8da
	.long	0x74
	.uleb128 0x2f
	.long	0x5b
	.value	0xfff
	.byte	0x0
	.uleb128 0x30
	.long	.LASF93
	.byte	0x1
	.byte	0x25
	.long	0x8c9
	.byte	0x9
	.byte	0x3
	.quad	term_cmd_buf
	.uleb128 0x30
	.long	.LASF94
	.byte	0x1
	.byte	0x26
	.long	0x3f
	.byte	0x9
	.byte	0x3
	.quad	term_cmd_buf_index
	.uleb128 0x30
	.long	.LASF95
	.byte	0x1
	.byte	0x27
	.long	0x3f
	.byte	0x9
	.byte	0x3
	.quad	term_cmd_buf_size
	.uleb128 0x30
	.long	.LASF96
	.byte	0x1
	.byte	0x29
	.long	0x8c9
	.byte	0x9
	.byte	0x3
	.quad	term_last_cmd_buf
	.uleb128 0x30
	.long	.LASF97
	.byte	0x1
	.byte	0x2a
	.long	0x3f
	.byte	0x9
	.byte	0x3
	.quad	term_last_cmd_buf_index
	.uleb128 0x30
	.long	.LASF98
	.byte	0x1
	.byte	0x2b
	.long	0x3f
	.byte	0x9
	.byte	0x3
	.quad	term_last_cmd_buf_size
	.uleb128 0x30
	.long	.LASF99
	.byte	0x1
	.byte	0x2d
	.long	0x3f
	.byte	0x9
	.byte	0x3
	.quad	term_esc_state
	.uleb128 0x30
	.long	.LASF100
	.byte	0x1
	.byte	0x2e
	.long	0x3f
	.byte	0x9
	.byte	0x3
	.quad	term_esc_param
	.uleb128 0xc
	.long	0x992
	.long	0xa8
	.uleb128 0xd
	.long	0x5b
	.byte	0x3f
	.byte	0x0
	.uleb128 0x30
	.long	.LASF101
	.byte	0x1
	.byte	0x30
	.long	0x982
	.byte	0x9
	.byte	0x3
	.quad	term_history
	.uleb128 0x30
	.long	.LASF102
	.byte	0x1
	.byte	0x31
	.long	0x3f
	.byte	0x9
	.byte	0x3
	.quad	term_hist_entry
	.uleb128 0x30
	.long	.LASF103
	.byte	0x1
	.byte	0x33
	.long	0x3f
	.byte	0x9
	.byte	0x3
	.quad	nb_completions
	.uleb128 0xc
	.long	0x9e1
	.long	0xa8
	.uleb128 0xd
	.long	0x5b
	.byte	0xff
	.byte	0x0
	.uleb128 0x30
	.long	.LASF104
	.byte	0x1
	.byte	0x35
	.long	0x9d1
	.byte	0x9
	.byte	0x3
	.quad	completions
	.uleb128 0x30
	.long	.LASF105
	.byte	0x1
	.byte	0x37
	.long	0x857
	.byte	0x9
	.byte	0x3
	.quad	term_readline_func
	.uleb128 0x30
	.long	.LASF106
	.byte	0x1
	.byte	0x38
	.long	0x3f
	.byte	0x9
	.byte	0x3
	.quad	term_is_password
	.uleb128 0xc
	.long	0xa30
	.long	0x74
	.uleb128 0xd
	.long	0x5b
	.byte	0xff
	.byte	0x0
	.uleb128 0x30
	.long	.LASF107
	.byte	0x1
	.byte	0x39
	.long	0xa20
	.byte	0x9
	.byte	0x3
	.quad	term_prompt
	.uleb128 0x30
	.long	.LASF108
	.byte	0x1
	.byte	0x3a
	.long	0xa6
	.byte	0x9
	.byte	0x3
	.quad	term_readline_opaque
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
	.uleb128 0x2e
	.byte	0x0
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
	.uleb128 0x1d
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.uleb128 0xa
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.uleb128 0x2e
	.byte	0x0
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0xb
	.byte	0x1
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
	.uleb128 0x20
	.uleb128 0xb
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.long	0x7b
	.value	0x2
	.long	.Ldebug_info0
	.long	0xa5b
	.long	0x3ba
	.string	"add_completion"
	.long	0x3e9
	.string	"readline_handle_byte"
	.long	0x7e9
	.string	"readline_start"
	.long	0x866
	.string	"readline_get_history"
	.long	0x8b3
	.string	"completion_index"
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
	.quad	.LBB9-.Ltext0
	.quad	.LBE9-.Ltext0
	.quad	.LBB7-.Ltext0
	.quad	.LBE7-.Ltext0
	.quad	.LBB5-.Ltext0
	.quad	.LBE5-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB13-.Ltext0
	.quad	.LBE13-.Ltext0
	.quad	.LBB34-.Ltext0
	.quad	.LBE34-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB19-.Ltext0
	.quad	.LBE19-.Ltext0
	.quad	.LBB36-.Ltext0
	.quad	.LBE36-.Ltext0
	.quad	.LBB24-.Ltext0
	.quad	.LBE24-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB20-.Ltext0
	.quad	.LBE20-.Ltext0
	.quad	.LBB21-.Ltext0
	.quad	.LBE21-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB26-.Ltext0
	.quad	.LBE26-.Ltext0
	.quad	.LBB42-.Ltext0
	.quad	.LBE42-.Ltext0
	.quad	.LBB38-.Ltext0
	.quad	.LBE38-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB30-.Ltext0
	.quad	.LBE30-.Ltext0
	.quad	.LBB40-.Ltext0
	.quad	.LBE40-.Ltext0
	.quad	0x0
	.quad	0x0
	.section	.debug_str,"MS",@progbits,1
.LASF9:
	.string	"size_t"
.LASF92:
	.string	"completion_index"
.LASF70:
	.string	"__s2_len"
.LASF52:
	.string	"term_bol"
.LASF24:
	.string	"_IO_save_end"
.LASF98:
	.string	"term_last_cmd_buf_size"
.LASF83:
	.string	"prompt"
.LASF17:
	.string	"_IO_write_base"
.LASF55:
	.string	"readline_handle_byte"
.LASF33:
	.string	"_lock"
.LASF22:
	.string	"_IO_save_base"
.LASF30:
	.string	"_cur_column"
.LASF80:
	.string	"term_backword"
.LASF57:
	.string	"term_update"
.LASF82:
	.string	"readline_start"
.LASF94:
	.string	"term_cmd_buf_index"
.LASF40:
	.string	"_mode"
.LASF54:
	.string	"add_completion"
.LASF79:
	.string	"max_prefix"
.LASF20:
	.string	"_IO_buf_base"
.LASF88:
	.string	"readline_get_history"
.LASF78:
	.string	"nb_cols"
.LASF2:
	.string	"long int"
.LASF64:
	.string	"cmdline"
.LASF44:
	.string	"_IO_marker"
.LASF86:
	.string	"opaque"
.LASF101:
	.string	"term_history"
.LASF43:
	.string	"_IO_FILE"
.LASF6:
	.string	"unsigned char"
.LASF48:
	.string	"ReadLineFunc"
.LASF5:
	.string	"char"
.LASF95:
	.string	"term_cmd_buf_size"
.LASF42:
	.string	"_IO_lock_t"
.LASF81:
	.string	"start"
.LASF14:
	.string	"_IO_read_ptr"
.LASF47:
	.string	"_pos"
.LASF90:
	.string	"stdin"
.LASF69:
	.string	"__s1_len"
.LASF25:
	.string	"_markers"
.LASF77:
	.string	"max_width"
.LASF89:
	.string	"index"
.LASF0:
	.string	"long unsigned int"
.LASF108:
	.string	"term_readline_opaque"
.LASF28:
	.string	"_flags2"
.LASF59:
	.string	"term_backspace"
.LASF16:
	.string	"_IO_read_base"
.LASF87:
	.string	"term_show_prompt"
.LASF41:
	.string	"_unused2"
.LASF29:
	.string	"_old_offset"
.LASF56:
	.string	"term_insert_char"
.LASF73:
	.string	"__s1"
.LASF96:
	.string	"term_last_cmd_buf"
.LASF67:
	.string	"the_end"
.LASF3:
	.string	"long long int"
.LASF19:
	.string	"_IO_write_end"
.LASF45:
	.string	"_next"
.LASF1:
	.string	"unsigned int"
.LASF65:
	.string	"hist_entry"
.LASF109:
	.string	"GNU C 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
.LASF104:
	.string	"completions"
.LASF93:
	.string	"term_cmd_buf"
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
.LASF105:
	.string	"term_readline_func"
.LASF13:
	.string	"_flags"
.LASF99:
	.string	"term_esc_state"
.LASF66:
	.string	"new_entry"
.LASF50:
	.string	"term_backward_char"
.LASF63:
	.string	"term_hist_add"
.LASF106:
	.string	"term_is_password"
.LASF34:
	.string	"_offset"
.LASF84:
	.string	"is_password"
.LASF12:
	.string	"long long unsigned int"
.LASF10:
	.string	"__off_t"
.LASF26:
	.string	"_chain"
.LASF58:
	.string	"delta"
.LASF60:
	.string	"term_up_char"
.LASF62:
	.string	"term_forward_char"
.LASF23:
	.string	"_IO_backup_base"
.LASF32:
	.string	"_shortbuf"
.LASF100:
	.string	"term_esc_param"
.LASF11:
	.string	"__off64_t"
.LASF111:
	.string	"/home/remco/Projects/Argos/src"
.LASF75:
	.string	"__retval"
.LASF21:
	.string	"_IO_buf_end"
.LASF61:
	.string	"term_down_char"
.LASF74:
	.string	"__len"
.LASF8:
	.string	"short int"
.LASF76:
	.string	"term_completion"
.LASF68:
	.string	"same_entry"
.LASF85:
	.string	"readline_func"
.LASF31:
	.string	"_vtable_offset"
.LASF110:
	.string	"readline.c"
.LASF7:
	.string	"signed char"
.LASF49:
	.string	"term_show_prompt2"
.LASF103:
	.string	"nb_completions"
.LASF15:
	.string	"_IO_read_end"
.LASF97:
	.string	"term_last_cmd_buf_index"
.LASF51:
	.string	"term_delete_char"
.LASF27:
	.string	"_fileno"
.LASF102:
	.string	"term_hist_entry"
.LASF4:
	.string	"short unsigned int"
.LASF91:
	.string	"stdout"
.LASF18:
	.string	"_IO_write_ptr"
.LASF53:
	.string	"term_eol"
.LASF72:
	.string	"__result"
.LASF71:
	.string	"__s2"
.LASF107:
	.string	"term_prompt"
	.section	.note.GNU-stack,"",@progbits
	.ident	"GCC: (GNU) 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
