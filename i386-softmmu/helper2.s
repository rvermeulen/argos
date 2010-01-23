	.file	"helper2.c"
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
	.string	"DYNAMIC"
.LC1:
	.string	"EFLAGS"
.LC2:
	.string	"MULB"
.LC3:
	.string	"MULW"
.LC4:
	.string	"MULL"
.LC5:
	.string	"MULQ"
.LC6:
	.string	"ADDB"
.LC7:
	.string	"ADDW"
.LC8:
	.string	"ADDL"
.LC9:
	.string	"ADDQ"
.LC10:
	.string	"ADCB"
.LC11:
	.string	"ADCW"
.LC12:
	.string	"ADCL"
.LC13:
	.string	"ADCQ"
.LC14:
	.string	"SUBB"
.LC15:
	.string	"SUBW"
.LC16:
	.string	"SUBL"
.LC17:
	.string	"SUBQ"
.LC18:
	.string	"SBBB"
.LC19:
	.string	"SBBW"
.LC20:
	.string	"SBBL"
.LC21:
	.string	"SBBQ"
.LC22:
	.string	"LOGICB"
.LC23:
	.string	"LOGICW"
.LC24:
	.string	"LOGICL"
.LC25:
	.string	"LOGICQ"
.LC26:
	.string	"INCB"
.LC27:
	.string	"INCW"
.LC28:
	.string	"INCL"
.LC29:
	.string	"INCQ"
.LC30:
	.string	"DECB"
.LC31:
	.string	"DECW"
.LC32:
	.string	"DECL"
.LC33:
	.string	"DECQ"
.LC34:
	.string	"SHLB"
.LC35:
	.string	"SHLW"
.LC36:
	.string	"SHLL"
.LC37:
	.string	"SHLQ"
.LC38:
	.string	"SARB"
.LC39:
	.string	"SARW"
.LC40:
	.string	"SARL"
.LC41:
	.string	"SARQ"
	.data
	.align 32
	.type	cc_op_str, @object
	.size	cc_op_str, 336
cc_op_str:
	.quad	.LC0
	.quad	.LC1
	.quad	.LC2
	.quad	.LC3
	.quad	.LC4
	.quad	.LC5
	.quad	.LC6
	.quad	.LC7
	.quad	.LC8
	.quad	.LC9
	.quad	.LC10
	.quad	.LC11
	.quad	.LC12
	.quad	.LC13
	.quad	.LC14
	.quad	.LC15
	.quad	.LC16
	.quad	.LC17
	.quad	.LC18
	.quad	.LC19
	.quad	.LC20
	.quad	.LC21
	.quad	.LC22
	.quad	.LC23
	.quad	.LC24
	.quad	.LC25
	.quad	.LC26
	.quad	.LC27
	.quad	.LC28
	.quad	.LC29
	.quad	.LC30
	.quad	.LC31
	.quad	.LC32
	.quad	.LC33
	.quad	.LC34
	.quad	.LC35
	.quad	.LC36
	.quad	.LC37
	.quad	.LC38
	.quad	.LC39
	.quad	.LC40
	.quad	.LC41
	.section	.rodata.str1.1
.LC42:
	.string	"qemu32"
.LC43:
	.string	"486"
.LC44:
	.string	"pentium"
.LC45:
	.string	"pentium2"
.LC46:
	.string	"pentium3"
	.data
	.align 32
	.type	x86_defs, @object
	.size	x86_defs, 280
x86_defs:
	.quad	.LC42
	.long	2
	.zero	12
	.long	6
	.long	3
	.long	3
	.long	125938685
	.long	1
	.zero	8
	.long	0
	.quad	.LC43
	.long	0
	.zero	12
	.long	4
	.long	0
	.long	0
	.long	11
	.zero	12
	.long	0
	.quad	.LC44
	.long	1
	.zero	12
	.long	5
	.long	4
	.long	3
	.long	8389055
	.zero	12
	.long	0
	.quad	.LC45
	.long	2
	.zero	12
	.long	6
	.long	5
	.long	2
	.long	25426431
	.zero	12
	.long	0
	.quad	.LC46
	.long	2
	.zero	12
	.long	6
	.long	7
	.long	3
	.long	58980863
	.zero	12
	.long	0
	.section	.rodata.str1.1
.LC47:
	.string	"fpu"
.LC48:
	.string	"vme"
.LC49:
	.string	"de"
.LC50:
	.string	"pse"
.LC51:
	.string	"tsc"
.LC52:
	.string	"msr"
.LC53:
	.string	"pae"
.LC54:
	.string	"mce"
.LC55:
	.string	"cx8"
.LC56:
	.string	"apic"
.LC57:
	.string	"sep"
.LC58:
	.string	"mtrr"
.LC59:
	.string	"pge"
.LC60:
	.string	"mca"
.LC61:
	.string	"cmov"
.LC62:
	.string	"pat"
.LC63:
	.string	"pse36"
.LC64:
	.string	"pn"
.LC65:
	.string	"clflush"
.LC66:
	.string	"ds"
.LC67:
	.string	"acpi"
.LC68:
	.string	"mmx"
.LC69:
	.string	"fxsr"
.LC70:
	.string	"sse"
.LC71:
	.string	"sse2"
.LC72:
	.string	"ss"
.LC73:
	.string	"ht"
.LC74:
	.string	"tm"
.LC75:
	.string	"ia64"
.LC76:
	.string	"pbe"
	.section	.rodata
	.align 8
.LC77:
	.quad	.LC47
	.quad	.LC48
	.quad	.LC49
	.quad	.LC50
	.quad	.LC51
	.quad	.LC52
	.quad	.LC53
	.quad	.LC54
	.quad	.LC55
	.quad	.LC56
	.quad	0
	.quad	.LC57
	.quad	.LC58
	.quad	.LC59
	.quad	.LC60
	.quad	.LC61
	.quad	.LC62
	.quad	.LC63
	.quad	.LC64
	.quad	.LC65
	.quad	0
	.quad	.LC66
	.quad	.LC67
	.quad	.LC68
	.quad	.LC69
	.quad	.LC70
	.quad	.LC71
	.quad	.LC72
	.quad	.LC73
	.quad	.LC74
	.quad	.LC75
	.quad	.LC76
	.section	.rodata.str1.1
.LC78:
	.string	"pni"
.LC79:
	.string	"monitor"
.LC80:
	.string	"ds_cpl"
.LC81:
	.string	"vmx"
.LC82:
	.string	"est"
.LC83:
	.string	"tm2"
.LC84:
	.string	"ssse3"
.LC85:
	.string	"cid"
.LC86:
	.string	"cx16"
.LC87:
	.string	"xtpr"
.LC88:
	.string	"dca"
.LC89:
	.string	"popcnt"
	.section	.rodata
	.align 8
.LC90:
	.quad	.LC78
	.quad	0
	.quad	0
	.quad	.LC79
	.quad	.LC80
	.quad	.LC81
	.quad	0
	.quad	.LC82
	.quad	.LC83
	.quad	.LC84
	.quad	.LC85
	.quad	0
	.quad	0
	.quad	.LC86
	.quad	.LC87
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC88
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC89
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.section	.rodata.str1.1
.LC91:
	.string	"syscall"
.LC92:
	.string	"mttr"
.LC93:
	.string	"nx"
.LC94:
	.string	"mmxext"
.LC95:
	.string	"fxsr_opt"
.LC96:
	.string	"pdpe1gb"
.LC97:
	.string	"rdtscp"
.LC98:
	.string	"lm"
.LC99:
	.string	"3dnowext"
.LC100:
	.string	"3dnow"
	.section	.rodata
	.align 8
.LC101:
	.quad	.LC47
	.quad	.LC48
	.quad	.LC49
	.quad	.LC50
	.quad	.LC51
	.quad	.LC52
	.quad	.LC53
	.quad	.LC54
	.quad	.LC55
	.quad	.LC56
	.quad	0
	.quad	.LC91
	.quad	.LC92
	.quad	.LC59
	.quad	.LC60
	.quad	.LC61
	.quad	.LC62
	.quad	.LC63
	.quad	0
	.quad	0
	.quad	.LC93
	.quad	0
	.quad	.LC94
	.quad	.LC68
	.quad	.LC69
	.quad	.LC95
	.quad	.LC96
	.quad	.LC97
	.quad	0
	.quad	.LC98
	.quad	.LC99
	.quad	.LC100
	.section	.rodata.str1.1
.LC102:
	.string	"lahf_lm"
.LC103:
	.string	"cmp_legacy"
.LC104:
	.string	"svm"
.LC105:
	.string	"extapic"
.LC106:
	.string	"cr8legacy"
.LC107:
	.string	"abm"
.LC108:
	.string	"sse4a"
.LC109:
	.string	"misalignsse"
.LC110:
	.string	"3dnowprefetch"
.LC111:
	.string	"osvw"
.LC112:
	.string	"skinit"
.LC113:
	.string	"wdt"
	.section	.rodata
	.align 8
.LC114:
	.quad	.LC102
	.quad	.LC103
	.quad	.LC104
	.quad	.LC105
	.quad	.LC106
	.quad	.LC107
	.quad	.LC108
	.quad	.LC109
	.quad	.LC110
	.quad	.LC111
	.quad	0
	.quad	0
	.quad	.LC112
	.quad	.LC113
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
.LC115:
	.string	"CPU feature %s not found\n"
	.text
	.p2align 4,,15
	.type	add_flagname_to_bitmaps, @function
add_flagname_to_bitmaps:
.LFB220:
	.file 1 "/home/remco/Projects/Argos/src/target-i386/helper2.c"
	.loc 1 42 0
	pushq	%r15
.LCFI0:
	movq	%rcx, %r15
	pushq	%r14
.LCFI1:
	movq	%rdx, %r14
	.loc 1 47 0
	movl	$256, %edx
	.loc 1 42 0
	pushq	%r13
.LCFI2:
	movq	%rsi, %r13
	.loc 1 47 0
	movl	$.LC77, %esi
	.loc 1 42 0
	pushq	%r12
.LCFI3:
	movl	$1, %r12d
	pushq	%rbp
.LCFI4:
	movq	%rdi, %rbp
	pushq	%rbx
.LCFI5:
	.loc 1 72 0
	xorl	%ebx, %ebx
	.loc 1 42 0
	subq	$1048, %rsp
.LCFI6:
	.loc 1 47 0
	leaq	784(%rsp), %rdi
	.loc 1 42 0
	movq	%r8, 8(%rsp)
	.loc 1 47 0
	call	memcpy
	.loc 1 53 0
	leaq	528(%rsp), %rdi
	movl	$256, %edx
	movl	$.LC90, %esi
	call	memcpy
	.loc 1 59 0
	leaq	272(%rsp), %rdi
	movl	$256, %edx
	movl	$.LC101, %esi
	call	memcpy
	.loc 1 65 0
	leaq	16(%rsp), %rdi
	movl	$256, %edx
	movl	$.LC114, %esi
	call	memcpy
	.p2align 4,,7
.L6:
	.loc 1 73 0
	movslq	%ebx,%rax
	movq	784(%rsp,%rax,8), %rsi
	testq	%rsi, %rsi
	je	.L4
.LBB2:
	movq	%rbp, %rdi
	call	strcmp
.LBE2:
	testl	%eax, %eax
	je	.L31
.L4:
	.loc 1 72 0
	incl	%ebx
	cmpl	$31, %ebx
	jle	.L6
	xorl	%ebx, %ebx
	movl	$1, %r12d
	.p2align 4,,7
.L11:
	.loc 1 78 0
	movslq	%ebx,%rax
	movq	528(%rsp,%rax,8), %rsi
	testq	%rsi, %rsi
	je	.L9
.LBB3:
	movq	%rbp, %rdi
	call	strcmp
.LBE3:
	testl	%eax, %eax
	je	.L32
.L9:
	.loc 1 77 0
	incl	%ebx
	cmpl	$31, %ebx
	jle	.L11
	xorl	%ebx, %ebx
	movl	$1, %r12d
	.p2align 4,,7
.L16:
	.loc 1 83 0
	movslq	%ebx,%rax
	movq	272(%rsp,%rax,8), %rsi
	testq	%rsi, %rsi
	je	.L14
.LBB4:
	movq	%rbp, %rdi
	call	strcmp
.LBE4:
	testl	%eax, %eax
	je	.L33
.L14:
	.loc 1 82 0
	incl	%ebx
	cmpl	$31, %ebx
	jle	.L16
	xorl	%ebx, %ebx
	movl	$1, %r12d
	.p2align 4,,7
.L21:
	.loc 1 88 0
	movslq	%ebx,%rax
	movq	16(%rsp,%rax,8), %rsi
	testq	%rsi, %rsi
	je	.L19
.LBB5:
	movq	%rbp, %rdi
	call	strcmp
.LBE5:
	testl	%eax, %eax
	je	.L34
.L19:
	.loc 1 87 0
	incl	%ebx
	cmpl	$31, %ebx
	jle	.L21
	.loc 1 92 0
	movq	stderr(%rip), %rdi
	movq	%rbp, %rdx
	movl	$.LC115, %esi
	xorl	%eax, %eax
	call	fprintf
	jmp	.L1
.L31:
	.loc 1 74 0
	movl	%ebx, %ecx
	sall	%cl, %r12d
	orl	%r12d, (%r13)
.L1:
	.loc 1 93 0
	addq	$1048, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L32:
	.loc 1 79 0
	movl	%ebx, %ecx
	sall	%cl, %r12d
	orl	%r12d, (%r14)
	.loc 1 93 0
	addq	$1048, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L33:
	.loc 1 84 0
	movl	%ebx, %ecx
	sall	%cl, %r12d
	orl	%r12d, (%r15)
	.loc 1 93 0
	addq	$1048, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L34:
	.loc 1 89 0
	movq	8(%rsp), %rax
	movl	%ebx, %ecx
	sall	%cl, %r12d
	orl	%r12d, (%rax)
	jmp	.L1
.LFE220:
	.size	add_flagname_to_bitmaps, .-add_flagname_to_bitmaps
	.section	.rodata.str1.1
.LC116:
	.string	"x86 %16s\n"
	.text
	.p2align 4,,15
.globl x86_cpu_list
	.type	x86_cpu_list, @function
x86_cpu_list:
.LFB223:
	.loc 1 297 0
	movq	%rbx, -32(%rsp)
.LCFI7:
	movq	%rbp, -24(%rsp)
.LCFI8:
	movl	$4, %ebx
	movq	%r12, -16(%rsp)
.LCFI9:
	movq	%r13, -8(%rsp)
.LCFI10:
	movq	%rsi, %r12
	subq	$40, %rsp
.LCFI11:
	.loc 1 297 0
	movq	%rdi, %r13
	movl	$x86_defs, %ebp
	.p2align 4,,7
.L39:
	.loc 1 301 0
	movq	(%rbp), %rdx
	xorl	%eax, %eax
	movl	$.LC116, %esi
	movq	%r13, %rdi
	addq	$56, %rbp
	call	*%r12
	decl	%ebx
	jns	.L39
	.loc 1 300 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	movq	24(%rsp), %r12
	movq	32(%rsp), %r13
	addq	$40, %rsp
	ret
.LFE223:
	.size	x86_cpu_list, .-x86_cpu_list
	.p2align 4,,15
.globl cpu_x86_update_cr0
	.type	cpu_x86_update_cr0, @function
cpu_x86_update_cr0:
.LFB229:
	.loc 1 687 0
	pushq	%rbp
.LCFI12:
	.loc 1 693 0
	movl	%esi, %edx
	.loc 1 687 0
	movq	%rdi, %rbp
	.loc 1 693 0
	andl	$-2147418111, %edx
	.loc 1 687 0
	pushq	%rbx
.LCFI13:
	movl	%esi, %ebx
	subq	$8, %rsp
.LCFI14:
	.loc 1 693 0
	movl	516(%rdi), %eax
	andl	$-2147418111, %eax
	cmpl	%eax, %edx
	je	.L43
	.loc 1 695 0
	movl	$1, %esi
	call	tlb_flush
.L43:
	.loc 1 715 0
	movl	%ebx, %eax
	.loc 1 719 0
	movl	352(%rbp), %edx
	.loc 1 723 0
	sall	$8, %ebx
	.loc 1 715 0
	orl	$16, %eax
	.loc 1 723 0
	andl	$3584, %ebx
	.loc 1 715 0
	movl	%eax, 516(%rbp)
	.loc 1 718 0
	andl	$1, %eax
	.loc 1 719 0
	movl	%eax, %ecx
	andb	$127, %dl
	.loc 1 721 0
	xorl	$1, %eax
	.loc 1 719 0
	sall	$7, %ecx
	.loc 1 721 0
	sall	$6, %eax
	.loc 1 719 0
	orl	%ecx, %edx
	.loc 1 721 0
	orl	%eax, %edx
	.loc 1 723 0
	andb	$241, %dh
	orl	%ebx, %edx
	movl	%edx, 352(%rbp)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
.LFE229:
	.size	cpu_x86_update_cr0, .-cpu_x86_update_cr0
	.p2align 4,,15
.globl cpu_reset
	.type	cpu_reset, @function
cpu_reset:
.LFB225:
	.loc 1 344 0
	pushq	%rbx
.LCFI15:
	.loc 1 347 0
	movl	$46328, %edx
	.loc 1 344 0
	movq	%rdi, %rbx
	.loc 1 347 0
	xorl	%esi, %esi
	call	memset
	.loc 1 349 0
	movl	$1, %esi
	movq	%rbx, %rdi
	call	tlb_flush
	.loc 1 358 0
	orl	$1048580, 352(%rbx)
	.loc 1 360 0
	movl	$1610612752, %esi
	movq	%rbx, %rdi
	.loc 1 351 0
	movl	$-1, 1244(%rbx)
	.loc 1 360 0
	call	cpu_x86_update_cr0
.LBB6:
.LBB7:
	.file 2 "/home/remco/Projects/Argos/src/target-i386/cpu.h"
	.loc 2 630 0
	leaq	372(%rbx), %rax
.LBE7:
.LBE6:
	.loc 1 361 0
	movl	$-1, 536(%rbx)
	.loc 1 362 0
	movl	$196608, 1232(%rbx)
	.loc 1 364 0
	movl	$65535, 508(%rbx)
	.loc 1 365 0
	movl	$65535, 492(%rbx)
.LBB8:
.LBB9:
	.loc 2 632 0
	movl	$-65536, 4(%rax)
.LBE9:
.LBE8:
	.loc 1 366 0
	movl	$65535, 460(%rbx)
	.loc 1 367 0
	movl	$32768, 464(%rbx)
	.loc 1 368 0
	movl	$65535, 476(%rbx)
	.loc 1 369 0
	movl	$32768, 480(%rbx)
.LBB10:
.LBB11:
	.loc 2 633 0
	movl	$65535, 8(%rax)
	.loc 2 634 0
	movl	$0, 12(%rax)
	.loc 2 648 0
	movl	384(%rbx), %eax
	.loc 2 650 0
	movl	352(%rbx), %ecx
	.loc 2 654 0
	movl	400(%rbx), %edi
	.loc 2 631 0
	movl	$61440, 372(%rbx)
	.loc 2 648 0
	andl	$4194304, %eax
	shrl	$18, %eax
	.loc 2 650 0
	andl	$-32785, %ecx
	.loc 2 654 0
	andl	$4194304, %edi
	.loc 2 650 0
	orl	%eax, %ecx
	.loc 2 654 0
	shrl	$17, %edi
	.loc 2 658 0
	testb	$1, 516(%rbx)
	.loc 2 650 0
	movl	%ecx, %esi
	.loc 2 658 0
	je	.L49
	testb	$2, 38(%rbx)
	je	.L99
.L49:
	.loc 2 666 0
	orl	$64, %edi
.L47:
.LBE11:
.LBE10:
.LBB12:
.LBB13:
	.loc 2 630 0
	leaq	404(%rbx), %rax
.LBE13:
.LBE12:
.LBB14:
.LBB15:
	.loc 2 673 0
	andl	$-97, %ecx
.LBE15:
.LBE14:
.LBB16:
.LBB17:
	.loc 2 631 0
	movl	$0, 404(%rbx)
.LBE17:
.LBE16:
.LBB18:
.LBB19:
	.loc 2 673 0
	orl	%edi, %ecx
	movl	%ecx, 352(%rbx)
.LBE19:
.LBE18:
.LBB20:
.LBB21:
	.loc 2 634 0
	movl	$0, 12(%rax)
	.loc 2 654 0
	movl	400(%rbx), %ecx
	.loc 2 632 0
	movl	$0, 4(%rax)
	.loc 2 633 0
	movl	$65535, 8(%rax)
	.loc 2 656 0
	movl	352(%rbx), %esi
	.loc 2 654 0
	andl	$4194304, %ecx
	shrl	$17, %ecx
	.loc 2 656 0
	testw	%si, %si
	js	.L55
	.loc 2 658 0
	testb	$1, 516(%rbx)
	je	.L57
	testb	$2, 38(%rbx)
	je	.L100
.L57:
	.loc 2 666 0
	orl	$64, %ecx
.L55:
	.loc 2 673 0
	movl	%esi, %eax
.LBE21:
.LBE20:
.LBB22:
.LBB23:
	.loc 2 631 0
	movl	$0, 356(%rbx)
.LBE23:
.LBE22:
.LBB24:
.LBB25:
	.loc 2 673 0
	andl	$-97, %eax
	orl	%ecx, %eax
	movl	%eax, 352(%rbx)
.LBE25:
.LBE24:
.LBB26:
.LBB27:
	.loc 2 630 0
	leaq	356(%rbx), %rax
	.loc 2 634 0
	movl	$0, 12(%rax)
	.loc 2 654 0
	movl	400(%rbx), %ecx
	.loc 2 632 0
	movl	$0, 4(%rax)
	.loc 2 633 0
	movl	$65535, 8(%rax)
	.loc 2 656 0
	movl	352(%rbx), %esi
	.loc 2 654 0
	andl	$4194304, %ecx
	shrl	$17, %ecx
	.loc 2 656 0
	testw	%si, %si
	js	.L63
	.loc 2 658 0
	testb	$1, 516(%rbx)
	je	.L65
	testb	$2, 38(%rbx)
	je	.L101
.L65:
	.loc 2 666 0
	orl	$64, %ecx
.L63:
	.loc 2 673 0
	movl	%esi, %eax
.LBE27:
.LBE26:
.LBB28:
.LBB29:
	.loc 2 631 0
	movl	$0, 388(%rbx)
.LBE29:
.LBE28:
.LBB30:
.LBB31:
	.loc 2 673 0
	andl	$-97, %eax
	orl	%ecx, %eax
	movl	%eax, 352(%rbx)
.LBE31:
.LBE30:
.LBB32:
.LBB33:
	.loc 2 630 0
	leaq	388(%rbx), %rax
	.loc 2 634 0
	movl	$0, 12(%rax)
	.loc 2 654 0
	movl	400(%rbx), %ecx
	.loc 2 632 0
	movl	$0, 4(%rax)
	.loc 2 633 0
	movl	$65535, 8(%rax)
	.loc 2 656 0
	movl	352(%rbx), %esi
	.loc 2 654 0
	andl	$4194304, %ecx
	shrl	$17, %ecx
	.loc 2 656 0
	testw	%si, %si
	js	.L71
	.loc 2 658 0
	testb	$1, 516(%rbx)
	je	.L73
	testb	$2, 38(%rbx)
	je	.L102
.L73:
	.loc 2 666 0
	orl	$64, %ecx
.L71:
	.loc 2 673 0
	movl	%esi, %eax
.LBE33:
.LBE32:
.LBB34:
.LBB35:
	.loc 2 631 0
	movl	$0, 420(%rbx)
.LBE35:
.LBE34:
.LBB36:
.LBB37:
	.loc 2 673 0
	andl	$-97, %eax
	orl	%ecx, %eax
	movl	%eax, 352(%rbx)
.LBE37:
.LBE36:
.LBB38:
.LBB39:
	.loc 2 630 0
	leaq	420(%rbx), %rax
	.loc 2 634 0
	movl	$0, 12(%rax)
	.loc 2 654 0
	movl	400(%rbx), %ecx
	.loc 2 632 0
	movl	$0, 4(%rax)
	.loc 2 633 0
	movl	$65535, 8(%rax)
	.loc 2 656 0
	movl	352(%rbx), %esi
	.loc 2 654 0
	andl	$4194304, %ecx
	shrl	$17, %ecx
	.loc 2 656 0
	testw	%si, %si
	js	.L79
	.loc 2 658 0
	testb	$1, 516(%rbx)
	je	.L81
	testb	$2, 38(%rbx)
	je	.L103
.L81:
	.loc 2 666 0
	orl	$64, %ecx
.L79:
	.loc 2 673 0
	movl	%esi, %eax
.LBE39:
.LBE38:
.LBB40:
.LBB41:
	.loc 2 631 0
	movl	$0, 436(%rbx)
.LBE41:
.LBE40:
.LBB42:
.LBB43:
	.loc 2 673 0
	andl	$-97, %eax
	orl	%ecx, %eax
	movl	%eax, 352(%rbx)
.LBE43:
.LBE42:
.LBB44:
.LBB45:
	.loc 2 630 0
	leaq	436(%rbx), %rax
	.loc 2 634 0
	movl	$0, 12(%rax)
	.loc 2 654 0
	movl	400(%rbx), %ecx
	.loc 2 632 0
	movl	$0, 4(%rax)
	.loc 2 633 0
	movl	$65535, 8(%rax)
	.loc 2 656 0
	movl	352(%rbx), %esi
	.loc 2 654 0
	andl	$4194304, %ecx
	shrl	$17, %ecx
	.loc 2 656 0
	testw	%si, %si
	js	.L87
	.loc 2 658 0
	testb	$1, 516(%rbx)
	je	.L89
	testb	$2, 38(%rbx)
	je	.L104
.L89:
	.loc 2 666 0
	orl	$64, %ecx
.L87:
.LBE45:
.LBE44:
	.loc 1 379 0
	movl	47032(%rbx), %eax
.LBB46:
.LBB47:
	.loc 2 673 0
	andl	$-97, %esi
.LBE47:
.LBE46:
	.loc 1 378 0
	movl	$65520, 32(%rbx)
.LBB48:
.LBB49:
	.loc 2 673 0
	orl	%ecx, %esi
.LBE49:
.LBE48:
	.loc 1 380 0
	movl	$0, 84(%rbx)
	.loc 1 382 0
	movl	$2, 36(%rbx)
.LBB50:
.LBB51:
	.loc 2 673 0
	movl	%esi, 352(%rbx)
.LBE51:
.LBE50:
	.loc 1 385 0
	xorl	%edx, %edx
	.loc 1 379 0
	movl	%eax, 8(%rbx)
	.p2align 4,,7
.L96:
	.loc 1 386 0
	movslq	%edx,%rax
	.loc 1 385 0
	incl	%edx
	cmpl	$7, %edx
	.loc 1 386 0
	movb	$1, 560(%rax,%rbx)
	.loc 1 385 0
	jle	.L96
	.loc 1 387 0
	movl	$895, 556(%rbx)
	.loc 1 389 0
	movl	$8064, 748(%rbx)
	.loc 1 390 0
	movq	%rbx, %rdi
	popq	%rbx
	jmp	argos_reset
.L104:
.LBB52:
.LBB53:
	.loc 2 658 0
	testb	$16, %sil
	je	.L89
	.loc 2 668 0
	movl	%ecx, %edx
	movl	360(%rbx), %eax
	orl	408(%rbx), %eax
	orl	$64, %edx
	orl	392(%rbx), %eax
	cmovne	%edx, %ecx
	jmp	.L87
.L103:
.LBE53:
.LBE52:
.LBB54:
.LBB55:
	.loc 2 658 0
	testb	$16, %sil
	je	.L81
	.loc 2 668 0
	movl	%ecx, %edx
	movl	360(%rbx), %eax
	orl	408(%rbx), %eax
	orl	$64, %edx
	orl	392(%rbx), %eax
	cmovne	%edx, %ecx
	jmp	.L79
.L102:
.LBE55:
.LBE54:
.LBB56:
.LBB57:
	.loc 2 658 0
	testb	$16, %sil
	je	.L73
	.loc 2 668 0
	movl	%ecx, %edx
	movl	360(%rbx), %eax
	orl	408(%rbx), %eax
	orl	$64, %edx
	orl	392(%rbx), %eax
	cmovne	%edx, %ecx
	jmp	.L71
.L101:
.LBE57:
.LBE56:
.LBB58:
.LBB59:
	.loc 2 658 0
	testb	$16, %sil
	je	.L65
	.loc 2 668 0
	movl	%ecx, %edx
	movl	360(%rbx), %eax
	orl	408(%rbx), %eax
	orl	$64, %edx
	orl	392(%rbx), %eax
	cmovne	%edx, %ecx
	jmp	.L63
.L100:
.LBE59:
.LBE58:
.LBB60:
.LBB61:
	.loc 2 658 0
	testb	$16, %sil
	je	.L57
	.loc 2 668 0
	movl	%ecx, %edx
	movl	360(%rbx), %eax
	orl	408(%rbx), %eax
	orl	$64, %edx
	orl	392(%rbx), %eax
	cmovne	%edx, %ecx
	jmp	.L55
.L99:
.LBE61:
.LBE60:
.LBB62:
.LBB63:
	.loc 2 658 0
	andl	$16, %esi
	je	.L49
	.loc 2 668 0
	movl	%edi, %edx
	movl	360(%rbx), %eax
	orl	408(%rbx), %eax
	orl	$64, %edx
	orl	392(%rbx), %eax
	cmovne	%edx, %edi
	jmp	.L47
.LBE63:
.LBE62:
.LFE225:
	.size	cpu_reset, .-cpu_reset
	.p2align 4,,15
.globl cpu_x86_close
	.type	cpu_x86_close, @function
cpu_x86_close:
.LFB226:
	.loc 1 394 0
	pushq	%rbx
.LCFI16:
	.loc 1 394 0
	movq	%rdi, %rbx
	.loc 1 395 0
	call	argos_close
	.loc 1 396 0
	movq	%rbx, %rdi
	popq	%rbx
	jmp	free
.LFE226:
	.size	cpu_x86_close, .-cpu_x86_close
	.local	inited.1
	.comm	inited.1,4,4
	.section	.rodata.str1.1
.LC117:
	.string	","
.LC118:
	.string	"family"
.LC120:
	.string	"model"
.LC121:
	.string	"stepping"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC124:
	.string	"ARGOS Virtual CPU version 0.4.2-1"
	.section	.rodata.str1.1
.LC119:
	.string	"bad numerical value %s\n"
	.section	.rodata.str1.8
	.align 8
.LC123:
	.string	"feature string `%s' not in format (+feature|-feature|feature=xyz)\n"
	.section	.rodata.str1.1
.LC122:
	.string	"unrecognized feature %s\n"
	.text
	.p2align 4,,15
.globl cpu_x86_init
	.type	cpu_x86_init, @function
cpu_x86_init:
.LFB221:
	.loc 1 96 0
	pushq	%r15
.LCFI17:
	pushq	%r14
.LCFI18:
	pushq	%r13
.LCFI19:
	pushq	%r12
.LCFI20:
	pushq	%rbp
.LCFI21:
	pushq	%rbx
.LCFI22:
	movq	%rdi, %rbx
	.loc 1 100 0
	movl	$47136, %edi
	.loc 1 96 0
	subq	$136, %rsp
.LCFI23:
	.loc 1 100 0
	call	qemu_mallocz
	movq	%rax, %r12
	.loc 1 102 0
	xorl	%eax, %eax
	.loc 1 101 0
	testq	%r12, %r12
	je	.L106
	.loc 1 103 0
	movq	%r12, %rdi
	call	cpu_exec_init
	.loc 1 104 0
	movq	%rbx, 47008(%r12)
	.loc 1 107 0
	movl	inited.1(%rip), %edx
	testl	%edx, %edx
	je	.L177
.L108:
.LBB64:
.LBB65:
.LBB66:
.LBB67:
	.loc 1 214 0
	movq	%rbx, %rdi
.LBE67:
.LBE66:
	.loc 1 306 0
	leaq	64(%rsp), %r14
.LBB68:
.LBB69:
	.loc 1 221 0
	xorl	%ebx, %ebx
	.loc 1 214 0
	call	__strdup
	.loc 1 215 0
	movl	$.LC117, %esi
	movq	%rax, %rdi
	.loc 1 214 0
	movq	%rax, %r15
	xorl	%ebp, %ebp
	.loc 1 215 0
	call	strtok
	.loc 1 216 0
	movl	$0, 48(%rsp)
	.loc 1 215 0
	movq	%rax, %r13
	.loc 1 216 0
	movl	$0, 52(%rsp)
	movl	$0, 56(%rsp)
	movl	$0, 60(%rsp)
	.loc 1 217 0
	movl	$0, 32(%rsp)
	movl	$0, 36(%rsp)
	movl	$0, 40(%rsp)
	movl	$0, 44(%rsp)
	.p2align 4,,7
.L115:
.LBB70:
	.loc 1 222 0
	movq	x86_defs(%rbp), %rsi
	movq	%r13, %rdi
	call	strcmp
.LBE70:
	testl	%eax, %eax
	je	.L169
	.loc 1 221 0
	incl	%ebx
	addq	$56, %rbp
	cmpl	$4, %ebx
	jbe	.L115
.L117:
	.loc 1 292 0
	movq	%r15, %rdi
	call	free
.LBE69:
.LBE68:
.LBE65:
.LBE64:
	.loc 1 112 0
	movq	%r12, %rdi
	call	cpu_x86_close
	.loc 1 113 0
	xorl	%eax, %eax
.L106:
	.loc 1 121 0
	addq	$136, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L177:
	.loc 1 108 0
	movl	$1, inited.1(%rip)
	.loc 1 109 0
	call	optimize_flags_init
	jmp	.L108
.L169:
.LBB71:
.LBB72:
.LBB73:
.LBB74:
	.loc 1 223 0
	leaq	x86_defs(%rbp), %rax
	.loc 1 227 0
	testq	%rax, %rax
	je	.L117
	.loc 1 229 0
	movq	x86_defs(%rbp), %rax
	movq	%rax, (%r14)
	movq	x86_defs+8(%rbp), %rax
	movq	%rax, 8(%r14)
	movq	x86_defs+16(%rbp), %rax
	movq	%rax, 16(%r14)
	movq	x86_defs+24(%rbp), %rax
	movq	%rax, 24(%r14)
	movq	x86_defs+32(%rbp), %rax
	movq	%rax, 32(%r14)
	movq	x86_defs+40(%rbp), %rax
	movq	%rax, 40(%r14)
	movq	x86_defs+48(%rbp), %rax
	movq	%rax, 48(%r14)
	.p2align 4,,7
.L176:
	.loc 1 231 0
	xorl	%edi, %edi
	movl	$.LC117, %esi
	call	strtok
	.loc 1 278 0
	testq	%rax, %rax
	.loc 1 231 0
	movq	%rax, %rbx
	.loc 1 278 0
	je	.L166
.L182:
.LBB75:
	.loc 1 235 0
	movzbl	(%rax), %eax
	cmpb	$43, %al
	je	.L178
	.loc 1 237 0
	cmpb	$45, %al
	je	.L179
	.loc 1 239 0
	movl	$61, %esi
	movq	%rbx, %rdi
	call	strchr
	testq	%rax, %rax
	movq	%rax, %rbp
	je	.L124
.LBB76:
	.loc 1 241 0
	cld
.LBE76:
	.loc 1 240 0
	movb	$0, (%rax)
.LBB77:
	.loc 1 241 0
	movq	%rbx, %rsi
	movl	$.LC118, %edi
	movl	$7, %ecx
.LBE77:
	.loc 1 240 0
	incq	%rbp
	.loc 1 241 0
	repz
	cmpsb
	je	.L180
.LBB78:
	.loc 1 250 0
	cld
	movl	$.LC120, %edi
	movl	$6, %ecx
	movq	%rbx, %rsi
.LBE78:
	repz
	cmpsb
	je	.L181
.LBB79:
	.loc 1 259 0
	cld
	movl	$.LC121, %edi
	movl	$9, %ecx
	movq	%rbx, %rsi
.LBE79:
	repz
	cmpsb
	jne	.L143
.LBB80:
	.loc 1 261 0
	leaq	8(%rsp), %rsi
	movl	$10, %edx
	movq	%rbp, %rdi
	call	strtol
	.loc 1 262 0
	cmpb	$0, (%rbp)
	.loc 1 261 0
	movq	%rax, %rsi
	.loc 1 262 0
	je	.L150
	movq	8(%rsp), %rax
	movl	%esi, %edx
	cmpb	$0, (%rax)
	setne	%al
	shrl	$31, %edx
	movzbl	%al, %eax
	orl	%edx, %eax
	jne	.L150
	cmpl	$15, %esi
	jg	.L150
	.loc 1 267 0
	movl	%esi, 32(%r14)
.LBE80:
.LBE75:
	.loc 1 231 0
	xorl	%edi, %edi
	movl	$.LC117, %esi
	call	strtok
	.loc 1 278 0
	testq	%rax, %rax
	.loc 1 231 0
	movq	%rax, %rbx
	.loc 1 278 0
	jne	.L182
.L166:
	.loc 1 280 0
	movl	48(%rsp), %edx
	.loc 1 284 0
	movl	32(%rsp), %eax
	.loc 1 280 0
	orl	36(%r14), %edx
	.loc 1 281 0
	movl	52(%rsp), %ecx
	.loc 1 282 0
	movl	56(%rsp), %esi
	.loc 1 283 0
	movl	60(%rsp), %edi
	.loc 1 284 0
	notl	%eax
	.loc 1 281 0
	orl	40(%r14), %ecx
	.loc 1 282 0
	orl	44(%r14), %esi
	.loc 1 283 0
	orl	48(%r14), %edi
	.loc 1 284 0
	andl	%eax, %edx
	movl	%edx, 36(%r14)
	.loc 1 285 0
	movl	36(%rsp), %eax
	notl	%eax
	andl	%eax, %ecx
	movl	%ecx, 40(%r14)
	.loc 1 286 0
	movl	40(%rsp), %eax
	notl	%eax
	andl	%eax, %esi
	movl	%esi, 44(%r14)
	.loc 1 287 0
	movl	44(%rsp), %eax
	notl	%eax
	andl	%eax, %edi
	movl	%edi, 48(%r14)
	.loc 1 288 0
	movq	%r15, %rdi
	call	free
.LBE74:
.LBE73:
	.loc 1 310 0
	movl	12(%r14), %eax
	testl	%eax, %eax
	je	.L156
	.loc 1 311 0
	movl	%eax, 47020(%r12)
	.loc 1 312 0
	movl	16(%r14), %eax
	movl	%eax, 47024(%r12)
	.loc 1 313 0
	movl	20(%r14), %eax
	movl	%eax, 47028(%r12)
.L157:
	.loc 1 319 0
	movl	8(%r14), %eax
.LBB81:
	.loc 1 330 0
	movl	$.LC124, %edi
.LBE81:
	.loc 1 319 0
	movl	%eax, 47016(%r12)
	.loc 1 320 0
	movl	24(%r14), %eax
	movl	28(%r14), %edx
	sall	$8, %eax
	sall	$4, %edx
	orl	%edx, %eax
	orl	32(%r14), %eax
	movl	%eax, 47032(%r12)
	.loc 1 321 0
	movl	36(%r14), %eax
	movl	%eax, 47036(%r12)
	.loc 1 322 0
	movabsq	$1974748653749254, %rax
	movq	%rax, 976(%r12)
	.loc 1 323 0
	movl	40(%r14), %eax
	movl	%eax, 47040(%r12)
	.loc 1 324 0
	movl	44(%r14), %eax
	movl	%eax, 47096(%r12)
	.loc 1 325 0
	movl	52(%r14), %eax
	movl	%eax, 47044(%r12)
	.loc 1 326 0
	movl	48(%r14), %eax
	movl	%eax, 47100(%r12)
.LBB82:
	.loc 1 330 0
	call	strlen
	.loc 1 331 0
	xorl	%edx, %edx
	.loc 1 330 0
	movl	%eax, %edi
	.p2align 4,,7
.L163:
	.loc 1 333 0
	xorl	%esi, %esi
	.loc 1 332 0
	cmpl	%edi, %edx
	jge	.L162
	.loc 1 335 0
	movslq	%edx,%rax
	movsbl	.LC124(%rax),%esi
.L162:
	.loc 1 336 0
	movl	%edx, %eax
	movl	%edx, %ecx
	.loc 1 331 0
	incl	%edx
	.loc 1 336 0
	sarl	$2, %eax
	andl	$3, %ecx
	sall	$3, %ecx
	cltq
	sall	%cl, %esi
	orl	%esi, 47048(%r12,%rax,4)
	.loc 1 331 0
	cmpl	$47, %edx
	jle	.L163
.LBE82:
.LBE72:
.LBE71:
	.loc 1 115 0
	movq	%r12, %rdi
	call	argos_init
	.loc 1 116 0
	movq	%r12, %rdi
	call	cpu_reset
	.loc 1 121 0
	addq	$136, %rsp
	.loc 1 120 0
	movq	%r12, %rax
	.loc 1 121 0
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L180:
.LBB83:
.LBB84:
.LBB85:
.LBB86:
.LBB87:
.LBB88:
	.loc 1 243 0
	leaq	24(%rsp), %rsi
	movl	$10, %edx
	movq	%rbp, %rdi
	call	strtol
	.loc 1 244 0
	cmpb	$0, (%rbp)
	.loc 1 243 0
	movq	%rax, %rcx
	movl	%eax, %edx
	.loc 1 244 0
	je	.L150
	movq	24(%rsp), %rax
	cmpb	$0, (%rax)
	setne	%al
	shrl	$31, %edx
	movzbl	%al, %eax
	orl	%edx, %eax
	jne	.L150
	.loc 1 249 0
	movl	%ecx, 24(%r14)
	jmp	.L176
.L181:
.LBE88:
.LBB89:
	.loc 1 252 0
	leaq	16(%rsp), %rsi
	movl	$10, %edx
	movq	%rbp, %rdi
	call	strtol
	.loc 1 253 0
	cmpb	$0, (%rbp)
	.loc 1 252 0
	movq	%rax, %rsi
	.loc 1 253 0
	je	.L150
	movq	16(%rsp), %rax
	movl	%esi, %edx
	cmpb	$0, (%rax)
	setne	%al
	shrl	$31, %edx
	movzbl	%al, %eax
	orl	%edx, %eax
	jne	.L150
	cmpl	$15, %esi
	jg	.L150
	.loc 1 258 0
	movl	%esi, 28(%r14)
	jmp	.L176
.L178:
.LBE89:
	.loc 1 236 0
	leaq	1(%rbx), %rdi
	leaq	60(%rsp), %r8
	leaq	56(%rsp), %rcx
	leaq	52(%rsp), %rdx
	leaq	48(%rsp), %rsi
	.loc 1 238 0
	call	add_flagname_to_bitmaps
	jmp	.L176
.L179:
	leaq	1(%rbx), %rdi
	leaq	44(%rsp), %r8
	leaq	40(%rsp), %rcx
	leaq	36(%rsp), %rdx
	leaq	32(%rsp), %rsi
	call	add_flagname_to_bitmaps
	jmp	.L176
.L156:
.LBE87:
.LBE86:
.LBE85:
	.loc 1 315 0
	movl	$1970169159, 47020(%r12)
	.loc 1 316 0
	movl	$1231384169, 47024(%r12)
	.loc 1 317 0
	movl	$1818588270, 47028(%r12)
	jmp	.L157
.L150:
.LBB90:
.LBB91:
.LBB92:
.LBB93:
	.loc 1 263 0
	movq	%rbp, %rdx
	movl	$.LC119, %esi
.L174:
.LBE93:
	.loc 1 274 0
	movq	stderr(%rip), %rdi
	xorl	%eax, %eax
	call	fprintf
	jmp	.L117
.L124:
	movq	%rbx, %rdx
	movl	$.LC123, %esi
	jmp	.L174
.L143:
	.loc 1 269 0
	movq	%rbx, %rdx
	movl	$.LC122, %esi
	jmp	.L174
.LBE92:
.LBE91:
.LBE90:
.LBE84:
.LBE83:
.LFE221:
	.size	cpu_x86_init, .-cpu_x86_init
	.section	.rodata.str1.1
.LC125:
	.string	"ES"
.LC126:
	.string	"CS"
.LC127:
	.string	"SS"
.LC128:
	.string	"DS"
.LC129:
	.string	"FS"
.LC130:
	.string	"GS"
	.data
	.align 32
	.type	seg_name.0, @object
	.size	seg_name.0, 48
seg_name.0:
	.quad	.LC125
	.quad	.LC126
	.quad	.LC127
	.quad	.LC128
	.quad	.LC129
	.quad	.LC130
	.section	.rodata.str1.8
	.align 8
.LC131:
	.string	"EAX=%08x EBX=%08x ECX=%08x EDX=%08x\nESI=%08x EDI=%08x EBP=%08x ESP=%08x\nEIP=%08x EFL=%08x [%c%c%c%c%c%c%c] CPL=%d II=%d A20=%d SMM=%d HLT=%d\n"
	.section	.rodata.str1.1
.LC132:
	.string	"%s =%04x %08x %08x %08x\n"
.LC133:
	.string	"LDT=%04x %08x %08x %08x\n"
.LC134:
	.string	"TR =%04x %08x %08x %08x\n"
.LC135:
	.string	"GDT=     %08x %08x\n"
.LC136:
	.string	"IDT=     %08x %08x\n"
	.section	.rodata.str1.8
	.align 8
.LC137:
	.string	"CR0=%08x CR2=%08x CR3=%08x CR4=%08x\n"
	.section	.rodata.str1.1
.LC138:
	.string	"%s"
.LC140:
	.string	"CCS=%08x CCD=%08x CCO=%-8s\n"
	.section	.rodata.str1.8
	.align 8
.LC141:
	.string	"FCW=%04x FSW=%04x [ST=%d] FTW=%02x MXCSR=%08x\n"
	.section	.rodata.str1.1
.LC142:
	.string	"FPR%d=%016lx %04x"
.LC143:
	.string	"\n"
.LC144:
	.string	" "
.LC145:
	.string	"XMM%02d=%08x%08x%08x%08x"
.LC139:
	.string	"[%d]"
	.text
	.p2align 4,,15
.globl cpu_dump_state
	.type	cpu_dump_state, @function
cpu_dump_state:
.LFB227:
	.loc 1 460 0
	pushq	%r15
.LCFI24:
	movl	%ecx, %r15d
	pushq	%r14
.LCFI25:
	movq	%rsi, %r14
	pushq	%r13
.LCFI26:
	movq	%rdx, %r13
	pushq	%r12
.LCFI27:
	movq	%rdi, %r12
	pushq	%rbp
.LCFI28:
	pushq	%rbx
.LCFI29:
	movq	%r12, %rbx
	subq	$200, %rsp
.LCFI30:
	.loc 1 506 0
	movl	352(%rdi), %edx
	.loc 1 465 0
	movl	36(%rdi), %esi
	.loc 1 506 0
	movl	8(%rdi), %r9d
	movl	4(%rdi), %r8d
	movl	12(%rdi), %ecx
	movl	%edx, %eax
	shrl	$18, %eax
	andl	$1, %eax
	movl	%eax, 136(%rsp)
	movl	%edx, %eax
	shrl	$19, %eax
	andl	$1, %eax
	movl	%eax, 128(%rsp)
	movl	536(%rdi), %eax
	movl	%esi, 40(%rsp)
	shrl	$20, %eax
	andl	$1, %eax
	movl	%eax, 120(%rsp)
	movl	%edx, %eax
	andl	$3, %edx
	shrl	$3, %eax
	movl	%edx, 104(%rsp)
	andl	$1, %eax
	movl	%eax, 112(%rsp)
	movl	%esi, %eax
	andl	$1, %eax
	cmpl	$1, %eax
	sbbl	%eax, %eax
	andl	$-22, %eax
	addl	$67, %eax
	movl	%eax, 96(%rsp)
	movl	%esi, %eax
	andl	$4, %eax
	cmpl	$1, %eax
	sbbl	%eax, %eax
	andl	$-35, %eax
	addl	$80, %eax
	movl	%eax, 88(%rsp)
	movl	%esi, %eax
	andl	$16, %eax
	cmpl	$1, %eax
	sbbl	%eax, %eax
	andl	$-20, %eax
	addl	$65, %eax
	movl	%eax, 80(%rsp)
	movl	%esi, %eax
	andl	$64, %eax
	cmpl	$1, %eax
	sbbl	%eax, %eax
	andl	$-45, %eax
	addl	$90, %eax
	movl	%eax, 72(%rsp)
	movl	%esi, %eax
	andl	$-128, %eax
	cmpb	$1, %al
	sbbl	%eax, %eax
	andl	$-38, %eax
	addl	$83, %eax
	movl	%eax, 64(%rsp)
	movl	%esi, %eax
	andl	$2048, %eax
	cmpl	$1, %eax
	sbbl	%eax, %eax
	andl	$-34, %eax
	addl	$79, %eax
	movl	%eax, 56(%rsp)
	movl	%esi, %eax
	movl	$.LC131, %esi
	andl	$1024, %eax
	cmpl	$1, %eax
	sbbl	%eax, %eax
	.loc 1 565 0
	xorl	%ebp, %ebp
	.loc 1 506 0
	andl	$-23, %eax
	addl	$68, %eax
	movl	%eax, 48(%rsp)
	movl	32(%rdi), %eax
	movl	%eax, 32(%rsp)
	movl	16(%rdi), %eax
	movl	%eax, 24(%rsp)
	movl	20(%rdi), %eax
	movl	%eax, 16(%rsp)
	movl	28(%rdi), %eax
	movl	%eax, 8(%rsp)
	movl	24(%rdi), %eax
	movl	%eax, (%rsp)
	xorl	%eax, %eax
	movl	(%rdi), %edx
	movq	%r14, %rdi
	call	*%r13
	.p2align 4,,7
.L201:
.LBB94:
	.loc 1 566 0
	movslq	%ebp,%rax
.LBE94:
	.loc 1 565 0
	incl	%ebp
.LBB95:
	.loc 1 567 0
	movl	364(%rbx), %r9d
	movq	seg_name.0(,%rax,8), %rdx
	movl	368(%rbx), %eax
	movl	$.LC132, %esi
	movl	360(%rbx), %r8d
	movq	%r14, %rdi
	movl	%eax, (%rsp)
	xorl	%eax, %eax
	movl	356(%rbx), %ecx
	addq	$16, %rbx
	call	*%r13
.LBE95:
	.loc 1 565 0
	cmpl	$5, %ebp
	jle	.L201
	.loc 1 574 0
	movl	456(%r12), %ecx
	movl	452(%r12), %edx
	movl	$.LC133, %esi
	movl	464(%r12), %r9d
	movl	460(%r12), %r8d
	movq	%r14, %rdi
	xorl	%eax, %eax
	call	*%r13
	.loc 1 579 0
	movl	480(%r12), %r9d
	movl	476(%r12), %r8d
	movl	$.LC134, %esi
	movl	472(%r12), %ecx
	movl	468(%r12), %edx
	movq	%r14, %rdi
	xorl	%eax, %eax
	call	*%r13
	.loc 1 584 0
	movl	492(%r12), %ecx
	movl	488(%r12), %edx
	movl	$.LC135, %esi
	movq	%r14, %rdi
	xorl	%eax, %eax
	call	*%r13
	.loc 1 586 0
	movl	508(%r12), %ecx
	movl	504(%r12), %edx
	movl	$.LC136, %esi
	movq	%r14, %rdi
	xorl	%eax, %eax
	call	*%r13
	.loc 1 588 0
	xorl	%eax, %eax
	movl	524(%r12), %ecx
	movl	516(%r12), %edx
	movl	532(%r12), %r9d
	movl	528(%r12), %r8d
	movl	$.LC137, %esi
	movq	%r14, %rdi
	call	*%r13
	.loc 1 594 0
	testb	$2, %r15b
	je	.L202
	.loc 1 595 0
	movl	344(%r12), %ecx
	cmpl	$41, %ecx
	ja	.L203
	.loc 1 596 0
	mov	%ecx, %eax
	leaq	160(%rsp), %rbx
	movl	$.LC138, %edx
	movq	cc_op_str(,%rax,8), %rcx
	movl	$32, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	call	snprintf
.L204:
	.loc 1 607 0
	movl	340(%r12), %ecx
	movl	336(%r12), %edx
	movq	%rbx, %r8
	movl	$.LC140, %esi
	movq	%r14, %rdi
	xorl	%eax, %eax
	call	*%r13
.L202:
	.loc 1 612 0
	andl	$1, %r15d
	je	.L183
.LBB96:
	.loc 1 614 0
	xorl	%r9d, %r9d
	.loc 1 615 0
	xorl	%ebp, %ebp
	movl	$1, %edx
	.p2align 4,,7
.L211:
	.loc 1 616 0
	movslq	%ebp,%rax
	cmpb	$0, 560(%rax,%r12)
	jne	.L208
	movl	%edx, %eax
	movl	%ebp, %ecx
	sall	%cl, %eax
	orl	%eax, %r9d
.L208:
	.loc 1 615 0
	incl	%ebp
	cmpl	$7, %ebp
	jle	.L211
	.loc 1 618 0
	movl	548(%r12), %r8d
	movl	552(%r12), %ecx
	leaq	576(%r12), %rbx
	.loc 1 624 0
	xorl	%ebp, %ebp
	.loc 1 618 0
	movl	556(%r12), %edx
	movl	$.LC141, %esi
	movq	%r14, %rdi
	movl	%r8d, %eax
	andb	$199, %ch
	andl	$7, %eax
	sall	$11, %eax
	orl	%eax, %ecx
	movl	748(%r12), %eax
	movl	%eax, (%rsp)
	xorl	%eax, %eax
	call	*%r13
	.p2align 4,,7
.L217:
.LBB97:
	.loc 1 633 0
	movl	8(%rbx), %edx
	movq	(%rbx), %rax
	.loc 1 634 0
	movl	$.LC142, %esi
	movq	%r14, %rdi
	.loc 1 633 0
	movl	%edx, 152(%rsp)
	.loc 1 634 0
	movzwl	152(%rsp), %r8d
	movl	%ebp, %edx
	.loc 1 633 0
	movq	%rax, 144(%rsp)
	.loc 1 634 0
	xorl	%eax, %eax
	movq	144(%rsp), %rcx
	call	*%r13
	.loc 1 640 0
	testb	$1, %bpl
	.loc 1 641 0
	movl	$.LC143, %esi
	.loc 1 640 0
	jne	.L233
	.loc 1 643 0
	movl	$.LC144, %esi
.L233:
.LBE97:
	.loc 1 624 0
	incl	%ebp
.LBB98:
	.loc 1 643 0
	xorl	%eax, %eax
	movq	%r14, %rdi
	addq	$16, %rbx
	call	*%r13
.LBE98:
	.loc 1 624 0
	cmpl	$7, %ebp
	jle	.L217
	.loc 1 645 0
	movzwl	352(%r12), %eax
	andw	$-32768, %ax
	.loc 1 646 0
	cmpw	$1, %ax
	sbbl	%r15d, %r15d
	.loc 1 649 0
	xorl	%ebp, %ebp
	.loc 1 646 0
	andl	$-8, %r15d
	addl	$16, %r15d
	.loc 1 649 0
	cmpl	%r15d, %ebp
	jge	.L183
	movq	%r12, %rbx
	.p2align 4,,7
.L225:
	.loc 1 650 0
	movl	752(%rbx), %eax
	movl	$.LC145, %esi
	movl	%ebp, %edx
	movq	%r14, %rdi
	movl	%eax, (%rsp)
	xorl	%eax, %eax
	movl	756(%rbx), %r9d
	movl	760(%rbx), %r8d
	movl	764(%rbx), %ecx
	call	*%r13
	.loc 1 656 0
	testb	$1, %bpl
	.loc 1 657 0
	movl	$.LC143, %esi
	.loc 1 656 0
	jne	.L234
	.loc 1 659 0
	movl	$.LC144, %esi
.L234:
	.loc 1 649 0
	incl	%ebp
	.loc 1 659 0
	xorl	%eax, %eax
	movq	%r14, %rdi
	addq	$16, %rbx
	call	*%r13
	.loc 1 649 0
	cmpl	%r15d, %ebp
	jl	.L225
	.p2align 4,,7
.L183:
.LBE96:
	.loc 1 662 0
	addq	$200, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L203:
	.loc 1 598 0
	leaq	160(%rsp), %rbx
	movl	$.LC139, %edx
	movl	$32, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	call	snprintf
	jmp	.L204
.LFE227:
	.size	cpu_dump_state, .-cpu_dump_state
	.p2align 4,,15
.globl cpu_x86_set_a20
	.type	cpu_x86_set_a20, @function
cpu_x86_set_a20:
.LFB228:
	.loc 1 669 0
	movq	%rbx, -16(%rsp)
.LCFI31:
	movq	%rbp, -8(%rsp)
.LCFI32:
	subq	$24, %rsp
.LCFI33:
	.loc 1 670 0
	testl	%esi, %esi
	.loc 1 669 0
	movq	%rdi, %rbp
	.loc 1 670 0
	setne	%al
	movzbl	%al, %ebx
	.loc 1 671 0
	movl	536(%rdi), %eax
	shrl	$20, %eax
	andl	$1, %eax
	cmpl	%eax, %ebx
	je	.L235
	.loc 1 677 0
	movl	$4, %esi
	.loc 1 682 0
	sall	$20, %ebx
	.loc 1 677 0
	call	cpu_interrupt
	.loc 1 682 0
	orl	$-1048577, %ebx
	.loc 1 681 0
	movl	$1, %esi
	movq	%rbp, %rdi
	call	tlb_flush
	.loc 1 682 0
	movl	%ebx, 536(%rbp)
.L235:
	.loc 1 684 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	addq	$24, %rsp
	ret
.LFE228:
	.size	cpu_x86_set_a20, .-cpu_x86_set_a20
	.p2align 4,,15
.globl cpu_x86_update_cr3
	.type	cpu_x86_update_cr3, @function
cpu_x86_update_cr3:
.LFB230:
	.loc 1 730 0
	.loc 1 732 0
	movl	516(%rdi), %ecx
	.loc 1 731 0
	movl	%esi, 528(%rdi)
	.loc 1 732 0
	testl	%ecx, %ecx
	js	.L239
	rep ; ret
	.p2align 4,,7
.L239:
	.loc 1 736 0
	xorl	%esi, %esi
	jmp	tlb_flush
.LFE230:
	.size	cpu_x86_update_cr3, .-cpu_x86_update_cr3
	.p2align 4,,15
.globl cpu_x86_update_cr4
	.type	cpu_x86_update_cr4, @function
cpu_x86_update_cr4:
.LFB231:
	.loc 1 741 0
	movq	%rbx, -16(%rsp)
.LCFI34:
	movq	%rbp, -8(%rsp)
.LCFI35:
	subq	$24, %rsp
.LCFI36:
	.loc 1 745 0
	movl	532(%rdi), %eax
	movl	%esi, %edx
	.loc 1 741 0
	movq	%rdi, %rbx
	.loc 1 745 0
	andl	$176, %edx
	.loc 1 741 0
	movl	%esi, %ebp
	.loc 1 745 0
	andl	$176, %eax
	cmpl	%eax, %edx
	je	.L241
	.loc 1 747 0
	movl	$1, %esi
	call	tlb_flush
.L241:
	.loc 1 751 0
	movl	%ebp, %eax
	andb	$253, %ah
	testb	$2, 47039(%rbx)
	cmove	%eax, %ebp
	.loc 1 752 0
	testl	$512, %ebp
	je	.L243
	.loc 1 753 0
	orl	$65536, 352(%rbx)
	.loc 1 757 0
	movl	%ebp, 532(%rbx)
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	addq	$24, %rsp
	ret
	.p2align 4,,7
.L243:
	.loc 1 755 0
	andl	$-65537, 352(%rbx)
	.loc 1 757 0
	movl	%ebp, 532(%rbx)
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	addq	$24, %rsp
	ret
.LFE231:
	.size	cpu_x86_update_cr4, .-cpu_x86_update_cr4
	.p2align 4,,15
.globl cpu_x86_flush_tlb
	.type	cpu_x86_flush_tlb, @function
cpu_x86_flush_tlb:
.LFB232:
	.loc 1 762 0
	.loc 1 763 0
	jmp	tlb_flush_page
.LFE232:
	.size	cpu_x86_flush_tlb, .-cpu_x86_flush_tlb
	.p2align 4,,15
.globl cpu_x86_handle_mmu_fault
	.type	cpu_x86_handle_mmu_fault, @function
cpu_x86_handle_mmu_fault:
.LFB233:
	.loc 1 797 0
	movq	%rbp, -40(%rsp)
.LCFI37:
	movq	%r14, -16(%rsp)
.LCFI38:
	.loc 1 804 0
	xorl	%eax, %eax
	.loc 1 797 0
	movq	%r15, -8(%rsp)
.LCFI39:
	movq	%rbx, -48(%rsp)
.LCFI40:
	movl	%esi, %r14d
	movq	%r12, -32(%rsp)
.LCFI41:
	movq	%r13, -24(%rsp)
.LCFI42:
	subq	$88, %rsp
.LCFI43:
	.loc 1 804 0
	cmpl	$1, %ecx
	.loc 1 797 0
	movl	%ecx, 36(%rsp)
	movl	%r8d, 32(%rsp)
	.loc 1 804 0
	sete	%al
	.loc 1 797 0
	movq	%rdi, %rbp
	movl	%edx, %r15d
	.loc 1 804 0
	movl	%eax, 24(%rsp)
	.loc 1 809 0
	movl	%edx, %eax
	andl	$1, %eax
	movl	%eax, 28(%rsp)
	.loc 1 811 0
	movl	516(%rdi), %esi
	testl	%esi, %esi
	js	.L247
	.loc 1 813 0
	movl	%r14d, %edi
	.loc 1 812 0
	mov	%r14d, %ebx
	.loc 1 814 0
	movl	$7, %ecx
	.loc 1 813 0
	andl	$-4096, %edi
	.loc 1 815 0
	movl	$4096, %r13d
.L248:
	.loc 1 1053 0
	andl	536(%rbp), %ebx
	.loc 1 1057 0
	leal	-1(%r13), %eax
	movl	%r14d, %esi
	.loc 1 1061 0
	movl	32(%rsp), %r9d
	movl	36(%rsp), %r8d
	.loc 1 1057 0
	andl	%eax, %esi
	.loc 1 1084 0
	movq	56(%rsp), %r12
	movq	64(%rsp), %r13
	.loc 1 1057 0
	andl	$4294963200, %esi
	.loc 1 1084 0
	movq	72(%rsp), %r14
	movq	80(%rsp), %r15
	.loc 1 1058 0
	andq	$-4096, %rbx
	leaq	(%rbx,%rsi), %rdx
	.loc 1 1059 0
	leal	(%rdi,%rsi), %esi
	.loc 1 1084 0
	movq	40(%rsp), %rbx
	.loc 1 1061 0
	movq	%rbp, %rdi
	.loc 1 1084 0
	movq	48(%rsp), %rbp
	addq	$88, %rsp
	.loc 1 1061 0
	jmp	tlb_set_page_exec
	.p2align 4,,7
.L247:
	.loc 1 819 0
	testb	$32, 532(%rdi)
	je	.L249
.LBB99:
	.loc 1 873 0
	movl	528(%rdi), %edi
	movl	%r14d, %eax
	.loc 1 877 0
	xorl	%r13d, %r13d
	.loc 1 873 0
	shrl	$27, %eax
	andl	$24, %eax
	andl	$-32, %edi
	addl	%eax, %edi
	andl	536(%rbp), %edi
	.loc 1 875 0
	mov	%edi, %edi
	call	ldq_phys
	.loc 1 876 0
	testb	$1, %al
	je	.L251
	.loc 1 883 0
	movl	%eax, %edx
	movl	%r14d, %eax
	.loc 1 880 0
	movabsq	$-9223372036854775802, %r12
	.loc 1 883 0
	shrl	$18, %eax
	andl	$-4096, %edx
	andl	$4088, %eax
	addl	%eax, %edx
	andl	536(%rbp), %edx
	.loc 1 885 0
	mov	%edx, %edx
	movq	%rdx, %rdi
	movq	%rdx, 16(%rsp)
	call	ldq_phys
	.loc 1 886 0
	testb	$1, %al
	.loc 1 885 0
	movq	%rax, %rbx
	.loc 1 886 0
	je	.L251
	.loc 1 890 0
	movq	920(%rbp), %rax
	movq	%rbx, %rdx
	.loc 1 891 0
	movb	$8, %r13b
	.loc 1 890 0
	shrq	$63, %rdx
	shrq	$11, %rax
	xorl	$1, %eax
	testl	%edx, %eax
	jne	.L251
	.loc 1 894 0
	movabsq	$-9223372036854775808, %rax
	xorq	%rbx, %rax 
	andq	%rax, %r12
	.loc 1 895 0
	testb	%bl, %bl
	jns	.L254
	.loc 1 898 0
	movabsq	$-9223372036854775808, %rax
	.loc 1 897 0
	movl	$2097152, %r13d
	.loc 1 898 0
	xorq	%rax, %r12 
	.loc 1 899 0
	movq	%r12, %rdx
	shrq	$63, %rdx
	cmpl	$2, %r15d
	sete	%al
	testl	%edx, %eax
	jne	.L256
	.loc 1 901 0
	movl	24(%rsp), %ecx
	testl	%ecx, %ecx
	je	.L257
	.loc 1 902 0
	testb	$4, %r12b
	je	.L256
	.loc 1 904 0
	movl	28(%rsp), %edx
	testl	%edx, %edx
.L316:
	.loc 1 907 0
	je	.L260
	testb	$2, %r12b
	.p2align 4,,2
	je	.L256
.L260:
	.loc 1 911 0
	movl	28(%rsp), %eax
	xorl	%ecx, %ecx
	testl	%eax, %eax
	je	.L262
	testb	$64, %bl
	movl	$1, %eax
	cmove	%eax, %ecx
.L262:
	.loc 1 912 0
	movq	%rbx, %rax
	shrq	$5, %rax
	xorl	$1, %eax
	testl	%ecx, %ecx
	setne	%dl
	orl	%edx, %eax
	testb	$1, %al
	je	.L263
	.loc 1 913 0
	orq	$32, %rbx
	.loc 1 916 0
	movq	16(%rsp), %rdi
	.loc 1 915 0
	movq	%rbx, %rax
	orq	$64, %rax
	testl	%ecx, %ecx
	cmovne	%rax, %rbx
	.loc 1 916 0
	movl	%ebx, %esi
	call	stl_phys_notdirty
.L263:
	.loc 1 920 0
	movl	%r14d, %edi
	.loc 1 919 0
	andl	$4292874239, %ebx
	.loc 1 920 0
	andl	$-2097152, %edi
.L278:
.LBE99:
	.loc 1 1039 0
	movq	%r12, %rax
	sarq	$63, %rax
	.loc 1 1040 0
	testb	$64, %bl
	.loc 1 1039 0
	leal	5(,%rax,4), %ecx
	.loc 1 1040 0
	je	.L248
	.loc 1 1043 0
	movl	24(%rsp), %r8d
	testl	%r8d, %r8d
	jne	.L320
	.loc 1 1047 0
	testb	$1, 518(%rbp)
	je	.L306
.L320:
	andl	$2, %r12d
	je	.L248
.L306:
	.loc 1 1049 0
	orl	$2, %ecx
	.p2align 4,,2
	jmp	.L248
	.p2align 4,,7
.L249:
.LBB100:
	.loc 1 968 0
	movl	528(%rdi), %edx
	movl	%r14d, %eax
	.loc 1 972 0
	xorl	%r13d, %r13d
	.loc 1 968 0
	shrl	$20, %eax
	andl	$4092, %eax
	andl	$-4096, %edx
	addl	%eax, %edx
	andl	536(%rdi), %edx
	.loc 1 970 0
	mov	%edx, %edx
	movq	%rdx, %rdi
	movq	%rdx, 16(%rsp)
	call	ldl_phys
	.loc 1 971 0
	testb	$1, %al
	.loc 1 970 0
	movl	%eax, %r12d
	.loc 1 971 0
	je	.L251
	.loc 1 976 0
	testb	%al, %al
	jns	.L280
	testb	$16, 532(%rbp)
	je	.L280
	.loc 1 978 0
	movl	24(%rsp), %eax
	.loc 1 977 0
	movl	$4194304, %r13d
	.loc 1 978 0
	testl	%eax, %eax
	je	.L281
	.loc 1 979 0
	testb	$4, %r12b
	je	.L256
	.loc 1 981 0
	movl	28(%rsp), %eax
	testl	%eax, %eax
.L318:
	.loc 1 984 0
	je	.L284
	testb	$2, %r12b
	.p2align 4,,2
	je	.L256
.L284:
	.loc 1 988 0
	movl	28(%rsp), %ebx
	xorl	%ecx, %ecx
	testl	%ebx, %ebx
	je	.L286
	testb	$64, %r12b
	movl	$1, %eax
	cmove	%eax, %ecx
.L286:
	.loc 1 989 0
	movl	%r12d, %eax
	shrl	$5, %eax
	xorl	$1, %eax
	testl	%ecx, %ecx
	setne	%dl
	orl	%edx, %eax
	testb	$1, %al
	je	.L287
	.loc 1 990 0
	orl	$32, %r12d
	.loc 1 993 0
	movq	16(%rsp), %rdi
	.loc 1 992 0
	movl	%r12d, %eax
	orl	$64, %eax
	testl	%ecx, %ecx
	cmovne	%eax, %r12d
	.loc 1 993 0
	movl	%r12d, %esi
	call	stl_phys_notdirty
.L287:
	.loc 1 996 0
	movq	%r12, %rbx
	.loc 1 998 0
	movl	%r14d, %edi
	.loc 1 996 0
	andl	$4290777087, %ebx
	.loc 1 998 0
	andl	$-4194304, %edi
	.loc 1 997 0
	movq	%rbx, %r12
	jmp	.L278
	.p2align 4,,7
.L280:
	.loc 1 1000 0
	testb	$32, %r12b
	je	.L321
.L290:
	.loc 1 1006 0
	movl	%r14d, %edx
	movl	%r12d, %eax
	.loc 1 1010 0
	xorl	%r13d, %r13d
	.loc 1 1006 0
	shrl	$10, %edx
	andl	$-4096, %eax
	andl	$4092, %edx
	addl	%edx, %eax
	andl	536(%rbp), %eax
	.loc 1 1008 0
	mov	%eax, %eax
	movq	%rax, %rdi
	movq	%rax, 8(%rsp)
	call	ldl_phys
	mov	%eax, %ebx
	.loc 1 1009 0
	testb	$1, %bl
	je	.L251
	.loc 1 1015 0
	movl	24(%rsp), %r11d
	.loc 1 1014 0
	andl	%ebx, %r12d
	.loc 1 1015 0
	testl	%r11d, %r11d
	jne	.L322
	.loc 1 1021 0
	xorl	%eax, %eax
	cmpl	$0, 28(%rsp)
	movzwl	518(%rbp), %edx
	setne	%al
	testl	%eax, %edx
.L319:
	je	.L295
	testb	$2, %r12b
	je	.L256
.L295:
	.loc 1 1025 0
	movl	28(%rsp), %r9d
	xorl	%ecx, %ecx
	testl	%r9d, %r9d
	je	.L297
	testb	$64, %bl
	movl	$1, %eax
	cmove	%eax, %ecx
.L297:
	.loc 1 1026 0
	movq	%rbx, %rax
	shrq	$5, %rax
	xorl	$1, %eax
	testl	%ecx, %ecx
	setne	%dl
	orl	%edx, %eax
	testb	$1, %al
	je	.L298
	.loc 1 1027 0
	orq	$32, %rbx
	.loc 1 1030 0
	movq	8(%rsp), %rdi
	.loc 1 1029 0
	movq	%rbx, %rax
	orq	$64, %rax
	testl	%ecx, %ecx
	cmovne	%rax, %rbx
	.loc 1 1030 0
	movl	%ebx, %esi
	call	stl_phys_notdirty
.L298:
	.loc 1 1033 0
	movl	%r14d, %edi
	.loc 1 1032 0
	movl	$4096, %r13d
	.loc 1 1033 0
	andl	$-4096, %edi
	jmp	.L278
.L256:
.LBE100:
	.loc 1 1064 0
	movl	$1, %r13d
	.p2align 4,,7
.L251:
	.loc 1 1066 0
	movl	28(%rsp), %eax
	.loc 1 1068 0
	movl	24(%rsp), %esi
	.loc 1 1066 0
	addl	%eax, %eax
	orl	%eax, %r13d
	.loc 1 1068 0
	movl	%r13d, %eax
	orl	$4, %eax
	testl	%esi, %esi
	cmovne	%eax, %r13d
	.loc 1 1069 0
	cmpl	$2, %r15d
	je	.L323
.L308:
	.loc 1 1073 0
	movl	968(%rbp), %eax
	testb	$64, %ah
	jne	.L324
	.loc 1 1076 0
	movl	%r14d, 524(%rbp)
.L310:
	.loc 1 1081 0
	andl	$16384, %eax
	.loc 1 1078 0
	movl	%r13d, 1188(%rbp)
	.loc 1 1079 0
	movl	$14, 1184(%rbp)
	.loc 1 1082 0
	cmpl	$1, %eax
	.loc 1 1084 0
	movq	40(%rsp), %rbx
	movq	48(%rsp), %rbp
	movq	56(%rsp), %r12
	movq	64(%rsp), %r13
	.loc 1 1082 0
	sbbl	%eax, %eax
	.loc 1 1084 0
	movq	72(%rsp), %r14
	movq	80(%rsp), %r15
	.loc 1 1082 0
	addl	$2, %eax
	.loc 1 1084 0
	addq	$88, %rsp
	ret
.L324:
	.loc 1 1074 0
	movq	944(%rbp), %rdi
	mov	%r14d, %esi
	subq	$-128, %rdi
	call	stq_phys
	movl	968(%rbp), %eax
	jmp	.L310
.L323:
	.loc 1 1069 0
	testb	$8, 921(%rbp)
	je	.L308
	.loc 1 1072 0
	movl	%r13d, %eax
	orl	$16, %eax
	testb	$32, 532(%rbp)
	cmovne	%eax, %r13d
	jmp	.L308
.L322:
.LBB101:
	.loc 1 1016 0
	testb	$4, %r12b
	je	.L256
	.loc 1 1018 0
	movl	28(%rsp), %r10d
	testl	%r10d, %r10d
	jmp	.L319
.L321:
	.loc 1 1002 0
	movq	16(%rsp), %rdi
	.loc 1 1001 0
	orl	$32, %r12d
	.loc 1 1002 0
	movl	%r12d, %esi
	call	stl_phys_notdirty
	jmp	.L290
.L254:
.LBE101:
.LBB102:
	.loc 1 923 0
	testb	$32, %bl
	je	.L325
.L266:
	.loc 1 927 0
	movl	%r14d, %eax
	movl	%ebx, %edx
	.loc 1 931 0
	xorl	%r13d, %r13d
	.loc 1 927 0
	shrl	$9, %eax
	andl	$-4096, %edx
	andl	$4088, %eax
	addl	%eax, %edx
	andl	536(%rbp), %edx
	.loc 1 929 0
	mov	%edx, %edx
	movq	%rdx, %rdi
	movq	%rdx, 8(%rsp)
	call	ldq_phys
	.loc 1 930 0
	testb	$1, %al
	.loc 1 929 0
	movq	%rax, %rbx
	.loc 1 930 0
	je	.L251
	.loc 1 934 0
	movq	920(%rbp), %rax
	movq	%rbx, %rdx
	.loc 1 935 0
	movb	$8, %r13b
	.loc 1 934 0
	shrq	$63, %rdx
	shrq	$11, %rax
	xorl	$1, %eax
	testl	%edx, %eax
	jne	.L251
	.loc 1 939 0
	movabsq	$-9223372036854775808, %rax
	xorq	%rbx, %rax 
	andq	%rax, %r12
	.loc 1 940 0
	movabsq	$-9223372036854775808, %rax
	xorq	%rax, %r12 
	.loc 1 941 0
	movq	%r12, %rdx
	shrq	$63, %rdx
	cmpl	$2, %r15d
	sete	%al
	testl	%edx, %eax
	jne	.L256
	.loc 1 943 0
	movl	24(%rsp), %eax
	testl	%eax, %eax
	je	.L270
	.loc 1 944 0
	testb	$4, %r12b
	je	.L256
	.loc 1 946 0
	movl	28(%rsp), %eax
	testl	%eax, %eax
.L317:
	.loc 1 949 0
	je	.L273
	testb	$2, %r12b
	.p2align 4,,2
	je	.L256
.L273:
	.loc 1 953 0
	movl	28(%rsp), %eax
	xorl	%ecx, %ecx
	testl	%eax, %eax
	je	.L275
	testb	$64, %bl
	movl	$1, %eax
	cmove	%eax, %ecx
.L275:
	.loc 1 954 0
	movq	%rbx, %rax
	shrq	$5, %rax
	xorl	$1, %eax
	testl	%ecx, %ecx
	setne	%dl
	orl	%edx, %eax
	testb	$1, %al
	je	.L276
	.loc 1 955 0
	orq	$32, %rbx
	.loc 1 958 0
	movq	8(%rsp), %rdi
	.loc 1 957 0
	movq	%rbx, %rax
	orq	$64, %rax
	testl	%ecx, %ecx
	cmovne	%rax, %rbx
	.loc 1 958 0
	movl	%ebx, %esi
	call	stl_phys_notdirty
.L276:
	.loc 1 961 0
	movl	%r14d, %edi
	.loc 1 960 0
	movl	$4096, %r13d
	.loc 1 962 0
	andl	$4294967295, %ebx
	.loc 1 961 0
	andl	$-4096, %edi
	jmp	.L278
.L281:
.LBE102:
.LBB103:
	.loc 1 984 0
	xorl	%eax, %eax
	cmpl	$0, 28(%rsp)
	movzwl	518(%rbp), %edx
	setne	%al
	testl	%eax, %edx
	jmp	.L318
.L257:
.LBE103:
.LBB104:
	.loc 1 907 0
	xorl	%eax, %eax
	cmpl	$0, 28(%rsp)
	movzwl	518(%rbp), %edx
	setne	%al
	testl	%eax, %edx
	jmp	.L316
.L325:
	.loc 1 925 0
	movq	16(%rsp), %rdi
	.loc 1 924 0
	orq	$32, %rbx
	.loc 1 925 0
	movl	%ebx, %esi
	call	stl_phys_notdirty
	jmp	.L266
.L270:
	.loc 1 949 0
	xorl	%eax, %eax
	cmpl	$0, 28(%rsp)
	movzwl	518(%rbp), %edx
	setne	%al
	testl	%eax, %edx
	jmp	.L317
.LBE104:
.LFE233:
	.size	cpu_x86_handle_mmu_fault, .-cpu_x86_handle_mmu_fault
	.p2align 4,,15
.globl cpu_get_phys_page_debug
	.type	cpu_get_phys_page_debug, @function
cpu_get_phys_page_debug:
.LFB234:
	.loc 1 1087 0
	movq	%rbx, -24(%rsp)
.LCFI44:
	movq	%rbp, -16(%rsp)
.LCFI45:
	movq	%rdi, %rbx
	movq	%r12, -8(%rsp)
.LCFI46:
	subq	$24, %rsp
.LCFI47:
	.loc 1 1091 0
	testb	$32, 532(%rdi)
	.loc 1 1087 0
	movl	%esi, %ebp
	.loc 1 1091 0
	jne	.L339
	.loc 1 1145 0
	movl	516(%rdi), %edi
	.loc 1 1146 0
	movl	%esi, %edx
	.loc 1 1147 0
	movl	$4096, %r12d
	.loc 1 1145 0
	testl	%edi, %edi
	js	.L340
.L334:
	.loc 1 1166 0
	andl	536(%rbx), %edx
.L332:
	.loc 1 1169 0
	leal	-4096(%r12), %eax
	.loc 1 1170 0
	andl	$-4096, %edx
	.loc 1 1169 0
	andl	%ebp, %eax
	.loc 1 1170 0
	leal	(%rdx,%rax), %eax
	.loc 1 1171 0
	mov	%eax, %ecx
.L326:
	.loc 1 1172 0
	movq	(%rsp), %rbx
	movq	8(%rsp), %rbp
	movq	%rcx, %rax
	movq	16(%rsp), %r12
	addq	$24, %rsp
	ret
	.p2align 4,,7
.L339:
.LBB105:
	.loc 1 1120 0
	movl	528(%rdi), %edi
	movl	%esi, %eax
	shrl	$27, %eax
	andl	$24, %eax
	andl	$-32, %edi
	addl	%eax, %edi
	andl	536(%rbx), %edi
	.loc 1 1122 0
	mov	%edi, %edi
	call	ldl_phys
	.loc 1 1123 0
	testb	$1, %al
	.loc 1 1124 0
	movq	$-1, %rcx
	.loc 1 1123 0
	je	.L326
	.loc 1 1127 0
	movl	%ebp, %edi
	andl	$-4096, %eax
	shrl	$18, %edi
	andl	$4088, %edi
	leal	(%rax,%rdi), %edi
	andl	536(%rbx), %edi
	.loc 1 1129 0
	mov	%edi, %edi
	call	ldl_phys
	.loc 1 1130 0
	testb	$1, %al
	.loc 1 1131 0
	movq	$-1, %rcx
	.loc 1 1130 0
	je	.L326
	.loc 1 1133 0
	testb	%al, %al
	jns	.L330
	.loc 1 1136 0
	movl	%eax, %edx
	.loc 1 1135 0
	movl	$2097152, %r12d
	.loc 1 1136 0
	andl	$-2093057, %edx
	jmp	.L332
.L330:
	.loc 1 1139 0
	movl	%ebp, %edi
	andl	$-4096, %eax
	.loc 1 1141 0
	movl	$4096, %r12d
	.loc 1 1139 0
	shrl	$9, %edi
	andl	$4088, %edi
	leal	(%rax,%rdi), %edi
	andl	536(%rbx), %edi
	.loc 1 1142 0
	mov	%edi, %edi
	call	ldl_phys
	movl	%eax, %edx
	jmp	.L332
.L340:
.LBE105:
	.loc 1 1150 0
	movl	528(%rbx), %edi
	movl	%esi, %eax
	shrl	$20, %eax
	andl	$4092, %eax
	andl	$-4096, %edi
	addl	%eax, %edi
	andl	536(%rbx), %edi
	.loc 1 1151 0
	mov	%edi, %edi
	call	ldl_phys
	.loc 1 1152 0
	testb	$1, %al
	.loc 1 1153 0
	movq	$-1, %rcx
	.loc 1 1152 0
	je	.L326
	.loc 1 1154 0
	testb	%al, %al
	jns	.L336
	testb	$16, 532(%rbx)
	je	.L336
	.loc 1 1155 0
	movl	%eax, %edx
	.loc 1 1156 0
	movl	$4194304, %r12d
	.loc 1 1155 0
	andl	$-4190209, %edx
	jmp	.L334
.L336:
	.loc 1 1159 0
	movl	%ebp, %edi
	andl	$-4096, %eax
	shrl	$10, %edi
	andl	$4092, %edi
	leal	(%rax,%rdi), %edi
	andl	536(%rbx), %edi
	.loc 1 1160 0
	mov	%edi, %edi
	call	ldl_phys
	.loc 1 1161 0
	testb	$1, %al
	.loc 1 1160 0
	movl	%eax, %edx
	.loc 1 1162 0
	movq	$-1, %rcx
	.loc 1 1161 0
	je	.L326
	.loc 1 1163 0
	movl	$4096, %r12d
	jmp	.L334
.LFE234:
	.size	cpu_get_phys_page_debug, .-cpu_get_phys_page_debug
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
	.quad	.LFB220
	.quad	.LFE220-.LFB220
	.byte	0x4
	.long	.LCFI0-.LFB220
	.byte	0xe
	.uleb128 0x10
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI1-.LCFI0
	.byte	0xe
	.uleb128 0x18
	.byte	0x8e
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI2-.LCFI1
	.byte	0xe
	.uleb128 0x20
	.byte	0x8d
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI3-.LCFI2
	.byte	0xe
	.uleb128 0x28
	.byte	0x8c
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI4-.LCFI3
	.byte	0xe
	.uleb128 0x30
	.byte	0x86
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI5-.LCFI4
	.byte	0xe
	.uleb128 0x38
	.byte	0x83
	.uleb128 0x7
	.byte	0x4
	.long	.LCFI6-.LCFI5
	.byte	0xe
	.uleb128 0x450
	.align 8
.LEFDE0:
.LSFDE2:
	.long	.LEFDE2-.LASFDE2
.LASFDE2:
	.long	.Lframe0
	.quad	.LFB223
	.quad	.LFE223-.LFB223
	.byte	0x4
	.long	.LCFI8-.LFB223
	.byte	0x86
	.uleb128 0x4
	.byte	0x83
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI10-.LCFI8
	.byte	0x8d
	.uleb128 0x2
	.byte	0x8c
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI11-.LCFI10
	.byte	0xe
	.uleb128 0x30
	.align 8
.LEFDE2:
.LSFDE4:
	.long	.LEFDE4-.LASFDE4
.LASFDE4:
	.long	.Lframe0
	.quad	.LFB229
	.quad	.LFE229-.LFB229
	.byte	0x4
	.long	.LCFI12-.LFB229
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI13-.LCFI12
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI14-.LCFI13
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.quad	.LFB225
	.quad	.LFE225-.LFB225
	.byte	0x4
	.long	.LCFI15-.LFB225
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
	.quad	.LFB226
	.quad	.LFE226-.LFB226
	.byte	0x4
	.long	.LCFI16-.LFB226
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
	.quad	.LFB221
	.quad	.LFE221-.LFB221
	.byte	0x4
	.long	.LCFI17-.LFB221
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI18-.LCFI17
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI19-.LCFI18
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI20-.LCFI19
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI21-.LCFI20
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI22-.LCFI21
	.byte	0xe
	.uleb128 0x38
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
	.byte	0x4
	.long	.LCFI23-.LCFI22
	.byte	0xe
	.uleb128 0xc0
	.align 8
.LEFDE10:
.LSFDE12:
	.long	.LEFDE12-.LASFDE12
.LASFDE12:
	.long	.Lframe0
	.quad	.LFB227
	.quad	.LFE227-.LFB227
	.byte	0x4
	.long	.LCFI24-.LFB227
	.byte	0xe
	.uleb128 0x10
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI25-.LCFI24
	.byte	0xe
	.uleb128 0x18
	.byte	0x8e
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI26-.LCFI25
	.byte	0xe
	.uleb128 0x20
	.byte	0x8d
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI27-.LCFI26
	.byte	0xe
	.uleb128 0x28
	.byte	0x8c
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI28-.LCFI27
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI29-.LCFI28
	.byte	0xe
	.uleb128 0x38
	.byte	0x83
	.uleb128 0x7
	.byte	0x86
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI30-.LCFI29
	.byte	0xe
	.uleb128 0x100
	.align 8
.LEFDE12:
.LSFDE14:
	.long	.LEFDE14-.LASFDE14
.LASFDE14:
	.long	.Lframe0
	.quad	.LFB228
	.quad	.LFE228-.LFB228
	.byte	0x4
	.long	.LCFI33-.LFB228
	.byte	0xe
	.uleb128 0x20
	.byte	0x86
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE14:
.LSFDE16:
	.long	.LEFDE16-.LASFDE16
.LASFDE16:
	.long	.Lframe0
	.quad	.LFB230
	.quad	.LFE230-.LFB230
	.align 8
.LEFDE16:
.LSFDE18:
	.long	.LEFDE18-.LASFDE18
.LASFDE18:
	.long	.Lframe0
	.quad	.LFB231
	.quad	.LFE231-.LFB231
	.byte	0x4
	.long	.LCFI36-.LFB231
	.byte	0xe
	.uleb128 0x20
	.byte	0x86
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE18:
.LSFDE20:
	.long	.LEFDE20-.LASFDE20
.LASFDE20:
	.long	.Lframe0
	.quad	.LFB232
	.quad	.LFE232-.LFB232
	.align 8
.LEFDE20:
.LSFDE22:
	.long	.LEFDE22-.LASFDE22
.LASFDE22:
	.long	.Lframe0
	.quad	.LFB233
	.quad	.LFE233-.LFB233
	.byte	0x4
	.long	.LCFI40-.LFB233
	.byte	0x83
	.uleb128 0x7
	.byte	0x8f
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI43-.LCFI40
	.byte	0xe
	.uleb128 0x60
	.byte	0x8d
	.uleb128 0x4
	.byte	0x8c
	.uleb128 0x5
	.align 8
.LEFDE22:
.LSFDE24:
	.long	.LEFDE24-.LASFDE24
.LASFDE24:
	.long	.Lframe0
	.quad	.LFB234
	.quad	.LFE234-.LFB234
	.byte	0x4
	.long	.LCFI45-.LFB234
	.byte	0x86
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI47-.LCFI45
	.byte	0xe
	.uleb128 0x20
	.byte	0x8c
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
	.quad	.LFB220
	.quad	.LFE220-.LFB220
	.byte	0x4
	.long	.LCFI0-.LFB220
	.byte	0xe
	.uleb128 0x10
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI1-.LCFI0
	.byte	0xe
	.uleb128 0x18
	.byte	0x8e
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI2-.LCFI1
	.byte	0xe
	.uleb128 0x20
	.byte	0x8d
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI3-.LCFI2
	.byte	0xe
	.uleb128 0x28
	.byte	0x8c
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI4-.LCFI3
	.byte	0xe
	.uleb128 0x30
	.byte	0x86
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI5-.LCFI4
	.byte	0xe
	.uleb128 0x38
	.byte	0x83
	.uleb128 0x7
	.byte	0x4
	.long	.LCFI6-.LCFI5
	.byte	0xe
	.uleb128 0x450
	.align 8
.LEFDE1:
.LSFDE3:
	.long	.LEFDE3-.LASFDE3
.LASFDE3:
	.long	.LASFDE3-.Lframe1
	.quad	.LFB223
	.quad	.LFE223-.LFB223
	.byte	0x4
	.long	.LCFI8-.LFB223
	.byte	0x86
	.uleb128 0x4
	.byte	0x83
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI10-.LCFI8
	.byte	0x8d
	.uleb128 0x2
	.byte	0x8c
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI11-.LCFI10
	.byte	0xe
	.uleb128 0x30
	.align 8
.LEFDE3:
.LSFDE5:
	.long	.LEFDE5-.LASFDE5
.LASFDE5:
	.long	.LASFDE5-.Lframe1
	.quad	.LFB229
	.quad	.LFE229-.LFB229
	.byte	0x4
	.long	.LCFI12-.LFB229
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI13-.LCFI12
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI14-.LCFI13
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE5:
.LSFDE7:
	.long	.LEFDE7-.LASFDE7
.LASFDE7:
	.long	.LASFDE7-.Lframe1
	.quad	.LFB225
	.quad	.LFE225-.LFB225
	.byte	0x4
	.long	.LCFI15-.LFB225
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
	.quad	.LFB226
	.quad	.LFE226-.LFB226
	.byte	0x4
	.long	.LCFI16-.LFB226
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
	.quad	.LFB221
	.quad	.LFE221-.LFB221
	.byte	0x4
	.long	.LCFI17-.LFB221
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI18-.LCFI17
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI19-.LCFI18
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI20-.LCFI19
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI21-.LCFI20
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI22-.LCFI21
	.byte	0xe
	.uleb128 0x38
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
	.byte	0x4
	.long	.LCFI23-.LCFI22
	.byte	0xe
	.uleb128 0xc0
	.align 8
.LEFDE11:
.LSFDE13:
	.long	.LEFDE13-.LASFDE13
.LASFDE13:
	.long	.LASFDE13-.Lframe1
	.quad	.LFB227
	.quad	.LFE227-.LFB227
	.byte	0x4
	.long	.LCFI24-.LFB227
	.byte	0xe
	.uleb128 0x10
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI25-.LCFI24
	.byte	0xe
	.uleb128 0x18
	.byte	0x8e
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI26-.LCFI25
	.byte	0xe
	.uleb128 0x20
	.byte	0x8d
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI27-.LCFI26
	.byte	0xe
	.uleb128 0x28
	.byte	0x8c
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI28-.LCFI27
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI29-.LCFI28
	.byte	0xe
	.uleb128 0x38
	.byte	0x83
	.uleb128 0x7
	.byte	0x86
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI30-.LCFI29
	.byte	0xe
	.uleb128 0x100
	.align 8
.LEFDE13:
.LSFDE15:
	.long	.LEFDE15-.LASFDE15
.LASFDE15:
	.long	.LASFDE15-.Lframe1
	.quad	.LFB228
	.quad	.LFE228-.LFB228
	.byte	0x4
	.long	.LCFI33-.LFB228
	.byte	0xe
	.uleb128 0x20
	.byte	0x86
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE15:
.LSFDE17:
	.long	.LEFDE17-.LASFDE17
.LASFDE17:
	.long	.LASFDE17-.Lframe1
	.quad	.LFB230
	.quad	.LFE230-.LFB230
	.align 8
.LEFDE17:
.LSFDE19:
	.long	.LEFDE19-.LASFDE19
.LASFDE19:
	.long	.LASFDE19-.Lframe1
	.quad	.LFB231
	.quad	.LFE231-.LFB231
	.byte	0x4
	.long	.LCFI36-.LFB231
	.byte	0xe
	.uleb128 0x20
	.byte	0x86
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE19:
.LSFDE21:
	.long	.LEFDE21-.LASFDE21
.LASFDE21:
	.long	.LASFDE21-.Lframe1
	.quad	.LFB232
	.quad	.LFE232-.LFB232
	.align 8
.LEFDE21:
.LSFDE23:
	.long	.LEFDE23-.LASFDE23
.LASFDE23:
	.long	.LASFDE23-.Lframe1
	.quad	.LFB233
	.quad	.LFE233-.LFB233
	.byte	0x4
	.long	.LCFI40-.LFB233
	.byte	0x83
	.uleb128 0x7
	.byte	0x8f
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI43-.LCFI40
	.byte	0xe
	.uleb128 0x60
	.byte	0x8d
	.uleb128 0x4
	.byte	0x8c
	.uleb128 0x5
	.align 8
.LEFDE23:
.LSFDE25:
	.long	.LEFDE25-.LASFDE25
.LASFDE25:
	.long	.LASFDE25-.Lframe1
	.quad	.LFB234
	.quad	.LFE234-.LFB234
	.byte	0x4
	.long	.LCFI45-.LFB234
	.byte	0x86
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI47-.LCFI45
	.byte	0xe
	.uleb128 0x20
	.byte	0x8c
	.uleb128 0x2
	.align 8
.LEFDE25:
	.file 3 "/usr/include/stdint.h"
	.file 4 "/usr/lib/gcc/x86_64-linux-gnu/3.4.6/include/stddef.h"
	.file 5 "/usr/include/stdio.h"
	.file 6 "/usr/include/libio.h"
	.file 7 "/usr/include/bits/types.h"
	.file 8 "../cpu-defs.h"
	.file 9 "../argos-tag.h"
	.file 10 "../argos.h"
	.file 11 "/home/remco/Projects/Argos/src/target-i386/argos-shellcode.h"
	.file 12 "/usr/include/sys/types.h"
	.file 13 "/home/remco/Projects/Argos/src/fpu/softfloat-native.h"
	.file 14 "/usr/include/setjmp.h"
	.file 15 "/usr/include/bits/setjmp.h"
	.file 16 "/usr/include/bits/sigset.h"
	.file 17 "../exec-all.h"
	.file 18 "../cpu-all.h"
	.file 19 "../argos-memmap.h"
	.text
.Letext0:
	.section	.debug_info
	.long	0x207b
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.Ldebug_line0
	.quad	.Letext0
	.quad	.Ltext0
	.long	.LASF310
	.byte	0x1
	.long	.LASF311
	.long	.LASF312
	.uleb128 0x2
	.long	.LASF0
	.byte	0x8
	.byte	0x7
	.uleb128 0x2
	.long	.LASF1
	.byte	0x4
	.byte	0x7
	.uleb128 0x3
	.byte	0x8
	.uleb128 0x4
	.long	.LASF9
	.byte	0x4
	.byte	0xd5
	.long	0x48
	.uleb128 0x2
	.long	.LASF0
	.byte	0x8
	.byte	0x7
	.uleb128 0x5
	.string	"int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.long	.LASF2
	.byte	0x8
	.byte	0x5
	.uleb128 0x2
	.long	.LASF3
	.byte	0x8
	.byte	0x5
	.uleb128 0x2
	.long	.LASF4
	.byte	0x2
	.byte	0x7
	.uleb128 0x6
	.byte	0x8
	.long	0x71
	.uleb128 0x7
	.long	0x76
	.uleb128 0x2
	.long	.LASF5
	.byte	0x1
	.byte	0x5
	.uleb128 0x2
	.long	.LASF6
	.byte	0x1
	.byte	0x8
	.uleb128 0x2
	.long	.LASF7
	.byte	0x1
	.byte	0x6
	.uleb128 0x2
	.long	.LASF8
	.byte	0x2
	.byte	0x5
	.uleb128 0x4
	.long	.LASF10
	.byte	0x7
	.byte	0x8d
	.long	0x56
	.uleb128 0x4
	.long	.LASF11
	.byte	0x7
	.byte	0x8e
	.long	0x56
	.uleb128 0x6
	.byte	0x8
	.long	0x76
	.uleb128 0x4
	.long	.LASF12
	.byte	0xc
	.byte	0xc5
	.long	0x4f
	.uleb128 0x4
	.long	.LASF13
	.byte	0xc
	.byte	0xc6
	.long	0x56
	.uleb128 0x8
	.long	0xdb
	.byte	0x80
	.byte	0x10
	.byte	0x20
	.uleb128 0x9
	.long	.LASF17
	.byte	0x10
	.byte	0x1f
	.long	0xdb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xa
	.long	0xeb
	.long	0x48
	.uleb128 0xb
	.long	0x2d
	.byte	0xf
	.byte	0x0
	.uleb128 0x4
	.long	.LASF14
	.byte	0x10
	.byte	0x20
	.long	0xc4
	.uleb128 0x2
	.long	.LASF15
	.byte	0x8
	.byte	0x7
	.uleb128 0xa
	.long	0x10d
	.long	0x76
	.uleb128 0xb
	.long	0x2d
	.byte	0x1f
	.byte	0x0
	.uleb128 0x4
	.long	.LASF16
	.byte	0x5
	.byte	0x31
	.long	0x118
	.uleb128 0xc
	.long	0x2e4
	.long	.LASF48
	.byte	0xd8
	.byte	0x5
	.byte	0x2d
	.uleb128 0xd
	.long	.LASF18
	.byte	0x6
	.value	0x110
	.long	0x4f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF19
	.byte	0x6
	.value	0x115
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF20
	.byte	0x6
	.value	0x116
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.long	.LASF21
	.byte	0x6
	.value	0x117
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.long	.LASF22
	.byte	0x6
	.value	0x118
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.long	.LASF23
	.byte	0x6
	.value	0x119
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.long	.LASF24
	.byte	0x6
	.value	0x11a
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.long	.LASF25
	.byte	0x6
	.value	0x11b
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.long	.LASF26
	.byte	0x6
	.value	0x11c
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.long	.LASF27
	.byte	0x6
	.value	0x11e
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.long	.LASF28
	.byte	0x6
	.value	0x11f
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xd
	.long	.LASF29
	.byte	0x6
	.value	0x120
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xd
	.long	.LASF30
	.byte	0x6
	.value	0x122
	.long	0x322
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.long	.LASF31
	.byte	0x6
	.value	0x124
	.long	0x328
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.long	.LASF32
	.byte	0x6
	.value	0x126
	.long	0x4f
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xd
	.long	.LASF33
	.byte	0x6
	.value	0x12a
	.long	0x4f
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xd
	.long	.LASF34
	.byte	0x6
	.value	0x12c
	.long	0x92
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xd
	.long	.LASF35
	.byte	0x6
	.value	0x130
	.long	0x64
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xd
	.long	.LASF36
	.byte	0x6
	.value	0x131
	.long	0x84
	.byte	0x3
	.byte	0x23
	.uleb128 0x82
	.uleb128 0xd
	.long	.LASF37
	.byte	0x6
	.value	0x132
	.long	0x32e
	.byte	0x3
	.byte	0x23
	.uleb128 0x83
	.uleb128 0xd
	.long	.LASF38
	.byte	0x6
	.value	0x136
	.long	0x33e
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xd
	.long	.LASF39
	.byte	0x6
	.value	0x13f
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xd
	.long	.LASF40
	.byte	0x6
	.value	0x148
	.long	0x3b
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xd
	.long	.LASF41
	.byte	0x6
	.value	0x149
	.long	0x3b
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xd
	.long	.LASF42
	.byte	0x6
	.value	0x14a
	.long	0x3b
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xd
	.long	.LASF43
	.byte	0x6
	.value	0x14b
	.long	0x3b
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xd
	.long	.LASF44
	.byte	0x6
	.value	0x14c
	.long	0x3d
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0xd
	.long	.LASF45
	.byte	0x6
	.value	0x14e
	.long	0x4f
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xd
	.long	.LASF46
	.byte	0x6
	.value	0x150
	.long	0x344
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.byte	0x0
	.uleb128 0xe
	.long	.LASF47
	.byte	0x6
	.byte	0xb4
	.uleb128 0xc
	.long	0x322
	.long	.LASF49
	.byte	0x18
	.byte	0x6
	.byte	0xba
	.uleb128 0x9
	.long	.LASF50
	.byte	0x6
	.byte	0xbb
	.long	0x322
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF51
	.byte	0x6
	.byte	0xbc
	.long	0x328
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF52
	.byte	0x6
	.byte	0xc0
	.long	0x4f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x2eb
	.uleb128 0x6
	.byte	0x8
	.long	0x118
	.uleb128 0xa
	.long	0x33e
	.long	0x76
	.uleb128 0xb
	.long	0x2d
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x2e4
	.uleb128 0xa
	.long	0x354
	.long	0x76
	.uleb128 0xb
	.long	0x2d
	.byte	0x13
	.byte	0x0
	.uleb128 0x4
	.long	.LASF53
	.byte	0x3
	.byte	0x31
	.long	0x7d
	.uleb128 0x4
	.long	.LASF54
	.byte	0x3
	.byte	0x32
	.long	0x64
	.uleb128 0x4
	.long	.LASF55
	.byte	0x3
	.byte	0x34
	.long	0x34
	.uleb128 0x4
	.long	.LASF56
	.byte	0x3
	.byte	0x38
	.long	0x48
	.uleb128 0x4
	.long	.LASF57
	.byte	0xf
	.byte	0x20
	.long	0x38b
	.uleb128 0xa
	.long	0x39b
	.long	0x56
	.uleb128 0xb
	.long	0x2d
	.byte	0x7
	.byte	0x0
	.uleb128 0xc
	.long	0x3d2
	.long	.LASF58
	.byte	0xc8
	.byte	0xe
	.byte	0x24
	.uleb128 0x9
	.long	.LASF59
	.byte	0xe
	.byte	0x29
	.long	0x380
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF60
	.byte	0xe
	.byte	0x2a
	.long	0x4f
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.long	.LASF61
	.byte	0xe
	.byte	0x2b
	.long	0xeb
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.byte	0x0
	.uleb128 0x4
	.long	.LASF62
	.byte	0xe
	.byte	0x31
	.long	0x3dd
	.uleb128 0xa
	.long	0x3ed
	.long	0x39b
	.uleb128 0xb
	.long	0x2d
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.long	.LASF63
	.byte	0x8
	.byte	0x31
	.long	0x36a
	.uleb128 0x4
	.long	.LASF64
	.byte	0x8
	.byte	0x49
	.long	0x375
	.uleb128 0xc
	.long	0x448
	.long	.LASF65
	.byte	0x18
	.byte	0x8
	.byte	0x69
	.uleb128 0x9
	.long	.LASF66
	.byte	0x8
	.byte	0x70
	.long	0x3ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF67
	.byte	0x8
	.byte	0x71
	.long	0x3ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.long	.LASF68
	.byte	0x8
	.byte	0x72
	.long	0x3ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF69
	.byte	0x8
	.byte	0x74
	.long	0x3f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x4
	.long	.LASF65
	.byte	0x8
	.byte	0x75
	.long	0x403
	.uleb128 0x2
	.long	.LASF70
	.byte	0x4
	.byte	0x4
	.uleb128 0x2
	.long	.LASF71
	.byte	0x8
	.byte	0x4
	.uleb128 0x4
	.long	.LASF72
	.byte	0xd
	.byte	0x3b
	.long	0x453
	.uleb128 0x4
	.long	.LASF73
	.byte	0xd
	.byte	0x3c
	.long	0x45a
	.uleb128 0x4
	.long	.LASF74
	.byte	0xd
	.byte	0x3e
	.long	0x482
	.uleb128 0x2
	.long	.LASF75
	.byte	0x10
	.byte	0x4
	.uleb128 0xc
	.long	0x4b2
	.long	.LASF76
	.byte	0x2
	.byte	0xd
	.byte	0x6d
	.uleb128 0x9
	.long	.LASF77
	.byte	0xd
	.byte	0x6e
	.long	0x84
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF78
	.byte	0xd
	.byte	0x70
	.long	0x84
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0x0
	.uleb128 0x4
	.long	.LASF76
	.byte	0xd
	.byte	0x72
	.long	0x489
	.uleb128 0xf
	.long	.LASF79
	.byte	0x2
	.value	0x198
	.long	0x477
	.uleb128 0x10
	.long	0x513
	.long	.LASF80
	.byte	0x10
	.byte	0x2
	.value	0x19d
	.uleb128 0xd
	.long	.LASF81
	.byte	0x2
	.value	0x19e
	.long	0x36a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF82
	.byte	0x2
	.value	0x19f
	.long	0x3ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.long	.LASF83
	.byte	0x2
	.value	0x1a0
	.long	0x36a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF84
	.byte	0x2
	.value	0x1a1
	.long	0x36a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0xf
	.long	.LASF80
	.byte	0x2
	.value	0x1a2
	.long	0x4c9
	.uleb128 0x11
	.long	0x56b
	.byte	0x10
	.byte	0x2
	.value	0x1ab
	.uleb128 0x12
	.string	"_b"
	.byte	0x2
	.value	0x1a5
	.long	0x56b
	.uleb128 0x12
	.string	"_w"
	.byte	0x2
	.value	0x1a6
	.long	0x57b
	.uleb128 0x12
	.string	"_l"
	.byte	0x2
	.value	0x1a7
	.long	0x58b
	.uleb128 0x12
	.string	"_q"
	.byte	0x2
	.value	0x1a8
	.long	0x59b
	.uleb128 0x12
	.string	"_s"
	.byte	0x2
	.value	0x1a9
	.long	0x5ab
	.uleb128 0x12
	.string	"_d"
	.byte	0x2
	.value	0x1aa
	.long	0x5bb
	.byte	0x0
	.uleb128 0xa
	.long	0x57b
	.long	0x354
	.uleb128 0xb
	.long	0x2d
	.byte	0xf
	.byte	0x0
	.uleb128 0xa
	.long	0x58b
	.long	0x35f
	.uleb128 0xb
	.long	0x2d
	.byte	0x7
	.byte	0x0
	.uleb128 0xa
	.long	0x59b
	.long	0x36a
	.uleb128 0xb
	.long	0x2d
	.byte	0x3
	.byte	0x0
	.uleb128 0xa
	.long	0x5ab
	.long	0x375
	.uleb128 0xb
	.long	0x2d
	.byte	0x1
	.byte	0x0
	.uleb128 0xa
	.long	0x5bb
	.long	0x461
	.uleb128 0xb
	.long	0x2d
	.byte	0x3
	.byte	0x0
	.uleb128 0xa
	.long	0x5cb
	.long	0x46c
	.uleb128 0xb
	.long	0x2d
	.byte	0x1
	.byte	0x0
	.uleb128 0xf
	.long	.LASF85
	.byte	0x2
	.value	0x1ab
	.long	0x51f
	.uleb128 0x11
	.long	0x60c
	.byte	0x8
	.byte	0x2
	.value	0x1b2
	.uleb128 0x12
	.string	"_b"
	.byte	0x2
	.value	0x1ae
	.long	0x60c
	.uleb128 0x12
	.string	"_w"
	.byte	0x2
	.value	0x1af
	.long	0x61c
	.uleb128 0x12
	.string	"_l"
	.byte	0x2
	.value	0x1b0
	.long	0x62c
	.uleb128 0x12
	.string	"q"
	.byte	0x2
	.value	0x1b1
	.long	0x375
	.byte	0x0
	.uleb128 0xa
	.long	0x61c
	.long	0x354
	.uleb128 0xb
	.long	0x2d
	.byte	0x7
	.byte	0x0
	.uleb128 0xa
	.long	0x62c
	.long	0x35f
	.uleb128 0xb
	.long	0x2d
	.byte	0x1
	.byte	0x0
	.uleb128 0xa
	.long	0x63c
	.long	0x36a
	.uleb128 0xb
	.long	0x2d
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	.LASF86
	.byte	0x2
	.value	0x1b2
	.long	0x5d7
	.uleb128 0x4
	.long	.LASF87
	.byte	0xa
	.byte	0x2f
	.long	0x36a
	.uleb128 0x4
	.long	.LASF88
	.byte	0xa
	.byte	0x34
	.long	0x36a
	.uleb128 0x4
	.long	.LASF89
	.byte	0xa
	.byte	0x35
	.long	0x653
	.uleb128 0xc
	.long	0x692
	.long	.LASF90
	.byte	0x8
	.byte	0x9
	.byte	0x37
	.uleb128 0x9
	.long	.LASF91
	.byte	0x9
	.byte	0x38
	.long	0x648
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF92
	.byte	0x9
	.byte	0x39
	.long	0x653
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x4
	.long	.LASF93
	.byte	0x9
	.byte	0x3d
	.long	0x669
	.uleb128 0xc
	.long	0x812
	.long	.LASF94
	.byte	0xd0
	.byte	0xb
	.byte	0x36
	.uleb128 0x9
	.long	.LASF95
	.byte	0xb
	.byte	0x38
	.long	0x34
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF96
	.byte	0xb
	.byte	0x39
	.long	0x34
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x13
	.string	"cr3"
	.byte	0xb
	.byte	0x3d
	.long	0x3ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF97
	.byte	0xb
	.byte	0x3f
	.long	0x812
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.long	.LASF98
	.byte	0xb
	.byte	0x41
	.long	0x34
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.long	.LASF99
	.byte	0xb
	.byte	0x43
	.long	0x34
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x9
	.long	.LASF100
	.byte	0xb
	.byte	0x45
	.long	0x34
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.long	.LASF101
	.byte	0xb
	.byte	0x47
	.long	0x34
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.long	.LASF102
	.byte	0xb
	.byte	0x4a
	.long	0x3ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.long	.LASF103
	.byte	0xb
	.byte	0x4b
	.long	0x3ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.long	.LASF104
	.byte	0xb
	.byte	0x4c
	.long	0x3ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.long	.LASF105
	.byte	0xb
	.byte	0x4e
	.long	0x818
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x9
	.long	.LASF106
	.byte	0xb
	.byte	0x50
	.long	0x64
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0x9
	.long	.LASF107
	.byte	0xb
	.byte	0x52
	.long	0x34
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x9
	.long	.LASF108
	.byte	0xb
	.byte	0x54
	.long	0x828
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x9
	.long	.LASF109
	.byte	0xb
	.byte	0x56
	.long	0x3ed
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x9
	.long	.LASF110
	.byte	0xb
	.byte	0x58
	.long	0x838
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x9
	.long	.LASF111
	.byte	0xb
	.byte	0x5b
	.long	0x48
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x9
	.long	.LASF112
	.byte	0xb
	.byte	0x5c
	.long	0x7d
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x9
	.long	.LASF113
	.byte	0xb
	.byte	0x5e
	.long	0x34
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0x9
	.long	.LASF114
	.byte	0xb
	.byte	0x60
	.long	0x3ed
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x9
	.long	.LASF115
	.byte	0xb
	.byte	0x62
	.long	0x838
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x9
	.long	.LASF116
	.byte	0xb
	.byte	0x65
	.long	0x48
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x9
	.long	.LASF117
	.byte	0xb
	.byte	0x66
	.long	0x7d
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.uleb128 0x9
	.long	.LASF118
	.byte	0xb
	.byte	0x68
	.long	0x34
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x10d
	.uleb128 0xa
	.long	0x828
	.long	0x76
	.uleb128 0xb
	.long	0x2d
	.byte	0x10
	.byte	0x0
	.uleb128 0xa
	.long	0x838
	.long	0x653
	.uleb128 0xb
	.long	0x2d
	.byte	0x10
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x653
	.uleb128 0x4
	.long	.LASF119
	.byte	0xb
	.byte	0x69
	.long	0x69d
	.uleb128 0x11
	.long	0x869
	.byte	0x10
	.byte	0x2
	.value	0x20f
	.uleb128 0x12
	.string	"d"
	.byte	0x2
	.value	0x20a
	.long	0x4bd
	.uleb128 0x12
	.string	"mmx"
	.byte	0x2
	.value	0x20e
	.long	0x63c
	.byte	0x0
	.uleb128 0x11
	.long	0x89f
	.byte	0x8
	.byte	0x2
	.value	0x219
	.uleb128 0x12
	.string	"f"
	.byte	0x2
	.value	0x215
	.long	0x453
	.uleb128 0x12
	.string	"d"
	.byte	0x2
	.value	0x216
	.long	0x45a
	.uleb128 0x12
	.string	"i32"
	.byte	0x2
	.value	0x217
	.long	0x4f
	.uleb128 0x12
	.string	"i64"
	.byte	0x2
	.value	0x218
	.long	0xb9
	.byte	0x0
	.uleb128 0x14
	.long	0x8c7
	.byte	0x10
	.byte	0x2
	.value	0x246
	.uleb128 0xd
	.long	.LASF120
	.byte	0x2
	.value	0x246
	.long	0x3ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF69
	.byte	0x2
	.value	0x246
	.long	0x3f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x15
	.long	0xe63
	.long	.LASF121
	.value	0xb820
	.byte	0x2
	.value	0x1d8
	.uleb128 0xd
	.long	.LASF122
	.byte	0x2
	.value	0x1df
	.long	0xe63
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.string	"eip"
	.byte	0x2
	.value	0x1e0
	.long	0x3ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.long	.LASF123
	.byte	0x2
	.value	0x1e1
	.long	0x3ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.long	.LASF124
	.byte	0x2
	.value	0x1e6
	.long	0x692
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.long	.LASF125
	.byte	0x2
	.value	0x1e6
	.long	0x692
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.long	.LASF126
	.byte	0x2
	.value	0x1e6
	.long	0x692
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.long	.LASF127
	.byte	0x2
	.value	0x1e7
	.long	0xe73
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.long	.LASF128
	.byte	0x2
	.value	0x1e9
	.long	0x83e
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xd
	.long	.LASF129
	.byte	0x2
	.value	0x1ec
	.long	0x3ed
	.byte	0x3
	.byte	0x23
	.uleb128 0x150
	.uleb128 0xd
	.long	.LASF130
	.byte	0x2
	.value	0x1ed
	.long	0x3ed
	.byte	0x3
	.byte	0x23
	.uleb128 0x154
	.uleb128 0xd
	.long	.LASF131
	.byte	0x2
	.value	0x1ee
	.long	0x36a
	.byte	0x3
	.byte	0x23
	.uleb128 0x158
	.uleb128 0x16
	.string	"df"
	.byte	0x2
	.value	0x1ef
	.long	0xae
	.byte	0x3
	.byte	0x23
	.uleb128 0x15c
	.uleb128 0xd
	.long	.LASF132
	.byte	0x2
	.value	0x1f0
	.long	0x36a
	.byte	0x3
	.byte	0x23
	.uleb128 0x160
	.uleb128 0xd
	.long	.LASF133
	.byte	0x2
	.value	0x1f3
	.long	0xe83
	.byte	0x3
	.byte	0x23
	.uleb128 0x164
	.uleb128 0x16
	.string	"ldt"
	.byte	0x2
	.value	0x1f4
	.long	0x513
	.byte	0x3
	.byte	0x23
	.uleb128 0x1c4
	.uleb128 0x16
	.string	"tr"
	.byte	0x2
	.value	0x1f5
	.long	0x513
	.byte	0x3
	.byte	0x23
	.uleb128 0x1d4
	.uleb128 0x16
	.string	"gdt"
	.byte	0x2
	.value	0x1f6
	.long	0x513
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e4
	.uleb128 0x16
	.string	"idt"
	.byte	0x2
	.value	0x1f7
	.long	0x513
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f4
	.uleb128 0x16
	.string	"cr"
	.byte	0x2
	.value	0x1f9
	.long	0xe93
	.byte	0x3
	.byte	0x23
	.uleb128 0x204
	.uleb128 0xd
	.long	.LASF134
	.byte	0x2
	.value	0x1fa
	.long	0x36a
	.byte	0x3
	.byte	0x23
	.uleb128 0x218
	.uleb128 0xd
	.long	.LASF135
	.byte	0x2
	.value	0x201
	.long	0x3ed
	.byte	0x3
	.byte	0x23
	.uleb128 0x21c
	.uleb128 0xd
	.long	.LASF136
	.byte	0x2
	.value	0x202
	.long	0x3ed
	.byte	0x3
	.byte	0x23
	.uleb128 0x220
	.uleb128 0xd
	.long	.LASF137
	.byte	0x2
	.value	0x204
	.long	0x34
	.byte	0x3
	.byte	0x23
	.uleb128 0x224
	.uleb128 0xd
	.long	.LASF138
	.byte	0x2
	.value	0x205
	.long	0x34
	.byte	0x3
	.byte	0x23
	.uleb128 0x228
	.uleb128 0xd
	.long	.LASF139
	.byte	0x2
	.value	0x206
	.long	0x34
	.byte	0x3
	.byte	0x23
	.uleb128 0x22c
	.uleb128 0xd
	.long	.LASF140
	.byte	0x2
	.value	0x207
	.long	0x60c
	.byte	0x3
	.byte	0x23
	.uleb128 0x230
	.uleb128 0xd
	.long	.LASF141
	.byte	0x2
	.value	0x20f
	.long	0xea3
	.byte	0x3
	.byte	0x23
	.uleb128 0x240
	.uleb128 0xd
	.long	.LASF142
	.byte	0x2
	.value	0x212
	.long	0x4b2
	.byte	0x3
	.byte	0x23
	.uleb128 0x2c0
	.uleb128 0x16
	.string	"ft0"
	.byte	0x2
	.value	0x213
	.long	0x4bd
	.byte	0x3
	.byte	0x23
	.uleb128 0x2d0
	.uleb128 0xd
	.long	.LASF143
	.byte	0x2
	.value	0x219
	.long	0x869
	.byte	0x3
	.byte	0x23
	.uleb128 0x2e0
	.uleb128 0xd
	.long	.LASF144
	.byte	0x2
	.value	0x21b
	.long	0x4b2
	.byte	0x3
	.byte	0x23
	.uleb128 0x2e8
	.uleb128 0xd
	.long	.LASF145
	.byte	0x2
	.value	0x21c
	.long	0x36a
	.byte	0x3
	.byte	0x23
	.uleb128 0x2ec
	.uleb128 0xd
	.long	.LASF146
	.byte	0x2
	.value	0x21d
	.long	0xeb3
	.byte	0x3
	.byte	0x23
	.uleb128 0x2f0
	.uleb128 0xd
	.long	.LASF147
	.byte	0x2
	.value	0x21e
	.long	0x5cb
	.byte	0x3
	.byte	0x23
	.uleb128 0x370
	.uleb128 0xd
	.long	.LASF148
	.byte	0x2
	.value	0x21f
	.long	0x63c
	.byte	0x3
	.byte	0x23
	.uleb128 0x380
	.uleb128 0xd
	.long	.LASF149
	.byte	0x2
	.value	0x222
	.long	0x36a
	.byte	0x3
	.byte	0x23
	.uleb128 0x388
	.uleb128 0xd
	.long	.LASF150
	.byte	0x2
	.value	0x223
	.long	0x36a
	.byte	0x3
	.byte	0x23
	.uleb128 0x38c
	.uleb128 0xd
	.long	.LASF151
	.byte	0x2
	.value	0x224
	.long	0x36a
	.byte	0x3
	.byte	0x23
	.uleb128 0x390
	.uleb128 0xd
	.long	.LASF152
	.byte	0x2
	.value	0x225
	.long	0x375
	.byte	0x3
	.byte	0x23
	.uleb128 0x398
	.uleb128 0xd
	.long	.LASF153
	.byte	0x2
	.value	0x226
	.long	0x375
	.byte	0x3
	.byte	0x23
	.uleb128 0x3a0
	.uleb128 0xd
	.long	.LASF154
	.byte	0x2
	.value	0x228
	.long	0x3f8
	.byte	0x3
	.byte	0x23
	.uleb128 0x3a8
	.uleb128 0xd
	.long	.LASF155
	.byte	0x2
	.value	0x229
	.long	0x3f8
	.byte	0x3
	.byte	0x23
	.uleb128 0x3b0
	.uleb128 0xd
	.long	.LASF156
	.byte	0x2
	.value	0x22a
	.long	0x375
	.byte	0x3
	.byte	0x23
	.uleb128 0x3b8
	.uleb128 0xd
	.long	.LASF157
	.byte	0x2
	.value	0x22b
	.long	0x35f
	.byte	0x3
	.byte	0x23
	.uleb128 0x3c0
	.uleb128 0xd
	.long	.LASF158
	.byte	0x2
	.value	0x22c
	.long	0x35f
	.byte	0x3
	.byte	0x23
	.uleb128 0x3c2
	.uleb128 0xd
	.long	.LASF159
	.byte	0x2
	.value	0x22d
	.long	0x35f
	.byte	0x3
	.byte	0x23
	.uleb128 0x3c4
	.uleb128 0xd
	.long	.LASF160
	.byte	0x2
	.value	0x22e
	.long	0x35f
	.byte	0x3
	.byte	0x23
	.uleb128 0x3c6
	.uleb128 0xd
	.long	.LASF161
	.byte	0x2
	.value	0x22f
	.long	0x36a
	.byte	0x3
	.byte	0x23
	.uleb128 0x3c8
	.uleb128 0x16
	.string	"pat"
	.byte	0x2
	.value	0x238
	.long	0x375
	.byte	0x3
	.byte	0x23
	.uleb128 0x3d0
	.uleb128 0xd
	.long	.LASF162
	.byte	0x2
	.value	0x23b
	.long	0x3d2
	.byte	0x3
	.byte	0x23
	.uleb128 0x3d8
	.uleb128 0xd
	.long	.LASF163
	.byte	0x2
	.value	0x23c
	.long	0x4f
	.byte	0x3
	.byte	0x23
	.uleb128 0x4a0
	.uleb128 0xd
	.long	.LASF164
	.byte	0x2
	.value	0x23d
	.long	0x4f
	.byte	0x3
	.byte	0x23
	.uleb128 0x4a4
	.uleb128 0xd
	.long	.LASF165
	.byte	0x2
	.value	0x23e
	.long	0x4f
	.byte	0x3
	.byte	0x23
	.uleb128 0x4a8
	.uleb128 0xd
	.long	.LASF166
	.byte	0x2
	.value	0x23f
	.long	0x3ed
	.byte	0x3
	.byte	0x23
	.uleb128 0x4ac
	.uleb128 0x16
	.string	"dr"
	.byte	0x2
	.value	0x240
	.long	0xe63
	.byte	0x3
	.byte	0x23
	.uleb128 0x4b0
	.uleb128 0xd
	.long	.LASF167
	.byte	0x2
	.value	0x241
	.long	0x36a
	.byte	0x3
	.byte	0x23
	.uleb128 0x4d0
	.uleb128 0xd
	.long	.LASF168
	.byte	0x2
	.value	0x242
	.long	0x4f
	.byte	0x3
	.byte	0x23
	.uleb128 0x4d4
	.uleb128 0xd
	.long	.LASF169
	.byte	0x2
	.value	0x243
	.long	0x4f
	.byte	0x3
	.byte	0x23
	.uleb128 0x4d8
	.uleb128 0xd
	.long	.LASF170
	.byte	0x2
	.value	0x244
	.long	0x4f
	.byte	0x3
	.byte	0x23
	.uleb128 0x4dc
	.uleb128 0xd
	.long	.LASF171
	.byte	0x2
	.value	0x246
	.long	0xf86
	.byte	0x3
	.byte	0x23
	.uleb128 0x4e0
	.uleb128 0xd
	.long	.LASF172
	.byte	0x2
	.value	0x246
	.long	0x48
	.byte	0x3
	.byte	0x23
	.uleb128 0x4e8
	.uleb128 0xd
	.long	.LASF173
	.byte	0x2
	.value	0x246
	.long	0x3ed
	.byte	0x3
	.byte	0x23
	.uleb128 0x4f0
	.uleb128 0xd
	.long	.LASF174
	.byte	0x2
	.value	0x246
	.long	0xf8c
	.byte	0x3
	.byte	0x23
	.uleb128 0x4f8
	.uleb128 0xd
	.long	.LASF175
	.byte	0x2
	.value	0x246
	.long	0xfa2
	.byte	0x3
	.byte	0x23
	.uleb128 0x34f8
	.uleb128 0xd
	.long	.LASF176
	.byte	0x2
	.value	0x246
	.long	0xfb3
	.byte	0x4
	.byte	0x23
	.uleb128 0xb4f8
	.uleb128 0xd
	.long	.LASF177
	.byte	0x2
	.value	0x246
	.long	0x4f
	.byte	0x4
	.byte	0x23
	.uleb128 0xb578
	.uleb128 0xd
	.long	.LASF178
	.byte	0x2
	.value	0x246
	.long	0x4f
	.byte	0x4
	.byte	0x23
	.uleb128 0xb57c
	.uleb128 0xd
	.long	.LASF179
	.byte	0x2
	.value	0x246
	.long	0xfc3
	.byte	0x4
	.byte	0x23
	.uleb128 0xb580
	.uleb128 0xd
	.long	.LASF180
	.byte	0x2
	.value	0x246
	.long	0x4f
	.byte	0x4
	.byte	0x23
	.uleb128 0xb780
	.uleb128 0xd
	.long	.LASF181
	.byte	0x2
	.value	0x246
	.long	0x4f
	.byte	0x4
	.byte	0x23
	.uleb128 0xb784
	.uleb128 0xd
	.long	.LASF182
	.byte	0x2
	.value	0x246
	.long	0x3b
	.byte	0x4
	.byte	0x23
	.uleb128 0xb788
	.uleb128 0xd
	.long	.LASF183
	.byte	0x2
	.value	0x246
	.long	0x4f
	.byte	0x4
	.byte	0x23
	.uleb128 0xb790
	.uleb128 0xd
	.long	.LASF184
	.byte	0x2
	.value	0x246
	.long	0x3b
	.byte	0x4
	.byte	0x23
	.uleb128 0xb798
	.uleb128 0xd
	.long	.LASF185
	.byte	0x2
	.value	0x246
	.long	0x6b
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7a0
	.uleb128 0xd
	.long	.LASF186
	.byte	0x2
	.value	0x249
	.long	0x36a
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7a8
	.uleb128 0xd
	.long	.LASF187
	.byte	0x2
	.value	0x24a
	.long	0x36a
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7ac
	.uleb128 0xd
	.long	.LASF188
	.byte	0x2
	.value	0x24b
	.long	0x36a
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7b0
	.uleb128 0xd
	.long	.LASF189
	.byte	0x2
	.value	0x24c
	.long	0x36a
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7b4
	.uleb128 0xd
	.long	.LASF190
	.byte	0x2
	.value	0x24d
	.long	0x36a
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7b8
	.uleb128 0xd
	.long	.LASF191
	.byte	0x2
	.value	0x24e
	.long	0x36a
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7bc
	.uleb128 0xd
	.long	.LASF192
	.byte	0x2
	.value	0x24f
	.long	0x36a
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7c0
	.uleb128 0xd
	.long	.LASF193
	.byte	0x2
	.value	0x250
	.long	0x36a
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7c4
	.uleb128 0xd
	.long	.LASF194
	.byte	0x2
	.value	0x251
	.long	0xfd3
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7c8
	.uleb128 0xd
	.long	.LASF195
	.byte	0x2
	.value	0x252
	.long	0x36a
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7f8
	.uleb128 0xd
	.long	.LASF196
	.byte	0x2
	.value	0x253
	.long	0x36a
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7fc
	.uleb128 0xd
	.long	.LASF197
	.byte	0x2
	.value	0x254
	.long	0x36a
	.byte	0x4
	.byte	0x23
	.uleb128 0xb800
	.uleb128 0xd
	.long	.LASF198
	.byte	0x2
	.value	0x25b
	.long	0xfe3
	.byte	0x4
	.byte	0x23
	.uleb128 0xb808
	.uleb128 0xd
	.long	.LASF199
	.byte	0x2
	.value	0x25f
	.long	0xfef
	.byte	0x4
	.byte	0x23
	.uleb128 0xb810
	.byte	0x0
	.uleb128 0xa
	.long	0xe73
	.long	0x3ed
	.uleb128 0xb
	.long	0x2d
	.byte	0x7
	.byte	0x0
	.uleb128 0xa
	.long	0xe83
	.long	0x692
	.uleb128 0xb
	.long	0x2d
	.byte	0x7
	.byte	0x0
	.uleb128 0xa
	.long	0xe93
	.long	0x513
	.uleb128 0xb
	.long	0x2d
	.byte	0x5
	.byte	0x0
	.uleb128 0xa
	.long	0xea3
	.long	0x3ed
	.uleb128 0xb
	.long	0x2d
	.byte	0x4
	.byte	0x0
	.uleb128 0xa
	.long	0xeb3
	.long	0x849
	.uleb128 0xb
	.long	0x2d
	.byte	0x7
	.byte	0x0
	.uleb128 0xa
	.long	0xec3
	.long	0x5cb
	.uleb128 0xb
	.long	0x2d
	.byte	0x7
	.byte	0x0
	.uleb128 0x10
	.long	0xf86
	.long	.LASF200
	.byte	0x68
	.byte	0x2
	.value	0x246
	.uleb128 0x13
	.string	"pc"
	.byte	0x11
	.byte	0x93
	.long	0x3ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF201
	.byte	0x11
	.byte	0x94
	.long	0x3ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.long	.LASF84
	.byte	0x11
	.byte	0x95
	.long	0x375
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF202
	.byte	0x11
	.byte	0x96
	.long	0x35f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.long	.LASF203
	.byte	0x11
	.byte	0x98
	.long	0x35f
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0x9
	.long	.LASF204
	.byte	0x11
	.byte	0x9e
	.long	0x1001
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.long	.LASF205
	.byte	0x11
	.byte	0xa0
	.long	0xf86
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.long	.LASF206
	.byte	0x11
	.byte	0xa3
	.long	0x1007
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.long	.LASF207
	.byte	0x11
	.byte	0xa4
	.long	0x1017
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.long	.LASF208
	.byte	0x11
	.byte	0xa8
	.long	0x61c
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.long	.LASF209
	.byte	0x11
	.byte	0xac
	.long	0x1027
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x9
	.long	.LASF210
	.byte	0x11
	.byte	0xb2
	.long	0x1007
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x9
	.long	.LASF211
	.byte	0x11
	.byte	0xb3
	.long	0xf86
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0xec3
	.uleb128 0xa
	.long	0xfa2
	.long	0x448
	.uleb128 0xb
	.long	0x2d
	.byte	0x1
	.uleb128 0xb
	.long	0x2d
	.byte	0xff
	.byte	0x0
	.uleb128 0xa
	.long	0xfb3
	.long	0xf86
	.uleb128 0x17
	.long	0x2d
	.value	0xfff
	.byte	0x0
	.uleb128 0xa
	.long	0xfc3
	.long	0x3ed
	.uleb128 0xb
	.long	0x2d
	.byte	0x1f
	.byte	0x0
	.uleb128 0xa
	.long	0xfd3
	.long	0x89f
	.uleb128 0xb
	.long	0x2d
	.byte	0x1f
	.byte	0x0
	.uleb128 0xa
	.long	0xfe3
	.long	0x36a
	.uleb128 0xb
	.long	0x2d
	.byte	0xb
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x65e
	.uleb128 0x18
	.long	.LASF313
	.byte	0x1
	.uleb128 0x6
	.byte	0x8
	.long	0xfe9
	.uleb128 0xf
	.long	.LASF121
	.byte	0x2
	.value	0x260
	.long	0x8c7
	.uleb128 0x6
	.byte	0x8
	.long	0x354
	.uleb128 0xa
	.long	0x1017
	.long	0xf86
	.uleb128 0xb
	.long	0x2d
	.byte	0x1
	.byte	0x0
	.uleb128 0xa
	.long	0x1027
	.long	0x3ed
	.uleb128 0xb
	.long	0x2d
	.byte	0x1
	.byte	0x0
	.uleb128 0xa
	.long	0x1037
	.long	0x36a
	.uleb128 0xb
	.long	0x2d
	.byte	0x1
	.byte	0x0
	.uleb128 0xc
	.long	0x10fa
	.long	.LASF212
	.byte	0x38
	.byte	0x1
	.byte	0x7b
	.uleb128 0x9
	.long	.LASF213
	.byte	0x1
	.byte	0x7c
	.long	0x6b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF214
	.byte	0x1
	.byte	0x7d
	.long	0x36a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF215
	.byte	0x1
	.byte	0x7e
	.long	0x36a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.long	.LASF216
	.byte	0x1
	.byte	0x7e
	.long	0x36a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.long	.LASF217
	.byte	0x1
	.byte	0x7e
	.long	0x36a
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.long	.LASF218
	.byte	0x1
	.byte	0x7f
	.long	0x4f
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.long	.LASF219
	.byte	0x1
	.byte	0x80
	.long	0x4f
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x9
	.long	.LASF220
	.byte	0x1
	.byte	0x81
	.long	0x4f
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.long	.LASF221
	.byte	0x1
	.byte	0x82
	.long	0x36a
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.long	.LASF222
	.byte	0x1
	.byte	0x82
	.long	0x36a
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.long	.LASF223
	.byte	0x1
	.byte	0x82
	.long	0x36a
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.long	.LASF224
	.byte	0x1
	.byte	0x82
	.long	0x36a
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.long	.LASF225
	.byte	0x1
	.byte	0x83
	.long	0x36a
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x4
	.long	.LASF212
	.byte	0x1
	.byte	0x84
	.long	0x1037
	.uleb128 0x19
	.long	0x1258
	.long	.LASF239
	.byte	0x1
	.byte	0x2a
	.byte	0x1
	.quad	.LFB220
	.quad	.LFE220
	.byte	0x1
	.byte	0x57
	.uleb128 0x1a
	.long	.LASF226
	.byte	0x1
	.byte	0x26
	.long	0xa8
	.byte	0x1
	.byte	0x56
	.uleb128 0x1a
	.long	.LASF221
	.byte	0x1
	.byte	0x26
	.long	0x1258
	.byte	0x1
	.byte	0x5d
	.uleb128 0x1a
	.long	.LASF222
	.byte	0x1
	.byte	0x27
	.long	0x1258
	.byte	0x1
	.byte	0x5e
	.uleb128 0x1a
	.long	.LASF223
	.byte	0x1
	.byte	0x28
	.long	0x1258
	.byte	0x1
	.byte	0x5f
	.uleb128 0x1a
	.long	.LASF224
	.byte	0x1
	.byte	0x29
	.long	0x1258
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1b
	.string	"i"
	.byte	0x1
	.byte	0x2b
	.long	0x4f
	.byte	0x1
	.byte	0x53
	.uleb128 0x1c
	.long	.LASF227
	.byte	0x1
	.byte	0x2f
	.long	0x125e
	.byte	0x3
	.byte	0x91
	.sleb128 784
	.uleb128 0x1c
	.long	.LASF228
	.byte	0x1
	.byte	0x35
	.long	0x126e
	.byte	0x3
	.byte	0x91
	.sleb128 528
	.uleb128 0x1c
	.long	.LASF229
	.byte	0x1
	.byte	0x3b
	.long	0x127e
	.byte	0x3
	.byte	0x91
	.sleb128 272
	.uleb128 0x1c
	.long	.LASF230
	.byte	0x1
	.byte	0x41
	.long	0x128e
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x1d
	.long	0x11d7
	.quad	.LBB2
	.quad	.LBE2
	.uleb128 0x1e
	.long	.LASF231
	.byte	0x1
	.byte	0x49
	.long	0x3d
	.uleb128 0x1e
	.long	.LASF232
	.byte	0x1
	.byte	0x49
	.long	0x3d
	.byte	0x0
	.uleb128 0x1d
	.long	0x1203
	.quad	.LBB3
	.quad	.LBE3
	.uleb128 0x1e
	.long	.LASF231
	.byte	0x1
	.byte	0x4e
	.long	0x3d
	.uleb128 0x1e
	.long	.LASF232
	.byte	0x1
	.byte	0x4e
	.long	0x3d
	.byte	0x0
	.uleb128 0x1d
	.long	0x122f
	.quad	.LBB4
	.quad	.LBE4
	.uleb128 0x1e
	.long	.LASF231
	.byte	0x1
	.byte	0x53
	.long	0x3d
	.uleb128 0x1e
	.long	.LASF232
	.byte	0x1
	.byte	0x53
	.long	0x3d
	.byte	0x0
	.uleb128 0x1f
	.quad	.LBB5
	.quad	.LBE5
	.uleb128 0x1e
	.long	.LASF231
	.byte	0x1
	.byte	0x58
	.long	0x3d
	.uleb128 0x1e
	.long	.LASF232
	.byte	0x1
	.byte	0x58
	.long	0x3d
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x36a
	.uleb128 0xa
	.long	0x126e
	.long	0x6b
	.uleb128 0xb
	.long	0x2d
	.byte	0x1f
	.byte	0x0
	.uleb128 0xa
	.long	0x127e
	.long	0x6b
	.uleb128 0xb
	.long	0x2d
	.byte	0x1f
	.byte	0x0
	.uleb128 0xa
	.long	0x128e
	.long	0x6b
	.uleb128 0xb
	.long	0x2d
	.byte	0x1f
	.byte	0x0
	.uleb128 0xa
	.long	0x129e
	.long	0x6b
	.uleb128 0xb
	.long	0x2d
	.byte	0x1f
	.byte	0x0
	.uleb128 0x20
	.long	0x12e5
	.byte	0x1
	.long	.LASF234
	.byte	0x1
	.value	0x129
	.byte	0x1
	.quad	.LFB223
	.quad	.LFE223
	.byte	0x1
	.byte	0x57
	.uleb128 0x21
	.string	"f"
	.byte	0x1
	.value	0x128
	.long	0x812
	.byte	0x1
	.byte	0x5d
	.uleb128 0x22
	.long	.LASF233
	.byte	0x1
	.value	0x128
	.long	0x12fb
	.byte	0x1
	.byte	0x5c
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.value	0x12a
	.long	0x34
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x24
	.long	0x12fb
	.byte	0x1
	.long	0x4f
	.uleb128 0x25
	.long	0x812
	.uleb128 0x25
	.long	0x6b
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x12e5
	.uleb128 0x20
	.long	0x134c
	.byte	0x1
	.long	.LASF235
	.byte	0x1
	.value	0x2af
	.byte	0x1
	.quad	.LFB229
	.quad	.LFE229
	.byte	0x1
	.byte	0x57
	.uleb128 0x21
	.string	"env"
	.byte	0x1
	.value	0x2ae
	.long	0x134c
	.byte	0x1
	.byte	0x56
	.uleb128 0x22
	.long	.LASF236
	.byte	0x1
	.value	0x2ae
	.long	0x36a
	.byte	0x1
	.byte	0x53
	.uleb128 0x27
	.long	.LASF237
	.byte	0x1
	.value	0x2b0
	.long	0x4f
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0xff5
	.uleb128 0x20
	.long	0x1551
	.byte	0x1
	.long	.LASF238
	.byte	0x1
	.value	0x158
	.byte	0x1
	.quad	.LFB225
	.quad	.LFE225
	.byte	0x1
	.byte	0x57
	.uleb128 0x21
	.string	"env"
	.byte	0x1
	.value	0x157
	.long	0x134c
	.byte	0x1
	.byte	0x53
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.value	0x159
	.long	0x4f
	.byte	0x1
	.byte	0x51
	.uleb128 0x28
	.long	0x13d8
	.long	0x1551
	.quad	.LBB6
	.quad	.LBE6
	.uleb128 0x29
	.long	0x155f
	.uleb128 0x29
	.long	0x156b
	.uleb128 0x29
	.long	0x1577
	.uleb128 0x29
	.long	0x1583
	.uleb128 0x29
	.long	0x158f
	.uleb128 0x29
	.long	0x159b
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0x0
	.uleb128 0x2b
	.long	0x15a7
	.byte	0x1
	.byte	0x50
	.uleb128 0x2b
	.long	0x15b2
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.long	0x1424
	.long	0x1551
	.quad	.LBB12
	.quad	.LBE12
	.uleb128 0x29
	.long	0x155f
	.uleb128 0x29
	.long	0x156b
	.uleb128 0x29
	.long	0x1577
	.uleb128 0x29
	.long	0x1583
	.uleb128 0x29
	.long	0x158f
	.uleb128 0x29
	.long	0x159b
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0x70
	.uleb128 0x2b
	.long	0x15a7
	.byte	0x1
	.byte	0x50
	.uleb128 0x2b
	.long	0x15b2
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.long	0x1470
	.long	0x1551
	.quad	.LBB22
	.quad	.LBE22
	.uleb128 0x29
	.long	0x155f
	.uleb128 0x29
	.long	0x156b
	.uleb128 0x29
	.long	0x1577
	.uleb128 0x29
	.long	0x1583
	.uleb128 0x29
	.long	0x158f
	.uleb128 0x29
	.long	0x159b
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0xd0
	.uleb128 0x2b
	.long	0x15a7
	.byte	0x1
	.byte	0x50
	.uleb128 0x2b
	.long	0x15b2
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.long	0x14bc
	.long	0x1551
	.quad	.LBB28
	.quad	.LBE28
	.uleb128 0x29
	.long	0x155f
	.uleb128 0x29
	.long	0x156b
	.uleb128 0x29
	.long	0x1577
	.uleb128 0x29
	.long	0x1583
	.uleb128 0x29
	.long	0x158f
	.uleb128 0x29
	.long	0x159b
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0x120
	.uleb128 0x2b
	.long	0x15a7
	.byte	0x1
	.byte	0x50
	.uleb128 0x2b
	.long	0x15b2
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.long	0x1508
	.long	0x1551
	.quad	.LBB34
	.quad	.LBE34
	.uleb128 0x29
	.long	0x155f
	.uleb128 0x29
	.long	0x156b
	.uleb128 0x29
	.long	0x1577
	.uleb128 0x29
	.long	0x1583
	.uleb128 0x29
	.long	0x158f
	.uleb128 0x29
	.long	0x159b
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0x170
	.uleb128 0x2b
	.long	0x15a7
	.byte	0x1
	.byte	0x50
	.uleb128 0x2b
	.long	0x15b2
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.long	0x1551
	.quad	.LBB40
	.quad	.LBE40
	.uleb128 0x29
	.long	0x155f
	.uleb128 0x29
	.long	0x156b
	.uleb128 0x29
	.long	0x1577
	.uleb128 0x29
	.long	0x1583
	.uleb128 0x29
	.long	0x158f
	.uleb128 0x29
	.long	0x159b
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0x1c0
	.uleb128 0x2b
	.long	0x15a7
	.byte	0x1
	.byte	0x50
	.uleb128 0x2b
	.long	0x15b2
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.long	0x15bf
	.long	.LASF240
	.byte	0x2
	.value	0x272
	.byte	0x1
	.byte	0x3
	.uleb128 0x2e
	.string	"env"
	.byte	0x2
	.value	0x26d
	.long	0x134c
	.uleb128 0x2f
	.long	.LASF241
	.byte	0x2
	.value	0x26e
	.long	0x4f
	.uleb128 0x2f
	.long	.LASF81
	.byte	0x2
	.value	0x26e
	.long	0x34
	.uleb128 0x2f
	.long	.LASF82
	.byte	0x2
	.value	0x26f
	.long	0x3ed
	.uleb128 0x2f
	.long	.LASF83
	.byte	0x2
	.value	0x270
	.long	0x34
	.uleb128 0x2f
	.long	.LASF84
	.byte	0x2
	.value	0x271
	.long	0x34
	.uleb128 0x30
	.string	"sc"
	.byte	0x2
	.value	0x273
	.long	0x15bf
	.uleb128 0x31
	.long	.LASF242
	.byte	0x2
	.value	0x274
	.long	0x34
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x513
	.uleb128 0x20
	.long	0x15f4
	.byte	0x1
	.long	.LASF243
	.byte	0x1
	.value	0x18a
	.byte	0x1
	.quad	.LFB226
	.quad	.LFE226
	.byte	0x1
	.byte	0x57
	.uleb128 0x21
	.string	"env"
	.byte	0x1
	.value	0x189
	.long	0x134c
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x32
	.long	0x181b
	.byte	0x1
	.long	.LASF244
	.byte	0x1
	.byte	0x60
	.byte	0x1
	.long	0x134c
	.quad	.LFB221
	.quad	.LFE221
	.byte	0x1
	.byte	0x57
	.uleb128 0x1a
	.long	.LASF245
	.byte	0x1
	.byte	0x5f
	.long	0x6b
	.byte	0x1
	.byte	0x53
	.uleb128 0x1b
	.string	"env"
	.byte	0x1
	.byte	0x61
	.long	0x134c
	.byte	0x1
	.byte	0x5c
	.uleb128 0x1c
	.long	.LASF246
	.byte	0x1
	.byte	0x62
	.long	0x4f
	.byte	0x9
	.byte	0x3
	.quad	inited.1
	.uleb128 0x28
	.long	0x174b
	.long	0x181b
	.quad	.LBB64
	.quad	.LBE64
	.uleb128 0x29
	.long	0x182d
	.uleb128 0x29
	.long	0x1839
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0x230
	.uleb128 0x2b
	.long	0x1845
	.byte	0x3
	.byte	0x91
	.sleb128 64
	.uleb128 0x2b
	.long	0x1851
	.byte	0x1
	.byte	0x5e
	.uleb128 0x28
	.long	0x172d
	.long	0x1892
	.quad	.LBB66
	.quad	.LBE66
	.uleb128 0x29
	.long	0x18a3
	.uleb128 0x29
	.long	0x18ae
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0x270
	.uleb128 0x2b
	.long	0x18b9
	.byte	0x1
	.byte	0x53
	.uleb128 0x2b
	.long	0x18c2
	.byte	0x1
	.byte	0x50
	.uleb128 0x2b
	.long	0x18cd
	.byte	0x1
	.byte	0x5f
	.uleb128 0x2b
	.long	0x18d6
	.byte	0x1
	.byte	0x53
	.uleb128 0x2b
	.long	0x18e1
	.byte	0x1
	.byte	0x5d
	.uleb128 0x2b
	.long	0x18ec
	.byte	0x2
	.byte	0x91
	.sleb128 48
	.uleb128 0x2b
	.long	0x18f7
	.byte	0x2
	.byte	0x91
	.sleb128 52
	.uleb128 0x2b
	.long	0x1902
	.byte	0x2
	.byte	0x91
	.sleb128 56
	.uleb128 0x2b
	.long	0x190d
	.byte	0x2
	.byte	0x91
	.sleb128 60
	.uleb128 0x2b
	.long	0x1918
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x2b
	.long	0x1923
	.byte	0x2
	.byte	0x91
	.sleb128 36
	.uleb128 0x2b
	.long	0x192e
	.byte	0x2
	.byte	0x91
	.sleb128 40
	.uleb128 0x2b
	.long	0x1939
	.byte	0x2
	.byte	0x91
	.sleb128 44
	.uleb128 0x2b
	.long	0x1944
	.byte	0x1
	.byte	0x51
	.uleb128 0x2b
	.long	0x194f
	.byte	0x1
	.byte	0x52
	.uleb128 0x2b
	.long	0x195a
	.byte	0x1
	.byte	0x52
	.uleb128 0x33
	.long	0x1965
	.quad	.L117
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
	.quad	.LBB70
	.quad	.LBE70
	.uleb128 0x34
	.long	0x198e
	.uleb128 0x34
	.long	0x1999
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
	.long	0x17be
	.long	.Ldebug_ranges0+0x2d0
	.uleb128 0x2b
	.long	0x19da
	.byte	0x1
	.byte	0x56
	.uleb128 0x35
	.long	0x176f
	.long	.Ldebug_ranges0+0x310
	.uleb128 0x34
	.long	0x19ea
	.uleb128 0x34
	.long	0x19f5
	.byte	0x0
	.uleb128 0x1d
	.long	0x178f
	.quad	.LBB78
	.quad	.LBE78
	.uleb128 0x34
	.long	0x1a4b
	.uleb128 0x34
	.long	0x1a56
	.byte	0x0
	.uleb128 0x1d
	.long	0x17af
	.quad	.LBB79
	.quad	.LBE79
	.uleb128 0x34
	.long	0x1aac
	.uleb128 0x34
	.long	0x1ab8
	.byte	0x0
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0x340
	.uleb128 0x2b
	.long	0x1afe
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
	.long	0x17e2
	.long	.Ldebug_ranges0+0x370
	.uleb128 0x34
	.long	0x185e
	.uleb128 0x2b
	.long	0x186a
	.byte	0x1
	.byte	0x54
	.uleb128 0x2b
	.long	0x1874
	.byte	0x1
	.byte	0x55
	.uleb128 0x2b
	.long	0x1880
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x1d
	.long	0x1800
	.quad	.LBB88
	.quad	.LBE88
	.uleb128 0x2b
	.long	0x1a3a
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.byte	0x0
	.uleb128 0x1f
	.quad	.LBB89
	.quad	.LBE89
	.uleb128 0x2b
	.long	0x1a9b
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
	.long	0x188c
	.long	.LASF247
	.byte	0x1
	.value	0x131
	.byte	0x1
	.long	0x4f
	.byte	0x1
	.uleb128 0x2e
	.string	"env"
	.byte	0x1
	.value	0x130
	.long	0x134c
	.uleb128 0x2f
	.long	.LASF245
	.byte	0x1
	.value	0x130
	.long	0x6b
	.uleb128 0x31
	.long	.LASF248
	.byte	0x1
	.value	0x132
	.long	0x10fa
	.uleb128 0x30
	.string	"def"
	.byte	0x1
	.value	0x132
	.long	0x188c
	.uleb128 0x37
	.uleb128 0x31
	.long	.LASF249
	.byte	0x1
	.value	0x148
	.long	0x6b
	.uleb128 0x30
	.string	"c"
	.byte	0x1
	.value	0x149
	.long	0x4f
	.uleb128 0x30
	.string	"len"
	.byte	0x1
	.value	0x149
	.long	0x4f
	.uleb128 0x30
	.string	"i"
	.byte	0x1
	.value	0x149
	.long	0x4f
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x10fa
	.uleb128 0x38
	.long	0x1b0d
	.long	.LASF250
	.byte	0x1
	.byte	0xd2
	.byte	0x1
	.long	0x4f
	.byte	0x1
	.uleb128 0x39
	.long	.LASF251
	.byte	0x1
	.byte	0xd1
	.long	0x188c
	.uleb128 0x39
	.long	.LASF245
	.byte	0x1
	.byte	0xd1
	.long	0x6b
	.uleb128 0x3a
	.string	"i"
	.byte	0x1
	.byte	0xd3
	.long	0x34
	.uleb128 0x3a
	.string	"def"
	.byte	0x1
	.byte	0xd4
	.long	0x188c
	.uleb128 0x3a
	.string	"s"
	.byte	0x1
	.byte	0xd6
	.long	0xa8
	.uleb128 0x1e
	.long	.LASF252
	.byte	0x1
	.byte	0xd7
	.long	0xa8
	.uleb128 0x1e
	.long	.LASF213
	.byte	0x1
	.byte	0xd7
	.long	0xa8
	.uleb128 0x1e
	.long	.LASF253
	.byte	0x1
	.byte	0xd8
	.long	0x36a
	.uleb128 0x1e
	.long	.LASF254
	.byte	0x1
	.byte	0xd8
	.long	0x36a
	.uleb128 0x1e
	.long	.LASF255
	.byte	0x1
	.byte	0xd8
	.long	0x36a
	.uleb128 0x1e
	.long	.LASF256
	.byte	0x1
	.byte	0xd8
	.long	0x36a
	.uleb128 0x1e
	.long	.LASF257
	.byte	0x1
	.byte	0xd9
	.long	0x36a
	.uleb128 0x1e
	.long	.LASF258
	.byte	0x1
	.byte	0xd9
	.long	0x36a
	.uleb128 0x1e
	.long	.LASF259
	.byte	0x1
	.byte	0xd9
	.long	0x36a
	.uleb128 0x1e
	.long	.LASF260
	.byte	0x1
	.byte	0xd9
	.long	0x36a
	.uleb128 0x1e
	.long	.LASF218
	.byte	0x1
	.byte	0xda
	.long	0x4f
	.uleb128 0x1e
	.long	.LASF219
	.byte	0x1
	.byte	0xda
	.long	0x4f
	.uleb128 0x1e
	.long	.LASF220
	.byte	0x1
	.byte	0xda
	.long	0x4f
	.uleb128 0x3b
	.long	.LASF296
	.byte	0x1
	.value	0x123
	.uleb128 0x3c
	.long	0x1989
	.uleb128 0x1e
	.long	.LASF261
	.byte	0x1
	.byte	0xd6
	.long	0x3d
	.uleb128 0x1e
	.long	.LASF262
	.byte	0x1
	.byte	0xd6
	.long	0xa8
	.byte	0x0
	.uleb128 0x3c
	.long	0x19d9
	.uleb128 0x1e
	.long	.LASF231
	.byte	0x1
	.byte	0xde
	.long	0x3d
	.uleb128 0x1e
	.long	.LASF232
	.byte	0x1
	.byte	0xde
	.long	0x3d
	.uleb128 0x3c
	.long	0x19c0
	.uleb128 0x1e
	.long	.LASF263
	.byte	0x1
	.byte	0xde
	.long	0x1b0d
	.uleb128 0x1e
	.long	.LASF264
	.byte	0x1
	.byte	0xde
	.long	0x4f
	.byte	0x0
	.uleb128 0x37
	.uleb128 0x1e
	.long	.LASF265
	.byte	0x1
	.byte	0xde
	.long	0x1b0d
	.uleb128 0x1e
	.long	.LASF264
	.byte	0x1
	.byte	0xde
	.long	0x4f
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.uleb128 0x3a
	.string	"val"
	.byte	0x1
	.byte	0xea
	.long	0xa8
	.uleb128 0x3c
	.long	0x1a35
	.uleb128 0x1e
	.long	.LASF231
	.byte	0x1
	.byte	0xf1
	.long	0x3d
	.uleb128 0x1e
	.long	.LASF232
	.byte	0x1
	.byte	0xf1
	.long	0x3d
	.uleb128 0x3c
	.long	0x1a1c
	.uleb128 0x1e
	.long	.LASF263
	.byte	0x1
	.byte	0xf1
	.long	0x1b0d
	.uleb128 0x1e
	.long	.LASF264
	.byte	0x1
	.byte	0xf1
	.long	0x4f
	.byte	0x0
	.uleb128 0x37
	.uleb128 0x1e
	.long	.LASF265
	.byte	0x1
	.byte	0xf1
	.long	0x1b0d
	.uleb128 0x1e
	.long	.LASF264
	.byte	0x1
	.byte	0xf1
	.long	0x4f
	.byte	0x0
	.byte	0x0
	.uleb128 0x3c
	.long	0x1a46
	.uleb128 0x3a
	.string	"err"
	.byte	0x1
	.byte	0xf2
	.long	0xa8
	.byte	0x0
	.uleb128 0x3c
	.long	0x1a96
	.uleb128 0x1e
	.long	.LASF231
	.byte	0x1
	.byte	0xfa
	.long	0x3d
	.uleb128 0x1e
	.long	.LASF232
	.byte	0x1
	.byte	0xfa
	.long	0x3d
	.uleb128 0x3c
	.long	0x1a7d
	.uleb128 0x1e
	.long	.LASF263
	.byte	0x1
	.byte	0xfa
	.long	0x1b0d
	.uleb128 0x1e
	.long	.LASF264
	.byte	0x1
	.byte	0xfa
	.long	0x4f
	.byte	0x0
	.uleb128 0x37
	.uleb128 0x1e
	.long	.LASF265
	.byte	0x1
	.byte	0xfa
	.long	0x1b0d
	.uleb128 0x1e
	.long	.LASF264
	.byte	0x1
	.byte	0xfa
	.long	0x4f
	.byte	0x0
	.byte	0x0
	.uleb128 0x3c
	.long	0x1aa7
	.uleb128 0x3a
	.string	"err"
	.byte	0x1
	.byte	0xfb
	.long	0xa8
	.byte	0x0
	.uleb128 0x3c
	.long	0x1afd
	.uleb128 0x31
	.long	.LASF231
	.byte	0x1
	.value	0x103
	.long	0x3d
	.uleb128 0x31
	.long	.LASF232
	.byte	0x1
	.value	0x103
	.long	0x3d
	.uleb128 0x3c
	.long	0x1ae2
	.uleb128 0x31
	.long	.LASF263
	.byte	0x1
	.value	0x103
	.long	0x1b0d
	.uleb128 0x31
	.long	.LASF264
	.byte	0x1
	.value	0x103
	.long	0x4f
	.byte	0x0
	.uleb128 0x37
	.uleb128 0x31
	.long	.LASF265
	.byte	0x1
	.value	0x103
	.long	0x1b0d
	.uleb128 0x31
	.long	.LASF264
	.byte	0x1
	.value	0x103
	.long	0x4f
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.uleb128 0x30
	.string	"err"
	.byte	0x1
	.value	0x104
	.long	0xa8
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x1b13
	.uleb128 0x7
	.long	0x7d
	.uleb128 0x20
	.long	0x1c4d
	.byte	0x1
	.long	.LASF266
	.byte	0x1
	.value	0x1cc
	.byte	0x1
	.quad	.LFB227
	.quad	.LFE227
	.byte	0x1
	.byte	0x57
	.uleb128 0x21
	.string	"env"
	.byte	0x1
	.value	0x1c9
	.long	0x134c
	.byte	0x1
	.byte	0x5c
	.uleb128 0x21
	.string	"f"
	.byte	0x1
	.value	0x1c9
	.long	0x812
	.byte	0x1
	.byte	0x5e
	.uleb128 0x22
	.long	.LASF233
	.byte	0x1
	.value	0x1ca
	.long	0x12fb
	.byte	0x1
	.byte	0x5d
	.uleb128 0x22
	.long	.LASF84
	.byte	0x1
	.value	0x1cb
	.long	0x4f
	.byte	0x1
	.byte	0x5f
	.uleb128 0x27
	.long	.LASF123
	.byte	0x1
	.value	0x1cd
	.long	0x4f
	.byte	0x1
	.byte	0x54
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.value	0x1cd
	.long	0x4f
	.byte	0x1
	.byte	0x56
	.uleb128 0x23
	.string	"nb"
	.byte	0x1
	.value	0x1cd
	.long	0x4f
	.byte	0x1
	.byte	0x5f
	.uleb128 0x27
	.long	.LASF267
	.byte	0x1
	.value	0x1ce
	.long	0xfd
	.byte	0x3
	.byte	0x91
	.sleb128 160
	.uleb128 0x27
	.long	.LASF268
	.byte	0x1
	.value	0x1cf
	.long	0x1c4d
	.byte	0x9
	.byte	0x3
	.quad	seg_name.0
	.uleb128 0x35
	.long	0x1bd0
	.long	.Ldebug_ranges0+0x3a0
	.uleb128 0x30
	.string	"sc"
	.byte	0x1
	.value	0x236
	.long	0x15bf
	.byte	0x0
	.uleb128 0x1f
	.quad	.LBB96
	.quad	.LBE96
	.uleb128 0x27
	.long	.LASF269
	.byte	0x1
	.value	0x265
	.long	0x4f
	.byte	0x1
	.byte	0x59
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0x3d0
	.uleb128 0x14
	.long	0x1c1c
	.byte	0x10
	.byte	0x1
	.value	0x277
	.uleb128 0xd
	.long	.LASF270
	.byte	0x1
	.value	0x275
	.long	0x375
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF271
	.byte	0x1
	.value	0x276
	.long	0x35f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x11
	.long	0x1c3a
	.byte	0x10
	.byte	0x1
	.value	0x278
	.uleb128 0x12
	.string	"d"
	.byte	0x1
	.value	0x273
	.long	0x482
	.uleb128 0x12
	.string	"l"
	.byte	0x1
	.value	0x277
	.long	0x1bf4
	.byte	0x0
	.uleb128 0x23
	.string	"tmp"
	.byte	0x1
	.value	0x278
	.long	0x1c1c
	.byte	0x3
	.byte	0x91
	.sleb128 144
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.long	0x1c5d
	.long	0x6b
	.uleb128 0xb
	.long	0x2d
	.byte	0x5
	.byte	0x0
	.uleb128 0x20
	.long	0x1c9a
	.byte	0x1
	.long	.LASF272
	.byte	0x1
	.value	0x29d
	.byte	0x1
	.quad	.LFB228
	.quad	.LFE228
	.byte	0x1
	.byte	0x57
	.uleb128 0x21
	.string	"env"
	.byte	0x1
	.value	0x29c
	.long	0x134c
	.byte	0x1
	.byte	0x56
	.uleb128 0x22
	.long	.LASF273
	.byte	0x1
	.value	0x29c
	.long	0x4f
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x20
	.long	0x1cd7
	.byte	0x1
	.long	.LASF274
	.byte	0x1
	.value	0x2da
	.byte	0x1
	.quad	.LFB230
	.quad	.LFE230
	.byte	0x1
	.byte	0x57
	.uleb128 0x21
	.string	"env"
	.byte	0x1
	.value	0x2d9
	.long	0x134c
	.byte	0x1
	.byte	0x55
	.uleb128 0x22
	.long	.LASF275
	.byte	0x1
	.value	0x2d9
	.long	0x3ed
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0x20
	.long	0x1d14
	.byte	0x1
	.long	.LASF276
	.byte	0x1
	.value	0x2e5
	.byte	0x1
	.quad	.LFB231
	.quad	.LFE231
	.byte	0x1
	.byte	0x57
	.uleb128 0x21
	.string	"env"
	.byte	0x1
	.value	0x2e4
	.long	0x134c
	.byte	0x1
	.byte	0x53
	.uleb128 0x22
	.long	.LASF277
	.byte	0x1
	.value	0x2e4
	.long	0x36a
	.byte	0x1
	.byte	0x56
	.byte	0x0
	.uleb128 0x20
	.long	0x1d51
	.byte	0x1
	.long	.LASF278
	.byte	0x1
	.value	0x2fa
	.byte	0x1
	.quad	.LFB232
	.quad	.LFE232
	.byte	0x1
	.byte	0x57
	.uleb128 0x21
	.string	"env"
	.byte	0x1
	.value	0x2f9
	.long	0x134c
	.byte	0x1
	.byte	0x55
	.uleb128 0x22
	.long	.LASF279
	.byte	0x1
	.value	0x2f9
	.long	0x3ed
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0x3d
	.long	0x1f02
	.byte	0x1
	.long	.LASF280
	.byte	0x1
	.value	0x31d
	.byte	0x1
	.long	0x4f
	.quad	.LFB233
	.quad	.LFE233
	.byte	0x1
	.byte	0x57
	.uleb128 0x21
	.string	"env"
	.byte	0x1
	.value	0x31b
	.long	0x134c
	.byte	0x1
	.byte	0x56
	.uleb128 0x22
	.long	.LASF279
	.byte	0x1
	.value	0x31b
	.long	0x3ed
	.byte	0x1
	.byte	0x5e
	.uleb128 0x22
	.long	.LASF281
	.byte	0x1
	.value	0x31c
	.long	0x4f
	.byte	0x1
	.byte	0x5f
	.uleb128 0x22
	.long	.LASF282
	.byte	0x1
	.value	0x31c
	.long	0x4f
	.byte	0x2
	.byte	0x91
	.sleb128 36
	.uleb128 0x22
	.long	.LASF283
	.byte	0x1
	.value	0x31c
	.long	0x4f
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x27
	.long	.LASF284
	.byte	0x1
	.value	0x31e
	.long	0x375
	.byte	0x1
	.byte	0x5c
	.uleb128 0x23
	.string	"pte"
	.byte	0x1
	.value	0x31e
	.long	0x375
	.byte	0x1
	.byte	0x53
	.uleb128 0x31
	.long	.LASF285
	.byte	0x1
	.value	0x31f
	.long	0x36a
	.uleb128 0x31
	.long	.LASF286
	.byte	0x1
	.value	0x31f
	.long	0x36a
	.uleb128 0x31
	.long	.LASF287
	.byte	0x1
	.value	0x31f
	.long	0x36a
	.uleb128 0x27
	.long	.LASF164
	.byte	0x1
	.value	0x320
	.long	0x4f
	.byte	0x1
	.byte	0x5d
	.uleb128 0x27
	.long	.LASF288
	.byte	0x1
	.value	0x320
	.long	0x4f
	.byte	0x1
	.byte	0x52
	.uleb128 0x27
	.long	.LASF289
	.byte	0x1
	.value	0x320
	.long	0x4f
	.byte	0x1
	.byte	0x52
	.uleb128 0x27
	.long	.LASF290
	.byte	0x1
	.value	0x320
	.long	0x4f
	.byte	0x1
	.byte	0x5d
	.uleb128 0x30
	.string	"ret"
	.byte	0x1
	.value	0x320
	.long	0x4f
	.uleb128 0x27
	.long	.LASF291
	.byte	0x1
	.value	0x320
	.long	0x4f
	.byte	0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0x27
	.long	.LASF292
	.byte	0x1
	.value	0x320
	.long	0x4f
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x27
	.long	.LASF293
	.byte	0x1
	.value	0x321
	.long	0x48
	.byte	0x1
	.byte	0x51
	.uleb128 0x27
	.long	.LASF294
	.byte	0x1
	.value	0x321
	.long	0x48
	.byte	0x1
	.byte	0x54
	.uleb128 0x27
	.long	.LASF120
	.byte	0x1
	.value	0x322
	.long	0x3ed
	.byte	0x1
	.byte	0x54
	.uleb128 0x27
	.long	.LASF295
	.byte	0x1
	.value	0x322
	.long	0x3ed
	.byte	0x1
	.byte	0x55
	.uleb128 0x3e
	.long	.LASF297
	.byte	0x1
	.value	0x41c
	.quad	.L248
	.uleb128 0x3e
	.long	.LASF298
	.byte	0x1
	.value	0x429
	.quad	.L251
	.uleb128 0x3e
	.long	.LASF299
	.byte	0x1
	.value	0x427
	.quad	.L256
	.uleb128 0x35
	.long	0x1eed
	.long	.Ldebug_ranges0+0x400
	.uleb128 0x23
	.string	"pde"
	.byte	0x1
	.value	0x334
	.long	0x375
	.byte	0x1
	.byte	0x53
	.uleb128 0x27
	.long	.LASF300
	.byte	0x1
	.value	0x334
	.long	0x375
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0x440
	.uleb128 0x23
	.string	"pde"
	.byte	0x1
	.value	0x3c5
	.long	0x36a
	.byte	0x1
	.byte	0x5c
	.byte	0x0
	.byte	0x0
	.uleb128 0x3d
	.long	0x1fe3
	.byte	0x1
	.long	.LASF301
	.byte	0x1
	.value	0x43f
	.byte	0x1
	.long	0x3f8
	.quad	.LFB234
	.quad	.LFE234
	.byte	0x1
	.byte	0x57
	.uleb128 0x21
	.string	"env"
	.byte	0x1
	.value	0x43e
	.long	0x134c
	.byte	0x1
	.byte	0x53
	.uleb128 0x22
	.long	.LASF279
	.byte	0x1
	.value	0x43e
	.long	0x3ed
	.byte	0x1
	.byte	0x56
	.uleb128 0x31
	.long	.LASF286
	.byte	0x1
	.value	0x440
	.long	0x36a
	.uleb128 0x31
	.long	.LASF287
	.byte	0x1
	.value	0x440
	.long	0x36a
	.uleb128 0x23
	.string	"pde"
	.byte	0x1
	.value	0x441
	.long	0x36a
	.byte	0x1
	.byte	0x50
	.uleb128 0x23
	.string	"pte"
	.byte	0x1
	.value	0x441
	.long	0x36a
	.byte	0x1
	.byte	0x51
	.uleb128 0x27
	.long	.LASF293
	.byte	0x1
	.value	0x441
	.long	0x36a
	.byte	0x1
	.byte	0x50
	.uleb128 0x31
	.long	.LASF294
	.byte	0x1
	.value	0x441
	.long	0x36a
	.uleb128 0x27
	.long	.LASF290
	.byte	0x1
	.value	0x441
	.long	0x36a
	.byte	0x1
	.byte	0x5c
	.uleb128 0x1f
	.quad	.LBB105
	.quad	.LBE105
	.uleb128 0x31
	.long	.LASF285
	.byte	0x1
	.value	0x444
	.long	0x36a
	.uleb128 0x31
	.long	.LASF286
	.byte	0x1
	.value	0x444
	.long	0x36a
	.uleb128 0x31
	.long	.LASF287
	.byte	0x1
	.value	0x444
	.long	0x36a
	.uleb128 0x27
	.long	.LASF300
	.byte	0x1
	.value	0x445
	.long	0x36a
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.uleb128 0x3f
	.long	.LASF302
	.byte	0x5
	.byte	0x91
	.long	0x328
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.long	.LASF303
	.byte	0x5
	.byte	0x92
	.long	0x328
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.long	.LASF304
	.byte	0x5
	.byte	0x93
	.long	0x328
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	.LASF305
	.byte	0x12
	.value	0x32c
	.long	0x134c
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.long	.LASF306
	.byte	0x13
	.byte	0x26
	.long	0x1001
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	.LASF307
	.byte	0x12
	.value	0x376
	.long	0x1001
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.long	0x2043
	.long	0x10fa
	.uleb128 0xb
	.long	0x2d
	.byte	0x4
	.byte	0x0
	.uleb128 0x1c
	.long	.LASF308
	.byte	0x1
	.byte	0x8a
	.long	0x2033
	.byte	0x9
	.byte	0x3
	.quad	x86_defs
	.uleb128 0xa
	.long	0x2068
	.long	0x6b
	.uleb128 0xb
	.long	0x2d
	.byte	0x29
	.byte	0x0
	.uleb128 0x27
	.long	.LASF309
	.byte	0x1
	.value	0x192
	.long	0x2058
	.byte	0x9
	.byte	0x3
	.quad	cc_op_str
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
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
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
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.uleb128 0x17
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
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
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
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
	.uleb128 0x5
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0xc
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0xb
	.byte	0x1
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.uleb128 0x18
	.byte	0x0
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
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
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
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
	.uleb128 0xa
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x34
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
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
	.uleb128 0x37
	.uleb128 0xb
	.byte	0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.uleb128 0x3f
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
	.uleb128 0x40
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
	.long	0x10b
	.value	0x2
	.long	.Ldebug_info0
	.long	0x207f
	.long	0x129e
	.string	"x86_cpu_list"
	.long	0x1301
	.string	"cpu_x86_update_cr0"
	.long	0x1352
	.string	"cpu_reset"
	.long	0x15c5
	.string	"cpu_x86_close"
	.long	0x15f4
	.string	"cpu_x86_init"
	.long	0x1b18
	.string	"cpu_dump_state"
	.long	0x1c5d
	.string	"cpu_x86_set_a20"
	.long	0x1c9a
	.string	"cpu_x86_update_cr3"
	.long	0x1cd7
	.string	"cpu_x86_update_cr4"
	.long	0x1d14
	.string	"cpu_x86_flush_tlb"
	.long	0x1d51
	.string	"cpu_x86_handle_mmu_fault"
	.long	0x1f02
	.string	"cpu_get_phys_page_debug"
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
	.quad	.LBB63-.Ltext0
	.quad	.LBE63-.Ltext0
	.quad	.LBB19-.Ltext0
	.quad	.LBE19-.Ltext0
	.quad	.LBB15-.Ltext0
	.quad	.LBE15-.Ltext0
	.quad	.LBB11-.Ltext0
	.quad	.LBE11-.Ltext0
	.quad	.LBB9-.Ltext0
	.quad	.LBE9-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB13-.Ltext0
	.quad	.LBE13-.Ltext0
	.quad	.LBB61-.Ltext0
	.quad	.LBE61-.Ltext0
	.quad	.LBB25-.Ltext0
	.quad	.LBE25-.Ltext0
	.quad	.LBB21-.Ltext0
	.quad	.LBE21-.Ltext0
	.quad	.LBB17-.Ltext0
	.quad	.LBE17-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB23-.Ltext0
	.quad	.LBE23-.Ltext0
	.quad	.LBB59-.Ltext0
	.quad	.LBE59-.Ltext0
	.quad	.LBB31-.Ltext0
	.quad	.LBE31-.Ltext0
	.quad	.LBB27-.Ltext0
	.quad	.LBE27-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB29-.Ltext0
	.quad	.LBE29-.Ltext0
	.quad	.LBB57-.Ltext0
	.quad	.LBE57-.Ltext0
	.quad	.LBB37-.Ltext0
	.quad	.LBE37-.Ltext0
	.quad	.LBB33-.Ltext0
	.quad	.LBE33-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB35-.Ltext0
	.quad	.LBE35-.Ltext0
	.quad	.LBB55-.Ltext0
	.quad	.LBE55-.Ltext0
	.quad	.LBB43-.Ltext0
	.quad	.LBE43-.Ltext0
	.quad	.LBB39-.Ltext0
	.quad	.LBE39-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB41-.Ltext0
	.quad	.LBE41-.Ltext0
	.quad	.LBB53-.Ltext0
	.quad	.LBE53-.Ltext0
	.quad	.LBB51-.Ltext0
	.quad	.LBE51-.Ltext0
	.quad	.LBB49-.Ltext0
	.quad	.LBE49-.Ltext0
	.quad	.LBB47-.Ltext0
	.quad	.LBE47-.Ltext0
	.quad	.LBB45-.Ltext0
	.quad	.LBE45-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB65-.Ltext0
	.quad	.LBE65-.Ltext0
	.quad	.LBB84-.Ltext0
	.quad	.LBE84-.Ltext0
	.quad	.LBB72-.Ltext0
	.quad	.LBE72-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB67-.Ltext0
	.quad	.LBE67-.Ltext0
	.quad	.LBB91-.Ltext0
	.quad	.LBE91-.Ltext0
	.quad	.LBB86-.Ltext0
	.quad	.LBE86-.Ltext0
	.quad	.LBB74-.Ltext0
	.quad	.LBE74-.Ltext0
	.quad	.LBB69-.Ltext0
	.quad	.LBE69-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB75-.Ltext0
	.quad	.LBE75-.Ltext0
	.quad	.LBB92-.Ltext0
	.quad	.LBE92-.Ltext0
	.quad	.LBB87-.Ltext0
	.quad	.LBE87-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB76-.Ltext0
	.quad	.LBE76-.Ltext0
	.quad	.LBB77-.Ltext0
	.quad	.LBE77-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB80-.Ltext0
	.quad	.LBE80-.Ltext0
	.quad	.LBB93-.Ltext0
	.quad	.LBE93-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB81-.Ltext0
	.quad	.LBE81-.Ltext0
	.quad	.LBB82-.Ltext0
	.quad	.LBE82-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB94-.Ltext0
	.quad	.LBE94-.Ltext0
	.quad	.LBB95-.Ltext0
	.quad	.LBE95-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB97-.Ltext0
	.quad	.LBE97-.Ltext0
	.quad	.LBB98-.Ltext0
	.quad	.LBE98-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB99-.Ltext0
	.quad	.LBE99-.Ltext0
	.quad	.LBB104-.Ltext0
	.quad	.LBE104-.Ltext0
	.quad	.LBB102-.Ltext0
	.quad	.LBE102-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB100-.Ltext0
	.quad	.LBE100-.Ltext0
	.quad	.LBB103-.Ltext0
	.quad	.LBE103-.Ltext0
	.quad	.LBB101-.Ltext0
	.quad	.LBE101-.Ltext0
	.quad	0x0
	.quad	0x0
	.section	.debug_str,"MS",@progbits,1
.LASF144:
	.string	"sse_status"
.LASF214:
	.string	"level"
.LASF142:
	.string	"fp_status"
.LASF152:
	.string	"efer"
.LASF9:
	.string	"size_t"
.LASF260:
	.string	"minus_ext3_features"
.LASF245:
	.string	"cpu_model"
.LASF274:
	.string	"cpu_x86_update_cr3"
.LASF308:
	.string	"x86_defs"
.LASF58:
	.string	"__jmp_buf_tag"
.LASF216:
	.string	"vendor2"
.LASF217:
	.string	"vendor3"
.LASF278:
	.string	"cpu_x86_flush_tlb"
.LASF235:
	.string	"cpu_x86_update_cr0"
.LASF276:
	.string	"cpu_x86_update_cr4"
.LASF12:
	.string	"int32_t"
.LASF29:
	.string	"_IO_save_end"
.LASF139:
	.string	"fpuc"
.LASF252:
	.string	"featurestr"
.LASF192:
	.string	"cpuid_ext_features"
.LASF140:
	.string	"fptags"
.LASF74:
	.string	"floatx80"
.LASF138:
	.string	"fpus"
.LASF215:
	.string	"vendor1"
.LASF22:
	.string	"_IO_write_base"
.LASF95:
	.string	"running"
.LASF38:
	.string	"_lock"
.LASF145:
	.string	"mxcsr"
.LASF128:
	.string	"shellcode_context"
.LASF79:
	.string	"CPU86_LDouble"
.LASF162:
	.string	"jmp_env"
.LASF153:
	.string	"star"
.LASF27:
	.string	"_IO_save_base"
.LASF120:
	.string	"vaddr"
.LASF106:
	.string	"instruction_size"
.LASF207:
	.string	"page_addr"
.LASF156:
	.string	"intercept"
.LASF132:
	.string	"hflags"
.LASF35:
	.string	"_cur_column"
.LASF107:
	.string	"logged"
.LASF69:
	.string	"addend"
.LASF268:
	.string	"seg_name"
.LASF241:
	.string	"seg_reg"
.LASF16:
	.string	"FILE"
.LASF2:
	.string	"long int"
.LASF262:
	.string	"__retval"
.LASF67:
	.string	"addr_write"
.LASF183:
	.string	"cpu_index"
.LASF49:
	.string	"_IO_marker"
.LASF68:
	.string	"addr_code"
.LASF72:
	.string	"float32"
.LASF92:
	.string	"netidx"
.LASF184:
	.string	"opaque"
.LASF284:
	.string	"ptep"
.LASF249:
	.string	"model_id"
.LASF4:
	.string	"short unsigned int"
.LASF257:
	.string	"minus_features"
.LASF232:
	.string	"__s2_len"
.LASF171:
	.string	"current_tb"
.LASF155:
	.string	"vm_vmcb"
.LASF99:
	.string	"instruction_stage"
.LASF243:
	.string	"cpu_x86_close"
.LASF179:
	.string	"watchpoint"
.LASF187:
	.string	"cpuid_vendor1"
.LASF189:
	.string	"cpuid_vendor3"
.LASF200:
	.string	"TranslationBlock"
.LASF117:
	.string	"store_addr_type"
.LASF223:
	.string	"ext2_features"
.LASF7:
	.string	"signed char"
.LASF234:
	.string	"x86_cpu_list"
.LASF48:
	.string	"_IO_FILE"
.LASF296:
	.string	"error"
.LASF271:
	.string	"upper"
.LASF6:
	.string	"unsigned char"
.LASF177:
	.string	"nb_breakpoints"
.LASF110:
	.string	"load_value_netidx"
.LASF238:
	.string	"cpu_reset"
.LASF93:
	.string	"argos_rtag_t"
.LASF194:
	.string	"cpuid_model"
.LASF305:
	.string	"cpu_single_env"
.LASF90:
	.string	"argos_rtag"
.LASF114:
	.string	"store_value"
.LASF105:
	.string	"instruction"
.LASF295:
	.string	"virt_addr"
.LASF266:
	.string	"cpu_dump_state"
.LASF270:
	.string	"lower"
.LASF133:
	.string	"segs"
.LASF5:
	.string	"char"
.LASF129:
	.string	"cc_src"
.LASF193:
	.string	"cpuid_xlevel"
.LASF219:
	.string	"model"
.LASF170:
	.string	"old_exception"
.LASF125:
	.string	"t1tag"
.LASF225:
	.string	"xlevel"
.LASF164:
	.string	"error_code"
.LASF47:
	.string	"_IO_lock_t"
.LASF130:
	.string	"cc_dst"
.LASF112:
	.string	"load_addr_type"
.LASF222:
	.string	"ext_features"
.LASF298:
	.string	"do_fault"
.LASF84:
	.string	"flags"
.LASF19:
	.string	"_IO_read_ptr"
.LASF71:
	.string	"double"
.LASF297:
	.string	"do_mapping"
.LASF101:
	.string	"is_system_call"
.LASF52:
	.string	"_pos"
.LASF302:
	.string	"stdin"
.LASF258:
	.string	"minus_ext_features"
.LASF174:
	.string	"tlb_table"
.LASF236:
	.string	"new_cr0"
.LASF115:
	.string	"store_value_netidx"
.LASF275:
	.string	"new_cr3"
.LASF277:
	.string	"new_cr4"
.LASF221:
	.string	"features"
.LASF231:
	.string	"__s1_len"
.LASF30:
	.string	"_markers"
.LASF168:
	.string	"interrupt_request"
.LASF197:
	.string	"cpuid_apic_id"
.LASF83:
	.string	"limit"
.LASF113:
	.string	"load_size"
.LASF286:
	.string	"pde_addr"
.LASF166:
	.string	"exception_next_eip"
.LASF229:
	.string	"ext2_feature_name"
.LASF108:
	.string	"instruction_netidx"
.LASF273:
	.string	"a20_state"
.LASF137:
	.string	"fpstt"
.LASF209:
	.string	"tb_next"
.LASF172:
	.string	"mem_write_pc"
.LASF203:
	.string	"cflags"
.LASF46:
	.string	"_unused2"
.LASF178:
	.string	"singlestep_enabled"
.LASF173:
	.string	"mem_write_vaddr"
.LASF131:
	.string	"cc_op"
.LASF97:
	.string	"logfile"
.LASF0:
	.string	"long unsigned int"
.LASF102:
	.string	"loadedby_eip"
.LASF86:
	.string	"MMXReg"
.LASF227:
	.string	"feature_name"
.LASF33:
	.string	"_flags2"
.LASF21:
	.string	"_IO_read_base"
.LASF211:
	.string	"jmp_first"
.LASF85:
	.string	"XMMReg"
.LASF195:
	.string	"cpuid_ext2_features"
.LASF94:
	.string	"argos_shellcode_context_s"
.LASF119:
	.string	"argos_shellcode_context_t"
.LASF230:
	.string	"ext3_feature_name"
.LASF161:
	.string	"intercept_exceptions"
.LASF78:
	.string	"floatx80_rounding_precision"
.LASF60:
	.string	"__mask_was_saved"
.LASF248:
	.string	"def1"
.LASF196:
	.string	"cpuid_ext3_features"
.LASF109:
	.string	"load_value"
.LASF34:
	.string	"_old_offset"
.LASF205:
	.string	"phys_hash_next"
.LASF148:
	.string	"mmx_t0"
.LASF265:
	.string	"__s1"
.LASF300:
	.string	"pdpe"
.LASF3:
	.string	"long long int"
.LASF254:
	.string	"plus_ext_features"
.LASF24:
	.string	"_IO_write_end"
.LASF256:
	.string	"plus_ext3_features"
.LASF134:
	.string	"a20_mask"
.LASF66:
	.string	"addr_read"
.LASF206:
	.string	"page_next"
.LASF111:
	.string	"load_addr"
.LASF77:
	.string	"float_rounding_mode"
.LASF312:
	.string	"/home/remco/Projects/Argos/src/i386-softmmu"
.LASF185:
	.string	"cpu_model_str"
.LASF279:
	.string	"addr"
.LASF176:
	.string	"breakpoints"
.LASF288:
	.string	"is_dirty"
.LASF118:
	.string	"store_size"
.LASF25:
	.string	"_IO_buf_base"
.LASF251:
	.string	"x86_cpu_def"
.LASF50:
	.string	"_next"
.LASF1:
	.string	"unsigned int"
.LASF310:
	.string	"GNU C 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
.LASF311:
	.string	"/home/remco/Projects/Argos/src/target-i386/helper2.c"
.LASF88:
	.string	"argos_netidx_t"
.LASF40:
	.string	"__pad1"
.LASF41:
	.string	"__pad2"
.LASF42:
	.string	"__pad3"
.LASF43:
	.string	"__pad4"
.LASF44:
	.string	"__pad5"
.LASF233:
	.string	"cpu_fprintf"
.LASF51:
	.string	"_sbuf"
.LASF181:
	.string	"watchpoint_hit"
.LASF103:
	.string	"storedby_eip"
.LASF226:
	.string	"flagname"
.LASF313:
	.string	"APICState"
.LASF199:
	.string	"apic_state"
.LASF18:
	.string	"_flags"
.LASF307:
	.string	"phys_ram_dirty"
.LASF281:
	.string	"is_write1"
.LASF61:
	.string	"__saved_mask"
.LASF45:
	.string	"_mode"
.LASF59:
	.string	"__jmpbuf"
.LASF218:
	.string	"family"
.LASF57:
	.string	"__jmp_buf"
.LASF89:
	.string	"argos_bytemap_t"
.LASF289:
	.string	"prot"
.LASF269:
	.string	"fptag"
.LASF180:
	.string	"nb_watchpoints"
.LASF240:
	.string	"cpu_x86_load_seg_cache"
.LASF64:
	.string	"target_phys_addr_t"
.LASF151:
	.string	"sysenter_eip"
.LASF75:
	.string	"long double"
.LASF292:
	.string	"is_user"
.LASF280:
	.string	"cpu_x86_handle_mmu_fault"
.LASF261:
	.string	"__len"
.LASF135:
	.string	"fpip"
.LASF246:
	.string	"inited"
.LASF299:
	.string	"do_fault_protect"
.LASF136:
	.string	"prev_fpip"
.LASF198:
	.string	"envmap"
.LASF39:
	.string	"_offset"
.LASF121:
	.string	"CPUX86State"
.LASF220:
	.string	"stepping"
.LASF191:
	.string	"cpuid_features"
.LASF157:
	.string	"intercept_cr_read"
.LASF208:
	.string	"tb_next_offset"
.LASF228:
	.string	"ext_feature_name"
.LASF202:
	.string	"size"
.LASF100:
	.string	"trace_stage"
.LASF15:
	.string	"long long unsigned int"
.LASF242:
	.string	"new_hflags"
.LASF53:
	.string	"uint8_t"
.LASF14:
	.string	"__sigset_t"
.LASF76:
	.string	"float_status"
.LASF54:
	.string	"uint16_t"
.LASF10:
	.string	"__off_t"
.LASF31:
	.string	"_chain"
.LASF143:
	.string	"fp_convert"
.LASF293:
	.string	"paddr"
.LASF62:
	.string	"jmp_buf"
.LASF255:
	.string	"plus_ext2_features"
.LASF182:
	.string	"next_cpu"
.LASF291:
	.string	"is_write"
.LASF65:
	.string	"CPUTLBEntry"
.LASF159:
	.string	"intercept_dr_read"
.LASF116:
	.string	"store_addr"
.LASF28:
	.string	"_IO_backup_base"
.LASF37:
	.string	"_shortbuf"
.LASF98:
	.string	"instruction_cnt"
.LASF122:
	.string	"regs"
.LASF11:
	.string	"__off64_t"
.LASF160:
	.string	"intercept_dr_write"
.LASF124:
	.string	"t0tag"
.LASF204:
	.string	"tc_ptr"
.LASF96:
	.string	"stop_condition"
.LASF167:
	.string	"smbase"
.LASF126:
	.string	"t2tag"
.LASF285:
	.string	"pdpe_addr"
.LASF250:
	.string	"cpu_x86_find_by_name"
.LASF26:
	.string	"_IO_buf_end"
.LASF224:
	.string	"ext3_features"
.LASF213:
	.string	"name"
.LASF63:
	.string	"target_ulong"
.LASF264:
	.string	"__result"
.LASF158:
	.string	"intercept_cr_write"
.LASF304:
	.string	"stderr"
.LASF8:
	.string	"short int"
.LASF287:
	.string	"pte_addr"
.LASF237:
	.string	"pe_state"
.LASF56:
	.string	"uint64_t"
.LASF188:
	.string	"cpuid_vendor2"
.LASF80:
	.string	"SegmentCache"
.LASF272:
	.string	"cpu_x86_set_a20"
.LASF163:
	.string	"exception_index"
.LASF301:
	.string	"cpu_get_phys_page_debug"
.LASF36:
	.string	"_vtable_offset"
.LASF165:
	.string	"exception_is_int"
.LASF306:
	.string	"phys_ram_base"
.LASF141:
	.string	"fpregs"
.LASF146:
	.string	"xmm_regs"
.LASF201:
	.string	"cs_base"
.LASF17:
	.string	"__val"
.LASF169:
	.string	"user_mode_only"
.LASF154:
	.string	"vm_hsave"
.LASF190:
	.string	"cpuid_version"
.LASF127:
	.string	"regtags"
.LASF20:
	.string	"_IO_read_end"
.LASF212:
	.string	"x86_def_t"
.LASF55:
	.string	"uint32_t"
.LASF32:
	.string	"_fileno"
.LASF259:
	.string	"minus_ext2_features"
.LASF73:
	.string	"float64"
.LASF290:
	.string	"page_size"
.LASF283:
	.string	"is_softmmu"
.LASF70:
	.string	"float"
.LASF303:
	.string	"stdout"
.LASF104:
	.string	"executed_eip"
.LASF82:
	.string	"base"
.LASF309:
	.string	"cc_op_str"
.LASF23:
	.string	"_IO_write_ptr"
.LASF282:
	.string	"mmu_idx"
.LASF123:
	.string	"eflags"
.LASF13:
	.string	"int64_t"
.LASF81:
	.string	"selector"
.LASF87:
	.string	"argos_paddr_t"
.LASF294:
	.string	"page_offset"
.LASF175:
	.string	"tb_jmp_cache"
.LASF239:
	.string	"add_flagname_to_bitmaps"
.LASF244:
	.string	"cpu_x86_init"
.LASF150:
	.string	"sysenter_esp"
.LASF91:
	.string	"origin"
.LASF267:
	.string	"cc_op_name"
.LASF253:
	.string	"plus_features"
.LASF149:
	.string	"sysenter_cs"
.LASF186:
	.string	"cpuid_level"
.LASF210:
	.string	"jmp_next"
.LASF247:
	.string	"cpu_x86_register"
.LASF263:
	.string	"__s2"
.LASF147:
	.string	"xmm_t0"
	.section	.note.GNU-stack,"",@progbits
	.ident	"GCC: (GNU) 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
