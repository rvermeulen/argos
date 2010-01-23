	.file	"argos-alert.c"
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
	.string	"JMP"
.LC1:
	.string	"P_JMP"
.LC2:
	.string	"TSS"
.LC3:
	.string	"CALL"
.LC4:
	.string	"RET"
.LC5:
	.string	"CI"
.LC6:
	.string	"R_IRET"
.LC7:
	.string	"SYSEXIT"
.LC8:
	.string	"SYSRET"
.LC9:
	.string	"R_JMP"
.LC10:
	.string	"P_CALL"
.LC11:
	.string	"R_CALL"
.LC12:
	.string	"P_RET"
	.data
	.align 32
	.type	adesc, @object
	.size	adesc, 104
adesc:
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
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC15:
	.string	"Starting shell-code tracking...\n"
	.align 8
.LC21:
	.string	"Successfully instanciated shellcode tracking, switching to single step mode.\n"
	.align 8
.LC22:
	.string	"could not unblock temporarily blocked signals"
	.align 8
.LC14:
	.string	"[ARGOS] Attack detected, code <%s> PC <%x> TARGET <%x>\n"
	.align 8
.LC13:
	.string	"could not temporarily block signals"
	.section	.rodata.str1.1
.LC16:
	.string	"argos.sc.%d"
.LC17:
	.string	"Generated log filename %s.\n"
.LC18:
	.string	"wb"
	.section	.rodata.str1.8
	.align 8
.LC19:
	.string	"Cannot open shellcode log, unable to track shellcode."
	.section	.rodata.str1.1
.LC20:
	.string	"Opened tracking file %s.\n"
	.text
	.p2align 4,,15
.globl argos_alert
	.type	argos_alert, @function
argos_alert:
.LFB221:
	.file 1 "/home/remco/Projects/Argos/src/target-i386/argos-alert.c"
	.loc 1 51 0
	pushq	%rbp
.LCFI0:
	movq	%rsp, %rbp
.LCFI1:
	movq	%r15, -8(%rbp)
.LCFI2:
	movl	%esi, %r15d
	.loc 1 55 0
	leaq	-176(%rbp), %rsi
	.loc 1 51 0
	movq	%rbx, -40(%rbp)
.LCFI3:
	movq	%r12, -32(%rbp)
.LCFI4:
	movq	%rdi, %r12
	movq	%r13, -24(%rbp)
.LCFI5:
	movq	%r14, -16(%rbp)
.LCFI6:
	.loc 1 55 0
	xorl	%edi, %edi
	.loc 1 51 0
	subq	$192, %rsp
.LCFI7:
	.loc 1 51 0
	movq	%rdx, %r13
	.loc 1 53 0
	movl	$-1, -180(%rbp)
	.loc 1 55 0
	xorl	%edx, %edx
	.loc 1 51 0
	movl	%ecx, %r14d
	movl	%r8d, %ebx
	.loc 1 55 0
	call	sigprocmask
	testl	%eax, %eax
	jne	.L14
.L2:
	.loc 1 59 0
	testl	$1073741823, 4(%r13)
	.loc 1 61 0
	movl	128(%r12), %edi
	.loc 1 59 0
	movl	$5, %eax
	cmove	%eax, %ebx
	.loc 1 61 0
	testl	%edi, %edi
	je	.L15
.L4:
	.loc 1 66 0
	movl	argos_csilog(%rip), %esi
	testl	%esi, %esi
	jne	.L16
.L5:
	.loc 1 71 0
	movl	argos_fsc(%rip), %ecx
	testl	%ecx, %ecx
	jne	.L17
	.loc 1 85 0
	movl	argos_tracksc(%rip), %edx
	.loc 1 80 0
	movl	$0, argos_csilog(%rip)
	.loc 1 85 0
	testl	%edx, %edx
	jne	.L18
.L7:
	.loc 1 133 0
	leaq	-176(%rbp), %rsi
	xorl	%edx, %edx
	movl	$1, %edi
	call	sigprocmask
	testl	%eax, %eax
	jne	.L19
.L1:
	.loc 1 135 0
	movq	-40(%rbp), %rbx
	movq	-32(%rbp), %r12
	movq	-24(%rbp), %r13
	movq	-16(%rbp), %r14
	movq	-8(%rbp), %r15
	leave
	ret
	.p2align 4,,7
.L18:
	.loc 1 85 0
	movl	128(%r12), %eax
	testl	%eax, %eax
	sete	%dl
	xorl	%eax, %eax
	cmpl	$5, %ebx
	sete	%al
	testl	%edx, %eax
	je	.L7
	.loc 1 87 0
	xorl	%eax, %eax
	movl	$.LC15, %edi
	call	argos_logf
	.loc 1 90 0
	cmpq	$0, 144(%r12)
	.loc 1 89 0
	movl	528(%r12), %eax
	.loc 1 88 0
	movl	$1, 128(%r12)
	.loc 1 89 0
	movl	%eax, 136(%r12)
	.loc 1 90 0
	je	.L20
.L9:
	.loc 1 113 0
	movl	$.LC21, %edi
	xorl	%eax, %eax
	call	argos_logf
	.loc 1 121 0
	movl	$1, %esi
	movq	%r12, %rdi
	call	cpu_single_step
	.loc 1 133 0
	leaq	-176(%rbp), %rsi
	xorl	%edx, %edx
	movl	$1, %edi
	call	sigprocmask
	testl	%eax, %eax
	je	.L1
	.p2align 4,,7
.L19:
	.loc 1 134 0
	movl	$.LC22, %edi
	call	perror
	.loc 1 135 0
	movq	-40(%rbp), %rbx
	movq	-32(%rbp), %r12
	movq	-24(%rbp), %r13
	movq	-16(%rbp), %r14
	movq	-8(%rbp), %r15
	leave
	ret
	.p2align 4,,7
.L17:
	.loc 1 73 0
	movl	-180(%rbp), %esi
	movq	%r12, %rdi
	call	argos_forensics
	jmp	.L7
	.p2align 4,,7
.L16:
	.loc 1 68 0
	movl	%ebx, %r8d
	movl	%r14d, %ecx
	movq	%r13, %rdx
	movl	%r15d, %esi
	movq	%r12, %rdi
	call	argos_csi
	movl	%eax, -180(%rbp)
	jmp	.L5
	.p2align 4,,7
.L15:
	.loc 1 63 0
	movslq	%ebx,%rax
	movl	%r15d, %ecx
	movl	%r14d, %edx
	movq	adesc(,%rax,8), %rsi
	movl	$.LC14, %edi
	xorl	%eax, %eax
	call	argos_logf
	jmp	.L4
	.p2align 4,,7
.L14:
	.loc 1 56 0
	movl	$.LC13, %edi
	call	perror
	.p2align 4,,3
	jmp	.L2
.L20:
.LBB2:
	.loc 1 90 0
	movq	%rsp, %r13
	.loc 1 93 0
	subq	$144, %rsp
	.loc 1 95 0
	movl	argos_instance_id(%rip), %ecx
	.loc 1 93 0
	leaq	15(%rsp), %rbx
	.loc 1 97 0
	movl	$.LC16, %edx
	movl	$128, %esi
	xorl	%eax, %eax
	.loc 1 93 0
	andq	$-16, %rbx
	.loc 1 97 0
	movq	%rbx, %rdi
	call	snprintf
	.loc 1 98 0
	movq	%rbx, %rsi
	movl	$.LC17, %edi
	xorl	%eax, %eax
	call	argos_logf
	.loc 1 99 0
	movl	$.LC18, %esi
	movq	%rbx, %rdi
	call	fopen64
	testq	%rax, %rax
	movq	%rax, 144(%r12)
	jne	.L10
	.loc 1 101 0
	movq	stdout(%rip), %rcx
	movl	$53, %edx
	movl	$1, %esi
	movl	$.LC19, %edi
	call	fwrite
	.loc 1 102 0
	movl	$0, 128(%r12)
.L11:
	.loc 1 106 0
	movq	%r13, %rsp
	jmp	.L9
.L10:
	movq	%rbx, %rsi
	movl	$.LC20, %edi
	xorl	%eax, %eax
	call	argos_logf
	jmp	.L11
.LBE2:
.LFE221:
	.size	argos_alert, .-argos_alert
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
	.quad	.LFB221
	.quad	.LFE221-.LFB221
	.byte	0x4
	.long	.LCFI0-.LFB221
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI1-.LCFI0
	.byte	0xd
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI2-.LCFI1
	.byte	0x8f
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI4-.LCFI2
	.byte	0x8c
	.uleb128 0x6
	.byte	0x83
	.uleb128 0x7
	.byte	0x4
	.long	.LCFI7-.LCFI4
	.byte	0x8e
	.uleb128 0x4
	.byte	0x8d
	.uleb128 0x5
	.align 8
.LEFDE0:
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
	.quad	.LFB221
	.quad	.LFE221-.LFB221
	.byte	0x4
	.long	.LCFI0-.LFB221
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI1-.LCFI0
	.byte	0xd
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI2-.LCFI1
	.byte	0x8f
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI4-.LCFI2
	.byte	0x8c
	.uleb128 0x6
	.byte	0x83
	.uleb128 0x7
	.byte	0x4
	.long	.LCFI7-.LCFI4
	.byte	0x8e
	.uleb128 0x4
	.byte	0x8d
	.uleb128 0x5
	.align 8
.LEFDE1:
	.file 2 "/home/remco/Projects/Argos/src/target-i386/cpu.h"
	.file 3 "../cpu-defs.h"
	.file 4 "/usr/include/stdint.h"
	.file 5 "../argos-tag.h"
	.file 6 "../argos.h"
	.file 7 "/home/remco/Projects/Argos/src/target-i386/argos-shellcode.h"
	.file 8 "/usr/include/stdio.h"
	.file 9 "/usr/include/libio.h"
	.file 10 "/usr/include/bits/types.h"
	.file 11 "/usr/lib/gcc/x86_64-linux-gnu/3.4.6/include/stddef.h"
	.file 12 "/usr/include/sys/types.h"
	.file 13 "/home/remco/Projects/Argos/src/fpu/softfloat-native.h"
	.file 14 "/usr/include/setjmp.h"
	.file 15 "/usr/include/pthread.h"
	.file 16 "/usr/include/bits/setjmp.h"
	.file 17 "/usr/include/bits/sigset.h"
	.file 18 "/home/remco/Projects/Argos/src/target-i386/../exec-all.h"
	.file 19 "/usr/include/sys/select.h"
	.file 20 "../argos-common.h"
	.file 21 "../cpu-all.h"
	.file 22 "/home/remco/Projects/Argos/src/target-i386/../argos-memmap.h"
	.text
.Letext0:
	.section	.debug_info
	.long	0x11a2
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.Ldebug_line0
	.quad	.Letext0
	.quad	.Ltext0
	.long	.LASF229
	.byte	0x1
	.long	.LASF230
	.long	.LASF231
	.uleb128 0x2
	.long	.LASF7
	.byte	0xb
	.byte	0xd5
	.long	0x38
	.uleb128 0x3
	.long	.LASF0
	.byte	0x8
	.byte	0x7
	.uleb128 0x3
	.long	.LASF1
	.byte	0x1
	.byte	0x8
	.uleb128 0x3
	.long	.LASF2
	.byte	0x2
	.byte	0x7
	.uleb128 0x3
	.long	.LASF3
	.byte	0x4
	.byte	0x7
	.uleb128 0x3
	.long	.LASF4
	.byte	0x1
	.byte	0x6
	.uleb128 0x3
	.long	.LASF5
	.byte	0x2
	.byte	0x5
	.uleb128 0x4
	.string	"int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x3
	.long	.LASF6
	.byte	0x8
	.byte	0x5
	.uleb128 0x2
	.long	.LASF8
	.byte	0xa
	.byte	0x8d
	.long	0x69
	.uleb128 0x2
	.long	.LASF9
	.byte	0xa
	.byte	0x8e
	.long	0x69
	.uleb128 0x3
	.long	.LASF0
	.byte	0x8
	.byte	0x7
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x6
	.byte	0x8
	.long	0x95
	.uleb128 0x3
	.long	.LASF10
	.byte	0x1
	.byte	0x6
	.uleb128 0x2
	.long	.LASF11
	.byte	0x8
	.byte	0x31
	.long	0xa7
	.uleb128 0x7
	.long	0x273
	.long	.LASF42
	.byte	0xd8
	.byte	0x8
	.byte	0x2d
	.uleb128 0x8
	.long	.LASF12
	.byte	0x9
	.value	0x110
	.long	0x62
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF13
	.byte	0x9
	.value	0x115
	.long	0x8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF14
	.byte	0x9
	.value	0x116
	.long	0x8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.long	.LASF15
	.byte	0x9
	.value	0x117
	.long	0x8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.long	.LASF16
	.byte	0x9
	.value	0x118
	.long	0x8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x8
	.long	.LASF17
	.byte	0x9
	.value	0x119
	.long	0x8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x8
	.long	.LASF18
	.byte	0x9
	.value	0x11a
	.long	0x8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x8
	.long	.LASF19
	.byte	0x9
	.value	0x11b
	.long	0x8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x8
	.long	.LASF20
	.byte	0x9
	.value	0x11c
	.long	0x8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x8
	.long	.LASF21
	.byte	0x9
	.value	0x11e
	.long	0x8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x8
	.long	.LASF22
	.byte	0x9
	.value	0x11f
	.long	0x8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x8
	.long	.LASF23
	.byte	0x9
	.value	0x120
	.long	0x8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x8
	.long	.LASF24
	.byte	0x9
	.value	0x122
	.long	0x2b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x8
	.long	.LASF25
	.byte	0x9
	.value	0x124
	.long	0x2b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x8
	.long	.LASF26
	.byte	0x9
	.value	0x126
	.long	0x62
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x8
	.long	.LASF27
	.byte	0x9
	.value	0x12a
	.long	0x62
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x8
	.long	.LASF28
	.byte	0x9
	.value	0x12c
	.long	0x70
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x8
	.long	.LASF29
	.byte	0x9
	.value	0x130
	.long	0x46
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x8
	.long	.LASF30
	.byte	0x9
	.value	0x131
	.long	0x54
	.byte	0x3
	.byte	0x23
	.uleb128 0x82
	.uleb128 0x8
	.long	.LASF31
	.byte	0x9
	.value	0x132
	.long	0x2bd
	.byte	0x3
	.byte	0x23
	.uleb128 0x83
	.uleb128 0x8
	.long	.LASF32
	.byte	0x9
	.value	0x136
	.long	0x2cd
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x8
	.long	.LASF33
	.byte	0x9
	.value	0x13f
	.long	0x7b
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x8
	.long	.LASF34
	.byte	0x9
	.value	0x148
	.long	0x8d
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x8
	.long	.LASF35
	.byte	0x9
	.value	0x149
	.long	0x8d
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x8
	.long	.LASF36
	.byte	0x9
	.value	0x14a
	.long	0x8d
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x8
	.long	.LASF37
	.byte	0x9
	.value	0x14b
	.long	0x8d
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x8
	.long	.LASF38
	.byte	0x9
	.value	0x14c
	.long	0x2d
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x8
	.long	.LASF39
	.byte	0x9
	.value	0x14e
	.long	0x62
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x8
	.long	.LASF40
	.byte	0x9
	.value	0x150
	.long	0x2d3
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.byte	0x0
	.uleb128 0x9
	.long	.LASF41
	.byte	0x9
	.byte	0xb4
	.uleb128 0x7
	.long	0x2b1
	.long	.LASF43
	.byte	0x18
	.byte	0x9
	.byte	0xba
	.uleb128 0xa
	.long	.LASF44
	.byte	0x9
	.byte	0xbb
	.long	0x2b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF45
	.byte	0x9
	.byte	0xbc
	.long	0x2b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF46
	.byte	0x9
	.byte	0xc0
	.long	0x62
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x27a
	.uleb128 0x6
	.byte	0x8
	.long	0xa7
	.uleb128 0xb
	.long	0x2cd
	.long	0x95
	.uleb128 0xc
	.long	0x86
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x273
	.uleb128 0xb
	.long	0x2e3
	.long	0x95
	.uleb128 0xc
	.long	0x86
	.byte	0x13
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x2e9
	.uleb128 0xd
	.long	0x95
	.uleb128 0x3
	.long	.LASF47
	.byte	0x8
	.byte	0x5
	.uleb128 0x2
	.long	.LASF48
	.byte	0xc
	.byte	0xc5
	.long	0x62
	.uleb128 0x2
	.long	.LASF49
	.byte	0xc
	.byte	0xc6
	.long	0x69
	.uleb128 0xe
	.long	0x322
	.byte	0x80
	.byte	0x11
	.byte	0x20
	.uleb128 0xa
	.long	.LASF50
	.byte	0x11
	.byte	0x1f
	.long	0x322
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xb
	.long	0x332
	.long	0x38
	.uleb128 0xc
	.long	0x86
	.byte	0xf
	.byte	0x0
	.uleb128 0x2
	.long	.LASF51
	.byte	0x11
	.byte	0x20
	.long	0x30b
	.uleb128 0x2
	.long	.LASF52
	.byte	0x13
	.byte	0x26
	.long	0x332
	.uleb128 0x3
	.long	.LASF53
	.byte	0x8
	.byte	0x7
	.uleb128 0x2
	.long	.LASF54
	.byte	0x10
	.byte	0x20
	.long	0x35a
	.uleb128 0xb
	.long	0x36a
	.long	0x69
	.uleb128 0xc
	.long	0x86
	.byte	0x7
	.byte	0x0
	.uleb128 0x2
	.long	.LASF55
	.byte	0x4
	.byte	0x31
	.long	0x3f
	.uleb128 0x2
	.long	.LASF56
	.byte	0x4
	.byte	0x32
	.long	0x46
	.uleb128 0x2
	.long	.LASF57
	.byte	0x4
	.byte	0x34
	.long	0x4d
	.uleb128 0x2
	.long	.LASF58
	.byte	0x4
	.byte	0x38
	.long	0x38
	.uleb128 0x2
	.long	.LASF59
	.byte	0x6
	.byte	0x2f
	.long	0x380
	.uleb128 0x2
	.long	.LASF60
	.byte	0x6
	.byte	0x34
	.long	0x380
	.uleb128 0x2
	.long	.LASF61
	.byte	0x6
	.byte	0x35
	.long	0x3a1
	.uleb128 0x7
	.long	0x3e0
	.long	.LASF62
	.byte	0x8
	.byte	0x5
	.byte	0x37
	.uleb128 0xa
	.long	.LASF63
	.byte	0x5
	.byte	0x38
	.long	0x396
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF64
	.byte	0x5
	.byte	0x39
	.long	0x3a1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.long	.LASF65
	.byte	0x5
	.byte	0x3d
	.long	0x3b7
	.uleb128 0xf
	.long	0x423
	.long	.LASF66
	.byte	0xc8
	.byte	0xf
	.value	0x2cc
	.uleb128 0xa
	.long	.LASF67
	.byte	0xe
	.byte	0x29
	.long	0x34f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF68
	.byte	0xe
	.byte	0x2a
	.long	0x62
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xa
	.long	.LASF69
	.byte	0xe
	.byte	0x2b
	.long	0x332
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.byte	0x0
	.uleb128 0x2
	.long	.LASF70
	.byte	0xe
	.byte	0x31
	.long	0x42e
	.uleb128 0xb
	.long	0x43e
	.long	0x3eb
	.uleb128 0xc
	.long	0x86
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.long	.LASF71
	.byte	0x3
	.byte	0x31
	.long	0x380
	.uleb128 0x2
	.long	.LASF72
	.byte	0x3
	.byte	0x49
	.long	0x38b
	.uleb128 0x7
	.long	0x499
	.long	.LASF73
	.byte	0x18
	.byte	0x3
	.byte	0x69
	.uleb128 0xa
	.long	.LASF74
	.byte	0x3
	.byte	0x70
	.long	0x43e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF75
	.byte	0x3
	.byte	0x71
	.long	0x43e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.long	.LASF76
	.byte	0x3
	.byte	0x72
	.long	0x43e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF77
	.byte	0x3
	.byte	0x74
	.long	0x449
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.long	.LASF73
	.byte	0x3
	.byte	0x75
	.long	0x454
	.uleb128 0x3
	.long	.LASF78
	.byte	0x4
	.byte	0x4
	.uleb128 0x3
	.long	.LASF79
	.byte	0x8
	.byte	0x4
	.uleb128 0x2
	.long	.LASF80
	.byte	0xd
	.byte	0x3b
	.long	0x4a4
	.uleb128 0x2
	.long	.LASF81
	.byte	0xd
	.byte	0x3c
	.long	0x4ab
	.uleb128 0x2
	.long	.LASF82
	.byte	0xd
	.byte	0x3e
	.long	0x4d3
	.uleb128 0x3
	.long	.LASF83
	.byte	0x10
	.byte	0x4
	.uleb128 0x7
	.long	0x503
	.long	.LASF84
	.byte	0x2
	.byte	0xd
	.byte	0x6d
	.uleb128 0xa
	.long	.LASF85
	.byte	0xd
	.byte	0x6e
	.long	0x54
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF86
	.byte	0xd
	.byte	0x70
	.long	0x54
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0x0
	.uleb128 0x2
	.long	.LASF84
	.byte	0xd
	.byte	0x72
	.long	0x4da
	.uleb128 0x10
	.long	.LASF87
	.byte	0x2
	.value	0x198
	.long	0x4c8
	.uleb128 0xf
	.long	0x564
	.long	.LASF88
	.byte	0x10
	.byte	0x2
	.value	0x19d
	.uleb128 0x8
	.long	.LASF89
	.byte	0x2
	.value	0x19e
	.long	0x380
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF90
	.byte	0x2
	.value	0x19f
	.long	0x43e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.long	.LASF91
	.byte	0x2
	.value	0x1a0
	.long	0x380
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF92
	.byte	0x2
	.value	0x1a1
	.long	0x380
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x10
	.long	.LASF88
	.byte	0x2
	.value	0x1a2
	.long	0x51a
	.uleb128 0x11
	.long	0x5bc
	.byte	0x10
	.byte	0x2
	.value	0x1ab
	.uleb128 0x12
	.string	"_b"
	.byte	0x2
	.value	0x1a5
	.long	0x5bc
	.uleb128 0x12
	.string	"_w"
	.byte	0x2
	.value	0x1a6
	.long	0x5cc
	.uleb128 0x12
	.string	"_l"
	.byte	0x2
	.value	0x1a7
	.long	0x5dc
	.uleb128 0x12
	.string	"_q"
	.byte	0x2
	.value	0x1a8
	.long	0x5ec
	.uleb128 0x12
	.string	"_s"
	.byte	0x2
	.value	0x1a9
	.long	0x5fc
	.uleb128 0x12
	.string	"_d"
	.byte	0x2
	.value	0x1aa
	.long	0x60c
	.byte	0x0
	.uleb128 0xb
	.long	0x5cc
	.long	0x36a
	.uleb128 0xc
	.long	0x86
	.byte	0xf
	.byte	0x0
	.uleb128 0xb
	.long	0x5dc
	.long	0x375
	.uleb128 0xc
	.long	0x86
	.byte	0x7
	.byte	0x0
	.uleb128 0xb
	.long	0x5ec
	.long	0x380
	.uleb128 0xc
	.long	0x86
	.byte	0x3
	.byte	0x0
	.uleb128 0xb
	.long	0x5fc
	.long	0x38b
	.uleb128 0xc
	.long	0x86
	.byte	0x1
	.byte	0x0
	.uleb128 0xb
	.long	0x60c
	.long	0x4b2
	.uleb128 0xc
	.long	0x86
	.byte	0x3
	.byte	0x0
	.uleb128 0xb
	.long	0x61c
	.long	0x4bd
	.uleb128 0xc
	.long	0x86
	.byte	0x1
	.byte	0x0
	.uleb128 0x10
	.long	.LASF93
	.byte	0x2
	.value	0x1ab
	.long	0x570
	.uleb128 0x11
	.long	0x65d
	.byte	0x8
	.byte	0x2
	.value	0x1b2
	.uleb128 0x12
	.string	"_b"
	.byte	0x2
	.value	0x1ae
	.long	0x65d
	.uleb128 0x12
	.string	"_w"
	.byte	0x2
	.value	0x1af
	.long	0x66d
	.uleb128 0x12
	.string	"_l"
	.byte	0x2
	.value	0x1b0
	.long	0x67d
	.uleb128 0x12
	.string	"q"
	.byte	0x2
	.value	0x1b1
	.long	0x38b
	.byte	0x0
	.uleb128 0xb
	.long	0x66d
	.long	0x36a
	.uleb128 0xc
	.long	0x86
	.byte	0x7
	.byte	0x0
	.uleb128 0xb
	.long	0x67d
	.long	0x375
	.uleb128 0xc
	.long	0x86
	.byte	0x1
	.byte	0x0
	.uleb128 0xb
	.long	0x68d
	.long	0x380
	.uleb128 0xc
	.long	0x86
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	.LASF94
	.byte	0x2
	.value	0x1b2
	.long	0x628
	.uleb128 0x7
	.long	0x80e
	.long	.LASF95
	.byte	0xd0
	.byte	0x7
	.byte	0x36
	.uleb128 0xa
	.long	.LASF96
	.byte	0x7
	.byte	0x38
	.long	0x4d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF97
	.byte	0x7
	.byte	0x39
	.long	0x4d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x13
	.string	"cr3"
	.byte	0x7
	.byte	0x3d
	.long	0x43e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF98
	.byte	0x7
	.byte	0x3f
	.long	0x80e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.long	.LASF99
	.byte	0x7
	.byte	0x41
	.long	0x4d
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.long	.LASF100
	.byte	0x7
	.byte	0x43
	.long	0x4d
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xa
	.long	.LASF101
	.byte	0x7
	.byte	0x45
	.long	0x4d
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.long	.LASF102
	.byte	0x7
	.byte	0x47
	.long	0x4d
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xa
	.long	.LASF103
	.byte	0x7
	.byte	0x4a
	.long	0x43e
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xa
	.long	.LASF104
	.byte	0x7
	.byte	0x4b
	.long	0x43e
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xa
	.long	.LASF105
	.byte	0x7
	.byte	0x4c
	.long	0x43e
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xa
	.long	.LASF106
	.byte	0x7
	.byte	0x4e
	.long	0x814
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xa
	.long	.LASF107
	.byte	0x7
	.byte	0x50
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0xa
	.long	.LASF108
	.byte	0x7
	.byte	0x52
	.long	0x4d
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xa
	.long	.LASF109
	.byte	0x7
	.byte	0x54
	.long	0x824
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xa
	.long	.LASF110
	.byte	0x7
	.byte	0x56
	.long	0x43e
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xa
	.long	.LASF111
	.byte	0x7
	.byte	0x58
	.long	0x834
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xa
	.long	.LASF112
	.byte	0x7
	.byte	0x5b
	.long	0x38
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xa
	.long	.LASF113
	.byte	0x7
	.byte	0x5c
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xa
	.long	.LASF114
	.byte	0x7
	.byte	0x5e
	.long	0x4d
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0xa
	.long	.LASF115
	.byte	0x7
	.byte	0x60
	.long	0x43e
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xa
	.long	.LASF116
	.byte	0x7
	.byte	0x62
	.long	0x834
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0xa
	.long	.LASF117
	.byte	0x7
	.byte	0x65
	.long	0x38
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xa
	.long	.LASF118
	.byte	0x7
	.byte	0x66
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.uleb128 0xa
	.long	.LASF119
	.byte	0x7
	.byte	0x68
	.long	0x4d
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x9c
	.uleb128 0xb
	.long	0x824
	.long	0x95
	.uleb128 0xc
	.long	0x86
	.byte	0x10
	.byte	0x0
	.uleb128 0xb
	.long	0x834
	.long	0x3a1
	.uleb128 0xc
	.long	0x86
	.byte	0x10
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x3a1
	.uleb128 0x2
	.long	.LASF120
	.byte	0x7
	.byte	0x69
	.long	0x699
	.uleb128 0x11
	.long	0x865
	.byte	0x10
	.byte	0x2
	.value	0x20f
	.uleb128 0x12
	.string	"d"
	.byte	0x2
	.value	0x20a
	.long	0x50e
	.uleb128 0x12
	.string	"mmx"
	.byte	0x2
	.value	0x20e
	.long	0x68d
	.byte	0x0
	.uleb128 0x11
	.long	0x89b
	.byte	0x8
	.byte	0x2
	.value	0x219
	.uleb128 0x12
	.string	"f"
	.byte	0x2
	.value	0x215
	.long	0x4a4
	.uleb128 0x12
	.string	"d"
	.byte	0x2
	.value	0x216
	.long	0x4ab
	.uleb128 0x12
	.string	"i32"
	.byte	0x2
	.value	0x217
	.long	0x62
	.uleb128 0x12
	.string	"i64"
	.byte	0x2
	.value	0x218
	.long	0x300
	.byte	0x0
	.uleb128 0x14
	.long	0x8c3
	.byte	0x10
	.byte	0x2
	.value	0x246
	.uleb128 0x8
	.long	.LASF121
	.byte	0x2
	.value	0x246
	.long	0x43e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF77
	.byte	0x2
	.value	0x246
	.long	0x449
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x15
	.long	0xe5f
	.long	.LASF122
	.value	0xb820
	.byte	0x2
	.value	0x1d8
	.uleb128 0x8
	.long	.LASF123
	.byte	0x2
	.value	0x1df
	.long	0xe5f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.string	"eip"
	.byte	0x2
	.value	0x1e0
	.long	0x43e
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x8
	.long	.LASF124
	.byte	0x2
	.value	0x1e1
	.long	0x43e
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x8
	.long	.LASF125
	.byte	0x2
	.value	0x1e6
	.long	0x3e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x8
	.long	.LASF126
	.byte	0x2
	.value	0x1e6
	.long	0x3e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x8
	.long	.LASF127
	.byte	0x2
	.value	0x1e6
	.long	0x3e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x8
	.long	.LASF128
	.byte	0x2
	.value	0x1e7
	.long	0xe6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x8
	.long	.LASF129
	.byte	0x2
	.value	0x1e9
	.long	0x83a
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x8
	.long	.LASF130
	.byte	0x2
	.value	0x1ec
	.long	0x43e
	.byte	0x3
	.byte	0x23
	.uleb128 0x150
	.uleb128 0x8
	.long	.LASF131
	.byte	0x2
	.value	0x1ed
	.long	0x43e
	.byte	0x3
	.byte	0x23
	.uleb128 0x154
	.uleb128 0x8
	.long	.LASF132
	.byte	0x2
	.value	0x1ee
	.long	0x380
	.byte	0x3
	.byte	0x23
	.uleb128 0x158
	.uleb128 0x16
	.string	"df"
	.byte	0x2
	.value	0x1ef
	.long	0x2f5
	.byte	0x3
	.byte	0x23
	.uleb128 0x15c
	.uleb128 0x8
	.long	.LASF133
	.byte	0x2
	.value	0x1f0
	.long	0x380
	.byte	0x3
	.byte	0x23
	.uleb128 0x160
	.uleb128 0x8
	.long	.LASF134
	.byte	0x2
	.value	0x1f3
	.long	0xe7f
	.byte	0x3
	.byte	0x23
	.uleb128 0x164
	.uleb128 0x16
	.string	"ldt"
	.byte	0x2
	.value	0x1f4
	.long	0x564
	.byte	0x3
	.byte	0x23
	.uleb128 0x1c4
	.uleb128 0x16
	.string	"tr"
	.byte	0x2
	.value	0x1f5
	.long	0x564
	.byte	0x3
	.byte	0x23
	.uleb128 0x1d4
	.uleb128 0x16
	.string	"gdt"
	.byte	0x2
	.value	0x1f6
	.long	0x564
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e4
	.uleb128 0x16
	.string	"idt"
	.byte	0x2
	.value	0x1f7
	.long	0x564
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f4
	.uleb128 0x16
	.string	"cr"
	.byte	0x2
	.value	0x1f9
	.long	0xe8f
	.byte	0x3
	.byte	0x23
	.uleb128 0x204
	.uleb128 0x8
	.long	.LASF135
	.byte	0x2
	.value	0x1fa
	.long	0x380
	.byte	0x3
	.byte	0x23
	.uleb128 0x218
	.uleb128 0x8
	.long	.LASF136
	.byte	0x2
	.value	0x201
	.long	0x43e
	.byte	0x3
	.byte	0x23
	.uleb128 0x21c
	.uleb128 0x8
	.long	.LASF137
	.byte	0x2
	.value	0x202
	.long	0x43e
	.byte	0x3
	.byte	0x23
	.uleb128 0x220
	.uleb128 0x8
	.long	.LASF138
	.byte	0x2
	.value	0x204
	.long	0x4d
	.byte	0x3
	.byte	0x23
	.uleb128 0x224
	.uleb128 0x8
	.long	.LASF139
	.byte	0x2
	.value	0x205
	.long	0x4d
	.byte	0x3
	.byte	0x23
	.uleb128 0x228
	.uleb128 0x8
	.long	.LASF140
	.byte	0x2
	.value	0x206
	.long	0x4d
	.byte	0x3
	.byte	0x23
	.uleb128 0x22c
	.uleb128 0x8
	.long	.LASF141
	.byte	0x2
	.value	0x207
	.long	0x65d
	.byte	0x3
	.byte	0x23
	.uleb128 0x230
	.uleb128 0x8
	.long	.LASF142
	.byte	0x2
	.value	0x20f
	.long	0xe9f
	.byte	0x3
	.byte	0x23
	.uleb128 0x240
	.uleb128 0x8
	.long	.LASF143
	.byte	0x2
	.value	0x212
	.long	0x503
	.byte	0x3
	.byte	0x23
	.uleb128 0x2c0
	.uleb128 0x16
	.string	"ft0"
	.byte	0x2
	.value	0x213
	.long	0x50e
	.byte	0x3
	.byte	0x23
	.uleb128 0x2d0
	.uleb128 0x8
	.long	.LASF144
	.byte	0x2
	.value	0x219
	.long	0x865
	.byte	0x3
	.byte	0x23
	.uleb128 0x2e0
	.uleb128 0x8
	.long	.LASF145
	.byte	0x2
	.value	0x21b
	.long	0x503
	.byte	0x3
	.byte	0x23
	.uleb128 0x2e8
	.uleb128 0x8
	.long	.LASF146
	.byte	0x2
	.value	0x21c
	.long	0x380
	.byte	0x3
	.byte	0x23
	.uleb128 0x2ec
	.uleb128 0x8
	.long	.LASF147
	.byte	0x2
	.value	0x21d
	.long	0xeaf
	.byte	0x3
	.byte	0x23
	.uleb128 0x2f0
	.uleb128 0x8
	.long	.LASF148
	.byte	0x2
	.value	0x21e
	.long	0x61c
	.byte	0x3
	.byte	0x23
	.uleb128 0x370
	.uleb128 0x8
	.long	.LASF149
	.byte	0x2
	.value	0x21f
	.long	0x68d
	.byte	0x3
	.byte	0x23
	.uleb128 0x380
	.uleb128 0x8
	.long	.LASF150
	.byte	0x2
	.value	0x222
	.long	0x380
	.byte	0x3
	.byte	0x23
	.uleb128 0x388
	.uleb128 0x8
	.long	.LASF151
	.byte	0x2
	.value	0x223
	.long	0x380
	.byte	0x3
	.byte	0x23
	.uleb128 0x38c
	.uleb128 0x8
	.long	.LASF152
	.byte	0x2
	.value	0x224
	.long	0x380
	.byte	0x3
	.byte	0x23
	.uleb128 0x390
	.uleb128 0x8
	.long	.LASF153
	.byte	0x2
	.value	0x225
	.long	0x38b
	.byte	0x3
	.byte	0x23
	.uleb128 0x398
	.uleb128 0x8
	.long	.LASF154
	.byte	0x2
	.value	0x226
	.long	0x38b
	.byte	0x3
	.byte	0x23
	.uleb128 0x3a0
	.uleb128 0x8
	.long	.LASF155
	.byte	0x2
	.value	0x228
	.long	0x449
	.byte	0x3
	.byte	0x23
	.uleb128 0x3a8
	.uleb128 0x8
	.long	.LASF156
	.byte	0x2
	.value	0x229
	.long	0x449
	.byte	0x3
	.byte	0x23
	.uleb128 0x3b0
	.uleb128 0x8
	.long	.LASF157
	.byte	0x2
	.value	0x22a
	.long	0x38b
	.byte	0x3
	.byte	0x23
	.uleb128 0x3b8
	.uleb128 0x8
	.long	.LASF158
	.byte	0x2
	.value	0x22b
	.long	0x375
	.byte	0x3
	.byte	0x23
	.uleb128 0x3c0
	.uleb128 0x8
	.long	.LASF159
	.byte	0x2
	.value	0x22c
	.long	0x375
	.byte	0x3
	.byte	0x23
	.uleb128 0x3c2
	.uleb128 0x8
	.long	.LASF160
	.byte	0x2
	.value	0x22d
	.long	0x375
	.byte	0x3
	.byte	0x23
	.uleb128 0x3c4
	.uleb128 0x8
	.long	.LASF161
	.byte	0x2
	.value	0x22e
	.long	0x375
	.byte	0x3
	.byte	0x23
	.uleb128 0x3c6
	.uleb128 0x8
	.long	.LASF162
	.byte	0x2
	.value	0x22f
	.long	0x380
	.byte	0x3
	.byte	0x23
	.uleb128 0x3c8
	.uleb128 0x16
	.string	"pat"
	.byte	0x2
	.value	0x238
	.long	0x38b
	.byte	0x3
	.byte	0x23
	.uleb128 0x3d0
	.uleb128 0x8
	.long	.LASF163
	.byte	0x2
	.value	0x23b
	.long	0x423
	.byte	0x3
	.byte	0x23
	.uleb128 0x3d8
	.uleb128 0x8
	.long	.LASF164
	.byte	0x2
	.value	0x23c
	.long	0x62
	.byte	0x3
	.byte	0x23
	.uleb128 0x4a0
	.uleb128 0x8
	.long	.LASF165
	.byte	0x2
	.value	0x23d
	.long	0x62
	.byte	0x3
	.byte	0x23
	.uleb128 0x4a4
	.uleb128 0x8
	.long	.LASF166
	.byte	0x2
	.value	0x23e
	.long	0x62
	.byte	0x3
	.byte	0x23
	.uleb128 0x4a8
	.uleb128 0x8
	.long	.LASF167
	.byte	0x2
	.value	0x23f
	.long	0x43e
	.byte	0x3
	.byte	0x23
	.uleb128 0x4ac
	.uleb128 0x16
	.string	"dr"
	.byte	0x2
	.value	0x240
	.long	0xe5f
	.byte	0x3
	.byte	0x23
	.uleb128 0x4b0
	.uleb128 0x8
	.long	.LASF168
	.byte	0x2
	.value	0x241
	.long	0x380
	.byte	0x3
	.byte	0x23
	.uleb128 0x4d0
	.uleb128 0x8
	.long	.LASF169
	.byte	0x2
	.value	0x242
	.long	0x62
	.byte	0x3
	.byte	0x23
	.uleb128 0x4d4
	.uleb128 0x8
	.long	.LASF170
	.byte	0x2
	.value	0x243
	.long	0x62
	.byte	0x3
	.byte	0x23
	.uleb128 0x4d8
	.uleb128 0x8
	.long	.LASF171
	.byte	0x2
	.value	0x244
	.long	0x62
	.byte	0x3
	.byte	0x23
	.uleb128 0x4dc
	.uleb128 0x8
	.long	.LASF172
	.byte	0x2
	.value	0x246
	.long	0xf82
	.byte	0x3
	.byte	0x23
	.uleb128 0x4e0
	.uleb128 0x8
	.long	.LASF173
	.byte	0x2
	.value	0x246
	.long	0x38
	.byte	0x3
	.byte	0x23
	.uleb128 0x4e8
	.uleb128 0x8
	.long	.LASF174
	.byte	0x2
	.value	0x246
	.long	0x43e
	.byte	0x3
	.byte	0x23
	.uleb128 0x4f0
	.uleb128 0x8
	.long	.LASF175
	.byte	0x2
	.value	0x246
	.long	0xf88
	.byte	0x3
	.byte	0x23
	.uleb128 0x4f8
	.uleb128 0x8
	.long	.LASF176
	.byte	0x2
	.value	0x246
	.long	0xf9e
	.byte	0x3
	.byte	0x23
	.uleb128 0x34f8
	.uleb128 0x8
	.long	.LASF177
	.byte	0x2
	.value	0x246
	.long	0xfaf
	.byte	0x4
	.byte	0x23
	.uleb128 0xb4f8
	.uleb128 0x8
	.long	.LASF178
	.byte	0x2
	.value	0x246
	.long	0x62
	.byte	0x4
	.byte	0x23
	.uleb128 0xb578
	.uleb128 0x8
	.long	.LASF179
	.byte	0x2
	.value	0x246
	.long	0x62
	.byte	0x4
	.byte	0x23
	.uleb128 0xb57c
	.uleb128 0x8
	.long	.LASF180
	.byte	0x2
	.value	0x246
	.long	0xfbf
	.byte	0x4
	.byte	0x23
	.uleb128 0xb580
	.uleb128 0x8
	.long	.LASF181
	.byte	0x2
	.value	0x246
	.long	0x62
	.byte	0x4
	.byte	0x23
	.uleb128 0xb780
	.uleb128 0x8
	.long	.LASF182
	.byte	0x2
	.value	0x246
	.long	0x62
	.byte	0x4
	.byte	0x23
	.uleb128 0xb784
	.uleb128 0x8
	.long	.LASF183
	.byte	0x2
	.value	0x246
	.long	0x8d
	.byte	0x4
	.byte	0x23
	.uleb128 0xb788
	.uleb128 0x8
	.long	.LASF184
	.byte	0x2
	.value	0x246
	.long	0x62
	.byte	0x4
	.byte	0x23
	.uleb128 0xb790
	.uleb128 0x8
	.long	.LASF185
	.byte	0x2
	.value	0x246
	.long	0x8d
	.byte	0x4
	.byte	0x23
	.uleb128 0xb798
	.uleb128 0x8
	.long	.LASF186
	.byte	0x2
	.value	0x246
	.long	0x2e3
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7a0
	.uleb128 0x8
	.long	.LASF187
	.byte	0x2
	.value	0x249
	.long	0x380
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7a8
	.uleb128 0x8
	.long	.LASF188
	.byte	0x2
	.value	0x24a
	.long	0x380
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7ac
	.uleb128 0x8
	.long	.LASF189
	.byte	0x2
	.value	0x24b
	.long	0x380
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7b0
	.uleb128 0x8
	.long	.LASF190
	.byte	0x2
	.value	0x24c
	.long	0x380
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7b4
	.uleb128 0x8
	.long	.LASF191
	.byte	0x2
	.value	0x24d
	.long	0x380
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7b8
	.uleb128 0x8
	.long	.LASF192
	.byte	0x2
	.value	0x24e
	.long	0x380
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7bc
	.uleb128 0x8
	.long	.LASF193
	.byte	0x2
	.value	0x24f
	.long	0x380
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7c0
	.uleb128 0x8
	.long	.LASF194
	.byte	0x2
	.value	0x250
	.long	0x380
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7c4
	.uleb128 0x8
	.long	.LASF195
	.byte	0x2
	.value	0x251
	.long	0xfcf
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7c8
	.uleb128 0x8
	.long	.LASF196
	.byte	0x2
	.value	0x252
	.long	0x380
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7f8
	.uleb128 0x8
	.long	.LASF197
	.byte	0x2
	.value	0x253
	.long	0x380
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7fc
	.uleb128 0x8
	.long	.LASF198
	.byte	0x2
	.value	0x254
	.long	0x380
	.byte	0x4
	.byte	0x23
	.uleb128 0xb800
	.uleb128 0x8
	.long	.LASF199
	.byte	0x2
	.value	0x25b
	.long	0xfdf
	.byte	0x4
	.byte	0x23
	.uleb128 0xb808
	.uleb128 0x8
	.long	.LASF200
	.byte	0x2
	.value	0x25f
	.long	0xfeb
	.byte	0x4
	.byte	0x23
	.uleb128 0xb810
	.byte	0x0
	.uleb128 0xb
	.long	0xe6f
	.long	0x43e
	.uleb128 0xc
	.long	0x86
	.byte	0x7
	.byte	0x0
	.uleb128 0xb
	.long	0xe7f
	.long	0x3e0
	.uleb128 0xc
	.long	0x86
	.byte	0x7
	.byte	0x0
	.uleb128 0xb
	.long	0xe8f
	.long	0x564
	.uleb128 0xc
	.long	0x86
	.byte	0x5
	.byte	0x0
	.uleb128 0xb
	.long	0xe9f
	.long	0x43e
	.uleb128 0xc
	.long	0x86
	.byte	0x4
	.byte	0x0
	.uleb128 0xb
	.long	0xeaf
	.long	0x845
	.uleb128 0xc
	.long	0x86
	.byte	0x7
	.byte	0x0
	.uleb128 0xb
	.long	0xebf
	.long	0x61c
	.uleb128 0xc
	.long	0x86
	.byte	0x7
	.byte	0x0
	.uleb128 0xf
	.long	0xf82
	.long	.LASF201
	.byte	0x68
	.byte	0x2
	.value	0x246
	.uleb128 0x13
	.string	"pc"
	.byte	0x12
	.byte	0x93
	.long	0x43e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF202
	.byte	0x12
	.byte	0x94
	.long	0x43e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.long	.LASF92
	.byte	0x12
	.byte	0x95
	.long	0x38b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF203
	.byte	0x12
	.byte	0x96
	.long	0x375
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.long	.LASF204
	.byte	0x12
	.byte	0x98
	.long	0x375
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0xa
	.long	.LASF205
	.byte	0x12
	.byte	0x9e
	.long	0x1003
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.long	.LASF206
	.byte	0x12
	.byte	0xa0
	.long	0xf82
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.long	.LASF207
	.byte	0x12
	.byte	0xa3
	.long	0x1009
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xa
	.long	.LASF208
	.byte	0x12
	.byte	0xa4
	.long	0x1019
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xa
	.long	.LASF209
	.byte	0x12
	.byte	0xa8
	.long	0x66d
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xa
	.long	.LASF210
	.byte	0x12
	.byte	0xac
	.long	0x1029
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xa
	.long	.LASF211
	.byte	0x12
	.byte	0xb2
	.long	0x1009
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xa
	.long	.LASF212
	.byte	0x12
	.byte	0xb3
	.long	0xf82
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0xebf
	.uleb128 0xb
	.long	0xf9e
	.long	0x499
	.uleb128 0xc
	.long	0x86
	.byte	0x1
	.uleb128 0xc
	.long	0x86
	.byte	0xff
	.byte	0x0
	.uleb128 0xb
	.long	0xfaf
	.long	0xf82
	.uleb128 0x17
	.long	0x86
	.value	0xfff
	.byte	0x0
	.uleb128 0xb
	.long	0xfbf
	.long	0x43e
	.uleb128 0xc
	.long	0x86
	.byte	0x1f
	.byte	0x0
	.uleb128 0xb
	.long	0xfcf
	.long	0x89b
	.uleb128 0xc
	.long	0x86
	.byte	0x1f
	.byte	0x0
	.uleb128 0xb
	.long	0xfdf
	.long	0x380
	.uleb128 0xc
	.long	0x86
	.byte	0xb
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x3ac
	.uleb128 0x18
	.long	.LASF232
	.byte	0x1
	.uleb128 0x6
	.byte	0x8
	.long	0xfe5
	.uleb128 0x10
	.long	.LASF122
	.byte	0x2
	.value	0x260
	.long	0x8c3
	.uleb128 0x6
	.byte	0x8
	.long	0x3e0
	.uleb128 0x6
	.byte	0x8
	.long	0x36a
	.uleb128 0xb
	.long	0x1019
	.long	0xf82
	.uleb128 0xc
	.long	0x86
	.byte	0x1
	.byte	0x0
	.uleb128 0xb
	.long	0x1029
	.long	0x43e
	.uleb128 0xc
	.long	0x86
	.byte	0x1
	.byte	0x0
	.uleb128 0xb
	.long	0x1039
	.long	0x380
	.uleb128 0xc
	.long	0x86
	.byte	0x1
	.byte	0x0
	.uleb128 0x19
	.long	0x10ef
	.byte	0x1
	.long	.LASF233
	.byte	0x1
	.byte	0x33
	.byte	0x1
	.quad	.LFB221
	.quad	.LFE221
	.byte	0x1
	.byte	0x56
	.uleb128 0x1a
	.string	"env"
	.byte	0x1
	.byte	0x31
	.long	0x10ef
	.byte	0x1
	.byte	0x5c
	.uleb128 0x1b
	.long	.LASF213
	.byte	0x1
	.byte	0x31
	.long	0x43e
	.byte	0x1
	.byte	0x5f
	.uleb128 0x1a
	.string	"tag"
	.byte	0x1
	.byte	0x31
	.long	0xffd
	.byte	0x1
	.byte	0x5d
	.uleb128 0x1b
	.long	.LASF214
	.byte	0x1
	.byte	0x32
	.long	0x43e
	.byte	0x1
	.byte	0x5e
	.uleb128 0x1b
	.long	.LASF215
	.byte	0x1
	.byte	0x32
	.long	0x62
	.byte	0x1
	.byte	0x53
	.uleb128 0x1c
	.long	.LASF216
	.byte	0x1
	.byte	0x34
	.long	0x33d
	.byte	0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x1d
	.string	"rid"
	.byte	0x1
	.byte	0x35
	.long	0x62
	.byte	0x3
	.byte	0x91
	.sleb128 -180
	.uleb128 0x1e
	.quad	.LBB2
	.quad	.LBE2
	.uleb128 0x1f
	.long	.LASF217
	.byte	0x1
	.byte	0x5c
	.long	0x10f5
	.uleb128 0x1c
	.long	.LASF218
	.byte	0x1
	.byte	0x5d
	.long	0x10fa
	.byte	0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1d
	.string	"id"
	.byte	0x1
	.byte	0x5f
	.long	0x4d
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0xff1
	.uleb128 0xd
	.long	0x4d
	.uleb128 0xb
	.long	0x1109
	.long	0x95
	.uleb128 0x20
	.long	0x86
	.byte	0x0
	.uleb128 0x21
	.long	.LASF219
	.byte	0x8
	.byte	0x91
	.long	0x2b7
	.byte	0x1
	.byte	0x1
	.uleb128 0x21
	.long	.LASF220
	.byte	0x8
	.byte	0x92
	.long	0x2b7
	.byte	0x1
	.byte	0x1
	.uleb128 0x21
	.long	.LASF221
	.byte	0x14
	.byte	0x22
	.long	0x62
	.byte	0x1
	.byte	0x1
	.uleb128 0x21
	.long	.LASF222
	.byte	0x14
	.byte	0x23
	.long	0x62
	.byte	0x1
	.byte	0x1
	.uleb128 0x21
	.long	.LASF223
	.byte	0x14
	.byte	0x24
	.long	0x62
	.byte	0x1
	.byte	0x1
	.uleb128 0x21
	.long	.LASF224
	.byte	0x14
	.byte	0x27
	.long	0x62
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.long	.LASF225
	.byte	0x15
	.value	0x32c
	.long	0x10ef
	.byte	0x1
	.byte	0x1
	.uleb128 0x21
	.long	.LASF226
	.byte	0x16
	.byte	0x26
	.long	0x1003
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.long	.LASF227
	.byte	0x15
	.value	0x376
	.long	0x1003
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0x1190
	.long	0x2e3
	.uleb128 0xc
	.long	0x86
	.byte	0xc
	.byte	0x0
	.uleb128 0x1c
	.long	.LASF228
	.byte	0x1
	.byte	0x2d
	.long	0x1180
	.byte	0x9
	.byte	0x3
	.quad	adesc
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x20
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
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
	.uleb128 0x22
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
	.long	0x1e
	.value	0x2
	.long	.Ldebug_info0
	.long	0x11a6
	.long	0x1039
	.string	"argos_alert"
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
.LASF145:
	.string	"sse_status"
.LASF153:
	.string	"efer"
.LASF156:
	.string	"vm_vmcb"
.LASF7:
	.string	"size_t"
.LASF66:
	.string	"__jmp_buf_tag"
.LASF48:
	.string	"int32_t"
.LASF23:
	.string	"_IO_save_end"
.LASF140:
	.string	"fpuc"
.LASF193:
	.string	"cpuid_ext_features"
.LASF141:
	.string	"fptags"
.LASF82:
	.string	"floatx80"
.LASF139:
	.string	"fpus"
.LASF16:
	.string	"_IO_write_base"
.LASF96:
	.string	"running"
.LASF32:
	.string	"_lock"
.LASF146:
	.string	"mxcsr"
.LASF129:
	.string	"shellcode_context"
.LASF87:
	.string	"CPU86_LDouble"
.LASF163:
	.string	"jmp_env"
.LASF224:
	.string	"argos_instance_id"
.LASF21:
	.string	"_IO_save_base"
.LASF121:
	.string	"vaddr"
.LASF130:
	.string	"cc_src"
.LASF107:
	.string	"instruction_size"
.LASF131:
	.string	"cc_dst"
.LASF208:
	.string	"page_addr"
.LASF157:
	.string	"intercept"
.LASF133:
	.string	"hflags"
.LASF29:
	.string	"_cur_column"
.LASF108:
	.string	"logged"
.LASF148:
	.string	"xmm_t0"
.LASF77:
	.string	"addend"
.LASF230:
	.string	"/home/remco/Projects/Argos/src/target-i386/argos-alert.c"
.LASF11:
	.string	"FILE"
.LASF6:
	.string	"long int"
.LASF184:
	.string	"cpu_index"
.LASF222:
	.string	"argos_fsc"
.LASF43:
	.string	"_IO_marker"
.LASF76:
	.string	"addr_code"
.LASF80:
	.string	"float32"
.LASF64:
	.string	"netidx"
.LASF185:
	.string	"opaque"
.LASF2:
	.string	"short unsigned int"
.LASF122:
	.string	"CPUX86State"
.LASF172:
	.string	"current_tb"
.LASF100:
	.string	"instruction_stage"
.LASF180:
	.string	"watchpoint"
.LASF188:
	.string	"cpuid_vendor1"
.LASF190:
	.string	"cpuid_vendor3"
.LASF201:
	.string	"TranslationBlock"
.LASF4:
	.string	"signed char"
.LASF42:
	.string	"_IO_FILE"
.LASF1:
	.string	"unsigned char"
.LASF178:
	.string	"nb_breakpoints"
.LASF111:
	.string	"load_value_netidx"
.LASF65:
	.string	"argos_rtag_t"
.LASF195:
	.string	"cpuid_model"
.LASF225:
	.string	"cpu_single_env"
.LASF62:
	.string	"argos_rtag"
.LASF115:
	.string	"store_value"
.LASF106:
	.string	"instruction"
.LASF202:
	.string	"cs_base"
.LASF10:
	.string	"char"
.LASF194:
	.string	"cpuid_xlevel"
.LASF171:
	.string	"old_exception"
.LASF126:
	.string	"t1tag"
.LASF165:
	.string	"error_code"
.LASF41:
	.string	"_IO_lock_t"
.LASF223:
	.string	"argos_tracksc"
.LASF113:
	.string	"load_addr_type"
.LASF205:
	.string	"tc_ptr"
.LASF92:
	.string	"flags"
.LASF13:
	.string	"_IO_read_ptr"
.LASF79:
	.string	"double"
.LASF102:
	.string	"is_system_call"
.LASF46:
	.string	"_pos"
.LASF219:
	.string	"stdin"
.LASF175:
	.string	"tlb_table"
.LASF116:
	.string	"store_value_netidx"
.LASF24:
	.string	"_markers"
.LASF169:
	.string	"interrupt_request"
.LASF198:
	.string	"cpuid_apic_id"
.LASF91:
	.string	"limit"
.LASF114:
	.string	"load_size"
.LASF109:
	.string	"instruction_netidx"
.LASF218:
	.string	"filename"
.LASF138:
	.string	"fpstt"
.LASF210:
	.string	"tb_next"
.LASF173:
	.string	"mem_write_pc"
.LASF204:
	.string	"cflags"
.LASF40:
	.string	"_unused2"
.LASF179:
	.string	"singlestep_enabled"
.LASF174:
	.string	"mem_write_vaddr"
.LASF132:
	.string	"cc_op"
.LASF98:
	.string	"logfile"
.LASF0:
	.string	"long unsigned int"
.LASF103:
	.string	"loadedby_eip"
.LASF135:
	.string	"a20_mask"
.LASF27:
	.string	"_flags2"
.LASF216:
	.string	"alrmset"
.LASF221:
	.string	"argos_csilog"
.LASF15:
	.string	"_IO_read_base"
.LASF143:
	.string	"fp_status"
.LASF212:
	.string	"jmp_first"
.LASF93:
	.string	"XMMReg"
.LASF150:
	.string	"sysenter_cs"
.LASF196:
	.string	"cpuid_ext2_features"
.LASF95:
	.string	"argos_shellcode_context_s"
.LASF162:
	.string	"intercept_exceptions"
.LASF86:
	.string	"floatx80_rounding_precision"
.LASF68:
	.string	"__mask_was_saved"
.LASF197:
	.string	"cpuid_ext3_features"
.LASF118:
	.string	"store_addr_type"
.LASF110:
	.string	"load_value"
.LASF28:
	.string	"_old_offset"
.LASF206:
	.string	"phys_hash_next"
.LASF154:
	.string	"star"
.LASF149:
	.string	"mmx_t0"
.LASF47:
	.string	"long long int"
.LASF167:
	.string	"exception_next_eip"
.LASF18:
	.string	"_IO_write_end"
.LASF74:
	.string	"addr_read"
.LASF207:
	.string	"page_next"
.LASF112:
	.string	"load_addr"
.LASF215:
	.string	"code"
.LASF85:
	.string	"float_rounding_mode"
.LASF186:
	.string	"cpu_model_str"
.LASF17:
	.string	"_IO_write_ptr"
.LASF177:
	.string	"breakpoints"
.LASF119:
	.string	"store_size"
.LASF19:
	.string	"_IO_buf_base"
.LASF3:
	.string	"unsigned int"
.LASF229:
	.string	"GNU C 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
.LASF231:
	.string	"/home/remco/Projects/Argos/src/i386-softmmu"
.LASF60:
	.string	"argos_netidx_t"
.LASF34:
	.string	"__pad1"
.LASF35:
	.string	"__pad2"
.LASF36:
	.string	"__pad3"
.LASF37:
	.string	"__pad4"
.LASF38:
	.string	"__pad5"
.LASF45:
	.string	"_sbuf"
.LASF182:
	.string	"watchpoint_hit"
.LASF104:
	.string	"storedby_eip"
.LASF232:
	.string	"APICState"
.LASF200:
	.string	"apic_state"
.LASF12:
	.string	"_flags"
.LASF227:
	.string	"phys_ram_dirty"
.LASF69:
	.string	"__saved_mask"
.LASF39:
	.string	"_mode"
.LASF67:
	.string	"__jmpbuf"
.LASF54:
	.string	"__jmp_buf"
.LASF61:
	.string	"argos_bytemap_t"
.LASF181:
	.string	"nb_watchpoints"
.LASF72:
	.string	"target_phys_addr_t"
.LASF83:
	.string	"long double"
.LASF137:
	.string	"prev_fpip"
.LASF228:
	.string	"adesc"
.LASF199:
	.string	"envmap"
.LASF33:
	.string	"_offset"
.LASF192:
	.string	"cpuid_features"
.LASF158:
	.string	"intercept_cr_read"
.LASF209:
	.string	"tb_next_offset"
.LASF203:
	.string	"size"
.LASF101:
	.string	"trace_stage"
.LASF53:
	.string	"long long unsigned int"
.LASF55:
	.string	"uint8_t"
.LASF84:
	.string	"float_status"
.LASF56:
	.string	"uint16_t"
.LASF8:
	.string	"__off_t"
.LASF25:
	.string	"_chain"
.LASF144:
	.string	"fp_convert"
.LASF70:
	.string	"jmp_buf"
.LASF213:
	.string	"new_pc"
.LASF183:
	.string	"next_cpu"
.LASF52:
	.string	"sigset_t"
.LASF73:
	.string	"CPUTLBEntry"
.LASF160:
	.string	"intercept_dr_read"
.LASF117:
	.string	"store_addr"
.LASF22:
	.string	"_IO_backup_base"
.LASF31:
	.string	"_shortbuf"
.LASF99:
	.string	"instruction_cnt"
.LASF123:
	.string	"regs"
.LASF44:
	.string	"_next"
.LASF9:
	.string	"__off64_t"
.LASF161:
	.string	"intercept_dr_write"
.LASF125:
	.string	"t0tag"
.LASF97:
	.string	"stop_condition"
.LASF168:
	.string	"smbase"
.LASF127:
	.string	"t2tag"
.LASF20:
	.string	"_IO_buf_end"
.LASF71:
	.string	"target_ulong"
.LASF159:
	.string	"intercept_cr_write"
.LASF5:
	.string	"short int"
.LASF75:
	.string	"addr_write"
.LASF58:
	.string	"uint64_t"
.LASF189:
	.string	"cpuid_vendor2"
.LASF88:
	.string	"SegmentCache"
.LASF94:
	.string	"MMXReg"
.LASF30:
	.string	"_vtable_offset"
.LASF166:
	.string	"exception_is_int"
.LASF226:
	.string	"phys_ram_base"
.LASF134:
	.string	"segs"
.LASF233:
	.string	"argos_alert"
.LASF142:
	.string	"fpregs"
.LASF147:
	.string	"xmm_regs"
.LASF50:
	.string	"__val"
.LASF170:
	.string	"user_mode_only"
.LASF155:
	.string	"vm_hsave"
.LASF136:
	.string	"fpip"
.LASF191:
	.string	"cpuid_version"
.LASF128:
	.string	"regtags"
.LASF14:
	.string	"_IO_read_end"
.LASF57:
	.string	"uint32_t"
.LASF26:
	.string	"_fileno"
.LASF164:
	.string	"exception_index"
.LASF81:
	.string	"float64"
.LASF78:
	.string	"float"
.LASF220:
	.string	"stdout"
.LASF105:
	.string	"executed_eip"
.LASF90:
	.string	"base"
.LASF124:
	.string	"eflags"
.LASF49:
	.string	"int64_t"
.LASF89:
	.string	"selector"
.LASF59:
	.string	"argos_paddr_t"
.LASF176:
	.string	"tb_jmp_cache"
.LASF152:
	.string	"sysenter_eip"
.LASF151:
	.string	"sysenter_esp"
.LASF63:
	.string	"origin"
.LASF51:
	.string	"__sigset_t"
.LASF187:
	.string	"cpuid_level"
.LASF211:
	.string	"jmp_next"
.LASF214:
	.string	"old_pc"
.LASF120:
	.string	"argos_shellcode_context_t"
.LASF217:
	.string	"filename_size"
	.section	.note.GNU-stack,"",@progbits
	.ident	"GCC: (GNU) 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
