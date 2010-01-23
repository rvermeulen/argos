	.file	"mixeng.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
.globl mixeng_clip
	.data
	.align 32
	.type	mixeng_clip, @object
	.size	mixeng_clip, 192
mixeng_clip:
	.quad	clip_natural_uint8_t_from_mono
	.quad	clip_natural_uint16_t_from_mono
	.quad	clip_natural_uint32_t_from_mono
	.quad	clip_natural_uint8_t_from_mono
	.quad	clip_swap_uint16_t_from_mono
	.quad	clip_swap_uint32_t_from_mono
	.quad	clip_natural_int8_t_from_mono
	.quad	clip_natural_int16_t_from_mono
	.quad	clip_natural_int32_t_from_mono
	.quad	clip_natural_int8_t_from_mono
	.quad	clip_swap_int16_t_from_mono
	.quad	clip_swap_int32_t_from_mono
	.quad	clip_natural_uint8_t_from_stereo
	.quad	clip_natural_uint16_t_from_stereo
	.quad	clip_natural_uint32_t_from_stereo
	.quad	clip_natural_uint8_t_from_stereo
	.quad	clip_swap_uint16_t_from_stereo
	.quad	clip_swap_uint32_t_from_stereo
	.quad	clip_natural_int8_t_from_stereo
	.quad	clip_natural_int16_t_from_stereo
	.quad	clip_natural_int32_t_from_stereo
	.quad	clip_natural_int8_t_from_stereo
	.quad	clip_swap_int16_t_from_stereo
	.quad	clip_swap_int32_t_from_stereo
.globl mixeng_conv
	.align 32
	.type	mixeng_conv, @object
	.size	mixeng_conv, 192
mixeng_conv:
	.quad	conv_natural_uint8_t_to_mono
	.quad	conv_natural_uint16_t_to_mono
	.quad	conv_natural_uint32_t_to_mono
	.quad	conv_natural_uint8_t_to_mono
	.quad	conv_swap_uint16_t_to_mono
	.quad	conv_swap_uint32_t_to_mono
	.quad	conv_natural_int8_t_to_mono
	.quad	conv_natural_int16_t_to_mono
	.quad	conv_natural_int32_t_to_mono
	.quad	conv_natural_int8_t_to_mono
	.quad	conv_swap_int16_t_to_mono
	.quad	conv_swap_int32_t_to_mono
	.quad	conv_natural_uint8_t_to_stereo
	.quad	conv_natural_uint16_t_to_stereo
	.quad	conv_natural_uint32_t_to_stereo
	.quad	conv_natural_uint8_t_to_stereo
	.quad	conv_swap_uint16_t_to_stereo
	.quad	conv_swap_uint32_t_to_stereo
	.quad	conv_natural_int8_t_to_stereo
	.quad	conv_natural_int16_t_to_stereo
	.quad	conv_natural_int32_t_to_stereo
	.quad	conv_natural_int8_t_to_stereo
	.quad	conv_swap_int16_t_to_stereo
	.quad	conv_swap_int32_t_to_stereo
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"mixeng"
	.text
	.p2align 4,,15
	.type	dolog, @function
dolog:
.LFB99:
	.file 1 "audio/audio_int.h"
	.loc 1 239 0
	subq	$216, %rsp
.LCFI0:
	.loc 1 239 0
	movq	%rdx, 48(%rsp)
	movzbl	%al, %edx 
	movq	%rsi, 40(%rsp)
	leaq	0(,%rdx,4), %rax
	movl	$.L2, %edx
	movq	%rcx, 56(%rsp)
	movq	%r8, 64(%rsp)
	movq	%r9, 72(%rsp)
	.loc 1 243 0
	movq	%rdi, %rsi
	.loc 1 239 0
	subq	%rax, %rdx
	leaq	207(%rsp), %rax
	.loc 1 243 0
	movl	$.LC0, %edi
	.loc 1 239 0
	jmp	*%rdx
	movaps	%xmm7, -15(%rax)
	movaps	%xmm6, -31(%rax)
	movaps	%xmm5, -47(%rax)
	movaps	%xmm4, -63(%rax)
	movaps	%xmm3, -79(%rax)
	movaps	%xmm2, -95(%rax)
	movaps	%xmm1, -111(%rax)
	movaps	%xmm0, -127(%rax)
.L2:
	.loc 1 242 0
	leaq	224(%rsp), %rax
	.loc 1 243 0
	movq	%rsp, %rdx
	.loc 1 242 0
	movl	$8, (%rsp)
	movl	$48, 4(%rsp)
	movq	%rax, 8(%rsp)
	leaq	32(%rsp), %rax
	movq	%rax, 16(%rsp)
	.loc 1 243 0
	call	AUD_vlog
	.loc 1 244 0
	addq	$216, %rsp
	ret
.LFE99:
	.size	dolog, .-dolog
	.p2align 4,,15
	.type	conv_natural_int8_t_to_stereo, @function
conv_natural_int8_t_to_stereo:
.LFB103:
	.file 2 "audio/mixeng_template.h"
	.loc 2 113 0
	.loc 2 127 0
	decl	%edx
	cmpl	$-1, %edx
	je	.L10
	.p2align 4,,7
.L13:
.LBB2:
	.loc 2 85 0
	movsbq	(%rsi),%rax
	incq	%rsi
.LBB3:
	.loc 2 86 0
	salq	$24, %rax
.LBE3:
.LBE2:
	.loc 2 85 0
	movq	%rax, (%rdi)
.LBB4:
	movsbq	(%rsi),%rax
	incq	%rsi
.LBB5:
	.loc 2 86 0
	salq	$24, %rax
.LBE5:
.LBE4:
	.loc 2 85 0
	movq	%rax, 8(%rdi)
	.loc 2 127 0
	addq	$16, %rdi
	decl	%edx
	cmpl	$-1, %edx
	jne	.L13
.L10:
	rep ; ret
.LFE103:
	.size	conv_natural_int8_t_to_stereo, .-conv_natural_int8_t_to_stereo
	.p2align 4,,15
	.type	conv_natural_int8_t_to_mono, @function
conv_natural_int8_t_to_mono:
.LFB104:
	.loc 2 133 0
	.loc 2 148 0
	decl	%edx
	cmpl	$-1, %edx
	je	.L20
	.p2align 4,,7
.L22:
.LBB6:
.LBB7:
	.loc 2 86 0
	movsbq	(%rsi),%rax
.LBE7:
.LBE6:
	.loc 2 148 0
	incq	%rsi
.LBB8:
.LBB9:
	.loc 2 86 0
	salq	$24, %rax
.LBE9:
.LBE8:
	.loc 2 85 0
	movq	%rax, (%rdi)
	.loc 2 146 0
	movq	%rax, 8(%rdi)
	.loc 2 147 0
	addq	$16, %rdi
	.loc 2 148 0
	decl	%edx
	cmpl	$-1, %edx
	jne	.L22
.L20:
	rep ; ret
.LFE104:
	.size	conv_natural_int8_t_to_mono, .-conv_natural_int8_t_to_mono
	.p2align 4,,15
	.type	clip_natural_int8_t_from_stereo, @function
clip_natural_int8_t_from_stereo:
.LFB105:
	.loc 2 154 0
	.loc 2 160 0
	decl	%edx
	cmpl	$-1, %edx
	je	.L36
	.p2align 4,,7
.L39:
.LBB10:
	.loc 2 95 0
	movq	(%rsi), %rax
	movq	%rdi, %r8
	incq	%rdi
.LBB11:
	.loc 2 97 0
	movl	$127, %ecx
	.loc 2 96 0
	cmpq	$2130706431, %rax
	jle	.L38
.L27:
.LBE11:
.LBE10:
	.loc 2 95 0
	movb	%cl, (%r8)
.LBB12:
	movq	8(%rsi), %rax
	movq	%rdi, %r8
.LBB13:
	.loc 2 97 0
	movl	$127, %ecx
.LBE13:
	.loc 2 95 0
	leaq	1(%rdi), %rdi
.LBB14:
	.loc 2 96 0
	cmpq	$2130706431, %rax
	jg	.L31
	.loc 2 99 0
	cmpq	$-2147483648, %rax
	.loc 2 100 0
	movl	$-128, %ecx
	.loc 2 99 0
	jl	.L31
	.loc 2 101 0
	sarq	$24, %rax
	movsbl	%al,%ecx
	.p2align 4,,7
.L31:
.LBE14:
.LBE12:
	.loc 2 95 0
	movb	%cl, (%r8)
	.loc 2 160 0
	addq	$16, %rsi
	decl	%edx
	cmpl	$-1, %edx
	jne	.L39
.L36:
	rep ; ret
	.p2align 4,,7
.L38:
.LBB15:
.LBB16:
	.loc 2 99 0
	cmpq	$-2147483648, %rax
	.loc 2 100 0
	movl	$-128, %ecx
	.loc 2 99 0
	jl	.L27
	.loc 2 101 0
	sarq	$24, %rax
	movsbl	%al,%ecx
	jmp	.L27
.LBE16:
.LBE15:
.LFE105:
	.size	clip_natural_int8_t_from_stereo, .-clip_natural_int8_t_from_stereo
	.p2align 4,,15
	.type	clip_natural_int8_t_from_mono, @function
clip_natural_int8_t_from_mono:
.LFB106:
	.loc 2 166 0
	.loc 2 171 0
	decl	%edx
	cmpl	$-1, %edx
	je	.L49
	.p2align 4,,7
.L51:
.LBB17:
	.loc 2 95 0
	movq	8(%rsi), %rax
	addq	(%rsi), %rax
	movq	%rdi, %r8
.LBB18:
	.loc 2 97 0
	movl	$127, %ecx
.LBE18:
	.loc 2 95 0
	leaq	1(%rdi), %rdi
.LBB19:
	.loc 2 96 0
	cmpq	$2130706431, %rax
	jg	.L44
	.loc 2 99 0
	cmpq	$-2147483648, %rax
	.loc 2 100 0
	movl	$-128, %ecx
	.loc 2 99 0
	jl	.L44
	.loc 2 101 0
	sarq	$24, %rax
	movsbl	%al,%ecx
	.p2align 4,,7
.L44:
.LBE19:
.LBE17:
	.loc 2 95 0
	movb	%cl, (%r8)
	.loc 2 171 0
	addq	$16, %rsi
	decl	%edx
	cmpl	$-1, %edx
	jne	.L51
.L49:
	rep ; ret
.LFE106:
	.size	clip_natural_int8_t_from_mono, .-clip_natural_int8_t_from_mono
	.p2align 4,,15
	.type	conv_natural_uint8_t_to_stereo, @function
conv_natural_uint8_t_to_stereo:
.LFB109:
	.loc 2 113 0
	.loc 2 127 0
	decl	%edx
	cmpl	$-1, %edx
	je	.L59
	.p2align 4,,7
.L61:
.LBB20:
	.loc 2 85 0
	movzbq	(%rsi), %rax
	incq	%rsi
.LBB21:
	.loc 2 86 0
	subq	$127, %rax
	salq	$24, %rax
.LBE21:
.LBE20:
	.loc 2 85 0
	movq	%rax, (%rdi)
.LBB22:
	movzbq	(%rsi), %rax
	incq	%rsi
.LBB23:
	.loc 2 86 0
	subq	$127, %rax
	salq	$24, %rax
.LBE23:
.LBE22:
	.loc 2 85 0
	movq	%rax, 8(%rdi)
	.loc 2 127 0
	addq	$16, %rdi
	decl	%edx
	cmpl	$-1, %edx
	jne	.L61
.L59:
	rep ; ret
.LFE109:
	.size	conv_natural_uint8_t_to_stereo, .-conv_natural_uint8_t_to_stereo
	.p2align 4,,15
	.type	conv_natural_uint8_t_to_mono, @function
conv_natural_uint8_t_to_mono:
.LFB110:
	.loc 2 133 0
	.loc 2 148 0
	decl	%edx
	cmpl	$-1, %edx
	je	.L68
	.p2align 4,,7
.L70:
.LBB24:
.LBB25:
	.loc 2 86 0
	movzbq	(%rsi), %rax
.LBE25:
.LBE24:
	.loc 2 148 0
	incq	%rsi
.LBB26:
.LBB27:
	.loc 2 86 0
	subq	$127, %rax
	salq	$24, %rax
.LBE27:
.LBE26:
	.loc 2 85 0
	movq	%rax, (%rdi)
	.loc 2 146 0
	movq	%rax, 8(%rdi)
	.loc 2 147 0
	addq	$16, %rdi
	.loc 2 148 0
	decl	%edx
	cmpl	$-1, %edx
	jne	.L70
.L68:
	rep ; ret
.LFE110:
	.size	conv_natural_uint8_t_to_mono, .-conv_natural_uint8_t_to_mono
	.p2align 4,,15
	.type	clip_natural_uint8_t_from_stereo, @function
clip_natural_uint8_t_from_stereo:
.LFB111:
	.loc 2 154 0
	.loc 2 160 0
	decl	%edx
	cmpl	$-1, %edx
	je	.L84
	.p2align 4,,7
.L87:
.LBB28:
	.loc 2 95 0
	movq	(%rsi), %rax
	movq	%rdi, %r8
	incq	%rdi
.LBB29:
	.loc 2 97 0
	movl	$255, %ecx
	.loc 2 96 0
	cmpq	$2130706431, %rax
	jle	.L86
.L75:
.LBE29:
.LBE28:
	.loc 2 95 0
	movb	%cl, (%r8)
.LBB30:
	movq	8(%rsi), %rax
	movq	%rdi, %r8
.LBB31:
	.loc 2 97 0
	movl	$255, %ecx
.LBE31:
	.loc 2 95 0
	leaq	1(%rdi), %rdi
.LBB32:
	.loc 2 96 0
	cmpq	$2130706431, %rax
	jg	.L79
	.loc 2 100 0
	xorb	%cl, %cl
	.loc 2 99 0
	cmpq	$-2147483648, %rax
	jl	.L79
	.loc 2 101 0
	sarq	$24, %rax
	addl	$127, %eax
	movzbl	%al, %ecx
	.p2align 4,,7
.L79:
.LBE32:
.LBE30:
	.loc 2 95 0
	movb	%cl, (%r8)
	.loc 2 160 0
	addq	$16, %rsi
	decl	%edx
	cmpl	$-1, %edx
	jne	.L87
.L84:
	rep ; ret
	.p2align 4,,7
.L86:
.LBB33:
.LBB34:
	.loc 2 100 0
	xorb	%cl, %cl
	.loc 2 99 0
	cmpq	$-2147483648, %rax
	jl	.L75
	.loc 2 101 0
	sarq	$24, %rax
	addl	$127, %eax
	movzbl	%al, %ecx
	jmp	.L75
.LBE34:
.LBE33:
.LFE111:
	.size	clip_natural_uint8_t_from_stereo, .-clip_natural_uint8_t_from_stereo
	.p2align 4,,15
	.type	clip_natural_uint8_t_from_mono, @function
clip_natural_uint8_t_from_mono:
.LFB112:
	.loc 2 166 0
	.loc 2 171 0
	decl	%edx
	cmpl	$-1, %edx
	je	.L97
	.p2align 4,,7
.L99:
.LBB35:
	.loc 2 95 0
	movq	8(%rsi), %rax
	addq	(%rsi), %rax
	movq	%rdi, %r8
.LBB36:
	.loc 2 97 0
	movl	$255, %ecx
.LBE36:
	.loc 2 95 0
	leaq	1(%rdi), %rdi
.LBB37:
	.loc 2 96 0
	cmpq	$2130706431, %rax
	jg	.L92
	.loc 2 100 0
	xorb	%cl, %cl
	.loc 2 99 0
	cmpq	$-2147483648, %rax
	jl	.L92
	.loc 2 101 0
	sarq	$24, %rax
	addl	$127, %eax
	movzbl	%al, %ecx
	.p2align 4,,7
.L92:
.LBE37:
.LBE35:
	.loc 2 95 0
	movb	%cl, (%r8)
	.loc 2 171 0
	addq	$16, %rsi
	decl	%edx
	cmpl	$-1, %edx
	jne	.L99
.L97:
	rep ; ret
.LFE112:
	.size	clip_natural_uint8_t_from_mono, .-clip_natural_uint8_t_from_mono
	.p2align 4,,15
	.type	conv_natural_int16_t_to_stereo, @function
conv_natural_int16_t_to_stereo:
.LFB115:
	.loc 2 113 0
	.loc 2 127 0
	decl	%edx
	cmpl	$-1, %edx
	je	.L107
	.p2align 4,,7
.L109:
.LBB38:
	.loc 2 85 0
	movswq	(%rsi),%rax
	addq	$2, %rsi
.LBB39:
	.loc 2 86 0
	salq	$16, %rax
.LBE39:
.LBE38:
	.loc 2 85 0
	movq	%rax, (%rdi)
.LBB40:
	movswq	(%rsi),%rax
	addq	$2, %rsi
.LBB41:
	.loc 2 86 0
	salq	$16, %rax
.LBE41:
.LBE40:
	.loc 2 85 0
	movq	%rax, 8(%rdi)
	.loc 2 127 0
	addq	$16, %rdi
	decl	%edx
	cmpl	$-1, %edx
	jne	.L109
.L107:
	rep ; ret
.LFE115:
	.size	conv_natural_int16_t_to_stereo, .-conv_natural_int16_t_to_stereo
	.p2align 4,,15
	.type	conv_natural_int16_t_to_mono, @function
conv_natural_int16_t_to_mono:
.LFB116:
	.loc 2 133 0
	.loc 2 148 0
	decl	%edx
	cmpl	$-1, %edx
	je	.L116
	.p2align 4,,7
.L118:
.LBB42:
.LBB43:
	.loc 2 86 0
	movswq	(%rsi),%rax
.LBE43:
.LBE42:
	.loc 2 148 0
	addq	$2, %rsi
.LBB44:
.LBB45:
	.loc 2 86 0
	salq	$16, %rax
.LBE45:
.LBE44:
	.loc 2 85 0
	movq	%rax, (%rdi)
	.loc 2 146 0
	movq	%rax, 8(%rdi)
	.loc 2 147 0
	addq	$16, %rdi
	.loc 2 148 0
	decl	%edx
	cmpl	$-1, %edx
	jne	.L118
.L116:
	rep ; ret
.LFE116:
	.size	conv_natural_int16_t_to_mono, .-conv_natural_int16_t_to_mono
	.p2align 4,,15
	.type	clip_natural_int16_t_from_stereo, @function
clip_natural_int16_t_from_stereo:
.LFB117:
	.loc 2 154 0
	.loc 2 160 0
	decl	%edx
	cmpl	$-1, %edx
	je	.L132
	.p2align 4,,7
.L135:
.LBB46:
	.loc 2 95 0
	movq	(%rsi), %rax
	movq	%rdi, %r8
	addq	$2, %rdi
.LBB47:
	.loc 2 97 0
	movl	$32767, %ecx
	.loc 2 96 0
	cmpq	$2130706431, %rax
	jle	.L134
.L123:
.LBE47:
.LBE46:
	.loc 2 95 0
	movw	%cx, (%r8)
.LBB48:
	movq	8(%rsi), %rax
	movq	%rdi, %r8
.LBB49:
	.loc 2 97 0
	movl	$32767, %ecx
.LBE49:
	.loc 2 95 0
	leaq	2(%rdi), %rdi
.LBB50:
	.loc 2 96 0
	cmpq	$2130706431, %rax
	jg	.L127
	.loc 2 99 0
	cmpq	$-2147483648, %rax
	.loc 2 100 0
	movl	$-32768, %ecx
	.loc 2 99 0
	jl	.L127
	.loc 2 101 0
	sarq	$16, %rax
	movswl	%ax,%ecx
	.p2align 4,,7
.L127:
.LBE50:
.LBE48:
	.loc 2 95 0
	movw	%cx, (%r8)
	.loc 2 160 0
	addq	$16, %rsi
	decl	%edx
	cmpl	$-1, %edx
	jne	.L135
.L132:
	rep ; ret
	.p2align 4,,7
.L134:
.LBB51:
.LBB52:
	.loc 2 99 0
	cmpq	$-2147483648, %rax
	.loc 2 100 0
	movl	$-32768, %ecx
	.loc 2 99 0
	jl	.L123
	.loc 2 101 0
	sarq	$16, %rax
	movswl	%ax,%ecx
	jmp	.L123
.LBE52:
.LBE51:
.LFE117:
	.size	clip_natural_int16_t_from_stereo, .-clip_natural_int16_t_from_stereo
	.p2align 4,,15
	.type	clip_natural_int16_t_from_mono, @function
clip_natural_int16_t_from_mono:
.LFB118:
	.loc 2 166 0
	.loc 2 171 0
	decl	%edx
	cmpl	$-1, %edx
	je	.L145
	.p2align 4,,7
.L147:
.LBB53:
	.loc 2 95 0
	movq	8(%rsi), %rax
	addq	(%rsi), %rax
	movq	%rdi, %r8
.LBB54:
	.loc 2 97 0
	movl	$32767, %ecx
.LBE54:
	.loc 2 95 0
	leaq	2(%rdi), %rdi
.LBB55:
	.loc 2 96 0
	cmpq	$2130706431, %rax
	jg	.L140
	.loc 2 99 0
	cmpq	$-2147483648, %rax
	.loc 2 100 0
	movl	$-32768, %ecx
	.loc 2 99 0
	jl	.L140
	.loc 2 101 0
	sarq	$16, %rax
	movswl	%ax,%ecx
	.p2align 4,,7
.L140:
.LBE55:
.LBE53:
	.loc 2 95 0
	movw	%cx, (%r8)
	.loc 2 171 0
	addq	$16, %rsi
	decl	%edx
	cmpl	$-1, %edx
	jne	.L147
.L145:
	rep ; ret
.LFE118:
	.size	clip_natural_int16_t_from_mono, .-clip_natural_int16_t_from_mono
	.p2align 4,,15
	.type	conv_swap_int16_t_to_stereo, @function
conv_swap_int16_t_to_stereo:
.LFB121:
	.loc 2 113 0
	.loc 2 127 0
	decl	%edx
	cmpl	$-1, %edx
	je	.L161
	.p2align 4,,7
.L163:
.LBB56:
	.loc 2 85 0
	movzwl	(%rsi), %eax
	addq	$2, %rsi
.LBB57:
	.file 3 "./bswap.h"
	.loc 3 47 0
#APP
	rorw $8, %ax
	.loc 2 86 0
#NO_APP
	movswq	%ax,%rax
	salq	$16, %rax
.LBE57:
.LBE56:
	.loc 2 85 0
	movq	%rax, (%rdi)
.LBB58:
	movzwl	(%rsi), %eax
	addq	$2, %rsi
.LBB59:
	.loc 3 47 0
#APP
	rorw $8, %ax
	.loc 2 86 0
#NO_APP
	movswq	%ax,%rax
	salq	$16, %rax
.LBE59:
.LBE58:
	.loc 2 85 0
	movq	%rax, 8(%rdi)
	.loc 2 127 0
	addq	$16, %rdi
	decl	%edx
	cmpl	$-1, %edx
	jne	.L163
.L161:
	rep ; ret
.LFE121:
	.size	conv_swap_int16_t_to_stereo, .-conv_swap_int16_t_to_stereo
	.p2align 4,,15
	.type	conv_swap_int16_t_to_mono, @function
conv_swap_int16_t_to_mono:
.LFB122:
	.loc 2 133 0
	.loc 2 148 0
	decl	%edx
	cmpl	$-1, %edx
	je	.L173
	.p2align 4,,7
.L175:
.LBB60:
	.loc 2 85 0
	movzwl	(%rsi), %eax
.LBE60:
	.loc 2 148 0
	addq	$2, %rsi
.LBB61:
.LBB62:
	.loc 3 47 0
#APP
	rorw $8, %ax
	.loc 2 86 0
#NO_APP
	movswq	%ax,%rax
	salq	$16, %rax
.LBE62:
.LBE61:
	.loc 2 85 0
	movq	%rax, (%rdi)
	.loc 2 146 0
	movq	%rax, 8(%rdi)
	.loc 2 147 0
	addq	$16, %rdi
	.loc 2 148 0
	decl	%edx
	cmpl	$-1, %edx
	jne	.L175
.L173:
	rep ; ret
.LFE122:
	.size	conv_swap_int16_t_to_mono, .-conv_swap_int16_t_to_mono
	.p2align 4,,15
	.type	clip_swap_int16_t_from_stereo, @function
clip_swap_int16_t_from_stereo:
.LFB123:
	.loc 2 154 0
	.loc 2 160 0
	decl	%edx
	cmpl	$-1, %edx
	je	.L195
	.p2align 4,,7
.L198:
.LBB63:
	.loc 2 95 0
	movq	(%rsi), %rax
	movq	%rdi, %r8
	addq	$2, %rdi
.LBB64:
	.loc 2 97 0
	movl	$32767, %ecx
	.loc 2 96 0
	cmpq	$2130706431, %rax
	jle	.L197
.L180:
.LBE64:
.LBE63:
	.loc 2 95 0
	movw	%cx, (%r8)
.LBB65:
	movq	8(%rsi), %rax
	movq	%rdi, %r8
.LBB66:
	.loc 2 97 0
	movl	$32767, %ecx
.LBE66:
	.loc 2 95 0
	leaq	2(%rdi), %rdi
.LBB67:
	.loc 2 96 0
	cmpq	$2130706431, %rax
	jg	.L187
	.loc 2 99 0
	cmpq	$-2147483648, %rax
	.loc 2 100 0
	movl	$-32768, %ecx
	.loc 2 99 0
	jl	.L187
.LBB68:
	.loc 3 47 0
	shrq	$16, %rax
.LBB69:
.LBB70:
	.loc 3 48 0
#APP
	rorw $8, %ax
#NO_APP
.LBE70:
.LBE69:
.LBE68:
	.loc 3 47 0
	movswl	%ax,%ecx
	.p2align 4,,7
.L187:
.LBE67:
.LBE65:
	.loc 2 95 0
	movw	%cx, (%r8)
	.loc 2 160 0
	addq	$16, %rsi
	decl	%edx
	cmpl	$-1, %edx
	jne	.L198
.L195:
	rep ; ret
	.p2align 4,,7
.L197:
.LBB71:
.LBB72:
	.loc 2 99 0
	cmpq	$-2147483648, %rax
	.loc 2 100 0
	movl	$-32768, %ecx
	.loc 2 99 0
	jl	.L180
.LBB73:
	.loc 3 47 0
	shrq	$16, %rax
.LBB74:
.LBB75:
	.loc 3 48 0
#APP
	rorw $8, %ax
#NO_APP
.LBE75:
.LBE74:
.LBE73:
	.loc 3 47 0
	movswl	%ax,%ecx
	jmp	.L180
.LBE72:
.LBE71:
.LFE123:
	.size	clip_swap_int16_t_from_stereo, .-clip_swap_int16_t_from_stereo
	.p2align 4,,15
	.type	clip_swap_int16_t_from_mono, @function
clip_swap_int16_t_from_mono:
.LFB124:
	.loc 2 166 0
	.loc 2 171 0
	decl	%edx
	cmpl	$-1, %edx
	je	.L211
	.p2align 4,,7
.L213:
.LBB76:
	.loc 2 95 0
	movq	8(%rsi), %rax
	addq	(%rsi), %rax
	movq	%rdi, %r8
.LBB77:
	.loc 2 97 0
	movl	$32767, %ecx
.LBE77:
	.loc 2 95 0
	leaq	2(%rdi), %rdi
.LBB78:
	.loc 2 96 0
	cmpq	$2130706431, %rax
	jg	.L203
	.loc 2 99 0
	cmpq	$-2147483648, %rax
	.loc 2 100 0
	movl	$-32768, %ecx
	.loc 2 99 0
	jl	.L203
.LBB79:
	.loc 3 47 0
	shrq	$16, %rax
.LBB80:
.LBB81:
	.loc 3 48 0
#APP
	rorw $8, %ax
#NO_APP
.LBE81:
.LBE80:
.LBE79:
	.loc 3 47 0
	movswl	%ax,%ecx
	.p2align 4,,7
.L203:
.LBE78:
.LBE76:
	.loc 2 95 0
	movw	%cx, (%r8)
	.loc 2 171 0
	addq	$16, %rsi
	decl	%edx
	cmpl	$-1, %edx
	jne	.L213
.L211:
	rep ; ret
.LFE124:
	.size	clip_swap_int16_t_from_mono, .-clip_swap_int16_t_from_mono
	.p2align 4,,15
	.type	conv_natural_uint16_t_to_stereo, @function
conv_natural_uint16_t_to_stereo:
.LFB127:
	.loc 2 113 0
	.loc 2 127 0
	decl	%edx
	cmpl	$-1, %edx
	je	.L221
	.p2align 4,,7
.L223:
.LBB82:
	.loc 2 85 0
	movzwq	(%rsi), %rax
	addq	$2, %rsi
.LBB83:
	.loc 2 86 0
	subq	$32767, %rax
	salq	$16, %rax
.LBE83:
.LBE82:
	.loc 2 85 0
	movq	%rax, (%rdi)
.LBB84:
	movzwq	(%rsi), %rax
	addq	$2, %rsi
.LBB85:
	.loc 2 86 0
	subq	$32767, %rax
	salq	$16, %rax
.LBE85:
.LBE84:
	.loc 2 85 0
	movq	%rax, 8(%rdi)
	.loc 2 127 0
	addq	$16, %rdi
	decl	%edx
	cmpl	$-1, %edx
	jne	.L223
.L221:
	rep ; ret
.LFE127:
	.size	conv_natural_uint16_t_to_stereo, .-conv_natural_uint16_t_to_stereo
	.p2align 4,,15
	.type	conv_natural_uint16_t_to_mono, @function
conv_natural_uint16_t_to_mono:
.LFB128:
	.loc 2 133 0
	.loc 2 148 0
	decl	%edx
	cmpl	$-1, %edx
	je	.L230
	.p2align 4,,7
.L232:
.LBB86:
.LBB87:
	.loc 2 86 0
	movzwq	(%rsi), %rax
.LBE87:
.LBE86:
	.loc 2 148 0
	addq	$2, %rsi
.LBB88:
.LBB89:
	.loc 2 86 0
	subq	$32767, %rax
	salq	$16, %rax
.LBE89:
.LBE88:
	.loc 2 85 0
	movq	%rax, (%rdi)
	.loc 2 146 0
	movq	%rax, 8(%rdi)
	.loc 2 147 0
	addq	$16, %rdi
	.loc 2 148 0
	decl	%edx
	cmpl	$-1, %edx
	jne	.L232
.L230:
	rep ; ret
.LFE128:
	.size	conv_natural_uint16_t_to_mono, .-conv_natural_uint16_t_to_mono
	.p2align 4,,15
	.type	clip_natural_uint16_t_from_stereo, @function
clip_natural_uint16_t_from_stereo:
.LFB129:
	.loc 2 154 0
	.loc 2 160 0
	decl	%edx
	cmpl	$-1, %edx
	je	.L246
	.p2align 4,,7
.L249:
.LBB90:
	.loc 2 95 0
	movq	(%rsi), %rax
	movq	%rdi, %r8
	addq	$2, %rdi
.LBB91:
	.loc 2 97 0
	movl	$65535, %ecx
	.loc 2 96 0
	cmpq	$2130706431, %rax
	jle	.L248
.L237:
.LBE91:
.LBE90:
	.loc 2 95 0
	movw	%cx, (%r8)
.LBB92:
	movq	8(%rsi), %rax
	movq	%rdi, %r8
.LBB93:
	.loc 2 97 0
	movl	$65535, %ecx
.LBE93:
	.loc 2 95 0
	leaq	2(%rdi), %rdi
.LBB94:
	.loc 2 96 0
	cmpq	$2130706431, %rax
	jg	.L241
	.loc 2 100 0
	xorw	%cx, %cx
	.loc 2 99 0
	cmpq	$-2147483648, %rax
	jl	.L241
	.loc 2 101 0
	sarq	$16, %rax
	addw	$32767, %ax
	movzwl	%ax, %ecx
	.p2align 4,,7
.L241:
.LBE94:
.LBE92:
	.loc 2 95 0
	movw	%cx, (%r8)
	.loc 2 160 0
	addq	$16, %rsi
	decl	%edx
	cmpl	$-1, %edx
	jne	.L249
.L246:
	rep ; ret
	.p2align 4,,7
.L248:
.LBB95:
.LBB96:
	.loc 2 100 0
	xorw	%cx, %cx
	.loc 2 99 0
	cmpq	$-2147483648, %rax
	jl	.L237
	.loc 2 101 0
	sarq	$16, %rax
	addw	$32767, %ax
	movzwl	%ax, %ecx
	jmp	.L237
.LBE96:
.LBE95:
.LFE129:
	.size	clip_natural_uint16_t_from_stereo, .-clip_natural_uint16_t_from_stereo
	.p2align 4,,15
	.type	clip_natural_uint16_t_from_mono, @function
clip_natural_uint16_t_from_mono:
.LFB130:
	.loc 2 166 0
	.loc 2 171 0
	decl	%edx
	cmpl	$-1, %edx
	je	.L259
	.p2align 4,,7
.L261:
.LBB97:
	.loc 2 95 0
	movq	8(%rsi), %rax
	addq	(%rsi), %rax
	movq	%rdi, %r8
.LBB98:
	.loc 2 97 0
	movl	$65535, %ecx
.LBE98:
	.loc 2 95 0
	leaq	2(%rdi), %rdi
.LBB99:
	.loc 2 96 0
	cmpq	$2130706431, %rax
	jg	.L254
	.loc 2 100 0
	xorw	%cx, %cx
	.loc 2 99 0
	cmpq	$-2147483648, %rax
	jl	.L254
	.loc 2 101 0
	sarq	$16, %rax
	addw	$32767, %ax
	movzwl	%ax, %ecx
	.p2align 4,,7
.L254:
.LBE99:
.LBE97:
	.loc 2 95 0
	movw	%cx, (%r8)
	.loc 2 171 0
	addq	$16, %rsi
	decl	%edx
	cmpl	$-1, %edx
	jne	.L261
.L259:
	rep ; ret
.LFE130:
	.size	clip_natural_uint16_t_from_mono, .-clip_natural_uint16_t_from_mono
	.p2align 4,,15
	.type	conv_swap_uint16_t_to_stereo, @function
conv_swap_uint16_t_to_stereo:
.LFB133:
	.loc 2 113 0
	.loc 2 127 0
	decl	%edx
	cmpl	$-1, %edx
	je	.L275
	.p2align 4,,7
.L277:
.LBB100:
	.loc 2 85 0
	movzwl	(%rsi), %eax
	addq	$2, %rsi
.LBB101:
	.loc 3 47 0
#APP
	rorw $8, %ax
	.loc 2 86 0
#NO_APP
	movzwl	%ax, %eax 
	subq	$32767, %rax
	salq	$16, %rax
.LBE101:
.LBE100:
	.loc 2 85 0
	movq	%rax, (%rdi)
.LBB102:
	movzwl	(%rsi), %eax
	addq	$2, %rsi
.LBB103:
	.loc 3 47 0
#APP
	rorw $8, %ax
	.loc 2 86 0
#NO_APP
	movzwl	%ax, %eax 
	subq	$32767, %rax
	salq	$16, %rax
.LBE103:
.LBE102:
	.loc 2 85 0
	movq	%rax, 8(%rdi)
	.loc 2 127 0
	addq	$16, %rdi
	decl	%edx
	cmpl	$-1, %edx
	jne	.L277
.L275:
	rep ; ret
.LFE133:
	.size	conv_swap_uint16_t_to_stereo, .-conv_swap_uint16_t_to_stereo
	.p2align 4,,15
	.type	conv_swap_uint16_t_to_mono, @function
conv_swap_uint16_t_to_mono:
.LFB134:
	.loc 2 133 0
	.loc 2 148 0
	decl	%edx
	cmpl	$-1, %edx
	je	.L287
	.p2align 4,,7
.L289:
.LBB104:
	.loc 2 85 0
	movzwl	(%rsi), %eax
.LBE104:
	.loc 2 148 0
	addq	$2, %rsi
.LBB105:
.LBB106:
	.loc 3 47 0
#APP
	rorw $8, %ax
	.loc 2 86 0
#NO_APP
	movzwl	%ax, %eax 
	subq	$32767, %rax
	salq	$16, %rax
.LBE106:
.LBE105:
	.loc 2 85 0
	movq	%rax, (%rdi)
	.loc 2 146 0
	movq	%rax, 8(%rdi)
	.loc 2 147 0
	addq	$16, %rdi
	.loc 2 148 0
	decl	%edx
	cmpl	$-1, %edx
	jne	.L289
.L287:
	rep ; ret
.LFE134:
	.size	conv_swap_uint16_t_to_mono, .-conv_swap_uint16_t_to_mono
	.p2align 4,,15
	.type	clip_swap_uint16_t_from_stereo, @function
clip_swap_uint16_t_from_stereo:
.LFB135:
	.loc 2 154 0
	.loc 2 160 0
	decl	%edx
	cmpl	$-1, %edx
	je	.L309
	.p2align 4,,7
.L312:
.LBB107:
	.loc 2 95 0
	movq	(%rsi), %rax
	movq	%rdi, %r8
	addq	$2, %rdi
.LBB108:
	.loc 2 97 0
	movl	$65535, %ecx
	.loc 2 96 0
	cmpq	$2130706431, %rax
	jle	.L311
.L294:
.LBE108:
.LBE107:
	.loc 2 95 0
	movw	%cx, (%r8)
.LBB109:
	movq	8(%rsi), %rax
	movq	%rdi, %r8
.LBB110:
	.loc 2 97 0
	movl	$65535, %ecx
.LBE110:
	.loc 2 95 0
	leaq	2(%rdi), %rdi
.LBB111:
	.loc 2 96 0
	cmpq	$2130706431, %rax
	jg	.L301
	.loc 2 100 0
	xorw	%cx, %cx
	.loc 2 99 0
	cmpq	$-2147483648, %rax
	jl	.L301
.LBB112:
	.loc 3 47 0
	sarq	$16, %rax
	addw	$32767, %ax
.LBB113:
.LBB114:
	.loc 3 48 0
#APP
	rorw $8, %ax
#NO_APP
.LBE114:
.LBE113:
.LBE112:
	.loc 3 47 0
	movzwl	%ax, %ecx
	.p2align 4,,7
.L301:
.LBE111:
.LBE109:
	.loc 2 95 0
	movw	%cx, (%r8)
	.loc 2 160 0
	addq	$16, %rsi
	decl	%edx
	cmpl	$-1, %edx
	jne	.L312
.L309:
	rep ; ret
	.p2align 4,,7
.L311:
.LBB115:
.LBB116:
	.loc 2 100 0
	xorw	%cx, %cx
	.loc 2 99 0
	cmpq	$-2147483648, %rax
	jl	.L294
.LBB117:
	.loc 3 47 0
	sarq	$16, %rax
	addw	$32767, %ax
.LBB118:
.LBB119:
	.loc 3 48 0
#APP
	rorw $8, %ax
#NO_APP
.LBE119:
.LBE118:
.LBE117:
	.loc 3 47 0
	movzwl	%ax, %ecx
	jmp	.L294
.LBE116:
.LBE115:
.LFE135:
	.size	clip_swap_uint16_t_from_stereo, .-clip_swap_uint16_t_from_stereo
	.p2align 4,,15
	.type	clip_swap_uint16_t_from_mono, @function
clip_swap_uint16_t_from_mono:
.LFB136:
	.loc 2 166 0
	.loc 2 171 0
	decl	%edx
	cmpl	$-1, %edx
	je	.L325
	.p2align 4,,7
.L327:
.LBB120:
	.loc 2 95 0
	movq	8(%rsi), %rax
	addq	(%rsi), %rax
	movq	%rdi, %r8
.LBB121:
	.loc 2 97 0
	movl	$65535, %ecx
.LBE121:
	.loc 2 95 0
	leaq	2(%rdi), %rdi
.LBB122:
	.loc 2 96 0
	cmpq	$2130706431, %rax
	jg	.L317
	.loc 2 100 0
	xorw	%cx, %cx
	.loc 2 99 0
	cmpq	$-2147483648, %rax
	jl	.L317
.LBB123:
	.loc 3 47 0
	sarq	$16, %rax
	addw	$32767, %ax
.LBB124:
.LBB125:
	.loc 3 48 0
#APP
	rorw $8, %ax
#NO_APP
.LBE125:
.LBE124:
.LBE123:
	.loc 3 47 0
	movzwl	%ax, %ecx
	.p2align 4,,7
.L317:
.LBE122:
.LBE120:
	.loc 2 95 0
	movw	%cx, (%r8)
	.loc 2 171 0
	addq	$16, %rsi
	decl	%edx
	cmpl	$-1, %edx
	jne	.L327
.L325:
	rep ; ret
.LFE136:
	.size	clip_swap_uint16_t_from_mono, .-clip_swap_uint16_t_from_mono
	.p2align 4,,15
	.type	conv_natural_int32_t_to_stereo, @function
conv_natural_int32_t_to_stereo:
.LFB139:
	.loc 2 113 0
	.loc 2 127 0
	decl	%edx
	cmpl	$-1, %edx
	je	.L335
	.p2align 4,,7
.L337:
.LBB126:
	.loc 2 85 0
	movslq	(%rsi),%rax
	addq	$4, %rsi
.LBE126:
	movq	%rax, (%rdi)
.LBB127:
	movslq	(%rsi),%rax
	addq	$4, %rsi
.LBE127:
	movq	%rax, 8(%rdi)
	.loc 2 127 0
	addq	$16, %rdi
	decl	%edx
	cmpl	$-1, %edx
	jne	.L337
.L335:
	rep ; ret
.LFE139:
	.size	conv_natural_int32_t_to_stereo, .-conv_natural_int32_t_to_stereo
	.p2align 4,,15
	.type	conv_natural_int32_t_to_mono, @function
conv_natural_int32_t_to_mono:
.LFB140:
	.loc 2 133 0
	.loc 2 148 0
	decl	%edx
	cmpl	$-1, %edx
	je	.L344
	.p2align 4,,7
.L346:
.LBB128:
.LBB129:
	.loc 2 86 0
	movslq	(%rsi),%rax
.LBE129:
.LBE128:
	.loc 2 148 0
	addq	$4, %rsi
	.loc 2 85 0
	movq	%rax, (%rdi)
	.loc 2 146 0
	movq	%rax, 8(%rdi)
	.loc 2 147 0
	addq	$16, %rdi
	.loc 2 148 0
	decl	%edx
	cmpl	$-1, %edx
	jne	.L346
.L344:
	rep ; ret
.LFE140:
	.size	conv_natural_int32_t_to_mono, .-conv_natural_int32_t_to_mono
	.p2align 4,,15
	.type	clip_natural_int32_t_from_stereo, @function
clip_natural_int32_t_from_stereo:
.LFB141:
	.loc 2 154 0
	.loc 2 160 0
	decl	%edx
	cmpl	$-1, %edx
	je	.L360
	.p2align 4,,7
.L363:
.LBB130:
	.loc 2 95 0
	movq	(%rsi), %rax
	movq	%rdi, %r8
	addq	$4, %rdi
.LBB131:
	.loc 2 97 0
	movl	$2147483647, %ecx
	.loc 2 96 0
	cmpq	$2130706431, %rax
	jle	.L362
.L351:
.LBE131:
.LBE130:
	.loc 2 95 0
	movl	%ecx, (%r8)
.LBB132:
	movq	8(%rsi), %rax
	movq	%rdi, %r8
.LBB133:
	.loc 2 97 0
	movl	$2147483647, %ecx
.LBE133:
	.loc 2 95 0
	leaq	4(%rdi), %rdi
.LBB134:
	.loc 2 96 0
	cmpq	$2130706431, %rax
	jg	.L355
	.loc 2 100 0
	movl	$-2147483648, %ecx
	cmpq	$-2147483648, %rax
	cmovge	%eax, %ecx
.L355:
.LBE134:
.LBE132:
	.loc 2 95 0
	movl	%ecx, (%r8)
	.loc 2 160 0
	addq	$16, %rsi
	decl	%edx
	cmpl	$-1, %edx
	jne	.L363
.L360:
	rep ; ret
	.p2align 4,,7
.L362:
.LBB135:
.LBB136:
	.loc 2 100 0
	movl	$-2147483648, %ecx
	cmpq	$-2147483648, %rax
	cmovge	%eax, %ecx
	jmp	.L351
.LBE136:
.LBE135:
.LFE141:
	.size	clip_natural_int32_t_from_stereo, .-clip_natural_int32_t_from_stereo
	.p2align 4,,15
	.type	clip_natural_int32_t_from_mono, @function
clip_natural_int32_t_from_mono:
.LFB142:
	.loc 2 166 0
	.loc 2 171 0
	decl	%edx
	cmpl	$-1, %edx
	je	.L373
	.p2align 4,,7
.L375:
.LBB137:
	.loc 2 95 0
	movq	8(%rsi), %rax
	addq	(%rsi), %rax
	movq	%rdi, %r8
.LBB138:
	.loc 2 97 0
	movl	$2147483647, %ecx
.LBE138:
	.loc 2 95 0
	leaq	4(%rdi), %rdi
.LBB139:
	.loc 2 96 0
	cmpq	$2130706431, %rax
	jg	.L368
	.loc 2 100 0
	movl	$-2147483648, %ecx
	cmpq	$-2147483648, %rax
	cmovge	%eax, %ecx
.L368:
.LBE139:
.LBE137:
	.loc 2 95 0
	movl	%ecx, (%r8)
	.loc 2 171 0
	addq	$16, %rsi
	decl	%edx
	cmpl	$-1, %edx
	jne	.L375
.L373:
	rep ; ret
.LFE142:
	.size	clip_natural_int32_t_from_mono, .-clip_natural_int32_t_from_mono
	.p2align 4,,15
	.type	conv_swap_int32_t_to_stereo, @function
conv_swap_int32_t_to_stereo:
.LFB145:
	.loc 2 113 0
	.loc 2 127 0
	decl	%edx
	cmpl	$-1, %edx
	je	.L389
	.p2align 4,,7
.L391:
.LBB140:
	.loc 2 85 0
	movl	(%rsi), %eax
	addq	$4, %rsi
.LBB141:
.LBB142:
.LBB143:
.LBB144:
	.loc 3 53 0
#APP
	bswap %eax
#NO_APP
.LBE144:
.LBE143:
.LBE142:
	.loc 2 86 0
	cltq
.LBE141:
.LBE140:
	.loc 2 85 0
	movq	%rax, (%rdi)
.LBB145:
	movl	(%rsi), %eax
	addq	$4, %rsi
.LBB146:
.LBB147:
.LBB148:
.LBB149:
	.loc 3 53 0
#APP
	bswap %eax
#NO_APP
.LBE149:
.LBE148:
.LBE147:
	.loc 2 86 0
	cltq
.LBE146:
.LBE145:
	.loc 2 85 0
	movq	%rax, 8(%rdi)
	.loc 2 127 0
	addq	$16, %rdi
	decl	%edx
	cmpl	$-1, %edx
	jne	.L391
.L389:
	rep ; ret
.LFE145:
	.size	conv_swap_int32_t_to_stereo, .-conv_swap_int32_t_to_stereo
	.p2align 4,,15
	.type	conv_swap_int32_t_to_mono, @function
conv_swap_int32_t_to_mono:
.LFB146:
	.loc 2 133 0
	.loc 2 148 0
	decl	%edx
	cmpl	$-1, %edx
	je	.L401
	.p2align 4,,7
.L403:
.LBB150:
	.loc 2 85 0
	movl	(%rsi), %eax
.LBE150:
	.loc 2 148 0
	addq	$4, %rsi
.LBB151:
.LBB152:
.LBB153:
.LBB154:
.LBB155:
	.loc 3 53 0
#APP
	bswap %eax
#NO_APP
.LBE155:
.LBE154:
.LBE153:
	.loc 2 86 0
	cltq
.LBE152:
.LBE151:
	.loc 2 85 0
	movq	%rax, (%rdi)
	.loc 2 146 0
	movq	%rax, 8(%rdi)
	.loc 2 147 0
	addq	$16, %rdi
	.loc 2 148 0
	decl	%edx
	cmpl	$-1, %edx
	jne	.L403
.L401:
	rep ; ret
.LFE146:
	.size	conv_swap_int32_t_to_mono, .-conv_swap_int32_t_to_mono
	.p2align 4,,15
	.type	clip_swap_int32_t_from_stereo, @function
clip_swap_int32_t_from_stereo:
.LFB147:
	.loc 2 154 0
	.loc 2 160 0
	decl	%edx
	cmpl	$-1, %edx
	je	.L423
	.p2align 4,,7
.L426:
.LBB156:
	.loc 2 95 0
	movq	(%rsi), %rax
	movq	%rdi, %r8
	addq	$4, %rdi
.LBB157:
	.loc 2 97 0
	movl	$2147483647, %ecx
	.loc 2 96 0
	cmpq	$2130706431, %rax
	jle	.L425
.L408:
.LBE157:
.LBE156:
	.loc 2 95 0
	movl	%ecx, (%r8)
.LBB158:
	movq	8(%rsi), %rax
	movq	%rdi, %r8
.LBB159:
	.loc 2 97 0
	movl	$2147483647, %ecx
.LBE159:
	.loc 2 95 0
	leaq	4(%rdi), %rdi
.LBB160:
	.loc 2 96 0
	cmpq	$2130706431, %rax
	jg	.L415
	.loc 2 99 0
	cmpq	$-2147483648, %rax
	.loc 2 100 0
	movl	$-2147483648, %ecx
	.loc 2 99 0
	jl	.L415
	.loc 3 52 0
	movl	%eax, %ecx
#APP
	bswap %ecx
	.p2align 4,,7
#NO_APP
.L415:
.LBE160:
.LBE158:
	.loc 2 95 0
	movl	%ecx, (%r8)
	.loc 2 160 0
	addq	$16, %rsi
	decl	%edx
	cmpl	$-1, %edx
	jne	.L426
.L423:
	rep ; ret
	.p2align 4,,7
.L425:
.LBB161:
.LBB162:
	.loc 2 99 0
	cmpq	$-2147483648, %rax
	.loc 2 100 0
	movl	$-2147483648, %ecx
	.loc 2 99 0
	jl	.L408
	.loc 3 52 0
	movl	%eax, %ecx
#APP
	bswap %ecx
#NO_APP
	jmp	.L408
.LBE162:
.LBE161:
.LFE147:
	.size	clip_swap_int32_t_from_stereo, .-clip_swap_int32_t_from_stereo
	.p2align 4,,15
	.type	clip_swap_int32_t_from_mono, @function
clip_swap_int32_t_from_mono:
.LFB148:
	.loc 2 166 0
	.loc 2 171 0
	decl	%edx
	cmpl	$-1, %edx
	je	.L439
	.p2align 4,,7
.L441:
.LBB163:
	.loc 2 95 0
	movq	8(%rsi), %rax
	addq	(%rsi), %rax
	movq	%rdi, %r8
.LBB164:
	.loc 2 97 0
	movl	$2147483647, %ecx
.LBE164:
	.loc 2 95 0
	leaq	4(%rdi), %rdi
.LBB165:
	.loc 2 96 0
	cmpq	$2130706431, %rax
	jg	.L431
	.loc 2 99 0
	cmpq	$-2147483648, %rax
	.loc 2 100 0
	movl	$-2147483648, %ecx
	.loc 2 99 0
	jl	.L431
	.loc 3 52 0
	movl	%eax, %ecx
#APP
	bswap %ecx
	.p2align 4,,7
#NO_APP
.L431:
.LBE165:
.LBE163:
	.loc 2 95 0
	movl	%ecx, (%r8)
	.loc 2 171 0
	addq	$16, %rsi
	decl	%edx
	cmpl	$-1, %edx
	jne	.L441
.L439:
	rep ; ret
.LFE148:
	.size	clip_swap_int32_t_from_mono, .-clip_swap_int32_t_from_mono
	.p2align 4,,15
	.type	conv_natural_uint32_t_to_stereo, @function
conv_natural_uint32_t_to_stereo:
.LFB151:
	.loc 2 113 0
	.loc 2 127 0
	decl	%edx
	cmpl	$-1, %edx
	je	.L449
	.p2align 4,,7
.L451:
.LBB166:
	.loc 2 85 0
	mov	(%rsi), %eax
	addq	$4, %rsi
.LBB167:
	.loc 2 86 0
	subq	$2147483647, %rax
.LBE167:
.LBE166:
	.loc 2 85 0
	movq	%rax, (%rdi)
.LBB168:
	mov	(%rsi), %eax
	addq	$4, %rsi
.LBB169:
	.loc 2 86 0
	subq	$2147483647, %rax
.LBE169:
.LBE168:
	.loc 2 85 0
	movq	%rax, 8(%rdi)
	.loc 2 127 0
	addq	$16, %rdi
	decl	%edx
	cmpl	$-1, %edx
	jne	.L451
.L449:
	rep ; ret
.LFE151:
	.size	conv_natural_uint32_t_to_stereo, .-conv_natural_uint32_t_to_stereo
	.p2align 4,,15
	.type	conv_natural_uint32_t_to_mono, @function
conv_natural_uint32_t_to_mono:
.LFB152:
	.loc 2 133 0
	.loc 2 148 0
	decl	%edx
	cmpl	$-1, %edx
	je	.L458
	.p2align 4,,7
.L460:
.LBB170:
.LBB171:
	.loc 2 86 0
	mov	(%rsi), %eax
.LBE171:
.LBE170:
	.loc 2 148 0
	addq	$4, %rsi
.LBB172:
.LBB173:
	.loc 2 86 0
	subq	$2147483647, %rax
.LBE173:
.LBE172:
	.loc 2 85 0
	movq	%rax, (%rdi)
	.loc 2 146 0
	movq	%rax, 8(%rdi)
	.loc 2 147 0
	addq	$16, %rdi
	.loc 2 148 0
	decl	%edx
	cmpl	$-1, %edx
	jne	.L460
.L458:
	rep ; ret
.LFE152:
	.size	conv_natural_uint32_t_to_mono, .-conv_natural_uint32_t_to_mono
	.p2align 4,,15
	.type	clip_natural_uint32_t_from_stereo, @function
clip_natural_uint32_t_from_stereo:
.LFB153:
	.loc 2 154 0
	.loc 2 160 0
	decl	%edx
	cmpl	$-1, %edx
	je	.L474
	.p2align 4,,7
.L477:
.LBB174:
	.loc 2 95 0
	movq	(%rsi), %rcx
	movq	%rdi, %r9
	addq	$4, %rdi
.LBB175:
	.loc 2 97 0
	movl	$-1, %r8d
	.loc 2 96 0
	cmpq	$2130706431, %rcx
	jle	.L476
.L465:
.LBE175:
.LBE174:
	.loc 2 95 0
	movl	%r8d, (%r9)
.LBB176:
	movq	8(%rsi), %rcx
	movq	%rdi, %r9
.LBB177:
	.loc 2 97 0
	movl	$-1, %r8d
.LBE177:
	.loc 2 95 0
	leaq	4(%rdi), %rdi
.LBB178:
	.loc 2 96 0
	cmpq	$2130706431, %rcx
	jg	.L469
	.loc 2 100 0
	leal	2147483647(%rcx), %eax
	xorl	%r8d, %r8d
	cmpq	$-2147483648, %rcx
	cmovge	%eax, %r8d
.L469:
.LBE178:
.LBE176:
	.loc 2 95 0
	movl	%r8d, (%r9)
	.loc 2 160 0
	addq	$16, %rsi
	decl	%edx
	cmpl	$-1, %edx
	jne	.L477
.L474:
	rep ; ret
	.p2align 4,,7
.L476:
.LBB179:
.LBB180:
	.loc 2 100 0
	leal	2147483647(%rcx), %eax
	xorl	%r8d, %r8d
	cmpq	$-2147483648, %rcx
	cmovge	%eax, %r8d
	jmp	.L465
.LBE180:
.LBE179:
.LFE153:
	.size	clip_natural_uint32_t_from_stereo, .-clip_natural_uint32_t_from_stereo
	.p2align 4,,15
	.type	clip_natural_uint32_t_from_mono, @function
clip_natural_uint32_t_from_mono:
.LFB154:
	.loc 2 166 0
	.loc 2 171 0
	decl	%edx
	cmpl	$-1, %edx
	je	.L487
	.p2align 4,,7
.L489:
.LBB181:
	.loc 2 95 0
	movq	8(%rsi), %rcx
	addq	(%rsi), %rcx
	movq	%rdi, %r9
.LBB182:
	.loc 2 97 0
	movl	$-1, %r8d
.LBE182:
	.loc 2 95 0
	leaq	4(%rdi), %rdi
.LBB183:
	.loc 2 96 0
	cmpq	$2130706431, %rcx
	jg	.L482
	.loc 2 100 0
	leal	2147483647(%rcx), %eax
	xorl	%r8d, %r8d
	cmpq	$-2147483648, %rcx
	cmovge	%eax, %r8d
.L482:
.LBE183:
.LBE181:
	.loc 2 95 0
	movl	%r8d, (%r9)
	.loc 2 171 0
	addq	$16, %rsi
	decl	%edx
	cmpl	$-1, %edx
	jne	.L489
.L487:
	rep ; ret
.LFE154:
	.size	clip_natural_uint32_t_from_mono, .-clip_natural_uint32_t_from_mono
	.p2align 4,,15
	.type	conv_swap_uint32_t_to_stereo, @function
conv_swap_uint32_t_to_stereo:
.LFB157:
	.loc 2 113 0
	.loc 2 127 0
	decl	%edx
	cmpl	$-1, %edx
	je	.L503
	.p2align 4,,7
.L505:
.LBB184:
	.loc 2 85 0
	movl	(%rsi), %eax
	addq	$4, %rsi
.LBB185:
.LBB186:
.LBB187:
.LBB188:
	.loc 3 53 0
#APP
	bswap %eax
#NO_APP
.LBE188:
.LBE187:
.LBE186:
	.loc 2 86 0
	mov	%eax, %eax
	subq	$2147483647, %rax
.LBE185:
.LBE184:
	.loc 2 85 0
	movq	%rax, (%rdi)
.LBB189:
	movl	(%rsi), %eax
	addq	$4, %rsi
.LBB190:
.LBB191:
.LBB192:
.LBB193:
	.loc 3 53 0
#APP
	bswap %eax
#NO_APP
.LBE193:
.LBE192:
.LBE191:
	.loc 2 86 0
	mov	%eax, %eax
	subq	$2147483647, %rax
.LBE190:
.LBE189:
	.loc 2 85 0
	movq	%rax, 8(%rdi)
	.loc 2 127 0
	addq	$16, %rdi
	decl	%edx
	cmpl	$-1, %edx
	jne	.L505
.L503:
	rep ; ret
.LFE157:
	.size	conv_swap_uint32_t_to_stereo, .-conv_swap_uint32_t_to_stereo
	.p2align 4,,15
	.type	conv_swap_uint32_t_to_mono, @function
conv_swap_uint32_t_to_mono:
.LFB158:
	.loc 2 133 0
	.loc 2 148 0
	decl	%edx
	cmpl	$-1, %edx
	je	.L515
	.p2align 4,,7
.L517:
.LBB194:
	.loc 2 85 0
	movl	(%rsi), %eax
.LBE194:
	.loc 2 148 0
	addq	$4, %rsi
.LBB195:
.LBB196:
.LBB197:
.LBB198:
.LBB199:
	.loc 3 53 0
#APP
	bswap %eax
#NO_APP
.LBE199:
.LBE198:
.LBE197:
	.loc 2 86 0
	mov	%eax, %eax
	subq	$2147483647, %rax
.LBE196:
.LBE195:
	.loc 2 85 0
	movq	%rax, (%rdi)
	.loc 2 146 0
	movq	%rax, 8(%rdi)
	.loc 2 147 0
	addq	$16, %rdi
	.loc 2 148 0
	decl	%edx
	cmpl	$-1, %edx
	jne	.L517
.L515:
	rep ; ret
.LFE158:
	.size	conv_swap_uint32_t_to_mono, .-conv_swap_uint32_t_to_mono
	.p2align 4,,15
	.type	clip_swap_uint32_t_from_stereo, @function
clip_swap_uint32_t_from_stereo:
.LFB159:
	.loc 2 154 0
	.loc 2 160 0
	decl	%edx
	cmpl	$-1, %edx
	je	.L537
	.p2align 4,,7
.L540:
.LBB200:
	.loc 2 95 0
	movq	(%rsi), %rax
	movq	%rdi, %r8
	addq	$4, %rdi
.LBB201:
	.loc 2 97 0
	movl	$-1, %ecx
	.loc 2 96 0
	cmpq	$2130706431, %rax
	jle	.L539
.L522:
.LBE201:
.LBE200:
	.loc 2 95 0
	movl	%ecx, (%r8)
.LBB202:
	movq	8(%rsi), %rax
	movq	%rdi, %r8
.LBB203:
	.loc 2 97 0
	movl	$-1, %ecx
.LBE203:
	.loc 2 95 0
	leaq	4(%rdi), %rdi
.LBB204:
	.loc 2 96 0
	cmpq	$2130706431, %rax
	jg	.L529
	.loc 2 100 0
	xorl	%ecx, %ecx
	.loc 2 99 0
	cmpq	$-2147483648, %rax
	jl	.L529
.LBB205:
	.loc 3 52 0
	leal	2147483647(%rax), %ecx
.LBE205:
#APP
	bswap %ecx
	.p2align 4,,7
#NO_APP
.L529:
.LBE204:
.LBE202:
	.loc 2 95 0
	movl	%ecx, (%r8)
	.loc 2 160 0
	addq	$16, %rsi
	decl	%edx
	cmpl	$-1, %edx
	jne	.L540
.L537:
	rep ; ret
	.p2align 4,,7
.L539:
.LBB206:
.LBB207:
	.loc 2 100 0
	xorl	%ecx, %ecx
	.loc 2 99 0
	cmpq	$-2147483648, %rax
	jl	.L522
.LBB208:
	.loc 3 52 0
	leal	2147483647(%rax), %ecx
.LBE208:
#APP
	bswap %ecx
#NO_APP
	jmp	.L522
.LBE207:
.LBE206:
.LFE159:
	.size	clip_swap_uint32_t_from_stereo, .-clip_swap_uint32_t_from_stereo
	.p2align 4,,15
	.type	clip_swap_uint32_t_from_mono, @function
clip_swap_uint32_t_from_mono:
.LFB160:
	.loc 2 166 0
	.loc 2 171 0
	decl	%edx
	cmpl	$-1, %edx
	je	.L553
	.p2align 4,,7
.L555:
.LBB209:
	.loc 2 95 0
	movq	8(%rsi), %rax
	addq	(%rsi), %rax
	movq	%rdi, %r8
.LBB210:
	.loc 2 97 0
	movl	$-1, %ecx
.LBE210:
	.loc 2 95 0
	leaq	4(%rdi), %rdi
.LBB211:
	.loc 2 96 0
	cmpq	$2130706431, %rax
	jg	.L545
	.loc 2 100 0
	xorl	%ecx, %ecx
	.loc 2 99 0
	cmpq	$-2147483648, %rax
	jl	.L545
.LBB212:
	.loc 3 52 0
	leal	2147483647(%rax), %ecx
.LBE212:
#APP
	bswap %ecx
	.p2align 4,,7
#NO_APP
.L545:
.LBE211:
.LBE209:
	.loc 2 95 0
	movl	%ecx, (%r8)
	.loc 2 171 0
	addq	$16, %rsi
	decl	%edx
	cmpl	$-1, %edx
	jne	.L555
.L553:
	rep ; ret
.LFE160:
	.size	clip_swap_uint32_t_from_mono, .-clip_swap_uint32_t_from_mono
	.section	.rodata
	.type	__FUNCTION__.0, @object
	.size	__FUNCTION__.0, 14
__FUNCTION__.0:
	.string	"st_rate_start"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC1:
	.string	"Could not allocate resampler (%zu bytes)\n"
	.text
	.p2align 4,,15
.globl st_rate_start
	.type	st_rate_start, @function
st_rate_start:
.LFB161:
	.file 4 "audio/mixeng.c"
	.loc 4 302 0
	movq	%rbx, -16(%rsp)
.LCFI1:
	movq	%rbp, -8(%rsp)
.LCFI2:
	movl	%edi, %ebx
	subq	$24, %rsp
.LCFI3:
	.loc 4 302 0
	movl	%esi, %ebp
	.loc 4 303 0
	movl	$40, %edx
	movl	$1, %esi
	movl	$__FUNCTION__.0, %edi
	call	audio_calloc
	.loc 4 305 0
	testq	%rax, %rax
	.loc 4 303 0
	movq	%rax, %rcx
	.loc 4 305 0
	je	.L558
	.loc 4 313 0
	movslq	%ebp,%rdx
	.loc 4 310 0
	movq	$0, (%rax)
	.loc 4 313 0
	movq	%rbx, %rax
	salq	$32, %rax
	movq	%rdx, %rbx
	xorl	%edx, %edx
	divq	%rbx
	.loc 4 315 0
	movl	$0, 16(%rcx)
	.loc 4 316 0
	movq	$0, 24(%rcx)
	.loc 4 317 0
	movq	$0, 32(%rcx)
	.loc 4 313 0
	movq	%rax, 8(%rcx)
	.loc 4 318 0
	movq	%rcx, %rax
.L556:
	.loc 4 319 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	addq	$24, %rsp
	ret
.L558:
	.loc 4 306 0
	xorl	%eax, %eax
	movl	$40, %esi
	movl	$.LC1, %edi
	call	dolog
	.loc 4 307 0
	xorl	%eax, %eax
	jmp	.L556
.LFE161:
	.size	st_rate_start, .-st_rate_start
	.p2align 4,,15
.globl st_rate_flow_mix
	.type	st_rate_flow_mix, @function
st_rate_flow_mix:
.LFB162:
	.file 5 "audio/rate_template.h"
	.loc 5 32 0
	pushq	%r15
.LCFI4:
	movq	%rdx, %r10
	.loc 5 48 0
	movq	%rdx, %r15
	.loc 5 32 0
	movq	%rdi, %r11
	movq	%rsi, %r9
	pushq	%r14
.LCFI5:
	pushq	%r13
.LCFI6:
	movq	%r8, %r13
	pushq	%r12
.LCFI7:
	movq	%rcx, %r12
	pushq	%rbp
.LCFI8:
	pushq	%rbx
.LCFI9:
	.loc 5 43 0
	movq	24(%rdi), %r8
	movq	32(%rdi), %rbx
	.loc 5 45 0
	movq	%rsi, -64(%rsp)
	.loc 5 46 0
	movl	(%rcx), %ecx
	.loc 5 49 0
	movl	(%r13), %edx
	.loc 5 46 0
	movslq	%ecx,%rax
	salq	$4, %rax
	leaq	(%rax,%rsi), %rbp
	.loc 5 49 0
	movslq	%edx,%rax
	salq	$4, %rax
	leaq	(%rax,%r10), %r14
	.loc 5 51 0
	movabsq	$4294967296, %rax
	cmpq	%rax, 8(%rdi)
	je	.L583
	.loc 5 101 0
	cmpq	%r14, %r10
	jae	.L568
.L585:
	.loc 5 65 0
	cmpq	%rbp, %r9
	jae	.L568
	.loc 5 76 0
	movq	(%r11), %rsi
	movl	16(%r11), %edx
	movq	%rsi, %rcx
	mov	%edx, %eax
	shrq	$32, %rcx
	cmpq	%rcx, %rax
	ja	.L580
	.p2align 4,,7
.L584:
	.loc 5 72 0
	movq	%r9, %rax
	addq	$16, %r9
	movq	(%rax), %r8
	movq	8(%rax), %rbx
	.loc 5 73 0
	leal	1(%rdx), %eax
	.loc 5 75 0
	cmpq	%rbp, %r9
	.loc 5 73 0
	movl	%eax, 16(%r11)
	.loc 5 75 0
	jae	.L581
	.loc 5 76 0
	movl	%eax, %edx
	mov	%eax, %eax
	cmpq	%rcx, %rax
	jbe	.L584
.L580:
	.loc 5 80 0
	movq	(%r9), %rcx
	.loc 5 92 0
	andl	$4294967295, %esi
	.loc 5 93 0
	movl	$4294967295, %eax
	subq	%rsi, %rax
	movq	%r8, %rdx
	imulq	%rax, %rdx
	.loc 5 80 0
	movq	%rcx, -40(%rsp)
	movq	8(%r9), %rdi
	.loc 5 93 0
	imulq	%rsi, %rcx
	.loc 5 80 0
	movq	%rdi, -32(%rsp)
	.loc 5 94 0
	imulq	%rbx, %rax
	.loc 5 93 0
	addq	%rcx, %rdx
	.loc 5 94 0
	imulq	%rsi, %rdi
	.loc 5 93 0
	sarq	$32, %rdx
	movq	%rdx, -56(%rsp)
	.loc 5 98 0
	addq	%rdx, (%r10)
	.loc 5 94 0
	addq	%rdi, %rax
	sarq	$32, %rax
	movq	%rax, -48(%rsp)
	.loc 5 99 0
	addq	%rax, 8(%r10)
	.loc 5 100 0
	addq	$16, %r10
	.loc 5 101 0
	movq	8(%r11), %rax
	addq	%rax, (%r11)
	cmpq	%r14, %r10
	jb	.L585
.L568:
	movq	%r8, -24(%rsp)
	movq	%rbx, -16(%rsp)
.L573:
	.loc 5 105 0
	subq	-64(%rsp), %r9
	.loc 5 106 0
	subq	%r15, %r10
	sarq	$4, %r10
	.loc 5 105 0
	sarq	$4, %r9
	movl	%r9d, (%r12)
	.loc 5 106 0
	movl	%r10d, (%r13)
	.loc 5 107 0
	movq	%rbx, 32(%r11)
	movq	%r8, 24(%r11)
	.loc 5 108 0
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L583:
.LBB213:
	.loc 5 52 0
	cmpl	%edx, %ecx
	movl	%edx, %esi
	movq	%r8, -24(%rsp)
	cmovle	%ecx, %esi
	.loc 5 53 0
	xorl	%ecx, %ecx
	movq	%rbx, -16(%rsp)
	cmpl	%esi, %ecx
	jge	.L577
	xorl	%edx, %edx
	.p2align 4,,7
.L566:
	incl	%ecx
	.loc 5 54 0
	movq	(%rdx,%r9), %rax
	addq	%rax, (%rdx,%r10)
	.loc 5 55 0
	movq	8(%rdx,%r9), %rax
	addq	%rax, 8(%rdx,%r10)
	addq	$16, %rdx
	.loc 5 53 0
	cmpl	%esi, %ecx
	jl	.L566
.L577:
	.loc 5 57 0
	movl	%esi, (%r12)
	.loc 5 58 0
	movl	%esi, (%r13)
.LBE213:
	.loc 5 108 0
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L581:
	movq	%rbx, -16(%rsp)
	movq	%r8, -24(%rsp)
	jmp	.L573
.LFE162:
	.size	st_rate_flow_mix, .-st_rate_flow_mix
	.p2align 4,,15
.globl st_rate_flow
	.type	st_rate_flow, @function
st_rate_flow:
.LFB163:
	.loc 5 32 0
	pushq	%r15
.LCFI10:
	movq	%rdx, %r10
	.loc 5 48 0
	movq	%rdx, %r15
	.loc 5 32 0
	movq	%rdi, %r11
	movq	%rsi, %r9
	pushq	%r14
.LCFI11:
	pushq	%r13
.LCFI12:
	movq	%r8, %r13
	pushq	%r12
.LCFI13:
	movq	%rcx, %r12
	pushq	%rbp
.LCFI14:
	pushq	%rbx
.LCFI15:
	.loc 5 43 0
	movq	24(%rdi), %r8
	movq	32(%rdi), %rbx
	.loc 5 45 0
	movq	%rsi, -64(%rsp)
	.loc 5 46 0
	movl	(%rcx), %ecx
	.loc 5 49 0
	movl	(%r13), %edx
	.loc 5 46 0
	movslq	%ecx,%rax
	salq	$4, %rax
	leaq	(%rax,%rsi), %rbp
	.loc 5 49 0
	movslq	%edx,%rax
	salq	$4, %rax
	leaq	(%rax,%r10), %r14
	.loc 5 51 0
	movabsq	$4294967296, %rax
	cmpq	%rax, 8(%rdi)
	je	.L610
	.loc 5 101 0
	cmpq	%r14, %r10
	jae	.L595
.L612:
	.loc 5 65 0
	cmpq	%rbp, %r9
	jae	.L595
	.loc 5 76 0
	movq	(%r11), %rsi
	movl	16(%r11), %edx
	movq	%rsi, %rcx
	mov	%edx, %eax
	shrq	$32, %rcx
	cmpq	%rcx, %rax
	ja	.L607
	.p2align 4,,7
.L611:
	.loc 5 72 0
	movq	%r9, %rax
	addq	$16, %r9
	movq	(%rax), %r8
	movq	8(%rax), %rbx
	.loc 5 73 0
	leal	1(%rdx), %eax
	.loc 5 75 0
	cmpq	%rbp, %r9
	.loc 5 73 0
	movl	%eax, 16(%r11)
	.loc 5 75 0
	jae	.L608
	.loc 5 76 0
	movl	%eax, %edx
	mov	%eax, %eax
	cmpq	%rcx, %rax
	jbe	.L611
.L607:
	.loc 5 80 0
	movq	(%r9), %rcx
	.loc 5 92 0
	andl	$4294967295, %esi
	.loc 5 93 0
	movl	$4294967295, %eax
	subq	%rsi, %rax
	movq	%r8, %rdx
	imulq	%rax, %rdx
	.loc 5 80 0
	movq	%rcx, -40(%rsp)
	movq	8(%r9), %rdi
	.loc 5 93 0
	imulq	%rsi, %rcx
	.loc 5 80 0
	movq	%rdi, -32(%rsp)
	.loc 5 94 0
	imulq	%rbx, %rax
	.loc 5 93 0
	addq	%rcx, %rdx
	.loc 5 94 0
	imulq	%rsi, %rdi
	.loc 5 93 0
	sarq	$32, %rdx
	movq	%rdx, -56(%rsp)
	.loc 5 98 0
	movq	%rdx, (%r10)
	.loc 5 94 0
	addq	%rdi, %rax
	sarq	$32, %rax
	movq	%rax, -48(%rsp)
	.loc 5 99 0
	movq	%rax, 8(%r10)
	.loc 5 100 0
	addq	$16, %r10
	.loc 5 101 0
	movq	8(%r11), %rax
	addq	%rax, (%r11)
	cmpq	%r14, %r10
	jb	.L612
.L595:
	movq	%r8, -24(%rsp)
	movq	%rbx, -16(%rsp)
.L600:
	.loc 5 105 0
	subq	-64(%rsp), %r9
	.loc 5 106 0
	subq	%r15, %r10
	sarq	$4, %r10
	.loc 5 105 0
	sarq	$4, %r9
	movl	%r9d, (%r12)
	.loc 5 106 0
	movl	%r10d, (%r13)
	.loc 5 107 0
	movq	%rbx, 32(%r11)
	movq	%r8, 24(%r11)
	.loc 5 108 0
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L610:
.LBB214:
	.loc 5 52 0
	cmpl	%edx, %ecx
	movl	%edx, %esi
	movq	%r8, -24(%rsp)
	cmovle	%ecx, %esi
	.loc 5 53 0
	xorl	%ecx, %ecx
	movq	%rbx, -16(%rsp)
	cmpl	%esi, %ecx
	jge	.L604
	xorl	%edx, %edx
	.p2align 4,,7
.L593:
	.loc 5 54 0
	movq	(%rdx,%r9), %rax
	.loc 5 53 0
	incl	%ecx
	.loc 5 54 0
	movq	%rax, (%rdx,%r10)
	.loc 5 55 0
	movq	8(%rdx,%r9), %rax
	movq	%rax, 8(%rdx,%r10)
	addq	$16, %rdx
	.loc 5 53 0
	cmpl	%esi, %ecx
	jl	.L593
.L604:
	.loc 5 57 0
	movl	%esi, (%r12)
	.loc 5 58 0
	movl	%esi, (%r13)
.LBE214:
	.loc 5 108 0
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L608:
	movq	%rbx, -16(%rsp)
	movq	%r8, -24(%rsp)
	jmp	.L600
.LFE163:
	.size	st_rate_flow, .-st_rate_flow
	.p2align 4,,15
.globl st_rate_stop
	.type	st_rate_stop, @function
st_rate_stop:
.LFB164:
	.loc 4 330 0
	.loc 4 331 0
	jmp	qemu_free
.LFE164:
	.size	st_rate_stop, .-st_rate_stop
	.p2align 4,,15
.globl mixeng_clear
	.type	mixeng_clear, @function
mixeng_clear:
.LFB165:
	.loc 4 335 0
	.loc 4 336 0
	movslq	%esi,%rdx
	xorl	%esi, %esi
	salq	$4, %rdx
	jmp	memset
.LFE165:
	.size	mixeng_clear, .-mixeng_clear
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
	.uleb128 0xe0
	.align 8
.LEFDE0:
.LSFDE2:
	.long	.LEFDE2-.LASFDE2
.LASFDE2:
	.long	.Lframe0
	.quad	.LFB103
	.quad	.LFE103-.LFB103
	.align 8
.LEFDE2:
.LSFDE4:
	.long	.LEFDE4-.LASFDE4
.LASFDE4:
	.long	.Lframe0
	.quad	.LFB104
	.quad	.LFE104-.LFB104
	.align 8
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.quad	.LFB105
	.quad	.LFE105-.LFB105
	.align 8
.LEFDE6:
.LSFDE8:
	.long	.LEFDE8-.LASFDE8
.LASFDE8:
	.long	.Lframe0
	.quad	.LFB106
	.quad	.LFE106-.LFB106
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
	.quad	.LFB110
	.quad	.LFE110-.LFB110
	.align 8
.LEFDE12:
.LSFDE14:
	.long	.LEFDE14-.LASFDE14
.LASFDE14:
	.long	.Lframe0
	.quad	.LFB111
	.quad	.LFE111-.LFB111
	.align 8
.LEFDE14:
.LSFDE16:
	.long	.LEFDE16-.LASFDE16
.LASFDE16:
	.long	.Lframe0
	.quad	.LFB112
	.quad	.LFE112-.LFB112
	.align 8
.LEFDE16:
.LSFDE18:
	.long	.LEFDE18-.LASFDE18
.LASFDE18:
	.long	.Lframe0
	.quad	.LFB115
	.quad	.LFE115-.LFB115
	.align 8
.LEFDE18:
.LSFDE20:
	.long	.LEFDE20-.LASFDE20
.LASFDE20:
	.long	.Lframe0
	.quad	.LFB116
	.quad	.LFE116-.LFB116
	.align 8
.LEFDE20:
.LSFDE22:
	.long	.LEFDE22-.LASFDE22
.LASFDE22:
	.long	.Lframe0
	.quad	.LFB117
	.quad	.LFE117-.LFB117
	.align 8
.LEFDE22:
.LSFDE24:
	.long	.LEFDE24-.LASFDE24
.LASFDE24:
	.long	.Lframe0
	.quad	.LFB118
	.quad	.LFE118-.LFB118
	.align 8
.LEFDE24:
.LSFDE26:
	.long	.LEFDE26-.LASFDE26
.LASFDE26:
	.long	.Lframe0
	.quad	.LFB121
	.quad	.LFE121-.LFB121
	.align 8
.LEFDE26:
.LSFDE28:
	.long	.LEFDE28-.LASFDE28
.LASFDE28:
	.long	.Lframe0
	.quad	.LFB122
	.quad	.LFE122-.LFB122
	.align 8
.LEFDE28:
.LSFDE30:
	.long	.LEFDE30-.LASFDE30
.LASFDE30:
	.long	.Lframe0
	.quad	.LFB123
	.quad	.LFE123-.LFB123
	.align 8
.LEFDE30:
.LSFDE32:
	.long	.LEFDE32-.LASFDE32
.LASFDE32:
	.long	.Lframe0
	.quad	.LFB124
	.quad	.LFE124-.LFB124
	.align 8
.LEFDE32:
.LSFDE34:
	.long	.LEFDE34-.LASFDE34
.LASFDE34:
	.long	.Lframe0
	.quad	.LFB127
	.quad	.LFE127-.LFB127
	.align 8
.LEFDE34:
.LSFDE36:
	.long	.LEFDE36-.LASFDE36
.LASFDE36:
	.long	.Lframe0
	.quad	.LFB128
	.quad	.LFE128-.LFB128
	.align 8
.LEFDE36:
.LSFDE38:
	.long	.LEFDE38-.LASFDE38
.LASFDE38:
	.long	.Lframe0
	.quad	.LFB129
	.quad	.LFE129-.LFB129
	.align 8
.LEFDE38:
.LSFDE40:
	.long	.LEFDE40-.LASFDE40
.LASFDE40:
	.long	.Lframe0
	.quad	.LFB130
	.quad	.LFE130-.LFB130
	.align 8
.LEFDE40:
.LSFDE42:
	.long	.LEFDE42-.LASFDE42
.LASFDE42:
	.long	.Lframe0
	.quad	.LFB133
	.quad	.LFE133-.LFB133
	.align 8
.LEFDE42:
.LSFDE44:
	.long	.LEFDE44-.LASFDE44
.LASFDE44:
	.long	.Lframe0
	.quad	.LFB134
	.quad	.LFE134-.LFB134
	.align 8
.LEFDE44:
.LSFDE46:
	.long	.LEFDE46-.LASFDE46
.LASFDE46:
	.long	.Lframe0
	.quad	.LFB135
	.quad	.LFE135-.LFB135
	.align 8
.LEFDE46:
.LSFDE48:
	.long	.LEFDE48-.LASFDE48
.LASFDE48:
	.long	.Lframe0
	.quad	.LFB136
	.quad	.LFE136-.LFB136
	.align 8
.LEFDE48:
.LSFDE50:
	.long	.LEFDE50-.LASFDE50
.LASFDE50:
	.long	.Lframe0
	.quad	.LFB139
	.quad	.LFE139-.LFB139
	.align 8
.LEFDE50:
.LSFDE52:
	.long	.LEFDE52-.LASFDE52
.LASFDE52:
	.long	.Lframe0
	.quad	.LFB140
	.quad	.LFE140-.LFB140
	.align 8
.LEFDE52:
.LSFDE54:
	.long	.LEFDE54-.LASFDE54
.LASFDE54:
	.long	.Lframe0
	.quad	.LFB141
	.quad	.LFE141-.LFB141
	.align 8
.LEFDE54:
.LSFDE56:
	.long	.LEFDE56-.LASFDE56
.LASFDE56:
	.long	.Lframe0
	.quad	.LFB142
	.quad	.LFE142-.LFB142
	.align 8
.LEFDE56:
.LSFDE58:
	.long	.LEFDE58-.LASFDE58
.LASFDE58:
	.long	.Lframe0
	.quad	.LFB145
	.quad	.LFE145-.LFB145
	.align 8
.LEFDE58:
.LSFDE60:
	.long	.LEFDE60-.LASFDE60
.LASFDE60:
	.long	.Lframe0
	.quad	.LFB146
	.quad	.LFE146-.LFB146
	.align 8
.LEFDE60:
.LSFDE62:
	.long	.LEFDE62-.LASFDE62
.LASFDE62:
	.long	.Lframe0
	.quad	.LFB147
	.quad	.LFE147-.LFB147
	.align 8
.LEFDE62:
.LSFDE64:
	.long	.LEFDE64-.LASFDE64
.LASFDE64:
	.long	.Lframe0
	.quad	.LFB148
	.quad	.LFE148-.LFB148
	.align 8
.LEFDE64:
.LSFDE66:
	.long	.LEFDE66-.LASFDE66
.LASFDE66:
	.long	.Lframe0
	.quad	.LFB151
	.quad	.LFE151-.LFB151
	.align 8
.LEFDE66:
.LSFDE68:
	.long	.LEFDE68-.LASFDE68
.LASFDE68:
	.long	.Lframe0
	.quad	.LFB152
	.quad	.LFE152-.LFB152
	.align 8
.LEFDE68:
.LSFDE70:
	.long	.LEFDE70-.LASFDE70
.LASFDE70:
	.long	.Lframe0
	.quad	.LFB153
	.quad	.LFE153-.LFB153
	.align 8
.LEFDE70:
.LSFDE72:
	.long	.LEFDE72-.LASFDE72
.LASFDE72:
	.long	.Lframe0
	.quad	.LFB154
	.quad	.LFE154-.LFB154
	.align 8
.LEFDE72:
.LSFDE74:
	.long	.LEFDE74-.LASFDE74
.LASFDE74:
	.long	.Lframe0
	.quad	.LFB157
	.quad	.LFE157-.LFB157
	.align 8
.LEFDE74:
.LSFDE76:
	.long	.LEFDE76-.LASFDE76
.LASFDE76:
	.long	.Lframe0
	.quad	.LFB158
	.quad	.LFE158-.LFB158
	.align 8
.LEFDE76:
.LSFDE78:
	.long	.LEFDE78-.LASFDE78
.LASFDE78:
	.long	.Lframe0
	.quad	.LFB159
	.quad	.LFE159-.LFB159
	.align 8
.LEFDE78:
.LSFDE80:
	.long	.LEFDE80-.LASFDE80
.LASFDE80:
	.long	.Lframe0
	.quad	.LFB160
	.quad	.LFE160-.LFB160
	.align 8
.LEFDE80:
.LSFDE82:
	.long	.LEFDE82-.LASFDE82
.LASFDE82:
	.long	.Lframe0
	.quad	.LFB161
	.quad	.LFE161-.LFB161
	.byte	0x4
	.long	.LCFI2-.LFB161
	.byte	0x86
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI3-.LCFI2
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE82:
.LSFDE84:
	.long	.LEFDE84-.LASFDE84
.LASFDE84:
	.long	.Lframe0
	.quad	.LFB162
	.quad	.LFE162-.LFB162
	.byte	0x4
	.long	.LCFI4-.LFB162
	.byte	0xe
	.uleb128 0x10
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI5-.LCFI4
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI6-.LCFI5
	.byte	0xe
	.uleb128 0x20
	.byte	0x8d
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI7-.LCFI6
	.byte	0xe
	.uleb128 0x28
	.byte	0x8c
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI8-.LCFI7
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI9-.LCFI8
	.byte	0xe
	.uleb128 0x38
	.byte	0x83
	.uleb128 0x7
	.byte	0x86
	.uleb128 0x6
	.align 8
.LEFDE84:
.LSFDE86:
	.long	.LEFDE86-.LASFDE86
.LASFDE86:
	.long	.Lframe0
	.quad	.LFB163
	.quad	.LFE163-.LFB163
	.byte	0x4
	.long	.LCFI10-.LFB163
	.byte	0xe
	.uleb128 0x10
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI11-.LCFI10
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI12-.LCFI11
	.byte	0xe
	.uleb128 0x20
	.byte	0x8d
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI13-.LCFI12
	.byte	0xe
	.uleb128 0x28
	.byte	0x8c
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI14-.LCFI13
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI15-.LCFI14
	.byte	0xe
	.uleb128 0x38
	.byte	0x83
	.uleb128 0x7
	.byte	0x86
	.uleb128 0x6
	.align 8
.LEFDE86:
.LSFDE88:
	.long	.LEFDE88-.LASFDE88
.LASFDE88:
	.long	.Lframe0
	.quad	.LFB164
	.quad	.LFE164-.LFB164
	.align 8
.LEFDE88:
.LSFDE90:
	.long	.LEFDE90-.LASFDE90
.LASFDE90:
	.long	.Lframe0
	.quad	.LFB165
	.quad	.LFE165-.LFB165
	.align 8
.LEFDE90:
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
	.uleb128 0xe0
	.align 8
.LEFDE1:
.LSFDE3:
	.long	.LEFDE3-.LASFDE3
.LASFDE3:
	.long	.LASFDE3-.Lframe1
	.quad	.LFB103
	.quad	.LFE103-.LFB103
	.align 8
.LEFDE3:
.LSFDE5:
	.long	.LEFDE5-.LASFDE5
.LASFDE5:
	.long	.LASFDE5-.Lframe1
	.quad	.LFB104
	.quad	.LFE104-.LFB104
	.align 8
.LEFDE5:
.LSFDE7:
	.long	.LEFDE7-.LASFDE7
.LASFDE7:
	.long	.LASFDE7-.Lframe1
	.quad	.LFB105
	.quad	.LFE105-.LFB105
	.align 8
.LEFDE7:
.LSFDE9:
	.long	.LEFDE9-.LASFDE9
.LASFDE9:
	.long	.LASFDE9-.Lframe1
	.quad	.LFB106
	.quad	.LFE106-.LFB106
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
	.quad	.LFB110
	.quad	.LFE110-.LFB110
	.align 8
.LEFDE13:
.LSFDE15:
	.long	.LEFDE15-.LASFDE15
.LASFDE15:
	.long	.LASFDE15-.Lframe1
	.quad	.LFB111
	.quad	.LFE111-.LFB111
	.align 8
.LEFDE15:
.LSFDE17:
	.long	.LEFDE17-.LASFDE17
.LASFDE17:
	.long	.LASFDE17-.Lframe1
	.quad	.LFB112
	.quad	.LFE112-.LFB112
	.align 8
.LEFDE17:
.LSFDE19:
	.long	.LEFDE19-.LASFDE19
.LASFDE19:
	.long	.LASFDE19-.Lframe1
	.quad	.LFB115
	.quad	.LFE115-.LFB115
	.align 8
.LEFDE19:
.LSFDE21:
	.long	.LEFDE21-.LASFDE21
.LASFDE21:
	.long	.LASFDE21-.Lframe1
	.quad	.LFB116
	.quad	.LFE116-.LFB116
	.align 8
.LEFDE21:
.LSFDE23:
	.long	.LEFDE23-.LASFDE23
.LASFDE23:
	.long	.LASFDE23-.Lframe1
	.quad	.LFB117
	.quad	.LFE117-.LFB117
	.align 8
.LEFDE23:
.LSFDE25:
	.long	.LEFDE25-.LASFDE25
.LASFDE25:
	.long	.LASFDE25-.Lframe1
	.quad	.LFB118
	.quad	.LFE118-.LFB118
	.align 8
.LEFDE25:
.LSFDE27:
	.long	.LEFDE27-.LASFDE27
.LASFDE27:
	.long	.LASFDE27-.Lframe1
	.quad	.LFB121
	.quad	.LFE121-.LFB121
	.align 8
.LEFDE27:
.LSFDE29:
	.long	.LEFDE29-.LASFDE29
.LASFDE29:
	.long	.LASFDE29-.Lframe1
	.quad	.LFB122
	.quad	.LFE122-.LFB122
	.align 8
.LEFDE29:
.LSFDE31:
	.long	.LEFDE31-.LASFDE31
.LASFDE31:
	.long	.LASFDE31-.Lframe1
	.quad	.LFB123
	.quad	.LFE123-.LFB123
	.align 8
.LEFDE31:
.LSFDE33:
	.long	.LEFDE33-.LASFDE33
.LASFDE33:
	.long	.LASFDE33-.Lframe1
	.quad	.LFB124
	.quad	.LFE124-.LFB124
	.align 8
.LEFDE33:
.LSFDE35:
	.long	.LEFDE35-.LASFDE35
.LASFDE35:
	.long	.LASFDE35-.Lframe1
	.quad	.LFB127
	.quad	.LFE127-.LFB127
	.align 8
.LEFDE35:
.LSFDE37:
	.long	.LEFDE37-.LASFDE37
.LASFDE37:
	.long	.LASFDE37-.Lframe1
	.quad	.LFB128
	.quad	.LFE128-.LFB128
	.align 8
.LEFDE37:
.LSFDE39:
	.long	.LEFDE39-.LASFDE39
.LASFDE39:
	.long	.LASFDE39-.Lframe1
	.quad	.LFB129
	.quad	.LFE129-.LFB129
	.align 8
.LEFDE39:
.LSFDE41:
	.long	.LEFDE41-.LASFDE41
.LASFDE41:
	.long	.LASFDE41-.Lframe1
	.quad	.LFB130
	.quad	.LFE130-.LFB130
	.align 8
.LEFDE41:
.LSFDE43:
	.long	.LEFDE43-.LASFDE43
.LASFDE43:
	.long	.LASFDE43-.Lframe1
	.quad	.LFB133
	.quad	.LFE133-.LFB133
	.align 8
.LEFDE43:
.LSFDE45:
	.long	.LEFDE45-.LASFDE45
.LASFDE45:
	.long	.LASFDE45-.Lframe1
	.quad	.LFB134
	.quad	.LFE134-.LFB134
	.align 8
.LEFDE45:
.LSFDE47:
	.long	.LEFDE47-.LASFDE47
.LASFDE47:
	.long	.LASFDE47-.Lframe1
	.quad	.LFB135
	.quad	.LFE135-.LFB135
	.align 8
.LEFDE47:
.LSFDE49:
	.long	.LEFDE49-.LASFDE49
.LASFDE49:
	.long	.LASFDE49-.Lframe1
	.quad	.LFB136
	.quad	.LFE136-.LFB136
	.align 8
.LEFDE49:
.LSFDE51:
	.long	.LEFDE51-.LASFDE51
.LASFDE51:
	.long	.LASFDE51-.Lframe1
	.quad	.LFB139
	.quad	.LFE139-.LFB139
	.align 8
.LEFDE51:
.LSFDE53:
	.long	.LEFDE53-.LASFDE53
.LASFDE53:
	.long	.LASFDE53-.Lframe1
	.quad	.LFB140
	.quad	.LFE140-.LFB140
	.align 8
.LEFDE53:
.LSFDE55:
	.long	.LEFDE55-.LASFDE55
.LASFDE55:
	.long	.LASFDE55-.Lframe1
	.quad	.LFB141
	.quad	.LFE141-.LFB141
	.align 8
.LEFDE55:
.LSFDE57:
	.long	.LEFDE57-.LASFDE57
.LASFDE57:
	.long	.LASFDE57-.Lframe1
	.quad	.LFB142
	.quad	.LFE142-.LFB142
	.align 8
.LEFDE57:
.LSFDE59:
	.long	.LEFDE59-.LASFDE59
.LASFDE59:
	.long	.LASFDE59-.Lframe1
	.quad	.LFB145
	.quad	.LFE145-.LFB145
	.align 8
.LEFDE59:
.LSFDE61:
	.long	.LEFDE61-.LASFDE61
.LASFDE61:
	.long	.LASFDE61-.Lframe1
	.quad	.LFB146
	.quad	.LFE146-.LFB146
	.align 8
.LEFDE61:
.LSFDE63:
	.long	.LEFDE63-.LASFDE63
.LASFDE63:
	.long	.LASFDE63-.Lframe1
	.quad	.LFB147
	.quad	.LFE147-.LFB147
	.align 8
.LEFDE63:
.LSFDE65:
	.long	.LEFDE65-.LASFDE65
.LASFDE65:
	.long	.LASFDE65-.Lframe1
	.quad	.LFB148
	.quad	.LFE148-.LFB148
	.align 8
.LEFDE65:
.LSFDE67:
	.long	.LEFDE67-.LASFDE67
.LASFDE67:
	.long	.LASFDE67-.Lframe1
	.quad	.LFB151
	.quad	.LFE151-.LFB151
	.align 8
.LEFDE67:
.LSFDE69:
	.long	.LEFDE69-.LASFDE69
.LASFDE69:
	.long	.LASFDE69-.Lframe1
	.quad	.LFB152
	.quad	.LFE152-.LFB152
	.align 8
.LEFDE69:
.LSFDE71:
	.long	.LEFDE71-.LASFDE71
.LASFDE71:
	.long	.LASFDE71-.Lframe1
	.quad	.LFB153
	.quad	.LFE153-.LFB153
	.align 8
.LEFDE71:
.LSFDE73:
	.long	.LEFDE73-.LASFDE73
.LASFDE73:
	.long	.LASFDE73-.Lframe1
	.quad	.LFB154
	.quad	.LFE154-.LFB154
	.align 8
.LEFDE73:
.LSFDE75:
	.long	.LEFDE75-.LASFDE75
.LASFDE75:
	.long	.LASFDE75-.Lframe1
	.quad	.LFB157
	.quad	.LFE157-.LFB157
	.align 8
.LEFDE75:
.LSFDE77:
	.long	.LEFDE77-.LASFDE77
.LASFDE77:
	.long	.LASFDE77-.Lframe1
	.quad	.LFB158
	.quad	.LFE158-.LFB158
	.align 8
.LEFDE77:
.LSFDE79:
	.long	.LEFDE79-.LASFDE79
.LASFDE79:
	.long	.LASFDE79-.Lframe1
	.quad	.LFB159
	.quad	.LFE159-.LFB159
	.align 8
.LEFDE79:
.LSFDE81:
	.long	.LEFDE81-.LASFDE81
.LASFDE81:
	.long	.LASFDE81-.Lframe1
	.quad	.LFB160
	.quad	.LFE160-.LFB160
	.align 8
.LEFDE81:
.LSFDE83:
	.long	.LEFDE83-.LASFDE83
.LASFDE83:
	.long	.LASFDE83-.Lframe1
	.quad	.LFB161
	.quad	.LFE161-.LFB161
	.byte	0x4
	.long	.LCFI2-.LFB161
	.byte	0x86
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI3-.LCFI2
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE83:
.LSFDE85:
	.long	.LEFDE85-.LASFDE85
.LASFDE85:
	.long	.LASFDE85-.Lframe1
	.quad	.LFB162
	.quad	.LFE162-.LFB162
	.byte	0x4
	.long	.LCFI4-.LFB162
	.byte	0xe
	.uleb128 0x10
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI5-.LCFI4
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI6-.LCFI5
	.byte	0xe
	.uleb128 0x20
	.byte	0x8d
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI7-.LCFI6
	.byte	0xe
	.uleb128 0x28
	.byte	0x8c
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI8-.LCFI7
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI9-.LCFI8
	.byte	0xe
	.uleb128 0x38
	.byte	0x83
	.uleb128 0x7
	.byte	0x86
	.uleb128 0x6
	.align 8
.LEFDE85:
.LSFDE87:
	.long	.LEFDE87-.LASFDE87
.LASFDE87:
	.long	.LASFDE87-.Lframe1
	.quad	.LFB163
	.quad	.LFE163-.LFB163
	.byte	0x4
	.long	.LCFI10-.LFB163
	.byte	0xe
	.uleb128 0x10
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI11-.LCFI10
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI12-.LCFI11
	.byte	0xe
	.uleb128 0x20
	.byte	0x8d
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI13-.LCFI12
	.byte	0xe
	.uleb128 0x28
	.byte	0x8c
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI14-.LCFI13
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI15-.LCFI14
	.byte	0xe
	.uleb128 0x38
	.byte	0x83
	.uleb128 0x7
	.byte	0x86
	.uleb128 0x6
	.align 8
.LEFDE87:
.LSFDE89:
	.long	.LEFDE89-.LASFDE89
.LASFDE89:
	.long	.LASFDE89-.Lframe1
	.quad	.LFB164
	.quad	.LFE164-.LFB164
	.align 8
.LEFDE89:
.LSFDE91:
	.long	.LEFDE91-.LASFDE91
.LASFDE91:
	.long	.LASFDE91-.Lframe1
	.quad	.LFB165
	.quad	.LFE165-.LFB165
	.align 8
.LEFDE91:
	.file 6 "/usr/include/stdio.h"
	.file 7 "/usr/lib/gcc/x86_64-linux-gnu/3.4.6/include/stdarg.h"
	.file 8 "<internal>"
	.file 9 "audio/mixeng.h"
	.file 10 "/usr/include/sys/types.h"
	.file 11 "/usr/include/stdint.h"
	.file 12 "/usr/include/libio.h"
	.file 13 "/usr/include/bits/types.h"
	.file 14 "/usr/lib/gcc/x86_64-linux-gnu/3.4.6/include/stddef.h"
	.text
.Letext0:
	.section	.debug_info
	.long	0x27d5
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.Ldebug_line0
	.quad	.Letext0
	.quad	.Ltext0
	.long	.LASF160
	.byte	0x1
	.long	.LASF161
	.long	.LASF162
	.uleb128 0x2
	.long	.LASF9
	.byte	0xe
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
	.uleb128 0x5
	.byte	0x8
	.long	0x75
	.uleb128 0x6
	.long	0x7a
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
	.byte	0xd
	.byte	0x8d
	.long	0x53
	.uleb128 0x2
	.long	.LASF11
	.byte	0xd
	.byte	0x8e
	.long	0x53
	.uleb128 0x7
	.byte	0x8
	.uleb128 0x5
	.byte	0x8
	.long	0x7a
	.uleb128 0x2
	.long	.LASF12
	.byte	0xa
	.byte	0xc3
	.long	0x88
	.uleb128 0x2
	.long	.LASF13
	.byte	0xa
	.byte	0xc4
	.long	0x8f
	.uleb128 0x2
	.long	.LASF14
	.byte	0xa
	.byte	0xc5
	.long	0x3f
	.uleb128 0x2
	.long	.LASF15
	.byte	0xa
	.byte	0xc6
	.long	0x53
	.uleb128 0x3
	.long	.LASF16
	.byte	0x8
	.byte	0x7
	.uleb128 0x5
	.byte	0x8
	.long	0xca
	.uleb128 0x5
	.byte	0x8
	.long	0xf3
	.uleb128 0x8
	.uleb128 0x9
	.long	0x2c0
	.long	.LASF47
	.byte	0xd8
	.byte	0x6
	.byte	0x2d
	.uleb128 0xa
	.long	.LASF17
	.byte	0xc
	.value	0x110
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF18
	.byte	0xc
	.value	0x115
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF19
	.byte	0xc
	.value	0x116
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.long	.LASF20
	.byte	0xc
	.value	0x117
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.long	.LASF21
	.byte	0xc
	.value	0x118
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.long	.LASF22
	.byte	0xc
	.value	0x119
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xa
	.long	.LASF23
	.byte	0xc
	.value	0x11a
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xa
	.long	.LASF24
	.byte	0xc
	.value	0x11b
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xa
	.long	.LASF25
	.byte	0xc
	.value	0x11c
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xa
	.long	.LASF26
	.byte	0xc
	.value	0x11e
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xa
	.long	.LASF27
	.byte	0xc
	.value	0x11f
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xa
	.long	.LASF28
	.byte	0xc
	.value	0x120
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xa
	.long	.LASF29
	.byte	0xc
	.value	0x122
	.long	0x35e
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xa
	.long	.LASF30
	.byte	0xc
	.value	0x124
	.long	0x364
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xa
	.long	.LASF31
	.byte	0xc
	.value	0x126
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xa
	.long	.LASF32
	.byte	0xc
	.value	0x12a
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xa
	.long	.LASF33
	.byte	0xc
	.value	0x12c
	.long	0x96
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xa
	.long	.LASF34
	.byte	0xc
	.value	0x130
	.long	0x68
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xa
	.long	.LASF35
	.byte	0xc
	.value	0x131
	.long	0x88
	.byte	0x3
	.byte	0x23
	.uleb128 0x82
	.uleb128 0xa
	.long	.LASF36
	.byte	0xc
	.value	0x132
	.long	0x36a
	.byte	0x3
	.byte	0x23
	.uleb128 0x83
	.uleb128 0xa
	.long	.LASF37
	.byte	0xc
	.value	0x136
	.long	0x37a
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xa
	.long	.LASF38
	.byte	0xc
	.value	0x13f
	.long	0xa1
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xa
	.long	.LASF39
	.byte	0xc
	.value	0x148
	.long	0xac
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xa
	.long	.LASF40
	.byte	0xc
	.value	0x149
	.long	0xac
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xa
	.long	.LASF41
	.byte	0xc
	.value	0x14a
	.long	0xac
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xa
	.long	.LASF42
	.byte	0xc
	.value	0x14b
	.long	0xac
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xa
	.long	.LASF43
	.byte	0xc
	.value	0x14c
	.long	0x2d
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0xa
	.long	.LASF44
	.byte	0xc
	.value	0x14e
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xa
	.long	.LASF45
	.byte	0xc
	.value	0x150
	.long	0x380
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.byte	0x0
	.uleb128 0x2
	.long	.LASF46
	.byte	0x7
	.byte	0x2b
	.long	0x2cb
	.uleb128 0xb
	.long	0x2db
	.long	0x2db
	.uleb128 0xc
	.long	0x61
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
	.long	0x320
	.long	.LASF48
	.byte	0x18
	.byte	0x8
	.byte	0x0
	.uleb128 0xd
	.long	.LASF49
	.byte	0x8
	.byte	0x0
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF50
	.byte	0x8
	.byte	0x0
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.long	.LASF51
	.byte	0x8
	.byte	0x0
	.long	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF52
	.byte	0x8
	.byte	0x0
	.long	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0xe
	.long	.LASF53
	.byte	0xc
	.byte	0xb4
	.uleb128 0x9
	.long	0x35e
	.long	.LASF54
	.byte	0x18
	.byte	0xc
	.byte	0xba
	.uleb128 0xd
	.long	.LASF55
	.byte	0xc
	.byte	0xbb
	.long	0x35e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF56
	.byte	0xc
	.byte	0xbc
	.long	0x364
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF57
	.byte	0xc
	.byte	0xc0
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x327
	.uleb128 0x5
	.byte	0x8
	.long	0xf4
	.uleb128 0xb
	.long	0x37a
	.long	0x7a
	.uleb128 0xc
	.long	0x61
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x320
	.uleb128 0xb
	.long	0x390
	.long	0x7a
	.uleb128 0xc
	.long	0x61
	.byte	0x13
	.byte	0x0
	.uleb128 0x2
	.long	.LASF58
	.byte	0x6
	.byte	0x50
	.long	0x2c0
	.uleb128 0x2
	.long	.LASF59
	.byte	0xb
	.byte	0x31
	.long	0x81
	.uleb128 0x2
	.long	.LASF60
	.byte	0xb
	.byte	0x32
	.long	0x68
	.uleb128 0x2
	.long	.LASF61
	.byte	0xb
	.byte	0x34
	.long	0x46
	.uleb128 0x2
	.long	.LASF62
	.byte	0xb
	.byte	0x38
	.long	0x38
	.uleb128 0xf
	.long	0x3f6
	.byte	0x18
	.byte	0x9
	.byte	0x20
	.uleb128 0xd
	.long	.LASF63
	.byte	0x9
	.byte	0x20
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.string	"r"
	.byte	0x9
	.byte	0x20
	.long	0xd5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x10
	.string	"l"
	.byte	0x9
	.byte	0x20
	.long	0xd5
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.long	.LASF64
	.byte	0x9
	.byte	0x20
	.long	0x3c7
	.uleb128 0xf
	.long	0x422
	.byte	0x10
	.byte	0x9
	.byte	0x21
	.uleb128 0x10
	.string	"l"
	.byte	0x9
	.byte	0x21
	.long	0xd5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.string	"r"
	.byte	0x9
	.byte	0x21
	.long	0xd5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x2
	.long	.LASF65
	.byte	0x9
	.byte	0x21
	.long	0x401
	.uleb128 0x2
	.long	.LASF66
	.byte	0x9
	.byte	0x25
	.long	0x438
	.uleb128 0x11
	.long	0x453
	.byte	0x1
	.uleb128 0x12
	.long	0x453
	.uleb128 0x12
	.long	0xed
	.uleb128 0x12
	.long	0x3f
	.uleb128 0x12
	.long	0x459
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x422
	.uleb128 0x5
	.byte	0x8
	.long	0x3f6
	.uleb128 0x2
	.long	.LASF67
	.byte	0x9
	.byte	0x26
	.long	0x46a
	.uleb128 0x11
	.long	0x480
	.byte	0x1
	.uleb128 0x12
	.long	0xac
	.uleb128 0x12
	.long	0x480
	.uleb128 0x12
	.long	0x3f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x486
	.uleb128 0x6
	.long	0x422
	.uleb128 0x5
	.byte	0x8
	.long	0x45f
	.uleb128 0x5
	.byte	0x8
	.long	0x42d
	.uleb128 0x13
	.long	0x4e1
	.long	.LASF68
	.byte	0x28
	.byte	0x4
	.value	0x123
	.uleb128 0xa
	.long	.LASF69
	.byte	0x4
	.value	0x124
	.long	0x3bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF70
	.byte	0x4
	.value	0x125
	.long	0x3bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF71
	.byte	0x4
	.value	0x126
	.long	0x3b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.long	.LASF72
	.byte	0x4
	.value	0x127
	.long	0x422
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x14
	.long	0x51b
	.long	.LASF73
	.byte	0x1
	.byte	0xef
	.byte	0x1
	.quad	.LFB99
	.quad	.LFE99
	.byte	0x1
	.byte	0x57
	.uleb128 0x15
	.string	"fmt"
	.byte	0x1
	.byte	0xee
	.long	0x6f
	.byte	0x1
	.byte	0x55
	.uleb128 0x16
	.uleb128 0x17
	.string	"ap"
	.byte	0x1
	.byte	0xf0
	.long	0x390
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x14
	.long	0x5f3
	.long	.LASF74
	.byte	0x2
	.byte	0x71
	.byte	0x1
	.quad	.LFB103
	.quad	.LFE103
	.byte	0x1
	.byte	0x57
	.uleb128 0x15
	.string	"dst"
	.byte	0x2
	.byte	0x70
	.long	0x453
	.byte	0x1
	.byte	0x55
	.uleb128 0x15
	.string	"src"
	.byte	0x2
	.byte	0x70
	.long	0xed
	.byte	0x1
	.byte	0x54
	.uleb128 0x18
	.long	.LASF75
	.byte	0x2
	.byte	0x70
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x15
	.string	"vol"
	.byte	0x2
	.byte	0x70
	.long	0x459
	.byte	0x1
	.byte	0x52
	.uleb128 0x17
	.string	"out"
	.byte	0x2
	.byte	0x72
	.long	0x453
	.byte	0x1
	.byte	0x55
	.uleb128 0x17
	.string	"in"
	.byte	0x2
	.byte	0x73
	.long	0x5f3
	.byte	0x1
	.byte	0x54
	.uleb128 0x19
	.long	0x5be
	.long	0x5f9
	.quad	.LBB2
	.quad	.LBE2
	.uleb128 0x1a
	.long	0x60a
	.byte	0x1
	.byte	0x50
	.uleb128 0x1b
	.quad	.LBB3
	.quad	.LBE3
	.uleb128 0x1c
	.long	0x613
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.long	0x5f9
	.quad	.LBB4
	.quad	.LBE4
	.uleb128 0x1a
	.long	0x60a
	.byte	0x1
	.byte	0x50
	.uleb128 0x1b
	.quad	.LBB5
	.quad	.LBE5
	.uleb128 0x1c
	.long	0x613
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xb4
	.uleb128 0x1e
	.long	0x61e
	.long	.LASF76
	.byte	0x2
	.byte	0x55
	.byte	0x1
	.long	0xd5
	.byte	0x3
	.uleb128 0x1f
	.string	"v"
	.byte	0x2
	.byte	0x54
	.long	0xb4
	.uleb128 0x20
	.string	"nv"
	.byte	0x2
	.byte	0x56
	.long	0xb4
	.byte	0x0
	.uleb128 0x14
	.long	0x6b0
	.long	.LASF77
	.byte	0x2
	.byte	0x85
	.byte	0x1
	.quad	.LFB104
	.quad	.LFE104
	.byte	0x1
	.byte	0x57
	.uleb128 0x15
	.string	"dst"
	.byte	0x2
	.byte	0x84
	.long	0x453
	.byte	0x1
	.byte	0x55
	.uleb128 0x15
	.string	"src"
	.byte	0x2
	.byte	0x84
	.long	0xed
	.byte	0x1
	.byte	0x54
	.uleb128 0x18
	.long	.LASF75
	.byte	0x2
	.byte	0x84
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x15
	.string	"vol"
	.byte	0x2
	.byte	0x84
	.long	0x459
	.byte	0x1
	.byte	0x52
	.uleb128 0x17
	.string	"out"
	.byte	0x2
	.byte	0x86
	.long	0x453
	.byte	0x1
	.byte	0x55
	.uleb128 0x17
	.string	"in"
	.byte	0x2
	.byte	0x87
	.long	0x5f3
	.byte	0x1
	.byte	0x54
	.uleb128 0x1d
	.long	0x5f9
	.quad	.LBB6
	.quad	.LBE6
	.uleb128 0x21
	.long	0x60a
	.uleb128 0x22
	.long	.Ldebug_ranges0+0x0
	.uleb128 0x1c
	.long	0x613
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
	.long	0x74d
	.long	.LASF78
	.byte	0x2
	.byte	0x9a
	.byte	0x1
	.quad	.LFB105
	.quad	.LFE105
	.byte	0x1
	.byte	0x57
	.uleb128 0x15
	.string	"dst"
	.byte	0x2
	.byte	0x99
	.long	0xac
	.byte	0x1
	.byte	0x55
	.uleb128 0x15
	.string	"src"
	.byte	0x2
	.byte	0x99
	.long	0x480
	.byte	0x1
	.byte	0x54
	.uleb128 0x18
	.long	.LASF75
	.byte	0x2
	.byte	0x99
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x17
	.string	"in"
	.byte	0x2
	.byte	0x9b
	.long	0x480
	.byte	0x1
	.byte	0x54
	.uleb128 0x17
	.string	"out"
	.byte	0x2
	.byte	0x9c
	.long	0x5f3
	.byte	0x1
	.byte	0x55
	.uleb128 0x19
	.long	0x72f
	.long	0x74d
	.quad	.LBB10
	.quad	.LBE10
	.uleb128 0x1a
	.long	0x75e
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x1d
	.long	0x74d
	.quad	.LBB12
	.quad	.LBE12
	.uleb128 0x1a
	.long	0x75e
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
	.long	0x768
	.long	.LASF79
	.byte	0x2
	.byte	0x5f
	.byte	0x1
	.long	0xb4
	.byte	0x3
	.uleb128 0x1f
	.string	"v"
	.byte	0x2
	.byte	0x5e
	.long	0xd5
	.byte	0x0
	.uleb128 0x14
	.long	0x7e4
	.long	.LASF80
	.byte	0x2
	.byte	0xa6
	.byte	0x1
	.quad	.LFB106
	.quad	.LFE106
	.byte	0x1
	.byte	0x57
	.uleb128 0x15
	.string	"dst"
	.byte	0x2
	.byte	0xa5
	.long	0xac
	.byte	0x1
	.byte	0x55
	.uleb128 0x15
	.string	"src"
	.byte	0x2
	.byte	0xa5
	.long	0x480
	.byte	0x1
	.byte	0x54
	.uleb128 0x18
	.long	.LASF75
	.byte	0x2
	.byte	0xa5
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x17
	.string	"in"
	.byte	0x2
	.byte	0xa7
	.long	0x480
	.byte	0x1
	.byte	0x54
	.uleb128 0x17
	.string	"out"
	.byte	0x2
	.byte	0xa8
	.long	0x5f3
	.byte	0x1
	.byte	0x55
	.uleb128 0x1d
	.long	0x74d
	.quad	.LBB17
	.quad	.LBE17
	.uleb128 0x1a
	.long	0x75e
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
	.long	0x8bc
	.long	.LASF81
	.byte	0x2
	.byte	0x71
	.byte	0x1
	.quad	.LFB109
	.quad	.LFE109
	.byte	0x1
	.byte	0x57
	.uleb128 0x15
	.string	"dst"
	.byte	0x2
	.byte	0x70
	.long	0x453
	.byte	0x1
	.byte	0x55
	.uleb128 0x15
	.string	"src"
	.byte	0x2
	.byte	0x70
	.long	0xed
	.byte	0x1
	.byte	0x54
	.uleb128 0x18
	.long	.LASF75
	.byte	0x2
	.byte	0x70
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x15
	.string	"vol"
	.byte	0x2
	.byte	0x70
	.long	0x459
	.byte	0x1
	.byte	0x52
	.uleb128 0x17
	.string	"out"
	.byte	0x2
	.byte	0x72
	.long	0x453
	.byte	0x1
	.byte	0x55
	.uleb128 0x17
	.string	"in"
	.byte	0x2
	.byte	0x73
	.long	0x8bc
	.byte	0x1
	.byte	0x54
	.uleb128 0x19
	.long	0x887
	.long	0x8c2
	.quad	.LBB20
	.quad	.LBE20
	.uleb128 0x1a
	.long	0x8d3
	.byte	0x1
	.byte	0x50
	.uleb128 0x1b
	.quad	.LBB21
	.quad	.LBE21
	.uleb128 0x1c
	.long	0x8dc
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.long	0x8c2
	.quad	.LBB22
	.quad	.LBE22
	.uleb128 0x1a
	.long	0x8d3
	.byte	0x1
	.byte	0x50
	.uleb128 0x1b
	.quad	.LBB23
	.quad	.LBE23
	.uleb128 0x1c
	.long	0x8dc
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x39b
	.uleb128 0x1e
	.long	0x8e7
	.long	.LASF82
	.byte	0x2
	.byte	0x55
	.byte	0x1
	.long	0xd5
	.byte	0x3
	.uleb128 0x1f
	.string	"v"
	.byte	0x2
	.byte	0x54
	.long	0x39b
	.uleb128 0x20
	.string	"nv"
	.byte	0x2
	.byte	0x56
	.long	0x39b
	.byte	0x0
	.uleb128 0x14
	.long	0x979
	.long	.LASF83
	.byte	0x2
	.byte	0x85
	.byte	0x1
	.quad	.LFB110
	.quad	.LFE110
	.byte	0x1
	.byte	0x57
	.uleb128 0x15
	.string	"dst"
	.byte	0x2
	.byte	0x84
	.long	0x453
	.byte	0x1
	.byte	0x55
	.uleb128 0x15
	.string	"src"
	.byte	0x2
	.byte	0x84
	.long	0xed
	.byte	0x1
	.byte	0x54
	.uleb128 0x18
	.long	.LASF75
	.byte	0x2
	.byte	0x84
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x15
	.string	"vol"
	.byte	0x2
	.byte	0x84
	.long	0x459
	.byte	0x1
	.byte	0x52
	.uleb128 0x17
	.string	"out"
	.byte	0x2
	.byte	0x86
	.long	0x453
	.byte	0x1
	.byte	0x55
	.uleb128 0x17
	.string	"in"
	.byte	0x2
	.byte	0x87
	.long	0x8bc
	.byte	0x1
	.byte	0x54
	.uleb128 0x1d
	.long	0x8c2
	.quad	.LBB24
	.quad	.LBE24
	.uleb128 0x21
	.long	0x8d3
	.uleb128 0x22
	.long	.Ldebug_ranges0+0x30
	.uleb128 0x1c
	.long	0x8dc
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
	.long	0xa16
	.long	.LASF84
	.byte	0x2
	.byte	0x9a
	.byte	0x1
	.quad	.LFB111
	.quad	.LFE111
	.byte	0x1
	.byte	0x57
	.uleb128 0x15
	.string	"dst"
	.byte	0x2
	.byte	0x99
	.long	0xac
	.byte	0x1
	.byte	0x55
	.uleb128 0x15
	.string	"src"
	.byte	0x2
	.byte	0x99
	.long	0x480
	.byte	0x1
	.byte	0x54
	.uleb128 0x18
	.long	.LASF75
	.byte	0x2
	.byte	0x99
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x17
	.string	"in"
	.byte	0x2
	.byte	0x9b
	.long	0x480
	.byte	0x1
	.byte	0x54
	.uleb128 0x17
	.string	"out"
	.byte	0x2
	.byte	0x9c
	.long	0x8bc
	.byte	0x1
	.byte	0x55
	.uleb128 0x19
	.long	0x9f8
	.long	0xa16
	.quad	.LBB28
	.quad	.LBE28
	.uleb128 0x1a
	.long	0xa27
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x1d
	.long	0xa16
	.quad	.LBB30
	.quad	.LBE30
	.uleb128 0x1a
	.long	0xa27
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
	.long	0xa31
	.long	.LASF85
	.byte	0x2
	.byte	0x5f
	.byte	0x1
	.long	0x39b
	.byte	0x3
	.uleb128 0x1f
	.string	"v"
	.byte	0x2
	.byte	0x5e
	.long	0xd5
	.byte	0x0
	.uleb128 0x14
	.long	0xaad
	.long	.LASF86
	.byte	0x2
	.byte	0xa6
	.byte	0x1
	.quad	.LFB112
	.quad	.LFE112
	.byte	0x1
	.byte	0x57
	.uleb128 0x15
	.string	"dst"
	.byte	0x2
	.byte	0xa5
	.long	0xac
	.byte	0x1
	.byte	0x55
	.uleb128 0x15
	.string	"src"
	.byte	0x2
	.byte	0xa5
	.long	0x480
	.byte	0x1
	.byte	0x54
	.uleb128 0x18
	.long	.LASF75
	.byte	0x2
	.byte	0xa5
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x17
	.string	"in"
	.byte	0x2
	.byte	0xa7
	.long	0x480
	.byte	0x1
	.byte	0x54
	.uleb128 0x17
	.string	"out"
	.byte	0x2
	.byte	0xa8
	.long	0x8bc
	.byte	0x1
	.byte	0x55
	.uleb128 0x1d
	.long	0xa16
	.quad	.LBB35
	.quad	.LBE35
	.uleb128 0x1a
	.long	0xa27
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
	.long	0xb85
	.long	.LASF87
	.byte	0x2
	.byte	0x71
	.byte	0x1
	.quad	.LFB115
	.quad	.LFE115
	.byte	0x1
	.byte	0x57
	.uleb128 0x15
	.string	"dst"
	.byte	0x2
	.byte	0x70
	.long	0x453
	.byte	0x1
	.byte	0x55
	.uleb128 0x15
	.string	"src"
	.byte	0x2
	.byte	0x70
	.long	0xed
	.byte	0x1
	.byte	0x54
	.uleb128 0x18
	.long	.LASF75
	.byte	0x2
	.byte	0x70
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x15
	.string	"vol"
	.byte	0x2
	.byte	0x70
	.long	0x459
	.byte	0x1
	.byte	0x52
	.uleb128 0x17
	.string	"out"
	.byte	0x2
	.byte	0x72
	.long	0x453
	.byte	0x1
	.byte	0x55
	.uleb128 0x17
	.string	"in"
	.byte	0x2
	.byte	0x73
	.long	0xb85
	.byte	0x1
	.byte	0x54
	.uleb128 0x19
	.long	0xb50
	.long	0xb8b
	.quad	.LBB38
	.quad	.LBE38
	.uleb128 0x1a
	.long	0xb9c
	.byte	0x1
	.byte	0x50
	.uleb128 0x1b
	.quad	.LBB39
	.quad	.LBE39
	.uleb128 0x1c
	.long	0xba5
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.long	0xb8b
	.quad	.LBB40
	.quad	.LBE40
	.uleb128 0x1a
	.long	0xb9c
	.byte	0x1
	.byte	0x50
	.uleb128 0x1b
	.quad	.LBB41
	.quad	.LBE41
	.uleb128 0x1c
	.long	0xba5
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xbf
	.uleb128 0x1e
	.long	0xbb0
	.long	.LASF88
	.byte	0x2
	.byte	0x55
	.byte	0x1
	.long	0xd5
	.byte	0x3
	.uleb128 0x1f
	.string	"v"
	.byte	0x2
	.byte	0x54
	.long	0xbf
	.uleb128 0x20
	.string	"nv"
	.byte	0x2
	.byte	0x56
	.long	0xbf
	.byte	0x0
	.uleb128 0x14
	.long	0xc42
	.long	.LASF89
	.byte	0x2
	.byte	0x85
	.byte	0x1
	.quad	.LFB116
	.quad	.LFE116
	.byte	0x1
	.byte	0x57
	.uleb128 0x15
	.string	"dst"
	.byte	0x2
	.byte	0x84
	.long	0x453
	.byte	0x1
	.byte	0x55
	.uleb128 0x15
	.string	"src"
	.byte	0x2
	.byte	0x84
	.long	0xed
	.byte	0x1
	.byte	0x54
	.uleb128 0x18
	.long	.LASF75
	.byte	0x2
	.byte	0x84
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x15
	.string	"vol"
	.byte	0x2
	.byte	0x84
	.long	0x459
	.byte	0x1
	.byte	0x52
	.uleb128 0x17
	.string	"out"
	.byte	0x2
	.byte	0x86
	.long	0x453
	.byte	0x1
	.byte	0x55
	.uleb128 0x17
	.string	"in"
	.byte	0x2
	.byte	0x87
	.long	0xb85
	.byte	0x1
	.byte	0x54
	.uleb128 0x1d
	.long	0xb8b
	.quad	.LBB42
	.quad	.LBE42
	.uleb128 0x21
	.long	0xb9c
	.uleb128 0x22
	.long	.Ldebug_ranges0+0x60
	.uleb128 0x1c
	.long	0xba5
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
	.long	0xcdf
	.long	.LASF90
	.byte	0x2
	.byte	0x9a
	.byte	0x1
	.quad	.LFB117
	.quad	.LFE117
	.byte	0x1
	.byte	0x57
	.uleb128 0x15
	.string	"dst"
	.byte	0x2
	.byte	0x99
	.long	0xac
	.byte	0x1
	.byte	0x55
	.uleb128 0x15
	.string	"src"
	.byte	0x2
	.byte	0x99
	.long	0x480
	.byte	0x1
	.byte	0x54
	.uleb128 0x18
	.long	.LASF75
	.byte	0x2
	.byte	0x99
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x17
	.string	"in"
	.byte	0x2
	.byte	0x9b
	.long	0x480
	.byte	0x1
	.byte	0x54
	.uleb128 0x17
	.string	"out"
	.byte	0x2
	.byte	0x9c
	.long	0xb85
	.byte	0x1
	.byte	0x55
	.uleb128 0x19
	.long	0xcc1
	.long	0xcdf
	.quad	.LBB46
	.quad	.LBE46
	.uleb128 0x1a
	.long	0xcf0
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x1d
	.long	0xcdf
	.quad	.LBB48
	.quad	.LBE48
	.uleb128 0x1a
	.long	0xcf0
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
	.long	0xcfa
	.long	.LASF91
	.byte	0x2
	.byte	0x5f
	.byte	0x1
	.long	0xbf
	.byte	0x3
	.uleb128 0x1f
	.string	"v"
	.byte	0x2
	.byte	0x5e
	.long	0xd5
	.byte	0x0
	.uleb128 0x14
	.long	0xd76
	.long	.LASF92
	.byte	0x2
	.byte	0xa6
	.byte	0x1
	.quad	.LFB118
	.quad	.LFE118
	.byte	0x1
	.byte	0x57
	.uleb128 0x15
	.string	"dst"
	.byte	0x2
	.byte	0xa5
	.long	0xac
	.byte	0x1
	.byte	0x55
	.uleb128 0x15
	.string	"src"
	.byte	0x2
	.byte	0xa5
	.long	0x480
	.byte	0x1
	.byte	0x54
	.uleb128 0x18
	.long	.LASF75
	.byte	0x2
	.byte	0xa5
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x17
	.string	"in"
	.byte	0x2
	.byte	0xa7
	.long	0x480
	.byte	0x1
	.byte	0x54
	.uleb128 0x17
	.string	"out"
	.byte	0x2
	.byte	0xa8
	.long	0xb85
	.byte	0x1
	.byte	0x55
	.uleb128 0x1d
	.long	0xcdf
	.quad	.LBB53
	.quad	.LBE53
	.uleb128 0x1a
	.long	0xcf0
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
	.long	0xe4e
	.long	.LASF93
	.byte	0x2
	.byte	0x71
	.byte	0x1
	.quad	.LFB121
	.quad	.LFE121
	.byte	0x1
	.byte	0x57
	.uleb128 0x15
	.string	"dst"
	.byte	0x2
	.byte	0x70
	.long	0x453
	.byte	0x1
	.byte	0x55
	.uleb128 0x15
	.string	"src"
	.byte	0x2
	.byte	0x70
	.long	0xed
	.byte	0x1
	.byte	0x54
	.uleb128 0x18
	.long	.LASF75
	.byte	0x2
	.byte	0x70
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x15
	.string	"vol"
	.byte	0x2
	.byte	0x70
	.long	0x459
	.byte	0x1
	.byte	0x52
	.uleb128 0x17
	.string	"out"
	.byte	0x2
	.byte	0x72
	.long	0x453
	.byte	0x1
	.byte	0x55
	.uleb128 0x17
	.string	"in"
	.byte	0x2
	.byte	0x73
	.long	0xb85
	.byte	0x1
	.byte	0x54
	.uleb128 0x19
	.long	0xe19
	.long	0xe4e
	.quad	.LBB56
	.quad	.LBE56
	.uleb128 0x1a
	.long	0xe5f
	.byte	0x1
	.byte	0x50
	.uleb128 0x1b
	.quad	.LBB57
	.quad	.LBE57
	.uleb128 0x1c
	.long	0xe68
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.long	0xe4e
	.quad	.LBB58
	.quad	.LBE58
	.uleb128 0x1a
	.long	0xe5f
	.byte	0x1
	.byte	0x50
	.uleb128 0x1b
	.quad	.LBB59
	.quad	.LBE59
	.uleb128 0x1c
	.long	0xe68
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
	.long	0xe73
	.long	.LASF94
	.byte	0x2
	.byte	0x55
	.byte	0x1
	.long	0xd5
	.byte	0x3
	.uleb128 0x1f
	.string	"v"
	.byte	0x2
	.byte	0x54
	.long	0xbf
	.uleb128 0x20
	.string	"nv"
	.byte	0x2
	.byte	0x56
	.long	0xbf
	.byte	0x0
	.uleb128 0x14
	.long	0xf17
	.long	.LASF95
	.byte	0x2
	.byte	0x85
	.byte	0x1
	.quad	.LFB122
	.quad	.LFE122
	.byte	0x1
	.byte	0x57
	.uleb128 0x15
	.string	"dst"
	.byte	0x2
	.byte	0x84
	.long	0x453
	.byte	0x1
	.byte	0x55
	.uleb128 0x15
	.string	"src"
	.byte	0x2
	.byte	0x84
	.long	0xed
	.byte	0x1
	.byte	0x54
	.uleb128 0x18
	.long	.LASF75
	.byte	0x2
	.byte	0x84
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x15
	.string	"vol"
	.byte	0x2
	.byte	0x84
	.long	0x459
	.byte	0x1
	.byte	0x52
	.uleb128 0x17
	.string	"out"
	.byte	0x2
	.byte	0x86
	.long	0x453
	.byte	0x1
	.byte	0x55
	.uleb128 0x17
	.string	"in"
	.byte	0x2
	.byte	0x87
	.long	0xb85
	.byte	0x1
	.byte	0x54
	.uleb128 0x19
	.long	0xeff
	.long	0xe4e
	.quad	.LBB60
	.quad	.LBE60
	.uleb128 0x1a
	.long	0xe5f
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x1b
	.quad	.LBB62
	.quad	.LBE62
	.uleb128 0x1c
	.long	0xe68
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
	.long	0x102a
	.long	.LASF96
	.byte	0x2
	.byte	0x9a
	.byte	0x1
	.quad	.LFB123
	.quad	.LFE123
	.byte	0x1
	.byte	0x57
	.uleb128 0x15
	.string	"dst"
	.byte	0x2
	.byte	0x99
	.long	0xac
	.byte	0x1
	.byte	0x55
	.uleb128 0x15
	.string	"src"
	.byte	0x2
	.byte	0x99
	.long	0x480
	.byte	0x1
	.byte	0x54
	.uleb128 0x18
	.long	.LASF75
	.byte	0x2
	.byte	0x99
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x17
	.string	"in"
	.byte	0x2
	.byte	0x9b
	.long	0x480
	.byte	0x1
	.byte	0x54
	.uleb128 0x17
	.string	"out"
	.byte	0x2
	.byte	0x9c
	.long	0xb85
	.byte	0x1
	.byte	0x55
	.uleb128 0x19
	.long	0xf96
	.long	0x102a
	.quad	.LBB63
	.quad	.LBE63
	.uleb128 0x1a
	.long	0x103b
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x19
	.long	0xff0
	.long	0x102a
	.quad	.LBB65
	.quad	.LBE65
	.uleb128 0x1a
	.long	0x103b
	.byte	0x1
	.byte	0x50
	.uleb128 0x1d
	.long	0x1045
	.quad	.LBB68
	.quad	.LBE68
	.uleb128 0x1a
	.long	0x1056
	.byte	0x1
	.byte	0x50
	.uleb128 0x1b
	.quad	.LBB70
	.quad	.LBE70
	.uleb128 0x1c
	.long	0x1060
	.uleb128 0x1c
	.long	0x106b
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.long	0x1045
	.quad	.LBB73
	.quad	.LBE73
	.uleb128 0x1a
	.long	0x1056
	.byte	0x1
	.byte	0x50
	.uleb128 0x1b
	.quad	.LBB75
	.quad	.LBE75
	.uleb128 0x1c
	.long	0x1060
	.uleb128 0x1c
	.long	0x106b
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
	.long	0x1045
	.long	.LASF97
	.byte	0x2
	.byte	0x5f
	.byte	0x1
	.long	0xbf
	.byte	0x3
	.uleb128 0x1f
	.string	"v"
	.byte	0x2
	.byte	0x5e
	.long	0xd5
	.byte	0x0
	.uleb128 0x1e
	.long	0x1078
	.long	.LASF98
	.byte	0x3
	.byte	0x2f
	.byte	0x1
	.long	0x3a6
	.byte	0x3
	.uleb128 0x1f
	.string	"x"
	.byte	0x3
	.byte	0x2e
	.long	0x3a6
	.uleb128 0x23
	.uleb128 0x20
	.string	"__v"
	.byte	0x3
	.byte	0x30
	.long	0x68
	.uleb128 0x20
	.string	"__x"
	.byte	0x3
	.byte	0x30
	.long	0x68
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
	.long	0x112d
	.long	.LASF99
	.byte	0x2
	.byte	0xa6
	.byte	0x1
	.quad	.LFB124
	.quad	.LFE124
	.byte	0x1
	.byte	0x57
	.uleb128 0x15
	.string	"dst"
	.byte	0x2
	.byte	0xa5
	.long	0xac
	.byte	0x1
	.byte	0x55
	.uleb128 0x15
	.string	"src"
	.byte	0x2
	.byte	0xa5
	.long	0x480
	.byte	0x1
	.byte	0x54
	.uleb128 0x18
	.long	.LASF75
	.byte	0x2
	.byte	0xa5
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x17
	.string	"in"
	.byte	0x2
	.byte	0xa7
	.long	0x480
	.byte	0x1
	.byte	0x54
	.uleb128 0x17
	.string	"out"
	.byte	0x2
	.byte	0xa8
	.long	0xb85
	.byte	0x1
	.byte	0x55
	.uleb128 0x1d
	.long	0x102a
	.quad	.LBB76
	.quad	.LBE76
	.uleb128 0x1a
	.long	0x103b
	.byte	0x1
	.byte	0x50
	.uleb128 0x1d
	.long	0x1045
	.quad	.LBB79
	.quad	.LBE79
	.uleb128 0x1a
	.long	0x1056
	.byte	0x1
	.byte	0x50
	.uleb128 0x1b
	.quad	.LBB81
	.quad	.LBE81
	.uleb128 0x1c
	.long	0x1060
	.uleb128 0x1c
	.long	0x106b
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
	.long	0x1205
	.long	.LASF100
	.byte	0x2
	.byte	0x71
	.byte	0x1
	.quad	.LFB127
	.quad	.LFE127
	.byte	0x1
	.byte	0x57
	.uleb128 0x15
	.string	"dst"
	.byte	0x2
	.byte	0x70
	.long	0x453
	.byte	0x1
	.byte	0x55
	.uleb128 0x15
	.string	"src"
	.byte	0x2
	.byte	0x70
	.long	0xed
	.byte	0x1
	.byte	0x54
	.uleb128 0x18
	.long	.LASF75
	.byte	0x2
	.byte	0x70
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x15
	.string	"vol"
	.byte	0x2
	.byte	0x70
	.long	0x459
	.byte	0x1
	.byte	0x52
	.uleb128 0x17
	.string	"out"
	.byte	0x2
	.byte	0x72
	.long	0x453
	.byte	0x1
	.byte	0x55
	.uleb128 0x17
	.string	"in"
	.byte	0x2
	.byte	0x73
	.long	0x1205
	.byte	0x1
	.byte	0x54
	.uleb128 0x19
	.long	0x11d0
	.long	0x120b
	.quad	.LBB82
	.quad	.LBE82
	.uleb128 0x1a
	.long	0x121c
	.byte	0x1
	.byte	0x50
	.uleb128 0x1b
	.quad	.LBB83
	.quad	.LBE83
	.uleb128 0x1c
	.long	0x1225
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.long	0x120b
	.quad	.LBB84
	.quad	.LBE84
	.uleb128 0x1a
	.long	0x121c
	.byte	0x1
	.byte	0x50
	.uleb128 0x1b
	.quad	.LBB85
	.quad	.LBE85
	.uleb128 0x1c
	.long	0x1225
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x3a6
	.uleb128 0x1e
	.long	0x1230
	.long	.LASF101
	.byte	0x2
	.byte	0x55
	.byte	0x1
	.long	0xd5
	.byte	0x3
	.uleb128 0x1f
	.string	"v"
	.byte	0x2
	.byte	0x54
	.long	0x3a6
	.uleb128 0x20
	.string	"nv"
	.byte	0x2
	.byte	0x56
	.long	0x3a6
	.byte	0x0
	.uleb128 0x14
	.long	0x12c2
	.long	.LASF102
	.byte	0x2
	.byte	0x85
	.byte	0x1
	.quad	.LFB128
	.quad	.LFE128
	.byte	0x1
	.byte	0x57
	.uleb128 0x15
	.string	"dst"
	.byte	0x2
	.byte	0x84
	.long	0x453
	.byte	0x1
	.byte	0x55
	.uleb128 0x15
	.string	"src"
	.byte	0x2
	.byte	0x84
	.long	0xed
	.byte	0x1
	.byte	0x54
	.uleb128 0x18
	.long	.LASF75
	.byte	0x2
	.byte	0x84
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x15
	.string	"vol"
	.byte	0x2
	.byte	0x84
	.long	0x459
	.byte	0x1
	.byte	0x52
	.uleb128 0x17
	.string	"out"
	.byte	0x2
	.byte	0x86
	.long	0x453
	.byte	0x1
	.byte	0x55
	.uleb128 0x17
	.string	"in"
	.byte	0x2
	.byte	0x87
	.long	0x1205
	.byte	0x1
	.byte	0x54
	.uleb128 0x1d
	.long	0x120b
	.quad	.LBB86
	.quad	.LBE86
	.uleb128 0x21
	.long	0x121c
	.uleb128 0x22
	.long	.Ldebug_ranges0+0x90
	.uleb128 0x1c
	.long	0x1225
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
	.long	0x135f
	.long	.LASF103
	.byte	0x2
	.byte	0x9a
	.byte	0x1
	.quad	.LFB129
	.quad	.LFE129
	.byte	0x1
	.byte	0x57
	.uleb128 0x15
	.string	"dst"
	.byte	0x2
	.byte	0x99
	.long	0xac
	.byte	0x1
	.byte	0x55
	.uleb128 0x15
	.string	"src"
	.byte	0x2
	.byte	0x99
	.long	0x480
	.byte	0x1
	.byte	0x54
	.uleb128 0x18
	.long	.LASF75
	.byte	0x2
	.byte	0x99
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x17
	.string	"in"
	.byte	0x2
	.byte	0x9b
	.long	0x480
	.byte	0x1
	.byte	0x54
	.uleb128 0x17
	.string	"out"
	.byte	0x2
	.byte	0x9c
	.long	0x1205
	.byte	0x1
	.byte	0x55
	.uleb128 0x19
	.long	0x1341
	.long	0x135f
	.quad	.LBB90
	.quad	.LBE90
	.uleb128 0x1a
	.long	0x1370
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x1d
	.long	0x135f
	.quad	.LBB92
	.quad	.LBE92
	.uleb128 0x1a
	.long	0x1370
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
	.long	0x137a
	.long	.LASF104
	.byte	0x2
	.byte	0x5f
	.byte	0x1
	.long	0x3a6
	.byte	0x3
	.uleb128 0x1f
	.string	"v"
	.byte	0x2
	.byte	0x5e
	.long	0xd5
	.byte	0x0
	.uleb128 0x14
	.long	0x13f6
	.long	.LASF105
	.byte	0x2
	.byte	0xa6
	.byte	0x1
	.quad	.LFB130
	.quad	.LFE130
	.byte	0x1
	.byte	0x57
	.uleb128 0x15
	.string	"dst"
	.byte	0x2
	.byte	0xa5
	.long	0xac
	.byte	0x1
	.byte	0x55
	.uleb128 0x15
	.string	"src"
	.byte	0x2
	.byte	0xa5
	.long	0x480
	.byte	0x1
	.byte	0x54
	.uleb128 0x18
	.long	.LASF75
	.byte	0x2
	.byte	0xa5
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x17
	.string	"in"
	.byte	0x2
	.byte	0xa7
	.long	0x480
	.byte	0x1
	.byte	0x54
	.uleb128 0x17
	.string	"out"
	.byte	0x2
	.byte	0xa8
	.long	0x1205
	.byte	0x1
	.byte	0x55
	.uleb128 0x1d
	.long	0x135f
	.quad	.LBB97
	.quad	.LBE97
	.uleb128 0x1a
	.long	0x1370
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
	.long	0x14ce
	.long	.LASF106
	.byte	0x2
	.byte	0x71
	.byte	0x1
	.quad	.LFB133
	.quad	.LFE133
	.byte	0x1
	.byte	0x57
	.uleb128 0x15
	.string	"dst"
	.byte	0x2
	.byte	0x70
	.long	0x453
	.byte	0x1
	.byte	0x55
	.uleb128 0x15
	.string	"src"
	.byte	0x2
	.byte	0x70
	.long	0xed
	.byte	0x1
	.byte	0x54
	.uleb128 0x18
	.long	.LASF75
	.byte	0x2
	.byte	0x70
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x15
	.string	"vol"
	.byte	0x2
	.byte	0x70
	.long	0x459
	.byte	0x1
	.byte	0x52
	.uleb128 0x17
	.string	"out"
	.byte	0x2
	.byte	0x72
	.long	0x453
	.byte	0x1
	.byte	0x55
	.uleb128 0x17
	.string	"in"
	.byte	0x2
	.byte	0x73
	.long	0x1205
	.byte	0x1
	.byte	0x54
	.uleb128 0x19
	.long	0x1499
	.long	0x14ce
	.quad	.LBB100
	.quad	.LBE100
	.uleb128 0x1a
	.long	0x14df
	.byte	0x1
	.byte	0x50
	.uleb128 0x1b
	.quad	.LBB101
	.quad	.LBE101
	.uleb128 0x1c
	.long	0x14e8
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.long	0x14ce
	.quad	.LBB102
	.quad	.LBE102
	.uleb128 0x1a
	.long	0x14df
	.byte	0x1
	.byte	0x50
	.uleb128 0x1b
	.quad	.LBB103
	.quad	.LBE103
	.uleb128 0x1c
	.long	0x14e8
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
	.long	0x14f3
	.long	.LASF107
	.byte	0x2
	.byte	0x55
	.byte	0x1
	.long	0xd5
	.byte	0x3
	.uleb128 0x1f
	.string	"v"
	.byte	0x2
	.byte	0x54
	.long	0x3a6
	.uleb128 0x20
	.string	"nv"
	.byte	0x2
	.byte	0x56
	.long	0x3a6
	.byte	0x0
	.uleb128 0x14
	.long	0x1597
	.long	.LASF108
	.byte	0x2
	.byte	0x85
	.byte	0x1
	.quad	.LFB134
	.quad	.LFE134
	.byte	0x1
	.byte	0x57
	.uleb128 0x15
	.string	"dst"
	.byte	0x2
	.byte	0x84
	.long	0x453
	.byte	0x1
	.byte	0x55
	.uleb128 0x15
	.string	"src"
	.byte	0x2
	.byte	0x84
	.long	0xed
	.byte	0x1
	.byte	0x54
	.uleb128 0x18
	.long	.LASF75
	.byte	0x2
	.byte	0x84
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x15
	.string	"vol"
	.byte	0x2
	.byte	0x84
	.long	0x459
	.byte	0x1
	.byte	0x52
	.uleb128 0x17
	.string	"out"
	.byte	0x2
	.byte	0x86
	.long	0x453
	.byte	0x1
	.byte	0x55
	.uleb128 0x17
	.string	"in"
	.byte	0x2
	.byte	0x87
	.long	0x1205
	.byte	0x1
	.byte	0x54
	.uleb128 0x19
	.long	0x157f
	.long	0x14ce
	.quad	.LBB104
	.quad	.LBE104
	.uleb128 0x1a
	.long	0x14df
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x1b
	.quad	.LBB106
	.quad	.LBE106
	.uleb128 0x1c
	.long	0x14e8
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
	.long	0x16a6
	.long	.LASF109
	.byte	0x2
	.byte	0x9a
	.byte	0x1
	.quad	.LFB135
	.quad	.LFE135
	.byte	0x1
	.byte	0x57
	.uleb128 0x15
	.string	"dst"
	.byte	0x2
	.byte	0x99
	.long	0xac
	.byte	0x1
	.byte	0x55
	.uleb128 0x15
	.string	"src"
	.byte	0x2
	.byte	0x99
	.long	0x480
	.byte	0x1
	.byte	0x54
	.uleb128 0x18
	.long	.LASF75
	.byte	0x2
	.byte	0x99
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x17
	.string	"in"
	.byte	0x2
	.byte	0x9b
	.long	0x480
	.byte	0x1
	.byte	0x54
	.uleb128 0x17
	.string	"out"
	.byte	0x2
	.byte	0x9c
	.long	0x1205
	.byte	0x1
	.byte	0x55
	.uleb128 0x19
	.long	0x1616
	.long	0x16a6
	.quad	.LBB107
	.quad	.LBE107
	.uleb128 0x1a
	.long	0x16b7
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x19
	.long	0x166e
	.long	0x16a6
	.quad	.LBB109
	.quad	.LBE109
	.uleb128 0x1a
	.long	0x16b7
	.byte	0x1
	.byte	0x50
	.uleb128 0x1d
	.long	0x1045
	.quad	.LBB112
	.quad	.LBE112
	.uleb128 0x21
	.long	0x1056
	.uleb128 0x1b
	.quad	.LBB114
	.quad	.LBE114
	.uleb128 0x1c
	.long	0x1060
	.uleb128 0x1c
	.long	0x106b
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.long	0x1045
	.quad	.LBB117
	.quad	.LBE117
	.uleb128 0x21
	.long	0x1056
	.uleb128 0x1b
	.quad	.LBB119
	.quad	.LBE119
	.uleb128 0x1c
	.long	0x1060
	.uleb128 0x1c
	.long	0x106b
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
	.long	0x16c1
	.long	.LASF110
	.byte	0x2
	.byte	0x5f
	.byte	0x1
	.long	0x3a6
	.byte	0x3
	.uleb128 0x1f
	.string	"v"
	.byte	0x2
	.byte	0x5e
	.long	0xd5
	.byte	0x0
	.uleb128 0x14
	.long	0x1774
	.long	.LASF111
	.byte	0x2
	.byte	0xa6
	.byte	0x1
	.quad	.LFB136
	.quad	.LFE136
	.byte	0x1
	.byte	0x57
	.uleb128 0x15
	.string	"dst"
	.byte	0x2
	.byte	0xa5
	.long	0xac
	.byte	0x1
	.byte	0x55
	.uleb128 0x15
	.string	"src"
	.byte	0x2
	.byte	0xa5
	.long	0x480
	.byte	0x1
	.byte	0x54
	.uleb128 0x18
	.long	.LASF75
	.byte	0x2
	.byte	0xa5
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x17
	.string	"in"
	.byte	0x2
	.byte	0xa7
	.long	0x480
	.byte	0x1
	.byte	0x54
	.uleb128 0x17
	.string	"out"
	.byte	0x2
	.byte	0xa8
	.long	0x1205
	.byte	0x1
	.byte	0x55
	.uleb128 0x1d
	.long	0x16a6
	.quad	.LBB120
	.quad	.LBE120
	.uleb128 0x1a
	.long	0x16b7
	.byte	0x1
	.byte	0x50
	.uleb128 0x1d
	.long	0x1045
	.quad	.LBB123
	.quad	.LBE123
	.uleb128 0x21
	.long	0x1056
	.uleb128 0x1b
	.quad	.LBB125
	.quad	.LBE125
	.uleb128 0x1c
	.long	0x1060
	.uleb128 0x1c
	.long	0x106b
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
	.long	0x181a
	.long	.LASF112
	.byte	0x2
	.byte	0x71
	.byte	0x1
	.quad	.LFB139
	.quad	.LFE139
	.byte	0x1
	.byte	0x57
	.uleb128 0x15
	.string	"dst"
	.byte	0x2
	.byte	0x70
	.long	0x453
	.byte	0x1
	.byte	0x55
	.uleb128 0x15
	.string	"src"
	.byte	0x2
	.byte	0x70
	.long	0xed
	.byte	0x1
	.byte	0x54
	.uleb128 0x18
	.long	.LASF75
	.byte	0x2
	.byte	0x70
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x15
	.string	"vol"
	.byte	0x2
	.byte	0x70
	.long	0x459
	.byte	0x1
	.byte	0x52
	.uleb128 0x17
	.string	"out"
	.byte	0x2
	.byte	0x72
	.long	0x453
	.byte	0x1
	.byte	0x55
	.uleb128 0x17
	.string	"in"
	.byte	0x2
	.byte	0x73
	.long	0xe7
	.byte	0x1
	.byte	0x54
	.uleb128 0x19
	.long	0x17fe
	.long	0x181a
	.quad	.LBB126
	.quad	.LBE126
	.uleb128 0x21
	.long	0x182b
	.byte	0x0
	.uleb128 0x1d
	.long	0x181a
	.quad	.LBB127
	.quad	.LBE127
	.uleb128 0x21
	.long	0x182b
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
	.long	0x183f
	.long	.LASF113
	.byte	0x2
	.byte	0x55
	.byte	0x1
	.long	0xd5
	.byte	0x3
	.uleb128 0x1f
	.string	"v"
	.byte	0x2
	.byte	0x54
	.long	0xca
	.uleb128 0x20
	.string	"nv"
	.byte	0x2
	.byte	0x56
	.long	0xca
	.byte	0x0
	.uleb128 0x14
	.long	0x18dd
	.long	.LASF114
	.byte	0x2
	.byte	0x85
	.byte	0x1
	.quad	.LFB140
	.quad	.LFE140
	.byte	0x1
	.byte	0x57
	.uleb128 0x15
	.string	"dst"
	.byte	0x2
	.byte	0x84
	.long	0x453
	.byte	0x1
	.byte	0x55
	.uleb128 0x15
	.string	"src"
	.byte	0x2
	.byte	0x84
	.long	0xed
	.byte	0x1
	.byte	0x54
	.uleb128 0x18
	.long	.LASF75
	.byte	0x2
	.byte	0x84
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x15
	.string	"vol"
	.byte	0x2
	.byte	0x84
	.long	0x459
	.byte	0x1
	.byte	0x52
	.uleb128 0x17
	.string	"out"
	.byte	0x2
	.byte	0x86
	.long	0x453
	.byte	0x1
	.byte	0x55
	.uleb128 0x17
	.string	"in"
	.byte	0x2
	.byte	0x87
	.long	0xe7
	.byte	0x1
	.byte	0x54
	.uleb128 0x1d
	.long	0x181a
	.quad	.LBB128
	.quad	.LBE128
	.uleb128 0x21
	.long	0x182b
	.uleb128 0x1b
	.quad	.LBB129
	.quad	.LBE129
	.uleb128 0x1c
	.long	0x1834
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
	.long	0x197a
	.long	.LASF115
	.byte	0x2
	.byte	0x9a
	.byte	0x1
	.quad	.LFB141
	.quad	.LFE141
	.byte	0x1
	.byte	0x57
	.uleb128 0x15
	.string	"dst"
	.byte	0x2
	.byte	0x99
	.long	0xac
	.byte	0x1
	.byte	0x55
	.uleb128 0x15
	.string	"src"
	.byte	0x2
	.byte	0x99
	.long	0x480
	.byte	0x1
	.byte	0x54
	.uleb128 0x18
	.long	.LASF75
	.byte	0x2
	.byte	0x99
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x17
	.string	"in"
	.byte	0x2
	.byte	0x9b
	.long	0x480
	.byte	0x1
	.byte	0x54
	.uleb128 0x17
	.string	"out"
	.byte	0x2
	.byte	0x9c
	.long	0xe7
	.byte	0x1
	.byte	0x55
	.uleb128 0x19
	.long	0x195c
	.long	0x197a
	.quad	.LBB130
	.quad	.LBE130
	.uleb128 0x1a
	.long	0x198b
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x1d
	.long	0x197a
	.quad	.LBB132
	.quad	.LBE132
	.uleb128 0x1a
	.long	0x198b
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
	.long	0x1995
	.long	.LASF116
	.byte	0x2
	.byte	0x5f
	.byte	0x1
	.long	0xca
	.byte	0x3
	.uleb128 0x1f
	.string	"v"
	.byte	0x2
	.byte	0x5e
	.long	0xd5
	.byte	0x0
	.uleb128 0x14
	.long	0x1a11
	.long	.LASF117
	.byte	0x2
	.byte	0xa6
	.byte	0x1
	.quad	.LFB142
	.quad	.LFE142
	.byte	0x1
	.byte	0x57
	.uleb128 0x15
	.string	"dst"
	.byte	0x2
	.byte	0xa5
	.long	0xac
	.byte	0x1
	.byte	0x55
	.uleb128 0x15
	.string	"src"
	.byte	0x2
	.byte	0xa5
	.long	0x480
	.byte	0x1
	.byte	0x54
	.uleb128 0x18
	.long	.LASF75
	.byte	0x2
	.byte	0xa5
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x17
	.string	"in"
	.byte	0x2
	.byte	0xa7
	.long	0x480
	.byte	0x1
	.byte	0x54
	.uleb128 0x17
	.string	"out"
	.byte	0x2
	.byte	0xa8
	.long	0xe7
	.byte	0x1
	.byte	0x55
	.uleb128 0x1d
	.long	0x197a
	.quad	.LBB137
	.quad	.LBE137
	.uleb128 0x1a
	.long	0x198b
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
	.long	0x1b53
	.long	.LASF118
	.byte	0x2
	.byte	0x71
	.byte	0x1
	.quad	.LFB145
	.quad	.LFE145
	.byte	0x1
	.byte	0x57
	.uleb128 0x15
	.string	"dst"
	.byte	0x2
	.byte	0x70
	.long	0x453
	.byte	0x1
	.byte	0x55
	.uleb128 0x15
	.string	"src"
	.byte	0x2
	.byte	0x70
	.long	0xed
	.byte	0x1
	.byte	0x54
	.uleb128 0x18
	.long	.LASF75
	.byte	0x2
	.byte	0x70
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x15
	.string	"vol"
	.byte	0x2
	.byte	0x70
	.long	0x459
	.byte	0x1
	.byte	0x52
	.uleb128 0x17
	.string	"out"
	.byte	0x2
	.byte	0x72
	.long	0x453
	.byte	0x1
	.byte	0x55
	.uleb128 0x17
	.string	"in"
	.byte	0x2
	.byte	0x73
	.long	0xe7
	.byte	0x1
	.byte	0x54
	.uleb128 0x19
	.long	0x1ae9
	.long	0x1b53
	.quad	.LBB140
	.quad	.LBE140
	.uleb128 0x21
	.long	0x1b64
	.uleb128 0x1b
	.quad	.LBB141
	.quad	.LBE141
	.uleb128 0x1c
	.long	0x1b6d
	.uleb128 0x1d
	.long	0x1b78
	.quad	.LBB142
	.quad	.LBE142
	.uleb128 0x21
	.long	0x1b89
	.uleb128 0x1b
	.quad	.LBB144
	.quad	.LBE144
	.uleb128 0x1c
	.long	0x1b93
	.uleb128 0x1c
	.long	0x1b9e
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.long	0x1b53
	.quad	.LBB145
	.quad	.LBE145
	.uleb128 0x21
	.long	0x1b64
	.uleb128 0x1b
	.quad	.LBB146
	.quad	.LBE146
	.uleb128 0x1c
	.long	0x1b6d
	.uleb128 0x1d
	.long	0x1b78
	.quad	.LBB147
	.quad	.LBE147
	.uleb128 0x21
	.long	0x1b89
	.uleb128 0x1b
	.quad	.LBB149
	.quad	.LBE149
	.uleb128 0x1c
	.long	0x1b93
	.uleb128 0x1c
	.long	0x1b9e
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
	.long	0x1b78
	.long	.LASF119
	.byte	0x2
	.byte	0x55
	.byte	0x1
	.long	0xd5
	.byte	0x3
	.uleb128 0x1f
	.string	"v"
	.byte	0x2
	.byte	0x54
	.long	0xca
	.uleb128 0x20
	.string	"nv"
	.byte	0x2
	.byte	0x56
	.long	0xca
	.byte	0x0
	.uleb128 0x1e
	.long	0x1bab
	.long	.LASF120
	.byte	0x3
	.byte	0x34
	.byte	0x1
	.long	0x3b1
	.byte	0x3
	.uleb128 0x1f
	.string	"x"
	.byte	0x3
	.byte	0x33
	.long	0x3b1
	.uleb128 0x23
	.uleb128 0x20
	.string	"__v"
	.byte	0x3
	.byte	0x35
	.long	0x46
	.uleb128 0x20
	.string	"__x"
	.byte	0x3
	.byte	0x35
	.long	0x46
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
	.long	0x1c86
	.long	.LASF121
	.byte	0x2
	.byte	0x85
	.byte	0x1
	.quad	.LFB146
	.quad	.LFE146
	.byte	0x1
	.byte	0x57
	.uleb128 0x15
	.string	"dst"
	.byte	0x2
	.byte	0x84
	.long	0x453
	.byte	0x1
	.byte	0x55
	.uleb128 0x15
	.string	"src"
	.byte	0x2
	.byte	0x84
	.long	0xed
	.byte	0x1
	.byte	0x54
	.uleb128 0x18
	.long	.LASF75
	.byte	0x2
	.byte	0x84
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x15
	.string	"vol"
	.byte	0x2
	.byte	0x84
	.long	0x459
	.byte	0x1
	.byte	0x52
	.uleb128 0x17
	.string	"out"
	.byte	0x2
	.byte	0x86
	.long	0x453
	.byte	0x1
	.byte	0x55
	.uleb128 0x17
	.string	"in"
	.byte	0x2
	.byte	0x87
	.long	0xe7
	.byte	0x1
	.byte	0x54
	.uleb128 0x19
	.long	0x1c37
	.long	0x1b53
	.quad	.LBB150
	.quad	.LBE150
	.uleb128 0x1a
	.long	0x1b64
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x1b
	.quad	.LBB152
	.quad	.LBE152
	.uleb128 0x1c
	.long	0x1b6d
	.uleb128 0x1d
	.long	0x1b78
	.quad	.LBB153
	.quad	.LBE153
	.uleb128 0x21
	.long	0x1b89
	.uleb128 0x1b
	.quad	.LBB155
	.quad	.LBE155
	.uleb128 0x1c
	.long	0x1b93
	.uleb128 0x1c
	.long	0x1b9e
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
	.long	0x1d23
	.long	.LASF122
	.byte	0x2
	.byte	0x9a
	.byte	0x1
	.quad	.LFB147
	.quad	.LFE147
	.byte	0x1
	.byte	0x57
	.uleb128 0x15
	.string	"dst"
	.byte	0x2
	.byte	0x99
	.long	0xac
	.byte	0x1
	.byte	0x55
	.uleb128 0x15
	.string	"src"
	.byte	0x2
	.byte	0x99
	.long	0x480
	.byte	0x1
	.byte	0x54
	.uleb128 0x18
	.long	.LASF75
	.byte	0x2
	.byte	0x99
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x17
	.string	"in"
	.byte	0x2
	.byte	0x9b
	.long	0x480
	.byte	0x1
	.byte	0x54
	.uleb128 0x17
	.string	"out"
	.byte	0x2
	.byte	0x9c
	.long	0xe7
	.byte	0x1
	.byte	0x55
	.uleb128 0x19
	.long	0x1d05
	.long	0x1d23
	.quad	.LBB156
	.quad	.LBE156
	.uleb128 0x1a
	.long	0x1d34
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x1d
	.long	0x1d23
	.quad	.LBB158
	.quad	.LBE158
	.uleb128 0x1a
	.long	0x1d34
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
	.long	0x1d3e
	.long	.LASF123
	.byte	0x2
	.byte	0x5f
	.byte	0x1
	.long	0xca
	.byte	0x3
	.uleb128 0x1f
	.string	"v"
	.byte	0x2
	.byte	0x5e
	.long	0xd5
	.byte	0x0
	.uleb128 0x14
	.long	0x1dba
	.long	.LASF124
	.byte	0x2
	.byte	0xa6
	.byte	0x1
	.quad	.LFB148
	.quad	.LFE148
	.byte	0x1
	.byte	0x57
	.uleb128 0x15
	.string	"dst"
	.byte	0x2
	.byte	0xa5
	.long	0xac
	.byte	0x1
	.byte	0x55
	.uleb128 0x15
	.string	"src"
	.byte	0x2
	.byte	0xa5
	.long	0x480
	.byte	0x1
	.byte	0x54
	.uleb128 0x18
	.long	.LASF75
	.byte	0x2
	.byte	0xa5
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x17
	.string	"in"
	.byte	0x2
	.byte	0xa7
	.long	0x480
	.byte	0x1
	.byte	0x54
	.uleb128 0x17
	.string	"out"
	.byte	0x2
	.byte	0xa8
	.long	0xe7
	.byte	0x1
	.byte	0x55
	.uleb128 0x1d
	.long	0x1d23
	.quad	.LBB163
	.quad	.LBE163
	.uleb128 0x1a
	.long	0x1d34
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
	.long	0x1e8e
	.long	.LASF125
	.byte	0x2
	.byte	0x71
	.byte	0x1
	.quad	.LFB151
	.quad	.LFE151
	.byte	0x1
	.byte	0x57
	.uleb128 0x15
	.string	"dst"
	.byte	0x2
	.byte	0x70
	.long	0x453
	.byte	0x1
	.byte	0x55
	.uleb128 0x15
	.string	"src"
	.byte	0x2
	.byte	0x70
	.long	0xed
	.byte	0x1
	.byte	0x54
	.uleb128 0x18
	.long	.LASF75
	.byte	0x2
	.byte	0x70
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x15
	.string	"vol"
	.byte	0x2
	.byte	0x70
	.long	0x459
	.byte	0x1
	.byte	0x52
	.uleb128 0x17
	.string	"out"
	.byte	0x2
	.byte	0x72
	.long	0x453
	.byte	0x1
	.byte	0x55
	.uleb128 0x17
	.string	"in"
	.byte	0x2
	.byte	0x73
	.long	0x1e8e
	.byte	0x1
	.byte	0x54
	.uleb128 0x19
	.long	0x1e5b
	.long	0x1e94
	.quad	.LBB166
	.quad	.LBE166
	.uleb128 0x21
	.long	0x1ea5
	.uleb128 0x1b
	.quad	.LBB167
	.quad	.LBE167
	.uleb128 0x1c
	.long	0x1eae
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.long	0x1e94
	.quad	.LBB168
	.quad	.LBE168
	.uleb128 0x21
	.long	0x1ea5
	.uleb128 0x1b
	.quad	.LBB169
	.quad	.LBE169
	.uleb128 0x1c
	.long	0x1eae
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x3b1
	.uleb128 0x1e
	.long	0x1eb9
	.long	.LASF126
	.byte	0x2
	.byte	0x55
	.byte	0x1
	.long	0xd5
	.byte	0x3
	.uleb128 0x1f
	.string	"v"
	.byte	0x2
	.byte	0x54
	.long	0x3b1
	.uleb128 0x20
	.string	"nv"
	.byte	0x2
	.byte	0x56
	.long	0x3b1
	.byte	0x0
	.uleb128 0x14
	.long	0x1f4b
	.long	.LASF127
	.byte	0x2
	.byte	0x85
	.byte	0x1
	.quad	.LFB152
	.quad	.LFE152
	.byte	0x1
	.byte	0x57
	.uleb128 0x15
	.string	"dst"
	.byte	0x2
	.byte	0x84
	.long	0x453
	.byte	0x1
	.byte	0x55
	.uleb128 0x15
	.string	"src"
	.byte	0x2
	.byte	0x84
	.long	0xed
	.byte	0x1
	.byte	0x54
	.uleb128 0x18
	.long	.LASF75
	.byte	0x2
	.byte	0x84
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x15
	.string	"vol"
	.byte	0x2
	.byte	0x84
	.long	0x459
	.byte	0x1
	.byte	0x52
	.uleb128 0x17
	.string	"out"
	.byte	0x2
	.byte	0x86
	.long	0x453
	.byte	0x1
	.byte	0x55
	.uleb128 0x17
	.string	"in"
	.byte	0x2
	.byte	0x87
	.long	0x1e8e
	.byte	0x1
	.byte	0x54
	.uleb128 0x1d
	.long	0x1e94
	.quad	.LBB170
	.quad	.LBE170
	.uleb128 0x21
	.long	0x1ea5
	.uleb128 0x22
	.long	.Ldebug_ranges0+0xc0
	.uleb128 0x1c
	.long	0x1eae
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
	.long	0x1fe8
	.long	.LASF128
	.byte	0x2
	.byte	0x9a
	.byte	0x1
	.quad	.LFB153
	.quad	.LFE153
	.byte	0x1
	.byte	0x57
	.uleb128 0x15
	.string	"dst"
	.byte	0x2
	.byte	0x99
	.long	0xac
	.byte	0x1
	.byte	0x55
	.uleb128 0x15
	.string	"src"
	.byte	0x2
	.byte	0x99
	.long	0x480
	.byte	0x1
	.byte	0x54
	.uleb128 0x18
	.long	.LASF75
	.byte	0x2
	.byte	0x99
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x17
	.string	"in"
	.byte	0x2
	.byte	0x9b
	.long	0x480
	.byte	0x1
	.byte	0x54
	.uleb128 0x17
	.string	"out"
	.byte	0x2
	.byte	0x9c
	.long	0x1e8e
	.byte	0x1
	.byte	0x55
	.uleb128 0x19
	.long	0x1fca
	.long	0x1fe8
	.quad	.LBB174
	.quad	.LBE174
	.uleb128 0x1a
	.long	0x1ff9
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.uleb128 0x1d
	.long	0x1fe8
	.quad	.LBB176
	.quad	.LBE176
	.uleb128 0x1a
	.long	0x1ff9
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
	.long	0x2003
	.long	.LASF129
	.byte	0x2
	.byte	0x5f
	.byte	0x1
	.long	0x3b1
	.byte	0x3
	.uleb128 0x1f
	.string	"v"
	.byte	0x2
	.byte	0x5e
	.long	0xd5
	.byte	0x0
	.uleb128 0x14
	.long	0x207f
	.long	.LASF130
	.byte	0x2
	.byte	0xa6
	.byte	0x1
	.quad	.LFB154
	.quad	.LFE154
	.byte	0x1
	.byte	0x57
	.uleb128 0x15
	.string	"dst"
	.byte	0x2
	.byte	0xa5
	.long	0xac
	.byte	0x1
	.byte	0x55
	.uleb128 0x15
	.string	"src"
	.byte	0x2
	.byte	0xa5
	.long	0x480
	.byte	0x1
	.byte	0x54
	.uleb128 0x18
	.long	.LASF75
	.byte	0x2
	.byte	0xa5
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x17
	.string	"in"
	.byte	0x2
	.byte	0xa7
	.long	0x480
	.byte	0x1
	.byte	0x54
	.uleb128 0x17
	.string	"out"
	.byte	0x2
	.byte	0xa8
	.long	0x1e8e
	.byte	0x1
	.byte	0x55
	.uleb128 0x1d
	.long	0x1fe8
	.quad	.LBB181
	.quad	.LBE181
	.uleb128 0x1a
	.long	0x1ff9
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
	.long	0x21c1
	.long	.LASF131
	.byte	0x2
	.byte	0x71
	.byte	0x1
	.quad	.LFB157
	.quad	.LFE157
	.byte	0x1
	.byte	0x57
	.uleb128 0x15
	.string	"dst"
	.byte	0x2
	.byte	0x70
	.long	0x453
	.byte	0x1
	.byte	0x55
	.uleb128 0x15
	.string	"src"
	.byte	0x2
	.byte	0x70
	.long	0xed
	.byte	0x1
	.byte	0x54
	.uleb128 0x18
	.long	.LASF75
	.byte	0x2
	.byte	0x70
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x15
	.string	"vol"
	.byte	0x2
	.byte	0x70
	.long	0x459
	.byte	0x1
	.byte	0x52
	.uleb128 0x17
	.string	"out"
	.byte	0x2
	.byte	0x72
	.long	0x453
	.byte	0x1
	.byte	0x55
	.uleb128 0x17
	.string	"in"
	.byte	0x2
	.byte	0x73
	.long	0x1e8e
	.byte	0x1
	.byte	0x54
	.uleb128 0x19
	.long	0x2157
	.long	0x21c1
	.quad	.LBB184
	.quad	.LBE184
	.uleb128 0x21
	.long	0x21d2
	.uleb128 0x1b
	.quad	.LBB185
	.quad	.LBE185
	.uleb128 0x1c
	.long	0x21db
	.uleb128 0x1d
	.long	0x1b78
	.quad	.LBB186
	.quad	.LBE186
	.uleb128 0x21
	.long	0x1b89
	.uleb128 0x1b
	.quad	.LBB188
	.quad	.LBE188
	.uleb128 0x1c
	.long	0x1b93
	.uleb128 0x1c
	.long	0x1b9e
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.long	0x21c1
	.quad	.LBB189
	.quad	.LBE189
	.uleb128 0x21
	.long	0x21d2
	.uleb128 0x1b
	.quad	.LBB190
	.quad	.LBE190
	.uleb128 0x1c
	.long	0x21db
	.uleb128 0x1d
	.long	0x1b78
	.quad	.LBB191
	.quad	.LBE191
	.uleb128 0x21
	.long	0x1b89
	.uleb128 0x1b
	.quad	.LBB193
	.quad	.LBE193
	.uleb128 0x1c
	.long	0x1b93
	.uleb128 0x1c
	.long	0x1b9e
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
	.long	0x21e6
	.long	.LASF132
	.byte	0x2
	.byte	0x55
	.byte	0x1
	.long	0xd5
	.byte	0x3
	.uleb128 0x1f
	.string	"v"
	.byte	0x2
	.byte	0x54
	.long	0x3b1
	.uleb128 0x20
	.string	"nv"
	.byte	0x2
	.byte	0x56
	.long	0x3b1
	.byte	0x0
	.uleb128 0x14
	.long	0x22c1
	.long	.LASF133
	.byte	0x2
	.byte	0x85
	.byte	0x1
	.quad	.LFB158
	.quad	.LFE158
	.byte	0x1
	.byte	0x57
	.uleb128 0x15
	.string	"dst"
	.byte	0x2
	.byte	0x84
	.long	0x453
	.byte	0x1
	.byte	0x55
	.uleb128 0x15
	.string	"src"
	.byte	0x2
	.byte	0x84
	.long	0xed
	.byte	0x1
	.byte	0x54
	.uleb128 0x18
	.long	.LASF75
	.byte	0x2
	.byte	0x84
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x15
	.string	"vol"
	.byte	0x2
	.byte	0x84
	.long	0x459
	.byte	0x1
	.byte	0x52
	.uleb128 0x17
	.string	"out"
	.byte	0x2
	.byte	0x86
	.long	0x453
	.byte	0x1
	.byte	0x55
	.uleb128 0x17
	.string	"in"
	.byte	0x2
	.byte	0x87
	.long	0x1e8e
	.byte	0x1
	.byte	0x54
	.uleb128 0x19
	.long	0x2272
	.long	0x21c1
	.quad	.LBB194
	.quad	.LBE194
	.uleb128 0x1a
	.long	0x21d2
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x1b
	.quad	.LBB196
	.quad	.LBE196
	.uleb128 0x1c
	.long	0x21db
	.uleb128 0x1d
	.long	0x1b78
	.quad	.LBB197
	.quad	.LBE197
	.uleb128 0x21
	.long	0x1b89
	.uleb128 0x1b
	.quad	.LBB199
	.quad	.LBE199
	.uleb128 0x1c
	.long	0x1b93
	.uleb128 0x1c
	.long	0x1b9e
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
	.long	0x2398
	.long	.LASF134
	.byte	0x2
	.byte	0x9a
	.byte	0x1
	.quad	.LFB159
	.quad	.LFE159
	.byte	0x1
	.byte	0x57
	.uleb128 0x15
	.string	"dst"
	.byte	0x2
	.byte	0x99
	.long	0xac
	.byte	0x1
	.byte	0x55
	.uleb128 0x15
	.string	"src"
	.byte	0x2
	.byte	0x99
	.long	0x480
	.byte	0x1
	.byte	0x54
	.uleb128 0x18
	.long	.LASF75
	.byte	0x2
	.byte	0x99
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x17
	.string	"in"
	.byte	0x2
	.byte	0x9b
	.long	0x480
	.byte	0x1
	.byte	0x54
	.uleb128 0x17
	.string	"out"
	.byte	0x2
	.byte	0x9c
	.long	0x1e8e
	.byte	0x1
	.byte	0x55
	.uleb128 0x19
	.long	0x2340
	.long	0x2398
	.quad	.LBB200
	.quad	.LBE200
	.uleb128 0x1a
	.long	0x23a9
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x19
	.long	0x237c
	.long	0x2398
	.quad	.LBB202
	.quad	.LBE202
	.uleb128 0x1a
	.long	0x23a9
	.byte	0x1
	.byte	0x50
	.uleb128 0x1d
	.long	0x1b78
	.quad	.LBB205
	.quad	.LBE205
	.uleb128 0x21
	.long	0x1b89
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.long	0x1b78
	.quad	.LBB208
	.quad	.LBE208
	.uleb128 0x21
	.long	0x1b89
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
	.long	0x23b3
	.long	.LASF135
	.byte	0x2
	.byte	0x5f
	.byte	0x1
	.long	0x3b1
	.byte	0x3
	.uleb128 0x1f
	.string	"v"
	.byte	0x2
	.byte	0x5e
	.long	0xd5
	.byte	0x0
	.uleb128 0x14
	.long	0x244a
	.long	.LASF136
	.byte	0x2
	.byte	0xa6
	.byte	0x1
	.quad	.LFB160
	.quad	.LFE160
	.byte	0x1
	.byte	0x57
	.uleb128 0x15
	.string	"dst"
	.byte	0x2
	.byte	0xa5
	.long	0xac
	.byte	0x1
	.byte	0x55
	.uleb128 0x15
	.string	"src"
	.byte	0x2
	.byte	0xa5
	.long	0x480
	.byte	0x1
	.byte	0x54
	.uleb128 0x18
	.long	.LASF75
	.byte	0x2
	.byte	0xa5
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x17
	.string	"in"
	.byte	0x2
	.byte	0xa7
	.long	0x480
	.byte	0x1
	.byte	0x54
	.uleb128 0x17
	.string	"out"
	.byte	0x2
	.byte	0xa8
	.long	0x1e8e
	.byte	0x1
	.byte	0x55
	.uleb128 0x1d
	.long	0x2398
	.quad	.LBB209
	.quad	.LBE209
	.uleb128 0x1a
	.long	0x23a9
	.byte	0x1
	.byte	0x50
	.uleb128 0x1d
	.long	0x1b78
	.quad	.LBB212
	.quad	.LBE212
	.uleb128 0x21
	.long	0x1b89
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
	.long	0x24ad
	.byte	0x1
	.long	.LASF140
	.byte	0x4
	.value	0x12e
	.byte	0x1
	.long	0xac
	.quad	.LFB161
	.quad	.LFE161
	.byte	0x1
	.byte	0x57
	.uleb128 0x25
	.long	.LASF137
	.byte	0x4
	.value	0x12d
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.uleb128 0x25
	.long	.LASF138
	.byte	0x4
	.value	0x12d
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.uleb128 0x26
	.long	.LASF68
	.byte	0x4
	.value	0x12f
	.long	0x24ad
	.byte	0x1
	.byte	0x52
	.uleb128 0x27
	.long	.LASF139
	.long	0x24c3
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__FUNCTION__.0
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x497
	.uleb128 0xb
	.long	0x24c3
	.long	0x75
	.uleb128 0xc
	.long	0x61
	.byte	0xd
	.byte	0x0
	.uleb128 0x6
	.long	0x24b3
	.uleb128 0x28
	.long	0x25d5
	.byte	0x1
	.long	.LASF141
	.byte	0x5
	.byte	0x20
	.byte	0x1
	.quad	.LFB162
	.quad	.LFE162
	.byte	0x1
	.byte	0x57
	.uleb128 0x18
	.long	.LASF142
	.byte	0x5
	.byte	0x1e
	.long	0xac
	.byte	0x1
	.byte	0x5b
	.uleb128 0x18
	.long	.LASF143
	.byte	0x5
	.byte	0x1e
	.long	0x453
	.byte	0x1
	.byte	0x59
	.uleb128 0x18
	.long	.LASF144
	.byte	0x5
	.byte	0x1e
	.long	0x453
	.byte	0x1
	.byte	0x5a
	.uleb128 0x18
	.long	.LASF145
	.byte	0x5
	.byte	0x1f
	.long	0x4d
	.byte	0x1
	.byte	0x5c
	.uleb128 0x18
	.long	.LASF146
	.byte	0x5
	.byte	0x1f
	.long	0x4d
	.byte	0x1
	.byte	0x5d
	.uleb128 0x29
	.long	.LASF68
	.byte	0x5
	.byte	0x21
	.long	0x24ad
	.uleb128 0x2a
	.long	.LASF147
	.byte	0x5
	.byte	0x22
	.long	0x453
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2a
	.long	.LASF148
	.byte	0x5
	.byte	0x22
	.long	0x453
	.byte	0x1
	.byte	0x56
	.uleb128 0x2a
	.long	.LASF149
	.byte	0x5
	.byte	0x23
	.long	0x453
	.byte	0x1
	.byte	0x5f
	.uleb128 0x2a
	.long	.LASF150
	.byte	0x5
	.byte	0x23
	.long	0x453
	.byte	0x1
	.byte	0x5e
	.uleb128 0x2a
	.long	.LASF72
	.byte	0x5
	.byte	0x24
	.long	0x422
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.long	.LASF151
	.byte	0x5
	.byte	0x24
	.long	0x422
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x17
	.string	"out"
	.byte	0x5
	.byte	0x24
	.long	0x422
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x17
	.string	"t"
	.byte	0x5
	.byte	0x28
	.long	0xd5
	.byte	0x1
	.byte	0x54
	.uleb128 0x2b
	.long	.LASF153
	.byte	0x5
	.byte	0x68
	.quad	.L573
	.uleb128 0x1b
	.quad	.LBB213
	.quad	.LBE213
	.uleb128 0x17
	.string	"i"
	.byte	0x5
	.byte	0x34
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x17
	.string	"n"
	.byte	0x5
	.byte	0x34
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.long	0x26e2
	.byte	0x1
	.long	.LASF152
	.byte	0x5
	.byte	0x20
	.byte	0x1
	.quad	.LFB163
	.quad	.LFE163
	.byte	0x1
	.byte	0x57
	.uleb128 0x18
	.long	.LASF142
	.byte	0x5
	.byte	0x1e
	.long	0xac
	.byte	0x1
	.byte	0x5b
	.uleb128 0x18
	.long	.LASF143
	.byte	0x5
	.byte	0x1e
	.long	0x453
	.byte	0x1
	.byte	0x59
	.uleb128 0x18
	.long	.LASF144
	.byte	0x5
	.byte	0x1e
	.long	0x453
	.byte	0x1
	.byte	0x5a
	.uleb128 0x18
	.long	.LASF145
	.byte	0x5
	.byte	0x1f
	.long	0x4d
	.byte	0x1
	.byte	0x5c
	.uleb128 0x18
	.long	.LASF146
	.byte	0x5
	.byte	0x1f
	.long	0x4d
	.byte	0x1
	.byte	0x5d
	.uleb128 0x29
	.long	.LASF68
	.byte	0x5
	.byte	0x21
	.long	0x24ad
	.uleb128 0x2a
	.long	.LASF147
	.byte	0x5
	.byte	0x22
	.long	0x453
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2a
	.long	.LASF148
	.byte	0x5
	.byte	0x22
	.long	0x453
	.byte	0x1
	.byte	0x56
	.uleb128 0x2a
	.long	.LASF149
	.byte	0x5
	.byte	0x23
	.long	0x453
	.byte	0x1
	.byte	0x5f
	.uleb128 0x2a
	.long	.LASF150
	.byte	0x5
	.byte	0x23
	.long	0x453
	.byte	0x1
	.byte	0x5e
	.uleb128 0x2a
	.long	.LASF72
	.byte	0x5
	.byte	0x24
	.long	0x422
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.long	.LASF151
	.byte	0x5
	.byte	0x24
	.long	0x422
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x17
	.string	"out"
	.byte	0x5
	.byte	0x24
	.long	0x422
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x17
	.string	"t"
	.byte	0x5
	.byte	0x28
	.long	0xd5
	.byte	0x1
	.byte	0x54
	.uleb128 0x2b
	.long	.LASF153
	.byte	0x5
	.byte	0x68
	.quad	.L600
	.uleb128 0x1b
	.quad	.LBB214
	.quad	.LBE214
	.uleb128 0x17
	.string	"i"
	.byte	0x5
	.byte	0x34
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x17
	.string	"n"
	.byte	0x5
	.byte	0x34
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.long	0x2711
	.byte	0x1
	.long	.LASF154
	.byte	0x4
	.value	0x14a
	.byte	0x1
	.quad	.LFB164
	.quad	.LFE164
	.byte	0x1
	.byte	0x57
	.uleb128 0x25
	.long	.LASF142
	.byte	0x4
	.value	0x149
	.long	0xac
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x2c
	.long	0x274e
	.byte	0x1
	.long	.LASF155
	.byte	0x4
	.value	0x14f
	.byte	0x1
	.quad	.LFB165
	.quad	.LFE165
	.byte	0x1
	.byte	0x57
	.uleb128 0x2d
	.string	"buf"
	.byte	0x4
	.value	0x14e
	.long	0x453
	.byte	0x1
	.byte	0x55
	.uleb128 0x2d
	.string	"len"
	.byte	0x4
	.value	0x14e
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0x2e
	.long	.LASF156
	.byte	0x6
	.byte	0x91
	.long	0x364
	.byte	0x1
	.byte	0x1
	.uleb128 0x2e
	.long	.LASF157
	.byte	0x6
	.byte	0x92
	.long	0x364
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0x278a
	.long	0x491
	.uleb128 0xc
	.long	0x61
	.byte	0x1
	.uleb128 0xc
	.long	0x61
	.byte	0x1
	.uleb128 0xc
	.long	0x61
	.byte	0x1
	.uleb128 0xc
	.long	0x61
	.byte	0x2
	.byte	0x0
	.uleb128 0x2f
	.long	.LASF158
	.byte	0x4
	.byte	0x94
	.long	0x2768
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	mixeng_conv
	.uleb128 0xb
	.long	0x27c2
	.long	0x48b
	.uleb128 0xc
	.long	0x61
	.byte	0x1
	.uleb128 0xc
	.long	0x61
	.byte	0x1
	.uleb128 0xc
	.long	0x61
	.byte	0x1
	.uleb128 0xc
	.long	0x61
	.byte	0x2
	.byte	0x0
	.uleb128 0x2f
	.long	.LASF159
	.byte	0x4
	.byte	0xcb
	.long	0x27a0
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	mixeng_clip
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
	.uleb128 0x26
	.byte	0x0
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
	.uleb128 0x18
	.byte	0x0
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
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
	.uleb128 0x1f
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.uleb128 0xb
	.byte	0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x2b
	.uleb128 0xa
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x88
	.value	0x2
	.long	.Ldebug_info0
	.long	0x27d9
	.long	0x244a
	.string	"st_rate_start"
	.long	0x24c8
	.string	"st_rate_flow_mix"
	.long	0x25d5
	.string	"st_rate_flow"
	.long	0x26e2
	.string	"st_rate_stop"
	.long	0x2711
	.string	"mixeng_clear"
	.long	0x278a
	.string	"mixeng_conv"
	.long	0x27c2
	.string	"mixeng_clip"
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
	.quad	.LBB7-.Ltext0
	.quad	.LBE7-.Ltext0
	.quad	.LBB9-.Ltext0
	.quad	.LBE9-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB25-.Ltext0
	.quad	.LBE25-.Ltext0
	.quad	.LBB27-.Ltext0
	.quad	.LBE27-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB43-.Ltext0
	.quad	.LBE43-.Ltext0
	.quad	.LBB45-.Ltext0
	.quad	.LBE45-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB87-.Ltext0
	.quad	.LBE87-.Ltext0
	.quad	.LBB89-.Ltext0
	.quad	.LBE89-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB171-.Ltext0
	.quad	.LBE171-.Ltext0
	.quad	.LBB173-.Ltext0
	.quad	.LBE173-.Ltext0
	.quad	0x0
	.quad	0x0
	.section	.debug_str,"MS",@progbits,1
.LASF12:
	.string	"int8_t"
.LASF101:
	.string	"conv_natural_uint16_t"
.LASF66:
	.string	"t_sample"
.LASF9:
	.string	"size_t"
.LASF134:
	.string	"clip_swap_uint32_t_from_stereo"
.LASF84:
	.string	"clip_natural_uint8_t_from_stereo"
.LASF14:
	.string	"int32_t"
.LASF80:
	.string	"clip_natural_int8_t_from_mono"
.LASF28:
	.string	"_IO_save_end"
.LASF21:
	.string	"_IO_write_base"
.LASF37:
	.string	"_lock"
.LASF89:
	.string	"conv_natural_int16_t_to_mono"
.LASF26:
	.string	"_IO_save_base"
.LASF148:
	.string	"iend"
.LASF34:
	.string	"_cur_column"
.LASF147:
	.string	"istart"
.LASF150:
	.string	"oend"
.LASF44:
	.string	"_mode"
.LASF140:
	.string	"st_rate_start"
.LASF2:
	.string	"long int"
.LASF113:
	.string	"conv_natural_int32_t"
.LASF117:
	.string	"clip_natural_int32_t_from_mono"
.LASF114:
	.string	"conv_natural_int32_t_to_mono"
.LASF105:
	.string	"clip_natural_uint16_t_from_mono"
.LASF54:
	.string	"_IO_marker"
.LASF142:
	.string	"opaque"
.LASF4:
	.string	"short unsigned int"
.LASF7:
	.string	"signed char"
.LASF47:
	.string	"_IO_FILE"
.LASF126:
	.string	"conv_natural_uint32_t"
.LASF136:
	.string	"clip_swap_uint32_t_from_mono"
.LASF6:
	.string	"unsigned char"
.LASF72:
	.string	"ilast"
.LASF139:
	.string	"__FUNCTION__"
.LASF46:
	.string	"__gnuc_va_list"
.LASF5:
	.string	"char"
.LASF106:
	.string	"conv_swap_uint16_t_to_stereo"
.LASF109:
	.string	"clip_swap_uint16_t_from_stereo"
.LASF53:
	.string	"_IO_lock_t"
.LASF138:
	.string	"outrate"
.LASF107:
	.string	"conv_swap_uint16_t"
.LASF16:
	.string	"long long unsigned int"
.LASF115:
	.string	"clip_natural_int32_t_from_stereo"
.LASF104:
	.string	"clip_natural_uint16_t"
.LASF18:
	.string	"_IO_read_ptr"
.LASF50:
	.string	"fp_offset"
.LASF102:
	.string	"conv_natural_uint16_t_to_mono"
.LASF57:
	.string	"_pos"
.LASF156:
	.string	"stdin"
.LASF82:
	.string	"conv_natural_uint8_t"
.LASF90:
	.string	"clip_natural_int16_t_from_stereo"
.LASF29:
	.string	"_markers"
.LASF78:
	.string	"clip_natural_int8_t_from_stereo"
.LASF75:
	.string	"samples"
.LASF91:
	.string	"clip_natural_int16_t"
.LASF118:
	.string	"conv_swap_int32_t_to_stereo"
.LASF123:
	.string	"clip_swap_int32_t"
.LASF48:
	.string	"__va_list_tag"
.LASF96:
	.string	"clip_swap_int16_t_from_stereo"
.LASF71:
	.string	"ipos"
.LASF68:
	.string	"rate"
.LASF38:
	.string	"_offset"
.LASF152:
	.string	"st_rate_flow"
.LASF69:
	.string	"opos"
.LASF158:
	.string	"mixeng_conv"
.LASF95:
	.string	"conv_swap_int16_t_to_mono"
.LASF0:
	.string	"long unsigned int"
.LASF162:
	.string	"/home/remco/Projects/Argos/src"
.LASF125:
	.string	"conv_natural_uint32_t_to_stereo"
.LASF122:
	.string	"clip_swap_int32_t_from_stereo"
.LASF65:
	.string	"st_sample_t"
.LASF32:
	.string	"_flags2"
.LASF20:
	.string	"_IO_read_base"
.LASF76:
	.string	"conv_natural_int8_t"
.LASF52:
	.string	"reg_save_area"
.LASF45:
	.string	"_unused2"
.LASF128:
	.string	"clip_natural_uint32_t_from_stereo"
.LASF149:
	.string	"ostart"
.LASF87:
	.string	"conv_natural_int16_t_to_stereo"
.LASF33:
	.string	"_old_offset"
.LASF133:
	.string	"conv_swap_uint32_t_to_mono"
.LASF141:
	.string	"st_rate_flow_mix"
.LASF67:
	.string	"f_sample"
.LASF3:
	.string	"long long int"
.LASF131:
	.string	"conv_swap_uint32_t_to_stereo"
.LASF23:
	.string	"_IO_write_end"
.LASF49:
	.string	"gp_offset"
.LASF86:
	.string	"clip_natural_uint8_t_from_mono"
.LASF116:
	.string	"clip_natural_int32_t"
.LASF24:
	.string	"_IO_buf_base"
.LASF63:
	.string	"mute"
.LASF55:
	.string	"_next"
.LASF1:
	.string	"unsigned int"
.LASF160:
	.string	"GNU C 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
.LASF145:
	.string	"isamp"
.LASF39:
	.string	"__pad1"
.LASF40:
	.string	"__pad2"
.LASF41:
	.string	"__pad3"
.LASF42:
	.string	"__pad4"
.LASF43:
	.string	"__pad5"
.LASF56:
	.string	"_sbuf"
.LASF51:
	.string	"overflow_arg_area"
.LASF17:
	.string	"_flags"
.LASF73:
	.string	"dolog"
.LASF127:
	.string	"conv_natural_uint32_t_to_mono"
.LASF135:
	.string	"clip_swap_uint32_t"
.LASF108:
	.string	"conv_swap_uint16_t_to_mono"
.LASF110:
	.string	"clip_swap_uint16_t"
.LASF159:
	.string	"mixeng_clip"
.LASF154:
	.string	"st_rate_stop"
.LASF111:
	.string	"clip_swap_uint16_t_from_mono"
.LASF79:
	.string	"clip_natural_int8_t"
.LASF59:
	.string	"uint8_t"
.LASF60:
	.string	"uint16_t"
.LASF10:
	.string	"__off_t"
.LASF120:
	.string	"bswap32"
.LASF30:
	.string	"_chain"
.LASF74:
	.string	"conv_natural_int8_t_to_stereo"
.LASF64:
	.string	"volume_t"
.LASF130:
	.string	"clip_natural_uint32_t_from_mono"
.LASF70:
	.string	"opos_inc"
.LASF143:
	.string	"ibuf"
.LASF137:
	.string	"inrate"
.LASF77:
	.string	"conv_natural_int8_t_to_mono"
.LASF22:
	.string	"_IO_write_ptr"
.LASF27:
	.string	"_IO_backup_base"
.LASF36:
	.string	"_shortbuf"
.LASF81:
	.string	"conv_natural_uint8_t_to_stereo"
.LASF11:
	.string	"__off64_t"
.LASF121:
	.string	"conv_swap_int32_t_to_mono"
.LASF144:
	.string	"obuf"
.LASF161:
	.string	"audio/mixeng.c"
.LASF25:
	.string	"_IO_buf_end"
.LASF124:
	.string	"clip_swap_int32_t_from_mono"
.LASF58:
	.string	"va_list"
.LASF155:
	.string	"mixeng_clear"
.LASF98:
	.string	"bswap16"
.LASF8:
	.string	"short int"
.LASF62:
	.string	"uint64_t"
.LASF13:
	.string	"int16_t"
.LASF35:
	.string	"_vtable_offset"
.LASF129:
	.string	"clip_natural_uint32_t"
.LASF85:
	.string	"clip_natural_uint8_t"
.LASF100:
	.string	"conv_natural_uint16_t_to_stereo"
.LASF93:
	.string	"conv_swap_int16_t_to_stereo"
.LASF153:
	.string	"the_end"
.LASF19:
	.string	"_IO_read_end"
.LASF61:
	.string	"uint32_t"
.LASF31:
	.string	"_fileno"
.LASF146:
	.string	"osamp"
.LASF103:
	.string	"clip_natural_uint16_t_from_stereo"
.LASF157:
	.string	"stdout"
.LASF112:
	.string	"conv_natural_int32_t_to_stereo"
.LASF92:
	.string	"clip_natural_int16_t_from_mono"
.LASF94:
	.string	"conv_swap_int16_t"
.LASF99:
	.string	"clip_swap_int16_t_from_mono"
.LASF151:
	.string	"icur"
.LASF97:
	.string	"clip_swap_int16_t"
.LASF132:
	.string	"conv_swap_uint32_t"
.LASF88:
	.string	"conv_natural_int16_t"
.LASF15:
	.string	"int64_t"
.LASF119:
	.string	"conv_swap_int32_t"
.LASF83:
	.string	"conv_natural_uint8_t_to_mono"
	.section	.note.GNU-stack,"",@progbits
	.ident	"GCC: (GNU) 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
