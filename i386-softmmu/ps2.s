	.file	"ps2.c"
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
	.type	ps2_raw_keycode, @object
	.size	ps2_raw_keycode, 128
ps2_raw_keycode:
	.byte	0
	.byte	118
	.byte	22
	.byte	30
	.byte	38
	.byte	37
	.byte	46
	.byte	54
	.byte	61
	.byte	62
	.byte	70
	.byte	69
	.byte	78
	.byte	85
	.byte	102
	.byte	13
	.byte	21
	.byte	29
	.byte	36
	.byte	45
	.byte	44
	.byte	53
	.byte	60
	.byte	67
	.byte	68
	.byte	77
	.byte	84
	.byte	91
	.byte	90
	.byte	20
	.byte	28
	.byte	27
	.byte	35
	.byte	43
	.byte	52
	.byte	51
	.byte	59
	.byte	66
	.byte	75
	.byte	76
	.byte	82
	.byte	14
	.byte	18
	.byte	93
	.byte	26
	.byte	34
	.byte	33
	.byte	42
	.byte	50
	.byte	49
	.byte	58
	.byte	65
	.byte	73
	.byte	74
	.byte	89
	.byte	124
	.byte	17
	.byte	41
	.byte	88
	.byte	5
	.byte	6
	.byte	4
	.byte	12
	.byte	3
	.byte	11
	.byte	2
	.byte	10
	.byte	1
	.byte	9
	.byte	119
	.byte	126
	.byte	108
	.byte	117
	.byte	125
	.byte	123
	.byte	107
	.byte	115
	.byte	116
	.byte	121
	.byte	105
	.byte	114
	.byte	122
	.byte	112
	.byte	113
	.byte	127
	.byte	96
	.byte	97
	.byte	120
	.byte	7
	.byte	15
	.byte	23
	.byte	31
	.byte	39
	.byte	47
	.byte	55
	.byte	63
	.byte	71
	.byte	79
	.byte	86
	.byte	94
	.byte	8
	.byte	16
	.byte	24
	.byte	32
	.byte	40
	.byte	48
	.byte	56
	.byte	64
	.byte	72
	.byte	80
	.byte	87
	.byte	111
	.byte	19
	.byte	25
	.byte	57
	.byte	81
	.byte	83
	.byte	92
	.byte	95
	.byte	98
	.byte	99
	.byte	100
	.byte	101
	.byte	103
	.byte	104
	.byte	106
	.byte	109
	.byte	110
	.text
	.p2align 4,,15
.globl ps2_queue
	.type	ps2_queue, @function
ps2_queue:
.LFB196:
	.file 1 "/home/remco/Projects/Argos/src/hw/ps2.c"
	.loc 1 121 0
	.loc 1 121 0
	movq	%rdi, %rcx
	.loc 1 125 0
	movl	264(%rdi), %edi
	cmpl	$255, %edi
	jg	.L1
	.loc 1 127 0
	movl	260(%rcx), %edx
	movslq	%edx,%rax
	.loc 1 128 0
	incl	%edx
	.loc 1 127 0
	movb	%sil, (%rcx,%rax)
	.loc 1 129 0
	xorl	%eax, %eax
	cmpl	$256, %edx
	cmovne	%edx, %eax
	.loc 1 131 0
	movl	$1, %esi
	movq	272(%rcx), %r11
	.loc 1 129 0
	movl	%eax, 260(%rcx)
	.loc 1 130 0
	leal	1(%rdi), %eax
	.loc 1 131 0
	movq	280(%rcx), %rdi
	.loc 1 130 0
	movl	%eax, 264(%rcx)
	.loc 1 131 0
	jmp	*%r11
	.p2align 4,,7
.L1:
	rep ; ret
.LFE196:
	.size	ps2_queue, .-ps2_queue
	.p2align 4,,15
	.type	ps2_put_keycode, @function
ps2_put_keycode:
.LFB197:
	.loc 1 135 0
	movq	%rbx, -16(%rsp)
.LCFI0:
	movq	%rbp, -8(%rsp)
.LCFI1:
	subq	$24, %rsp
.LCFI2:
	.loc 1 137 0
	movl	292(%rdi), %eax
	.loc 1 135 0
	movq	%rdi, %rbp
	movl	%esi, %ebx
	.loc 1 137 0
	testl	%eax, %eax
	sete	%dl
	xorl	%eax, %eax
	cmpl	$223, %esi
	setle	%al
	testl	%edx, %eax
	je	.L7
	.loc 1 139 0
	testb	%sil, %sil
	js	.L9
	.loc 1 141 0
	movq	%rbx, %rax
	andl	$127, %eax
	movzbl	ps2_raw_keycode(%rax), %ebx
.L7:
	.loc 1 143 0
	movl	%ebx, %esi
	movq	%rbp, %rdi
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	addq	$24, %rsp
	jmp	ps2_queue
	.p2align 4,,7
.L9:
	.loc 1 140 0
	movl	$240, %esi
	call	ps2_queue
	.loc 1 141 0
	movq	%rbx, %rax
	andl	$127, %eax
	movzbl	ps2_raw_keycode(%rax), %ebx
	jmp	.L7
.LFE197:
	.size	ps2_put_keycode, .-ps2_put_keycode
	.p2align 4,,15
.globl ps2_read_data
	.type	ps2_read_data, @function
ps2_read_data:
.LFB198:
	.loc 1 147 0
	movq	%rbx, -16(%rsp)
.LCFI3:
	movq	%rbp, -8(%rsp)
.LCFI4:
	subq	$24, %rsp
.LCFI5:
	.loc 1 153 0
	movl	264(%rdi), %ecx
	.loc 1 147 0
	movq	%rdi, %rbx
	.loc 1 153 0
	testl	%ecx, %ecx
	jne	.L11
	.loc 1 159 0
	movl	256(%rdi), %eax
	movl	$255, %edx
	.loc 1 172 0
	movq	8(%rsp), %rbx
	.loc 1 159 0
	decl	%eax
	cmovs	%edx, %eax
	.loc 1 160 0
	cltq
	movzbl	(%rdi,%rax), %ebp
	.loc 1 172 0
	movl	%ebp, %eax
	movq	16(%rsp), %rbp
	addq	$24, %rsp
	ret
	.p2align 4,,7
.L11:
	.loc 1 162 0
	movl	256(%rdi), %edx
	movslq	%edx,%rax
	.loc 1 163 0
	incl	%edx
	.loc 1 162 0
	movzbl	(%rdi,%rax), %ebp
	.loc 1 164 0
	xorl	%eax, %eax
	cmpl	$256, %edx
	cmovne	%edx, %eax
	.loc 1 167 0
	xorl	%esi, %esi
	.loc 1 164 0
	movl	%eax, 256(%rdi)
	.loc 1 165 0
	leal	-1(%rcx), %eax
	movl	%eax, 264(%rdi)
	.loc 1 167 0
	movq	280(%rdi), %rdi
	call	*272(%rbx)
	.loc 1 169 0
	xorl	%esi, %esi
	cmpl	$0, 264(%rbx)
	movq	280(%rbx), %rdi
	setne	%sil
	call	*272(%rbx)
	.loc 1 172 0
	movl	%ebp, %eax
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	addq	$24, %rsp
	ret
.LFE198:
	.size	ps2_read_data, .-ps2_read_data
	.p2align 4,,15
	.type	ps2_reset_keyboard, @function
ps2_reset_keyboard:
.LFB199:
	.loc 1 175 0
	.loc 1 176 0
	movl	$1, 288(%rdi)
	ret
.LFE199:
	.size	ps2_reset_keyboard, .-ps2_reset_keyboard
	.p2align 4,,15
.globl ps2_write_keyboard
	.type	ps2_write_keyboard, @function
ps2_write_keyboard:
.LFB200:
	.loc 1 180 0
	pushq	%rbx
.LCFI6:
	.loc 1 183 0
	movl	268(%rdi), %eax
	.loc 1 180 0
	movq	%rdi, %rbx
	.loc 1 183 0
	cmpl	$237, %eax
	je	.L37
	cmpl	$243, %eax
	je	.L37
	.loc 1 186 0
	cmpl	$242, %esi
	je	.L24
	.p2align 4,,7
	jg	.L33
	cmpl	$5, %esi
	.p2align 4,,7
	je	.L23
	.p2align 4,,9
	jle	.L32
	cmpl	$237, %esi
	.p2align 4,,7
	je	.L28
	cmpl	$238, %esi
	.p2align 4,,7
	je	.L25
	.p2align 4,,7
.L32:
	.loc 1 226 0
	movl	$250, %esi
.L40:
	movq	%rbx, %rdi
	.loc 1 239 0
	popq	%rbx
	.loc 1 226 0
	jmp	ps2_queue
	.p2align 4,,7
.L33:
	.loc 1 186 0
	cmpl	$245, %esi
	je	.L29
	jg	.L35
	cmpl	$243, %esi
	.p2align 4,,7
	je	.L28
	cmpl	$244, %esi
	.p2align 4,,7
	jne	.L32
.L39:
	.loc 1 226 0
	movl	$250, %esi
	.loc 1 217 0
	movl	$1, 288(%rbx)
	jmp	.L40
	.p2align 4,,7
.L37:
	.loc 1 235 0
	movq	%rbx, %rdi
	movl	$250, %esi
	call	ps2_queue
	.loc 1 236 0
	movl	$-1, 268(%rbx)
	.loc 1 239 0
	popq	%rbx
	ret
.L23:
	.loc 1 191 0
	movl	$254, %esi
.L38:
	.loc 1 226 0
	movq	%rbx, %rdi
	.loc 1 239 0
	popq	%rbx
	.loc 1 226 0
	jmp	ps2_queue
.L29:
	.loc 1 211 0
	call	ps2_reset_keyboard
	.loc 1 226 0
	movl	$250, %esi
	.loc 1 212 0
	movl	$0, 288(%rbx)
	jmp	.L40
	.p2align 4,,7
.L24:
	.loc 1 194 0
	movl	$250, %esi
	call	ps2_queue
	.loc 1 195 0
	movq	%rbx, %rdi
	movl	$171, %esi
	call	ps2_queue
	.loc 1 226 0
	movq	%rbx, %rdi
	.loc 1 196 0
	movl	$131, %esi
	.loc 1 239 0
	popq	%rbx
	.loc 1 226 0
	jmp	ps2_queue
.L35:
	.loc 1 186 0
	cmpl	$246, %esi
	je	.L30
	cmpl	$255, %esi
	jne	.L32
	.loc 1 221 0
	.p2align 4,,7
	call	ps2_reset_keyboard
	.loc 1 222 0
	movl	$250, %esi
	movq	%rbx, %rdi
	call	ps2_queue
	.loc 1 223 0
	movl	$170, %esi
	jmp	.L38
.L25:
	.loc 1 199 0
	movl	$238, %esi
	jmp	.L38
.L28:
	.loc 1 207 0
	movl	%esi, 268(%rbx)
	.loc 1 226 0
	movl	$250, %esi
	jmp	.L40
.L30:
	.loc 1 216 0
	call	ps2_reset_keyboard
	jmp	.L39
.LFE200:
	.size	ps2_write_keyboard, .-ps2_write_keyboard
	.p2align 4,,15
.globl ps2_keyboard_set_translation
	.type	ps2_keyboard_set_translation, @function
ps2_keyboard_set_translation:
.LFB201:
	.loc 1 246 0
	.loc 1 248 0
	movl	%esi, 292(%rdi)
	ret
.LFE201:
	.size	ps2_keyboard_set_translation, .-ps2_keyboard_set_translation
	.p2align 4,,15
	.type	ps2_mouse_send_packet, @function
ps2_mouse_send_packet:
.LFB202:
	.loc 1 252 0
	movq	%rbx, -32(%rsp)
.LCFI7:
	movq	%rbp, -24(%rsp)
.LCFI8:
	movq	%rdi, %rbx
	movq	%r12, -16(%rsp)
.LCFI9:
	movq	%r13, -8(%rsp)
.LCFI10:
	subq	$40, %rsp
.LCFI11:
	.loc 1 256 0
	movl	296(%rdi), %ebp
	.loc 1 257 0
	movl	300(%rdi), %r12d
	.loc 1 258 0
	movl	304(%rdi), %r13d
	.loc 1 260 0
	cmpl	$127, %ebp
	jle	.L43
	.loc 1 264 0
	cmpl	$127, %r12d
	.loc 1 261 0
	movl	$127, %ebp
	.loc 1 264 0
	jle	.L46
.L63:
	.loc 1 265 0
	movl	$127, %r12d
.L47:
	.loc 1 268 0
	movzbl	308(%rbx), %eax
	movl	%ebp, %esi
	.loc 1 269 0
	movq	%rbx, %rdi
	.loc 1 268 0
	sarl	$31, %esi
	andl	$16, %esi
	addl	$8, %esi
	andl	$7, %eax
	orl	%eax, %esi
	movl	%esi, %eax
	orl	$32, %eax
	cmpl	$-1, %r12d
	cmovle	%eax, %esi
	.loc 1 269 0
	call	ps2_queue
	.loc 1 270 0
	movzbl	%bpl,%esi
	movq	%rbx, %rdi
	call	ps2_queue
	.loc 1 271 0
	movzbl	%r12b,%esi
	movq	%rbx, %rdi
	call	ps2_queue
	.loc 1 273 0
	movzbl	292(%rbx), %eax
	cmpl	$3, %eax
	je	.L54
	cmpl	$4, %eax
	je	.L58
.L52:
	.loc 1 294 0
	subl	%ebp, 296(%rbx)
	.loc 1 295 0
	subl	%r12d, 300(%rbx)
	.loc 1 296 0
	movq	16(%rsp), %rbp
	movq	24(%rsp), %r12
	subl	%r13d, 304(%rbx)
	movq	8(%rsp), %rbx
	movq	32(%rsp), %r13
	addq	$40, %rsp
	ret
	.p2align 4,,7
.L43:
	.loc 1 263 0
	cmpl	$-128, %ebp
	movl	$-127, %eax
	cmovle	%eax, %ebp
	.loc 1 264 0
	cmpl	$127, %r12d
	jg	.L63
.L46:
	.loc 1 267 0
	cmpl	$-128, %r12d
	movl	$-127, %eax
	cmovle	%eax, %r12d
	jmp	.L47
	.p2align 4,,7
.L54:
	.loc 1 277 0
	cmpl	$127, %r13d
	jle	.L55
	.loc 1 278 0
	movl	$127, %r13d
.L56:
	.loc 1 281 0
	movzbl	%r13b,%esi
.L62:
	.loc 1 289 0
	movq	%rbx, %rdi
	call	ps2_queue
	jmp	.L52
	.p2align 4,,7
.L58:
	.loc 1 284 0
	cmpl	$7, %r13d
	jg	.L64
	.loc 1 287 0
	cmpl	$-8, %r13d
	movl	$-7, %eax
	cmovle	%eax, %r13d
.L60:
	.loc 1 288 0
	movzbl	308(%rbx), %eax
	movl	%r13d, %esi
	andl	$15, %esi
	andl	$24, %eax
	addl	%eax, %eax
	orl	%eax, %esi
	jmp	.L62
	.p2align 4,,7
.L55:
	.loc 1 280 0
	cmpl	$-128, %r13d
	movl	$-127, %eax
	cmovle	%eax, %r13d
	jmp	.L56
	.p2align 4,,7
.L64:
	.loc 1 285 0
	movl	$7, %r13d
	jmp	.L60
.LFE202:
	.size	ps2_mouse_send_packet, .-ps2_mouse_send_packet
	.p2align 4,,15
	.type	ps2_mouse_event, @function
ps2_mouse_event:
.LFB203:
	.loc 1 301 0
	pushq	%rbx
.LCFI12:
	.loc 1 301 0
	movq	%rdi, %rbx
	.loc 1 305 0
	movzbl	288(%rdi), %edi
	testb	$32, %dil
	je	.L65
	.loc 1 310 0
	movl	304(%rbx), %eax
	.loc 1 308 0
	addl	%esi, 296(%rbx)
	.loc 1 309 0
	subl	%edx, 300(%rbx)
	.loc 1 310 0
	addl	%ecx, %eax
	.loc 1 312 0
	cmpq	$0, 296(%rbx)
	.loc 1 310 0
	movl	%eax, 304(%rbx)
	.loc 1 312 0
	je	.L77
.L67:
	.loc 1 317 0
	andl	$64, %edi
	.loc 1 315 0
	movb	%r8b, 308(%rbx)
	.loc 1 317 0
	jne	.L65
	cmpl	$239, 264(%rbx)
	jg	.L65
	.p2align 4,,7
.L75:
	.loc 1 322 0
	movq	%rbx, %rdi
	call	ps2_mouse_send_packet
	.loc 1 323 0
	cmpq	$0, 296(%rbx)
	jne	.L75
	movl	304(%rbx), %edx
	testl	%edx, %edx
	jne	.L75
	.p2align 4,,7
.L65:
	.loc 1 327 0
	popq	%rbx
	ret
	.p2align 4,,7
.L77:
	.loc 1 312 0
	testl	%eax, %eax
	.p2align 4,,2
	jne	.L67
	movzbl	308(%rbx), %eax
	cmpl	%r8d, %eax
	.p2align 4,,2
	jne	.L67
	.loc 1 327 0
	popq	%rbx
	.p2align 4,,1
	ret
.LFE203:
	.size	ps2_mouse_event, .-ps2_mouse_event
	.p2align 4,,15
.globl ps2_mouse_fake_event
	.type	ps2_mouse_fake_event, @function
ps2_mouse_fake_event:
.LFB204:
	.loc 1 330 0
	.loc 1 331 0
	xorl	%r8d, %r8d
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	$1, %esi
	jmp	ps2_mouse_event
.LFE204:
	.size	ps2_mouse_fake_event, .-ps2_mouse_fake_event
	.p2align 4,,15
.globl ps2_write_mouse
	.type	ps2_write_mouse, @function
ps2_write_mouse:
.LFB205:
	.loc 1 335 0
	pushq	%rbx
.LCFI13:
	.loc 1 340 0
	movl	268(%rdi), %eax
	.loc 1 335 0
	movq	%rdi, %rbx
	.loc 1 340 0
	cmpl	$232, %eax
	je	.L119
	cmpl	$243, %eax
	je	.L104
	.loc 1 344 0
	cmpb	$0, 291(%rdi)
	je	.L83
	.loc 1 345 0
	cmpl	$236, %esi
	.p2align 4,,2
	je	.L124
	.loc 1 349 0
	cmpl	$255, %esi
	.p2align 4,,2
	je	.L83
.L121:
	.loc 1 415 0
	movq	%rbx, %rdi
	.loc 1 458 0
	popq	%rbx
	.loc 1 415 0
	jmp	ps2_queue
	.p2align 4,,7
.L83:
	.loc 1 354 0
	leal	-230(%rsi), %eax
	cmpl	$25, %eax
	ja	.L79
	mov	%eax, %eax
	jmp	*.L103(,%rax,8)
	.section	.rodata
	.align 8
	.align 4
.L103:
	.quad	.L88
	.quad	.L89
	.quad	.L95
	.quad	.L96
	.quad	.L90
	.quad	.L97
	.quad	.L79
	.quad	.L79
	.quad	.L91
	.quad	.L79
	.quad	.L92
	.quad	.L79
	.quad	.L93
	.quad	.L95
	.quad	.L98
	.quad	.L99
	.quad	.L100
	.quad	.L79
	.quad	.L79
	.quad	.L79
	.quad	.L79
	.quad	.L79
	.quad	.L79
	.quad	.L79
	.quad	.L79
	.quad	.L101
	.text
	.p2align 4,,7
.L104:
	.loc 1 424 0
	movzbl	293(%rdi), %eax
	.loc 1 422 0
	movb	%sil, 290(%rdi)
	.loc 1 424 0
	cmpl	$2, %eax
	je	.L114
	jg	.L118
	decl	%eax
	je	.L109
.L107:
	.loc 1 427 0
	cmpl	$200, %esi
	.p2align 4,,8
	je	.L125
	.p2align 4,,7
.L120:
	.loc 1 454 0
	movl	$250, %esi
	movq	%rbx, %rdi
	call	ps2_queue
	.loc 1 455 0
	movl	$-1, 268(%rbx)
.L79:
	.loc 1 458 0
	popq	%rbx
	ret
.L114:
	.loc 1 439 0
	cmpl	$80, %esi
	je	.L126
.L117:
	.loc 1 446 0
	movb	$0, 293(%rbx)
	jmp	.L120
	.p2align 4,,7
.L119:
	.loc 1 453 0
	movb	%sil, 289(%rdi)
	jmp	.L120
.L118:
	.loc 1 424 0
	cmpl	$3, %eax
	jne	.L107
	.loc 1 444 0
	cmpl	$80, %esi
	.p2align 4,,2
	jne	.L117
	.loc 1 445 0
	movb	$4, 292(%rdi)
	.p2align 4,,2
	jmp	.L117
	.p2align 4,,7
.L124:
	.loc 1 347 0
	movb	$-6, %sil
	.loc 1 346 0
	movb	$0, 291(%rdi)
	jmp	.L121
.L101:
	.loc 1 413 0
	movl	$250, %esi
	.loc 1 409 0
	movb	$100, 290(%rbx)
	.loc 1 410 0
	movb	$2, 289(%rbx)
	.loc 1 411 0
	movb	$0, 288(%rbx)
	.loc 1 412 0
	movb	$0, 292(%rbx)
	.loc 1 413 0
	movq	%rbx, %rdi
	call	ps2_queue
	.loc 1 414 0
	movl	$170, %esi
.L123:
	movq	%rbx, %rdi
	call	ps2_queue
	.loc 1 415 0
	movzbl	292(%rbx), %esi
	jmp	.L121
.L100:
	.loc 1 403 0
	movb	$100, 290(%rbx)
	.loc 1 404 0
	movb	$2, 289(%rbx)
	.loc 1 361 0
	movl	$250, %esi
	.loc 1 405 0
	movb	$0, 288(%rbx)
	.p2align 4,,7
.L127:
	.loc 1 415 0
	movq	%rbx, %rdi
	.loc 1 458 0
	popq	%rbx
	.loc 1 415 0
	jmp	ps2_queue
.L99:
	.loc 1 399 0
	andb	$-33, 288(%rbx)
	.loc 1 361 0
	movl	$250, %esi
	jmp	.L127
.L98:
	.loc 1 395 0
	orb	$32, 288(%rbx)
	.loc 1 361 0
	movl	$250, %esi
	jmp	.L127
.L95:
	.loc 1 381 0
	movl	%esi, 268(%rbx)
	.loc 1 361 0
	movl	$250, %esi
	jmp	.L127
.L93:
	.loc 1 376 0
	movl	$250, %esi
	jmp	.L123
.L92:
	.loc 1 372 0
	orb	$64, 288(%rbx)
	.loc 1 361 0
	movl	$250, %esi
	jmp	.L127
.L91:
	movl	$250, %esi
	.loc 1 368 0
	movb	$1, 291(%rbx)
	jmp	.L127
.L97:
	.loc 1 391 0
	movq	%rbx, %rdi
	movl	$250, %esi
	call	ps2_queue
	.loc 1 392 0
	movq	%rbx, %rdi
	.loc 1 458 0
	popq	%rbx
	.loc 1 392 0
	jmp	ps2_mouse_send_packet
.L90:
	.loc 1 364 0
	andb	$-65, 288(%rbx)
	.loc 1 361 0
	movl	$250, %esi
	jmp	.L127
.L96:
	.loc 1 385 0
	movl	$250, %esi
	movq	%rbx, %rdi
	call	ps2_queue
	.loc 1 386 0
	movzbl	288(%rbx), %esi
	movq	%rbx, %rdi
	call	ps2_queue
	.loc 1 387 0
	movzbl	289(%rbx), %esi
	movq	%rbx, %rdi
	call	ps2_queue
	.loc 1 388 0
	movzbl	290(%rbx), %esi
	jmp	.L121
.L89:
	.loc 1 360 0
	orb	$16, 288(%rbx)
	.loc 1 361 0
	movl	$250, %esi
	jmp	.L127
.L88:
	.loc 1 356 0
	andb	$-17, 288(%rbx)
	.loc 1 361 0
	movl	$250, %esi
	jmp	.L127
.L125:
	.loc 1 428 0
	movb	$1, 293(%rbx)
	jmp	.L120
.L109:
	.loc 1 431 0
	cmpl	$100, %esi
	je	.L128
	.loc 1 434 0
	cmpl	$200, %esi
	sete	%al
	leal	(%rax,%rax,2), %eax
	movb	%al, 293(%rdi)
	jmp	.L120
.L126:
	.loc 1 440 0
	movb	$3, 292(%rdi)
	jmp	.L117
.L128:
	.loc 1 432 0
	movb	$2, 293(%rdi)
	jmp	.L120
.LFE205:
	.size	ps2_write_mouse, .-ps2_write_mouse
	.p2align 4,,15
	.type	ps2_reset, @function
ps2_reset:
.LFB206:
	.loc 1 461 0
	.loc 1 464 0
	movl	$-1, 268(%rdi)
	.loc 1 466 0
	movl	$0, 256(%rdi)
	.loc 1 467 0
	movl	$0, 260(%rdi)
	.loc 1 468 0
	movl	$0, 264(%rdi)
	ret
.LFE206:
	.size	ps2_reset, .-ps2_reset
	.p2align 4,,15
	.type	ps2_common_save, @function
ps2_common_save:
.LFB207:
	.loc 1 472 0
	pushq	%r12
.LCFI14:
	movq	%rdi, %r12
	pushq	%rbx
.LCFI15:
	movq	%rsi, %rbx
	subq	$8, %rsp
.LCFI16:
	.loc 1 473 0
	movl	268(%rsi), %esi
	call	qemu_put_be32
	.loc 1 474 0
	movl	256(%rbx), %esi
	movq	%r12, %rdi
	call	qemu_put_be32
	.loc 1 475 0
	movl	260(%rbx), %esi
	movq	%r12, %rdi
	call	qemu_put_be32
	.loc 1 476 0
	movl	264(%rbx), %esi
	movq	%r12, %rdi
	call	qemu_put_be32
	.loc 1 477 0
	addq	$8, %rsp
	movq	%rbx, %rsi
	movq	%r12, %rdi
	popq	%rbx
	popq	%r12
	movl	$256, %edx
	jmp	qemu_put_buffer
.LFE207:
	.size	ps2_common_save, .-ps2_common_save
	.p2align 4,,15
	.type	ps2_common_load, @function
ps2_common_load:
.LFB208:
	.loc 1 481 0
	pushq	%r12
.LCFI17:
	movq	%rdi, %r12
	pushq	%rbx
.LCFI18:
	movq	%rsi, %rbx
	subq	$8, %rsp
.LCFI19:
	.loc 1 482 0
	call	qemu_get_be32
	.loc 1 483 0
	movq	%r12, %rdi
	.loc 1 482 0
	movl	%eax, 268(%rbx)
	.loc 1 483 0
	call	qemu_get_be32
	.loc 1 484 0
	movq	%r12, %rdi
	.loc 1 483 0
	movl	%eax, 256(%rbx)
	.loc 1 484 0
	call	qemu_get_be32
	.loc 1 485 0
	movq	%r12, %rdi
	.loc 1 484 0
	movl	%eax, 260(%rbx)
	.loc 1 485 0
	call	qemu_get_be32
	.loc 1 486 0
	movq	%rbx, %rsi
	.loc 1 485 0
	movl	%eax, 264(%rbx)
	.loc 1 486 0
	addq	$8, %rsp
	popq	%rbx
	movq	%r12, %rdi
	movl	$256, %edx
	popq	%r12
	jmp	qemu_get_buffer
.LFE208:
	.size	ps2_common_load, .-ps2_common_load
	.p2align 4,,15
	.type	ps2_kbd_save, @function
ps2_kbd_save:
.LFB209:
	.loc 1 490 0
	movq	%rbx, -16(%rsp)
.LCFI20:
	movq	%r12, -8(%rsp)
.LCFI21:
	movq	%rsi, %rbx
	subq	$24, %rsp
.LCFI22:
	.loc 1 490 0
	movq	%rdi, %r12
	.loc 1 493 0
	call	ps2_common_save
	.loc 1 494 0
	movl	288(%rbx), %esi
	movq	%r12, %rdi
	call	qemu_put_be32
	.loc 1 495 0
	movl	292(%rbx), %esi
	movq	%r12, %rdi
	movq	8(%rsp), %rbx
	movq	16(%rsp), %r12
	addq	$24, %rsp
	jmp	qemu_put_be32
.LFE209:
	.size	ps2_kbd_save, .-ps2_kbd_save
	.p2align 4,,15
	.type	ps2_mouse_save, @function
ps2_mouse_save:
.LFB210:
	.loc 1 499 0
	pushq	%r12
.LCFI23:
	movq	%rdi, %r12
	pushq	%rbx
.LCFI24:
	movq	%rsi, %rbx
	subq	$8, %rsp
.LCFI25:
	.loc 1 502 0
	call	ps2_common_save
.LBB2:
.LBB3:
	.file 2 "/home/remco/Projects/Argos/src/hw/hw.h"
	.loc 2 42 0
	movzbl	288(%rbx), %esi
	movq	%r12, %rdi
	call	qemu_put_byte
.LBE3:
.LBE2:
.LBB4:
.LBB5:
	movzbl	289(%rbx), %esi
	movq	%r12, %rdi
	call	qemu_put_byte
.LBE5:
.LBE4:
.LBB6:
.LBB7:
	movzbl	290(%rbx), %esi
	movq	%r12, %rdi
	call	qemu_put_byte
.LBE7:
.LBE6:
.LBB8:
.LBB9:
	movzbl	291(%rbx), %esi
	movq	%r12, %rdi
	call	qemu_put_byte
.LBE9:
.LBE8:
.LBB10:
.LBB11:
	movzbl	292(%rbx), %esi
	movq	%r12, %rdi
	call	qemu_put_byte
.LBE11:
.LBE10:
.LBB12:
.LBB13:
	movzbl	293(%rbx), %esi
	movq	%r12, %rdi
	call	qemu_put_byte
.LBE13:
.LBE12:
	.loc 1 509 0
	movl	296(%rbx), %esi
	movq	%r12, %rdi
	call	qemu_put_be32
	.loc 1 510 0
	movl	300(%rbx), %esi
	movq	%r12, %rdi
	call	qemu_put_be32
	.loc 1 511 0
	movl	304(%rbx), %esi
	movq	%r12, %rdi
	call	qemu_put_be32
.LBB14:
.LBB15:
	.loc 2 42 0
	movzbl	308(%rbx), %esi
.LBE15:
.LBE14:
	addq	$8, %rsp
.LBB16:
.LBB17:
	movq	%r12, %rdi
.LBE17:
.LBE16:
	popq	%rbx
	popq	%r12
.LBB18:
.LBB19:
	jmp	qemu_put_byte
.LBE19:
.LBE18:
.LFE210:
	.size	ps2_mouse_save, .-ps2_mouse_save
	.p2align 4,,15
	.type	ps2_kbd_load, @function
ps2_kbd_load:
.LFB211:
	.loc 1 516 0
	movq	%rbx, -16(%rsp)
.LCFI26:
	movq	%rbp, -8(%rsp)
.LCFI27:
	subq	$24, %rsp
.LCFI28:
	.loc 1 519 0
	cmpl	$2, %edx
	.loc 1 516 0
	movq	%rdi, %rbx
	movq	%rsi, %rbp
	.loc 1 520 0
	movl	$-22, %eax
	.loc 1 519 0
	jne	.L141
	.loc 1 522 0
	call	ps2_common_load
	.loc 1 523 0
	movq	%rbx, %rdi
	call	qemu_get_be32
	.loc 1 524 0
	movq	%rbx, %rdi
	.loc 1 523 0
	movl	%eax, 288(%rbp)
	.loc 1 524 0
	call	qemu_get_be32
	movl	%eax, 292(%rbp)
	.loc 1 525 0
	xorl	%eax, %eax
.L141:
	.loc 1 526 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	addq	$24, %rsp
	ret
.LFE211:
	.size	ps2_kbd_load, .-ps2_kbd_load
	.p2align 4,,15
	.type	ps2_mouse_load, @function
ps2_mouse_load:
.LFB212:
	.loc 1 529 0
	pushq	%rbp
.LCFI29:
	.loc 1 533 0
	movl	$-22, %eax
	.loc 1 529 0
	movq	%rsi, %rbp
	pushq	%rbx
.LCFI30:
	movq	%rdi, %rbx
	subq	$8, %rsp
.LCFI31:
	.loc 1 532 0
	cmpl	$2, %edx
	jne	.L143
	.loc 1 535 0
	call	ps2_common_load
.LBB20:
.LBB21:
	.loc 2 62 0
	movq	%rbx, %rdi
	call	qemu_get_byte
.LBE21:
.LBE20:
.LBB22:
.LBB23:
	movq	%rbx, %rdi
.LBE23:
.LBE22:
.LBB24:
.LBB25:
	movb	%al, 288(%rbp)
.LBE25:
.LBE24:
.LBB26:
.LBB27:
	call	qemu_get_byte
.LBE27:
.LBE26:
.LBB28:
.LBB29:
	movq	%rbx, %rdi
.LBE29:
.LBE28:
.LBB30:
.LBB31:
	movb	%al, 289(%rbp)
.LBE31:
.LBE30:
.LBB32:
.LBB33:
	call	qemu_get_byte
.LBE33:
.LBE32:
.LBB34:
.LBB35:
	movq	%rbx, %rdi
.LBE35:
.LBE34:
.LBB36:
.LBB37:
	movb	%al, 290(%rbp)
.LBE37:
.LBE36:
.LBB38:
.LBB39:
	call	qemu_get_byte
.LBE39:
.LBE38:
.LBB40:
.LBB41:
	movq	%rbx, %rdi
.LBE41:
.LBE40:
.LBB42:
.LBB43:
	movb	%al, 291(%rbp)
.LBE43:
.LBE42:
.LBB44:
.LBB45:
	call	qemu_get_byte
.LBE45:
.LBE44:
.LBB46:
.LBB47:
	movq	%rbx, %rdi
.LBE47:
.LBE46:
.LBB48:
.LBB49:
	movb	%al, 292(%rbp)
.LBE49:
.LBE48:
.LBB50:
.LBB51:
	call	qemu_get_byte
.LBE51:
.LBE50:
	.loc 1 542 0
	movq	%rbx, %rdi
.LBB52:
.LBB53:
	.loc 2 62 0
	movb	%al, 293(%rbp)
.LBE53:
.LBE52:
	.loc 1 542 0
	call	qemu_get_be32
	.loc 1 543 0
	movq	%rbx, %rdi
	.loc 1 542 0
	movl	%eax, 296(%rbp)
	.loc 1 543 0
	call	qemu_get_be32
	.loc 1 544 0
	movq	%rbx, %rdi
	.loc 1 543 0
	movl	%eax, 300(%rbp)
	.loc 1 544 0
	call	qemu_get_be32
.LBB54:
.LBB55:
	.loc 2 62 0
	movq	%rbx, %rdi
.LBE55:
.LBE54:
	.loc 1 544 0
	movl	%eax, 304(%rbp)
.LBB56:
.LBB57:
	.loc 2 62 0
	call	qemu_get_byte
	movb	%al, 308(%rbp)
.LBE57:
.LBE56:
	.loc 1 546 0
	xorl	%eax, %eax
.L143:
	.loc 1 547 0
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
.LFE212:
	.size	ps2_mouse_load, .-ps2_mouse_load
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"ps2kbd"
	.text
	.p2align 4,,15
.globl ps2_kbd_init
	.type	ps2_kbd_init, @function
ps2_kbd_init:
.LFB213:
	.loc 1 550 0
	movq	%rbx, -24(%rsp)
.LCFI32:
	movq	%r12, -16(%rsp)
.LCFI33:
	movq	%rdi, %rbx
	movq	%r13, -8(%rsp)
.LCFI34:
	.loc 1 551 0
	movl	$296, %edi
	.loc 1 550 0
	subq	$24, %rsp
.LCFI35:
	.loc 1 550 0
	movq	%rsi, %r13
	.loc 1 551 0
	call	qemu_mallocz
	movq	%rax, %r12
	.loc 1 553 0
	movq	%rbx, 272(%rax)
	.loc 1 554 0
	movq	%r13, 280(%rax)
	.loc 1 555 0
	movq	%rax, %rdi
	call	ps2_reset
	.loc 1 556 0
	movq	%r12, %r9
	movl	$ps2_kbd_load, %r8d
	movl	$ps2_kbd_save, %ecx
	movl	$2, %edx
	xorl	%esi, %esi
	movl	$.LC0, %edi
	call	register_savevm
	.loc 1 557 0
	movq	%r12, %rsi
	movl	$ps2_put_keycode, %edi
	call	qemu_add_kbd_event_handler
	.loc 1 558 0
	movq	%r12, %rsi
	movl	$ps2_reset, %edi
	call	qemu_register_reset
	.loc 1 560 0
	movq	%r12, %rax
	movq	(%rsp), %rbx
	movq	8(%rsp), %r12
	movq	16(%rsp), %r13
	addq	$24, %rsp
	ret
.LFE213:
	.size	ps2_kbd_init, .-ps2_kbd_init
	.section	.rodata.str1.1
.LC1:
	.string	"ps2mouse"
.LC2:
	.string	"QEMU PS/2 Mouse"
	.text
	.p2align 4,,15
.globl ps2_mouse_init
	.type	ps2_mouse_init, @function
ps2_mouse_init:
.LFB214:
	.loc 1 563 0
	movq	%rbx, -24(%rsp)
.LCFI36:
	movq	%r12, -16(%rsp)
.LCFI37:
	movq	%rdi, %rbx
	movq	%r13, -8(%rsp)
.LCFI38:
	.loc 1 564 0
	movl	$312, %edi
	.loc 1 563 0
	subq	$24, %rsp
.LCFI39:
	.loc 1 563 0
	movq	%rsi, %r13
	.loc 1 564 0
	call	qemu_mallocz
	movq	%rax, %r12
	.loc 1 566 0
	movq	%rbx, 272(%rax)
	.loc 1 567 0
	movq	%r13, 280(%rax)
	.loc 1 568 0
	movq	%rax, %rdi
	call	ps2_reset
	.loc 1 569 0
	movq	%r12, %r9
	movl	$ps2_mouse_load, %r8d
	movl	$ps2_mouse_save, %ecx
	movl	$2, %edx
	xorl	%esi, %esi
	movl	$.LC1, %edi
	call	register_savevm
	.loc 1 570 0
	movq	%r12, %rsi
	movl	$.LC2, %ecx
	xorl	%edx, %edx
	movl	$ps2_mouse_event, %edi
	call	qemu_add_mouse_event_handler
	.loc 1 571 0
	movq	%r12, %rsi
	movl	$ps2_reset, %edi
	call	qemu_register_reset
	.loc 1 573 0
	movq	%r12, %rax
	movq	(%rsp), %rbx
	movq	8(%rsp), %r12
	movq	16(%rsp), %r13
	addq	$24, %rsp
	ret
.LFE214:
	.size	ps2_mouse_init, .-ps2_mouse_init
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
	.quad	.LFB196
	.quad	.LFE196-.LFB196
	.align 8
.LEFDE0:
.LSFDE2:
	.long	.LEFDE2-.LASFDE2
.LASFDE2:
	.long	.Lframe0
	.quad	.LFB197
	.quad	.LFE197-.LFB197
	.byte	0x4
	.long	.LCFI2-.LFB197
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
	.quad	.LFB198
	.quad	.LFE198-.LFB198
	.byte	0x4
	.long	.LCFI5-.LFB198
	.byte	0xe
	.uleb128 0x20
	.byte	0x86
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.quad	.LFB199
	.quad	.LFE199-.LFB199
	.align 8
.LEFDE6:
.LSFDE8:
	.long	.LEFDE8-.LASFDE8
.LASFDE8:
	.long	.Lframe0
	.quad	.LFB200
	.quad	.LFE200-.LFB200
	.byte	0x4
	.long	.LCFI6-.LFB200
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE8:
.LSFDE10:
	.long	.LEFDE10-.LASFDE10
.LASFDE10:
	.long	.Lframe0
	.quad	.LFB201
	.quad	.LFE201-.LFB201
	.align 8
.LEFDE10:
.LSFDE12:
	.long	.LEFDE12-.LASFDE12
.LASFDE12:
	.long	.Lframe0
	.quad	.LFB202
	.quad	.LFE202-.LFB202
	.byte	0x4
	.long	.LCFI8-.LFB202
	.byte	0x86
	.uleb128 0x4
	.byte	0x83
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI11-.LCFI8
	.byte	0xe
	.uleb128 0x30
	.byte	0x8d
	.uleb128 0x2
	.byte	0x8c
	.uleb128 0x3
	.align 8
.LEFDE12:
.LSFDE14:
	.long	.LEFDE14-.LASFDE14
.LASFDE14:
	.long	.Lframe0
	.quad	.LFB203
	.quad	.LFE203-.LFB203
	.byte	0x4
	.long	.LCFI12-.LFB203
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
	.quad	.LFB204
	.quad	.LFE204-.LFB204
	.align 8
.LEFDE16:
.LSFDE18:
	.long	.LEFDE18-.LASFDE18
.LASFDE18:
	.long	.Lframe0
	.quad	.LFB205
	.quad	.LFE205-.LFB205
	.byte	0x4
	.long	.LCFI13-.LFB205
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
	.quad	.LFB206
	.quad	.LFE206-.LFB206
	.align 8
.LEFDE20:
.LSFDE22:
	.long	.LEFDE22-.LASFDE22
.LASFDE22:
	.long	.Lframe0
	.quad	.LFB207
	.quad	.LFE207-.LFB207
	.byte	0x4
	.long	.LCFI14-.LFB207
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
	.quad	.LFB208
	.quad	.LFE208-.LFB208
	.byte	0x4
	.long	.LCFI17-.LFB208
	.byte	0xe
	.uleb128 0x10
	.byte	0x8c
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
	.quad	.LFB209
	.quad	.LFE209-.LFB209
	.byte	0x4
	.long	.LCFI21-.LFB209
	.byte	0x8c
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI22-.LCFI21
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
	.long	.LCFI23-.LFB210
	.byte	0xe
	.uleb128 0x10
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI24-.LCFI23
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI25-.LCFI24
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
	.long	.LCFI28-.LFB211
	.byte	0xe
	.uleb128 0x20
	.byte	0x86
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE30:
.LSFDE32:
	.long	.LEFDE32-.LASFDE32
.LASFDE32:
	.long	.Lframe0
	.quad	.LFB212
	.quad	.LFE212-.LFB212
	.byte	0x4
	.long	.LCFI29-.LFB212
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI30-.LCFI29
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI31-.LCFI30
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE32:
.LSFDE34:
	.long	.LEFDE34-.LASFDE34
.LASFDE34:
	.long	.Lframe0
	.quad	.LFB213
	.quad	.LFE213-.LFB213
	.byte	0x4
	.long	.LCFI33-.LFB213
	.byte	0x8c
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI35-.LCFI33
	.byte	0xe
	.uleb128 0x20
	.byte	0x8d
	.uleb128 0x2
	.align 8
.LEFDE34:
.LSFDE36:
	.long	.LEFDE36-.LASFDE36
.LASFDE36:
	.long	.Lframe0
	.quad	.LFB214
	.quad	.LFE214-.LFB214
	.byte	0x4
	.long	.LCFI37-.LFB214
	.byte	0x8c
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI39-.LCFI37
	.byte	0xe
	.uleb128 0x20
	.byte	0x8d
	.uleb128 0x2
	.align 8
.LEFDE36:
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
	.quad	.LFB196
	.quad	.LFE196-.LFB196
	.align 8
.LEFDE1:
.LSFDE3:
	.long	.LEFDE3-.LASFDE3
.LASFDE3:
	.long	.LASFDE3-.Lframe1
	.quad	.LFB197
	.quad	.LFE197-.LFB197
	.byte	0x4
	.long	.LCFI2-.LFB197
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
	.quad	.LFB198
	.quad	.LFE198-.LFB198
	.byte	0x4
	.long	.LCFI5-.LFB198
	.byte	0xe
	.uleb128 0x20
	.byte	0x86
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE5:
.LSFDE7:
	.long	.LEFDE7-.LASFDE7
.LASFDE7:
	.long	.LASFDE7-.Lframe1
	.quad	.LFB199
	.quad	.LFE199-.LFB199
	.align 8
.LEFDE7:
.LSFDE9:
	.long	.LEFDE9-.LASFDE9
.LASFDE9:
	.long	.LASFDE9-.Lframe1
	.quad	.LFB200
	.quad	.LFE200-.LFB200
	.byte	0x4
	.long	.LCFI6-.LFB200
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE9:
.LSFDE11:
	.long	.LEFDE11-.LASFDE11
.LASFDE11:
	.long	.LASFDE11-.Lframe1
	.quad	.LFB201
	.quad	.LFE201-.LFB201
	.align 8
.LEFDE11:
.LSFDE13:
	.long	.LEFDE13-.LASFDE13
.LASFDE13:
	.long	.LASFDE13-.Lframe1
	.quad	.LFB202
	.quad	.LFE202-.LFB202
	.byte	0x4
	.long	.LCFI8-.LFB202
	.byte	0x86
	.uleb128 0x4
	.byte	0x83
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI11-.LCFI8
	.byte	0xe
	.uleb128 0x30
	.byte	0x8d
	.uleb128 0x2
	.byte	0x8c
	.uleb128 0x3
	.align 8
.LEFDE13:
.LSFDE15:
	.long	.LEFDE15-.LASFDE15
.LASFDE15:
	.long	.LASFDE15-.Lframe1
	.quad	.LFB203
	.quad	.LFE203-.LFB203
	.byte	0x4
	.long	.LCFI12-.LFB203
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
	.quad	.LFB204
	.quad	.LFE204-.LFB204
	.align 8
.LEFDE17:
.LSFDE19:
	.long	.LEFDE19-.LASFDE19
.LASFDE19:
	.long	.LASFDE19-.Lframe1
	.quad	.LFB205
	.quad	.LFE205-.LFB205
	.byte	0x4
	.long	.LCFI13-.LFB205
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
	.quad	.LFB206
	.quad	.LFE206-.LFB206
	.align 8
.LEFDE21:
.LSFDE23:
	.long	.LEFDE23-.LASFDE23
.LASFDE23:
	.long	.LASFDE23-.Lframe1
	.quad	.LFB207
	.quad	.LFE207-.LFB207
	.byte	0x4
	.long	.LCFI14-.LFB207
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
	.quad	.LFB208
	.quad	.LFE208-.LFB208
	.byte	0x4
	.long	.LCFI17-.LFB208
	.byte	0xe
	.uleb128 0x10
	.byte	0x8c
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
	.quad	.LFB209
	.quad	.LFE209-.LFB209
	.byte	0x4
	.long	.LCFI21-.LFB209
	.byte	0x8c
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI22-.LCFI21
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
	.long	.LCFI23-.LFB210
	.byte	0xe
	.uleb128 0x10
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI24-.LCFI23
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI25-.LCFI24
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
	.long	.LCFI28-.LFB211
	.byte	0xe
	.uleb128 0x20
	.byte	0x86
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE31:
.LSFDE33:
	.long	.LEFDE33-.LASFDE33
.LASFDE33:
	.long	.LASFDE33-.Lframe1
	.quad	.LFB212
	.quad	.LFE212-.LFB212
	.byte	0x4
	.long	.LCFI29-.LFB212
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI30-.LCFI29
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI31-.LCFI30
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE33:
.LSFDE35:
	.long	.LEFDE35-.LASFDE35
.LASFDE35:
	.long	.LASFDE35-.Lframe1
	.quad	.LFB213
	.quad	.LFE213-.LFB213
	.byte	0x4
	.long	.LCFI33-.LFB213
	.byte	0x8c
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI35-.LCFI33
	.byte	0xe
	.uleb128 0x20
	.byte	0x8d
	.uleb128 0x2
	.align 8
.LEFDE35:
.LSFDE37:
	.long	.LEFDE37-.LASFDE37
.LASFDE37:
	.long	.LASFDE37-.Lframe1
	.quad	.LFB214
	.quad	.LFE214-.LFB214
	.byte	0x4
	.long	.LCFI37-.LFB214
	.byte	0x8c
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI39-.LCFI37
	.byte	0xe
	.uleb128 0x20
	.byte	0x8d
	.uleb128 0x2
	.align 8
.LEFDE37:
	.file 3 "/usr/include/stdint.h"
	.file 4 "/usr/include/sys/types.h"
	.file 5 "../qemu-common.h"
	.file 6 "/usr/include/stdio.h"
	.file 7 "/usr/include/libio.h"
	.file 8 "/usr/include/bits/types.h"
	.file 9 "/usr/lib/gcc/x86_64-linux-gnu/3.4.6/include/stddef.h"
	.file 10 "../cpu-all.h"
	.text
.Letext0:
	.section	.debug_info
	.long	0xcfd
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.Ldebug_line0
	.quad	.Letext0
	.quad	.Ltext0
	.long	.LASF111
	.byte	0x1
	.long	.LASF112
	.long	.LASF113
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
	.uleb128 0x2
	.long	.LASF12
	.byte	0x4
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
	.byte	0x6
	.byte	0x2d
	.uleb128 0x8
	.long	.LASF14
	.byte	0x7
	.value	0x110
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF15
	.byte	0x7
	.value	0x115
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF16
	.byte	0x7
	.value	0x116
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.long	.LASF17
	.byte	0x7
	.value	0x117
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.long	.LASF18
	.byte	0x7
	.value	0x118
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x8
	.long	.LASF19
	.byte	0x7
	.value	0x119
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x8
	.long	.LASF20
	.byte	0x7
	.value	0x11a
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x8
	.long	.LASF21
	.byte	0x7
	.value	0x11b
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x8
	.long	.LASF22
	.byte	0x7
	.value	0x11c
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x8
	.long	.LASF23
	.byte	0x7
	.value	0x11e
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x8
	.long	.LASF24
	.byte	0x7
	.value	0x11f
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x8
	.long	.LASF25
	.byte	0x7
	.value	0x120
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x8
	.long	.LASF26
	.byte	0x7
	.value	0x122
	.long	0x2bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x8
	.long	.LASF27
	.byte	0x7
	.value	0x124
	.long	0x2c5
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x8
	.long	.LASF28
	.byte	0x7
	.value	0x126
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x8
	.long	.LASF29
	.byte	0x7
	.value	0x12a
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x8
	.long	.LASF30
	.byte	0x7
	.value	0x12c
	.long	0x85
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x8
	.long	.LASF31
	.byte	0x7
	.value	0x130
	.long	0x62
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x8
	.long	.LASF32
	.byte	0x7
	.value	0x131
	.long	0x77
	.byte	0x3
	.byte	0x23
	.uleb128 0x82
	.uleb128 0x8
	.long	.LASF33
	.byte	0x7
	.value	0x132
	.long	0x2cb
	.byte	0x3
	.byte	0x23
	.uleb128 0x83
	.uleb128 0x8
	.long	.LASF34
	.byte	0x7
	.value	0x136
	.long	0x2db
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x8
	.long	.LASF35
	.byte	0x7
	.value	0x13f
	.long	0x90
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x8
	.long	.LASF36
	.byte	0x7
	.value	0x148
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x8
	.long	.LASF37
	.byte	0x7
	.value	0x149
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x8
	.long	.LASF38
	.byte	0x7
	.value	0x14a
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x8
	.long	.LASF39
	.byte	0x7
	.value	0x14b
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x8
	.long	.LASF40
	.byte	0x7
	.value	0x14c
	.long	0x2d
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x8
	.long	.LASF41
	.byte	0x7
	.value	0x14e
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x8
	.long	.LASF42
	.byte	0x7
	.value	0x150
	.long	0x2e1
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.byte	0x0
	.uleb128 0x9
	.long	.LASF43
	.byte	0x7
	.byte	0xb4
	.uleb128 0x7
	.long	0x2bf
	.long	.LASF45
	.byte	0x18
	.byte	0x7
	.byte	0xba
	.uleb128 0xa
	.long	.LASF46
	.byte	0x7
	.byte	0xbb
	.long	0x2bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF47
	.byte	0x7
	.byte	0xbc
	.long	0x2c5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF48
	.byte	0x7
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
	.byte	0x3
	.byte	0x31
	.long	0x70
	.uleb128 0x2
	.long	.LASF50
	.byte	0x3
	.byte	0x34
	.long	0x46
	.uleb128 0x3
	.long	.LASF51
	.byte	0x4
	.byte	0x4
	.uleb128 0x3
	.long	.LASF52
	.byte	0x8
	.byte	0x4
	.uleb128 0x3
	.long	.LASF53
	.byte	0x10
	.byte	0x4
	.uleb128 0x6
	.byte	0x8
	.long	0x322
	.uleb128 0xd
	.long	0x2f1
	.uleb128 0x2
	.long	.LASF54
	.byte	0x5
	.byte	0x73
	.long	0x332
	.uleb128 0xe
	.long	.LASF54
	.byte	0x1
	.uleb128 0x6
	.byte	0x8
	.long	0x327
	.uleb128 0xf
	.long	0x34f
	.byte	0x1
	.uleb128 0x10
	.long	0x9b
	.uleb128 0x10
	.long	0x3f
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x2f1
	.uleb128 0x11
	.long	0x39a
	.value	0x10c
	.byte	0x1
	.byte	0x4c
	.uleb128 0xa
	.long	.LASF55
	.byte	0x1
	.byte	0x4a
	.long	0x39a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF56
	.byte	0x1
	.byte	0x4b
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0xa
	.long	.LASF57
	.byte	0x1
	.byte	0x4b
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.uleb128 0xa
	.long	.LASF58
	.byte	0x1
	.byte	0x4b
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.byte	0x0
	.uleb128 0xb
	.long	0x3aa
	.long	0x2f1
	.uleb128 0xc
	.long	0x5b
	.byte	0xff
	.byte	0x0
	.uleb128 0x2
	.long	.LASF59
	.byte	0x1
	.byte	0x4c
	.long	0x355
	.uleb128 0x11
	.long	0x3fa
	.value	0x120
	.byte	0x1
	.byte	0x53
	.uleb128 0xa
	.long	.LASF60
	.byte	0x1
	.byte	0x4f
	.long	0x3aa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF61
	.byte	0x1
	.byte	0x50
	.long	0xa3
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.uleb128 0xa
	.long	.LASF62
	.byte	0x1
	.byte	0x51
	.long	0x3fa
	.byte	0x3
	.byte	0x23
	.uleb128 0x110
	.uleb128 0xa
	.long	.LASF63
	.byte	0x1
	.byte	0x52
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0x118
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x33e
	.uleb128 0x2
	.long	.LASF64
	.byte	0x1
	.byte	0x53
	.long	0x3b5
	.uleb128 0x11
	.long	0x441
	.value	0x128
	.byte	0x1
	.byte	0x5c
	.uleb128 0xa
	.long	.LASF65
	.byte	0x1
	.byte	0x56
	.long	0x400
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF66
	.byte	0x1
	.byte	0x57
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x120
	.uleb128 0xa
	.long	.LASF67
	.byte	0x1
	.byte	0x5b
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x124
	.byte	0x0
	.uleb128 0x2
	.long	.LASF68
	.byte	0x1
	.byte	0x5c
	.long	0x40b
	.uleb128 0x11
	.long	0x4fa
	.value	0x138
	.byte	0x1
	.byte	0x6a
	.uleb128 0xa
	.long	.LASF65
	.byte	0x1
	.byte	0x5f
	.long	0x400
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF69
	.byte	0x1
	.byte	0x60
	.long	0x2f1
	.byte	0x3
	.byte	0x23
	.uleb128 0x120
	.uleb128 0xa
	.long	.LASF70
	.byte	0x1
	.byte	0x61
	.long	0x2f1
	.byte	0x3
	.byte	0x23
	.uleb128 0x121
	.uleb128 0xa
	.long	.LASF71
	.byte	0x1
	.byte	0x62
	.long	0x2f1
	.byte	0x3
	.byte	0x23
	.uleb128 0x122
	.uleb128 0xa
	.long	.LASF72
	.byte	0x1
	.byte	0x63
	.long	0x2f1
	.byte	0x3
	.byte	0x23
	.uleb128 0x123
	.uleb128 0xa
	.long	.LASF73
	.byte	0x1
	.byte	0x64
	.long	0x2f1
	.byte	0x3
	.byte	0x23
	.uleb128 0x124
	.uleb128 0xa
	.long	.LASF74
	.byte	0x1
	.byte	0x65
	.long	0x2f1
	.byte	0x3
	.byte	0x23
	.uleb128 0x125
	.uleb128 0xa
	.long	.LASF75
	.byte	0x1
	.byte	0x66
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0xa
	.long	.LASF76
	.byte	0x1
	.byte	0x67
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x12c
	.uleb128 0xa
	.long	.LASF77
	.byte	0x1
	.byte	0x68
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x130
	.uleb128 0xa
	.long	.LASF78
	.byte	0x1
	.byte	0x69
	.long	0x2f1
	.byte	0x3
	.byte	0x23
	.uleb128 0x134
	.byte	0x0
	.uleb128 0x2
	.long	.LASF79
	.byte	0x1
	.byte	0x6a
	.long	0x44c
	.uleb128 0x12
	.long	0x54f
	.byte	0x1
	.long	.LASF82
	.byte	0x1
	.byte	0x79
	.byte	0x1
	.quad	.LFB196
	.quad	.LFE196
	.byte	0x1
	.byte	0x57
	.uleb128 0x13
	.long	.LASF80
	.byte	0x1
	.byte	0x78
	.long	0x9b
	.byte	0x1
	.byte	0x52
	.uleb128 0x14
	.string	"b"
	.byte	0x1
	.byte	0x78
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.byte	0x7a
	.long	0x54f
	.uleb128 0x15
	.string	"q"
	.byte	0x1
	.byte	0x7b
	.long	0x555
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x400
	.uleb128 0x6
	.byte	0x8
	.long	0x3aa
	.uleb128 0x16
	.long	0x59d
	.long	.LASF85
	.byte	0x1
	.byte	0x87
	.byte	0x1
	.quad	.LFB197
	.quad	.LFE197
	.byte	0x1
	.byte	0x57
	.uleb128 0x13
	.long	.LASF80
	.byte	0x1
	.byte	0x86
	.long	0x9b
	.byte	0x1
	.byte	0x56
	.uleb128 0x13
	.long	.LASF81
	.byte	0x1
	.byte	0x86
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.byte	0x88
	.long	0x59d
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x441
	.uleb128 0x17
	.long	0x602
	.byte	0x1
	.long	.LASF83
	.byte	0x1
	.byte	0x93
	.byte	0x1
	.long	0x2fc
	.quad	.LFB198
	.quad	.LFE198
	.byte	0x1
	.byte	0x57
	.uleb128 0x13
	.long	.LASF80
	.byte	0x1
	.byte	0x92
	.long	0x9b
	.byte	0x1
	.byte	0x55
	.uleb128 0x18
	.string	"s"
	.byte	0x1
	.byte	0x94
	.long	0x54f
	.byte	0x1
	.byte	0x53
	.uleb128 0x15
	.string	"q"
	.byte	0x1
	.byte	0x95
	.long	0x555
	.uleb128 0x18
	.string	"val"
	.byte	0x1
	.byte	0x96
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.uleb128 0x19
	.long	.LASF84
	.byte	0x1
	.byte	0x96
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x16
	.long	0x62c
	.long	.LASF86
	.byte	0x1
	.byte	0xaf
	.byte	0x1
	.quad	.LFB199
	.quad	.LFE199
	.byte	0x1
	.byte	0x57
	.uleb128 0x14
	.string	"s"
	.byte	0x1
	.byte	0xae
	.long	0x59d
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x12
	.long	0x66f
	.byte	0x1
	.long	.LASF87
	.byte	0x1
	.byte	0xb4
	.byte	0x1
	.quad	.LFB200
	.quad	.LFE200
	.byte	0x1
	.byte	0x57
	.uleb128 0x13
	.long	.LASF80
	.byte	0x1
	.byte	0xb3
	.long	0x9b
	.byte	0x1
	.byte	0x53
	.uleb128 0x14
	.string	"val"
	.byte	0x1
	.byte	0xb3
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.byte	0xb5
	.long	0x59d
	.byte	0x0
	.uleb128 0x12
	.long	0x6b2
	.byte	0x1
	.long	.LASF88
	.byte	0x1
	.byte	0xf6
	.byte	0x1
	.quad	.LFB201
	.quad	.LFE201
	.byte	0x1
	.byte	0x57
	.uleb128 0x13
	.long	.LASF80
	.byte	0x1
	.byte	0xf5
	.long	0x9b
	.byte	0x1
	.byte	0x55
	.uleb128 0x13
	.long	.LASF89
	.byte	0x1
	.byte	0xf5
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.byte	0xf7
	.long	0x59d
	.byte	0x0
	.uleb128 0x16
	.long	0x70e
	.long	.LASF90
	.byte	0x1
	.byte	0xfc
	.byte	0x1
	.quad	.LFB202
	.quad	.LFE202
	.byte	0x1
	.byte	0x57
	.uleb128 0x14
	.string	"s"
	.byte	0x1
	.byte	0xfb
	.long	0x70e
	.byte	0x1
	.byte	0x53
	.uleb128 0x18
	.string	"b"
	.byte	0x1
	.byte	0xfd
	.long	0x46
	.byte	0x1
	.byte	0x54
	.uleb128 0x18
	.string	"dx1"
	.byte	0x1
	.byte	0xfe
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.uleb128 0x18
	.string	"dy1"
	.byte	0x1
	.byte	0xfe
	.long	0x3f
	.byte	0x1
	.byte	0x5c
	.uleb128 0x18
	.string	"dz1"
	.byte	0x1
	.byte	0xfe
	.long	0x3f
	.byte	0x1
	.byte	0x5d
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x4fa
	.uleb128 0x1a
	.long	0x781
	.long	.LASF91
	.byte	0x1
	.value	0x12d
	.byte	0x1
	.quad	.LFB203
	.quad	.LFE203
	.byte	0x1
	.byte	0x57
	.uleb128 0x1b
	.long	.LASF80
	.byte	0x1
	.value	0x12b
	.long	0x9b
	.byte	0x1
	.byte	0x53
	.uleb128 0x1c
	.string	"dx"
	.byte	0x1
	.value	0x12c
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x1c
	.string	"dy"
	.byte	0x1
	.value	0x12c
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x1c
	.string	"dz"
	.byte	0x1
	.value	0x12c
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x1b
	.long	.LASF92
	.byte	0x1
	.value	0x12c
	.long	0x3f
	.byte	0x1
	.byte	0x58
	.uleb128 0x1d
	.string	"s"
	.byte	0x1
	.value	0x12e
	.long	0x70e
	.byte	0x0
	.uleb128 0x1e
	.long	0x7b0
	.byte	0x1
	.long	.LASF93
	.byte	0x1
	.value	0x14a
	.byte	0x1
	.quad	.LFB204
	.quad	.LFE204
	.byte	0x1
	.byte	0x57
	.uleb128 0x1b
	.long	.LASF80
	.byte	0x1
	.value	0x149
	.long	0x9b
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x1e
	.long	0x7f7
	.byte	0x1
	.long	.LASF94
	.byte	0x1
	.value	0x14f
	.byte	0x1
	.quad	.LFB205
	.quad	.LFE205
	.byte	0x1
	.byte	0x57
	.uleb128 0x1b
	.long	.LASF80
	.byte	0x1
	.value	0x14e
	.long	0x9b
	.byte	0x1
	.byte	0x53
	.uleb128 0x1c
	.string	"val"
	.byte	0x1
	.value	0x14e
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x1d
	.string	"s"
	.byte	0x1
	.value	0x150
	.long	0x70e
	.byte	0x0
	.uleb128 0x1a
	.long	0x839
	.long	.LASF95
	.byte	0x1
	.value	0x1cd
	.byte	0x1
	.quad	.LFB206
	.quad	.LFE206
	.byte	0x1
	.byte	0x57
	.uleb128 0x1b
	.long	.LASF80
	.byte	0x1
	.value	0x1cc
	.long	0x9b
	.byte	0x1
	.byte	0x55
	.uleb128 0x1d
	.string	"s"
	.byte	0x1
	.value	0x1ce
	.long	0x54f
	.uleb128 0x1d
	.string	"q"
	.byte	0x1
	.value	0x1cf
	.long	0x555
	.byte	0x0
	.uleb128 0x1a
	.long	0x871
	.long	.LASF96
	.byte	0x1
	.value	0x1d8
	.byte	0x1
	.quad	.LFB207
	.quad	.LFE207
	.byte	0x1
	.byte	0x57
	.uleb128 0x1c
	.string	"f"
	.byte	0x1
	.value	0x1d7
	.long	0x338
	.byte	0x1
	.byte	0x5c
	.uleb128 0x1c
	.string	"s"
	.byte	0x1
	.value	0x1d7
	.long	0x54f
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x1a
	.long	0x8a9
	.long	.LASF97
	.byte	0x1
	.value	0x1e1
	.byte	0x1
	.quad	.LFB208
	.quad	.LFE208
	.byte	0x1
	.byte	0x57
	.uleb128 0x1c
	.string	"f"
	.byte	0x1
	.value	0x1e0
	.long	0x338
	.byte	0x1
	.byte	0x5c
	.uleb128 0x1c
	.string	"s"
	.byte	0x1
	.value	0x1e0
	.long	0x54f
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x1a
	.long	0x8ed
	.long	.LASF98
	.byte	0x1
	.value	0x1ea
	.byte	0x1
	.quad	.LFB209
	.quad	.LFE209
	.byte	0x1
	.byte	0x57
	.uleb128 0x1c
	.string	"f"
	.byte	0x1
	.value	0x1e9
	.long	0x338
	.byte	0x1
	.byte	0x5c
	.uleb128 0x1b
	.long	.LASF80
	.byte	0x1
	.value	0x1e9
	.long	0x9b
	.byte	0x1
	.byte	0x53
	.uleb128 0x1d
	.string	"s"
	.byte	0x1
	.value	0x1eb
	.long	0x59d
	.byte	0x0
	.uleb128 0x1a
	.long	0xa29
	.long	.LASF99
	.byte	0x1
	.value	0x1f3
	.byte	0x1
	.quad	.LFB210
	.quad	.LFE210
	.byte	0x1
	.byte	0x57
	.uleb128 0x1c
	.string	"f"
	.byte	0x1
	.value	0x1f2
	.long	0x338
	.byte	0x1
	.byte	0x5c
	.uleb128 0x1b
	.long	.LASF80
	.byte	0x1
	.value	0x1f2
	.long	0x9b
	.byte	0x1
	.byte	0x53
	.uleb128 0x1d
	.string	"s"
	.byte	0x1
	.value	0x1f4
	.long	0x70e
	.uleb128 0x1f
	.long	0x954
	.long	0xa29
	.quad	.LBB2
	.quad	.LBE2
	.uleb128 0x20
	.long	0xa36
	.uleb128 0x20
	.long	0xa3f
	.byte	0x0
	.uleb128 0x1f
	.long	0x978
	.long	0xa29
	.quad	.LBB4
	.quad	.LBE4
	.uleb128 0x20
	.long	0xa36
	.uleb128 0x20
	.long	0xa3f
	.byte	0x0
	.uleb128 0x1f
	.long	0x99c
	.long	0xa29
	.quad	.LBB6
	.quad	.LBE6
	.uleb128 0x20
	.long	0xa36
	.uleb128 0x20
	.long	0xa3f
	.byte	0x0
	.uleb128 0x1f
	.long	0x9c0
	.long	0xa29
	.quad	.LBB8
	.quad	.LBE8
	.uleb128 0x20
	.long	0xa36
	.uleb128 0x20
	.long	0xa3f
	.byte	0x0
	.uleb128 0x1f
	.long	0x9e4
	.long	0xa29
	.quad	.LBB10
	.quad	.LBE10
	.uleb128 0x20
	.long	0xa36
	.uleb128 0x20
	.long	0xa3f
	.byte	0x0
	.uleb128 0x1f
	.long	0xa08
	.long	0xa29
	.quad	.LBB12
	.quad	.LBE12
	.uleb128 0x20
	.long	0xa36
	.uleb128 0x20
	.long	0xa3f
	.byte	0x0
	.uleb128 0x21
	.long	0xa29
	.quad	.LBB14
	.quad	.LBE14
	.uleb128 0x20
	.long	0xa36
	.uleb128 0x20
	.long	0xa3f
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
	.long	0xa4a
	.long	.LASF100
	.byte	0x2
	.byte	0x29
	.byte	0x1
	.byte	0x3
	.uleb128 0x23
	.string	"f"
	.byte	0x2
	.byte	0x28
	.long	0x338
	.uleb128 0x23
	.string	"pv"
	.byte	0x2
	.byte	0x28
	.long	0x31c
	.byte	0x0
	.uleb128 0x24
	.long	0xaa0
	.long	.LASF101
	.byte	0x1
	.value	0x204
	.byte	0x1
	.long	0x3f
	.quad	.LFB211
	.quad	.LFE211
	.byte	0x1
	.byte	0x57
	.uleb128 0x1c
	.string	"f"
	.byte	0x1
	.value	0x203
	.long	0x338
	.byte	0x1
	.byte	0x53
	.uleb128 0x1b
	.long	.LASF80
	.byte	0x1
	.value	0x203
	.long	0x9b
	.byte	0x1
	.byte	0x56
	.uleb128 0x1b
	.long	.LASF102
	.byte	0x1
	.value	0x203
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x1d
	.string	"s"
	.byte	0x1
	.value	0x205
	.long	0x59d
	.byte	0x0
	.uleb128 0x24
	.long	0xbee
	.long	.LASF103
	.byte	0x1
	.value	0x211
	.byte	0x1
	.long	0x3f
	.quad	.LFB212
	.quad	.LFE212
	.byte	0x1
	.byte	0x57
	.uleb128 0x1c
	.string	"f"
	.byte	0x1
	.value	0x210
	.long	0x338
	.byte	0x1
	.byte	0x53
	.uleb128 0x1b
	.long	.LASF80
	.byte	0x1
	.value	0x210
	.long	0x9b
	.byte	0x1
	.byte	0x56
	.uleb128 0x1b
	.long	.LASF102
	.byte	0x1
	.value	0x210
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x1d
	.string	"s"
	.byte	0x1
	.value	0x212
	.long	0x70e
	.uleb128 0x1f
	.long	0xb19
	.long	0xbee
	.quad	.LBB20
	.quad	.LBE20
	.uleb128 0x20
	.long	0xbfb
	.uleb128 0x20
	.long	0xc04
	.byte	0x0
	.uleb128 0x1f
	.long	0xb3d
	.long	0xbee
	.quad	.LBB22
	.quad	.LBE22
	.uleb128 0x20
	.long	0xbfb
	.uleb128 0x20
	.long	0xc04
	.byte	0x0
	.uleb128 0x1f
	.long	0xb61
	.long	0xbee
	.quad	.LBB28
	.quad	.LBE28
	.uleb128 0x20
	.long	0xbfb
	.uleb128 0x20
	.long	0xc04
	.byte	0x0
	.uleb128 0x1f
	.long	0xb85
	.long	0xbee
	.quad	.LBB34
	.quad	.LBE34
	.uleb128 0x20
	.long	0xbfb
	.uleb128 0x20
	.long	0xc04
	.byte	0x0
	.uleb128 0x1f
	.long	0xba9
	.long	0xbee
	.quad	.LBB40
	.quad	.LBE40
	.uleb128 0x20
	.long	0xbfb
	.uleb128 0x20
	.long	0xc04
	.byte	0x0
	.uleb128 0x1f
	.long	0xbcd
	.long	0xbee
	.quad	.LBB46
	.quad	.LBE46
	.uleb128 0x20
	.long	0xbfb
	.uleb128 0x20
	.long	0xc04
	.byte	0x0
	.uleb128 0x21
	.long	0xbee
	.quad	.LBB54
	.quad	.LBE54
	.uleb128 0x20
	.long	0xbfb
	.uleb128 0x20
	.long	0xc04
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
	.long	0xc0f
	.long	.LASF104
	.byte	0x2
	.byte	0x3d
	.byte	0x1
	.byte	0x3
	.uleb128 0x23
	.string	"f"
	.byte	0x2
	.byte	0x3c
	.long	0x338
	.uleb128 0x23
	.string	"pv"
	.byte	0x2
	.byte	0x3c
	.long	0x34f
	.byte	0x0
	.uleb128 0x25
	.long	0xc5c
	.byte	0x1
	.long	.LASF105
	.byte	0x1
	.value	0x226
	.byte	0x1
	.long	0x9b
	.quad	.LFB213
	.quad	.LFE213
	.byte	0x1
	.byte	0x57
	.uleb128 0x1b
	.long	.LASF62
	.byte	0x1
	.value	0x225
	.long	0x3fa
	.byte	0x1
	.byte	0x53
	.uleb128 0x1b
	.long	.LASF63
	.byte	0x1
	.value	0x225
	.long	0x9b
	.byte	0x1
	.byte	0x5d
	.uleb128 0x26
	.string	"s"
	.byte	0x1
	.value	0x227
	.long	0x59d
	.byte	0x1
	.byte	0x5c
	.byte	0x0
	.uleb128 0x25
	.long	0xca9
	.byte	0x1
	.long	.LASF106
	.byte	0x1
	.value	0x233
	.byte	0x1
	.long	0x9b
	.quad	.LFB214
	.quad	.LFE214
	.byte	0x1
	.byte	0x57
	.uleb128 0x1b
	.long	.LASF62
	.byte	0x1
	.value	0x232
	.long	0x3fa
	.byte	0x1
	.byte	0x53
	.uleb128 0x1b
	.long	.LASF63
	.byte	0x1
	.value	0x232
	.long	0x9b
	.byte	0x1
	.byte	0x5d
	.uleb128 0x26
	.string	"s"
	.byte	0x1
	.value	0x234
	.long	0x70e
	.byte	0x1
	.byte	0x5c
	.byte	0x0
	.uleb128 0x27
	.long	.LASF107
	.byte	0x6
	.byte	0x91
	.long	0x2c5
	.byte	0x1
	.byte	0x1
	.uleb128 0x27
	.long	.LASF108
	.byte	0x6
	.byte	0x92
	.long	0x2c5
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.long	.LASF109
	.byte	0xa
	.value	0x376
	.long	0x34f
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0xce1
	.long	0xce1
	.uleb128 0xc
	.long	0x5b
	.byte	0x7f
	.byte	0x0
	.uleb128 0xd
	.long	0x70
	.uleb128 0x19
	.long	.LASF110
	.byte	0x1
	.byte	0x6d
	.long	0xcfb
	.byte	0x9
	.byte	0x3
	.quad	ps2_raw_keycode
	.uleb128 0xd
	.long	0xcd1
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
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x25
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0xb7
	.value	0x2
	.long	.Ldebug_info0
	.long	0xd01
	.long	0x505
	.string	"ps2_queue"
	.long	0x5a3
	.string	"ps2_read_data"
	.long	0x62c
	.string	"ps2_write_keyboard"
	.long	0x66f
	.string	"ps2_keyboard_set_translation"
	.long	0x781
	.string	"ps2_mouse_fake_event"
	.long	0x7b0
	.string	"ps2_write_mouse"
	.long	0xc0f
	.string	"ps2_kbd_init"
	.long	0xc5c
	.string	"ps2_mouse_init"
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
.LASF5:
	.string	"char"
.LASF9:
	.string	"size_t"
.LASF98:
	.string	"ps2_kbd_save"
.LASF12:
	.string	"int32_t"
.LASF25:
	.string	"_IO_save_end"
.LASF72:
	.string	"mouse_wrap"
.LASF18:
	.string	"_IO_write_base"
.LASF86:
	.string	"ps2_reset_keyboard"
.LASF34:
	.string	"_lock"
.LASF23:
	.string	"_IO_save_base"
.LASF94:
	.string	"ps2_write_mouse"
.LASF31:
	.string	"_cur_column"
.LASF41:
	.string	"_mode"
.LASF2:
	.string	"long int"
.LASF59:
	.string	"PS2Queue"
.LASF45:
	.string	"_IO_marker"
.LASF80:
	.string	"opaque"
.LASF4:
	.string	"short unsigned int"
.LASF65:
	.string	"common"
.LASF85:
	.string	"ps2_put_keycode"
.LASF67:
	.string	"translate"
.LASF84:
	.string	"index"
.LASF7:
	.string	"signed char"
.LASF89:
	.string	"mode"
.LASF44:
	.string	"_IO_FILE"
.LASF62:
	.string	"update_irq"
.LASF105:
	.string	"ps2_kbd_init"
.LASF61:
	.string	"write_cmd"
.LASF6:
	.string	"unsigned char"
.LASF43:
	.string	"_IO_lock_t"
.LASF54:
	.string	"QEMUFile"
.LASF83:
	.string	"ps2_read_data"
.LASF15:
	.string	"_IO_read_ptr"
.LASF52:
	.string	"double"
.LASF73:
	.string	"mouse_type"
.LASF82:
	.string	"ps2_queue"
.LASF48:
	.string	"_pos"
.LASF107:
	.string	"stdin"
.LASF87:
	.string	"ps2_write_keyboard"
.LASF26:
	.string	"_markers"
.LASF106:
	.string	"ps2_mouse_init"
.LASF112:
	.string	"/home/remco/Projects/Argos/src/hw/ps2.c"
.LASF66:
	.string	"scan_enabled"
.LASF95:
	.string	"ps2_reset"
.LASF42:
	.string	"_unused2"
.LASF77:
	.string	"mouse_dz"
.LASF68:
	.string	"PS2KbdState"
.LASF29:
	.string	"_flags2"
.LASF97:
	.string	"ps2_common_load"
.LASF17:
	.string	"_IO_read_base"
.LASF96:
	.string	"ps2_common_save"
.LASF79:
	.string	"PS2MouseState"
.LASF100:
	.string	"qemu_put_8s"
.LASF30:
	.string	"_old_offset"
.LASF70:
	.string	"mouse_resolution"
.LASF102:
	.string	"version_id"
.LASF74:
	.string	"mouse_detect_state"
.LASF3:
	.string	"long long int"
.LASF64:
	.string	"PS2State"
.LASF20:
	.string	"_IO_write_end"
.LASF78:
	.string	"mouse_buttons"
.LASF113:
	.string	"/home/remco/Projects/Argos/src/i386-softmmu"
.LASF58:
	.string	"count"
.LASF81:
	.string	"keycode"
.LASF21:
	.string	"_IO_buf_base"
.LASF46:
	.string	"_next"
.LASF1:
	.string	"unsigned int"
.LASF111:
	.string	"GNU C 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
.LASF104:
	.string	"qemu_get_8s"
.LASF60:
	.string	"queue"
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
.LASF91:
	.string	"ps2_mouse_event"
.LASF14:
	.string	"_flags"
.LASF55:
	.string	"data"
.LASF53:
	.string	"long double"
.LASF101:
	.string	"ps2_kbd_load"
.LASF35:
	.string	"_offset"
.LASF71:
	.string	"mouse_sample_rate"
.LASF13:
	.string	"long long unsigned int"
.LASF103:
	.string	"ps2_mouse_load"
.LASF49:
	.string	"uint8_t"
.LASF10:
	.string	"__off_t"
.LASF27:
	.string	"_chain"
.LASF0:
	.string	"long unsigned int"
.LASF57:
	.string	"wptr"
.LASF99:
	.string	"ps2_mouse_save"
.LASF24:
	.string	"_IO_backup_base"
.LASF33:
	.string	"_shortbuf"
.LASF63:
	.string	"update_arg"
.LASF11:
	.string	"__off64_t"
.LASF22:
	.string	"_IO_buf_end"
.LASF88:
	.string	"ps2_keyboard_set_translation"
.LASF8:
	.string	"short int"
.LASF109:
	.string	"phys_ram_dirty"
.LASF32:
	.string	"_vtable_offset"
.LASF69:
	.string	"mouse_status"
.LASF16:
	.string	"_IO_read_end"
.LASF92:
	.string	"buttons_state"
.LASF50:
	.string	"uint32_t"
.LASF28:
	.string	"_fileno"
.LASF90:
	.string	"ps2_mouse_send_packet"
.LASF51:
	.string	"float"
.LASF108:
	.string	"stdout"
.LASF93:
	.string	"ps2_mouse_fake_event"
.LASF19:
	.string	"_IO_write_ptr"
.LASF56:
	.string	"rptr"
.LASF75:
	.string	"mouse_dx"
.LASF110:
	.string	"ps2_raw_keycode"
.LASF76:
	.string	"mouse_dy"
	.section	.note.GNU-stack,"",@progbits
	.ident	"GCC: (GNU) 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
