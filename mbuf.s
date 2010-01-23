	.file	"mbuf.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
.globl mbuf_max
	.bss
	.align 4
	.type	mbuf_max, @object
	.size	mbuf_max, 4
mbuf_max:
	.zero	4
.globl mbuf_alloced
	.align 4
	.type	mbuf_alloced, @object
	.size	mbuf_alloced, 4
mbuf_alloced:
	.zero	4
	.text
	.p2align 4,,15
.globl m_init
	.type	m_init, @function
m_init:
.LFB47:
	.file 1 "slirp/mbuf.c"
	.loc 1 35 0
	.loc 1 36 0
	movq	$m_freelist, m_freelist+8(%rip)
	movq	$m_freelist, m_freelist(%rip)
	.loc 1 37 0
	movq	$m_usedlist, m_usedlist+8(%rip)
	movq	$m_usedlist, m_usedlist(%rip)
	ret
.LFE47:
	.size	m_init, .-m_init
	.p2align 4,,15
.globl m_get
	.type	m_get, @function
m_get:
.LFB48:
	.loc 1 50 0
	pushq	%rbp
.LCFI0:
	.loc 1 52 0
	xorl	%ebp, %ebp
	.loc 1 50 0
	pushq	%rbx
.LCFI1:
	subq	$8, %rsp
.LCFI2:
	.loc 1 56 0
	movq	m_freelist(%rip), %rax
	cmpq	$m_freelist, %rax
	je	.L10
	.loc 1 66 0
	movq	%rax, %rdi
	.loc 1 65 0
	movq	%rax, %rbx
	.loc 1 66 0
	call	slirp_remque
.L8:
	.loc 1 70 0
	movl	$m_usedlist, %esi
	movq	%rbx, %rdi
	.loc 1 71 0
	orl	$4, %ebp
	.loc 1 70 0
	call	slirp_insque
	.loc 1 75 0
	leaq	64(%rbx), %rax
	.loc 1 71 0
	movl	%ebp, 32(%rbx)
	.loc 1 74 0
	movl	$1562, 36(%rbx)
	.loc 1 76 0
	movl	$0, 56(%rbx)
	.loc 1 77 0
	movq	$0, 16(%rbx)
	.loc 1 75 0
	movq	%rax, 48(%rbx)
	.loc 1 78 0
	movq	$0, 24(%rbx)
.L5:
	.loc 1 82 0
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.p2align 4,,7
.L10:
	.loc 1 57 0
	movl	$1626, %edi
	call	malloc
	.loc 1 58 0
	testq	%rax, %rax
	.loc 1 57 0
	movq	%rax, %rbx
	.loc 1 58 0
	je	.L5
	.loc 1 59 0
	movl	mbuf_alloced(%rip), %edx
	.loc 1 61 0
	movl	$8, %eax
	.loc 1 59 0
	incl	%edx
	.loc 1 61 0
	cmpl	$31, %edx
	.loc 1 59 0
	movl	%edx, mbuf_alloced(%rip)
	.loc 1 61 0
	cmovge	%eax, %ebp
	.loc 1 62 0
	cmpl	mbuf_max(%rip), %edx
	jle	.L8
	.loc 1 63 0
	movl	%edx, mbuf_max(%rip)
	jmp	.L8
.LFE48:
	.size	m_get, .-m_get
	.p2align 4,,15
.globl m_free
	.type	m_free, @function
m_free:
.LFB49:
	.loc 1 87 0
	.loc 1 92 0
	testq	%rdi, %rdi
	.loc 1 87 0
	pushq	%rbx
.LCFI3:
	.loc 1 87 0
	movq	%rdi, %rbx
	.loc 1 92 0
	je	.L11
	.loc 1 94 0
	movl	32(%rdi), %eax
	testb	$4, %al
	jne	.L18
.L13:
	.loc 1 98 0
	testb	$1, %al
	jne	.L19
.L14:
	.loc 1 104 0
	testb	$8, %al
	.p2align 4,,3
	jne	.L20
	.loc 1 107 0
	testb	$2, %al
	.p2align 4,,5
	je	.L21
.L11:
	.loc 1 112 0
	popq	%rbx
	.p2align 4,,6
	ret
	.p2align 4,,7
.L20:
	.loc 1 105 0
	movq	%rbx, %rdi
	.p2align 4,,7
	call	free
	.loc 1 106 0
	decl	mbuf_alloced(%rip)
	.loc 1 112 0
	popq	%rbx
	ret
	.p2align 4,,7
.L19:
	.loc 1 99 0
	movq	64(%rbx), %rdi
	call	free
	movl	32(%rbx), %eax
	jmp	.L14
	.p2align 4,,7
.L18:
	.loc 1 95 0
	call	slirp_remque
	movl	32(%rbx), %eax
	.p2align 4,,4
	jmp	.L13
	.p2align 4,,7
.L21:
	.loc 1 108 0
	movq	%rbx, %rdi
	movl	$m_freelist, %esi
	call	slirp_insque
	.loc 1 109 0
	movl	$2, 32(%rbx)
	.loc 1 112 0
	popq	%rbx
	ret
.LFE49:
	.size	m_free, .-m_free
	.p2align 4,,15
.globl m_inc
	.type	m_inc, @function
m_inc:
.LFB51:
	.loc 1 141 0
	movq	%rbx, -32(%rsp)
.LCFI4:
	movq	%r12, -16(%rsp)
.LCFI5:
	movq	%rdi, %rbx
	movq	%rbp, -24(%rsp)
.LCFI6:
	movq	%r13, -8(%rsp)
.LCFI7:
	subq	$40, %rsp
.LCFI8:
	.loc 1 145 0
	cmpl	%esi, 36(%rdi)
	.loc 1 141 0
	movl	%esi, %r12d
	.loc 1 145 0
	jg	.L22
	.loc 1 147 0
	testb	$1, 32(%rdi)
	je	.L24
	.loc 1 148 0
	movq	48(%rdi), %rax
	movq	64(%rdi), %rdi
	.loc 1 149 0
	movslq	%esi,%rsi
	.loc 1 148 0
	movl	%eax, %r13d
	subl	%edi, %r13d
	.loc 1 149 0
	call	realloc
	.loc 1 153 0
	movslq	%r13d,%rdx
	.loc 1 149 0
	movq	%rax, 64(%rbx)
	.loc 1 168 0
	movl	%r12d, 36(%rbx)
	.loc 1 153 0
	addq	%rdx, %rax
	movq	%rax, 48(%rbx)
	.p2align 4,,7
.L22:
	.loc 1 170 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	movq	24(%rsp), %r12
	movq	32(%rsp), %r13
	addq	$40, %rsp
	ret
	.p2align 4,,7
.L24:
.LBB2:
	.loc 1 156 0
	movq	48(%rdi), %rax
	subl	%edi, %eax
	.loc 1 157 0
	movslq	%esi,%rdi
	.loc 1 156 0
	leal	-64(%rax), %r13d
	.loc 1 157 0
	call	malloc
	.loc 1 161 0
	movslq	36(%rbx),%rdx
	leaq	64(%rbx), %rsi
	movq	%rax, %rdi
	.loc 1 157 0
	movq	%rax, %rbp
	.loc 1 161 0
	call	memcpy
	.loc 1 165 0
	orl	$1, 32(%rbx)
	.loc 1 164 0
	movslq	%r13d,%rax
	.loc 1 163 0
	movq	%rbp, 64(%rbx)
	.loc 1 164 0
	leaq	(%rbp,%rax), %rax
.LBE2:
	.loc 1 168 0
	movl	%r12d, 36(%rbx)
.LBB3:
	.loc 1 164 0
	movq	%rax, 48(%rbx)
	jmp	.L22
.LBE3:
.LFE51:
	.size	m_inc, .-m_inc
	.p2align 4,,15
.globl m_cat
	.type	m_cat, @function
m_cat:
.LFB50:
	.loc 1 122 0
	pushq	%rbp
.LCFI9:
	movq	%rsi, %rbp
	pushq	%rbx
.LCFI10:
	movq	%rdi, %rbx
	subq	$8, %rsp
.LCFI11:
	.loc 1 126 0
	testb	$1, 32(%rbx)
	movl	56(%rdi), %edi
	movl	56(%rsi), %edx
	movslq	%edi,%r8
	movslq	%edx,%r9
	je	.L28
	movl	36(%rbx), %esi
	movq	48(%rbx), %rcx
	movslq	%esi,%rax
	addq	64(%rbx), %rax
	subq	%rcx, %rax
	subq	%r8, %rax
.L30:
	cmpq	%r9, %rax
	jge	.L27
	.loc 1 127 0
	movq	%rbx, %rdi
	addl	$4096, %esi
	call	m_inc
	movl	56(%rbx), %edi
	movl	56(%rbp), %edx
	movq	48(%rbx), %rcx
.L27:
	.loc 1 129 0
	movq	48(%rbp), %rsi
	movslq	%edi,%rdi
	movslq	%edx,%rdx
	leaq	(%rcx,%rdi), %rdi
	call	memcpy
	.loc 1 130 0
	movl	56(%rbp), %eax
	addl	%eax, 56(%rbx)
	.loc 1 132 0
	addq	$8, %rsp
	popq	%rbx
	movq	%rbp, %rdi
	popq	%rbp
	jmp	m_free
	.p2align 4,,7
.L28:
	.loc 1 126 0
	movl	36(%rbx), %esi
	movq	48(%rbx), %rcx
	movslq	%esi,%rax
	addq	%rbx, %rax
	subq	%rcx, %rax
	subq	%r8, %rax
	addq	$64, %rax
	jmp	.L30
.LFE50:
	.size	m_cat, .-m_cat
	.p2align 4,,15
.globl m_adj
	.type	m_adj, @function
m_adj:
.LFB52:
	.loc 1 178 0
	.loc 1 179 0
	testq	%rdi, %rdi
	je	.L31
	.loc 1 181 0
	testl	%esi, %esi
	js	.L33
	.loc 1 183 0
	movslq	%esi,%rax
	.loc 1 184 0
	subl	%esi, 56(%rdi)
	.loc 1 183 0
	addq	%rax, 48(%rdi)
	.loc 1 184 0
	ret
	.p2align 4,,7
.L33:
	.loc 1 188 0
	addl	%esi, 56(%rdi)
.L31:
	rep ; ret
.LFE52:
	.size	m_adj, .-m_adj
	.p2align 4,,15
.globl m_copy
	.type	m_copy, @function
m_copy:
.LFB53:
	.loc 1 200 0
	pushq	%rbp
.LCFI12:
	movq	%rsi, %r9
	movl	%edx, %r8d
	movl	%ecx, %ebp
	.loc 1 201 0
	movslq	%ecx,%rdx
	.loc 1 200 0
	pushq	%rbx
.LCFI13:
	movq	%rdi, %rbx
	subq	$8, %rsp
.LCFI14:
	.loc 1 201 0
	testb	$1, 32(%rbx)
	movl	56(%rdi), %edi
	movslq	%edi,%rsi
	je	.L37
	movslq	36(%rbx),%rax
	movq	48(%rbx), %rcx
	addq	64(%rbx), %rax
	subq	%rcx, %rax
	subq	%rsi, %rax
	cmpq	%rax, %rdx
	jle	.L36
.L40:
	.loc 1 207 0
	addq	$8, %rsp
	.loc 1 202 0
	movl	$-1, %eax
	.loc 1 207 0
	popq	%rbx
	popq	%rbp
	ret
	.p2align 4,,7
.L37:
	.loc 1 201 0
	movslq	36(%rbx),%rax
	movq	48(%rbx), %rcx
	addq	%rbx, %rax
	subq	%rcx, %rax
	subq	%rsi, %rax
	addq	$64, %rax
	cmpq	%rax, %rdx
	jg	.L40
.L36:
	.loc 1 204 0
	movslq	%r8d,%rsi
	addq	48(%r9), %rsi
	movslq	%edi,%rdi
	leaq	(%rcx,%rdi), %rdi
	call	memcpy
	.loc 1 205 0
	addl	%ebp, 56(%rbx)
	.loc 1 207 0
	addq	$8, %rsp
	.loc 1 206 0
	xorl	%eax, %eax
	.loc 1 207 0
	popq	%rbx
	popq	%rbp
	ret
.LFE53:
	.size	m_copy, .-m_copy
	.p2align 4,,15
.globl dtom
	.type	dtom, @function
dtom:
.LFB54:
	.loc 1 218 0
	.loc 1 225 0
	movq	m_usedlist(%rip), %rdx
	jmp	.L52
	.p2align 4,,7
.L56:
	.loc 1 227 0
	movq	64(%rdx), %rcx
	cmpq	%rdi, %rcx
	ja	.L44
	movslq	36(%rdx),%rax
	leaq	(%rcx,%rax), %rax
	.loc 1 230 0
	cmpq	%rdi, %rax
	ja	.L55
	.p2align 4,,7
.L44:
	.loc 1 225 0
	movq	(%rdx), %rdx
.L52:
	cmpq	$m_usedlist, %rdx
	je	.L51
	.loc 1 226 0
	testb	$1, 32(%rdx)
	jne	.L56
	.loc 1 230 0
	leaq	64(%rdx), %rax
	cmpq	%rdi, %rax
	ja	.L44
	movslq	36(%rdx),%rax
	leaq	64(%rax,%rdx), %rax
	cmpq	%rdi, %rax
	jbe	.L44
.L55:
	.loc 1 231 0
	movq	%rdx, %rax
	ret
.L51:
	.loc 1 237 0
	xorl	%eax, %eax
	.loc 1 238 0
	.p2align 4,,1
	ret
.LFE54:
	.size	dtom, .-dtom
	.comm	m_freelist,72,32
	.comm	m_usedlist,72,32
	.comm	mbutl,8,8
	.comm	mclrefcnt,8,8
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
	.quad	.LFB47
	.quad	.LFE47-.LFB47
	.align 8
.LEFDE0:
.LSFDE2:
	.long	.LEFDE2-.LASFDE2
.LASFDE2:
	.long	.Lframe0
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.byte	0x4
	.long	.LCFI0-.LFB48
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI1-.LCFI0
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI2-.LCFI1
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE2:
.LSFDE4:
	.long	.LEFDE4-.LASFDE4
.LASFDE4:
	.long	.Lframe0
	.quad	.LFB49
	.quad	.LFE49-.LFB49
	.byte	0x4
	.long	.LCFI3-.LFB49
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.quad	.LFB51
	.quad	.LFE51-.LFB51
	.byte	0x4
	.long	.LCFI5-.LFB51
	.byte	0x8c
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI8-.LCFI5
	.byte	0xe
	.uleb128 0x30
	.byte	0x8d
	.uleb128 0x2
	.byte	0x86
	.uleb128 0x4
	.align 8
.LEFDE6:
.LSFDE8:
	.long	.LEFDE8-.LASFDE8
.LASFDE8:
	.long	.Lframe0
	.quad	.LFB50
	.quad	.LFE50-.LFB50
	.byte	0x4
	.long	.LCFI9-.LFB50
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI10-.LCFI9
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI11-.LCFI10
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE8:
.LSFDE10:
	.long	.LEFDE10-.LASFDE10
.LASFDE10:
	.long	.Lframe0
	.quad	.LFB52
	.quad	.LFE52-.LFB52
	.align 8
.LEFDE10:
.LSFDE12:
	.long	.LEFDE12-.LASFDE12
.LASFDE12:
	.long	.Lframe0
	.quad	.LFB53
	.quad	.LFE53-.LFB53
	.byte	0x4
	.long	.LCFI12-.LFB53
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
.LEFDE12:
.LSFDE14:
	.long	.LEFDE14-.LASFDE14
.LASFDE14:
	.long	.Lframe0
	.quad	.LFB54
	.quad	.LFE54-.LFB54
	.align 8
.LEFDE14:
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
	.quad	.LFB47
	.quad	.LFE47-.LFB47
	.align 8
.LEFDE1:
.LSFDE3:
	.long	.LEFDE3-.LASFDE3
.LASFDE3:
	.long	.LASFDE3-.Lframe1
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.byte	0x4
	.long	.LCFI0-.LFB48
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI1-.LCFI0
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI2-.LCFI1
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE3:
.LSFDE5:
	.long	.LEFDE5-.LASFDE5
.LASFDE5:
	.long	.LASFDE5-.Lframe1
	.quad	.LFB49
	.quad	.LFE49-.LFB49
	.byte	0x4
	.long	.LCFI3-.LFB49
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE5:
.LSFDE7:
	.long	.LEFDE7-.LASFDE7
.LASFDE7:
	.long	.LASFDE7-.Lframe1
	.quad	.LFB51
	.quad	.LFE51-.LFB51
	.byte	0x4
	.long	.LCFI5-.LFB51
	.byte	0x8c
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI8-.LCFI5
	.byte	0xe
	.uleb128 0x30
	.byte	0x8d
	.uleb128 0x2
	.byte	0x86
	.uleb128 0x4
	.align 8
.LEFDE7:
.LSFDE9:
	.long	.LEFDE9-.LASFDE9
.LASFDE9:
	.long	.LASFDE9-.Lframe1
	.quad	.LFB50
	.quad	.LFE50-.LFB50
	.byte	0x4
	.long	.LCFI9-.LFB50
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI10-.LCFI9
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI11-.LCFI10
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE9:
.LSFDE11:
	.long	.LEFDE11-.LASFDE11
.LASFDE11:
	.long	.LASFDE11-.Lframe1
	.quad	.LFB52
	.quad	.LFE52-.LFB52
	.align 8
.LEFDE11:
.LSFDE13:
	.long	.LEFDE13-.LASFDE13
.LASFDE13:
	.long	.LASFDE13-.Lframe1
	.quad	.LFB53
	.quad	.LFE53-.LFB53
	.byte	0x4
	.long	.LCFI12-.LFB53
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
.LEFDE13:
.LSFDE15:
	.long	.LEFDE15-.LASFDE15
.LASFDE15:
	.long	.LASFDE15-.Lframe1
	.quad	.LFB54
	.quad	.LFE54-.LFB54
	.align 8
.LEFDE15:
	.file 2 "/home/remco/Projects/Argos/src/slirp/udp.h"
	.file 3 "/home/remco/Projects/Argos/src/slirp/mbuf.h"
	.file 4 "/home/remco/Projects/Argos/src/slirp/tcp.h"
	.file 5 "/home/remco/Projects/Argos/src/slirp/socket.h"
	.file 6 "/home/remco/Projects/Argos/src/slirp/tcpip.h"
	.file 7 "/home/remco/Projects/Argos/src/slirp/ip.h"
	.file 8 "/usr/include/sys/types.h"
	.file 9 "/usr/include/netinet/in.h"
	.file 10 "/usr/include/stdint.h"
	.file 11 "/usr/include/bits/types.h"
	.file 12 "/home/remco/Projects/Argos/src/slirp/tcp_timer.h"
	.file 13 "/home/remco/Projects/Argos/src/slirp/tcp_var.h"
	.file 14 "/home/remco/Projects/Argos/src/slirp/sbuf.h"
	.file 15 "/usr/include/stdio.h"
	.file 16 "/usr/include/libio.h"
	.file 17 "/usr/lib/gcc/x86_64-linux-gnu/3.4.6/include/stddef.h"
	.text
.Letext0:
	.section	.debug_info
	.long	0xc75
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.Ldebug_line0
	.quad	.Letext0
	.quad	.Ltext0
	.long	.LASF190
	.byte	0x1
	.long	.LASF191
	.long	.LASF192
	.uleb128 0x2
	.long	.LASF0
	.byte	0xb
	.byte	0x1f
	.long	0x38
	.uleb128 0x3
	.long	.LASF2
	.byte	0x1
	.byte	0x8
	.uleb128 0x2
	.long	.LASF1
	.byte	0xb
	.byte	0x20
	.long	0x4a
	.uleb128 0x3
	.long	.LASF3
	.byte	0x2
	.byte	0x7
	.uleb128 0x2
	.long	.LASF4
	.byte	0xb
	.byte	0x21
	.long	0x5c
	.uleb128 0x3
	.long	.LASF5
	.byte	0x4
	.byte	0x7
	.uleb128 0x3
	.long	.LASF6
	.byte	0x8
	.byte	0x7
	.uleb128 0x3
	.long	.LASF7
	.byte	0x1
	.byte	0x6
	.uleb128 0x3
	.long	.LASF8
	.byte	0x2
	.byte	0x5
	.uleb128 0x4
	.string	"int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x3
	.long	.LASF9
	.byte	0x8
	.byte	0x5
	.uleb128 0x2
	.long	.LASF10
	.byte	0xb
	.byte	0x8d
	.long	0x7f
	.uleb128 0x2
	.long	.LASF11
	.byte	0xb
	.byte	0x8e
	.long	0x7f
	.uleb128 0x3
	.long	.LASF6
	.byte	0x8
	.byte	0x7
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x2
	.long	.LASF12
	.byte	0xb
	.byte	0xba
	.long	0xb0
	.uleb128 0x6
	.byte	0x8
	.long	0xb6
	.uleb128 0x3
	.long	.LASF13
	.byte	0x1
	.byte	0x6
	.uleb128 0x2
	.long	.LASF14
	.byte	0x8
	.byte	0x23
	.long	0x2d
	.uleb128 0x2
	.long	.LASF15
	.byte	0x8
	.byte	0x24
	.long	0x3f
	.uleb128 0x2
	.long	.LASF16
	.byte	0x8
	.byte	0x25
	.long	0x51
	.uleb128 0x2
	.long	.LASF17
	.byte	0x8
	.byte	0x75
	.long	0xa5
	.uleb128 0x2
	.long	.LASF18
	.byte	0x11
	.byte	0xd5
	.long	0x63
	.uleb128 0x2
	.long	.LASF19
	.byte	0x8
	.byte	0xc9
	.long	0x38
	.uleb128 0x2
	.long	.LASF20
	.byte	0x8
	.byte	0xca
	.long	0x4a
	.uleb128 0x2
	.long	.LASF21
	.byte	0x8
	.byte	0xcb
	.long	0x5c
	.uleb128 0x3
	.long	.LASF22
	.byte	0x8
	.byte	0x7
	.uleb128 0x3
	.long	.LASF23
	.byte	0x8
	.byte	0x5
	.uleb128 0x7
	.long	0x2ef
	.long	.LASF54
	.byte	0xd8
	.byte	0xf
	.byte	0x2d
	.uleb128 0x8
	.long	.LASF24
	.byte	0x10
	.value	0x110
	.long	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF25
	.byte	0x10
	.value	0x115
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF26
	.byte	0x10
	.value	0x116
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.long	.LASF27
	.byte	0x10
	.value	0x117
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.long	.LASF28
	.byte	0x10
	.value	0x118
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x8
	.long	.LASF29
	.byte	0x10
	.value	0x119
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x8
	.long	.LASF30
	.byte	0x10
	.value	0x11a
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x8
	.long	.LASF31
	.byte	0x10
	.value	0x11b
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x8
	.long	.LASF32
	.byte	0x10
	.value	0x11c
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x8
	.long	.LASF33
	.byte	0x10
	.value	0x11e
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x8
	.long	.LASF34
	.byte	0x10
	.value	0x11f
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x8
	.long	.LASF35
	.byte	0x10
	.value	0x120
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x8
	.long	.LASF36
	.byte	0x10
	.value	0x122
	.long	0x32d
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x8
	.long	.LASF37
	.byte	0x10
	.value	0x124
	.long	0x333
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x8
	.long	.LASF38
	.byte	0x10
	.value	0x126
	.long	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x8
	.long	.LASF39
	.byte	0x10
	.value	0x12a
	.long	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x8
	.long	.LASF40
	.byte	0x10
	.value	0x12c
	.long	0x86
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x8
	.long	.LASF41
	.byte	0x10
	.value	0x130
	.long	0x4a
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x8
	.long	.LASF42
	.byte	0x10
	.value	0x131
	.long	0x6a
	.byte	0x3
	.byte	0x23
	.uleb128 0x82
	.uleb128 0x8
	.long	.LASF43
	.byte	0x10
	.value	0x132
	.long	0x339
	.byte	0x3
	.byte	0x23
	.uleb128 0x83
	.uleb128 0x8
	.long	.LASF44
	.byte	0x10
	.value	0x136
	.long	0x349
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x8
	.long	.LASF45
	.byte	0x10
	.value	0x13f
	.long	0x91
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x8
	.long	.LASF46
	.byte	0x10
	.value	0x148
	.long	0xa3
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x8
	.long	.LASF47
	.byte	0x10
	.value	0x149
	.long	0xa3
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x8
	.long	.LASF48
	.byte	0x10
	.value	0x14a
	.long	0xa3
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x8
	.long	.LASF49
	.byte	0x10
	.value	0x14b
	.long	0xa3
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x8
	.long	.LASF50
	.byte	0x10
	.value	0x14c
	.long	0xe9
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x8
	.long	.LASF51
	.byte	0x10
	.value	0x14e
	.long	0x78
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x8
	.long	.LASF52
	.byte	0x10
	.value	0x150
	.long	0x34f
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.byte	0x0
	.uleb128 0x9
	.long	.LASF53
	.byte	0x10
	.byte	0xb4
	.uleb128 0x7
	.long	0x32d
	.long	.LASF55
	.byte	0x18
	.byte	0x10
	.byte	0xba
	.uleb128 0xa
	.long	.LASF56
	.byte	0x10
	.byte	0xbb
	.long	0x32d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF57
	.byte	0x10
	.byte	0xbc
	.long	0x333
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF58
	.byte	0x10
	.byte	0xc0
	.long	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x2f6
	.uleb128 0x6
	.byte	0x8
	.long	0x123
	.uleb128 0xb
	.long	0x349
	.long	0xb6
	.uleb128 0xc
	.long	0x9c
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x2ef
	.uleb128 0xb
	.long	0x35f
	.long	0xb6
	.uleb128 0xc
	.long	0x9c
	.byte	0x13
	.byte	0x0
	.uleb128 0x2
	.long	.LASF59
	.byte	0xa
	.byte	0x34
	.long	0x5c
	.uleb128 0x2
	.long	.LASF60
	.byte	0x9
	.byte	0x8d
	.long	0x35f
	.uleb128 0x7
	.long	0x390
	.long	.LASF61
	.byte	0x4
	.byte	0x9
	.byte	0x8f
	.uleb128 0xa
	.long	.LASF62
	.byte	0x9
	.byte	0x90
	.long	0x36a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x2
	.long	.LASF63
	.byte	0x7
	.byte	0xc0
	.long	0x10a
	.uleb128 0x7
	.long	0x40a
	.long	.LASF64
	.byte	0x14
	.byte	0x7
	.byte	0xcf
	.uleb128 0xa
	.long	.LASF65
	.byte	0x7
	.byte	0xd0
	.long	0x390
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF66
	.byte	0x7
	.byte	0xd0
	.long	0x390
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.long	.LASF67
	.byte	0x7
	.byte	0xd1
	.long	0xf4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF68
	.byte	0x7
	.byte	0xd2
	.long	0xf4
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0xa
	.long	.LASF69
	.byte	0x7
	.byte	0xd3
	.long	0xff
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xa
	.long	.LASF70
	.byte	0x7
	.byte	0xd4
	.long	0x375
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.long	.LASF71
	.byte	0x7
	.byte	0xd5
	.long	0x375
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.long	.LASF72
	.byte	0x4
	.byte	0x28
	.long	0x10a
	.uleb128 0x7
	.long	0x4b4
	.long	.LASF73
	.byte	0x14
	.byte	0x4
	.byte	0x36
	.uleb128 0xa
	.long	.LASF74
	.byte	0x4
	.byte	0x37
	.long	0xff
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF75
	.byte	0x4
	.byte	0x38
	.long	0xff
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF76
	.byte	0x4
	.byte	0x39
	.long	0x40a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.long	.LASF77
	.byte	0x4
	.byte	0x3a
	.long	0x40a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF78
	.byte	0x4
	.byte	0x3f
	.long	0xd3
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.long	.LASF79
	.byte	0x4
	.byte	0x40
	.long	0xd3
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.long	.LASF80
	.byte	0x4
	.byte	0x42
	.long	0xf4
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0xa
	.long	.LASF81
	.byte	0x4
	.byte	0x49
	.long	0xff
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xa
	.long	.LASF82
	.byte	0x4
	.byte	0x4a
	.long	0xff
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.long	.LASF83
	.byte	0x4
	.byte	0x4b
	.long	0xff
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.byte	0x0
	.uleb128 0x7
	.long	0x4dd
	.long	.LASF84
	.byte	0x28
	.byte	0x6
	.byte	0x2b
	.uleb128 0xa
	.long	.LASF85
	.byte	0x6
	.byte	0x2c
	.long	0x39b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF86
	.byte	0x6
	.byte	0x2d
	.long	0x415
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x2
	.long	.LASF87
	.byte	0xd
	.byte	0x2e
	.long	0x10a
	.uleb128 0x7
	.long	0x771
	.long	.LASF88
	.byte	0xb8
	.byte	0xc
	.byte	0x83
	.uleb128 0xa
	.long	.LASF89
	.byte	0xd
	.byte	0x35
	.long	0x4dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF90
	.byte	0xd
	.byte	0x36
	.long	0x4dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.long	.LASF91
	.byte	0xd
	.byte	0x37
	.long	0x71
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF92
	.byte	0xd
	.byte	0x38
	.long	0x771
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xa
	.long	.LASF93
	.byte	0xd
	.byte	0x39
	.long	0x71
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0xa
	.long	.LASF94
	.byte	0xd
	.byte	0x3a
	.long	0x71
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.long	.LASF95
	.byte	0xd
	.byte	0x3b
	.long	0x71
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.uleb128 0xa
	.long	.LASF96
	.byte	0xd
	.byte	0x3c
	.long	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.long	.LASF97
	.byte	0xd
	.byte	0x3d
	.long	0xb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x1a
	.uleb128 0xa
	.long	.LASF98
	.byte	0xd
	.byte	0x3e
	.long	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xa
	.long	.LASF99
	.byte	0xd
	.byte	0x4c
	.long	0x4b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.long	.LASF100
	.byte	0xd
	.byte	0x4e
	.long	0x8b3
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xa
	.long	.LASF101
	.byte	0xd
	.byte	0x54
	.long	0x40a
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xa
	.long	.LASF102
	.byte	0xd
	.byte	0x55
	.long	0x40a
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xa
	.long	.LASF103
	.byte	0xd
	.byte	0x56
	.long	0x40a
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xa
	.long	.LASF104
	.byte	0xd
	.byte	0x57
	.long	0x40a
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xa
	.long	.LASF105
	.byte	0xd
	.byte	0x58
	.long	0x40a
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xe
	.string	"iss"
	.byte	0xd
	.byte	0x59
	.long	0x40a
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xa
	.long	.LASF106
	.byte	0xd
	.byte	0x5a
	.long	0x10a
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xa
	.long	.LASF107
	.byte	0xd
	.byte	0x5c
	.long	0x10a
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xa
	.long	.LASF108
	.byte	0xd
	.byte	0x5d
	.long	0x40a
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xa
	.long	.LASF109
	.byte	0xd
	.byte	0x5e
	.long	0x40a
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xe
	.string	"irs"
	.byte	0xd
	.byte	0x5f
	.long	0x40a
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xa
	.long	.LASF110
	.byte	0xd
	.byte	0x64
	.long	0x40a
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0xa
	.long	.LASF111
	.byte	0xd
	.byte	0x66
	.long	0x40a
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xa
	.long	.LASF112
	.byte	0xd
	.byte	0x6a
	.long	0x10a
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0xa
	.long	.LASF113
	.byte	0xd
	.byte	0x6b
	.long	0x10a
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xa
	.long	.LASF114
	.byte	0xd
	.byte	0x73
	.long	0x71
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0xa
	.long	.LASF115
	.byte	0xd
	.byte	0x74
	.long	0x71
	.byte	0x3
	.byte	0x23
	.uleb128 0x8e
	.uleb128 0xa
	.long	.LASF116
	.byte	0xd
	.byte	0x75
	.long	0x40a
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xa
	.long	.LASF117
	.byte	0xd
	.byte	0x76
	.long	0x71
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xa
	.long	.LASF118
	.byte	0xd
	.byte	0x77
	.long	0x71
	.byte	0x3
	.byte	0x23
	.uleb128 0x96
	.uleb128 0xa
	.long	.LASF119
	.byte	0xd
	.byte	0x78
	.long	0xc8
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xa
	.long	.LASF120
	.byte	0xd
	.byte	0x79
	.long	0x10a
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0xa
	.long	.LASF121
	.byte	0xd
	.byte	0x7c
	.long	0xb6
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xa
	.long	.LASF122
	.byte	0xd
	.byte	0x7d
	.long	0xb6
	.byte	0x3
	.byte	0x23
	.uleb128 0xa1
	.uleb128 0xa
	.long	.LASF123
	.byte	0xd
	.byte	0x80
	.long	0x71
	.byte	0x3
	.byte	0x23
	.uleb128 0xa2
	.uleb128 0xa
	.long	.LASF124
	.byte	0xd
	.byte	0x83
	.long	0xbd
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0xa
	.long	.LASF125
	.byte	0xd
	.byte	0x84
	.long	0xbd
	.byte	0x3
	.byte	0x23
	.uleb128 0xa5
	.uleb128 0xa
	.long	.LASF126
	.byte	0xd
	.byte	0x85
	.long	0xbd
	.byte	0x3
	.byte	0x23
	.uleb128 0xa6
	.uleb128 0xa
	.long	.LASF127
	.byte	0xd
	.byte	0x86
	.long	0xbd
	.byte	0x3
	.byte	0x23
	.uleb128 0xa7
	.uleb128 0xa
	.long	.LASF128
	.byte	0xd
	.byte	0x87
	.long	0x10a
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xa
	.long	.LASF129
	.byte	0xd
	.byte	0x88
	.long	0x10a
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0xa
	.long	.LASF130
	.byte	0xd
	.byte	0x89
	.long	0x40a
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.byte	0x0
	.uleb128 0xb
	.long	0x781
	.long	0x71
	.uleb128 0xc
	.long	0x9c
	.byte	0x3
	.byte	0x0
	.uleb128 0x7
	.long	0x8b3
	.long	.LASF131
	.byte	0xa0
	.byte	0x4
	.byte	0x2d
	.uleb128 0xa
	.long	.LASF132
	.byte	0x5
	.byte	0x15
	.long	0x8b3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF133
	.byte	0x5
	.byte	0x15
	.long	0x8b3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"s"
	.byte	0x5
	.byte	0x17
	.long	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.long	.LASF134
	.byte	0x5
	.byte	0x1a
	.long	0x96d
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.long	.LASF135
	.byte	0x5
	.byte	0x1d
	.long	0x9e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.long	.LASF136
	.byte	0x5
	.byte	0x1f
	.long	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xa
	.long	.LASF137
	.byte	0x5
	.byte	0x20
	.long	0x375
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xa
	.long	.LASF138
	.byte	0x5
	.byte	0x21
	.long	0x375
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xa
	.long	.LASF139
	.byte	0x5
	.byte	0x22
	.long	0xff
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xa
	.long	.LASF140
	.byte	0x5
	.byte	0x23
	.long	0xff
	.byte	0x2
	.byte	0x23
	.uleb128 0x36
	.uleb128 0xa
	.long	.LASF141
	.byte	0x5
	.byte	0x25
	.long	0xf4
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xa
	.long	.LASF142
	.byte	0x5
	.byte	0x26
	.long	0xf4
	.byte	0x2
	.byte	0x23
	.uleb128 0x39
	.uleb128 0xa
	.long	.LASF143
	.byte	0x5
	.byte	0x28
	.long	0xbd
	.byte	0x2
	.byte	0x23
	.uleb128 0x3a
	.uleb128 0xa
	.long	.LASF144
	.byte	0x5
	.byte	0x29
	.long	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xa
	.long	.LASF145
	.byte	0x5
	.byte	0x2b
	.long	0x9ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xa
	.long	.LASF146
	.byte	0x5
	.byte	0x2c
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xa
	.long	.LASF147
	.byte	0x5
	.byte	0x2e
	.long	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xa
	.long	.LASF148
	.byte	0x5
	.byte	0x2f
	.long	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xa
	.long	.LASF149
	.byte	0x5
	.byte	0x33
	.long	0x996
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xa
	.long	.LASF150
	.byte	0x5
	.byte	0x34
	.long	0x996
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xa
	.long	.LASF151
	.byte	0x5
	.byte	0x35
	.long	0xa3
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x781
	.uleb128 0x7
	.long	0x944
	.long	.LASF152
	.byte	0x40
	.byte	0x3
	.byte	0x3f
	.uleb128 0xa
	.long	.LASF153
	.byte	0x3
	.byte	0x40
	.long	0x96d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF154
	.byte	0x3
	.byte	0x41
	.long	0x96d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF155
	.byte	0x3
	.byte	0x42
	.long	0x96d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.long	.LASF156
	.byte	0x3
	.byte	0x43
	.long	0x96d
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.long	.LASF157
	.byte	0x3
	.byte	0x44
	.long	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.long	.LASF158
	.byte	0x3
	.byte	0x46
	.long	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xa
	.long	.LASF159
	.byte	0x3
	.byte	0x47
	.long	0x8b3
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xa
	.long	.LASF160
	.byte	0x3
	.byte	0x49
	.long	0xde
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xa
	.long	.LASF161
	.byte	0x3
	.byte	0x4a
	.long	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.byte	0x0
	.uleb128 0x7
	.long	0x96d
	.long	.LASF162
	.byte	0x48
	.byte	0x2
	.byte	0x66
	.uleb128 0xa
	.long	.LASF152
	.byte	0x3
	.byte	0x5c
	.long	0x8b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF163
	.byte	0x3
	.byte	0x60
	.long	0x973
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x944
	.uleb128 0xf
	.long	0x996
	.long	.LASF163
	.byte	0x8
	.byte	0x3
	.byte	0x5d
	.uleb128 0x10
	.long	.LASF164
	.byte	0x3
	.byte	0x5e
	.long	0x339
	.uleb128 0x10
	.long	.LASF165
	.byte	0x3
	.byte	0x5f
	.long	0xb0
	.byte	0x0
	.uleb128 0x7
	.long	0x9e9
	.long	.LASF166
	.byte	0x20
	.byte	0xe
	.byte	0xe
	.uleb128 0xa
	.long	.LASF167
	.byte	0xe
	.byte	0xf
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF168
	.byte	0xe
	.byte	0x10
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.long	.LASF169
	.byte	0xe
	.byte	0x11
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF170
	.byte	0xe
	.byte	0x13
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.long	.LASF171
	.byte	0xe
	.byte	0x15
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x4b4
	.uleb128 0x6
	.byte	0x8
	.long	0x4e8
	.uleb128 0x11
	.byte	0x1
	.long	.LASF193
	.byte	0x1
	.byte	0x23
	.byte	0x1
	.quad	.LFB47
	.quad	.LFE47
	.byte	0x1
	.byte	0x57
	.uleb128 0x12
	.long	0xa5b
	.byte	0x1
	.long	.LASF173
	.byte	0x1
	.byte	0x32
	.byte	0x1
	.long	0x96d
	.quad	.LFB48
	.quad	.LFE48
	.byte	0x1
	.byte	0x57
	.uleb128 0x13
	.string	"m"
	.byte	0x1
	.byte	0x33
	.long	0x96d
	.byte	0x1
	.byte	0x53
	.uleb128 0x14
	.long	.LASF172
	.byte	0x1
	.byte	0x34
	.long	0x78
	.byte	0x1
	.byte	0x56
	.uleb128 0x15
	.long	.LASF194
	.byte	0x1
	.byte	0x4f
	.quad	.L5
	.byte	0x0
	.uleb128 0x16
	.long	0xa86
	.byte	0x1
	.long	.LASF174
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.quad	.LFB49
	.quad	.LFE49
	.byte	0x1
	.byte	0x57
	.uleb128 0x17
	.string	"m"
	.byte	0x1
	.byte	0x56
	.long	0x96d
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x16
	.long	0xadc
	.byte	0x1
	.long	.LASF175
	.byte	0x1
	.byte	0x8d
	.byte	0x1
	.quad	.LFB51
	.quad	.LFE51
	.byte	0x1
	.byte	0x57
	.uleb128 0x17
	.string	"m"
	.byte	0x1
	.byte	0x8b
	.long	0x96d
	.byte	0x1
	.byte	0x53
	.uleb128 0x18
	.long	.LASF176
	.byte	0x1
	.byte	0x8c
	.long	0x78
	.byte	0x1
	.byte	0x5c
	.uleb128 0x14
	.long	.LASF177
	.byte	0x1
	.byte	0x8e
	.long	0x78
	.byte	0x1
	.byte	0x5d
	.uleb128 0x19
	.long	.Ldebug_ranges0+0x0
	.uleb128 0x1a
	.string	"dat"
	.byte	0x1
	.byte	0x9b
	.long	0xb0
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
	.long	0xb12
	.byte	0x1
	.long	.LASF178
	.byte	0x1
	.byte	0x7a
	.byte	0x1
	.quad	.LFB50
	.quad	.LFE50
	.byte	0x1
	.byte	0x57
	.uleb128 0x17
	.string	"m"
	.byte	0x1
	.byte	0x79
	.long	0x96d
	.byte	0x1
	.byte	0x53
	.uleb128 0x17
	.string	"n"
	.byte	0x1
	.byte	0x79
	.long	0x96d
	.byte	0x1
	.byte	0x56
	.byte	0x0
	.uleb128 0x16
	.long	0xb4a
	.byte	0x1
	.long	.LASF179
	.byte	0x1
	.byte	0xb2
	.byte	0x1
	.quad	.LFB52
	.quad	.LFE52
	.byte	0x1
	.byte	0x57
	.uleb128 0x17
	.string	"m"
	.byte	0x1
	.byte	0xb0
	.long	0x96d
	.byte	0x1
	.byte	0x55
	.uleb128 0x17
	.string	"len"
	.byte	0x1
	.byte	0xb1
	.long	0x78
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0x12
	.long	0xb9e
	.byte	0x1
	.long	.LASF180
	.byte	0x1
	.byte	0xc8
	.byte	0x1
	.long	0x78
	.quad	.LFB53
	.quad	.LFE53
	.byte	0x1
	.byte	0x57
	.uleb128 0x17
	.string	"n"
	.byte	0x1
	.byte	0xc6
	.long	0x96d
	.byte	0x1
	.byte	0x53
	.uleb128 0x17
	.string	"m"
	.byte	0x1
	.byte	0xc6
	.long	0x96d
	.byte	0x1
	.byte	0x59
	.uleb128 0x17
	.string	"off"
	.byte	0x1
	.byte	0xc7
	.long	0x78
	.byte	0x1
	.byte	0x58
	.uleb128 0x17
	.string	"len"
	.byte	0x1
	.byte	0xc7
	.long	0x78
	.byte	0x1
	.byte	0x56
	.byte	0x0
	.uleb128 0x12
	.long	0xbda
	.byte	0x1
	.long	.LASF181
	.byte	0x1
	.byte	0xda
	.byte	0x1
	.long	0x96d
	.quad	.LFB54
	.quad	.LFE54
	.byte	0x1
	.byte	0x57
	.uleb128 0x17
	.string	"dat"
	.byte	0x1
	.byte	0xd9
	.long	0xa3
	.byte	0x1
	.byte	0x55
	.uleb128 0x13
	.string	"m"
	.byte	0x1
	.byte	0xdb
	.long	0x96d
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x1b
	.long	.LASF182
	.byte	0xf
	.byte	0x91
	.long	0x333
	.byte	0x1
	.byte	0x1
	.uleb128 0x1b
	.long	.LASF183
	.byte	0xf
	.byte	0x92
	.long	0x333
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.long	.LASF184
	.byte	0x1
	.byte	0x16
	.long	0x78
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	mbuf_alloced
	.uleb128 0x1c
	.long	.LASF185
	.byte	0x1
	.byte	0x17
	.long	0x944
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	m_freelist
	.uleb128 0x1c
	.long	.LASF186
	.byte	0x1
	.byte	0x17
	.long	0x944
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	m_usedlist
	.uleb128 0x1c
	.long	.LASF187
	.byte	0x1
	.byte	0x19
	.long	0x78
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	mbuf_max
	.uleb128 0x1c
	.long	.LASF188
	.byte	0x1
	.byte	0x14
	.long	0x96d
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	mbutl
	.uleb128 0x1c
	.long	.LASF189
	.byte	0x1
	.byte	0x15
	.long	0xb0
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	mclrefcnt
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
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x17
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x2e
	.byte	0x0
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
	.uleb128 0x13
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0xb4
	.value	0x2
	.long	.Ldebug_info0
	.long	0xc79
	.long	0x9f5
	.string	"m_init"
	.long	0xa10
	.string	"m_get"
	.long	0xa5b
	.string	"m_free"
	.long	0xa86
	.string	"m_inc"
	.long	0xadc
	.string	"m_cat"
	.long	0xb12
	.string	"m_adj"
	.long	0xb4a
	.string	"m_copy"
	.long	0xb9e
	.string	"dtom"
	.long	0xbf4
	.string	"mbuf_alloced"
	.long	0xc0a
	.string	"m_freelist"
	.long	0xc20
	.string	"m_usedlist"
	.long	0xc36
	.string	"mbuf_max"
	.long	0xc4c
	.string	"mbutl"
	.long	0xc62
	.string	"mclrefcnt"
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
	.quad	.LBB3-.Ltext0
	.quad	.LBE3-.Ltext0
	.quad	0x0
	.quad	0x0
	.section	.debug_str,"MS",@progbits,1
.LASF18:
	.string	"size_t"
.LASF192:
	.string	"/home/remco/Projects/Argos/src"
.LASF157:
	.string	"mh_flags"
.LASF189:
	.string	"mclrefcnt"
.LASF69:
	.string	"ih_len"
.LASF62:
	.string	"s_addr"
.LASF85:
	.string	"ti_i"
.LASF63:
	.string	"caddr32_t"
.LASF35:
	.string	"_IO_save_end"
.LASF77:
	.string	"th_ack"
.LASF153:
	.string	"mh_next"
.LASF160:
	.string	"mh_data"
.LASF162:
	.string	"mbuf"
.LASF154:
	.string	"mh_prev"
.LASF80:
	.string	"th_flags"
.LASF141:
	.string	"so_iptos"
.LASF28:
	.string	"_IO_write_base"
.LASF44:
	.string	"_lock"
.LASF33:
	.string	"_IO_save_base"
.LASF128:
	.string	"ts_recent"
.LASF37:
	.string	"_chain"
.LASF75:
	.string	"th_dport"
.LASF166:
	.string	"sbuf"
.LASF41:
	.string	"_cur_column"
.LASF94:
	.string	"t_rxtcur"
.LASF114:
	.string	"t_idle"
.LASF151:
	.string	"extra"
.LASF140:
	.string	"so_lport"
.LASF135:
	.string	"so_ti"
.LASF98:
	.string	"t_flags"
.LASF9:
	.string	"long int"
.LASF12:
	.string	"__caddr_t"
.LASF14:
	.string	"u_char"
.LASF55:
	.string	"_IO_marker"
.LASF99:
	.string	"t_template"
.LASF180:
	.string	"m_copy"
.LASF0:
	.string	"__u_char"
.LASF156:
	.string	"mh_prevpkt"
.LASF159:
	.string	"mh_so"
.LASF79:
	.string	"th_off"
.LASF107:
	.string	"rcv_wnd"
.LASF70:
	.string	"ih_src"
.LASF71:
	.string	"ih_dst"
.LASF61:
	.string	"in_addr"
.LASF131:
	.string	"socket"
.LASF7:
	.string	"signed char"
.LASF54:
	.string	"_IO_FILE"
.LASF89:
	.string	"seg_next"
.LASF136:
	.string	"so_urgc"
.LASF2:
	.string	"unsigned char"
.LASF142:
	.string	"so_emu"
.LASF163:
	.string	"M_dat"
.LASF139:
	.string	"so_fport"
.LASF74:
	.string	"th_sport"
.LASF19:
	.string	"u_int8_t"
.LASF106:
	.string	"snd_wnd"
.LASF73:
	.string	"tcphdr"
.LASF84:
	.string	"tcpiphdr"
.LASF119:
	.string	"t_rttmin"
.LASF53:
	.string	"_IO_lock_t"
.LASF110:
	.string	"rcv_adv"
.LASF177:
	.string	"datasize"
.LASF172:
	.string	"flags"
.LASF25:
	.string	"_IO_read_ptr"
.LASF87:
	.string	"tcpiphdrp_32"
.LASF90:
	.string	"seg_prev"
.LASF58:
	.string	"_pos"
.LASF130:
	.string	"last_ack_sent"
.LASF4:
	.string	"__u_int"
.LASF171:
	.string	"sb_data"
.LASF36:
	.string	"_markers"
.LASF16:
	.string	"u_int"
.LASF100:
	.string	"t_socket"
.LASF127:
	.string	"requested_s_scale"
.LASF120:
	.string	"max_sndwnd"
.LASF60:
	.string	"in_addr_t"
.LASF113:
	.string	"snd_ssthresh"
.LASF45:
	.string	"_offset"
.LASF20:
	.string	"u_int16_t"
.LASF191:
	.string	"slirp/mbuf.c"
.LASF184:
	.string	"mbuf_alloced"
.LASF6:
	.string	"long unsigned int"
.LASF92:
	.string	"t_timer"
.LASF39:
	.string	"_flags2"
.LASF27:
	.string	"_IO_read_base"
.LASF95:
	.string	"t_dupacks"
.LASF170:
	.string	"sb_rptr"
.LASF52:
	.string	"_unused2"
.LASF158:
	.string	"mh_size"
.LASF112:
	.string	"snd_cwnd"
.LASF182:
	.string	"stdin"
.LASF40:
	.string	"_old_offset"
.LASF72:
	.string	"tcp_seq"
.LASF175:
	.string	"m_inc"
.LASF91:
	.string	"t_state"
.LASF123:
	.string	"t_softerror"
.LASF116:
	.string	"t_rtseq"
.LASF23:
	.string	"long long int"
.LASF168:
	.string	"sb_datalen"
.LASF30:
	.string	"_IO_write_end"
.LASF111:
	.string	"snd_max"
.LASF193:
	.string	"m_init"
.LASF178:
	.string	"m_cat"
.LASF179:
	.string	"m_adj"
.LASF101:
	.string	"snd_una"
.LASF31:
	.string	"_IO_buf_base"
.LASF121:
	.string	"t_oobflags"
.LASF97:
	.string	"t_force"
.LASF56:
	.string	"_next"
.LASF5:
	.string	"unsigned int"
.LASF78:
	.string	"th_x2"
.LASF190:
	.string	"GNU C 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
.LASF17:
	.string	"caddr_t"
.LASF181:
	.string	"dtom"
.LASF108:
	.string	"rcv_nxt"
.LASF46:
	.string	"__pad1"
.LASF47:
	.string	"__pad2"
.LASF48:
	.string	"__pad3"
.LASF49:
	.string	"__pad4"
.LASF50:
	.string	"__pad5"
.LASF57:
	.string	"_sbuf"
.LASF187:
	.string	"mbuf_max"
.LASF109:
	.string	"rcv_up"
.LASF96:
	.string	"t_maxseg"
.LASF24:
	.string	"_flags"
.LASF134:
	.string	"so_m"
.LASF51:
	.string	"_mode"
.LASF188:
	.string	"mbutl"
.LASF186:
	.string	"m_usedlist"
.LASF132:
	.string	"so_next"
.LASF103:
	.string	"snd_up"
.LASF13:
	.string	"char"
.LASF81:
	.string	"th_win"
.LASF133:
	.string	"so_prev"
.LASF150:
	.string	"so_snd"
.LASF152:
	.string	"m_hdr"
.LASF155:
	.string	"mh_nextpkt"
.LASF82:
	.string	"th_sum"
.LASF129:
	.string	"ts_recent_age"
.LASF176:
	.string	"size"
.LASF124:
	.string	"snd_scale"
.LASF22:
	.string	"long long unsigned int"
.LASF122:
	.string	"t_iobc"
.LASF10:
	.string	"__off_t"
.LASF126:
	.string	"request_r_scale"
.LASF68:
	.string	"ih_pr"
.LASF137:
	.string	"so_faddr"
.LASF148:
	.string	"so_nqueued"
.LASF165:
	.string	"m_ext_"
.LASF34:
	.string	"_IO_backup_base"
.LASF43:
	.string	"_shortbuf"
.LASF76:
	.string	"th_seq"
.LASF11:
	.string	"__off64_t"
.LASF86:
	.string	"ti_t"
.LASF185:
	.string	"m_freelist"
.LASF161:
	.string	"mh_len"
.LASF32:
	.string	"_IO_buf_end"
.LASF88:
	.string	"tcpcb"
.LASF144:
	.string	"so_state"
.LASF173:
	.string	"m_get"
.LASF93:
	.string	"t_rxtshift"
.LASF64:
	.string	"ipovly"
.LASF8:
	.string	"short int"
.LASF21:
	.string	"u_int32_t"
.LASF146:
	.string	"so_expire"
.LASF118:
	.string	"t_rttvar"
.LASF42:
	.string	"_vtable_offset"
.LASF65:
	.string	"ih_next"
.LASF83:
	.string	"th_urp"
.LASF143:
	.string	"so_type"
.LASF66:
	.string	"ih_prev"
.LASF104:
	.string	"snd_wl1"
.LASF105:
	.string	"snd_wl2"
.LASF1:
	.string	"__u_short"
.LASF167:
	.string	"sb_cc"
.LASF174:
	.string	"m_free"
.LASF26:
	.string	"_IO_read_end"
.LASF138:
	.string	"so_laddr"
.LASF59:
	.string	"uint32_t"
.LASF117:
	.string	"t_srtt"
.LASF38:
	.string	"_fileno"
.LASF149:
	.string	"so_rcv"
.LASF102:
	.string	"snd_nxt"
.LASF147:
	.string	"so_queued"
.LASF3:
	.string	"short unsigned int"
.LASF183:
	.string	"stdout"
.LASF194:
	.string	"end_error"
.LASF29:
	.string	"_IO_write_ptr"
.LASF67:
	.string	"ih_x1"
.LASF145:
	.string	"so_tcpcb"
.LASF15:
	.string	"u_short"
.LASF169:
	.string	"sb_wptr"
.LASF125:
	.string	"rcv_scale"
.LASF164:
	.string	"m_dat_"
.LASF115:
	.string	"t_rtt"
	.section	.note.GNU-stack,"",@progbits
	.ident	"GCC: (GNU) 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
