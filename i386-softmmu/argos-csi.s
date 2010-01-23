	.file	"argos-csi.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.data
	.align 32
	.type	as_stop_kernel, @object
	.size	as_stop_kernel, 48
as_stop_kernel:
	.quad	4294967295
	.quad	-1
	.quad	4294967295
	.quad	4294967295
	.quad	4294967295
	.quad	4294967295
	.align 32
	.type	as_start_kernel, @object
	.size	as_start_kernel, 48
as_start_kernel:
	.quad	3221225472
	.quad	-139637976727552
	.quad	2147483648
	.quad	2147483648
	.quad	2147483648
	.quad	2147483648
	.align 32
	.type	linux_shellcode, @object
	.size	linux_shellcode, 98
linux_shellcode:
	.string	"\201\354"
	.string	"\001"
	.string	""
	.string	"\211\3451\300P@P\211\303@P\211\341\260f\315\200\211\306h\177"
	.string	""
	.string	"\001fh\"\021fj\002\211\342j\020RV\211\341\263\0031\300\260f\315\2001\300\260\024\315\200\211\307h@@@@W\211\3421\300P\004\bPRV\211\341\263\t\260f\315\200\260%\211\3731\311\261\023\315\200\353\364"
	.align 32
	.type	win32_shellcode, @object
	.size	win32_shellcode, 294
win32_shellcode:
	.string	"\350V"
	.string	""
	.string	""
	.string	"SUVW\213l$\030\213E<\213T\005x\001\352\213J\030\213Z \001\353\3432I\2134\213\001\3561\377\3741\300\2548\340t\007\301\317\r\001\307\353\362;|$\024u\341\213Z$\001\353f\213\fK\213Z\034\001\353\213\004\213\001\350\353\0021\300_^][\302\b"
	.string	"^j0Yd\213\031\213[\f\213[\034\213\033\213[\bSh\216N\016\354\377\326\211\307\201\354"
	.string	"\001"
	.string	""
	.string	"WVS\211\345\350\037"
	.string	""
	.string	""
	.string	"\220\001"
	.string	""
	.string	"\266\031\030\347\244\031p\351\354\371\252`\331\t\365\255\313\355\374;WS2_32"
	.string	"[\215K\030Q\377\327\211\337\211\303\215u\024j\005YQS\3774\217\377U\004Y\211\004\216\342\362+'T\3777\377U(1\300PPPP@P@P\377U$\211\307h\177"
	.string	""
	.string	"\001h\002"
	.string	"\"\021\211\341j\020QW\377U YY\377u"
	.string	"h\002\372\r\346\377U\004\377\320\211\303h@@@@P\211\341j"
	.string	"j\bQW\377U\034\377u"
	.string	"h\260I-\333\377U\004h0u"
	.string	""
	.string	"\377\320\353\354"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"Could not write memory block - fwrite()"
	.text
	.p2align 4,,15
	.type	argos_process_proc, @function
argos_process_proc:
.LFB222:
	.file 1 "/home/remco/Projects/Argos/src/target-i386/argos-csi.c"
	.loc 1 294 0
	pushq	%r15
.LCFI0:
	pushq	%r14
.LCFI1:
	movq	%rsi, %r14
	pushq	%r13
.LCFI2:
	pushq	%r12
.LCFI3:
	movq	%rdi, %r12
	pushq	%rbp
.LCFI4:
	pushq	%rbx
.LCFI5:
	subq	$56, %rsp
.LCFI6:
	.loc 1 294 0
	movl	%edx, 28(%rsp)
	movl	%ecx, 24(%rsp)
	movl	%r8d, 20(%rsp)
	.loc 1 299 0
	testb	$3, 352(%rsi)
	jne	.L2
	.loc 1 300 0
	movslq	argos_os_hint(%rip),%rax
	salq	$4, %rax
	movl	as_start_kernel(%rax), %ebp
	.loc 1 301 0
	movl	as_stop_kernel(%rax), %eax
.L51:
	.loc 1 304 0
	subl	$4095, %eax
	leaq	32(%rsp), %r13
	movl	%eax, 16(%rsp)
	.p2align 4,,7
.L4:
	.loc 1 308 0
	movl	%ebp, %esi
	movq	%r14, %rdi
	call	cpu_get_phys_page_debug
	.loc 1 309 0
	cmpl	$-1, %eax
	je	.L8
	.loc 1 311 0
	shrl	$12, %eax
	mov	%eax, %edi
	call	phys_page_find
	testq	%rax, %rax
	movq	%rax, %r15
	je	.L8
	.loc 1 313 0
	movl	24(%rsp), %ecx
	testl	%ecx, %ecx
	je	.L10
.LBB2:
	.loc 1 271 0
	movl	(%rax), %eax
.LBB3:
	.loc 1 272 0
	xorl	%ebx, %ebx
.LBE3:
	.loc 1 271 0
	andl	$-4096, %eax
	movl	%eax, 12(%rsp)
.LBB4:
	.loc 1 275 0
	movl	28(%rsp), %eax
	andl	$-4096, %eax
	.loc 1 276 0
	cmpl	%ebp, %eax
	movl	$1, %eax
	cmovne	%ebx, %eax
	movl	%eax, 8(%rsp)
	.p2align 4,,7
.L35:
.LBB5:
	.file 2 "../argos-bytemap.h"
	.loc 2 374 0
	movl	12(%rsp), %ecx
.LBB6:
	.loc 2 376 0
	movq	argos_memmap(%rip), %rdx
	xorl	%r8d, %r8d
.LBE6:
	.loc 2 374 0
	addl	%ebx, %ecx
	mov	%ecx, %eax
.LBB7:
	.loc 2 376 0
	testl	$1073741823, (%rdx,%rax,4)
.LBE7:
.LBE5:
	.loc 1 279 0
	movl	8(%rsp), %eax
.LBB8:
.LBB9:
	.loc 2 376 0
	setne	%r8b
.LBE9:
.LBE8:
	.loc 1 279 0
	orl	%r8d, %eax
	je	.L15
.LBB10:
.LBB11:
	.loc 1 223 0
	cld
.LBE11:
	.loc 1 219 0
	movl	%ecx, %esi
.LBB12:
	.loc 1 223 0
	xorl	%eax, %eax
	movl	$1, %ecx
	movq	%r13, %rdi
	.loc 1 226 0
	cmpl	$1, %r8d
	.loc 1 237 0
	movl	$4096, %r9d
	.loc 1 223 0
	rep
	stosq
	.loc 1 226 0
	sbbl	%eax, %eax
.LBE12:
	.loc 1 219 0
	leal	(%rbp,%rbx), %edx
.LBB13:
	.loc 1 226 0
	andl	$-128, %eax
	subl	$127, %eax
	.loc 1 235 0
	testl	%r8d, %r8d
	.loc 1 223 0
	movl	$0, (%rdi)
	.loc 1 226 0
	movb	%al, 32(%rsp)
	.loc 1 237 0
	movl	%esi, %eax
	.loc 1 235 0
	setne	33(%rsp)
	.loc 1 237 0
	andl	$4095, %eax
	.loc 1 238 0
	xorl	%edi, %edi
	.loc 1 237 0
	subl	%eax, %r9d
	.loc 1 233 0
	movl	%edx, 40(%rsp)
	.loc 1 234 0
	movl	%esi, 36(%rsp)
	.loc 1 238 0
	cmpl	%r9d, %edi
	jae	.L18
	movq	argos_memmap(%rip), %r10
	.p2align 4,,7
.L23:
.LBB14:
	.loc 2 374 0
	mov	%esi, %eax
.LBB15:
	.loc 2 376 0
	xorl	%ecx, %ecx
	testl	$1073741823, (%r10,%rax,4)
	setne	%cl
.LBE15:
.LBE14:
	.loc 1 241 0
	testl	%r8d, %r8d
	setne	%dl
	xorl	%eax, %eax
	testl	%ecx, %ecx
	sete	%al
	testl	%edx, %eax
	jne	.L18
	testl	%r8d, %r8d
	sete	%dl
	xorl	%eax, %eax
	testl	%ecx, %ecx
	setne	%al
	testl	%edx, %eax
	jne	.L18
	.loc 1 238 0
	incl	%edi
	incl	%esi
	cmpl	%r9d, %edi
	jb	.L23
.L18:
	.loc 1 244 0
	movw	%di, 2(%r13)
.LBE13:
.LBE10:
	.loc 1 219 0
	addl	%edi, %ebx
.LBB16:
.LBB17:
	.loc 1 251 0
	movq	%r12, %rcx
	movl	$1, %edx
	movl	$12, %esi
	movq	%r13, %rdi
	call	fwrite
	decq	%rax
	jne	.L27
	.loc 1 253 0
	mov	36(%rsp), %edi
	movzwq	34(%rsp), %rdx
	movq	%r12, %rcx
	addq	phys_ram_base(%rip), %rdi
	movl	$1, %esi
	call	fwrite
	movq	%rax, %rdx
	movzwq	34(%rsp), %rax
	cmpq	%rax, %rdx
	jne	.L27
	.loc 1 256 0
	cmpb	$0, 33(%rsp)
	je	.L12
.LBB18:
.LBB19:
.LBB20:
	.loc 2 365 0
	mov	36(%rsp), %edi
.LBE20:
.LBE19:
	.loc 1 259 0
	movq	%r12, %rcx
	movl	$4, %esi
.LBB21:
.LBB22:
	.loc 2 365 0
	salq	$2, %rdi
	addq	argos_memmap(%rip), %rdi
.LBE22:
.LBE21:
	.loc 1 259 0
	call	fwrite
	movzwq	34(%rsp), %rdx
	cmpq	%rdx, %rax
	je	.L12
.L27:
.LBE18:
	.loc 1 265 0
	movl	$.LC0, %edi
	call	perror
.LBE17:
.LBE16:
.LBE4:
.LBE2:
	.loc 1 337 0
	addq	$56, %rsp
	.loc 1 315 0
	movl	$-1, %eax
	.loc 1 337 0
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.p2align 4,,7
.L15:
.LBB23:
.LBB24:
	.loc 1 286 0
	incl	%ebx
.L12:
	cmpl	$4095, %ebx
	jle	.L35
.L10:
.LBE24:
.LBE23:
	.loc 1 316 0
	movl	20(%rsp), %edx
	testl	%edx, %edx
	jne	.L53
.L8:
	.loc 1 320 0
	addl	$4096, %ebp
	.loc 1 321 0
	cmpl	16(%rsp), %ebp
	setbe	%dl
	xorl	%eax, %eax
	testl	%ebp, %ebp
	setne	%al
	testl	%edx, %eax
	jne	.L4
	.loc 1 323 0
	movl	20(%rsp), %eax
	testl	%eax, %eax
	je	.L38
.LBB25:
	.loc 1 326 0
	movl	$0, 44(%r14)
	.loc 1 327 0
	movl	$0, 52(%r14)
	.loc 1 330 0
	xorl	%edx, %edx
	.loc 1 328 0
	movl	$0, 60(%r14)
.L42:
	.loc 1 331 0
	movslq	%edx,%rax
	.loc 1 330 0
	incl	%edx
	cmpl	$7, %edx
	.loc 1 331 0
	movl	$0, 68(%r14,%rax,8)
	.loc 1 330 0
	jle	.L42
	.loc 1 333 0
	movq	47112(%r14), %rdi
	movl	$152, %esi
	call	argos_bytemap_reset
.L38:
.LBE25:
	.loc 1 337 0
	addq	$56, %rsp
	.loc 1 336 0
	xorl	%eax, %eax
	.loc 1 337 0
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L2:
	.loc 1 304 0
	movslq	argos_os_hint(%rip),%rax
	.loc 1 303 0
	xorl	%ebp, %ebp
	.loc 1 304 0
	salq	$4, %rax
	movl	as_start_kernel(%rax), %eax
	jmp	.L51
.L53:
.LBB26:
	.loc 2 384 0
	mov	(%r15), %edi
.LBB27:
	.loc 2 394 0
	movl	$16384, %edx
	xorl	%esi, %esi
.LBE27:
	.loc 2 384 0
	andl	$4294963200, %edi
.LBB28:
	.loc 2 394 0
	salq	$2, %rdi
	addq	argos_memmap(%rip), %rdi
	call	memset
	jmp	.L8
.LBE28:
.LBE26:
.LFE222:
	.size	argos_process_proc, .-argos_process_proc
	.p2align 4,,15
.globl argos_sanitize_process
	.type	argos_sanitize_process, @function
argos_sanitize_process:
.LFB225:
	.loc 1 490 0
	.loc 1 494 0
	movq	%rdi, %rsi
	movl	$1, %r8d
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	xorl	%edi, %edi
	jmp	argos_process_proc
.LFE225:
	.size	argos_sanitize_process, .-argos_sanitize_process
	.section	.rodata.str1.8
	.align 8
.LC1:
	.string	"[ARGOS] Forensics shellcode will not be injected - Attack located in kernel\n"
	.align 8
.LC3:
	.string	"[ARGOS] Injecting forensics shellcode at 0x%08x[0x%08x]\n"
	.align 8
.LC2:
	.string	"[ARGOS] Injecting forensics code failed. No appropriate location found\n"
	.text
	.p2align 4,,15
.globl argos_forensics
	.type	argos_forensics, @function
argos_forensics:
.LFB226:
	.loc 1 525 0
	pushq	%r15
.LCFI7:
	pushq	%r14
.LCFI8:
	movl	%esi, %r14d
	pushq	%r13
.LCFI9:
	pushq	%r12
.LCFI10:
	pushq	%rbp
.LCFI11:
	movq	%rdi, %rbp
	.loc 1 533 0
	movl	$.LC1, %edi
	.loc 1 525 0
	pushq	%rbx
.LCFI12:
	subq	$8, %rsp
.LCFI13:
	.loc 1 532 0
	testb	$3, 352(%rbp)
	je	.L92
	.loc 1 538 0
	movslq	argos_os_hint(%rip),%rax
	.loc 1 540 0
	movl	$-1, %r13d
	.loc 1 537 0
	xorl	%ebx, %ebx
	.loc 1 540 0
	movl	%r13d, %r15d
	.loc 1 538 0
	salq	$4, %rax
	movl	as_start_kernel(%rax), %r12d
	subl	$4095, %r12d
	jmp	.L57
	.p2align 4,,7
.L61:
.LBB29:
.LBB30:
	.loc 1 447 0
	andl	536(%rbp), %edx
	.loc 1 448 0
	subl	$4096, %eax
	andl	%ebx, %eax
	.loc 1 449 0
	andl	$-4096, %edx
	leal	(%rdx,%rax), %eax
.LBE30:
.LBE29:
	.loc 1 543 0
	cmpl	$-1, %eax
	je	.L78
	.loc 1 544 0
	shrl	$12, %eax
	mov	%eax, %edi
	call	phys_page_find
	.loc 1 548 0
	testq	%rax, %rax
	je	.L78
	.loc 1 549 0
	movl	(%rax), %r13d
	.loc 1 550 0
	movl	%ebx, %r15d
	.loc 1 549 0
	andl	$-4096, %r13d
	.p2align 4,,7
.L79:
	.loc 1 553 0
	addl	$4096, %ebx
	.loc 1 554 0
	cmpl	%r12d, %ebx
	setbe	%dl
	xorl	%eax, %eax
	testl	%ebx, %ebx
	setne	%al
	testl	%edx, %eax
	je	.L58
.L57:
.LBB31:
.LBB32:
	.loc 1 348 0
	movl	516(%rbp), %esi
	.loc 1 349 0
	movl	%ebx, %edx
	.loc 1 350 0
	movl	$4096, %eax
	.loc 1 348 0
	testl	%esi, %esi
	jns	.L61
	.loc 1 354 0
	testb	$32, 532(%rbp)
	je	.L62
.LBB33:
	.loc 1 388 0
	movl	528(%rbp), %eax
	movl	%ebx, %edi
	shrl	$30, %edi
	andl	$-32, %eax
	leal	(%rax,%rdi,8), %edi
	andl	536(%rbp), %edi
	.loc 1 390 0
	mov	%edi, %edi
	call	ldl_phys
	mov	%eax, %eax
	.loc 1 391 0
	testb	$1, %al
	je	.L78
	.loc 1 395 0
	movl	%eax, %edi
	movl	%ebx, %eax
	shrl	$18, %eax
	andl	$-4096, %edi
	andl	$4088, %eax
	addl	%eax, %edi
	andl	536(%rbp), %edi
	.loc 1 397 0
	mov	%edi, %edi
	call	ldl_phys
	mov	%eax, %edx
	.loc 1 398 0
	testb	$1, %dl
	je	.L78
	.loc 1 401 0
	testb	%dl, %dl
	jns	.L66
	.loc 1 403 0
	movl	$2097152, %eax
	.loc 1 404 0
	andl	$-2093057, %edx
	jmp	.L61
	.p2align 4,,7
.L62:
.LBE33:
.LBB34:
	.loc 1 422 0
	movl	528(%rbp), %edi
	movl	%ebx, %eax
	shrl	$20, %eax
	andl	$4092, %eax
	andl	$-4096, %edi
	addl	%eax, %edi
	andl	536(%rbp), %edi
	.loc 1 424 0
	mov	%edi, %edi
	call	ldl_phys
	.loc 1 425 0
	testb	$1, %al
	.loc 1 424 0
	movl	%eax, %edx
	.loc 1 425 0
	je	.L78
	.loc 1 428 0
	testb	%al, %al
	jns	.L71
	testb	$16, 532(%rbp)
	jne	.L93
.L71:
	.loc 1 435 0
	movl	%ebx, %edi
	andl	$-4096, %edx
	shrl	$10, %edi
	andl	$4092, %edi
	leal	(%rdx,%rdi), %edi
	andl	536(%rbp), %edi
	.loc 1 437 0
	mov	%edi, %edi
	call	ldl_phys
	.loc 1 438 0
	testb	$1, %al
	.loc 1 437 0
	movl	%eax, %edx
	.loc 1 438 0
	je	.L78
	.loc 1 440 0
	testb	$4, %al
	je	.L78
	testb	$2, %al
	.p2align 4,,3
	je	.L94
	.p2align 4,,7
.L78:
.LBE34:
.LBE32:
.LBE31:
	.loc 1 551 0
	cmpl	$-1, %r13d
	.p2align 4,,5
	je	.L79
	.p2align 4,,7
.L58:
	.loc 1 556 0
	cmpl	$-1, %r15d
	.p2align 4,,5
	je	.L95
	.loc 1 561 0
	xorl	%eax, %eax
	movl	%r13d, %edx
	movl	%r15d, %esi
	movl	$.LC3, %edi
	call	argos_logf
.LBB35:
.LBB36:
	.loc 1 460 0
	movl	argos_os_hint(%rip), %eax
.LBE36:
	.loc 1 456 0
	movl	%r14d, 4(%rsp)
.LBB37:
	.loc 1 460 0
	decl	%eax
	cmpl	$1, %eax
	ja	.L86
	.loc 1 464 0
	movl	$win32_shellcode, %esi
	.loc 1 465 0
	movl	$257, %r14d
	.loc 1 466 0
	movl	$293, %r12d
.L82:
.LBB38:
	.file 3 "../cpu-all.h"
	.loc 3 929 0
	movl	%r13d, %ebx
.LBB39:
	.loc 3 930 0
	movl	%r12d, %edx
	movl	$1, %ecx
.LBE39:
	.loc 3 929 0
	subl	%r12d, %ebx
.LBE38:
	.loc 1 482 0
	subl	%r12d, %r15d
.LBB40:
	.loc 3 929 0
	leal	4096(%rbx), %edi
.LBB41:
	.loc 3 930 0
	call	cpu_physical_memory_rw
.LBE41:
.LBE40:
.LBB42:
	.loc 3 929 0
	leal	4096(%rbx,%r14), %edi
.LBB43:
	.loc 3 930 0
	leaq	4(%rsp), %rsi
	movl	$1, %ecx
	movl	$4, %edx
	call	cpu_physical_memory_rw
.LBE43:
.LBE42:
	.loc 1 482 0
	leal	4096(%r15), %eax
.LBB44:
	.loc 2 384 0
	mov	%r13d, %edi
.LBB45:
	.loc 2 394 0
	movl	$16384, %edx
	salq	$2, %rdi
	xorl	%esi, %esi
.LBE45:
.LBE44:
	.loc 1 482 0
	movl	%eax, 32(%rbp)
.LBB46:
.LBB47:
	.loc 2 394 0
	addq	argos_memmap(%rip), %rdi
	call	memset
.LBE47:
.LBE46:
.LBE37:
.LBE35:
	.loc 1 565 0
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L95:
	.loc 1 557 0
	movl	$.LC2, %edi
.L92:
	xorl	%eax, %eax
	call	argos_logf
	.loc 1 565 0
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L86:
.LBB48:
.LBB49:
	.loc 1 471 0
	movl	$linux_shellcode, %esi
	.loc 1 472 0
	movl	$62, %r14d
	.loc 1 473 0
	movl	$97, %r12d
	jmp	.L82
.L93:
.LBE49:
.LBE48:
.LBB50:
.LBB51:
.LBB52:
	.loc 1 429 0
	movl	$4194304, %eax
	.loc 1 431 0
	andl	$-4190209, %edx
	jmp	.L61
.L94:
	.loc 1 442 0
	movl	$4096, %eax
	jmp	.L61
.L66:
.LBE52:
.LBB53:
	.loc 1 408 0
	movl	%ebx, %eax
	movl	%edx, %edi
	shrl	$9, %eax
	andl	$-4096, %edi
	andl	$4088, %eax
	addl	%eax, %edi
	andl	536(%rbp), %edi
	.loc 1 411 0
	mov	%edi, %edi
	call	ldq_phys
	movl	%eax, %edx
	.loc 1 414 0
	movl	$4096, %eax
	.loc 1 412 0
	testb	$1, %dl
	jne	.L61
	jmp	.L78
.LBE53:
.LBE51:
.LBE50:
.LFE226:
	.size	argos_forensics, .-argos_forensics
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC4:
	.string	"argos.csi.%d"
.LC5:
	.string	"wb"
	.section	.rodata.str1.8
	.align 8
.LC7:
	.string	"Could not write log header - fwrite()"
	.align 8
.LC8:
	.string	"Could not finalize log - fwrite()"
	.section	.rodata.str1.1
.LC9:
	.string	"[ARGOS] Log generated <%s>\n"
	.section	.rodata.str1.8
	.align 8
.LC6:
	.string	"Could not create argos log - fopen()"
	.text
	.p2align 4,,15
.globl argos_csi
	.type	argos_csi, @function
argos_csi:
.LFB227:
	.loc 1 577 0
	pushq	%r15
.LCFI14:
	pushq	%r14
.LCFI15:
	movl	%ecx, %r14d
	pushq	%r13
.LCFI16:
	movl	%r8d, %r13d
	pushq	%r12
.LCFI17:
	pushq	%rbp
.LCFI18:
	movq	%rdx, %rbp
	.loc 1 588 0
	movl	$.LC4, %edx
	.loc 1 577 0
	pushq	%rbx
.LCFI19:
	movq	%rdi, %rbx
	subq	$296, %rsp
.LCFI20:
	.loc 1 587 0
	movl	argos_instance_id(%rip), %eax
	.loc 1 588 0
	leaq	160(%rsp), %r15
	.loc 1 577 0
	movl	%esi, 12(%rsp)
	.loc 1 588 0
	movl	$128, %esi
	movl	%eax, %ecx
	.loc 1 587 0
	movl	%eax, 8(%rsp)
	.loc 1 588 0
	movq	%r15, %rdi
	xorl	%eax, %eax
	call	snprintf
	.loc 1 590 0
	movl	$.LC5, %esi
	movq	%r15, %rdi
	call	fopen64
	testq	%rax, %rax
	movq	%rax, %r12
	je	.L120
.LBB54:
.LBB55:
	.loc 1 181 0
	xorl	%edi, %edi
	.loc 1 170 0
	movb	$-126, 32(%rsp)
	.loc 1 178 0
	movb	$0, 33(%rsp)
	.loc 1 180 0
	movw	%r13w, 34(%rsp)
	.loc 1 181 0
	call	time
	.loc 1 182 0
	xorl	%ecx, %ecx
	.loc 1 181 0
	movl	%eax, 36(%rsp)
	.p2align 4,,7
.L102:
	.loc 1 183 0
	movslq	%ecx,%rax
	.loc 1 182 0
	incl	%ecx
	.loc 1 183 0
	movl	(%rbx,%rax,4), %edx
	movl	%edx, 40(%rsp,%rax,4)
	.loc 1 184 0
	movl	64(%rbx,%rax,8), %edx
	movl	%edx, 72(%rsp,%rax,4)
	.loc 1 186 0
	movl	68(%rbx,%rax,8), %edx
	andl	$1073741823, %edx
	.loc 1 182 0
	cmpl	$7, %ecx
	.loc 1 186 0
	movl	%edx, 104(%rsp,%rax,4)
	.loc 1 182 0
	jle	.L102
	.loc 1 189 0
	movl	12(%rsp), %eax
	movl	%eax, 136(%rsp)
	.loc 1 190 0
	xorl	%eax, %eax
	testq	%rbp, %rbp
	je	.L104
	movl	(%rbp), %eax
.L104:
	movl	%eax, 140(%rsp)
	.loc 1 193 0
	xorl	%eax, %eax
	testq	%rbp, %rbp
	.loc 1 191 0
	movl	%r14d, 148(%rsp)
	.loc 1 193 0
	je	.L106
	movl	4(%rbp), %eax
	andl	$1073741823, %eax
.L106:
	movl	%eax, 144(%rsp)
	.loc 1 196 0
	movl	36(%rbx), %eax
	.loc 1 198 0
	leaq	32(%rsp), %rdi
	movq	%r12, %rcx
	movl	$1, %edx
	movl	$124, %esi
	.loc 1 196 0
	movl	%eax, 152(%rsp)
	.loc 1 198 0
	call	fwrite
	cmpq	$1, %rax
	movq	%rax, %rbp
	.loc 1 199 0
	movl	$.LC7, %edi
	.loc 1 198 0
	je	.L121
.L118:
.LBE55:
.LBE54:
.LBB56:
.LBB57:
	.loc 1 210 0
	call	perror
.L109:
.LBE57:
.LBE56:
	.loc 1 611 0
	movq	%r12, %rdi
	call	fclose
.L119:
	.loc 1 612 0
	movl	$-1, %eax
.L96:
	.loc 1 614 0
	addq	$296, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L121:
	.loc 1 598 0
	movl	12(%rsp), %edx
	xorl	%r8d, %r8d
	movl	$1, %ecx
	movq	%rbx, %rsi
	movq	%r12, %rdi
	call	argos_process_proc
	testl	%eax, %eax
	jne	.L109
.LBB58:
.LBB59:
	.loc 1 208 0
	cld
	leaq	16(%rsp), %rdi
	xorl	%eax, %eax
	movq	%rbp, %rcx
	.loc 1 209 0
	movl	$1, %edx
	movl	$12, %esi
	.loc 1 208 0
	rep
	stosq
	.loc 1 209 0
	movq	%r12, %rcx
	.loc 1 208 0
	movl	$0, (%rdi)
	.loc 1 209 0
	leaq	16(%rsp), %rdi
	call	fwrite
	decq	%rax
	je	.L112
	.loc 1 210 0
	movl	$.LC8, %edi
	jmp	.L118
.L112:
.LBE59:
.LBE58:
	.loc 1 604 0
	movq	%r12, %rdi
	call	fclose
	.loc 1 606 0
	movq	%r15, %rsi
	movl	$.LC9, %edi
	xorl	%eax, %eax
	call	argos_logf
	.loc 1 608 0
	movl	8(%rsp), %eax
	jmp	.L96
.L120:
	.loc 1 591 0
	movl	$.LC6, %edi
	call	perror
	jmp	.L119
.LFE227:
	.size	argos_csi, .-argos_csi
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
	.quad	.LFB222
	.quad	.LFE222-.LFB222
	.byte	0x4
	.long	.LCFI0-.LFB222
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI1-.LCFI0
	.byte	0xe
	.uleb128 0x18
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI2-.LCFI1
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI3-.LCFI2
	.byte	0xe
	.uleb128 0x28
	.byte	0x8c
	.uleb128 0x5
	.byte	0x8d
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI4-.LCFI3
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI5-.LCFI4
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI6-.LCFI5
	.byte	0xe
	.uleb128 0x70
	.byte	0x83
	.uleb128 0x7
	.byte	0x86
	.uleb128 0x6
	.align 8
.LEFDE0:
.LSFDE2:
	.long	.LEFDE2-.LASFDE2
.LASFDE2:
	.long	.Lframe0
	.quad	.LFB225
	.quad	.LFE225-.LFB225
	.align 8
.LEFDE2:
.LSFDE4:
	.long	.LEFDE4-.LASFDE4
.LASFDE4:
	.long	.Lframe0
	.quad	.LFB226
	.quad	.LFE226-.LFB226
	.byte	0x4
	.long	.LCFI7-.LFB226
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI8-.LCFI7
	.byte	0xe
	.uleb128 0x18
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI9-.LCFI8
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI10-.LCFI9
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI11-.LCFI10
	.byte	0xe
	.uleb128 0x30
	.byte	0x86
	.uleb128 0x6
	.byte	0x8c
	.uleb128 0x5
	.byte	0x8d
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI12-.LCFI11
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI13-.LCFI12
	.byte	0xe
	.uleb128 0x40
	.byte	0x83
	.uleb128 0x7
	.align 8
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.quad	.LFB227
	.quad	.LFE227-.LFB227
	.byte	0x4
	.long	.LCFI14-.LFB227
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI15-.LCFI14
	.byte	0xe
	.uleb128 0x18
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI16-.LCFI15
	.byte	0xe
	.uleb128 0x20
	.byte	0x8d
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI17-.LCFI16
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI18-.LCFI17
	.byte	0xe
	.uleb128 0x30
	.byte	0x86
	.uleb128 0x6
	.byte	0x8c
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI19-.LCFI18
	.byte	0xe
	.uleb128 0x38
	.byte	0x83
	.uleb128 0x7
	.byte	0x4
	.long	.LCFI20-.LCFI19
	.byte	0xe
	.uleb128 0x160
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
	.quad	.LFB222
	.quad	.LFE222-.LFB222
	.byte	0x4
	.long	.LCFI0-.LFB222
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI1-.LCFI0
	.byte	0xe
	.uleb128 0x18
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI2-.LCFI1
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI3-.LCFI2
	.byte	0xe
	.uleb128 0x28
	.byte	0x8c
	.uleb128 0x5
	.byte	0x8d
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI4-.LCFI3
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI5-.LCFI4
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI6-.LCFI5
	.byte	0xe
	.uleb128 0x70
	.byte	0x83
	.uleb128 0x7
	.byte	0x86
	.uleb128 0x6
	.align 8
.LEFDE1:
.LSFDE3:
	.long	.LEFDE3-.LASFDE3
.LASFDE3:
	.long	.LASFDE3-.Lframe1
	.quad	.LFB225
	.quad	.LFE225-.LFB225
	.align 8
.LEFDE3:
.LSFDE5:
	.long	.LEFDE5-.LASFDE5
.LASFDE5:
	.long	.LASFDE5-.Lframe1
	.quad	.LFB226
	.quad	.LFE226-.LFB226
	.byte	0x4
	.long	.LCFI7-.LFB226
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI8-.LCFI7
	.byte	0xe
	.uleb128 0x18
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI9-.LCFI8
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI10-.LCFI9
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI11-.LCFI10
	.byte	0xe
	.uleb128 0x30
	.byte	0x86
	.uleb128 0x6
	.byte	0x8c
	.uleb128 0x5
	.byte	0x8d
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI12-.LCFI11
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI13-.LCFI12
	.byte	0xe
	.uleb128 0x40
	.byte	0x83
	.uleb128 0x7
	.align 8
.LEFDE5:
.LSFDE7:
	.long	.LEFDE7-.LASFDE7
.LASFDE7:
	.long	.LASFDE7-.Lframe1
	.quad	.LFB227
	.quad	.LFE227-.LFB227
	.byte	0x4
	.long	.LCFI14-.LFB227
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI15-.LCFI14
	.byte	0xe
	.uleb128 0x18
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI16-.LCFI15
	.byte	0xe
	.uleb128 0x20
	.byte	0x8d
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI17-.LCFI16
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI18-.LCFI17
	.byte	0xe
	.uleb128 0x30
	.byte	0x86
	.uleb128 0x6
	.byte	0x8c
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI19-.LCFI18
	.byte	0xe
	.uleb128 0x38
	.byte	0x83
	.uleb128 0x7
	.byte	0x4
	.long	.LCFI20-.LCFI19
	.byte	0xe
	.uleb128 0x160
	.align 8
.LEFDE7:
	.file 4 "/usr/include/stdio.h"
	.file 5 "/usr/include/libio.h"
	.file 6 "/usr/include/bits/types.h"
	.file 7 "/usr/lib/gcc/x86_64-linux-gnu/3.4.6/include/stddef.h"
	.file 8 "/home/remco/Projects/Argos/src/target-i386/cpu.h"
	.file 9 "../cpu-defs.h"
	.file 10 "/usr/include/stdint.h"
	.file 11 "../argos-tag.h"
	.file 12 "../argos.h"
	.file 13 "/home/remco/Projects/Argos/src/target-i386/argos-shellcode.h"
	.file 14 "/usr/include/sys/types.h"
	.file 15 "/home/remco/Projects/Argos/src/fpu/softfloat-native.h"
	.file 16 "/usr/include/setjmp.h"
	.file 17 "/usr/include/bits/setjmp.h"
	.file 18 "/usr/include/bits/sigset.h"
	.file 19 "../exec-all.h"
	.file 20 "../argos-common.h"
	.file 21 "../argos-memmap.h"
	.text
.Letext0:
	.section	.debug_info
	.long	0x1bea
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.Ldebug_line0
	.quad	.Letext0
	.quad	.Ltext0
	.long	.LASF283
	.byte	0x1
	.long	.LASF284
	.long	.LASF285
	.uleb128 0x2
	.long	.LASF7
	.byte	0x7
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
	.byte	0x6
	.byte	0x8d
	.long	0x69
	.uleb128 0x2
	.long	.LASF9
	.byte	0x6
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
	.byte	0x4
	.byte	0x31
	.long	0xa7
	.uleb128 0x7
	.long	0x273
	.long	.LASF42
	.byte	0xd8
	.byte	0x4
	.byte	0x2d
	.uleb128 0x8
	.long	.LASF12
	.byte	0x5
	.value	0x110
	.long	0x62
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF13
	.byte	0x5
	.value	0x115
	.long	0x8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF14
	.byte	0x5
	.value	0x116
	.long	0x8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.long	.LASF15
	.byte	0x5
	.value	0x117
	.long	0x8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.long	.LASF16
	.byte	0x5
	.value	0x118
	.long	0x8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x8
	.long	.LASF17
	.byte	0x5
	.value	0x119
	.long	0x8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x8
	.long	.LASF18
	.byte	0x5
	.value	0x11a
	.long	0x8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x8
	.long	.LASF19
	.byte	0x5
	.value	0x11b
	.long	0x8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x8
	.long	.LASF20
	.byte	0x5
	.value	0x11c
	.long	0x8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x8
	.long	.LASF21
	.byte	0x5
	.value	0x11e
	.long	0x8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x8
	.long	.LASF22
	.byte	0x5
	.value	0x11f
	.long	0x8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x8
	.long	.LASF23
	.byte	0x5
	.value	0x120
	.long	0x8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x8
	.long	.LASF24
	.byte	0x5
	.value	0x122
	.long	0x2b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x8
	.long	.LASF25
	.byte	0x5
	.value	0x124
	.long	0x2b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x8
	.long	.LASF26
	.byte	0x5
	.value	0x126
	.long	0x62
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x8
	.long	.LASF27
	.byte	0x5
	.value	0x12a
	.long	0x62
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x8
	.long	.LASF28
	.byte	0x5
	.value	0x12c
	.long	0x70
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x8
	.long	.LASF29
	.byte	0x5
	.value	0x130
	.long	0x46
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x8
	.long	.LASF30
	.byte	0x5
	.value	0x131
	.long	0x54
	.byte	0x3
	.byte	0x23
	.uleb128 0x82
	.uleb128 0x8
	.long	.LASF31
	.byte	0x5
	.value	0x132
	.long	0x2bd
	.byte	0x3
	.byte	0x23
	.uleb128 0x83
	.uleb128 0x8
	.long	.LASF32
	.byte	0x5
	.value	0x136
	.long	0x2cd
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x8
	.long	.LASF33
	.byte	0x5
	.value	0x13f
	.long	0x7b
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x8
	.long	.LASF34
	.byte	0x5
	.value	0x148
	.long	0x8d
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x8
	.long	.LASF35
	.byte	0x5
	.value	0x149
	.long	0x8d
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x8
	.long	.LASF36
	.byte	0x5
	.value	0x14a
	.long	0x8d
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x8
	.long	.LASF37
	.byte	0x5
	.value	0x14b
	.long	0x8d
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x8
	.long	.LASF38
	.byte	0x5
	.value	0x14c
	.long	0x2d
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x8
	.long	.LASF39
	.byte	0x5
	.value	0x14e
	.long	0x62
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x8
	.long	.LASF40
	.byte	0x5
	.value	0x150
	.long	0x2d3
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.byte	0x0
	.uleb128 0x9
	.long	.LASF41
	.byte	0x5
	.byte	0xb4
	.uleb128 0x7
	.long	0x2b1
	.long	.LASF43
	.byte	0x18
	.byte	0x5
	.byte	0xba
	.uleb128 0xa
	.long	.LASF44
	.byte	0x5
	.byte	0xbb
	.long	0x2b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF45
	.byte	0x5
	.byte	0xbc
	.long	0x2b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF46
	.byte	0x5
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
	.byte	0xe
	.byte	0xc5
	.long	0x62
	.uleb128 0x2
	.long	.LASF49
	.byte	0xe
	.byte	0xc6
	.long	0x69
	.uleb128 0xe
	.long	0x322
	.byte	0x80
	.byte	0x12
	.byte	0x20
	.uleb128 0xa
	.long	.LASF50
	.byte	0x12
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
	.byte	0x12
	.byte	0x20
	.long	0x30b
	.uleb128 0x3
	.long	.LASF52
	.byte	0x8
	.byte	0x7
	.uleb128 0x2
	.long	.LASF53
	.byte	0x11
	.byte	0x20
	.long	0x34f
	.uleb128 0xb
	.long	0x35f
	.long	0x69
	.uleb128 0xc
	.long	0x86
	.byte	0x7
	.byte	0x0
	.uleb128 0x7
	.long	0x396
	.long	.LASF54
	.byte	0xc8
	.byte	0x10
	.byte	0x24
	.uleb128 0xa
	.long	.LASF55
	.byte	0x10
	.byte	0x29
	.long	0x344
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF56
	.byte	0x10
	.byte	0x2a
	.long	0x62
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xa
	.long	.LASF57
	.byte	0x10
	.byte	0x2b
	.long	0x332
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.byte	0x0
	.uleb128 0x2
	.long	.LASF58
	.byte	0x10
	.byte	0x31
	.long	0x3a1
	.uleb128 0xb
	.long	0x3b1
	.long	0x35f
	.uleb128 0xc
	.long	0x86
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.long	.LASF59
	.byte	0xa
	.byte	0x31
	.long	0x3f
	.uleb128 0x2
	.long	.LASF60
	.byte	0xa
	.byte	0x32
	.long	0x46
	.uleb128 0x2
	.long	.LASF61
	.byte	0xa
	.byte	0x34
	.long	0x4d
	.uleb128 0x2
	.long	.LASF62
	.byte	0xa
	.byte	0x38
	.long	0x38
	.uleb128 0x2
	.long	.LASF63
	.byte	0x9
	.byte	0x31
	.long	0x3c7
	.uleb128 0x2
	.long	.LASF64
	.byte	0x9
	.byte	0x49
	.long	0x3d2
	.uleb128 0x7
	.long	0x438
	.long	.LASF65
	.byte	0x18
	.byte	0x9
	.byte	0x69
	.uleb128 0xa
	.long	.LASF66
	.byte	0x9
	.byte	0x70
	.long	0x3dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF67
	.byte	0x9
	.byte	0x71
	.long	0x3dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.long	.LASF68
	.byte	0x9
	.byte	0x72
	.long	0x3dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF69
	.byte	0x9
	.byte	0x74
	.long	0x3e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.long	.LASF65
	.byte	0x9
	.byte	0x75
	.long	0x3f3
	.uleb128 0x3
	.long	.LASF70
	.byte	0x4
	.byte	0x4
	.uleb128 0x3
	.long	.LASF71
	.byte	0x8
	.byte	0x4
	.uleb128 0x2
	.long	.LASF72
	.byte	0xf
	.byte	0x3b
	.long	0x443
	.uleb128 0x2
	.long	.LASF73
	.byte	0xf
	.byte	0x3c
	.long	0x44a
	.uleb128 0x2
	.long	.LASF74
	.byte	0xf
	.byte	0x3e
	.long	0x472
	.uleb128 0x3
	.long	.LASF75
	.byte	0x10
	.byte	0x4
	.uleb128 0x7
	.long	0x4a2
	.long	.LASF76
	.byte	0x2
	.byte	0xf
	.byte	0x6d
	.uleb128 0xa
	.long	.LASF77
	.byte	0xf
	.byte	0x6e
	.long	0x54
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF78
	.byte	0xf
	.byte	0x70
	.long	0x54
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0x0
	.uleb128 0x2
	.long	.LASF76
	.byte	0xf
	.byte	0x72
	.long	0x479
	.uleb128 0xf
	.long	.LASF79
	.byte	0x8
	.value	0x198
	.long	0x467
	.uleb128 0x10
	.long	0x503
	.long	.LASF80
	.byte	0x10
	.byte	0x8
	.value	0x19d
	.uleb128 0x8
	.long	.LASF81
	.byte	0x8
	.value	0x19e
	.long	0x3c7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF82
	.byte	0x8
	.value	0x19f
	.long	0x3dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.long	.LASF83
	.byte	0x8
	.value	0x1a0
	.long	0x3c7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF84
	.byte	0x8
	.value	0x1a1
	.long	0x3c7
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0xf
	.long	.LASF80
	.byte	0x8
	.value	0x1a2
	.long	0x4b9
	.uleb128 0x11
	.long	0x55b
	.byte	0x10
	.byte	0x8
	.value	0x1ab
	.uleb128 0x12
	.string	"_b"
	.byte	0x8
	.value	0x1a5
	.long	0x55b
	.uleb128 0x12
	.string	"_w"
	.byte	0x8
	.value	0x1a6
	.long	0x56b
	.uleb128 0x12
	.string	"_l"
	.byte	0x8
	.value	0x1a7
	.long	0x57b
	.uleb128 0x12
	.string	"_q"
	.byte	0x8
	.value	0x1a8
	.long	0x58b
	.uleb128 0x12
	.string	"_s"
	.byte	0x8
	.value	0x1a9
	.long	0x59b
	.uleb128 0x12
	.string	"_d"
	.byte	0x8
	.value	0x1aa
	.long	0x5ab
	.byte	0x0
	.uleb128 0xb
	.long	0x56b
	.long	0x3b1
	.uleb128 0xc
	.long	0x86
	.byte	0xf
	.byte	0x0
	.uleb128 0xb
	.long	0x57b
	.long	0x3bc
	.uleb128 0xc
	.long	0x86
	.byte	0x7
	.byte	0x0
	.uleb128 0xb
	.long	0x58b
	.long	0x3c7
	.uleb128 0xc
	.long	0x86
	.byte	0x3
	.byte	0x0
	.uleb128 0xb
	.long	0x59b
	.long	0x3d2
	.uleb128 0xc
	.long	0x86
	.byte	0x1
	.byte	0x0
	.uleb128 0xb
	.long	0x5ab
	.long	0x451
	.uleb128 0xc
	.long	0x86
	.byte	0x3
	.byte	0x0
	.uleb128 0xb
	.long	0x5bb
	.long	0x45c
	.uleb128 0xc
	.long	0x86
	.byte	0x1
	.byte	0x0
	.uleb128 0xf
	.long	.LASF85
	.byte	0x8
	.value	0x1ab
	.long	0x50f
	.uleb128 0x11
	.long	0x5fc
	.byte	0x8
	.byte	0x8
	.value	0x1b2
	.uleb128 0x12
	.string	"_b"
	.byte	0x8
	.value	0x1ae
	.long	0x5fc
	.uleb128 0x12
	.string	"_w"
	.byte	0x8
	.value	0x1af
	.long	0x60c
	.uleb128 0x12
	.string	"_l"
	.byte	0x8
	.value	0x1b0
	.long	0x61c
	.uleb128 0x12
	.string	"q"
	.byte	0x8
	.value	0x1b1
	.long	0x3d2
	.byte	0x0
	.uleb128 0xb
	.long	0x60c
	.long	0x3b1
	.uleb128 0xc
	.long	0x86
	.byte	0x7
	.byte	0x0
	.uleb128 0xb
	.long	0x61c
	.long	0x3bc
	.uleb128 0xc
	.long	0x86
	.byte	0x1
	.byte	0x0
	.uleb128 0xb
	.long	0x62c
	.long	0x3c7
	.uleb128 0xc
	.long	0x86
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	.LASF86
	.byte	0x8
	.value	0x1b2
	.long	0x5c7
	.uleb128 0x2
	.long	.LASF87
	.byte	0xc
	.byte	0x2f
	.long	0x3c7
	.uleb128 0x2
	.long	.LASF88
	.byte	0xc
	.byte	0x34
	.long	0x3c7
	.uleb128 0x2
	.long	.LASF89
	.byte	0xc
	.byte	0x35
	.long	0x643
	.uleb128 0x2
	.long	.LASF90
	.byte	0xc
	.byte	0x4f
	.long	0x64e
	.uleb128 0x7
	.long	0x68d
	.long	.LASF91
	.byte	0x8
	.byte	0xb
	.byte	0x37
	.uleb128 0xa
	.long	.LASF92
	.byte	0xb
	.byte	0x38
	.long	0x638
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF93
	.byte	0xb
	.byte	0x39
	.long	0x643
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.long	.LASF94
	.byte	0xb
	.byte	0x3d
	.long	0x664
	.uleb128 0x7
	.long	0x80d
	.long	.LASF95
	.byte	0xd0
	.byte	0xd
	.byte	0x36
	.uleb128 0xa
	.long	.LASF96
	.byte	0xd
	.byte	0x38
	.long	0x4d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF97
	.byte	0xd
	.byte	0x39
	.long	0x4d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x13
	.string	"cr3"
	.byte	0xd
	.byte	0x3d
	.long	0x3dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF98
	.byte	0xd
	.byte	0x3f
	.long	0x80d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.long	.LASF99
	.byte	0xd
	.byte	0x41
	.long	0x4d
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.long	.LASF100
	.byte	0xd
	.byte	0x43
	.long	0x4d
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xa
	.long	.LASF101
	.byte	0xd
	.byte	0x45
	.long	0x4d
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.long	.LASF102
	.byte	0xd
	.byte	0x47
	.long	0x4d
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xa
	.long	.LASF103
	.byte	0xd
	.byte	0x4a
	.long	0x3dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xa
	.long	.LASF104
	.byte	0xd
	.byte	0x4b
	.long	0x3dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xa
	.long	.LASF105
	.byte	0xd
	.byte	0x4c
	.long	0x3dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xa
	.long	.LASF106
	.byte	0xd
	.byte	0x4e
	.long	0x813
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xa
	.long	.LASF107
	.byte	0xd
	.byte	0x50
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0xa
	.long	.LASF108
	.byte	0xd
	.byte	0x52
	.long	0x4d
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xa
	.long	.LASF109
	.byte	0xd
	.byte	0x54
	.long	0x823
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xa
	.long	.LASF110
	.byte	0xd
	.byte	0x56
	.long	0x3dd
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xa
	.long	.LASF111
	.byte	0xd
	.byte	0x58
	.long	0x833
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xa
	.long	.LASF112
	.byte	0xd
	.byte	0x5b
	.long	0x38
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xa
	.long	.LASF113
	.byte	0xd
	.byte	0x5c
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xa
	.long	.LASF114
	.byte	0xd
	.byte	0x5e
	.long	0x4d
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0xa
	.long	.LASF115
	.byte	0xd
	.byte	0x60
	.long	0x3dd
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xa
	.long	.LASF116
	.byte	0xd
	.byte	0x62
	.long	0x833
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0xa
	.long	.LASF117
	.byte	0xd
	.byte	0x65
	.long	0x38
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xa
	.long	.LASF118
	.byte	0xd
	.byte	0x66
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.uleb128 0xa
	.long	.LASF119
	.byte	0xd
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
	.long	0x823
	.long	0x95
	.uleb128 0xc
	.long	0x86
	.byte	0x10
	.byte	0x0
	.uleb128 0xb
	.long	0x833
	.long	0x643
	.uleb128 0xc
	.long	0x86
	.byte	0x10
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x643
	.uleb128 0x2
	.long	.LASF120
	.byte	0xd
	.byte	0x69
	.long	0x698
	.uleb128 0x11
	.long	0x864
	.byte	0x10
	.byte	0x8
	.value	0x20f
	.uleb128 0x12
	.string	"d"
	.byte	0x8
	.value	0x20a
	.long	0x4ad
	.uleb128 0x12
	.string	"mmx"
	.byte	0x8
	.value	0x20e
	.long	0x62c
	.byte	0x0
	.uleb128 0x11
	.long	0x89a
	.byte	0x8
	.byte	0x8
	.value	0x219
	.uleb128 0x12
	.string	"f"
	.byte	0x8
	.value	0x215
	.long	0x443
	.uleb128 0x12
	.string	"d"
	.byte	0x8
	.value	0x216
	.long	0x44a
	.uleb128 0x12
	.string	"i32"
	.byte	0x8
	.value	0x217
	.long	0x62
	.uleb128 0x12
	.string	"i64"
	.byte	0x8
	.value	0x218
	.long	0x300
	.byte	0x0
	.uleb128 0x14
	.long	0x8c2
	.byte	0x10
	.byte	0x8
	.value	0x246
	.uleb128 0x8
	.long	.LASF121
	.byte	0x8
	.value	0x246
	.long	0x3dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF69
	.byte	0x8
	.value	0x246
	.long	0x3e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x15
	.long	0xe5e
	.long	.LASF122
	.value	0xb820
	.byte	0x8
	.value	0x1d8
	.uleb128 0x8
	.long	.LASF123
	.byte	0x8
	.value	0x1df
	.long	0xe5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.string	"eip"
	.byte	0x8
	.value	0x1e0
	.long	0x3dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x8
	.long	.LASF124
	.byte	0x8
	.value	0x1e1
	.long	0x3dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x8
	.long	.LASF125
	.byte	0x8
	.value	0x1e6
	.long	0x68d
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x8
	.long	.LASF126
	.byte	0x8
	.value	0x1e6
	.long	0x68d
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x8
	.long	.LASF127
	.byte	0x8
	.value	0x1e6
	.long	0x68d
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x8
	.long	.LASF128
	.byte	0x8
	.value	0x1e7
	.long	0xe6e
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x8
	.long	.LASF129
	.byte	0x8
	.value	0x1e9
	.long	0x839
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x8
	.long	.LASF130
	.byte	0x8
	.value	0x1ec
	.long	0x3dd
	.byte	0x3
	.byte	0x23
	.uleb128 0x150
	.uleb128 0x8
	.long	.LASF131
	.byte	0x8
	.value	0x1ed
	.long	0x3dd
	.byte	0x3
	.byte	0x23
	.uleb128 0x154
	.uleb128 0x8
	.long	.LASF132
	.byte	0x8
	.value	0x1ee
	.long	0x3c7
	.byte	0x3
	.byte	0x23
	.uleb128 0x158
	.uleb128 0x16
	.string	"df"
	.byte	0x8
	.value	0x1ef
	.long	0x2f5
	.byte	0x3
	.byte	0x23
	.uleb128 0x15c
	.uleb128 0x8
	.long	.LASF133
	.byte	0x8
	.value	0x1f0
	.long	0x3c7
	.byte	0x3
	.byte	0x23
	.uleb128 0x160
	.uleb128 0x8
	.long	.LASF134
	.byte	0x8
	.value	0x1f3
	.long	0xe7e
	.byte	0x3
	.byte	0x23
	.uleb128 0x164
	.uleb128 0x16
	.string	"ldt"
	.byte	0x8
	.value	0x1f4
	.long	0x503
	.byte	0x3
	.byte	0x23
	.uleb128 0x1c4
	.uleb128 0x16
	.string	"tr"
	.byte	0x8
	.value	0x1f5
	.long	0x503
	.byte	0x3
	.byte	0x23
	.uleb128 0x1d4
	.uleb128 0x16
	.string	"gdt"
	.byte	0x8
	.value	0x1f6
	.long	0x503
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e4
	.uleb128 0x16
	.string	"idt"
	.byte	0x8
	.value	0x1f7
	.long	0x503
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f4
	.uleb128 0x16
	.string	"cr"
	.byte	0x8
	.value	0x1f9
	.long	0xe8e
	.byte	0x3
	.byte	0x23
	.uleb128 0x204
	.uleb128 0x8
	.long	.LASF135
	.byte	0x8
	.value	0x1fa
	.long	0x3c7
	.byte	0x3
	.byte	0x23
	.uleb128 0x218
	.uleb128 0x8
	.long	.LASF136
	.byte	0x8
	.value	0x201
	.long	0x3dd
	.byte	0x3
	.byte	0x23
	.uleb128 0x21c
	.uleb128 0x8
	.long	.LASF137
	.byte	0x8
	.value	0x202
	.long	0x3dd
	.byte	0x3
	.byte	0x23
	.uleb128 0x220
	.uleb128 0x8
	.long	.LASF138
	.byte	0x8
	.value	0x204
	.long	0x4d
	.byte	0x3
	.byte	0x23
	.uleb128 0x224
	.uleb128 0x8
	.long	.LASF139
	.byte	0x8
	.value	0x205
	.long	0x4d
	.byte	0x3
	.byte	0x23
	.uleb128 0x228
	.uleb128 0x8
	.long	.LASF140
	.byte	0x8
	.value	0x206
	.long	0x4d
	.byte	0x3
	.byte	0x23
	.uleb128 0x22c
	.uleb128 0x8
	.long	.LASF141
	.byte	0x8
	.value	0x207
	.long	0x5fc
	.byte	0x3
	.byte	0x23
	.uleb128 0x230
	.uleb128 0x8
	.long	.LASF142
	.byte	0x8
	.value	0x20f
	.long	0xe9e
	.byte	0x3
	.byte	0x23
	.uleb128 0x240
	.uleb128 0x8
	.long	.LASF143
	.byte	0x8
	.value	0x212
	.long	0x4a2
	.byte	0x3
	.byte	0x23
	.uleb128 0x2c0
	.uleb128 0x16
	.string	"ft0"
	.byte	0x8
	.value	0x213
	.long	0x4ad
	.byte	0x3
	.byte	0x23
	.uleb128 0x2d0
	.uleb128 0x8
	.long	.LASF144
	.byte	0x8
	.value	0x219
	.long	0x864
	.byte	0x3
	.byte	0x23
	.uleb128 0x2e0
	.uleb128 0x8
	.long	.LASF145
	.byte	0x8
	.value	0x21b
	.long	0x4a2
	.byte	0x3
	.byte	0x23
	.uleb128 0x2e8
	.uleb128 0x8
	.long	.LASF146
	.byte	0x8
	.value	0x21c
	.long	0x3c7
	.byte	0x3
	.byte	0x23
	.uleb128 0x2ec
	.uleb128 0x8
	.long	.LASF147
	.byte	0x8
	.value	0x21d
	.long	0xeae
	.byte	0x3
	.byte	0x23
	.uleb128 0x2f0
	.uleb128 0x8
	.long	.LASF148
	.byte	0x8
	.value	0x21e
	.long	0x5bb
	.byte	0x3
	.byte	0x23
	.uleb128 0x370
	.uleb128 0x8
	.long	.LASF149
	.byte	0x8
	.value	0x21f
	.long	0x62c
	.byte	0x3
	.byte	0x23
	.uleb128 0x380
	.uleb128 0x8
	.long	.LASF150
	.byte	0x8
	.value	0x222
	.long	0x3c7
	.byte	0x3
	.byte	0x23
	.uleb128 0x388
	.uleb128 0x8
	.long	.LASF151
	.byte	0x8
	.value	0x223
	.long	0x3c7
	.byte	0x3
	.byte	0x23
	.uleb128 0x38c
	.uleb128 0x8
	.long	.LASF152
	.byte	0x8
	.value	0x224
	.long	0x3c7
	.byte	0x3
	.byte	0x23
	.uleb128 0x390
	.uleb128 0x8
	.long	.LASF153
	.byte	0x8
	.value	0x225
	.long	0x3d2
	.byte	0x3
	.byte	0x23
	.uleb128 0x398
	.uleb128 0x8
	.long	.LASF154
	.byte	0x8
	.value	0x226
	.long	0x3d2
	.byte	0x3
	.byte	0x23
	.uleb128 0x3a0
	.uleb128 0x8
	.long	.LASF155
	.byte	0x8
	.value	0x228
	.long	0x3e8
	.byte	0x3
	.byte	0x23
	.uleb128 0x3a8
	.uleb128 0x8
	.long	.LASF156
	.byte	0x8
	.value	0x229
	.long	0x3e8
	.byte	0x3
	.byte	0x23
	.uleb128 0x3b0
	.uleb128 0x8
	.long	.LASF157
	.byte	0x8
	.value	0x22a
	.long	0x3d2
	.byte	0x3
	.byte	0x23
	.uleb128 0x3b8
	.uleb128 0x8
	.long	.LASF158
	.byte	0x8
	.value	0x22b
	.long	0x3bc
	.byte	0x3
	.byte	0x23
	.uleb128 0x3c0
	.uleb128 0x8
	.long	.LASF159
	.byte	0x8
	.value	0x22c
	.long	0x3bc
	.byte	0x3
	.byte	0x23
	.uleb128 0x3c2
	.uleb128 0x8
	.long	.LASF160
	.byte	0x8
	.value	0x22d
	.long	0x3bc
	.byte	0x3
	.byte	0x23
	.uleb128 0x3c4
	.uleb128 0x8
	.long	.LASF161
	.byte	0x8
	.value	0x22e
	.long	0x3bc
	.byte	0x3
	.byte	0x23
	.uleb128 0x3c6
	.uleb128 0x8
	.long	.LASF162
	.byte	0x8
	.value	0x22f
	.long	0x3c7
	.byte	0x3
	.byte	0x23
	.uleb128 0x3c8
	.uleb128 0x16
	.string	"pat"
	.byte	0x8
	.value	0x238
	.long	0x3d2
	.byte	0x3
	.byte	0x23
	.uleb128 0x3d0
	.uleb128 0x8
	.long	.LASF163
	.byte	0x8
	.value	0x23b
	.long	0x396
	.byte	0x3
	.byte	0x23
	.uleb128 0x3d8
	.uleb128 0x8
	.long	.LASF164
	.byte	0x8
	.value	0x23c
	.long	0x62
	.byte	0x3
	.byte	0x23
	.uleb128 0x4a0
	.uleb128 0x8
	.long	.LASF165
	.byte	0x8
	.value	0x23d
	.long	0x62
	.byte	0x3
	.byte	0x23
	.uleb128 0x4a4
	.uleb128 0x8
	.long	.LASF166
	.byte	0x8
	.value	0x23e
	.long	0x62
	.byte	0x3
	.byte	0x23
	.uleb128 0x4a8
	.uleb128 0x8
	.long	.LASF167
	.byte	0x8
	.value	0x23f
	.long	0x3dd
	.byte	0x3
	.byte	0x23
	.uleb128 0x4ac
	.uleb128 0x16
	.string	"dr"
	.byte	0x8
	.value	0x240
	.long	0xe5e
	.byte	0x3
	.byte	0x23
	.uleb128 0x4b0
	.uleb128 0x8
	.long	.LASF168
	.byte	0x8
	.value	0x241
	.long	0x3c7
	.byte	0x3
	.byte	0x23
	.uleb128 0x4d0
	.uleb128 0x8
	.long	.LASF169
	.byte	0x8
	.value	0x242
	.long	0x62
	.byte	0x3
	.byte	0x23
	.uleb128 0x4d4
	.uleb128 0x8
	.long	.LASF170
	.byte	0x8
	.value	0x243
	.long	0x62
	.byte	0x3
	.byte	0x23
	.uleb128 0x4d8
	.uleb128 0x8
	.long	.LASF171
	.byte	0x8
	.value	0x244
	.long	0x62
	.byte	0x3
	.byte	0x23
	.uleb128 0x4dc
	.uleb128 0x8
	.long	.LASF172
	.byte	0x8
	.value	0x246
	.long	0xf81
	.byte	0x3
	.byte	0x23
	.uleb128 0x4e0
	.uleb128 0x8
	.long	.LASF173
	.byte	0x8
	.value	0x246
	.long	0x38
	.byte	0x3
	.byte	0x23
	.uleb128 0x4e8
	.uleb128 0x8
	.long	.LASF174
	.byte	0x8
	.value	0x246
	.long	0x3dd
	.byte	0x3
	.byte	0x23
	.uleb128 0x4f0
	.uleb128 0x8
	.long	.LASF175
	.byte	0x8
	.value	0x246
	.long	0xf87
	.byte	0x3
	.byte	0x23
	.uleb128 0x4f8
	.uleb128 0x8
	.long	.LASF176
	.byte	0x8
	.value	0x246
	.long	0xf9d
	.byte	0x3
	.byte	0x23
	.uleb128 0x34f8
	.uleb128 0x8
	.long	.LASF177
	.byte	0x8
	.value	0x246
	.long	0xfae
	.byte	0x4
	.byte	0x23
	.uleb128 0xb4f8
	.uleb128 0x8
	.long	.LASF178
	.byte	0x8
	.value	0x246
	.long	0x62
	.byte	0x4
	.byte	0x23
	.uleb128 0xb578
	.uleb128 0x8
	.long	.LASF179
	.byte	0x8
	.value	0x246
	.long	0x62
	.byte	0x4
	.byte	0x23
	.uleb128 0xb57c
	.uleb128 0x8
	.long	.LASF180
	.byte	0x8
	.value	0x246
	.long	0xfbe
	.byte	0x4
	.byte	0x23
	.uleb128 0xb580
	.uleb128 0x8
	.long	.LASF181
	.byte	0x8
	.value	0x246
	.long	0x62
	.byte	0x4
	.byte	0x23
	.uleb128 0xb780
	.uleb128 0x8
	.long	.LASF182
	.byte	0x8
	.value	0x246
	.long	0x62
	.byte	0x4
	.byte	0x23
	.uleb128 0xb784
	.uleb128 0x8
	.long	.LASF183
	.byte	0x8
	.value	0x246
	.long	0x8d
	.byte	0x4
	.byte	0x23
	.uleb128 0xb788
	.uleb128 0x8
	.long	.LASF184
	.byte	0x8
	.value	0x246
	.long	0x62
	.byte	0x4
	.byte	0x23
	.uleb128 0xb790
	.uleb128 0x8
	.long	.LASF185
	.byte	0x8
	.value	0x246
	.long	0x8d
	.byte	0x4
	.byte	0x23
	.uleb128 0xb798
	.uleb128 0x8
	.long	.LASF186
	.byte	0x8
	.value	0x246
	.long	0x2e3
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7a0
	.uleb128 0x8
	.long	.LASF187
	.byte	0x8
	.value	0x249
	.long	0x3c7
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7a8
	.uleb128 0x8
	.long	.LASF188
	.byte	0x8
	.value	0x24a
	.long	0x3c7
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7ac
	.uleb128 0x8
	.long	.LASF189
	.byte	0x8
	.value	0x24b
	.long	0x3c7
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7b0
	.uleb128 0x8
	.long	.LASF190
	.byte	0x8
	.value	0x24c
	.long	0x3c7
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7b4
	.uleb128 0x8
	.long	.LASF191
	.byte	0x8
	.value	0x24d
	.long	0x3c7
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7b8
	.uleb128 0x8
	.long	.LASF192
	.byte	0x8
	.value	0x24e
	.long	0x3c7
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7bc
	.uleb128 0x8
	.long	.LASF193
	.byte	0x8
	.value	0x24f
	.long	0x3c7
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7c0
	.uleb128 0x8
	.long	.LASF194
	.byte	0x8
	.value	0x250
	.long	0x3c7
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7c4
	.uleb128 0x8
	.long	.LASF195
	.byte	0x8
	.value	0x251
	.long	0xfce
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7c8
	.uleb128 0x8
	.long	.LASF196
	.byte	0x8
	.value	0x252
	.long	0x3c7
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7f8
	.uleb128 0x8
	.long	.LASF197
	.byte	0x8
	.value	0x253
	.long	0x3c7
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7fc
	.uleb128 0x8
	.long	.LASF198
	.byte	0x8
	.value	0x254
	.long	0x3c7
	.byte	0x4
	.byte	0x23
	.uleb128 0xb800
	.uleb128 0x8
	.long	.LASF199
	.byte	0x8
	.value	0x25b
	.long	0xfde
	.byte	0x4
	.byte	0x23
	.uleb128 0xb808
	.uleb128 0x8
	.long	.LASF200
	.byte	0x8
	.value	0x25f
	.long	0xfea
	.byte	0x4
	.byte	0x23
	.uleb128 0xb810
	.byte	0x0
	.uleb128 0xb
	.long	0xe6e
	.long	0x3dd
	.uleb128 0xc
	.long	0x86
	.byte	0x7
	.byte	0x0
	.uleb128 0xb
	.long	0xe7e
	.long	0x68d
	.uleb128 0xc
	.long	0x86
	.byte	0x7
	.byte	0x0
	.uleb128 0xb
	.long	0xe8e
	.long	0x503
	.uleb128 0xc
	.long	0x86
	.byte	0x5
	.byte	0x0
	.uleb128 0xb
	.long	0xe9e
	.long	0x3dd
	.uleb128 0xc
	.long	0x86
	.byte	0x4
	.byte	0x0
	.uleb128 0xb
	.long	0xeae
	.long	0x844
	.uleb128 0xc
	.long	0x86
	.byte	0x7
	.byte	0x0
	.uleb128 0xb
	.long	0xebe
	.long	0x5bb
	.uleb128 0xc
	.long	0x86
	.byte	0x7
	.byte	0x0
	.uleb128 0x10
	.long	0xf81
	.long	.LASF201
	.byte	0x68
	.byte	0x8
	.value	0x246
	.uleb128 0x13
	.string	"pc"
	.byte	0x13
	.byte	0x93
	.long	0x3dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF202
	.byte	0x13
	.byte	0x94
	.long	0x3dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.long	.LASF84
	.byte	0x13
	.byte	0x95
	.long	0x3d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF203
	.byte	0x13
	.byte	0x96
	.long	0x3bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.long	.LASF204
	.byte	0x13
	.byte	0x98
	.long	0x3bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0xa
	.long	.LASF205
	.byte	0x13
	.byte	0x9e
	.long	0x1002
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.long	.LASF206
	.byte	0x13
	.byte	0xa0
	.long	0xf81
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.long	.LASF207
	.byte	0x13
	.byte	0xa3
	.long	0x1008
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xa
	.long	.LASF208
	.byte	0x13
	.byte	0xa4
	.long	0x1018
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xa
	.long	.LASF209
	.byte	0x13
	.byte	0xa8
	.long	0x60c
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xa
	.long	.LASF210
	.byte	0x13
	.byte	0xac
	.long	0x1028
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xa
	.long	.LASF211
	.byte	0x13
	.byte	0xb2
	.long	0x1008
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xa
	.long	.LASF212
	.byte	0x13
	.byte	0xb3
	.long	0xf81
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0xebe
	.uleb128 0xb
	.long	0xf9d
	.long	0x438
	.uleb128 0xc
	.long	0x86
	.byte	0x1
	.uleb128 0xc
	.long	0x86
	.byte	0xff
	.byte	0x0
	.uleb128 0xb
	.long	0xfae
	.long	0xf81
	.uleb128 0x17
	.long	0x86
	.value	0xfff
	.byte	0x0
	.uleb128 0xb
	.long	0xfbe
	.long	0x3dd
	.uleb128 0xc
	.long	0x86
	.byte	0x1f
	.byte	0x0
	.uleb128 0xb
	.long	0xfce
	.long	0x89a
	.uleb128 0xc
	.long	0x86
	.byte	0x1f
	.byte	0x0
	.uleb128 0xb
	.long	0xfde
	.long	0x3c7
	.uleb128 0xc
	.long	0x86
	.byte	0xb
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x64e
	.uleb128 0x18
	.long	.LASF286
	.byte	0x1
	.uleb128 0x6
	.byte	0x8
	.long	0xfe4
	.uleb128 0xf
	.long	.LASF122
	.byte	0x8
	.value	0x260
	.long	0x8c2
	.uleb128 0x6
	.byte	0x8
	.long	0x68d
	.uleb128 0x6
	.byte	0x8
	.long	0x3b1
	.uleb128 0xb
	.long	0x1018
	.long	0xf81
	.uleb128 0xc
	.long	0x86
	.byte	0x1
	.byte	0x0
	.uleb128 0xb
	.long	0x1028
	.long	0x3dd
	.uleb128 0xc
	.long	0x86
	.byte	0x1
	.byte	0x0
	.uleb128 0xb
	.long	0x1038
	.long	0x3c7
	.uleb128 0xc
	.long	0x86
	.byte	0x1
	.byte	0x0
	.uleb128 0x10
	.long	0x1055
	.long	.LASF213
	.byte	0x4
	.byte	0x13
	.value	0x254
	.uleb128 0x8
	.long	.LASF214
	.byte	0x13
	.value	0x256
	.long	0x3c7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xf
	.long	.LASF213
	.byte	0x13
	.value	0x257
	.long	0x1038
	.uleb128 0x7
	.long	0x10b4
	.long	.LASF215
	.byte	0xc
	.byte	0x1
	.byte	0x80
	.uleb128 0xa
	.long	.LASF216
	.byte	0x1
	.byte	0x81
	.long	0x3b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF217
	.byte	0x1
	.byte	0x82
	.long	0x3b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF203
	.byte	0x1
	.byte	0x83
	.long	0x3bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF218
	.byte	0x1
	.byte	0x84
	.long	0x3dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.long	.LASF121
	.byte	0x1
	.byte	0x85
	.long	0x3dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x2
	.long	.LASF219
	.byte	0x1
	.byte	0x88
	.long	0x1061
	.uleb128 0x7
	.long	0x1173
	.long	.LASF220
	.byte	0x7c
	.byte	0x1
	.byte	0x8b
	.uleb128 0xa
	.long	.LASF216
	.byte	0x1
	.byte	0x8c
	.long	0x3b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF221
	.byte	0x1
	.byte	0x8d
	.long	0x3b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF222
	.byte	0x1
	.byte	0x8e
	.long	0x3bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x13
	.string	"ts"
	.byte	0x1
	.byte	0x8f
	.long	0x3c7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x13
	.string	"reg"
	.byte	0x1
	.byte	0x90
	.long	0xe5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF223
	.byte	0x1
	.byte	0x91
	.long	0xe5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xa
	.long	.LASF93
	.byte	0x1
	.byte	0x93
	.long	0x1173
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x13
	.string	"eip"
	.byte	0x1
	.byte	0x95
	.long	0x3dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xa
	.long	.LASF224
	.byte	0x1
	.byte	0x96
	.long	0x3dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xa
	.long	.LASF225
	.byte	0x1
	.byte	0x98
	.long	0x3c7
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xa
	.long	.LASF226
	.byte	0x1
	.byte	0x9a
	.long	0x3dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xa
	.long	.LASF124
	.byte	0x1
	.byte	0x9b
	.long	0x3dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.byte	0x0
	.uleb128 0xb
	.long	0x1183
	.long	0x3c7
	.uleb128 0xc
	.long	0x86
	.byte	0x7
	.byte	0x0
	.uleb128 0x2
	.long	.LASF227
	.byte	0x1
	.byte	0x9e
	.long	0x10bf
	.uleb128 0x19
	.long	0x13f4
	.long	.LASF232
	.byte	0x1
	.value	0x126
	.byte	0x1
	.long	0x62
	.quad	.LFB222
	.quad	.LFE222
	.byte	0x1
	.byte	0x57
	.uleb128 0x1a
	.string	"fp"
	.byte	0x1
	.value	0x124
	.long	0x80d
	.byte	0x1
	.byte	0x5c
	.uleb128 0x1a
	.string	"env"
	.byte	0x1
	.value	0x124
	.long	0x13f4
	.byte	0x1
	.byte	0x5e
	.uleb128 0x1a
	.string	"pc"
	.byte	0x1
	.value	0x124
	.long	0x3dd
	.byte	0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0x1a
	.string	"log"
	.byte	0x1
	.value	0x125
	.long	0x62
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x1b
	.long	.LASF228
	.byte	0x1
	.value	0x125
	.long	0x62
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x1c
	.long	.LASF229
	.byte	0x1
	.value	0x127
	.long	0x3dd
	.byte	0x1
	.byte	0x56
	.uleb128 0x1c
	.long	.LASF230
	.byte	0x1
	.value	0x127
	.long	0x3dd
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x1c
	.long	.LASF218
	.byte	0x1
	.value	0x127
	.long	0x3dd
	.byte	0x1
	.byte	0x50
	.uleb128 0x1c
	.long	.LASF231
	.byte	0x1
	.value	0x128
	.long	0x13fa
	.byte	0x1
	.byte	0x5f
	.uleb128 0x1d
	.long	.LASF240
	.byte	0x1
	.value	0x13f
	.quad	.L8
	.uleb128 0x1e
	.long	0x13ac
	.long	0x1400
	.quad	.LBB2
	.quad	.LBE2
	.uleb128 0x1f
	.long	0x1412
	.uleb128 0x1f
	.long	0x141d
	.uleb128 0x1f
	.long	0x1429
	.uleb128 0x1f
	.long	0x1434
	.uleb128 0x20
	.long	0x1440
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x21
	.long	0x129c
	.long	.Ldebug_ranges0+0x0
	.uleb128 0x22
	.long	0x144c
	.byte	0x1
	.byte	0x53
	.uleb128 0x22
	.long	0x1456
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x23
	.long	0x1462
	.uleb128 0x22
	.long	0x146e
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.byte	0x0
	.uleb128 0x1e
	.long	0x12c4
	.long	0x147b
	.quad	.LBB5
	.quad	.LBE5
	.uleb128 0x20
	.long	0x148d
	.byte	0x1
	.byte	0x51
	.uleb128 0x20
	.long	0x1499
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x1e
	.long	0x1335
	.long	0x14a6
	.quad	.LBB10
	.quad	.LBE10
	.uleb128 0x1f
	.long	0x14b7
	.uleb128 0x20
	.long	0x14c2
	.byte	0x1
	.byte	0x51
	.uleb128 0x20
	.long	0x14cd
	.byte	0x1
	.byte	0x54
	.uleb128 0x1f
	.long	0x14d8
	.uleb128 0x21
	.long	0x1312
	.long	.Ldebug_ranges0+0x40
	.uleb128 0x22
	.long	0x14e3
	.byte	0x1
	.byte	0x55
	.uleb128 0x23
	.long	0x14ec
	.uleb128 0x22
	.long	0x14f5
	.byte	0x1
	.byte	0x59
	.byte	0x0
	.uleb128 0x24
	.long	0x147b
	.quad	.LBB14
	.quad	.LBE14
	.uleb128 0x1f
	.long	0x148d
	.uleb128 0x20
	.long	0x1499
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
	.long	0x1507
	.quad	.LBB16
	.quad	.LBE16
	.uleb128 0x1f
	.long	0x1518
	.uleb128 0x1f
	.long	0x1522
	.uleb128 0x25
	.quad	.LBB17
	.quad	.LBE17
	.uleb128 0x26
	.long	0x152d
	.quad	.L27
	.uleb128 0x25
	.quad	.LBB18
	.quad	.LBE18
	.uleb128 0x23
	.long	0x1536
	.uleb128 0x24
	.long	0x1543
	.quad	.LBB19
	.quad	.LBE19
	.uleb128 0x1f
	.long	0x1555
	.uleb128 0x1f
	.long	0x1561
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.long	0x13ce
	.quad	.LBB25
	.quad	.LBE25
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x144
	.long	0x62
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x24
	.long	0x156e
	.quad	.LBB26
	.quad	.LBE26
	.uleb128 0x1f
	.long	0x157c
	.uleb128 0x1f
	.long	0x1588
	.uleb128 0x1f
	.long	0x1594
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0xff0
	.uleb128 0x6
	.byte	0x8
	.long	0x1055
	.uleb128 0x29
	.long	0x147b
	.long	.LASF233
	.byte	0x1
	.value	0x10f
	.byte	0x1
	.long	0x62
	.byte	0x1
	.uleb128 0x2a
	.string	"fp"
	.byte	0x1
	.value	0x10d
	.long	0x80d
	.uleb128 0x2a
	.string	"env"
	.byte	0x1
	.value	0x10d
	.long	0x13f4
	.uleb128 0x2a
	.string	"pc"
	.byte	0x1
	.value	0x10d
	.long	0x3dd
	.uleb128 0x2b
	.long	.LASF121
	.byte	0x1
	.value	0x10e
	.long	0x3dd
	.uleb128 0x2b
	.long	.LASF218
	.byte	0x1
	.value	0x10e
	.long	0x3dd
	.uleb128 0x2c
	.string	"i"
	.byte	0x1
	.value	0x110
	.long	0x62
	.uleb128 0x2d
	.long	.LASF234
	.byte	0x1
	.value	0x110
	.long	0x62
	.uleb128 0x2d
	.long	.LASF217
	.byte	0x1
	.value	0x110
	.long	0x62
	.uleb128 0x2c
	.string	"hdr"
	.byte	0x1
	.value	0x111
	.long	0x10b4
	.byte	0x0
	.uleb128 0x29
	.long	0x14a6
	.long	.LASF235
	.byte	0x2
	.value	0x176
	.byte	0x1
	.long	0x62
	.byte	0x3
	.uleb128 0x2a
	.string	"map"
	.byte	0x2
	.value	0x175
	.long	0xfde
	.uleb128 0x2b
	.long	.LASF236
	.byte	0x2
	.value	0x175
	.long	0x38
	.byte	0x0
	.uleb128 0x2e
	.long	0x1501
	.long	.LASF237
	.byte	0x1
	.byte	0xdb
	.byte	0x1
	.long	0x62
	.byte	0x3
	.uleb128 0x2f
	.string	"hdr"
	.byte	0x1
	.byte	0xd9
	.long	0x1501
	.uleb128 0x30
	.long	.LASF121
	.byte	0x1
	.byte	0xd9
	.long	0x3dd
	.uleb128 0x30
	.long	.LASF218
	.byte	0x1
	.byte	0xda
	.long	0x3dd
	.uleb128 0x30
	.long	.LASF217
	.byte	0x1
	.byte	0xda
	.long	0x62
	.uleb128 0x31
	.string	"j"
	.byte	0x1
	.byte	0xdc
	.long	0x62
	.uleb128 0x31
	.string	"t"
	.byte	0x1
	.byte	0xdc
	.long	0x62
	.uleb128 0x32
	.long	.LASF238
	.byte	0x1
	.byte	0xdd
	.long	0x4d
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x10b4
	.uleb128 0x2e
	.long	0x1543
	.long	.LASF239
	.byte	0x1
	.byte	0xfa
	.byte	0x1
	.long	0x62
	.byte	0x3
	.uleb128 0x2f
	.string	"fp"
	.byte	0x1
	.byte	0xf9
	.long	0x80d
	.uleb128 0x2f
	.string	"hdr"
	.byte	0x1
	.byte	0xf9
	.long	0x1501
	.uleb128 0x33
	.long	.LASF241
	.byte	0x1
	.value	0x108
	.uleb128 0x34
	.uleb128 0x2c
	.string	"nt"
	.byte	0x1
	.value	0x102
	.long	0x833
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.long	0x156e
	.long	.LASF242
	.byte	0x2
	.value	0x16c
	.byte	0x1
	.long	0x833
	.byte	0x3
	.uleb128 0x2a
	.string	"map"
	.byte	0x2
	.value	0x16b
	.long	0xfde
	.uleb128 0x2b
	.long	.LASF218
	.byte	0x2
	.value	0x16b
	.long	0x3dd
	.byte	0x0
	.uleb128 0x35
	.long	0x15a1
	.long	.LASF243
	.byte	0x2
	.value	0x180
	.byte	0x1
	.byte	0x3
	.uleb128 0x2a
	.string	"map"
	.byte	0x2
	.value	0x17f
	.long	0xfde
	.uleb128 0x2b
	.long	.LASF236
	.byte	0x2
	.value	0x17f
	.long	0x38
	.uleb128 0x2a
	.string	"len"
	.byte	0x2
	.value	0x17f
	.long	0x2d
	.byte	0x0
	.uleb128 0x36
	.long	0x15d0
	.byte	0x1
	.long	.LASF244
	.byte	0x1
	.value	0x1ea
	.byte	0x1
	.quad	.LFB225
	.quad	.LFE225
	.byte	0x1
	.byte	0x57
	.uleb128 0x1a
	.string	"env"
	.byte	0x1
	.value	0x1e9
	.long	0x13f4
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x36
	.long	0x17b4
	.byte	0x1
	.long	.LASF245
	.byte	0x1
	.value	0x20d
	.byte	0x1
	.quad	.LFB226
	.quad	.LFE226
	.byte	0x1
	.byte	0x57
	.uleb128 0x1a
	.string	"env"
	.byte	0x1
	.value	0x20c
	.long	0x13f4
	.byte	0x1
	.byte	0x56
	.uleb128 0x1a
	.string	"rid"
	.byte	0x1
	.value	0x20c
	.long	0x62
	.byte	0x1
	.byte	0x5e
	.uleb128 0x1c
	.long	.LASF229
	.byte	0x1
	.value	0x211
	.long	0x3dd
	.byte	0x1
	.byte	0x53
	.uleb128 0x1c
	.long	.LASF230
	.byte	0x1
	.value	0x211
	.long	0x3dd
	.byte	0x1
	.byte	0x5c
	.uleb128 0x2d
	.long	.LASF218
	.byte	0x1
	.value	0x211
	.long	0x3dd
	.uleb128 0x1c
	.long	.LASF246
	.byte	0x1
	.value	0x211
	.long	0x3dd
	.byte	0x1
	.byte	0x5d
	.uleb128 0x1c
	.long	.LASF247
	.byte	0x1
	.value	0x211
	.long	0x3dd
	.byte	0x1
	.byte	0x5f
	.uleb128 0x1c
	.long	.LASF231
	.byte	0x1
	.value	0x212
	.long	0x13fa
	.byte	0x1
	.byte	0x50
	.uleb128 0x1e
	.long	0x16c1
	.long	0x17b4
	.quad	.LBB29
	.quad	.LBE29
	.uleb128 0x1f
	.long	0x17c6
	.uleb128 0x1f
	.long	0x17d2
	.uleb128 0x37
	.long	.Ldebug_ranges0+0x80
	.uleb128 0x22
	.long	0x17de
	.byte	0x1
	.byte	0x51
	.uleb128 0x23
	.long	0x17ea
	.uleb128 0x23
	.long	0x17f6
	.uleb128 0x22
	.long	0x1802
	.byte	0x1
	.byte	0x50
	.uleb128 0x23
	.long	0x180e
	.uleb128 0x23
	.long	0x181a
	.uleb128 0x23
	.long	0x1826
	.uleb128 0x23
	.long	0x1832
	.uleb128 0x26
	.long	0x183e
	.quad	.L61
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
	.long	0x16d9
	.long	.Ldebug_ranges0+0xc0
	.uleb128 0x22
	.long	0x184b
	.byte	0x1
	.byte	0x51
	.uleb128 0x22
	.long	0x1857
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x21
	.long	0x16ea
	.long	.Ldebug_ranges0+0xf0
	.uleb128 0x22
	.long	0x1865
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x24
	.long	0x1873
	.quad	.LBB35
	.quad	.LBE35
	.uleb128 0x1f
	.long	0x1881
	.uleb128 0x1f
	.long	0x188d
	.uleb128 0x1f
	.long	0x1899
	.uleb128 0x20
	.long	0x18a5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x21
	.long	0x1735
	.long	.Ldebug_ranges0+0x120
	.uleb128 0x22
	.long	0x18b1
	.byte	0x1
	.byte	0x54
	.uleb128 0x22
	.long	0x18bd
	.byte	0x1
	.byte	0x5e
	.uleb128 0x22
	.long	0x18c9
	.byte	0x1
	.byte	0x5c
	.byte	0x0
	.uleb128 0x1e
	.long	0x1760
	.long	0x18d6
	.quad	.LBB38
	.quad	.LBE38
	.uleb128 0x20
	.long	0x18e4
	.byte	0x1
	.byte	0x55
	.uleb128 0x1f
	.long	0x18f0
	.uleb128 0x1f
	.long	0x18fc
	.byte	0x0
	.uleb128 0x1e
	.long	0x178b
	.long	0x18d6
	.quad	.LBB42
	.quad	.LBE42
	.uleb128 0x20
	.long	0x18e4
	.byte	0x1
	.byte	0x55
	.uleb128 0x1f
	.long	0x18f0
	.uleb128 0x1f
	.long	0x18fc
	.byte	0x0
	.uleb128 0x24
	.long	0x156e
	.quad	.LBB44
	.quad	.LBE44
	.uleb128 0x1f
	.long	0x157c
	.uleb128 0x20
	.long	0x1588
	.byte	0x1
	.byte	0x55
	.uleb128 0x1f
	.long	0x1594
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.long	0x1873
	.long	.LASF248
	.byte	0x1
	.value	0x157
	.byte	0x1
	.long	0x3dd
	.byte	0x1
	.uleb128 0x2a
	.string	"env"
	.byte	0x1
	.value	0x156
	.long	0x13f4
	.uleb128 0x2b
	.long	.LASF249
	.byte	0x1
	.value	0x156
	.long	0x3dd
	.uleb128 0x2c
	.string	"pte"
	.byte	0x1
	.value	0x158
	.long	0x3c7
	.uleb128 0x2d
	.long	.LASF218
	.byte	0x1
	.value	0x158
	.long	0x3c7
	.uleb128 0x2d
	.long	.LASF250
	.byte	0x1
	.value	0x158
	.long	0x3c7
	.uleb128 0x2d
	.long	.LASF251
	.byte	0x1
	.value	0x158
	.long	0x3c7
	.uleb128 0x2d
	.long	.LASF252
	.byte	0x1
	.value	0x159
	.long	0x3c7
	.uleb128 0x2d
	.long	.LASF253
	.byte	0x1
	.value	0x159
	.long	0x3c7
	.uleb128 0x2d
	.long	.LASF254
	.byte	0x1
	.value	0x159
	.long	0x3c7
	.uleb128 0x2d
	.long	.LASF255
	.byte	0x1
	.value	0x15a
	.long	0x3d2
	.uleb128 0x33
	.long	.LASF256
	.byte	0x1
	.value	0x1be
	.uleb128 0x38
	.long	0x1864
	.uleb128 0x2c
	.string	"pde"
	.byte	0x1
	.value	0x163
	.long	0x3d2
	.uleb128 0x2d
	.long	.LASF257
	.byte	0x1
	.value	0x163
	.long	0x3d2
	.byte	0x0
	.uleb128 0x34
	.uleb128 0x2c
	.string	"pde"
	.byte	0x1
	.value	0x1a3
	.long	0x3c7
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
	.long	0x18d6
	.long	.LASF258
	.byte	0x1
	.value	0x1c8
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.string	"env"
	.byte	0x1
	.value	0x1c6
	.long	0x13f4
	.uleb128 0x2b
	.long	.LASF121
	.byte	0x1
	.value	0x1c6
	.long	0x3dd
	.uleb128 0x2b
	.long	.LASF218
	.byte	0x1
	.value	0x1c7
	.long	0x3dd
	.uleb128 0x2a
	.string	"rid"
	.byte	0x1
	.value	0x1c7
	.long	0x62
	.uleb128 0x2d
	.long	.LASF259
	.byte	0x1
	.value	0x1c9
	.long	0x1002
	.uleb128 0x2d
	.long	.LASF260
	.byte	0x1
	.value	0x1ca
	.long	0x4d
	.uleb128 0x2d
	.long	.LASF261
	.byte	0x1
	.value	0x1ca
	.long	0x4d
	.byte	0x0
	.uleb128 0x35
	.long	0x1909
	.long	.LASF262
	.byte	0x3
	.value	0x3a1
	.byte	0x1
	.byte	0x3
	.uleb128 0x2b
	.long	.LASF249
	.byte	0x3
	.value	0x39f
	.long	0x3e8
	.uleb128 0x2a
	.string	"buf"
	.byte	0x3
	.value	0x3a0
	.long	0x1909
	.uleb128 0x2a
	.string	"len"
	.byte	0x3
	.value	0x3a0
	.long	0x62
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x190f
	.uleb128 0xd
	.long	0x3b1
	.uleb128 0x39
	.long	0x1a3d
	.byte	0x1
	.long	.LASF263
	.byte	0x1
	.value	0x241
	.byte	0x1
	.long	0x62
	.quad	.LFB227
	.quad	.LFE227
	.byte	0x1
	.byte	0x57
	.uleb128 0x1a
	.string	"env"
	.byte	0x1
	.value	0x23f
	.long	0x13f4
	.byte	0x1
	.byte	0x53
	.uleb128 0x1b
	.long	.LASF264
	.byte	0x1
	.value	0x23f
	.long	0x3dd
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x1b
	.long	.LASF265
	.byte	0x1
	.value	0x23f
	.long	0xffc
	.byte	0x1
	.byte	0x56
	.uleb128 0x1b
	.long	.LASF266
	.byte	0x1
	.value	0x240
	.long	0x3dd
	.byte	0x1
	.byte	0x5e
	.uleb128 0x1b
	.long	.LASF267
	.byte	0x1
	.value	0x240
	.long	0x62
	.byte	0x1
	.byte	0x5d
	.uleb128 0x28
	.string	"fp"
	.byte	0x1
	.value	0x246
	.long	0x80d
	.byte	0x1
	.byte	0x5c
	.uleb128 0x28
	.string	"rid"
	.byte	0x1
	.value	0x247
	.long	0x62
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x28
	.string	"fn"
	.byte	0x1
	.value	0x248
	.long	0x1a3d
	.byte	0x3
	.byte	0x91
	.sleb128 160
	.uleb128 0x1d
	.long	.LASF268
	.byte	0x1
	.value	0x262
	.quad	.L109
	.uleb128 0x1e
	.long	0x1a13
	.long	0x1a4d
	.quad	.LBB54
	.quad	.LBE54
	.uleb128 0x1f
	.long	0x1a5e
	.uleb128 0x1f
	.long	0x1a68
	.uleb128 0x1f
	.long	0x1a73
	.uleb128 0x1f
	.long	0x1a7e
	.uleb128 0x1f
	.long	0x1a89
	.uleb128 0x1f
	.long	0x1a94
	.uleb128 0x25
	.quad	.LBB55
	.quad	.LBE55
	.uleb128 0x22
	.long	0x1a9f
	.byte	0x1
	.byte	0x52
	.uleb128 0x22
	.long	0x1aa8
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
	.long	0x1ab4
	.quad	.LBB56
	.quad	.LBE56
	.uleb128 0x1f
	.long	0x1ac5
	.uleb128 0x37
	.long	.Ldebug_ranges0+0x160
	.uleb128 0x22
	.long	0x1acf
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
	.long	0x1a4d
	.long	0x95
	.uleb128 0xc
	.long	0x86
	.byte	0x7f
	.byte	0x0
	.uleb128 0x2e
	.long	0x1ab4
	.long	.LASF269
	.byte	0x1
	.byte	0xa4
	.byte	0x1
	.long	0x62
	.byte	0x3
	.uleb128 0x2f
	.string	"fp"
	.byte	0x1
	.byte	0xa1
	.long	0x80d
	.uleb128 0x2f
	.string	"env"
	.byte	0x1
	.byte	0xa1
	.long	0x13f4
	.uleb128 0x30
	.long	.LASF264
	.byte	0x1
	.byte	0xa2
	.long	0x3dd
	.uleb128 0x30
	.long	.LASF266
	.byte	0x1
	.byte	0xa2
	.long	0x3dd
	.uleb128 0x30
	.long	.LASF267
	.byte	0x1
	.byte	0xa2
	.long	0x62
	.uleb128 0x30
	.long	.LASF265
	.byte	0x1
	.byte	0xa3
	.long	0xffc
	.uleb128 0x31
	.string	"i"
	.byte	0x1
	.byte	0xa5
	.long	0x62
	.uleb128 0x31
	.string	"hdr"
	.byte	0x1
	.byte	0xa6
	.long	0x1183
	.byte	0x0
	.uleb128 0x2e
	.long	0x1adb
	.long	.LASF270
	.byte	0x1
	.byte	0xce
	.byte	0x1
	.long	0x62
	.byte	0x3
	.uleb128 0x2f
	.string	"fp"
	.byte	0x1
	.byte	0xcd
	.long	0x80d
	.uleb128 0x31
	.string	"hdr"
	.byte	0x1
	.byte	0xcf
	.long	0x10b4
	.byte	0x0
	.uleb128 0x3a
	.long	.LASF271
	.byte	0x4
	.byte	0x91
	.long	0x2b7
	.byte	0x1
	.byte	0x1
	.uleb128 0x3a
	.long	.LASF272
	.byte	0x4
	.byte	0x92
	.long	0x2b7
	.byte	0x1
	.byte	0x1
	.uleb128 0x3a
	.long	.LASF273
	.byte	0x14
	.byte	0x27
	.long	0x62
	.byte	0x1
	.byte	0x1
	.uleb128 0x3a
	.long	.LASF274
	.byte	0x14
	.byte	0x2a
	.long	0x62
	.byte	0x1
	.byte	0x1
	.uleb128 0x3b
	.long	.LASF275
	.byte	0x3
	.value	0x24d
	.long	0x1b1d
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.byte	0x8
	.long	0x659
	.uleb128 0x3b
	.long	.LASF276
	.byte	0x3
	.value	0x32c
	.long	0x13f4
	.byte	0x1
	.byte	0x1
	.uleb128 0x3a
	.long	.LASF277
	.byte	0x15
	.byte	0x26
	.long	0x1002
	.byte	0x1
	.byte	0x1
	.uleb128 0x3b
	.long	.LASF278
	.byte	0x3
	.value	0x376
	.long	0x1002
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0x1b62
	.long	0x3d2
	.uleb128 0xc
	.long	0x86
	.byte	0x2
	.uleb128 0xc
	.long	0x86
	.byte	0x1
	.byte	0x0
	.uleb128 0x3c
	.long	.LASF279
	.byte	0x1
	.byte	0x39
	.long	0x1b4c
	.byte	0x9
	.byte	0x3
	.quad	as_start_kernel
	.uleb128 0xb
	.long	0x1b8d
	.long	0x3d2
	.uleb128 0xc
	.long	0x86
	.byte	0x2
	.uleb128 0xc
	.long	0x86
	.byte	0x1
	.byte	0x0
	.uleb128 0x3c
	.long	.LASF280
	.byte	0x1
	.byte	0x3f
	.long	0x1b77
	.byte	0x9
	.byte	0x3
	.quad	as_stop_kernel
	.uleb128 0xb
	.long	0x1bb2
	.long	0x95
	.uleb128 0xc
	.long	0x86
	.byte	0x61
	.byte	0x0
	.uleb128 0x3c
	.long	.LASF281
	.byte	0x1
	.byte	0x58
	.long	0x1ba2
	.byte	0x9
	.byte	0x3
	.quad	linux_shellcode
	.uleb128 0xb
	.long	0x1bd8
	.long	0x95
	.uleb128 0x17
	.long	0x86
	.value	0x125
	.byte	0x0
	.uleb128 0x3c
	.long	.LASF282
	.byte	0x1
	.byte	0x66
	.long	0x1bc7
	.byte	0x9
	.byte	0x3
	.quad	win32_shellcode
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
	.uleb128 0x1a
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.uleb128 0xa
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
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
	.uleb128 0x34
	.uleb128 0xb
	.byte	0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.long	0x4b
	.value	0x2
	.long	.Ldebug_info0
	.long	0x1bee
	.long	0x15a1
	.string	"argos_sanitize_process"
	.long	0x15d0
	.string	"argos_forensics"
	.long	0x1914
	.string	"argos_csi"
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
	.quad	.LBB24-.Ltext0
	.quad	.LBE24-.Ltext0
	.quad	.LBB4-.Ltext0
	.quad	.LBE4-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB11-.Ltext0
	.quad	.LBE11-.Ltext0
	.quad	.LBB13-.Ltext0
	.quad	.LBE13-.Ltext0
	.quad	.LBB12-.Ltext0
	.quad	.LBE12-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB30-.Ltext0
	.quad	.LBE30-.Ltext0
	.quad	.LBB51-.Ltext0
	.quad	.LBE51-.Ltext0
	.quad	.LBB32-.Ltext0
	.quad	.LBE32-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB33-.Ltext0
	.quad	.LBE33-.Ltext0
	.quad	.LBB53-.Ltext0
	.quad	.LBE53-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB34-.Ltext0
	.quad	.LBE34-.Ltext0
	.quad	.LBB52-.Ltext0
	.quad	.LBE52-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB36-.Ltext0
	.quad	.LBE36-.Ltext0
	.quad	.LBB49-.Ltext0
	.quad	.LBE49-.Ltext0
	.quad	.LBB37-.Ltext0
	.quad	.LBE37-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB57-.Ltext0
	.quad	.LBE57-.Ltext0
	.quad	.LBB59-.Ltext0
	.quad	.LBE59-.Ltext0
	.quad	0x0
	.quad	0x0
	.section	.debug_str,"MS",@progbits,1
.LASF145:
	.string	"sse_status"
.LASF153:
	.string	"efer"
.LASF7:
	.string	"size_t"
.LASF147:
	.string	"xmm_regs"
.LASF54:
	.string	"__jmp_buf_tag"
.LASF285:
	.string	"/home/remco/Projects/Argos/src/i386-softmmu"
.LASF246:
	.string	"last_paddr"
.LASF23:
	.string	"_IO_save_end"
.LASF140:
	.string	"fpuc"
.LASF193:
	.string	"cpuid_ext_features"
.LASF141:
	.string	"fptags"
.LASF74:
	.string	"floatx80"
.LASF139:
	.string	"fpus"
.LASF16:
	.string	"_IO_write_base"
.LASF68:
	.string	"addr_code"
.LASF96:
	.string	"running"
.LASF269:
	.string	"argos_header_write"
.LASF262:
	.string	"cpu_physical_memory_write"
.LASF32:
	.string	"_lock"
.LASF146:
	.string	"mxcsr"
.LASF277:
	.string	"phys_ram_base"
.LASF129:
	.string	"shellcode_context"
.LASF79:
	.string	"CPU86_LDouble"
.LASF243:
	.string	"argos_bytemap_clear"
.LASF163:
	.string	"jmp_env"
.LASF222:
	.string	"type"
.LASF154:
	.string	"star"
.LASF273:
	.string	"argos_instance_id"
.LASF21:
	.string	"_IO_save_base"
.LASF245:
	.string	"argos_forensics"
.LASF208:
	.string	"page_addr"
.LASF234:
	.string	"force"
.LASF157:
	.string	"intercept"
.LASF133:
	.string	"hflags"
.LASF29:
	.string	"_cur_column"
.LASF108:
	.string	"logged"
.LASF213:
	.string	"PhysPageDesc"
.LASF232:
	.string	"argos_process_proc"
.LASF143:
	.string	"fp_status"
.LASF69:
	.string	"addend"
.LASF258:
	.string	"argos_sc_inject"
.LASF11:
	.string	"FILE"
.LASF6:
	.string	"long int"
.LASF248:
	.string	"cpu_get_user_ro_page"
.LASF237:
	.string	"argos_mblock_header_init"
.LASF43:
	.string	"_IO_marker"
.LASF72:
	.string	"float32"
.LASF93:
	.string	"netidx"
.LASF185:
	.string	"opaque"
.LASF236:
	.string	"maddr"
.LASF211:
	.string	"jmp_next"
.LASF247:
	.string	"last_vaddr"
.LASF172:
	.string	"current_tb"
.LASF156:
	.string	"vm_vmcb"
.LASF100:
	.string	"instruction_stage"
.LASF180:
	.string	"watchpoint"
.LASF152:
	.string	"sysenter_eip"
.LASF188:
	.string	"cpuid_vendor1"
.LASF189:
	.string	"cpuid_vendor2"
.LASF190:
	.string	"cpuid_vendor3"
.LASF201:
	.string	"TranslationBlock"
.LASF118:
	.string	"store_addr_type"
.LASF4:
	.string	"signed char"
.LASF59:
	.string	"uint8_t"
.LASF42:
	.string	"_IO_FILE"
.LASF263:
	.string	"argos_csi"
.LASF62:
	.string	"uint64_t"
.LASF256:
	.string	"return_addr"
.LASF110:
	.string	"load_value"
.LASF107:
	.string	"instruction_size"
.LASF1:
	.string	"unsigned char"
.LASF230:
	.string	"page_max"
.LASF111:
	.string	"load_value_netidx"
.LASF94:
	.string	"argos_rtag_t"
.LASF195:
	.string	"cpuid_model"
.LASF276:
	.string	"cpu_single_env"
.LASF91:
	.string	"argos_rtag"
.LASF115:
	.string	"store_value"
.LASF106:
	.string	"instruction"
.LASF202:
	.string	"cs_base"
.LASF134:
	.string	"segs"
.LASF197:
	.string	"cpuid_ext3_features"
.LASF10:
	.string	"char"
.LASF225:
	.string	"eipnetidx"
.LASF244:
	.string	"argos_sanitize_process"
.LASF130:
	.string	"cc_src"
.LASF194:
	.string	"cpuid_xlevel"
.LASF171:
	.string	"old_exception"
.LASF41:
	.string	"_IO_lock_t"
.LASF241:
	.string	"error"
.LASF131:
	.string	"cc_dst"
.LASF113:
	.string	"load_addr_type"
.LASF239:
	.string	"argos_mblock_write"
.LASF169:
	.string	"interrupt_request"
.LASF233:
	.string	"argos_page_write"
.LASF286:
	.string	"APICState"
.LASF84:
	.string	"flags"
.LASF13:
	.string	"_IO_read_ptr"
.LASF71:
	.string	"double"
.LASF46:
	.string	"_pos"
.LASF271:
	.string	"stdin"
.LASF175:
	.string	"tlb_table"
.LASF116:
	.string	"store_value_netidx"
.LASF221:
	.string	"arch"
.LASF24:
	.string	"_markers"
.LASF198:
	.string	"cpuid_apic_id"
.LASF83:
	.string	"limit"
.LASF114:
	.string	"load_size"
.LASF121:
	.string	"vaddr"
.LASF253:
	.string	"pde_addr"
.LASF167:
	.string	"exception_next_eip"
.LASF109:
	.string	"instruction_netidx"
.LASF228:
	.string	"clean"
.LASF220:
	.string	"argos_log_hdr_struct"
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
.LASF281:
	.string	"linux_shellcode"
.LASF174:
	.string	"mem_write_vaddr"
.LASF217:
	.string	"tainted"
.LASF274:
	.string	"argos_os_hint"
.LASF98:
	.string	"logfile"
.LASF126:
	.string	"t1tag"
.LASF2:
	.string	"short unsigned int"
.LASF0:
	.string	"long unsigned int"
.LASF103:
	.string	"loadedby_eip"
.LASF216:
	.string	"format"
.LASF226:
	.string	"old_eip"
.LASF27:
	.string	"_flags2"
.LASF215:
	.string	"argos_mblock_hdr_struct"
.LASF15:
	.string	"_IO_read_base"
.LASF212:
	.string	"jmp_first"
.LASF85:
	.string	"XMMReg"
.LASF168:
	.string	"smbase"
.LASF120:
	.string	"argos_shellcode_context_t"
.LASF162:
	.string	"intercept_exceptions"
.LASF78:
	.string	"floatx80_rounding_precision"
.LASF56:
	.string	"__mask_was_saved"
.LASF260:
	.string	"scrid_off"
.LASF170:
	.string	"user_mode_only"
.LASF28:
	.string	"_old_offset"
.LASF206:
	.string	"phys_hash_next"
.LASF22:
	.string	"_IO_backup_base"
.LASF95:
	.string	"argos_shellcode_context_s"
.LASF229:
	.string	"page_i"
.LASF149:
	.string	"mmx_t0"
.LASF219:
	.string	"argos_mblock_hdr_t"
.LASF257:
	.string	"pdpe"
.LASF18:
	.string	"_IO_write_end"
.LASF135:
	.string	"a20_mask"
.LASF227:
	.string	"argos_log_hdr_t"
.LASF66:
	.string	"addr_read"
.LASF207:
	.string	"page_next"
.LASF112:
	.string	"load_addr"
.LASF77:
	.string	"float_rounding_mode"
.LASF249:
	.string	"addr"
.LASF177:
	.string	"breakpoints"
.LASF119:
	.string	"store_size"
.LASF19:
	.string	"_IO_buf_base"
.LASF268:
	.string	"cleanup"
.LASF44:
	.string	"_next"
.LASF3:
	.string	"unsigned int"
.LASF283:
	.string	"GNU C 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
.LASF73:
	.string	"float64"
.LASF182:
	.string	"watchpoint_hit"
.LASF250:
	.string	"page_offset"
.LASF88:
	.string	"argos_netidx_t"
.LASF214:
	.string	"phys_offset"
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
.LASF275:
	.string	"argos_memmap"
.LASF104:
	.string	"storedby_eip"
.LASF282:
	.string	"win32_shellcode"
.LASF259:
	.string	"sc_p"
.LASF265:
	.string	"eiptag"
.LASF200:
	.string	"apic_state"
.LASF12:
	.string	"_flags"
.LASF278:
	.string	"phys_ram_dirty"
.LASF186:
	.string	"cpu_model_str"
.LASF57:
	.string	"__saved_mask"
.LASF39:
	.string	"_mode"
.LASF55:
	.string	"__jmpbuf"
.LASF223:
	.string	"rorigin"
.LASF184:
	.string	"cpu_index"
.LASF53:
	.string	"__jmp_buf"
.LASF89:
	.string	"argos_bytemap_t"
.LASF280:
	.string	"as_stop_kernel"
.LASF181:
	.string	"nb_watchpoints"
.LASF64:
	.string	"target_phys_addr_t"
.LASF240:
	.string	"next"
.LASF75:
	.string	"long double"
.LASF254:
	.string	"pte_addr"
.LASF136:
	.string	"fpip"
.LASF137:
	.string	"prev_fpip"
.LASF33:
	.string	"_offset"
.LASF122:
	.string	"CPUX86State"
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
.LASF52:
	.string	"long long unsigned int"
.LASF51:
	.string	"__sigset_t"
.LASF76:
	.string	"float_status"
.LASF60:
	.string	"uint16_t"
.LASF8:
	.string	"__off_t"
.LASF25:
	.string	"_chain"
.LASF144:
	.string	"fp_convert"
.LASF218:
	.string	"paddr"
.LASF58:
	.string	"jmp_buf"
.LASF47:
	.string	"long long int"
.LASF264:
	.string	"new_pc"
.LASF132:
	.string	"cc_op"
.LASF183:
	.string	"next_cpu"
.LASF65:
	.string	"CPUTLBEntry"
.LASF279:
	.string	"as_start_kernel"
.LASF160:
	.string	"intercept_dr_read"
.LASF117:
	.string	"store_addr"
.LASF48:
	.string	"int32_t"
.LASF165:
	.string	"error_code"
.LASF31:
	.string	"_shortbuf"
.LASF99:
	.string	"instruction_cnt"
.LASF123:
	.string	"regs"
.LASF9:
	.string	"__off64_t"
.LASF267:
	.string	"code"
.LASF102:
	.string	"is_system_call"
.LASF161:
	.string	"intercept_dr_write"
.LASF125:
	.string	"t0tag"
.LASF255:
	.string	"ptep"
.LASF97:
	.string	"stop_condition"
.LASF127:
	.string	"t2tag"
.LASF252:
	.string	"pdpe_addr"
.LASF20:
	.string	"_IO_buf_end"
.LASF284:
	.string	"/home/remco/Projects/Argos/src/target-i386/argos-csi.c"
.LASF63:
	.string	"target_ulong"
.LASF159:
	.string	"intercept_cr_write"
.LASF5:
	.string	"short int"
.LASF67:
	.string	"addr_write"
.LASF205:
	.string	"tc_ptr"
.LASF80:
	.string	"SegmentCache"
.LASF242:
	.string	"argos_bytemap_ntdata"
.LASF86:
	.string	"MMXReg"
.LASF30:
	.string	"_vtable_offset"
.LASF166:
	.string	"exception_is_int"
.LASF142:
	.string	"fpregs"
.LASF90:
	.string	"argos_memmap_t"
.LASF224:
	.string	"eiporigin"
.LASF50:
	.string	"__val"
.LASF155:
	.string	"vm_hsave"
.LASF178:
	.string	"nb_breakpoints"
.LASF191:
	.string	"cpuid_version"
.LASF128:
	.string	"regtags"
.LASF14:
	.string	"_IO_read_end"
.LASF61:
	.string	"uint32_t"
.LASF261:
	.string	"sc_len"
.LASF231:
	.string	"pdesc"
.LASF26:
	.string	"_fileno"
.LASF270:
	.string	"argos_log_finalize"
.LASF164:
	.string	"exception_index"
.LASF235:
	.string	"argos_bytemap_istainted"
.LASF251:
	.string	"page_size"
.LASF70:
	.string	"float"
.LASF272:
	.string	"stdout"
.LASF105:
	.string	"executed_eip"
.LASF82:
	.string	"base"
.LASF17:
	.string	"_IO_write_ptr"
.LASF124:
	.string	"eflags"
.LASF49:
	.string	"int64_t"
.LASF81:
	.string	"selector"
.LASF87:
	.string	"argos_paddr_t"
.LASF176:
	.string	"tb_jmp_cache"
.LASF151:
	.string	"sysenter_esp"
.LASF92:
	.string	"origin"
.LASF199:
	.string	"envmap"
.LASF150:
	.string	"sysenter_cs"
.LASF187:
	.string	"cpuid_level"
.LASF238:
	.string	"remainder"
.LASF179:
	.string	"singlestep_enabled"
.LASF266:
	.string	"old_pc"
.LASF196:
	.string	"cpuid_ext2_features"
.LASF148:
	.string	"xmm_t0"
	.section	.note.GNU-stack,"",@progbits
	.ident	"GCC: (GNU) 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
