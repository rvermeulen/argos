	.file	"cpu-exec.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"Trying to execute code outside RAM or ROM at 0x%08x\n"
	.text
	.p2align 4,,15
	.type	get_phys_addr_code, @function
get_phys_addr_code:
.LFB197:
	.file 1 "../exec-all.h"
	.loc 1 549 0
	pushq	%rbp
.LCFI0:
	.loc 1 552 0
	movl	%esi, %edx
	.loc 1 549 0
	movq	%rdi, %r9
	.loc 1 552 0
	shrl	$12, %edx
	.loc 1 549 0
	pushq	%rbx
.LCFI1:
	.loc 1 554 0
	movzbl	%dl, %ebp 
	.loc 1 549 0
	movl	%esi, %ebx
	subq	$24, %rsp
.LCFI2:
.LBB2:
.LBB3:
	.file 2 "/home/remco/Projects/Argos/src/target-i386/cpu.h"
	.loc 2 746 0
	movl	352(%rdi), %eax
.LBE3:
.LBE2:
	.loc 1 554 0
	movl	%esi, %edi
.LBB4:
.LBB5:
	.loc 2 746 0
	andl	$3, %eax
	cmpl	$3, %eax
	sete	%al
.LBE5:
.LBE4:
	.loc 1 554 0
	andl	$-4096, %edi
.LBB6:
.LBB7:
	.loc 2 746 0
	movzbl	%al, %eax
.LBE7:
.LBE6:
	.loc 1 554 0
	movslq	%eax,%r8
	leaq	(%rbp,%rbp,2), %rax
	leaq	0(,%rax,8), %r10
	leaq	(%r8,%r8), %rax
	addq	%r8, %rax
	salq	$11, %rax
	leaq	(%r10,%rax), %rax
	cmpl	%edi, 1280(%rax,%r9)
	jne	.L11
.L3:
	.loc 1 558 0
	leaq	(%r8,%r8), %rdx
	leaq	(%rbp,%rbp,2), %rax
	addq	%r8, %rdx
	salq	$11, %rdx
	leaq	(%rdx,%rax,8), %rax
	movl	1280(%rax,%r9), %edx
	movl	%edx, %eax
	andl	$4095, %eax
	.loc 1 559 0
	cmpl	$16, %eax
	jle	.L9
	andl	$1, %edx
	je	.L12
.L9:
	.loc 1 566 0
	leaq	(%r8,%r8), %rax
	leaq	(%rbp,%rbp,2), %rdx
	addq	%r8, %rax
	salq	$11, %rax
	leaq	(%rax,%rdx,8), %rdx
	addl	1288(%rdx,%r9), %ebx
	subl	phys_ram_base(%rip), %ebx
	.loc 1 567 0
	addq	$24, %rsp
	movl	%ebx, %eax
	popq	%rbx
	popq	%rbp
	ret
.L12:
	.loc 1 563 0
	movl	%ebx, %edx
	movl	$.LC0, %esi
	movq	%r9, %rdi
	xorl	%eax, %eax
	call	cpu_abort
.L11:
.LBB8:
.LBB9:
.LBB10:
	.loc 2 745 0
	movq	cpu_single_env(%rip), %rcx
.LBB11:
	.loc 2 746 0
	xorl	%esi, %esi
	movl	352(%rcx), %eax
	andl	$3, %eax
	cmpl	$3, %eax
	sete	%sil
.LBE11:
.LBE10:
	.file 3 "../softmmu_header.h"
	.loc 3 267 0
	movslq	%esi,%rdx
	leaq	(%rdx,%rdx), %rax
	addq	%rdx, %rax
	salq	$11, %rax
	leaq	(%r10,%rax), %rax
	cmpl	%edi, 1280(%rax,%rcx)
	je	.L3
	.loc 3 272 0
	movl	%ebx, %edi
	movq	%r8, 16(%rsp)
	movq	%r9, 8(%rsp)
	call	__ldb_cmmu
	movq	8(%rsp), %r9
	movq	16(%rsp), %r8
	jmp	.L3
.LBE9:
.LBE8:
.LFE197:
	.size	get_phys_addr_code, .-get_phys_addr_code
	.p2align 4,,15
.globl cpu_loop_exit
	.type	cpu_loop_exit, @function
cpu_loop_exit:
.LFB283:
	.file 4 "/home/remco/Projects/Argos/src/cpu-exec.c"
	.loc 4 97 0
	.loc 4 101 0
	leaq	984(%r14), %rdi
	.loc 4 97 0
	subq	$8, %rsp
.LCFI3:
	.loc 4 101 0
	movl	$1, %esi
	call	longjmp
.LFE283:
	.size	cpu_loop_exit, .-cpu_loop_exit
	.p2align 4,,15
.globl cpu_resume_from_signal
	.type	cpu_resume_from_signal, @function
cpu_resume_from_signal:
.LFB284:
	.loc 4 112 0
	.loc 4 117 0
	movq	%rdi, %r14
	.loc 4 127 0
	leaq	984(%rdi), %rdi
	.loc 4 112 0
	subq	$8, %rsp
.LCFI4:
	.loc 4 127 0
	movl	$1, %esi
	call	longjmp
.LFE284:
	.size	cpu_resume_from_signal, .-cpu_resume_from_signal
	.section	.rodata.str1.8
	.align 8
.LC2:
	.string	"Servicing virtual hardware INT=0x%02x\n"
	.align 8
.LC1:
	.string	"Servicing hardware INT=0x%02x\n"
	.text
	.p2align 4,,15
.globl cpu_x86_exec
	.type	cpu_x86_exec, @function
cpu_x86_exec:
.LFB287:
	.loc 4 300 0
	pushq	%rbp
.LCFI5:
.LBB12:
.LBB13:
	.file 5 "/home/remco/Projects/Argos/src/target-i386/exec.h"
	.loc 5 618 0
	xorl	%edx, %edx
.LBE13:
.LBE12:
	.loc 4 300 0
	pushq	%rbx
.LCFI6:
	subq	$136, %rsp
.LCFI7:
.LBB14:
.LBB15:
	.loc 5 618 0
	movl	352(%rdi), %eax
	testl	$262144, %eax
	je	.L19
	.loc 5 621 0
	testb	$2, 1236(%rdi)
	je	.L20
	testb	$2, 37(%rdi)
	je	.L20
	.loc 5 623 0
	andl	$-262145, %eax
	movl	%eax, 352(%rdi)
.L19:
.LBE15:
.LBE14:
	.loc 5 616 0
	cmpl	$65539, %edx
	.loc 4 314 0
	movl	$65539, %eax
	.loc 5 616 0
	je	.L16
	.loc 4 316 0
	movq	%rdi, cpu_single_env(%rip)
	.file 6 "/home/remco/Projects/Argos/src/hostregs_helper.h"
	.loc 6 73 0
	movq	%r14, 120(%rsp)
	.loc 6 77 0
	movq	%r15, 112(%rsp)
	movq	40(%r14), %rax
	movq	%rax, 96(%rsp)
	.loc 6 81 0
	movq	%r12, 88(%rsp)
	movq	48(%r14), %rax
	movq	%rax, 80(%rsp)
	.loc 6 85 0
	movq	%r13, 72(%rsp)
	movq	56(%r14), %rax
	.loc 4 321 0
	movq	%rdi, %r14
	.loc 6 85 0
	movq	%rax, 64(%rsp)
	.loc 4 327 0
	movl	36(%rdi), %eax
	.loc 4 328 0
	movl	36(%rdi), %edx
	.loc 4 330 0
	andl	$-3286, 36(%rdi)
	.loc 4 329 0
	movl	$1, 344(%rdi)
	.loc 4 349 0
	movl	$-1, 1184(%rdi)
	.loc 4 327 0
	andl	$2261, %eax
	.loc 4 328 0
	shrl	$9, %edx
	.loc 4 327 0
	movl	%eax, 336(%rdi)
	.loc 4 328 0
	movl	$1, %eax
	andl	$2, %edx
	subl	%edx, %eax
	movl	%eax, 348(%rdi)
.L98:
	.loc 4 353 0
	leaq	984(%r14), %rdi
	call	_setjmp
	testl	%eax, %eax
	je	.L99
	.loc 4 795 0
	movl	128(%r14), %edx
	testl	%edx, %edx
	je	.L98
	movl	164(%r14), %eax
	testl	%eax, %eax
	je	.L98
.L23:
	.loc 4 805 0
	mov	344(%r14), %eax
	salq	$4, %rax
	call	*cc_table(%rax)
	orl	36(%r14), %eax
	movl	348(%r14), %edx
	andl	$1024, %edx
	orl	%eax, %edx
	movl	%edx, 36(%r14)
	.loc 6 73 0
	movq	120(%rsp), %r14
	.loc 6 77 0
	movq	112(%rsp), %r15
	movq	96(%rsp), %rax
	movq	%rax, 40(%r14)
	.loc 6 81 0
	movq	88(%rsp), %r12
	movq	80(%rsp), %rax
	movq	%rax, 48(%r14)
	.loc 6 85 0
	movq	72(%rsp), %r13
	movq	64(%rsp), %rax
	movq	%rax, 56(%r14)
	.loc 4 833 0
	movl	56(%rsp), %eax
	.loc 4 832 0
	movq	$0, cpu_single_env(%rip)
.L16:
	.loc 4 834 0
	addq	$136, %rsp
	popq	%rbx
	popq	%rbp
	ret
.L20:
.LBB16:
.LBB17:
	.loc 5 625 0
	movl	$65539, %edx
	jmp	.L19
.L99:
.LBE17:
.LBE16:
	.loc 4 356 0
	movl	1184(%r14), %edi
	.loc 4 354 0
	movq	$0, 1248(%r14)
	.loc 4 356 0
	testl	%edi, %edi
	js	.L25
	.loc 4 357 0
	cmpl	$65535, 1184(%r14)
	jg	.L97
	.loc 4 361 0
	movl	1240(%r14), %esi
	testl	%esi, %esi
	jne	.L92
	.loc 4 378 0
	movl	1196(%r14), %ecx
	movl	1188(%r14), %edx
	xorl	%r8d, %r8d
	movl	1192(%r14), %esi
	movl	1184(%r14), %edi
	call	do_interrupt
	.loc 4 383 0
	movl	$-1, 1244(%r14)
	.loc 4 402 0
	movl	$-1, 1184(%r14)
.L25:
	.loc 4 430 0
	xorl	%r15d, %r15d
	.loc 4 431 0
	movl	$0, 44(%r14)
	jmp	.L30
	.p2align 4,,7
.L73:
	.loc 4 662 0
	movq	24(%rdx), %rax
	.loc 4 663 0
	movq	%rdx, 1248(%r14)
	.loc 4 768 0
	call	*%rax
	.loc 4 770 0
	movq	$0, 1248(%r14)
.L30:
	.loc 4 434 0
	movl	1236(%r14), %ebx
	.loc 4 435 0
	testl	%ebx, %ebx
	jne	.L100
.L32:
.LBB18:
.LBB19:
	.loc 4 222 0
	movl	376(%r14), %edi
	.loc 4 223 0
	movl	32(%r14), %ecx
	.loc 4 220 0
	mov	36(%r14), %eax
	.loc 4 219 0
	mov	352(%r14), %esi
	.loc 4 223 0
	addl	%edi, %ecx
.LBB20:
.LBB21:
	.loc 1 192 0
	movl	%ecx, %edx
	shrl	$6, %edx
.LBE21:
.LBE20:
	.loc 4 220 0
	andl	$143616, %eax
.LBB22:
.LBB23:
	.loc 1 192 0
	xorl	%ecx, %edx
.LBE23:
.LBE22:
	.loc 4 220 0
	orq	%rax, %rsi
	.loc 4 221 0
	orq	952(%r14), %rsi
.LBB24:
.LBB25:
	.loc 1 192 0
	movl	%edx, %eax
	andl	$63, %edx
	shrl	$6, %eax
	andl	$4032, %eax
	orl	%edx, %eax
.LBE25:
.LBE24:
	.loc 1 190 0
	mov	%eax, %eax
	movq	13560(%r14,%rax,8), %rax
	.loc 4 275 0
	testq	%rax, %rax
	je	.L53
	cmpl	%ecx, (%rax)
	jne	.L53
	cmpl	%edi, 4(%rax)
	jne	.L53
	cmpq	%rsi, 8(%rax)
	.p2align 4,,5
	jne	.L53
.L52:
.LBE19:
.LBE18:
	.loc 4 652 0
	testl	%r15d, %r15d
	.loc 4 210 0
	movq	%rax, %rdx
	.loc 4 652 0
	.p2align 4,,3
	je	.L73
	cmpl	$-1, 60(%rax)
	.p2align 4,,3
	jne	.L73
.LBB26:
	.loc 1 265 0
	movq	%r15, %rsi
.LBB27:
	.loc 1 267 0
	movq	%r15, %rcx
.LBE27:
	.loc 1 265 0
	andl	$4294967292, %esi
.LBB28:
	.loc 1 267 0
	andl	$3, %ecx
	cmpq	$0, 80(%rsi,%rcx,8)
	jne	.L73
.LBB29:
	.loc 1 257 0
	movq	24(%rax), %rax
.LBB30:
	.loc 1 258 0
	movl	%eax, 68(%rsi,%rcx,4)
.LBE30:
.LBE29:
	.loc 1 272 0
	movq	96(%rdx), %rax
	movq	%rax, 80(%rsi,%rcx,8)
	.loc 1 273 0
	orq	%rsi, %rcx
	movq	%rcx, 96(%rdx)
	jmp	.L73
.L92:
.LBE28:
.LBE26:
	.loc 4 366 0
	movl	1196(%r14), %ecx
	movl	1188(%r14), %edx
	movl	1192(%r14), %esi
	movl	1184(%r14), %edi
	call	do_interrupt_user
.L97:
	.loc 4 371 0
	movl	1184(%r14), %eax
	movl	%eax, 56(%rsp)
	jmp	.L23
	.p2align 4,,7
.L53:
.LBB31:
.LBB32:
.LBB33:
	.loc 4 134 0
	movl	%edi, 52(%rsp)
	movq	%rsi, 40(%rsp)
.LBB34:
	.loc 4 148 0
	movq	%r14, %rdi
	movl	%ecx, %esi
.LBE34:
	.loc 4 134 0
	movl	%ecx, %ebp
.LBB35:
	.loc 4 143 0
	movl	$0, tb_invalidated_flag(%rip)
	.loc 4 148 0
	call	get_phys_addr_code
	movl	%eax, 16(%rsp)
	.loc 4 149 0
	andl	$-4096, %eax
	movl	%eax, 12(%rsp)
	.loc 4 152 0
	movl	16(%rsp), %eax
	andl	$32767, %eax
	leaq	tb_phys_hash(,%rax,8), %rdx
	movl	%ebp, %eax
	andl	$-4096, %eax
	addl	$4096, %eax
	movl	%eax, 8(%rsp)
	.loc 4 154 0
	movq	(%rdx), %rbx
	.loc 4 155 0
	testq	%rbx, %rbx
	je	.L60
	.p2align 4,,7
.L102:
	.loc 4 157 0
	cmpl	%ebp, (%rbx)
	je	.L101
.L61:
	.loc 4 172 0
	leaq	32(%rbx), %rdx
.L104:
	.loc 4 154 0
	movq	(%rdx), %rbx
	.loc 4 155 0
	testq	%rbx, %rbx
	jne	.L102
.L60:
	.loc 4 176 0
	movl	%ebp, %edi
	call	tb_alloc
	.loc 4 177 0
	testq	%rax, %rax
	.loc 4 176 0
	movq	%rax, %rbx
	.loc 4 177 0
	je	.L103
.L66:
	.loc 4 186 0
	movq	code_gen_ptr(%rip), %rax
	.loc 4 190 0
	leaq	60(%rsp), %rdx
	movq	%rbx, %rsi
	movq	%r14, %rdi
	.loc 4 186 0
	movq	%rax, 24(%rbx)
	.loc 4 187 0
	movl	52(%rsp), %eax
	movl	%eax, 4(%rbx)
	.loc 4 188 0
	movq	40(%rsp), %rax
	movq	%rax, 8(%rbx)
	.loc 4 190 0
	call	cpu_x86_gen_code
	.loc 4 192 0
	movslq	60(%rsp),%rax
	.loc 4 196 0
	movl	$-1, %edx
	.loc 4 192 0
	addq	code_gen_ptr(%rip), %rax
	addq	$15, %rax
	andq	$-16, %rax
	movq	%rax, code_gen_ptr(%rip)
	.loc 4 195 0
	movzwl	16(%rbx), %eax
	leal	-1(%rax,%rbp), %esi
	.loc 4 197 0
	movl	%ebp, %eax
	andl	$-4096, %eax
	.loc 4 195 0
	andl	$-4096, %esi
	.loc 4 197 0
	cmpl	%esi, %eax
	je	.L67
	.loc 4 198 0
	movq	%r14, %rdi
	call	get_phys_addr_code
	movl	%eax, %edx
.L67:
	.loc 4 200 0
	movl	16(%rsp), %esi
	movq	%rbx, %rdi
	call	tb_link_phys
.L64:
.LBB36:
.LBB37:
	.loc 1 192 0
	movl	%ebp, %edx
	shrl	$6, %edx
	xorl	%ebp, %edx
	movl	%edx, %eax
	andl	$63, %edx
	shrl	$6, %eax
	andl	$4032, %eax
	orl	%edx, %eax
.LBE37:
.LBE36:
	.loc 1 190 0
	mov	%eax, %eax
	movq	%rbx, 13560(%r14,%rax,8)
.LBE35:
.LBE33:
	.loc 4 280 0
	movl	tb_invalidated_flag(%rip), %ecx
	.loc 4 134 0
	movq	%rbx, %rax
	.loc 4 280 0
	testl	%ecx, %ecx
	je	.L52
	.loc 4 284 0
	xorl	%r15d, %r15d
	.loc 4 285 0
	movl	$0, 44(%r14)
	jmp	.L52
	.p2align 4,,7
.L101:
.LBB38:
.LBB39:
	.loc 4 157 0
	movl	12(%rsp), %eax
	cmpl	%eax, 56(%rbx)
	jne	.L61
	movl	52(%rsp), %eax
	cmpl	%eax, 4(%rbx)
	jne	.L61
	movq	40(%rsp), %rax
	cmpq	%rax, 8(%rbx)
	jne	.L61
	.loc 4 162 0
	cmpl	$-1, 60(%rbx)
	je	.L64
	.loc 4 165 0
	movl	8(%rsp), %esi
	movq	%r14, %rdi
	call	get_phys_addr_code
	.loc 4 166 0
	cmpl	%eax, 60(%rbx)
	je	.L64
	.loc 4 172 0
	leaq	32(%rbx), %rdx
	jmp	.L104
.L100:
.LBE39:
.LBE38:
.LBE32:
.LBE31:
	.loc 4 435 0
	testb	$16, 354(%r14)
	.p2align 4,,2
	je	.L32
	.loc 4 440 0
	testb	%bl, %bl
	.p2align 4,,2
	js	.L105
.L33:
	.loc 4 455 0
	testb	$64, %bl
	.p2align 4,,2
	je	.L34
	testb	$8, 354(%r14)
	.p2align 4,,2
	je	.L106
.L34:
	.loc 4 461 0
	testb	$2, %bl
	.p2align 4,,2
	je	.L38
	testb	$2, 37(%r14)
	.p2align 4,,2
	jne	.L39
	testb	$32, 354(%r14)
	.p2align 4,,2
	je	.L38
.L39:
	testb	$8, 352(%r14)
	je	.L107
.L38:
	.loc 4 476 0
	testb	$1, %bh
	je	.L37
	testb	$2, 37(%r14)
	.p2align 4,,2
	je	.L37
	testb	$8, 352(%r14)
	.p2align 4,,2
	je	.L108
.L37:
	.loc 4 592 0
	testb	$4, 1236(%r14)
	je	.L48
	.loc 4 593 0
	andl	$-5, 1236(%r14)
	.loc 4 596 0
	xorl	%r15d, %r15d
	movl	$0, 44(%r14)
.L48:
	.loc 4 598 0
	andl	$1, %ebx
	je	.L32
	.loc 4 599 0
	andl	$-2, 1236(%r14)
	.loc 4 600 0
	movl	$65536, 1184(%r14)
	.loc 4 601 0
	call	cpu_loop_exit
	jmp	.L32
.L105:
	.loc 4 441 0
	andl	$-129, 1236(%r14)
	.loc 4 442 0
	movl	$65538, 1184(%r14)
	.loc 4 443 0
	call	cpu_loop_exit
	jmp	.L33
.L106:
.LBB40:
.LBB41:
	.file 7 "/home/remco/Projects/Argos/src/target-i386/svm.h"
	.loc 7 330 0
	xorl	%esi, %esi
	movl	$98, %edi
	call	svm_check_intercept_param
.LBE41:
.LBE40:
	.loc 4 458 0
	andl	$-65, 1236(%r14)
	.loc 4 459 0
	call	do_smm_enter
.L96:
.LBB42:
	.loc 4 488 0
	xorl	%r15d, %r15d
	movl	$0, 44(%r14)
	jmp	.L37
.L107:
.LBE42:
.LBB43:
.LBB44:
.LBB45:
	.loc 7 330 0
	xorl	%esi, %esi
	movl	$96, %edi
	call	svm_check_intercept_param
.LBE45:
.LBE44:
	.loc 4 466 0
	andl	$-259, 1236(%r14)
	.loc 4 467 0
	movq	%r14, %rdi
	call	cpu_get_pic_interrupt
	.loc 4 468 0
	testb	$2, loglevel(%rip)
	.loc 4 467 0
	movl	%eax, %ebp
	.loc 4 468 0
	jne	.L109
.L41:
	.loc 4 471 0
	movl	$1, %r8d
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	xorl	%esi, %esi
	movl	%ebp, %edi
	call	do_interrupt
	jmp	.L96
.L108:
.LBE43:
.LBB46:
	.loc 4 480 0
	andl	$-257, 1236(%r14)
.LBB47:
.LBB48:
	.loc 7 330 0
	xorl	%esi, %esi
	movl	$100, %edi
	call	svm_check_intercept_param
.LBE48:
.LBE47:
	.loc 4 482 0
	movq	944(%r14), %rdi
	addq	$100, %rdi
	call	ldl_phys
	.loc 4 483 0
	testb	$2, loglevel(%rip)
	.loc 4 482 0
	movl	%eax, %ebp
	.loc 4 483 0
	je	.L46
	.loc 4 484 0
	movq	logfile(%rip), %rdi
	movl	%eax, %edx
	movl	$.LC2, %esi
	xorl	%eax, %eax
	call	fprintf
.L46:
	.loc 4 485 0
	xorl	%esi, %esi
	movl	$1, %r8d
	movl	$-1, %ecx
	xorl	%edx, %edx
	movl	%ebp, %edi
	call	do_interrupt
	.loc 4 486 0
	movq	944(%r14), %rdi
	addq	$96, %rdi
	call	ldl_phys
	movq	944(%r14), %rdi
	movl	%eax, %esi
	andl	$-257, %esi
	addq	$96, %rdi
	call	stl_phys
	jmp	.L96
.L109:
.LBE46:
.LBB49:
	.loc 4 469 0
	movq	logfile(%rip), %rdi
	movl	%eax, %edx
	movl	$.LC1, %esi
	xorl	%eax, %eax
	call	fprintf
	jmp	.L41
	.p2align 4,,7
.L103:
.LBE49:
.LBB50:
.LBB51:
.LBB52:
.LBB53:
	.loc 4 179 0
	movq	%r14, %rdi
	call	tb_flush
	.loc 4 181 0
	movl	%ebp, %edi
	call	tb_alloc
	movq	%rax, %rbx
	.loc 4 183 0
	movl	$1, tb_invalidated_flag(%rip)
	jmp	.L66
.LBE53:
.LBE52:
.LBE51:
.LBE50:
.LFE287:
	.size	cpu_x86_exec, .-cpu_x86_exec
	.p2align 4,,15
.globl tb_invalidate_page_range
	.type	tb_invalidate_page_range, @function
tb_invalidate_page_range:
.LFB288:
	.loc 4 839 0
	.loc 4 839 0
	rep ; ret
.LFE288:
	.size	tb_invalidate_page_range, .-tb_invalidate_page_range
	.comm	tb_invalidated_flag,4,4
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
	.quad	.LFB197
	.quad	.LFE197-.LFB197
	.byte	0x4
	.long	.LCFI0-.LFB197
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI1-.LCFI0
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI2-.LCFI1
	.byte	0xe
	.uleb128 0x30
	.align 8
.LEFDE0:
.LSFDE2:
	.long	.LEFDE2-.LASFDE2
.LASFDE2:
	.long	.Lframe0
	.quad	.LFB283
	.quad	.LFE283-.LFB283
	.byte	0x4
	.long	.LCFI3-.LFB283
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE2:
.LSFDE4:
	.long	.LEFDE4-.LASFDE4
.LASFDE4:
	.long	.Lframe0
	.quad	.LFB284
	.quad	.LFE284-.LFB284
	.byte	0x4
	.long	.LCFI4-.LFB284
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.quad	.LFB287
	.quad	.LFE287-.LFB287
	.byte	0x4
	.long	.LCFI5-.LFB287
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI6-.LCFI5
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI7-.LCFI6
	.byte	0xe
	.uleb128 0xa0
	.byte	0x83
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x2
	.align 8
.LEFDE6:
.LSFDE8:
	.long	.LEFDE8-.LASFDE8
.LASFDE8:
	.long	.Lframe0
	.quad	.LFB288
	.quad	.LFE288-.LFB288
	.align 8
.LEFDE8:
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
	.quad	.LFB197
	.quad	.LFE197-.LFB197
	.byte	0x4
	.long	.LCFI0-.LFB197
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI1-.LCFI0
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI2-.LCFI1
	.byte	0xe
	.uleb128 0x30
	.align 8
.LEFDE1:
.LSFDE3:
	.long	.LEFDE3-.LASFDE3
.LASFDE3:
	.long	.LASFDE3-.Lframe1
	.quad	.LFB283
	.quad	.LFE283-.LFB283
	.byte	0x4
	.long	.LCFI3-.LFB283
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE3:
.LSFDE5:
	.long	.LEFDE5-.LASFDE5
.LASFDE5:
	.long	.LASFDE5-.Lframe1
	.quad	.LFB284
	.quad	.LFE284-.LFB284
	.byte	0x4
	.long	.LCFI4-.LFB284
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE5:
.LSFDE7:
	.long	.LEFDE7-.LASFDE7
.LASFDE7:
	.long	.LASFDE7-.Lframe1
	.quad	.LFB287
	.quad	.LFE287-.LFB287
	.byte	0x4
	.long	.LCFI5-.LFB287
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI6-.LCFI5
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI7-.LCFI6
	.byte	0xe
	.uleb128 0xa0
	.byte	0x83
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x2
	.align 8
.LEFDE7:
.LSFDE9:
	.long	.LEFDE9-.LASFDE9
.LASFDE9:
	.long	.LASFDE9-.Lframe1
	.quad	.LFB288
	.quad	.LFE288-.LFB288
	.align 8
.LEFDE9:
	.file 8 "../cpu-defs.h"
	.file 9 "../argos-tag.h"
	.file 10 "../argos.h"
	.file 11 "/home/remco/Projects/Argos/src/target-i386/argos-shellcode.h"
	.file 12 "../dyngen-exec.h"
	.file 13 "/home/remco/Projects/Argos/src/fpu/softfloat-native.h"
	.file 14 "/usr/include/setjmp.h"
	.file 15 "/usr/include/bits/setjmp.h"
	.file 16 "/usr/include/bits/sigset.h"
	.file 17 "../cpu-all.h"
	.file 18 "../argos-memmap.h"
	.text
.Letext0:
	.section	.debug_info
	.long	0x1606
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.Ldebug_line0
	.quad	.Letext0
	.quad	.Ltext0
	.long	.LASF227
	.byte	0x1
	.long	.LASF228
	.long	.LASF229
	.uleb128 0x2
	.long	.LASF0
	.byte	0x8
	.byte	0x5
	.uleb128 0x2
	.long	.LASF1
	.byte	0x8
	.byte	0x7
	.uleb128 0x3
	.string	"int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.long	.LASF2
	.byte	0x1
	.byte	0x8
	.uleb128 0x2
	.long	.LASF3
	.byte	0x2
	.byte	0x7
	.uleb128 0x2
	.long	.LASF4
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.long	.LASF5
	.byte	0x1
	.byte	0x6
	.uleb128 0x2
	.long	.LASF6
	.byte	0x2
	.byte	0x5
	.uleb128 0x4
	.long	.LASF7
	.byte	0xc
	.byte	0x37
	.long	0x3b
	.uleb128 0x4
	.long	.LASF8
	.byte	0xc
	.byte	0x42
	.long	0x7b
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x4
	.long	.LASF9
	.byte	0xc
	.byte	0x54
	.long	0x88
	.uleb128 0x6
	.long	.LASF9
	.byte	0x1
	.uleb128 0x4
	.long	.LASF10
	.byte	0xf
	.byte	0x20
	.long	0x99
	.uleb128 0x7
	.long	0xa9
	.long	0x2d
	.uleb128 0x8
	.long	0xa9
	.byte	0x7
	.byte	0x0
	.uleb128 0x2
	.long	.LASF1
	.byte	0x8
	.byte	0x7
	.uleb128 0x9
	.long	0xc7
	.byte	0x80
	.byte	0x10
	.byte	0x20
	.uleb128 0xa
	.long	.LASF12
	.byte	0x10
	.byte	0x1f
	.long	0xc7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x7
	.long	0xd7
	.long	0x34
	.uleb128 0x8
	.long	0xa9
	.byte	0xf
	.byte	0x0
	.uleb128 0x4
	.long	.LASF11
	.byte	0x10
	.byte	0x20
	.long	0xb0
	.uleb128 0xb
	.long	0x119
	.long	.LASF19
	.byte	0xc8
	.byte	0xe
	.byte	0x24
	.uleb128 0xa
	.long	.LASF13
	.byte	0xe
	.byte	0x29
	.long	0x8e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF14
	.byte	0xe
	.byte	0x2a
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xa
	.long	.LASF15
	.byte	0xe
	.byte	0x2b
	.long	0xd7
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.byte	0x0
	.uleb128 0x4
	.long	.LASF16
	.byte	0xe
	.byte	0x31
	.long	0x124
	.uleb128 0x7
	.long	0x134
	.long	0xe2
	.uleb128 0x8
	.long	0xa9
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.long	.LASF17
	.byte	0x8
	.byte	0x31
	.long	0x50
	.uleb128 0x4
	.long	.LASF18
	.byte	0x8
	.byte	0x49
	.long	0x34
	.uleb128 0xb
	.long	0x18f
	.long	.LASF20
	.byte	0x18
	.byte	0x8
	.byte	0x69
	.uleb128 0xa
	.long	.LASF21
	.byte	0x8
	.byte	0x70
	.long	0x134
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF22
	.byte	0x8
	.byte	0x71
	.long	0x134
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.long	.LASF23
	.byte	0x8
	.byte	0x72
	.long	0x134
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF24
	.byte	0x8
	.byte	0x74
	.long	0x13f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x4
	.long	.LASF20
	.byte	0x8
	.byte	0x75
	.long	0x14a
	.uleb128 0x2
	.long	.LASF25
	.byte	0x4
	.byte	0x4
	.uleb128 0x2
	.long	.LASF26
	.byte	0x8
	.byte	0x4
	.uleb128 0x2
	.long	.LASF27
	.byte	0x1
	.byte	0x6
	.uleb128 0x4
	.long	.LASF28
	.byte	0xd
	.byte	0x3b
	.long	0x19a
	.uleb128 0x4
	.long	.LASF29
	.byte	0xd
	.byte	0x3c
	.long	0x1a1
	.uleb128 0x4
	.long	.LASF30
	.byte	0xd
	.byte	0x3e
	.long	0x1d0
	.uleb128 0x2
	.long	.LASF31
	.byte	0x10
	.byte	0x4
	.uleb128 0xb
	.long	0x200
	.long	.LASF32
	.byte	0x2
	.byte	0xd
	.byte	0x6d
	.uleb128 0xa
	.long	.LASF33
	.byte	0xd
	.byte	0x6e
	.long	0x57
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF34
	.byte	0xd
	.byte	0x70
	.long	0x57
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0x0
	.uleb128 0x4
	.long	.LASF32
	.byte	0xd
	.byte	0x72
	.long	0x1d7
	.uleb128 0xc
	.long	.LASF35
	.byte	0x2
	.value	0x198
	.long	0x1c5
	.uleb128 0xd
	.long	0x261
	.long	.LASF36
	.byte	0x10
	.byte	0x2
	.value	0x19d
	.uleb128 0xe
	.long	.LASF37
	.byte	0x2
	.value	0x19e
	.long	0x50
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.long	.LASF38
	.byte	0x2
	.value	0x19f
	.long	0x134
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.long	.LASF39
	.byte	0x2
	.value	0x1a0
	.long	0x50
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.long	.LASF40
	.byte	0x2
	.value	0x1a1
	.long	0x50
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0xc
	.long	.LASF36
	.byte	0x2
	.value	0x1a2
	.long	0x217
	.uleb128 0xf
	.long	0x2b9
	.byte	0x10
	.byte	0x2
	.value	0x1ab
	.uleb128 0x10
	.string	"_b"
	.byte	0x2
	.value	0x1a5
	.long	0x2b9
	.uleb128 0x10
	.string	"_w"
	.byte	0x2
	.value	0x1a6
	.long	0x2c9
	.uleb128 0x10
	.string	"_l"
	.byte	0x2
	.value	0x1a7
	.long	0x2d9
	.uleb128 0x10
	.string	"_q"
	.byte	0x2
	.value	0x1a8
	.long	0x2e9
	.uleb128 0x10
	.string	"_s"
	.byte	0x2
	.value	0x1a9
	.long	0x2f9
	.uleb128 0x10
	.string	"_d"
	.byte	0x2
	.value	0x1aa
	.long	0x309
	.byte	0x0
	.uleb128 0x7
	.long	0x2c9
	.long	0x42
	.uleb128 0x8
	.long	0xa9
	.byte	0xf
	.byte	0x0
	.uleb128 0x7
	.long	0x2d9
	.long	0x49
	.uleb128 0x8
	.long	0xa9
	.byte	0x7
	.byte	0x0
	.uleb128 0x7
	.long	0x2e9
	.long	0x50
	.uleb128 0x8
	.long	0xa9
	.byte	0x3
	.byte	0x0
	.uleb128 0x7
	.long	0x2f9
	.long	0x34
	.uleb128 0x8
	.long	0xa9
	.byte	0x1
	.byte	0x0
	.uleb128 0x7
	.long	0x309
	.long	0x1af
	.uleb128 0x8
	.long	0xa9
	.byte	0x3
	.byte	0x0
	.uleb128 0x7
	.long	0x319
	.long	0x1ba
	.uleb128 0x8
	.long	0xa9
	.byte	0x1
	.byte	0x0
	.uleb128 0xc
	.long	.LASF41
	.byte	0x2
	.value	0x1ab
	.long	0x26d
	.uleb128 0xf
	.long	0x35a
	.byte	0x8
	.byte	0x2
	.value	0x1b2
	.uleb128 0x10
	.string	"_b"
	.byte	0x2
	.value	0x1ae
	.long	0x35a
	.uleb128 0x10
	.string	"_w"
	.byte	0x2
	.value	0x1af
	.long	0x36a
	.uleb128 0x10
	.string	"_l"
	.byte	0x2
	.value	0x1b0
	.long	0x37a
	.uleb128 0x10
	.string	"q"
	.byte	0x2
	.value	0x1b1
	.long	0x34
	.byte	0x0
	.uleb128 0x7
	.long	0x36a
	.long	0x42
	.uleb128 0x8
	.long	0xa9
	.byte	0x7
	.byte	0x0
	.uleb128 0x7
	.long	0x37a
	.long	0x49
	.uleb128 0x8
	.long	0xa9
	.byte	0x1
	.byte	0x0
	.uleb128 0x7
	.long	0x38a
	.long	0x50
	.uleb128 0x8
	.long	0xa9
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.long	.LASF42
	.byte	0x2
	.value	0x1b2
	.long	0x325
	.uleb128 0x4
	.long	.LASF43
	.byte	0xa
	.byte	0x2f
	.long	0x50
	.uleb128 0x4
	.long	.LASF44
	.byte	0xa
	.byte	0x34
	.long	0x50
	.uleb128 0x4
	.long	.LASF45
	.byte	0xa
	.byte	0x35
	.long	0x3a1
	.uleb128 0x4
	.long	.LASF46
	.byte	0xa
	.byte	0x4f
	.long	0x3ac
	.uleb128 0xb
	.long	0x3eb
	.long	.LASF47
	.byte	0x8
	.byte	0x9
	.byte	0x37
	.uleb128 0xa
	.long	.LASF48
	.byte	0x9
	.byte	0x38
	.long	0x396
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF49
	.byte	0x9
	.byte	0x39
	.long	0x3a1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x4
	.long	.LASF50
	.byte	0x9
	.byte	0x3d
	.long	0x3c2
	.uleb128 0xb
	.long	0x56b
	.long	.LASF51
	.byte	0xd0
	.byte	0xb
	.byte	0x36
	.uleb128 0xa
	.long	.LASF52
	.byte	0xb
	.byte	0x38
	.long	0x50
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF53
	.byte	0xb
	.byte	0x39
	.long	0x50
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.string	"cr3"
	.byte	0xb
	.byte	0x3d
	.long	0x134
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF54
	.byte	0xb
	.byte	0x3f
	.long	0x56b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.long	.LASF55
	.byte	0xb
	.byte	0x41
	.long	0x50
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.long	.LASF56
	.byte	0xb
	.byte	0x43
	.long	0x50
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xa
	.long	.LASF57
	.byte	0xb
	.byte	0x45
	.long	0x50
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.long	.LASF58
	.byte	0xb
	.byte	0x47
	.long	0x50
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xa
	.long	.LASF59
	.byte	0xb
	.byte	0x4a
	.long	0x134
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xa
	.long	.LASF60
	.byte	0xb
	.byte	0x4b
	.long	0x134
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xa
	.long	.LASF61
	.byte	0xb
	.byte	0x4c
	.long	0x134
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xa
	.long	.LASF62
	.byte	0xb
	.byte	0x4e
	.long	0x571
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xa
	.long	.LASF63
	.byte	0xb
	.byte	0x50
	.long	0x49
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0xa
	.long	.LASF64
	.byte	0xb
	.byte	0x52
	.long	0x50
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xa
	.long	.LASF65
	.byte	0xb
	.byte	0x54
	.long	0x581
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xa
	.long	.LASF66
	.byte	0xb
	.byte	0x56
	.long	0x134
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xa
	.long	.LASF67
	.byte	0xb
	.byte	0x58
	.long	0x591
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xa
	.long	.LASF68
	.byte	0xb
	.byte	0x5b
	.long	0x34
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xa
	.long	.LASF69
	.byte	0xb
	.byte	0x5c
	.long	0x42
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xa
	.long	.LASF70
	.byte	0xb
	.byte	0x5e
	.long	0x50
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0xa
	.long	.LASF71
	.byte	0xb
	.byte	0x60
	.long	0x134
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xa
	.long	.LASF72
	.byte	0xb
	.byte	0x62
	.long	0x591
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0xa
	.long	.LASF73
	.byte	0xb
	.byte	0x65
	.long	0x34
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xa
	.long	.LASF74
	.byte	0xb
	.byte	0x66
	.long	0x42
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.uleb128 0xa
	.long	.LASF75
	.byte	0xb
	.byte	0x68
	.long	0x50
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.byte	0x0
	.uleb128 0x12
	.byte	0x8
	.long	0x7d
	.uleb128 0x7
	.long	0x581
	.long	0x1a8
	.uleb128 0x8
	.long	0xa9
	.byte	0x10
	.byte	0x0
	.uleb128 0x7
	.long	0x591
	.long	0x3a1
	.uleb128 0x8
	.long	0xa9
	.byte	0x10
	.byte	0x0
	.uleb128 0x12
	.byte	0x8
	.long	0x3a1
	.uleb128 0x4
	.long	.LASF76
	.byte	0xb
	.byte	0x69
	.long	0x3f6
	.uleb128 0xf
	.long	0x5c2
	.byte	0x10
	.byte	0x2
	.value	0x20f
	.uleb128 0x10
	.string	"d"
	.byte	0x2
	.value	0x20a
	.long	0x20b
	.uleb128 0x10
	.string	"mmx"
	.byte	0x2
	.value	0x20e
	.long	0x38a
	.byte	0x0
	.uleb128 0xf
	.long	0x5f8
	.byte	0x8
	.byte	0x2
	.value	0x219
	.uleb128 0x10
	.string	"f"
	.byte	0x2
	.value	0x215
	.long	0x19a
	.uleb128 0x10
	.string	"d"
	.byte	0x2
	.value	0x216
	.long	0x1a1
	.uleb128 0x10
	.string	"i32"
	.byte	0x2
	.value	0x217
	.long	0x3b
	.uleb128 0x10
	.string	"i64"
	.byte	0x2
	.value	0x218
	.long	0x2d
	.byte	0x0
	.uleb128 0x13
	.long	0x620
	.byte	0x10
	.byte	0x2
	.value	0x246
	.uleb128 0xe
	.long	.LASF77
	.byte	0x2
	.value	0x246
	.long	0x134
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.long	.LASF24
	.byte	0x2
	.value	0x246
	.long	0x13f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x14
	.long	0xbbb
	.long	.LASF78
	.value	0xb820
	.byte	0x5
	.byte	0x21
	.uleb128 0xe
	.long	.LASF79
	.byte	0x2
	.value	0x1df
	.long	0xbbb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x15
	.string	"eip"
	.byte	0x2
	.value	0x1e0
	.long	0x134
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xe
	.long	.LASF80
	.byte	0x2
	.value	0x1e1
	.long	0x134
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xe
	.long	.LASF81
	.byte	0x2
	.value	0x1e6
	.long	0x3eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xe
	.long	.LASF82
	.byte	0x2
	.value	0x1e6
	.long	0x3eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xe
	.long	.LASF83
	.byte	0x2
	.value	0x1e6
	.long	0x3eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xe
	.long	.LASF84
	.byte	0x2
	.value	0x1e7
	.long	0xbcb
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xe
	.long	.LASF85
	.byte	0x2
	.value	0x1e9
	.long	0x597
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xe
	.long	.LASF86
	.byte	0x2
	.value	0x1ec
	.long	0x134
	.byte	0x3
	.byte	0x23
	.uleb128 0x150
	.uleb128 0xe
	.long	.LASF87
	.byte	0x2
	.value	0x1ed
	.long	0x134
	.byte	0x3
	.byte	0x23
	.uleb128 0x154
	.uleb128 0xe
	.long	.LASF88
	.byte	0x2
	.value	0x1ee
	.long	0x50
	.byte	0x3
	.byte	0x23
	.uleb128 0x158
	.uleb128 0x15
	.string	"df"
	.byte	0x2
	.value	0x1ef
	.long	0x65
	.byte	0x3
	.byte	0x23
	.uleb128 0x15c
	.uleb128 0xe
	.long	.LASF89
	.byte	0x2
	.value	0x1f0
	.long	0x50
	.byte	0x3
	.byte	0x23
	.uleb128 0x160
	.uleb128 0xe
	.long	.LASF90
	.byte	0x2
	.value	0x1f3
	.long	0xbdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x164
	.uleb128 0x15
	.string	"ldt"
	.byte	0x2
	.value	0x1f4
	.long	0x261
	.byte	0x3
	.byte	0x23
	.uleb128 0x1c4
	.uleb128 0x15
	.string	"tr"
	.byte	0x2
	.value	0x1f5
	.long	0x261
	.byte	0x3
	.byte	0x23
	.uleb128 0x1d4
	.uleb128 0x15
	.string	"gdt"
	.byte	0x2
	.value	0x1f6
	.long	0x261
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e4
	.uleb128 0x15
	.string	"idt"
	.byte	0x2
	.value	0x1f7
	.long	0x261
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f4
	.uleb128 0x15
	.string	"cr"
	.byte	0x2
	.value	0x1f9
	.long	0xbeb
	.byte	0x3
	.byte	0x23
	.uleb128 0x204
	.uleb128 0xe
	.long	.LASF91
	.byte	0x2
	.value	0x1fa
	.long	0x50
	.byte	0x3
	.byte	0x23
	.uleb128 0x218
	.uleb128 0xe
	.long	.LASF92
	.byte	0x2
	.value	0x201
	.long	0x134
	.byte	0x3
	.byte	0x23
	.uleb128 0x21c
	.uleb128 0xe
	.long	.LASF93
	.byte	0x2
	.value	0x202
	.long	0x134
	.byte	0x3
	.byte	0x23
	.uleb128 0x220
	.uleb128 0xe
	.long	.LASF94
	.byte	0x2
	.value	0x204
	.long	0x50
	.byte	0x3
	.byte	0x23
	.uleb128 0x224
	.uleb128 0xe
	.long	.LASF95
	.byte	0x2
	.value	0x205
	.long	0x50
	.byte	0x3
	.byte	0x23
	.uleb128 0x228
	.uleb128 0xe
	.long	.LASF96
	.byte	0x2
	.value	0x206
	.long	0x50
	.byte	0x3
	.byte	0x23
	.uleb128 0x22c
	.uleb128 0xe
	.long	.LASF97
	.byte	0x2
	.value	0x207
	.long	0x35a
	.byte	0x3
	.byte	0x23
	.uleb128 0x230
	.uleb128 0xe
	.long	.LASF98
	.byte	0x2
	.value	0x20f
	.long	0xbfb
	.byte	0x3
	.byte	0x23
	.uleb128 0x240
	.uleb128 0xe
	.long	.LASF99
	.byte	0x2
	.value	0x212
	.long	0x200
	.byte	0x3
	.byte	0x23
	.uleb128 0x2c0
	.uleb128 0x15
	.string	"ft0"
	.byte	0x2
	.value	0x213
	.long	0x20b
	.byte	0x3
	.byte	0x23
	.uleb128 0x2d0
	.uleb128 0xe
	.long	.LASF100
	.byte	0x2
	.value	0x219
	.long	0x5c2
	.byte	0x3
	.byte	0x23
	.uleb128 0x2e0
	.uleb128 0xe
	.long	.LASF101
	.byte	0x2
	.value	0x21b
	.long	0x200
	.byte	0x3
	.byte	0x23
	.uleb128 0x2e8
	.uleb128 0xe
	.long	.LASF102
	.byte	0x2
	.value	0x21c
	.long	0x50
	.byte	0x3
	.byte	0x23
	.uleb128 0x2ec
	.uleb128 0xe
	.long	.LASF103
	.byte	0x2
	.value	0x21d
	.long	0xc0b
	.byte	0x3
	.byte	0x23
	.uleb128 0x2f0
	.uleb128 0xe
	.long	.LASF104
	.byte	0x2
	.value	0x21e
	.long	0x319
	.byte	0x3
	.byte	0x23
	.uleb128 0x370
	.uleb128 0xe
	.long	.LASF105
	.byte	0x2
	.value	0x21f
	.long	0x38a
	.byte	0x3
	.byte	0x23
	.uleb128 0x380
	.uleb128 0xe
	.long	.LASF106
	.byte	0x2
	.value	0x222
	.long	0x50
	.byte	0x3
	.byte	0x23
	.uleb128 0x388
	.uleb128 0xe
	.long	.LASF107
	.byte	0x2
	.value	0x223
	.long	0x50
	.byte	0x3
	.byte	0x23
	.uleb128 0x38c
	.uleb128 0xe
	.long	.LASF108
	.byte	0x2
	.value	0x224
	.long	0x50
	.byte	0x3
	.byte	0x23
	.uleb128 0x390
	.uleb128 0xe
	.long	.LASF109
	.byte	0x2
	.value	0x225
	.long	0x34
	.byte	0x3
	.byte	0x23
	.uleb128 0x398
	.uleb128 0xe
	.long	.LASF110
	.byte	0x2
	.value	0x226
	.long	0x34
	.byte	0x3
	.byte	0x23
	.uleb128 0x3a0
	.uleb128 0xe
	.long	.LASF111
	.byte	0x2
	.value	0x228
	.long	0x13f
	.byte	0x3
	.byte	0x23
	.uleb128 0x3a8
	.uleb128 0xe
	.long	.LASF112
	.byte	0x2
	.value	0x229
	.long	0x13f
	.byte	0x3
	.byte	0x23
	.uleb128 0x3b0
	.uleb128 0xe
	.long	.LASF113
	.byte	0x2
	.value	0x22a
	.long	0x34
	.byte	0x3
	.byte	0x23
	.uleb128 0x3b8
	.uleb128 0xe
	.long	.LASF114
	.byte	0x2
	.value	0x22b
	.long	0x49
	.byte	0x3
	.byte	0x23
	.uleb128 0x3c0
	.uleb128 0xe
	.long	.LASF115
	.byte	0x2
	.value	0x22c
	.long	0x49
	.byte	0x3
	.byte	0x23
	.uleb128 0x3c2
	.uleb128 0xe
	.long	.LASF116
	.byte	0x2
	.value	0x22d
	.long	0x49
	.byte	0x3
	.byte	0x23
	.uleb128 0x3c4
	.uleb128 0xe
	.long	.LASF117
	.byte	0x2
	.value	0x22e
	.long	0x49
	.byte	0x3
	.byte	0x23
	.uleb128 0x3c6
	.uleb128 0xe
	.long	.LASF118
	.byte	0x2
	.value	0x22f
	.long	0x50
	.byte	0x3
	.byte	0x23
	.uleb128 0x3c8
	.uleb128 0x15
	.string	"pat"
	.byte	0x2
	.value	0x238
	.long	0x34
	.byte	0x3
	.byte	0x23
	.uleb128 0x3d0
	.uleb128 0xe
	.long	.LASF119
	.byte	0x2
	.value	0x23b
	.long	0x119
	.byte	0x3
	.byte	0x23
	.uleb128 0x3d8
	.uleb128 0xe
	.long	.LASF120
	.byte	0x2
	.value	0x23c
	.long	0x3b
	.byte	0x3
	.byte	0x23
	.uleb128 0x4a0
	.uleb128 0xe
	.long	.LASF121
	.byte	0x2
	.value	0x23d
	.long	0x3b
	.byte	0x3
	.byte	0x23
	.uleb128 0x4a4
	.uleb128 0xe
	.long	.LASF122
	.byte	0x2
	.value	0x23e
	.long	0x3b
	.byte	0x3
	.byte	0x23
	.uleb128 0x4a8
	.uleb128 0xe
	.long	.LASF123
	.byte	0x2
	.value	0x23f
	.long	0x134
	.byte	0x3
	.byte	0x23
	.uleb128 0x4ac
	.uleb128 0x15
	.string	"dr"
	.byte	0x2
	.value	0x240
	.long	0xbbb
	.byte	0x3
	.byte	0x23
	.uleb128 0x4b0
	.uleb128 0xe
	.long	.LASF124
	.byte	0x2
	.value	0x241
	.long	0x50
	.byte	0x3
	.byte	0x23
	.uleb128 0x4d0
	.uleb128 0xe
	.long	.LASF125
	.byte	0x2
	.value	0x242
	.long	0x3b
	.byte	0x3
	.byte	0x23
	.uleb128 0x4d4
	.uleb128 0xe
	.long	.LASF126
	.byte	0x2
	.value	0x243
	.long	0x3b
	.byte	0x3
	.byte	0x23
	.uleb128 0x4d8
	.uleb128 0xe
	.long	.LASF127
	.byte	0x2
	.value	0x244
	.long	0x3b
	.byte	0x3
	.byte	0x23
	.uleb128 0x4dc
	.uleb128 0xe
	.long	.LASF128
	.byte	0x2
	.value	0x246
	.long	0xcde
	.byte	0x3
	.byte	0x23
	.uleb128 0x4e0
	.uleb128 0xe
	.long	.LASF129
	.byte	0x2
	.value	0x246
	.long	0x34
	.byte	0x3
	.byte	0x23
	.uleb128 0x4e8
	.uleb128 0xe
	.long	.LASF130
	.byte	0x2
	.value	0x246
	.long	0x134
	.byte	0x3
	.byte	0x23
	.uleb128 0x4f0
	.uleb128 0xe
	.long	.LASF131
	.byte	0x2
	.value	0x246
	.long	0xce4
	.byte	0x3
	.byte	0x23
	.uleb128 0x4f8
	.uleb128 0xe
	.long	.LASF132
	.byte	0x2
	.value	0x246
	.long	0xcfa
	.byte	0x3
	.byte	0x23
	.uleb128 0x34f8
	.uleb128 0xe
	.long	.LASF133
	.byte	0x2
	.value	0x246
	.long	0xd0b
	.byte	0x4
	.byte	0x23
	.uleb128 0xb4f8
	.uleb128 0xe
	.long	.LASF134
	.byte	0x2
	.value	0x246
	.long	0x3b
	.byte	0x4
	.byte	0x23
	.uleb128 0xb578
	.uleb128 0xe
	.long	.LASF135
	.byte	0x2
	.value	0x246
	.long	0x3b
	.byte	0x4
	.byte	0x23
	.uleb128 0xb57c
	.uleb128 0xe
	.long	.LASF136
	.byte	0x2
	.value	0x246
	.long	0xd1b
	.byte	0x4
	.byte	0x23
	.uleb128 0xb580
	.uleb128 0xe
	.long	.LASF137
	.byte	0x2
	.value	0x246
	.long	0x3b
	.byte	0x4
	.byte	0x23
	.uleb128 0xb780
	.uleb128 0xe
	.long	.LASF138
	.byte	0x2
	.value	0x246
	.long	0x3b
	.byte	0x4
	.byte	0x23
	.uleb128 0xb784
	.uleb128 0xe
	.long	.LASF139
	.byte	0x2
	.value	0x246
	.long	0x7b
	.byte	0x4
	.byte	0x23
	.uleb128 0xb788
	.uleb128 0xe
	.long	.LASF140
	.byte	0x2
	.value	0x246
	.long	0x3b
	.byte	0x4
	.byte	0x23
	.uleb128 0xb790
	.uleb128 0xe
	.long	.LASF141
	.byte	0x2
	.value	0x246
	.long	0x7b
	.byte	0x4
	.byte	0x23
	.uleb128 0xb798
	.uleb128 0xe
	.long	.LASF142
	.byte	0x2
	.value	0x246
	.long	0xd2b
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7a0
	.uleb128 0xe
	.long	.LASF143
	.byte	0x2
	.value	0x249
	.long	0x50
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7a8
	.uleb128 0xe
	.long	.LASF144
	.byte	0x2
	.value	0x24a
	.long	0x50
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7ac
	.uleb128 0xe
	.long	.LASF145
	.byte	0x2
	.value	0x24b
	.long	0x50
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7b0
	.uleb128 0xe
	.long	.LASF146
	.byte	0x2
	.value	0x24c
	.long	0x50
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7b4
	.uleb128 0xe
	.long	.LASF147
	.byte	0x2
	.value	0x24d
	.long	0x50
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7b8
	.uleb128 0xe
	.long	.LASF148
	.byte	0x2
	.value	0x24e
	.long	0x50
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7bc
	.uleb128 0xe
	.long	.LASF149
	.byte	0x2
	.value	0x24f
	.long	0x50
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7c0
	.uleb128 0xe
	.long	.LASF150
	.byte	0x2
	.value	0x250
	.long	0x50
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7c4
	.uleb128 0xe
	.long	.LASF151
	.byte	0x2
	.value	0x251
	.long	0xd36
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7c8
	.uleb128 0xe
	.long	.LASF152
	.byte	0x2
	.value	0x252
	.long	0x50
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7f8
	.uleb128 0xe
	.long	.LASF153
	.byte	0x2
	.value	0x253
	.long	0x50
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7fc
	.uleb128 0xe
	.long	.LASF154
	.byte	0x2
	.value	0x254
	.long	0x50
	.byte	0x4
	.byte	0x23
	.uleb128 0xb800
	.uleb128 0xe
	.long	.LASF155
	.byte	0x2
	.value	0x25b
	.long	0xd46
	.byte	0x4
	.byte	0x23
	.uleb128 0xb808
	.uleb128 0xe
	.long	.LASF156
	.byte	0x2
	.value	0x25f
	.long	0xd52
	.byte	0x4
	.byte	0x23
	.uleb128 0xb810
	.byte	0x0
	.uleb128 0x7
	.long	0xbcb
	.long	0x134
	.uleb128 0x8
	.long	0xa9
	.byte	0x7
	.byte	0x0
	.uleb128 0x7
	.long	0xbdb
	.long	0x3eb
	.uleb128 0x8
	.long	0xa9
	.byte	0x7
	.byte	0x0
	.uleb128 0x7
	.long	0xbeb
	.long	0x261
	.uleb128 0x8
	.long	0xa9
	.byte	0x5
	.byte	0x0
	.uleb128 0x7
	.long	0xbfb
	.long	0x134
	.uleb128 0x8
	.long	0xa9
	.byte	0x4
	.byte	0x0
	.uleb128 0x7
	.long	0xc0b
	.long	0x5a2
	.uleb128 0x8
	.long	0xa9
	.byte	0x7
	.byte	0x0
	.uleb128 0x7
	.long	0xc1b
	.long	0x319
	.uleb128 0x8
	.long	0xa9
	.byte	0x7
	.byte	0x0
	.uleb128 0xd
	.long	0xcde
	.long	.LASF157
	.byte	0x68
	.byte	0x2
	.value	0x246
	.uleb128 0x11
	.string	"pc"
	.byte	0x1
	.byte	0x93
	.long	0x134
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF158
	.byte	0x1
	.byte	0x94
	.long	0x134
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.long	.LASF40
	.byte	0x1
	.byte	0x95
	.long	0x34
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF159
	.byte	0x1
	.byte	0x96
	.long	0x49
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.long	.LASF160
	.byte	0x1
	.byte	0x98
	.long	0x49
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0xa
	.long	.LASF161
	.byte	0x1
	.byte	0x9e
	.long	0xd6b
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.long	.LASF162
	.byte	0x1
	.byte	0xa0
	.long	0xcde
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.long	.LASF163
	.byte	0x1
	.byte	0xa3
	.long	0xd71
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xa
	.long	.LASF164
	.byte	0x1
	.byte	0xa4
	.long	0xd81
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xa
	.long	.LASF165
	.byte	0x1
	.byte	0xa8
	.long	0x36a
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xa
	.long	.LASF166
	.byte	0x1
	.byte	0xac
	.long	0xd91
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xa
	.long	.LASF167
	.byte	0x1
	.byte	0xb2
	.long	0xd71
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xa
	.long	.LASF168
	.byte	0x1
	.byte	0xb3
	.long	0xcde
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.byte	0x0
	.uleb128 0x12
	.byte	0x8
	.long	0xc1b
	.uleb128 0x7
	.long	0xcfa
	.long	0x18f
	.uleb128 0x8
	.long	0xa9
	.byte	0x1
	.uleb128 0x8
	.long	0xa9
	.byte	0xff
	.byte	0x0
	.uleb128 0x7
	.long	0xd0b
	.long	0xcde
	.uleb128 0x16
	.long	0xa9
	.value	0xfff
	.byte	0x0
	.uleb128 0x7
	.long	0xd1b
	.long	0x134
	.uleb128 0x8
	.long	0xa9
	.byte	0x1f
	.byte	0x0
	.uleb128 0x7
	.long	0xd2b
	.long	0x5f8
	.uleb128 0x8
	.long	0xa9
	.byte	0x1f
	.byte	0x0
	.uleb128 0x12
	.byte	0x8
	.long	0xd31
	.uleb128 0x17
	.long	0x1a8
	.uleb128 0x7
	.long	0xd46
	.long	0x50
	.uleb128 0x8
	.long	0xa9
	.byte	0xb
	.byte	0x0
	.uleb128 0x12
	.byte	0x8
	.long	0x3ac
	.uleb128 0x6
	.long	.LASF169
	.byte	0x1
	.uleb128 0x12
	.byte	0x8
	.long	0xd4c
	.uleb128 0xc
	.long	.LASF78
	.byte	0x2
	.value	0x260
	.long	0x620
	.uleb128 0x17
	.long	0x3eb
	.uleb128 0x18
	.byte	0x1
	.uleb128 0x12
	.byte	0x8
	.long	0x42
	.uleb128 0x7
	.long	0xd81
	.long	0xcde
	.uleb128 0x8
	.long	0xa9
	.byte	0x1
	.byte	0x0
	.uleb128 0x7
	.long	0xd91
	.long	0x134
	.uleb128 0x8
	.long	0xa9
	.byte	0x1
	.byte	0x0
	.uleb128 0x7
	.long	0xda1
	.long	0x50
	.uleb128 0x8
	.long	0xa9
	.byte	0x1
	.byte	0x0
	.uleb128 0x4
	.long	.LASF157
	.byte	0x1
	.byte	0xb4
	.long	0xc1b
	.uleb128 0xc
	.long	.LASF170
	.byte	0x1
	.value	0x1da
	.long	0x3b
	.uleb128 0xb
	.long	0xde1
	.long	.LASF171
	.byte	0x10
	.byte	0x5
	.byte	0xa8
	.uleb128 0xa
	.long	.LASF172
	.byte	0x5
	.byte	0xa9
	.long	0xde7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF173
	.byte	0x5
	.byte	0xaa
	.long	0xde7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x19
	.byte	0x1
	.long	0x3b
	.uleb128 0x12
	.byte	0x8
	.long	0xde1
	.uleb128 0x4
	.long	.LASF171
	.byte	0x5
	.byte	0xab
	.long	0xdb8
	.uleb128 0x2
	.long	.LASF174
	.byte	0x8
	.byte	0x7
	.uleb128 0x1a
	.long	0xee6
	.long	.LASF178
	.byte	0x1
	.value	0x225
	.byte	0x1
	.long	0x134
	.quad	.LFB197
	.quad	.LFE197
	.byte	0x1
	.byte	0x57
	.uleb128 0x1b
	.string	"env"
	.byte	0x1
	.value	0x224
	.long	0xee6
	.byte	0x1
	.byte	0x59
	.uleb128 0x1c
	.long	.LASF175
	.byte	0x1
	.value	0x224
	.long	0x134
	.byte	0x1
	.byte	0x53
	.uleb128 0x1d
	.long	.LASF176
	.byte	0x1
	.value	0x226
	.long	0x3b
	.uleb128 0x1d
	.long	.LASF177
	.byte	0x1
	.value	0x226
	.long	0x3b
	.uleb128 0x1e
	.string	"pd"
	.byte	0x1
	.value	0x226
	.long	0x3b
	.byte	0x1
	.byte	0x50
	.uleb128 0x1f
	.long	0xe82
	.long	0xeec
	.quad	.LBB2
	.quad	.LBE2
	.uleb128 0x20
	.long	0xefe
	.byte	0x0
	.uleb128 0x21
	.long	0xf0b
	.quad	.LBB8
	.quad	.LBE8
	.uleb128 0x20
	.long	0xf1d
	.uleb128 0x22
	.quad	.LBB9
	.quad	.LBE9
	.uleb128 0x23
	.long	0xf28
	.uleb128 0x23
	.long	0xf34
	.uleb128 0x23
	.long	0xf40
	.uleb128 0x23
	.long	0xf4c
	.uleb128 0x23
	.long	0xf58
	.uleb128 0x21
	.long	0xeec
	.quad	.LBB10
	.quad	.LBE10
	.uleb128 0x24
	.long	0xefe
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.byte	0x8
	.long	0xd58
	.uleb128 0x25
	.long	0xf0b
	.long	.LASF179
	.byte	0x2
	.value	0x2e9
	.byte	0x1
	.long	0x3b
	.byte	0x3
	.uleb128 0x26
	.string	"env"
	.byte	0x2
	.value	0x2e8
	.long	0xee6
	.byte	0x0
	.uleb128 0x25
	.long	0xf65
	.long	.LASF180
	.byte	0x3
	.value	0x101
	.byte	0x1
	.long	0x3b
	.byte	0x3
	.uleb128 0x27
	.string	"ptr"
	.byte	0x3
	.byte	0xff
	.long	0x134
	.uleb128 0x1d
	.long	.LASF177
	.byte	0x3
	.value	0x102
	.long	0x3b
	.uleb128 0x28
	.string	"res"
	.byte	0x3
	.value	0x103
	.long	0x3b
	.uleb128 0x1d
	.long	.LASF175
	.byte	0x3
	.value	0x104
	.long	0x134
	.uleb128 0x1d
	.long	.LASF181
	.byte	0x3
	.value	0x105
	.long	0x34
	.uleb128 0x1d
	.long	.LASF176
	.byte	0x3
	.value	0x106
	.long	0x3b
	.byte	0x0
	.uleb128 0x29
	.byte	0x1
	.long	.LASF230
	.byte	0x4
	.byte	0x61
	.byte	0x1
	.quad	.LFB283
	.quad	.LFE283
	.byte	0x1
	.byte	0x57
	.uleb128 0x2a
	.long	0xfba
	.byte	0x1
	.long	.LASF183
	.byte	0x4
	.byte	0x70
	.byte	0x1
	.quad	.LFB284
	.quad	.LFE284
	.byte	0x1
	.byte	0x57
	.uleb128 0x2b
	.long	.LASF182
	.byte	0x4
	.byte	0x6f
	.long	0xee6
	.byte	0x1
	.byte	0x55
	.uleb128 0x2c
	.string	"puc"
	.byte	0x4
	.byte	0x6f
	.long	0x7b
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0x2d
	.long	0x130d
	.byte	0x1
	.long	.LASF184
	.byte	0x4
	.value	0x12c
	.byte	0x1
	.long	0x3b
	.quad	.LFB287
	.quad	.LFE287
	.byte	0x1
	.byte	0x57
	.uleb128 0x1c
	.long	.LASF182
	.byte	0x4
	.value	0x12b
	.long	0xee6
	.byte	0x1
	.byte	0x55
	.uleb128 0x2e
	.long	.LASF185
	.byte	0x6
	.byte	0x49
	.long	0x70
	.byte	0x1
	.byte	0x5e
	.uleb128 0x2e
	.long	.LASF186
	.byte	0x6
	.byte	0x49
	.long	0x130d
	.byte	0x3
	.byte	0x91
	.sleb128 120
	.uleb128 0x2e
	.long	.LASF187
	.byte	0x6
	.byte	0x4d
	.long	0x70
	.byte	0x1
	.byte	0x5f
	.uleb128 0x2e
	.long	.LASF188
	.byte	0x6
	.byte	0x4d
	.long	0x130d
	.byte	0x3
	.byte	0x91
	.sleb128 112
	.uleb128 0x2e
	.long	.LASF189
	.byte	0x6
	.byte	0x4d
	.long	0x1312
	.byte	0x3
	.byte	0x91
	.sleb128 96
	.uleb128 0x2e
	.long	.LASF190
	.byte	0x6
	.byte	0x51
	.long	0x70
	.byte	0x1
	.byte	0x5c
	.uleb128 0x2e
	.long	.LASF191
	.byte	0x6
	.byte	0x51
	.long	0x130d
	.byte	0x3
	.byte	0x91
	.sleb128 88
	.uleb128 0x2e
	.long	.LASF192
	.byte	0x6
	.byte	0x51
	.long	0x1312
	.byte	0x3
	.byte	0x91
	.sleb128 80
	.uleb128 0x2e
	.long	.LASF193
	.byte	0x6
	.byte	0x55
	.long	0x70
	.byte	0x1
	.byte	0x5d
	.uleb128 0x2e
	.long	.LASF194
	.byte	0x6
	.byte	0x55
	.long	0x130d
	.byte	0x3
	.byte	0x91
	.sleb128 72
	.uleb128 0x2e
	.long	.LASF195
	.byte	0x6
	.byte	0x55
	.long	0x1312
	.byte	0x3
	.byte	0x91
	.sleb128 64
	.uleb128 0x1e
	.string	"ret"
	.byte	0x4
	.value	0x134
	.long	0x3b
	.byte	0x2
	.byte	0x91
	.sleb128 56
	.uleb128 0x2f
	.long	.LASF125
	.byte	0x4
	.value	0x134
	.long	0x3b
	.byte	0x1
	.byte	0x53
	.uleb128 0x1d
	.long	.LASF196
	.byte	0x4
	.value	0x135
	.long	0x1317
	.uleb128 0x1e
	.string	"tb"
	.byte	0x4
	.value	0x136
	.long	0x131d
	.byte	0x1
	.byte	0x51
	.uleb128 0x2f
	.long	.LASF161
	.byte	0x4
	.value	0x137
	.long	0xd6b
	.byte	0x1
	.byte	0x50
	.uleb128 0x1f
	.long	0x10ec
	.long	0x1323
	.quad	.LBB12
	.quad	.LBE12
	.uleb128 0x20
	.long	0x1335
	.byte	0x0
	.uleb128 0x1f
	.long	0x116c
	.long	0x1342
	.quad	.LBB18
	.quad	.LBE18
	.uleb128 0x30
	.long	0x1353
	.byte	0x1
	.byte	0x50
	.uleb128 0x30
	.long	0x135d
	.byte	0x1
	.byte	0x55
	.uleb128 0x30
	.long	0x1368
	.byte	0x1
	.byte	0x52
	.uleb128 0x30
	.long	0x1372
	.byte	0x1
	.byte	0x54
	.uleb128 0x31
	.long	.Ldebug_ranges0+0x0
	.uleb128 0x30
	.long	0x1353
	.byte	0x1
	.byte	0x50
	.uleb128 0x30
	.long	0x135d
	.byte	0x1
	.byte	0x55
	.uleb128 0x30
	.long	0x1368
	.byte	0x1
	.byte	0x52
	.uleb128 0x30
	.long	0x1372
	.byte	0x1
	.byte	0x54
	.uleb128 0x21
	.long	0x137e
	.quad	.LBB20
	.quad	.LBE20
	.uleb128 0x20
	.long	0x138f
	.uleb128 0x31
	.long	.Ldebug_ranges0+0x40
	.uleb128 0x30
	.long	0x1399
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
	.long	0x11be
	.long	0x13a5
	.quad	.LBB26
	.quad	.LBE26
	.uleb128 0x24
	.long	0x13b3
	.byte	0x1
	.byte	0x54
	.uleb128 0x20
	.long	0x13be
	.uleb128 0x20
	.long	0x13c8
	.uleb128 0x21
	.long	0x13d5
	.quad	.LBB29
	.quad	.LBE29
	.uleb128 0x20
	.long	0x13e3
	.uleb128 0x20
	.long	0x13ed
	.uleb128 0x24
	.long	0x13f7
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
	.long	0x1287
	.long	0x1404
	.quad	.LBB33
	.quad	.LBE33
	.uleb128 0x24
	.long	0x1415
	.byte	0x1
	.byte	0x56
	.uleb128 0x24
	.long	0x141f
	.byte	0x2
	.byte	0x91
	.sleb128 52
	.uleb128 0x24
	.long	0x142a
	.byte	0x2
	.byte	0x91
	.sleb128 40
	.uleb128 0x32
	.long	0x1252
	.long	.Ldebug_ranges0+0x80
	.uleb128 0x30
	.long	0x1435
	.byte	0x1
	.byte	0x53
	.uleb128 0x30
	.long	0x143f
	.byte	0x1
	.byte	0x51
	.uleb128 0x30
	.long	0x144a
	.byte	0x2
	.byte	0x91
	.sleb128 60
	.uleb128 0x23
	.long	0x1455
	.uleb128 0x30
	.long	0x145e
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x30
	.long	0x1469
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x30
	.long	0x1474
	.byte	0x1
	.byte	0x51
	.uleb128 0x30
	.long	0x147f
	.byte	0x1
	.byte	0x54
	.uleb128 0x30
	.long	0x148a
	.byte	0x1
	.byte	0x50
	.uleb128 0x33
	.long	0x1495
	.quad	.L60
	.uleb128 0x33
	.long	0x149c
	.quad	.L64
	.byte	0x0
	.uleb128 0x21
	.long	0x137e
	.quad	.LBB36
	.quad	.LBE36
	.uleb128 0x20
	.long	0x138f
	.uleb128 0x22
	.quad	.LBB37
	.quad	.LBE37
	.uleb128 0x30
	.long	0x1399
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
	.long	0x12a6
	.long	0x14aa
	.quad	.LBB40
	.quad	.LBE40
	.uleb128 0x20
	.long	0x14bc
	.byte	0x0
	.uleb128 0x32
	.long	0x12be
	.long	.Ldebug_ranges0+0xd0
	.uleb128 0x2f
	.long	.LASF197
	.byte	0x4
	.value	0x1de
	.long	0x3b
	.byte	0x1
	.byte	0x56
	.byte	0x0
	.uleb128 0x32
	.long	0x12f1
	.long	.Ldebug_ranges0+0x100
	.uleb128 0x2f
	.long	.LASF197
	.byte	0x4
	.value	0x1d0
	.long	0x3b
	.byte	0x1
	.byte	0x56
	.uleb128 0x21
	.long	0x14aa
	.quad	.LBB44
	.quad	.LBE44
	.uleb128 0x20
	.long	0x14bc
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
	.long	0x14aa
	.quad	.LBB47
	.quad	.LBE47
	.uleb128 0x20
	.long	0x14bc
	.byte	0x0
	.byte	0x0
	.uleb128 0x34
	.long	0x70
	.uleb128 0x34
	.long	0x3eb
	.uleb128 0x12
	.byte	0x8
	.long	0xd69
	.uleb128 0x12
	.byte	0x8
	.long	0xda1
	.uleb128 0x25
	.long	0x1342
	.long	.LASF198
	.byte	0x5
	.value	0x268
	.byte	0x1
	.long	0x3b
	.byte	0x3
	.uleb128 0x26
	.string	"env"
	.byte	0x5
	.value	0x268
	.long	0xee6
	.byte	0x0
	.uleb128 0x35
	.long	0x137e
	.long	.LASF199
	.byte	0x4
	.byte	0xd2
	.byte	0x1
	.long	0x131d
	.byte	0x3
	.uleb128 0x36
	.string	"tb"
	.byte	0x4
	.byte	0xd3
	.long	0x131d
	.uleb128 0x37
	.long	.LASF158
	.byte	0x4
	.byte	0xd4
	.long	0x134
	.uleb128 0x36
	.string	"pc"
	.byte	0x4
	.byte	0xd4
	.long	0x134
	.uleb128 0x37
	.long	.LASF40
	.byte	0x4
	.byte	0xd5
	.long	0x34
	.byte	0x0
	.uleb128 0x35
	.long	0x13a5
	.long	.LASF200
	.byte	0x1
	.byte	0xbe
	.byte	0x1
	.long	0x50
	.byte	0x3
	.uleb128 0x27
	.string	"pc"
	.byte	0x1
	.byte	0xbd
	.long	0x134
	.uleb128 0x36
	.string	"tmp"
	.byte	0x1
	.byte	0xbf
	.long	0x134
	.byte	0x0
	.uleb128 0x38
	.long	0x13d5
	.long	.LASF201
	.byte	0x1
	.value	0x109
	.byte	0x1
	.byte	0x3
	.uleb128 0x26
	.string	"tb"
	.byte	0x1
	.value	0x107
	.long	0x131d
	.uleb128 0x26
	.string	"n"
	.byte	0x1
	.value	0x107
	.long	0x3b
	.uleb128 0x39
	.long	.LASF166
	.byte	0x1
	.value	0x108
	.long	0x131d
	.byte	0x0
	.uleb128 0x38
	.long	0x1404
	.long	.LASF202
	.byte	0x1
	.value	0x101
	.byte	0x1
	.byte	0x3
	.uleb128 0x27
	.string	"tb"
	.byte	0x1
	.byte	0xff
	.long	0x131d
	.uleb128 0x26
	.string	"n"
	.byte	0x1
	.value	0x100
	.long	0x3b
	.uleb128 0x39
	.long	.LASF175
	.byte	0x1
	.value	0x100
	.long	0x34
	.byte	0x0
	.uleb128 0x35
	.long	0x14a4
	.long	.LASF203
	.byte	0x4
	.byte	0x86
	.byte	0x1
	.long	0x131d
	.byte	0x1
	.uleb128 0x27
	.string	"pc"
	.byte	0x4
	.byte	0x83
	.long	0x134
	.uleb128 0x3a
	.long	.LASF158
	.byte	0x4
	.byte	0x84
	.long	0x134
	.uleb128 0x3a
	.long	.LASF40
	.byte	0x4
	.byte	0x85
	.long	0x34
	.uleb128 0x36
	.string	"tb"
	.byte	0x4
	.byte	0x87
	.long	0x131d
	.uleb128 0x37
	.long	.LASF204
	.byte	0x4
	.byte	0x87
	.long	0x14a4
	.uleb128 0x37
	.long	.LASF205
	.byte	0x4
	.byte	0x88
	.long	0x3b
	.uleb128 0x36
	.string	"h"
	.byte	0x4
	.byte	0x89
	.long	0x50
	.uleb128 0x37
	.long	.LASF206
	.byte	0x4
	.byte	0x8a
	.long	0x134
	.uleb128 0x37
	.long	.LASF207
	.byte	0x4
	.byte	0x8a
	.long	0x134
	.uleb128 0x37
	.long	.LASF208
	.byte	0x4
	.byte	0x8a
	.long	0x134
	.uleb128 0x37
	.long	.LASF209
	.byte	0x4
	.byte	0x8a
	.long	0x134
	.uleb128 0x37
	.long	.LASF161
	.byte	0x4
	.byte	0x8b
	.long	0xd6b
	.uleb128 0x3b
	.long	.LASF210
	.byte	0x4
	.byte	0xae
	.uleb128 0x3b
	.long	.LASF211
	.byte	0x4
	.byte	0xca
	.byte	0x0
	.uleb128 0x12
	.byte	0x8
	.long	0x131d
	.uleb128 0x25
	.long	0x14c9
	.long	.LASF212
	.byte	0x7
	.value	0x149
	.byte	0x1
	.long	0x3b
	.byte	0x3
	.uleb128 0x39
	.long	.LASF213
	.byte	0x7
	.value	0x149
	.long	0x50
	.byte	0x0
	.uleb128 0x3c
	.long	0x1506
	.byte	0x1
	.long	.LASF214
	.byte	0x4
	.value	0x347
	.byte	0x1
	.quad	.LFB288
	.quad	.LFE288
	.byte	0x1
	.byte	0x57
	.uleb128 0x1c
	.long	.LASF215
	.byte	0x4
	.value	0x346
	.long	0x134
	.byte	0x1
	.byte	0x55
	.uleb128 0x1b
	.string	"end"
	.byte	0x4
	.value	0x346
	.long	0x134
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0x3d
	.string	"env"
	.byte	0x5
	.byte	0x21
	.long	0x1513
	.byte	0x1
	.byte	0x5e
	.uleb128 0x12
	.byte	0x8
	.long	0x620
	.uleb128 0x3d
	.string	"T0"
	.byte	0x5
	.byte	0x2f
	.long	0x134
	.byte	0x1
	.byte	0x5f
	.uleb128 0x3d
	.string	"T1"
	.byte	0x5
	.byte	0x31
	.long	0x134
	.byte	0x1
	.byte	0x5c
	.uleb128 0x3d
	.string	"T2"
	.byte	0x5
	.byte	0x33
	.long	0x134
	.byte	0x1
	.byte	0x5d
	.uleb128 0x3e
	.long	.LASF54
	.byte	0x1
	.byte	0x3d
	.long	0x56b
	.byte	0x1
	.byte	0x1
	.uleb128 0x3e
	.long	.LASF216
	.byte	0x1
	.byte	0x3e
	.long	0x3b
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.long	.LASF217
	.byte	0x11
	.value	0x24d
	.long	0x1565
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.byte	0x8
	.long	0x3b7
	.uleb128 0x3f
	.long	.LASF218
	.byte	0x11
	.value	0x24e
	.long	0xd64
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.long	.LASF219
	.byte	0x11
	.value	0x32c
	.long	0xee6
	.byte	0x1
	.byte	0x1
	.uleb128 0x3e
	.long	.LASF220
	.byte	0x12
	.byte	0x26
	.long	0xd6b
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.long	.LASF221
	.byte	0x11
	.value	0x376
	.long	0xd6b
	.byte	0x1
	.byte	0x1
	.uleb128 0x7
	.long	0x15b3
	.long	0x131d
	.uleb128 0x16
	.long	0xa9
	.value	0x7fff
	.byte	0x0
	.uleb128 0x3e
	.long	.LASF222
	.byte	0x1
	.byte	0xcf
	.long	0x15a2
	.byte	0x1
	.byte	0x1
	.uleb128 0x3e
	.long	.LASF223
	.byte	0x1
	.byte	0xd2
	.long	0xd6b
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.long	.LASF224
	.byte	0x1
	.value	0x1fc
	.long	0xdac
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	.LASF225
	.byte	0x4
	.byte	0x2a
	.long	0x3b
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	tb_invalidated_flag
	.uleb128 0x7
	.long	0x15fc
	.long	0xded
	.uleb128 0x41
	.byte	0x0
	.uleb128 0x3e
	.long	.LASF226
	.byte	0x5
	.byte	0xad
	.long	0x15f1
	.byte	0x1
	.byte	0x1
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
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
	.uleb128 0x15
	.byte	0x0
	.uleb128 0x27
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
	.uleb128 0x15
	.byte	0x0
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x55
	.uleb128 0x6
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
	.uleb128 0x35
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x3a
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
	.uleb128 0x3b
	.uleb128 0xa
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.uleb128 0x3f
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
	.uleb128 0x40
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
	.uleb128 0x41
	.uleb128 0x21
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x81
	.value	0x2
	.long	.Ldebug_info0
	.long	0x160a
	.long	0xf65
	.string	"cpu_loop_exit"
	.long	0xf80
	.string	"cpu_resume_from_signal"
	.long	0xfba
	.string	"cpu_x86_exec"
	.long	0x14c9
	.string	"tb_invalidate_page_range"
	.long	0x15db
	.string	"tb_invalidated_flag"
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
	.quad	.LBB19-.Ltext0
	.quad	.LBE19-.Ltext0
	.quad	.LBB51-.Ltext0
	.quad	.LBE51-.Ltext0
	.quad	.LBB32-.Ltext0
	.quad	.LBE32-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB21-.Ltext0
	.quad	.LBE21-.Ltext0
	.quad	.LBB25-.Ltext0
	.quad	.LBE25-.Ltext0
	.quad	.LBB23-.Ltext0
	.quad	.LBE23-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB34-.Ltext0
	.quad	.LBE34-.Ltext0
	.quad	.LBB53-.Ltext0
	.quad	.LBE53-.Ltext0
	.quad	.LBB39-.Ltext0
	.quad	.LBE39-.Ltext0
	.quad	.LBB35-.Ltext0
	.quad	.LBE35-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB42-.Ltext0
	.quad	.LBE42-.Ltext0
	.quad	.LBB46-.Ltext0
	.quad	.LBE46-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB43-.Ltext0
	.quad	.LBE43-.Ltext0
	.quad	.LBB49-.Ltext0
	.quad	.LBE49-.Ltext0
	.quad	0x0
	.quad	0x0
	.section	.debug_str,"MS",@progbits,1
.LASF99:
	.string	"fp_status"
.LASF77:
	.string	"vaddr"
.LASF153:
	.string	"cpuid_ext3_features"
.LASF111:
	.string	"vm_hsave"
.LASF222:
	.string	"tb_phys_hash"
.LASF59:
	.string	"loadedby_eip"
.LASF73:
	.string	"store_addr"
.LASF201:
	.string	"tb_add_jump"
.LASF158:
	.string	"cs_base"
.LASF203:
	.string	"tb_find_slow"
.LASF216:
	.string	"loglevel"
.LASF35:
	.string	"CPU86_LDouble"
.LASF155:
	.string	"envmap"
.LASF40:
	.string	"flags"
.LASF176:
	.string	"mmu_idx"
.LASF87:
	.string	"cc_dst"
.LASF127:
	.string	"old_exception"
.LASF4:
	.string	"unsigned int"
.LASF193:
	.string	"reg_AREG3"
.LASF105:
	.string	"mmx_t0"
.LASF14:
	.string	"__mask_was_saved"
.LASF49:
	.string	"netidx"
.LASF185:
	.string	"reg_AREG0"
.LASF126:
	.string	"user_mode_only"
.LASF211:
	.string	"found"
.LASF102:
	.string	"mxcsr"
.LASF112:
	.string	"vm_vmcb"
.LASF206:
	.string	"phys_pc"
.LASF39:
	.string	"limit"
.LASF214:
	.string	"tb_invalidate_page_range"
.LASF101:
	.string	"sse_status"
.LASF69:
	.string	"load_addr_type"
.LASF169:
	.string	"APICState"
.LASF134:
	.string	"nb_breakpoints"
.LASF68:
	.string	"load_addr"
.LASF217:
	.string	"argos_memmap"
.LASF79:
	.string	"regs"
.LASF82:
	.string	"t1tag"
.LASF118:
	.string	"intercept_exceptions"
.LASF212:
	.string	"svm_check_intercept"
.LASF171:
	.string	"CCTable"
.LASF64:
	.string	"logged"
.LASF5:
	.string	"signed char"
.LASF65:
	.string	"instruction_netidx"
.LASF178:
	.string	"get_phys_addr_code"
.LASF141:
	.string	"opaque"
.LASF11:
	.string	"__sigset_t"
.LASF74:
	.string	"store_addr_type"
.LASF225:
	.string	"tb_invalidated_flag"
.LASF25:
	.string	"float"
.LASF34:
	.string	"floatx80_rounding_precision"
.LASF38:
	.string	"base"
.LASF18:
	.string	"target_phys_addr_t"
.LASF75:
	.string	"store_size"
.LASF50:
	.string	"argos_rtag_t"
.LASF174:
	.string	"long long unsigned int"
.LASF146:
	.string	"cpuid_vendor3"
.LASF182:
	.string	"env1"
.LASF117:
	.string	"intercept_dr_write"
.LASF184:
	.string	"cpu_x86_exec"
.LASF10:
	.string	"__jmp_buf"
.LASF160:
	.string	"cflags"
.LASF210:
	.string	"not_found"
.LASF177:
	.string	"index"
.LASF224:
	.string	"tb_lock"
.LASF110:
	.string	"star"
.LASF156:
	.string	"apic_state"
.LASF131:
	.string	"tlb_table"
.LASF45:
	.string	"argos_bytemap_t"
.LASF123:
	.string	"exception_next_eip"
.LASF104:
	.string	"xmm_t0"
.LASF122:
	.string	"exception_is_int"
.LASF143:
	.string	"cpuid_level"
.LASF129:
	.string	"mem_write_pc"
.LASF209:
	.string	"virt_page2"
.LASF48:
	.string	"origin"
.LASF94:
	.string	"fpstt"
.LASF103:
	.string	"xmm_regs"
.LASF219:
	.string	"cpu_single_env"
.LASF196:
	.string	"gen_func"
.LASF30:
	.string	"floatx80"
.LASF13:
	.string	"__jmpbuf"
.LASF227:
	.string	"GNU C 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
.LASF128:
	.string	"current_tb"
.LASF72:
	.string	"store_value_netidx"
.LASF202:
	.string	"tb_set_jmp_target"
.LASF17:
	.string	"target_ulong"
.LASF163:
	.string	"page_next"
.LASF145:
	.string	"cpuid_vendor2"
.LASF107:
	.string	"sysenter_esp"
.LASF215:
	.string	"start"
.LASF27:
	.string	"char"
.LASF28:
	.string	"float32"
.LASF109:
	.string	"efer"
.LASF162:
	.string	"phys_hash_next"
.LASF139:
	.string	"next_cpu"
.LASF205:
	.string	"code_gen_size"
.LASF8:
	.string	"host_reg_t"
.LASF187:
	.string	"reg_AREG1"
.LASF32:
	.string	"float_status"
.LASF183:
	.string	"cpu_resume_from_signal"
.LASF116:
	.string	"intercept_dr_read"
.LASF97:
	.string	"fptags"
.LASF24:
	.string	"addend"
.LASF200:
	.string	"tb_jmp_cache_hash_func"
.LASF150:
	.string	"cpuid_xlevel"
.LASF154:
	.string	"cpuid_apic_id"
.LASF61:
	.string	"executed_eip"
.LASF136:
	.string	"watchpoint"
.LASF186:
	.string	"saved_AREG0"
.LASF191:
	.string	"saved_AREG2"
.LASF194:
	.string	"saved_AREG3"
.LASF21:
	.string	"addr_read"
.LASF192:
	.string	"saved_AREGTAG2"
.LASF218:
	.string	"argos_clean_tag"
.LASF89:
	.string	"hflags"
.LASF223:
	.string	"code_gen_ptr"
.LASF228:
	.string	"/home/remco/Projects/Argos/src/cpu-exec.c"
.LASF144:
	.string	"cpuid_vendor1"
.LASF58:
	.string	"is_system_call"
.LASF91:
	.string	"a20_mask"
.LASF20:
	.string	"CPUTLBEntry"
.LASF159:
	.string	"size"
.LASF57:
	.string	"trace_stage"
.LASF36:
	.string	"SegmentCache"
.LASF230:
	.string	"cpu_loop_exit"
.LASF81:
	.string	"t0tag"
.LASF37:
	.string	"selector"
.LASF66:
	.string	"load_value"
.LASF138:
	.string	"watchpoint_hit"
.LASF198:
	.string	"cpu_halted"
.LASF125:
	.string	"interrupt_request"
.LASF96:
	.string	"fpuc"
.LASF181:
	.string	"physaddr"
.LASF31:
	.string	"long double"
.LASF151:
	.string	"cpuid_model"
.LASF95:
	.string	"fpus"
.LASF130:
	.string	"mem_write_vaddr"
.LASF42:
	.string	"MMXReg"
.LASF54:
	.string	"logfile"
.LASF199:
	.string	"tb_find_fast"
.LASF88:
	.string	"cc_op"
.LASF164:
	.string	"page_addr"
.LASF106:
	.string	"sysenter_cs"
.LASF29:
	.string	"float64"
.LASF180:
	.string	"ldub_code"
.LASF56:
	.string	"instruction_stage"
.LASF188:
	.string	"saved_AREG1"
.LASF208:
	.string	"phys_page2"
.LASF204:
	.string	"ptb1"
.LASF6:
	.string	"short int"
.LASF62:
	.string	"instruction"
.LASF53:
	.string	"stop_condition"
.LASF41:
	.string	"XMMReg"
.LASF179:
	.string	"cpu_mmu_index"
.LASF0:
	.string	"long int"
.LASF78:
	.string	"CPUX86State"
.LASF84:
	.string	"regtags"
.LASF33:
	.string	"float_rounding_mode"
.LASF23:
	.string	"addr_code"
.LASF221:
	.string	"phys_ram_dirty"
.LASF47:
	.string	"argos_rtag"
.LASF80:
	.string	"eflags"
.LASF172:
	.string	"compute_all"
.LASF119:
	.string	"jmp_env"
.LASF170:
	.string	"spinlock_t"
.LASF90:
	.string	"segs"
.LASF83:
	.string	"t2tag"
.LASF108:
	.string	"sysenter_eip"
.LASF157:
	.string	"TranslationBlock"
.LASF175:
	.string	"addr"
.LASF190:
	.string	"reg_AREG2"
.LASF15:
	.string	"__saved_mask"
.LASF67:
	.string	"load_value_netidx"
.LASF226:
	.string	"cc_table"
.LASF135:
	.string	"singlestep_enabled"
.LASF113:
	.string	"intercept"
.LASF1:
	.string	"long unsigned int"
.LASF55:
	.string	"instruction_cnt"
.LASF124:
	.string	"smbase"
.LASF152:
	.string	"cpuid_ext2_features"
.LASF142:
	.string	"cpu_model_str"
.LASF85:
	.string	"shellcode_context"
.LASF7:
	.string	"int32_t"
.LASF133:
	.string	"breakpoints"
.LASF197:
	.string	"intno"
.LASF213:
	.string	"type"
.LASF2:
	.string	"unsigned char"
.LASF92:
	.string	"fpip"
.LASF100:
	.string	"fp_convert"
.LASF137:
	.string	"nb_watchpoints"
.LASF189:
	.string	"saved_AREGTAG1"
.LASF195:
	.string	"saved_AREGTAG3"
.LASF173:
	.string	"compute_c"
.LASF71:
	.string	"store_value"
.LASF51:
	.string	"argos_shellcode_context_s"
.LASF76:
	.string	"argos_shellcode_context_t"
.LASF121:
	.string	"error_code"
.LASF161:
	.string	"tc_ptr"
.LASF148:
	.string	"cpuid_features"
.LASF166:
	.string	"tb_next"
.LASF44:
	.string	"argos_netidx_t"
.LASF43:
	.string	"argos_paddr_t"
.LASF149:
	.string	"cpuid_ext_features"
.LASF16:
	.string	"jmp_buf"
.LASF229:
	.string	"/home/remco/Projects/Argos/src/i386-softmmu"
.LASF114:
	.string	"intercept_cr_read"
.LASF98:
	.string	"fpregs"
.LASF3:
	.string	"short unsigned int"
.LASF165:
	.string	"tb_next_offset"
.LASF168:
	.string	"jmp_first"
.LASF12:
	.string	"__val"
.LASF120:
	.string	"exception_index"
.LASF86:
	.string	"cc_src"
.LASF60:
	.string	"storedby_eip"
.LASF167:
	.string	"jmp_next"
.LASF26:
	.string	"double"
.LASF52:
	.string	"running"
.LASF70:
	.string	"load_size"
.LASF22:
	.string	"addr_write"
.LASF46:
	.string	"argos_memmap_t"
.LASF220:
	.string	"phys_ram_base"
.LASF9:
	.string	"FILE"
.LASF93:
	.string	"prev_fpip"
.LASF140:
	.string	"cpu_index"
.LASF63:
	.string	"instruction_size"
.LASF19:
	.string	"__jmp_buf_tag"
.LASF115:
	.string	"intercept_cr_write"
.LASF147:
	.string	"cpuid_version"
.LASF132:
	.string	"tb_jmp_cache"
.LASF207:
	.string	"phys_page1"
	.section	.note.GNU-stack,"",@progbits
	.ident	"GCC: (GNU) 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
