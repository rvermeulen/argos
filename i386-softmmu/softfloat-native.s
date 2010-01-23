	.file	"softfloat-native.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.p2align 4,,15
.globl set_float_rounding_mode
	.type	set_float_rounding_mode, @function
set_float_rounding_mode:
.LFB51:
	.file 1 "/home/remco/Projects/Argos/src/fpu/softfloat-native.c"
	.loc 1 7 0
	.loc 1 8 0
	movb	%dil, (%rsi)
	.loc 1 14 0
	jmp	fesetround
.LFE51:
	.size	set_float_rounding_mode, .-set_float_rounding_mode
	.p2align 4,,15
.globl set_floatx80_rounding_precision
	.type	set_floatx80_rounding_precision, @function
set_floatx80_rounding_precision:
.LFB52:
	.loc 1 20 0
	.loc 1 21 0
	movb	%dil, 1(%rsi)
	ret
.LFE52:
	.size	set_floatx80_rounding_precision, .-set_floatx80_rounding_precision
	.p2align 4,,15
.globl int32_to_float32
	.type	int32_to_float32, @function
int32_to_float32:
.LFB53:
	.loc 1 77 0
	.loc 1 79 0
	xorps	%xmm0, %xmm0
	cvtsi2ss	%edi, %xmm0
	ret
.LFE53:
	.size	int32_to_float32, .-int32_to_float32
	.p2align 4,,15
.globl uint32_to_float32
	.type	uint32_to_float32, @function
uint32_to_float32:
.LFB54:
	.loc 1 82 0
	.loc 1 83 0
	xorps	%xmm0, %xmm0
	mov	%edi, %edi
	cvtsi2ssq	%rdi, %xmm0
	.loc 1 84 0
	ret
.LFE54:
	.size	uint32_to_float32, .-uint32_to_float32
	.p2align 4,,15
.globl int32_to_float64
	.type	int32_to_float64, @function
int32_to_float64:
.LFB55:
	.loc 1 87 0
	.loc 1 89 0
	cvtsi2sd	%edi, %xmm0
	ret
.LFE55:
	.size	int32_to_float64, .-int32_to_float64
	.p2align 4,,15
.globl uint32_to_float64
	.type	uint32_to_float64, @function
uint32_to_float64:
.LFB56:
	.loc 1 92 0
	.loc 1 93 0
	mov	%edi, %edi
	cvtsi2sdq	%rdi, %xmm0
	.loc 1 94 0
	ret
.LFE56:
	.size	uint32_to_float64, .-uint32_to_float64
	.p2align 4,,15
.globl int32_to_floatx80
	.type	int32_to_floatx80, @function
int32_to_floatx80:
.LFB57:
	.loc 1 98 0
	.loc 1 99 0
	movl	%edi, -128(%rsp)
	fildl	-128(%rsp)
	.loc 1 100 0
	ret
.LFE57:
	.size	int32_to_floatx80, .-int32_to_floatx80
	.p2align 4,,15
.globl int64_to_float32
	.type	int64_to_float32, @function
int64_to_float32:
.LFB58:
	.loc 1 103 0
	.loc 1 105 0
	xorps	%xmm0, %xmm0
	cvtsi2ssq	%rdi, %xmm0
	ret
.LFE58:
	.size	int64_to_float32, .-int64_to_float32
	.p2align 4,,15
.globl uint64_to_float32
	.type	uint64_to_float32, @function
uint64_to_float32:
.LFB59:
	.loc 1 107 0
	.loc 1 108 0
	testq	%rdi, %rdi
	js	.L14
	xorps	%xmm0, %xmm0
	cvtsi2ssq	%rdi, %xmm0
	ret
	.p2align 4,,7
.L14:
	movq	%rdi, %rax
	xorps	%xmm0, %xmm0
	shrq	%rax
	andl	$1, %edi
	orq	%rdi, %rax
	cvtsi2ssq	%rax, %xmm0
	addss	%xmm0, %xmm0
	.loc 1 109 0
	ret
.LFE59:
	.size	uint64_to_float32, .-uint64_to_float32
	.p2align 4,,15
.globl int64_to_float64
	.type	int64_to_float64, @function
int64_to_float64:
.LFB60:
	.loc 1 111 0
	.loc 1 113 0
	cvtsi2sdq	%rdi, %xmm0
	ret
.LFE60:
	.size	int64_to_float64, .-int64_to_float64
	.p2align 4,,15
.globl uint64_to_float64
	.type	uint64_to_float64, @function
uint64_to_float64:
.LFB61:
	.loc 1 115 0
	.loc 1 116 0
	testq	%rdi, %rdi
	js	.L19
	cvtsi2sdq	%rdi, %xmm0
	ret
	.p2align 4,,7
.L19:
	movq	%rdi, %rax
	andl	$1, %edi
	shrq	%rax
	orq	%rdi, %rax
	cvtsi2sdq	%rax, %xmm0
	addsd	%xmm0, %xmm0
	.loc 1 117 0
	ret
.LFE61:
	.size	uint64_to_float64, .-uint64_to_float64
	.p2align 4,,15
.globl int64_to_floatx80
	.type	int64_to_floatx80, @function
int64_to_floatx80:
.LFB62:
	.loc 1 120 0
	.loc 1 121 0
	movq	%rdi, -128(%rsp)
	fildll	-128(%rsp)
	.loc 1 122 0
	ret
.LFE62:
	.size	int64_to_floatx80, .-int64_to_floatx80
	.p2align 4,,15
.globl float32_to_int32
	.type	float32_to_int32, @function
float32_to_int32:
.LFB64:
	.loc 1 144 0
	subq	$8, %rsp
.LCFI0:
.LBB2:
	.loc 1 133 0
	call	lrintf
.LBB3:
	.loc 1 134 0
	movslq	%eax,%rdx
	.loc 1 135 0
	cmpq	%rax, %rdx
	movl	$2147483648, %edx
	cmovne	%rdx, %rax
.LBE3:
.LBE2:
	.loc 1 146 0
	addq	$8, %rsp
	ret
.LFE64:
	.size	float32_to_int32, .-float32_to_int32
	.p2align 4,,15
.globl float32_to_int32_round_to_zero
	.type	float32_to_int32_round_to_zero, @function
float32_to_int32_round_to_zero:
.LFB65:
	.loc 1 148 0
	.loc 1 149 0
	cvttss2si	%xmm0, %eax
	.loc 1 150 0
	ret
.LFE65:
	.size	float32_to_int32_round_to_zero, .-float32_to_int32_round_to_zero
	.p2align 4,,15
.globl float32_to_int64
	.type	float32_to_int64, @function
float32_to_int64:
.LFB66:
	.loc 1 152 0
	.loc 1 153 0
	jmp	llrintf
.LFE66:
	.size	float32_to_int64, .-float32_to_int64
	.p2align 4,,15
.globl float32_to_int64_round_to_zero
	.type	float32_to_int64_round_to_zero, @function
float32_to_int64_round_to_zero:
.LFB67:
	.loc 1 157 0
	.loc 1 158 0
	cvttss2siq	%xmm0, %rax
	.loc 1 159 0
	ret
.LFE67:
	.size	float32_to_int64_round_to_zero, .-float32_to_int64_round_to_zero
	.p2align 4,,15
.globl float32_to_float64
	.type	float32_to_float64, @function
float32_to_float64:
.LFB68:
	.loc 1 162 0
	.loc 1 164 0
	cvtss2sd	%xmm0, %xmm0
	ret
.LFE68:
	.size	float32_to_float64, .-float32_to_float64
	.p2align 4,,15
.globl float32_to_floatx80
	.type	float32_to_floatx80, @function
float32_to_floatx80:
.LFB69:
	.loc 1 167 0
	.loc 1 169 0
	movss	%xmm0, -4(%rsp)
	flds	-4(%rsp)
	ret
.LFE69:
	.size	float32_to_floatx80, .-float32_to_floatx80
	.p2align 4,,15
.globl float32_to_uint32
	.type	float32_to_uint32, @function
float32_to_uint32:
.LFB70:
	.loc 1 173 0
	subq	$8, %rsp
.LCFI1:
	.loc 1 177 0
	call	llrintf
	.loc 1 179 0
	xorl	%ecx, %ecx
	.loc 1 178 0
	testq	%rax, %rax
	.loc 1 177 0
	movq	%rax, %rdx
	.loc 1 178 0
	js	.L32
	.loc 1 181 0
	movl	$4294967295, %eax
	movl	$-1, %ecx
	cmpq	%rax, %rdx
	cmovle	%edx, %ecx
.L32:
	.loc 1 186 0
	movl	%ecx, %eax
	addq	$8, %rsp
	ret
.LFE70:
	.size	float32_to_uint32, .-float32_to_uint32
	.p2align 4,,15
.globl float32_to_uint32_round_to_zero
	.type	float32_to_uint32_round_to_zero, @function
float32_to_uint32_round_to_zero:
.LFB71:
	.loc 1 188 0
	.loc 1 192 0
	cvttss2siq	%xmm0, %rdx
	.loc 1 194 0
	xorl	%ecx, %ecx
	.loc 1 193 0
	testq	%rdx, %rdx
	js	.L37
	.loc 1 196 0
	movl	$4294967295, %eax
	movl	$-1, %ecx
	cmpq	%rax, %rdx
	cmovle	%edx, %ecx
.L37:
	.loc 1 201 0
	movl	%ecx, %eax
	ret
.LFE71:
	.size	float32_to_uint32_round_to_zero, .-float32_to_uint32_round_to_zero
	.p2align 4,,15
.globl float32_round_to_int
	.type	float32_round_to_int, @function
float32_round_to_int:
.LFB72:
	.loc 1 207 0
	.loc 1 208 0
	jmp	rintf
.LFE72:
	.size	float32_round_to_int, .-float32_round_to_int
	.p2align 4,,15
.globl float32_rem
	.type	float32_rem, @function
float32_rem:
.LFB73:
	.loc 1 212 0
	.loc 1 213 0
	jmp	remainderf
.LFE73:
	.size	float32_rem, .-float32_rem
	.p2align 4,,15
.globl float32_sqrt
	.type	float32_sqrt, @function
float32_sqrt:
.LFB74:
	.loc 1 217 0
	subq	$8, %rsp
.LCFI2:
	.loc 1 217 0
	movaps	%xmm0, %xmm1
	.loc 1 218 0
	sqrtss	%xmm0, %xmm0
	ucomiss	%xmm0, %xmm0
	jp	.L45
	jne	.L45
	.loc 1 219 0
	addq	$8, %rsp
	ret
	.p2align 4,,7
.L45:
	.loc 1 218 0
	movaps	%xmm1, %xmm0
	.p2align 4,,8
	call	sqrtf
	.loc 1 219 0
	addq	$8, %rsp
	.p2align 4,,3
	ret
.LFE74:
	.size	float32_sqrt, .-float32_sqrt
	.p2align 4,,15
.globl float32_compare
	.type	float32_compare, @function
float32_compare:
.LFB75:
	.loc 1 221 0
	.loc 1 223 0
	movl	$-1, %eax
	.loc 1 222 0
	ucomiss	%xmm0, %xmm1
	ja	.L46
	.loc 1 225 0
	xorl	%eax, %eax
	.loc 1 224 0
	ucomiss	%xmm1, %xmm0
	jp	.L57
	je	.L46
.L57:
	.loc 1 227 0
	xorl	%eax, %eax
	ucomiss	%xmm1, %xmm0
	setbe	%al
	incl	%eax
.L46:
	.loc 1 231 0
	rep ; ret
.LFE75:
	.size	float32_compare, .-float32_compare
	.p2align 4,,15
.globl float32_compare_quiet
	.type	float32_compare_quiet, @function
float32_compare_quiet:
.LFB76:
	.loc 1 233 0
	.loc 1 235 0
	movl	$-1, %eax
	.loc 1 234 0
	ucomiss	%xmm0, %xmm1
	ja	.L58
	.loc 1 237 0
	xorl	%eax, %eax
	.loc 1 236 0
	ucomiss	%xmm1, %xmm0
	jp	.L67
	je	.L58
.L67:
	.loc 1 239 0
	xorl	%eax, %eax
	ucomiss	%xmm1, %xmm0
	setbe	%al
	incl	%eax
.L58:
	.loc 1 243 0
	rep ; ret
.LFE76:
	.size	float32_compare_quiet, .-float32_compare_quiet
	.p2align 4,,15
.globl float32_is_signaling_nan
	.type	float32_is_signaling_nan, @function
float32_is_signaling_nan:
.LFB77:
	.loc 1 245 0
	.loc 1 248 0
	movss	%xmm0, -4(%rsp)
	movl	-4(%rsp), %eax
	.loc 1 250 0
	xorl	%ecx, %ecx
	.loc 1 248 0
	movl	%eax, %edx
	.loc 1 250 0
	shrl	$22, %eax
	andl	$511, %eax
	cmpl	$510, %eax
	je	.L70
	.loc 1 251 0
	movl	%ecx, %eax
	ret
	.p2align 4,,7
.L70:
	.loc 1 250 0
	andl	$4194303, %edx
	movw	$1, %ax
	cmovne	%eax, %ecx
	.loc 1 251 0
	movl	%ecx, %eax
	ret
.LFE77:
	.size	float32_is_signaling_nan, .-float32_is_signaling_nan
	.p2align 4,,15
.globl float64_to_int32
	.type	float64_to_int32, @function
float64_to_int32:
.LFB78:
	.loc 1 257 0
	subq	$8, %rsp
.LCFI3:
.LBB4:
	.loc 1 133 0
	call	lrint
.LBB5:
	.loc 1 134 0
	movslq	%eax,%rdx
	.loc 1 135 0
	cmpq	%rax, %rdx
	movl	$2147483648, %edx
	cmovne	%rdx, %rax
.LBE5:
.LBE4:
	.loc 1 259 0
	addq	$8, %rsp
	ret
.LFE78:
	.size	float64_to_int32, .-float64_to_int32
	.p2align 4,,15
.globl float64_to_int32_round_to_zero
	.type	float64_to_int32_round_to_zero, @function
float64_to_int32_round_to_zero:
.LFB79:
	.loc 1 261 0
	.loc 1 262 0
	cvttsd2si	%xmm0, %eax
	.loc 1 263 0
	ret
.LFE79:
	.size	float64_to_int32_round_to_zero, .-float64_to_int32_round_to_zero
	.p2align 4,,15
.globl float64_to_int64
	.type	float64_to_int64, @function
float64_to_int64:
.LFB80:
	.loc 1 265 0
	.loc 1 266 0
	jmp	llrint
.LFE80:
	.size	float64_to_int64, .-float64_to_int64
	.p2align 4,,15
.globl float64_to_int64_round_to_zero
	.type	float64_to_int64_round_to_zero, @function
float64_to_int64_round_to_zero:
.LFB81:
	.loc 1 269 0
	.loc 1 270 0
	cvttsd2siq	%xmm0, %rax
	.loc 1 271 0
	ret
.LFE81:
	.size	float64_to_int64_round_to_zero, .-float64_to_int64_round_to_zero
	.p2align 4,,15
.globl float64_to_float32
	.type	float64_to_float32, @function
float64_to_float32:
.LFB82:
	.loc 1 273 0
	.loc 1 275 0
	cvtsd2ss	%xmm0, %xmm0
	ret
.LFE82:
	.size	float64_to_float32, .-float64_to_float32
	.p2align 4,,15
.globl float64_to_floatx80
	.type	float64_to_floatx80, @function
float64_to_floatx80:
.LFB83:
	.loc 1 278 0
	.loc 1 280 0
	movsd	%xmm0, -8(%rsp)
	fldl	-8(%rsp)
	ret
.LFE83:
	.size	float64_to_floatx80, .-float64_to_floatx80
	.p2align 4,,15
.globl float64_to_uint32
	.type	float64_to_uint32, @function
float64_to_uint32:
.LFB84:
	.loc 1 290 0
	subq	$8, %rsp
.LCFI4:
	.loc 1 294 0
	call	llrint
	.loc 1 296 0
	xorl	%ecx, %ecx
	.loc 1 295 0
	testq	%rax, %rax
	.loc 1 294 0
	movq	%rax, %rdx
	.loc 1 295 0
	js	.L81
	.loc 1 298 0
	movl	$4294967295, %eax
	movl	$-1, %ecx
	cmpq	%rax, %rdx
	cmovle	%edx, %ecx
.L81:
	.loc 1 303 0
	movl	%ecx, %eax
	addq	$8, %rsp
	ret
.LFE84:
	.size	float64_to_uint32, .-float64_to_uint32
	.p2align 4,,15
.globl float64_to_uint32_round_to_zero
	.type	float64_to_uint32_round_to_zero, @function
float64_to_uint32_round_to_zero:
.LFB85:
	.loc 1 305 0
	.loc 1 309 0
	cvttsd2siq	%xmm0, %rdx
	.loc 1 311 0
	xorl	%ecx, %ecx
	.loc 1 310 0
	testq	%rdx, %rdx
	js	.L86
	.loc 1 313 0
	movl	$4294967295, %eax
	movl	$-1, %ecx
	cmpq	%rax, %rdx
	cmovle	%edx, %ecx
.L86:
	.loc 1 318 0
	movl	%ecx, %eax
	ret
.LFE85:
	.size	float64_to_uint32_round_to_zero, .-float64_to_uint32_round_to_zero
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC5:
	.long	0
	.long	-1008730112
	.text
	.p2align 4,,15
.globl float64_to_uint64
	.type	float64_to_uint64, @function
float64_to_uint64:
.LFB86:
	.loc 1 320 0
	subq	$8, %rsp
.LCFI5:
	.loc 1 323 0
	addsd	.LC5(%rip), %xmm0
	call	llrint
	.loc 1 325 0
	movabsq	$-9223372036854775808, %rdx
	.loc 1 326 0
	addq	$8, %rsp
	.loc 1 325 0
	addq	%rdx, %rax
	.loc 1 326 0
	ret
.LFE86:
	.size	float64_to_uint64, .-float64_to_uint64
	.section	.rodata.cst8
	.align 8
.LC7:
	.long	0
	.long	-1008730112
	.text
	.p2align 4,,15
.globl float64_to_uint64_round_to_zero
	.type	float64_to_uint64_round_to_zero, @function
float64_to_uint64_round_to_zero:
.LFB87:
	.loc 1 328 0
	.loc 1 331 0
	addsd	.LC7(%rip), %xmm0
	.loc 1 333 0
	movabsq	$-9223372036854775808, %rdx
	.loc 1 331 0
	cvttsd2siq	%xmm0, %rax
	.loc 1 333 0
	addq	%rdx, %rax
	.loc 1 334 0
	ret
.LFE87:
	.size	float64_to_uint64_round_to_zero, .-float64_to_uint64_round_to_zero
	.p2align 4,,15
.globl float64_trunc_to_int
	.type	float64_trunc_to_int, @function
float64_trunc_to_int:
.LFB88:
	.loc 1 346 0
	.loc 1 347 0
	jmp	trunc
.LFE88:
	.size	float64_trunc_to_int, .-float64_trunc_to_int
	.p2align 4,,15
.globl float64_round_to_int
	.type	float64_round_to_int, @function
float64_round_to_int:
.LFB89:
	.loc 1 351 0
	.loc 1 369 0
	jmp	rint
.LFE89:
	.size	float64_round_to_int, .-float64_round_to_int
	.p2align 4,,15
.globl float64_rem
	.type	float64_rem, @function
float64_rem:
.LFB90:
	.loc 1 374 0
	.loc 1 375 0
	jmp	remainder
.LFE90:
	.size	float64_rem, .-float64_rem
	.p2align 4,,15
.globl float64_sqrt
	.type	float64_sqrt, @function
float64_sqrt:
.LFB91:
	.loc 1 379 0
	subq	$8, %rsp
.LCFI6:
	.loc 1 379 0
	movsd	%xmm0, %xmm1
	.loc 1 380 0
	sqrtsd	%xmm0, %xmm0
	ucomisd	%xmm0, %xmm0
	jp	.L97
	jne	.L97
	.loc 1 381 0
	addq	$8, %rsp
	ret
	.p2align 4,,7
.L97:
	.loc 1 380 0
	movsd	%xmm1, %xmm0
	.p2align 4,,8
	call	sqrt
	.loc 1 381 0
	addq	$8, %rsp
	.p2align 4,,3
	ret
.LFE91:
	.size	float64_sqrt, .-float64_sqrt
	.p2align 4,,15
.globl float64_compare
	.type	float64_compare, @function
float64_compare:
.LFB92:
	.loc 1 383 0
	.loc 1 385 0
	movl	$-1, %eax
	.loc 1 384 0
	ucomisd	%xmm0, %xmm1
	ja	.L98
	.loc 1 387 0
	xorl	%eax, %eax
	.loc 1 386 0
	ucomisd	%xmm1, %xmm0
	jp	.L109
	je	.L98
.L109:
	.loc 1 389 0
	xorl	%eax, %eax
	ucomisd	%xmm1, %xmm0
	setbe	%al
	incl	%eax
.L98:
	.loc 1 393 0
	rep ; ret
.LFE92:
	.size	float64_compare, .-float64_compare
	.p2align 4,,15
.globl float64_compare_quiet
	.type	float64_compare_quiet, @function
float64_compare_quiet:
.LFB93:
	.loc 1 395 0
	.loc 1 397 0
	movl	$-1, %eax
	.loc 1 396 0
	ucomisd	%xmm0, %xmm1
	ja	.L110
	.loc 1 399 0
	xorl	%eax, %eax
	.loc 1 398 0
	ucomisd	%xmm1, %xmm0
	jp	.L119
	je	.L110
.L119:
	.loc 1 401 0
	xorl	%eax, %eax
	ucomisd	%xmm1, %xmm0
	setbe	%al
	incl	%eax
.L110:
	.loc 1 405 0
	rep ; ret
.LFE93:
	.size	float64_compare_quiet, .-float64_compare_quiet
	.p2align 4,,15
.globl float64_is_signaling_nan
	.type	float64_is_signaling_nan, @function
float64_is_signaling_nan:
.LFB94:
	.loc 1 407 0
	.loc 1 410 0
	movsd	%xmm0, -8(%rsp)
	movq	-8(%rsp), %rax
	.loc 1 412 0
	xorl	%ecx, %ecx
	.loc 1 410 0
	movq	%rax, %rdx
	.loc 1 412 0
	shrq	$51, %rax
	andl	$4095, %eax
	cmpq	$4094, %rax
	je	.L122
	.loc 1 416 0
	movl	%ecx, %eax
	ret
	.p2align 4,,7
.L122:
	.loc 1 412 0
	movabsq	$2251799813685247, %rax
	testq	%rax, %rdx
	movl	$1, %eax
	cmovne	%eax, %ecx
	.loc 1 416 0
	movl	%ecx, %eax
	ret
.LFE94:
	.size	float64_is_signaling_nan, .-float64_is_signaling_nan
	.p2align 4,,15
.globl float64_is_nan
	.type	float64_is_nan, @function
float64_is_nan:
.LFB95:
	.loc 1 419 0
	.loc 1 425 0
	movq	%xmm0, -8(%rsp)
	movq	-8(%rsp), %rdx
	movabsq	$-9007199254740992, %rax
	addq	%rdx, %rdx
	cmpq	%rax, %rdx
	seta	%al
	movzbl	%al, %eax
	.loc 1 427 0
	ret
.LFE95:
	.size	float64_is_nan, .-float64_is_nan
	.p2align 4,,15
.globl floatx80_to_int32
	.type	floatx80_to_int32, @function
floatx80_to_int32:
.LFB96:
	.loc 1 435 0
	subq	$24, %rsp
.LCFI7:
.LBB6:
	.loc 1 133 0
	movl	40(%rsp), %edx
	movq	32(%rsp), %rax
	movl	%edx, 8(%rsp)
	movq	%rax, (%rsp)
	call	lrintl
.LBB7:
	.loc 1 134 0
	movslq	%eax,%rdx
	.loc 1 135 0
	cmpq	%rax, %rdx
	movl	$2147483648, %edx
	cmovne	%rdx, %rax
.LBE7:
.LBE6:
	.loc 1 437 0
	addq	$24, %rsp
	ret
.LFE96:
	.size	floatx80_to_int32, .-floatx80_to_int32
	.p2align 4,,15
.globl floatx80_to_int32_round_to_zero
	.type	floatx80_to_int32_round_to_zero, @function
floatx80_to_int32_round_to_zero:
.LFB97:
	.loc 1 439 0
	.loc 1 440 0
	fldt	8(%rsp)
	fnstcw	-2(%rsp)
	movzwl	-2(%rsp), %eax
	orb	$12, %ah
	movw	%ax, -4(%rsp)
	fldcw	-4(%rsp)
	fistpl	-8(%rsp)
	fldcw	-2(%rsp)
	movl	-8(%rsp), %eax
	.loc 1 441 0
	ret
.LFE97:
	.size	floatx80_to_int32_round_to_zero, .-floatx80_to_int32_round_to_zero
	.p2align 4,,15
.globl floatx80_to_int64
	.type	floatx80_to_int64, @function
floatx80_to_int64:
.LFB98:
	.loc 1 443 0
	.loc 1 444 0
	jmp	llrintl
.LFE98:
	.size	floatx80_to_int64, .-floatx80_to_int64
	.p2align 4,,15
.globl floatx80_to_int64_round_to_zero
	.type	floatx80_to_int64_round_to_zero, @function
floatx80_to_int64_round_to_zero:
.LFB99:
	.loc 1 447 0
	.loc 1 448 0
	fldt	8(%rsp)
	fnstcw	-2(%rsp)
	movzwl	-2(%rsp), %eax
	orb	$12, %ah
	movw	%ax, -4(%rsp)
	fldcw	-4(%rsp)
	fistpll	-16(%rsp)
	fldcw	-2(%rsp)
	movq	-16(%rsp), %rax
	.loc 1 449 0
	ret
.LFE99:
	.size	floatx80_to_int64_round_to_zero, .-floatx80_to_int64_round_to_zero
	.p2align 4,,15
.globl floatx80_to_float32
	.type	floatx80_to_float32, @function
floatx80_to_float32:
.LFB100:
	.loc 1 451 0
	.loc 1 453 0
	fldt	8(%rsp)
	fstps	-4(%rsp)
	movss	-4(%rsp), %xmm0
	ret
.LFE100:
	.size	floatx80_to_float32, .-floatx80_to_float32
	.p2align 4,,15
.globl floatx80_to_float64
	.type	floatx80_to_float64, @function
floatx80_to_float64:
.LFB101:
	.loc 1 455 0
	.loc 1 457 0
	fldt	8(%rsp)
	fstpl	-8(%rsp)
	movlpd	-8(%rsp), %xmm0
	ret
.LFE101:
	.size	floatx80_to_float64, .-floatx80_to_float64
	.p2align 4,,15
.globl floatx80_round_to_int
	.type	floatx80_round_to_int, @function
floatx80_round_to_int:
.LFB102:
	.loc 1 463 0
	.loc 1 464 0
	jmp	rintl
.LFE102:
	.size	floatx80_round_to_int, .-floatx80_round_to_int
	.p2align 4,,15
.globl floatx80_rem
	.type	floatx80_rem, @function
floatx80_rem:
.LFB103:
	.loc 1 467 0
	.loc 1 468 0
	jmp	remainderl
.LFE103:
	.size	floatx80_rem, .-floatx80_rem
	.p2align 4,,15
.globl floatx80_sqrt
	.type	floatx80_sqrt, @function
floatx80_sqrt:
.LFB104:
	.loc 1 471 0
	subq	$24, %rsp
.LCFI8:
	.loc 1 471 0
	fldt	32(%rsp)
	.loc 1 472 0
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L139
	jne	.L139
	fstp	%st(1)
	.loc 1 473 0
	addq	$24, %rsp
	ret
	.p2align 4,,7
.L139:
	ffreep	%st(0)
	.loc 1 472 0
	fstpt	(%rsp)
	call	sqrtl
	.loc 1 473 0
	addq	$24, %rsp
	ret
.LFE104:
	.size	floatx80_sqrt, .-floatx80_sqrt
	.p2align 4,,15
.globl floatx80_compare
	.type	floatx80_compare, @function
floatx80_compare:
.LFB105:
	.loc 1 475 0
	.loc 1 475 0
	fldt	8(%rsp)
	.loc 1 477 0
	movl	$-1, %eax
	.loc 1 475 0
	fldt	24(%rsp)
	.loc 1 476 0
	fucomi	%st(1), %st
	ja	.L153
	fxch	%st(1)
	.loc 1 479 0
	xorl	%eax, %eax
	.loc 1 478 0
	fucomi	%st(1), %st
	jp	.L151
	je	.L153
.L151:
	.loc 1 481 0
	xorl	%eax, %eax
	fucomip	%st(1), %st
	fstp	%st(0)
	setbe	%al
	incl	%eax
	.loc 1 485 0
	ret
	.p2align 4,,7
.L153:
	ffreep	%st(0)
	ffreep	%st(0)
	.p2align 4,,1
	ret
.LFE105:
	.size	floatx80_compare, .-floatx80_compare
	.p2align 4,,15
.globl floatx80_compare_quiet
	.type	floatx80_compare_quiet, @function
floatx80_compare_quiet:
.LFB106:
	.loc 1 487 0
	.loc 1 487 0
	fldt	8(%rsp)
	.loc 1 489 0
	movl	$-1, %eax
	.loc 1 487 0
	fldt	24(%rsp)
	.loc 1 488 0
	fucomi	%st(1), %st
	ja	.L165
	fxch	%st(1)
	.loc 1 491 0
	xorl	%eax, %eax
	.loc 1 490 0
	fucomi	%st(1), %st
	jp	.L163
	je	.L165
.L163:
	.loc 1 493 0
	xorl	%eax, %eax
	fucomip	%st(1), %st
	fstp	%st(0)
	setbe	%al
	incl	%eax
	.loc 1 497 0
	ret
	.p2align 4,,7
.L165:
	ffreep	%st(0)
	ffreep	%st(0)
	.p2align 4,,1
	ret
.LFE106:
	.size	floatx80_compare_quiet, .-floatx80_compare_quiet
	.p2align 4,,15
.globl floatx80_is_signaling_nan
	.type	floatx80_is_signaling_nan, @function
floatx80_is_signaling_nan:
.LFB107:
	.loc 1 499 0
	.loc 1 501 0
	movq	8(%rsp), %rax
	movl	16(%rsp), %edx
	movq	%rax, -24(%rsp)
	movl	%edx, -16(%rsp)
	.loc 1 502 0
	xorl	%edx, %edx
	movzwl	-16(%rsp), %eax
	andl	$32767, %eax
	cmpl	$32767, %eax
	je	.L168
	.loc 1 503 0
	movl	%edx, %eax
	ret
	.p2align 4,,7
.L168:
	.loc 1 502 0
	movq	-24(%rsp), %rax
	addq	%rax, %rax
	testq	%rax, %rax
	movl	$1, %eax
	cmovne	%eax, %edx
	.loc 1 503 0
	movl	%edx, %eax
	ret
.LFE107:
	.size	floatx80_is_signaling_nan, .-floatx80_is_signaling_nan
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
	.quad	.LFB51
	.quad	.LFE51-.LFB51
	.align 8
.LEFDE0:
.LSFDE2:
	.long	.LEFDE2-.LASFDE2
.LASFDE2:
	.long	.Lframe0
	.quad	.LFB52
	.quad	.LFE52-.LFB52
	.align 8
.LEFDE2:
.LSFDE4:
	.long	.LEFDE4-.LASFDE4
.LASFDE4:
	.long	.Lframe0
	.quad	.LFB53
	.quad	.LFE53-.LFB53
	.align 8
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.quad	.LFB54
	.quad	.LFE54-.LFB54
	.align 8
.LEFDE6:
.LSFDE8:
	.long	.LEFDE8-.LASFDE8
.LASFDE8:
	.long	.Lframe0
	.quad	.LFB55
	.quad	.LFE55-.LFB55
	.align 8
.LEFDE8:
.LSFDE10:
	.long	.LEFDE10-.LASFDE10
.LASFDE10:
	.long	.Lframe0
	.quad	.LFB56
	.quad	.LFE56-.LFB56
	.align 8
.LEFDE10:
.LSFDE12:
	.long	.LEFDE12-.LASFDE12
.LASFDE12:
	.long	.Lframe0
	.quad	.LFB57
	.quad	.LFE57-.LFB57
	.align 8
.LEFDE12:
.LSFDE14:
	.long	.LEFDE14-.LASFDE14
.LASFDE14:
	.long	.Lframe0
	.quad	.LFB58
	.quad	.LFE58-.LFB58
	.align 8
.LEFDE14:
.LSFDE16:
	.long	.LEFDE16-.LASFDE16
.LASFDE16:
	.long	.Lframe0
	.quad	.LFB59
	.quad	.LFE59-.LFB59
	.align 8
.LEFDE16:
.LSFDE18:
	.long	.LEFDE18-.LASFDE18
.LASFDE18:
	.long	.Lframe0
	.quad	.LFB60
	.quad	.LFE60-.LFB60
	.align 8
.LEFDE18:
.LSFDE20:
	.long	.LEFDE20-.LASFDE20
.LASFDE20:
	.long	.Lframe0
	.quad	.LFB61
	.quad	.LFE61-.LFB61
	.align 8
.LEFDE20:
.LSFDE22:
	.long	.LEFDE22-.LASFDE22
.LASFDE22:
	.long	.Lframe0
	.quad	.LFB62
	.quad	.LFE62-.LFB62
	.align 8
.LEFDE22:
.LSFDE24:
	.long	.LEFDE24-.LASFDE24
.LASFDE24:
	.long	.Lframe0
	.quad	.LFB64
	.quad	.LFE64-.LFB64
	.byte	0x4
	.long	.LCFI0-.LFB64
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE24:
.LSFDE26:
	.long	.LEFDE26-.LASFDE26
.LASFDE26:
	.long	.Lframe0
	.quad	.LFB65
	.quad	.LFE65-.LFB65
	.align 8
.LEFDE26:
.LSFDE28:
	.long	.LEFDE28-.LASFDE28
.LASFDE28:
	.long	.Lframe0
	.quad	.LFB66
	.quad	.LFE66-.LFB66
	.align 8
.LEFDE28:
.LSFDE30:
	.long	.LEFDE30-.LASFDE30
.LASFDE30:
	.long	.Lframe0
	.quad	.LFB67
	.quad	.LFE67-.LFB67
	.align 8
.LEFDE30:
.LSFDE32:
	.long	.LEFDE32-.LASFDE32
.LASFDE32:
	.long	.Lframe0
	.quad	.LFB68
	.quad	.LFE68-.LFB68
	.align 8
.LEFDE32:
.LSFDE34:
	.long	.LEFDE34-.LASFDE34
.LASFDE34:
	.long	.Lframe0
	.quad	.LFB69
	.quad	.LFE69-.LFB69
	.align 8
.LEFDE34:
.LSFDE36:
	.long	.LEFDE36-.LASFDE36
.LASFDE36:
	.long	.Lframe0
	.quad	.LFB70
	.quad	.LFE70-.LFB70
	.byte	0x4
	.long	.LCFI1-.LFB70
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE36:
.LSFDE38:
	.long	.LEFDE38-.LASFDE38
.LASFDE38:
	.long	.Lframe0
	.quad	.LFB71
	.quad	.LFE71-.LFB71
	.align 8
.LEFDE38:
.LSFDE40:
	.long	.LEFDE40-.LASFDE40
.LASFDE40:
	.long	.Lframe0
	.quad	.LFB72
	.quad	.LFE72-.LFB72
	.align 8
.LEFDE40:
.LSFDE42:
	.long	.LEFDE42-.LASFDE42
.LASFDE42:
	.long	.Lframe0
	.quad	.LFB73
	.quad	.LFE73-.LFB73
	.align 8
.LEFDE42:
.LSFDE44:
	.long	.LEFDE44-.LASFDE44
.LASFDE44:
	.long	.Lframe0
	.quad	.LFB74
	.quad	.LFE74-.LFB74
	.byte	0x4
	.long	.LCFI2-.LFB74
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE44:
.LSFDE46:
	.long	.LEFDE46-.LASFDE46
.LASFDE46:
	.long	.Lframe0
	.quad	.LFB75
	.quad	.LFE75-.LFB75
	.align 8
.LEFDE46:
.LSFDE48:
	.long	.LEFDE48-.LASFDE48
.LASFDE48:
	.long	.Lframe0
	.quad	.LFB76
	.quad	.LFE76-.LFB76
	.align 8
.LEFDE48:
.LSFDE50:
	.long	.LEFDE50-.LASFDE50
.LASFDE50:
	.long	.Lframe0
	.quad	.LFB77
	.quad	.LFE77-.LFB77
	.align 8
.LEFDE50:
.LSFDE52:
	.long	.LEFDE52-.LASFDE52
.LASFDE52:
	.long	.Lframe0
	.quad	.LFB78
	.quad	.LFE78-.LFB78
	.byte	0x4
	.long	.LCFI3-.LFB78
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE52:
.LSFDE54:
	.long	.LEFDE54-.LASFDE54
.LASFDE54:
	.long	.Lframe0
	.quad	.LFB79
	.quad	.LFE79-.LFB79
	.align 8
.LEFDE54:
.LSFDE56:
	.long	.LEFDE56-.LASFDE56
.LASFDE56:
	.long	.Lframe0
	.quad	.LFB80
	.quad	.LFE80-.LFB80
	.align 8
.LEFDE56:
.LSFDE58:
	.long	.LEFDE58-.LASFDE58
.LASFDE58:
	.long	.Lframe0
	.quad	.LFB81
	.quad	.LFE81-.LFB81
	.align 8
.LEFDE58:
.LSFDE60:
	.long	.LEFDE60-.LASFDE60
.LASFDE60:
	.long	.Lframe0
	.quad	.LFB82
	.quad	.LFE82-.LFB82
	.align 8
.LEFDE60:
.LSFDE62:
	.long	.LEFDE62-.LASFDE62
.LASFDE62:
	.long	.Lframe0
	.quad	.LFB83
	.quad	.LFE83-.LFB83
	.align 8
.LEFDE62:
.LSFDE64:
	.long	.LEFDE64-.LASFDE64
.LASFDE64:
	.long	.Lframe0
	.quad	.LFB84
	.quad	.LFE84-.LFB84
	.byte	0x4
	.long	.LCFI4-.LFB84
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE64:
.LSFDE66:
	.long	.LEFDE66-.LASFDE66
.LASFDE66:
	.long	.Lframe0
	.quad	.LFB85
	.quad	.LFE85-.LFB85
	.align 8
.LEFDE66:
.LSFDE68:
	.long	.LEFDE68-.LASFDE68
.LASFDE68:
	.long	.Lframe0
	.quad	.LFB86
	.quad	.LFE86-.LFB86
	.byte	0x4
	.long	.LCFI5-.LFB86
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE68:
.LSFDE70:
	.long	.LEFDE70-.LASFDE70
.LASFDE70:
	.long	.Lframe0
	.quad	.LFB87
	.quad	.LFE87-.LFB87
	.align 8
.LEFDE70:
.LSFDE72:
	.long	.LEFDE72-.LASFDE72
.LASFDE72:
	.long	.Lframe0
	.quad	.LFB88
	.quad	.LFE88-.LFB88
	.align 8
.LEFDE72:
.LSFDE74:
	.long	.LEFDE74-.LASFDE74
.LASFDE74:
	.long	.Lframe0
	.quad	.LFB89
	.quad	.LFE89-.LFB89
	.align 8
.LEFDE74:
.LSFDE76:
	.long	.LEFDE76-.LASFDE76
.LASFDE76:
	.long	.Lframe0
	.quad	.LFB90
	.quad	.LFE90-.LFB90
	.align 8
.LEFDE76:
.LSFDE78:
	.long	.LEFDE78-.LASFDE78
.LASFDE78:
	.long	.Lframe0
	.quad	.LFB91
	.quad	.LFE91-.LFB91
	.byte	0x4
	.long	.LCFI6-.LFB91
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE78:
.LSFDE80:
	.long	.LEFDE80-.LASFDE80
.LASFDE80:
	.long	.Lframe0
	.quad	.LFB92
	.quad	.LFE92-.LFB92
	.align 8
.LEFDE80:
.LSFDE82:
	.long	.LEFDE82-.LASFDE82
.LASFDE82:
	.long	.Lframe0
	.quad	.LFB93
	.quad	.LFE93-.LFB93
	.align 8
.LEFDE82:
.LSFDE84:
	.long	.LEFDE84-.LASFDE84
.LASFDE84:
	.long	.Lframe0
	.quad	.LFB94
	.quad	.LFE94-.LFB94
	.align 8
.LEFDE84:
.LSFDE86:
	.long	.LEFDE86-.LASFDE86
.LASFDE86:
	.long	.Lframe0
	.quad	.LFB95
	.quad	.LFE95-.LFB95
	.align 8
.LEFDE86:
.LSFDE88:
	.long	.LEFDE88-.LASFDE88
.LASFDE88:
	.long	.Lframe0
	.quad	.LFB96
	.quad	.LFE96-.LFB96
	.byte	0x4
	.long	.LCFI7-.LFB96
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE88:
.LSFDE90:
	.long	.LEFDE90-.LASFDE90
.LASFDE90:
	.long	.Lframe0
	.quad	.LFB97
	.quad	.LFE97-.LFB97
	.align 8
.LEFDE90:
.LSFDE92:
	.long	.LEFDE92-.LASFDE92
.LASFDE92:
	.long	.Lframe0
	.quad	.LFB98
	.quad	.LFE98-.LFB98
	.align 8
.LEFDE92:
.LSFDE94:
	.long	.LEFDE94-.LASFDE94
.LASFDE94:
	.long	.Lframe0
	.quad	.LFB99
	.quad	.LFE99-.LFB99
	.align 8
.LEFDE94:
.LSFDE96:
	.long	.LEFDE96-.LASFDE96
.LASFDE96:
	.long	.Lframe0
	.quad	.LFB100
	.quad	.LFE100-.LFB100
	.align 8
.LEFDE96:
.LSFDE98:
	.long	.LEFDE98-.LASFDE98
.LASFDE98:
	.long	.Lframe0
	.quad	.LFB101
	.quad	.LFE101-.LFB101
	.align 8
.LEFDE98:
.LSFDE100:
	.long	.LEFDE100-.LASFDE100
.LASFDE100:
	.long	.Lframe0
	.quad	.LFB102
	.quad	.LFE102-.LFB102
	.align 8
.LEFDE100:
.LSFDE102:
	.long	.LEFDE102-.LASFDE102
.LASFDE102:
	.long	.Lframe0
	.quad	.LFB103
	.quad	.LFE103-.LFB103
	.align 8
.LEFDE102:
.LSFDE104:
	.long	.LEFDE104-.LASFDE104
.LASFDE104:
	.long	.Lframe0
	.quad	.LFB104
	.quad	.LFE104-.LFB104
	.byte	0x4
	.long	.LCFI8-.LFB104
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE104:
.LSFDE106:
	.long	.LEFDE106-.LASFDE106
.LASFDE106:
	.long	.Lframe0
	.quad	.LFB105
	.quad	.LFE105-.LFB105
	.align 8
.LEFDE106:
.LSFDE108:
	.long	.LEFDE108-.LASFDE108
.LASFDE108:
	.long	.Lframe0
	.quad	.LFB106
	.quad	.LFE106-.LFB106
	.align 8
.LEFDE108:
.LSFDE110:
	.long	.LEFDE110-.LASFDE110
.LASFDE110:
	.long	.Lframe0
	.quad	.LFB107
	.quad	.LFE107-.LFB107
	.align 8
.LEFDE110:
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
	.quad	.LFB51
	.quad	.LFE51-.LFB51
	.align 8
.LEFDE1:
.LSFDE3:
	.long	.LEFDE3-.LASFDE3
.LASFDE3:
	.long	.LASFDE3-.Lframe1
	.quad	.LFB52
	.quad	.LFE52-.LFB52
	.align 8
.LEFDE3:
.LSFDE5:
	.long	.LEFDE5-.LASFDE5
.LASFDE5:
	.long	.LASFDE5-.Lframe1
	.quad	.LFB53
	.quad	.LFE53-.LFB53
	.align 8
.LEFDE5:
.LSFDE7:
	.long	.LEFDE7-.LASFDE7
.LASFDE7:
	.long	.LASFDE7-.Lframe1
	.quad	.LFB54
	.quad	.LFE54-.LFB54
	.align 8
.LEFDE7:
.LSFDE9:
	.long	.LEFDE9-.LASFDE9
.LASFDE9:
	.long	.LASFDE9-.Lframe1
	.quad	.LFB55
	.quad	.LFE55-.LFB55
	.align 8
.LEFDE9:
.LSFDE11:
	.long	.LEFDE11-.LASFDE11
.LASFDE11:
	.long	.LASFDE11-.Lframe1
	.quad	.LFB56
	.quad	.LFE56-.LFB56
	.align 8
.LEFDE11:
.LSFDE13:
	.long	.LEFDE13-.LASFDE13
.LASFDE13:
	.long	.LASFDE13-.Lframe1
	.quad	.LFB57
	.quad	.LFE57-.LFB57
	.align 8
.LEFDE13:
.LSFDE15:
	.long	.LEFDE15-.LASFDE15
.LASFDE15:
	.long	.LASFDE15-.Lframe1
	.quad	.LFB58
	.quad	.LFE58-.LFB58
	.align 8
.LEFDE15:
.LSFDE17:
	.long	.LEFDE17-.LASFDE17
.LASFDE17:
	.long	.LASFDE17-.Lframe1
	.quad	.LFB59
	.quad	.LFE59-.LFB59
	.align 8
.LEFDE17:
.LSFDE19:
	.long	.LEFDE19-.LASFDE19
.LASFDE19:
	.long	.LASFDE19-.Lframe1
	.quad	.LFB60
	.quad	.LFE60-.LFB60
	.align 8
.LEFDE19:
.LSFDE21:
	.long	.LEFDE21-.LASFDE21
.LASFDE21:
	.long	.LASFDE21-.Lframe1
	.quad	.LFB61
	.quad	.LFE61-.LFB61
	.align 8
.LEFDE21:
.LSFDE23:
	.long	.LEFDE23-.LASFDE23
.LASFDE23:
	.long	.LASFDE23-.Lframe1
	.quad	.LFB62
	.quad	.LFE62-.LFB62
	.align 8
.LEFDE23:
.LSFDE25:
	.long	.LEFDE25-.LASFDE25
.LASFDE25:
	.long	.LASFDE25-.Lframe1
	.quad	.LFB64
	.quad	.LFE64-.LFB64
	.byte	0x4
	.long	.LCFI0-.LFB64
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE25:
.LSFDE27:
	.long	.LEFDE27-.LASFDE27
.LASFDE27:
	.long	.LASFDE27-.Lframe1
	.quad	.LFB65
	.quad	.LFE65-.LFB65
	.align 8
.LEFDE27:
.LSFDE29:
	.long	.LEFDE29-.LASFDE29
.LASFDE29:
	.long	.LASFDE29-.Lframe1
	.quad	.LFB66
	.quad	.LFE66-.LFB66
	.align 8
.LEFDE29:
.LSFDE31:
	.long	.LEFDE31-.LASFDE31
.LASFDE31:
	.long	.LASFDE31-.Lframe1
	.quad	.LFB67
	.quad	.LFE67-.LFB67
	.align 8
.LEFDE31:
.LSFDE33:
	.long	.LEFDE33-.LASFDE33
.LASFDE33:
	.long	.LASFDE33-.Lframe1
	.quad	.LFB68
	.quad	.LFE68-.LFB68
	.align 8
.LEFDE33:
.LSFDE35:
	.long	.LEFDE35-.LASFDE35
.LASFDE35:
	.long	.LASFDE35-.Lframe1
	.quad	.LFB69
	.quad	.LFE69-.LFB69
	.align 8
.LEFDE35:
.LSFDE37:
	.long	.LEFDE37-.LASFDE37
.LASFDE37:
	.long	.LASFDE37-.Lframe1
	.quad	.LFB70
	.quad	.LFE70-.LFB70
	.byte	0x4
	.long	.LCFI1-.LFB70
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE37:
.LSFDE39:
	.long	.LEFDE39-.LASFDE39
.LASFDE39:
	.long	.LASFDE39-.Lframe1
	.quad	.LFB71
	.quad	.LFE71-.LFB71
	.align 8
.LEFDE39:
.LSFDE41:
	.long	.LEFDE41-.LASFDE41
.LASFDE41:
	.long	.LASFDE41-.Lframe1
	.quad	.LFB72
	.quad	.LFE72-.LFB72
	.align 8
.LEFDE41:
.LSFDE43:
	.long	.LEFDE43-.LASFDE43
.LASFDE43:
	.long	.LASFDE43-.Lframe1
	.quad	.LFB73
	.quad	.LFE73-.LFB73
	.align 8
.LEFDE43:
.LSFDE45:
	.long	.LEFDE45-.LASFDE45
.LASFDE45:
	.long	.LASFDE45-.Lframe1
	.quad	.LFB74
	.quad	.LFE74-.LFB74
	.byte	0x4
	.long	.LCFI2-.LFB74
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE45:
.LSFDE47:
	.long	.LEFDE47-.LASFDE47
.LASFDE47:
	.long	.LASFDE47-.Lframe1
	.quad	.LFB75
	.quad	.LFE75-.LFB75
	.align 8
.LEFDE47:
.LSFDE49:
	.long	.LEFDE49-.LASFDE49
.LASFDE49:
	.long	.LASFDE49-.Lframe1
	.quad	.LFB76
	.quad	.LFE76-.LFB76
	.align 8
.LEFDE49:
.LSFDE51:
	.long	.LEFDE51-.LASFDE51
.LASFDE51:
	.long	.LASFDE51-.Lframe1
	.quad	.LFB77
	.quad	.LFE77-.LFB77
	.align 8
.LEFDE51:
.LSFDE53:
	.long	.LEFDE53-.LASFDE53
.LASFDE53:
	.long	.LASFDE53-.Lframe1
	.quad	.LFB78
	.quad	.LFE78-.LFB78
	.byte	0x4
	.long	.LCFI3-.LFB78
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE53:
.LSFDE55:
	.long	.LEFDE55-.LASFDE55
.LASFDE55:
	.long	.LASFDE55-.Lframe1
	.quad	.LFB79
	.quad	.LFE79-.LFB79
	.align 8
.LEFDE55:
.LSFDE57:
	.long	.LEFDE57-.LASFDE57
.LASFDE57:
	.long	.LASFDE57-.Lframe1
	.quad	.LFB80
	.quad	.LFE80-.LFB80
	.align 8
.LEFDE57:
.LSFDE59:
	.long	.LEFDE59-.LASFDE59
.LASFDE59:
	.long	.LASFDE59-.Lframe1
	.quad	.LFB81
	.quad	.LFE81-.LFB81
	.align 8
.LEFDE59:
.LSFDE61:
	.long	.LEFDE61-.LASFDE61
.LASFDE61:
	.long	.LASFDE61-.Lframe1
	.quad	.LFB82
	.quad	.LFE82-.LFB82
	.align 8
.LEFDE61:
.LSFDE63:
	.long	.LEFDE63-.LASFDE63
.LASFDE63:
	.long	.LASFDE63-.Lframe1
	.quad	.LFB83
	.quad	.LFE83-.LFB83
	.align 8
.LEFDE63:
.LSFDE65:
	.long	.LEFDE65-.LASFDE65
.LASFDE65:
	.long	.LASFDE65-.Lframe1
	.quad	.LFB84
	.quad	.LFE84-.LFB84
	.byte	0x4
	.long	.LCFI4-.LFB84
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE65:
.LSFDE67:
	.long	.LEFDE67-.LASFDE67
.LASFDE67:
	.long	.LASFDE67-.Lframe1
	.quad	.LFB85
	.quad	.LFE85-.LFB85
	.align 8
.LEFDE67:
.LSFDE69:
	.long	.LEFDE69-.LASFDE69
.LASFDE69:
	.long	.LASFDE69-.Lframe1
	.quad	.LFB86
	.quad	.LFE86-.LFB86
	.byte	0x4
	.long	.LCFI5-.LFB86
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE69:
.LSFDE71:
	.long	.LEFDE71-.LASFDE71
.LASFDE71:
	.long	.LASFDE71-.Lframe1
	.quad	.LFB87
	.quad	.LFE87-.LFB87
	.align 8
.LEFDE71:
.LSFDE73:
	.long	.LEFDE73-.LASFDE73
.LASFDE73:
	.long	.LASFDE73-.Lframe1
	.quad	.LFB88
	.quad	.LFE88-.LFB88
	.align 8
.LEFDE73:
.LSFDE75:
	.long	.LEFDE75-.LASFDE75
.LASFDE75:
	.long	.LASFDE75-.Lframe1
	.quad	.LFB89
	.quad	.LFE89-.LFB89
	.align 8
.LEFDE75:
.LSFDE77:
	.long	.LEFDE77-.LASFDE77
.LASFDE77:
	.long	.LASFDE77-.Lframe1
	.quad	.LFB90
	.quad	.LFE90-.LFB90
	.align 8
.LEFDE77:
.LSFDE79:
	.long	.LEFDE79-.LASFDE79
.LASFDE79:
	.long	.LASFDE79-.Lframe1
	.quad	.LFB91
	.quad	.LFE91-.LFB91
	.byte	0x4
	.long	.LCFI6-.LFB91
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE79:
.LSFDE81:
	.long	.LEFDE81-.LASFDE81
.LASFDE81:
	.long	.LASFDE81-.Lframe1
	.quad	.LFB92
	.quad	.LFE92-.LFB92
	.align 8
.LEFDE81:
.LSFDE83:
	.long	.LEFDE83-.LASFDE83
.LASFDE83:
	.long	.LASFDE83-.Lframe1
	.quad	.LFB93
	.quad	.LFE93-.LFB93
	.align 8
.LEFDE83:
.LSFDE85:
	.long	.LEFDE85-.LASFDE85
.LASFDE85:
	.long	.LASFDE85-.Lframe1
	.quad	.LFB94
	.quad	.LFE94-.LFB94
	.align 8
.LEFDE85:
.LSFDE87:
	.long	.LEFDE87-.LASFDE87
.LASFDE87:
	.long	.LASFDE87-.Lframe1
	.quad	.LFB95
	.quad	.LFE95-.LFB95
	.align 8
.LEFDE87:
.LSFDE89:
	.long	.LEFDE89-.LASFDE89
.LASFDE89:
	.long	.LASFDE89-.Lframe1
	.quad	.LFB96
	.quad	.LFE96-.LFB96
	.byte	0x4
	.long	.LCFI7-.LFB96
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE89:
.LSFDE91:
	.long	.LEFDE91-.LASFDE91
.LASFDE91:
	.long	.LASFDE91-.Lframe1
	.quad	.LFB97
	.quad	.LFE97-.LFB97
	.align 8
.LEFDE91:
.LSFDE93:
	.long	.LEFDE93-.LASFDE93
.LASFDE93:
	.long	.LASFDE93-.Lframe1
	.quad	.LFB98
	.quad	.LFE98-.LFB98
	.align 8
.LEFDE93:
.LSFDE95:
	.long	.LEFDE95-.LASFDE95
.LASFDE95:
	.long	.LASFDE95-.Lframe1
	.quad	.LFB99
	.quad	.LFE99-.LFB99
	.align 8
.LEFDE95:
.LSFDE97:
	.long	.LEFDE97-.LASFDE97
.LASFDE97:
	.long	.LASFDE97-.Lframe1
	.quad	.LFB100
	.quad	.LFE100-.LFB100
	.align 8
.LEFDE97:
.LSFDE99:
	.long	.LEFDE99-.LASFDE99
.LASFDE99:
	.long	.LASFDE99-.Lframe1
	.quad	.LFB101
	.quad	.LFE101-.LFB101
	.align 8
.LEFDE99:
.LSFDE101:
	.long	.LEFDE101-.LASFDE101
.LASFDE101:
	.long	.LASFDE101-.Lframe1
	.quad	.LFB102
	.quad	.LFE102-.LFB102
	.align 8
.LEFDE101:
.LSFDE103:
	.long	.LEFDE103-.LASFDE103
.LASFDE103:
	.long	.LASFDE103-.Lframe1
	.quad	.LFB103
	.quad	.LFE103-.LFB103
	.align 8
.LEFDE103:
.LSFDE105:
	.long	.LEFDE105-.LASFDE105
.LASFDE105:
	.long	.LASFDE105-.Lframe1
	.quad	.LFB104
	.quad	.LFE104-.LFB104
	.byte	0x4
	.long	.LCFI8-.LFB104
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE105:
.LSFDE107:
	.long	.LEFDE107-.LASFDE107
.LASFDE107:
	.long	.LASFDE107-.Lframe1
	.quad	.LFB105
	.quad	.LFE105-.LFB105
	.align 8
.LEFDE107:
.LSFDE109:
	.long	.LEFDE109-.LASFDE109
.LASFDE109:
	.long	.LASFDE109-.Lframe1
	.quad	.LFB106
	.quad	.LFE106-.LFB106
	.align 8
.LEFDE109:
.LSFDE111:
	.long	.LEFDE111-.LASFDE111
.LASFDE111:
	.long	.LASFDE111-.Lframe1
	.quad	.LFB107
	.quad	.LFE107-.LFB107
	.align 8
.LEFDE111:
	.file 2 "/home/remco/Projects/Argos/src/fpu/softfloat-native.h"
	.file 3 "/usr/include/stdint.h"
	.text
.Letext0:
	.section	.debug_info
	.long	0x1094
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.Ldebug_line0
	.quad	.Letext0
	.quad	.Ltext0
	.long	.LASF81
	.byte	0x1
	.long	.LASF82
	.uleb128 0x2
	.long	.LASF0
	.byte	0x1
	.byte	0x6
	.uleb128 0x2
	.long	.LASF1
	.byte	0x2
	.byte	0x5
	.uleb128 0x3
	.string	"int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x4
	.long	.LASF4
	.byte	0x3
	.byte	0x29
	.long	0x49
	.uleb128 0x2
	.long	.LASF2
	.byte	0x8
	.byte	0x5
	.uleb128 0x2
	.long	.LASF3
	.byte	0x1
	.byte	0x8
	.uleb128 0x4
	.long	.LASF5
	.byte	0x3
	.byte	0x32
	.long	0x62
	.uleb128 0x2
	.long	.LASF6
	.byte	0x2
	.byte	0x7
	.uleb128 0x4
	.long	.LASF7
	.byte	0x3
	.byte	0x34
	.long	0x74
	.uleb128 0x2
	.long	.LASF8
	.byte	0x4
	.byte	0x7
	.uleb128 0x4
	.long	.LASF9
	.byte	0x3
	.byte	0x38
	.long	0x86
	.uleb128 0x2
	.long	.LASF10
	.byte	0x8
	.byte	0x7
	.uleb128 0x2
	.long	.LASF11
	.byte	0x4
	.byte	0x4
	.uleb128 0x2
	.long	.LASF12
	.byte	0x8
	.byte	0x4
	.uleb128 0x2
	.long	.LASF13
	.byte	0x1
	.byte	0x6
	.uleb128 0x4
	.long	.LASF14
	.byte	0x2
	.byte	0x3b
	.long	0x8d
	.uleb128 0x4
	.long	.LASF15
	.byte	0x2
	.byte	0x3c
	.long	0x94
	.uleb128 0x4
	.long	.LASF16
	.byte	0x2
	.byte	0x3e
	.long	0xc3
	.uleb128 0x2
	.long	.LASF17
	.byte	0x10
	.byte	0x4
	.uleb128 0x5
	.long	0xe5
	.byte	0x4
	.byte	0x2
	.byte	0x44
	.uleb128 0x6
	.string	"f"
	.byte	0x2
	.byte	0x42
	.long	0xa2
	.uleb128 0x6
	.string	"i"
	.byte	0x2
	.byte	0x43
	.long	0x69
	.byte	0x0
	.uleb128 0x4
	.long	.LASF18
	.byte	0x2
	.byte	0x44
	.long	0xca
	.uleb128 0x5
	.long	0x10b
	.byte	0x8
	.byte	0x2
	.byte	0x48
	.uleb128 0x6
	.string	"f"
	.byte	0x2
	.byte	0x46
	.long	0xad
	.uleb128 0x6
	.string	"i"
	.byte	0x2
	.byte	0x47
	.long	0x7b
	.byte	0x0
	.uleb128 0x4
	.long	.LASF19
	.byte	0x2
	.byte	0x48
	.long	0xf0
	.uleb128 0x7
	.long	0x13b
	.byte	0x10
	.byte	0x2
	.byte	0x4f
	.uleb128 0x8
	.string	"low"
	.byte	0x2
	.byte	0x4d
	.long	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF20
	.byte	0x2
	.byte	0x4e
	.long	0x57
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x5
	.long	0x156
	.byte	0x10
	.byte	0x2
	.byte	0x50
	.uleb128 0x6
	.string	"f"
	.byte	0x2
	.byte	0x4b
	.long	0xb8
	.uleb128 0x6
	.string	"i"
	.byte	0x2
	.byte	0x4f
	.long	0x116
	.byte	0x0
	.uleb128 0x4
	.long	.LASF21
	.byte	0x2
	.byte	0x50
	.long	0x13b
	.uleb128 0xa
	.long	0x18a
	.long	.LASF24
	.byte	0x2
	.byte	0x2
	.byte	0x6d
	.uleb128 0x9
	.long	.LASF22
	.byte	0x2
	.byte	0x6e
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF23
	.byte	0x2
	.byte	0x70
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0x0
	.uleb128 0x4
	.long	.LASF24
	.byte	0x2
	.byte	0x72
	.long	0x161
	.uleb128 0xb
	.long	0x1cf
	.byte	0x1
	.long	.LASF26
	.byte	0x1
	.byte	0x7
	.byte	0x1
	.quad	.LFB51
	.quad	.LFE51
	.byte	0x1
	.byte	0x57
	.uleb128 0xc
	.string	"val"
	.byte	0x1
	.byte	0x6
	.long	0x37
	.byte	0x1
	.byte	0x55
	.uleb128 0xd
	.long	.LASF25
	.byte	0x1
	.byte	0x6
	.long	0x1cf
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0xe
	.byte	0x8
	.long	0x18a
	.uleb128 0xb
	.long	0x20f
	.byte	0x1
	.long	.LASF27
	.byte	0x1
	.byte	0x14
	.byte	0x1
	.quad	.LFB52
	.quad	.LFE52
	.byte	0x1
	.byte	0x57
	.uleb128 0xc
	.string	"val"
	.byte	0x1
	.byte	0x13
	.long	0x37
	.byte	0x1
	.byte	0x55
	.uleb128 0xd
	.long	.LASF25
	.byte	0x1
	.byte	0x13
	.long	0x1cf
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0xf
	.long	0x24b
	.byte	0x1
	.long	.LASF28
	.byte	0x1
	.byte	0x4d
	.byte	0x1
	.long	0xa2
	.quad	.LFB53
	.quad	.LFE53
	.byte	0x1
	.byte	0x57
	.uleb128 0xc
	.string	"v"
	.byte	0x1
	.byte	0x4c
	.long	0x37
	.byte	0x1
	.byte	0x55
	.uleb128 0xd
	.long	.LASF25
	.byte	0x1
	.byte	0x4c
	.long	0x1cf
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0xf
	.long	0x287
	.byte	0x1
	.long	.LASF29
	.byte	0x1
	.byte	0x52
	.byte	0x1
	.long	0xa2
	.quad	.LFB54
	.quad	.LFE54
	.byte	0x1
	.byte	0x57
	.uleb128 0xc
	.string	"v"
	.byte	0x1
	.byte	0x51
	.long	0x74
	.byte	0x1
	.byte	0x55
	.uleb128 0xd
	.long	.LASF25
	.byte	0x1
	.byte	0x51
	.long	0x1cf
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0xf
	.long	0x2c3
	.byte	0x1
	.long	.LASF30
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.long	0xad
	.quad	.LFB55
	.quad	.LFE55
	.byte	0x1
	.byte	0x57
	.uleb128 0xc
	.string	"v"
	.byte	0x1
	.byte	0x56
	.long	0x37
	.byte	0x1
	.byte	0x55
	.uleb128 0xd
	.long	.LASF25
	.byte	0x1
	.byte	0x56
	.long	0x1cf
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0xf
	.long	0x2ff
	.byte	0x1
	.long	.LASF31
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.long	0xad
	.quad	.LFB56
	.quad	.LFE56
	.byte	0x1
	.byte	0x57
	.uleb128 0xc
	.string	"v"
	.byte	0x1
	.byte	0x5b
	.long	0x74
	.byte	0x1
	.byte	0x55
	.uleb128 0xd
	.long	.LASF25
	.byte	0x1
	.byte	0x5b
	.long	0x1cf
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0xf
	.long	0x33b
	.byte	0x1
	.long	.LASF32
	.byte	0x1
	.byte	0x62
	.byte	0x1
	.long	0xb8
	.quad	.LFB57
	.quad	.LFE57
	.byte	0x1
	.byte	0x57
	.uleb128 0xc
	.string	"v"
	.byte	0x1
	.byte	0x61
	.long	0x37
	.byte	0x1
	.byte	0x55
	.uleb128 0xd
	.long	.LASF25
	.byte	0x1
	.byte	0x61
	.long	0x1cf
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0xf
	.long	0x377
	.byte	0x1
	.long	.LASF33
	.byte	0x1
	.byte	0x67
	.byte	0x1
	.long	0xa2
	.quad	.LFB58
	.quad	.LFE58
	.byte	0x1
	.byte	0x57
	.uleb128 0xc
	.string	"v"
	.byte	0x1
	.byte	0x66
	.long	0x3e
	.byte	0x1
	.byte	0x55
	.uleb128 0xd
	.long	.LASF25
	.byte	0x1
	.byte	0x66
	.long	0x1cf
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0xf
	.long	0x3b3
	.byte	0x1
	.long	.LASF34
	.byte	0x1
	.byte	0x6b
	.byte	0x1
	.long	0xa2
	.quad	.LFB59
	.quad	.LFE59
	.byte	0x1
	.byte	0x57
	.uleb128 0xc
	.string	"v"
	.byte	0x1
	.byte	0x6a
	.long	0x7b
	.byte	0x1
	.byte	0x55
	.uleb128 0xd
	.long	.LASF25
	.byte	0x1
	.byte	0x6a
	.long	0x1cf
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0xf
	.long	0x3ef
	.byte	0x1
	.long	.LASF35
	.byte	0x1
	.byte	0x6f
	.byte	0x1
	.long	0xad
	.quad	.LFB60
	.quad	.LFE60
	.byte	0x1
	.byte	0x57
	.uleb128 0xc
	.string	"v"
	.byte	0x1
	.byte	0x6e
	.long	0x3e
	.byte	0x1
	.byte	0x55
	.uleb128 0xd
	.long	.LASF25
	.byte	0x1
	.byte	0x6e
	.long	0x1cf
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0xf
	.long	0x42b
	.byte	0x1
	.long	.LASF36
	.byte	0x1
	.byte	0x73
	.byte	0x1
	.long	0xad
	.quad	.LFB61
	.quad	.LFE61
	.byte	0x1
	.byte	0x57
	.uleb128 0xc
	.string	"v"
	.byte	0x1
	.byte	0x72
	.long	0x7b
	.byte	0x1
	.byte	0x55
	.uleb128 0xd
	.long	.LASF25
	.byte	0x1
	.byte	0x72
	.long	0x1cf
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0xf
	.long	0x467
	.byte	0x1
	.long	.LASF37
	.byte	0x1
	.byte	0x78
	.byte	0x1
	.long	0xb8
	.quad	.LFB62
	.quad	.LFE62
	.byte	0x1
	.byte	0x57
	.uleb128 0xc
	.string	"v"
	.byte	0x1
	.byte	0x77
	.long	0x3e
	.byte	0x1
	.byte	0x55
	.uleb128 0xd
	.long	.LASF25
	.byte	0x1
	.byte	0x77
	.long	0x1cf
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0xf
	.long	0x4c0
	.byte	0x1
	.long	.LASF38
	.byte	0x1
	.byte	0x90
	.byte	0x1
	.long	0x37
	.quad	.LFB64
	.quad	.LFE64
	.byte	0x1
	.byte	0x57
	.uleb128 0xc
	.string	"a"
	.byte	0x1
	.byte	0x8f
	.long	0xa2
	.byte	0x1
	.byte	0x61
	.uleb128 0xd
	.long	.LASF25
	.byte	0x1
	.byte	0x8f
	.long	0x1cf
	.byte	0x1
	.byte	0x55
	.uleb128 0x10
	.long	0x4c0
	.quad	.LBB2
	.quad	.LBE2
	.uleb128 0x11
	.long	0x4d1
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.long	0x4db
	.long	.LASF83
	.byte	0x1
	.byte	0x85
	.byte	0x1
	.long	0x37
	.byte	0x3
	.uleb128 0x13
	.string	"a"
	.byte	0x1
	.byte	0x84
	.long	0x49
	.byte	0x0
	.uleb128 0xf
	.long	0x517
	.byte	0x1
	.long	.LASF39
	.byte	0x1
	.byte	0x94
	.byte	0x1
	.long	0x37
	.quad	.LFB65
	.quad	.LFE65
	.byte	0x1
	.byte	0x57
	.uleb128 0xc
	.string	"a"
	.byte	0x1
	.byte	0x93
	.long	0xa2
	.byte	0x1
	.byte	0x61
	.uleb128 0xd
	.long	.LASF25
	.byte	0x1
	.byte	0x93
	.long	0x1cf
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0xf
	.long	0x553
	.byte	0x1
	.long	.LASF40
	.byte	0x1
	.byte	0x98
	.byte	0x1
	.long	0x3e
	.quad	.LFB66
	.quad	.LFE66
	.byte	0x1
	.byte	0x57
	.uleb128 0xc
	.string	"a"
	.byte	0x1
	.byte	0x97
	.long	0xa2
	.byte	0x1
	.byte	0x61
	.uleb128 0xd
	.long	.LASF25
	.byte	0x1
	.byte	0x97
	.long	0x1cf
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0xf
	.long	0x58f
	.byte	0x1
	.long	.LASF41
	.byte	0x1
	.byte	0x9d
	.byte	0x1
	.long	0x3e
	.quad	.LFB67
	.quad	.LFE67
	.byte	0x1
	.byte	0x57
	.uleb128 0xc
	.string	"a"
	.byte	0x1
	.byte	0x9c
	.long	0xa2
	.byte	0x1
	.byte	0x61
	.uleb128 0xd
	.long	.LASF25
	.byte	0x1
	.byte	0x9c
	.long	0x1cf
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0xf
	.long	0x5cb
	.byte	0x1
	.long	.LASF42
	.byte	0x1
	.byte	0xa2
	.byte	0x1
	.long	0xad
	.quad	.LFB68
	.quad	.LFE68
	.byte	0x1
	.byte	0x57
	.uleb128 0xc
	.string	"a"
	.byte	0x1
	.byte	0xa1
	.long	0xa2
	.byte	0x1
	.byte	0x61
	.uleb128 0xd
	.long	.LASF25
	.byte	0x1
	.byte	0xa1
	.long	0x1cf
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0xf
	.long	0x607
	.byte	0x1
	.long	.LASF43
	.byte	0x1
	.byte	0xa7
	.byte	0x1
	.long	0xb8
	.quad	.LFB69
	.quad	.LFE69
	.byte	0x1
	.byte	0x57
	.uleb128 0xc
	.string	"a"
	.byte	0x1
	.byte	0xa6
	.long	0xa2
	.byte	0x1
	.byte	0x61
	.uleb128 0xd
	.long	.LASF25
	.byte	0x1
	.byte	0xa6
	.long	0x1cf
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0xf
	.long	0x65b
	.byte	0x1
	.long	.LASF44
	.byte	0x1
	.byte	0xad
	.byte	0x1
	.long	0x74
	.quad	.LFB70
	.quad	.LFE70
	.byte	0x1
	.byte	0x57
	.uleb128 0xc
	.string	"a"
	.byte	0x1
	.byte	0xac
	.long	0xa2
	.byte	0x1
	.byte	0x61
	.uleb128 0xd
	.long	.LASF25
	.byte	0x1
	.byte	0xac
	.long	0x1cf
	.byte	0x1
	.byte	0x55
	.uleb128 0x14
	.string	"v"
	.byte	0x1
	.byte	0xae
	.long	0x3e
	.byte	0x1
	.byte	0x51
	.uleb128 0x14
	.string	"res"
	.byte	0x1
	.byte	0xaf
	.long	0x74
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.uleb128 0xf
	.long	0x6af
	.byte	0x1
	.long	.LASF45
	.byte	0x1
	.byte	0xbc
	.byte	0x1
	.long	0x74
	.quad	.LFB71
	.quad	.LFE71
	.byte	0x1
	.byte	0x57
	.uleb128 0xc
	.string	"a"
	.byte	0x1
	.byte	0xbb
	.long	0xa2
	.byte	0x1
	.byte	0x61
	.uleb128 0xd
	.long	.LASF25
	.byte	0x1
	.byte	0xbb
	.long	0x1cf
	.byte	0x1
	.byte	0x55
	.uleb128 0x14
	.string	"v"
	.byte	0x1
	.byte	0xbd
	.long	0x3e
	.byte	0x1
	.byte	0x51
	.uleb128 0x14
	.string	"res"
	.byte	0x1
	.byte	0xbe
	.long	0x74
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.uleb128 0xf
	.long	0x6eb
	.byte	0x1
	.long	.LASF46
	.byte	0x1
	.byte	0xcf
	.byte	0x1
	.long	0xa2
	.quad	.LFB72
	.quad	.LFE72
	.byte	0x1
	.byte	0x57
	.uleb128 0xc
	.string	"a"
	.byte	0x1
	.byte	0xce
	.long	0xa2
	.byte	0x1
	.byte	0x61
	.uleb128 0xd
	.long	.LASF25
	.byte	0x1
	.byte	0xce
	.long	0x1cf
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0xf
	.long	0x732
	.byte	0x1
	.long	.LASF47
	.byte	0x1
	.byte	0xd4
	.byte	0x1
	.long	0xa2
	.quad	.LFB73
	.quad	.LFE73
	.byte	0x1
	.byte	0x57
	.uleb128 0xc
	.string	"a"
	.byte	0x1
	.byte	0xd3
	.long	0xa2
	.byte	0x1
	.byte	0x61
	.uleb128 0xc
	.string	"b"
	.byte	0x1
	.byte	0xd3
	.long	0xa2
	.byte	0x1
	.byte	0x62
	.uleb128 0xd
	.long	.LASF25
	.byte	0x1
	.byte	0xd3
	.long	0x1cf
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0xf
	.long	0x76e
	.byte	0x1
	.long	.LASF48
	.byte	0x1
	.byte	0xd9
	.byte	0x1
	.long	0xa2
	.quad	.LFB74
	.quad	.LFE74
	.byte	0x1
	.byte	0x57
	.uleb128 0xc
	.string	"a"
	.byte	0x1
	.byte	0xd8
	.long	0xa2
	.byte	0x1
	.byte	0x62
	.uleb128 0xd
	.long	.LASF25
	.byte	0x1
	.byte	0xd8
	.long	0x1cf
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0xf
	.long	0x7b5
	.byte	0x1
	.long	.LASF49
	.byte	0x1
	.byte	0xdd
	.byte	0x1
	.long	0x37
	.quad	.LFB75
	.quad	.LFE75
	.byte	0x1
	.byte	0x57
	.uleb128 0xc
	.string	"a"
	.byte	0x1
	.byte	0xdc
	.long	0xa2
	.byte	0x1
	.byte	0x61
	.uleb128 0xc
	.string	"b"
	.byte	0x1
	.byte	0xdc
	.long	0xa2
	.byte	0x1
	.byte	0x62
	.uleb128 0xd
	.long	.LASF25
	.byte	0x1
	.byte	0xdc
	.long	0x1cf
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0xf
	.long	0x7fc
	.byte	0x1
	.long	.LASF50
	.byte	0x1
	.byte	0xe9
	.byte	0x1
	.long	0x37
	.quad	.LFB76
	.quad	.LFE76
	.byte	0x1
	.byte	0x57
	.uleb128 0xc
	.string	"a"
	.byte	0x1
	.byte	0xe8
	.long	0xa2
	.byte	0x1
	.byte	0x61
	.uleb128 0xc
	.string	"b"
	.byte	0x1
	.byte	0xe8
	.long	0xa2
	.byte	0x1
	.byte	0x62
	.uleb128 0xd
	.long	.LASF25
	.byte	0x1
	.byte	0xe8
	.long	0x1cf
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0xf
	.long	0x840
	.byte	0x1
	.long	.LASF51
	.byte	0x1
	.byte	0xf5
	.byte	0x1
	.long	0x37
	.quad	.LFB77
	.quad	.LFE77
	.byte	0x1
	.byte	0x57
	.uleb128 0xc
	.string	"a1"
	.byte	0x1
	.byte	0xf4
	.long	0xa2
	.byte	0x1
	.byte	0x61
	.uleb128 0x14
	.string	"u"
	.byte	0x1
	.byte	0xf6
	.long	0xe5
	.byte	0x1
	.byte	0x51
	.uleb128 0x15
	.string	"a"
	.byte	0x1
	.byte	0xf7
	.long	0x69
	.byte	0x0
	.uleb128 0x16
	.long	0x89c
	.byte	0x1
	.long	.LASF52
	.byte	0x1
	.value	0x101
	.byte	0x1
	.long	0x37
	.quad	.LFB78
	.quad	.LFE78
	.byte	0x1
	.byte	0x57
	.uleb128 0x17
	.string	"a"
	.byte	0x1
	.value	0x100
	.long	0xad
	.byte	0x1
	.byte	0x61
	.uleb128 0x18
	.long	.LASF25
	.byte	0x1
	.value	0x100
	.long	0x1cf
	.byte	0x1
	.byte	0x55
	.uleb128 0x10
	.long	0x4c0
	.quad	.LBB4
	.quad	.LBE4
	.uleb128 0x11
	.long	0x4d1
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
	.long	0x8db
	.byte	0x1
	.long	.LASF53
	.byte	0x1
	.value	0x105
	.byte	0x1
	.long	0x37
	.quad	.LFB79
	.quad	.LFE79
	.byte	0x1
	.byte	0x57
	.uleb128 0x17
	.string	"a"
	.byte	0x1
	.value	0x104
	.long	0xad
	.byte	0x1
	.byte	0x61
	.uleb128 0x18
	.long	.LASF25
	.byte	0x1
	.value	0x104
	.long	0x1cf
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x16
	.long	0x91a
	.byte	0x1
	.long	.LASF54
	.byte	0x1
	.value	0x109
	.byte	0x1
	.long	0x3e
	.quad	.LFB80
	.quad	.LFE80
	.byte	0x1
	.byte	0x57
	.uleb128 0x17
	.string	"a"
	.byte	0x1
	.value	0x108
	.long	0xad
	.byte	0x1
	.byte	0x61
	.uleb128 0x18
	.long	.LASF25
	.byte	0x1
	.value	0x108
	.long	0x1cf
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x16
	.long	0x959
	.byte	0x1
	.long	.LASF55
	.byte	0x1
	.value	0x10d
	.byte	0x1
	.long	0x3e
	.quad	.LFB81
	.quad	.LFE81
	.byte	0x1
	.byte	0x57
	.uleb128 0x17
	.string	"a"
	.byte	0x1
	.value	0x10c
	.long	0xad
	.byte	0x1
	.byte	0x61
	.uleb128 0x18
	.long	.LASF25
	.byte	0x1
	.value	0x10c
	.long	0x1cf
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x16
	.long	0x998
	.byte	0x1
	.long	.LASF56
	.byte	0x1
	.value	0x111
	.byte	0x1
	.long	0xa2
	.quad	.LFB82
	.quad	.LFE82
	.byte	0x1
	.byte	0x57
	.uleb128 0x17
	.string	"a"
	.byte	0x1
	.value	0x110
	.long	0xad
	.byte	0x1
	.byte	0x61
	.uleb128 0x18
	.long	.LASF25
	.byte	0x1
	.value	0x110
	.long	0x1cf
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x16
	.long	0x9d7
	.byte	0x1
	.long	.LASF57
	.byte	0x1
	.value	0x116
	.byte	0x1
	.long	0xb8
	.quad	.LFB83
	.quad	.LFE83
	.byte	0x1
	.byte	0x57
	.uleb128 0x17
	.string	"a"
	.byte	0x1
	.value	0x115
	.long	0xad
	.byte	0x1
	.byte	0x61
	.uleb128 0x18
	.long	.LASF25
	.byte	0x1
	.value	0x115
	.long	0x1cf
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x16
	.long	0xa30
	.byte	0x1
	.long	.LASF58
	.byte	0x1
	.value	0x122
	.byte	0x1
	.long	0x74
	.quad	.LFB84
	.quad	.LFE84
	.byte	0x1
	.byte	0x57
	.uleb128 0x17
	.string	"a"
	.byte	0x1
	.value	0x121
	.long	0xad
	.byte	0x1
	.byte	0x61
	.uleb128 0x18
	.long	.LASF25
	.byte	0x1
	.value	0x121
	.long	0x1cf
	.byte	0x1
	.byte	0x55
	.uleb128 0x19
	.string	"v"
	.byte	0x1
	.value	0x123
	.long	0x3e
	.byte	0x1
	.byte	0x51
	.uleb128 0x19
	.string	"res"
	.byte	0x1
	.value	0x124
	.long	0x74
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.uleb128 0x16
	.long	0xa89
	.byte	0x1
	.long	.LASF59
	.byte	0x1
	.value	0x131
	.byte	0x1
	.long	0x74
	.quad	.LFB85
	.quad	.LFE85
	.byte	0x1
	.byte	0x57
	.uleb128 0x17
	.string	"a"
	.byte	0x1
	.value	0x130
	.long	0xad
	.byte	0x1
	.byte	0x61
	.uleb128 0x18
	.long	.LASF25
	.byte	0x1
	.value	0x130
	.long	0x1cf
	.byte	0x1
	.byte	0x55
	.uleb128 0x19
	.string	"v"
	.byte	0x1
	.value	0x132
	.long	0x3e
	.byte	0x1
	.byte	0x51
	.uleb128 0x19
	.string	"res"
	.byte	0x1
	.value	0x133
	.long	0x74
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.uleb128 0x16
	.long	0xad4
	.byte	0x1
	.long	.LASF60
	.byte	0x1
	.value	0x140
	.byte	0x1
	.long	0x7b
	.quad	.LFB86
	.quad	.LFE86
	.byte	0x1
	.byte	0x57
	.uleb128 0x17
	.string	"a"
	.byte	0x1
	.value	0x13f
	.long	0xad
	.byte	0x1
	.byte	0x61
	.uleb128 0x18
	.long	.LASF25
	.byte	0x1
	.value	0x13f
	.long	0x1cf
	.byte	0x1
	.byte	0x55
	.uleb128 0x19
	.string	"v"
	.byte	0x1
	.value	0x141
	.long	0x3e
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x16
	.long	0xb1f
	.byte	0x1
	.long	.LASF61
	.byte	0x1
	.value	0x148
	.byte	0x1
	.long	0x7b
	.quad	.LFB87
	.quad	.LFE87
	.byte	0x1
	.byte	0x57
	.uleb128 0x17
	.string	"a"
	.byte	0x1
	.value	0x147
	.long	0xad
	.byte	0x1
	.byte	0x61
	.uleb128 0x18
	.long	.LASF25
	.byte	0x1
	.value	0x147
	.long	0x1cf
	.byte	0x1
	.byte	0x55
	.uleb128 0x19
	.string	"v"
	.byte	0x1
	.value	0x149
	.long	0x3e
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x16
	.long	0xb5e
	.byte	0x1
	.long	.LASF62
	.byte	0x1
	.value	0x15a
	.byte	0x1
	.long	0xad
	.quad	.LFB88
	.quad	.LFE88
	.byte	0x1
	.byte	0x57
	.uleb128 0x17
	.string	"a"
	.byte	0x1
	.value	0x159
	.long	0xad
	.byte	0x1
	.byte	0x61
	.uleb128 0x18
	.long	.LASF25
	.byte	0x1
	.value	0x159
	.long	0x1cf
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x16
	.long	0xb9d
	.byte	0x1
	.long	.LASF63
	.byte	0x1
	.value	0x15f
	.byte	0x1
	.long	0xad
	.quad	.LFB89
	.quad	.LFE89
	.byte	0x1
	.byte	0x57
	.uleb128 0x17
	.string	"a"
	.byte	0x1
	.value	0x15e
	.long	0xad
	.byte	0x1
	.byte	0x61
	.uleb128 0x18
	.long	.LASF25
	.byte	0x1
	.value	0x15e
	.long	0x1cf
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x16
	.long	0xbe8
	.byte	0x1
	.long	.LASF64
	.byte	0x1
	.value	0x176
	.byte	0x1
	.long	0xad
	.quad	.LFB90
	.quad	.LFE90
	.byte	0x1
	.byte	0x57
	.uleb128 0x17
	.string	"a"
	.byte	0x1
	.value	0x175
	.long	0xad
	.byte	0x1
	.byte	0x61
	.uleb128 0x17
	.string	"b"
	.byte	0x1
	.value	0x175
	.long	0xad
	.byte	0x1
	.byte	0x62
	.uleb128 0x18
	.long	.LASF25
	.byte	0x1
	.value	0x175
	.long	0x1cf
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x16
	.long	0xc27
	.byte	0x1
	.long	.LASF65
	.byte	0x1
	.value	0x17b
	.byte	0x1
	.long	0xad
	.quad	.LFB91
	.quad	.LFE91
	.byte	0x1
	.byte	0x57
	.uleb128 0x17
	.string	"a"
	.byte	0x1
	.value	0x17a
	.long	0xad
	.byte	0x1
	.byte	0x62
	.uleb128 0x18
	.long	.LASF25
	.byte	0x1
	.value	0x17a
	.long	0x1cf
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x16
	.long	0xc72
	.byte	0x1
	.long	.LASF66
	.byte	0x1
	.value	0x17f
	.byte	0x1
	.long	0x37
	.quad	.LFB92
	.quad	.LFE92
	.byte	0x1
	.byte	0x57
	.uleb128 0x17
	.string	"a"
	.byte	0x1
	.value	0x17e
	.long	0xad
	.byte	0x1
	.byte	0x61
	.uleb128 0x17
	.string	"b"
	.byte	0x1
	.value	0x17e
	.long	0xad
	.byte	0x1
	.byte	0x62
	.uleb128 0x18
	.long	.LASF25
	.byte	0x1
	.value	0x17e
	.long	0x1cf
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x16
	.long	0xcbd
	.byte	0x1
	.long	.LASF67
	.byte	0x1
	.value	0x18b
	.byte	0x1
	.long	0x37
	.quad	.LFB93
	.quad	.LFE93
	.byte	0x1
	.byte	0x57
	.uleb128 0x17
	.string	"a"
	.byte	0x1
	.value	0x18a
	.long	0xad
	.byte	0x1
	.byte	0x61
	.uleb128 0x17
	.string	"b"
	.byte	0x1
	.value	0x18a
	.long	0xad
	.byte	0x1
	.byte	0x62
	.uleb128 0x18
	.long	.LASF25
	.byte	0x1
	.value	0x18a
	.long	0x1cf
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x16
	.long	0xd05
	.byte	0x1
	.long	.LASF68
	.byte	0x1
	.value	0x197
	.byte	0x1
	.long	0x37
	.quad	.LFB94
	.quad	.LFE94
	.byte	0x1
	.byte	0x57
	.uleb128 0x17
	.string	"a1"
	.byte	0x1
	.value	0x196
	.long	0xad
	.byte	0x1
	.byte	0x61
	.uleb128 0x19
	.string	"u"
	.byte	0x1
	.value	0x198
	.long	0x10b
	.byte	0x1
	.byte	0x51
	.uleb128 0x1a
	.string	"a"
	.byte	0x1
	.value	0x199
	.long	0x7b
	.byte	0x0
	.uleb128 0x16
	.long	0xd4b
	.byte	0x1
	.long	.LASF69
	.byte	0x1
	.value	0x1a3
	.byte	0x1
	.long	0x37
	.quad	.LFB95
	.quad	.LFE95
	.byte	0x1
	.byte	0x57
	.uleb128 0x17
	.string	"a1"
	.byte	0x1
	.value	0x1a2
	.long	0xad
	.byte	0x1
	.byte	0x61
	.uleb128 0x1a
	.string	"u"
	.byte	0x1
	.value	0x1a4
	.long	0x10b
	.uleb128 0x1a
	.string	"a"
	.byte	0x1
	.value	0x1a5
	.long	0x7b
	.byte	0x0
	.uleb128 0x16
	.long	0xdac
	.byte	0x1
	.long	.LASF70
	.byte	0x1
	.value	0x1b3
	.byte	0x1
	.long	0x37
	.quad	.LFB96
	.quad	.LFE96
	.byte	0x1
	.byte	0x57
	.uleb128 0x17
	.string	"a"
	.byte	0x1
	.value	0x1b2
	.long	0xb8
	.byte	0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x8
	.byte	0x51
	.byte	0x93
	.uleb128 0x8
	.uleb128 0x18
	.long	.LASF25
	.byte	0x1
	.value	0x1b2
	.long	0x1cf
	.byte	0x1
	.byte	0x55
	.uleb128 0x10
	.long	0x4c0
	.quad	.LBB6
	.quad	.LBE6
	.uleb128 0x11
	.long	0x4d1
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
	.long	0xdec
	.byte	0x1
	.long	.LASF71
	.byte	0x1
	.value	0x1b7
	.byte	0x1
	.long	0x37
	.quad	.LFB97
	.quad	.LFE97
	.byte	0x1
	.byte	0x57
	.uleb128 0x17
	.string	"a"
	.byte	0x1
	.value	0x1b6
	.long	0xb8
	.byte	0x2
	.byte	0x90
	.uleb128 0x21
	.uleb128 0x18
	.long	.LASF25
	.byte	0x1
	.value	0x1b6
	.long	0x1cf
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x16
	.long	0xe2c
	.byte	0x1
	.long	.LASF72
	.byte	0x1
	.value	0x1bb
	.byte	0x1
	.long	0x3e
	.quad	.LFB98
	.quad	.LFE98
	.byte	0x1
	.byte	0x57
	.uleb128 0x17
	.string	"a"
	.byte	0x1
	.value	0x1ba
	.long	0xb8
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x18
	.long	.LASF25
	.byte	0x1
	.value	0x1ba
	.long	0x1cf
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x16
	.long	0xe6c
	.byte	0x1
	.long	.LASF73
	.byte	0x1
	.value	0x1bf
	.byte	0x1
	.long	0x3e
	.quad	.LFB99
	.quad	.LFE99
	.byte	0x1
	.byte	0x57
	.uleb128 0x17
	.string	"a"
	.byte	0x1
	.value	0x1be
	.long	0xb8
	.byte	0x2
	.byte	0x90
	.uleb128 0x21
	.uleb128 0x18
	.long	.LASF25
	.byte	0x1
	.value	0x1be
	.long	0x1cf
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x16
	.long	0xeac
	.byte	0x1
	.long	.LASF74
	.byte	0x1
	.value	0x1c3
	.byte	0x1
	.long	0xa2
	.quad	.LFB100
	.quad	.LFE100
	.byte	0x1
	.byte	0x57
	.uleb128 0x17
	.string	"a"
	.byte	0x1
	.value	0x1c2
	.long	0xb8
	.byte	0x2
	.byte	0x90
	.uleb128 0x21
	.uleb128 0x18
	.long	.LASF25
	.byte	0x1
	.value	0x1c2
	.long	0x1cf
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x16
	.long	0xeec
	.byte	0x1
	.long	.LASF75
	.byte	0x1
	.value	0x1c7
	.byte	0x1
	.long	0xad
	.quad	.LFB101
	.quad	.LFE101
	.byte	0x1
	.byte	0x57
	.uleb128 0x17
	.string	"a"
	.byte	0x1
	.value	0x1c6
	.long	0xb8
	.byte	0x2
	.byte	0x90
	.uleb128 0x21
	.uleb128 0x18
	.long	.LASF25
	.byte	0x1
	.value	0x1c6
	.long	0x1cf
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x16
	.long	0xf2c
	.byte	0x1
	.long	.LASF76
	.byte	0x1
	.value	0x1cf
	.byte	0x1
	.long	0xb8
	.quad	.LFB102
	.quad	.LFE102
	.byte	0x1
	.byte	0x57
	.uleb128 0x17
	.string	"a"
	.byte	0x1
	.value	0x1ce
	.long	0xb8
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x18
	.long	.LASF25
	.byte	0x1
	.value	0x1ce
	.long	0x1cf
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x16
	.long	0xf7d
	.byte	0x1
	.long	.LASF77
	.byte	0x1
	.value	0x1d3
	.byte	0x1
	.long	0xb8
	.quad	.LFB103
	.quad	.LFE103
	.byte	0x1
	.byte	0x57
	.uleb128 0x17
	.string	"a"
	.byte	0x1
	.value	0x1d2
	.long	0xb8
	.byte	0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x8
	.byte	0x51
	.byte	0x93
	.uleb128 0x8
	.uleb128 0x17
	.string	"b"
	.byte	0x1
	.value	0x1d2
	.long	0xb8
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x18
	.long	.LASF25
	.byte	0x1
	.value	0x1d2
	.long	0x1cf
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x16
	.long	0xfbd
	.byte	0x1
	.long	.LASF78
	.byte	0x1
	.value	0x1d7
	.byte	0x1
	.long	0xb8
	.quad	.LFB104
	.quad	.LFE104
	.byte	0x1
	.byte	0x57
	.uleb128 0x17
	.string	"a"
	.byte	0x1
	.value	0x1d6
	.long	0xb8
	.byte	0x2
	.byte	0x90
	.uleb128 0x22
	.uleb128 0x18
	.long	.LASF25
	.byte	0x1
	.value	0x1d6
	.long	0x1cf
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x16
	.long	0x100a
	.byte	0x1
	.long	.LASF79
	.byte	0x1
	.value	0x1db
	.byte	0x1
	.long	0x37
	.quad	.LFB105
	.quad	.LFE105
	.byte	0x1
	.byte	0x57
	.uleb128 0x17
	.string	"a"
	.byte	0x1
	.value	0x1da
	.long	0xb8
	.byte	0x2
	.byte	0x90
	.uleb128 0x22
	.uleb128 0x17
	.string	"b"
	.byte	0x1
	.value	0x1da
	.long	0xb8
	.byte	0x2
	.byte	0x90
	.uleb128 0x21
	.uleb128 0x18
	.long	.LASF25
	.byte	0x1
	.value	0x1da
	.long	0x1cf
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x16
	.long	0x1057
	.byte	0x1
	.long	.LASF80
	.byte	0x1
	.value	0x1e7
	.byte	0x1
	.long	0x37
	.quad	.LFB106
	.quad	.LFE106
	.byte	0x1
	.byte	0x57
	.uleb128 0x17
	.string	"a"
	.byte	0x1
	.value	0x1e6
	.long	0xb8
	.byte	0x2
	.byte	0x90
	.uleb128 0x22
	.uleb128 0x17
	.string	"b"
	.byte	0x1
	.value	0x1e6
	.long	0xb8
	.byte	0x2
	.byte	0x90
	.uleb128 0x21
	.uleb128 0x18
	.long	.LASF25
	.byte	0x1
	.value	0x1e6
	.long	0x1cf
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x1b
	.byte	0x1
	.long	.LASF84
	.byte	0x1
	.value	0x1f3
	.byte	0x1
	.long	0x37
	.quad	.LFB107
	.quad	.LFE107
	.byte	0x1
	.byte	0x57
	.uleb128 0x17
	.string	"a1"
	.byte	0x1
	.value	0x1f2
	.long	0xb8
	.byte	0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x8
	.byte	0x51
	.byte	0x93
	.uleb128 0x8
	.uleb128 0x19
	.string	"u"
	.byte	0x1
	.value	0x1f4
	.long	0x156
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
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
	.uleb128 0x3
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
	.uleb128 0x4
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
	.uleb128 0x5
	.uleb128 0x17
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
	.uleb128 0x6
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.uleb128 0x2e
	.byte	0x1
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
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x577
	.value	0x2
	.long	.Ldebug_info0
	.long	0x1098
	.long	0x195
	.string	"set_float_rounding_mode"
	.long	0x1d5
	.string	"set_floatx80_rounding_precision"
	.long	0x20f
	.string	"int32_to_float32"
	.long	0x24b
	.string	"uint32_to_float32"
	.long	0x287
	.string	"int32_to_float64"
	.long	0x2c3
	.string	"uint32_to_float64"
	.long	0x2ff
	.string	"int32_to_floatx80"
	.long	0x33b
	.string	"int64_to_float32"
	.long	0x377
	.string	"uint64_to_float32"
	.long	0x3b3
	.string	"int64_to_float64"
	.long	0x3ef
	.string	"uint64_to_float64"
	.long	0x42b
	.string	"int64_to_floatx80"
	.long	0x467
	.string	"float32_to_int32"
	.long	0x4db
	.string	"float32_to_int32_round_to_zero"
	.long	0x517
	.string	"float32_to_int64"
	.long	0x553
	.string	"float32_to_int64_round_to_zero"
	.long	0x58f
	.string	"float32_to_float64"
	.long	0x5cb
	.string	"float32_to_floatx80"
	.long	0x607
	.string	"float32_to_uint32"
	.long	0x65b
	.string	"float32_to_uint32_round_to_zero"
	.long	0x6af
	.string	"float32_round_to_int"
	.long	0x6eb
	.string	"float32_rem"
	.long	0x732
	.string	"float32_sqrt"
	.long	0x76e
	.string	"float32_compare"
	.long	0x7b5
	.string	"float32_compare_quiet"
	.long	0x7fc
	.string	"float32_is_signaling_nan"
	.long	0x840
	.string	"float64_to_int32"
	.long	0x89c
	.string	"float64_to_int32_round_to_zero"
	.long	0x8db
	.string	"float64_to_int64"
	.long	0x91a
	.string	"float64_to_int64_round_to_zero"
	.long	0x959
	.string	"float64_to_float32"
	.long	0x998
	.string	"float64_to_floatx80"
	.long	0x9d7
	.string	"float64_to_uint32"
	.long	0xa30
	.string	"float64_to_uint32_round_to_zero"
	.long	0xa89
	.string	"float64_to_uint64"
	.long	0xad4
	.string	"float64_to_uint64_round_to_zero"
	.long	0xb1f
	.string	"float64_trunc_to_int"
	.long	0xb5e
	.string	"float64_round_to_int"
	.long	0xb9d
	.string	"float64_rem"
	.long	0xbe8
	.string	"float64_sqrt"
	.long	0xc27
	.string	"float64_compare"
	.long	0xc72
	.string	"float64_compare_quiet"
	.long	0xcbd
	.string	"float64_is_signaling_nan"
	.long	0xd05
	.string	"float64_is_nan"
	.long	0xd4b
	.string	"floatx80_to_int32"
	.long	0xdac
	.string	"floatx80_to_int32_round_to_zero"
	.long	0xdec
	.string	"floatx80_to_int64"
	.long	0xe2c
	.string	"floatx80_to_int64_round_to_zero"
	.long	0xe6c
	.string	"floatx80_to_float32"
	.long	0xeac
	.string	"floatx80_to_float64"
	.long	0xeec
	.string	"floatx80_round_to_int"
	.long	0xf2c
	.string	"floatx80_rem"
	.long	0xf7d
	.string	"floatx80_sqrt"
	.long	0xfbd
	.string	"floatx80_compare"
	.long	0x100a
	.string	"floatx80_compare_quiet"
	.long	0x1057
	.string	"floatx80_is_signaling_nan"
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
.LASF32:
	.string	"int32_to_floatx80"
.LASF46:
	.string	"float32_round_to_int"
.LASF37:
	.string	"int64_to_floatx80"
.LASF9:
	.string	"uint64_t"
.LASF24:
	.string	"float_status"
.LASF60:
	.string	"float64_to_uint64"
.LASF51:
	.string	"float32_is_signaling_nan"
.LASF53:
	.string	"float64_to_int32_round_to_zero"
.LASF2:
	.string	"long int"
.LASF52:
	.string	"float64_to_int32"
.LASF63:
	.string	"float64_round_to_int"
.LASF43:
	.string	"float32_to_floatx80"
.LASF29:
	.string	"uint32_to_float32"
.LASF61:
	.string	"float64_to_uint64_round_to_zero"
.LASF18:
	.string	"float32u"
.LASF15:
	.string	"float64"
.LASF74:
	.string	"floatx80_to_float32"
.LASF0:
	.string	"signed char"
.LASF22:
	.string	"float_rounding_mode"
.LASF79:
	.string	"floatx80_compare"
.LASF4:
	.string	"int64_t"
.LASF83:
	.string	"long_to_int32"
.LASF80:
	.string	"floatx80_compare_quiet"
.LASF12:
	.string	"double"
.LASF47:
	.string	"float32_rem"
.LASF56:
	.string	"float64_to_float32"
.LASF36:
	.string	"uint64_to_float64"
.LASF77:
	.string	"floatx80_rem"
.LASF33:
	.string	"int64_to_float32"
.LASF44:
	.string	"float32_to_uint32"
.LASF8:
	.string	"unsigned int"
.LASF5:
	.string	"uint16_t"
.LASF38:
	.string	"float32_to_int32"
.LASF10:
	.string	"long unsigned int"
.LASF70:
	.string	"floatx80_to_int32"
.LASF76:
	.string	"floatx80_round_to_int"
.LASF55:
	.string	"float64_to_int64_round_to_zero"
.LASF6:
	.string	"short unsigned int"
.LASF39:
	.string	"float32_to_int32_round_to_zero"
.LASF82:
	.string	"/home/remco/Projects/Argos/src/fpu/softfloat-native.c"
.LASF54:
	.string	"float64_to_int64"
.LASF48:
	.string	"float32_sqrt"
.LASF14:
	.string	"float32"
.LASF81:
	.string	"GNU C 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
.LASF31:
	.string	"uint32_to_float64"
.LASF45:
	.string	"float32_to_uint32_round_to_zero"
.LASF75:
	.string	"floatx80_to_float64"
.LASF49:
	.string	"float32_compare"
.LASF64:
	.string	"float64_rem"
.LASF30:
	.string	"int32_to_float64"
.LASF65:
	.string	"float64_sqrt"
.LASF11:
	.string	"float"
.LASF16:
	.string	"floatx80"
.LASF3:
	.string	"unsigned char"
.LASF58:
	.string	"float64_to_uint32"
.LASF1:
	.string	"short int"
.LASF72:
	.string	"floatx80_to_int64"
.LASF50:
	.string	"float32_compare_quiet"
.LASF35:
	.string	"int64_to_float64"
.LASF67:
	.string	"float64_compare_quiet"
.LASF23:
	.string	"floatx80_rounding_precision"
.LASF7:
	.string	"uint32_t"
.LASF17:
	.string	"long double"
.LASF13:
	.string	"char"
.LASF57:
	.string	"float64_to_floatx80"
.LASF69:
	.string	"float64_is_nan"
.LASF20:
	.string	"high"
.LASF59:
	.string	"float64_to_uint32_round_to_zero"
.LASF40:
	.string	"float32_to_int64"
.LASF41:
	.string	"float32_to_int64_round_to_zero"
.LASF78:
	.string	"floatx80_sqrt"
.LASF28:
	.string	"int32_to_float32"
.LASF66:
	.string	"float64_compare"
.LASF19:
	.string	"float64u"
.LASF62:
	.string	"float64_trunc_to_int"
.LASF25:
	.string	"status"
.LASF84:
	.string	"floatx80_is_signaling_nan"
.LASF42:
	.string	"float32_to_float64"
.LASF26:
	.string	"set_float_rounding_mode"
.LASF34:
	.string	"uint64_to_float32"
.LASF71:
	.string	"floatx80_to_int32_round_to_zero"
.LASF73:
	.string	"floatx80_to_int64_round_to_zero"
.LASF21:
	.string	"floatx80u"
.LASF27:
	.string	"set_floatx80_rounding_precision"
.LASF68:
	.string	"float64_is_signaling_nan"
	.section	.note.GNU-stack,"",@progbits
	.ident	"GCC: (GNU) 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
