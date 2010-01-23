	.file	"wm8750.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.local	wm8750_iid
	.comm	wm8750_iid,4,4
	.section	.rodata
	.align 32
	.type	wm_rate_table, @object
	.size	wm_rate_table, 512
wm_rate_table:
	.long	256
	.long	48000
	.long	256
	.long	48000
	.long	384
	.long	48000
	.long	384
	.long	48000
	.long	256
	.long	48000
	.long	1536
	.long	8000
	.long	384
	.long	48000
	.long	2304
	.long	8000
	.long	1536
	.long	8000
	.long	256
	.long	48000
	.long	2304
	.long	8000
	.long	384
	.long	48000
	.long	1536
	.long	8000
	.long	1536
	.long	8000
	.long	2304
	.long	8000
	.long	2304
	.long	8000
	.long	1024
	.long	12000
	.long	1024
	.long	12000
	.long	1526
	.long	12000
	.long	1536
	.long	12000
	.long	768
	.long	16000
	.long	768
	.long	16000
	.long	1152
	.long	16000
	.long	1152
	.long	16000
	.long	384
	.long	32000
	.long	384
	.long	32000
	.long	576
	.long	32000
	.long	576
	.long	32000
	.long	128
	.long	96000
	.long	128
	.long	96000
	.long	192
	.long	96000
	.long	192
	.long	96000
	.long	256
	.long	44100
	.long	256
	.long	44100
	.long	384
	.long	44100
	.long	384
	.long	44100
	.long	256
	.long	44100
	.long	1408
	.long	8018
	.long	384
	.long	44100
	.long	2112
	.long	8018
	.long	1408
	.long	8018
	.long	256
	.long	44100
	.long	2112
	.long	8018
	.long	384
	.long	44100
	.long	1408
	.long	8018
	.long	1408
	.long	8018
	.long	2112
	.long	8018
	.long	2112
	.long	8018
	.long	1024
	.long	11025
	.long	1024
	.long	11025
	.long	1536
	.long	11025
	.long	1536
	.long	11025
	.long	512
	.long	22050
	.long	512
	.long	22050
	.long	768
	.long	22050
	.long	768
	.long	22050
	.long	512
	.long	24000
	.long	512
	.long	24000
	.long	768
	.long	24000
	.long	768
	.long	24000
	.long	128
	.long	88200
	.long	128
	.long	88200
	.long	192
	.long	88200
	.long	128
	.long	88200
	.text
	.p2align 4,,15
	.type	wm8750_audio_in_cb, @function
wm8750_audio_in_cb:
.LFB111:
	.file 1 "/home/remco/Projects/Argos/src/hw/wm8750.c"
	.loc 1 66 0
	.loc 1 66 0
	movq	%rdi, %rcx
	movl	%esi, %eax
	.loc 1 68 0
	movl	%esi, 8348(%rcx)
	.loc 1 69 0
	movl	8356(%rdi), %esi
	sarl	$2, %eax
	movq	144(%rdi), %rdi
	movl	%eax, %edx
	movq	136(%rcx), %r11
	sarl	$2, %esi
	jmp	*%r11
.LFE111:
	.size	wm8750_audio_in_cb, .-wm8750_audio_in_cb
	.p2align 4,,15
	.type	wm8750_audio_out_cb, @function
wm8750_audio_out_cb:
.LFB112:
	.loc 1 77 0
	movq	%rbx, -16(%rsp)
.LCFI0:
	movq	%rbp, -8(%rsp)
.LCFI1:
	subq	$24, %rsp
.LCFI2:
.LBB2:
.LBB3:
	.loc 1 59 0
	movl	8352(%rdi), %edx
.LBE3:
.LBE2:
	.loc 1 77 0
	movq	%rdi, %rbx
	movl	%esi, %ebp
.LBB4:
.LBB5:
	.loc 1 59 0
	testl	%edx, %edx
	jne	.L6
.L4:
.LBE5:
.LBE4:
	.loc 1 82 0
	movl	8348(%rbx), %edx
	.loc 1 81 0
	movl	%ebp, 8356(%rbx)
	.loc 1 82 0
	sarl	$2, %ebp
	movq	144(%rbx), %rdi
	movq	136(%rbx), %r11
	movl	%ebp, %esi
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	addq	$24, %rsp
	sarl	$2, %edx
	jmp	*%r11
	.p2align 4,,7
.L6:
.LBB6:
.LBB7:
	.loc 1 61 0
	movq	8360(%rdi), %rax
	leaq	4248(%rdi), %rsi
	movq	(%rax), %rdi
	call	AUD_write
	.loc 1 62 0
	movl	$0, 8352(%rbx)
	jmp	.L4
.LBE7:
.LBE6:
.LFE112:
	.size	wm8750_audio_out_cb, .-wm8750_audio_out_cb
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"wm8750.input1"
.LC1:
	.string	"wm8750.input2"
.LC2:
	.string	"wm8750.input3"
.LC3:
	.string	"wm8750.speaker"
.LC4:
	.string	"wm8750.headphone"
.LC5:
	.string	"wm8750.monomix"
	.text
	.p2align 4,,15
	.type	wm8750_set_format, @function
wm8750_set_format:
.LFB113:
	.loc 1 128 0
	pushq	%r12
.LCFI3:
	pushq	%rbp
.LCFI4:
	movq	%rdi, %rbp
	pushq	%rbx
.LCFI5:
	subq	$48, %rsp
.LCFI6:
.LBB8:
.LBB9:
	.loc 1 59 0
	movl	8352(%rdi), %edx
	testl	%edx, %edx
	jne	.L29
.L9:
.LBE9:
.LBE8:
	.loc 1 136 0
	movq	8392(%rbp), %rax
	testq	%rax, %rax
	je	.L10
	movq	(%rax), %rdi
	testq	%rdi, %rdi
	jne	.L30
.L10:
	.loc 1 138 0
	movq	8360(%rbp), %rax
	testq	%rax, %rax
	je	.L11
	movq	(%rax), %rdi
	testq	%rdi, %rdi
	jne	.L31
.L11:
	.loc 1 141 0
	xorl	%ebx, %ebx
	.p2align 4,,7
.L16:
	.loc 1 142 0
	movslq	%ebx,%r12
	movq	80(%rbp,%r12,8), %rsi
	testq	%rsi, %rsi
	jne	.L32
.L14:
	.loc 1 141 0
	incl	%ebx
	cmpl	$2, %ebx
	jle	.L16
	.loc 1 146 0
	xorl	%ebx, %ebx
	.p2align 4,,7
.L21:
	.loc 1 147 0
	movslq	%ebx,%r12
	movq	104(%rbp,%r12,8), %rsi
	testq	%rsi, %rsi
	jne	.L33
.L19:
	.loc 1 146 0
	incl	%ebx
	cmpl	$2, %ebx
	jle	.L21
	.loc 1 152 0
	movl	128(%rbp), %eax
	testl	%eax, %eax
	jne	.L34
.L7:
	.loc 1 195 0
	addq	$48, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,7
.L33:
	.loc 1 148 0
	leaq	48(%rbp), %rdi
	call	AUD_close_out
	.loc 1 149 0
	movq	$0, 104(%rbp,%r12,8)
	jmp	.L19
	.p2align 4,,7
.L32:
	.loc 1 143 0
	leaq	48(%rbp), %rdi
	call	AUD_close_in
	.loc 1 144 0
	movq	$0, 80(%rbp,%r12,8)
	jmp	.L14
.L29:
.LBB10:
.LBB11:
	.loc 1 61 0
	movq	8360(%rdi), %rax
	leaq	4248(%rdi), %rsi
	movq	(%rax), %rdi
	call	AUD_write
	.loc 1 62 0
	movl	$0, 8352(%rbp)
	jmp	.L9
.L34:
.LBE11:
.LBE10:
	.loc 1 156 0
	movl	$0, 44(%rsp)
	.loc 1 157 0
	movl	$2, 36(%rsp)
	.loc 1 161 0
	leaq	48(%rbp), %r12
	.loc 1 158 0
	movq	8440(%rbp), %rax
	.loc 1 161 0
	leaq	32(%rsp), %rbx
	movl	$wm8750_audio_in_cb, %r8d
	movq	%rbp, %rcx
	movl	$.LC0, %edx
	movq	%r12, %rdi
	movq	%rbx, %r9
	.loc 1 158 0
	movl	4(%rax), %eax
	.loc 1 159 0
	movl	$3, 40(%rsp)
	.loc 1 158 0
	movl	%eax, 32(%rsp)
	.loc 1 161 0
	movq	80(%rbp), %rsi
	call	AUD_open_in
	.loc 1 163 0
	movq	88(%rbp), %rsi
	movq	%rbx, %r9
	movl	$wm8750_audio_in_cb, %r8d
	movq	%rbp, %rcx
	movl	$.LC1, %edx
	movq	%r12, %rdi
	.loc 1 161 0
	movq	%rax, 80(%rbp)
	.loc 1 163 0
	call	AUD_open_in
	.loc 1 165 0
	movq	96(%rbp), %rsi
	movq	%rbx, %r9
	movl	$wm8750_audio_in_cb, %r8d
	movq	%rbp, %rcx
	movl	$.LC2, %edx
	movq	%r12, %rdi
	.loc 1 163 0
	movq	%rax, 88(%rbp)
	.loc 1 178 0
	leaq	16(%rsp), %rbx
	.loc 1 165 0
	call	AUD_open_in
	movq	%rax, 96(%rbp)
	.loc 1 169 0
	movl	$0, 28(%rsp)
	.loc 1 178 0
	movq	%rbx, %r9
	.loc 1 170 0
	movl	$2, 20(%rsp)
	.loc 1 171 0
	movq	8440(%rbp), %rdx
	.loc 1 178 0
	movl	$wm8750_audio_out_cb, %r8d
	movq	%rbp, %rcx
	movq	%r12, %rdi
	.loc 1 171 0
	movl	12(%rdx), %eax
	.loc 1 172 0
	movl	$3, 24(%rsp)
	.loc 1 173 0
	movl	$0, 12(%rsp)
	.loc 1 174 0
	movl	$1, 4(%rsp)
	.loc 1 171 0
	movl	%eax, 16(%rsp)
	.loc 1 175 0
	movl	12(%rdx), %eax
	.loc 1 178 0
	movl	$.LC3, %edx
	.loc 1 176 0
	movl	$3, 8(%rsp)
	.loc 1 175 0
	movl	%eax, (%rsp)
	.loc 1 178 0
	movq	104(%rbp), %rsi
	call	AUD_open_out
	.loc 1 180 0
	movq	112(%rbp), %rsi
	movq	%rbx, %r9
	movl	$wm8750_audio_out_cb, %r8d
	movq	%rbp, %rcx
	movl	$.LC4, %edx
	movq	%r12, %rdi
	.loc 1 178 0
	movq	%rax, 104(%rbp)
	.loc 1 180 0
	call	AUD_open_out
	.loc 1 183 0
	movq	120(%rbp), %rsi
	.loc 1 180 0
	movq	%rax, 112(%rbp)
	.loc 1 183 0
	movq	%rbx, %r9
	movl	$wm8750_audio_out_cb, %r8d
	movq	%rbp, %rcx
	movl	$.LC5, %edx
	movq	%r12, %rdi
	call	AUD_open_out
	movq	%rax, 120(%rbp)
	.loc 1 191 0
	movq	8392(%rbp), %rax
	testq	%rax, %rax
	jne	.L35
.L23:
	.loc 1 193 0
	movq	8360(%rbp), %rax
	testq	%rax, %rax
	je	.L7
	movq	(%rax), %rdi
	testq	%rdi, %rdi
	je	.L7
	.loc 1 194 0
	movl	$1, %esi
	call	AUD_set_active_out
	.p2align 4,,2
	jmp	.L7
.L35:
	.loc 1 191 0
	movq	(%rax), %rdi
	testq	%rdi, %rdi
	.p2align 4,,2
	je	.L23
	.loc 1 192 0
	movl	$1, %esi
	.p2align 4,,5
	call	AUD_set_active_in
	.p2align 4,,2
	jmp	.L23
.L30:
	.loc 1 137 0
	xorl	%esi, %esi
	call	AUD_set_active_in
	.p2align 4,,6
	jmp	.L10
.L31:
	.loc 1 139 0
	xorl	%esi, %esi
	call	AUD_set_active_out
	.p2align 4,,6
	jmp	.L11
.LFE113:
	.size	wm8750_set_format, .-wm8750_set_format
	.p2align 4,,15
.globl wm8750_reset
	.type	wm8750_reset, @function
wm8750_reset:
.LFB115:
	.loc 1 214 0
	pushq	%rbx
.LCFI7:
	.loc 1 214 0
	movq	%rdi, %rbx
	.loc 1 216 0
	movl	$0, 128(%rdi)
	.loc 1 217 0
	call	wm8750_set_format
	.loc 1 222 0
	leaq	80(%rbx), %rax
	.loc 1 218 0
	movb	$0, 8414(%rbx)
	.loc 1 219 0
	movb	$0, 8415(%rbx)
	.loc 1 220 0
	movb	$0, 8417(%rbx)
	.loc 1 221 0
	movb	$0, 8420(%rbx)
	.loc 1 222 0
	movq	%rax, 8392(%rbx)
	.loc 1 227 0
	leaq	104(%rbx), %rax
	.loc 1 223 0
	movb	$23, 8408(%rbx)
	.loc 1 224 0
	movb	$23, 8409(%rbx)
	.loc 1 225 0
	movb	$-61, 8410(%rbx)
	.loc 1 226 0
	movb	$-61, 8411(%rbx)
	.loc 1 227 0
	movq	%rax, 8360(%rbx)
	.loc 1 228 0
	movb	$-1, 8376(%rbx)
	.loc 1 229 0
	movb	$-1, 8377(%rbx)
	.loc 1 230 0
	movb	$121, 8378(%rbx)
	.loc 1 231 0
	movb	$121, 8379(%rbx)
	.loc 1 232 0
	movb	$121, 8380(%rbx)
	.loc 1 233 0
	movb	$121, 8381(%rbx)
	.loc 1 234 0
	movb	$0, 8412(%rbx)
	.loc 1 235 0
	movb	$0, 8413(%rbx)
	.loc 1 236 0
	movb	$0, 8383(%rbx)
	.loc 1 237 0
	movb	$0, 8384(%rbx)
	.loc 1 238 0
	movb	$1, 8421(%rbx)
	.loc 1 239 0
	movb	$0, 8422(%rbx)
	.loc 1 240 0
	movb	$0, 8423(%rbx)
	.loc 1 241 0
	movb	$0, 8424(%rbx)
	.loc 1 242 0
	movb	$0, 8425(%rbx)
	.loc 1 243 0
	movb	$0, 8426(%rbx)
	.loc 1 244 0
	movb	$0, 8427(%rbx)
	.loc 1 245 0
	movb	$10, 8429(%rbx)
	.loc 1 246 0
	movl	$4096, 8344(%rbx)
	.loc 1 247 0
	movl	$0, 8348(%rbx)
	.loc 1 248 0
	movl	$0, 8352(%rbx)
	.loc 1 249 0
	movl	$0, 8356(%rbx)
.LBB12:
.LBB13:
	.loc 1 203 0
	movl	$0, 8432(%rbx)
	.loc 1 207 0
	movl	$0, 8436(%rbx)
.LBE13:
.LBE12:
	.loc 1 251 0
	movl	$0, 44(%rbx)
	popq	%rbx
	ret
.LFE115:
	.size	wm8750_reset, .-wm8750_reset
	.p2align 4,,15
	.type	wm8750_event, @function
wm8750_event:
.LFB116:
	.loc 1 255 0
	.loc 1 258 0
	decl	%esi
	je	.L53
	rep ; ret
	.p2align 4,,7
.L53:
	.loc 1 260 0
	movl	$0, 44(%rdi)
	ret
.LFE116:
	.size	wm8750_event, .-wm8750_event
	.section	.rodata
	.type	__FUNCTION__.0, @object
	.size	__FUNCTION__.0, 10
__FUNCTION__.0:
	.string	"wm8750_tx"
	.section	.rodata.str1.1
.LC6:
	.string	"%s: long message (%i bytes)\n"
	.text
	.p2align 4,,15
	.type	wm8750_tx, @function
wm8750_tx:
.LFB117:
	.loc 1 312 0
	movq	%rbx, -16(%rsp)
.LCFI8:
	movq	%rbp, -8(%rsp)
.LCFI9:
	subq	$24, %rsp
.LCFI10:
	.loc 1 317 0
	movl	44(%rdi), %edx
	.loc 1 312 0
	movq	%rdi, %rbp
	movl	%esi, %ebx
	.loc 1 317 0
	cmpl	$1, %edx
	jg	.L136
	.loc 1 323 0
	movslq	%edx,%rax
	movb	%bl, 40(%rax,%rbp)
	leal	1(%rdx), %eax
	.loc 1 324 0
	cmpl	$2, %eax
	.loc 1 323 0
	movl	%eax, 44(%rbp)
	.loc 1 324 0
	je	.L137
.L54:
	.loc 1 489 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	xorl	%eax, %eax
	addq	$24, %rsp
	ret
	.p2align 4,,7
.L136:
	.loc 1 318 0
	xorl	%eax, %eax
	movl	$__FUNCTION__.0, %esi
	movl	$.LC6, %edi
	call	printf
	movl	44(%rbp), %edx
	.loc 1 323 0
	movslq	%edx,%rax
	movb	%bl, 40(%rax,%rbp)
	leal	1(%rdx), %eax
	.loc 1 324 0
	cmpl	$2, %eax
	.loc 1 323 0
	movl	%eax, 44(%rbp)
	.loc 1 324 0
	jne	.L54
	.p2align 4,,7
.L137:
	.loc 1 327 0
	movzbl	40(%rbp), %eax
	.loc 1 328 0
	movzbw	41(%rbp), %cx
	.loc 1 327 0
	movl	%eax, %edx
	.loc 1 328 0
	movzbl	%al, %eax
	sall	$8, %eax
	.loc 1 327 0
	shrb	%dl
	.loc 1 328 0
	orl	%eax, %ecx
	.loc 1 330 0
	movzbl	%dl, %eax
	.loc 1 328 0
	andw	$511, %cx
	.loc 1 330 0
	cmpl	$42, %eax
	ja	.L54
	mov	%eax, %eax
	jmp	*.L130(,%rax,8)
	.section	.rodata
	.align 8
	.align 4
.L130:
	.quad	.L69
	.quad	.L81
	.quad	.L120
	.quad	.L122
	.quad	.L54
	.quad	.L93
	.quad	.L54
	.quad	.L127
	.quad	.L128
	.quad	.L54
	.quad	.L111
	.quad	.L112
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L129
	.quad	.L54
	.quad	.L108
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L106
	.quad	.L107
	.quad	.L67
	.quad	.L54
	.quad	.L68
	.quad	.L126
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L64
	.quad	.L58
	.quad	.L61
	.quad	.L114
	.quad	.L115
	.quad	.L116
	.quad	.L117
	.quad	.L118
	.quad	.L119
	.quad	.L121
	.quad	.L123
	.quad	.L124
	.text
.L124:
	.loc 1 454 0
	movl	%ecx, %eax
	andl	$127, %eax
	movb	%al, 8382(%rbp)
	jmp	.L54
.L123:
	.loc 1 450 0
	movl	%ecx, %eax
	andl	$127, %eax
	movb	%al, 8381(%rbp)
	jmp	.L54
.L121:
	.loc 1 442 0
	movl	%ecx, %eax
	andl	$127, %eax
	movb	%al, 8380(%rbp)
	jmp	.L54
.L119:
	.loc 1 434 0
	shrw	$8, %cx
	movl	%ecx, %eax
	andl	$1, %eax
	movb	%al, 8427(%rbp)
	jmp	.L54
.L118:
	.loc 1 430 0
	shrw	$8, %cx
	movl	%ecx, %eax
	andl	$1, %eax
	movb	%al, 8426(%rbp)
	jmp	.L54
.L117:
	.loc 1 426 0
	shrw	$8, %cx
	movl	%ecx, %eax
	andl	$1, %eax
	movb	%al, 8425(%rbp)
	jmp	.L54
.L116:
	.loc 1 422 0
	shrw	$8, %cx
	movl	%ecx, %eax
	andl	$1, %eax
	movb	%al, 8424(%rbp)
	jmp	.L54
.L115:
	.loc 1 418 0
	shrw	$8, %cx
	movl	%ecx, %eax
	andl	$1, %eax
	movb	%al, 8423(%rbp)
	jmp	.L54
.L114:
	.loc 1 414 0
	shrw	$8, %cx
	movl	%ecx, %eax
	andl	$1, %eax
	movb	%al, 8422(%rbp)
	jmp	.L54
.L61:
	.loc 1 340 0
	movl	%ecx, %edx
	shrw	$6, %dx
	movl	%edx, %eax
	andl	$3, %eax
	cmpl	$3, %eax
	sete	%al
	.loc 1 341 0
	testb	%al, %al
	.loc 1 340 0
	movb	%al, 8415(%rbp)
	.loc 1 341 0
	jne	.L138
	.loc 1 344 0
	movq	%rdx, %rax
	andl	$3, %eax
.L133:
	leaq	80(%rbp,%rax,8), %rax
	movq	%rax, 8400(%rbp)
	jmp	.L54
.L58:
	.loc 1 332 0
	movl	%ecx, %edx
	shrw	$6, %dx
	movl	%edx, %eax
	andl	$3, %eax
	cmpl	$3, %eax
	sete	%al
	.loc 1 333 0
	testb	%al, %al
	.loc 1 332 0
	movb	%al, 8414(%rbp)
	.loc 1 333 0
	jne	.L139
	.loc 1 336 0
	movq	%rdx, %rax
	andl	$3, %eax
.L134:
	leaq	80(%rbp,%rax,8), %rax
	movq	%rax, 8392(%rbp)
	jmp	.L54
.L64:
	.loc 1 348 0
	movl	%ecx, %eax
	shrw	$8, %ax
	movl	%eax, %edx
	andl	$1, %edx
	.loc 1 349 0
	cmpb	$0, 8414(%rbp)
	.loc 1 348 0
	movb	%dl, 8417(%rbp)
	.loc 1 349 0
	je	.L65
	.loc 1 350 0
	movzbl	%dl, %eax 
	leaq	80(%rbp,%rax,8), %rax
	movq	%rax, 8392(%rbp)
.L65:
	.loc 1 351 0
	cmpb	$0, 8415(%rbp)
	je	.L66
	.loc 1 352 0
	movzbl	%dl, %eax 
	leaq	80(%rbp,%rax,8), %rax
	movq	%rax, 8400(%rbp)
.L66:
	.loc 1 353 0
	shrw	$6, %cx
	movl	%ecx, %eax
	andl	$3, %eax
	movb	%al, 8418(%rbp)
	jmp	.L54
.L126:
	.loc 1 461 0
	movl	%ecx, %eax
	andl	$126, %eax
	movb	%al, 8428(%rbp)
	jmp	.L54
.L68:
	.loc 1 361 0
	shrw	$6, %cx
	movl	%ecx, %eax
	andl	$7, %eax
	cmpl	$3, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, 128(%rbp)
.L131:
	.loc 1 475 0
	movq	%rbp, %rdi
	call	wm8750_set_format
	jmp	.L54
.L67:
	.loc 1 357 0
	shrw	%cx
	movl	%ecx, %eax
	andl	$1, %eax
	movb	%al, 8419(%rbp)
	jmp	.L54
.L107:
	.loc 1 391 0
	movb	%cl, 8411(%rbp)
	jmp	.L54
.L106:
	.loc 1 387 0
	movb	%cl, 8410(%rbp)
	jmp	.L54
.L108:
	.loc 1 395 0
	movl	%ecx, %eax
	shrw	$7, %ax
	movb	%al, 8420(%rbp)
	jmp	.L54
.L129:
	.loc 1 479 0
	movq	%rbp, %rdi
	call	wm8750_reset
	jmp	.L54
.L112:
	.loc 1 407 0
	movb	%cl, 8377(%rbp)
	jmp	.L54
.L111:
	.loc 1 403 0
	movb	%cl, 8376(%rbp)
	jmp	.L54
.L128:
	.loc 1 474 0
	shrw	%cx
	movq	%rcx, %rax
	andl	$31, %eax
	salq	$4, %rax
	addq	$wm_rate_table, %rax
	movq	%rax, 8440(%rbp)
	jmp	.L131
.L127:
	.loc 1 469 0
	movb	%cl, 8429(%rbp)
	jmp	.L131
.L93:
	.loc 1 378 0
	movl	%ecx, %eax
	.loc 1 379 0
	shrw	$3, %cx
	.loc 1 378 0
	shrw	$5, %ax
	.loc 1 379 0
	andl	$1, %ecx
	.loc 1 378 0
	andl	$3, %eax
	.loc 1 379 0
	movl	%ecx, %esi
	movb	%cl, 8421(%rbp)
	.loc 1 378 0
	movb	%al, 8416(%rbp)
.LBB14:
.LBB15:
	.loc 1 203 0
	movzbl	8412(%rbp), %eax
	cmpb	$1, %al
	sbbl	%eax, %eax
	orl	$65535, %eax
	movl	%eax, %edx
	xorw	%dx, %dx
	cmpb	$0, 8413(%rbp)
	cmovne	%edx, %eax
.L132:
	xorl	%ecx, %ecx
	testb	%sil, %sil
	cmovne	%ecx, %eax
	movl	%eax, 8432(%rbp)
	.loc 1 207 0
	movzbl	8383(%rbp), %eax
	cmpb	$1, %al
	sbbl	%eax, %eax
	orl	$65535, %eax
	movl	%eax, %edx
	xorw	%dx, %dx
	cmpb	$0, 8384(%rbp)
	cmovne	%edx, %eax
	testb	%sil, %sil
	cmove	%eax, %ecx
	movl	%ecx, 8436(%rbp)
	jmp	.L54
.L122:
.LBE15:
.LBE14:
	.loc 1 446 0
	movl	%ecx, %eax
	andl	$127, %eax
	movb	%al, 8379(%rbp)
	jmp	.L54
.L120:
	.loc 1 438 0
	movl	%ecx, %eax
	andl	$127, %eax
	movb	%al, 8378(%rbp)
	jmp	.L54
.L81:
	.loc 1 372 0
	movl	%ecx, %eax
	.loc 1 373 0
	shrw	$7, %cx
	.loc 1 372 0
	andl	$63, %eax
	.loc 1 373 0
	andl	$1, %ecx
	.loc 1 372 0
	movb	%al, 8409(%rbp)
.LBB16:
.LBB17:
	.loc 1 203 0
	movzbl	8412(%rbp), %eax
.LBE17:
.LBE16:
	.loc 1 373 0
	movb	%cl, 8413(%rbp)
.LBB18:
.LBB19:
	.loc 1 203 0
	cmpb	$1, %al
	sbbl	%eax, %eax
	orl	$65535, %eax
	movl	%eax, %edx
	xorw	%dx, %dx
	testb	%cl, %cl
.L135:
	movzbl	8421(%rbp), %esi
	cmovne	%edx, %eax
	jmp	.L132
.L69:
.LBE19:
.LBE18:
	.loc 1 366 0
	movl	%ecx, %eax
	.loc 1 367 0
	shrw	$7, %cx
	.loc 1 366 0
	andl	$63, %eax
	movb	%al, 8408(%rbp)
	.loc 1 367 0
	movl	%ecx, %eax
	andl	$1, %eax
.LBB20:
.LBB21:
	.loc 1 203 0
	cmpb	$1, %al
.LBE21:
.LBE20:
	.loc 1 367 0
	movb	%al, 8412(%rbp)
.LBB22:
.LBB23:
	.loc 1 203 0
	sbbl	%eax, %eax
	orl	$65535, %eax
	movl	%eax, %edx
	xorw	%dx, %dx
	cmpb	$0, 8413(%rbp)
	jmp	.L135
.L138:
.LBE23:
.LBE22:
	.loc 1 342 0
	movzbq	8417(%rbp), %rax
	jmp	.L133
.L139:
	.loc 1 334 0
	movzbq	8417(%rbp), %rax
	jmp	.L134
.LFE117:
	.size	wm8750_tx, .-wm8750_tx
	.p2align 4,,15
	.type	wm8750_rx, @function
wm8750_rx:
.LFB118:
	.loc 1 492 0
	.loc 1 494 0
	xorl	%eax, %eax
	ret
.LFE118:
	.size	wm8750_rx, .-wm8750_rx
	.p2align 4,,15
	.type	wm8750_save, @function
wm8750_save:
.LFB119:
	.loc 1 497 0
	pushq	%r13
.LCFI11:
	movq	%rsi, %r13
	pushq	%r12
.LCFI12:
	movq	%rdi, %r12
	pushq	%rbp
.LCFI13:
	movl	$6, %ebp
	pushq	%rbx
.LCFI14:
	leaq	8376(%r13), %rbx
	subq	$8, %rsp
.LCFI15:
.LBB24:
.LBB25:
	.file 2 "/home/remco/Projects/Argos/src/hw/hw.h"
	.loc 2 42 0
	movzbl	40(%rsi), %esi
	call	qemu_put_byte
.LBE25:
.LBE24:
.LBB26:
.LBB27:
	movzbl	41(%r13), %esi
	movq	%r12, %rdi
	call	qemu_put_byte
.LBE27:
.LBE26:
	.loc 1 502 0
	movl	44(%r13), %esi
	movq	%r12, %rdi
	call	qemu_put_be32
	.loc 1 503 0
	movl	128(%r13), %esi
	movq	%r12, %rdi
	call	qemu_put_be32
	.loc 1 504 0
	movl	8344(%r13), %esi
	movq	%r12, %rdi
	call	qemu_put_be32
	.loc 1 505 0
	movl	8348(%r13), %esi
	movq	%r12, %rdi
	call	qemu_put_be32
	.loc 1 506 0
	movl	8352(%r13), %esi
	movq	%r12, %rdi
	call	qemu_put_be32
	.loc 1 507 0
	movl	8356(%r13), %esi
	movq	%r12, %rdi
	call	qemu_put_be32
	.p2align 4,,7
.L148:
.LBB28:
.LBB29:
	.loc 2 42 0
	movzbl	(%rbx), %esi
	movq	%r12, %rdi
	incq	%rbx
	call	qemu_put_byte
	decl	%ebp
	jns	.L148
	leaq	8383(%r13), %rbx
	movl	$1, %ebp
.L153:
.LBE29:
.LBE28:
.LBB30:
.LBB31:
	movzbl	(%rbx), %esi
	movq	%r12, %rdi
	incq	%rbx
	call	qemu_put_byte
	decl	%ebp
	jns	.L153
	leaq	8408(%r13), %rbx
	movl	$3, %ebp
	.p2align 4,,7
.L158:
.LBE31:
.LBE30:
.LBB32:
.LBB33:
	movzbl	(%rbx), %esi
	movq	%r12, %rdi
	incq	%rbx
	call	qemu_put_byte
	decl	%ebp
	jns	.L158
	leaq	8412(%r13), %rbx
	movl	$1, %ebp
.L163:
.LBE33:
.LBE32:
.LBB34:
.LBB35:
	movzbl	(%rbx), %esi
	movq	%r12, %rdi
	incq	%rbx
	call	qemu_put_byte
	decl	%ebp
	jns	.L163
	leaq	8414(%r13), %rbx
	movl	$1, %ebp
.L168:
.LBE35:
.LBE34:
.LBB36:
.LBB37:
	movzbl	(%rbx), %esi
	movq	%r12, %rdi
	incq	%rbx
	call	qemu_put_byte
	decl	%ebp
	jns	.L168
.LBE37:
.LBE36:
.LBB38:
.LBB39:
	movzbl	8416(%r13), %esi
	movq	%r12, %rdi
	leaq	8418(%r13), %rbx
	movl	$1, %ebp
	call	qemu_put_byte
.LBE39:
.LBE38:
.LBB40:
.LBB41:
	movzbl	8417(%r13), %esi
	movq	%r12, %rdi
	call	qemu_put_byte
.L175:
.LBE41:
.LBE40:
.LBB42:
.LBB43:
	movzbl	(%rbx), %esi
	movq	%r12, %rdi
	incq	%rbx
	call	qemu_put_byte
	decl	%ebp
	jns	.L175
.LBE43:
.LBE42:
.LBB44:
.LBB45:
	movzbl	8420(%r13), %esi
	movq	%r12, %rdi
	leaq	8422(%r13), %rbx
	movl	$3, %ebp
	call	qemu_put_byte
.LBE45:
.LBE44:
.LBB46:
.LBB47:
	movzbl	8421(%r13), %esi
	movq	%r12, %rdi
	call	qemu_put_byte
	.p2align 4,,7
.L182:
.LBE47:
.LBE46:
.LBB48:
.LBB49:
	movzbl	(%rbx), %esi
	movq	%r12, %rdi
	incq	%rbx
	call	qemu_put_byte
	decl	%ebp
	jns	.L182
	leaq	8426(%r13), %rbx
	movl	$1, %ebp
.L187:
.LBE49:
.LBE48:
.LBB50:
.LBB51:
	movzbl	(%rbx), %esi
	movq	%r12, %rdi
	incq	%rbx
	call	qemu_put_byte
	decl	%ebp
	jns	.L187
.LBE51:
.LBE50:
.LBB52:
.LBB53:
	movzbl	8429(%r13), %esi
	movq	%r12, %rdi
	call	qemu_put_byte
.LBE53:
.LBE52:
.LBB54:
.LBB55:
	movzbl	8428(%r13), %esi
	movq	%r12, %rdi
	call	qemu_put_byte
.LBE55:
.LBE54:
.LBB56:
.LBB57:
	.loc 2 32 0
	movl	8432(%r13), %esi
	movq	%r12, %rdi
	call	qemu_put_be32
.LBE57:
.LBE56:
.LBB58:
.LBB59:
	movl	8436(%r13), %esi
	movq	%r12, %rdi
	call	qemu_put_be32
.LBE59:
.LBE58:
	.loc 1 534 0
	movq	8440(%r13), %rsi
	movq	%r12, %rdi
	subq	$wm_rate_table, %rsi
	sarq	$4, %rsi
	shrq	$4, %rsi
	call	qemu_put_byte
	.loc 1 535 0
	addq	$8, %rsp
	movq	%r12, %rdi
	movq	%r13, %rsi
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	jmp	i2c_slave_save
.LFE119:
	.size	wm8750_save, .-wm8750_save
	.p2align 4,,15
	.type	wm8750_load, @function
wm8750_load:
.LFB120:
	.loc 1 539 0
	pushq	%r13
.LCFI16:
	movq	%rsi, %r13
	pushq	%r12
.LCFI17:
	movq	%rdi, %r12
	pushq	%rbp
.LCFI18:
	movl	$6, %ebp
	pushq	%rbx
.LCFI19:
	leaq	8376(%r13), %rbx
	subq	$8, %rsp
.LCFI20:
.LBB60:
.LBB61:
	.loc 2 62 0
	call	qemu_get_byte
.LBE61:
.LBE60:
.LBB62:
.LBB63:
	movq	%r12, %rdi
.LBE63:
.LBE62:
.LBB64:
.LBB65:
	movb	%al, 40(%r13)
.LBE65:
.LBE64:
.LBB66:
.LBB67:
	call	qemu_get_byte
.LBE67:
.LBE66:
	.loc 1 544 0
	movq	%r12, %rdi
.LBB68:
.LBB69:
	.loc 2 62 0
	movb	%al, 41(%r13)
.LBE69:
.LBE68:
	.loc 1 544 0
	call	qemu_get_be32
	.loc 1 545 0
	movq	%r12, %rdi
	.loc 1 544 0
	movl	%eax, 44(%r13)
	.loc 1 545 0
	call	qemu_get_be32
	.loc 1 546 0
	movq	%r12, %rdi
	.loc 1 545 0
	movl	%eax, 128(%r13)
	.loc 1 546 0
	call	qemu_get_be32
	.loc 1 547 0
	movq	%r12, %rdi
	.loc 1 546 0
	movl	%eax, 8344(%r13)
	.loc 1 547 0
	call	qemu_get_be32
	.loc 1 548 0
	movq	%r12, %rdi
	.loc 1 547 0
	movl	%eax, 8348(%r13)
	.loc 1 548 0
	call	qemu_get_be32
	.loc 1 549 0
	movq	%r12, %rdi
	.loc 1 548 0
	movl	%eax, 8352(%r13)
	.loc 1 549 0
	call	qemu_get_be32
	movl	%eax, 8356(%r13)
	.p2align 4,,7
.L215:
.LBB70:
.LBB71:
	.loc 2 62 0
	movq	%r12, %rdi
	call	qemu_get_byte
	movb	%al, (%rbx)
	incq	%rbx
	decl	%ebp
	jns	.L215
	leaq	8383(%r13), %rbx
	movl	$1, %ebp
.L220:
.LBE71:
.LBE70:
.LBB72:
.LBB73:
	movq	%r12, %rdi
	call	qemu_get_byte
	movb	%al, (%rbx)
	incq	%rbx
	decl	%ebp
	jns	.L220
	leaq	8408(%r13), %rbx
	movl	$3, %ebp
	.p2align 4,,7
.L225:
.LBE73:
.LBE72:
.LBB74:
.LBB75:
	movq	%r12, %rdi
	call	qemu_get_byte
	movb	%al, (%rbx)
	incq	%rbx
	decl	%ebp
	jns	.L225
	leaq	8412(%r13), %rbx
	movl	$1, %ebp
.L230:
.LBE75:
.LBE74:
.LBB76:
.LBB77:
	movq	%r12, %rdi
	call	qemu_get_byte
	movb	%al, (%rbx)
	incq	%rbx
	decl	%ebp
	jns	.L230
	leaq	8414(%r13), %rbx
	movl	$1, %ebp
.L235:
.LBE77:
.LBE76:
.LBB78:
.LBB79:
	movq	%r12, %rdi
	call	qemu_get_byte
	movb	%al, (%rbx)
	incq	%rbx
	decl	%ebp
	jns	.L235
.LBE79:
.LBE78:
.LBB80:
.LBB81:
	movq	%r12, %rdi
	leaq	8418(%r13), %rbx
	movl	$1, %ebp
	call	qemu_get_byte
.LBE81:
.LBE80:
.LBB82:
.LBB83:
	movq	%r12, %rdi
.LBE83:
.LBE82:
.LBB84:
.LBB85:
	movb	%al, 8416(%r13)
.LBE85:
.LBE84:
.LBB86:
.LBB87:
	call	qemu_get_byte
	movb	%al, 8417(%r13)
.L242:
.LBE87:
.LBE86:
.LBB88:
.LBB89:
	movq	%r12, %rdi
	call	qemu_get_byte
	movb	%al, (%rbx)
	incq	%rbx
	decl	%ebp
	jns	.L242
.LBE89:
.LBE88:
.LBB90:
.LBB91:
	movq	%r12, %rdi
	leaq	8422(%r13), %rbx
	movl	$3, %ebp
	call	qemu_get_byte
.LBE91:
.LBE90:
.LBB92:
.LBB93:
	movq	%r12, %rdi
.LBE93:
.LBE92:
.LBB94:
.LBB95:
	movb	%al, 8420(%r13)
.LBE95:
.LBE94:
.LBB96:
.LBB97:
	call	qemu_get_byte
	movb	%al, 8421(%r13)
	.p2align 4,,7
.L249:
.LBE97:
.LBE96:
.LBB98:
.LBB99:
	movq	%r12, %rdi
	call	qemu_get_byte
	movb	%al, (%rbx)
	incq	%rbx
	decl	%ebp
	jns	.L249
	leaq	8426(%r13), %rbx
	movl	$1, %ebp
.L254:
.LBE99:
.LBE98:
.LBB100:
.LBB101:
	movq	%r12, %rdi
	call	qemu_get_byte
	movb	%al, (%rbx)
	incq	%rbx
	decl	%ebp
	jns	.L254
.LBE101:
.LBE100:
.LBB102:
.LBB103:
	movq	%r12, %rdi
	call	qemu_get_byte
.LBE103:
.LBE102:
.LBB104:
.LBB105:
	movq	%r12, %rdi
.LBE105:
.LBE104:
.LBB106:
.LBB107:
	movb	%al, 8429(%r13)
.LBE107:
.LBE106:
.LBB108:
.LBB109:
	call	qemu_get_byte
.LBE109:
.LBE108:
.LBB110:
.LBB111:
	.loc 2 52 0
	movq	%r12, %rdi
.LBE111:
.LBE110:
.LBB112:
.LBB113:
	.loc 2 62 0
	movb	%al, 8428(%r13)
.LBE113:
.LBE112:
.LBB114:
.LBB115:
	.loc 2 52 0
	call	qemu_get_be32
.LBE115:
.LBE114:
.LBB116:
.LBB117:
	movq	%r12, %rdi
.LBE117:
.LBE116:
.LBB118:
.LBB119:
	movl	%eax, 8432(%r13)
.LBE119:
.LBE118:
.LBB120:
.LBB121:
	call	qemu_get_be32
.LBE121:
.LBE120:
	.loc 1 576 0
	movq	%r12, %rdi
.LBB122:
.LBB123:
	.loc 2 52 0
	movl	%eax, 8436(%r13)
.LBE123:
.LBE122:
	.loc 1 576 0
	call	qemu_get_byte
	andl	$31, %eax
	.loc 1 577 0
	movq	%r13, %rsi
	movq	%r12, %rdi
	.loc 1 576 0
	salq	$4, %rax
	addq	$wm_rate_table, %rax
	movq	%rax, 8440(%r13)
	.loc 1 577 0
	call	i2c_slave_load
	.loc 1 579 0
	addq	$8, %rsp
	xorl	%eax, %eax
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
.LFE120:
	.size	wm8750_load, .-wm8750_load
	.section	.rodata.str1.1
.LC7:
	.string	"wm8750"
	.text
	.p2align 4,,15
.globl wm8750_init
	.type	wm8750_init, @function
wm8750_init:
.LFB121:
	.loc 1 584 0
	pushq	%r12
.LCFI21:
	.loc 1 585 0
	movl	$8448, %edx
	.loc 1 584 0
	movq	%rsi, %r12
	.loc 1 585 0
	xorl	%esi, %esi
	.loc 1 584 0
	pushq	%rbx
.LCFI22:
	subq	$8, %rsp
.LCFI23:
	.loc 1 585 0
	call	i2c_slave_init
	.loc 1 591 0
	leaq	48(%rax), %rdx
	.loc 1 585 0
	movq	%rax, %rbx
	.loc 1 587 0
	movq	$wm8750_event, (%rax)
	.loc 1 588 0
	movq	$wm8750_rx, 8(%rax)
	.loc 1 589 0
	movq	$wm8750_tx, 16(%rax)
	.loc 1 591 0
	movl	$.LC7, %esi
	movq	%r12, %rdi
	call	AUD_register_card
	.loc 1 592 0
	movq	%rbx, %rdi
	call	wm8750_reset
	.loc 1 594 0
	movl	wm8750_iid(%rip), %esi
	movq	%rbx, %r9
	movl	$wm8750_load, %r8d
	movl	$wm8750_save, %ecx
	xorl	%edx, %edx
	movl	$.LC7, %edi
	leal	1(%rsi), %eax
	movl	%eax, wm8750_iid(%rip)
	call	register_savevm
	.loc 1 597 0
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	ret
.LFE121:
	.size	wm8750_init, .-wm8750_init
	.p2align 4,,15
.globl wm8750_data_req_set
	.type	wm8750_data_req_set, @function
wm8750_data_req_set:
.LFB123:
	.loc 1 609 0
	.loc 1 611 0
	movq	%rsi, 136(%rdi)
	.loc 1 612 0
	movq	%rdx, 144(%rdi)
	ret
.LFE123:
	.size	wm8750_data_req_set, .-wm8750_data_req_set
	.p2align 4,,15
.globl wm8750_dac_dat
	.type	wm8750_dac_dat, @function
wm8750_dac_dat:
.LFB124:
	.loc 1 616 0
	pushq	%rbx
.LCFI24:
	.loc 1 618 0
	movslq	8352(%rdi),%rax
	.loc 1 616 0
	movq	%rdi, %rbx
	.loc 1 619 0
	andl	8436(%rdi), %esi
	movl	%esi, 4248(%rax,%rdi)
	.loc 1 621 0
	movl	8352(%rdi), %edx
	.loc 1 620 0
	movl	8356(%rdi), %eax
	.loc 1 621 0
	addl	$4, %edx
	.loc 1 620 0
	subl	$4, %eax
	.loc 1 622 0
	cmpl	$4095, %edx
	.loc 1 621 0
	movl	%edx, 8352(%rdi)
	.loc 1 620 0
	movl	%eax, 8356(%rdi)
	.loc 1 622 0
	ja	.L279
	testl	%eax, %eax
	jle	.L279
.L277:
	.loc 1 624 0
	popq	%rbx
	ret
	.p2align 4,,7
.L279:
.LBB124:
.LBB125:
	.loc 1 59 0
	testl	%edx, %edx
	.p2align 4,,7
	je	.L277
	.loc 1 61 0
	movq	8360(%rbx), %rax
	leaq	4248(%rbx), %rsi
	movq	(%rax), %rdi
	call	AUD_write
	.loc 1 62 0
	movl	$0, 8352(%rbx)
.LBE125:
.LBE124:
	.loc 1 624 0
	popq	%rbx
	ret
.LFE124:
	.size	wm8750_dac_dat, .-wm8750_dac_dat
	.p2align 4,,15
.globl wm8750_adc_dat
	.type	wm8750_adc_dat, @function
wm8750_adc_dat:
.LFB125:
	.loc 1 627 0
	pushq	%rbx
.LCFI25:
	.loc 1 630 0
	movl	8344(%rdi), %ecx
	.loc 1 627 0
	movq	%rdi, %rbx
	.loc 1 630 0
	cmpl	$4095, %ecx
	jbe	.L288
.LBB126:
.LBB127:
	.loc 1 49 0
	movl	8348(%rdi), %edi
	leal	(%rcx,%rdi), %eax
	cmpl	$4096, %eax
	jbe	.L283
.LBB128:
	.loc 1 51 0
	movl	$4096, %edx
	xorl	%ecx, %ecx
	movl	%edx, %eax
	subl	%edi, %eax
	cmpl	%eax, %ecx
	cmovl	%eax, %ecx
.LBE128:
	.loc 1 52 0
	movq	8392(%rbx), %rax
	.loc 1 51 0
	movl	%ecx, 8344(%rbx)
	.loc 1 52 0
	movslq	%ecx,%rsi
	subl	%ecx, %edx
	leaq	152(%rsi,%rbx), %rsi
	movq	(%rax), %rdi
	call	AUD_read
	movl	8344(%rbx), %ecx
.L288:
	movl	8348(%rbx), %edi
.L283:
.LBE127:
.LBE126:
	.loc 1 633 0
	leal	-4(%rdi), %eax
	.loc 1 632 0
	movslq	%ecx,%rdx
	.loc 1 633 0
	movl	%eax, 8348(%rbx)
	.loc 1 634 0
	leal	4(%rcx), %eax
	movl	%eax, 8344(%rbx)
	.loc 1 635 0
	movl	8432(%rbx), %eax
	andl	152(%rdx,%rbx), %eax
	.loc 1 636 0
	popq	%rbx
	ret
.LFE125:
	.size	wm8750_adc_dat, .-wm8750_adc_dat
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
	.quad	.LFB111
	.quad	.LFE111-.LFB111
	.align 8
.LEFDE0:
.LSFDE2:
	.long	.LEFDE2-.LASFDE2
.LASFDE2:
	.long	.Lframe0
	.quad	.LFB112
	.quad	.LFE112-.LFB112
	.byte	0x4
	.long	.LCFI2-.LFB112
	.byte	0xe
	.uleb128 0x20
	.byte	0x86
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE2:
.LSFDE4:
	.long	.LEFDE4-.LASFDE4
.LASFDE4:
	.long	.Lframe0
	.quad	.LFB113
	.quad	.LFE113-.LFB113
	.byte	0x4
	.long	.LCFI3-.LFB113
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI4-.LCFI3
	.byte	0xe
	.uleb128 0x18
	.byte	0x86
	.uleb128 0x3
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI5-.LCFI4
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI6-.LCFI5
	.byte	0xe
	.uleb128 0x50
	.byte	0x83
	.uleb128 0x4
	.align 8
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.quad	.LFB115
	.quad	.LFE115-.LFB115
	.byte	0x4
	.long	.LCFI7-.LFB115
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
	.quad	.LFB116
	.quad	.LFE116-.LFB116
	.align 8
.LEFDE8:
.LSFDE10:
	.long	.LEFDE10-.LASFDE10
.LASFDE10:
	.long	.Lframe0
	.quad	.LFB117
	.quad	.LFE117-.LFB117
	.byte	0x4
	.long	.LCFI10-.LFB117
	.byte	0xe
	.uleb128 0x20
	.byte	0x86
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE10:
.LSFDE12:
	.long	.LEFDE12-.LASFDE12
.LASFDE12:
	.long	.Lframe0
	.quad	.LFB118
	.quad	.LFE118-.LFB118
	.align 8
.LEFDE12:
.LSFDE14:
	.long	.LEFDE14-.LASFDE14
.LASFDE14:
	.long	.Lframe0
	.quad	.LFB119
	.quad	.LFE119-.LFB119
	.byte	0x4
	.long	.LCFI11-.LFB119
	.byte	0xe
	.uleb128 0x10
	.byte	0x8d
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI12-.LCFI11
	.byte	0xe
	.uleb128 0x18
	.byte	0x8c
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI13-.LCFI12
	.byte	0xe
	.uleb128 0x20
	.byte	0x86
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI14-.LCFI13
	.byte	0xe
	.uleb128 0x28
	.byte	0x83
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI15-.LCFI14
	.byte	0xe
	.uleb128 0x30
	.align 8
.LEFDE14:
.LSFDE16:
	.long	.LEFDE16-.LASFDE16
.LASFDE16:
	.long	.Lframe0
	.quad	.LFB120
	.quad	.LFE120-.LFB120
	.byte	0x4
	.long	.LCFI16-.LFB120
	.byte	0xe
	.uleb128 0x10
	.byte	0x8d
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI17-.LCFI16
	.byte	0xe
	.uleb128 0x18
	.byte	0x8c
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI18-.LCFI17
	.byte	0xe
	.uleb128 0x20
	.byte	0x86
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI19-.LCFI18
	.byte	0xe
	.uleb128 0x28
	.byte	0x83
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI20-.LCFI19
	.byte	0xe
	.uleb128 0x30
	.align 8
.LEFDE16:
.LSFDE18:
	.long	.LEFDE18-.LASFDE18
.LASFDE18:
	.long	.Lframe0
	.quad	.LFB121
	.quad	.LFE121-.LFB121
	.byte	0x4
	.long	.LCFI21-.LFB121
	.byte	0xe
	.uleb128 0x10
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI22-.LCFI21
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI23-.LCFI22
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE18:
.LSFDE20:
	.long	.LEFDE20-.LASFDE20
.LASFDE20:
	.long	.Lframe0
	.quad	.LFB123
	.quad	.LFE123-.LFB123
	.align 8
.LEFDE20:
.LSFDE22:
	.long	.LEFDE22-.LASFDE22
.LASFDE22:
	.long	.Lframe0
	.quad	.LFB124
	.quad	.LFE124-.LFB124
	.byte	0x4
	.long	.LCFI24-.LFB124
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
	.quad	.LFB125
	.quad	.LFE125-.LFB125
	.byte	0x4
	.long	.LCFI25-.LFB125
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
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
	.quad	.LFB111
	.quad	.LFE111-.LFB111
	.align 8
.LEFDE1:
.LSFDE3:
	.long	.LEFDE3-.LASFDE3
.LASFDE3:
	.long	.LASFDE3-.Lframe1
	.quad	.LFB112
	.quad	.LFE112-.LFB112
	.byte	0x4
	.long	.LCFI2-.LFB112
	.byte	0xe
	.uleb128 0x20
	.byte	0x86
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE3:
.LSFDE5:
	.long	.LEFDE5-.LASFDE5
.LASFDE5:
	.long	.LASFDE5-.Lframe1
	.quad	.LFB113
	.quad	.LFE113-.LFB113
	.byte	0x4
	.long	.LCFI3-.LFB113
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI4-.LCFI3
	.byte	0xe
	.uleb128 0x18
	.byte	0x86
	.uleb128 0x3
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI5-.LCFI4
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI6-.LCFI5
	.byte	0xe
	.uleb128 0x50
	.byte	0x83
	.uleb128 0x4
	.align 8
.LEFDE5:
.LSFDE7:
	.long	.LEFDE7-.LASFDE7
.LASFDE7:
	.long	.LASFDE7-.Lframe1
	.quad	.LFB115
	.quad	.LFE115-.LFB115
	.byte	0x4
	.long	.LCFI7-.LFB115
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
	.quad	.LFB116
	.quad	.LFE116-.LFB116
	.align 8
.LEFDE9:
.LSFDE11:
	.long	.LEFDE11-.LASFDE11
.LASFDE11:
	.long	.LASFDE11-.Lframe1
	.quad	.LFB117
	.quad	.LFE117-.LFB117
	.byte	0x4
	.long	.LCFI10-.LFB117
	.byte	0xe
	.uleb128 0x20
	.byte	0x86
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE11:
.LSFDE13:
	.long	.LEFDE13-.LASFDE13
.LASFDE13:
	.long	.LASFDE13-.Lframe1
	.quad	.LFB118
	.quad	.LFE118-.LFB118
	.align 8
.LEFDE13:
.LSFDE15:
	.long	.LEFDE15-.LASFDE15
.LASFDE15:
	.long	.LASFDE15-.Lframe1
	.quad	.LFB119
	.quad	.LFE119-.LFB119
	.byte	0x4
	.long	.LCFI11-.LFB119
	.byte	0xe
	.uleb128 0x10
	.byte	0x8d
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI12-.LCFI11
	.byte	0xe
	.uleb128 0x18
	.byte	0x8c
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI13-.LCFI12
	.byte	0xe
	.uleb128 0x20
	.byte	0x86
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI14-.LCFI13
	.byte	0xe
	.uleb128 0x28
	.byte	0x83
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI15-.LCFI14
	.byte	0xe
	.uleb128 0x30
	.align 8
.LEFDE15:
.LSFDE17:
	.long	.LEFDE17-.LASFDE17
.LASFDE17:
	.long	.LASFDE17-.Lframe1
	.quad	.LFB120
	.quad	.LFE120-.LFB120
	.byte	0x4
	.long	.LCFI16-.LFB120
	.byte	0xe
	.uleb128 0x10
	.byte	0x8d
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI17-.LCFI16
	.byte	0xe
	.uleb128 0x18
	.byte	0x8c
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI18-.LCFI17
	.byte	0xe
	.uleb128 0x20
	.byte	0x86
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI19-.LCFI18
	.byte	0xe
	.uleb128 0x28
	.byte	0x83
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI20-.LCFI19
	.byte	0xe
	.uleb128 0x30
	.align 8
.LEFDE17:
.LSFDE19:
	.long	.LEFDE19-.LASFDE19
.LASFDE19:
	.long	.LASFDE19-.Lframe1
	.quad	.LFB121
	.quad	.LFE121-.LFB121
	.byte	0x4
	.long	.LCFI21-.LFB121
	.byte	0xe
	.uleb128 0x10
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI22-.LCFI21
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI23-.LCFI22
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE19:
.LSFDE21:
	.long	.LEFDE21-.LASFDE21
.LASFDE21:
	.long	.LASFDE21-.Lframe1
	.quad	.LFB123
	.quad	.LFE123-.LFB123
	.align 8
.LEFDE21:
.LSFDE23:
	.long	.LEFDE23-.LASFDE23
.LASFDE23:
	.long	.LASFDE23-.Lframe1
	.quad	.LFB124
	.quad	.LFE124-.LFB124
	.byte	0x4
	.long	.LCFI24-.LFB124
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
	.quad	.LFB125
	.quad	.LFE125-.LFB125
	.byte	0x4
	.long	.LCFI25-.LFB125
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE25:
	.file 3 "./qemu-common.h"
	.file 4 "/home/remco/Projects/Argos/src/hw/i2c.h"
	.file 5 "/usr/include/stdint.h"
	.file 6 "./audio/audio.h"
	.file 7 "/usr/include/stdio.h"
	.file 8 "/usr/include/libio.h"
	.file 9 "/usr/include/bits/types.h"
	.file 10 "/usr/lib/gcc/x86_64-linux-gnu/3.4.6/include/stddef.h"
	.text
.Letext0:
	.section	.debug_info
	.long	0x143a
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.Ldebug_line0
	.quad	.Letext0
	.quad	.Ltext0
	.long	.LASF154
	.byte	0x1
	.long	.LASF155
	.long	.LASF156
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
	.uleb128 0x5
	.long	0x6e
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
	.uleb128 0x6
	.byte	0x8
	.uleb128 0x7
	.byte	0x8
	.long	0x6e
	.uleb128 0x3
	.long	.LASF12
	.byte	0x8
	.byte	0x7
	.uleb128 0x8
	.long	0x27b
	.long	.LASF43
	.byte	0xd8
	.byte	0x7
	.byte	0x2d
	.uleb128 0x9
	.long	.LASF13
	.byte	0x8
	.value	0x110
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF14
	.byte	0x8
	.value	0x115
	.long	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF15
	.byte	0x8
	.value	0x116
	.long	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.long	.LASF16
	.byte	0x8
	.value	0x117
	.long	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.long	.LASF17
	.byte	0x8
	.value	0x118
	.long	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.long	.LASF18
	.byte	0x8
	.value	0x119
	.long	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.long	.LASF19
	.byte	0x8
	.value	0x11a
	.long	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.long	.LASF20
	.byte	0x8
	.value	0x11b
	.long	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.long	.LASF21
	.byte	0x8
	.value	0x11c
	.long	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.long	.LASF22
	.byte	0x8
	.value	0x11e
	.long	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x9
	.long	.LASF23
	.byte	0x8
	.value	0x11f
	.long	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x9
	.long	.LASF24
	.byte	0x8
	.value	0x120
	.long	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x9
	.long	.LASF25
	.byte	0x8
	.value	0x122
	.long	0x2b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x9
	.long	.LASF26
	.byte	0x8
	.value	0x124
	.long	0x2bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x9
	.long	.LASF27
	.byte	0x8
	.value	0x126
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x9
	.long	.LASF28
	.byte	0x8
	.value	0x12a
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x9
	.long	.LASF29
	.byte	0x8
	.value	0x12c
	.long	0x8a
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x9
	.long	.LASF30
	.byte	0x8
	.value	0x130
	.long	0x62
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x9
	.long	.LASF31
	.byte	0x8
	.value	0x131
	.long	0x7c
	.byte	0x3
	.byte	0x23
	.uleb128 0x82
	.uleb128 0x9
	.long	.LASF32
	.byte	0x8
	.value	0x132
	.long	0x2c5
	.byte	0x3
	.byte	0x23
	.uleb128 0x83
	.uleb128 0x9
	.long	.LASF33
	.byte	0x8
	.value	0x136
	.long	0x2d5
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x9
	.long	.LASF34
	.byte	0x8
	.value	0x13f
	.long	0x95
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x9
	.long	.LASF35
	.byte	0x8
	.value	0x148
	.long	0xa0
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x9
	.long	.LASF36
	.byte	0x8
	.value	0x149
	.long	0xa0
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x9
	.long	.LASF37
	.byte	0x8
	.value	0x14a
	.long	0xa0
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x9
	.long	.LASF38
	.byte	0x8
	.value	0x14b
	.long	0xa0
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x9
	.long	.LASF39
	.byte	0x8
	.value	0x14c
	.long	0x2d
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x9
	.long	.LASF40
	.byte	0x8
	.value	0x14e
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x9
	.long	.LASF41
	.byte	0x8
	.value	0x150
	.long	0x2db
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.byte	0x0
	.uleb128 0xa
	.long	.LASF42
	.byte	0x8
	.byte	0xb4
	.uleb128 0x8
	.long	0x2b9
	.long	.LASF44
	.byte	0x18
	.byte	0x8
	.byte	0xba
	.uleb128 0xb
	.long	.LASF45
	.byte	0x8
	.byte	0xbb
	.long	0x2b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF46
	.byte	0x8
	.byte	0xbc
	.long	0x2bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF47
	.byte	0x8
	.byte	0xc0
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x7
	.byte	0x8
	.long	0x282
	.uleb128 0x7
	.byte	0x8
	.long	0xaf
	.uleb128 0xc
	.long	0x2d5
	.long	0x6e
	.uleb128 0xd
	.long	0x5b
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
	.byte	0x8
	.long	0x27b
	.uleb128 0xc
	.long	0x2eb
	.long	0x6e
	.uleb128 0xd
	.long	0x5b
	.byte	0x13
	.byte	0x0
	.uleb128 0x2
	.long	.LASF48
	.byte	0x5
	.byte	0x31
	.long	0x75
	.uleb128 0x2
	.long	.LASF49
	.byte	0x5
	.byte	0x32
	.long	0x62
	.uleb128 0x2
	.long	.LASF50
	.byte	0x5
	.byte	0x34
	.long	0x46
	.uleb128 0x7
	.byte	0x8
	.long	0x312
	.uleb128 0x5
	.long	0x2eb
	.uleb128 0x2
	.long	.LASF51
	.byte	0x3
	.byte	0x6d
	.long	0x322
	.uleb128 0xe
	.long	.LASF51
	.byte	0x1
	.uleb128 0x2
	.long	.LASF52
	.byte	0x3
	.byte	0x73
	.long	0x333
	.uleb128 0xe
	.long	.LASF52
	.byte	0x1
	.uleb128 0x2
	.long	.LASF53
	.byte	0x3
	.byte	0x74
	.long	0x344
	.uleb128 0xe
	.long	.LASF53
	.byte	0x1
	.uleb128 0x2
	.long	.LASF54
	.byte	0x3
	.byte	0x75
	.long	0x355
	.uleb128 0x8
	.long	0x3a8
	.long	.LASF54
	.byte	0x28
	.byte	0x3
	.byte	0x75
	.uleb128 0xb
	.long	.LASF55
	.byte	0x4
	.byte	0x1a
	.long	0x43c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF56
	.byte	0x4
	.byte	0x1b
	.long	0x41b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF57
	.byte	0x4
	.byte	0x1c
	.long	0x3ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.long	.LASF58
	.byte	0x4
	.byte	0x1f
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.long	.LASF59
	.byte	0x4
	.byte	0x20
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x7
	.byte	0x8
	.long	0x3ae
	.uleb128 0xf
	.long	0x3c4
	.byte	0x1
	.uleb128 0x10
	.long	0xa0
	.uleb128 0x10
	.long	0x3f
	.uleb128 0x10
	.long	0x3f
	.byte	0x0
	.uleb128 0x7
	.byte	0x8
	.long	0x328
	.uleb128 0x11
	.long	0x3ef
	.long	.LASF157
	.byte	0x4
	.byte	0x4
	.byte	0x9
	.uleb128 0x12
	.long	.LASF60
	.sleb128 0
	.uleb128 0x12
	.long	.LASF61
	.sleb128 1
	.uleb128 0x12
	.long	.LASF62
	.sleb128 2
	.uleb128 0x12
	.long	.LASF63
	.sleb128 3
	.byte	0x0
	.uleb128 0x2
	.long	.LASF64
	.byte	0x4
	.byte	0x11
	.long	0x3fa
	.uleb128 0x7
	.byte	0x8
	.long	0x400
	.uleb128 0x13
	.long	0x415
	.byte	0x1
	.long	0x3f
	.uleb128 0x10
	.long	0x415
	.uleb128 0x10
	.long	0x2eb
	.byte	0x0
	.uleb128 0x7
	.byte	0x8
	.long	0x34a
	.uleb128 0x2
	.long	.LASF65
	.byte	0x4
	.byte	0x13
	.long	0x426
	.uleb128 0x7
	.byte	0x8
	.long	0x42c
	.uleb128 0x13
	.long	0x43c
	.byte	0x1
	.long	0x3f
	.uleb128 0x10
	.long	0x415
	.byte	0x0
	.uleb128 0x2
	.long	.LASF66
	.byte	0x4
	.byte	0x15
	.long	0x447
	.uleb128 0x7
	.byte	0x8
	.long	0x44d
	.uleb128 0xf
	.long	0x45e
	.byte	0x1
	.uleb128 0x10
	.long	0x415
	.uleb128 0x10
	.long	0x3ca
	.byte	0x0
	.uleb128 0x14
	.long	0x48b
	.byte	0x4
	.byte	0x6
	.byte	0x20
	.uleb128 0x12
	.long	.LASF67
	.sleb128 0
	.uleb128 0x12
	.long	.LASF68
	.sleb128 1
	.uleb128 0x12
	.long	.LASF69
	.sleb128 2
	.uleb128 0x12
	.long	.LASF70
	.sleb128 3
	.uleb128 0x12
	.long	.LASF71
	.sleb128 4
	.uleb128 0x12
	.long	.LASF72
	.sleb128 5
	.byte	0x0
	.uleb128 0x2
	.long	.LASF73
	.byte	0x6
	.byte	0x27
	.long	0x45e
	.uleb128 0x15
	.long	0x4d7
	.byte	0x10
	.byte	0x6
	.byte	0x34
	.uleb128 0xb
	.long	.LASF74
	.byte	0x6
	.byte	0x30
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF75
	.byte	0x6
	.byte	0x31
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x16
	.string	"fmt"
	.byte	0x6
	.byte	0x32
	.long	0x48b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF76
	.byte	0x6
	.byte	0x33
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.long	.LASF77
	.byte	0x6
	.byte	0x34
	.long	0x496
	.uleb128 0x2
	.long	.LASF78
	.byte	0x6
	.byte	0x4c
	.long	0x4ed
	.uleb128 0xe
	.long	.LASF78
	.byte	0x1
	.uleb128 0x2
	.long	.LASF79
	.byte	0x6
	.byte	0x4e
	.long	0x4fe
	.uleb128 0xe
	.long	.LASF79
	.byte	0x1
	.uleb128 0x15
	.long	0x529
	.byte	0x10
	.byte	0x6
	.byte	0x53
	.uleb128 0xb
	.long	.LASF80
	.byte	0x6
	.byte	0x53
	.long	0x560
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF81
	.byte	0x6
	.byte	0x53
	.long	0x566
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x8
	.long	0x560
	.long	.LASF82
	.byte	0x20
	.byte	0x6
	.byte	0x50
	.uleb128 0xb
	.long	.LASF83
	.byte	0x6
	.byte	0x51
	.long	0x56c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF84
	.byte	0x6
	.byte	0x52
	.long	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF85
	.byte	0x6
	.byte	0x53
	.long	0x504
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x7
	.byte	0x8
	.long	0x529
	.uleb128 0x7
	.byte	0x8
	.long	0x560
	.uleb128 0x7
	.byte	0x8
	.long	0x317
	.uleb128 0x2
	.long	.LASF82
	.byte	0x6
	.byte	0x54
	.long	0x529
	.uleb128 0x17
	.long	0x781
	.long	.LASF86
	.value	0x2100
	.byte	0x1
	.byte	0x14
	.uleb128 0x16
	.string	"i2c"
	.byte	0x1
	.byte	0x15
	.long	0x34a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF87
	.byte	0x1
	.byte	0x16
	.long	0x781
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.long	.LASF88
	.byte	0x1
	.byte	0x17
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xb
	.long	.LASF89
	.byte	0x1
	.byte	0x18
	.long	0x572
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xb
	.long	.LASF90
	.byte	0x1
	.byte	0x19
	.long	0x791
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xb
	.long	.LASF91
	.byte	0x1
	.byte	0x1a
	.long	0x7a7
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xb
	.long	.LASF92
	.byte	0x1
	.byte	0x1b
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xb
	.long	.LASF93
	.byte	0x1
	.byte	0x1c
	.long	0x3a8
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xb
	.long	.LASF94
	.byte	0x1
	.byte	0x1d
	.long	0xa0
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xb
	.long	.LASF95
	.byte	0x1
	.byte	0x1e
	.long	0x7bd
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xb
	.long	.LASF96
	.byte	0x1
	.byte	0x1f
	.long	0x7bd
	.byte	0x3
	.byte	0x23
	.uleb128 0x1098
	.uleb128 0xb
	.long	.LASF97
	.byte	0x1
	.byte	0x20
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x2098
	.uleb128 0xb
	.long	.LASF98
	.byte	0x1
	.byte	0x20
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x209c
	.uleb128 0xb
	.long	.LASF99
	.byte	0x1
	.byte	0x21
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x20a0
	.uleb128 0xb
	.long	.LASF100
	.byte	0x1
	.byte	0x21
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x20a4
	.uleb128 0x16
	.string	"out"
	.byte	0x1
	.byte	0x23
	.long	0x7ce
	.byte	0x3
	.byte	0x23
	.uleb128 0x20a8
	.uleb128 0xb
	.long	.LASF101
	.byte	0x1
	.byte	0x24
	.long	0x7e4
	.byte	0x3
	.byte	0x23
	.uleb128 0x20b8
	.uleb128 0xb
	.long	.LASF102
	.byte	0x1
	.byte	0x24
	.long	0x781
	.byte	0x3
	.byte	0x23
	.uleb128 0x20bf
	.uleb128 0x16
	.string	"in"
	.byte	0x1
	.byte	0x25
	.long	0x7f4
	.byte	0x3
	.byte	0x23
	.uleb128 0x20c8
	.uleb128 0xb
	.long	.LASF103
	.byte	0x1
	.byte	0x26
	.long	0x80a
	.byte	0x3
	.byte	0x23
	.uleb128 0x20d8
	.uleb128 0xb
	.long	.LASF104
	.byte	0x1
	.byte	0x26
	.long	0x781
	.byte	0x3
	.byte	0x23
	.uleb128 0x20dc
	.uleb128 0xb
	.long	.LASF105
	.byte	0x1
	.byte	0x28
	.long	0x781
	.byte	0x3
	.byte	0x23
	.uleb128 0x20de
	.uleb128 0x16
	.string	"pol"
	.byte	0x1
	.byte	0x28
	.long	0x2eb
	.byte	0x3
	.byte	0x23
	.uleb128 0x20e0
	.uleb128 0x16
	.string	"ds"
	.byte	0x1
	.byte	0x28
	.long	0x2eb
	.byte	0x3
	.byte	0x23
	.uleb128 0x20e1
	.uleb128 0xb
	.long	.LASF106
	.byte	0x1
	.byte	0x28
	.long	0x781
	.byte	0x3
	.byte	0x23
	.uleb128 0x20e2
	.uleb128 0x16
	.string	"alc"
	.byte	0x1
	.byte	0x28
	.long	0x2eb
	.byte	0x3
	.byte	0x23
	.uleb128 0x20e4
	.uleb128 0xb
	.long	.LASF107
	.byte	0x1
	.byte	0x28
	.long	0x2eb
	.byte	0x3
	.byte	0x23
	.uleb128 0x20e5
	.uleb128 0xb
	.long	.LASF108
	.byte	0x1
	.byte	0x29
	.long	0x80a
	.byte	0x3
	.byte	0x23
	.uleb128 0x20e6
	.uleb128 0xb
	.long	.LASF109
	.byte	0x1
	.byte	0x29
	.long	0x781
	.byte	0x3
	.byte	0x23
	.uleb128 0x20ea
	.uleb128 0xb
	.long	.LASF110
	.byte	0x1
	.byte	0x29
	.long	0x2eb
	.byte	0x3
	.byte	0x23
	.uleb128 0x20ec
	.uleb128 0xb
	.long	.LASF111
	.byte	0x1
	.byte	0x29
	.long	0x2eb
	.byte	0x3
	.byte	0x23
	.uleb128 0x20ed
	.uleb128 0xb
	.long	.LASF112
	.byte	0x1
	.byte	0x2a
	.long	0x301
	.byte	0x3
	.byte	0x23
	.uleb128 0x20f0
	.uleb128 0xb
	.long	.LASF113
	.byte	0x1
	.byte	0x2a
	.long	0x301
	.byte	0x3
	.byte	0x23
	.uleb128 0x20f4
	.uleb128 0xb
	.long	.LASF114
	.byte	0x1
	.byte	0x2b
	.long	0x85f
	.byte	0x3
	.byte	0x23
	.uleb128 0x20f8
	.byte	0x0
	.uleb128 0xc
	.long	0x791
	.long	0x2eb
	.uleb128 0xd
	.long	0x5b
	.byte	0x1
	.byte	0x0
	.uleb128 0xc
	.long	0x7a1
	.long	0x7a1
	.uleb128 0xd
	.long	0x5b
	.byte	0x2
	.byte	0x0
	.uleb128 0x7
	.byte	0x8
	.long	0x4f3
	.uleb128 0xc
	.long	0x7b7
	.long	0x7b7
	.uleb128 0xd
	.long	0x5b
	.byte	0x2
	.byte	0x0
	.uleb128 0x7
	.byte	0x8
	.long	0x4e2
	.uleb128 0xc
	.long	0x7ce
	.long	0x2eb
	.uleb128 0x18
	.long	0x5b
	.value	0xfff
	.byte	0x0
	.uleb128 0xc
	.long	0x7de
	.long	0x7de
	.uleb128 0xd
	.long	0x5b
	.byte	0x1
	.byte	0x0
	.uleb128 0x7
	.byte	0x8
	.long	0x7b7
	.uleb128 0xc
	.long	0x7f4
	.long	0x2eb
	.uleb128 0xd
	.long	0x5b
	.byte	0x6
	.byte	0x0
	.uleb128 0xc
	.long	0x804
	.long	0x804
	.uleb128 0xd
	.long	0x5b
	.byte	0x1
	.byte	0x0
	.uleb128 0x7
	.byte	0x8
	.long	0x7a1
	.uleb128 0xc
	.long	0x81a
	.long	0x2eb
	.uleb128 0xd
	.long	0x5b
	.byte	0x3
	.byte	0x0
	.uleb128 0x8
	.long	0x85f
	.long	.LASF115
	.byte	0x10
	.byte	0x1
	.byte	0x13
	.uleb128 0x16
	.string	"adc"
	.byte	0x1
	.byte	0x56
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF116
	.byte	0x1
	.byte	0x57
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x16
	.string	"dac"
	.byte	0x1
	.byte	0x58
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF117
	.byte	0x1
	.byte	0x59
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x7
	.byte	0x8
	.long	0x865
	.uleb128 0x5
	.long	0x81a
	.uleb128 0x19
	.long	0x8ac
	.long	.LASF119
	.byte	0x1
	.byte	0x42
	.byte	0x1
	.quad	.LFB111
	.quad	.LFE111
	.byte	0x1
	.byte	0x57
	.uleb128 0x1a
	.long	.LASF94
	.byte	0x1
	.byte	0x41
	.long	0xa0
	.byte	0x1
	.byte	0x52
	.uleb128 0x1a
	.long	.LASF118
	.byte	0x1
	.byte	0x41
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.uleb128 0x1b
	.string	"s"
	.byte	0x1
	.byte	0x43
	.long	0x8ac
	.byte	0x0
	.uleb128 0x7
	.byte	0x8
	.long	0x57d
	.uleb128 0x19
	.long	0x91a
	.long	.LASF120
	.byte	0x1
	.byte	0x4d
	.byte	0x1
	.quad	.LFB112
	.quad	.LFE112
	.byte	0x1
	.byte	0x57
	.uleb128 0x1a
	.long	.LASF94
	.byte	0x1
	.byte	0x4c
	.long	0xa0
	.byte	0x1
	.byte	0x53
	.uleb128 0x1a
	.long	.LASF121
	.byte	0x1
	.byte	0x4c
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.uleb128 0x1b
	.string	"s"
	.byte	0x1
	.byte	0x4e
	.long	0x8ac
	.uleb128 0x1c
	.long	0x91a
	.quad	.LBB2
	.quad	.LBE2
	.uleb128 0x1d
	.long	0x927
	.uleb128 0x1e
	.long	.Ldebug_ranges0+0x0
	.uleb128 0x1f
	.long	0x930
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
	.long	0x93c
	.long	.LASF122
	.byte	0x1
	.byte	0x39
	.byte	0x1
	.byte	0x3
	.uleb128 0x21
	.string	"s"
	.byte	0x1
	.byte	0x38
	.long	0x8ac
	.uleb128 0x22
	.long	.LASF123
	.byte	0x1
	.byte	0x3a
	.long	0x3f
	.byte	0x0
	.uleb128 0x19
	.long	0x9c1
	.long	.LASF124
	.byte	0x1
	.byte	0x80
	.byte	0x1
	.quad	.LFB113
	.quad	.LFE113
	.byte	0x1
	.byte	0x57
	.uleb128 0x23
	.string	"s"
	.byte	0x1
	.byte	0x7f
	.long	0x8ac
	.byte	0x1
	.byte	0x56
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.byte	0x81
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.uleb128 0x25
	.long	.LASF125
	.byte	0x1
	.byte	0x82
	.long	0x4d7
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x25
	.long	.LASF126
	.byte	0x1
	.byte	0x83
	.long	0x4d7
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x25
	.long	.LASF127
	.byte	0x1
	.byte	0x84
	.long	0x4d7
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1c
	.long	0x91a
	.quad	.LBB8
	.quad	.LBE8
	.uleb128 0x1d
	.long	0x927
	.uleb128 0x1e
	.long	.Ldebug_ranges0+0x40
	.uleb128 0x1f
	.long	0x930
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.long	0xa14
	.byte	0x1
	.long	.LASF142
	.byte	0x1
	.byte	0xd6
	.byte	0x1
	.quad	.LFB115
	.quad	.LFE115
	.byte	0x1
	.byte	0x57
	.uleb128 0x23
	.string	"i2c"
	.byte	0x1
	.byte	0xd5
	.long	0x415
	.byte	0x1
	.byte	0x55
	.uleb128 0x24
	.string	"s"
	.byte	0x1
	.byte	0xd7
	.long	0x8ac
	.byte	0x1
	.byte	0x53
	.uleb128 0x1c
	.long	0xa14
	.quad	.LBB12
	.quad	.LBE12
	.uleb128 0x1d
	.long	0xa21
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
	.long	0xa2b
	.long	.LASF128
	.byte	0x1
	.byte	0xc6
	.byte	0x1
	.byte	0x3
	.uleb128 0x21
	.string	"s"
	.byte	0x1
	.byte	0xc5
	.long	0x8ac
	.byte	0x0
	.uleb128 0x19
	.long	0xa6e
	.long	.LASF129
	.byte	0x1
	.byte	0xff
	.byte	0x1
	.quad	.LFB116
	.quad	.LFE116
	.byte	0x1
	.byte	0x57
	.uleb128 0x23
	.string	"i2c"
	.byte	0x1
	.byte	0xfe
	.long	0x415
	.byte	0x1
	.byte	0x55
	.uleb128 0x1a
	.long	.LASF55
	.byte	0x1
	.byte	0xfe
	.long	0x3ca
	.byte	0x1
	.byte	0x54
	.uleb128 0x27
	.string	"s"
	.byte	0x1
	.value	0x100
	.long	0x8ac
	.byte	0x0
	.uleb128 0x28
	.long	0xb41
	.long	.LASF130
	.byte	0x1
	.value	0x138
	.byte	0x1
	.long	0x3f
	.quad	.LFB117
	.quad	.LFE117
	.byte	0x1
	.byte	0x57
	.uleb128 0x29
	.string	"i2c"
	.byte	0x1
	.value	0x137
	.long	0x415
	.byte	0x1
	.byte	0x56
	.uleb128 0x2a
	.long	.LASF131
	.byte	0x1
	.value	0x137
	.long	0x2eb
	.byte	0x1
	.byte	0x54
	.uleb128 0x27
	.string	"s"
	.byte	0x1
	.value	0x139
	.long	0x8ac
	.uleb128 0x2b
	.string	"cmd"
	.byte	0x1
	.value	0x13a
	.long	0x2eb
	.byte	0x1
	.byte	0x51
	.uleb128 0x2c
	.long	.LASF132
	.byte	0x1
	.value	0x13b
	.long	0x2f6
	.byte	0x1
	.byte	0x52
	.uleb128 0x2d
	.long	.LASF133
	.long	0xb51
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__FUNCTION__.0
	.uleb128 0x2e
	.long	0xb06
	.long	0xa14
	.quad	.LBB14
	.quad	.LBE14
	.uleb128 0x1d
	.long	0xa21
	.byte	0x0
	.uleb128 0x2e
	.long	0xb25
	.long	0xa14
	.quad	.LBB16
	.quad	.LBE16
	.uleb128 0x1d
	.long	0xa21
	.byte	0x0
	.uleb128 0x1c
	.long	0xa14
	.quad	.LBB20
	.quad	.LBE20
	.uleb128 0x1d
	.long	0xa21
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.long	0xb51
	.long	0x69
	.uleb128 0xd
	.long	0x5b
	.byte	0x9
	.byte	0x0
	.uleb128 0x5
	.long	0xb41
	.uleb128 0x28
	.long	0xb88
	.long	.LASF134
	.byte	0x1
	.value	0x1ec
	.byte	0x1
	.long	0x3f
	.quad	.LFB118
	.quad	.LFE118
	.byte	0x1
	.byte	0x57
	.uleb128 0x29
	.string	"i2c"
	.byte	0x1
	.value	0x1eb
	.long	0x415
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x2f
	.long	0xe5e
	.long	.LASF135
	.byte	0x1
	.value	0x1f1
	.byte	0x1
	.quad	.LFB119
	.quad	.LFE119
	.byte	0x1
	.byte	0x57
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0x1f0
	.long	0x3c4
	.byte	0x1
	.byte	0x5c
	.uleb128 0x2a
	.long	.LASF94
	.byte	0x1
	.value	0x1f0
	.long	0xa0
	.byte	0x1
	.byte	0x54
	.uleb128 0x2b
	.string	"s"
	.byte	0x1
	.value	0x1f2
	.long	0x8ac
	.byte	0x1
	.byte	0x5d
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x1f3
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.uleb128 0x2e
	.long	0xbfd
	.long	0xe5e
	.quad	.LBB24
	.quad	.LBE24
	.uleb128 0x1d
	.long	0xe6b
	.uleb128 0x1d
	.long	0xe74
	.byte	0x0
	.uleb128 0x2e
	.long	0xc21
	.long	0xe5e
	.quad	.LBB26
	.quad	.LBE26
	.uleb128 0x1d
	.long	0xe6b
	.uleb128 0x1d
	.long	0xe74
	.byte	0x0
	.uleb128 0x2e
	.long	0xc45
	.long	0xe5e
	.quad	.LBB28
	.quad	.LBE28
	.uleb128 0x1d
	.long	0xe6b
	.uleb128 0x1d
	.long	0xe74
	.byte	0x0
	.uleb128 0x2e
	.long	0xc69
	.long	0xe5e
	.quad	.LBB30
	.quad	.LBE30
	.uleb128 0x1d
	.long	0xe6b
	.uleb128 0x1d
	.long	0xe74
	.byte	0x0
	.uleb128 0x2e
	.long	0xc8d
	.long	0xe5e
	.quad	.LBB32
	.quad	.LBE32
	.uleb128 0x1d
	.long	0xe6b
	.uleb128 0x1d
	.long	0xe74
	.byte	0x0
	.uleb128 0x2e
	.long	0xcb1
	.long	0xe5e
	.quad	.LBB34
	.quad	.LBE34
	.uleb128 0x1d
	.long	0xe6b
	.uleb128 0x1d
	.long	0xe74
	.byte	0x0
	.uleb128 0x2e
	.long	0xcd5
	.long	0xe5e
	.quad	.LBB36
	.quad	.LBE36
	.uleb128 0x1d
	.long	0xe6b
	.uleb128 0x1d
	.long	0xe74
	.byte	0x0
	.uleb128 0x2e
	.long	0xcf9
	.long	0xe5e
	.quad	.LBB38
	.quad	.LBE38
	.uleb128 0x1d
	.long	0xe6b
	.uleb128 0x1d
	.long	0xe74
	.byte	0x0
	.uleb128 0x2e
	.long	0xd1d
	.long	0xe5e
	.quad	.LBB40
	.quad	.LBE40
	.uleb128 0x1d
	.long	0xe6b
	.uleb128 0x1d
	.long	0xe74
	.byte	0x0
	.uleb128 0x2e
	.long	0xd41
	.long	0xe5e
	.quad	.LBB42
	.quad	.LBE42
	.uleb128 0x1d
	.long	0xe6b
	.uleb128 0x1d
	.long	0xe74
	.byte	0x0
	.uleb128 0x2e
	.long	0xd65
	.long	0xe5e
	.quad	.LBB44
	.quad	.LBE44
	.uleb128 0x1d
	.long	0xe6b
	.uleb128 0x1d
	.long	0xe74
	.byte	0x0
	.uleb128 0x2e
	.long	0xd89
	.long	0xe5e
	.quad	.LBB46
	.quad	.LBE46
	.uleb128 0x1d
	.long	0xe6b
	.uleb128 0x1d
	.long	0xe74
	.byte	0x0
	.uleb128 0x2e
	.long	0xdad
	.long	0xe5e
	.quad	.LBB48
	.quad	.LBE48
	.uleb128 0x1d
	.long	0xe6b
	.uleb128 0x1d
	.long	0xe74
	.byte	0x0
	.uleb128 0x2e
	.long	0xdd1
	.long	0xe5e
	.quad	.LBB50
	.quad	.LBE50
	.uleb128 0x1d
	.long	0xe6b
	.uleb128 0x1d
	.long	0xe74
	.byte	0x0
	.uleb128 0x2e
	.long	0xdf5
	.long	0xe5e
	.quad	.LBB52
	.quad	.LBE52
	.uleb128 0x1d
	.long	0xe6b
	.uleb128 0x1d
	.long	0xe74
	.byte	0x0
	.uleb128 0x2e
	.long	0xe19
	.long	0xe5e
	.quad	.LBB54
	.quad	.LBE54
	.uleb128 0x1d
	.long	0xe6b
	.uleb128 0x1d
	.long	0xe74
	.byte	0x0
	.uleb128 0x2e
	.long	0xe3d
	.long	0xe7f
	.quad	.LBB56
	.quad	.LBE56
	.uleb128 0x1d
	.long	0xe8c
	.uleb128 0x1d
	.long	0xe95
	.byte	0x0
	.uleb128 0x1c
	.long	0xe7f
	.quad	.LBB58
	.quad	.LBE58
	.uleb128 0x1d
	.long	0xe8c
	.uleb128 0x1d
	.long	0xe95
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
	.long	0xe7f
	.long	.LASF136
	.byte	0x2
	.byte	0x29
	.byte	0x1
	.byte	0x3
	.uleb128 0x21
	.string	"f"
	.byte	0x2
	.byte	0x28
	.long	0x3c4
	.uleb128 0x21
	.string	"pv"
	.byte	0x2
	.byte	0x28
	.long	0x30c
	.byte	0x0
	.uleb128 0x20
	.long	0xea0
	.long	.LASF137
	.byte	0x2
	.byte	0x1f
	.byte	0x1
	.byte	0x3
	.uleb128 0x21
	.string	"f"
	.byte	0x2
	.byte	0x1e
	.long	0x3c4
	.uleb128 0x21
	.string	"pv"
	.byte	0x2
	.byte	0x1e
	.long	0xea0
	.byte	0x0
	.uleb128 0x7
	.byte	0x8
	.long	0xea6
	.uleb128 0x5
	.long	0x301
	.uleb128 0x28
	.long	0x1193
	.long	.LASF138
	.byte	0x1
	.value	0x21b
	.byte	0x1
	.long	0x3f
	.quad	.LFB120
	.quad	.LFE120
	.byte	0x1
	.byte	0x57
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0x21a
	.long	0x3c4
	.byte	0x1
	.byte	0x5c
	.uleb128 0x2a
	.long	.LASF94
	.byte	0x1
	.value	0x21a
	.long	0xa0
	.byte	0x1
	.byte	0x54
	.uleb128 0x2a
	.long	.LASF139
	.byte	0x1
	.value	0x21a
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x2b
	.string	"s"
	.byte	0x1
	.value	0x21c
	.long	0x8ac
	.byte	0x1
	.byte	0x5d
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x21d
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.uleb128 0x2e
	.long	0xf32
	.long	0x1193
	.quad	.LBB60
	.quad	.LBE60
	.uleb128 0x1d
	.long	0x11a0
	.uleb128 0x1d
	.long	0x11a9
	.byte	0x0
	.uleb128 0x2e
	.long	0xf56
	.long	0x1193
	.quad	.LBB62
	.quad	.LBE62
	.uleb128 0x1d
	.long	0x11a0
	.uleb128 0x1d
	.long	0x11a9
	.byte	0x0
	.uleb128 0x2e
	.long	0xf7a
	.long	0x1193
	.quad	.LBB70
	.quad	.LBE70
	.uleb128 0x1d
	.long	0x11a0
	.uleb128 0x1d
	.long	0x11a9
	.byte	0x0
	.uleb128 0x2e
	.long	0xf9e
	.long	0x1193
	.quad	.LBB72
	.quad	.LBE72
	.uleb128 0x1d
	.long	0x11a0
	.uleb128 0x1d
	.long	0x11a9
	.byte	0x0
	.uleb128 0x2e
	.long	0xfc2
	.long	0x1193
	.quad	.LBB74
	.quad	.LBE74
	.uleb128 0x1d
	.long	0x11a0
	.uleb128 0x1d
	.long	0x11a9
	.byte	0x0
	.uleb128 0x2e
	.long	0xfe6
	.long	0x1193
	.quad	.LBB76
	.quad	.LBE76
	.uleb128 0x1d
	.long	0x11a0
	.uleb128 0x1d
	.long	0x11a9
	.byte	0x0
	.uleb128 0x2e
	.long	0x100a
	.long	0x1193
	.quad	.LBB78
	.quad	.LBE78
	.uleb128 0x1d
	.long	0x11a0
	.uleb128 0x1d
	.long	0x11a9
	.byte	0x0
	.uleb128 0x2e
	.long	0x102e
	.long	0x1193
	.quad	.LBB80
	.quad	.LBE80
	.uleb128 0x1d
	.long	0x11a0
	.uleb128 0x1d
	.long	0x11a9
	.byte	0x0
	.uleb128 0x2e
	.long	0x1052
	.long	0x1193
	.quad	.LBB82
	.quad	.LBE82
	.uleb128 0x1d
	.long	0x11a0
	.uleb128 0x1d
	.long	0x11a9
	.byte	0x0
	.uleb128 0x2e
	.long	0x1076
	.long	0x1193
	.quad	.LBB88
	.quad	.LBE88
	.uleb128 0x1d
	.long	0x11a0
	.uleb128 0x1d
	.long	0x11a9
	.byte	0x0
	.uleb128 0x2e
	.long	0x109a
	.long	0x1193
	.quad	.LBB90
	.quad	.LBE90
	.uleb128 0x1d
	.long	0x11a0
	.uleb128 0x1d
	.long	0x11a9
	.byte	0x0
	.uleb128 0x2e
	.long	0x10be
	.long	0x1193
	.quad	.LBB92
	.quad	.LBE92
	.uleb128 0x1d
	.long	0x11a0
	.uleb128 0x1d
	.long	0x11a9
	.byte	0x0
	.uleb128 0x2e
	.long	0x10e2
	.long	0x1193
	.quad	.LBB98
	.quad	.LBE98
	.uleb128 0x1d
	.long	0x11a0
	.uleb128 0x1d
	.long	0x11a9
	.byte	0x0
	.uleb128 0x2e
	.long	0x1106
	.long	0x1193
	.quad	.LBB100
	.quad	.LBE100
	.uleb128 0x1d
	.long	0x11a0
	.uleb128 0x1d
	.long	0x11a9
	.byte	0x0
	.uleb128 0x2e
	.long	0x112a
	.long	0x1193
	.quad	.LBB102
	.quad	.LBE102
	.uleb128 0x1d
	.long	0x11a0
	.uleb128 0x1d
	.long	0x11a9
	.byte	0x0
	.uleb128 0x2e
	.long	0x114e
	.long	0x1193
	.quad	.LBB104
	.quad	.LBE104
	.uleb128 0x1d
	.long	0x11a0
	.uleb128 0x1d
	.long	0x11a9
	.byte	0x0
	.uleb128 0x2e
	.long	0x1172
	.long	0x11ba
	.quad	.LBB110
	.quad	.LBE110
	.uleb128 0x1d
	.long	0x11c7
	.uleb128 0x1d
	.long	0x11d0
	.byte	0x0
	.uleb128 0x1c
	.long	0x11ba
	.quad	.LBB116
	.quad	.LBE116
	.uleb128 0x1d
	.long	0x11c7
	.uleb128 0x1d
	.long	0x11d0
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
	.long	0x11b4
	.long	.LASF140
	.byte	0x2
	.byte	0x3d
	.byte	0x1
	.byte	0x3
	.uleb128 0x21
	.string	"f"
	.byte	0x2
	.byte	0x3c
	.long	0x3c4
	.uleb128 0x21
	.string	"pv"
	.byte	0x2
	.byte	0x3c
	.long	0x11b4
	.byte	0x0
	.uleb128 0x7
	.byte	0x8
	.long	0x2eb
	.uleb128 0x20
	.long	0x11db
	.long	.LASF141
	.byte	0x2
	.byte	0x33
	.byte	0x1
	.byte	0x3
	.uleb128 0x21
	.string	"f"
	.byte	0x2
	.byte	0x32
	.long	0x3c4
	.uleb128 0x21
	.string	"pv"
	.byte	0x2
	.byte	0x32
	.long	0x11db
	.byte	0x0
	.uleb128 0x7
	.byte	0x8
	.long	0x301
	.uleb128 0x30
	.long	0x122e
	.byte	0x1
	.long	.LASF143
	.byte	0x1
	.value	0x248
	.byte	0x1
	.long	0x415
	.quad	.LFB121
	.quad	.LFE121
	.byte	0x1
	.byte	0x57
	.uleb128 0x29
	.string	"bus"
	.byte	0x1
	.value	0x247
	.long	0x122e
	.byte	0x1
	.byte	0x55
	.uleb128 0x2a
	.long	.LASF83
	.byte	0x1
	.value	0x247
	.long	0x56c
	.byte	0x1
	.byte	0x5c
	.uleb128 0x2b
	.string	"s"
	.byte	0x1
	.value	0x249
	.long	0x8ac
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x7
	.byte	0x8
	.long	0x339
	.uleb128 0x31
	.long	0x1289
	.byte	0x1
	.long	.LASF144
	.byte	0x1
	.value	0x261
	.byte	0x1
	.quad	.LFB123
	.quad	.LFE123
	.byte	0x1
	.byte	0x57
	.uleb128 0x29
	.string	"i2c"
	.byte	0x1
	.value	0x25f
	.long	0x415
	.byte	0x1
	.byte	0x55
	.uleb128 0x2a
	.long	.LASF93
	.byte	0x1
	.value	0x260
	.long	0x3a8
	.byte	0x1
	.byte	0x54
	.uleb128 0x2a
	.long	.LASF94
	.byte	0x1
	.value	0x260
	.long	0xa0
	.byte	0x1
	.byte	0x51
	.uleb128 0x27
	.string	"s"
	.byte	0x1
	.value	0x262
	.long	0x8ac
	.byte	0x0
	.uleb128 0x31
	.long	0x130e
	.byte	0x1
	.long	.LASF145
	.byte	0x1
	.value	0x268
	.byte	0x1
	.quad	.LFB124
	.quad	.LFE124
	.byte	0x1
	.byte	0x57
	.uleb128 0x2a
	.long	.LASF94
	.byte	0x1
	.value	0x267
	.long	0xa0
	.byte	0x1
	.byte	0x53
	.uleb128 0x2a
	.long	.LASF146
	.byte	0x1
	.value	0x267
	.long	0x301
	.byte	0x1
	.byte	0x54
	.uleb128 0x27
	.string	"s"
	.byte	0x1
	.value	0x269
	.long	0x8ac
	.uleb128 0x32
	.long	.LASF131
	.byte	0x1
	.value	0x26a
	.long	0x11db
	.uleb128 0x1c
	.long	0x91a
	.quad	.LBB124
	.quad	.LBE124
	.uleb128 0x1d
	.long	0x927
	.uleb128 0x33
	.quad	.LBB125
	.quad	.LBE125
	.uleb128 0x1f
	.long	0x930
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.long	0x13ab
	.byte	0x1
	.long	.LASF147
	.byte	0x1
	.value	0x273
	.byte	0x1
	.long	0x301
	.quad	.LFB125
	.quad	.LFE125
	.byte	0x1
	.byte	0x57
	.uleb128 0x2a
	.long	.LASF94
	.byte	0x1
	.value	0x272
	.long	0xa0
	.byte	0x1
	.byte	0x55
	.uleb128 0x2b
	.string	"s"
	.byte	0x1
	.value	0x274
	.long	0x8ac
	.byte	0x1
	.byte	0x53
	.uleb128 0x32
	.long	.LASF131
	.byte	0x1
	.value	0x275
	.long	0x11db
	.uleb128 0x1c
	.long	0x13ab
	.quad	.LBB126
	.quad	.LBE126
	.uleb128 0x1d
	.long	0x13b8
	.uleb128 0x33
	.quad	.LBB127
	.quad	.LBE127
	.uleb128 0x1f
	.long	0x13c1
	.uleb128 0x33
	.quad	.LBB128
	.quad	.LBE128
	.uleb128 0x34
	.long	0x13cd
	.byte	0x1
	.byte	0x52
	.uleb128 0x34
	.long	0x13d7
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
	.long	0x13e3
	.long	.LASF148
	.byte	0x1
	.byte	0x2f
	.byte	0x1
	.byte	0x3
	.uleb128 0x21
	.string	"s"
	.byte	0x1
	.byte	0x2e
	.long	0x8ac
	.uleb128 0x22
	.long	.LASF149
	.byte	0x1
	.byte	0x30
	.long	0x3f
	.uleb128 0x35
	.uleb128 0x1b
	.string	"ta"
	.byte	0x1
	.byte	0x33
	.long	0x3f
	.uleb128 0x1b
	.string	"tb"
	.byte	0x1
	.byte	0x33
	.long	0x3f
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
	.long	.LASF150
	.byte	0x7
	.byte	0x91
	.long	0x2bf
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.long	.LASF151
	.byte	0x7
	.byte	0x92
	.long	0x2bf
	.byte	0x1
	.byte	0x1
	.uleb128 0xc
	.long	0x140d
	.long	0x865
	.uleb128 0xd
	.long	0x5b
	.byte	0x1f
	.byte	0x0
	.uleb128 0x25
	.long	.LASF152
	.byte	0x1
	.byte	0x5c
	.long	0x1422
	.byte	0x9
	.byte	0x3
	.quad	wm_rate_table
	.uleb128 0x5
	.long	0x13fd
	.uleb128 0x2c
	.long	.LASF153
	.byte	0x1
	.value	0x245
	.long	0x3f
	.byte	0x9
	.byte	0x3
	.quad	wm8750_iid
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0xc
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
	.uleb128 0x12
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
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
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
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
	.uleb128 0x33
	.uleb128 0xb
	.byte	0x1
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
	.uleb128 0xb
	.byte	0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
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
	.long	0x6d
	.value	0x2
	.long	.Ldebug_info0
	.long	0x143e
	.long	0x9c1
	.string	"wm8750_reset"
	.long	0x11e1
	.string	"wm8750_init"
	.long	0x1234
	.string	"wm8750_data_req_set"
	.long	0x1289
	.string	"wm8750_dac_dat"
	.long	0x130e
	.string	"wm8750_adc_dat"
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
	.quad	.LBB9-.Ltext0
	.quad	.LBE9-.Ltext0
	.quad	.LBB11-.Ltext0
	.quad	.LBE11-.Ltext0
	.quad	0x0
	.quad	0x0
	.section	.debug_str,"MS",@progbits,1
.LASF87:
	.string	"i2c_data"
.LASF9:
	.string	"size_t"
.LASF128:
	.string	"wm8750_mask_update"
.LASF113:
	.string	"outmask"
.LASF24:
	.string	"_IO_save_end"
.LASF146:
	.string	"sample"
.LASF108:
	.string	"path"
.LASF17:
	.string	"_IO_write_base"
.LASF33:
	.string	"_lock"
.LASF22:
	.string	"_IO_save_base"
.LASF102:
	.string	"outmute"
.LASF118:
	.string	"avail_b"
.LASF30:
	.string	"_cur_column"
.LASF95:
	.string	"data_in"
.LASF40:
	.string	"_mode"
.LASF125:
	.string	"in_fmt"
.LASF105:
	.string	"diff"
.LASF106:
	.string	"monomix"
.LASF70:
	.string	"AUD_FMT_S16"
.LASF2:
	.string	"long int"
.LASF44:
	.string	"_IO_marker"
.LASF94:
	.string	"opaque"
.LASF86:
	.string	"wm8750_s"
.LASF139:
	.string	"version_id"
.LASF53:
	.string	"i2c_bus"
.LASF7:
	.string	"signed char"
.LASF43:
	.string	"_IO_FILE"
.LASF72:
	.string	"AUD_FMT_S32"
.LASF82:
	.string	"QEMUSoundCard"
.LASF63:
	.string	"I2C_NACK"
.LASF119:
	.string	"wm8750_audio_in_cb"
.LASF6:
	.string	"unsigned char"
.LASF68:
	.string	"AUD_FMT_S8"
.LASF133:
	.string	"__FUNCTION__"
.LASF96:
	.string	"data_out"
.LASF132:
	.string	"value"
.LASF5:
	.string	"char"
.LASF152:
	.string	"wm_rate_table"
.LASF42:
	.string	"_IO_lock_t"
.LASF52:
	.string	"QEMUFile"
.LASF136:
	.string	"qemu_put_8s"
.LASF149:
	.string	"acquired"
.LASF83:
	.string	"audio"
.LASF122:
	.string	"wm8750_out_flush"
.LASF140:
	.string	"qemu_get_8s"
.LASF67:
	.string	"AUD_FMT_U8"
.LASF14:
	.string	"_IO_read_ptr"
.LASF76:
	.string	"endianness"
.LASF47:
	.string	"_pos"
.LASF150:
	.string	"stdin"
.LASF93:
	.string	"data_req"
.LASF25:
	.string	"_markers"
.LASF115:
	.string	"wm_rate_s"
.LASF103:
	.string	"invol"
.LASF66:
	.string	"i2c_event_cb"
.LASF124:
	.string	"wm8750_set_format"
.LASF114:
	.string	"rate"
.LASF157:
	.string	"i2c_event"
.LASF34:
	.string	"_offset"
.LASF112:
	.string	"inmask"
.LASF91:
	.string	"dac_voice"
.LASF0:
	.string	"long unsigned int"
.LASF111:
	.string	"format"
.LASF135:
	.string	"wm8750_save"
.LASF28:
	.string	"_flags2"
.LASF16:
	.string	"_IO_read_base"
.LASF41:
	.string	"_unused2"
.LASF77:
	.string	"audsettings_t"
.LASF155:
	.string	"/home/remco/Projects/Argos/src/hw/wm8750.c"
.LASF29:
	.string	"_old_offset"
.LASF57:
	.string	"send"
.LASF3:
	.string	"long long int"
.LASF92:
	.string	"enable"
.LASF64:
	.string	"i2c_send_cb"
.LASF19:
	.string	"_IO_write_end"
.LASF78:
	.string	"SWVoiceOut"
.LASF55:
	.string	"event"
.LASF69:
	.string	"AUD_FMT_U16"
.LASF20:
	.string	"_IO_buf_base"
.LASF107:
	.string	"mute"
.LASF142:
	.string	"wm8750_reset"
.LASF45:
	.string	"_next"
.LASF1:
	.string	"unsigned int"
.LASF154:
	.string	"GNU C 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
.LASF143:
	.string	"wm8750_init"
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
.LASF62:
	.string	"I2C_FINISH"
.LASF98:
	.string	"req_in"
.LASF75:
	.string	"nchannels"
.LASF13:
	.string	"_flags"
.LASF58:
	.string	"address"
.LASF54:
	.string	"i2c_slave"
.LASF71:
	.string	"AUD_FMT_U32"
.LASF56:
	.string	"recv"
.LASF90:
	.string	"adc_voice"
.LASF129:
	.string	"wm8750_event"
.LASF134:
	.string	"wm8750_rx"
.LASF110:
	.string	"power"
.LASF59:
	.string	"next"
.LASF138:
	.string	"wm8750_load"
.LASF127:
	.string	"monoout_fmt"
.LASF109:
	.string	"mpath"
.LASF100:
	.string	"req_out"
.LASF104:
	.string	"inmute"
.LASF88:
	.string	"i2c_len"
.LASF12:
	.string	"long long unsigned int"
.LASF48:
	.string	"uint8_t"
.LASF49:
	.string	"uint16_t"
.LASF121:
	.string	"free_b"
.LASF10:
	.string	"__off_t"
.LASF26:
	.string	"_chain"
.LASF101:
	.string	"outvol"
.LASF130:
	.string	"wm8750_tx"
.LASF79:
	.string	"SWVoiceIn"
.LASF18:
	.string	"_IO_write_ptr"
.LASF23:
	.string	"_IO_backup_base"
.LASF32:
	.string	"_shortbuf"
.LASF147:
	.string	"wm8750_adc_dat"
.LASF73:
	.string	"audfmt_e"
.LASF11:
	.string	"__off64_t"
.LASF123:
	.string	"sent"
.LASF156:
	.string	"/home/remco/Projects/Argos/src"
.LASF126:
	.string	"out_fmt"
.LASF21:
	.string	"_IO_buf_end"
.LASF84:
	.string	"name"
.LASF8:
	.string	"short int"
.LASF80:
	.string	"le_next"
.LASF61:
	.string	"I2C_START_SEND"
.LASF31:
	.string	"_vtable_offset"
.LASF144:
	.string	"wm8750_data_req_set"
.LASF97:
	.string	"idx_in"
.LASF81:
	.string	"le_prev"
.LASF117:
	.string	"dac_hz"
.LASF15:
	.string	"_IO_read_end"
.LASF89:
	.string	"card"
.LASF50:
	.string	"uint32_t"
.LASF27:
	.string	"_fileno"
.LASF74:
	.string	"freq"
.LASF4:
	.string	"short unsigned int"
.LASF151:
	.string	"stdout"
.LASF65:
	.string	"i2c_recv_cb"
.LASF85:
	.string	"entries"
.LASF145:
	.string	"wm8750_dac_dat"
.LASF120:
	.string	"wm8750_audio_out_cb"
.LASF116:
	.string	"adc_hz"
.LASF60:
	.string	"I2C_START_RECV"
.LASF131:
	.string	"data"
.LASF99:
	.string	"idx_out"
.LASF137:
	.string	"qemu_put_be32s"
.LASF141:
	.string	"qemu_get_be32s"
.LASF51:
	.string	"AudioState"
.LASF148:
	.string	"wm8750_in_load"
.LASF153:
	.string	"wm8750_iid"
	.section	.note.GNU-stack,"",@progbits
	.ident	"GCC: (GNU) 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
