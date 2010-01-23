	.file	"block-bochs.c"
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
	.string	"bochs"
.globl bdrv_bochs
	.data
	.align 32
	.type	bdrv_bochs, @object
	.size	bdrv_bochs, 272
bdrv_bochs:
	.quad	.LC0
	.long	40
	.zero	4
	.quad	bochs_probe
	.quad	bochs_open
	.quad	bochs_read
	.quad	0
	.quad	bochs_close
	.zero	216
	.section	.rodata.str1.1
.LC1:
	.string	"Bochs Virtual HD Image"
.LC2:
	.string	"Redolog"
.LC3:
	.string	"Growing"
	.text
	.p2align 4,,15
	.type	bochs_probe, @function
bochs_probe:
.LFB97:
	.file 1 "block-bochs.c"
	.loc 1 95 0
	.loc 1 99 0
	xorl	%eax, %eax
	.loc 1 98 0
	cmpl	$511, %esi
	.loc 1 95 0
	movq	%rdi, %r8
	.loc 1 98 0
	jle	.L1
.LBB2:
	.loc 1 101 0
	cld
	movl	$.LC1, %edi
	movl	$23, %ecx
	movq	%r8, %rsi
.LBE2:
	repz
	cmpsb
	jne	.L3
.LBB3:
	.loc 1 102 0
	leaq	32(%r8), %rsi
	movl	$.LC2, %edi
	movl	$8, %ecx
.LBE3:
	repz
	cmpsb
	jne	.L3
.LBB4:
	.loc 1 103 0
	leaq	48(%r8), %rsi
	movl	$.LC3, %edi
	movl	$8, %ecx
.LBE4:
	repz
	cmpsb
	jne	.L3
.LBB5:
	.file 2 "bswap.h"
	.loc 2 124 0
	movl	64(%r8), %eax
.LBE5:
	cmpl	$131072, %eax
	je	.L19
	cmpl	$65536, %eax
	je	.L19
	.p2align 4,,7
.L3:
	.loc 1 108 0
	xorl	%eax, %eax
.L1:
	.loc 1 109 0
	rep ; ret
.L19:
	.loc 1 106 0
	movl	$100, %eax
	ret
.LFE97:
	.size	bochs_probe, .-bochs_probe
	.p2align 4,,15
	.type	bochs_open, @function
bochs_open:
.LFB98:
	.loc 1 112 0
	movq	%rbx, -32(%rsp)
.LCFI0:
	movq	%rsi, %rbx
	movq	%rbp, -24(%rsp)
.LCFI1:
	movq	%r12, -16(%rsp)
.LCFI2:
	movq	%r13, -8(%rsp)
.LCFI3:
	.loc 1 118 0
	xorl	%eax, %eax
	.loc 1 112 0
	subq	$1080, %rsp
.LCFI4:
	.loc 1 112 0
	movq	%rdi, %r12
	.loc 1 113 0
	movq	56(%rdi), %r13
	.loc 1 118 0
	movl	$2, %esi
	movq	%rbx, %rdi
	call	open64
	.loc 1 119 0
	testl	%eax, %eax
	.loc 1 118 0
	movl	%eax, %ebp
	.loc 1 119 0
	js	.L70
.L24:
	.loc 1 129 0
	leaq	528(%rsp), %rbx
	.loc 1 125 0
	movl	$1, 8(%r12)
	.loc 1 129 0
	movl	$512, %edx
	.loc 1 127 0
	movl	%ebp, (%r13)
	.loc 1 129 0
	movl	%ebp, %edi
	movq	%rbx, %rsi
	call	read
	cmpq	$512, %rax
	jne	.L27
.LBB6:
	.loc 1 133 0
	cld
	movl	$.LC1, %edi
	movl	$23, %ecx
	movq	%rbx, %rsi
.LBE6:
	repz
	cmpsb
	jne	.L27
.LBB7:
	.loc 1 134 0
	leaq	32(%rbx), %rsi
	movl	$.LC2, %edi
	movl	$8, %ecx
.LBE7:
	repz
	cmpsb
	je	.L71
.L27:
	.loc 1 169 0
	movl	%ebp, %edi
	call	close
	.loc 1 170 0
	movl	$-1, %eax
.L23:
	.loc 1 171 0
	movq	1048(%rsp), %rbx
	movq	1056(%rsp), %rbp
	movq	1064(%rsp), %r12
	movq	1072(%rsp), %r13
	addq	$1080, %rsp
	ret
	.p2align 4,,7
.L71:
.LBB8:
	.loc 1 135 0
	leaq	48(%rbx), %rsi
	movl	$.LC3, %edi
	movl	$8, %ecx
.LBE8:
	repz
	cmpsb
	jne	.L27
.LBB9:
	.loc 2 124 0
	movl	592(%rsp), %eax
.LBE9:
	cmpl	$131072, %eax
	je	.L28
	cmpl	$65536, %eax
	jne	.L27
	.loc 1 142 0
	movq	%rsp, %rdi
	movl	$512, %edx
	movq	%rbx, %rsi
	call	memcpy
.LBB10:
	.loc 2 125 0
	movq	88(%rsp), %rax
.L68:
.LBE10:
	shrq	$9, %rax
	.loc 2 124 0
	mov	596(%rsp), %esi
	xorl	%edx, %edx
	.loc 2 125 0
	movq	%rax, (%r12)
	.loc 2 124 0
	movl	(%r13), %edi
	call	lseek64
.LBB11:
	movl	600(%rsp), %ecx
.LBE11:
	.loc 1 151 0
	leal	0(,%rcx,4), %edi
	.loc 2 124 0
	movl	%ecx, 16(%r13)
	.loc 1 151 0
	movslq	%edi,%rdi
	call	qemu_malloc
	.loc 1 152 0
	testq	%rax, %rax
	.loc 1 151 0
	movq	%rax, 8(%r13)
	.loc 1 152 0
	je	.L27
	.loc 1 154 0
	movl	16(%r13), %edx
	movl	(%r13), %edi
	movq	%rax, %rsi
	sall	$2, %edx
	movslq	%edx,%rdx
	call	read
	movl	16(%r13), %ecx
	leal	0(,%rcx,4), %edx
	movslq	%edx,%rdx
	cmpq	%rdx, %rax
	jne	.L27
	.loc 1 157 0
	xorl	%eax, %eax
	cmpl	$0, %ecx
	jmp	.L69
	.p2align 4,,7
.L72:
	incl	%eax
	cmpl	%eax, %ecx
.L69:
	jg	.L72
	.loc 2 124 0
	leal	0(,%rcx,4), %eax
	addl	596(%rsp), %eax
	movl	%eax, 20(%r13)
	movl	604(%rsp), %eax
	decl	%eax
	shrl	$9, %eax
	incl	%eax
	movl	%eax, 24(%r13)
	movl	608(%rsp), %eax
	decl	%eax
	shrl	$9, %eax
	incl	%eax
	movl	%eax, 28(%r13)
.LBB12:
	movl	608(%rsp), %eax
.LBE12:
	movl	%eax, 32(%r13)
	.loc 1 167 0
	xorl	%eax, %eax
	jmp	.L23
	.p2align 4,,7
.L70:
	.loc 1 120 0
	xorl	%esi, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	call	open64
	movl	%eax, %ebp
	.loc 1 122 0
	movl	$-1, %eax
	.loc 1 121 0
	testl	%ebp, %ebp
	jns	.L24
	jmp	.L23
	.p2align 4,,7
.L28:
.LBB13:
	.loc 2 125 0
	movq	616(%rsp), %rax
	jmp	.L68
.LBE13:
.LFE98:
	.size	bochs_open, .-bochs_open
	.p2align 4,,15
	.type	bochs_read, @function
bochs_read:
.LFB100:
	.loc 1 219 0
	pushq	%r15
.LCFI5:
	movq	%rsi, %r15
	pushq	%r14
.LCFI6:
	movq	%rdx, %r14
	pushq	%r13
.LCFI7:
	movl	%ecx, %r13d
	pushq	%r12
.LCFI8:
	pushq	%rbp
.LCFI9:
	pushq	%rbx
.LCFI10:
	subq	$40, %rsp
.LCFI11:
	.loc 1 234 0
	testl	%ecx, %ecx
	.loc 1 219 0
	movq	%rdi, 24(%rsp)
	.loc 1 220 0
	movq	56(%rdi), %rax
	movq	%rax, 16(%rsp)
	movq	%rax, %r12
	.loc 1 234 0
	jg	.L86
	jmp	.L88
	.p2align 4,,7
.L76:
	.loc 1 231 0
	movl	$512, %edx
	xorl	%esi, %esi
	movq	%r14, %rdi
	call	memset
.L85:
	.loc 1 232 0
	decl	%r13d
	.loc 1 233 0
	incq	%r15
	.loc 1 234 0
	addq	$512, %r14
	testl	%r13d, %r13d
	jle	.L88
	movq	24(%rsp), %rbx
	movq	56(%rbx), %r12
.L86:
.LBB14:
.LBB15:
	.loc 1 181 0
	movslq	32(%r12),%rdx
	.loc 1 176 0
	movq	%r15, %rcx
	salq	$9, %rcx
	.loc 1 181 0
	movq	%rcx, %rax
	movq	%rdx, %rbx
	cqto
	idivq	%rbx
	movq	%rax, %rcx
	.loc 1 182 0
	leaq	511(%rdx), %rax
	cmpq	$-1, %rdx
	movq	%rdx, %rbp
	cmovle	%rax, %rbp
	.loc 1 184 0
	movq	8(%r12), %rax
	.loc 1 182 0
	sarq	$9, %rbp
	.loc 1 184 0
	movl	(%rax,%rcx,4), %ecx
	cmpl	$-1, %ecx
	je	.L76
	.loc 1 191 0
	movslq	24(%r12),%rax
	movl	28(%r12), %edx
	.loc 1 201 0
	leaq	7(%rbp), %rbx
	.loc 1 191 0
	movl	20(%r12), %esi
	addl	%eax, %edx
	.loc 1 193 0
	addq	%rbp, %rax
	.loc 1 191 0
	imull	%edx, %ecx
	.loc 1 193 0
	salq	$9, %rax
	.loc 1 191 0
	sall	$9, %ecx
	addl	%ecx, %esi
	.loc 1 193 0
	addq	%rsi, %rax
	.loc 1 201 0
	cmpq	$-1, %rbp
	cmovg	%rbp, %rbx
	.loc 1 193 0
	movq	%rax, 8(%rsp)
	.loc 1 201 0
	movl	(%r12), %edi
	sarq	$3, %rbx
	xorl	%edx, %edx
	leaq	(%rbx,%rsi), %rsi
	.loc 1 205 0
	salq	$3, %rbx
	.loc 1 201 0
	call	lseek64
	.loc 1 203 0
	movl	(%r12), %edi
	leaq	39(%rsp), %rsi
	movl	$1, %edx
	call	read
	.loc 1 205 0
	movsbl	39(%rsp),%eax
	movl	%ebp, %ecx
	subb	%bl, %cl
	sarl	%cl, %eax
	testb	$1, %al
	je	.L76
	.loc 1 212 0
	movq	8(%rsp), %rsi
	movl	(%r12), %edi
	xorl	%edx, %edx
	call	lseek64
.LBE15:
.LBE14:
	.loc 1 226 0
	movq	16(%rsp), %rax
	movl	$512, %edx
	movq	%r14, %rsi
	movl	(%rax), %edi
	call	read
	.loc 1 227 0
	cmpl	$512, %eax
	je	.L85
	.loc 1 237 0
	addq	$40, %rsp
	.loc 1 228 0
	movl	$-1, %eax
	.loc 1 237 0
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L88:
	addq	$40, %rsp
	.loc 1 236 0
	xorl	%eax, %eax
	.loc 1 237 0
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.LFE100:
	.size	bochs_read, .-bochs_read
	.p2align 4,,15
	.type	bochs_close, @function
bochs_close:
.LFB101:
	.loc 1 240 0
	pushq	%rbx
.LCFI12:
	.loc 1 241 0
	movq	56(%rdi), %rbx
	.loc 1 242 0
	movq	8(%rbx), %rdi
	call	qemu_free
	.loc 1 243 0
	movl	(%rbx), %edi
	popq	%rbx
	jmp	close
.LFE101:
	.size	bochs_close, .-bochs_close
	.comm	bdrv_first,8,8
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
	.quad	.LFB97
	.quad	.LFE97-.LFB97
	.align 8
.LEFDE0:
.LSFDE2:
	.long	.LEFDE2-.LASFDE2
.LASFDE2:
	.long	.Lframe0
	.quad	.LFB98
	.quad	.LFE98-.LFB98
	.byte	0x4
	.long	.LCFI0-.LFB98
	.byte	0x83
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI4-.LCFI0
	.byte	0xe
	.uleb128 0x440
	.byte	0x8d
	.uleb128 0x2
	.byte	0x8c
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x4
	.align 8
.LEFDE2:
.LSFDE4:
	.long	.LEFDE4-.LASFDE4
.LASFDE4:
	.long	.Lframe0
	.quad	.LFB100
	.quad	.LFE100-.LFB100
	.byte	0x4
	.long	.LCFI5-.LFB100
	.byte	0xe
	.uleb128 0x10
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI6-.LCFI5
	.byte	0xe
	.uleb128 0x18
	.byte	0x8e
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI7-.LCFI6
	.byte	0xe
	.uleb128 0x20
	.byte	0x8d
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI8-.LCFI7
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI9-.LCFI8
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI10-.LCFI9
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI11-.LCFI10
	.byte	0xe
	.uleb128 0x60
	.byte	0x83
	.uleb128 0x7
	.byte	0x86
	.uleb128 0x6
	.byte	0x8c
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
	.long	.LCFI12-.LFB101
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE6:
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
	.quad	.LFB97
	.quad	.LFE97-.LFB97
	.align 8
.LEFDE1:
.LSFDE3:
	.long	.LEFDE3-.LASFDE3
.LASFDE3:
	.long	.LASFDE3-.Lframe1
	.quad	.LFB98
	.quad	.LFE98-.LFB98
	.byte	0x4
	.long	.LCFI0-.LFB98
	.byte	0x83
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI4-.LCFI0
	.byte	0xe
	.uleb128 0x440
	.byte	0x8d
	.uleb128 0x2
	.byte	0x8c
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x4
	.align 8
.LEFDE3:
.LSFDE5:
	.long	.LEFDE5-.LASFDE5
.LASFDE5:
	.long	.LASFDE5-.Lframe1
	.quad	.LFB100
	.quad	.LFE100-.LFB100
	.byte	0x4
	.long	.LCFI5-.LFB100
	.byte	0xe
	.uleb128 0x10
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI6-.LCFI5
	.byte	0xe
	.uleb128 0x18
	.byte	0x8e
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI7-.LCFI6
	.byte	0xe
	.uleb128 0x20
	.byte	0x8d
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI8-.LCFI7
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI9-.LCFI8
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI10-.LCFI9
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI11-.LCFI10
	.byte	0xe
	.uleb128 0x60
	.byte	0x83
	.uleb128 0x7
	.byte	0x86
	.uleb128 0x6
	.byte	0x8c
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
	.long	.LCFI12-.LFB101
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE7:
	.file 3 "/usr/include/stdint.h"
	.file 4 "/usr/lib/gcc/x86_64-linux-gnu/3.4.6/include/stddef.h"
	.file 5 "qemu-common.h"
	.file 6 "block_int.h"
	.file 7 "/usr/include/sys/types.h"
	.file 8 "block.h"
	.file 9 "/usr/include/stdio.h"
	.file 10 "/usr/include/libio.h"
	.file 11 "/usr/include/bits/types.h"
	.text
.Letext0:
	.section	.debug_info
	.long	0x1205
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.Ldebug_line0
	.quad	.Letext0
	.quad	.Ltext0
	.long	.LASF172
	.byte	0x1
	.long	.LASF173
	.long	.LASF174
	.uleb128 0x2
	.long	.LASF9
	.byte	0x4
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
	.byte	0xb
	.byte	0x8d
	.long	0x53
	.uleb128 0x2
	.long	.LASF11
	.byte	0xb
	.byte	0x8e
	.long	0x53
	.uleb128 0x7
	.byte	0x8
	.uleb128 0x5
	.byte	0x8
	.long	0x7a
	.uleb128 0x2
	.long	.LASF12
	.byte	0x7
	.byte	0xc6
	.long	0x53
	.uleb128 0x3
	.long	.LASF13
	.byte	0x8
	.byte	0x7
	.uleb128 0x8
	.long	0xd6
	.long	0x7a
	.uleb128 0x9
	.long	0x61
	.byte	0x1f
	.byte	0x0
	.uleb128 0xa
	.long	0x2a2
	.long	.LASF44
	.byte	0xd8
	.byte	0x9
	.byte	0x2d
	.uleb128 0xb
	.long	.LASF14
	.byte	0xa
	.value	0x110
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF15
	.byte	0xa
	.value	0x115
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF16
	.byte	0xa
	.value	0x116
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.long	.LASF17
	.byte	0xa
	.value	0x117
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.long	.LASF18
	.byte	0xa
	.value	0x118
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.long	.LASF19
	.byte	0xa
	.value	0x119
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.long	.LASF20
	.byte	0xa
	.value	0x11a
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xb
	.long	.LASF21
	.byte	0xa
	.value	0x11b
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xb
	.long	.LASF22
	.byte	0xa
	.value	0x11c
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xb
	.long	.LASF23
	.byte	0xa
	.value	0x11e
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xb
	.long	.LASF24
	.byte	0xa
	.value	0x11f
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xb
	.long	.LASF25
	.byte	0xa
	.value	0x120
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xb
	.long	.LASF26
	.byte	0xa
	.value	0x122
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xb
	.long	.LASF27
	.byte	0xa
	.value	0x124
	.long	0x2e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xb
	.long	.LASF28
	.byte	0xa
	.value	0x126
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xb
	.long	.LASF29
	.byte	0xa
	.value	0x12a
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xb
	.long	.LASF30
	.byte	0xa
	.value	0x12c
	.long	0x96
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xb
	.long	.LASF31
	.byte	0xa
	.value	0x130
	.long	0x68
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xb
	.long	.LASF32
	.byte	0xa
	.value	0x131
	.long	0x88
	.byte	0x3
	.byte	0x23
	.uleb128 0x82
	.uleb128 0xb
	.long	.LASF33
	.byte	0xa
	.value	0x132
	.long	0x2ec
	.byte	0x3
	.byte	0x23
	.uleb128 0x83
	.uleb128 0xb
	.long	.LASF34
	.byte	0xa
	.value	0x136
	.long	0x2fc
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xb
	.long	.LASF35
	.byte	0xa
	.value	0x13f
	.long	0xa1
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xb
	.long	.LASF36
	.byte	0xa
	.value	0x148
	.long	0xac
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xb
	.long	.LASF37
	.byte	0xa
	.value	0x149
	.long	0xac
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xb
	.long	.LASF38
	.byte	0xa
	.value	0x14a
	.long	0xac
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xb
	.long	.LASF39
	.byte	0xa
	.value	0x14b
	.long	0xac
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xb
	.long	.LASF40
	.byte	0xa
	.value	0x14c
	.long	0x2d
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0xb
	.long	.LASF41
	.byte	0xa
	.value	0x14e
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xb
	.long	.LASF42
	.byte	0xa
	.value	0x150
	.long	0x302
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.byte	0x0
	.uleb128 0xc
	.long	.LASF43
	.byte	0xa
	.byte	0xb4
	.uleb128 0xa
	.long	0x2e0
	.long	.LASF45
	.byte	0x18
	.byte	0xa
	.byte	0xba
	.uleb128 0xd
	.long	.LASF46
	.byte	0xa
	.byte	0xbb
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF47
	.byte	0xa
	.byte	0xbc
	.long	0x2e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF48
	.byte	0xa
	.byte	0xc0
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x2a9
	.uleb128 0x5
	.byte	0x8
	.long	0xd6
	.uleb128 0x8
	.long	0x2fc
	.long	0x7a
	.uleb128 0x9
	.long	0x61
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x2a2
	.uleb128 0x8
	.long	0x312
	.long	0x7a
	.uleb128 0x9
	.long	0x61
	.byte	0x13
	.byte	0x0
	.uleb128 0x2
	.long	.LASF49
	.byte	0x3
	.byte	0x31
	.long	0x81
	.uleb128 0x2
	.long	.LASF50
	.byte	0x3
	.byte	0x34
	.long	0x46
	.uleb128 0x2
	.long	.LASF51
	.byte	0x3
	.byte	0x38
	.long	0x38
	.uleb128 0xe
	.long	0x33f
	.byte	0x1
	.uleb128 0xf
	.long	0xac
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x345
	.uleb128 0x6
	.long	0x312
	.uleb128 0x2
	.long	.LASF52
	.byte	0x5
	.byte	0x6e
	.long	0x355
	.uleb128 0x10
	.long	0x509
	.long	.LASF52
	.value	0xac0
	.byte	0x5
	.byte	0x6e
	.uleb128 0xd
	.long	.LASF53
	.byte	0x6
	.byte	0x5d
	.long	0xb4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF54
	.byte	0x6
	.byte	0x5f
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF55
	.byte	0x6
	.byte	0x60
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.long	.LASF56
	.byte	0x6
	.byte	0x61
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.long	.LASF57
	.byte	0x6
	.byte	0x62
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x11
	.string	"sg"
	.byte	0x6
	.byte	0x63
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.long	.LASF58
	.byte	0x6
	.byte	0x65
	.long	0xab4
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.long	.LASF59
	.byte	0x6
	.byte	0x66
	.long	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x11
	.string	"drv"
	.byte	0x6
	.byte	0x68
	.long	0xaba
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.long	.LASF60
	.byte	0x6
	.byte	0x69
	.long	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.long	.LASF61
	.byte	0x6
	.byte	0x6b
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.long	.LASF62
	.byte	0x6
	.byte	0x6c
	.long	0xac0
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xd
	.long	.LASF63
	.byte	0x6
	.byte	0x6e
	.long	0xad1
	.byte	0x3
	.byte	0x23
	.uleb128 0x244
	.uleb128 0xd
	.long	.LASF64
	.byte	0x6
	.byte	0x6f
	.long	0xad1
	.byte	0x3
	.byte	0x23
	.uleb128 0x644
	.uleb128 0xd
	.long	.LASF65
	.byte	0x6
	.byte	0x71
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xa44
	.uleb128 0xd
	.long	.LASF66
	.byte	0x6
	.byte	0x72
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xa48
	.uleb128 0xd
	.long	.LASF67
	.byte	0x6
	.byte	0x74
	.long	0x87a
	.byte	0x3
	.byte	0x23
	.uleb128 0xa50
	.uleb128 0xd
	.long	.LASF68
	.byte	0x6
	.byte	0x77
	.long	0xac
	.byte	0x3
	.byte	0x23
	.uleb128 0xa58
	.uleb128 0xd
	.long	.LASF69
	.byte	0x6
	.byte	0x7a
	.long	0x328
	.byte	0x3
	.byte	0x23
	.uleb128 0xa60
	.uleb128 0xd
	.long	.LASF70
	.byte	0x6
	.byte	0x7b
	.long	0x328
	.byte	0x3
	.byte	0x23
	.uleb128 0xa68
	.uleb128 0xd
	.long	.LASF71
	.byte	0x6
	.byte	0x7c
	.long	0x328
	.byte	0x3
	.byte	0x23
	.uleb128 0xa70
	.uleb128 0xd
	.long	.LASF72
	.byte	0x6
	.byte	0x7d
	.long	0x328
	.byte	0x3
	.byte	0x23
	.uleb128 0xa78
	.uleb128 0xd
	.long	.LASF73
	.byte	0x6
	.byte	0x81
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xa80
	.uleb128 0xd
	.long	.LASF74
	.byte	0x6
	.byte	0x81
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xa84
	.uleb128 0xd
	.long	.LASF75
	.byte	0x6
	.byte	0x81
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xa88
	.uleb128 0xd
	.long	.LASF76
	.byte	0x6
	.byte	0x81
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8c
	.uleb128 0xd
	.long	.LASF77
	.byte	0x6
	.byte	0x82
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xa90
	.uleb128 0xd
	.long	.LASF78
	.byte	0x6
	.byte	0x83
	.long	0xc6
	.byte	0x3
	.byte	0x23
	.uleb128 0xa94
	.uleb128 0xd
	.long	.LASF79
	.byte	0x6
	.byte	0x84
	.long	0x87a
	.byte	0x3
	.byte	0x23
	.uleb128 0xab8
	.byte	0x0
	.uleb128 0x2
	.long	.LASF80
	.byte	0x8
	.byte	0x5
	.long	0x514
	.uleb128 0x10
	.long	0x710
	.long	.LASF80
	.value	0x110
	.byte	0x8
	.byte	0x5
	.uleb128 0xd
	.long	.LASF81
	.byte	0x6
	.byte	0x22
	.long	0x6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF82
	.byte	0x6
	.byte	0x23
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF83
	.byte	0x6
	.byte	0x24
	.long	0x85a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.long	.LASF84
	.byte	0x6
	.byte	0x25
	.long	0x880
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.long	.LASF85
	.byte	0x6
	.byte	0x27
	.long	0x8ab
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.long	.LASF86
	.byte	0x6
	.byte	0x29
	.long	0x8d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.long	.LASF87
	.byte	0x6
	.byte	0x2a
	.long	0x8e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.long	.LASF88
	.byte	0x6
	.byte	0x2c
	.long	0x907
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.long	.LASF89
	.byte	0x6
	.byte	0x2d
	.long	0x8e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.long	.LASF90
	.byte	0x6
	.byte	0x2f
	.long	0x92c
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.long	.LASF91
	.byte	0x6
	.byte	0x30
	.long	0x947
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xd
	.long	.LASF92
	.byte	0x6
	.byte	0x31
	.long	0x95d
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xd
	.long	.LASF93
	.byte	0x6
	.byte	0x35
	.long	0x998
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.long	.LASF94
	.byte	0x6
	.byte	0x38
	.long	0x9c7
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.long	.LASF95
	.byte	0x6
	.byte	0x39
	.long	0x9d9
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xd
	.long	.LASF96
	.byte	0x6
	.byte	0x3a
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xd
	.long	.LASF97
	.byte	0x6
	.byte	0x3c
	.long	0x6f
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xd
	.long	.LASF98
	.byte	0x6
	.byte	0x3e
	.long	0x8ab
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xd
	.long	.LASF99
	.byte	0x6
	.byte	0x40
	.long	0x8d0
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xd
	.long	.LASF100
	.byte	0x6
	.byte	0x41
	.long	0x9f4
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xd
	.long	.LASF101
	.byte	0x6
	.byte	0x42
	.long	0xa0a
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xd
	.long	.LASF102
	.byte	0x6
	.byte	0x44
	.long	0x8d0
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xd
	.long	.LASF103
	.byte	0x6
	.byte	0x47
	.long	0xa2b
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xd
	.long	.LASF104
	.byte	0x6
	.byte	0x49
	.long	0x947
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0xd
	.long	.LASF105
	.byte	0x6
	.byte	0x4a
	.long	0x947
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xd
	.long	.LASF106
	.byte	0x6
	.byte	0x4c
	.long	0xa4c
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.uleb128 0xd
	.long	.LASF107
	.byte	0x6
	.byte	0x4d
	.long	0xa6d
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0xd
	.long	.LASF108
	.byte	0x6
	.byte	0x50
	.long	0x95d
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0xd
	.long	.LASF109
	.byte	0x6
	.byte	0x51
	.long	0x95d
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0xd
	.long	.LASF110
	.byte	0x6
	.byte	0x52
	.long	0xa88
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0xd
	.long	.LASF111
	.byte	0x6
	.byte	0x53
	.long	0xa88
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0xd
	.long	.LASF112
	.byte	0x6
	.byte	0x56
	.long	0xaa8
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.uleb128 0xd
	.long	.LASF113
	.byte	0x6
	.byte	0x58
	.long	0x98c
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0xd
	.long	.LASF79
	.byte	0x6
	.byte	0x59
	.long	0xaae
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.byte	0x0
	.uleb128 0xa
	.long	0x739
	.long	.LASF114
	.byte	0x10
	.byte	0x8
	.byte	0x14
	.uleb128 0xd
	.long	.LASF115
	.byte	0x8
	.byte	0x16
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF116
	.byte	0x8
	.byte	0x18
	.long	0xb4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x2
	.long	.LASF114
	.byte	0x8
	.byte	0x19
	.long	0x710
	.uleb128 0x10
	.long	0x7ab
	.long	.LASF117
	.value	0x198
	.byte	0x8
	.byte	0x1b
	.uleb128 0xd
	.long	.LASF118
	.byte	0x8
	.byte	0x1c
	.long	0x7ab
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF119
	.byte	0x8
	.byte	0x1f
	.long	0x7bb
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xd
	.long	.LASF120
	.byte	0x8
	.byte	0x20
	.long	0x31d
	.byte	0x3
	.byte	0x23
	.uleb128 0x180
	.uleb128 0xd
	.long	.LASF121
	.byte	0x8
	.byte	0x21
	.long	0x31d
	.byte	0x3
	.byte	0x23
	.uleb128 0x184
	.uleb128 0xd
	.long	.LASF122
	.byte	0x8
	.byte	0x22
	.long	0x31d
	.byte	0x3
	.byte	0x23
	.uleb128 0x188
	.uleb128 0xd
	.long	.LASF123
	.byte	0x8
	.byte	0x23
	.long	0x328
	.byte	0x3
	.byte	0x23
	.uleb128 0x190
	.byte	0x0
	.uleb128 0x8
	.long	0x7bb
	.long	0x7a
	.uleb128 0x9
	.long	0x61
	.byte	0x7f
	.byte	0x0
	.uleb128 0x8
	.long	0x7cb
	.long	0x7a
	.uleb128 0x9
	.long	0x61
	.byte	0xff
	.byte	0x0
	.uleb128 0x2
	.long	.LASF117
	.byte	0x8
	.byte	0x24
	.long	0x744
	.uleb128 0x2
	.long	.LASF124
	.byte	0x8
	.byte	0x50
	.long	0x7e1
	.uleb128 0xa
	.long	0x824
	.long	.LASF124
	.byte	0x20
	.byte	0x8
	.byte	0x50
	.uleb128 0x11
	.string	"bs"
	.byte	0x6
	.byte	0x88
	.long	0x87a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x11
	.string	"cb"
	.byte	0x6
	.byte	0x89
	.long	0x992
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF60
	.byte	0x6
	.byte	0x8a
	.long	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.long	.LASF79
	.byte	0x6
	.byte	0x8b
	.long	0x98c
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x2
	.long	.LASF125
	.byte	0x8
	.byte	0x51
	.long	0x82f
	.uleb128 0xe
	.long	0x840
	.byte	0x1
	.uleb128 0xf
	.long	0xac
	.uleb128 0xf
	.long	0x3f
	.byte	0x0
	.uleb128 0x12
	.long	0x85a
	.byte	0x1
	.long	0x3f
	.uleb128 0xf
	.long	0x33f
	.uleb128 0xf
	.long	0x3f
	.uleb128 0xf
	.long	0x6f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x840
	.uleb128 0x12
	.long	0x87a
	.byte	0x1
	.long	0x3f
	.uleb128 0xf
	.long	0x87a
	.uleb128 0xf
	.long	0x6f
	.uleb128 0xf
	.long	0x3f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x34a
	.uleb128 0x5
	.byte	0x8
	.long	0x860
	.uleb128 0x12
	.long	0x8a5
	.byte	0x1
	.long	0x3f
	.uleb128 0xf
	.long	0x87a
	.uleb128 0xf
	.long	0xb4
	.uleb128 0xf
	.long	0x8a5
	.uleb128 0xf
	.long	0x3f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x312
	.uleb128 0x5
	.byte	0x8
	.long	0x886
	.uleb128 0x12
	.long	0x8d0
	.byte	0x1
	.long	0x3f
	.uleb128 0xf
	.long	0x87a
	.uleb128 0xf
	.long	0xb4
	.uleb128 0xf
	.long	0x33f
	.uleb128 0xf
	.long	0x3f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x8b1
	.uleb128 0xe
	.long	0x8e2
	.byte	0x1
	.uleb128 0xf
	.long	0x87a
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x8d6
	.uleb128 0x12
	.long	0x907
	.byte	0x1
	.long	0x3f
	.uleb128 0xf
	.long	0x6f
	.uleb128 0xf
	.long	0xb4
	.uleb128 0xf
	.long	0x6f
	.uleb128 0xf
	.long	0x3f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x8e8
	.uleb128 0x12
	.long	0x92c
	.byte	0x1
	.long	0x3f
	.uleb128 0xf
	.long	0x87a
	.uleb128 0xf
	.long	0xb4
	.uleb128 0xf
	.long	0x3f
	.uleb128 0xf
	.long	0x4d
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x90d
	.uleb128 0x12
	.long	0x947
	.byte	0x1
	.long	0x3f
	.uleb128 0xf
	.long	0x87a
	.uleb128 0xf
	.long	0x6f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x932
	.uleb128 0x12
	.long	0x95d
	.byte	0x1
	.long	0x3f
	.uleb128 0xf
	.long	0x87a
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x94d
	.uleb128 0x12
	.long	0x98c
	.byte	0x1
	.long	0x98c
	.uleb128 0xf
	.long	0x87a
	.uleb128 0xf
	.long	0xb4
	.uleb128 0xf
	.long	0x8a5
	.uleb128 0xf
	.long	0x3f
	.uleb128 0xf
	.long	0x992
	.uleb128 0xf
	.long	0xac
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x7d6
	.uleb128 0x5
	.byte	0x8
	.long	0x824
	.uleb128 0x5
	.byte	0x8
	.long	0x963
	.uleb128 0x12
	.long	0x9c7
	.byte	0x1
	.long	0x98c
	.uleb128 0xf
	.long	0x87a
	.uleb128 0xf
	.long	0xb4
	.uleb128 0xf
	.long	0x33f
	.uleb128 0xf
	.long	0x3f
	.uleb128 0xf
	.long	0x992
	.uleb128 0xf
	.long	0xac
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x99e
	.uleb128 0xe
	.long	0x9d9
	.byte	0x1
	.uleb128 0xf
	.long	0x98c
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x9cd
	.uleb128 0x12
	.long	0x9f4
	.byte	0x1
	.long	0x3f
	.uleb128 0xf
	.long	0x87a
	.uleb128 0xf
	.long	0xb4
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x9df
	.uleb128 0x12
	.long	0xa0a
	.byte	0x1
	.long	0xb4
	.uleb128 0xf
	.long	0x87a
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x9fa
	.uleb128 0x12
	.long	0xa25
	.byte	0x1
	.long	0x3f
	.uleb128 0xf
	.long	0x87a
	.uleb128 0xf
	.long	0xa25
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x7cb
	.uleb128 0x5
	.byte	0x8
	.long	0xa10
	.uleb128 0x12
	.long	0xa46
	.byte	0x1
	.long	0x3f
	.uleb128 0xf
	.long	0x87a
	.uleb128 0xf
	.long	0xa46
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xa25
	.uleb128 0x5
	.byte	0x8
	.long	0xa31
	.uleb128 0x12
	.long	0xa67
	.byte	0x1
	.long	0x3f
	.uleb128 0xf
	.long	0x87a
	.uleb128 0xf
	.long	0xa67
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x739
	.uleb128 0x5
	.byte	0x8
	.long	0xa52
	.uleb128 0x12
	.long	0xa88
	.byte	0x1
	.long	0x3f
	.uleb128 0xf
	.long	0x87a
	.uleb128 0xf
	.long	0x3f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xa73
	.uleb128 0x12
	.long	0xaa8
	.byte	0x1
	.long	0x3f
	.uleb128 0xf
	.long	0x87a
	.uleb128 0xf
	.long	0x38
	.uleb128 0xf
	.long	0xac
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xa8e
	.uleb128 0x5
	.byte	0x8
	.long	0x514
	.uleb128 0x5
	.byte	0x8
	.long	0x333
	.uleb128 0x5
	.byte	0x8
	.long	0x509
	.uleb128 0x8
	.long	0xad1
	.long	0x312
	.uleb128 0x13
	.long	0x61
	.value	0x1ff
	.byte	0x0
	.uleb128 0x8
	.long	0xae2
	.long	0x7a
	.uleb128 0x13
	.long	0x61
	.value	0x3ff
	.byte	0x0
	.uleb128 0x14
	.long	0xb32
	.value	0x1c0
	.byte	0x1
	.byte	0x37
	.uleb128 0xd
	.long	.LASF126
	.byte	0x1
	.byte	0x32
	.long	0x31d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF127
	.byte	0x1
	.byte	0x33
	.long	0x31d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.long	.LASF128
	.byte	0x1
	.byte	0x34
	.long	0x31d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF129
	.byte	0x1
	.byte	0x35
	.long	0x328
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.long	.LASF130
	.byte	0x1
	.byte	0x36
	.long	0xb32
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x8
	.long	0xb43
	.long	0x7a
	.uleb128 0x13
	.long	0x61
	.value	0x1a3
	.byte	0x0
	.uleb128 0x15
	.long	0xb63
	.value	0x1c0
	.byte	0x1
	.byte	0x39
	.uleb128 0x16
	.long	.LASF131
	.byte	0x1
	.byte	0x37
	.long	0xae2
	.uleb128 0x16
	.long	.LASF130
	.byte	0x1
	.byte	0x38
	.long	0xb63
	.byte	0x0
	.uleb128 0x8
	.long	0xb74
	.long	0x7a
	.uleb128 0x13
	.long	0x61
	.value	0x1b7
	.byte	0x0
	.uleb128 0x10
	.long	0xbd6
	.long	.LASF132
	.value	0x208
	.byte	0x1
	.byte	0x29
	.uleb128 0xd
	.long	.LASF133
	.byte	0x1
	.byte	0x2a
	.long	0xc6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF77
	.byte	0x1
	.byte	0x2b
	.long	0xbd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.long	.LASF134
	.byte	0x1
	.byte	0x2c
	.long	0xbd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.long	.LASF135
	.byte	0x1
	.byte	0x2d
	.long	0x31d
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.long	.LASF136
	.byte	0x1
	.byte	0x2e
	.long	0x31d
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xd
	.long	.LASF137
	.byte	0x1
	.byte	0x39
	.long	0xb43
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.byte	0x0
	.uleb128 0x8
	.long	0xbe6
	.long	0x7a
	.uleb128 0x9
	.long	0x61
	.byte	0xf
	.byte	0x0
	.uleb128 0x14
	.long	0xc44
	.value	0x1b8
	.byte	0x1
	.byte	0x4c
	.uleb128 0xd
	.long	.LASF126
	.byte	0x1
	.byte	0x46
	.long	0x31d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF127
	.byte	0x1
	.byte	0x47
	.long	0x31d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.long	.LASF128
	.byte	0x1
	.byte	0x48
	.long	0x31d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF138
	.byte	0x1
	.byte	0x49
	.long	0x31d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.long	.LASF129
	.byte	0x1
	.byte	0x4a
	.long	0x328
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.long	.LASF130
	.byte	0x1
	.byte	0x4b
	.long	0xc44
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x8
	.long	0xc55
	.long	0x7a
	.uleb128 0x13
	.long	0x61
	.value	0x19f
	.byte	0x0
	.uleb128 0x15
	.long	0xc75
	.value	0x1b8
	.byte	0x1
	.byte	0x4e
	.uleb128 0x16
	.long	.LASF131
	.byte	0x1
	.byte	0x4c
	.long	0xbe6
	.uleb128 0x16
	.long	.LASF130
	.byte	0x1
	.byte	0x4d
	.long	0xb63
	.byte	0x0
	.uleb128 0x10
	.long	0xcd7
	.long	.LASF139
	.value	0x200
	.byte	0x1
	.byte	0x3d
	.uleb128 0xd
	.long	.LASF133
	.byte	0x1
	.byte	0x3e
	.long	0xc6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF77
	.byte	0x1
	.byte	0x3f
	.long	0xbd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.long	.LASF134
	.byte	0x1
	.byte	0x40
	.long	0xbd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.long	.LASF135
	.byte	0x1
	.byte	0x41
	.long	0x31d
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.long	.LASF136
	.byte	0x1
	.byte	0x42
	.long	0x31d
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xd
	.long	.LASF137
	.byte	0x1
	.byte	0x4e
	.long	0xc55
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.byte	0x0
	.uleb128 0xa
	.long	0xd45
	.long	.LASF140
	.byte	0x28
	.byte	0x1
	.byte	0x51
	.uleb128 0x11
	.string	"fd"
	.byte	0x1
	.byte	0x52
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF141
	.byte	0x1
	.byte	0x54
	.long	0xd45
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF142
	.byte	0x1
	.byte	0x55
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.long	.LASF143
	.byte	0x1
	.byte	0x57
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.long	.LASF144
	.byte	0x1
	.byte	0x59
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.long	.LASF145
	.byte	0x1
	.byte	0x5a
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.long	.LASF146
	.byte	0x1
	.byte	0x5b
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x31d
	.uleb128 0x2
	.long	.LASF140
	.byte	0x1
	.byte	0x5c
	.long	0xcd7
	.uleb128 0x17
	.long	0xe4c
	.long	.LASF151
	.byte	0x1
	.byte	0x5f
	.byte	0x1
	.long	0x3f
	.quad	.LFB97
	.quad	.LFE97
	.byte	0x1
	.byte	0x57
	.uleb128 0x18
	.string	"buf"
	.byte	0x1
	.byte	0x5e
	.long	0x33f
	.byte	0x1
	.byte	0x58
	.uleb128 0x19
	.long	.LASF147
	.byte	0x1
	.byte	0x5e
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x19
	.long	.LASF63
	.byte	0x1
	.byte	0x5e
	.long	0x6f
	.byte	0x1
	.byte	0x51
	.uleb128 0x1a
	.long	.LASF148
	.byte	0x1
	.byte	0x60
	.long	0xe4c
	.uleb128 0x1b
	.long	0xdd6
	.quad	.LBB2
	.quad	.LBE2
	.uleb128 0x1a
	.long	.LASF149
	.byte	0x1
	.byte	0x65
	.long	0x2d
	.uleb128 0x1a
	.long	.LASF150
	.byte	0x1
	.byte	0x65
	.long	0x2d
	.byte	0x0
	.uleb128 0x1b
	.long	0xe02
	.quad	.LBB3
	.quad	.LBE3
	.uleb128 0x1a
	.long	.LASF149
	.byte	0x1
	.byte	0x66
	.long	0x2d
	.uleb128 0x1a
	.long	.LASF150
	.byte	0x1
	.byte	0x66
	.long	0x2d
	.byte	0x0
	.uleb128 0x1b
	.long	0xe2e
	.quad	.LBB4
	.quad	.LBE4
	.uleb128 0x1a
	.long	.LASF149
	.byte	0x1
	.byte	0x67
	.long	0x2d
	.uleb128 0x1a
	.long	.LASF150
	.byte	0x1
	.byte	0x67
	.long	0x2d
	.byte	0x0
	.uleb128 0x1c
	.long	0xe57
	.quad	.LBB5
	.quad	.LBE5
	.uleb128 0x1d
	.long	0xe68
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xe52
	.uleb128 0x6
	.long	0xc75
	.uleb128 0x1e
	.long	0xe72
	.long	.LASF152
	.byte	0x2
	.byte	0x7c
	.byte	0x1
	.long	0x31d
	.byte	0x3
	.uleb128 0x1f
	.string	"v"
	.byte	0x2
	.byte	0x7c
	.long	0x31d
	.byte	0x0
	.uleb128 0x17
	.long	0x102c
	.long	.LASF153
	.byte	0x1
	.byte	0x70
	.byte	0x1
	.long	0x3f
	.quad	.LFB98
	.quad	.LFE98
	.byte	0x1
	.byte	0x57
	.uleb128 0x18
	.string	"bs"
	.byte	0x1
	.byte	0x6f
	.long	0x87a
	.byte	0x1
	.byte	0x5c
	.uleb128 0x19
	.long	.LASF63
	.byte	0x1
	.byte	0x6f
	.long	0x6f
	.byte	0x1
	.byte	0x53
	.uleb128 0x19
	.long	.LASF154
	.byte	0x1
	.byte	0x6f
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x20
	.string	"s"
	.byte	0x1
	.byte	0x71
	.long	0x102c
	.byte	0x1
	.byte	0x5d
	.uleb128 0x20
	.string	"fd"
	.byte	0x1
	.byte	0x72
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.uleb128 0x20
	.string	"i"
	.byte	0x1
	.byte	0x72
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.uleb128 0x21
	.long	.LASF148
	.byte	0x1
	.byte	0x73
	.long	0xc75
	.byte	0x3
	.byte	0x91
	.sleb128 528
	.uleb128 0x21
	.long	.LASF155
	.byte	0x1
	.byte	0x74
	.long	0xb74
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x22
	.long	.LASF175
	.byte	0x1
	.byte	0xa8
	.quad	.L27
	.uleb128 0x1b
	.long	0xf34
	.quad	.LBB6
	.quad	.LBE6
	.uleb128 0x1a
	.long	.LASF149
	.byte	0x1
	.byte	0x85
	.long	0x2d
	.uleb128 0x1a
	.long	.LASF150
	.byte	0x1
	.byte	0x85
	.long	0x2d
	.byte	0x0
	.uleb128 0x1b
	.long	0xf60
	.quad	.LBB7
	.quad	.LBE7
	.uleb128 0x1a
	.long	.LASF149
	.byte	0x1
	.byte	0x86
	.long	0x2d
	.uleb128 0x1a
	.long	.LASF150
	.byte	0x1
	.byte	0x86
	.long	0x2d
	.byte	0x0
	.uleb128 0x1b
	.long	0xf8c
	.quad	.LBB8
	.quad	.LBE8
	.uleb128 0x1a
	.long	.LASF149
	.byte	0x1
	.byte	0x87
	.long	0x2d
	.uleb128 0x1a
	.long	.LASF150
	.byte	0x1
	.byte	0x87
	.long	0x2d
	.byte	0x0
	.uleb128 0x23
	.long	0xfad
	.long	0xe57
	.quad	.LBB9
	.quad	.LBE9
	.uleb128 0x1d
	.long	0xe68
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x23
	.long	0xfce
	.long	0x1032
	.quad	.LBB10
	.quad	.LBE10
	.uleb128 0x1d
	.long	0x1043
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x23
	.long	0xfed
	.long	0xe57
	.quad	.LBB11
	.quad	.LBE11
	.uleb128 0x24
	.long	0xe68
	.byte	0x0
	.uleb128 0x23
	.long	0x100e
	.long	0xe57
	.quad	.LBB12
	.quad	.LBE12
	.uleb128 0x1d
	.long	0xe68
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x1c
	.long	0x1032
	.quad	.LBB13
	.quad	.LBE13
	.uleb128 0x1d
	.long	0x1043
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xd4b
	.uleb128 0x1e
	.long	0x104d
	.long	.LASF156
	.byte	0x2
	.byte	0x7d
	.byte	0x1
	.long	0x328
	.byte	0x3
	.uleb128 0x1f
	.string	"v"
	.byte	0x2
	.byte	0x7d
	.long	0x328
	.byte	0x0
	.uleb128 0x17
	.long	0x111a
	.long	.LASF157
	.byte	0x1
	.byte	0xdb
	.byte	0x1
	.long	0x3f
	.quad	.LFB100
	.quad	.LFE100
	.byte	0x1
	.byte	0x57
	.uleb128 0x18
	.string	"bs"
	.byte	0x1
	.byte	0xd9
	.long	0x87a
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x19
	.long	.LASF158
	.byte	0x1
	.byte	0xd9
	.long	0xb4
	.byte	0x1
	.byte	0x5f
	.uleb128 0x18
	.string	"buf"
	.byte	0x1
	.byte	0xda
	.long	0x8a5
	.byte	0x1
	.byte	0x5e
	.uleb128 0x19
	.long	.LASF159
	.byte	0x1
	.byte	0xda
	.long	0x3f
	.byte	0x1
	.byte	0x5d
	.uleb128 0x20
	.string	"s"
	.byte	0x1
	.byte	0xdc
	.long	0x102c
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x25
	.string	"ret"
	.byte	0x1
	.byte	0xdd
	.long	0x3f
	.uleb128 0x1c
	.long	0x111a
	.quad	.LBB14
	.quad	.LBE14
	.uleb128 0x24
	.long	0x112b
	.uleb128 0x24
	.long	0x1135
	.uleb128 0x26
	.quad	.LBB15
	.quad	.LBE15
	.uleb128 0x27
	.long	0x1140
	.uleb128 0x27
	.long	0x1149
	.uleb128 0x27
	.long	0x1154
	.uleb128 0x28
	.long	0x115f
	.byte	0x1
	.byte	0x56
	.uleb128 0x28
	.long	0x116a
	.byte	0x1
	.byte	0x54
	.uleb128 0x28
	.long	0x1175
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x28
	.long	0x1180
	.byte	0x2
	.byte	0x91
	.sleb128 39
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
	.long	0x118c
	.long	.LASF160
	.byte	0x1
	.byte	0xae
	.byte	0x1
	.long	0x3f
	.byte	0x3
	.uleb128 0x1f
	.string	"bs"
	.byte	0x1
	.byte	0xad
	.long	0x87a
	.uleb128 0x29
	.long	.LASF158
	.byte	0x1
	.byte	0xad
	.long	0xb4
	.uleb128 0x25
	.string	"s"
	.byte	0x1
	.byte	0xaf
	.long	0x102c
	.uleb128 0x1a
	.long	.LASF161
	.byte	0x1
	.byte	0xb0
	.long	0xb4
	.uleb128 0x1a
	.long	.LASF162
	.byte	0x1
	.byte	0xb1
	.long	0xb4
	.uleb128 0x1a
	.long	.LASF163
	.byte	0x1
	.byte	0xb1
	.long	0xb4
	.uleb128 0x1a
	.long	.LASF164
	.byte	0x1
	.byte	0xb1
	.long	0xb4
	.uleb128 0x1a
	.long	.LASF165
	.byte	0x1
	.byte	0xb1
	.long	0xb4
	.uleb128 0x1a
	.long	.LASF166
	.byte	0x1
	.byte	0xb2
	.long	0x7a
	.byte	0x0
	.uleb128 0x2a
	.long	0x11c2
	.long	.LASF167
	.byte	0x1
	.byte	0xf0
	.byte	0x1
	.quad	.LFB101
	.quad	.LFE101
	.byte	0x1
	.byte	0x57
	.uleb128 0x18
	.string	"bs"
	.byte	0x1
	.byte	0xef
	.long	0x87a
	.byte	0x1
	.byte	0x55
	.uleb128 0x20
	.string	"s"
	.byte	0x1
	.byte	0xf1
	.long	0x102c
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x2b
	.long	.LASF168
	.byte	0x9
	.byte	0x91
	.long	0x2e6
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.long	.LASF169
	.byte	0x9
	.byte	0x92
	.long	0x2e6
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.long	.LASF170
	.byte	0x1
	.byte	0xf6
	.long	0x509
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	bdrv_bochs
	.uleb128 0x2c
	.long	.LASF171
	.byte	0x6
	.byte	0x94
	.long	0x87a
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	bdrv_first
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x17
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
	.uleb128 0x16
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.long	0x1209
	.long	0x11dc
	.string	"bdrv_bochs"
	.long	0x11f2
	.string	"bdrv_first"
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
.LASF76:
	.string	"translation"
.LASF9:
	.string	"size_t"
.LASF153:
	.string	"bochs_open"
.LASF150:
	.string	"__s2_len"
.LASF53:
	.string	"total_sectors"
.LASF91:
	.string	"bdrv_set_key"
.LASF122:
	.string	"date_nsec"
.LASF25:
	.string	"_IO_save_end"
.LASF98:
	.string	"bdrv_pread"
.LASF73:
	.string	"cyls"
.LASF105:
	.string	"bdrv_snapshot_delete"
.LASF140:
	.string	"BDRVBochsState"
.LASF18:
	.string	"_IO_write_base"
.LASF34:
	.string	"_lock"
.LASF144:
	.string	"bitmap_blocks"
.LASF127:
	.string	"bitmap"
.LASF165:
	.string	"block_offset"
.LASF23:
	.string	"_IO_save_base"
.LASF83:
	.string	"bdrv_probe"
.LASF114:
	.string	"BlockDriverInfo"
.LASF31:
	.string	"_cur_column"
.LASF99:
	.string	"bdrv_pwrite"
.LASF156:
	.string	"le64_to_cpu"
.LASF41:
	.string	"_mode"
.LASF75:
	.string	"secs"
.LASF55:
	.string	"removable"
.LASF137:
	.string	"extra"
.LASF132:
	.string	"bochs_header_v1"
.LASF123:
	.string	"vm_clock_nsec"
.LASF2:
	.string	"long int"
.LASF64:
	.string	"backing_file"
.LASF45:
	.string	"_IO_marker"
.LASF60:
	.string	"opaque"
.LASF164:
	.string	"bitmap_offset"
.LASF171:
	.string	"bdrv_first"
.LASF120:
	.string	"vm_state_size"
.LASF113:
	.string	"free_aiocb"
.LASF7:
	.string	"signed char"
.LASF44:
	.string	"_IO_FILE"
.LASF170:
	.string	"bdrv_bochs"
.LASF69:
	.string	"rd_bytes"
.LASF67:
	.string	"backing_hd"
.LASF6:
	.string	"unsigned char"
.LASF109:
	.string	"bdrv_media_changed"
.LASF52:
	.string	"BlockDriverState"
.LASF146:
	.string	"extent_size"
.LASF100:
	.string	"bdrv_truncate"
.LASF66:
	.string	"media_changed"
.LASF5:
	.string	"char"
.LASF126:
	.string	"catalog"
.LASF88:
	.string	"bdrv_create"
.LASF167:
	.string	"bochs_close"
.LASF97:
	.string	"protocol_name"
.LASF43:
	.string	"_IO_lock_t"
.LASF95:
	.string	"bdrv_aio_cancel"
.LASF131:
	.string	"redolog"
.LASF63:
	.string	"filename"
.LASF134:
	.string	"subtype"
.LASF154:
	.string	"flags"
.LASF104:
	.string	"bdrv_snapshot_goto"
.LASF15:
	.string	"_IO_read_ptr"
.LASF87:
	.string	"bdrv_close"
.LASF157:
	.string	"bochs_read"
.LASF48:
	.string	"_pos"
.LASF168:
	.string	"stdin"
.LASF169:
	.string	"stdout"
.LASF149:
	.string	"__s1_len"
.LASF141:
	.string	"catalog_bitmap"
.LASF26:
	.string	"_markers"
.LASF72:
	.string	"wr_ops"
.LASF166:
	.string	"bitmap_entry"
.LASF78:
	.string	"device_name"
.LASF74:
	.string	"heads"
.LASF139:
	.string	"bochs_header"
.LASF129:
	.string	"disk"
.LASF35:
	.string	"_offset"
.LASF89:
	.string	"bdrv_flush"
.LASF86:
	.string	"bdrv_write"
.LASF143:
	.string	"data_offset"
.LASF111:
	.string	"bdrv_set_locked"
.LASF125:
	.string	"BlockDriverCompletionFunc"
.LASF0:
	.string	"long unsigned int"
.LASF147:
	.string	"buf_size"
.LASF29:
	.string	"_flags2"
.LASF17:
	.string	"_IO_read_base"
.LASF42:
	.string	"_unused2"
.LASF163:
	.string	"extent_offset"
.LASF62:
	.string	"boot_sector_data"
.LASF136:
	.string	"header"
.LASF82:
	.string	"instance_size"
.LASF116:
	.string	"vm_state_offset"
.LASF30:
	.string	"_old_offset"
.LASF160:
	.string	"seek_to_sector"
.LASF57:
	.string	"encrypted"
.LASF3:
	.string	"long long int"
.LASF158:
	.string	"sector_num"
.LASF20:
	.string	"_IO_write_end"
.LASF54:
	.string	"read_only"
.LASF162:
	.string	"extent_index"
.LASF92:
	.string	"bdrv_make_empty"
.LASF21:
	.string	"_IO_buf_base"
.LASF46:
	.string	"_next"
.LASF1:
	.string	"unsigned int"
.LASF102:
	.string	"bdrv_write_compressed"
.LASF101:
	.string	"bdrv_getlength"
.LASF172:
	.string	"GNU C 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
.LASF85:
	.string	"bdrv_read"
.LASF59:
	.string	"change_opaque"
.LASF71:
	.string	"rd_ops"
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
.LASF107:
	.string	"bdrv_get_info"
.LASF106:
	.string	"bdrv_snapshot_list"
.LASF14:
	.string	"_flags"
.LASF161:
	.string	"offset"
.LASF77:
	.string	"type"
.LASF79:
	.string	"next"
.LASF70:
	.string	"wr_bytes"
.LASF90:
	.string	"bdrv_is_allocated"
.LASF13:
	.string	"long long unsigned int"
.LASF49:
	.string	"uint8_t"
.LASF10:
	.string	"__off_t"
.LASF27:
	.string	"_chain"
.LASF155:
	.string	"header_v1"
.LASF84:
	.string	"bdrv_open"
.LASF58:
	.string	"change_cb"
.LASF145:
	.string	"extent_blocks"
.LASF151:
	.string	"bochs_probe"
.LASF108:
	.string	"bdrv_is_inserted"
.LASF135:
	.string	"version"
.LASF24:
	.string	"_IO_backup_base"
.LASF33:
	.string	"_shortbuf"
.LASF117:
	.string	"QEMUSnapshotInfo"
.LASF11:
	.string	"__off64_t"
.LASF96:
	.string	"aiocb_size"
.LASF118:
	.string	"id_str"
.LASF174:
	.string	"/home/remco/Projects/Argos/src"
.LASF133:
	.string	"magic"
.LASF110:
	.string	"bdrv_eject"
.LASF22:
	.string	"_IO_buf_end"
.LASF119:
	.string	"name"
.LASF93:
	.string	"bdrv_aio_read"
.LASF61:
	.string	"boot_sector_enabled"
.LASF8:
	.string	"short int"
.LASF68:
	.string	"sync_aiocb"
.LASF51:
	.string	"uint64_t"
.LASF32:
	.string	"_vtable_offset"
.LASF112:
	.string	"bdrv_ioctl"
.LASF173:
	.string	"block-bochs.c"
.LASF159:
	.string	"nb_sectors"
.LASF94:
	.string	"bdrv_aio_write"
.LASF152:
	.string	"le32_to_cpu"
.LASF148:
	.string	"bochs"
.LASF16:
	.string	"_IO_read_end"
.LASF80:
	.string	"BlockDriver"
.LASF130:
	.string	"padding"
.LASF103:
	.string	"bdrv_snapshot_create"
.LASF121:
	.string	"date_sec"
.LASF50:
	.string	"uint32_t"
.LASF56:
	.string	"locked"
.LASF128:
	.string	"extent"
.LASF28:
	.string	"_fileno"
.LASF65:
	.string	"is_temporary"
.LASF138:
	.string	"reserved"
.LASF81:
	.string	"format_name"
.LASF4:
	.string	"short unsigned int"
.LASF115:
	.string	"cluster_size"
.LASF175:
	.string	"fail"
.LASF124:
	.string	"BlockDriverAIOCB"
.LASF19:
	.string	"_IO_write_ptr"
.LASF12:
	.string	"int64_t"
.LASF142:
	.string	"catalog_size"
	.section	.note.GNU-stack,"",@progbits
	.ident	"GCC: (GNU) 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
