	.file	"i386-dis.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"arpl"
.LC1:
	.string	"movs{||lq|xd}"
	.section	.rodata
	.align 32
	.type	x86_64_table, @object
	.size	x86_64_table, 112
x86_64_table:
	.quad	.LC0
	.quad	OP_E
	.long	3
	.zero	4
	.quad	OP_G
	.long	3
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC1
	.quad	OP_G
	.long	2
	.zero	4
	.quad	OP_E
	.long	4
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.section	.rodata.str1.1
.LC2:
	.string	"addps"
.LC3:
	.string	"addss"
.LC4:
	.string	"addpd"
.LC5:
	.string	"addsd"
.LC6:
	.string	""
.LC7:
	.string	"cvtpi2ps"
.LC8:
	.string	"cvtsi2ssY"
.LC9:
	.string	"cvtpi2pd"
.LC10:
	.string	"cvtsi2sdY"
.LC11:
	.string	"cvtps2pi"
.LC12:
	.string	"cvtss2siY"
.LC13:
	.string	"cvtpd2pi"
.LC14:
	.string	"cvtsd2siY"
.LC15:
	.string	"cvttps2pi"
.LC16:
	.string	"cvttss2siY"
.LC17:
	.string	"cvttpd2pi"
.LC18:
	.string	"cvttsd2siY"
.LC19:
	.string	"divps"
.LC20:
	.string	"divss"
.LC21:
	.string	"divpd"
.LC22:
	.string	"divsd"
.LC23:
	.string	"maxps"
.LC24:
	.string	"maxss"
.LC25:
	.string	"maxpd"
.LC26:
	.string	"maxsd"
.LC27:
	.string	"minps"
.LC28:
	.string	"minss"
.LC29:
	.string	"minpd"
.LC30:
	.string	"minsd"
.LC31:
	.string	"movups"
.LC32:
	.string	"movss"
.LC33:
	.string	"movupd"
.LC34:
	.string	"movsd"
.LC35:
	.string	"mulps"
.LC36:
	.string	"mulss"
.LC37:
	.string	"mulpd"
.LC38:
	.string	"mulsd"
.LC39:
	.string	"rcpps"
.LC40:
	.string	"rcpss"
.LC41:
	.string	"(bad)"
.LC42:
	.string	"rsqrtps"
.LC43:
	.string	"rsqrtss"
.LC44:
	.string	"sqrtps"
.LC45:
	.string	"sqrtss"
.LC46:
	.string	"sqrtpd"
.LC47:
	.string	"sqrtsd"
.LC48:
	.string	"subps"
.LC49:
	.string	"subss"
.LC50:
	.string	"subpd"
.LC51:
	.string	"subsd"
.LC52:
	.string	"cvtdq2pd"
.LC53:
	.string	"cvttpd2dq"
.LC54:
	.string	"cvtpd2dq"
.LC55:
	.string	"cvtdq2ps"
.LC56:
	.string	"cvttps2dq"
.LC57:
	.string	"cvtps2dq"
.LC58:
	.string	"cvtps2pd"
.LC59:
	.string	"cvtss2sd"
.LC60:
	.string	"cvtpd2ps"
.LC61:
	.string	"cvtsd2ss"
.LC62:
	.string	"maskmovq"
.LC63:
	.string	"maskmovdqu"
.LC64:
	.string	"movq"
.LC65:
	.string	"movdqu"
.LC66:
	.string	"movdqa"
.LC67:
	.string	"movq2dq"
.LC68:
	.string	"movdq2q"
.LC69:
	.string	"pshufw"
.LC70:
	.string	"pshufhw"
.LC71:
	.string	"pshufd"
.LC72:
	.string	"pshuflw"
.LC73:
	.string	"movd"
.LC74:
	.string	"punpckhqdq"
.LC75:
	.string	"movntq"
.LC76:
	.string	"movntdq"
.LC77:
	.string	"punpcklqdq"
	.section	.rodata
	.align 32
	.type	prefix_user_table, @object
	.size	prefix_user_table, 6048
prefix_user_table:
	.quad	.LC2
	.quad	OP_XMM
	.long	0
	.zero	4
	.quad	OP_EX
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC3
	.quad	OP_XMM
	.long	0
	.zero	4
	.quad	OP_EX
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC4
	.quad	OP_XMM
	.long	0
	.zero	4
	.quad	OP_EX
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC5
	.quad	OP_XMM
	.long	0
	.zero	4
	.quad	OP_EX
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC6
	.quad	OP_XMM
	.long	0
	.zero	4
	.quad	OP_EX
	.long	2
	.zero	4
	.quad	OP_SIMD_Suffix
	.long	0
	.zero	4
	.quad	.LC6
	.quad	OP_XMM
	.long	0
	.zero	4
	.quad	OP_EX
	.long	2
	.zero	4
	.quad	OP_SIMD_Suffix
	.long	0
	.zero	4
	.quad	.LC6
	.quad	OP_XMM
	.long	0
	.zero	4
	.quad	OP_EX
	.long	2
	.zero	4
	.quad	OP_SIMD_Suffix
	.long	0
	.zero	4
	.quad	.LC6
	.quad	OP_XMM
	.long	0
	.zero	4
	.quad	OP_EX
	.long	2
	.zero	4
	.quad	OP_SIMD_Suffix
	.long	0
	.zero	4
	.quad	.LC7
	.quad	OP_XMM
	.long	0
	.zero	4
	.quad	OP_EM
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC8
	.quad	OP_XMM
	.long	0
	.zero	4
	.quad	OP_E
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC9
	.quad	OP_XMM
	.long	0
	.zero	4
	.quad	OP_EM
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC10
	.quad	OP_XMM
	.long	0
	.zero	4
	.quad	OP_E
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC11
	.quad	OP_MMX
	.long	0
	.zero	4
	.quad	OP_EX
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC12
	.quad	OP_G
	.long	2
	.zero	4
	.quad	OP_EX
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC13
	.quad	OP_MMX
	.long	0
	.zero	4
	.quad	OP_EX
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC14
	.quad	OP_G
	.long	2
	.zero	4
	.quad	OP_EX
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC15
	.quad	OP_MMX
	.long	0
	.zero	4
	.quad	OP_EX
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC16
	.quad	OP_G
	.long	2
	.zero	4
	.quad	OP_EX
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC17
	.quad	OP_MMX
	.long	0
	.zero	4
	.quad	OP_EX
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC18
	.quad	OP_G
	.long	2
	.zero	4
	.quad	OP_EX
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC19
	.quad	OP_XMM
	.long	0
	.zero	4
	.quad	OP_EX
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC20
	.quad	OP_XMM
	.long	0
	.zero	4
	.quad	OP_EX
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC21
	.quad	OP_XMM
	.long	0
	.zero	4
	.quad	OP_EX
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC22
	.quad	OP_XMM
	.long	0
	.zero	4
	.quad	OP_EX
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC23
	.quad	OP_XMM
	.long	0
	.zero	4
	.quad	OP_EX
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC24
	.quad	OP_XMM
	.long	0
	.zero	4
	.quad	OP_EX
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC25
	.quad	OP_XMM
	.long	0
	.zero	4
	.quad	OP_EX
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC26
	.quad	OP_XMM
	.long	0
	.zero	4
	.quad	OP_EX
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC27
	.quad	OP_XMM
	.long	0
	.zero	4
	.quad	OP_EX
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC28
	.quad	OP_XMM
	.long	0
	.zero	4
	.quad	OP_EX
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC29
	.quad	OP_XMM
	.long	0
	.zero	4
	.quad	OP_EX
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC30
	.quad	OP_XMM
	.long	0
	.zero	4
	.quad	OP_EX
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC31
	.quad	OP_XMM
	.long	0
	.zero	4
	.quad	OP_EX
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC32
	.quad	OP_XMM
	.long	0
	.zero	4
	.quad	OP_EX
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC33
	.quad	OP_XMM
	.long	0
	.zero	4
	.quad	OP_EX
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC34
	.quad	OP_XMM
	.long	0
	.zero	4
	.quad	OP_EX
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC31
	.quad	OP_EX
	.long	2
	.zero	4
	.quad	OP_XMM
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC32
	.quad	OP_EX
	.long	2
	.zero	4
	.quad	OP_XMM
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC33
	.quad	OP_EX
	.long	2
	.zero	4
	.quad	OP_XMM
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC34
	.quad	OP_EX
	.long	2
	.zero	4
	.quad	OP_XMM
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC35
	.quad	OP_XMM
	.long	0
	.zero	4
	.quad	OP_EX
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC36
	.quad	OP_XMM
	.long	0
	.zero	4
	.quad	OP_EX
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC37
	.quad	OP_XMM
	.long	0
	.zero	4
	.quad	OP_EX
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC38
	.quad	OP_XMM
	.long	0
	.zero	4
	.quad	OP_EX
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC39
	.quad	OP_XMM
	.long	0
	.zero	4
	.quad	OP_EX
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC40
	.quad	OP_XMM
	.long	0
	.zero	4
	.quad	OP_EX
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	OP_XMM
	.long	0
	.zero	4
	.quad	OP_EX
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	OP_XMM
	.long	0
	.zero	4
	.quad	OP_EX
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC42
	.quad	OP_XMM
	.long	0
	.zero	4
	.quad	OP_EX
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC43
	.quad	OP_XMM
	.long	0
	.zero	4
	.quad	OP_EX
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	OP_XMM
	.long	0
	.zero	4
	.quad	OP_EX
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	OP_XMM
	.long	0
	.zero	4
	.quad	OP_EX
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC44
	.quad	OP_XMM
	.long	0
	.zero	4
	.quad	OP_EX
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC45
	.quad	OP_XMM
	.long	0
	.zero	4
	.quad	OP_EX
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC46
	.quad	OP_XMM
	.long	0
	.zero	4
	.quad	OP_EX
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC47
	.quad	OP_XMM
	.long	0
	.zero	4
	.quad	OP_EX
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC48
	.quad	OP_XMM
	.long	0
	.zero	4
	.quad	OP_EX
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC49
	.quad	OP_XMM
	.long	0
	.zero	4
	.quad	OP_EX
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC50
	.quad	OP_XMM
	.long	0
	.zero	4
	.quad	OP_EX
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC51
	.quad	OP_XMM
	.long	0
	.zero	4
	.quad	OP_EX
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	OP_XMM
	.long	0
	.zero	4
	.quad	OP_EX
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC52
	.quad	OP_XMM
	.long	0
	.zero	4
	.quad	OP_EX
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC53
	.quad	OP_XMM
	.long	0
	.zero	4
	.quad	OP_EX
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC54
	.quad	OP_XMM
	.long	0
	.zero	4
	.quad	OP_EX
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC55
	.quad	OP_XMM
	.long	0
	.zero	4
	.quad	OP_EX
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC56
	.quad	OP_XMM
	.long	0
	.zero	4
	.quad	OP_EX
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC57
	.quad	OP_XMM
	.long	0
	.zero	4
	.quad	OP_EX
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	OP_XMM
	.long	0
	.zero	4
	.quad	OP_EX
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC58
	.quad	OP_XMM
	.long	0
	.zero	4
	.quad	OP_EX
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC59
	.quad	OP_XMM
	.long	0
	.zero	4
	.quad	OP_EX
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC60
	.quad	OP_XMM
	.long	0
	.zero	4
	.quad	OP_EX
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC61
	.quad	OP_XMM
	.long	0
	.zero	4
	.quad	OP_EX
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC62
	.quad	OP_MMX
	.long	0
	.zero	4
	.quad	OP_MS
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	OP_XMM
	.long	0
	.zero	4
	.quad	OP_EX
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC63
	.quad	OP_XMM
	.long	0
	.zero	4
	.quad	OP_EX
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	OP_XMM
	.long	0
	.zero	4
	.quad	OP_EX
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC64
	.quad	OP_MMX
	.long	0
	.zero	4
	.quad	OP_EM
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC65
	.quad	OP_XMM
	.long	0
	.zero	4
	.quad	OP_EX
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC66
	.quad	OP_XMM
	.long	0
	.zero	4
	.quad	OP_EX
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	OP_XMM
	.long	0
	.zero	4
	.quad	OP_EX
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC64
	.quad	OP_EM
	.long	2
	.zero	4
	.quad	OP_MMX
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC65
	.quad	OP_EX
	.long	2
	.zero	4
	.quad	OP_XMM
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC66
	.quad	OP_EX
	.long	2
	.zero	4
	.quad	OP_XMM
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	OP_EX
	.long	2
	.zero	4
	.quad	OP_XMM
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	OP_EX
	.long	2
	.zero	4
	.quad	OP_XMM
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC67
	.quad	OP_XMM
	.long	0
	.zero	4
	.quad	OP_MS
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC64
	.quad	OP_EX
	.long	2
	.zero	4
	.quad	OP_XMM
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC68
	.quad	OP_MMX
	.long	0
	.zero	4
	.quad	OP_XS
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC69
	.quad	OP_MMX
	.long	0
	.zero	4
	.quad	OP_EM
	.long	2
	.zero	4
	.quad	OP_I
	.long	1
	.zero	4
	.quad	.LC70
	.quad	OP_XMM
	.long	0
	.zero	4
	.quad	OP_EX
	.long	2
	.zero	4
	.quad	OP_I
	.long	1
	.zero	4
	.quad	.LC71
	.quad	OP_XMM
	.long	0
	.zero	4
	.quad	OP_EX
	.long	2
	.zero	4
	.quad	OP_I
	.long	1
	.zero	4
	.quad	.LC72
	.quad	OP_XMM
	.long	0
	.zero	4
	.quad	OP_EX
	.long	2
	.zero	4
	.quad	OP_I
	.long	1
	.zero	4
	.quad	.LC73
	.quad	OP_E
	.long	4
	.zero	4
	.quad	OP_MMX
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC64
	.quad	OP_XMM
	.long	0
	.zero	4
	.quad	OP_EX
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC73
	.quad	OP_E
	.long	4
	.zero	4
	.quad	OP_XMM
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	OP_E
	.long	4
	.zero	4
	.quad	OP_XMM
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	OP_MMX
	.long	0
	.zero	4
	.quad	OP_EX
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	OP_XMM
	.long	0
	.zero	4
	.quad	OP_EX
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC74
	.quad	OP_XMM
	.long	0
	.zero	4
	.quad	OP_EX
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	OP_XMM
	.long	0
	.zero	4
	.quad	OP_EX
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC75
	.quad	OP_E
	.long	2
	.zero	4
	.quad	OP_MMX
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	OP_E
	.long	2
	.zero	4
	.quad	OP_XMM
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC76
	.quad	OP_E
	.long	2
	.zero	4
	.quad	OP_XMM
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	OP_E
	.long	2
	.zero	4
	.quad	OP_XMM
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	OP_MMX
	.long	0
	.zero	4
	.quad	OP_EX
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	OP_XMM
	.long	0
	.zero	4
	.quad	OP_EX
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC77
	.quad	OP_XMM
	.long	0
	.zero	4
	.quad	OP_EX
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	OP_XMM
	.long	0
	.zero	4
	.quad	OP_EX
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.section	.rodata.str1.1
.LC78:
	.string	"addA"
.LC79:
	.string	"orA"
.LC80:
	.string	"adcA"
.LC81:
	.string	"sbbA"
.LC82:
	.string	"andA"
.LC83:
	.string	"subA"
.LC84:
	.string	"xorA"
.LC85:
	.string	"cmpA"
.LC86:
	.string	"addQ"
.LC87:
	.string	"orQ"
.LC88:
	.string	"adcQ"
.LC89:
	.string	"sbbQ"
.LC90:
	.string	"andQ"
.LC91:
	.string	"subQ"
.LC92:
	.string	"xorQ"
.LC93:
	.string	"cmpQ"
.LC94:
	.string	"rolA"
.LC95:
	.string	"rorA"
.LC96:
	.string	"rclA"
.LC97:
	.string	"rcrA"
.LC98:
	.string	"shlA"
.LC99:
	.string	"shrA"
.LC100:
	.string	"sarA"
.LC101:
	.string	"rolQ"
.LC102:
	.string	"rorQ"
.LC103:
	.string	"rclQ"
.LC104:
	.string	"rcrQ"
.LC105:
	.string	"shlQ"
.LC106:
	.string	"shrQ"
.LC107:
	.string	"sarQ"
.LC108:
	.string	"testA"
.LC109:
	.string	"notA"
.LC110:
	.string	"negA"
.LC111:
	.string	"mulA"
.LC112:
	.string	"imulA"
.LC113:
	.string	"divA"
.LC114:
	.string	"idivA"
.LC115:
	.string	"testQ"
.LC116:
	.string	"notQ"
.LC117:
	.string	"negQ"
.LC118:
	.string	"mulQ"
.LC119:
	.string	"imulQ"
.LC120:
	.string	"divQ"
.LC121:
	.string	"idivQ"
.LC122:
	.string	"incA"
.LC123:
	.string	"decA"
.LC124:
	.string	"incQ"
.LC125:
	.string	"decQ"
.LC126:
	.string	"callT"
.LC127:
	.string	"lcallT"
.LC128:
	.string	"jmpT"
.LC129:
	.string	"ljmpT"
.LC130:
	.string	"pushU"
.LC131:
	.string	"sldtQ"
.LC132:
	.string	"strQ"
.LC133:
	.string	"lldt"
.LC134:
	.string	"ltr"
.LC135:
	.string	"verr"
.LC136:
	.string	"verw"
.LC137:
	.string	"sgdtQ"
.LC138:
	.string	"sidtQ"
.LC139:
	.string	"lgdtQ"
.LC140:
	.string	"lidtQ"
.LC141:
	.string	"smswQ"
.LC142:
	.string	"lmsw"
.LC143:
	.string	"invlpg"
.LC144:
	.string	"btQ"
.LC145:
	.string	"btsQ"
.LC146:
	.string	"btrQ"
.LC147:
	.string	"btcQ"
.LC148:
	.string	"cmpxchg8b"
.LC149:
	.string	"psrlw"
.LC150:
	.string	"psraw"
.LC151:
	.string	"psllw"
.LC152:
	.string	"psrld"
.LC153:
	.string	"psrad"
.LC154:
	.string	"pslld"
.LC155:
	.string	"psrlq"
.LC156:
	.string	"psrldq"
.LC157:
	.string	"psllq"
.LC158:
	.string	"pslldq"
.LC159:
	.string	"fxsave"
.LC160:
	.string	"fxrstor"
.LC161:
	.string	"ldmxcsr"
.LC162:
	.string	"stmxcsr"
.LC163:
	.string	"lfence"
.LC164:
	.string	"mfence"
.LC165:
	.string	"sfence"
.LC166:
	.string	"prefetchnta"
.LC167:
	.string	"prefetcht0"
.LC168:
	.string	"prefetcht1"
.LC169:
	.string	"prefetcht2"
.LC170:
	.string	"prefetch"
.LC171:
	.string	"prefetchw"
	.section	.rodata
	.align 32
	.type	grps, @object
	.size	grps, 10304
grps:
	.quad	.LC78
	.quad	OP_E
	.long	1
	.zero	4
	.quad	OP_I
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC79
	.quad	OP_E
	.long	1
	.zero	4
	.quad	OP_I
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC80
	.quad	OP_E
	.long	1
	.zero	4
	.quad	OP_I
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC81
	.quad	OP_E
	.long	1
	.zero	4
	.quad	OP_I
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC82
	.quad	OP_E
	.long	1
	.zero	4
	.quad	OP_I
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC83
	.quad	OP_E
	.long	1
	.zero	4
	.quad	OP_I
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC84
	.quad	OP_E
	.long	1
	.zero	4
	.quad	OP_I
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC85
	.quad	OP_E
	.long	1
	.zero	4
	.quad	OP_I
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC86
	.quad	OP_E
	.long	2
	.zero	4
	.quad	OP_I
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC87
	.quad	OP_E
	.long	2
	.zero	4
	.quad	OP_I
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC88
	.quad	OP_E
	.long	2
	.zero	4
	.quad	OP_I
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC89
	.quad	OP_E
	.long	2
	.zero	4
	.quad	OP_I
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC90
	.quad	OP_E
	.long	2
	.zero	4
	.quad	OP_I
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC91
	.quad	OP_E
	.long	2
	.zero	4
	.quad	OP_I
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC92
	.quad	OP_E
	.long	2
	.zero	4
	.quad	OP_I
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC93
	.quad	OP_E
	.long	2
	.zero	4
	.quad	OP_I
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC86
	.quad	OP_E
	.long	2
	.zero	4
	.quad	OP_sI
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC87
	.quad	OP_E
	.long	2
	.zero	4
	.quad	OP_sI
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC88
	.quad	OP_E
	.long	2
	.zero	4
	.quad	OP_sI
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC89
	.quad	OP_E
	.long	2
	.zero	4
	.quad	OP_sI
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC90
	.quad	OP_E
	.long	2
	.zero	4
	.quad	OP_sI
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC91
	.quad	OP_E
	.long	2
	.zero	4
	.quad	OP_sI
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC92
	.quad	OP_E
	.long	2
	.zero	4
	.quad	OP_sI
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC93
	.quad	OP_E
	.long	2
	.zero	4
	.quad	OP_sI
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC94
	.quad	OP_E
	.long	1
	.zero	4
	.quad	OP_I
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC95
	.quad	OP_E
	.long	1
	.zero	4
	.quad	OP_I
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC96
	.quad	OP_E
	.long	1
	.zero	4
	.quad	OP_I
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC97
	.quad	OP_E
	.long	1
	.zero	4
	.quad	OP_I
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC98
	.quad	OP_E
	.long	1
	.zero	4
	.quad	OP_I
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC99
	.quad	OP_E
	.long	1
	.zero	4
	.quad	OP_I
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC100
	.quad	OP_E
	.long	1
	.zero	4
	.quad	OP_I
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC101
	.quad	OP_E
	.long	2
	.zero	4
	.quad	OP_I
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC102
	.quad	OP_E
	.long	2
	.zero	4
	.quad	OP_I
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC103
	.quad	OP_E
	.long	2
	.zero	4
	.quad	OP_I
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC104
	.quad	OP_E
	.long	2
	.zero	4
	.quad	OP_I
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC105
	.quad	OP_E
	.long	2
	.zero	4
	.quad	OP_I
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC106
	.quad	OP_E
	.long	2
	.zero	4
	.quad	OP_I
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC107
	.quad	OP_E
	.long	2
	.zero	4
	.quad	OP_I
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC94
	.quad	OP_E
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC95
	.quad	OP_E
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC96
	.quad	OP_E
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC97
	.quad	OP_E
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC98
	.quad	OP_E
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC99
	.quad	OP_E
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC100
	.quad	OP_E
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC101
	.quad	OP_E
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC102
	.quad	OP_E
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC103
	.quad	OP_E
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC104
	.quad	OP_E
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC105
	.quad	OP_E
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC106
	.quad	OP_E
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC107
	.quad	OP_E
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC94
	.quad	OP_E
	.long	1
	.zero	4
	.quad	OP_IMREG
	.long	117
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC95
	.quad	OP_E
	.long	1
	.zero	4
	.quad	OP_IMREG
	.long	117
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC96
	.quad	OP_E
	.long	1
	.zero	4
	.quad	OP_IMREG
	.long	117
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC97
	.quad	OP_E
	.long	1
	.zero	4
	.quad	OP_IMREG
	.long	117
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC98
	.quad	OP_E
	.long	1
	.zero	4
	.quad	OP_IMREG
	.long	117
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC99
	.quad	OP_E
	.long	1
	.zero	4
	.quad	OP_IMREG
	.long	117
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC100
	.quad	OP_E
	.long	1
	.zero	4
	.quad	OP_IMREG
	.long	117
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC101
	.quad	OP_E
	.long	2
	.zero	4
	.quad	OP_IMREG
	.long	117
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC102
	.quad	OP_E
	.long	2
	.zero	4
	.quad	OP_IMREG
	.long	117
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC103
	.quad	OP_E
	.long	2
	.zero	4
	.quad	OP_IMREG
	.long	117
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC104
	.quad	OP_E
	.long	2
	.zero	4
	.quad	OP_IMREG
	.long	117
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC105
	.quad	OP_E
	.long	2
	.zero	4
	.quad	OP_IMREG
	.long	117
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC106
	.quad	OP_E
	.long	2
	.zero	4
	.quad	OP_IMREG
	.long	117
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC107
	.quad	OP_E
	.long	2
	.zero	4
	.quad	OP_IMREG
	.long	117
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC108
	.quad	OP_E
	.long	1
	.zero	4
	.quad	OP_I
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	OP_E
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC109
	.quad	OP_E
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC110
	.quad	OP_E
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC111
	.quad	OP_E
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC112
	.quad	OP_E
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC113
	.quad	OP_E
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC114
	.quad	OP_E
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC115
	.quad	OP_E
	.long	2
	.zero	4
	.quad	OP_I
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC116
	.quad	OP_E
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC117
	.quad	OP_E
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC118
	.quad	OP_E
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC119
	.quad	OP_E
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC120
	.quad	OP_E
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC121
	.quad	OP_E
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC122
	.quad	OP_E
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC123
	.quad	OP_E
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC124
	.quad	OP_E
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC125
	.quad	OP_E
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC126
	.quad	OP_indirE
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC127
	.quad	OP_indirE
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC128
	.quad	OP_indirE
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC129
	.quad	OP_indirE
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC130
	.quad	OP_E
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC131
	.quad	OP_E
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC132
	.quad	OP_E
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC133
	.quad	OP_E
	.long	3
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC134
	.quad	OP_E
	.long	3
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC135
	.quad	OP_E
	.long	3
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC136
	.quad	OP_E
	.long	3
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC137
	.quad	OP_E
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC138
	.quad	OP_E
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC139
	.quad	OP_E
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC140
	.quad	OP_E
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC141
	.quad	OP_E
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC142
	.quad	OP_E
	.long	3
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC143
	.quad	OP_E
	.long	3
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC144
	.quad	OP_E
	.long	2
	.zero	4
	.quad	OP_I
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC145
	.quad	OP_E
	.long	2
	.zero	4
	.quad	OP_I
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC146
	.quad	OP_E
	.long	2
	.zero	4
	.quad	OP_I
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC147
	.quad	OP_E
	.long	2
	.zero	4
	.quad	OP_I
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC148
	.quad	OP_E
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC149
	.quad	OP_MS
	.long	2
	.zero	4
	.quad	OP_I
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC150
	.quad	OP_MS
	.long	2
	.zero	4
	.quad	OP_I
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC151
	.quad	OP_MS
	.long	2
	.zero	4
	.quad	OP_I
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC152
	.quad	OP_MS
	.long	2
	.zero	4
	.quad	OP_I
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC153
	.quad	OP_MS
	.long	2
	.zero	4
	.quad	OP_I
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC154
	.quad	OP_MS
	.long	2
	.zero	4
	.quad	OP_I
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC155
	.quad	OP_MS
	.long	2
	.zero	4
	.quad	OP_I
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC156
	.quad	OP_MS
	.long	2
	.zero	4
	.quad	OP_I
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC157
	.quad	OP_MS
	.long	2
	.zero	4
	.quad	OP_I
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC158
	.quad	OP_MS
	.long	2
	.zero	4
	.quad	OP_I
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC159
	.quad	OP_E
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC160
	.quad	OP_E
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC161
	.quad	OP_E
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC162
	.quad	OP_E
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC163
	.quad	OP_E
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC164
	.quad	OP_E
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC165
	.quad	OP_E
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC166
	.quad	OP_E
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC167
	.quad	OP_E
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC168
	.quad	OP_E
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC169
	.quad	OP_E
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC170
	.quad	OP_E
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC171
	.quad	OP_E
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.align 32
	.type	onebyte_has_modrm, @object
	.size	onebyte_has_modrm, 256
onebyte_has_modrm:
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.section	.rodata.str1.1
.LC172:
	.string	"addB"
.LC173:
	.string	"addS"
.LC174:
	.string	"push{T|}"
.LC175:
	.string	"pop{T|}"
.LC176:
	.string	"orB"
.LC177:
	.string	"orS"
.LC178:
	.string	"adcB"
.LC179:
	.string	"adcS"
.LC180:
	.string	"popT|}"
.LC181:
	.string	"sbbB"
.LC182:
	.string	"sbbS"
.LC183:
	.string	"andB"
.LC184:
	.string	"andS"
.LC185:
	.string	"daa{|}"
.LC186:
	.string	"subB"
.LC187:
	.string	"subS"
.LC188:
	.string	"das{|}"
.LC189:
	.string	"xorB"
.LC190:
	.string	"xorS"
.LC191:
	.string	"aaa{|}"
.LC192:
	.string	"cmpB"
.LC193:
	.string	"cmpS"
.LC194:
	.string	"aas{|}"
.LC195:
	.string	"inc{S|}"
.LC196:
	.string	"dec{S|}"
.LC197:
	.string	"pushS"
.LC198:
	.string	"popS"
.LC199:
	.string	"pusha{P|}"
.LC200:
	.string	"popa{P|}"
.LC201:
	.string	"bound{S|}"
.LC202:
	.string	"pushT"
.LC203:
	.string	"imulS"
.LC204:
	.string	"ins{b||b|}"
.LC205:
	.string	"ins{R||R|}"
.LC206:
	.string	"outs{b||b|}"
.LC207:
	.string	"outs{R||R|}"
.LC208:
	.string	"joH"
.LC209:
	.string	"jnoH"
.LC210:
	.string	"jbH"
.LC211:
	.string	"jaeH"
.LC212:
	.string	"jeH"
.LC213:
	.string	"jneH"
.LC214:
	.string	"jbeH"
.LC215:
	.string	"jaH"
.LC216:
	.string	"jsH"
.LC217:
	.string	"jnsH"
.LC218:
	.string	"jpH"
.LC219:
	.string	"jnpH"
.LC220:
	.string	"jlH"
.LC221:
	.string	"jgeH"
.LC222:
	.string	"jleH"
.LC223:
	.string	"jgH"
.LC224:
	.string	"testB"
.LC225:
	.string	"testS"
.LC226:
	.string	"xchgB"
.LC227:
	.string	"xchgS"
.LC228:
	.string	"movB"
.LC229:
	.string	"movS"
.LC230:
	.string	"movQ"
.LC231:
	.string	"leaS"
.LC232:
	.string	"popU"
.LC233:
	.string	"nop"
.LC234:
	.string	"cW{tR||tR|}"
.LC235:
	.string	"cR{tO||tO|}"
.LC236:
	.string	"lcall{T|}"
.LC237:
	.string	"pushfT"
.LC238:
	.string	"popfT"
.LC239:
	.string	"sahf{|}"
.LC240:
	.string	"lahf{|}"
.LC241:
	.string	"movs{b||b|}"
.LC242:
	.string	"movs{R||R|}"
.LC243:
	.string	"cmps{b||b|}"
.LC244:
	.string	"cmps{R||R|}"
.LC245:
	.string	"stosB"
.LC246:
	.string	"stosS"
.LC247:
	.string	"lodsB"
.LC248:
	.string	"lodsS"
.LC249:
	.string	"scasB"
.LC250:
	.string	"scasS"
.LC251:
	.string	"retT"
.LC252:
	.string	"les{S|}"
.LC253:
	.string	"ldsS"
.LC254:
	.string	"movA"
.LC255:
	.string	"enterT"
.LC256:
	.string	"leaveT"
.LC257:
	.string	"lretP"
.LC258:
	.string	"int3"
.LC259:
	.string	"int"
.LC260:
	.string	"into{|}"
.LC261:
	.string	"iretP"
.LC262:
	.string	"aam{|}"
.LC263:
	.string	"aad{|}"
.LC264:
	.string	"xlat"
.LC265:
	.string	"loopneFH"
.LC266:
	.string	"loopeFH"
.LC267:
	.string	"loopFH"
.LC268:
	.string	"jEcxzH"
.LC269:
	.string	"inB"
.LC270:
	.string	"inS"
.LC271:
	.string	"outB"
.LC272:
	.string	"outS"
.LC273:
	.string	"ljmp{T|}"
.LC274:
	.string	"jmp"
.LC275:
	.string	"hlt"
.LC276:
	.string	"cmc"
.LC277:
	.string	"clc"
.LC278:
	.string	"stc"
.LC279:
	.string	"cli"
.LC280:
	.string	"sti"
.LC281:
	.string	"cld"
.LC282:
	.string	"std"
	.section	.rodata
	.align 32
	.type	dis386, @object
	.size	dis386, 14336
dis386:
	.quad	.LC172
	.quad	OP_E
	.long	1
	.zero	4
	.quad	OP_G
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC173
	.quad	OP_E
	.long	2
	.zero	4
	.quad	OP_G
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC172
	.quad	OP_G
	.long	1
	.zero	4
	.quad	OP_E
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC173
	.quad	OP_G
	.long	2
	.zero	4
	.quad	OP_E
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC172
	.quad	OP_IMREG
	.long	116
	.zero	4
	.quad	OP_I
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC173
	.quad	OP_IMREG
	.long	108
	.zero	4
	.quad	OP_I
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC174
	.quad	OP_REG
	.long	100
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC175
	.quad	OP_REG
	.long	100
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC176
	.quad	OP_E
	.long	1
	.zero	4
	.quad	OP_G
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC177
	.quad	OP_E
	.long	2
	.zero	4
	.quad	OP_G
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC176
	.quad	OP_G
	.long	1
	.zero	4
	.quad	OP_E
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC177
	.quad	OP_G
	.long	2
	.zero	4
	.quad	OP_E
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC176
	.quad	OP_IMREG
	.long	116
	.zero	4
	.quad	OP_I
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC177
	.quad	OP_IMREG
	.long	108
	.zero	4
	.quad	OP_I
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC174
	.quad	OP_REG
	.long	101
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC178
	.quad	OP_E
	.long	1
	.zero	4
	.quad	OP_G
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC179
	.quad	OP_E
	.long	2
	.zero	4
	.quad	OP_G
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC178
	.quad	OP_G
	.long	1
	.zero	4
	.quad	OP_E
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC179
	.quad	OP_G
	.long	2
	.zero	4
	.quad	OP_E
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC178
	.quad	OP_IMREG
	.long	116
	.zero	4
	.quad	OP_I
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC179
	.quad	OP_IMREG
	.long	108
	.zero	4
	.quad	OP_I
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC174
	.quad	OP_REG
	.long	102
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC180
	.quad	OP_REG
	.long	102
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC181
	.quad	OP_E
	.long	1
	.zero	4
	.quad	OP_G
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC182
	.quad	OP_E
	.long	2
	.zero	4
	.quad	OP_G
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC181
	.quad	OP_G
	.long	1
	.zero	4
	.quad	OP_E
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC182
	.quad	OP_G
	.long	2
	.zero	4
	.quad	OP_E
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC181
	.quad	OP_IMREG
	.long	116
	.zero	4
	.quad	OP_I
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC182
	.quad	OP_IMREG
	.long	108
	.zero	4
	.quad	OP_I
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC174
	.quad	OP_REG
	.long	103
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC175
	.quad	OP_REG
	.long	103
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC183
	.quad	OP_E
	.long	1
	.zero	4
	.quad	OP_G
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC184
	.quad	OP_E
	.long	2
	.zero	4
	.quad	OP_G
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC183
	.quad	OP_G
	.long	1
	.zero	4
	.quad	OP_E
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC184
	.quad	OP_G
	.long	2
	.zero	4
	.quad	OP_E
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC183
	.quad	OP_IMREG
	.long	116
	.zero	4
	.quad	OP_I
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC184
	.quad	OP_IMREG
	.long	108
	.zero	4
	.quad	OP_I
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC185
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC186
	.quad	OP_E
	.long	1
	.zero	4
	.quad	OP_G
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC187
	.quad	OP_E
	.long	2
	.zero	4
	.quad	OP_G
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC186
	.quad	OP_G
	.long	1
	.zero	4
	.quad	OP_E
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC187
	.quad	OP_G
	.long	2
	.zero	4
	.quad	OP_E
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC186
	.quad	OP_IMREG
	.long	116
	.zero	4
	.quad	OP_I
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC187
	.quad	OP_IMREG
	.long	108
	.zero	4
	.quad	OP_I
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC188
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC189
	.quad	OP_E
	.long	1
	.zero	4
	.quad	OP_G
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC190
	.quad	OP_E
	.long	2
	.zero	4
	.quad	OP_G
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC189
	.quad	OP_G
	.long	1
	.zero	4
	.quad	OP_E
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC190
	.quad	OP_G
	.long	2
	.zero	4
	.quad	OP_E
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC189
	.quad	OP_IMREG
	.long	116
	.zero	4
	.quad	OP_I
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC190
	.quad	OP_IMREG
	.long	108
	.zero	4
	.quad	OP_I
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC191
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC192
	.quad	OP_E
	.long	1
	.zero	4
	.quad	OP_G
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC193
	.quad	OP_E
	.long	2
	.zero	4
	.quad	OP_G
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC192
	.quad	OP_G
	.long	1
	.zero	4
	.quad	OP_E
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC193
	.quad	OP_G
	.long	2
	.zero	4
	.quad	OP_E
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC192
	.quad	OP_IMREG
	.long	116
	.zero	4
	.quad	OP_I
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC193
	.quad	OP_IMREG
	.long	108
	.zero	4
	.quad	OP_I
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC194
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC195
	.quad	OP_REG
	.long	108
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC195
	.quad	OP_REG
	.long	109
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC195
	.quad	OP_REG
	.long	110
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC195
	.quad	OP_REG
	.long	111
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC195
	.quad	OP_REG
	.long	112
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC195
	.quad	OP_REG
	.long	113
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC195
	.quad	OP_REG
	.long	114
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC195
	.quad	OP_REG
	.long	115
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC196
	.quad	OP_REG
	.long	108
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC196
	.quad	OP_REG
	.long	109
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC196
	.quad	OP_REG
	.long	110
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC196
	.quad	OP_REG
	.long	111
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC196
	.quad	OP_REG
	.long	112
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC196
	.quad	OP_REG
	.long	113
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC196
	.quad	OP_REG
	.long	114
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC196
	.quad	OP_REG
	.long	115
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC197
	.quad	OP_REG
	.long	132
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC197
	.quad	OP_REG
	.long	133
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC197
	.quad	OP_REG
	.long	134
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC197
	.quad	OP_REG
	.long	135
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC197
	.quad	OP_REG
	.long	136
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC197
	.quad	OP_REG
	.long	137
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC197
	.quad	OP_REG
	.long	138
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC197
	.quad	OP_REG
	.long	139
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC198
	.quad	OP_REG
	.long	132
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC198
	.quad	OP_REG
	.long	133
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC198
	.quad	OP_REG
	.long	134
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC198
	.quad	OP_REG
	.long	135
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC198
	.quad	OP_REG
	.long	136
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC198
	.quad	OP_REG
	.long	137
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC198
	.quad	OP_REG
	.long	138
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC198
	.quad	OP_REG
	.long	139
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC199
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC200
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC201
	.quad	OP_G
	.long	2
	.zero	4
	.quad	OP_E
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	4
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC202
	.quad	OP_I
	.long	5
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC203
	.quad	OP_G
	.long	2
	.zero	4
	.quad	OP_E
	.long	2
	.zero	4
	.quad	OP_I
	.long	2
	.zero	4
	.quad	.LC202
	.quad	OP_sI
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC203
	.quad	OP_G
	.long	2
	.zero	4
	.quad	OP_E
	.long	2
	.zero	4
	.quad	OP_sI
	.long	1
	.zero	4
	.quad	.LC204
	.quad	OP_ESreg
	.long	115
	.zero	4
	.quad	OP_IMREG
	.long	150
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC205
	.quad	OP_ESreg
	.long	115
	.zero	4
	.quad	OP_IMREG
	.long	150
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC206
	.quad	OP_IMREG
	.long	150
	.zero	4
	.quad	OP_DSreg
	.long	114
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC207
	.quad	OP_IMREG
	.long	150
	.zero	4
	.quad	OP_DSreg
	.long	114
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC208
	.quad	OP_J
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	8
	.zero	4
	.quad	.LC209
	.quad	OP_J
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	8
	.zero	4
	.quad	.LC210
	.quad	OP_J
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	8
	.zero	4
	.quad	.LC211
	.quad	OP_J
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	8
	.zero	4
	.quad	.LC212
	.quad	OP_J
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	8
	.zero	4
	.quad	.LC213
	.quad	OP_J
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	8
	.zero	4
	.quad	.LC214
	.quad	OP_J
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	8
	.zero	4
	.quad	.LC215
	.quad	OP_J
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	8
	.zero	4
	.quad	.LC216
	.quad	OP_J
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	8
	.zero	4
	.quad	.LC217
	.quad	OP_J
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	8
	.zero	4
	.quad	.LC218
	.quad	OP_J
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	8
	.zero	4
	.quad	.LC219
	.quad	OP_J
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	8
	.zero	4
	.quad	.LC220
	.quad	OP_J
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	8
	.zero	4
	.quad	.LC221
	.quad	OP_J
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	8
	.zero	4
	.quad	.LC222
	.quad	OP_J
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	8
	.zero	4
	.quad	.LC223
	.quad	OP_J
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	8
	.zero	4
	.quad	0
	.quad	0
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	2
	.zero	4
	.quad	0
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	2
	.zero	4
	.quad	0
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC224
	.quad	OP_E
	.long	1
	.zero	4
	.quad	OP_G
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC225
	.quad	OP_E
	.long	2
	.zero	4
	.quad	OP_G
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC226
	.quad	OP_E
	.long	1
	.zero	4
	.quad	OP_G
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC227
	.quad	OP_E
	.long	2
	.zero	4
	.quad	OP_G
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC228
	.quad	OP_E
	.long	1
	.zero	4
	.quad	OP_G
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC229
	.quad	OP_E
	.long	2
	.zero	4
	.quad	OP_G
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC228
	.quad	OP_G
	.long	1
	.zero	4
	.quad	OP_E
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC229
	.quad	OP_G
	.long	2
	.zero	4
	.quad	OP_E
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC230
	.quad	OP_E
	.long	2
	.zero	4
	.quad	OP_SEG
	.long	3
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC231
	.quad	OP_G
	.long	2
	.zero	4
	.quad	OP_E
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC230
	.quad	OP_SEG
	.long	3
	.zero	4
	.quad	OP_E
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC232
	.quad	OP_E
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC233
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC227
	.quad	OP_REG
	.long	109
	.zero	4
	.quad	OP_IMREG
	.long	108
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC227
	.quad	OP_REG
	.long	110
	.zero	4
	.quad	OP_IMREG
	.long	108
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC227
	.quad	OP_REG
	.long	111
	.zero	4
	.quad	OP_IMREG
	.long	108
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC227
	.quad	OP_REG
	.long	112
	.zero	4
	.quad	OP_IMREG
	.long	108
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC227
	.quad	OP_REG
	.long	113
	.zero	4
	.quad	OP_IMREG
	.long	108
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC227
	.quad	OP_REG
	.long	114
	.zero	4
	.quad	OP_IMREG
	.long	108
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC227
	.quad	OP_REG
	.long	115
	.zero	4
	.quad	OP_IMREG
	.long	108
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC234
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC235
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC236
	.quad	OP_DIR
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC237
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC238
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC239
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC240
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC228
	.quad	OP_IMREG
	.long	116
	.zero	4
	.quad	OP_OFF64
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC229
	.quad	OP_IMREG
	.long	108
	.zero	4
	.quad	OP_OFF64
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC228
	.quad	OP_OFF64
	.long	1
	.zero	4
	.quad	OP_IMREG
	.long	116
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC229
	.quad	OP_OFF64
	.long	2
	.zero	4
	.quad	OP_IMREG
	.long	108
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC241
	.quad	OP_ESreg
	.long	115
	.zero	4
	.quad	OP_DSreg
	.long	114
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC242
	.quad	OP_ESreg
	.long	115
	.zero	4
	.quad	OP_DSreg
	.long	114
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC243
	.quad	OP_DSreg
	.long	114
	.zero	4
	.quad	OP_ESreg
	.long	115
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC244
	.quad	OP_DSreg
	.long	114
	.zero	4
	.quad	OP_ESreg
	.long	115
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC224
	.quad	OP_IMREG
	.long	116
	.zero	4
	.quad	OP_I
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC225
	.quad	OP_IMREG
	.long	108
	.zero	4
	.quad	OP_I
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC245
	.quad	OP_ESreg
	.long	115
	.zero	4
	.quad	OP_IMREG
	.long	116
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC246
	.quad	OP_ESreg
	.long	115
	.zero	4
	.quad	OP_IMREG
	.long	108
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC247
	.quad	OP_IMREG
	.long	116
	.zero	4
	.quad	OP_DSreg
	.long	114
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC248
	.quad	OP_IMREG
	.long	108
	.zero	4
	.quad	OP_DSreg
	.long	114
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC249
	.quad	OP_IMREG
	.long	116
	.zero	4
	.quad	OP_ESreg
	.long	115
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC250
	.quad	OP_IMREG
	.long	108
	.zero	4
	.quad	OP_ESreg
	.long	115
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC228
	.quad	OP_REG
	.long	116
	.zero	4
	.quad	OP_I
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC228
	.quad	OP_REG
	.long	117
	.zero	4
	.quad	OP_I
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC228
	.quad	OP_REG
	.long	118
	.zero	4
	.quad	OP_I
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC228
	.quad	OP_REG
	.long	119
	.zero	4
	.quad	OP_I
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC228
	.quad	OP_REG
	.long	120
	.zero	4
	.quad	OP_I
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC228
	.quad	OP_REG
	.long	121
	.zero	4
	.quad	OP_I
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC228
	.quad	OP_REG
	.long	122
	.zero	4
	.quad	OP_I
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC228
	.quad	OP_REG
	.long	123
	.zero	4
	.quad	OP_I
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC229
	.quad	OP_REG
	.long	108
	.zero	4
	.quad	OP_I64
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC229
	.quad	OP_REG
	.long	109
	.zero	4
	.quad	OP_I64
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC229
	.quad	OP_REG
	.long	110
	.zero	4
	.quad	OP_I64
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC229
	.quad	OP_REG
	.long	111
	.zero	4
	.quad	OP_I64
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC229
	.quad	OP_REG
	.long	112
	.zero	4
	.quad	OP_I64
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC229
	.quad	OP_REG
	.long	113
	.zero	4
	.quad	OP_I64
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC229
	.quad	OP_REG
	.long	114
	.zero	4
	.quad	OP_I64
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC229
	.quad	OP_REG
	.long	115
	.zero	4
	.quad	OP_I64
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	2
	.zero	4
	.quad	0
	.long	3
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	2
	.zero	4
	.quad	0
	.long	4
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC251
	.quad	OP_I
	.long	3
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC251
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC252
	.quad	OP_G
	.long	2
	.zero	4
	.quad	OP_E
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC253
	.quad	OP_G
	.long	2
	.zero	4
	.quad	OP_E
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC254
	.quad	OP_E
	.long	1
	.zero	4
	.quad	OP_I
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC230
	.quad	OP_E
	.long	2
	.zero	4
	.quad	OP_I
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC255
	.quad	OP_I
	.long	3
	.zero	4
	.quad	OP_I
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC256
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC257
	.quad	OP_I
	.long	3
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC257
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC258
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC259
	.quad	OP_I
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC260
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC261
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	2
	.zero	4
	.quad	0
	.long	5
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	2
	.zero	4
	.quad	0
	.long	6
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	2
	.zero	4
	.quad	0
	.long	7
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	2
	.zero	4
	.quad	0
	.long	8
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC262
	.quad	OP_sI
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC263
	.quad	OP_sI
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC264
	.quad	OP_DSreg
	.long	111
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC265
	.quad	OP_J
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	9
	.zero	4
	.quad	.LC266
	.quad	OP_J
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	9
	.zero	4
	.quad	.LC267
	.quad	OP_J
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	9
	.zero	4
	.quad	.LC268
	.quad	OP_J
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	9
	.zero	4
	.quad	.LC269
	.quad	OP_IMREG
	.long	116
	.zero	4
	.quad	OP_I
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC270
	.quad	OP_IMREG
	.long	108
	.zero	4
	.quad	OP_I
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC271
	.quad	OP_I
	.long	1
	.zero	4
	.quad	OP_IMREG
	.long	116
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC272
	.quad	OP_I
	.long	1
	.zero	4
	.quad	OP_IMREG
	.long	108
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC126
	.quad	OP_J
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC128
	.quad	OP_J
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC273
	.quad	OP_DIR
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC274
	.quad	OP_J
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC269
	.quad	OP_IMREG
	.long	116
	.zero	4
	.quad	OP_IMREG
	.long	150
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC270
	.quad	OP_IMREG
	.long	108
	.zero	4
	.quad	OP_IMREG
	.long	150
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC271
	.quad	OP_IMREG
	.long	150
	.zero	4
	.quad	OP_IMREG
	.long	116
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC272
	.quad	OP_IMREG
	.long	150
	.zero	4
	.quad	OP_IMREG
	.long	108
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC275
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC276
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	2
	.zero	4
	.quad	0
	.long	9
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	2
	.zero	4
	.quad	0
	.long	10
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC277
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC278
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC279
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC280
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC281
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC282
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	2
	.zero	4
	.quad	0
	.long	11
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	2
	.zero	4
	.quad	0
	.long	12
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.align 32
	.type	twobyte_uses_SSE_prefix, @object
	.size	twobyte_uses_SSE_prefix, 256
twobyte_uses_SSE_prefix:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.align 32
	.type	twobyte_has_modrm, @object
	.size	twobyte_has_modrm, 256
twobyte_has_modrm:
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.section	.rodata.str1.1
.LC283:
	.string	"larS"
.LC284:
	.string	"lslS"
.LC285:
	.string	"syscall"
.LC286:
	.string	"clts"
.LC287:
	.string	"sysretP"
.LC288:
	.string	"invd"
.LC289:
	.string	"wbinvd"
.LC290:
	.string	"ud2a"
.LC291:
	.string	"femms"
.LC292:
	.string	"movlpX"
.LC293:
	.string	"unpcklpX"
.LC294:
	.string	"unpckhpX"
.LC295:
	.string	"movhpX"
.LC296:
	.string	"movL"
.LC297:
	.string	"movapX"
.LC298:
	.string	"movntpX"
.LC299:
	.string	"ucomisX"
.LC300:
	.string	"comisX"
.LC301:
	.string	"wrmsr"
.LC302:
	.string	"rdtsc"
.LC303:
	.string	"rdmsr"
.LC304:
	.string	"rdpmc"
.LC305:
	.string	"sysenter"
.LC306:
	.string	"sysexit"
.LC307:
	.string	"cmovo"
.LC308:
	.string	"cmovno"
.LC309:
	.string	"cmovb"
.LC310:
	.string	"cmovae"
.LC311:
	.string	"cmove"
.LC312:
	.string	"cmovne"
.LC313:
	.string	"cmovbe"
.LC314:
	.string	"cmova"
.LC315:
	.string	"cmovs"
.LC316:
	.string	"cmovns"
.LC317:
	.string	"cmovp"
.LC318:
	.string	"cmovnp"
.LC319:
	.string	"cmovl"
.LC320:
	.string	"cmovge"
.LC321:
	.string	"cmovle"
.LC322:
	.string	"cmovg"
.LC323:
	.string	"movmskpX"
.LC324:
	.string	"andpX"
.LC325:
	.string	"andnpX"
.LC326:
	.string	"orpX"
.LC327:
	.string	"xorpX"
.LC328:
	.string	"punpcklbw"
.LC329:
	.string	"punpcklwd"
.LC330:
	.string	"punpckldq"
.LC331:
	.string	"packsswb"
.LC332:
	.string	"pcmpgtb"
.LC333:
	.string	"pcmpgtw"
.LC334:
	.string	"pcmpgtd"
.LC335:
	.string	"packuswb"
.LC336:
	.string	"punpckhbw"
.LC337:
	.string	"punpckhwd"
.LC338:
	.string	"punpckhdq"
.LC339:
	.string	"packssdw"
.LC340:
	.string	"pcmpeqb"
.LC341:
	.string	"pcmpeqw"
.LC342:
	.string	"pcmpeqd"
.LC343:
	.string	"emms"
.LC344:
	.string	"seto"
.LC345:
	.string	"setno"
.LC346:
	.string	"setb"
.LC347:
	.string	"setae"
.LC348:
	.string	"sete"
.LC349:
	.string	"setne"
.LC350:
	.string	"setbe"
.LC351:
	.string	"seta"
.LC352:
	.string	"sets"
.LC353:
	.string	"setns"
.LC354:
	.string	"setp"
.LC355:
	.string	"setnp"
.LC356:
	.string	"setl"
.LC357:
	.string	"setge"
.LC358:
	.string	"setle"
.LC359:
	.string	"setg"
.LC360:
	.string	"popT"
.LC361:
	.string	"cpuid"
.LC362:
	.string	"btS"
.LC363:
	.string	"shldS"
.LC364:
	.string	"rsm"
.LC365:
	.string	"btsS"
.LC366:
	.string	"shrdS"
.LC367:
	.string	"cmpxchgB"
.LC368:
	.string	"cmpxchgS"
.LC369:
	.string	"lssS"
.LC370:
	.string	"btrS"
.LC371:
	.string	"lfsS"
.LC372:
	.string	"lgsS"
.LC373:
	.string	"movz{bR|x|bR|x}"
.LC374:
	.string	"movz{wR|x|wR|x}"
.LC375:
	.string	"ud2b"
.LC376:
	.string	"btcS"
.LC377:
	.string	"bsfS"
.LC378:
	.string	"bsrS"
.LC379:
	.string	"movs{bR|x|bR|x}"
.LC380:
	.string	"movs{wR|x|wR|x}"
.LC381:
	.string	"xaddB"
.LC382:
	.string	"xaddS"
.LC383:
	.string	"movntiS"
.LC384:
	.string	"pinsrw"
.LC385:
	.string	"pextrw"
.LC386:
	.string	"shufpX"
.LC387:
	.string	"bswap"
.LC388:
	.string	"paddq"
.LC389:
	.string	"pmullw"
.LC390:
	.string	"pmovmskb"
.LC391:
	.string	"psubusb"
.LC392:
	.string	"psubusw"
.LC393:
	.string	"pminub"
.LC394:
	.string	"pand"
.LC395:
	.string	"paddusb"
.LC396:
	.string	"paddusw"
.LC397:
	.string	"pmaxub"
.LC398:
	.string	"pandn"
.LC399:
	.string	"pavgb"
.LC400:
	.string	"pavgw"
.LC401:
	.string	"pmulhuw"
.LC402:
	.string	"pmulhw"
.LC403:
	.string	"psubsb"
.LC404:
	.string	"psubsw"
.LC405:
	.string	"pminsw"
.LC406:
	.string	"por"
.LC407:
	.string	"paddsb"
.LC408:
	.string	"paddsw"
.LC409:
	.string	"pmaxsw"
.LC410:
	.string	"pxor"
.LC411:
	.string	"pmuludq"
.LC412:
	.string	"pmaddwd"
.LC413:
	.string	"psadbw"
.LC414:
	.string	"psubb"
.LC415:
	.string	"psubw"
.LC416:
	.string	"psubd"
.LC417:
	.string	"psubq"
.LC418:
	.string	"paddb"
.LC419:
	.string	"paddw"
.LC420:
	.string	"paddd"
	.section	.rodata
	.align 32
	.type	dis386_twobyte, @object
	.size	dis386_twobyte, 14336
dis386_twobyte:
	.quad	0
	.quad	0
	.long	2
	.zero	4
	.quad	0
	.long	13
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	2
	.zero	4
	.quad	0
	.long	14
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC283
	.quad	OP_G
	.long	2
	.zero	4
	.quad	OP_E
	.long	3
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC284
	.quad	OP_G
	.long	2
	.zero	4
	.quad	OP_E
	.long	3
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC285
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC286
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC287
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC288
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC289
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC290
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	2
	.zero	4
	.quad	0
	.long	22
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC291
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC6
	.quad	OP_MMX
	.long	0
	.zero	4
	.quad	OP_EM
	.long	2
	.zero	4
	.quad	OP_3DNowSuffix
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	3
	.zero	4
	.quad	0
	.long	8
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	3
	.zero	4
	.quad	0
	.long	9
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC292
	.quad	OP_XMM
	.long	0
	.zero	4
	.quad	OP_EX
	.long	2
	.zero	4
	.quad	SIMD_Fixup
	.long	104
	.zero	4
	.quad	.LC292
	.quad	OP_EX
	.long	2
	.zero	4
	.quad	OP_XMM
	.long	0
	.zero	4
	.quad	SIMD_Fixup
	.long	104
	.zero	4
	.quad	.LC293
	.quad	OP_XMM
	.long	0
	.zero	4
	.quad	OP_EX
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC294
	.quad	OP_XMM
	.long	0
	.zero	4
	.quad	OP_EX
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC295
	.quad	OP_XMM
	.long	0
	.zero	4
	.quad	OP_EX
	.long	2
	.zero	4
	.quad	SIMD_Fixup
	.long	108
	.zero	4
	.quad	.LC295
	.quad	OP_EX
	.long	2
	.zero	4
	.quad	OP_XMM
	.long	0
	.zero	4
	.quad	SIMD_Fixup
	.long	108
	.zero	4
	.quad	0
	.quad	0
	.long	2
	.zero	4
	.quad	0
	.long	21
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC296
	.quad	OP_Rd
	.long	7
	.zero	4
	.quad	OP_C
	.long	7
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC296
	.quad	OP_Rd
	.long	7
	.zero	4
	.quad	OP_D
	.long	7
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC296
	.quad	OP_C
	.long	7
	.zero	4
	.quad	OP_Rd
	.long	7
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC296
	.quad	OP_D
	.long	7
	.zero	4
	.quad	OP_Rd
	.long	7
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC296
	.quad	OP_Rd
	.long	4
	.zero	4
	.quad	OP_T
	.long	4
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC296
	.quad	OP_T
	.long	4
	.zero	4
	.quad	OP_Rd
	.long	4
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC297
	.quad	OP_XMM
	.long	0
	.zero	4
	.quad	OP_EX
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC297
	.quad	OP_EX
	.long	2
	.zero	4
	.quad	OP_XMM
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	3
	.zero	4
	.quad	0
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC298
	.quad	OP_E
	.long	2
	.zero	4
	.quad	OP_XMM
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	3
	.zero	4
	.quad	0
	.long	4
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	3
	.zero	4
	.quad	0
	.long	3
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC299
	.quad	OP_XMM
	.long	0
	.zero	4
	.quad	OP_EX
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC300
	.quad	OP_XMM
	.long	0
	.zero	4
	.quad	OP_EX
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC301
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC302
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC303
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC304
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC305
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC306
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC307
	.quad	OP_G
	.long	2
	.zero	4
	.quad	OP_E
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC308
	.quad	OP_G
	.long	2
	.zero	4
	.quad	OP_E
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC309
	.quad	OP_G
	.long	2
	.zero	4
	.quad	OP_E
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC310
	.quad	OP_G
	.long	2
	.zero	4
	.quad	OP_E
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC311
	.quad	OP_G
	.long	2
	.zero	4
	.quad	OP_E
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC312
	.quad	OP_G
	.long	2
	.zero	4
	.quad	OP_E
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC313
	.quad	OP_G
	.long	2
	.zero	4
	.quad	OP_E
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC314
	.quad	OP_G
	.long	2
	.zero	4
	.quad	OP_E
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC315
	.quad	OP_G
	.long	2
	.zero	4
	.quad	OP_E
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC316
	.quad	OP_G
	.long	2
	.zero	4
	.quad	OP_E
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC317
	.quad	OP_G
	.long	2
	.zero	4
	.quad	OP_E
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC318
	.quad	OP_G
	.long	2
	.zero	4
	.quad	OP_E
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC319
	.quad	OP_G
	.long	2
	.zero	4
	.quad	OP_E
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC320
	.quad	OP_G
	.long	2
	.zero	4
	.quad	OP_E
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC321
	.quad	OP_G
	.long	2
	.zero	4
	.quad	OP_E
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC322
	.quad	OP_G
	.long	2
	.zero	4
	.quad	OP_E
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC323
	.quad	OP_G
	.long	4
	.zero	4
	.quad	OP_XS
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	3
	.zero	4
	.quad	0
	.long	13
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	3
	.zero	4
	.quad	0
	.long	12
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	3
	.zero	4
	.quad	0
	.long	11
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC324
	.quad	OP_XMM
	.long	0
	.zero	4
	.quad	OP_EX
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC325
	.quad	OP_XMM
	.long	0
	.zero	4
	.quad	OP_EX
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC326
	.quad	OP_XMM
	.long	0
	.zero	4
	.quad	OP_EX
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC327
	.quad	OP_XMM
	.long	0
	.zero	4
	.quad	OP_EX
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	3
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	3
	.zero	4
	.quad	0
	.long	10
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	3
	.zero	4
	.quad	0
	.long	17
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	3
	.zero	4
	.quad	0
	.long	16
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	3
	.zero	4
	.quad	0
	.long	14
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	3
	.zero	4
	.quad	0
	.long	7
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	3
	.zero	4
	.quad	0
	.long	5
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	3
	.zero	4
	.quad	0
	.long	6
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC328
	.quad	OP_MMX
	.long	0
	.zero	4
	.quad	OP_EM
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC329
	.quad	OP_MMX
	.long	0
	.zero	4
	.quad	OP_EM
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC330
	.quad	OP_MMX
	.long	0
	.zero	4
	.quad	OP_EM
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC331
	.quad	OP_MMX
	.long	0
	.zero	4
	.quad	OP_EM
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC332
	.quad	OP_MMX
	.long	0
	.zero	4
	.quad	OP_EM
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC333
	.quad	OP_MMX
	.long	0
	.zero	4
	.quad	OP_EM
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC334
	.quad	OP_MMX
	.long	0
	.zero	4
	.quad	OP_EM
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC335
	.quad	OP_MMX
	.long	0
	.zero	4
	.quad	OP_EM
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC336
	.quad	OP_MMX
	.long	0
	.zero	4
	.quad	OP_EM
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC337
	.quad	OP_MMX
	.long	0
	.zero	4
	.quad	OP_EM
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC338
	.quad	OP_MMX
	.long	0
	.zero	4
	.quad	OP_EM
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC339
	.quad	OP_MMX
	.long	0
	.zero	4
	.quad	OP_EM
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	3
	.zero	4
	.quad	0
	.long	26
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	3
	.zero	4
	.quad	0
	.long	24
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC73
	.quad	OP_MMX
	.long	0
	.zero	4
	.quad	OP_E
	.long	4
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	3
	.zero	4
	.quad	0
	.long	19
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	3
	.zero	4
	.quad	0
	.long	22
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	2
	.zero	4
	.quad	0
	.long	17
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	2
	.zero	4
	.quad	0
	.long	18
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	2
	.zero	4
	.quad	0
	.long	19
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC340
	.quad	OP_MMX
	.long	0
	.zero	4
	.quad	OP_EM
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC341
	.quad	OP_MMX
	.long	0
	.zero	4
	.quad	OP_EM
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC342
	.quad	OP_MMX
	.long	0
	.zero	4
	.quad	OP_EM
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC343
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	3
	.zero	4
	.quad	0
	.long	23
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	3
	.zero	4
	.quad	0
	.long	20
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC208
	.quad	OP_J
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	8
	.zero	4
	.quad	.LC209
	.quad	OP_J
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	8
	.zero	4
	.quad	.LC210
	.quad	OP_J
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	8
	.zero	4
	.quad	.LC211
	.quad	OP_J
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	8
	.zero	4
	.quad	.LC212
	.quad	OP_J
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	8
	.zero	4
	.quad	.LC213
	.quad	OP_J
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	8
	.zero	4
	.quad	.LC214
	.quad	OP_J
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	8
	.zero	4
	.quad	.LC215
	.quad	OP_J
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	8
	.zero	4
	.quad	.LC216
	.quad	OP_J
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	8
	.zero	4
	.quad	.LC217
	.quad	OP_J
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	8
	.zero	4
	.quad	.LC218
	.quad	OP_J
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	8
	.zero	4
	.quad	.LC219
	.quad	OP_J
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	8
	.zero	4
	.quad	.LC220
	.quad	OP_J
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	8
	.zero	4
	.quad	.LC221
	.quad	OP_J
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	8
	.zero	4
	.quad	.LC222
	.quad	OP_J
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	8
	.zero	4
	.quad	.LC223
	.quad	OP_J
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	8
	.zero	4
	.quad	.LC344
	.quad	OP_E
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC345
	.quad	OP_E
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC346
	.quad	OP_E
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC347
	.quad	OP_E
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC348
	.quad	OP_E
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC349
	.quad	OP_E
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC350
	.quad	OP_E
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC351
	.quad	OP_E
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC352
	.quad	OP_E
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC353
	.quad	OP_E
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC354
	.quad	OP_E
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC355
	.quad	OP_E
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC356
	.quad	OP_E
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC357
	.quad	OP_E
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC358
	.quad	OP_E
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC359
	.quad	OP_E
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC202
	.quad	OP_REG
	.long	104
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC360
	.quad	OP_REG
	.long	104
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC361
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC362
	.quad	OP_E
	.long	2
	.zero	4
	.quad	OP_G
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC363
	.quad	OP_E
	.long	2
	.zero	4
	.quad	OP_G
	.long	2
	.zero	4
	.quad	OP_I
	.long	1
	.zero	4
	.quad	.LC363
	.quad	OP_E
	.long	2
	.zero	4
	.quad	OP_G
	.long	2
	.zero	4
	.quad	OP_IMREG
	.long	117
	.zero	4
	.quad	.LC41
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC202
	.quad	OP_REG
	.long	105
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC360
	.quad	OP_REG
	.long	105
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC364
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC365
	.quad	OP_E
	.long	2
	.zero	4
	.quad	OP_G
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC366
	.quad	OP_E
	.long	2
	.zero	4
	.quad	OP_G
	.long	2
	.zero	4
	.quad	OP_I
	.long	1
	.zero	4
	.quad	.LC366
	.quad	OP_E
	.long	2
	.zero	4
	.quad	OP_G
	.long	2
	.zero	4
	.quad	OP_IMREG
	.long	117
	.zero	4
	.quad	0
	.quad	0
	.long	2
	.zero	4
	.quad	0
	.long	20
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC203
	.quad	OP_G
	.long	2
	.zero	4
	.quad	OP_E
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC367
	.quad	OP_E
	.long	1
	.zero	4
	.quad	OP_G
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC368
	.quad	OP_E
	.long	2
	.zero	4
	.quad	OP_G
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC369
	.quad	OP_G
	.long	2
	.zero	4
	.quad	OP_E
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC370
	.quad	OP_E
	.long	2
	.zero	4
	.quad	OP_G
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC371
	.quad	OP_G
	.long	2
	.zero	4
	.quad	OP_E
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC372
	.quad	OP_G
	.long	2
	.zero	4
	.quad	OP_E
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC373
	.quad	OP_G
	.long	2
	.zero	4
	.quad	OP_E
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC374
	.quad	OP_G
	.long	2
	.zero	4
	.quad	OP_E
	.long	3
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC375
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	2
	.zero	4
	.quad	0
	.long	15
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC376
	.quad	OP_E
	.long	2
	.zero	4
	.quad	OP_G
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC377
	.quad	OP_G
	.long	2
	.zero	4
	.quad	OP_E
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC378
	.quad	OP_G
	.long	2
	.zero	4
	.quad	OP_E
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC379
	.quad	OP_G
	.long	2
	.zero	4
	.quad	OP_E
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC380
	.quad	OP_G
	.long	2
	.zero	4
	.quad	OP_E
	.long	3
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC381
	.quad	OP_E
	.long	1
	.zero	4
	.quad	OP_G
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC382
	.quad	OP_E
	.long	2
	.zero	4
	.quad	OP_G
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	3
	.zero	4
	.quad	0
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC383
	.quad	OP_E
	.long	2
	.zero	4
	.quad	OP_G
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC384
	.quad	OP_MMX
	.long	0
	.zero	4
	.quad	OP_E
	.long	4
	.zero	4
	.quad	OP_I
	.long	1
	.zero	4
	.quad	.LC385
	.quad	OP_G
	.long	4
	.zero	4
	.quad	OP_MS
	.long	2
	.zero	4
	.quad	OP_I
	.long	1
	.zero	4
	.quad	.LC386
	.quad	OP_XMM
	.long	0
	.zero	4
	.quad	OP_EX
	.long	2
	.zero	4
	.quad	OP_I
	.long	1
	.zero	4
	.quad	0
	.quad	0
	.long	2
	.zero	4
	.quad	0
	.long	16
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC387
	.quad	OP_REG
	.long	108
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC387
	.quad	OP_REG
	.long	109
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC387
	.quad	OP_REG
	.long	110
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC387
	.quad	OP_REG
	.long	111
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC387
	.quad	OP_REG
	.long	112
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC387
	.quad	OP_REG
	.long	113
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC387
	.quad	OP_REG
	.long	114
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC387
	.quad	OP_REG
	.long	115
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC149
	.quad	OP_MMX
	.long	0
	.zero	4
	.quad	OP_EM
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC152
	.quad	OP_MMX
	.long	0
	.zero	4
	.quad	OP_EM
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC155
	.quad	OP_MMX
	.long	0
	.zero	4
	.quad	OP_EM
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC388
	.quad	OP_MMX
	.long	0
	.zero	4
	.quad	OP_EM
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC389
	.quad	OP_MMX
	.long	0
	.zero	4
	.quad	OP_EM
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	3
	.zero	4
	.quad	0
	.long	21
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC390
	.quad	OP_G
	.long	4
	.zero	4
	.quad	OP_MS
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC391
	.quad	OP_MMX
	.long	0
	.zero	4
	.quad	OP_EM
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC392
	.quad	OP_MMX
	.long	0
	.zero	4
	.quad	OP_EM
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC393
	.quad	OP_MMX
	.long	0
	.zero	4
	.quad	OP_EM
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC394
	.quad	OP_MMX
	.long	0
	.zero	4
	.quad	OP_EM
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC395
	.quad	OP_MMX
	.long	0
	.zero	4
	.quad	OP_EM
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC396
	.quad	OP_MMX
	.long	0
	.zero	4
	.quad	OP_EM
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC397
	.quad	OP_MMX
	.long	0
	.zero	4
	.quad	OP_EM
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC398
	.quad	OP_MMX
	.long	0
	.zero	4
	.quad	OP_EM
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC399
	.quad	OP_MMX
	.long	0
	.zero	4
	.quad	OP_EM
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC150
	.quad	OP_MMX
	.long	0
	.zero	4
	.quad	OP_EM
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC153
	.quad	OP_MMX
	.long	0
	.zero	4
	.quad	OP_EM
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC400
	.quad	OP_MMX
	.long	0
	.zero	4
	.quad	OP_EM
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC401
	.quad	OP_MMX
	.long	0
	.zero	4
	.quad	OP_EM
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC402
	.quad	OP_MMX
	.long	0
	.zero	4
	.quad	OP_EM
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	3
	.zero	4
	.quad	0
	.long	15
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	3
	.zero	4
	.quad	0
	.long	25
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC403
	.quad	OP_MMX
	.long	0
	.zero	4
	.quad	OP_EM
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC404
	.quad	OP_MMX
	.long	0
	.zero	4
	.quad	OP_EM
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC405
	.quad	OP_MMX
	.long	0
	.zero	4
	.quad	OP_EM
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC406
	.quad	OP_MMX
	.long	0
	.zero	4
	.quad	OP_EM
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC407
	.quad	OP_MMX
	.long	0
	.zero	4
	.quad	OP_EM
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC408
	.quad	OP_MMX
	.long	0
	.zero	4
	.quad	OP_EM
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC409
	.quad	OP_MMX
	.long	0
	.zero	4
	.quad	OP_EM
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC410
	.quad	OP_MMX
	.long	0
	.zero	4
	.quad	OP_EM
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC151
	.quad	OP_MMX
	.long	0
	.zero	4
	.quad	OP_EM
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC154
	.quad	OP_MMX
	.long	0
	.zero	4
	.quad	OP_EM
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC157
	.quad	OP_MMX
	.long	0
	.zero	4
	.quad	OP_EM
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC411
	.quad	OP_MMX
	.long	0
	.zero	4
	.quad	OP_EM
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC412
	.quad	OP_MMX
	.long	0
	.zero	4
	.quad	OP_EM
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC413
	.quad	OP_MMX
	.long	0
	.zero	4
	.quad	OP_EM
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	3
	.zero	4
	.quad	0
	.long	18
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC414
	.quad	OP_MMX
	.long	0
	.zero	4
	.quad	OP_EM
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC415
	.quad	OP_MMX
	.long	0
	.zero	4
	.quad	OP_EM
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC416
	.quad	OP_MMX
	.long	0
	.zero	4
	.quad	OP_EM
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC417
	.quad	OP_MMX
	.long	0
	.zero	4
	.quad	OP_EM
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC418
	.quad	OP_MMX
	.long	0
	.zero	4
	.quad	OP_EM
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC419
	.quad	OP_MMX
	.long	0
	.zero	4
	.quad	OP_EM
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC420
	.quad	OP_MMX
	.long	0
	.zero	4
	.quad	OP_EM
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.section	.rodata.str1.1
.LC421:
	.string	"%bx,%si"
.LC422:
	.string	"%bx,%di"
.LC423:
	.string	"%bp,%si"
.LC424:
	.string	"%bp,%di"
.LC425:
	.string	"%si"
.LC426:
	.string	"%di"
.LC427:
	.string	"%bp"
.LC428:
	.string	"%bx"
	.data
	.align 32
	.type	att_index16, @object
	.size	att_index16, 64
att_index16:
	.quad	.LC421
	.quad	.LC422
	.quad	.LC423
	.quad	.LC424
	.quad	.LC425
	.quad	.LC426
	.quad	.LC427
	.quad	.LC428
	.section	.rodata.str1.1
.LC429:
	.string	"%es"
.LC430:
	.string	"%cs"
.LC431:
	.string	"%ss"
.LC432:
	.string	"%ds"
.LC433:
	.string	"%fs"
.LC434:
	.string	"%gs"
.LC435:
	.string	"%?"
	.data
	.align 32
	.type	att_names_seg, @object
	.size	att_names_seg, 64
att_names_seg:
	.quad	.LC429
	.quad	.LC430
	.quad	.LC431
	.quad	.LC432
	.quad	.LC433
	.quad	.LC434
	.quad	.LC435
	.quad	.LC435
	.section	.rodata.str1.1
.LC436:
	.string	"%al"
.LC437:
	.string	"%cl"
.LC438:
	.string	"%dl"
.LC439:
	.string	"%bl"
.LC440:
	.string	"%spl"
.LC441:
	.string	"%bpl"
.LC442:
	.string	"%sil"
.LC443:
	.string	"%dil"
.LC444:
	.string	"%r8b"
.LC445:
	.string	"%r9b"
.LC446:
	.string	"%r10b"
.LC447:
	.string	"%r11b"
.LC448:
	.string	"%r12b"
.LC449:
	.string	"%r13b"
.LC450:
	.string	"%r14b"
.LC451:
	.string	"%r15b"
	.data
	.align 32
	.type	att_names8rex, @object
	.size	att_names8rex, 128
att_names8rex:
	.quad	.LC436
	.quad	.LC437
	.quad	.LC438
	.quad	.LC439
	.quad	.LC440
	.quad	.LC441
	.quad	.LC442
	.quad	.LC443
	.quad	.LC444
	.quad	.LC445
	.quad	.LC446
	.quad	.LC447
	.quad	.LC448
	.quad	.LC449
	.quad	.LC450
	.quad	.LC451
	.section	.rodata.str1.1
.LC452:
	.string	"%ah"
.LC453:
	.string	"%ch"
.LC454:
	.string	"%dh"
.LC455:
	.string	"%bh"
	.data
	.align 32
	.type	att_names8, @object
	.size	att_names8, 64
att_names8:
	.quad	.LC436
	.quad	.LC437
	.quad	.LC438
	.quad	.LC439
	.quad	.LC452
	.quad	.LC453
	.quad	.LC454
	.quad	.LC455
	.section	.rodata.str1.1
.LC456:
	.string	"%ax"
.LC457:
	.string	"%cx"
.LC458:
	.string	"%dx"
.LC459:
	.string	"%sp"
.LC460:
	.string	"%r8w"
.LC461:
	.string	"%r9w"
.LC462:
	.string	"%r10w"
.LC463:
	.string	"%r11w"
.LC464:
	.string	"%r12w"
.LC465:
	.string	"%r13w"
.LC466:
	.string	"%r14w"
.LC467:
	.string	"%r15w"
	.data
	.align 32
	.type	att_names16, @object
	.size	att_names16, 128
att_names16:
	.quad	.LC456
	.quad	.LC457
	.quad	.LC458
	.quad	.LC428
	.quad	.LC459
	.quad	.LC427
	.quad	.LC425
	.quad	.LC426
	.quad	.LC460
	.quad	.LC461
	.quad	.LC462
	.quad	.LC463
	.quad	.LC464
	.quad	.LC465
	.quad	.LC466
	.quad	.LC467
	.section	.rodata.str1.1
.LC468:
	.string	"%eax"
.LC469:
	.string	"%ecx"
.LC470:
	.string	"%edx"
.LC471:
	.string	"%ebx"
.LC472:
	.string	"%esp"
.LC473:
	.string	"%ebp"
.LC474:
	.string	"%esi"
.LC475:
	.string	"%edi"
.LC476:
	.string	"%r8d"
.LC477:
	.string	"%r9d"
.LC478:
	.string	"%r10d"
.LC479:
	.string	"%r11d"
.LC480:
	.string	"%r12d"
.LC481:
	.string	"%r13d"
.LC482:
	.string	"%r14d"
.LC483:
	.string	"%r15d"
	.data
	.align 32
	.type	att_names32, @object
	.size	att_names32, 128
att_names32:
	.quad	.LC468
	.quad	.LC469
	.quad	.LC470
	.quad	.LC471
	.quad	.LC472
	.quad	.LC473
	.quad	.LC474
	.quad	.LC475
	.quad	.LC476
	.quad	.LC477
	.quad	.LC478
	.quad	.LC479
	.quad	.LC480
	.quad	.LC481
	.quad	.LC482
	.quad	.LC483
	.section	.rodata.str1.1
.LC484:
	.string	"%rax"
.LC485:
	.string	"%rcx"
.LC486:
	.string	"%rdx"
.LC487:
	.string	"%rbx"
.LC488:
	.string	"%rsp"
.LC489:
	.string	"%rbp"
.LC490:
	.string	"%rsi"
.LC491:
	.string	"%rdi"
.LC492:
	.string	"%r8"
.LC493:
	.string	"%r9"
.LC494:
	.string	"%r10"
.LC495:
	.string	"%r11"
.LC496:
	.string	"%r12"
.LC497:
	.string	"%r13"
.LC498:
	.string	"%r14"
.LC499:
	.string	"%r15"
	.data
	.align 32
	.type	att_names64, @object
	.size	att_names64, 128
att_names64:
	.quad	.LC484
	.quad	.LC485
	.quad	.LC486
	.quad	.LC487
	.quad	.LC488
	.quad	.LC489
	.quad	.LC490
	.quad	.LC491
	.quad	.LC492
	.quad	.LC493
	.quad	.LC494
	.quad	.LC495
	.quad	.LC496
	.quad	.LC497
	.quad	.LC498
	.quad	.LC499
	.section	.rodata.str1.1
.LC500:
	.string	"bx+si"
.LC501:
	.string	"bx+di"
.LC502:
	.string	"bp+si"
.LC503:
	.string	"bp+di"
.LC504:
	.string	"si"
.LC505:
	.string	"di"
.LC506:
	.string	"bp"
.LC507:
	.string	"bx"
	.data
	.align 32
	.type	intel_index16, @object
	.size	intel_index16, 64
intel_index16:
	.quad	.LC500
	.quad	.LC501
	.quad	.LC502
	.quad	.LC503
	.quad	.LC504
	.quad	.LC505
	.quad	.LC506
	.quad	.LC507
	.section	.rodata.str1.1
.LC508:
	.string	"es"
.LC509:
	.string	"cs"
.LC510:
	.string	"ss"
.LC511:
	.string	"ds"
.LC512:
	.string	"fs"
.LC513:
	.string	"gs"
.LC514:
	.string	"?"
	.data
	.align 32
	.type	intel_names_seg, @object
	.size	intel_names_seg, 64
intel_names_seg:
	.quad	.LC508
	.quad	.LC509
	.quad	.LC510
	.quad	.LC511
	.quad	.LC512
	.quad	.LC513
	.quad	.LC514
	.quad	.LC514
	.section	.rodata.str1.1
.LC515:
	.string	"al"
.LC516:
	.string	"cl"
.LC517:
	.string	"dl"
.LC518:
	.string	"bl"
.LC519:
	.string	"spl"
.LC520:
	.string	"bpl"
.LC521:
	.string	"sil"
.LC522:
	.string	"dil"
.LC523:
	.string	"r8b"
.LC524:
	.string	"r9b"
.LC525:
	.string	"r10b"
.LC526:
	.string	"r11b"
.LC527:
	.string	"r12b"
.LC528:
	.string	"r13b"
.LC529:
	.string	"r14b"
.LC530:
	.string	"r15b"
	.data
	.align 32
	.type	intel_names8rex, @object
	.size	intel_names8rex, 128
intel_names8rex:
	.quad	.LC515
	.quad	.LC516
	.quad	.LC517
	.quad	.LC518
	.quad	.LC519
	.quad	.LC520
	.quad	.LC521
	.quad	.LC522
	.quad	.LC523
	.quad	.LC524
	.quad	.LC525
	.quad	.LC526
	.quad	.LC527
	.quad	.LC528
	.quad	.LC529
	.quad	.LC530
	.section	.rodata.str1.1
.LC531:
	.string	"ah"
.LC532:
	.string	"ch"
.LC533:
	.string	"dh"
.LC534:
	.string	"bh"
	.data
	.align 32
	.type	intel_names8, @object
	.size	intel_names8, 64
intel_names8:
	.quad	.LC515
	.quad	.LC516
	.quad	.LC517
	.quad	.LC518
	.quad	.LC531
	.quad	.LC532
	.quad	.LC533
	.quad	.LC534
	.section	.rodata.str1.1
.LC535:
	.string	"ax"
.LC536:
	.string	"cx"
.LC537:
	.string	"dx"
.LC538:
	.string	"sp"
.LC539:
	.string	"r8w"
.LC540:
	.string	"r9w"
.LC541:
	.string	"r10w"
.LC542:
	.string	"r11w"
.LC543:
	.string	"r12w"
.LC544:
	.string	"r13w"
.LC545:
	.string	"r14w"
.LC546:
	.string	"r15w"
	.data
	.align 32
	.type	intel_names16, @object
	.size	intel_names16, 128
intel_names16:
	.quad	.LC535
	.quad	.LC536
	.quad	.LC537
	.quad	.LC507
	.quad	.LC538
	.quad	.LC506
	.quad	.LC504
	.quad	.LC505
	.quad	.LC539
	.quad	.LC540
	.quad	.LC541
	.quad	.LC542
	.quad	.LC543
	.quad	.LC544
	.quad	.LC545
	.quad	.LC546
	.section	.rodata.str1.1
.LC547:
	.string	"eax"
.LC548:
	.string	"ecx"
.LC549:
	.string	"edx"
.LC550:
	.string	"ebx"
.LC551:
	.string	"esp"
.LC552:
	.string	"ebp"
.LC553:
	.string	"esi"
.LC554:
	.string	"edi"
.LC555:
	.string	"r8d"
.LC556:
	.string	"r9d"
.LC557:
	.string	"r10d"
.LC558:
	.string	"r11d"
.LC559:
	.string	"r12d"
.LC560:
	.string	"r13d"
.LC561:
	.string	"r14d"
.LC562:
	.string	"r15d"
	.data
	.align 32
	.type	intel_names32, @object
	.size	intel_names32, 128
intel_names32:
	.quad	.LC547
	.quad	.LC548
	.quad	.LC549
	.quad	.LC550
	.quad	.LC551
	.quad	.LC552
	.quad	.LC553
	.quad	.LC554
	.quad	.LC555
	.quad	.LC556
	.quad	.LC557
	.quad	.LC558
	.quad	.LC559
	.quad	.LC560
	.quad	.LC561
	.quad	.LC562
	.section	.rodata.str1.1
.LC563:
	.string	"rax"
.LC564:
	.string	"rcx"
.LC565:
	.string	"rdx"
.LC566:
	.string	"rbx"
.LC567:
	.string	"rsp"
.LC568:
	.string	"rbp"
.LC569:
	.string	"rsi"
.LC570:
	.string	"rdi"
.LC571:
	.string	"r8"
.LC572:
	.string	"r9"
.LC573:
	.string	"r10"
.LC574:
	.string	"r11"
.LC575:
	.string	"r12"
.LC576:
	.string	"r13"
.LC577:
	.string	"r14"
.LC578:
	.string	"r15"
	.data
	.align 32
	.type	intel_names64, @object
	.size	intel_names64, 128
intel_names64:
	.quad	.LC563
	.quad	.LC564
	.quad	.LC565
	.quad	.LC566
	.quad	.LC567
	.quad	.LC568
	.quad	.LC569
	.quad	.LC570
	.quad	.LC571
	.quad	.LC572
	.quad	.LC573
	.quad	.LC574
	.quad	.LC575
	.quad	.LC576
	.quad	.LC577
	.quad	.LC578
	.section	.rodata.str1.1
.LC579:
	.string	"pi2fw"
.LC580:
	.string	"pi2fd"
.LC581:
	.string	"pf2iw"
.LC582:
	.string	"pf2id"
.LC583:
	.string	"pfnacc"
.LC584:
	.string	"pfpnacc"
.LC585:
	.string	"pfcmpge"
.LC586:
	.string	"pfmin"
.LC587:
	.string	"pfrcp"
.LC588:
	.string	"pfrsqrt"
.LC589:
	.string	"pfsub"
.LC590:
	.string	"pfadd"
.LC591:
	.string	"pfcmpgt"
.LC592:
	.string	"pfmax"
.LC593:
	.string	"pfrcpit1"
.LC594:
	.string	"pfrsqit1"
.LC595:
	.string	"pfsubr"
.LC596:
	.string	"pfacc"
.LC597:
	.string	"pfcmpeq"
.LC598:
	.string	"pfmul"
.LC599:
	.string	"pfrcpit2"
.LC600:
	.string	"pfmulhrw"
.LC601:
	.string	"pswapd"
.LC602:
	.string	"pavgusb"
	.data
	.align 32
	.type	Suffix3DNow, @object
	.size	Suffix3DNow, 2048
Suffix3DNow:
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC579
	.quad	.LC580
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC581
	.quad	.LC582
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC583
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC584
	.quad	0
	.quad	.LC585
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC586
	.quad	0
	.quad	.LC587
	.quad	.LC588
	.quad	0
	.quad	0
	.quad	.LC589
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC590
	.quad	0
	.quad	.LC591
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC592
	.quad	0
	.quad	.LC593
	.quad	.LC594
	.quad	0
	.quad	0
	.quad	.LC595
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC596
	.quad	0
	.quad	.LC597
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC598
	.quad	0
	.quad	.LC599
	.quad	.LC600
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC601
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC602
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.section	.rodata.str1.1
.LC603:
	.string	"eq"
.LC604:
	.string	"lt"
.LC605:
	.string	"le"
.LC606:
	.string	"unord"
.LC607:
	.string	"neq"
.LC608:
	.string	"nlt"
.LC609:
	.string	"nle"
.LC610:
	.string	"ord"
	.data
	.align 32
	.type	simd_cmp_op, @object
	.size	simd_cmp_op, 64
simd_cmp_op:
	.quad	.LC603
	.quad	.LC604
	.quad	.LC605
	.quad	.LC606
	.quad	.LC607
	.quad	.LC608
	.quad	.LC609
	.quad	.LC610
	.section	.rodata.str1.1
.LC611:
	.string	"fnop"
.LC612:
	.string	"fchs"
.LC613:
	.string	"fabs"
.LC614:
	.string	"ftst"
.LC615:
	.string	"fxam"
.LC616:
	.string	"fld1"
.LC617:
	.string	"fldl2t"
.LC618:
	.string	"fldl2e"
.LC619:
	.string	"fldpi"
.LC620:
	.string	"fldlg2"
.LC621:
	.string	"fldln2"
.LC622:
	.string	"fldz"
.LC623:
	.string	"f2xm1"
.LC624:
	.string	"fyl2x"
.LC625:
	.string	"fptan"
.LC626:
	.string	"fpatan"
.LC627:
	.string	"fxtract"
.LC628:
	.string	"fprem1"
.LC629:
	.string	"fdecstp"
.LC630:
	.string	"fincstp"
.LC631:
	.string	"fprem"
.LC632:
	.string	"fyl2xp1"
.LC633:
	.string	"fsqrt"
.LC634:
	.string	"fsincos"
.LC635:
	.string	"frndint"
.LC636:
	.string	"fscale"
.LC637:
	.string	"fsin"
.LC638:
	.string	"fcos"
.LC639:
	.string	"fucompp"
.LC640:
	.string	"feni(287 only)"
.LC641:
	.string	"fdisi(287 only)"
.LC642:
	.string	"fNclex"
.LC643:
	.string	"fNinit"
.LC644:
	.string	"fNsetpm(287 only)"
.LC645:
	.string	"fcompp"
.LC646:
	.string	"fNstsw"
	.data
	.align 32
	.type	fgrps, @object
	.size	fgrps, 576
fgrps:
	.quad	.LC611
	.quad	.LC41
	.quad	.LC41
	.quad	.LC41
	.quad	.LC41
	.quad	.LC41
	.quad	.LC41
	.quad	.LC41
	.quad	.LC612
	.quad	.LC613
	.quad	.LC41
	.quad	.LC41
	.quad	.LC614
	.quad	.LC615
	.quad	.LC41
	.quad	.LC41
	.quad	.LC616
	.quad	.LC617
	.quad	.LC618
	.quad	.LC619
	.quad	.LC620
	.quad	.LC621
	.quad	.LC622
	.quad	.LC41
	.quad	.LC623
	.quad	.LC624
	.quad	.LC625
	.quad	.LC626
	.quad	.LC627
	.quad	.LC628
	.quad	.LC629
	.quad	.LC630
	.quad	.LC631
	.quad	.LC632
	.quad	.LC633
	.quad	.LC634
	.quad	.LC635
	.quad	.LC636
	.quad	.LC637
	.quad	.LC638
	.quad	.LC41
	.quad	.LC639
	.quad	.LC41
	.quad	.LC41
	.quad	.LC41
	.quad	.LC41
	.quad	.LC41
	.quad	.LC41
	.quad	.LC640
	.quad	.LC641
	.quad	.LC642
	.quad	.LC643
	.quad	.LC644
	.quad	.LC41
	.quad	.LC41
	.quad	.LC41
	.quad	.LC41
	.quad	.LC645
	.quad	.LC41
	.quad	.LC41
	.quad	.LC41
	.quad	.LC41
	.quad	.LC41
	.quad	.LC41
	.quad	.LC646
	.quad	.LC41
	.quad	.LC41
	.quad	.LC41
	.quad	.LC41
	.quad	.LC41
	.quad	.LC41
	.quad	.LC41
	.section	.rodata.str1.1
.LC647:
	.string	"fadd"
.LC648:
	.string	"fmul"
.LC649:
	.string	"fcom"
.LC650:
	.string	"fcomp"
.LC651:
	.string	"fsub"
.LC652:
	.string	"fsubr"
.LC653:
	.string	"fdiv"
.LC654:
	.string	"fdivr"
.LC655:
	.string	"fld"
.LC656:
	.string	"fxch"
.LC657:
	.string	"fcmovb"
.LC658:
	.string	"fcmove"
.LC659:
	.string	"fcmovbe"
.LC660:
	.string	"fcmovu"
.LC661:
	.string	"fcmovnb"
.LC662:
	.string	"fcmovne"
.LC663:
	.string	"fcmovnbe"
.LC664:
	.string	"fcmovnu"
.LC665:
	.string	"fucomi"
.LC666:
	.string	"fcomi"
.LC667:
	.string	"ffree"
.LC668:
	.string	"fst"
.LC669:
	.string	"fstp"
.LC670:
	.string	"fucom"
.LC671:
	.string	"fucomp"
.LC672:
	.string	"faddp"
.LC673:
	.string	"fmulp"
.LC674:
	.string	"fsubp"
.LC675:
	.string	"fsubrp"
.LC676:
	.string	"fdivp"
.LC677:
	.string	"fdivrp"
.LC678:
	.string	"ffreep"
.LC679:
	.string	"fucomip"
.LC680:
	.string	"fcomip"
	.section	.rodata
	.align 32
	.type	float_reg, @object
	.size	float_reg, 3584
float_reg:
	.quad	.LC647
	.quad	OP_ST
	.long	0
	.zero	4
	.quad	OP_STi
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC648
	.quad	OP_ST
	.long	0
	.zero	4
	.quad	OP_STi
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC649
	.quad	OP_STi
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC650
	.quad	OP_STi
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC651
	.quad	OP_ST
	.long	0
	.zero	4
	.quad	OP_STi
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC652
	.quad	OP_ST
	.long	0
	.zero	4
	.quad	OP_STi
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC653
	.quad	OP_ST
	.long	0
	.zero	4
	.quad	OP_STi
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC654
	.quad	OP_ST
	.long	0
	.zero	4
	.quad	OP_STi
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC655
	.quad	OP_STi
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC656
	.quad	OP_STi
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	2
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	3
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	4
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC657
	.quad	OP_ST
	.long	0
	.zero	4
	.quad	OP_STi
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC658
	.quad	OP_ST
	.long	0
	.zero	4
	.quad	OP_STi
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC659
	.quad	OP_ST
	.long	0
	.zero	4
	.quad	OP_STi
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC660
	.quad	OP_ST
	.long	0
	.zero	4
	.quad	OP_STi
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	5
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC661
	.quad	OP_ST
	.long	0
	.zero	4
	.quad	OP_STi
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC662
	.quad	OP_ST
	.long	0
	.zero	4
	.quad	OP_STi
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC663
	.quad	OP_ST
	.long	0
	.zero	4
	.quad	OP_STi
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC664
	.quad	OP_ST
	.long	0
	.zero	4
	.quad	OP_STi
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	6
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC665
	.quad	OP_ST
	.long	0
	.zero	4
	.quad	OP_STi
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC666
	.quad	OP_ST
	.long	0
	.zero	4
	.quad	OP_STi
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC647
	.quad	OP_STi
	.long	0
	.zero	4
	.quad	OP_ST
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC648
	.quad	OP_STi
	.long	0
	.zero	4
	.quad	OP_ST
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC651
	.quad	OP_STi
	.long	0
	.zero	4
	.quad	OP_ST
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC652
	.quad	OP_STi
	.long	0
	.zero	4
	.quad	OP_ST
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC653
	.quad	OP_STi
	.long	0
	.zero	4
	.quad	OP_ST
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC654
	.quad	OP_STi
	.long	0
	.zero	4
	.quad	OP_ST
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC667
	.quad	OP_STi
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC668
	.quad	OP_STi
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC669
	.quad	OP_STi
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC670
	.quad	OP_STi
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC671
	.quad	OP_STi
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC672
	.quad	OP_STi
	.long	0
	.zero	4
	.quad	OP_ST
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC673
	.quad	OP_STi
	.long	0
	.zero	4
	.quad	OP_ST
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	7
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC674
	.quad	OP_STi
	.long	0
	.zero	4
	.quad	OP_ST
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC675
	.quad	OP_STi
	.long	0
	.zero	4
	.quad	OP_ST
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC676
	.quad	OP_STi
	.long	0
	.zero	4
	.quad	OP_ST
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC677
	.quad	OP_STi
	.long	0
	.zero	4
	.quad	OP_ST
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC678
	.quad	OP_STi
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	8
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC679
	.quad	OP_ST
	.long	0
	.zero	4
	.quad	OP_STi
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC680
	.quad	OP_ST
	.long	0
	.zero	4
	.quad	OP_STi
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC41
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.section	.rodata.str1.1
.LC681:
	.string	"fadd{s||s|}"
.LC682:
	.string	"fmul{s||s|}"
.LC683:
	.string	"fcom{s||s|}"
.LC684:
	.string	"fcomp{s||s|}"
.LC685:
	.string	"fsub{s||s|}"
.LC686:
	.string	"fsubr{s||s|}"
.LC687:
	.string	"fdiv{s||s|}"
.LC688:
	.string	"fdivr{s||s|}"
.LC689:
	.string	"fld{s||s|}"
.LC690:
	.string	"fst{s||s|}"
.LC691:
	.string	"fstp{s||s|}"
.LC692:
	.string	"fldenv"
.LC693:
	.string	"fldcw"
.LC694:
	.string	"fNstenv"
.LC695:
	.string	"fNstcw"
.LC696:
	.string	"fiadd{l||l|}"
.LC697:
	.string	"fimul{l||l|}"
.LC698:
	.string	"ficom{l||l|}"
.LC699:
	.string	"ficomp{l||l|}"
.LC700:
	.string	"fisub{l||l|}"
.LC701:
	.string	"fisubr{l||l|}"
.LC702:
	.string	"fidiv{l||l|}"
.LC703:
	.string	"fidivr{l||l|}"
.LC704:
	.string	"fild{l||l|}"
.LC705:
	.string	"fist{l||l|}"
.LC706:
	.string	"fistp{l||l|}"
.LC707:
	.string	"fld{t||t|}"
.LC708:
	.string	"fstp{t||t|}"
.LC709:
	.string	"fadd{l||l|}"
.LC710:
	.string	"fmul{l||l|}"
.LC711:
	.string	"fcom{l||l|}"
.LC712:
	.string	"fcomp{l||l|}"
.LC713:
	.string	"fsub{l||l|}"
.LC714:
	.string	"fsubr{l||l|}"
.LC715:
	.string	"fdiv{l||l|}"
.LC716:
	.string	"fdivr{l||l|}"
.LC717:
	.string	"fld{l||l|}"
.LC718:
	.string	"fst{l||l|}"
.LC719:
	.string	"fstp{l||l|}"
.LC720:
	.string	"frstor"
.LC721:
	.string	"fNsave"
.LC722:
	.string	"fiadd"
.LC723:
	.string	"fimul"
.LC724:
	.string	"ficom"
.LC725:
	.string	"ficomp"
.LC726:
	.string	"fisub"
.LC727:
	.string	"fisubr"
.LC728:
	.string	"fidiv"
.LC729:
	.string	"fidivr"
.LC730:
	.string	"fild"
.LC731:
	.string	"fist"
.LC732:
	.string	"fistp"
.LC733:
	.string	"fbld"
.LC734:
	.string	"fild{ll||ll|}"
.LC735:
	.string	"fbstp"
.LC736:
	.string	"fistpll"
	.data
	.align 32
	.type	float_mem, @object
	.size	float_mem, 512
float_mem:
	.quad	.LC681
	.quad	.LC682
	.quad	.LC683
	.quad	.LC684
	.quad	.LC685
	.quad	.LC686
	.quad	.LC687
	.quad	.LC688
	.quad	.LC689
	.quad	.LC41
	.quad	.LC690
	.quad	.LC691
	.quad	.LC692
	.quad	.LC693
	.quad	.LC694
	.quad	.LC695
	.quad	.LC696
	.quad	.LC697
	.quad	.LC698
	.quad	.LC699
	.quad	.LC700
	.quad	.LC701
	.quad	.LC702
	.quad	.LC703
	.quad	.LC704
	.quad	.LC41
	.quad	.LC705
	.quad	.LC706
	.quad	.LC41
	.quad	.LC707
	.quad	.LC41
	.quad	.LC708
	.quad	.LC709
	.quad	.LC710
	.quad	.LC711
	.quad	.LC712
	.quad	.LC713
	.quad	.LC714
	.quad	.LC715
	.quad	.LC716
	.quad	.LC717
	.quad	.LC41
	.quad	.LC718
	.quad	.LC719
	.quad	.LC720
	.quad	.LC41
	.quad	.LC721
	.quad	.LC646
	.quad	.LC722
	.quad	.LC723
	.quad	.LC724
	.quad	.LC725
	.quad	.LC726
	.quad	.LC727
	.quad	.LC728
	.quad	.LC729
	.quad	.LC730
	.quad	.LC41
	.quad	.LC731
	.quad	.LC732
	.quad	.LC733
	.quad	.LC734
	.quad	.LC735
	.quad	.LC736
	.text
	.p2align 4,,15
	.type	fetch_data, @function
fetch_data:
.LFB37:
	.file 1 "/home/remco/Projects/Argos/src/i386-dis.c"
	.loc 1 166 0
	movq	%rbp, -24(%rsp)
.LCFI0:
	movq	%r12, -16(%rsp)
.LCFI1:
	movq	%rsi, %r12
	movq	%r13, -8(%rsp)
.LCFI2:
	movq	%rbx, -32(%rsp)
.LCFI3:
	subq	$40, %rsp
.LCFI4:
	.loc 1 168 0
	movq	72(%rdi), %rbx
	.loc 1 166 0
	movq	%rdi, %rbp
	.loc 1 171 0
	movl	%r12d, %edx
	movq	%rdi, %rcx
	.loc 1 169 0
	movq	(%rbx), %rsi
	movq	%rsi, %rax
	.loc 1 171 0
	subl	%esi, %edx
	.loc 1 169 0
	subq	%rbx, %rax
	addq	32(%rbx), %rax
	leaq	-8(%rax), %r13
	.loc 1 171 0
	movq	%r13, %rdi
	call	*80(%rbp)
	.loc 1 175 0
	testl	%eax, %eax
	.loc 1 171 0
	movl	%eax, %ecx
	.loc 1 175 0
	jne	.L6
	.loc 1 186 0
	movq	%r12, (%rbx)
	.loc 1 188 0
	movq	8(%rsp), %rbx
	movl	$1, %eax
	movq	16(%rsp), %rbp
	movq	24(%rsp), %r12
	movq	32(%rsp), %r13
	addq	$40, %rsp
	ret
.L6:
	.loc 1 181 0
	leaq	8(%rbx), %rax
	cmpq	%rax, (%rbx)
	je	.L7
.L3:
	.loc 1 183 0
	leaq	48(%rbx), %rdi
	movl	$1, %esi
	call	longjmp
.L7:
	.loc 1 182 0
	movq	%rbp, %rdx
	movq	%r13, %rsi
	movl	%ecx, %edi
	call	*88(%rbp)
	jmp	.L3
.LFE37:
	.size	fetch_data, .-fetch_data
	.section	.rodata.str1.1
.LC753:
	.string	"repz"
.LC754:
	.string	"repnz"
.LC755:
	.string	"lock"
.LC761:
	.string	"fwait"
.LC758:
	.string	"addr32"
.LC759:
	.string	"addr64"
.LC756:
	.string	"data16"
.LC757:
	.string	"data32"
.LC752:
	.string	"rex64XYZ"
.LC751:
	.string	"rex64XY"
.LC750:
	.string	"rex64XZ"
.LC749:
	.string	"rex64X"
.LC748:
	.string	"rex64YZ"
.LC747:
	.string	"rex64Y"
.LC746:
	.string	"rex64Z"
.LC745:
	.string	"rex64"
.LC744:
	.string	"rexXYZ"
.LC743:
	.string	"rexXY"
.LC742:
	.string	"rexXZ"
.LC741:
	.string	"rexX"
.LC740:
	.string	"rexYZ"
.LC739:
	.string	"rexY"
.LC738:
	.string	"rexZ"
.LC737:
	.string	"rex"
.LC760:
	.string	"addr16"
	.text
	.p2align 4,,15
	.type	prefix_name, @function
prefix_name:
.LFB39:
	.loc 1 1752 0
	.loc 1 1753 0
	leal	-38(%rdi), %eax
	cmpl	$205, %eax
	ja	.L46
	mov	%eax, %eax
	jmp	*.L47(,%rax,8)
	.section	.rodata
	.align 8
	.align 4
.L47:
	.quad	.L32
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L29
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L30
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L31
	.quad	.L46
	.quad	.L10
	.quad	.L11
	.quad	.L12
	.quad	.L13
	.quad	.L14
	.quad	.L15
	.quad	.L16
	.quad	.L17
	.quad	.L18
	.quad	.L19
	.quad	.L20
	.quad	.L21
	.quad	.L22
	.quad	.L23
	.quad	.L24
	.quad	.L25
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L33
	.quad	.L34
	.quad	.L35
	.quad	.L38
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L45
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L46
	.quad	.L28
	.quad	.L46
	.quad	.L27
	.quad	.L26
	.text
	.p2align 4,,7
.L46:
	.loc 1 1816 0
	xorl	%edx, %edx
	.p2align 4,,7
.L8:
	.loc 1 1818 0
	movq	%rdx, %rax
	ret
.L32:
	.loc 1 1801 0
	movl	$.LC508, %edx
	jmp	.L8
.L26:
	.loc 1 1789 0
	movl	$.LC753, %edx
	jmp	.L8
.L27:
	.loc 1 1791 0
	movl	$.LC754, %edx
	jmp	.L8
.L28:
	.loc 1 1793 0
	movl	$.LC755, %edx
	jmp	.L8
.L45:
	.loc 1 1814 0
	movl	$.LC761, %edx
	jmp	.L8
.L38:
	.loc 1 1809 0
	movl	mode_64bit(%rip), %eax
	testl	%eax, %eax
	je	.L39
	.loc 1 1810 0
	movl	$.LC758, %edx
	andl	$2, %esi
	movl	$.LC759, %eax
	cmove	%rax, %rdx
	jmp	.L8
.L35:
	.loc 1 1807 0
	movl	$.LC756, %edx
	andl	$1, %esi
	movl	$.LC757, %eax
	.loc 1 1810 0
	cmove	%rax, %rdx
	jmp	.L8
.L34:
	.loc 1 1805 0
	movl	$.LC513, %edx
	jmp	.L8
.L33:
	.loc 1 1803 0
	movl	$.LC512, %edx
	jmp	.L8
.L25:
	.loc 1 1787 0
	movl	$.LC752, %edx
	jmp	.L8
.L24:
	.loc 1 1785 0
	movl	$.LC751, %edx
	jmp	.L8
.L23:
	.loc 1 1783 0
	movl	$.LC750, %edx
	jmp	.L8
.L22:
	.loc 1 1781 0
	movl	$.LC749, %edx
	jmp	.L8
.L21:
	.loc 1 1779 0
	movl	$.LC748, %edx
	jmp	.L8
.L20:
	.loc 1 1777 0
	movl	$.LC747, %edx
	jmp	.L8
.L19:
	.loc 1 1775 0
	movl	$.LC746, %edx
	jmp	.L8
.L18:
	.loc 1 1773 0
	movl	$.LC745, %edx
	jmp	.L8
.L17:
	.loc 1 1771 0
	movl	$.LC744, %edx
	jmp	.L8
.L16:
	.loc 1 1769 0
	movl	$.LC743, %edx
	jmp	.L8
.L15:
	.loc 1 1767 0
	movl	$.LC742, %edx
	jmp	.L8
.L14:
	.loc 1 1765 0
	movl	$.LC741, %edx
	jmp	.L8
.L13:
	.loc 1 1763 0
	movl	$.LC740, %edx
	jmp	.L8
.L12:
	.loc 1 1761 0
	movl	$.LC739, %edx
	jmp	.L8
.L11:
	.loc 1 1759 0
	movl	$.LC738, %edx
	jmp	.L8
.L10:
	.loc 1 1757 0
	movl	$.LC737, %edx
	jmp	.L8
.L31:
	.loc 1 1799 0
	movl	$.LC511, %edx
	jmp	.L8
.L30:
	.loc 1 1797 0
	movl	$.LC510, %edx
	jmp	.L8
.L29:
	.loc 1 1795 0
	movl	$.LC509, %edx
	jmp	.L8
.L39:
	.loc 1 1812 0
	andl	$2, %esi
	movl	$.LC760, %eax
	jne	.L44
	movl	$.LC758, %eax
.L44:
	movq	%rax, %rdx
	jmp	.L8
.LFE39:
	.size	prefix_name, .-prefix_name
	.p2align 4,,15
	.type	putop, @function
putop:
.LFB45:
	.loc 1 2552 0
	subq	$8, %rsp
.LCFI5:
	.loc 1 2556 0
	movzbl	(%rdi), %eax
	testb	%al, %al
	je	.L187
	movl	%eax, %edx
	.p2align 4,,7
.L185:
	.loc 1 2558 0
	movsbl	%dl,%eax
	subl	$65, %eax
	cmpl	$60, %eax
	ja	.L54
	mov	%eax, %eax
	jmp	*.L184(,%rax,8)
	.section	.rodata
	.align 8
	.align 4
.L184:
	.quad	.L73
	.quad	.L77
	.quad	.L54
	.quad	.L54
	.quad	.L80
	.quad	.L86
	.quad	.L54
	.quad	.L96
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L101
	.quad	.L54
	.quad	.L104
	.quad	.L107
	.quad	.L194
	.quad	.L195
	.quad	.L141
	.quad	.L156
	.quad	.L113
	.quad	.L127
	.quad	.L54
	.quad	.L173
	.quad	.L163
	.quad	.L166
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L54
	.quad	.L55
	.quad	.L67
	.quad	.L52
	.text
	.p2align 4,,7
.L54:
	.loc 1 2561 0
	movq	obufp(%rip), %rax
	movb	%dl, (%rax)
.L215:
	.loc 1 2784 0
	incq	obufp(%rip)
.L52:
	.loc 1 2556 0
	incq	%rdi
	movzbl	(%rdi), %edx
	testb	%dl, %dl
	jne	.L185
.L187:
	.loc 1 2819 0
	movq	obufp(%rip), %rax
	movb	$0, (%rax)
	.loc 1 2820 0
	xorl	%eax, %eax
	.loc 1 2821 0
	addq	$8, %rsp
	ret
	.p2align 4,,7
.L67:
	.loc 1 2590 0
	incq	%rdi
	movzbl	(%rdi), %edx
	cmpb	$125, %dl
	je	.L52
	.loc 1 2589 0
	testb	%dl, %dl
	jne	.L67
.L217:
	.loc 1 2590 0
	call	abort
.L55:
	.loc 1 2564 0
	xorl	%ecx, %ecx
	.loc 1 2566 0
	cmpb	$0, intel_syntax(%rip)
	movl	$1, %eax
	.loc 1 2568 0
	movl	mode_64bit(%rip), %r11d
	.loc 1 2566 0
	cmovne	%eax, %ecx
	.loc 1 2568 0
	testl	%r11d, %r11d
	leal	2(%rcx), %eax
	cmovne	%eax, %ecx
	.loc 1 2583 0
	testl	%ecx, %ecx
.L201:
	jne	.L202
	jmp	.L52
	.p2align 4,,7
.L226:
	.loc 1 2573 0
	cmpb	$125, %dl
	je	.L225
	.loc 1 2580 0
	testb	%dl, %dl
	.p2align 4,,7
	je	.L217
.L202:
	.loc 1 2581 0
	incq	%rdi
	movzbl	(%rdi), %edx
	cmpb	$124, %dl
	jne	.L226
	.loc 1 2583 0
	decl	%ecx
	.p2align 4,,2
	jmp	.L201
.L77:
	.loc 1 2602 0
	cmpb	$0, intel_syntax(%rip)
	jne	.L52
.L221:
	.loc 1 2604 0
	testb	$4, %sil
	.p2align 4,,3
	je	.L52
.L218:
	.loc 1 2605 0
	movq	obufp(%rip), %rax
	movb	$98, (%rax)
	jmp	.L215
.L73:
	.loc 1 2596 0
	cmpb	$0, intel_syntax(%rip)
	jne	.L52
	.loc 1 2598 0
	cmpl	$3, mod(%rip)
	jne	.L218
	jmp	.L221
.L80:
	.loc 1 2608 0
	movl	mode_64bit(%rip), %r10d
	testl	%r10d, %r10d
	je	.L81
	.loc 1 2610 0
	testb	$2, %sil
	.p2align 4,,2
	jne	.L227
.L203:
	.loc 1 2617 0
	movq	obufp(%rip), %rax
	movb	$101, (%rax)
.L204:
	incq	obufp(%rip)
.L220:
	.loc 1 2629 0
	movl	prefixes(%rip), %eax
	andl	$1024, %eax
	jmp	.L216
.L86:
	.loc 1 2621 0
	cmpb	$0, intel_syntax(%rip)
	jne	.L52
	.loc 1 2623 0
	testb	$4, prefixes+1(%rip)
	je	.L228
.L89:
	.loc 1 2625 0
	testb	$2, %sil
	je	.L90
	.loc 1 2626 0
	cmpl	$1, mode_64bit(%rip)
	movq	obufp(%rip), %rdx
	leaq	1(%rdx), %rcx
	sbbl	%eax, %eax
	andl	$-5, %eax
	movq	%rcx, obufp(%rip)
	addl	$113, %eax
	.loc 1 2628 0
	movb	%al, (%rdx)
	jmp	.L220
.L96:
	.loc 1 2633 0
	cmpb	$0, intel_syntax(%rip)
	jne	.L52
	.loc 1 2635 0
	movl	prefixes(%rip), %ecx
	andl	$40, %ecx
	cmpl	$8, %ecx
	sete	%dl
	cmpl	$32, %ecx
	sete	%al
	orl	%edx, %eax
	testb	$1, %al
	je	.L52
	.loc 1 2639 0
	movq	obufp(%rip), %rax
	.loc 1 2638 0
	orl	%ecx, used_prefixes(%rip)
	.loc 1 2639 0
	movb	$44, (%rax)
	movq	obufp(%rip), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, obufp(%rip)
	.loc 1 2640 0
	movb	$112, 1(%rax)
	movq	obufp(%rip), %rax
	.loc 1 2641 0
	testb	$32, prefixes(%rip)
	.loc 1 2640 0
	leaq	1(%rax), %rcx
	movq	%rcx, obufp(%rip)
	.loc 1 2641 0
	je	.L99
	.loc 1 2642 0
	movb	$116, 1(%rax)
	jmp	.L215
.L101:
	.loc 1 2648 0
	cmpb	$0, intel_syntax(%rip)
	jne	.L52
	.loc 1 2650 0
	testb	$4, %sil
	.p2align 4,,2
	je	.L52
	.loc 1 2651 0
	movq	obufp(%rip), %rax
	movb	$108, (%rax)
	jmp	.L215
.L104:
	.loc 1 2654 0
	testb	$8, prefixes+1(%rip)
	jne	.L105
	.loc 1 2655 0
	movq	obufp(%rip), %rax
	movb	$110, (%rax)
	jmp	.L215
.L107:
	.loc 1 2660 0
	testb	$8, rex(%rip)
	movl	rex_used(%rip), %eax
	je	.L111
	orl	$72, %eax
	movl	%eax, rex_used(%rip)
	.loc 1 2662 0
	movq	obufp(%rip), %rax
	movb	$111, (%rax)
	jmp	.L215
.L194:
	.loc 1 2676 0
	cmpb	$0, intel_syntax(%rip)
	jne	.L52
.L197:
	.loc 1 2678 0
	testb	$2, prefixes+1(%rip)
	je	.L229
	movl	rex(%rip), %edx
.L119:
	.loc 1 2682 0
	andl	$8, %edx
	movl	rex_used(%rip), %eax
	je	.L223
	orl	$72, %eax
	movl	%eax, rex_used(%rip)
.L214:
	.loc 1 2784 0
	movq	obufp(%rip), %rax
	movb	$113, (%rax)
	jmp	.L215
.L195:
	.loc 1 2705 0
	cmpb	$0, intel_syntax(%rip)
	jne	.L52
.L198:
	.loc 1 2707 0
	movl	rex_used(%rip), %eax
	movl	rex(%rip), %ecx
	movl	%eax, %edx
	orl	$72, %edx
	andl	$8, %ecx
	cmovne	%edx, %eax
	.loc 1 2708 0
	cmpl	$3, mod(%rip)
	.loc 1 2707 0
	movl	%eax, rex_used(%rip)
	.loc 1 2708 0
	je	.L230
.L136:
	.loc 1 2710 0
	testl	%ecx, %ecx
.L224:
	.loc 1 2759 0
	jne	.L214
.L223:
	.loc 1 2763 0
	testb	$1, %sil
	je	.L161
	.loc 1 2764 0
	movq	obufp(%rip), %rax
	movb	$108, (%rax)
	jmp	.L210
.L141:
	.loc 1 2723 0
	movl	rex_used(%rip), %eax
	movl	rex(%rip), %ecx
	movl	%eax, %edx
	orl	$72, %edx
	andl	$8, %ecx
	cmovne	%edx, %eax
	.loc 1 2724 0
	cmpb	$0, intel_syntax(%rip)
	.loc 1 2723 0
	movl	%eax, rex_used(%rip)
	.loc 1 2724 0
	je	.L145
	.loc 1 2726 0
	testl	%ecx, %ecx
	jne	.L231
	.loc 1 2731 0
	testb	$1, %sil
	je	.L148
	.loc 1 2733 0
	movq	obufp(%rip), %rax
	movb	$100, (%rax)
	movq	obufp(%rip), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, obufp(%rip)
	.loc 1 2734 0
	movb	$113, 1(%rax)
	jmp	.L208
.L156:
	.loc 1 2755 0
	cmpb	$0, intel_syntax(%rip)
	jne	.L52
	.loc 1 2757 0
	testb	$4, %sil
	je	.L52
	.loc 1 2759 0
	testb	$8, rex(%rip)
	jmp	.L224
.L113:
	.loc 1 2667 0
	cmpb	$0, intel_syntax(%rip)
	jne	.L52
	.loc 1 2669 0
	movl	mode_64bit(%rip), %r9d
	testl	%r9d, %r9d
	je	.L197
	jmp	.L214
.L127:
	.loc 1 2696 0
	cmpb	$0, intel_syntax(%rip)
	jne	.L52
	.loc 1 2698 0
	movl	mode_64bit(%rip), %r8d
	testl	%r8d, %r8d
	je	.L198
	jmp	.L214
.L173:
	.loc 1 2791 0
	movl	rex(%rip), %ecx
	.loc 1 2790 0
	orl	$64, rex_used(%rip)
	.loc 1 2791 0
	testl	%ecx, %ecx
	je	.L175
	.loc 1 2792 0
	movq	obufp(%rip), %rax
	movb	$108, (%rax)
.L211:
	.loc 1 2796 0
	movq	obufp(%rip), %rcx
	incq	%rcx
	.loc 1 2797 0
	cmpb	$0, intel_syntax(%rip)
	.loc 1 2796 0
	movq	%rcx, obufp(%rip)
	.loc 1 2797 0
	je	.L179
	.loc 1 2799 0
	movl	rex(%rip), %edx
	testl	%edx, %edx
	jne	.L232
.L180:
	.loc 1 2804 0
	testb	$1, %sil
	je	.L181
	.loc 1 2806 0
	movb	$100, (%rcx)
	movq	obufp(%rip), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, obufp(%rip)
	.loc 1 2807 0
	movb	$101, 1(%rax)
.L212:
	.loc 1 2811 0
	incq	obufp(%rip)
.L179:
	.loc 1 2814 0
	cmpl	$0, rex(%rip)
.L219:
	jne	.L52
	jmp	.L213
.L163:
	.loc 1 2772 0
	testb	$2, prefixes+1(%rip)
	je	.L164
	.loc 1 2773 0
	movq	obufp(%rip), %rax
	movb	$100, (%rax)
.L210:
	.loc 1 2775 0
	incq	obufp(%rip)
.L213:
	.loc 1 2815 0
	movl	prefixes(%rip), %eax
	andl	$512, %eax
.L216:
	orl	%eax, used_prefixes(%rip)
	jmp	.L52
.L166:
	.loc 1 2779 0
	cmpb	$0, intel_syntax(%rip)
	jne	.L52
	.loc 1 2781 0
	testb	$8, rex(%rip)
	je	.L52
	.loc 1 2783 0
	orl	$72, rex_used(%rip)
	jmp	.L214
.L111:
	.loc 1 2664 0
	movq	obufp(%rip), %rax
	movb	$100, (%rax)
	jmp	.L215
.L164:
	.loc 1 2775 0
	movq	obufp(%rip), %rax
	movb	$115, (%rax)
	jmp	.L210
.L145:
	.loc 1 2744 0
	testl	%ecx, %ecx
	jne	.L233
	.loc 1 2746 0
	testb	$1, %sil
	je	.L153
	.loc 1 2747 0
	movq	obufp(%rip), %rax
	movb	$108, (%rax)
.L208:
	.loc 1 2749 0
	incq	obufp(%rip)
	.loc 1 2751 0
	testb	$8, rex(%rip)
	jmp	.L219
.L175:
	.loc 1 2793 0
	testb	$1, %sil
	je	.L177
	.loc 1 2794 0
	movq	obufp(%rip), %rax
	movb	$119, (%rax)
	jmp	.L211
.L105:
	.loc 1 2657 0
	orl	$2048, used_prefixes(%rip)
	jmp	.L52
.L81:
	.loc 1 2616 0
	testb	$2, %sil
	je	.L220
	.p2align 4,,4
	jmp	.L203
.L161:
	.loc 1 2766 0
	movq	obufp(%rip), %rax
	movb	$119, (%rax)
	.p2align 4,,2
	jmp	.L210
.L229:
	.loc 1 2678 0
	movl	rex(%rip), %edx
	testb	$8, %dl
	jne	.L119
	testb	$4, %sil
	je	.L52
	.p2align 4,,2
	jmp	.L119
.L228:
	.loc 1 2623 0
	testb	$4, %sil
	.p2align 4,,7
	je	.L52
	.p2align 4,,9
	jmp	.L89
.L232:
	.loc 1 2801 0
	movb	$113, (%rcx)
	movq	obufp(%rip), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, obufp(%rip)
	.loc 1 2802 0
	movb	$101, 1(%rax)
	movq	obufp(%rip), %rcx
	incq	%rcx
	movq	%rcx, obufp(%rip)
	jmp	.L180
.L227:
	.loc 1 2611 0
	movq	obufp(%rip), %rax
	movb	$114, (%rax)
	jmp	.L204
.L233:
	.loc 1 2745 0
	movq	obufp(%rip), %rax
	movb	$113, (%rax)
	jmp	.L208
.L177:
	.loc 1 2796 0
	movq	obufp(%rip), %rax
	movb	$98, (%rax)
	jmp	.L211
.L231:
	.loc 1 2728 0
	movq	obufp(%rip), %rax
	movb	$113, (%rax)
	movq	obufp(%rip), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, obufp(%rip)
	.loc 1 2729 0
	movb	$116, 1(%rax)
	jmp	.L208
.L230:
	.loc 1 2708 0
	testb	$4, %sil
	je	.L52
	jmp	.L136
.L225:
	.loc 1 2576 0
	movl	$1684103720, obuf(%rip)
	movw	$41, obuf+4(%rip)
	.loc 1 2578 0
	movl	$1, %eax
	.loc 1 2577 0
	movq	$obuf+5, obufp(%rip)
	.loc 1 2821 0
	addq	$8, %rsp
	ret
.L181:
	.loc 1 2811 0
	movb	$119, (%rcx)
	jmp	.L212
.L90:
	.loc 1 2628 0
	cmpl	$1, mode_64bit(%rip)
	movq	obufp(%rip), %rdx
	leaq	1(%rdx), %rcx
	sbbl	%eax, %eax
	andl	$11, %eax
	movq	%rcx, obufp(%rip)
	addl	$108, %eax
	movb	%al, (%rdx)
	jmp	.L220
.L153:
	.loc 1 2749 0
	movq	obufp(%rip), %rax
	movb	$119, (%rax)
	jmp	.L208
.L99:
	.loc 1 2644 0
	movb	$110, 1(%rax)
	jmp	.L215
.L148:
	.loc 1 2738 0
	movq	obufp(%rip), %rax
	movb	$119, (%rax)
	movq	obufp(%rip), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, obufp(%rip)
	.loc 1 2739 0
	movb	$100, 1(%rax)
	jmp	.L208
.LFE45:
	.size	putop, .-putop
	.p2align 4,,15
	.type	oappend, @function
oappend:
.LFB46:
	.loc 1 2826 0
	pushq	%rbx
.LCFI6:
	.loc 1 2827 0
	movq	%rdi, %rsi
	.loc 1 2826 0
	movq	%rdi, %rbx
	.loc 1 2827 0
	movq	obufp(%rip), %rdi
	call	strcpy
	.loc 1 2828 0
	movq	%rbx, %rdi
	call	strlen
	popq	%rbx
	addq	%rax, obufp(%rip)
	ret
.LFE46:
	.size	oappend, .-oappend
	.section	.rodata.str1.1
.LC762:
	.string	"%st"
	.text
	.p2align 4,,15
	.type	OP_ST, @function
OP_ST:
.LFB43:
	.loc 1 2534 0
	.loc 1 2535 0
	movl	$.LC762, %edi
	jmp	oappend
.LFE43:
	.size	OP_ST, .-OP_ST
	.section	.rodata.str1.1
.LC763:
	.string	"%%st(%d)"
	.text
	.p2align 4,,15
	.type	OP_STi, @function
OP_STi:
.LFB44:
	.loc 1 2542 0
	subq	$8, %rsp
.LCFI7:
	.loc 1 2543 0
	movl	rm(%rip), %edx
	movl	$scratchbuf, %edi
	movl	$.LC763, %esi
	xorl	%eax, %eax
	call	sprintf
	.loc 1 2544 0
	movsbq	intel_syntax(%rip),%rdi
	addq	$8, %rsp
	addq	$scratchbuf, %rdi
	jmp	oappend
.LFE44:
	.size	OP_STi, .-OP_STi
	.section	.rodata.str1.1
.LC769:
	.string	"%gs:"
.LC768:
	.string	"%fs:"
.LC767:
	.string	"%es:"
.LC766:
	.string	"%ss:"
.LC765:
	.string	"%ds:"
.LC764:
	.string	"%cs:"
	.text
	.p2align 4,,15
	.type	append_seg, @function
append_seg:
.LFB47:
	.loc 1 2833 0
	subq	$8, %rsp
.LCFI8:
	.loc 1 2834 0
	movl	prefixes(%rip), %eax
	testb	$8, %al
	jne	.L244
.L238:
	.loc 1 2839 0
	testb	$32, %al
	jne	.L245
.L239:
	.loc 1 2844 0
	testb	$16, %al
	jne	.L246
.L240:
	.loc 1 2849 0
	testb	$64, %al
	.p2align 4,,5
	jne	.L247
.L241:
	.loc 1 2854 0
	testb	%al, %al
	.p2align 4,,5
	js	.L248
.L242:
	.loc 1 2859 0
	testb	$1, %ah
	.p2align 4,,5
	jne	.L249
	.loc 1 2864 0
	addq	$8, %rsp
	.p2align 4,,5
	ret
	.p2align 4,,7
.L249:
	.loc 1 2862 0
	movsbq	intel_syntax(%rip),%rdi
	.loc 1 2861 0
	orl	$256, used_prefixes(%rip)
	.loc 1 2864 0
	addq	$8, %rsp
	.loc 1 2862 0
	addq	$.LC769, %rdi
	jmp	oappend
	.p2align 4,,7
.L248:
	.loc 1 2857 0
	movsbq	intel_syntax(%rip),%rdi
	.loc 1 2856 0
	orl	$128, used_prefixes(%rip)
	.loc 1 2857 0
	addq	$.LC768, %rdi
	call	oappend
	movl	prefixes(%rip), %eax
	jmp	.L242
	.p2align 4,,7
.L247:
	.loc 1 2852 0
	movsbq	intel_syntax(%rip),%rdi
	.loc 1 2851 0
	orl	$64, used_prefixes(%rip)
	.loc 1 2852 0
	addq	$.LC767, %rdi
	call	oappend
	movl	prefixes(%rip), %eax
	jmp	.L241
	.p2align 4,,7
.L246:
	.loc 1 2847 0
	movsbq	intel_syntax(%rip),%rdi
	.loc 1 2846 0
	orl	$16, used_prefixes(%rip)
	.loc 1 2847 0
	addq	$.LC766, %rdi
	call	oappend
	movl	prefixes(%rip), %eax
	jmp	.L240
	.p2align 4,,7
.L245:
	.loc 1 2842 0
	movsbq	intel_syntax(%rip),%rdi
	.loc 1 2841 0
	orl	$32, used_prefixes(%rip)
	.loc 1 2842 0
	addq	$.LC765, %rdi
	call	oappend
	movl	prefixes(%rip), %eax
	jmp	.L239
	.p2align 4,,7
.L244:
	.loc 1 2837 0
	movsbq	intel_syntax(%rip),%rdi
	.loc 1 2836 0
	orl	$8, used_prefixes(%rip)
	.loc 1 2837 0
	addq	$.LC764, %rdi
	call	oappend
	movl	prefixes(%rip), %eax
	jmp	.L238
.LFE47:
	.size	append_seg, .-append_seg
	.section	.rodata.str1.1
.LC772:
	.string	"%d"
.LC771:
	.string	"0x%x"
.LC770:
	.string	"%0lx"
	.text
	.p2align 4,,15
	.type	print_operand_value, @function
print_operand_value:
.LFB49:
	.loc 1 2881 0
	pushq	%rbp
.LCFI9:
	pushq	%rbx
.LCFI10:
	movq	%rdi, %rbx
	subq	$72, %rsp
.LCFI11:
	.loc 1 2882 0
	movl	mode_64bit(%rip), %eax
	testl	%eax, %eax
	je	.L251
	.loc 1 2884 0
	testl	%esi, %esi
	jne	.L275
.LBB2:
	.loc 1 2899 0
	testq	%rdx, %rdx
	.loc 1 2896 0
	movq	%rdx, %rsi
	.loc 1 2899 0
	js	.L276
.L258:
	.loc 1 2910 0
	testq	%rsi, %rsi
	.p2align 4,,3
	je	.L277
	.loc 1 2916 0
	xorl	%edi, %edi
	.loc 1 2917 0
	movb	$0, 29(%rsp)
	movl	$28, %r9d
	movabsq	$7378697629483820647, %r8
	.p2align 4,,7
.L263:
	.loc 1 2920 0
	movq	%rsi, %rax
	movl	%r9d, %ecx
	imulq	%r8
	movq	%rsi, %rax
	subl	%edi, %ecx
	sarq	$63, %rax
	movslq	%ecx,%rcx
	.loc 1 2922 0
	incl	%edi
	.loc 1 2920 0
	sarq	$2, %rdx
	subq	%rax, %rdx
	leaq	(%rdx,%rdx,4), %rax
	addq	%rax, %rax
	subq	%rax, %rsi
	.loc 1 2922 0
	testq	%rdx, %rdx
	.loc 1 2920 0
	leal	48(%rsi), %eax
	.loc 1 2921 0
	movq	%rdx, %rsi
	.loc 1 2920 0
	movb	%al, (%rsp,%rcx)
	.loc 1 2922 0
	jne	.L263
	.loc 1 2924 0
	leaq	64(%rsp), %rsi
	movslq	%edi,%rax
	movq	%rbx, %rdi
	subq	%rax, %rsi
	subq	$35, %rsi
	call	strcpy
.L280:
.LBE2:
	.loc 1 2934 0
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.p2align 4,,7
.L251:
	.loc 1 2929 0
	testl	%esi, %esi
	jne	.L278
	.loc 1 2932 0
	movl	$.LC772, %esi
.L273:
	movq	%rbx, %rdi
	xorl	%eax, %eax
	call	sprintf
.L250:
	.loc 1 2934 0
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.p2align 4,,7
.L278:
	.loc 1 2930 0
	movl	$.LC771, %esi
	jmp	.L273
	.p2align 4,,7
.L277:
.LBB3:
	.loc 1 2912 0
	movw	$48, (%rbx)
.LBE3:
	.loc 1 2934 0
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	ret
.L275:
.LBB4:
	.loc 1 2890 0
	leaq	32(%rsp), %rbp
	.loc 1 2888 0
	movb	$48, (%rdi)
	.loc 1 2889 0
	movb	$120, 1(%rdi)
	.loc 1 2890 0
	xorl	%eax, %eax
	movl	$.LC770, %esi
	movq	%rbp, %rdi
	call	sprintf
	.loc 1 2891 0
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	cmpb	$48, 32(%rsp)
	je	.L279
.L254:
	.loc 1 2892 0
	leaq	(%rbp,%rcx), %rsi
	leaq	2(%rbx), %rdi
.LBE4:
.LBB5:
	.loc 1 2924 0
	call	strcpy
	jmp	.L280
.L276:
	.loc 1 2902 0
	negq	%rsi
	.loc 1 2901 0
	incq	%rbx
	movb	$45, (%rdi)
	.loc 1 2904 0
	testq	%rsi, %rsi
	jns	.L258
	.loc 1 2906 0
	movabsq	$3472898955697861177, %rax
	movabsq	$3834594305099970099, %rbp
	movl	$3682360, 16(%rbx)
	movq	%rax, (%rbx)
	movq	%rbp, 8(%rbx)
	jmp	.L250
.L279:
.LBE5:
.LBB6:
	.loc 1 2891 0
	cmpb	$0, 33(%rsp)
	je	.L254
	.p2align 4,,7
.L281:
	incl	%edx
	movslq	%edx,%rcx
	cmpb	$48, 32(%rsp,%rcx)
	jne	.L254
	leal	1(%rdx), %eax
	cltq
	cmpb	$0, 32(%rsp,%rax)
	jne	.L281
	jmp	.L254
.LBE6:
.LFE49:
	.size	print_operand_value, .-print_operand_value
	.p2align 4,,15
	.type	BadOp, @function
BadOp:
.LFB83:
	.loc 1 4116 0
	.loc 1 4118 0
	movq	insn_codep(%rip), %rax
	.loc 1 4119 0
	movl	$.LC41, %edi
	.loc 1 4118 0
	incq	%rax
	movq	%rax, codep(%rip)
	.loc 1 4119 0
	jmp	oappend
.LFE83:
	.size	BadOp, .-BadOp
	.p2align 4,,15
	.type	get32s, @function
get32s:
.LFB54:
	.loc 1 3303 0
	subq	$8, %rsp
.LCFI12:
	.loc 1 3306 0
	movq	the_info(%rip), %rdi
	movq	codep(%rip), %rcx
	movq	72(%rdi), %rax
	leaq	4(%rcx), %rsi
	cmpq	(%rax), %rsi
	ja	.L286
.L285:
	.loc 1 3307 0
	movq	%rcx, %rdx
	movzbq	(%rcx), %rsi
	incq	%rcx
	movq	%rcx, codep(%rip)
	.loc 1 3308 0
	movzbq	1(%rdx), %rax
	leaq	2(%rdx), %rcx
	movq	%rcx, codep(%rip)
	.loc 1 3309 0
	leaq	3(%rdx), %rcx
	.loc 1 3308 0
	salq	$8, %rax
	orq	%rax, %rsi
	.loc 1 3309 0
	movzbq	2(%rdx), %rax
	movq	%rcx, codep(%rip)
	salq	$16, %rax
	orq	%rax, %rsi
	.loc 1 3310 0
	movzbq	3(%rdx), %rax
	addq	$4, %rdx
	movq	%rdx, codep(%rip)
	.loc 1 3315 0
	addq	$8, %rsp
	.loc 1 3310 0
	salq	$24, %rax
	orq	%rax, %rsi
	.loc 1 3312 0
	movl	$2147483648, %eax
	xorq	%rsi, %rax 
	leaq	-2147483648(%rax), %rsi
	.loc 1 3315 0
	movq	%rsi, %rax
	ret
	.p2align 4,,7
.L286:
	.loc 1 3306 0
	call	fetch_data
	movq	codep(%rip), %rcx
	jmp	.L285
.LFE54:
	.size	get32s, .-get32s
	.p2align 4,,15
	.type	set_op, @function
set_op:
.LFB56:
	.loc 1 3332 0
	.loc 1 3333 0
	movl	op_ad(%rip), %eax
	movslq	%eax,%rdx
	movl	%eax, op_index(,%rdx,4)
	.loc 1 3334 0
	movl	mode_64bit(%rip), %eax
	testl	%eax, %eax
	je	.L288
	.loc 1 3337 0
	movslq	%esi,%rax
	.loc 1 3336 0
	movq	%rdi, op_address(,%rdx,8)
	.loc 1 3337 0
	movq	%rax, op_riprel(,%rdx,8)
	ret
	.p2align 4,,7
.L288:
	.loc 1 3342 0
	andl	$4294967295, %edi
	.loc 1 3343 0
	mov	%esi, %esi
	.loc 1 3342 0
	movq	%rdi, op_address(,%rdx,8)
	.loc 1 3343 0
	movq	%rsi, op_riprel(,%rdx,8)
	ret
.LFE56:
	.size	set_op, .-set_op
	.p2align 4,,15
	.type	get16, @function
get16:
.LFB55:
	.loc 1 3319 0
	subq	$8, %rsp
.LCFI13:
	.loc 1 3322 0
	movq	the_info(%rip), %rdi
	movq	codep(%rip), %rcx
	movq	72(%rdi), %rax
	leaq	2(%rcx), %rsi
	cmpq	(%rax), %rsi
	ja	.L293
.L292:
	.loc 1 3323 0
	movzbl	(%rcx), %eax
	movq	%rcx, %rdx
	incq	%rcx
	movq	%rcx, codep(%rip)
	.loc 1 3324 0
	movzbl	1(%rdx), %ecx
	addq	$2, %rdx
	movq	%rdx, codep(%rip)
	.loc 1 3326 0
	addq	$8, %rsp
	.loc 1 3324 0
	sall	$8, %ecx
	orl	%ecx, %eax
	.loc 1 3326 0
	ret
	.p2align 4,,7
.L293:
	.loc 1 3322 0
	call	fetch_data
	movq	codep(%rip), %rcx
	jmp	.L292
.LFE55:
	.size	get16, .-get16
	.section	.rodata.str1.1
.LC773:
	.string	"<internal disassembler error>"
.LC775:
	.string	"BYTE PTR "
.LC781:
	.string	",%s"
.LC780:
	.string	"rip + "
.LC778:
	.string	"QWORD PTR "
.LC777:
	.string	"DWORD PTR "
.LC779:
	.string	"XWORD PTR "
.LC776:
	.string	"WORD PTR "
.LC774:
	.string	"(%rip)"
.LC782:
	.string	":"
	.text
	.p2align 4,,15
	.type	OP_E, @function
OP_E:
.LFB50:
	.loc 1 2940 0
	movq	%rbx, -48(%rsp)
.LCFI14:
	movq	%rbp, -40(%rsp)
.LCFI15:
	.loc 1 2942 0
	xorl	%ebx, %ebx
	.loc 1 2940 0
	movq	%r12, -32(%rsp)
.LCFI16:
	movq	%r15, -8(%rsp)
.LCFI17:
	.loc 1 2943 0
	xorl	%r15d, %r15d
	.loc 1 2940 0
	movq	%r13, -24(%rsp)
.LCFI18:
	movq	%r14, -16(%rsp)
.LCFI19:
	subq	$72, %rsp
.LCFI20:
	.loc 1 2944 0
	movl	rex(%rip), %edx
	.loc 1 2940 0
	movl	%edi, %ebp
	movl	%esi, %r12d
	.loc 1 2944 0
	movl	rex_used(%rip), %ecx
	testb	$1, %dl
	je	.L298
	orl	$65, %ecx
	.loc 1 2946 0
	movb	$8, %bl
.L298:
	.loc 1 2949 0
	cmpb	$0, need_modrm(%rip)
	je	.L440
	.loc 1 2950 0
	movq	codep(%rip), %rsi
	incq	%rsi
	.loc 1 2952 0
	cmpl	$3, mod(%rip)
	.loc 1 2950 0
	movq	%rsi, codep(%rip)
	.loc 1 2952 0
	je	.L441
	movl	%ecx, rex_used(%rip)
	.loc 1 3001 0
	xorl	%r14d, %r14d
	.loc 1 3002 0
	call	append_seg
	.loc 1 3004 0
	testb	$2, %r12b
	je	.L442
.L328:
.LBB7:
	.loc 1 3014 0
	movl	rm(%rip), %ebx
	.loc 1 3009 0
	xorl	%r13d, %r13d
	.loc 1 3010 0
	movl	$0, 12(%rsp)
	.loc 1 3012 0
	movl	$0, 20(%rsp)
	.loc 1 3013 0
	movl	$1, 16(%rsp)
	.loc 1 3016 0
	cmpl	$4, %ebx
	je	.L443
.L329:
	.loc 1 3032 0
	movl	mod(%rip), %eax
	cmpl	$1, %eax
	je	.L344
	jle	.L444
	cmpl	$2, %eax
	.p2align 4,,2
	je	.L348
.L340:
	.loc 1 3054 0
	movzbl	intel_syntax(%rip), %ecx
	testb	%cl, %cl
	.p2align 4,,2
	jne	.L350
	.loc 1 3055 0
	movl	mod(%rip), %eax
	testl	%eax, %eax
	jne	.L352
	movl	%ebx, %eax
	andl	$7, %eax
	cmpl	$5, %eax
	je	.L352
	.p2align 4,,7
.L350:
	.loc 1 3066 0
	movl	16(%rsp), %eax
	testl	%eax, %eax
	jne	.L355
	movl	20(%rsp), %eax
	testl	%eax, %eax
	je	.L354
	movl	12(%rsp), %r11d
	cmpl	$4, %r13d
	setne	%dl
	testl	%r11d, %r11d
	setne	%al
	orl	%edx, %eax
	testb	$1, %al
	je	.L354
	.p2align 4,,7
.L355:
	.loc 1 3068 0
	testb	%cl, %cl
	je	.L356
	.loc 1 3070 0
	cmpl	$7, %ebp
	ja	.L356
	mov	%ebp, %eax
	.p2align 4,,5
	jmp	*.L367(,%rax,8)
	.section	.rodata
	.align 8
	.align 4
.L367:
	.quad	.L356
	.quad	.L358
	.quad	.L435
	.quad	.L359
	.quad	.L363
	.quad	.L356
	.quad	.L365
	.quad	.L362
	.text
	.p2align 4,,7
.L442:
.LBE7:
	.loc 1 3004 0
	movl	mode_64bit(%rip), %eax
	testl	%eax, %eax
	jne	.L328
	.loc 1 3179 0
	movl	mod(%rip), %ecx
	cmpl	$1, %ecx
	je	.L409
	jle	.L445
	cmpl	$2, %ecx
.L439:
	.loc 1 3182 0
	.p2align 4,,2
	je	.L446
.L405:
	.loc 1 3202 0
	cmpb	$0, intel_syntax(%rip)
	.p2align 4,,4
	jne	.L416
	.loc 1 3203 0
	testl	%ecx, %ecx
	.p2align 4,,2
	jne	.L418
	movl	rm(%rip), %eax
	andl	$7, %eax
	cmpl	$6, %eax
	jne	.L426
.L418:
	.loc 1 3205 0
	movq	%r14, %rdx
	xorl	%esi, %esi
	movl	$scratchbuf, %edi
	call	print_operand_value
	.loc 1 3206 0
	movl	$scratchbuf, %edi
	call	oappend
	movl	mod(%rip), %ecx
.L416:
	.loc 1 3209 0
	testl	%ecx, %ecx
	jne	.L420
.L426:
	movl	rm(%rip), %eax
	andl	$7, %eax
	cmpl	$6, %eax
	je	.L294
.L420:
	.loc 1 3211 0
	movzbl	open_char(%rip), %edx
	movq	obufp(%rip), %rax
	movb	%dl, (%rax)
	movq	obufp(%rip), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, obufp(%rip)
	.loc 1 3212 0
	movb	$0, 1(%rax)
	.loc 1 3213 0
	addl	rm(%rip), %ebx
	movq	index16(%rip), %rax
	movslq	%ebx,%rdx
	movq	(%rax,%rdx,8), %rdi
	call	oappend
	.loc 1 3214 0
	movzbl	close_char(%rip), %edx
	movq	obufp(%rip), %rax
	movb	%dl, (%rax)
	movq	obufp(%rip), %rdx
	leaq	1(%rdx), %rax
	movq	%rax, obufp(%rip)
	.loc 1 3215 0
	movb	$0, 1(%rdx)
	.p2align 4,,7
.L294:
	.loc 1 3218 0
	movq	24(%rsp), %rbx
	movq	32(%rsp), %rbp
	movq	40(%rsp), %r12
	movq	48(%rsp), %r13
	movq	56(%rsp), %r14
	movq	64(%rsp), %r15
	addq	$72, %rsp
	ret
	.p2align 4,,7
.L441:
	.loc 1 2954 0
	cmpl	$7, %ebp
	ja	.L325
	mov	%ebp, %eax
	jmp	*.L326(,%rax,8)
	.section	.rodata
	.align 8
	.align 4
.L326:
	.quad	.L321
	.quad	.L303
	.quad	.L313
	.quad	.L307
	.quad	.L308
	.quad	.L309
	.quad	.L325
	.quad	.L310
	.text
	.p2align 4,,7
.L325:
	movl	%ecx, rex_used(%rip)
	.loc 1 2995 0
	movl	$.LC773, %edi
.L434:
	.loc 1 3218 0
	movq	24(%rsp), %rbx
	movq	32(%rsp), %rbp
	movq	40(%rsp), %r12
	movq	48(%rsp), %r13
	movq	56(%rsp), %r14
	movq	64(%rsp), %r15
	addq	$72, %rsp
.LBB8:
	.loc 1 3173 0
	jmp	oappend
	.p2align 4,,7
.L354:
	.loc 1 3160 0
	testb	%cl, %cl
	je	.L294
	.loc 1 3162 0
	movl	mod(%rip), %eax
	testl	%eax, %eax
	je	.L447
.L401:
	.loc 1 3164 0
	testl	$504, prefixes(%rip)
	je	.L448
.L403:
	.loc 1 3172 0
	movl	$scratchbuf, %edi
	movq	%r14, %rdx
	movl	$1, %esi
	call	print_operand_value
	.loc 1 3173 0
	movl	$scratchbuf, %edi
	jmp	.L434
.L358:
	.loc 1 3073 0
	movl	$.LC775, %edi
	.loc 1 3091 0
	call	oappend
	.p2align 4,,7
.L356:
	.loc 1 3097 0
	movzbl	open_char(%rip), %edx
	movq	obufp(%rip), %rax
	movb	%dl, (%rax)
	movq	obufp(%rip), %rcx
	incq	%rcx
	.loc 1 3098 0
	cmpb	$0, intel_syntax(%rip)
	.loc 1 3097 0
	movq	%rcx, obufp(%rip)
	.loc 1 3098 0
	setne	%dl
	xorl	%eax, %eax
	testl	%r15d, %r15d
	setne	%al
	testl	%edx, %eax
	jne	.L449
.L368:
	.loc 1 3100 0
	movb	$0, (%rcx)
	.loc 1 3101 0
	movl	rex_used(%rip), %eax
	movl	rex(%rip), %edx
	.loc 1 3103 0
	movl	20(%rsp), %r9d
	.loc 1 3104 0
	movl	16(%rsp), %r8d
	.loc 1 3101 0
	movl	%eax, %ecx
	orl	$65, %ecx
	andl	$1, %edx
	.loc 1 3103 0
	leal	(%rbx,%rdx,8), %edx
	.loc 1 3101 0
	cmovne	%ecx, %eax
	.loc 1 3103 0
	testl	%r9d, %r9d
	.loc 1 3101 0
	movl	%eax, rex_used(%rip)
	.loc 1 3103 0
	cmove	%edx, %ebx
	.loc 1 3104 0
	testl	%r8d, %r8d
	je	.L373
	.loc 1 3105 0
	movl	mode_64bit(%rip), %edi
	testl	%edi, %edi
	je	.L376
	testb	$2, %r12b
	jne	.L450
.L376:
	movq	names32(%rip), %rax
	movslq	%ebx,%rdx
.L431:
	movq	(%rax,%rdx,8), %rdi
	call	oappend
.L373:
	.loc 1 3107 0
	movl	20(%rsp), %esi
	testl	%esi, %esi
	je	.L422
	.loc 1 3109 0
	cmpl	$4, %r13d
	je	.L379
	.loc 1 3111 0
	cmpb	$0, intel_syntax(%rip)
	jne	.L451
	.loc 1 3123 0
	movl	mode_64bit(%rip), %eax
	testl	%eax, %eax
	je	.L389
	andl	$2, %r12d
	je	.L389
	movq	names64(%rip), %rax
	movslq	%r13d,%rdx
.L433:
	movq	(%rax,%rdx,8), %rdx
	movl	$.LC781, %esi
	movl	$scratchbuf, %edi
	xorl	%eax, %eax
	call	sprintf
.L386:
	.loc 1 3126 0
	movl	$scratchbuf, %edi
	call	oappend
.L379:
	.loc 1 3128 0
	movzbl	intel_syntax(%rip), %ecx
	testb	%cl, %cl
	je	.L392
	cmpl	$1, %ebp
	je	.L378
	cmpl	$3, %ebp
	setne	%dl
	xorl	%eax, %eax
	cmpl	$2, %ebp
	setne	%al
	testl	%edx, %eax
	je	.L378
.L392:
	.loc 1 3134 0
	movzbl	scale_char(%rip), %edx
	movq	obufp(%rip), %rax
	.loc 1 3136 0
	movl	$scratchbuf, %edi
	movl	$.LC772, %esi
	.loc 1 3134 0
	movb	%dl, (%rax)
	movq	obufp(%rip), %rax
	.loc 1 3136 0
	movl	$1, %edx
	.loc 1 3134 0
	leaq	1(%rax), %rcx
	movq	%rcx, obufp(%rip)
	.loc 1 3135 0
	movb	$0, 1(%rax)
	.loc 1 3136 0
	xorl	%eax, %eax
	movzbl	12(%rsp), %ecx
	sall	%cl, %edx
	call	sprintf
	.loc 1 3137 0
	movl	$scratchbuf, %edi
	call	oappend
	.p2align 4,,7
.L422:
	movzbl	intel_syntax(%rip), %ecx
.L378:
	.loc 1 3140 0
	testb	%cl, %cl
	je	.L393
	.loc 1 3141 0
	movl	mod(%rip), %eax
	testl	%eax, %eax
	jne	.L395
	andl	$7, %ebx
	cmpl	$5, %ebx
	je	.L395
	.p2align 4,,7
.L393:
	.loc 1 3157 0
	movzbl	close_char(%rip), %eax
	movq	obufp(%rip), %rdx
	movb	%al, (%rdx)
	movq	obufp(%rip), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, obufp(%rip)
	.loc 1 3158 0
	movb	$0, 1(%rax)
	jmp	.L294
.L395:
	.loc 1 3144 0
	testq	%r14, %r14
	je	.L393
	.loc 1 3146 0
	jle	.L397
	.loc 1 3148 0
	movq	obufp(%rip), %rax
	movb	$43, (%rax)
	movq	obufp(%rip), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, obufp(%rip)
	.loc 1 3149 0
	movb	$0, 1(%rax)
.L397:
	.loc 1 3152 0
	movq	%r14, %rdx
	xorl	%esi, %esi
	movl	$scratchbuf, %edi
	call	print_operand_value
	.loc 1 3153 0
	movl	$scratchbuf, %edi
	call	oappend
	jmp	.L393
	.p2align 4,,7
.L344:
	.loc 1 3044 0
	movq	the_info(%rip), %rdi
	movq	codep(%rip), %r8
	movq	72(%rdi), %rax
	leaq	1(%r8), %rsi
	cmpq	(%rax), %rsi
	ja	.L452
.L346:
	.loc 1 3045 0
	movzbq	(%r8), %r14
	incq	%r8
	movq	%r8, codep(%rip)
	.loc 1 3046 0
	testb	%r14b, %r14b
	jns	.L340
	.loc 1 3047 0
	subq	$256, %r14
	jmp	.L340
	.p2align 4,,7
.L443:
	.loc 1 3019 0
	movq	the_info(%rip), %rdi
	.loc 1 3018 0
	movl	$1, 20(%rsp)
	.loc 1 3019 0
	movq	codep(%rip), %r8
	movq	72(%rdi), %rax
	leaq	1(%r8), %rsi
	cmpq	(%rax), %rsi
	ja	.L453
.L331:
	.loc 1 3020 0
	movzbl	(%r8), %edx
	.loc 1 3021 0
	movl	$7, %r13d
	.loc 1 3020 0
	movl	%edx, %eax
	.loc 1 3022 0
	movl	%edx, %ebx
	.loc 1 3020 0
	shrb	$6, %al
	.loc 1 3022 0
	andl	$7, %ebx
	.loc 1 3020 0
	movl	%eax, %ecx
	.loc 1 3021 0
	movl	%edx, %eax
	.loc 1 3023 0
	movl	rex(%rip), %edx
	.loc 1 3021 0
	shrb	$3, %al
	.loc 1 3020 0
	andl	$3, %ecx
	.loc 1 3021 0
	andl	%eax, %r13d
	.loc 1 3023 0
	movl	rex_used(%rip), %eax
	.loc 1 3020 0
	movl	%ecx, 12(%rsp)
	.loc 1 3023 0
	movl	%edx, %esi
	movl	%eax, %ecx
	orl	$66, %ecx
	andl	$2, %esi
	cmovne	%ecx, %eax
	.loc 1 3024 0
	movl	%eax, %ecx
	orl	$65, %ecx
	andl	$1, %edx
	cmovne	%ecx, %eax
	.loc 1 3028 0
	leal	(%rbx,%rdx,8), %ebx
	.loc 1 3026 0
	testl	%esi, %esi
	.loc 1 3024 0
	movl	%eax, rex_used(%rip)
	.loc 1 3026 0
	leal	8(%r13), %eax
	cmovne	%eax, %r13d
	.loc 1 3029 0
	incq	%r8
	movq	%r8, codep(%rip)
	jmp	.L329
.L352:
	.loc 1 3057 0
	xorl	%esi, %esi
	testl	%r15d, %r15d
	movq	%r14, %rdx
	sete	%sil
	movl	$scratchbuf, %edi
	call	print_operand_value
	.loc 1 3058 0
	movl	$scratchbuf, %edi
	call	oappend
	.loc 1 3059 0
	testl	%r15d, %r15d
	jne	.L454
.L421:
	movzbl	intel_syntax(%rip), %ecx
	jmp	.L350
.L449:
	.loc 1 3099 0
	movl	$.LC780, %edi
	call	oappend
	movq	obufp(%rip), %rcx
	jmp	.L368
.L444:
	.loc 1 3032 0
	testl	%eax, %eax
	jne	.L340
	.loc 1 3035 0
	movl	%ebx, %eax
	andl	$7, %eax
	cmpl	$5, %eax
	jne	.L340
	.loc 1 3038 0
	movl	mode_64bit(%rip), %eax
	.loc 1 3037 0
	movl	$0, 16(%rsp)
	.loc 1 3038 0
	testl	%eax, %eax
	setne	%dl
	xorl	%eax, %eax
	cmpl	$0, 20(%rsp)
	sete	%al
	testl	%edx, %eax
	je	.L348
	.loc 1 3039 0
	testb	$2, %r12b
	movl	$1, %eax
	cmovne	%eax, %r15d
.L348:
	.loc 1 3050 0
	call	get32s
	movq	%rax, %r14
	jmp	.L340
.L451:
	.loc 1 3113 0
	movl	16(%rsp), %ecx
	testl	%ecx, %ecx
	je	.L381
	.loc 1 3115 0
	movzbl	separator_char(%rip), %eax
	movq	obufp(%rip), %rdx
	movb	%al, (%rdx)
	movq	obufp(%rip), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, obufp(%rip)
	.loc 1 3116 0
	movb	$0, 1(%rax)
.L381:
	.loc 1 3118 0
	movl	mode_64bit(%rip), %edx
	testl	%edx, %edx
	je	.L384
	andl	$2, %r12d
	je	.L384
	movq	names64(%rip), %rax
	movslq	%r13d,%rdx
.L432:
	movq	(%rax,%rdx,8), %rsi
	movl	$scratchbuf, %edi
	call	strcpy
	jmp	.L386
.L447:
	.loc 1 3162 0
	andl	$7, %ebx
	cmpl	$5, %ebx
	jne	.L294
	.p2align 4,,7
	jmp	.L401
.L321:
	movl	%ecx, rex_used(%rip)
.LBE8:
	.loc 1 2989 0
	cmpb	$-82, -2(%rsi)
	je	.L455
.L324:
	.loc 1 3218 0
	movq	24(%rsp), %rbx
	movq	32(%rsp), %rbp
	movq	40(%rsp), %r12
	movq	48(%rsp), %r13
	movq	56(%rsp), %r14
	movq	64(%rsp), %r15
	addq	$72, %rsp
	.loc 1 2992 0
	jmp	BadOp
.L303:
	.loc 1 2957 0
	orl	$64, %ecx
	.loc 1 2958 0
	testl	%edx, %edx
	.loc 1 2957 0
	movl	%ecx, rex_used(%rip)
	.loc 1 2958 0
	je	.L305
	.loc 1 2959 0
	addl	rm(%rip), %ebx
	movq	names8rex(%rip), %rdx
	movslq	%ebx,%rax
	.p2align 4,,7
.L436:
	.loc 1 2961 0
	movq	(%rdx,%rax,8), %rdi
	jmp	.L434
.L313:
	.loc 1 2979 0
	movl	%ecx, %eax
	orl	$72, %eax
	andl	$8, %edx
	cmovne	%eax, %ecx
	movl	%ecx, rex_used(%rip)
	.loc 1 2980 0
	jne	.L456
	.loc 1 2982 0
	andl	$1, %r12d
	je	.L319
	.loc 1 2983 0
	addl	rm(%rip), %ebx
	movq	names32(%rip), %rdx
	movslq	%ebx,%rax
.L429:
	.loc 1 2985 0
	movq	(%rdx,%rax,8), %rdi
	call	oappend
	.loc 1 2986 0
	movl	prefixes(%rip), %eax
	andl	$512, %eax
	orl	%eax, used_prefixes(%rip)
	jmp	.L294
.L308:
	movl	%ecx, rex_used(%rip)
.L311:
	.loc 1 2976 0
	addl	rm(%rip), %ebx
	movq	names32(%rip), %rdx
	movslq	%ebx,%rax
	jmp	.L436
.L309:
	movl	%ecx, rex_used(%rip)
.L438:
	.loc 1 2974 0
	addl	rm(%rip), %ebx
	movq	names64(%rip), %rdx
	movslq	%ebx,%rax
	jmp	.L436
.L307:
	.loc 1 2964 0
	addl	rm(%rip), %ebx
	movq	names16(%rip), %rdx
	movl	%ecx, rex_used(%rip)
	movslq	%ebx,%rax
	jmp	.L436
.L310:
	.loc 1 2973 0
	movl	mode_64bit(%rip), %eax
	movl	%ecx, rex_used(%rip)
	testl	%eax, %eax
	je	.L311
	jmp	.L438
.L450:
.LBB9:
	.loc 1 3105 0
	movq	names64(%rip), %rax
	movslq	%ebx,%rdx
	jmp	.L431
.L362:
	.loc 1 3085 0
	movl	mode_64bit(%rip), %r10d
	testl	%r10d, %r10d
	jne	.L435
.L363:
	.loc 1 3088 0
	movl	$.LC778, %edi
	.loc 1 3091 0
	call	oappend
	jmp	.L356
.L435:
	.loc 1 3086 0
	movl	$.LC777, %edi
	.loc 1 3091 0
	call	oappend
	.p2align 4,,3
	jmp	.L356
.L365:
	movl	$.LC779, %edi
	call	oappend
	.p2align 4,,3
	jmp	.L356
.L359:
	.loc 1 3076 0
	movl	$.LC776, %edi
	.loc 1 3091 0
	call	oappend
	.p2align 4,,3
	jmp	.L356
.L409:
.LBE9:
	.loc 1 3190 0
	movq	the_info(%rip), %rdi
	movq	codep(%rip), %r8
	movq	72(%rdi), %rax
	leaq	1(%r8), %rsi
	cmpq	(%rax), %rsi
	ja	.L457
.L411:
	.loc 1 3191 0
	movzbq	(%r8), %r14
	leaq	1(%r8), %rax
	movq	%rax, codep(%rip)
	.loc 1 3192 0
	testb	%r14b, %r14b
	jns	.L405
	.loc 1 3193 0
	subq	$256, %r14
	jmp	.L405
.L453:
.LBB10:
	.loc 1 3019 0
	call	fetch_data
	movq	codep(%rip), %r8
	jmp	.L331
.L452:
	.loc 1 3044 0
	call	fetch_data
	movq	codep(%rip), %r8
	jmp	.L346
.L384:
	.loc 1 3118 0
	movq	names32(%rip), %rax
	movslq	%r13d,%rdx
	jmp	.L432
.L389:
	.loc 1 3123 0
	movq	names32(%rip), %rax
	movslq	%r13d,%rdx
	jmp	.L433
.L454:
	.loc 1 3061 0
	movq	%r14, %rdi
	movl	$1, %esi
	call	set_op
	.loc 1 3062 0
	movl	$.LC774, %edi
	call	oappend
	jmp	.L421
.L445:
.LBE10:
	.loc 1 3179 0
	testl	%ecx, %ecx
	jne	.L405
	.loc 1 3182 0
	movl	rm(%rip), %eax
	andl	$7, %eax
	cmpl	$6, %eax
	jmp	.L439
.L305:
	.loc 1 2961 0
	addl	rm(%rip), %ebx
	movq	names8(%rip), %rdx
	movslq	%ebx,%rax
	jmp	.L436
.L446:
	.loc 1 3196 0
	call	get16
	movslq	%eax,%r14
	.loc 1 3197 0
	testw	%r14w, %r14w
	jns	.L424
	.loc 1 3198 0
	subq	$65536, %r14
.L424:
	movl	mod(%rip), %ecx
	jmp	.L405
.L319:
	.loc 1 2985 0
	addl	rm(%rip), %ebx
	movq	names16(%rip), %rdx
	movslq	%ebx,%rax
	jmp	.L429
.L457:
	.loc 1 3190 0
	call	fetch_data
	movq	codep(%rip), %r8
	movl	mod(%rip), %ecx
	jmp	.L411
.L455:
	.loc 1 2989 0
	movzbl	-1(%rsi), %ecx
	cmpb	$-8, %cl
	setne	%dl
	xorl	%eax, %eax
	cmpb	$-16, %cl
	setne	%al
	testl	%edx, %eax
	je	.L294
	cmpb	$-24, %cl
	jne	.L324
	jmp	.L294
	.p2align 4,,7
.L440:
	movl	%ecx, rex_used(%rip)
	.loc 1 2949 0
	call	abort
.L456:
	.loc 1 2981 0
	addl	rm(%rip), %ebx
	movq	names64(%rip), %rdx
	movslq	%ebx,%rax
	jmp	.L429
.L448:
.LBB11:
	.loc 1 3169 0
	movq	names_seg(%rip), %rax
	movq	24(%rax), %rdi
	call	oappend
	.loc 1 3170 0
	movl	$.LC782, %edi
	call	oappend
	jmp	.L403
.LBE11:
.LFE50:
	.size	OP_E, .-OP_E
	.section	.rodata.str1.1
.LC783:
	.string	"*"
	.text
	.p2align 4,,15
	.type	OP_indirE, @function
OP_indirE:
.LFB48:
	.loc 1 2870 0
	movq	%rbx, -16(%rsp)
.LCFI21:
	movq	%rbp, -8(%rsp)
.LCFI22:
	subq	$24, %rsp
.LCFI23:
	.loc 1 2871 0
	cmpb	$0, intel_syntax(%rip)
	.loc 1 2870 0
	movl	%edi, %ebp
	movl	%esi, %ebx
	.loc 1 2871 0
	je	.L460
	.loc 1 2873 0
	movl	%ebx, %esi
	movl	%ebp, %edi
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	addq	$24, %rsp
	jmp	OP_E
	.p2align 4,,7
.L460:
	.loc 1 2872 0
	movl	$.LC783, %edi
	call	oappend
	.loc 1 2873 0
	movl	%ebx, %esi
	movl	%ebp, %edi
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	addq	$24, %rsp
	jmp	OP_E
.LFE48:
	.size	OP_indirE, .-OP_indirE
	.section	.rodata.str1.1
.LC784:
	.string	"x86-64"
.LC785:
	.string	"i386"
.LC786:
	.string	"i8086"
.LC792:
	.string	"%s"
.LC787:
	.string	"intel"
.LC788:
	.string	"att"
.LC789:
	.string	"addr"
.LC794:
	.string	" "
.LC799:
	.string	"addr16 "
.LC798:
	.string	"addr32 "
.LC802:
	.string	"%s "
.LC804:
	.string	"        # "
.LC797:
	.string	"lock "
.LC793:
	.string	".byte 0x%x"
.LC790:
	.string	"data"
.LC796:
	.string	"repnz "
.LC795:
	.string	"repz "
.LC791:
	.string	"suffix"
.LC803:
	.string	","
.LC800:
	.string	"data32 "
.LC801:
	.string	"data16 "
	.text
	.p2align 4,,15
	.type	print_insn, @function
print_insn:
.LFB41:
	.loc 1 1855 0
	pushq	%r13
.LCFI24:
	pushq	%r12
.LCFI25:
	pushq	%rbp
.LCFI26:
	pushq	%rbx
.LCFI27:
	movq	%rdi, %rbx
	subq	$280, %rsp
.LCFI28:
	.loc 1 1855 0
	movq	%rsi, 8(%rsp)
	.loc 1 1866 0
	movq	32(%rsi), %rax
	subq	$3, %rax
	cmpq	$1, %rax
	setbe	%al
	.loc 1 1869 0
	cmpb	$-1, intel_syntax(%rip)
	.loc 1 1866 0
	movzbl	%al, %eax
	movl	%eax, mode_64bit(%rip)
	.loc 1 1869 0
	je	.L639
.L462:
	.loc 1 1873 0
	movq	8(%rsp), %rax
	movq	32(%rax), %rcx
	testq	%rcx, %rcx
	sete	%dl
	cmpq	$3, %rcx
	sete	%al
	orl	%edx, %eax
	testb	$1, %al
	jne	.L464
	cmpq	$2, %rcx
	je	.L464
	cmpq	$4, %rcx
	je	.L464
	.loc 1 1878 0
	decq	%rcx
	.p2align 4,,5
	jne	.L637
	.loc 1 1879 0
	movl	$0, 56(%rsp)
	.p2align 4,,4
	jmp	.L465
.L464:
	.loc 1 1877 0
	movl	$3, 56(%rsp)
.L465:
	.loc 1 1883 0
	movq	8(%rsp), %rdx
	movq	168(%rdx), %r8
	testq	%r8, %r8
	jmp	.L628
.L640:
	.loc 1 1887 0
	movl	$1, mode_64bit(%rip)
.L629:
	.loc 1 1893 0
	movl	$3, 56(%rsp)
.L471:
	.loc 1 1925 0
	movq	%r8, %rdi
	movl	$44, %esi
	call	strchr
	.loc 1 1926 0
	testq	%rax, %rax
	.loc 1 1925 0
	movq	%rax, %r8
	.loc 1 1926 0
	je	.L469
.L641:
	.loc 1 1883 0
	incq	%r8
.L628:
	je	.L469
	.loc 1 1885 0
	cld
	movq	%r8, %rsi
	movl	$.LC784, %edi
	movl	$6, %ecx
	repz
	cmpsb
	je	.L640
	.loc 1 1890 0
	cld
	movq	%r8, %rsi
	movl	$.LC785, %edi
	movl	$4, %ecx
	repz
	cmpsb
	jne	.L472
	.loc 1 1892 0
	movl	$0, mode_64bit(%rip)
	jmp	.L629
.L472:
	.loc 1 1895 0
	cld
	movq	%r8, %rsi
	movl	$.LC786, %edi
	movl	$5, %ecx
	repz
	cmpsb
	jne	.L474
	.loc 1 1925 0
	movq	%r8, %rdi
	.loc 1 1897 0
	movl	$0, mode_64bit(%rip)
	.loc 1 1898 0
	movl	$0, 56(%rsp)
	.loc 1 1925 0
	movl	$44, %esi
	call	strchr
	.loc 1 1926 0
	testq	%rax, %rax
	.loc 1 1925 0
	movq	%rax, %r8
	.loc 1 1926 0
	jne	.L641
.L469:
	.loc 1 1930 0
	cmpb	$0, intel_syntax(%rip)
	je	.L493
	.loc 1 1932 0
	movq	$intel_names64, names64(%rip)
	.loc 1 1933 0
	movq	$intel_names32, names32(%rip)
	.loc 1 1934 0
	movq	$intel_names16, names16(%rip)
	.loc 1 1935 0
	movq	$intel_names8, names8(%rip)
	.loc 1 1936 0
	movq	$intel_names8rex, names8rex(%rip)
	.loc 1 1937 0
	movq	$intel_names_seg, names_seg(%rip)
	.loc 1 1938 0
	movq	$intel_index16, index16(%rip)
	.loc 1 1939 0
	movb	$91, open_char(%rip)
	.loc 1 1940 0
	movb	$93, close_char(%rip)
	.loc 1 1941 0
	movb	$43, separator_char(%rip)
	.loc 1 1942 0
	movb	$42, scale_char(%rip)
.L494:
	.loc 1 1961 0
	movq	8(%rsp), %rcx
	.loc 1 1963 0
	leaq	16(%rsp), %rdi
	.loc 1 1964 0
	leaq	8(%rdi), %rax
	.loc 1 1963 0
	movq	%rdi, 72(%rcx)
	.loc 1 1961 0
	movl	$7, 132(%rcx)
	.loc 1 1979 0
	addq	$48, %rdi
	.loc 1 1964 0
	movq	%rax, 16(%rsp)
	.loc 1 1965 0
	movq	%rbx, 48(%rsp)
	.loc 1 1967 0
	movb	$0, obuf(%rip)
	.loc 1 1968 0
	movb	$0, op1out(%rip)
	.loc 1 1969 0
	movb	$0, op2out(%rip)
	.loc 1 1970 0
	movb	$0, op3out(%rip)
	.loc 1 1972 0
	movl	$-1, op_index+8(%rip)
	movl	$-1, op_index+4(%rip)
	movl	$-1, op_index(%rip)
	.loc 1 1974 0
	movq	%rcx, the_info(%rip)
	.loc 1 1975 0
	movq	%rbx, start_pc(%rip)
	.loc 1 1976 0
	movq	%rax, start_codep(%rip)
	.loc 1 1977 0
	movq	%rax, codep(%rip)
	.loc 1 1979 0
	call	_setjmp
	testl	%eax, %eax
	je	.L495
.LBB12:
	.loc 1 1986 0
	leaq	24(%rsp), %rax
	cmpq	codep(%rip), %rax
	.loc 1 2001 0
	movl	$-1, %edx
	.loc 1 1986 0
	jae	.L461
	.loc 1 1988 0
	movzbl	24(%rsp), %ebx
	movl	56(%rsp), %esi
	movl	%ebx, %edi
	call	prefix_name
	.loc 1 1989 0
	testq	%rax, %rax
	je	.L497
	.loc 1 1990 0
	movq	8(%rsp), %rdx
	movq	8(%rsp), %rcx
	movl	$.LC792, %esi
	movq	8(%rdx), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
.LBE12:
.LBB13:
	.loc 1 2169 0
	call	*(%rcx)
.L636:
	.loc 1 2170 0
	movl	$1, %edx
.L461:
.LBE13:
	.loc 1 2240 0
	addq	$280, %rsp
	movl	%edx, %eax
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
.L474:
	.loc 1 1900 0
	cld
	movq	%r8, %rsi
	movl	$.LC787, %edi
	movl	$5, %ecx
	repz
	cmpsb
	jne	.L476
	.loc 1 1902 0
	movb	$1, intel_syntax(%rip)
	jmp	.L471
.L476:
	.loc 1 1904 0
	cld
	movq	%r8, %rsi
	movl	$.LC788, %edi
	movl	$3, %ecx
	repz
	cmpsb
	je	.L642
	.loc 1 1908 0
	cld
	movq	%r8, %rsi
	movl	$.LC789, %edi
	movl	$4, %ecx
	repz
	cmpsb
	jne	.L480
	.loc 1 1910 0
	cmpb	$49, 4(%r8)
	je	.L643
.L481:
	.loc 1 1912 0
	cmpb	$51, 4(%r8)
	jne	.L471
	cmpb	$50, 5(%r8)
	.p2align 4,,5
	jne	.L471
	.loc 1 1913 0
	orl	$2, 56(%rsp)
	.p2align 4,,4
	jmp	.L471
	.p2align 4,,7
.L495:
	.loc 1 2004 0
	movq	$obuf, obufp(%rip)
.LBB14:
.LBB15:
	.loc 1 1654 0
	movl	$0, rex(%rip)
	.loc 1 1655 0
	movl	$0, prefixes(%rip)
	.loc 1 1656 0
	movl	$0, used_prefixes(%rip)
	.loc 1 1657 0
	movl	$0, rex_used(%rip)
	jmp	.L499
	.p2align 4,,7
.L646:
	.loc 1 1662 0
	cmpl	$54, %eax
	je	.L527
	jg	.L538
	cmpl	$38, %eax
	.p2align 4,,7
	je	.L529
	cmpl	$46, %eax
	.p2align 4,,7
	jne	.L522
	.loc 1 1696 0
	orl	$8, prefixes(%rip)
	.p2align 4,,7
.L503:
	.loc 1 1735 0
	movl	rex(%rip), %edi
	testl	%edi, %edi
	jne	.L644
.L541:
	.loc 1 1741 0
	incq	codep(%rip)
	.loc 1 1740 0
	movl	%ebx, rex(%rip)
.L499:
	.loc 1 1660 0
	movq	the_info(%rip), %rdi
	movq	codep(%rip), %rsi
	movq	72(%rdi), %rax
	incq	%rsi
	cmpq	(%rax), %rsi
	ja	.L645
	.loc 1 1662 0
	movq	codep(%rip), %rdx
	.loc 1 1661 0
	xorl	%ebx, %ebx
	.loc 1 1662 0
	movzbl	(%rdx), %eax
	cmpl	$100, %eax
	je	.L530
.L647:
	jle	.L646
	cmpl	$155, %eax
	je	.L534
	.p2align 4,,9
	jg	.L539
	cmpl	$102, %eax
	.p2align 4,,7
	je	.L532
	.p2align 4,,9
	jl	.L531
	cmpl	$103, %eax
	.p2align 4,,7
	jne	.L522
	.loc 1 1735 0
	movl	rex(%rip), %edi
	.loc 1 1717 0
	orl	$1024, prefixes(%rip)
	.loc 1 1735 0
	testl	%edi, %edi
	je	.L541
	.p2align 4,,7
.L644:
	.loc 1 1737 0
	xorl	%esi, %esi
	call	prefix_name
	movq	%rax, %rdi
	call	oappend
	.loc 1 1738 0
	movl	$.LC794, %edi
	call	oappend
	jmp	.L541
	.p2align 4,,7
.L645:
	.loc 1 1660 0
	call	fetch_data
	.loc 1 1662 0
	movq	codep(%rip), %rdx
	.loc 1 1661 0
	xorl	%ebx, %ebx
	.loc 1 1662 0
	movzbl	(%rdx), %eax
	cmpl	$100, %eax
	jne	.L647
	.p2align 4,,7
.L530:
	.loc 1 1708 0
	orl	$128, prefixes(%rip)
	jmp	.L503
	.p2align 4,,7
.L538:
	.loc 1 1662 0
	cmpl	$62, %eax
	je	.L528
	.p2align 4,,4
	jl	.L522
	subl	$64, %eax
	cmpl	$15, %eax
	.p2align 4,,5
	ja	.L522
	.loc 1 1681 0
	movl	mode_64bit(%rip), %ecx
	testl	%ecx, %ecx
	je	.L522
	.loc 1 1682 0
	movq	codep(%rip), %rax
	movzbl	(%rax), %ebx
	jmp	.L503
	.p2align 4,,7
.L539:
	.loc 1 1662 0
	cmpl	$242, %eax
	je	.L524
	.p2align 4,,2
	jg	.L540
	cmpl	$240, %eax
	.p2align 4,,7
	jne	.L522
	.loc 1 1693 0
	orl	$4, prefixes(%rip)
	.p2align 4,,4
	jmp	.L503
	.p2align 4,,7
.L527:
	.loc 1 1699 0
	orl	$16, prefixes(%rip)
	jmp	.L503
	.p2align 4,,7
.L534:
	.loc 1 1723 0
	movl	prefixes(%rip), %eax
	testl	%eax, %eax
	jne	.L627
	.loc 1 1729 0
	movl	$2048, prefixes(%rip)
	jmp	.L503
.L531:
	.loc 1 1711 0
	orl	$256, prefixes(%rip)
	jmp	.L503
.L540:
	.loc 1 1662 0
	cmpl	$243, %eax
	jne	.L522
	.loc 1 1687 0
	orl	$1, prefixes(%rip)
	jmp	.L503
.L529:
	.loc 1 1705 0
	orl	$64, prefixes(%rip)
	jmp	.L503
.L528:
	.loc 1 1702 0
	orl	$32, prefixes(%rip)
	jmp	.L503
.L532:
	.loc 1 1714 0
	orl	$512, prefixes(%rip)
	jmp	.L503
.L524:
	.loc 1 1690 0
	orl	$2, prefixes(%rip)
	jmp	.L503
.L493:
.LBE15:
.LBE14:
	.loc 1 1946 0
	movq	$att_names64, names64(%rip)
	.loc 1 1947 0
	movq	$att_names32, names32(%rip)
	.loc 1 1948 0
	movq	$att_names16, names16(%rip)
	.loc 1 1949 0
	movq	$att_names8, names8(%rip)
	.loc 1 1950 0
	movq	$att_names8rex, names8rex(%rip)
	.loc 1 1951 0
	movq	$att_names_seg, names_seg(%rip)
	.loc 1 1952 0
	movq	$att_index16, index16(%rip)
	.loc 1 1953 0
	movb	$40, open_char(%rip)
	.loc 1 1954 0
	movb	$41, close_char(%rip)
	.loc 1 1955 0
	movb	$44, separator_char(%rip)
	.loc 1 1956 0
	movb	$44, scale_char(%rip)
	jmp	.L494
.L639:
	.loc 1 1870 0
	movq	32(%rsi), %rax
	cmpq	$2, %rax
	sete	%dl
	cmpq	$4, %rax
	sete	%al
	orl	%eax, %edx
	movb	%dl, intel_syntax(%rip)
	jmp	.L462
.L642:
	.loc 1 1906 0
	movb	$0, intel_syntax(%rip)
	jmp	.L471
.L627:
.LBB16:
.LBB17:
	.loc 1 1725 0
	orb	$8, %ah
	movl	%eax, prefixes(%rip)
	.loc 1 1726 0
	leaq	1(%rdx), %rax
	movq	%rax, codep(%rip)
.L522:
.LBE17:
.LBE16:
	.loc 1 2007 0
	movq	codep(%rip), %rax
	.loc 1 2010 0
	movq	8(%rsp), %rdx
	.loc 1 2008 0
	movl	56(%rsp), %r12d
	.loc 1 2007 0
	movq	%rax, insn_codep(%rip)
	.loc 1 2010 0
	leaq	1(%rax), %rsi
	movq	72(%rdx), %rax
	cmpq	(%rax), %rsi
	ja	.L648
.L543:
	.loc 1 2011 0
	movq	codep(%rip), %rax
	movzbl	(%rax), %ecx
	cmpb	$98, %cl
	sete	%dl
	cmpb	$-56, %cl
	sete	%al
	movl	%eax, %r13d
	orl	%edx, %r13d
	andl	$1, %r13d
	.loc 1 2013 0
	testb	$8, prefixes+1(%rip)
	je	.L544
	leal	40(%rcx), %eax
	cmpb	$7, %al
	jbe	.L544
.LBB18:
	.loc 1 2020 0
	movzbl	24(%rsp), %edi
	movl	56(%rsp), %esi
	call	prefix_name
.L635:
.LBE18:
.LBB19:
	.loc 1 2169 0
	movq	8(%rsp), %rcx
	.loc 1 2168 0
	testq	%rax, %rax
	movl	$.LC773, %edx
	cmove	%rdx, %rax
	.loc 1 2169 0
	movl	$.LC792, %esi
	movq	%rax, %rdx
	xorl	%eax, %eax
	movq	8(%rcx), %rdi
	call	*(%rcx)
	jmp	.L636
.L544:
.LBE19:
	.loc 1 2027 0
	movq	codep(%rip), %rdx
	movzbl	(%rdx), %eax
	cmpb	$15, %al
	je	.L649
	.loc 1 2036 0
	movzbl	%al, %eax 
	.loc 1 2038 0
	xorl	%ebp, %ebp
	.loc 1 2036 0
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	.loc 1 2037 0
	movzbl	onebyte_has_modrm(%rax), %eax
	.loc 1 2036 0
	leaq	dis386(,%rdx,8), %rbx
	.loc 1 2037 0
	movb	%al, need_modrm(%rip)
.L549:
	.loc 1 2040 0
	incq	codep(%rip)
	.loc 1 2042 0
	testb	%bpl, %bpl
	jne	.L551
	testb	$1, prefixes(%rip)
	jne	.L650
.L550:
	.loc 1 2047 0
	testb	$2, prefixes(%rip)
	jne	.L651
.L551:
	.loc 1 2052 0
	testb	$4, prefixes(%rip)
	jne	.L652
.L552:
	.loc 1 2058 0
	testb	$4, prefixes+1(%rip)
	je	.L553
	.loc 1 2060 0
	xorl	$2, %r12d
	.loc 1 2061 0
	cmpl	$9, 48(%rbx)
	je	.L653
.L555:
	.loc 1 2063 0
	testb	$2, %r12b
	jne	.L557
	movl	mode_64bit(%rip), %edx
	.loc 1 2066 0
	movl	$.LC799, %edi
	.loc 1 2063 0
	testl	%edx, %edx
	je	.L630
.L557:
	.loc 1 2064 0
	movl	$.LC798, %edi
.L630:
	.loc 1 2066 0
	call	oappend
	.loc 1 2067 0
	orl	$1024, used_prefixes(%rip)
.L553:
	.loc 1 2071 0
	testb	%bpl, %bpl
	jne	.L559
	testb	$2, prefixes+1(%rip)
	je	.L559
	.loc 1 2073 0
	xorl	$1, %r12d
	.loc 1 2074 0
	cmpl	$8, 48(%rbx)
	je	.L654
.L559:
	.loc 1 2086 0
	cmpb	$0, need_modrm(%rip)
	je	.L563
	.loc 1 2088 0
	movq	8(%rsp), %rcx
	movq	codep(%rip), %rsi
	movq	72(%rcx), %rax
	incq	%rsi
	cmpq	(%rax), %rsi
	ja	.L655
.L565:
	.loc 1 2089 0
	movq	codep(%rip), %rdx
	movzbl	(%rdx), %eax
	shrb	$6, %al
	andl	$3, %eax
	movl	%eax, mod(%rip)
	.loc 1 2090 0
	movzbl	(%rdx), %eax
	shrb	$3, %al
	andl	$7, %eax
	movl	%eax, reg(%rip)
	.loc 1 2091 0
	movzbl	(%rdx), %eax
	andl	$7, %eax
	movl	%eax, rm(%rip)
.L563:
	.loc 1 2094 0
	cmpq	$0, (%rbx)
	jne	.L580
	cmpl	$1, 16(%rbx)
	je	.L656
.LBB20:
	.loc 1 2101 0
	cmpq	$0, (%rbx)
	jne	.L580
	.loc 1 2103 0
	movl	16(%rbx), %edi
	cmpl	$3, %edi
	.p2align 4,,3
	je	.L583
	.p2align 4,,5
	jg	.L591
	cmpl	$2, %edi
	.p2align 4,,5
	je	.L582
.L590:
	.loc 1 2134 0
	movl	$.LC773, %edi
	call	oappend
.L580:
	.loc 1 2139 0
	movq	(%rbx), %rdi
	movl	%r12d, %esi
	call	putop
	testl	%eax, %eax
	jne	.L579
	.loc 1 2141 0
	movq	$op1out, obufp(%rip)
	.loc 1 2142 0
	movl	$2, op_ad(%rip)
	.loc 1 2143 0
	movq	8(%rbx), %rax
	testq	%rax, %rax
	jne	.L657
.L593:
	.loc 1 2146 0
	movq	$op2out, obufp(%rip)
	.loc 1 2147 0
	movl	$1, op_ad(%rip)
	.loc 1 2148 0
	movq	24(%rbx), %rax
	testq	%rax, %rax
	jne	.L658
.L594:
	.loc 1 2151 0
	movq	$op3out, obufp(%rip)
	.loc 1 2152 0
	movl	$0, op_ad(%rip)
	.loc 1 2153 0
	movq	40(%rbx), %rax
	testq	%rax, %rax
	jne	.L659
.L579:
.LBE20:
	.loc 1 2162 0
	movl	used_prefixes(%rip), %eax
	notl	%eax
	testl	%eax, prefixes(%rip)
	je	.L596
.LBB21:
	.loc 1 2166 0
	movzbl	24(%rsp), %edi
	movl	56(%rsp), %esi
	call	prefix_name
	jmp	.L635
.L596:
.LBE21:
	.loc 1 2172 0
	movl	rex_used(%rip), %eax
	movl	rex(%rip), %edi
	notl	%eax
	testl	%edi, %eax
	je	.L598
.LBB22:
	.loc 1 2175 0
	movl	56(%rsp), %esi
	orl	$64, %edi
	call	prefix_name
	.loc 1 2177 0
	movl	$.LC773, %edx
	testq	%rax, %rax
	.loc 1 2178 0
	movq	8(%rsp), %rcx
	.loc 1 2177 0
	cmove	%rdx, %rax
	.loc 1 2178 0
	movq	8(%rsp), %rdx
	movl	$.LC802, %esi
	movq	8(%rdx), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	*(%rcx)
.L598:
.LBE22:
	.loc 1 2181 0
	movl	$obuf, %edi
	call	strlen
	addq	$obuf, %rax
	.loc 1 2182 0
	movl	$obuf, %edi
	.loc 1 2181 0
	movq	%rax, obufp(%rip)
	.loc 1 2182 0
	call	strlen
	movl	%eax, %ebx
	cmpl	$5, %ebx
	jg	.L624
.L660:
	.loc 1 2183 0
	movl	$.LC794, %edi
	.loc 1 2182 0
	incl	%ebx
	.loc 1 2183 0
	call	oappend
	.loc 1 2182 0
	cmpl	$5, %ebx
	jle	.L660
.L624:
	.loc 1 2184 0
	movl	$.LC794, %edi
	call	oappend
	.loc 1 2185 0
	movq	8(%rsp), %rax
	movq	8(%rsp), %rcx
	movl	$obuf, %edx
	movl	$.LC792, %esi
	movq	8(%rax), %rdi
	xorl	%eax, %eax
	call	*(%rcx)
	.loc 1 2189 0
	cmpb	$0, intel_syntax(%rip)
	setne	%dl
	testl	%r13d, %r13d
	setne	%al
	orl	%edx, %eax
	testb	$1, %al
	je	.L604
	.loc 1 2194 0
	movl	op_index(%rip), %edx
	.loc 1 2195 0
	movl	op_index+8(%rip), %eax
	.loc 1 2191 0
	movl	$op1out, %ecx
	.loc 1 2192 0
	movl	$op2out, %ebx
	.loc 1 2193 0
	movl	$op3out, %ebp
	.loc 1 2194 0
	movl	%edx, op_ad(%rip)
	.loc 1 2195 0
	movl	%eax, op_index(%rip)
	.loc 1 2196 0
	movl	%edx, op_index+8(%rip)
.L605:
	.loc 1 2204 0
	xorl	%eax, %eax
	.loc 1 2205 0
	cmpb	$0, (%rcx)
	je	.L606
	.loc 1 2207 0
	movl	op_index(%rip), %eax
	cmpl	$-1, %eax
	je	.L607
	cmpq	$0, op_riprel(%rip)
	je	.L661
.L607:
	.loc 1 2210 0
	movq	8(%rsp), %rax
	movq	%rcx, %rdx
	movq	8(%rsp), %rcx
	movl	$.LC792, %esi
	movq	8(%rax), %rdi
	xorl	%eax, %eax
	call	*(%rcx)
.L608:
	.loc 1 2211 0
	movl	$1, %eax
.L606:
	.loc 1 2213 0
	cmpb	$0, (%rbx)
	je	.L609
	.loc 1 2215 0
	testl	%eax, %eax
	jne	.L662
.L610:
	.loc 1 2217 0
	movl	op_index+4(%rip), %eax
	cmpl	$-1, %eax
	je	.L611
	cmpq	$0, op_riprel+8(%rip)
	je	.L663
.L611:
	.loc 1 2220 0
	movq	8(%rsp), %rcx
	movq	%rbx, %rdx
	movl	$.LC792, %esi
	xorl	%eax, %eax
	movq	8(%rcx), %rdi
	call	*(%rcx)
.L612:
	.loc 1 2221 0
	movl	$1, %eax
.L609:
	.loc 1 2223 0
	cmpb	$0, (%rbp)
	je	.L613
	.loc 1 2225 0
	testl	%eax, %eax
	jne	.L664
.L614:
	.loc 1 2227 0
	movl	op_index+8(%rip), %eax
	cmpl	$-1, %eax
	je	.L615
	cmpq	$0, op_riprel+16(%rip)
	je	.L665
.L615:
	.loc 1 2230 0
	movq	8(%rsp), %rcx
	movq	%rbp, %rdx
	movl	$.LC792, %esi
	xorl	%eax, %eax
	movq	8(%rcx), %rdi
	call	*(%rcx)
.L613:
	xorl	%ebp, %ebp
	movl	$2, %ebx
.L621:
	.loc 1 2233 0
	cmpl	$-1, op_index(,%rbp,4)
	je	.L619
	cmpq	$0, op_riprel(,%rbp,8)
	jne	.L666
.L619:
	incq	%rbp
	decl	%ebx
	jns	.L621
	.loc 1 2239 0
	leaq	16(%rsp), %rdx
	movq	codep(%rip), %rax
	.loc 1 2240 0
	addq	$280, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	.loc 1 2239 0
	subl	%edx, %eax
	.loc 1 2240 0
	popq	%r13
	.loc 1 2239 0
	leal	-8(%rax), %edx
	.loc 1 2240 0
	movl	%edx, %eax
	ret
.L648:
	.loc 1 2010 0
	movq	%rdx, %rdi
	call	fetch_data
	jmp	.L543
.L666:
	.loc 1 2235 0
	movq	8(%rsp), %rax
	movq	8(%rsp), %rdx
	movl	$.LC804, %esi
	movq	8(%rax), %rdi
	xorl	%eax, %eax
	call	*(%rdx)
	.loc 1 2236 0
	movslq	op_index(,%rbp,4),%rax
	movq	start_pc(%rip), %rdi
	addq	codep(%rip), %rdi
	movq	8(%rsp), %rsi
	subq	start_codep(%rip), %rdi
	addq	op_address(,%rax,8), %rdi
	call	*96(%rsi)
	jmp	.L619
.L652:
	.loc 1 2054 0
	movl	$.LC797, %edi
	call	oappend
	.loc 1 2055 0
	orl	$4, used_prefixes(%rip)
	jmp	.L552
.L649:
	.loc 1 2029 0
	leaq	2(%rdx), %rsi
	movq	8(%rsp), %rdx
	movq	72(%rdx), %rax
	cmpq	(%rax), %rsi
	ja	.L667
.L548:
	.loc 1 2030 0
	movq	codep(%rip), %rcx
	leaq	1(%rcx), %rax
	movq	%rax, codep(%rip)
	movzbq	1(%rcx), %rdx
	leaq	0(,%rdx,8), %rax
	subq	%rdx, %rax
	leaq	dis386_twobyte(,%rax,8), %rbx
	.loc 1 2031 0
	movzbl	twobyte_has_modrm(%rdx), %eax
	movb	%al, need_modrm(%rip)
	.loc 1 2032 0
	movzbq	1(%rcx), %rax
	movzbl	twobyte_uses_SSE_prefix(%rax), %ebp
	jmp	.L549
.L604:
	.loc 1 2200 0
	movl	$op3out, %ecx
	.loc 1 2201 0
	movl	$op2out, %ebx
	.loc 1 2202 0
	movl	$op1out, %ebp
	jmp	.L605
.L497:
.LBB23:
	.loc 1 1994 0
	movq	8(%rsp), %rax
	movq	8(%rsp), %rcx
	movl	%ebx, %edx
	movl	$.LC793, %esi
	movq	8(%rax), %rdi
	xorl	%eax, %eax
	call	*(%rcx)
	jmp	.L636
.L480:
.LBE23:
	.loc 1 1915 0
	cld
	movq	%r8, %rsi
	movl	$.LC790, %edi
	movl	$4, %ecx
	repz
	cmpsb
	jne	.L485
	.loc 1 1917 0
	cmpb	$49, 4(%r8)
	je	.L668
.L486:
	.loc 1 1919 0
	cmpb	$51, 4(%r8)
	jne	.L471
	cmpb	$50, 5(%r8)
	.p2align 4,,5
	jne	.L471
	.loc 1 1920 0
	orl	$1, 56(%rsp)
	.p2align 4,,4
	jmp	.L471
.L655:
	.loc 1 2088 0
	movq	%rcx, %rdi
	call	fetch_data
	.p2align 4,,3
	jmp	.L565
.L653:
	.loc 1 2061 0
	cmpb	$0, intel_syntax(%rip)
	je	.L553
	.p2align 4,,6
	jmp	.L555
.L651:
	.loc 1 2049 0
	movl	$.LC796, %edi
	call	oappend
	.loc 1 2050 0
	orl	$2, used_prefixes(%rip)
	jmp	.L551
.L650:
	.loc 1 2044 0
	movl	$.LC795, %edi
	call	oappend
	.loc 1 2045 0
	orl	$1, used_prefixes(%rip)
	jmp	.L550
.L656:
.LBB24:
.LBB25:
	.loc 1 2492 0
	cmpl	$3, mod(%rip)
	.loc 1 2490 0
	movq	codep(%rip), %rax
	movzbl	-1(%rax), %ebp
	.loc 1 2492 0
	je	.L567
	.loc 1 2494 0
	movl	reg(%rip), %edx
	movzbl	%bpl, %eax
	movl	%r12d, %esi
	leal	(%rdx,%rax,8), %eax
	cltq
	movq	float_mem-13824(,%rax,8), %rdi
	call	putop
	.loc 1 2496 0
	cmpb	$-37, %bpl
	.loc 1 2495 0
	movq	$op1out, obufp(%rip)
	.loc 1 2497 0
	movl	%r12d, %esi
	movl	$6, %edi
	.loc 1 2496 0
	je	.L633
	.loc 1 2498 0
	cmpb	$-35, %bpl
	.loc 1 2499 0
	movl	%r12d, %esi
	movl	$4, %edi
	.loc 1 2498 0
	je	.L633
	.loc 1 2501 0
	movl	%r12d, %esi
	movl	$2, %edi
.L633:
	call	OP_E
	jmp	.L579
.L591:
.LBE25:
.LBE24:
.LBB26:
	.loc 1 2103 0
	cmpl	$4, %edi
	.p2align 4,,2
	jne	.L590
	.loc 1 2130 0
	movslq	32(%rbx),%rax
	movslq	mode_64bit(%rip),%rcx
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	0(,%rcx,8), %rax
	salq	$4, %rdx
	subq	%rcx, %rax
	leaq	x86_64_table(%rdx,%rax,8), %rbx
	jmp	.L580
.L583:
	.loc 1 2111 0
	movl	prefixes(%rip), %esi
	.loc 1 2110 0
	xorl	%ecx, %ecx
	.loc 1 2111 0
	movl	%esi, %eax
	andl	$1, %eax
	movl	%eax, %edx
	orl	used_prefixes(%rip), %edx
	.loc 1 2112 0
	testl	%eax, %eax
	.loc 1 2111 0
	movl	%edx, used_prefixes(%rip)
	.loc 1 2112 0
	jne	.L669
	.loc 1 2116 0
	movl	%esi, %eax
	andl	$512, %eax
	orl	%eax, %edx
	.loc 1 2117 0
	testl	%eax, %eax
	.loc 1 2116 0
	movl	%edx, used_prefixes(%rip)
	.loc 1 2117 0
	je	.L586
	.loc 1 2118 0
	movl	$2, %ecx
.L585:
	.loc 1 2126 0
	movslq	32(%rbx),%rax
	movslq	%ecx,%rcx
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	0(,%rcx,8), %rax
	salq	$5, %rdx
	subq	%rcx, %rax
	leaq	prefix_user_table(%rdx,%rax,8), %rbx
	jmp	.L580
.L485:
.LBE26:
	.loc 1 1922 0
	cld
	movq	%r8, %rsi
	movl	$6, %ecx
	movl	$.LC791, %edi
	repz
	cmpsb
	.loc 1 1923 0
	movl	56(%rsp), %ecx
	movl	56(%rsp), %eax
	.loc 1 1922 0
	seta	%sil
	setb	%dl
	.loc 1 1923 0
	orl	$4, %ecx
	cmpb	%dl, %sil
	cmove	%ecx, %eax
	movl	%eax, 56(%rsp)
	jmp	.L471
.L658:
.LBB27:
	.loc 1 2149 0
	movl	32(%rbx), %edi
	movl	%r12d, %esi
	call	*%rax
	jmp	.L594
.L657:
	.loc 1 2144 0
	movl	16(%rbx), %edi
	movl	%r12d, %esi
	.p2align 4,,3
	call	*%rax
	.p2align 4,,7
	jmp	.L593
.L659:
	.loc 1 2154 0
	movl	48(%rbx), %edi
	movl	%r12d, %esi
	.p2align 4,,3
	call	*%rax
	.p2align 4,,7
	jmp	.L579
.L567:
.LBE27:
.LBB28:
.LBB29:
	.loc 1 2505 0
	cmpb	$0, need_modrm(%rip)
	.p2align 4,,2
	je	.L637
	.loc 1 2506 0
	incq	%rax
	.loc 1 2508 0
	movl	%ebp, %edx
	movslq	reg(%rip),%rcx
	.loc 1 2506 0
	movq	%rax, codep(%rip)
	.loc 1 2508 0
	movzbl	%dl, %eax 
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	0(,%rcx,8), %rax
	salq	$6, %rdx
	subq	%rcx, %rax
	leaq	float_reg-96768(%rdx,%rax,8), %rbx
	.loc 1 2509 0
	movq	(%rbx), %rdi
	testq	%rdi, %rdi
	jne	.L574
	.loc 1 2511 0
	movslq	16(%rbx),%rax
	movslq	rm(%rip),%rdx
	movl	%r12d, %esi
	leaq	(%rdx,%rax,8), %rax
	movq	fgrps(,%rax,8), %rdi
	call	putop
	.loc 1 2514 0
	cmpb	$-33, %bpl
	jne	.L579
	movq	codep(%rip), %rax
	cmpb	$-32, -1(%rax)
	jne	.L579
	.loc 1 2515 0
	movq	names16(%rip), %rax
	movl	$op1out, %edi
	movq	(%rax), %rsi
	call	strcpy
	jmp	.L579
	.p2align 4,,7
.L669:
.LBE29:
.LBE28:
.LBB30:
	.loc 1 2113 0
	movb	$1, %cl
	jmp	.L585
.L582:
	.loc 1 2106 0
	movslq	32(%rbx),%rax
	movslq	reg(%rip),%rcx
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	0(,%rcx,8), %rax
	salq	$6, %rdx
	subq	%rcx, %rax
	leaq	grps(%rdx,%rax,8), %rbx
	jmp	.L580
.L668:
.LBE30:
	.loc 1 1917 0
	cmpb	$54, 5(%r8)
	jne	.L486
	.loc 1 1918 0
	andl	$-2, 56(%rsp)
	jmp	.L471
.L667:
	.loc 1 2029 0
	movq	%rdx, %rdi
	call	fetch_data
	.p2align 4,,3
	jmp	.L548
.L664:
	.loc 1 2226 0
	movq	8(%rsp), %rax
	movq	8(%rsp), %rdx
	movl	$.LC803, %esi
	movq	8(%rax), %rdi
	xorl	%eax, %eax
	call	*(%rdx)
	jmp	.L614
.L665:
	.loc 1 2228 0
	cltq
	movq	8(%rsp), %rsi
	movq	op_address(,%rax,8), %rdi
	call	*96(%rsi)
	jmp	.L613
.L654:
	.loc 1 2074 0
	cmpl	$2, 16(%rbx)
	jne	.L559
	cmpb	$0, intel_syntax(%rip)
	.p2align 4,,4
	jne	.L559
	.loc 1 2078 0
	testb	$1, %r12b
	.loc 1 2079 0
	movl	$.LC800, %edi
	.loc 1 2078 0
	jne	.L631
	.loc 1 2081 0
	movl	$.LC801, %edi
.L631:
	call	oappend
	.loc 1 2082 0
	orl	$512, used_prefixes(%rip)
	jmp	.L559
	.p2align 4,,7
.L661:
	.loc 1 2208 0
	cltq
	movq	8(%rsp), %rsi
	movq	op_address(,%rax,8), %rdi
	call	*96(%rsi)
	jmp	.L608
.L662:
	.loc 1 2216 0
	movq	8(%rsp), %rax
	movq	8(%rsp), %rdx
	movl	$.LC803, %esi
	movq	8(%rax), %rdi
	xorl	%eax, %eax
	call	*(%rdx)
	jmp	.L610
.L663:
	.loc 1 2218 0
	cltq
	movq	8(%rsp), %rsi
	movq	op_address(,%rax,8), %rdi
	call	*96(%rsi)
	jmp	.L612
.L643:
	.loc 1 1910 0
	cmpb	$54, 5(%r8)
	jne	.L481
	.loc 1 1911 0
	andl	$-3, 56(%rsp)
	.p2align 4,,6
	jmp	.L471
.L574:
.LBB31:
.LBB32:
	.loc 1 2519 0
	movl	%r12d, %esi
	call	putop
	.loc 1 2521 0
	movq	$op1out, obufp(%rip)
	.loc 1 2522 0
	movq	8(%rbx), %rax
	testq	%rax, %rax
	je	.L577
	.loc 1 2523 0
	movl	16(%rbx), %edi
	movl	%r12d, %esi
	call	*%rax
.L577:
	.loc 1 2524 0
	movq	$op2out, obufp(%rip)
	.loc 1 2525 0
	movq	24(%rbx), %rax
	testq	%rax, %rax
	je	.L579
	.loc 1 2526 0
	movl	32(%rbx), %edi
.LBE32:
.LBE31:
.LBB33:
	.loc 1 2154 0
	movl	%r12d, %esi
	call	*%rax
	jmp	.L579
.L586:
	.loc 1 2121 0
	movl	%esi, %eax
	andl	$2, %eax
	orl	%eax, %edx
	.loc 1 2123 0
	testl	%eax, %eax
	cmovne	%edi, %ecx
	.loc 1 2121 0
	movl	%edx, used_prefixes(%rip)
	jmp	.L585
.L637:
.LBE33:
.LBB34:
.LBB35:
	.loc 1 2505 0
	call	abort
.LBE35:
.LBE34:
.LFE41:
	.size	print_insn, .-print_insn
	.p2align 4,,15
.globl print_insn_i386
	.type	print_insn_i386, @function
print_insn_i386:
.LFB40:
	.loc 1 1845 0
	.loc 1 1846 0
	movb	$-1, intel_syntax(%rip)
	.loc 1 1848 0
	jmp	print_insn
.LFE40:
	.size	print_insn_i386, .-print_insn_i386
	.p2align 4,,15
	.type	OP_G, @function
OP_G:
.LFB51:
	.loc 1 3224 0
	subq	$8, %rsp
.LCFI29:
	.loc 1 3226 0
	movl	rex(%rip), %edx
	.loc 1 3225 0
	xorl	%r8d, %r8d
	.loc 1 3226 0
	movl	rex_used(%rip), %ecx
	testb	$4, %dl
	je	.L675
	orl	$68, %ecx
	.loc 1 3228 0
	movb	$8, %r8b
.L675:
	.loc 1 3229 0
	cmpl	$5, %edi
	ja	.L693
	mov	%edi, %eax
	jmp	*.L694(,%rax,8)
	.section	.rodata
	.align 8
	.align 4
.L694:
	.quad	.L693
	.quad	.L678
	.quad	.L685
	.quad	.L682
	.quad	.L683
	.quad	.L684
	.text
	.p2align 4,,7
.L693:
	movl	%ecx, rex_used(%rip)
	.loc 1 3258 0
	movl	$.LC773, %edi
	.loc 1 3261 0
	addq	$8, %rsp
	.loc 1 3258 0
	jmp	oappend
.L684:
	.loc 1 3245 0
	addl	reg(%rip), %r8d
	movq	names64(%rip), %rdx
	movl	%ecx, rex_used(%rip)
	movslq	%r8d,%rax
	.p2align 4,,7
.L697:
	.loc 1 3236 0
	movq	(%rdx,%rax,8), %rdi
	.loc 1 3261 0
	addq	$8, %rsp
	.loc 1 3258 0
	jmp	oappend
.L678:
	.loc 1 3232 0
	orl	$64, %ecx
	.loc 1 3233 0
	testl	%edx, %edx
	.loc 1 3232 0
	movl	%ecx, rex_used(%rip)
	.loc 1 3233 0
	je	.L680
	.loc 1 3234 0
	addl	reg(%rip), %r8d
	movq	names8rex(%rip), %rdx
	movslq	%r8d,%rax
	jmp	.L697
.L685:
	.loc 1 3248 0
	movl	%ecx, %eax
	orl	$72, %eax
	andl	$8, %edx
	cmovne	%eax, %ecx
	movl	%ecx, rex_used(%rip)
	.loc 1 3249 0
	jne	.L698
	.loc 1 3251 0
	andl	$1, %esi
	jne	.L699
	.loc 1 3254 0
	addl	reg(%rip), %r8d
	movq	names16(%rip), %rdx
	movslq	%r8d,%rax
.L695:
	movq	(%rdx,%rax,8), %rdi
	call	oappend
	.loc 1 3255 0
	movl	prefixes(%rip), %eax
	andl	$512, %eax
	orl	%eax, used_prefixes(%rip)
	.loc 1 3261 0
	addq	$8, %rsp
	ret
.L682:
	.loc 1 3239 0
	addl	reg(%rip), %r8d
	movq	names16(%rip), %rdx
	movl	%ecx, rex_used(%rip)
	movslq	%r8d,%rax
	jmp	.L697
.L683:
	.loc 1 3242 0
	addl	reg(%rip), %r8d
	movq	names32(%rip), %rdx
	movl	%ecx, rex_used(%rip)
	movslq	%r8d,%rax
	jmp	.L697
.L680:
	.loc 1 3236 0
	addl	reg(%rip), %r8d
	movq	names8(%rip), %rdx
	movslq	%r8d,%rax
	jmp	.L697
.L699:
	.loc 1 3252 0
	addl	reg(%rip), %r8d
	movq	names32(%rip), %rdx
	movslq	%r8d,%rax
	jmp	.L695
.L698:
	.loc 1 3250 0
	addl	reg(%rip), %r8d
	movq	names64(%rip), %rdx
	movslq	%r8d,%rax
	jmp	.L695
.LFE51:
	.size	OP_G, .-OP_G
	.p2align 4,,15
	.type	get64, @function
get64:
.LFB52:
	.loc 1 3265 0
	subq	$8, %rsp
.LCFI30:
	.loc 1 3271 0
	movq	the_info(%rip), %rdi
	movq	codep(%rip), %rdx
	movq	72(%rdi), %rax
	leaq	8(%rdx), %rsi
	cmpq	(%rax), %rsi
	ja	.L703
.L702:
	.loc 1 3272 0
	movq	%rdx, %rcx
	movzbl	(%rdx), %eax
	incq	%rdx
	movq	%rdx, codep(%rip)
	.loc 1 3273 0
	movzbl	1(%rcx), %edx
	sall	$8, %edx
	orl	%edx, %eax
	leaq	2(%rcx), %rdx
	movq	%rdx, codep(%rip)
	.loc 1 3274 0
	movzbl	2(%rcx), %edx
	sall	$16, %edx
	orl	%edx, %eax
	leaq	3(%rcx), %rdx
	movq	%rdx, codep(%rip)
	.loc 1 3275 0
	movzbl	3(%rcx), %edx
	sall	$24, %edx
	orl	%edx, %eax
	leaq	4(%rcx), %rdx
	.loc 1 3280 0
	mov	%eax, %eax
	.loc 1 3275 0
	movq	%rdx, codep(%rip)
	.loc 1 3276 0
	leaq	5(%rcx), %rdx
	movzbl	4(%rcx), %esi
	movq	%rdx, codep(%rip)
	.loc 1 3277 0
	movzbl	5(%rcx), %edx
	sall	$8, %edx
	orl	%edx, %esi
	leaq	6(%rcx), %rdx
	movq	%rdx, codep(%rip)
	.loc 1 3278 0
	movzbl	6(%rcx), %edx
	sall	$16, %edx
	orl	%edx, %esi
	leaq	7(%rcx), %rdx
	movq	%rdx, codep(%rip)
	.loc 1 3279 0
	movzbl	7(%rcx), %edx
	addq	$8, %rcx
	movq	%rcx, codep(%rip)
	.loc 1 3286 0
	addq	$8, %rsp
	.loc 1 3279 0
	sall	$24, %edx
	orl	%edx, %esi
	.loc 1 3280 0
	salq	$32, %rsi
	addq	%rsi, %rax
	.loc 1 3286 0
	ret
	.p2align 4,,7
.L703:
	.loc 1 3271 0
	call	fetch_data
	movq	codep(%rip), %rdx
	jmp	.L702
.LFE52:
	.size	get64, .-get64
	.p2align 4,,15
	.type	get32, @function
get32:
.LFB53:
	.loc 1 3290 0
	subq	$8, %rsp
.LCFI31:
	.loc 1 3293 0
	movq	the_info(%rip), %rdi
	movq	codep(%rip), %rdx
	movq	72(%rdi), %rax
	leaq	4(%rdx), %rsi
	cmpq	(%rax), %rsi
	ja	.L707
.L706:
	.loc 1 3294 0
	movq	%rdx, %rcx
	movzbq	(%rdx), %rax
	incq	%rdx
	movq	%rdx, codep(%rip)
	.loc 1 3295 0
	movzbq	1(%rcx), %rdx
	salq	$8, %rdx
	orq	%rdx, %rax
	leaq	2(%rcx), %rdx
	movq	%rdx, codep(%rip)
	.loc 1 3296 0
	movzbq	2(%rcx), %rdx
	salq	$16, %rdx
	orq	%rdx, %rax
	leaq	3(%rcx), %rdx
	movq	%rdx, codep(%rip)
	.loc 1 3297 0
	movzbq	3(%rcx), %rdx
	addq	$4, %rcx
	movq	%rcx, codep(%rip)
	.loc 1 3299 0
	addq	$8, %rsp
	.loc 1 3297 0
	salq	$24, %rdx
	orq	%rdx, %rax
	.loc 1 3299 0
	ret
	.p2align 4,,7
.L707:
	.loc 1 3293 0
	call	fetch_data
	movq	codep(%rip), %rdx
	jmp	.L706
.LFE53:
	.size	get32, .-get32
	.section	.rodata.str1.1
.LC805:
	.string	"[dx]"
.LC806:
	.string	"(%dx)"
	.text
	.p2align 4,,15
	.type	OP_REG, @function
OP_REG:
.LFB57:
	.loc 1 3351 0
	.loc 1 3354 0
	movl	rex(%rip), %edx
	.loc 1 3353 0
	xorl	%r8d, %r8d
	.loc 1 3354 0
	movl	rex_used(%rip), %ecx
	testb	$1, %dl
	je	.L712
	orl	$65, %ecx
	.loc 1 3356 0
	movb	$8, %r8b
.L712:
	.loc 1 3358 0
	leal	-100(%rdi), %eax
	cmpl	$50, %eax
	ja	.L767
	mov	%eax, %eax
	jmp	*.L768(,%rax,8)
	.section	.rodata
	.align 8
	.align 4
.L768:
	.quad	.L730
	.quad	.L730
	.quad	.L730
	.quad	.L730
	.quad	.L730
	.quad	.L730
	.quad	.L767
	.quad	.L767
	.quad	.L759
	.quad	.L759
	.quad	.L759
	.quad	.L759
	.quad	.L759
	.quad	.L759
	.quad	.L759
	.quad	.L759
	.quad	.L739
	.quad	.L739
	.quad	.L739
	.quad	.L739
	.quad	.L739
	.quad	.L739
	.quad	.L739
	.quad	.L739
	.quad	.L724
	.quad	.L724
	.quad	.L724
	.quad	.L724
	.quad	.L724
	.quad	.L724
	.quad	.L724
	.quad	.L724
	.quad	.L750
	.quad	.L750
	.quad	.L750
	.quad	.L750
	.quad	.L750
	.quad	.L750
	.quad	.L750
	.quad	.L750
	.quad	.L767
	.quad	.L767
	.quad	.L767
	.quad	.L767
	.quad	.L767
	.quad	.L767
	.quad	.L767
	.quad	.L767
	.quad	.L767
	.quad	.L767
	.quad	.L714
	.text
	.p2align 4,,7
.L767:
	.loc 1 3403 0
	movl	$.LC773, %edi
	movl	%ecx, rex_used(%rip)
	.loc 1 3406 0
	jmp	oappend
.L750:
	.loc 1 3384 0
	movl	mode_64bit(%rip), %r9d
	testl	%r9d, %r9d
	jne	.L770
	.loc 1 3389 0
	subl	$24, %edi
.L759:
	.loc 1 3393 0
	movl	%ecx, %eax
	orl	$72, %eax
	andl	$8, %edx
	cmovne	%eax, %ecx
	movl	%ecx, rex_used(%rip)
	.loc 1 3394 0
	je	.L763
	.loc 1 3395 0
	leal	(%rdi,%r8), %eax
	movq	names64(%rip), %rdx
	cltq
.L769:
	.loc 1 3399 0
	movq	-864(%rdx,%rax,8), %rdi
	.loc 1 3400 0
	movl	prefixes(%rip), %eax
	andl	$512, %eax
	orl	%eax, used_prefixes(%rip)
	.loc 1 3406 0
	jmp	oappend
.L739:
	.loc 1 3376 0
	orl	$64, %ecx
	.loc 1 3377 0
	testl	%edx, %edx
	.loc 1 3376 0
	movl	%ecx, rex_used(%rip)
	.loc 1 3377 0
	je	.L741
	.loc 1 3378 0
	leal	(%rdi,%r8), %eax
	movq	names8rex(%rip), %rdx
	cltq
	movq	-928(%rdx,%rax,8), %rdi
	.loc 1 3406 0
	jmp	oappend
.L724:
	.loc 1 3368 0
	leal	(%rdi,%r8), %eax
	movq	names16(%rip), %rdx
	movl	%ecx, rex_used(%rip)
	cltq
	movq	-992(%rdx,%rax,8), %rdi
	.loc 1 3406 0
	jmp	oappend
.L714:
	.loc 1 3362 0
	cmpb	$0, intel_syntax(%rip)
	movl	$.LC805, %edi
	movl	$.LC806, %eax
	movl	%ecx, rex_used(%rip)
	cmove	%rax, %rdi
	.loc 1 3406 0
	jmp	oappend
.L730:
	.loc 1 3372 0
	leal	(%rdi,%r8), %eax
	movq	names_seg(%rip), %rdx
	movl	%ecx, rex_used(%rip)
	cltq
	movq	-800(%rdx,%rax,8), %rdi
	.loc 1 3406 0
	jmp	oappend
.L763:
	.loc 1 3396 0
	andl	$1, %esi
	je	.L765
	.loc 1 3397 0
	leal	(%rdi,%r8), %eax
	movq	names32(%rip), %rdx
	cltq
	jmp	.L769
.L770:
	.loc 1 3386 0
	leal	(%rdi,%r8), %eax
	movq	names64(%rip), %rdx
	movl	%ecx, rex_used(%rip)
	cltq
	movq	-1056(%rdx,%rax,8), %rdi
	.loc 1 3406 0
	jmp	oappend
.L741:
	.loc 1 3380 0
	movq	names8(%rip), %rax
	movslq	%edi,%rdx
	movq	-928(%rax,%rdx,8), %rdi
	.loc 1 3406 0
	jmp	oappend
.L765:
	.loc 1 3399 0
	leal	(%rdi,%r8), %eax
	movq	names16(%rip), %rdx
	cltq
	jmp	.L769
.LFE57:
	.size	OP_REG, .-OP_REG
	.p2align 4,,15
	.type	OP_IMREG, @function
OP_IMREG:
.LFB58:
	.loc 1 3413 0
	.loc 1 3416 0
	leal	-100(%rdi), %eax
	cmpl	$50, %eax
	ja	.L817
	mov	%eax, %eax
	jmp	*.L818(,%rax,8)
	.section	.rodata
	.align 8
	.align 4
.L818:
	.quad	.L789
	.quad	.L789
	.quad	.L789
	.quad	.L789
	.quad	.L789
	.quad	.L789
	.quad	.L817
	.quad	.L817
	.quad	.L809
	.quad	.L809
	.quad	.L809
	.quad	.L809
	.quad	.L809
	.quad	.L809
	.quad	.L809
	.quad	.L809
	.quad	.L798
	.quad	.L798
	.quad	.L798
	.quad	.L798
	.quad	.L798
	.quad	.L798
	.quad	.L798
	.quad	.L798
	.quad	.L783
	.quad	.L783
	.quad	.L783
	.quad	.L783
	.quad	.L783
	.quad	.L783
	.quad	.L783
	.quad	.L783
	.quad	.L817
	.quad	.L817
	.quad	.L817
	.quad	.L817
	.quad	.L817
	.quad	.L817
	.quad	.L817
	.quad	.L817
	.quad	.L817
	.quad	.L817
	.quad	.L817
	.quad	.L817
	.quad	.L817
	.quad	.L817
	.quad	.L817
	.quad	.L817
	.quad	.L817
	.quad	.L817
	.quad	.L773
	.text
	.p2align 4,,7
.L817:
	.loc 1 3452 0
	movl	$.LC773, %edi
	.loc 1 3455 0
	jmp	oappend
.L773:
	.loc 1 3420 0
	cmpb	$0, intel_syntax(%rip)
	movl	$.LC805, %edi
	movl	$.LC806, %eax
	cmove	%rax, %rdi
	.loc 1 3455 0
	jmp	oappend
.L789:
	.loc 1 3430 0
	movq	names_seg(%rip), %rax
	movslq	%edi,%rdx
	movq	-800(%rax,%rdx,8), %rdi
	.loc 1 3455 0
	jmp	oappend
.L809:
	.loc 1 3442 0
	testb	$8, rex(%rip)
	movl	rex_used(%rip), %eax
	jne	.L821
	.loc 1 3445 0
	andl	$1, %esi
	je	.L815
	.loc 1 3446 0
	movq	names32(%rip), %rax
	movslq	%edi,%rdx
	.p2align 4,,7
.L819:
	.loc 1 3448 0
	movq	-864(%rax,%rdx,8), %rdi
	.loc 1 3449 0
	movl	prefixes(%rip), %eax
	andl	$512, %eax
	orl	%eax, used_prefixes(%rip)
	.loc 1 3455 0
	jmp	oappend
.L798:
	.loc 1 3435 0
	movl	rex(%rip), %r10d
	.loc 1 3434 0
	orl	$64, rex_used(%rip)
	.loc 1 3435 0
	testl	%r10d, %r10d
	jne	.L822
	.loc 1 3438 0
	movq	names8(%rip), %rax
	movslq	%edi,%rdx
.L820:
	movq	-928(%rax,%rdx,8), %rdi
	.loc 1 3455 0
	jmp	oappend
.L783:
	.loc 1 3426 0
	movq	names16(%rip), %rax
	movslq	%edi,%rdx
	movq	-992(%rax,%rdx,8), %rdi
	.loc 1 3455 0
	jmp	oappend
.L821:
	.loc 1 3442 0
	orl	$72, %eax
	.loc 1 3444 0
	movslq	%edi,%rdx
	.loc 1 3442 0
	movl	%eax, rex_used(%rip)
	.loc 1 3444 0
	movq	names64(%rip), %rax
	jmp	.L819
.L822:
	.loc 1 3436 0
	movq	names8rex(%rip), %rax
	movslq	%edi,%rdx
	jmp	.L820
.L815:
	.loc 1 3448 0
	movq	names16(%rip), %rax
	movslq	%edi,%rdx
	jmp	.L819
.LFE58:
	.size	OP_IMREG, .-OP_IMREG
	.p2align 4,,15
	.type	OP_I, @function
OP_I:
.LFB59:
	.loc 1 3462 0
	.loc 1 3466 0
	cmpl	$2, %edi
	.loc 1 3462 0
	pushq	%rbx
.LCFI32:
	.loc 1 3464 0
	movq	$-1, %rbx
	.loc 1 3466 0
	je	.L830
	jle	.L841
	cmpl	$3, %edi
	je	.L838
	cmpl	$5, %edi
	.p2align 4,,7
	je	.L828
.L839:
	.loc 1 3510 0
	popq	%rbx
	.loc 1 3501 0
	movl	$.LC773, %edi
	jmp	oappend
	.p2align 4,,7
.L841:
	.loc 1 3466 0
	decl	%edi
	jne	.L839
	.loc 1 3469 0
	movq	the_info(%rip), %rdi
	movq	codep(%rip), %rcx
	movq	72(%rdi), %rax
	leaq	1(%rcx), %rsi
	cmpq	(%rax), %rsi
	ja	.L842
.L827:
	.loc 1 3470 0
	movzbq	(%rcx), %rdx
	leaq	1(%rcx), %rax
	.loc 1 3471 0
	movl	$255, %ebx
	.loc 1 3470 0
	movq	%rax, codep(%rip)
	jmp	.L824
.L828:
	.loc 1 3474 0
	movl	mode_64bit(%rip), %r11d
	testl	%r11d, %r11d
	jne	.L843
	.p2align 4,,7
.L830:
	.loc 1 3481 0
	testb	$8, rex(%rip)
	movl	rex_used(%rip), %eax
	jne	.L844
	.loc 1 3484 0
	andl	$1, %esi
	je	.L836
	.loc 1 3486 0
	call	get32
	.loc 1 3487 0
	movl	$4294967295, %ebx
	.loc 1 3486 0
	movq	%rax, %rdx
	.p2align 4,,7
.L835:
	.loc 1 3494 0
	movl	prefixes(%rip), %eax
	andl	$512, %eax
	orl	%eax, used_prefixes(%rip)
.L824:
	.loc 1 3505 0
	andq	%rbx, %rdx
	.loc 1 3507 0
	movl	$1, %esi
	movq	$scratchbuf+1, %rdi
	.loc 1 3506 0
	movb	$36, scratchbuf(%rip)
	.loc 1 3507 0
	call	print_operand_value
	.loc 1 3508 0
	movsbq	intel_syntax(%rip),%rdi
	addq	$scratchbuf, %rdi
	call	oappend
	.loc 1 3510 0
	popq	%rbx
	.loc 1 3509 0
	movb	$0, scratchbuf(%rip)
	.loc 1 3510 0
	ret
	.p2align 4,,7
.L844:
	.loc 1 3481 0
	orl	$72, %eax
	movl	%eax, rex_used(%rip)
	.loc 1 3483 0
	call	get32s
	movq	%rax, %rdx
	jmp	.L835
	.p2align 4,,7
.L836:
	.loc 1 3491 0
	call	get16
	.loc 1 3492 0
	movl	$1048575, %ebx
	.loc 1 3491 0
	movslq	%eax,%rdx
	.p2align 4,,2
	jmp	.L835
.L838:
	.loc 1 3498 0
	call	get16
	.loc 1 3497 0
	movl	$1048575, %ebx
	.loc 1 3498 0
	movslq	%eax,%rdx
	jmp	.L824
.L843:
	.loc 1 3476 0
	call	get32s
	movq	%rax, %rdx
	.p2align 4,,2
	jmp	.L824
.L842:
	.loc 1 3469 0
	.p2align 4,,6
	call	fetch_data
	movq	codep(%rip), %rcx
	jmp	.L827
.LFE59:
	.size	OP_I, .-OP_I
	.p2align 4,,15
	.type	OP_I64, @function
OP_I64:
.LFB60:
	.loc 1 3516 0
	.loc 1 3520 0
	movl	mode_64bit(%rip), %eax
	.loc 1 3516 0
	pushq	%rbx
.LCFI33:
	.loc 1 3518 0
	movq	$-1, %rbx
	.loc 1 3520 0
	testl	%eax, %eax
	je	.L862
	.loc 1 3526 0
	cmpl	$2, %edi
	je	.L851
	jg	.L861
	decl	%edi
	.p2align 4,,8
	jne	.L860
	.loc 1 3529 0
	movq	the_info(%rip), %rdi
	movq	codep(%rip), %rcx
	movq	72(%rdi), %rax
	leaq	1(%rcx), %rsi
	cmpq	(%rax), %rsi
	ja	.L863
.L850:
	.loc 1 3530 0
	movzbq	(%rcx), %rdx
	leaq	1(%rcx), %rax
	.loc 1 3531 0
	movl	$255, %ebx
	.loc 1 3530 0
	movq	%rax, codep(%rip)
	jmp	.L847
	.p2align 4,,7
.L862:
	.loc 1 3563 0
	popq	%rbx
	.loc 1 3522 0
	jmp	OP_I
	.p2align 4,,7
.L861:
	.loc 1 3526 0
	cmpl	$3, %edi
	je	.L859
.L860:
	.loc 1 3563 0
	popq	%rbx
	.loc 1 3554 0
	movl	$.LC773, %edi
	jmp	oappend
	.p2align 4,,7
.L851:
	.loc 1 3534 0
	testb	$8, rex(%rip)
	movl	rex_used(%rip), %eax
	je	.L855
	orl	$72, %eax
	movl	%eax, rex_used(%rip)
	.loc 1 3536 0
	call	get64
	movq	%rax, %rdx
.L856:
	.loc 1 3547 0
	movl	prefixes(%rip), %eax
	andl	$512, %eax
	orl	%eax, used_prefixes(%rip)
.L847:
	.loc 1 3558 0
	andq	%rbx, %rdx
	.loc 1 3560 0
	movl	$1, %esi
	movq	$scratchbuf+1, %rdi
	.loc 1 3559 0
	movb	$36, scratchbuf(%rip)
	.loc 1 3560 0
	call	print_operand_value
	.loc 1 3561 0
	movsbq	intel_syntax(%rip),%rdi
	addq	$scratchbuf, %rdi
	call	oappend
	.loc 1 3563 0
	popq	%rbx
	.loc 1 3562 0
	movb	$0, scratchbuf(%rip)
	.loc 1 3563 0
	ret
.L855:
	.loc 1 3537 0
	andl	$1, %esi
	je	.L857
	.loc 1 3539 0
	call	get32
	.loc 1 3540 0
	movl	$4294967295, %ebx
	.loc 1 3539 0
	movq	%rax, %rdx
	.p2align 4,,2
	jmp	.L856
.L857:
	.loc 1 3544 0
	call	get16
	.loc 1 3545 0
	movl	$1048575, %ebx
	.loc 1 3544 0
	movslq	%eax,%rdx
	jmp	.L856
.L863:
	.loc 1 3529 0
	call	fetch_data
	movq	codep(%rip), %rcx
	jmp	.L850
.L859:
	.loc 1 3551 0
	call	get16
	.loc 1 3550 0
	movl	$1048575, %ebx
	.loc 1 3551 0
	movslq	%eax,%rdx
	jmp	.L847
.LFE60:
	.size	OP_I64, .-OP_I64
	.p2align 4,,15
	.type	OP_sI, @function
OP_sI:
.LFB61:
	.loc 1 3569 0
	subq	$8, %rsp
.LCFI34:
	.loc 1 3573 0
	cmpl	$2, %edi
	je	.L870
	jg	.L882
	decl	%edi
	je	.L866
.L881:
	.loc 1 3607 0
	movl	$.LC773, %edi
	.loc 1 3614 0
	addq	$8, %rsp
	.loc 1 3613 0
	jmp	oappend
	.p2align 4,,7
.L882:
	.loc 1 3573 0
	cmpl	$3, %edi
	jne	.L881
	.loc 1 3601 0
	call	get16
	movslq	%eax,%rdx
	.loc 1 3603 0
	testw	%dx, %dx
	.p2align 4,,2
	jns	.L865
	.loc 1 3604 0
	subq	$65536, %rdx
	.p2align 4,,2
	jmp	.L865
	.p2align 4,,7
.L870:
	.loc 1 3583 0
	testb	$8, rex(%rip)
	movl	rex_used(%rip), %eax
	jne	.L885
	.loc 1 3586 0
	andl	$1, %esi
	je	.L876
.L883:
	.loc 1 3588 0
	call	get32s
	movq	%rax, %rdx
.L875:
	.loc 1 3598 0
	movl	prefixes(%rip), %eax
	andl	$512, %eax
	orl	%eax, used_prefixes(%rip)
.L865:
	.loc 1 3612 0
	movq	$scratchbuf+1, %rdi
	movl	$1, %esi
	.loc 1 3611 0
	movb	$36, scratchbuf(%rip)
	.loc 1 3612 0
	call	print_operand_value
	.loc 1 3613 0
	movsbq	intel_syntax(%rip),%rdi
	.loc 1 3614 0
	addq	$8, %rsp
	.loc 1 3613 0
	addq	$scratchbuf, %rdi
	jmp	oappend
	.p2align 4,,7
.L885:
	.loc 1 3583 0
	orl	$72, %eax
	movl	%eax, rex_used(%rip)
	jmp	.L883
	.p2align 4,,7
.L866:
	.loc 1 3576 0
	movq	the_info(%rip), %rdi
	movq	codep(%rip), %rcx
	movq	72(%rdi), %rax
	leaq	1(%rcx), %rsi
	cmpq	(%rax), %rsi
	ja	.L886
.L868:
	.loc 1 3577 0
	movzbq	(%rcx), %rdx
	leaq	1(%rcx), %rax
	movq	%rax, codep(%rip)
	.loc 1 3578 0
	testb	%dl, %dl
	jns	.L865
	.loc 1 3579 0
	subq	$256, %rdx
	jmp	.L865
	.p2align 4,,7
.L876:
	.loc 1 3594 0
	call	get16
	movslq	%eax,%rdx
	.loc 1 3596 0
	leaq	-65536(%rdx), %rax
	testw	%dx, %dx
	cmovs	%rax, %rdx
	jmp	.L875
.L886:
	.loc 1 3576 0
	call	fetch_data
	movq	codep(%rip), %rcx
	jmp	.L868
.LFE61:
	.size	OP_sI, .-OP_sI
	.p2align 4,,15
	.type	OP_J, @function
OP_J:
.LFB62:
	.loc 1 3620 0
	movq	%rbp, -8(%rsp)
.LCFI35:
	movq	%rbx, -16(%rsp)
.LCFI36:
	subq	$24, %rsp
.LCFI37:
	.loc 1 3624 0
	cmpl	$1, %edi
	.loc 1 3622 0
	movq	$-1, %rbp
	.loc 1 3624 0
	je	.L889
	cmpl	$2, %edi
	je	.L893
	.loc 1 3652 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	.loc 1 3645 0
	movl	$.LC773, %edi
	.loc 1 3652 0
	addq	$24, %rsp
	.loc 1 3651 0
	jmp	oappend
	.p2align 4,,7
.L889:
	.loc 1 3627 0
	movq	the_info(%rip), %rdi
	movq	codep(%rip), %rdx
	movq	72(%rdi), %rax
	leaq	1(%rdx), %rsi
	cmpq	(%rax), %rsi
	ja	.L899
.L891:
	.loc 1 3628 0
	movzbq	(%rdx), %rbx
	incq	%rdx
	movq	%rdx, codep(%rip)
	.loc 1 3629 0
	testb	%bl, %bl
	jns	.L888
	.loc 1 3630 0
	subq	$256, %rbx
	.p2align 4,,7
.L888:
	.loc 1 3648 0
	addq	start_pc(%rip), %rdx
	.loc 1 3649 0
	xorl	%esi, %esi
	.loc 1 3648 0
	subq	start_codep(%rip), %rdx
	leaq	(%rdx,%rbx), %rbx
	andq	%rbp, %rbx
	.loc 1 3649 0
	movq	%rbx, %rdi
	call	set_op
	.loc 1 3650 0
	movq	%rbx, %rdx
	movl	$scratchbuf, %edi
	movl	$1, %esi
	call	print_operand_value
	.loc 1 3652 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	.loc 1 3651 0
	movl	$scratchbuf, %edi
	.loc 1 3652 0
	addq	$24, %rsp
	.loc 1 3651 0
	jmp	oappend
	.p2align 4,,7
.L893:
	.loc 1 3633 0
	andl	$1, %esi
	jne	.L900
	.loc 1 3637 0
	call	get16
	.loc 1 3641 0
	movl	$65535, %ebp
	.loc 1 3637 0
	movslq	%eax,%rbx
.L897:
	movq	codep(%rip), %rdx
	jmp	.L888
	.p2align 4,,7
.L900:
	.loc 1 3634 0
	call	get32s
	movq	%rax, %rbx
	jmp	.L897
.L899:
	.loc 1 3627 0
	.p2align 4,,6
	call	fetch_data
	movq	codep(%rip), %rdx
	jmp	.L891
.LFE62:
	.size	OP_J, .-OP_J
	.p2align 4,,15
	.type	OP_SEG, @function
OP_SEG:
.LFB63:
	.loc 1 3658 0
	.loc 1 3659 0
	movslq	reg(%rip),%rax
	movq	names_seg(%rip), %rdx
	movq	(%rdx,%rax,8), %rdi
	jmp	oappend
.LFE63:
	.size	OP_SEG, .-OP_SEG
	.section	.rodata.str1.1
.LC807:
	.string	"0x%x,0x%x"
.LC808:
	.string	"$0x%x,$0x%x"
	.text
	.p2align 4,,15
	.type	OP_DIR, @function
OP_DIR:
.LFB64:
	.loc 1 3666 0
	.loc 1 3669 0
	andl	$1, %esi
	.loc 1 3666 0
	pushq	%rbx
.LCFI38:
	.loc 1 3669 0
	je	.L903
	.loc 1 3671 0
	call	get32
.L907:
	.loc 1 3676 0
	movl	%eax, %ebx
	.loc 1 3677 0
	call	get16
	movl	%eax, %edx
	.loc 1 3679 0
	movl	prefixes(%rip), %eax
	.loc 1 3681 0
	movl	%ebx, %ecx
	movl	$.LC807, %esi
	.loc 1 3679 0
	andl	$512, %eax
	orl	%eax, used_prefixes(%rip)
	.loc 1 3680 0
	cmpb	$0, intel_syntax(%rip)
	jne	.L908
	.loc 1 3683 0
	movl	%ebx, %ecx
	movl	$.LC808, %esi
.L908:
	movl	$scratchbuf, %edi
	xorl	%eax, %eax
	call	sprintf
	.loc 1 3684 0
	popq	%rbx
	movl	$scratchbuf, %edi
	jmp	oappend
	.p2align 4,,7
.L903:
	.loc 1 3676 0
	call	get16
	jmp	.L907
.LFE64:
	.size	OP_DIR, .-OP_DIR
	.p2align 4,,15
	.type	OP_OFF64, @function
OP_OFF64:
.LFB66:
	.loc 1 3718 0
	.loc 1 3721 0
	movl	mode_64bit(%rip), %eax
	.loc 1 3718 0
	pushq	%rbx
.LCFI39:
	.loc 1 3718 0
	movl	%esi, %ebx
	.loc 1 3721 0
	testl	%eax, %eax
	jne	.L910
.LBB36:
.LBB37:
	.loc 1 3694 0
	call	append_seg
	.loc 1 3696 0
	andl	$2, %ebx
	jne	.L912
	movl	mode_64bit(%rip), %eax
	testl	%eax, %eax
	je	.L911
.L912:
	.loc 1 3697 0
	call	get32
	jmp	.L922
	.p2align 4,,7
.L910:
.LBE37:
.LBE36:
	.loc 1 3727 0
	.p2align 4,,8
	call	append_seg
	.loc 1 3729 0
	.p2align 4,,8
	call	get64
.L922:
	movq	%rax, %rbx
.L921:
	.loc 1 3731 0
	cmpb	$0, intel_syntax(%rip)
	jne	.L923
.L917:
	.loc 1 3740 0
	movq	%rbx, %rdx
	movl	$scratchbuf, %edi
	movl	$1, %esi
	call	print_operand_value
	.loc 1 3742 0
	popq	%rbx
	.loc 1 3741 0
	movl	$scratchbuf, %edi
	jmp	oappend
	.p2align 4,,7
.L923:
	.loc 1 3733 0
	testl	$504, prefixes(%rip)
	jne	.L917
	.loc 1 3736 0
	movq	names_seg(%rip), %rax
	movq	24(%rax), %rdi
	call	oappend
	.loc 1 3737 0
	movl	$.LC782, %edi
	call	oappend
	.loc 1 3740 0
	movq	%rbx, %rdx
	movl	$scratchbuf, %edi
	movl	$1, %esi
	call	print_operand_value
	.loc 1 3742 0
	popq	%rbx
	.loc 1 3741 0
	movl	$scratchbuf, %edi
	jmp	oappend
	.p2align 4,,7
.L911:
.LBB38:
.LBB39:
	.loc 1 3699 0
	call	get16
	movslq	%eax,%rbx
	jmp	.L921
.LBE39:
.LBE38:
.LFE66:
	.size	OP_OFF64, .-OP_OFF64
	.section	.rodata.str1.1
.LC809:
	.string	"["
.LC810:
	.string	"("
.LC811:
	.string	"]"
.LC812:
	.string	")"
	.text
	.p2align 4,,15
	.type	ptr_reg, @function
ptr_reg:
.LFB67:
	.loc 1 3748 0
	pushq	%rbp
.LCFI40:
	movl	%esi, %ebp
	pushq	%rbx
.LCFI41:
	movl	%edi, %ebx
	.loc 1 3751 0
	movl	$.LC809, %edi
	.loc 1 3748 0
	subq	$8, %rsp
.LCFI42:
	.loc 1 3750 0
	cmpb	$0, intel_syntax(%rip)
	jne	.L938
	.loc 1 3753 0
	movl	$.LC810, %edi
.L938:
	call	oappend
	.loc 1 3755 0
	testb	$8, rex(%rip)
	movl	rex_used(%rip), %eax
	je	.L930
	orl	$72, %eax
	.loc 1 3758 0
	andl	$2, %ebp
	.loc 1 3755 0
	movl	%eax, rex_used(%rip)
	.loc 1 3758 0
	jne	.L942
.L941:
	.loc 1 3764 0
	movq	names32(%rip), %rax
	movslq	%ebx,%rdx
.L939:
	.loc 1 3766 0
	movq	-864(%rax,%rdx,8), %rdi
	.loc 1 3767 0
	call	oappend
	.loc 1 3768 0
	cmpb	$0, intel_syntax(%rip)
	.loc 1 3769 0
	movl	$.LC811, %edi
	.loc 1 3768 0
	je	.L943
.L940:
	.loc 1 3772 0
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	.loc 1 3771 0
	jmp	oappend
	.p2align 4,,7
.L930:
	.loc 1 3763 0
	andl	$2, %ebp
	jne	.L941
	.loc 1 3766 0
	movq	names16(%rip), %rax
	movslq	%ebx,%rdx
	movq	-864(%rax,%rdx,8), %rdi
	.loc 1 3767 0
	call	oappend
	.loc 1 3768 0
	cmpb	$0, intel_syntax(%rip)
	.loc 1 3769 0
	movl	$.LC811, %edi
	.loc 1 3768 0
	jne	.L940
.L943:
	.loc 1 3772 0
	addq	$8, %rsp
	.loc 1 3771 0
	movl	$.LC812, %edi
	.loc 1 3772 0
	popq	%rbx
	popq	%rbp
	.loc 1 3771 0
	jmp	oappend
	.p2align 4,,7
.L942:
	.loc 1 3761 0
	movq	names64(%rip), %rax
	movslq	%ebx,%rdx
	jmp	.L939
.LFE67:
	.size	ptr_reg, .-ptr_reg
	.p2align 4,,15
	.type	OP_ESreg, @function
OP_ESreg:
.LFB68:
	.loc 1 3778 0
	movq	%rbx, -16(%rsp)
.LCFI43:
	movq	%r12, -8(%rsp)
.LCFI44:
	subq	$24, %rsp
.LCFI45:
	.loc 1 3778 0
	movl	%edi, %r12d
	.loc 1 3779 0
	movsbq	intel_syntax(%rip),%rdi
	.loc 1 3778 0
	movl	%esi, %ebx
	.loc 1 3779 0
	addq	$.LC767, %rdi
	call	oappend
	.loc 1 3780 0
	movl	%ebx, %esi
	movl	%r12d, %edi
	movq	8(%rsp), %rbx
	movq	16(%rsp), %r12
	addq	$24, %rsp
	jmp	ptr_reg
.LFE68:
	.size	OP_ESreg, .-OP_ESreg
	.p2align 4,,15
	.type	OP_DSreg, @function
OP_DSreg:
.LFB69:
	.loc 1 3787 0
	movq	%rbx, -16(%rsp)
.LCFI46:
	movq	%rbp, -8(%rsp)
.LCFI47:
	subq	$24, %rsp
.LCFI48:
	.loc 1 3788 0
	movl	prefixes(%rip), %eax
	.loc 1 3787 0
	movl	%edi, %ebp
	movl	%esi, %ebx
	.loc 1 3788 0
	testl	$504, %eax
	jne	.L946
	.loc 1 3795 0
	orl	$32, %eax
	movl	%eax, prefixes(%rip)
.L946:
	.loc 1 3796 0
	call	append_seg
	.loc 1 3797 0
	movl	%ebx, %esi
	movl	%ebp, %edi
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	addq	$24, %rsp
	jmp	ptr_reg
.LFE69:
	.size	OP_DSreg, .-OP_DSreg
	.section	.rodata.str1.1
.LC813:
	.string	"%%cr%d"
	.text
	.p2align 4,,15
	.type	OP_C, @function
OP_C:
.LFB70:
	.loc 1 3804 0
	subq	$8, %rsp
.LCFI49:
	.loc 1 3805 0
	xorl	%edx, %edx
	.loc 1 3806 0
	testb	$4, rex(%rip)
	movl	rex_used(%rip), %eax
	je	.L951
	orl	$68, %eax
	.loc 1 3808 0
	movb	$8, %dl
	.loc 1 3806 0
	movl	%eax, rex_used(%rip)
.L951:
	.loc 1 3809 0
	addl	reg(%rip), %edx
	movl	$scratchbuf, %edi
	movl	$.LC813, %esi
	xorl	%eax, %eax
	call	sprintf
	.loc 1 3810 0
	movsbq	intel_syntax(%rip),%rdi
	addq	$8, %rsp
	addq	$scratchbuf, %rdi
	jmp	oappend
.LFE70:
	.size	OP_C, .-OP_C
	.section	.rodata.str1.1
.LC814:
	.string	"db%d"
.LC815:
	.string	"%%db%d"
	.text
	.p2align 4,,15
	.type	OP_D, @function
OP_D:
.LFB71:
	.loc 1 3817 0
	subq	$8, %rsp
.LCFI50:
	.loc 1 3818 0
	xorl	%edx, %edx
	.loc 1 3819 0
	testb	$4, rex(%rip)
	movl	rex_used(%rip), %eax
	je	.L956
	orl	$68, %eax
	.loc 1 3821 0
	movb	$8, %dl
	.loc 1 3819 0
	movl	%eax, rex_used(%rip)
.L956:
	.loc 1 3822 0
	cmpb	$0, intel_syntax(%rip)
	je	.L957
	.loc 1 3823 0
	addl	reg(%rip), %edx
	.loc 1 3825 0
	movl	$scratchbuf, %edi
	.loc 1 3823 0
	movl	$.LC814, %esi
	.loc 1 3825 0
	xorl	%eax, %eax
	call	sprintf
	.loc 1 3826 0
	movl	$scratchbuf, %edi
	addq	$8, %rsp
	jmp	oappend
	.p2align 4,,7
.L957:
	.loc 1 3825 0
	addl	reg(%rip), %edx
	movl	$scratchbuf, %edi
	movl	$.LC815, %esi
	xorl	%eax, %eax
	call	sprintf
	.loc 1 3826 0
	movl	$scratchbuf, %edi
	addq	$8, %rsp
	jmp	oappend
.LFE71:
	.size	OP_D, .-OP_D
	.section	.rodata.str1.1
.LC816:
	.string	"%%tr%d"
	.text
	.p2align 4,,15
	.type	OP_T, @function
OP_T:
.LFB72:
	.loc 1 3833 0
	subq	$8, %rsp
.LCFI51:
	.loc 1 3834 0
	movl	reg(%rip), %edx
	movl	$scratchbuf, %edi
	movl	$.LC816, %esi
	xorl	%eax, %eax
	call	sprintf
	.loc 1 3835 0
	movsbq	intel_syntax(%rip),%rdi
	addq	$8, %rsp
	addq	$scratchbuf, %rdi
	jmp	oappend
.LFE72:
	.size	OP_T, .-OP_T
	.p2align 4,,15
	.type	OP_Rd, @function
OP_Rd:
.LFB73:
	.loc 1 3842 0
	.loc 1 3843 0
	cmpl	$3, mod(%rip)
	je	.L964
	.loc 1 3846 0
	jmp	BadOp
	.p2align 4,,7
.L964:
	.loc 1 3844 0
	jmp	OP_E
.LFE73:
	.size	OP_Rd, .-OP_Rd
	.section	.rodata.str1.1
.LC817:
	.string	"%%xmm%d"
.LC818:
	.string	"%%mm%d"
	.text
	.p2align 4,,15
	.type	OP_MMX, @function
OP_MMX:
.LFB74:
	.loc 1 3853 0
	subq	$8, %rsp
.LCFI52:
	.loc 1 3854 0
	xorl	%edx, %edx
	.loc 1 3855 0
	testb	$4, rex(%rip)
	movl	rex_used(%rip), %eax
	je	.L969
	orl	$68, %eax
	.loc 1 3857 0
	movb	$8, %dl
	.loc 1 3855 0
	movl	%eax, rex_used(%rip)
.L969:
	.loc 1 3858 0
	movl	prefixes(%rip), %eax
	andl	$512, %eax
	orl	%eax, used_prefixes(%rip)
	.loc 1 3859 0
	testl	%eax, %eax
	je	.L970
	.loc 1 3860 0
	addl	reg(%rip), %edx
	.loc 1 3862 0
	movl	$scratchbuf, %edi
	.loc 1 3860 0
	movl	$.LC817, %esi
	.loc 1 3862 0
	xorl	%eax, %eax
	call	sprintf
	.loc 1 3863 0
	movsbq	intel_syntax(%rip),%rdi
	addq	$8, %rsp
	addq	$scratchbuf, %rdi
	jmp	oappend
	.p2align 4,,7
.L970:
	.loc 1 3862 0
	addl	reg(%rip), %edx
	movl	$scratchbuf, %edi
	movl	$.LC818, %esi
	xorl	%eax, %eax
	call	sprintf
	.loc 1 3863 0
	movsbq	intel_syntax(%rip),%rdi
	addq	$8, %rsp
	addq	$scratchbuf, %rdi
	jmp	oappend
.LFE74:
	.size	OP_MMX, .-OP_MMX
	.p2align 4,,15
	.type	OP_XMM, @function
OP_XMM:
.LFB75:
	.loc 1 3870 0
	subq	$8, %rsp
.LCFI53:
	.loc 1 3871 0
	xorl	%edx, %edx
	.loc 1 3872 0
	testb	$4, rex(%rip)
	movl	rex_used(%rip), %eax
	je	.L977
	orl	$68, %eax
	.loc 1 3874 0
	movb	$8, %dl
	.loc 1 3872 0
	movl	%eax, rex_used(%rip)
.L977:
	.loc 1 3875 0
	addl	reg(%rip), %edx
	movl	$scratchbuf, %edi
	movl	$.LC817, %esi
	xorl	%eax, %eax
	call	sprintf
	.loc 1 3876 0
	movsbq	intel_syntax(%rip),%rdi
	addq	$8, %rsp
	addq	$scratchbuf, %rdi
	jmp	oappend
.LFE75:
	.size	OP_XMM, .-OP_XMM
	.p2align 4,,15
	.type	OP_EM, @function
OP_EM:
.LFB76:
	.loc 1 3883 0
	subq	$8, %rsp
.LCFI54:
	.loc 1 3884 0
	xorl	%edx, %edx
	.loc 1 3885 0
	cmpl	$3, mod(%rip)
	je	.L979
	.loc 1 3903 0
	addq	$8, %rsp
	.loc 1 3887 0
	jmp	OP_E
	.p2align 4,,7
.L979:
	.loc 1 3890 0
	testb	$1, rex(%rip)
	movl	rex_used(%rip), %eax
	jne	.L988
.L983:
	.loc 1 3895 0
	cmpb	$0, need_modrm(%rip)
	je	.L989
	.loc 1 3897 0
	movl	prefixes(%rip), %eax
	.loc 1 3896 0
	incq	codep(%rip)
	.loc 1 3897 0
	andl	$512, %eax
	orl	%eax, used_prefixes(%rip)
	.loc 1 3898 0
	testl	%eax, %eax
	je	.L985
	.loc 1 3899 0
	addl	rm(%rip), %edx
	.loc 1 3901 0
	movl	$scratchbuf, %edi
	.loc 1 3899 0
	movl	$.LC817, %esi
	.loc 1 3901 0
	xorl	%eax, %eax
	call	sprintf
	.loc 1 3902 0
	movsbq	intel_syntax(%rip),%rdi
	.loc 1 3903 0
	addq	$8, %rsp
	.loc 1 3902 0
	addq	$scratchbuf, %rdi
	jmp	oappend
	.p2align 4,,7
.L988:
	.loc 1 3890 0
	orl	$65, %eax
	.loc 1 3892 0
	movl	$8, %edx
	.loc 1 3890 0
	movl	%eax, rex_used(%rip)
	jmp	.L983
	.p2align 4,,7
.L985:
	.loc 1 3901 0
	addl	rm(%rip), %edx
	movl	$scratchbuf, %edi
	movl	$.LC818, %esi
	xorl	%eax, %eax
	call	sprintf
	.loc 1 3902 0
	movsbq	intel_syntax(%rip),%rdi
	.loc 1 3903 0
	addq	$8, %rsp
	.loc 1 3902 0
	addq	$scratchbuf, %rdi
	jmp	oappend
.L989:
	.loc 1 3895 0
	call	abort
.LFE76:
	.size	OP_EM, .-OP_EM
	.p2align 4,,15
	.type	OP_EX, @function
OP_EX:
.LFB77:
	.loc 1 3909 0
	subq	$8, %rsp
.LCFI55:
	.loc 1 3910 0
	xorl	%edx, %edx
	.loc 1 3911 0
	cmpl	$3, mod(%rip)
	je	.L991
	.loc 1 3925 0
	addq	$8, %rsp
	.loc 1 3913 0
	jmp	OP_E
	.p2align 4,,7
.L991:
	.loc 1 3916 0
	testb	$1, rex(%rip)
	movl	rex_used(%rip), %eax
	jne	.L997
.L995:
	.loc 1 3921 0
	cmpb	$0, need_modrm(%rip)
	je	.L998
	.loc 1 3923 0
	addl	rm(%rip), %edx
	movl	$scratchbuf, %edi
	movl	$.LC817, %esi
	xorl	%eax, %eax
	.loc 1 3922 0
	incq	codep(%rip)
	.loc 1 3923 0
	call	sprintf
	.loc 1 3924 0
	movsbq	intel_syntax(%rip),%rdi
	.loc 1 3925 0
	addq	$8, %rsp
	.loc 1 3924 0
	addq	$scratchbuf, %rdi
	jmp	oappend
	.p2align 4,,7
.L997:
	.loc 1 3916 0
	orl	$65, %eax
	.loc 1 3918 0
	movl	$8, %edx
	.loc 1 3916 0
	movl	%eax, rex_used(%rip)
	jmp	.L995
.L998:
	.loc 1 3921 0
	call	abort
.LFE77:
	.size	OP_EX, .-OP_EX
	.p2align 4,,15
	.type	OP_MS, @function
OP_MS:
.LFB78:
	.loc 1 3931 0
	.loc 1 3932 0
	cmpl	$3, mod(%rip)
	je	.L1002
	.loc 1 3935 0
	jmp	BadOp
	.p2align 4,,7
.L1002:
	.loc 1 3933 0
	jmp	OP_EM
.LFE78:
	.size	OP_MS, .-OP_MS
	.p2align 4,,15
	.type	OP_XS, @function
OP_XS:
.LFB79:
	.loc 1 3942 0
	.loc 1 3943 0
	cmpl	$3, mod(%rip)
	je	.L1006
	.loc 1 3946 0
	jmp	BadOp
	.p2align 4,,7
.L1006:
	.loc 1 3944 0
	jmp	OP_EX
.LFE79:
	.size	OP_XS, .-OP_XS
	.p2align 4,,15
	.type	OP_3DNowSuffix, @function
OP_3DNowSuffix:
.LFB80:
	.loc 1 4020 0
	.loc 1 4023 0
	movq	the_info(%rip), %rdi
	.loc 1 4020 0
	pushq	%rbx
.LCFI56:
	.loc 1 4023 0
	movq	codep(%rip), %rbx
	movq	72(%rdi), %rax
	leaq	1(%rbx), %rsi
	cmpq	(%rax), %rsi
	ja	.L1012
.L1009:
	.loc 1 4027 0
	movl	$obuf, %edi
	call	strlen
	addq	$obuf, %rax
	movq	%rax, obufp(%rip)
	.loc 1 4028 0
	movzbq	(%rbx), %rdx
	leaq	1(%rbx), %rax
	movq	%rax, codep(%rip)
	movq	Suffix3DNow(,%rdx,8), %rdi
	.loc 1 4029 0
	testq	%rdi, %rdi
	je	.L1010
	.loc 1 4041 0
	popq	%rbx
	.loc 1 4030 0
	jmp	oappend
	.p2align 4,,7
.L1012:
	.loc 1 4023 0
	call	fetch_data
	movq	codep(%rip), %rbx
	jmp	.L1009
	.p2align 4,,7
.L1010:
	.loc 1 4041 0
	popq	%rbx
	.loc 1 4037 0
	movb	$0, op1out(%rip)
	.loc 1 4038 0
	movb	$0, op2out(%rip)
	.loc 1 4039 0
	jmp	BadOp
.LFE80:
	.size	OP_3DNowSuffix, .-OP_3DNowSuffix
	.section	.rodata.str1.1
.LC819:
	.string	"cmp%s%c%c"
	.text
	.p2align 4,,15
	.type	OP_SIMD_Suffix, @function
OP_SIMD_Suffix:
.LFB81:
	.loc 1 4058 0
	.loc 1 4061 0
	movq	the_info(%rip), %rdi
	.loc 1 4058 0
	pushq	%rbx
.LCFI57:
	.loc 1 4061 0
	movq	codep(%rip), %rbx
	movq	72(%rdi), %rax
	leaq	1(%rbx), %rsi
	cmpq	(%rax), %rsi
	ja	.L1024
.L1015:
	.loc 1 4062 0
	movl	$obuf, %edi
	call	strlen
	addq	$obuf, %rax
	movq	%rax, obufp(%rip)
	.loc 1 4063 0
	movzbl	(%rbx), %r9d
	leaq	1(%rbx), %rax
	movq	%rax, codep(%rip)
	.loc 1 4064 0
	cmpl	$7, %r9d
	ja	.L1016
.LBB40:
	.loc 1 4067 0
	movl	prefixes(%rip), %edx
	.loc 1 4066 0
	movl	$112, %ecx
	movl	$115, %r8d
	.loc 1 4067 0
	movl	%edx, %eax
	andl	$1, %eax
	movl	%eax, %esi
	orl	used_prefixes(%rip), %esi
	.loc 1 4068 0
	testl	%eax, %eax
	je	.L1017
	movl	%esi, used_prefixes(%rip)
	.loc 1 4069 0
	movl	$115, %ecx
.L1018:
	.loc 1 4082 0
	mov	%r9d, %eax
	movl	$scratchbuf, %edi
	movsbl	%cl,%ecx
	movq	simd_cmp_op(,%rax,8), %rdx
	movsbl	%r8b,%r8d
	movl	$.LC819, %esi
	xorl	%eax, %eax
	call	sprintf
.LBE40:
	.loc 1 4094 0
	popq	%rbx
.LBB41:
	.loc 1 4084 0
	movl	prefixes(%rip), %eax
	.loc 1 4085 0
	movl	$scratchbuf, %edi
	.loc 1 4084 0
	andl	$1, %eax
	orl	%eax, used_prefixes(%rip)
	.loc 1 4085 0
	jmp	oappend
	.p2align 4,,7
.L1017:
	.loc 1 4072 0
	movl	%edx, %eax
	andl	$512, %eax
	orl	%eax, %esi
	.loc 1 4073 0
	testl	%eax, %eax
	jne	.L1025
	.loc 1 4077 0
	movl	%edx, %eax
	andl	$2, %eax
	orl	%eax, %esi
	.loc 1 4078 0
	testl	%eax, %eax
	.loc 1 4077 0
	movl	%esi, used_prefixes(%rip)
	.loc 1 4078 0
	je	.L1018
	.loc 1 4079 0
	movl	$115, %ecx
	.p2align 4,,7
.L1023:
	movl	$100, %r8d
	jmp	.L1018
	.p2align 4,,7
.L1016:
.LBE41:
	.loc 1 4094 0
	popq	%rbx
	.loc 1 4090 0
	movb	$0, op1out(%rip)
	.loc 1 4091 0
	movb	$0, op2out(%rip)
	.loc 1 4092 0
	jmp	BadOp
	.p2align 4,,7
.L1024:
	.loc 1 4061 0
	call	fetch_data
	movq	codep(%rip), %rbx
	jmp	.L1015
	.p2align 4,,7
.L1025:
	movl	%esi, used_prefixes(%rip)
	jmp	.L1023
.LFE81:
	.size	OP_SIMD_Suffix, .-OP_SIMD_Suffix
	.p2align 4,,15
	.type	SIMD_Fixup, @function
SIMD_Fixup:
.LFB82:
	.loc 1 4100 0
	.loc 1 4103 0
	cmpl	$3, mod(%rip)
	.loc 1 4100 0
	pushq	%rbx
.LCFI58:
	.loc 1 4100 0
	movl	%edi, %ebx
	.loc 1 4103 0
	je	.L1028
	.loc 1 4112 0
	popq	%rbx
	ret
	.p2align 4,,7
.L1028:
.LBB42:
	.loc 1 4105 0
	movl	$obuf, %edi
	call	strlen
	leaq	obuf(%rax), %rcx
	.loc 1 4106 0
	movb	$0, obuf+1(%rax)
	.loc 1 4107 0
	movzbl	-1(%rcx), %edx
	movb	%dl, obuf(%rax)
	.loc 1 4108 0
	movzbl	-2(%rcx), %eax
	movb	%al, -1(%rcx)
	.loc 1 4109 0
	movzbl	-3(%rcx), %eax
	.loc 1 4110 0
	movb	%bl, -3(%rcx)
	.loc 1 4109 0
	movb	%al, -2(%rcx)
.LBE42:
	.loc 1 4112 0
	popq	%rbx
	ret
.LFE82:
	.size	SIMD_Fixup, .-SIMD_Fixup
	.local	mode_64bit
	.comm	mode_64bit,4,4
	.local	prefixes
	.comm	prefixes,4,4
	.local	rex
	.comm	rex,4,4
	.local	rex_used
	.comm	rex_used,4,4
	.local	used_prefixes
	.comm	used_prefixes,4,4
	.local	obuf
	.comm	obuf,100,32
	.local	obufp
	.comm	obufp,8,8
	.local	scratchbuf
	.comm	scratchbuf,100,32
	.local	start_codep
	.comm	start_codep,8,8
	.local	insn_codep
	.comm	insn_codep,8,8
	.local	codep
	.comm	codep,8,8
	.local	the_info
	.comm	the_info,8,8
	.local	mod
	.comm	mod,4,4
	.local	rm
	.comm	rm,4,4
	.local	reg
	.comm	reg,4,4
	.local	need_modrm
	.comm	need_modrm,1,1
	.local	names64
	.comm	names64,8,8
	.local	names32
	.comm	names32,8,8
	.local	names16
	.comm	names16,8,8
	.local	names8
	.comm	names8,8,8
	.local	names8rex
	.comm	names8rex,8,8
	.local	names_seg
	.comm	names_seg,8,8
	.local	index16
	.comm	index16,8,8
	.local	op1out
	.comm	op1out,100,32
	.local	op2out
	.comm	op2out,100,32
	.local	op3out
	.comm	op3out,100,32
	.local	op_ad
	.comm	op_ad,4,4
	.local	op_index
	.comm	op_index,12,4
	.local	op_address
	.comm	op_address,24,16
	.local	op_riprel
	.comm	op_riprel,24,16
	.local	start_pc
	.comm	start_pc,8,8
	.local	intel_syntax
	.comm	intel_syntax,1,1
	.local	open_char
	.comm	open_char,1,1
	.local	close_char
	.comm	close_char,1,1
	.local	separator_char
	.comm	separator_char,1,1
	.local	scale_char
	.comm	scale_char,1,1
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
	.quad	.LFB37
	.quad	.LFE37-.LFB37
	.byte	0x4
	.long	.LCFI1-.LFB37
	.byte	0x8c
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI4-.LCFI1
	.byte	0xe
	.uleb128 0x30
	.byte	0x83
	.uleb128 0x5
	.byte	0x8d
	.uleb128 0x2
	.align 8
.LEFDE0:
.LSFDE2:
	.long	.LEFDE2-.LASFDE2
.LASFDE2:
	.long	.Lframe0
	.quad	.LFB39
	.quad	.LFE39-.LFB39
	.align 8
.LEFDE2:
.LSFDE4:
	.long	.LEFDE4-.LASFDE4
.LASFDE4:
	.long	.Lframe0
	.quad	.LFB45
	.quad	.LFE45-.LFB45
	.byte	0x4
	.long	.LCFI5-.LFB45
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.quad	.LFB46
	.quad	.LFE46-.LFB46
	.byte	0x4
	.long	.LCFI6-.LFB46
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
	.quad	.LFB43
	.quad	.LFE43-.LFB43
	.align 8
.LEFDE8:
.LSFDE10:
	.long	.LEFDE10-.LASFDE10
.LASFDE10:
	.long	.Lframe0
	.quad	.LFB44
	.quad	.LFE44-.LFB44
	.byte	0x4
	.long	.LCFI7-.LFB44
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE10:
.LSFDE12:
	.long	.LEFDE12-.LASFDE12
.LASFDE12:
	.long	.Lframe0
	.quad	.LFB47
	.quad	.LFE47-.LFB47
	.byte	0x4
	.long	.LCFI8-.LFB47
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE12:
.LSFDE14:
	.long	.LEFDE14-.LASFDE14
.LASFDE14:
	.long	.Lframe0
	.quad	.LFB49
	.quad	.LFE49-.LFB49
	.byte	0x4
	.long	.LCFI9-.LFB49
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI10-.LCFI9
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI11-.LCFI10
	.byte	0xe
	.uleb128 0x60
	.align 8
.LEFDE14:
.LSFDE16:
	.long	.LEFDE16-.LASFDE16
.LASFDE16:
	.long	.Lframe0
	.quad	.LFB83
	.quad	.LFE83-.LFB83
	.align 8
.LEFDE16:
.LSFDE18:
	.long	.LEFDE18-.LASFDE18
.LASFDE18:
	.long	.Lframe0
	.quad	.LFB54
	.quad	.LFE54-.LFB54
	.byte	0x4
	.long	.LCFI12-.LFB54
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE18:
.LSFDE20:
	.long	.LEFDE20-.LASFDE20
.LASFDE20:
	.long	.Lframe0
	.quad	.LFB56
	.quad	.LFE56-.LFB56
	.align 8
.LEFDE20:
.LSFDE22:
	.long	.LEFDE22-.LASFDE22
.LASFDE22:
	.long	.Lframe0
	.quad	.LFB55
	.quad	.LFE55-.LFB55
	.byte	0x4
	.long	.LCFI13-.LFB55
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE22:
.LSFDE24:
	.long	.LEFDE24-.LASFDE24
.LASFDE24:
	.long	.Lframe0
	.quad	.LFB50
	.quad	.LFE50-.LFB50
	.byte	0x4
	.long	.LCFI15-.LFB50
	.byte	0x86
	.uleb128 0x6
	.byte	0x83
	.uleb128 0x7
	.byte	0x4
	.long	.LCFI17-.LCFI15
	.byte	0x8f
	.uleb128 0x2
	.byte	0x8c
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI20-.LCFI17
	.byte	0xe
	.uleb128 0x50
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8d
	.uleb128 0x4
	.align 8
.LEFDE24:
.LSFDE26:
	.long	.LEFDE26-.LASFDE26
.LASFDE26:
	.long	.Lframe0
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.byte	0x4
	.long	.LCFI23-.LFB48
	.byte	0xe
	.uleb128 0x20
	.byte	0x86
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE26:
.LSFDE28:
	.long	.LEFDE28-.LASFDE28
.LASFDE28:
	.long	.Lframe0
	.quad	.LFB41
	.quad	.LFE41-.LFB41
	.byte	0x4
	.long	.LCFI24-.LFB41
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI25-.LCFI24
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI26-.LCFI25
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI27-.LCFI26
	.byte	0xe
	.uleb128 0x28
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x8c
	.uleb128 0x3
	.byte	0x8d
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI28-.LCFI27
	.byte	0xe
	.uleb128 0x140
	.align 8
.LEFDE28:
.LSFDE30:
	.long	.LEFDE30-.LASFDE30
.LASFDE30:
	.long	.Lframe0
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.align 8
.LEFDE30:
.LSFDE32:
	.long	.LEFDE32-.LASFDE32
.LASFDE32:
	.long	.Lframe0
	.quad	.LFB51
	.quad	.LFE51-.LFB51
	.byte	0x4
	.long	.LCFI29-.LFB51
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE32:
.LSFDE34:
	.long	.LEFDE34-.LASFDE34
.LASFDE34:
	.long	.Lframe0
	.quad	.LFB52
	.quad	.LFE52-.LFB52
	.byte	0x4
	.long	.LCFI30-.LFB52
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE34:
.LSFDE36:
	.long	.LEFDE36-.LASFDE36
.LASFDE36:
	.long	.Lframe0
	.quad	.LFB53
	.quad	.LFE53-.LFB53
	.byte	0x4
	.long	.LCFI31-.LFB53
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE36:
.LSFDE38:
	.long	.LEFDE38-.LASFDE38
.LASFDE38:
	.long	.Lframe0
	.quad	.LFB57
	.quad	.LFE57-.LFB57
	.align 8
.LEFDE38:
.LSFDE40:
	.long	.LEFDE40-.LASFDE40
.LASFDE40:
	.long	.Lframe0
	.quad	.LFB58
	.quad	.LFE58-.LFB58
	.align 8
.LEFDE40:
.LSFDE42:
	.long	.LEFDE42-.LASFDE42
.LASFDE42:
	.long	.Lframe0
	.quad	.LFB59
	.quad	.LFE59-.LFB59
	.byte	0x4
	.long	.LCFI32-.LFB59
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE42:
.LSFDE44:
	.long	.LEFDE44-.LASFDE44
.LASFDE44:
	.long	.Lframe0
	.quad	.LFB60
	.quad	.LFE60-.LFB60
	.byte	0x4
	.long	.LCFI33-.LFB60
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE44:
.LSFDE46:
	.long	.LEFDE46-.LASFDE46
.LASFDE46:
	.long	.Lframe0
	.quad	.LFB61
	.quad	.LFE61-.LFB61
	.byte	0x4
	.long	.LCFI34-.LFB61
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE46:
.LSFDE48:
	.long	.LEFDE48-.LASFDE48
.LASFDE48:
	.long	.Lframe0
	.quad	.LFB62
	.quad	.LFE62-.LFB62
	.byte	0x4
	.long	.LCFI37-.LFB62
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x2
	.align 8
.LEFDE48:
.LSFDE50:
	.long	.LEFDE50-.LASFDE50
.LASFDE50:
	.long	.Lframe0
	.quad	.LFB63
	.quad	.LFE63-.LFB63
	.align 8
.LEFDE50:
.LSFDE52:
	.long	.LEFDE52-.LASFDE52
.LASFDE52:
	.long	.Lframe0
	.quad	.LFB64
	.quad	.LFE64-.LFB64
	.byte	0x4
	.long	.LCFI38-.LFB64
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE52:
.LSFDE54:
	.long	.LEFDE54-.LASFDE54
.LASFDE54:
	.long	.Lframe0
	.quad	.LFB66
	.quad	.LFE66-.LFB66
	.byte	0x4
	.long	.LCFI39-.LFB66
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE54:
.LSFDE56:
	.long	.LEFDE56-.LASFDE56
.LASFDE56:
	.long	.Lframe0
	.quad	.LFB67
	.quad	.LFE67-.LFB67
	.byte	0x4
	.long	.LCFI40-.LFB67
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI41-.LCFI40
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI42-.LCFI41
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE56:
.LSFDE58:
	.long	.LEFDE58-.LASFDE58
.LASFDE58:
	.long	.Lframe0
	.quad	.LFB68
	.quad	.LFE68-.LFB68
	.byte	0x4
	.long	.LCFI45-.LFB68
	.byte	0xe
	.uleb128 0x20
	.byte	0x8c
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE58:
.LSFDE60:
	.long	.LEFDE60-.LASFDE60
.LASFDE60:
	.long	.Lframe0
	.quad	.LFB69
	.quad	.LFE69-.LFB69
	.byte	0x4
	.long	.LCFI48-.LFB69
	.byte	0xe
	.uleb128 0x20
	.byte	0x86
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE60:
.LSFDE62:
	.long	.LEFDE62-.LASFDE62
.LASFDE62:
	.long	.Lframe0
	.quad	.LFB70
	.quad	.LFE70-.LFB70
	.byte	0x4
	.long	.LCFI49-.LFB70
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE62:
.LSFDE64:
	.long	.LEFDE64-.LASFDE64
.LASFDE64:
	.long	.Lframe0
	.quad	.LFB71
	.quad	.LFE71-.LFB71
	.byte	0x4
	.long	.LCFI50-.LFB71
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE64:
.LSFDE66:
	.long	.LEFDE66-.LASFDE66
.LASFDE66:
	.long	.Lframe0
	.quad	.LFB72
	.quad	.LFE72-.LFB72
	.byte	0x4
	.long	.LCFI51-.LFB72
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE66:
.LSFDE68:
	.long	.LEFDE68-.LASFDE68
.LASFDE68:
	.long	.Lframe0
	.quad	.LFB73
	.quad	.LFE73-.LFB73
	.align 8
.LEFDE68:
.LSFDE70:
	.long	.LEFDE70-.LASFDE70
.LASFDE70:
	.long	.Lframe0
	.quad	.LFB74
	.quad	.LFE74-.LFB74
	.byte	0x4
	.long	.LCFI52-.LFB74
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE70:
.LSFDE72:
	.long	.LEFDE72-.LASFDE72
.LASFDE72:
	.long	.Lframe0
	.quad	.LFB75
	.quad	.LFE75-.LFB75
	.byte	0x4
	.long	.LCFI53-.LFB75
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE72:
.LSFDE74:
	.long	.LEFDE74-.LASFDE74
.LASFDE74:
	.long	.Lframe0
	.quad	.LFB76
	.quad	.LFE76-.LFB76
	.byte	0x4
	.long	.LCFI54-.LFB76
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE74:
.LSFDE76:
	.long	.LEFDE76-.LASFDE76
.LASFDE76:
	.long	.Lframe0
	.quad	.LFB77
	.quad	.LFE77-.LFB77
	.byte	0x4
	.long	.LCFI55-.LFB77
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE76:
.LSFDE78:
	.long	.LEFDE78-.LASFDE78
.LASFDE78:
	.long	.Lframe0
	.quad	.LFB78
	.quad	.LFE78-.LFB78
	.align 8
.LEFDE78:
.LSFDE80:
	.long	.LEFDE80-.LASFDE80
.LASFDE80:
	.long	.Lframe0
	.quad	.LFB79
	.quad	.LFE79-.LFB79
	.align 8
.LEFDE80:
.LSFDE82:
	.long	.LEFDE82-.LASFDE82
.LASFDE82:
	.long	.Lframe0
	.quad	.LFB80
	.quad	.LFE80-.LFB80
	.byte	0x4
	.long	.LCFI56-.LFB80
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE82:
.LSFDE84:
	.long	.LEFDE84-.LASFDE84
.LASFDE84:
	.long	.Lframe0
	.quad	.LFB81
	.quad	.LFE81-.LFB81
	.byte	0x4
	.long	.LCFI57-.LFB81
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE84:
.LSFDE86:
	.long	.LEFDE86-.LASFDE86
.LASFDE86:
	.long	.Lframe0
	.quad	.LFB82
	.quad	.LFE82-.LFB82
	.byte	0x4
	.long	.LCFI58-.LFB82
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE86:
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
	.quad	.LFB37
	.quad	.LFE37-.LFB37
	.byte	0x4
	.long	.LCFI1-.LFB37
	.byte	0x8c
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI4-.LCFI1
	.byte	0xe
	.uleb128 0x30
	.byte	0x83
	.uleb128 0x5
	.byte	0x8d
	.uleb128 0x2
	.align 8
.LEFDE1:
.LSFDE3:
	.long	.LEFDE3-.LASFDE3
.LASFDE3:
	.long	.LASFDE3-.Lframe1
	.quad	.LFB39
	.quad	.LFE39-.LFB39
	.align 8
.LEFDE3:
.LSFDE5:
	.long	.LEFDE5-.LASFDE5
.LASFDE5:
	.long	.LASFDE5-.Lframe1
	.quad	.LFB45
	.quad	.LFE45-.LFB45
	.byte	0x4
	.long	.LCFI5-.LFB45
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE5:
.LSFDE7:
	.long	.LEFDE7-.LASFDE7
.LASFDE7:
	.long	.LASFDE7-.Lframe1
	.quad	.LFB46
	.quad	.LFE46-.LFB46
	.byte	0x4
	.long	.LCFI6-.LFB46
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
	.quad	.LFB43
	.quad	.LFE43-.LFB43
	.align 8
.LEFDE9:
.LSFDE11:
	.long	.LEFDE11-.LASFDE11
.LASFDE11:
	.long	.LASFDE11-.Lframe1
	.quad	.LFB44
	.quad	.LFE44-.LFB44
	.byte	0x4
	.long	.LCFI7-.LFB44
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE11:
.LSFDE13:
	.long	.LEFDE13-.LASFDE13
.LASFDE13:
	.long	.LASFDE13-.Lframe1
	.quad	.LFB47
	.quad	.LFE47-.LFB47
	.byte	0x4
	.long	.LCFI8-.LFB47
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE13:
.LSFDE15:
	.long	.LEFDE15-.LASFDE15
.LASFDE15:
	.long	.LASFDE15-.Lframe1
	.quad	.LFB49
	.quad	.LFE49-.LFB49
	.byte	0x4
	.long	.LCFI9-.LFB49
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI10-.LCFI9
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI11-.LCFI10
	.byte	0xe
	.uleb128 0x60
	.align 8
.LEFDE15:
.LSFDE17:
	.long	.LEFDE17-.LASFDE17
.LASFDE17:
	.long	.LASFDE17-.Lframe1
	.quad	.LFB83
	.quad	.LFE83-.LFB83
	.align 8
.LEFDE17:
.LSFDE19:
	.long	.LEFDE19-.LASFDE19
.LASFDE19:
	.long	.LASFDE19-.Lframe1
	.quad	.LFB54
	.quad	.LFE54-.LFB54
	.byte	0x4
	.long	.LCFI12-.LFB54
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE19:
.LSFDE21:
	.long	.LEFDE21-.LASFDE21
.LASFDE21:
	.long	.LASFDE21-.Lframe1
	.quad	.LFB56
	.quad	.LFE56-.LFB56
	.align 8
.LEFDE21:
.LSFDE23:
	.long	.LEFDE23-.LASFDE23
.LASFDE23:
	.long	.LASFDE23-.Lframe1
	.quad	.LFB55
	.quad	.LFE55-.LFB55
	.byte	0x4
	.long	.LCFI13-.LFB55
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE23:
.LSFDE25:
	.long	.LEFDE25-.LASFDE25
.LASFDE25:
	.long	.LASFDE25-.Lframe1
	.quad	.LFB50
	.quad	.LFE50-.LFB50
	.byte	0x4
	.long	.LCFI15-.LFB50
	.byte	0x86
	.uleb128 0x6
	.byte	0x83
	.uleb128 0x7
	.byte	0x4
	.long	.LCFI17-.LCFI15
	.byte	0x8f
	.uleb128 0x2
	.byte	0x8c
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI20-.LCFI17
	.byte	0xe
	.uleb128 0x50
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8d
	.uleb128 0x4
	.align 8
.LEFDE25:
.LSFDE27:
	.long	.LEFDE27-.LASFDE27
.LASFDE27:
	.long	.LASFDE27-.Lframe1
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.byte	0x4
	.long	.LCFI23-.LFB48
	.byte	0xe
	.uleb128 0x20
	.byte	0x86
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE27:
.LSFDE29:
	.long	.LEFDE29-.LASFDE29
.LASFDE29:
	.long	.LASFDE29-.Lframe1
	.quad	.LFB41
	.quad	.LFE41-.LFB41
	.byte	0x4
	.long	.LCFI24-.LFB41
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI25-.LCFI24
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI26-.LCFI25
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI27-.LCFI26
	.byte	0xe
	.uleb128 0x28
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x8c
	.uleb128 0x3
	.byte	0x8d
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI28-.LCFI27
	.byte	0xe
	.uleb128 0x140
	.align 8
.LEFDE29:
.LSFDE31:
	.long	.LEFDE31-.LASFDE31
.LASFDE31:
	.long	.LASFDE31-.Lframe1
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.align 8
.LEFDE31:
.LSFDE33:
	.long	.LEFDE33-.LASFDE33
.LASFDE33:
	.long	.LASFDE33-.Lframe1
	.quad	.LFB51
	.quad	.LFE51-.LFB51
	.byte	0x4
	.long	.LCFI29-.LFB51
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE33:
.LSFDE35:
	.long	.LEFDE35-.LASFDE35
.LASFDE35:
	.long	.LASFDE35-.Lframe1
	.quad	.LFB52
	.quad	.LFE52-.LFB52
	.byte	0x4
	.long	.LCFI30-.LFB52
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE35:
.LSFDE37:
	.long	.LEFDE37-.LASFDE37
.LASFDE37:
	.long	.LASFDE37-.Lframe1
	.quad	.LFB53
	.quad	.LFE53-.LFB53
	.byte	0x4
	.long	.LCFI31-.LFB53
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE37:
.LSFDE39:
	.long	.LEFDE39-.LASFDE39
.LASFDE39:
	.long	.LASFDE39-.Lframe1
	.quad	.LFB57
	.quad	.LFE57-.LFB57
	.align 8
.LEFDE39:
.LSFDE41:
	.long	.LEFDE41-.LASFDE41
.LASFDE41:
	.long	.LASFDE41-.Lframe1
	.quad	.LFB58
	.quad	.LFE58-.LFB58
	.align 8
.LEFDE41:
.LSFDE43:
	.long	.LEFDE43-.LASFDE43
.LASFDE43:
	.long	.LASFDE43-.Lframe1
	.quad	.LFB59
	.quad	.LFE59-.LFB59
	.byte	0x4
	.long	.LCFI32-.LFB59
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE43:
.LSFDE45:
	.long	.LEFDE45-.LASFDE45
.LASFDE45:
	.long	.LASFDE45-.Lframe1
	.quad	.LFB60
	.quad	.LFE60-.LFB60
	.byte	0x4
	.long	.LCFI33-.LFB60
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE45:
.LSFDE47:
	.long	.LEFDE47-.LASFDE47
.LASFDE47:
	.long	.LASFDE47-.Lframe1
	.quad	.LFB61
	.quad	.LFE61-.LFB61
	.byte	0x4
	.long	.LCFI34-.LFB61
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE47:
.LSFDE49:
	.long	.LEFDE49-.LASFDE49
.LASFDE49:
	.long	.LASFDE49-.Lframe1
	.quad	.LFB62
	.quad	.LFE62-.LFB62
	.byte	0x4
	.long	.LCFI37-.LFB62
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x2
	.align 8
.LEFDE49:
.LSFDE51:
	.long	.LEFDE51-.LASFDE51
.LASFDE51:
	.long	.LASFDE51-.Lframe1
	.quad	.LFB63
	.quad	.LFE63-.LFB63
	.align 8
.LEFDE51:
.LSFDE53:
	.long	.LEFDE53-.LASFDE53
.LASFDE53:
	.long	.LASFDE53-.Lframe1
	.quad	.LFB64
	.quad	.LFE64-.LFB64
	.byte	0x4
	.long	.LCFI38-.LFB64
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE53:
.LSFDE55:
	.long	.LEFDE55-.LASFDE55
.LASFDE55:
	.long	.LASFDE55-.Lframe1
	.quad	.LFB66
	.quad	.LFE66-.LFB66
	.byte	0x4
	.long	.LCFI39-.LFB66
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE55:
.LSFDE57:
	.long	.LEFDE57-.LASFDE57
.LASFDE57:
	.long	.LASFDE57-.Lframe1
	.quad	.LFB67
	.quad	.LFE67-.LFB67
	.byte	0x4
	.long	.LCFI40-.LFB67
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI41-.LCFI40
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI42-.LCFI41
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE57:
.LSFDE59:
	.long	.LEFDE59-.LASFDE59
.LASFDE59:
	.long	.LASFDE59-.Lframe1
	.quad	.LFB68
	.quad	.LFE68-.LFB68
	.byte	0x4
	.long	.LCFI45-.LFB68
	.byte	0xe
	.uleb128 0x20
	.byte	0x8c
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE59:
.LSFDE61:
	.long	.LEFDE61-.LASFDE61
.LASFDE61:
	.long	.LASFDE61-.Lframe1
	.quad	.LFB69
	.quad	.LFE69-.LFB69
	.byte	0x4
	.long	.LCFI48-.LFB69
	.byte	0xe
	.uleb128 0x20
	.byte	0x86
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE61:
.LSFDE63:
	.long	.LEFDE63-.LASFDE63
.LASFDE63:
	.long	.LASFDE63-.Lframe1
	.quad	.LFB70
	.quad	.LFE70-.LFB70
	.byte	0x4
	.long	.LCFI49-.LFB70
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE63:
.LSFDE65:
	.long	.LEFDE65-.LASFDE65
.LASFDE65:
	.long	.LASFDE65-.Lframe1
	.quad	.LFB71
	.quad	.LFE71-.LFB71
	.byte	0x4
	.long	.LCFI50-.LFB71
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE65:
.LSFDE67:
	.long	.LEFDE67-.LASFDE67
.LASFDE67:
	.long	.LASFDE67-.Lframe1
	.quad	.LFB72
	.quad	.LFE72-.LFB72
	.byte	0x4
	.long	.LCFI51-.LFB72
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE67:
.LSFDE69:
	.long	.LEFDE69-.LASFDE69
.LASFDE69:
	.long	.LASFDE69-.Lframe1
	.quad	.LFB73
	.quad	.LFE73-.LFB73
	.align 8
.LEFDE69:
.LSFDE71:
	.long	.LEFDE71-.LASFDE71
.LASFDE71:
	.long	.LASFDE71-.Lframe1
	.quad	.LFB74
	.quad	.LFE74-.LFB74
	.byte	0x4
	.long	.LCFI52-.LFB74
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE71:
.LSFDE73:
	.long	.LEFDE73-.LASFDE73
.LASFDE73:
	.long	.LASFDE73-.Lframe1
	.quad	.LFB75
	.quad	.LFE75-.LFB75
	.byte	0x4
	.long	.LCFI53-.LFB75
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE73:
.LSFDE75:
	.long	.LEFDE75-.LASFDE75
.LASFDE75:
	.long	.LASFDE75-.Lframe1
	.quad	.LFB76
	.quad	.LFE76-.LFB76
	.byte	0x4
	.long	.LCFI54-.LFB76
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE75:
.LSFDE77:
	.long	.LEFDE77-.LASFDE77
.LASFDE77:
	.long	.LASFDE77-.Lframe1
	.quad	.LFB77
	.quad	.LFE77-.LFB77
	.byte	0x4
	.long	.LCFI55-.LFB77
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE77:
.LSFDE79:
	.long	.LEFDE79-.LASFDE79
.LASFDE79:
	.long	.LASFDE79-.Lframe1
	.quad	.LFB78
	.quad	.LFE78-.LFB78
	.align 8
.LEFDE79:
.LSFDE81:
	.long	.LEFDE81-.LASFDE81
.LASFDE81:
	.long	.LASFDE81-.Lframe1
	.quad	.LFB79
	.quad	.LFE79-.LFB79
	.align 8
.LEFDE81:
.LSFDE83:
	.long	.LEFDE83-.LASFDE83
.LASFDE83:
	.long	.LASFDE83-.Lframe1
	.quad	.LFB80
	.quad	.LFE80-.LFB80
	.byte	0x4
	.long	.LCFI56-.LFB80
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE83:
.LSFDE85:
	.long	.LEFDE85-.LASFDE85
.LASFDE85:
	.long	.LASFDE85-.Lframe1
	.quad	.LFB81
	.quad	.LFE81-.LFB81
	.byte	0x4
	.long	.LCFI57-.LFB81
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE85:
.LSFDE87:
	.long	.LEFDE87-.LASFDE87
.LASFDE87:
	.long	.LASFDE87-.Lframe1
	.quad	.LFB82
	.quad	.LFE82-.LFB82
	.byte	0x4
	.long	.LCFI58-.LFB82
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE87:
	.file 2 "/home/remco/Projects/Argos/src/dis-asm.h"
	.file 3 "/usr/include/stdio.h"
	.file 4 "/usr/include/libio.h"
	.file 5 "/usr/include/bits/types.h"
	.file 6 "/usr/lib/gcc/x86_64-linux-gnu/3.4.6/include/stddef.h"
	.file 7 "/usr/include/stdint.h"
	.file 8 "/usr/include/setjmp.h"
	.file 9 "/usr/include/bits/setjmp.h"
	.file 10 "/usr/include/bits/sigset.h"
	.file 11 "/usr/include/sys/types.h"
	.text
.Letext0:
	.section	.debug_info
	.long	0x1fee
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.Ldebug_line0
	.quad	.Letext0
	.quad	.Ltext0
	.long	.LASF316
	.byte	0x1
	.long	.LASF317
	.uleb128 0x2
	.long	.LASF9
	.byte	0x6
	.byte	0xd5
	.long	0x34
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
	.long	0x6b
	.uleb128 0x6
	.long	0x70
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
	.byte	0x5
	.byte	0x8d
	.long	0x49
	.uleb128 0x2
	.long	.LASF11
	.byte	0x5
	.byte	0x8e
	.long	0x49
	.uleb128 0x7
	.byte	0x8
	.uleb128 0x5
	.byte	0x8
	.long	0x70
	.uleb128 0x2
	.long	.LASF12
	.byte	0xb
	.byte	0xc3
	.long	0x7e
	.uleb128 0x2
	.long	.LASF13
	.byte	0xb
	.byte	0xc6
	.long	0x49
	.uleb128 0x8
	.long	0xd7
	.byte	0x80
	.byte	0xa
	.byte	0x20
	.uleb128 0x9
	.long	.LASF17
	.byte	0xa
	.byte	0x1f
	.long	0xd7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xa
	.long	0xe7
	.long	0x34
	.uleb128 0xb
	.long	0x57
	.byte	0xf
	.byte	0x0
	.uleb128 0x2
	.long	.LASF14
	.byte	0xa
	.byte	0x20
	.long	0xc0
	.uleb128 0x3
	.long	.LASF15
	.byte	0x8
	.byte	0x7
	.uleb128 0x2
	.long	.LASF16
	.byte	0x3
	.byte	0x31
	.long	0x104
	.uleb128 0xc
	.long	0x2d0
	.long	.LASF48
	.byte	0xd8
	.byte	0x3
	.byte	0x2d
	.uleb128 0xd
	.long	.LASF18
	.byte	0x4
	.value	0x110
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF19
	.byte	0x4
	.value	0x115
	.long	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF20
	.byte	0x4
	.value	0x116
	.long	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.long	.LASF21
	.byte	0x4
	.value	0x117
	.long	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.long	.LASF22
	.byte	0x4
	.value	0x118
	.long	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.long	.LASF23
	.byte	0x4
	.value	0x119
	.long	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.long	.LASF24
	.byte	0x4
	.value	0x11a
	.long	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.long	.LASF25
	.byte	0x4
	.value	0x11b
	.long	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.long	.LASF26
	.byte	0x4
	.value	0x11c
	.long	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.long	.LASF27
	.byte	0x4
	.value	0x11e
	.long	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.long	.LASF28
	.byte	0x4
	.value	0x11f
	.long	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xd
	.long	.LASF29
	.byte	0x4
	.value	0x120
	.long	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xd
	.long	.LASF30
	.byte	0x4
	.value	0x122
	.long	0x30e
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.long	.LASF31
	.byte	0x4
	.value	0x124
	.long	0x314
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.long	.LASF32
	.byte	0x4
	.value	0x126
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xd
	.long	.LASF33
	.byte	0x4
	.value	0x12a
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xd
	.long	.LASF34
	.byte	0x4
	.value	0x12c
	.long	0x8c
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xd
	.long	.LASF35
	.byte	0x4
	.value	0x130
	.long	0x5e
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xd
	.long	.LASF36
	.byte	0x4
	.value	0x131
	.long	0x7e
	.byte	0x3
	.byte	0x23
	.uleb128 0x82
	.uleb128 0xd
	.long	.LASF37
	.byte	0x4
	.value	0x132
	.long	0x31a
	.byte	0x3
	.byte	0x23
	.uleb128 0x83
	.uleb128 0xd
	.long	.LASF38
	.byte	0x4
	.value	0x136
	.long	0x32a
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xd
	.long	.LASF39
	.byte	0x4
	.value	0x13f
	.long	0x97
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xd
	.long	.LASF40
	.byte	0x4
	.value	0x148
	.long	0xa2
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xd
	.long	.LASF41
	.byte	0x4
	.value	0x149
	.long	0xa2
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xd
	.long	.LASF42
	.byte	0x4
	.value	0x14a
	.long	0xa2
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xd
	.long	.LASF43
	.byte	0x4
	.value	0x14b
	.long	0xa2
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xd
	.long	.LASF44
	.byte	0x4
	.value	0x14c
	.long	0x29
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0xd
	.long	.LASF45
	.byte	0x4
	.value	0x14e
	.long	0x3b
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xd
	.long	.LASF46
	.byte	0x4
	.value	0x150
	.long	0x330
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.byte	0x0
	.uleb128 0xe
	.long	.LASF47
	.byte	0x4
	.byte	0xb4
	.uleb128 0xc
	.long	0x30e
	.long	.LASF49
	.byte	0x18
	.byte	0x4
	.byte	0xba
	.uleb128 0x9
	.long	.LASF50
	.byte	0x4
	.byte	0xbb
	.long	0x30e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF51
	.byte	0x4
	.byte	0xbc
	.long	0x314
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF52
	.byte	0x4
	.byte	0xc0
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x2d7
	.uleb128 0x5
	.byte	0x8
	.long	0x104
	.uleb128 0xa
	.long	0x32a
	.long	0x70
	.uleb128 0xb
	.long	0x57
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x2d0
	.uleb128 0xa
	.long	0x340
	.long	0x70
	.uleb128 0xb
	.long	0x57
	.byte	0x13
	.byte	0x0
	.uleb128 0x2
	.long	.LASF53
	.byte	0x7
	.byte	0x31
	.long	0x77
	.uleb128 0x2
	.long	.LASF54
	.byte	0x7
	.byte	0x38
	.long	0x34
	.uleb128 0xf
	.string	"PTR"
	.byte	0x2
	.byte	0x12
	.long	0xa2
	.uleb128 0x2
	.long	.LASF55
	.byte	0x2
	.byte	0x13
	.long	0x34b
	.uleb128 0x2
	.long	.LASF56
	.byte	0x2
	.byte	0x14
	.long	0xb5
	.uleb128 0x2
	.long	.LASF57
	.byte	0x2
	.byte	0x15
	.long	0x340
	.uleb128 0x10
	.long	0x3ef
	.long	.LASF74
	.byte	0x4
	.byte	0x2
	.byte	0x1a
	.uleb128 0x11
	.long	.LASF58
	.sleb128 0
	.uleb128 0x11
	.long	.LASF59
	.sleb128 1
	.uleb128 0x11
	.long	.LASF60
	.sleb128 2
	.uleb128 0x11
	.long	.LASF61
	.sleb128 3
	.uleb128 0x11
	.long	.LASF62
	.sleb128 4
	.uleb128 0x11
	.long	.LASF63
	.sleb128 5
	.uleb128 0x11
	.long	.LASF64
	.sleb128 6
	.uleb128 0x11
	.long	.LASF65
	.sleb128 7
	.uleb128 0x11
	.long	.LASF66
	.sleb128 8
	.uleb128 0x11
	.long	.LASF67
	.sleb128 9
	.uleb128 0x11
	.long	.LASF68
	.sleb128 10
	.uleb128 0x11
	.long	.LASF69
	.sleb128 11
	.uleb128 0x11
	.long	.LASF70
	.sleb128 12
	.uleb128 0x11
	.long	.LASF71
	.sleb128 13
	.uleb128 0x11
	.long	.LASF72
	.sleb128 14
	.uleb128 0x11
	.long	.LASF73
	.sleb128 15
	.byte	0x0
	.uleb128 0x10
	.long	0x40e
	.long	.LASF75
	.byte	0x4
	.byte	0x2
	.byte	0x2d
	.uleb128 0x11
	.long	.LASF76
	.sleb128 0
	.uleb128 0x11
	.long	.LASF77
	.sleb128 1
	.uleb128 0x11
	.long	.LASF78
	.sleb128 2
	.byte	0x0
	.uleb128 0x10
	.long	0x4f9
	.long	.LASF79
	.byte	0x4
	.byte	0x2
	.byte	0x30
	.uleb128 0x11
	.long	.LASF80
	.sleb128 0
	.uleb128 0x11
	.long	.LASF81
	.sleb128 1
	.uleb128 0x11
	.long	.LASF82
	.sleb128 2
	.uleb128 0x11
	.long	.LASF83
	.sleb128 3
	.uleb128 0x11
	.long	.LASF84
	.sleb128 4
	.uleb128 0x11
	.long	.LASF85
	.sleb128 5
	.uleb128 0x11
	.long	.LASF86
	.sleb128 6
	.uleb128 0x11
	.long	.LASF87
	.sleb128 7
	.uleb128 0x11
	.long	.LASF88
	.sleb128 8
	.uleb128 0x11
	.long	.LASF89
	.sleb128 9
	.uleb128 0x11
	.long	.LASF90
	.sleb128 10
	.uleb128 0x11
	.long	.LASF91
	.sleb128 11
	.uleb128 0x11
	.long	.LASF92
	.sleb128 12
	.uleb128 0x11
	.long	.LASF93
	.sleb128 13
	.uleb128 0x11
	.long	.LASF94
	.sleb128 14
	.uleb128 0x11
	.long	.LASF95
	.sleb128 15
	.uleb128 0x11
	.long	.LASF96
	.sleb128 16
	.uleb128 0x11
	.long	.LASF97
	.sleb128 17
	.uleb128 0x11
	.long	.LASF98
	.sleb128 18
	.uleb128 0x11
	.long	.LASF99
	.sleb128 19
	.uleb128 0x11
	.long	.LASF100
	.sleb128 20
	.uleb128 0x11
	.long	.LASF101
	.sleb128 21
	.uleb128 0x11
	.long	.LASF102
	.sleb128 22
	.uleb128 0x11
	.long	.LASF103
	.sleb128 23
	.uleb128 0x11
	.long	.LASF104
	.sleb128 24
	.uleb128 0x11
	.long	.LASF105
	.sleb128 25
	.uleb128 0x11
	.long	.LASF106
	.sleb128 26
	.uleb128 0x11
	.long	.LASF107
	.sleb128 27
	.uleb128 0x11
	.long	.LASF108
	.sleb128 28
	.uleb128 0x11
	.long	.LASF109
	.sleb128 29
	.uleb128 0x11
	.long	.LASF110
	.sleb128 30
	.uleb128 0x11
	.long	.LASF111
	.sleb128 31
	.uleb128 0x11
	.long	.LASF112
	.sleb128 32
	.uleb128 0x11
	.long	.LASF113
	.sleb128 33
	.uleb128 0x11
	.long	.LASF114
	.sleb128 34
	.uleb128 0x11
	.long	.LASF115
	.sleb128 35
	.uleb128 0x11
	.long	.LASF116
	.sleb128 36
	.byte	0x0
	.uleb128 0x12
	.long	0x514
	.byte	0x8
	.byte	0x2
	.byte	0xe3
	.uleb128 0x13
	.string	"p"
	.byte	0x2
	.byte	0xe1
	.long	0x356
	.uleb128 0x13
	.string	"i"
	.byte	0x2
	.byte	0xe2
	.long	0x361
	.byte	0x0
	.uleb128 0xc
	.long	0x53d
	.long	.LASF117
	.byte	0x10
	.byte	0x2
	.byte	0xdd
	.uleb128 0x9
	.long	.LASF118
	.byte	0x2
	.byte	0xde
	.long	0x65
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF119
	.byte	0x2
	.byte	0xe3
	.long	0x4f9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x2
	.long	.LASF120
	.byte	0x2
	.byte	0xe4
	.long	0x514
	.uleb128 0x2
	.long	.LASF121
	.byte	0x2
	.byte	0xe6
	.long	0x553
	.uleb128 0x5
	.byte	0x8
	.long	0x559
	.uleb128 0x14
	.long	0x56f
	.byte	0x1
	.long	0x3b
	.uleb128 0x15
	.long	0x56f
	.uleb128 0x15
	.long	0x65
	.uleb128 0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xf9
	.uleb128 0x10
	.long	0x5b2
	.long	.LASF122
	.byte	0x4
	.byte	0x2
	.byte	0xe8
	.uleb128 0x11
	.long	.LASF123
	.sleb128 0
	.uleb128 0x11
	.long	.LASF124
	.sleb128 1
	.uleb128 0x11
	.long	.LASF125
	.sleb128 2
	.uleb128 0x11
	.long	.LASF126
	.sleb128 3
	.uleb128 0x11
	.long	.LASF127
	.sleb128 4
	.uleb128 0x11
	.long	.LASF128
	.sleb128 5
	.uleb128 0x11
	.long	.LASF129
	.sleb128 6
	.uleb128 0x11
	.long	.LASF130
	.sleb128 7
	.byte	0x0
	.uleb128 0xc
	.long	0x76c
	.long	.LASF131
	.byte	0xb0
	.byte	0x2
	.byte	0xfd
	.uleb128 0x9
	.long	.LASF132
	.byte	0x2
	.byte	0xfe
	.long	0x548
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF133
	.byte	0x2
	.byte	0xff
	.long	0x56f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF134
	.byte	0x2
	.value	0x100
	.long	0x356
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.long	.LASF135
	.byte	0x2
	.value	0x106
	.long	0x382
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.long	.LASF136
	.byte	0x2
	.value	0x108
	.long	0x40e
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.long	.LASF137
	.byte	0x2
	.value	0x10a
	.long	0x34
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.long	.LASF138
	.byte	0x2
	.value	0x10c
	.long	0x3ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.long	.LASF139
	.byte	0x2
	.value	0x113
	.long	0x76c
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.long	.LASF140
	.byte	0x2
	.value	0x115
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.long	.LASF141
	.byte	0x2
	.value	0x11a
	.long	0x34
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.long	.LASF142
	.byte	0x2
	.value	0x11c
	.long	0x356
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.long	.LASF143
	.byte	0x2
	.value	0x124
	.long	0x7a3
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xd
	.long	.LASF144
	.byte	0x2
	.value	0x12c
	.long	0x7bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xd
	.long	.LASF145
	.byte	0x2
	.value	0x130
	.long	0x7d6
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.long	.LASF146
	.byte	0x2
	.value	0x13a
	.long	0x7f1
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.long	.LASF147
	.byte	0x2
	.value	0x13d
	.long	0x797
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xd
	.long	.LASF148
	.byte	0x2
	.value	0x13e
	.long	0x361
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xd
	.long	.LASF149
	.byte	0x2
	.value	0x13f
	.long	0x3b
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xd
	.long	.LASF150
	.byte	0x2
	.value	0x145
	.long	0x3b
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0xd
	.long	.LASF151
	.byte	0x2
	.value	0x14c
	.long	0x3b
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xd
	.long	.LASF152
	.byte	0x2
	.value	0x14d
	.long	0x3ef
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0xd
	.long	.LASF153
	.byte	0x2
	.value	0x156
	.long	0x70
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xd
	.long	.LASF154
	.byte	0x2
	.value	0x157
	.long	0x70
	.byte	0x3
	.byte	0x23
	.uleb128 0x91
	.uleb128 0xd
	.long	.LASF155
	.byte	0x2
	.value	0x159
	.long	0x70
	.byte	0x3
	.byte	0x23
	.uleb128 0x92
	.uleb128 0xd
	.long	.LASF156
	.byte	0x2
	.value	0x15a
	.long	0x575
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xd
	.long	.LASF157
	.byte	0x2
	.value	0x15b
	.long	0x361
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xd
	.long	.LASF158
	.byte	0x2
	.value	0x15d
	.long	0x361
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xd
	.long	.LASF159
	.byte	0x2
	.value	0x160
	.long	0xa4
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x772
	.uleb128 0x5
	.byte	0x8
	.long	0x53d
	.uleb128 0x14
	.long	0x797
	.byte	0x1
	.long	0x3b
	.uleb128 0x15
	.long	0x361
	.uleb128 0x15
	.long	0x797
	.uleb128 0x15
	.long	0x3b
	.uleb128 0x15
	.long	0x79d
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x377
	.uleb128 0x5
	.byte	0x8
	.long	0x5b2
	.uleb128 0x5
	.byte	0x8
	.long	0x778
	.uleb128 0x17
	.long	0x7bf
	.byte	0x1
	.uleb128 0x15
	.long	0x3b
	.uleb128 0x15
	.long	0x361
	.uleb128 0x15
	.long	0x79d
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x7a9
	.uleb128 0x17
	.long	0x7d6
	.byte	0x1
	.uleb128 0x15
	.long	0x361
	.uleb128 0x15
	.long	0x79d
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x7c5
	.uleb128 0x14
	.long	0x7f1
	.byte	0x1
	.long	0x3b
	.uleb128 0x15
	.long	0x361
	.uleb128 0x15
	.long	0x79d
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x7dc
	.uleb128 0x18
	.long	.LASF131
	.byte	0x2
	.value	0x162
	.long	0x5b2
	.uleb128 0x5
	.byte	0x8
	.long	0x7f7
	.uleb128 0x2
	.long	.LASF160
	.byte	0x9
	.byte	0x20
	.long	0x814
	.uleb128 0xa
	.long	0x824
	.long	0x49
	.uleb128 0xb
	.long	0x57
	.byte	0x7
	.byte	0x0
	.uleb128 0xc
	.long	0x85b
	.long	.LASF161
	.byte	0xc8
	.byte	0x8
	.byte	0x24
	.uleb128 0x9
	.long	.LASF162
	.byte	0x8
	.byte	0x29
	.long	0x809
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF163
	.byte	0x8
	.byte	0x2a
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.long	.LASF164
	.byte	0x8
	.byte	0x2b
	.long	0xe7
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.byte	0x0
	.uleb128 0x2
	.long	.LASF165
	.byte	0x8
	.byte	0x31
	.long	0x866
	.uleb128 0xa
	.long	0x876
	.long	0x824
	.uleb128 0xb
	.long	0x57
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.long	0x8c9
	.long	.LASF166
	.byte	0xf8
	.byte	0x1
	.byte	0x62
	.uleb128 0x9
	.long	.LASF167
	.byte	0x1
	.byte	0x64
	.long	0x797
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF168
	.byte	0x1
	.byte	0x65
	.long	0x8c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF169
	.byte	0x1
	.byte	0x66
	.long	0x361
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.long	.LASF170
	.byte	0x1
	.byte	0x67
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.long	.LASF171
	.byte	0x1
	.byte	0x68
	.long	0x85b
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0x0
	.uleb128 0xa
	.long	0x8d9
	.long	0x377
	.uleb128 0xb
	.long	0x57
	.byte	0x13
	.byte	0x0
	.uleb128 0x18
	.long	.LASF172
	.byte	0x1
	.value	0x1a5
	.long	0x8e5
	.uleb128 0x5
	.byte	0x8
	.long	0x8eb
	.uleb128 0x17
	.long	0x8fc
	.byte	0x1
	.uleb128 0x15
	.long	0x3b
	.uleb128 0x15
	.long	0x3b
	.byte	0x0
	.uleb128 0x19
	.long	0x973
	.long	.LASF173
	.byte	0x38
	.byte	0x1
	.value	0x1a7
	.uleb128 0xd
	.long	.LASF118
	.byte	0x1
	.value	0x1a8
	.long	0x65
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1a
	.string	"op1"
	.byte	0x1
	.value	0x1a9
	.long	0x8d9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF174
	.byte	0x1
	.value	0x1aa
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1a
	.string	"op2"
	.byte	0x1
	.value	0x1ab
	.long	0x8d9
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.long	.LASF175
	.byte	0x1
	.value	0x1ac
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1a
	.string	"op3"
	.byte	0x1
	.value	0x1ad
	.long	0x8d9
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.long	.LASF176
	.byte	0x1
	.value	0x1ae
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0x0
	.uleb128 0x1b
	.long	0x9d7
	.long	.LASF182
	.byte	0x1
	.byte	0xa6
	.byte	0x1
	.long	0x3b
	.quad	.LFB37
	.quad	.LFE37
	.byte	0x1
	.byte	0x57
	.uleb128 0x1c
	.long	.LASF177
	.byte	0x1
	.byte	0xa4
	.long	0x79d
	.byte	0x1
	.byte	0x56
	.uleb128 0x1c
	.long	.LASF178
	.byte	0x1
	.byte	0xa5
	.long	0x797
	.byte	0x1
	.byte	0x5c
	.uleb128 0x1d
	.long	.LASF179
	.byte	0x1
	.byte	0xa7
	.long	0x3b
	.byte	0x1
	.byte	0x52
	.uleb128 0x1d
	.long	.LASF180
	.byte	0x1
	.byte	0xa8
	.long	0x9d7
	.byte	0x1
	.byte	0x53
	.uleb128 0x1d
	.long	.LASF181
	.byte	0x1
	.byte	0xa9
	.long	0x361
	.byte	0x1
	.byte	0x5d
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x876
	.uleb128 0x1e
	.long	0xa1d
	.long	.LASF183
	.byte	0x1
	.value	0x6d8
	.byte	0x1
	.long	0x65
	.quad	.LFB39
	.quad	.LFE39
	.byte	0x1
	.byte	0x57
	.uleb128 0x1f
	.long	.LASF184
	.byte	0x1
	.value	0x6d6
	.long	0x3b
	.byte	0x1
	.byte	0x55
	.uleb128 0x1f
	.long	.LASF185
	.byte	0x1
	.value	0x6d7
	.long	0x3b
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0x1e
	.long	0xa77
	.long	.LASF186
	.byte	0x1
	.value	0x9f8
	.byte	0x1
	.long	0x3b
	.quad	.LFB45
	.quad	.LFE45
	.byte	0x1
	.byte	0x57
	.uleb128 0x1f
	.long	.LASF187
	.byte	0x1
	.value	0x9f6
	.long	0x65
	.byte	0x1
	.byte	0x55
	.uleb128 0x1f
	.long	.LASF185
	.byte	0x1
	.value	0x9f7
	.long	0x3b
	.byte	0x1
	.byte	0x54
	.uleb128 0x20
	.string	"p"
	.byte	0x1
	.value	0x9f9
	.long	0x65
	.byte	0x1
	.byte	0x55
	.uleb128 0x20
	.string	"alt"
	.byte	0x1
	.value	0x9fa
	.long	0x3b
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.uleb128 0x21
	.long	0xaa3
	.long	.LASF188
	.byte	0x1
	.value	0xb0a
	.byte	0x1
	.quad	.LFB46
	.quad	.LFE46
	.byte	0x1
	.byte	0x57
	.uleb128 0x22
	.string	"s"
	.byte	0x1
	.value	0xb09
	.long	0x65
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x21
	.long	0xadf
	.long	.LASF189
	.byte	0x1
	.value	0x9e6
	.byte	0x1
	.quad	.LFB43
	.quad	.LFE43
	.byte	0x1
	.byte	0x57
	.uleb128 0x1f
	.long	.LASF190
	.byte	0x1
	.value	0x9e4
	.long	0x3b
	.byte	0x1
	.byte	0x55
	.uleb128 0x1f
	.long	.LASF185
	.byte	0x1
	.value	0x9e5
	.long	0x3b
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0x21
	.long	0xb1b
	.long	.LASF191
	.byte	0x1
	.value	0x9ee
	.byte	0x1
	.quad	.LFB44
	.quad	.LFE44
	.byte	0x1
	.byte	0x57
	.uleb128 0x1f
	.long	.LASF190
	.byte	0x1
	.value	0x9ec
	.long	0x3b
	.byte	0x1
	.byte	0x55
	.uleb128 0x1f
	.long	.LASF185
	.byte	0x1
	.value	0x9ed
	.long	0x3b
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0x23
	.long	.LASF194
	.byte	0x1
	.value	0xb11
	.byte	0x1
	.quad	.LFB47
	.quad	.LFE47
	.byte	0x1
	.byte	0x57
	.uleb128 0x21
	.long	0xbd2
	.long	.LASF192
	.byte	0x1
	.value	0xb41
	.byte	0x1
	.quad	.LFB49
	.quad	.LFE49
	.byte	0x1
	.byte	0x57
	.uleb128 0x22
	.string	"buf"
	.byte	0x1
	.value	0xb3e
	.long	0xa4
	.byte	0x1
	.byte	0x53
	.uleb128 0x22
	.string	"hex"
	.byte	0x1
	.value	0xb3f
	.long	0x3b
	.byte	0x1
	.byte	0x54
	.uleb128 0x1f
	.long	.LASF193
	.byte	0x1
	.value	0xb40
	.long	0x361
	.byte	0x1
	.byte	0x51
	.uleb128 0x24
	.long	0xbb0
	.long	.Ldebug_ranges0+0x0
	.uleb128 0x20
	.string	"v"
	.byte	0x1
	.value	0xb50
	.long	0x36c
	.byte	0x1
	.byte	0x54
	.uleb128 0x20
	.string	"tmp"
	.byte	0x1
	.value	0xb51
	.long	0xbd2
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x20
	.string	"i"
	.byte	0x1
	.value	0xb52
	.long	0x3b
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x25
	.long	.Ldebug_ranges0+0x40
	.uleb128 0x20
	.string	"tmp"
	.byte	0x1
	.value	0xb46
	.long	0xbd2
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x20
	.string	"i"
	.byte	0x1
	.value	0xb47
	.long	0x3b
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.long	0xbe2
	.long	0x70
	.uleb128 0xb
	.long	0x57
	.byte	0x1d
	.byte	0x0
	.uleb128 0x23
	.long	.LASF195
	.byte	0x1
	.value	0x1014
	.byte	0x1
	.quad	.LFB83
	.quad	.LFE83
	.byte	0x1
	.byte	0x57
	.uleb128 0x1e
	.long	0xc2d
	.long	.LASF196
	.byte	0x1
	.value	0xce7
	.byte	0x1
	.long	0x36c
	.quad	.LFB54
	.quad	.LFE54
	.byte	0x1
	.byte	0x57
	.uleb128 0x20
	.string	"x"
	.byte	0x1
	.value	0xce8
	.long	0x36c
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0x21
	.long	0xc68
	.long	.LASF197
	.byte	0x1
	.value	0xd04
	.byte	0x1
	.quad	.LFB56
	.quad	.LFE56
	.byte	0x1
	.byte	0x57
	.uleb128 0x22
	.string	"op"
	.byte	0x1
	.value	0xd02
	.long	0x361
	.byte	0x1
	.byte	0x55
	.uleb128 0x1f
	.long	.LASF198
	.byte	0x1
	.value	0xd03
	.long	0x3b
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0x1e
	.long	0xc98
	.long	.LASF199
	.byte	0x1
	.value	0xcf7
	.byte	0x1
	.long	0x3b
	.quad	.LFB55
	.quad	.LFE55
	.byte	0x1
	.byte	0x57
	.uleb128 0x20
	.string	"x"
	.byte	0x1
	.value	0xcf8
	.long	0x3b
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x21
	.long	0xd4d
	.long	.LASF200
	.byte	0x1
	.value	0xb7c
	.byte	0x1
	.quad	.LFB50
	.quad	.LFE50
	.byte	0x1
	.byte	0x57
	.uleb128 0x1f
	.long	.LASF190
	.byte	0x1
	.value	0xb7a
	.long	0x3b
	.byte	0x1
	.byte	0x56
	.uleb128 0x1f
	.long	.LASF185
	.byte	0x1
	.value	0xb7b
	.long	0x3b
	.byte	0x1
	.byte	0x5c
	.uleb128 0x26
	.long	.LASF193
	.byte	0x1
	.value	0xb7d
	.long	0x361
	.byte	0x1
	.byte	0x5e
	.uleb128 0x20
	.string	"add"
	.byte	0x1
	.value	0xb7e
	.long	0x3b
	.byte	0x1
	.byte	0x53
	.uleb128 0x26
	.long	.LASF198
	.byte	0x1
	.value	0xb7f
	.long	0x3b
	.byte	0x1
	.byte	0x5f
	.uleb128 0x25
	.long	.Ldebug_ranges0+0x70
	.uleb128 0x26
	.long	.LASF201
	.byte	0x1
	.value	0xbbe
	.long	0x3b
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x26
	.long	.LASF202
	.byte	0x1
	.value	0xbbf
	.long	0x3b
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x26
	.long	.LASF203
	.byte	0x1
	.value	0xbc0
	.long	0x3b
	.byte	0x1
	.byte	0x53
	.uleb128 0x26
	.long	.LASF204
	.byte	0x1
	.value	0xbc1
	.long	0x3b
	.byte	0x1
	.byte	0x5d
	.uleb128 0x26
	.long	.LASF205
	.byte	0x1
	.value	0xbc2
	.long	0x3b
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
	.long	0xd89
	.long	.LASF206
	.byte	0x1
	.value	0xb36
	.byte	0x1
	.quad	.LFB48
	.quad	.LFE48
	.byte	0x1
	.byte	0x57
	.uleb128 0x1f
	.long	.LASF190
	.byte	0x1
	.value	0xb34
	.long	0x3b
	.byte	0x1
	.byte	0x56
	.uleb128 0x1f
	.long	.LASF185
	.byte	0x1
	.value	0xb35
	.long	0x3b
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x1e
	.long	0xf4a
	.long	.LASF207
	.byte	0x1
	.value	0x73f
	.byte	0x1
	.long	0x3b
	.quad	.LFB41
	.quad	.LFE41
	.byte	0x1
	.byte	0x57
	.uleb128 0x22
	.string	"pc"
	.byte	0x1
	.value	0x73d
	.long	0x361
	.byte	0x1
	.byte	0x53
	.uleb128 0x1f
	.long	.LASF177
	.byte	0x1
	.value	0x73e
	.long	0x803
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x20
	.string	"dp"
	.byte	0x1
	.value	0x740
	.long	0xf4a
	.byte	0x1
	.byte	0x53
	.uleb128 0x20
	.string	"i"
	.byte	0x1
	.value	0x741
	.long	0x3b
	.byte	0x1
	.byte	0x53
	.uleb128 0x26
	.long	.LASF208
	.byte	0x1
	.value	0x742
	.long	0x3b
	.byte	0x1
	.byte	0x5d
	.uleb128 0x26
	.long	.LASF209
	.byte	0x1
	.value	0x743
	.long	0xa4
	.byte	0x1
	.byte	0x52
	.uleb128 0x26
	.long	.LASF210
	.byte	0x1
	.value	0x743
	.long	0xa4
	.byte	0x1
	.byte	0x53
	.uleb128 0x26
	.long	.LASF211
	.byte	0x1
	.value	0x743
	.long	0xa4
	.byte	0x1
	.byte	0x56
	.uleb128 0x26
	.long	.LASF212
	.byte	0x1
	.value	0x744
	.long	0x3b
	.byte	0x1
	.byte	0x50
	.uleb128 0x26
	.long	.LASF213
	.byte	0x1
	.value	0x745
	.long	0x77
	.byte	0x1
	.byte	0x56
	.uleb128 0x26
	.long	.LASF185
	.byte	0x1
	.value	0x746
	.long	0x3b
	.byte	0x1
	.byte	0x5c
	.uleb128 0x20
	.string	"p"
	.byte	0x1
	.value	0x747
	.long	0x65
	.byte	0x1
	.byte	0x58
	.uleb128 0x26
	.long	.LASF180
	.byte	0x1
	.value	0x748
	.long	0x876
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x24
	.long	0xe74
	.long	.Ldebug_ranges0+0xd0
	.uleb128 0x27
	.long	.LASF118
	.byte	0x1
	.value	0x7bd
	.long	0x65
	.byte	0x0
	.uleb128 0x24
	.long	0xe8c
	.long	.Ldebug_ranges0+0x100
	.uleb128 0x26
	.long	.LASF118
	.byte	0x1
	.value	0x874
	.long	0x65
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x28
	.long	0xeba
	.long	0xf55
	.quad	.LBB14
	.quad	.LBE14
	.uleb128 0x29
	.long	0xf63
	.byte	0x1
	.byte	0x53
	.uleb128 0x25
	.long	.Ldebug_ranges0+0x140
	.uleb128 0x29
	.long	0xf63
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
	.long	0xede
	.quad	.LBB18
	.quad	.LBE18
	.uleb128 0x26
	.long	.LASF118
	.byte	0x1
	.value	0x7e0
	.long	0x65
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x24
	.long	0xef6
	.long	.Ldebug_ranges0+0x170
	.uleb128 0x26
	.long	.LASF204
	.byte	0x1
	.value	0x834
	.long	0x3b
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.uleb128 0x2a
	.long	0xf1a
	.quad	.LBB22
	.quad	.LBE22
	.uleb128 0x26
	.long	.LASF118
	.byte	0x1
	.value	0x87e
	.long	0x65
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x2b
	.long	0xf70
	.quad	.LBB24
	.quad	.LBE24
	.uleb128 0x2c
	.long	0xf7e
	.uleb128 0x25
	.long	.Ldebug_ranges0+0x1d0
	.uleb128 0x29
	.long	0xf8a
	.byte	0x1
	.byte	0x53
	.uleb128 0x29
	.long	0xf95
	.byte	0x1
	.byte	0x56
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xf50
	.uleb128 0x6
	.long	0x8fc
	.uleb128 0x2d
	.long	0xf70
	.long	.LASF214
	.byte	0x1
	.value	0x674
	.byte	0x1
	.byte	0x1
	.uleb128 0x27
	.long	.LASF215
	.byte	0x1
	.value	0x675
	.long	0x3b
	.byte	0x0
	.uleb128 0x2d
	.long	0xfa2
	.long	.LASF216
	.byte	0x1
	.value	0x9b6
	.byte	0x1
	.byte	0x1
	.uleb128 0x2e
	.long	.LASF185
	.byte	0x1
	.value	0x9b5
	.long	0x3b
	.uleb128 0x2f
	.string	"dp"
	.byte	0x1
	.value	0x9b7
	.long	0xf4a
	.uleb128 0x27
	.long	.LASF217
	.byte	0x1
	.value	0x9b8
	.long	0x77
	.byte	0x0
	.uleb128 0x30
	.long	0xfe2
	.byte	0x1
	.long	.LASF318
	.byte	0x1
	.value	0x735
	.byte	0x1
	.long	0x3b
	.quad	.LFB40
	.quad	.LFE40
	.byte	0x1
	.byte	0x57
	.uleb128 0x22
	.string	"pc"
	.byte	0x1
	.value	0x733
	.long	0x361
	.byte	0x1
	.byte	0x55
	.uleb128 0x1f
	.long	.LASF177
	.byte	0x1
	.value	0x734
	.long	0x803
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0x21
	.long	0x102c
	.long	.LASF218
	.byte	0x1
	.value	0xc98
	.byte	0x1
	.quad	.LFB51
	.quad	.LFE51
	.byte	0x1
	.byte	0x57
	.uleb128 0x1f
	.long	.LASF190
	.byte	0x1
	.value	0xc96
	.long	0x3b
	.byte	0x1
	.byte	0x55
	.uleb128 0x1f
	.long	.LASF185
	.byte	0x1
	.value	0xc97
	.long	0x3b
	.byte	0x1
	.byte	0x54
	.uleb128 0x20
	.string	"add"
	.byte	0x1
	.value	0xc99
	.long	0x3b
	.byte	0x1
	.byte	0x58
	.byte	0x0
	.uleb128 0x1e
	.long	0x1074
	.long	.LASF219
	.byte	0x1
	.value	0xcc1
	.byte	0x1
	.long	0x361
	.quad	.LFB52
	.quad	.LFE52
	.byte	0x1
	.byte	0x57
	.uleb128 0x20
	.string	"x"
	.byte	0x1
	.value	0xcc2
	.long	0x361
	.byte	0x1
	.byte	0x50
	.uleb128 0x20
	.string	"a"
	.byte	0x1
	.value	0xcc4
	.long	0x42
	.byte	0x1
	.byte	0x50
	.uleb128 0x20
	.string	"b"
	.byte	0x1
	.value	0xcc5
	.long	0x42
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0x1e
	.long	0x10a4
	.long	.LASF220
	.byte	0x1
	.value	0xcda
	.byte	0x1
	.long	0x36c
	.quad	.LFB53
	.quad	.LFE53
	.byte	0x1
	.byte	0x57
	.uleb128 0x20
	.string	"x"
	.byte	0x1
	.value	0xcdb
	.long	0x36c
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x21
	.long	0x10fa
	.long	.LASF221
	.byte	0x1
	.value	0xd17
	.byte	0x1
	.quad	.LFB57
	.quad	.LFE57
	.byte	0x1
	.byte	0x57
	.uleb128 0x1f
	.long	.LASF222
	.byte	0x1
	.value	0xd15
	.long	0x3b
	.byte	0x1
	.byte	0x55
	.uleb128 0x1f
	.long	.LASF185
	.byte	0x1
	.value	0xd16
	.long	0x3b
	.byte	0x1
	.byte	0x54
	.uleb128 0x20
	.string	"s"
	.byte	0x1
	.value	0xd18
	.long	0x65
	.byte	0x1
	.byte	0x55
	.uleb128 0x20
	.string	"add"
	.byte	0x1
	.value	0xd19
	.long	0x3b
	.byte	0x1
	.byte	0x58
	.byte	0x0
	.uleb128 0x21
	.long	0x1142
	.long	.LASF223
	.byte	0x1
	.value	0xd55
	.byte	0x1
	.quad	.LFB58
	.quad	.LFE58
	.byte	0x1
	.byte	0x57
	.uleb128 0x1f
	.long	.LASF222
	.byte	0x1
	.value	0xd53
	.long	0x3b
	.byte	0x1
	.byte	0x55
	.uleb128 0x1f
	.long	.LASF185
	.byte	0x1
	.value	0xd54
	.long	0x3b
	.byte	0x1
	.byte	0x54
	.uleb128 0x20
	.string	"s"
	.byte	0x1
	.value	0xd56
	.long	0x65
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x21
	.long	0x1199
	.long	.LASF224
	.byte	0x1
	.value	0xd86
	.byte	0x1
	.quad	.LFB59
	.quad	.LFE59
	.byte	0x1
	.byte	0x57
	.uleb128 0x1f
	.long	.LASF190
	.byte	0x1
	.value	0xd84
	.long	0x3b
	.byte	0x1
	.byte	0x55
	.uleb128 0x1f
	.long	.LASF185
	.byte	0x1
	.value	0xd85
	.long	0x3b
	.byte	0x1
	.byte	0x54
	.uleb128 0x20
	.string	"op"
	.byte	0x1
	.value	0xd87
	.long	0x36c
	.byte	0x1
	.byte	0x51
	.uleb128 0x26
	.long	.LASF225
	.byte	0x1
	.value	0xd88
	.long	0x36c
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x21
	.long	0x11f0
	.long	.LASF226
	.byte	0x1
	.value	0xdbc
	.byte	0x1
	.quad	.LFB60
	.quad	.LFE60
	.byte	0x1
	.byte	0x57
	.uleb128 0x1f
	.long	.LASF190
	.byte	0x1
	.value	0xdba
	.long	0x3b
	.byte	0x1
	.byte	0x55
	.uleb128 0x1f
	.long	.LASF185
	.byte	0x1
	.value	0xdbb
	.long	0x3b
	.byte	0x1
	.byte	0x54
	.uleb128 0x20
	.string	"op"
	.byte	0x1
	.value	0xdbd
	.long	0x36c
	.byte	0x1
	.byte	0x51
	.uleb128 0x26
	.long	.LASF225
	.byte	0x1
	.value	0xdbe
	.long	0x36c
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x21
	.long	0x1245
	.long	.LASF227
	.byte	0x1
	.value	0xdf1
	.byte	0x1
	.quad	.LFB61
	.quad	.LFE61
	.byte	0x1
	.byte	0x57
	.uleb128 0x1f
	.long	.LASF190
	.byte	0x1
	.value	0xdef
	.long	0x3b
	.byte	0x1
	.byte	0x55
	.uleb128 0x1f
	.long	.LASF185
	.byte	0x1
	.value	0xdf0
	.long	0x3b
	.byte	0x1
	.byte	0x54
	.uleb128 0x20
	.string	"op"
	.byte	0x1
	.value	0xdf2
	.long	0x36c
	.byte	0x1
	.byte	0x51
	.uleb128 0x27
	.long	.LASF225
	.byte	0x1
	.value	0xdf3
	.long	0x36c
	.byte	0x0
	.uleb128 0x21
	.long	0x129d
	.long	.LASF228
	.byte	0x1
	.value	0xe24
	.byte	0x1
	.quad	.LFB62
	.quad	.LFE62
	.byte	0x1
	.byte	0x57
	.uleb128 0x1f
	.long	.LASF190
	.byte	0x1
	.value	0xe22
	.long	0x3b
	.byte	0x1
	.byte	0x55
	.uleb128 0x1f
	.long	.LASF185
	.byte	0x1
	.value	0xe23
	.long	0x3b
	.byte	0x1
	.byte	0x54
	.uleb128 0x26
	.long	.LASF193
	.byte	0x1
	.value	0xe25
	.long	0x361
	.byte	0x1
	.byte	0x53
	.uleb128 0x26
	.long	.LASF225
	.byte	0x1
	.value	0xe26
	.long	0x361
	.byte	0x1
	.byte	0x56
	.byte	0x0
	.uleb128 0x21
	.long	0x12d9
	.long	.LASF229
	.byte	0x1
	.value	0xe4a
	.byte	0x1
	.quad	.LFB63
	.quad	.LFE63
	.byte	0x1
	.byte	0x57
	.uleb128 0x1f
	.long	.LASF230
	.byte	0x1
	.value	0xe48
	.long	0x3b
	.byte	0x1
	.byte	0x55
	.uleb128 0x1f
	.long	.LASF185
	.byte	0x1
	.value	0xe49
	.long	0x3b
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0x21
	.long	0x1331
	.long	.LASF231
	.byte	0x1
	.value	0xe52
	.byte	0x1
	.quad	.LFB64
	.quad	.LFE64
	.byte	0x1
	.byte	0x57
	.uleb128 0x1f
	.long	.LASF230
	.byte	0x1
	.value	0xe50
	.long	0x3b
	.byte	0x1
	.byte	0x55
	.uleb128 0x1f
	.long	.LASF185
	.byte	0x1
	.value	0xe51
	.long	0x3b
	.byte	0x1
	.byte	0x54
	.uleb128 0x20
	.string	"seg"
	.byte	0x1
	.value	0xe53
	.long	0x3b
	.byte	0x1
	.byte	0x51
	.uleb128 0x26
	.long	.LASF232
	.byte	0x1
	.value	0xe53
	.long	0x3b
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x21
	.long	0x13a8
	.long	.LASF233
	.byte	0x1
	.value	0xe86
	.byte	0x1
	.quad	.LFB66
	.quad	.LFE66
	.byte	0x1
	.byte	0x57
	.uleb128 0x1f
	.long	.LASF190
	.byte	0x1
	.value	0xe84
	.long	0x3b
	.byte	0x1
	.byte	0x55
	.uleb128 0x1f
	.long	.LASF185
	.byte	0x1
	.value	0xe85
	.long	0x3b
	.byte	0x1
	.byte	0x53
	.uleb128 0x20
	.string	"off"
	.byte	0x1
	.value	0xe87
	.long	0x361
	.byte	0x1
	.byte	0x53
	.uleb128 0x2b
	.long	0x13a8
	.quad	.LBB36
	.quad	.LBE36
	.uleb128 0x2c
	.long	0x13b6
	.uleb128 0x2c
	.long	0x13c2
	.uleb128 0x25
	.long	.Ldebug_ranges0+0x220
	.uleb128 0x29
	.long	0x13ce
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.long	0x13db
	.long	.LASF234
	.byte	0x1
	.value	0xe6b
	.byte	0x1
	.byte	0x1
	.uleb128 0x2e
	.long	.LASF190
	.byte	0x1
	.value	0xe69
	.long	0x3b
	.uleb128 0x2e
	.long	.LASF185
	.byte	0x1
	.value	0xe6a
	.long	0x3b
	.uleb128 0x2f
	.string	"off"
	.byte	0x1
	.value	0xe6c
	.long	0x361
	.byte	0x0
	.uleb128 0x21
	.long	0x1423
	.long	.LASF235
	.byte	0x1
	.value	0xea4
	.byte	0x1
	.quad	.LFB67
	.quad	.LFE67
	.byte	0x1
	.byte	0x57
	.uleb128 0x1f
	.long	.LASF222
	.byte	0x1
	.value	0xea2
	.long	0x3b
	.byte	0x1
	.byte	0x53
	.uleb128 0x1f
	.long	.LASF185
	.byte	0x1
	.value	0xea3
	.long	0x3b
	.byte	0x1
	.byte	0x56
	.uleb128 0x20
	.string	"s"
	.byte	0x1
	.value	0xea5
	.long	0x65
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x21
	.long	0x145f
	.long	.LASF236
	.byte	0x1
	.value	0xec2
	.byte	0x1
	.quad	.LFB68
	.quad	.LFE68
	.byte	0x1
	.byte	0x57
	.uleb128 0x1f
	.long	.LASF222
	.byte	0x1
	.value	0xec0
	.long	0x3b
	.byte	0x1
	.byte	0x5c
	.uleb128 0x1f
	.long	.LASF185
	.byte	0x1
	.value	0xec1
	.long	0x3b
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x21
	.long	0x149b
	.long	.LASF237
	.byte	0x1
	.value	0xecb
	.byte	0x1
	.quad	.LFB69
	.quad	.LFE69
	.byte	0x1
	.byte	0x57
	.uleb128 0x1f
	.long	.LASF222
	.byte	0x1
	.value	0xec9
	.long	0x3b
	.byte	0x1
	.byte	0x56
	.uleb128 0x1f
	.long	.LASF185
	.byte	0x1
	.value	0xeca
	.long	0x3b
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x21
	.long	0x14e5
	.long	.LASF238
	.byte	0x1
	.value	0xedc
	.byte	0x1
	.quad	.LFB70
	.quad	.LFE70
	.byte	0x1
	.byte	0x57
	.uleb128 0x1f
	.long	.LASF230
	.byte	0x1
	.value	0xeda
	.long	0x3b
	.byte	0x1
	.byte	0x55
	.uleb128 0x1f
	.long	.LASF185
	.byte	0x1
	.value	0xedb
	.long	0x3b
	.byte	0x1
	.byte	0x54
	.uleb128 0x20
	.string	"add"
	.byte	0x1
	.value	0xedd
	.long	0x3b
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x21
	.long	0x152f
	.long	.LASF239
	.byte	0x1
	.value	0xee9
	.byte	0x1
	.quad	.LFB71
	.quad	.LFE71
	.byte	0x1
	.byte	0x57
	.uleb128 0x1f
	.long	.LASF230
	.byte	0x1
	.value	0xee7
	.long	0x3b
	.byte	0x1
	.byte	0x55
	.uleb128 0x1f
	.long	.LASF185
	.byte	0x1
	.value	0xee8
	.long	0x3b
	.byte	0x1
	.byte	0x54
	.uleb128 0x20
	.string	"add"
	.byte	0x1
	.value	0xeea
	.long	0x3b
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x21
	.long	0x156b
	.long	.LASF240
	.byte	0x1
	.value	0xef9
	.byte	0x1
	.quad	.LFB72
	.quad	.LFE72
	.byte	0x1
	.byte	0x57
	.uleb128 0x1f
	.long	.LASF230
	.byte	0x1
	.value	0xef7
	.long	0x3b
	.byte	0x1
	.byte	0x55
	.uleb128 0x1f
	.long	.LASF185
	.byte	0x1
	.value	0xef8
	.long	0x3b
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0x21
	.long	0x15a7
	.long	.LASF241
	.byte	0x1
	.value	0xf02
	.byte	0x1
	.quad	.LFB73
	.quad	.LFE73
	.byte	0x1
	.byte	0x57
	.uleb128 0x1f
	.long	.LASF190
	.byte	0x1
	.value	0xf00
	.long	0x3b
	.byte	0x1
	.byte	0x55
	.uleb128 0x1f
	.long	.LASF185
	.byte	0x1
	.value	0xf01
	.long	0x3b
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0x21
	.long	0x15f1
	.long	.LASF242
	.byte	0x1
	.value	0xf0d
	.byte	0x1
	.quad	.LFB74
	.quad	.LFE74
	.byte	0x1
	.byte	0x57
	.uleb128 0x1f
	.long	.LASF190
	.byte	0x1
	.value	0xf0b
	.long	0x3b
	.byte	0x1
	.byte	0x55
	.uleb128 0x1f
	.long	.LASF185
	.byte	0x1
	.value	0xf0c
	.long	0x3b
	.byte	0x1
	.byte	0x54
	.uleb128 0x20
	.string	"add"
	.byte	0x1
	.value	0xf0e
	.long	0x3b
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x21
	.long	0x163b
	.long	.LASF243
	.byte	0x1
	.value	0xf1e
	.byte	0x1
	.quad	.LFB75
	.quad	.LFE75
	.byte	0x1
	.byte	0x57
	.uleb128 0x1f
	.long	.LASF190
	.byte	0x1
	.value	0xf1c
	.long	0x3b
	.byte	0x1
	.byte	0x55
	.uleb128 0x1f
	.long	.LASF185
	.byte	0x1
	.value	0xf1d
	.long	0x3b
	.byte	0x1
	.byte	0x54
	.uleb128 0x20
	.string	"add"
	.byte	0x1
	.value	0xf1f
	.long	0x3b
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x21
	.long	0x1685
	.long	.LASF244
	.byte	0x1
	.value	0xf2b
	.byte	0x1
	.quad	.LFB76
	.quad	.LFE76
	.byte	0x1
	.byte	0x57
	.uleb128 0x1f
	.long	.LASF190
	.byte	0x1
	.value	0xf29
	.long	0x3b
	.byte	0x1
	.byte	0x55
	.uleb128 0x1f
	.long	.LASF185
	.byte	0x1
	.value	0xf2a
	.long	0x3b
	.byte	0x1
	.byte	0x54
	.uleb128 0x20
	.string	"add"
	.byte	0x1
	.value	0xf2c
	.long	0x3b
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x21
	.long	0x16cf
	.long	.LASF245
	.byte	0x1
	.value	0xf45
	.byte	0x1
	.quad	.LFB77
	.quad	.LFE77
	.byte	0x1
	.byte	0x57
	.uleb128 0x1f
	.long	.LASF190
	.byte	0x1
	.value	0xf43
	.long	0x3b
	.byte	0x1
	.byte	0x55
	.uleb128 0x1f
	.long	.LASF185
	.byte	0x1
	.value	0xf44
	.long	0x3b
	.byte	0x1
	.byte	0x54
	.uleb128 0x20
	.string	"add"
	.byte	0x1
	.value	0xf46
	.long	0x3b
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x21
	.long	0x170b
	.long	.LASF246
	.byte	0x1
	.value	0xf5b
	.byte	0x1
	.quad	.LFB78
	.quad	.LFE78
	.byte	0x1
	.byte	0x57
	.uleb128 0x1f
	.long	.LASF190
	.byte	0x1
	.value	0xf59
	.long	0x3b
	.byte	0x1
	.byte	0x55
	.uleb128 0x1f
	.long	.LASF185
	.byte	0x1
	.value	0xf5a
	.long	0x3b
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0x21
	.long	0x1747
	.long	.LASF247
	.byte	0x1
	.value	0xf66
	.byte	0x1
	.quad	.LFB79
	.quad	.LFE79
	.byte	0x1
	.byte	0x57
	.uleb128 0x1f
	.long	.LASF190
	.byte	0x1
	.value	0xf64
	.long	0x3b
	.byte	0x1
	.byte	0x55
	.uleb128 0x1f
	.long	.LASF185
	.byte	0x1
	.value	0xf65
	.long	0x3b
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0x21
	.long	0x1791
	.long	.LASF248
	.byte	0x1
	.value	0xfb4
	.byte	0x1
	.quad	.LFB80
	.quad	.LFE80
	.byte	0x1
	.byte	0x57
	.uleb128 0x1f
	.long	.LASF190
	.byte	0x1
	.value	0xfb2
	.long	0x3b
	.byte	0x1
	.byte	0x55
	.uleb128 0x1f
	.long	.LASF185
	.byte	0x1
	.value	0xfb3
	.long	0x3b
	.byte	0x1
	.byte	0x54
	.uleb128 0x26
	.long	.LASF249
	.byte	0x1
	.value	0xfb5
	.long	0x65
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x21
	.long	0x17fd
	.long	.LASF250
	.byte	0x1
	.value	0xfda
	.byte	0x1
	.quad	.LFB81
	.quad	.LFE81
	.byte	0x1
	.byte	0x57
	.uleb128 0x1f
	.long	.LASF190
	.byte	0x1
	.value	0xfd8
	.long	0x3b
	.byte	0x1
	.byte	0x55
	.uleb128 0x1f
	.long	.LASF185
	.byte	0x1
	.value	0xfd9
	.long	0x3b
	.byte	0x1
	.byte	0x54
	.uleb128 0x26
	.long	.LASF251
	.byte	0x1
	.value	0xfdb
	.long	0x42
	.byte	0x1
	.byte	0x59
	.uleb128 0x25
	.long	.Ldebug_ranges0+0x250
	.uleb128 0x26
	.long	.LASF252
	.byte	0x1
	.value	0xfe2
	.long	0x70
	.byte	0x1
	.byte	0x52
	.uleb128 0x26
	.long	.LASF253
	.byte	0x1
	.value	0xfe2
	.long	0x70
	.byte	0x1
	.byte	0x58
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
	.long	0x1857
	.long	.LASF254
	.byte	0x1
	.value	0x1004
	.byte	0x1
	.quad	.LFB82
	.quad	.LFE82
	.byte	0x1
	.byte	0x57
	.uleb128 0x1f
	.long	.LASF255
	.byte	0x1
	.value	0x1002
	.long	0x3b
	.byte	0x1
	.byte	0x53
	.uleb128 0x1f
	.long	.LASF185
	.byte	0x1
	.value	0x1003
	.long	0x3b
	.byte	0x1
	.byte	0x54
	.uleb128 0x31
	.quad	.LBB42
	.quad	.LBE42
	.uleb128 0x20
	.string	"p"
	.byte	0x1
	.value	0x1009
	.long	0xa4
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.long	.LASF256
	.byte	0x3
	.byte	0x91
	.long	0x314
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.long	.LASF257
	.byte	0x3
	.byte	0x92
	.long	0x314
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.long	.LASF258
	.byte	0x1
	.byte	0x70
	.long	0x3b
	.byte	0x9
	.byte	0x3
	.quad	mode_64bit
	.uleb128 0x1d
	.long	.LASF259
	.byte	0x1
	.byte	0x73
	.long	0x3b
	.byte	0x9
	.byte	0x3
	.quad	prefixes
	.uleb128 0x33
	.string	"rex"
	.byte	0x1
	.byte	0x76
	.long	0x3b
	.byte	0x9
	.byte	0x3
	.quad	rex
	.uleb128 0x1d
	.long	.LASF260
	.byte	0x1
	.byte	0x78
	.long	0x3b
	.byte	0x9
	.byte	0x3
	.quad	rex_used
	.uleb128 0x1d
	.long	.LASF261
	.byte	0x1
	.byte	0x8b
	.long	0x3b
	.byte	0x9
	.byte	0x3
	.quad	used_prefixes
	.uleb128 0xa
	.long	0x18ea
	.long	0xf50
	.uleb128 0xb
	.long	0x57
	.byte	0xff
	.byte	0x0
	.uleb128 0x26
	.long	.LASF173
	.byte	0x1
	.value	0x1cf
	.long	0x1900
	.byte	0x9
	.byte	0x3
	.quad	dis386
	.uleb128 0x6
	.long	0x18da
	.uleb128 0xa
	.long	0x1915
	.long	0xf50
	.uleb128 0xb
	.long	0x57
	.byte	0xff
	.byte	0x0
	.uleb128 0x26
	.long	.LASF262
	.byte	0x1
	.value	0x2f3
	.long	0x192b
	.byte	0x9
	.byte	0x3
	.quad	dis386_twobyte
	.uleb128 0x6
	.long	0x1905
	.uleb128 0xa
	.long	0x1940
	.long	0x1940
	.uleb128 0xb
	.long	0x57
	.byte	0xff
	.byte	0x0
	.uleb128 0x6
	.long	0x77
	.uleb128 0x26
	.long	.LASF263
	.byte	0x1
	.value	0x416
	.long	0x195b
	.byte	0x9
	.byte	0x3
	.quad	onebyte_has_modrm
	.uleb128 0x6
	.long	0x1930
	.uleb128 0x26
	.long	.LASF264
	.byte	0x1
	.value	0x42d
	.long	0x1976
	.byte	0x9
	.byte	0x3
	.quad	twobyte_has_modrm
	.uleb128 0x6
	.long	0x1930
	.uleb128 0x26
	.long	.LASF265
	.byte	0x1
	.value	0x444
	.long	0x1991
	.byte	0x9
	.byte	0x3
	.quad	twobyte_uses_SSE_prefix
	.uleb128 0x6
	.long	0x1930
	.uleb128 0xa
	.long	0x19a6
	.long	0x70
	.uleb128 0xb
	.long	0x57
	.byte	0x63
	.byte	0x0
	.uleb128 0x26
	.long	.LASF266
	.byte	0x1
	.value	0x45b
	.long	0x1996
	.byte	0x9
	.byte	0x3
	.quad	obuf
	.uleb128 0x26
	.long	.LASF267
	.byte	0x1
	.value	0x45c
	.long	0xa4
	.byte	0x9
	.byte	0x3
	.quad	obufp
	.uleb128 0x26
	.long	.LASF268
	.byte	0x1
	.value	0x45d
	.long	0x1996
	.byte	0x9
	.byte	0x3
	.quad	scratchbuf
	.uleb128 0x26
	.long	.LASF269
	.byte	0x1
	.value	0x45e
	.long	0x19fe
	.byte	0x9
	.byte	0x3
	.quad	start_codep
	.uleb128 0x5
	.byte	0x8
	.long	0x77
	.uleb128 0x26
	.long	.LASF270
	.byte	0x1
	.value	0x45f
	.long	0x19fe
	.byte	0x9
	.byte	0x3
	.quad	insn_codep
	.uleb128 0x26
	.long	.LASF271
	.byte	0x1
	.value	0x460
	.long	0x19fe
	.byte	0x9
	.byte	0x3
	.quad	codep
	.uleb128 0x26
	.long	.LASF272
	.byte	0x1
	.value	0x461
	.long	0x803
	.byte	0x9
	.byte	0x3
	.quad	the_info
	.uleb128 0x20
	.string	"mod"
	.byte	0x1
	.value	0x462
	.long	0x3b
	.byte	0x9
	.byte	0x3
	.quad	mod
	.uleb128 0x20
	.string	"rm"
	.byte	0x1
	.value	0x463
	.long	0x3b
	.byte	0x9
	.byte	0x3
	.quad	rm
	.uleb128 0x20
	.string	"reg"
	.byte	0x1
	.value	0x464
	.long	0x3b
	.byte	0x9
	.byte	0x3
	.quad	reg
	.uleb128 0x26
	.long	.LASF273
	.byte	0x1
	.value	0x465
	.long	0x77
	.byte	0x9
	.byte	0x3
	.quad	need_modrm
	.uleb128 0x26
	.long	.LASF274
	.byte	0x1
	.value	0x46c
	.long	0x1ab3
	.byte	0x9
	.byte	0x3
	.quad	names64
	.uleb128 0x5
	.byte	0x8
	.long	0x65
	.uleb128 0x26
	.long	.LASF275
	.byte	0x1
	.value	0x46d
	.long	0x1ab3
	.byte	0x9
	.byte	0x3
	.quad	names32
	.uleb128 0x26
	.long	.LASF276
	.byte	0x1
	.value	0x46e
	.long	0x1ab3
	.byte	0x9
	.byte	0x3
	.quad	names16
	.uleb128 0x26
	.long	.LASF277
	.byte	0x1
	.value	0x46f
	.long	0x1ab3
	.byte	0x9
	.byte	0x3
	.quad	names8
	.uleb128 0x26
	.long	.LASF278
	.byte	0x1
	.value	0x470
	.long	0x1ab3
	.byte	0x9
	.byte	0x3
	.quad	names8rex
	.uleb128 0x26
	.long	.LASF279
	.byte	0x1
	.value	0x471
	.long	0x1ab3
	.byte	0x9
	.byte	0x3
	.quad	names_seg
	.uleb128 0x26
	.long	.LASF280
	.byte	0x1
	.value	0x472
	.long	0x1ab3
	.byte	0x9
	.byte	0x3
	.quad	index16
	.uleb128 0xa
	.long	0x1b4d
	.long	0x65
	.uleb128 0xb
	.long	0x57
	.byte	0xf
	.byte	0x0
	.uleb128 0x26
	.long	.LASF281
	.byte	0x1
	.value	0x474
	.long	0x1b3d
	.byte	0x9
	.byte	0x3
	.quad	intel_names64
	.uleb128 0xa
	.long	0x1b73
	.long	0x65
	.uleb128 0xb
	.long	0x57
	.byte	0xf
	.byte	0x0
	.uleb128 0x26
	.long	.LASF282
	.byte	0x1
	.value	0x478
	.long	0x1b63
	.byte	0x9
	.byte	0x3
	.quad	intel_names32
	.uleb128 0xa
	.long	0x1b99
	.long	0x65
	.uleb128 0xb
	.long	0x57
	.byte	0xf
	.byte	0x0
	.uleb128 0x26
	.long	.LASF283
	.byte	0x1
	.value	0x47c
	.long	0x1b89
	.byte	0x9
	.byte	0x3
	.quad	intel_names16
	.uleb128 0xa
	.long	0x1bbf
	.long	0x65
	.uleb128 0xb
	.long	0x57
	.byte	0x7
	.byte	0x0
	.uleb128 0x26
	.long	.LASF284
	.byte	0x1
	.value	0x480
	.long	0x1baf
	.byte	0x9
	.byte	0x3
	.quad	intel_names8
	.uleb128 0xa
	.long	0x1be5
	.long	0x65
	.uleb128 0xb
	.long	0x57
	.byte	0xf
	.byte	0x0
	.uleb128 0x26
	.long	.LASF285
	.byte	0x1
	.value	0x483
	.long	0x1bd5
	.byte	0x9
	.byte	0x3
	.quad	intel_names8rex
	.uleb128 0xa
	.long	0x1c0b
	.long	0x65
	.uleb128 0xb
	.long	0x57
	.byte	0x7
	.byte	0x0
	.uleb128 0x26
	.long	.LASF286
	.byte	0x1
	.value	0x487
	.long	0x1bfb
	.byte	0x9
	.byte	0x3
	.quad	intel_names_seg
	.uleb128 0xa
	.long	0x1c31
	.long	0x65
	.uleb128 0xb
	.long	0x57
	.byte	0x7
	.byte	0x0
	.uleb128 0x26
	.long	.LASF287
	.byte	0x1
	.value	0x48a
	.long	0x1c21
	.byte	0x9
	.byte	0x3
	.quad	intel_index16
	.uleb128 0xa
	.long	0x1c57
	.long	0x65
	.uleb128 0xb
	.long	0x57
	.byte	0xf
	.byte	0x0
	.uleb128 0x26
	.long	.LASF288
	.byte	0x1
	.value	0x48e
	.long	0x1c47
	.byte	0x9
	.byte	0x3
	.quad	att_names64
	.uleb128 0xa
	.long	0x1c7d
	.long	0x65
	.uleb128 0xb
	.long	0x57
	.byte	0xf
	.byte	0x0
	.uleb128 0x26
	.long	.LASF289
	.byte	0x1
	.value	0x492
	.long	0x1c6d
	.byte	0x9
	.byte	0x3
	.quad	att_names32
	.uleb128 0xa
	.long	0x1ca3
	.long	0x65
	.uleb128 0xb
	.long	0x57
	.byte	0xf
	.byte	0x0
	.uleb128 0x26
	.long	.LASF290
	.byte	0x1
	.value	0x496
	.long	0x1c93
	.byte	0x9
	.byte	0x3
	.quad	att_names16
	.uleb128 0xa
	.long	0x1cc9
	.long	0x65
	.uleb128 0xb
	.long	0x57
	.byte	0x7
	.byte	0x0
	.uleb128 0x26
	.long	.LASF291
	.byte	0x1
	.value	0x49a
	.long	0x1cb9
	.byte	0x9
	.byte	0x3
	.quad	att_names8
	.uleb128 0xa
	.long	0x1cef
	.long	0x65
	.uleb128 0xb
	.long	0x57
	.byte	0xf
	.byte	0x0
	.uleb128 0x26
	.long	.LASF292
	.byte	0x1
	.value	0x49d
	.long	0x1cdf
	.byte	0x9
	.byte	0x3
	.quad	att_names8rex
	.uleb128 0xa
	.long	0x1d15
	.long	0x65
	.uleb128 0xb
	.long	0x57
	.byte	0x7
	.byte	0x0
	.uleb128 0x26
	.long	.LASF293
	.byte	0x1
	.value	0x4a1
	.long	0x1d05
	.byte	0x9
	.byte	0x3
	.quad	att_names_seg
	.uleb128 0xa
	.long	0x1d3b
	.long	0x65
	.uleb128 0xb
	.long	0x57
	.byte	0x7
	.byte	0x0
	.uleb128 0x26
	.long	.LASF294
	.byte	0x1
	.value	0x4a4
	.long	0x1d2b
	.byte	0x9
	.byte	0x3
	.quad	att_index16
	.uleb128 0xa
	.long	0x1d67
	.long	0xf50
	.uleb128 0xb
	.long	0x57
	.byte	0x16
	.uleb128 0xb
	.long	0x57
	.byte	0x7
	.byte	0x0
	.uleb128 0x26
	.long	.LASF295
	.byte	0x1
	.value	0x4a8
	.long	0x1d7d
	.byte	0x9
	.byte	0x3
	.quad	grps
	.uleb128 0x6
	.long	0x1d51
	.uleb128 0xa
	.long	0x1d98
	.long	0xf50
	.uleb128 0xb
	.long	0x57
	.byte	0x1a
	.uleb128 0xb
	.long	0x57
	.byte	0x3
	.byte	0x0
	.uleb128 0x26
	.long	.LASF296
	.byte	0x1
	.value	0x5a9
	.long	0x1dae
	.byte	0x9
	.byte	0x3
	.quad	prefix_user_table
	.uleb128 0x6
	.long	0x1d82
	.uleb128 0xa
	.long	0x1dc9
	.long	0xf50
	.uleb128 0xb
	.long	0x57
	.byte	0x0
	.uleb128 0xb
	.long	0x57
	.byte	0x1
	.byte	0x0
	.uleb128 0x26
	.long	.LASF297
	.byte	0x1
	.value	0x669
	.long	0x1ddf
	.byte	0x9
	.byte	0x3
	.quad	x86_64_table
	.uleb128 0x6
	.long	0x1db3
	.uleb128 0x26
	.long	.LASF298
	.byte	0x1
	.value	0x71c
	.long	0x1996
	.byte	0x9
	.byte	0x3
	.quad	op1out
	.uleb128 0x26
	.long	.LASF299
	.byte	0x1
	.value	0x71c
	.long	0x1996
	.byte	0x9
	.byte	0x3
	.quad	op2out
	.uleb128 0x26
	.long	.LASF300
	.byte	0x1
	.value	0x71c
	.long	0x1996
	.byte	0x9
	.byte	0x3
	.quad	op3out
	.uleb128 0x26
	.long	.LASF301
	.byte	0x1
	.value	0x71d
	.long	0x3b
	.byte	0x9
	.byte	0x3
	.quad	op_ad
	.uleb128 0xa
	.long	0x1e4c
	.long	0x3b
	.uleb128 0xb
	.long	0x57
	.byte	0x2
	.byte	0x0
	.uleb128 0x26
	.long	.LASF302
	.byte	0x1
	.value	0x71d
	.long	0x1e3c
	.byte	0x9
	.byte	0x3
	.quad	op_index
	.uleb128 0xa
	.long	0x1e72
	.long	0x361
	.uleb128 0xb
	.long	0x57
	.byte	0x2
	.byte	0x0
	.uleb128 0x26
	.long	.LASF303
	.byte	0x1
	.value	0x71e
	.long	0x1e62
	.byte	0x9
	.byte	0x3
	.quad	op_address
	.uleb128 0x26
	.long	.LASF304
	.byte	0x1
	.value	0x71f
	.long	0x1e62
	.byte	0x9
	.byte	0x3
	.quad	op_riprel
	.uleb128 0x26
	.long	.LASF305
	.byte	0x1
	.value	0x720
	.long	0x361
	.byte	0x9
	.byte	0x3
	.quad	start_pc
	.uleb128 0x26
	.long	.LASF306
	.byte	0x1
	.value	0x72b
	.long	0xaa
	.byte	0x9
	.byte	0x3
	.quad	intel_syntax
	.uleb128 0x26
	.long	.LASF307
	.byte	0x1
	.value	0x72c
	.long	0x70
	.byte	0x9
	.byte	0x3
	.quad	open_char
	.uleb128 0x26
	.long	.LASF308
	.byte	0x1
	.value	0x72d
	.long	0x70
	.byte	0x9
	.byte	0x3
	.quad	close_char
	.uleb128 0x26
	.long	.LASF309
	.byte	0x1
	.value	0x72e
	.long	0x70
	.byte	0x9
	.byte	0x3
	.quad	separator_char
	.uleb128 0x26
	.long	.LASF310
	.byte	0x1
	.value	0x72f
	.long	0x70
	.byte	0x9
	.byte	0x3
	.quad	scale_char
	.uleb128 0xa
	.long	0x1f32
	.long	0x65
	.uleb128 0xb
	.long	0x57
	.byte	0x3f
	.byte	0x0
	.uleb128 0x26
	.long	.LASF311
	.byte	0x1
	.value	0x8c2
	.long	0x1f22
	.byte	0x9
	.byte	0x3
	.quad	float_mem
	.uleb128 0xa
	.long	0x1f5e
	.long	0xf50
	.uleb128 0xb
	.long	0x57
	.byte	0x7
	.uleb128 0xb
	.long	0x57
	.byte	0x7
	.byte	0x0
	.uleb128 0x26
	.long	.LASF312
	.byte	0x1
	.value	0x91a
	.long	0x1f74
	.byte	0x9
	.byte	0x3
	.quad	float_reg
	.uleb128 0x6
	.long	0x1f48
	.uleb128 0xa
	.long	0x1f8f
	.long	0xa4
	.uleb128 0xb
	.long	0x57
	.byte	0x8
	.uleb128 0xb
	.long	0x57
	.byte	0x7
	.byte	0x0
	.uleb128 0x26
	.long	.LASF313
	.byte	0x1
	.value	0x983
	.long	0x1f79
	.byte	0x9
	.byte	0x3
	.quad	fgrps
	.uleb128 0xa
	.long	0x1fb5
	.long	0x65
	.uleb128 0xb
	.long	0x57
	.byte	0xff
	.byte	0x0
	.uleb128 0x26
	.long	.LASF314
	.byte	0x1
	.value	0xf6d
	.long	0x1fa5
	.byte	0x9
	.byte	0x3
	.quad	Suffix3DNow
	.uleb128 0xa
	.long	0x1fdb
	.long	0x65
	.uleb128 0xb
	.long	0x57
	.byte	0x7
	.byte	0x0
	.uleb128 0x26
	.long	.LASF315
	.byte	0x1
	.value	0xfcb
	.long	0x1fcb
	.byte	0x9
	.byte	0x3
	.quad	simd_cmp_op
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0x16
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
	.uleb128 0x18
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x27
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
	.uleb128 0x16
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0x2e
	.byte	0x0
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
	.uleb128 0x24
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
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
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
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
	.uleb128 0x2c
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
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
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x22
	.value	0x2
	.long	.Ldebug_info0
	.long	0x1ff2
	.long	0xfa2
	.string	"print_insn_i386"
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
	.quad	.LBB2-.Ltext0
	.quad	.LBE2-.Ltext0
	.quad	.LBB5-.Ltext0
	.quad	.LBE5-.Ltext0
	.quad	.LBB3-.Ltext0
	.quad	.LBE3-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB4-.Ltext0
	.quad	.LBE4-.Ltext0
	.quad	.LBB6-.Ltext0
	.quad	.LBE6-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB7-.Ltext0
	.quad	.LBE7-.Ltext0
	.quad	.LBB11-.Ltext0
	.quad	.LBE11-.Ltext0
	.quad	.LBB10-.Ltext0
	.quad	.LBE10-.Ltext0
	.quad	.LBB9-.Ltext0
	.quad	.LBE9-.Ltext0
	.quad	.LBB8-.Ltext0
	.quad	.LBE8-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB12-.Ltext0
	.quad	.LBE12-.Ltext0
	.quad	.LBB23-.Ltext0
	.quad	.LBE23-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB13-.Ltext0
	.quad	.LBE13-.Ltext0
	.quad	.LBB21-.Ltext0
	.quad	.LBE21-.Ltext0
	.quad	.LBB19-.Ltext0
	.quad	.LBE19-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB15-.Ltext0
	.quad	.LBE15-.Ltext0
	.quad	.LBB17-.Ltext0
	.quad	.LBE17-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB20-.Ltext0
	.quad	.LBE20-.Ltext0
	.quad	.LBB33-.Ltext0
	.quad	.LBE33-.Ltext0
	.quad	.LBB30-.Ltext0
	.quad	.LBE30-.Ltext0
	.quad	.LBB27-.Ltext0
	.quad	.LBE27-.Ltext0
	.quad	.LBB26-.Ltext0
	.quad	.LBE26-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB25-.Ltext0
	.quad	.LBE25-.Ltext0
	.quad	.LBB35-.Ltext0
	.quad	.LBE35-.Ltext0
	.quad	.LBB32-.Ltext0
	.quad	.LBE32-.Ltext0
	.quad	.LBB29-.Ltext0
	.quad	.LBE29-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB37-.Ltext0
	.quad	.LBE37-.Ltext0
	.quad	.LBB39-.Ltext0
	.quad	.LBE39-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB40-.Ltext0
	.quad	.LBE40-.Ltext0
	.quad	.LBB41-.Ltext0
	.quad	.LBE41-.Ltext0
	.quad	0x0
	.quad	0x0
	.section	.debug_str,"MS",@progbits,1
.LASF145:
	.string	"print_address_func"
.LASF159:
	.string	"disassembler_options"
.LASF174:
	.string	"bytemode1"
.LASF175:
	.string	"bytemode2"
.LASF267:
	.string	"obufp"
.LASF94:
	.string	"bfd_arch_convex"
.LASF37:
	.string	"_shortbuf"
.LASF203:
	.string	"base"
.LASF47:
	.string	"_IO_lock_t"
.LASF123:
	.string	"dis_noninsn"
.LASF44:
	.string	"__pad5"
.LASF79:
	.string	"bfd_architecture"
.LASF305:
	.string	"start_pc"
.LASF26:
	.string	"_IO_buf_end"
.LASF141:
	.string	"flags"
.LASF147:
	.string	"buffer"
.LASF121:
	.string	"fprintf_ftype"
.LASF184:
	.string	"pref"
.LASF100:
	.string	"bfd_arch_hppa"
.LASF154:
	.string	"branch_delay_insns"
.LASF24:
	.string	"_IO_write_end"
.LASF1:
	.string	"unsigned int"
.LASF247:
	.string	"OP_XS"
.LASF138:
	.string	"endian"
.LASF65:
	.string	"bfd_target_oasys_flavour"
.LASF83:
	.string	"bfd_arch_vax"
.LASF225:
	.string	"mask"
.LASF18:
	.string	"_flags"
.LASF170:
	.string	"orig_sizeflag"
.LASF87:
	.string	"bfd_arch_mips"
.LASF156:
	.string	"insn_type"
.LASF103:
	.string	"bfd_arch_h8500"
.LASF315:
	.string	"simd_cmp_op"
.LASF34:
	.string	"_old_offset"
.LASF126:
	.string	"dis_condbranch"
.LASF284:
	.string	"intel_names8"
.LASF30:
	.string	"_markers"
.LASF233:
	.string	"OP_OFF64"
.LASF8:
	.string	"short int"
.LASF190:
	.string	"bytemode"
.LASF131:
	.string	"disassemble_info"
.LASF307:
	.string	"open_char"
.LASF258:
	.string	"mode_64bit"
.LASF130:
	.string	"dis_dref2"
.LASF70:
	.string	"bfd_target_os9k_flavour"
.LASF310:
	.string	"scale_char"
.LASF104:
	.string	"bfd_arch_sh"
.LASF62:
	.string	"bfd_target_elf_flavour"
.LASF259:
	.string	"prefixes"
.LASF124:
	.string	"dis_nonbranch"
.LASF64:
	.string	"bfd_target_nlm_flavour"
.LASF92:
	.string	"bfd_arch_romp"
.LASF169:
	.string	"insn_start"
.LASF212:
	.string	"needcomma"
.LASF120:
	.string	"asymbol"
.LASF56:
	.string	"bfd_signed_vma"
.LASF238:
	.string	"OP_C"
.LASF200:
	.string	"OP_E"
.LASF218:
	.string	"OP_G"
.LASF224:
	.string	"OP_I"
.LASF90:
	.string	"bfd_arch_tahoe"
.LASF82:
	.string	"bfd_arch_m68k"
.LASF12:
	.string	"int8_t"
.LASF14:
	.string	"__sigset_t"
.LASF202:
	.string	"havebase"
.LASF257:
	.string	"stdout"
.LASF269:
	.string	"start_codep"
.LASF265:
	.string	"twobyte_uses_SSE_prefix"
.LASF289:
	.string	"att_names32"
.LASF243:
	.string	"OP_XMM"
.LASF235:
	.string	"ptr_reg"
.LASF106:
	.string	"bfd_arch_arm"
.LASF301:
	.string	"op_ad"
.LASF234:
	.string	"OP_OFF"
.LASF285:
	.string	"intel_names8rex"
.LASF198:
	.string	"riprel"
.LASF196:
	.string	"get32s"
.LASF204:
	.string	"index"
.LASF311:
	.string	"float_mem"
.LASF89:
	.string	"bfd_arch_we32k"
.LASF286:
	.string	"intel_names_seg"
.LASF15:
	.string	"long long unsigned int"
.LASF148:
	.string	"buffer_vma"
.LASF232:
	.string	"offset"
.LASF271:
	.string	"codep"
.LASF143:
	.string	"read_memory_func"
.LASF266:
	.string	"obuf"
.LASF127:
	.string	"dis_jsr"
.LASF158:
	.string	"target2"
.LASF210:
	.string	"second"
.LASF134:
	.string	"application_data"
.LASF160:
	.string	"__jmp_buf"
.LASF150:
	.string	"bytes_per_line"
.LASF61:
	.string	"bfd_target_ecoff_flavour"
.LASF39:
	.string	"_offset"
.LASF176:
	.string	"bytemode3"
.LASF274:
	.string	"names64"
.LASF194:
	.string	"append_seg"
.LASF250:
	.string	"OP_SIMD_Suffix"
.LASF230:
	.string	"dummy"
.LASF253:
	.string	"suffix2"
.LASF251:
	.string	"cmp_type"
.LASF32:
	.string	"_fileno"
.LASF231:
	.string	"OP_DIR"
.LASF299:
	.string	"op2out"
.LASF67:
	.string	"bfd_target_srec_flavour"
.LASF292:
	.string	"att_names8rex"
.LASF97:
	.string	"bfd_arch_h8300"
.LASF187:
	.string	"template"
.LASF213:
	.string	"uses_SSE_prefix"
.LASF122:
	.string	"dis_insn_type"
.LASF9:
	.string	"size_t"
.LASF36:
	.string	"_vtable_offset"
.LASF13:
	.string	"int64_t"
.LASF102:
	.string	"bfd_arch_z8k"
.LASF78:
	.string	"BFD_ENDIAN_UNKNOWN"
.LASF171:
	.string	"bailout"
.LASF66:
	.string	"bfd_target_tekhex_flavour"
.LASF21:
	.string	"_IO_read_base"
.LASF117:
	.string	"symbol_cache_entry"
.LASF249:
	.string	"mnemonic"
.LASF136:
	.string	"arch"
.LASF69:
	.string	"bfd_target_som_flavour"
.LASF29:
	.string	"_IO_save_end"
.LASF262:
	.string	"dis386_twobyte"
.LASF223:
	.string	"OP_IMREG"
.LASF314:
	.string	"Suffix3DNow"
.LASF52:
	.string	"_pos"
.LASF221:
	.string	"OP_REG"
.LASF268:
	.string	"scratchbuf"
.LASF222:
	.string	"code"
.LASF209:
	.string	"first"
.LASF162:
	.string	"__jmpbuf"
.LASF128:
	.string	"dis_condjsr"
.LASF153:
	.string	"insn_info_valid"
.LASF172:
	.string	"op_rtn"
.LASF237:
	.string	"OP_DSreg"
.LASF76:
	.string	"BFD_ENDIAN_BIG"
.LASF246:
	.string	"OP_MS"
.LASF140:
	.string	"num_symbols"
.LASF309:
	.string	"separator_char"
.LASF180:
	.string	"priv"
.LASF181:
	.string	"start"
.LASF5:
	.string	"char"
.LASF86:
	.string	"bfd_arch_sparc"
.LASF45:
	.string	"_mode"
.LASF53:
	.string	"uint8_t"
.LASF114:
	.string	"bfd_arch_mn10300"
.LASF77:
	.string	"BFD_ENDIAN_LITTLE"
.LASF312:
	.string	"float_reg"
.LASF186:
	.string	"putop"
.LASF306:
	.string	"intel_syntax"
.LASF22:
	.string	"_IO_write_base"
.LASF19:
	.string	"_IO_read_ptr"
.LASF111:
	.string	"bfd_arch_arc"
.LASF144:
	.string	"memory_error_func"
.LASF217:
	.string	"floatop"
.LASF115:
	.string	"bfd_arch_cris"
.LASF161:
	.string	"__jmp_buf_tag"
.LASF107:
	.string	"bfd_arch_ns32k"
.LASF215:
	.string	"newrex"
.LASF166:
	.string	"dis_private"
.LASF179:
	.string	"status"
.LASF182:
	.string	"fetch_data"
.LASF49:
	.string	"_IO_marker"
.LASF91:
	.string	"bfd_arch_i860"
.LASF146:
	.string	"symbol_at_address_func"
.LASF300:
	.string	"op3out"
.LASF3:
	.string	"long long int"
.LASF296:
	.string	"prefix_user_table"
.LASF101:
	.string	"bfd_arch_d10v"
.LASF27:
	.string	"_IO_save_base"
.LASF303:
	.string	"op_address"
.LASF318:
	.string	"print_insn_i386"
.LASF208:
	.string	"two_source_ops"
.LASF252:
	.string	"suffix1"
.LASF132:
	.string	"fprintf_func"
.LASF142:
	.string	"private_data"
.LASF304:
	.string	"op_riprel"
.LASF276:
	.string	"names16"
.LASF290:
	.string	"att_names16"
.LASF137:
	.string	"mach"
.LASF313:
	.string	"fgrps"
.LASF205:
	.string	"scale"
.LASF260:
	.string	"rex_used"
.LASF116:
	.string	"bfd_arch_last"
.LASF110:
	.string	"bfd_arch_v850"
.LASF85:
	.string	"bfd_arch_a29k"
.LASF193:
	.string	"disp"
.LASF28:
	.string	"_IO_backup_base"
.LASF185:
	.string	"sizeflag"
.LASF151:
	.string	"bytes_per_chunk"
.LASF40:
	.string	"__pad1"
.LASF41:
	.string	"__pad2"
.LASF42:
	.string	"__pad3"
.LASF43:
	.string	"__pad4"
.LASF80:
	.string	"bfd_arch_unknown"
.LASF57:
	.string	"bfd_byte"
.LASF125:
	.string	"dis_branch"
.LASF50:
	.string	"_next"
.LASF74:
	.string	"bfd_flavour"
.LASF113:
	.string	"bfd_arch_mn10200"
.LASF59:
	.string	"bfd_target_aout_flavour"
.LASF109:
	.string	"bfd_arch_tic30"
.LASF72:
	.string	"bfd_target_msdos_flavour"
.LASF88:
	.string	"bfd_arch_i386"
.LASF211:
	.string	"third"
.LASF295:
	.string	"grps"
.LASF139:
	.string	"symbols"
.LASF189:
	.string	"OP_ST"
.LASF192:
	.string	"print_operand_value"
.LASF20:
	.string	"_IO_read_end"
.LASF58:
	.string	"bfd_target_unknown_flavour"
.LASF105:
	.string	"bfd_arch_alpha"
.LASF2:
	.string	"long int"
.LASF75:
	.string	"bfd_endian"
.LASF112:
	.string	"bfd_arch_m32r"
.LASF294:
	.string	"att_index16"
.LASF281:
	.string	"intel_names64"
.LASF216:
	.string	"dofloat"
.LASF73:
	.string	"bfd_target_evax_flavour"
.LASF54:
	.string	"uint64_t"
.LASF261:
	.string	"used_prefixes"
.LASF273:
	.string	"need_modrm"
.LASF298:
	.string	"op1out"
.LASF220:
	.string	"get32"
.LASF241:
	.string	"OP_Rd"
.LASF229:
	.string	"OP_SEG"
.LASF118:
	.string	"name"
.LASF163:
	.string	"__mask_was_saved"
.LASF191:
	.string	"OP_STi"
.LASF152:
	.string	"display_endian"
.LASF279:
	.string	"names_seg"
.LASF60:
	.string	"bfd_target_coff_flavour"
.LASF164:
	.string	"__saved_mask"
.LASF188:
	.string	"oappend"
.LASF226:
	.string	"OP_I64"
.LASF173:
	.string	"dis386"
.LASF38:
	.string	"_lock"
.LASF167:
	.string	"max_fetched"
.LASF99:
	.string	"bfd_arch_rs6000"
.LASF0:
	.string	"long unsigned int"
.LASF239:
	.string	"OP_D"
.LASF256:
	.string	"stdin"
.LASF48:
	.string	"_IO_FILE"
.LASF236:
	.string	"OP_ESreg"
.LASF244:
	.string	"OP_EM"
.LASF183:
	.string	"prefix_name"
.LASF228:
	.string	"OP_J"
.LASF96:
	.string	"bfd_arch_pyramid"
.LASF155:
	.string	"data_size"
.LASF278:
	.string	"names8rex"
.LASF245:
	.string	"OP_EX"
.LASF168:
	.string	"the_buffer"
.LASF240:
	.string	"OP_T"
.LASF63:
	.string	"bfd_target_ieee_flavour"
.LASF6:
	.string	"unsigned char"
.LASF293:
	.string	"att_names_seg"
.LASF51:
	.string	"_sbuf"
.LASF317:
	.string	"/home/remco/Projects/Argos/src/i386-dis.c"
.LASF206:
	.string	"OP_indirE"
.LASF129:
	.string	"dis_dref"
.LASF23:
	.string	"_IO_write_ptr"
.LASF135:
	.string	"flavour"
.LASF263:
	.string	"onebyte_has_modrm"
.LASF255:
	.string	"extrachar"
.LASF275:
	.string	"names32"
.LASF93:
	.string	"bfd_arch_alliant"
.LASF81:
	.string	"bfd_arch_obscure"
.LASF178:
	.string	"addr"
.LASF195:
	.string	"BadOp"
.LASF227:
	.string	"OP_sI"
.LASF277:
	.string	"names8"
.LASF84:
	.string	"bfd_arch_i960"
.LASF280:
	.string	"index16"
.LASF177:
	.string	"info"
.LASF214:
	.string	"ckprefix"
.LASF55:
	.string	"bfd_vma"
.LASF254:
	.string	"SIMD_Fixup"
.LASF10:
	.string	"__off_t"
.LASF288:
	.string	"att_names64"
.LASF272:
	.string	"the_info"
.LASF242:
	.string	"OP_MMX"
.LASF7:
	.string	"signed char"
.LASF264:
	.string	"twobyte_has_modrm"
.LASF4:
	.string	"short unsigned int"
.LASF197:
	.string	"set_op"
.LASF270:
	.string	"insn_codep"
.LASF17:
	.string	"__val"
.LASF201:
	.string	"havesib"
.LASF219:
	.string	"get64"
.LASF248:
	.string	"OP_3DNowSuffix"
.LASF283:
	.string	"intel_names16"
.LASF119:
	.string	"udata"
.LASF282:
	.string	"intel_names32"
.LASF149:
	.string	"buffer_length"
.LASF316:
	.string	"GNU C 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
.LASF287:
	.string	"intel_index16"
.LASF157:
	.string	"target"
.LASF71:
	.string	"bfd_target_versados_flavour"
.LASF31:
	.string	"_chain"
.LASF108:
	.string	"bfd_arch_w65"
.LASF207:
	.string	"print_insn"
.LASF16:
	.string	"FILE"
.LASF33:
	.string	"_flags2"
.LASF291:
	.string	"att_names8"
.LASF165:
	.string	"jmp_buf"
.LASF297:
	.string	"x86_64_table"
.LASF35:
	.string	"_cur_column"
.LASF95:
	.string	"bfd_arch_m88k"
.LASF68:
	.string	"bfd_target_ihex_flavour"
.LASF11:
	.string	"__off64_t"
.LASF199:
	.string	"get16"
.LASF46:
	.string	"_unused2"
.LASF25:
	.string	"_IO_buf_base"
.LASF133:
	.string	"stream"
.LASF98:
	.string	"bfd_arch_powerpc"
.LASF308:
	.string	"close_char"
.LASF302:
	.string	"op_index"
	.section	.note.GNU-stack,"",@progbits
	.ident	"GCC: (GNU) 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
