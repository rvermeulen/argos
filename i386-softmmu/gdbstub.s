	.file	"gdbstub.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.p2align 4,,15
.globl use_gdb_syscalls
	.type	use_gdb_syscalls, @function
use_gdb_syscalls:
.LFB187:
	.file 1 "/home/remco/Projects/Argos/src/gdbstub.c"
	.loc 1 116 0
	.loc 1 117 0
	movl	gdb_syscall_mode(%rip), %eax
	testl	%eax, %eax
	jne	.L2
	.loc 1 118 0
	cmpq	$1, gdb_syscall_state(%rip)
	sbbl	%eax, %eax
	notl	%eax
	addl	$2, %eax
	movl	%eax, gdb_syscall_mode(%rip)
.L2:
	.loc 1 121 0
	decl	%eax
	sete	%al
	movzbl	%al, %eax
	.loc 1 122 0
	ret
.LFE187:
	.size	use_gdb_syscalls, .-use_gdb_syscalls
	.p2align 4,,15
	.type	put_buffer, @function
put_buffer:
.LFB188:
	.loc 1 125 0
	.loc 1 140 0
	movq	8224(%rdi), %rdi
	jmp	qemu_chr_write
.LFE188:
	.size	put_buffer, .-put_buffer
	.p2align 4,,15
	.type	memtohex, @function
memtohex:
.LFB191:
	.loc 1 165 0
	.loc 1 169 0
	xorl	%r10d, %r10d
	.loc 1 165 0
	movl	%edx, %r11d
	.loc 1 168 0
	movq	%rdi, %r8
	.loc 1 169 0
	cmpl	%edx, %r10d
	jge	.L19
	movq	%rsi, %r9
	.p2align 4,,7
.L17:
	.loc 1 170 0
	movzbl	(%r9), %ecx
.LBB2:
	.loc 1 157 0
	movq	%r8, %rdi
	incq	%r8
	movl	%ecx, %edx
	sarl	$4, %edx
.LBB3:
	.loc 1 158 0
	leal	87(%rdx), %esi
	leal	48(%rdx), %eax
	cmpl	$9, %edx
	cmovg	%esi, %eax
.LBE3:
.LBE2:
.LBB4:
	.loc 1 157 0
	andl	$15, %ecx
	movq	%r8, %rsi
.LBE4:
	movb	%al, (%rdi)
.LBB5:
.LBB6:
	.loc 1 158 0
	leal	87(%rcx), %edx
	leal	48(%rcx), %eax
.LBE6:
	.loc 1 157 0
	incq	%r8
.LBB7:
	.loc 1 158 0
	cmpl	$9, %ecx
	cmovg	%edx, %eax
.LBE7:
.LBE5:
	.loc 1 169 0
	incl	%r10d
	incq	%r9
	cmpl	%r11d, %r10d
	.loc 1 157 0
	movb	%al, (%rsi)
	.loc 1 169 0
	jl	.L17
.L19:
	.loc 1 174 0
	movb	$0, (%r8)
	ret
.LFE191:
	.size	memtohex, .-memtohex
	.p2align 4,,15
	.type	hextomem, @function
hextomem:
.LFB192:
	.loc 1 178 0
	.loc 1 178 0
	movl	%edx, %r10d
	.loc 1 181 0
	xorl	%r9d, %r9d
	jmp	.L41
	.p2align 4,,7
.L42:
.LBB8:
	.loc 1 145 0
	movsbl	(%rsi),%edx
.LBB9:
	.loc 1 146 0
	leal	-48(%rdx), %eax
	cmpl	$9, %eax
	movl	%eax, %ecx
	jbe	.L25
	.loc 1 148 0
	leal	-65(%rdx), %eax
	leal	-55(%rdx), %ecx
	cmpl	$5, %eax
	jbe	.L25
	.loc 1 150 0
	leal	-97(%rdx), %eax
	xorl	%ecx, %ecx
	subl	$87, %edx
	cmpl	$5, %eax
	cmovbe	%edx, %ecx
	.p2align 4,,7
.L25:
.LBE9:
.LBE8:
.LBB10:
	.loc 1 145 0
	movsbl	1(%rsi),%edx
.LBE10:
	movl	%ecx, %r8d
	sall	$4, %r8d
.LBB11:
.LBB12:
	.loc 1 146 0
	leal	-48(%rdx), %eax
	cmpl	$9, %eax
	movl	%eax, %ecx
	jbe	.L32
	.loc 1 148 0
	leal	-65(%rdx), %eax
	leal	-55(%rdx), %ecx
	cmpl	$5, %eax
	jbe	.L32
	.loc 1 150 0
	leal	-97(%rdx), %eax
	xorl	%ecx, %ecx
	subl	$87, %edx
	cmpl	$5, %eax
	cmovbe	%edx, %ecx
	.p2align 4,,7
.L32:
.LBE12:
.LBE11:
	.loc 1 145 0
	movl	%r8d, %eax
	.loc 1 183 0
	addq	$2, %rsi
	.loc 1 181 0
	incl	%r9d
	.loc 1 145 0
	orl	%ecx, %eax
	movb	%al, (%rdi)
	incq	%rdi
.L41:
	.loc 1 181 0
	cmpl	%r10d, %r9d
	jl	.L42
	rep ; ret
.LFE192:
	.size	hextomem, .-hextomem
	.p2align 4,,15
	.type	put_packet, @function
put_packet:
.LFB193:
	.loc 1 189 0
	movq	%r13, -24(%rsp)
.LCFI0:
	movq	%r14, -16(%rsp)
.LCFI1:
	movq	%rsi, %r13
	movq	%rbx, -48(%rsp)
.LCFI2:
	movq	%rbp, -40(%rsp)
.LCFI3:
	movq	%rdi, %r14
	movq	%r12, -32(%rsp)
.LCFI4:
	movq	%r15, -8(%rsp)
.LCFI5:
	subq	$56, %rsp
.LCFI6:
	.loc 1 198 0
	leaq	4116(%rdi), %r15
	.loc 1 199 0
	leaq	4117(%rdi), %r12
	movb	$36, 4116(%rdi)
	.loc 1 200 0
	movq	%rsi, %rdi
	call	strlen
	.loc 1 201 0
	movslq	%eax,%rbx
	movq	%r12, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	.loc 1 200 0
	movl	%eax, %ebp
	.loc 1 202 0
	addq	%rbx, %r12
	.loc 1 201 0
	call	memcpy
	.loc 1 203 0
	xorl	%edi, %edi
	.loc 1 204 0
	xorl	%edx, %edx
	cmpl	%ebp, %edi
	jge	.L57
	movq	%r13, %rsi
	.p2align 4,,7
.L49:
	.loc 1 205 0
	movsbl	(%rsi),%eax
	.loc 1 204 0
	incl	%edx
	incq	%rsi
	.loc 1 205 0
	addl	%eax, %edi
	.loc 1 204 0
	cmpl	%ebp, %edx
	jl	.L49
.L57:
.LBB13:
	.loc 1 157 0
	movl	%edi, %eax
.LBE13:
	.loc 1 207 0
	movb	$35, (%r12)
	incq	%r12
.LBB14:
	.loc 1 157 0
	sarl	$4, %eax
	movq	%r12, %rsi
	incq	%r12
	andl	$15, %eax
.LBB15:
	.loc 1 158 0
	leal	87(%rax), %ecx
	leal	48(%rax), %edx
	cmpl	$9, %eax
	cmovg	%ecx, %edx
.LBE15:
.LBE14:
	.loc 1 157 0
	movb	%dl, (%rsi)
.LBB16:
	movl	%edi, %edx
	movq	%r12, %rsi
	andl	$15, %edx
	incq	%r12
.LBE16:
	.loc 1 212 0
	movq	%r14, %rdi
.LBB17:
.LBB18:
	.loc 1 158 0
	leal	87(%rdx), %ecx
	leal	48(%rdx), %eax
	cmpl	$9, %edx
.LBE18:
.LBE17:
	.loc 1 211 0
	movl	%r12d, %edx
.LBB19:
.LBB20:
	.loc 1 158 0
	cmovg	%ecx, %eax
.LBE20:
.LBE19:
	.loc 1 211 0
	subl	%r14d, %edx
	subl	$4116, %edx
	.loc 1 157 0
	movb	%al, (%rsi)
	.loc 1 212 0
	movq	%r15, %rsi
	.loc 1 211 0
	movl	%edx, 8216(%r14)
	.loc 1 212 0
	call	put_buffer
	.loc 1 225 0
	xorl	%eax, %eax
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	movq	24(%rsp), %r12
	movq	32(%rsp), %r13
	movq	40(%rsp), %r14
	movq	48(%rsp), %r15
	addq	$56, %rsp
	ret
.LFE193:
	.size	put_packet, .-put_packet
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"S%02x"
.LC0:
	.string	"T%02xwatch:%08x;"
	.text
	.p2align 4,,15
	.type	gdb_vm_stopped, @function
gdb_vm_stopped:
.LFB197:
	.loc 1 1082 0
	movq	%rbx, -16(%rsp)
.LCFI7:
	movq	%rbp, -8(%rsp)
.LCFI8:
	subq	$280, %rsp
.LCFI9:
	.loc 1 1087 0
	cmpl	$4, 8(%rdi)
	.loc 1 1082 0
	movq	%rdi, %rbp
	movl	%esi, %ebx
	.loc 1 1087 0
	je	.L58
	.loc 1 1091 0
	movq	(%rdi), %rdi
	xorl	%esi, %esi
	call	cpu_single_step
	.loc 1 1093 0
	cmpl	$65538, %ebx
	je	.L65
	.loc 1 1105 0
	xorl	%ecx, %ecx
	cmpl	$65536, %ebx
	sete	%cl
	addl	%ecx, %ecx
.L62:
	.loc 1 1109 0
	movl	$256, %esi
	movq	%rsp, %rdi
	movl	$.LC1, %edx
	xorl	%eax, %eax
	call	snprintf
	.loc 1 1110 0
	movq	%rsp, %rsi
	movq	%rbp, %rdi
	call	put_packet
.L58:
	.loc 1 1111 0
	movq	264(%rsp), %rbx
	movq	272(%rsp), %rbp
	addq	$280, %rsp
	ret
	.p2align 4,,7
.L65:
	.loc 1 1094 0
	movq	(%rbp), %rdi
	movl	46980(%rdi), %eax
	testl	%eax, %eax
	je	.L61
	.loc 1 1095 0
	cltq
	movl	$5, %ecx
	movl	$.LC0, %edx
	salq	$4, %rax
	movl	$256, %esi
	movl	46448(%rax,%rdi), %r8d
	movq	%rsp, %rdi
	xorl	%eax, %eax
	call	snprintf
	.loc 1 1098 0
	movq	%rsp, %rsi
	movq	%rbp, %rdi
	call	put_packet
	.loc 1 1099 0
	movq	(%rbp), %rax
	movl	$0, 46980(%rax)
	jmp	.L58
.L61:
	.loc 1 1102 0
	call	tb_flush
	.loc 1 1103 0
	movl	$5, %ecx
	jmp	.L62
.LFE197:
	.size	gdb_vm_stopped, .-gdb_vm_stopped
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC5:
	.string	"gdbstub: Bad syscall format string '%s'\n"
	.section	.rodata.str1.1
.LC2:
	.string	"%08x"
.LC4:
	.string	"%08x/%x"
.LC3:
	.string	"%lx"
	.text
	.p2align 4,,15
.globl gdb_do_syscall
	.type	gdb_do_syscall, @function
gdb_do_syscall:
.LFB198:
	.loc 1 1120 0
	pushq	%r13
.LCFI10:
	pushq	%r12
.LCFI11:
	pushq	%rbp
.LCFI12:
	pushq	%rbx
.LCFI13:
	movq	%rsi, %rbx
	subq	$472, %rsp
.LCFI14:
	.loc 1 1120 0
	movq	%rdx, 304(%rsp)
	movzbl	%al, %edx 
	movq	%rcx, 312(%rsp)
	leaq	0(,%rdx,4), %rax
	movl	$.L67, %edx
	movq	%r8, 320(%rsp)
	movq	%r9, 328(%rsp)
	subq	%rax, %rdx
	leaq	463(%rsp), %rax
	jmp	*%rdx
	movaps	%xmm7, -15(%rax)
	movaps	%xmm6, -31(%rax)
	movaps	%xmm5, -47(%rax)
	movaps	%xmm4, -63(%rax)
	movaps	%xmm3, -79(%rax)
	movaps	%xmm2, -95(%rax)
	movaps	%xmm1, -111(%rax)
	movaps	%xmm0, -127(%rax)
.L67:
	.loc 1 1128 0
	movq	gdb_syscall_state(%rip), %r12
	.loc 1 1129 0
	testq	%r12, %r12
	je	.L66
	.loc 1 1131 0
	movq	%rdi, gdb_current_syscall_cb(%rip)
	.loc 1 1132 0
	movl	$4, 8(%r12)
	.loc 1 1134 0
	movl	$65538, %edi
	call	vm_stop
	.loc 1 1137 0
	leaq	512(%rsp), %rax
	.loc 1 1136 0
	movl	$0, 8(%r12)
	.loc 1 1139 0
	leaq	1(%rsp), %rbp
	.loc 1 1137 0
	movl	$16, 256(%rsp)
	movl	$48, 260(%rsp)
	.loc 1 1138 0
	movq	%rsp, %r13
	.loc 1 1137 0
	movq	%rax, 264(%rsp)
	leaq	288(%rsp), %rax
	.loc 1 1139 0
	movb	$70, (%rsp)
	.loc 1 1137 0
	movq	%rax, 272(%rsp)
.L96:
	.loc 1 1165 0
	movzbl	(%rbx), %eax
	testb	%al, %al
	je	.L93
.L98:
	.loc 1 1141 0
	cmpb	$37, %al
	je	.L97
	.loc 1 1165 0
	movb	%al, (%rbp)
	incq	%rbx
	incq	%rbp
	movzbl	(%rbx), %eax
	testb	%al, %al
	jne	.L98
.L93:
	.loc 1 1170 0
	movq	%r13, %rsi
	movq	%r12, %rdi
	.loc 1 1168 0
	movb	$0, (%rbp)
	.loc 1 1170 0
	call	put_packet
	.loc 1 1174 0
	movq	(%r12), %rdi
	movl	$1, %esi
	call	cpu_interrupt
.L66:
	.loc 1 1176 0
	addq	$472, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	.p2align 4,,7
.L97:
	.loc 1 1142 0
	incq	%rbx
	.loc 1 1143 0
	movsbl	(%rbx),%eax
	incq	%rbx
	cmpl	$115, %eax
	je	.L81
	jg	.L89
	cmpl	$108, %eax
	je	.L76
.L78:
	.loc 1 1160 0
	movq	stderr(%rip), %rdi
	leaq	-1(%rbx), %rdx
	movl	$.LC5, %esi
	xorl	%eax, %eax
	call	fprintf
	jmp	.L96
	.p2align 4,,7
.L89:
	.loc 1 1143 0
	cmpl	$120, %eax
	jne	.L78
	.loc 1 1145 0
	movl	256(%rsp), %eax
	cmpl	$48, %eax
	jae	.L75
	mov	%eax, %edx
	addq	272(%rsp), %rdx
	addl	$8, %eax
	movl	%eax, 256(%rsp)
.L74:
	movl	(%rdx), %edx
	.loc 1 1146 0
	movq	%rbp, %rdi
	movl	$.LC2, %esi
	xorl	%eax, %eax
	call	sprintf
	.loc 1 1156 0
	cltq
	addq	%rax, %rbp
	jmp	.L96
.L81:
	.loc 1 1155 0
	movl	256(%rsp), %esi
	cmpl	$48, %esi
	jb	.L99
	movq	264(%rsp), %rdx
	.loc 1 1156 0
	cmpl	$48, %esi
	.loc 1 1155 0
	leaq	8(%rdx), %rax
	movq	%rax, 264(%rsp)
	movl	(%rdx), %edx
	.loc 1 1156 0
	jae	.L87
.L100:
	mov	%esi, %ecx
	addq	272(%rsp), %rcx
	leal	8(%rsi), %eax
	movl	%eax, 256(%rsp)
.L86:
	movl	(%rcx), %ecx
	movq	%rbp, %rdi
	movl	$.LC4, %esi
	xorl	%eax, %eax
	call	sprintf
	cltq
	addq	%rax, %rbp
	jmp	.L96
.L99:
	.loc 1 1155 0
	mov	%esi, %edx
	leal	8(%rsi), %eax
	addq	272(%rsp), %rdx
	movl	%eax, %esi
	movl	%eax, 256(%rsp)
	.loc 1 1156 0
	cmpl	$48, %esi
	.loc 1 1155 0
	movl	(%rdx), %edx
	.loc 1 1156 0
	jb	.L100
.L87:
	movq	264(%rsp), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, 264(%rsp)
	jmp	.L86
.L76:
	.loc 1 1149 0
	movzbl	(%rbx), %eax
	incq	%rbx
	cmpb	$120, %al
	jne	.L78
	.loc 1 1151 0
	movl	256(%rsp), %eax
	cmpl	$48, %eax
	jb	.L101
	movq	264(%rsp), %rdx
	leaq	8(%rdx), %rax
	movq	%rax, 264(%rsp)
.L79:
	movq	(%rdx), %rdx
	.loc 1 1152 0
	movq	%rbp, %rdi
	movl	$.LC3, %esi
	xorl	%eax, %eax
	call	sprintf
	.loc 1 1156 0
	cltq
	addq	%rax, %rbp
	jmp	.L96
.L75:
	.loc 1 1145 0
	movq	264(%rsp), %rdx
	leaq	8(%rdx), %rax
	movq	%rax, 264(%rsp)
	jmp	.L74
.L101:
	.loc 1 1151 0
	mov	%eax, %edx
	addq	272(%rsp), %rdx
	addl	$8, %eax
	movl	%eax, 256(%rsp)
	jmp	.L79
.LFE198:
	.size	gdb_do_syscall, .-gdb_do_syscall
	.p2align 4,,15
	.type	gdb_chr_can_receive, @function
gdb_chr_can_receive:
.LFB200:
	.loc 1 1390 0
	.loc 1 1392 0
	movl	$1, %eax
	ret
.LFE200:
	.size	gdb_chr_can_receive, .-gdb_chr_can_receive
	.section	.rodata.str1.1
.LC9:
	.string	"E22"
.LC7:
	.string	"OK"
.LC6:
	.string	"T02"
.LC8:
	.string	"E14"
	.text
	.p2align 4,,15
	.type	gdb_chr_receive, @function
gdb_chr_receive:
.LFB201:
	.loc 1 1395 0
	pushq	%r15
.LCFI15:
	movq	%rsi, %r15
	pushq	%r14
.LCFI16:
	movl	%edx, %r14d
	pushq	%r13
.LCFI17:
	.loc 1 1399 0
	xorl	%r13d, %r13d
	.loc 1 1395 0
	pushq	%r12
.LCFI18:
	pushq	%rbp
.LCFI19:
	movq	%rdi, %rbp
	pushq	%rbx
.LCFI20:
	subq	$8264, %rsp
.LCFI21:
	.loc 1 1399 0
	cmpl	%r14d, %r13d
	jge	.L218
	.p2align 4,,7
.L243:
.LBB21:
.LBB22:
	.loc 1 1185 0
	movl	8216(%rbp), %edx
.LBE22:
	.loc 1 1179 0
	movslq	%r13d,%rax
.LBB23:
	.loc 1 1180 0
	movq	(%rbp), %r12
.LBE23:
	.loc 1 1179 0
	movzbl	(%rax,%r15), %ebx
.LBB24:
	.loc 1 1185 0
	testl	%edx, %edx
	je	.L107
	.loc 1 1188 0
	cmpl	$45, %ebx
	je	.L242
.L108:
	.loc 1 1200 0
	cmpl	$43, %ebx
	sete	%dl
	cmpl	$36, %ebx
	sete	%al
	orl	%edx, %eax
	testb	$1, %al
	je	.L109
	.loc 1 1201 0
	movl	$0, 8216(%rbp)
.L109:
	.loc 1 1202 0
	cmpl	$36, %ebx
	je	.L107
.L106:
.LBE24:
.LBE21:
	.loc 1 1399 0
	incl	%r13d
.L248:
	cmpl	%r14d, %r13d
	jl	.L243
.L218:
	addq	$8264, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.p2align 4,,7
.L107:
.LBB25:
.LBB26:
	.loc 1 1205 0
	movl	vm_running(%rip), %ecx
	testl	%ecx, %ecx
	jne	.L244
	.loc 1 1212 0
	movl	8(%rbp), %eax
	cmpl	$1, %eax
	je	.L117
	jb	.L115
	cmpl	$2, %eax
	.p2align 4,,5
	je	.L122
	cmpl	$3, %eax
	.p2align 4,,7
	jne	.L245
.LBB27:
.LBB28:
	.loc 1 146 0
	leal	-48(%rbx), %eax
	cmpl	$9, %eax
	.p2align 4,,3
	ja	.L246
.L132:
.LBE28:
.LBE27:
	.loc 1 145 0
	movl	4112(%rbp), %edx
	.loc 1 1236 0
	movl	4108(%rbp), %edi
	.loc 1 1235 0
	xorl	%esi, %esi
	.loc 1 1236 0
	xorl	%ecx, %ecx
	.loc 1 145 0
	orl	%eax, %edx
	.loc 1 1236 0
	cmpl	$0, %edi
	.loc 1 145 0
	movl	%edx, 4112(%rbp)
	jmp	.L232
	.p2align 4,,7
.L247:
	.loc 1 1237 0
	movslq	%ecx,%rax
	.loc 1 1236 0
	incl	%ecx
	.loc 1 1237 0
	movsbl	12(%rbp,%rax),%eax
	addl	%eax, %esi
	.loc 1 1236 0
	cmpl	%ecx, %edi
.L232:
	jg	.L247
	.loc 1 1239 0
	movzbl	%sil,%eax
	cmpl	%eax, %edx
	je	.L142
	.loc 1 1241 0
	leaq	63(%rsp), %rsi
	movl	$1, %edx
	movq	%rbp, %rdi
	.loc 1 1240 0
	movb	$45, 63(%rsp)
	.loc 1 1241 0
	call	put_buffer
.L148:
	.loc 1 872 0
	movl	$0, 8(%rbp)
.L250:
.LBE26:
.LBE25:
	.loc 1 1399 0
	incl	%r13d
	jmp	.L248
	.p2align 4,,7
.L115:
.LBB29:
.LBB30:
	.loc 1 1214 0
	cmpl	$36, %ebx
	jne	.L106
.LBE30:
.LBE29:
	.loc 1 1399 0
	incl	%r13d
.LBB31:
.LBB32:
	.loc 1 1215 0
	movl	$0, 4108(%rbp)
	.loc 1 1216 0
	movl	$1, 8(%rbp)
	jmp	.L248
.L246:
.LBB33:
.LBB34:
	.loc 1 148 0
	leal	-65(%rbx), %eax
	cmpl	$5, %eax
	ja	.L134
	leal	-55(%rbx), %eax
	jmp	.L132
	.p2align 4,,7
.L244:
.LBE34:
.LBE33:
	.loc 1 1208 0
	movl	$65536, %edi
.LBE32:
.LBE31:
	.loc 1 1399 0
	incl	%r13d
.LBB35:
.LBB36:
	.loc 1 1208 0
	call	vm_stop
	.p2align 4,,2
	jmp	.L248
	.p2align 4,,7
.L117:
	.loc 1 1220 0
	cmpl	$35, %ebx
	.p2align 4,,2
	je	.L249
	.loc 1 1222 0
	movl	4108(%rbp), %edx
	cmpl	$4094, %edx
	.p2align 4,,2
	ja	.L148
	.loc 1 1225 0
	movslq	%edx,%rax
.LBE36:
.LBE35:
	.loc 1 1399 0
	incl	%r13d
.LBB37:
.LBB38:
	.loc 1 1225 0
	movb	%bl, 12(%rbp,%rax)
	leal	1(%rdx), %eax
	movl	%eax, 4108(%rbp)
	jmp	.L248
.L242:
	.loc 1 1192 0
	leaq	4116(%rbp), %rsi
	movq	%rbp, %rdi
	call	put_buffer
	jmp	.L108
.L122:
	.loc 1 1229 0
	movslq	4108(%rbp),%rax
	movb	$0, 12(%rbp,%rax)
.LBB39:
.LBB40:
	.loc 1 146 0
	leal	-48(%rbx), %eax
	cmpl	$9, %eax
	jbe	.L124
	.loc 1 148 0
	leal	-65(%rbx), %eax
	cmpl	$5, %eax
	ja	.L126
	leal	-55(%rbx), %eax
.L124:
.LBE40:
.LBE39:
	.loc 1 145 0
	sall	$4, %eax
.LBE38:
.LBE37:
	.loc 1 1399 0
	incl	%r13d
.LBB41:
.LBB42:
	.loc 1 1231 0
	movl	$3, 8(%rbp)
	.loc 1 145 0
	movl	%eax, 4112(%rbp)
	jmp	.L248
.L249:
.LBE42:
.LBE41:
	.loc 1 1399 0
	incl	%r13d
.LBB43:
.LBB44:
	.loc 1 1221 0
	movl	$2, 8(%rbp)
	jmp	.L248
.L134:
.LBB45:
.LBB46:
	.loc 1 150 0
	leal	-97(%rbx), %eax
	leal	-87(%rbx), %edx
	cmpl	$5, %eax
	movl	%ecx, %eax
	cmovbe	%edx, %eax
	jmp	.L132
.L142:
.LBE46:
.LBE45:
	.loc 1 1245 0
	leaq	63(%rsp), %rsi
	movl	$1, %edx
	movq	%rbp, %rdi
	.loc 1 1244 0
	movb	$43, 63(%rsp)
.LBB47:
.LBB48:
	.loc 1 884 0
	leaq	13(%rbp), %rbx
.LBE48:
.LBE47:
	.loc 1 1245 0
	call	put_buffer
.LBB49:
.LBB50:
	.loc 1 884 0
	movsbl	12(%rbp),%eax
	movq	%rbx, 48(%rsp)
	.loc 1 885 0
	subl	$63, %eax
	cmpl	$59, %eax
	ja	.L213
	mov	%eax, %eax
	jmp	*.L214(,%rax,8)
	.section	.rodata
	.align 8
	.align 4
.L214:
	.quad	.L145
	.quad	.L213
	.quad	.L213
	.quad	.L213
	.quad	.L213
	.quad	.L213
	.quad	.L213
	.quad	.L151
	.quad	.L178
	.quad	.L213
	.quad	.L213
	.quad	.L213
	.quad	.L213
	.quad	.L213
	.quad	.L191
	.quad	.L213
	.quad	.L213
	.quad	.L213
	.quad	.L213
	.quad	.L213
	.quad	.L213
	.quad	.L213
	.quad	.L213
	.quad	.L213
	.quad	.L213
	.quad	.L213
	.quad	.L213
	.quad	.L196
	.quad	.L213
	.quad	.L213
	.quad	.L213
	.quad	.L213
	.quad	.L213
	.quad	.L213
	.quad	.L213
	.quad	.L213
	.quad	.L146
	.quad	.L213
	.quad	.L213
	.quad	.L213
	.quad	.L158
	.quad	.L213
	.quad	.L213
	.quad	.L213
	.quad	.L213
	.quad	.L213
	.quad	.L187
	.quad	.L213
	.quad	.L213
	.quad	.L213
	.quad	.L213
	.quad	.L213
	.quad	.L149
	.quad	.L213
	.quad	.L213
	.quad	.L213
	.quad	.L213
	.quad	.L213
	.quad	.L213
	.quad	.L206
	.text
.L213:
	.loc 1 1072 0
	leaq	4160(%rsp), %rsi
	.loc 1 1071 0
	movb	$0, 4160(%rsp)
.L233:
	.loc 1 1072 0
	movq	%rbp, %rdi
	call	put_packet
.LBE50:
.LBE49:
	.loc 1 872 0
	movl	$0, 8(%rbp)
	jmp	.L250
.L126:
.LBB51:
.LBB52:
	.loc 1 150 0
	leal	-97(%rbx), %eax
	leal	-87(%rbx), %edx
	cmpl	$5, %eax
	movl	%ecx, %eax
	cmovbe	%edx, %eax
	jmp	.L124
.L206:
.LBE52:
.LBE51:
.LBB53:
.LBB54:
	.loc 1 1033 0
	leaq	48(%rsp), %rsi
	movq	%rbx, %rdi
	movl	$16, %edx
	call	strtoul
	.loc 1 1034 0
	movq	48(%rsp), %rdi
	.loc 1 1033 0
	movl	%eax, %ebx
	.loc 1 1034 0
	cmpb	$44, (%rdi)
	je	.L251
.L207:
	.loc 1 1036 0
	leaq	48(%rsp), %rsi
	movl	$16, %edx
	call	strtoull
	.loc 1 1037 0
	movq	48(%rsp), %rdi
	.loc 1 1036 0
	movq	%rax, 8(%rsp)
	.loc 1 1037 0
	cmpb	$44, (%rdi)
	je	.L252
.L208:
	.loc 1 1039 0
	leaq	48(%rsp), %rsi
	movl	$16, %edx
	call	strtoull
	.loc 1 1040 0
	cmpl	$1, %ebx
	jbe	.L253
	.loc 1 1044 0
	cmpl	$2, %ebx
	je	.L254
.L201:
	.loc 1 1029 0
	movl	$.LC9, %esi
	.p2align 4,,2
	jmp	.L233
.L149:
	.loc 1 918 0
	cmpb	$0, (%rbx)
	.p2align 4,,2
	jne	.L255
.L150:
	.loc 1 937 0
	movl	$1, %esi
	movq	%r12, %rdi
	call	cpu_single_step
.L156:
.LBB55:
	.loc 1 967 0
	call	vm_start
	jmp	.L148
.L187:
.LBE55:
	.loc 1 985 0
	leaq	48(%rsp), %rsi
	movq	%rbx, %rdi
	movl	$16, %edx
	call	strtoull
	.loc 1 986 0
	movq	48(%rsp), %rdi
	.loc 1 985 0
	movq	%rax, %rbx
	.loc 1 986 0
	cmpb	$44, (%rdi)
	je	.L256
.L188:
	.loc 1 988 0
	xorl	%esi, %esi
	movl	$16, %edx
	call	strtoull
	movq	%rax, 40(%rsp)
	.loc 1 989 0
	movl	40(%rsp), %ecx
	leaq	64(%rsp), %rdx
	xorl	%r8d, %r8d
	movl	%ebx, %esi
	movq	%r12, %rdi
	call	cpu_memory_rw_debug
	testl	%eax, %eax
	jne	.L235
	.loc 1 992 0
	movl	40(%rsp), %edx
	leaq	4160(%rsp), %rbx
	leaq	64(%rsp), %rsi
.L239:
	.loc 1 974 0
	movq	%rbx, %rdi
	call	memtohex
.L234:
	.loc 1 975 0
	movq	%rbx, %rsi
	jmp	.L233
.L158:
.LBB56:
	.loc 1 230 0
	leaq	64(%rsp), %rsi
.LBB57:
	.loc 1 282 0
	xorl	%ecx, %ecx
.L162:
	.loc 1 283 0
	movslq	%ecx,%rdx
	.loc 1 282 0
	incl	%ecx
	.loc 1 283 0
	movl	(%r12,%rdx,4), %eax
	.loc 1 282 0
	cmpl	$7, %ecx
	.loc 1 283 0
	movl	%eax, (%rsi,%rdx,4)
	.loc 1 282 0
	jle	.L162
	.loc 1 285 0
	movl	32(%r12), %eax
	movq	%r12, %rdi
	xorl	%r8d, %r8d
	movl	$7, %ecx
	movl	%eax, 32(%rsi)
	.loc 1 286 0
	movl	36(%r12), %eax
	movl	%eax, 36(%rsi)
	.loc 1 287 0
	movl	372(%r12), %eax
	movl	%eax, 40(%rsi)
	.loc 1 288 0
	movl	388(%r12), %eax
	movl	%eax, 44(%rsi)
	.loc 1 289 0
	movl	404(%r12), %eax
	movl	%eax, 48(%rsi)
	.loc 1 290 0
	movl	356(%r12), %eax
	movl	%eax, 52(%rsi)
	.loc 1 291 0
	movl	420(%r12), %eax
	movl	%eax, 56(%rsi)
	.loc 1 292 0
	movl	436(%r12), %eax
	movl	%eax, 60(%rsi)
.L166:
	.loc 1 295 0
	movq	576(%rdi), %rdx
	movslq	%r8d,%rax
	addl	$10, %r8d
	movq	%rdx, 64(%rax,%rsi)
	movzwl	584(%rdi), %edx
	addq	$16, %rdi
	decl	%ecx
	movw	%dx, 72(%rax,%rsi)
	jns	.L166
	.loc 1 297 0
	movl	556(%r12), %eax
	movl	$15, %ecx
	movl	%eax, 144(%rsi)
	.loc 1 298 0
	movl	548(%r12), %eax
	movl	552(%r12), %edx
	.loc 1 300 0
	movl	$0, 152(%rsi)
	.loc 1 301 0
	movl	$0, 156(%rsi)
	.loc 1 302 0
	movl	$0, 160(%rsi)
	.loc 1 298 0
	andl	$7, %eax
	.loc 1 303 0
	movl	$0, 164(%rsi)
	.loc 1 304 0
	movl	$0, 168(%rsi)
	.loc 1 298 0
	andb	$199, %dh
	sall	$11, %eax
	.loc 1 305 0
	movl	$0, 172(%rsi)
	.loc 1 298 0
	orl	%eax, %edx
	.loc 1 299 0
	movl	%edx, 148(%rsi)
.L171:
	decl	%ecx
	jns	.L171
	movl	$7, %ecx
.L176:
	decl	%ecx
	jns	.L176
.LBE57:
.LBE56:
	.loc 1 974 0
	leaq	4160(%rsp), %rbx
	movl	$176, %edx
	jmp	.L239
.L146:
	.loc 1 892 0
	cmpb	$0, (%rbx)
	je	.L156
	.loc 1 893 0
	leaq	48(%rsp), %rsi
	movl	$16, %edx
	movq	%rbx, %rdi
	call	strtoull
	.loc 1 895 0
	movl	%eax, 32(%r12)
.LBB58:
	.loc 1 967 0
	call	vm_start
	jmp	.L148
.L178:
.LBE58:
	.loc 1 979 0
	movq	%rbx, %rdi
	call	strlen
	.loc 1 980 0
	leaq	64(%rsp), %rdi
	.loc 1 979 0
	shrq	%rax
	.loc 1 980 0
	movq	%rbx, %rsi
	movl	%eax, %edx
	call	hextomem
.LBB59:
.LBB60:
	.loc 1 319 0
	xorl	%ecx, %ecx
.L183:
	.loc 1 320 0
	movslq	%ecx,%rdx
	.loc 1 319 0
	incl	%ecx
.LBB61:
	.file 2 "../cpu-all.h"
	.loc 2 86 0
	movl	64(%rsp,%rdx,4), %eax
.LBE61:
	.loc 1 319 0
	cmpl	$7, %ecx
	.loc 2 86 0
	movl	%eax, (%r12,%rdx,4)
	.loc 1 319 0
	jle	.L183
.LBB62:
	.loc 2 86 0
	movl	96(%rsp), %eax
.LBE62:
	movl	%eax, 32(%r12)
.LBB63:
	movl	100(%rsp), %eax
.LBE63:
	movl	%eax, 36(%r12)
.L238:
.LBE60:
.LBE59:
	.loc 1 1042 0
	movl	$.LC7, %esi
	jmp	.L233
.L151:
.LBB64:
	.loc 1 949 0
	leaq	48(%rsp), %rsi
	movl	$16, %edx
	movq	%rbx, %rdi
	call	strtoull
	.loc 1 950 0
	movq	48(%rsp), %rdi
	.loc 1 954 0
	xorl	%edx, %edx
	.loc 1 949 0
	movl	%eax, %r12d
	.loc 1 950 0
	cmpb	$44, (%rdi)
	je	.L257
.L153:
	.loc 1 956 0
	cmpb	$44, (%rdi)
	je	.L258
.L154:
	.loc 1 959 0
	movq	gdb_current_syscall_cb(%rip), %rax
	.loc 1 958 0
	movsbl	(%rdi),%ebx
	.loc 1 959 0
	testq	%rax, %rax
	jne	.L259
.L155:
	.loc 1 961 0
	cmpl	$67, %ebx
	.loc 1 962 0
	movl	$.LC6, %esi
	.loc 1 961 0
	je	.L233
	.loc 1 967 0
	call	vm_start
	jmp	.L148
.L145:
.LBE64:
	.loc 1 888 0
	leaq	4160(%rsp), %rbx
	movl	$5, %ecx
	movl	$.LC1, %edx
	movl	$4096, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	call	snprintf
	jmp	.L234
.L196:
	.loc 1 1010 0
	leaq	48(%rsp), %rsi
	movq	%rbx, %rdi
	movl	$16, %edx
	call	strtoul
	.loc 1 1011 0
	movq	48(%rsp), %rdi
	.loc 1 1010 0
	movl	%eax, %ebx
	.loc 1 1011 0
	cmpb	$44, (%rdi)
	je	.L260
.L197:
	.loc 1 1013 0
	leaq	48(%rsp), %rsi
	movl	$16, %edx
	call	strtoull
	.loc 1 1014 0
	movq	48(%rsp), %rdi
	.loc 1 1013 0
	movq	%rax, 16(%rsp)
	.loc 1 1014 0
	cmpb	$44, (%rdi)
	je	.L261
.L198:
	.loc 1 1016 0
	leaq	48(%rsp), %rsi
	movl	$16, %edx
	call	strtoull
	.loc 1 1017 0
	cmpl	$1, %ebx
	jbe	.L262
	.loc 1 1022 0
	cmpl	$2, %ebx
	jne	.L201
	.loc 1 1023 0
	movl	16(%rsp), %esi
	movq	%r12, %rdi
	call	cpu_watchpoint_insert
.L240:
	testl	%eax, %eax
	js	.L201
	.loc 1 1042 0
	movl	$.LC7, %esi
	jmp	.L233
.L191:
	.loc 1 997 0
	leaq	48(%rsp), %rsi
	movq	%rbx, %rdi
	movl	$16, %edx
	call	strtoull
	.loc 1 998 0
	movq	48(%rsp), %rdi
	.loc 1 997 0
	movq	%rax, 32(%rsp)
	.loc 1 998 0
	cmpb	$44, (%rdi)
	je	.L263
.L192:
	.loc 1 1000 0
	leaq	48(%rsp), %rsi
	movl	$16, %edx
	call	strtoull
	.loc 1 1001 0
	movq	48(%rsp), %rdi
	.loc 1 1000 0
	movq	%rax, 24(%rsp)
	.loc 1 1001 0
	cmpb	$58, (%rdi)
	je	.L264
.L193:
	.loc 1 1003 0
	leaq	64(%rsp), %rbx
	movl	24(%rsp), %edx
	movq	%rdi, %rsi
	movq	%rbx, %rdi
	call	hextomem
	.loc 1 1004 0
	movl	24(%rsp), %ecx
	movl	32(%rsp), %esi
	movl	$1, %r8d
	movq	%rbx, %rdx
	movq	%r12, %rdi
	call	cpu_memory_rw_debug
	testl	%eax, %eax
	je	.L238
.L235:
	.loc 1 1005 0
	movl	$.LC8, %esi
	jmp	.L233
.L254:
	.loc 1 1045 0
	movl	8(%rsp), %esi
	movq	%r12, %rdi
	call	cpu_watchpoint_remove
	.loc 1 1042 0
	movl	$.LC7, %esi
	jmp	.L233
.L245:
.LBE54:
.LBE53:
	.loc 1 1250 0
	call	abort
.L259:
.LBB65:
.LBB66:
.LBB67:
	.loc 1 960 0
	movq	(%rbp), %rdi
	movl	%r12d, %esi
	call	*%rax
	.p2align 4,,4
	jmp	.L155
.L253:
.LBE67:
	.loc 1 1041 0
	movl	8(%rsp), %esi
	movq	%r12, %rdi
	call	cpu_breakpoint_remove
	.loc 1 1042 0
	movl	$.LC7, %esi
	jmp	.L233
.L262:
	.loc 1 1018 0
	movl	16(%rsp), %esi
	movq	%r12, %rdi
	call	cpu_breakpoint_insert
	jmp	.L240
.L261:
	.loc 1 1015 0
	incq	%rdi
	movq	%rdi, 48(%rsp)
	jmp	.L198
.L260:
	.loc 1 1012 0
	incq	%rdi
	movq	%rdi, 48(%rsp)
	jmp	.L197
.L252:
	.loc 1 1038 0
	incq	%rdi
	movq	%rdi, 48(%rsp)
	jmp	.L208
.L251:
	.loc 1 1035 0
	incq	%rdi
	movq	%rdi, 48(%rsp)
	jmp	.L207
.L258:
.LBB68:
	.loc 1 957 0
	incq	%rdi
	movq	%rdi, 48(%rsp)
	jmp	.L154
.L255:
.LBE68:
	.loc 1 919 0
	leaq	48(%rsp), %rsi
	movl	$16, %edx
	movq	%rbx, %rdi
	call	strtoull
	.loc 1 921 0
	movl	%eax, 32(%r12)
	jmp	.L150
.L256:
	.loc 1 987 0
	incq	%rdi
	movq	%rdi, 48(%rsp)
	jmp	.L188
.L264:
	.loc 1 1002 0
	incq	%rdi
	movq	%rdi, 48(%rsp)
	jmp	.L193
.L263:
	.loc 1 999 0
	incq	%rdi
	movq	%rdi, 48(%rsp)
	jmp	.L192
.L257:
.LBB69:
	.loc 1 952 0
	leaq	48(%rsp), %rsi
	.loc 1 951 0
	incq	%rdi
	.loc 1 952 0
	movb	$16, %dl
	.loc 1 951 0
	movq	%rdi, 48(%rsp)
	.loc 1 952 0
	call	strtoull
	movq	48(%rsp), %rdi
	movl	%eax, %edx
	jmp	.L153
.LBE69:
.LBE66:
.LBE65:
.LBE44:
.LBE43:
.LFE201:
	.size	gdb_chr_receive, .-gdb_chr_receive
	.p2align 4,,15
	.type	gdb_chr_event, @function
gdb_chr_event:
.LFB202:
	.loc 1 1405 0
	.loc 1 1406 0
	cmpl	$2, %esi
	.loc 1 1405 0
	pushq	%rbx
.LCFI22:
	.loc 1 1405 0
	movq	%rdi, %rbx
	.loc 1 1406 0
	je	.L269
	.loc 1 1414 0
	popq	%rbx
	ret
	.p2align 4,,7
.L269:
	.loc 1 1408 0
	movl	$65536, %edi
	call	vm_stop
	.loc 1 1409 0
	movq	%rbx, gdb_syscall_state(%rip)
	.loc 1 1414 0
	popq	%rbx
	ret
.LFE202:
	.size	gdb_chr_event, .-gdb_chr_event
	.section	.rodata.str1.1
.LC10:
	.string	"tcp::%d,nowait,nodelay,server"
	.text
	.p2align 4,,15
.globl gdbserver_start
	.type	gdbserver_start, @function
gdbserver_start:
.LFB203:
	.loc 1 1417 0
	movq	%rbx, -16(%rsp)
.LCFI23:
	movq	%rbp, -8(%rsp)
.LCFI24:
	subq	$168, %rsp
.LCFI25:
	.loc 1 1424 0
	testq	%rdi, %rdi
	.loc 1 1417 0
	movq	%rdi, %rbx
	.loc 1 1424 0
	je	.L272
	cmpb	$0, (%rdi)
	jne	.L271
.L272:
	.loc 1 1425 0
	movl	$-1, %eax
.L270:
	.loc 1 1449 0
	movq	152(%rsp), %rbx
	movq	160(%rsp), %rbp
	addq	$168, %rsp
	ret
	.p2align 4,,7
.L271:
	.loc 1 1427 0
	leaq	8(%rsp), %rsi
	movl	$10, %edx
	call	strtol
	movq	%rax, %rdx
	.loc 1 1428 0
	movq	8(%rsp), %rax
	cmpb	$0, (%rax)
	je	.L276
.L273:
	.loc 1 1435 0
	movq	%rbx, %rdi
	call	qemu_chr_open
	movq	%rax, %rbp
	.loc 1 1437 0
	movl	$-1, %eax
	.loc 1 1436 0
	testq	%rbp, %rbp
	je	.L270
	.loc 1 1439 0
	movl	$8232, %edi
	call	qemu_mallocz
	movq	%rax, %rbx
	.loc 1 1441 0
	movl	$-1, %eax
	.loc 1 1440 0
	testq	%rbx, %rbx
	je	.L270
	.loc 1 1443 0
	movq	first_cpu(%rip), %rax
	.loc 1 1445 0
	movq	%rbx, %r8
	.loc 1 1444 0
	movq	%rbp, 8224(%rbx)
	.loc 1 1445 0
	movq	%rbp, %rdi
	movl	$gdb_chr_event, %ecx
	movl	$gdb_chr_receive, %edx
	movl	$gdb_chr_can_receive, %esi
	.loc 1 1443 0
	movq	%rax, (%rbx)
	.loc 1 1445 0
	call	qemu_chr_add_handlers
	.loc 1 1447 0
	movq	%rbx, %rsi
	movl	$gdb_vm_stopped, %edi
	call	qemu_add_vm_stop_handler
	.loc 1 1449 0
	movq	152(%rsp), %rbx
	movq	160(%rsp), %rbp
	.loc 1 1448 0
	xorl	%eax, %eax
	.loc 1 1449 0
	addq	$168, %rsp
	ret
.L276:
	.loc 1 1430 0
	leaq	16(%rsp), %rbx
	movl	%edx, %ecx
	movl	$128, %esi
	movl	$.LC10, %edx
	xorl	%eax, %eax
	movq	%rbx, %rdi
	call	snprintf
	jmp	.L273
.LFE203:
	.size	gdbserver_start, .-gdbserver_start
	.comm	nb_drives,4,4
	.comm	drives_table,792,32
	.local	gdb_syscall_state
	.comm	gdb_syscall_state,8,8
	.local	gdb_current_syscall_cb
	.comm	gdb_current_syscall_cb,8,8
	.comm	gdb_syscall_mode,4,4
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
	.quad	.LFB187
	.quad	.LFE187-.LFB187
	.align 8
.LEFDE0:
.LSFDE2:
	.long	.LEFDE2-.LASFDE2
.LASFDE2:
	.long	.Lframe0
	.quad	.LFB188
	.quad	.LFE188-.LFB188
	.align 8
.LEFDE2:
.LSFDE4:
	.long	.LEFDE4-.LASFDE4
.LASFDE4:
	.long	.Lframe0
	.quad	.LFB191
	.quad	.LFE191-.LFB191
	.align 8
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.quad	.LFB192
	.quad	.LFE192-.LFB192
	.align 8
.LEFDE6:
.LSFDE8:
	.long	.LEFDE8-.LASFDE8
.LASFDE8:
	.long	.Lframe0
	.quad	.LFB193
	.quad	.LFE193-.LFB193
	.byte	0x4
	.long	.LCFI1-.LFB193
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8d
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI6-.LCFI1
	.byte	0xe
	.uleb128 0x40
	.byte	0x8f
	.uleb128 0x2
	.byte	0x8c
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x6
	.byte	0x83
	.uleb128 0x7
	.align 8
.LEFDE8:
.LSFDE10:
	.long	.LEFDE10-.LASFDE10
.LASFDE10:
	.long	.Lframe0
	.quad	.LFB197
	.quad	.LFE197-.LFB197
	.byte	0x4
	.long	.LCFI9-.LFB197
	.byte	0xe
	.uleb128 0x120
	.byte	0x86
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE10:
.LSFDE12:
	.long	.LEFDE12-.LASFDE12
.LASFDE12:
	.long	.Lframe0
	.quad	.LFB198
	.quad	.LFE198-.LFB198
	.byte	0x4
	.long	.LCFI10-.LFB198
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI11-.LCFI10
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI12-.LCFI11
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI13-.LCFI12
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
	.long	.LCFI14-.LCFI13
	.byte	0xe
	.uleb128 0x200
	.align 8
.LEFDE12:
.LSFDE14:
	.long	.LEFDE14-.LASFDE14
.LASFDE14:
	.long	.Lframe0
	.quad	.LFB200
	.quad	.LFE200-.LFB200
	.align 8
.LEFDE14:
.LSFDE16:
	.long	.LEFDE16-.LASFDE16
.LASFDE16:
	.long	.Lframe0
	.quad	.LFB201
	.quad	.LFE201-.LFB201
	.byte	0x4
	.long	.LCFI15-.LFB201
	.byte	0xe
	.uleb128 0x10
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI16-.LCFI15
	.byte	0xe
	.uleb128 0x18
	.byte	0x8e
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI17-.LCFI16
	.byte	0xe
	.uleb128 0x20
	.byte	0x8d
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI18-.LCFI17
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI19-.LCFI18
	.byte	0xe
	.uleb128 0x30
	.byte	0x86
	.uleb128 0x6
	.byte	0x8c
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI20-.LCFI19
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI21-.LCFI20
	.byte	0xe
	.uleb128 0x2080
	.byte	0x83
	.uleb128 0x7
	.align 8
.LEFDE16:
.LSFDE18:
	.long	.LEFDE18-.LASFDE18
.LASFDE18:
	.long	.Lframe0
	.quad	.LFB202
	.quad	.LFE202-.LFB202
	.byte	0x4
	.long	.LCFI22-.LFB202
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
	.quad	.LFB203
	.quad	.LFE203-.LFB203
	.byte	0x4
	.long	.LCFI25-.LFB203
	.byte	0xe
	.uleb128 0xb0
	.byte	0x86
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE20:
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
	.quad	.LFB187
	.quad	.LFE187-.LFB187
	.align 8
.LEFDE1:
.LSFDE3:
	.long	.LEFDE3-.LASFDE3
.LASFDE3:
	.long	.LASFDE3-.Lframe1
	.quad	.LFB188
	.quad	.LFE188-.LFB188
	.align 8
.LEFDE3:
.LSFDE5:
	.long	.LEFDE5-.LASFDE5
.LASFDE5:
	.long	.LASFDE5-.Lframe1
	.quad	.LFB191
	.quad	.LFE191-.LFB191
	.align 8
.LEFDE5:
.LSFDE7:
	.long	.LEFDE7-.LASFDE7
.LASFDE7:
	.long	.LASFDE7-.Lframe1
	.quad	.LFB192
	.quad	.LFE192-.LFB192
	.align 8
.LEFDE7:
.LSFDE9:
	.long	.LEFDE9-.LASFDE9
.LASFDE9:
	.long	.LASFDE9-.Lframe1
	.quad	.LFB193
	.quad	.LFE193-.LFB193
	.byte	0x4
	.long	.LCFI1-.LFB193
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8d
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI6-.LCFI1
	.byte	0xe
	.uleb128 0x40
	.byte	0x8f
	.uleb128 0x2
	.byte	0x8c
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x6
	.byte	0x83
	.uleb128 0x7
	.align 8
.LEFDE9:
.LSFDE11:
	.long	.LEFDE11-.LASFDE11
.LASFDE11:
	.long	.LASFDE11-.Lframe1
	.quad	.LFB197
	.quad	.LFE197-.LFB197
	.byte	0x4
	.long	.LCFI9-.LFB197
	.byte	0xe
	.uleb128 0x120
	.byte	0x86
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE11:
.LSFDE13:
	.long	.LEFDE13-.LASFDE13
.LASFDE13:
	.long	.LASFDE13-.Lframe1
	.quad	.LFB198
	.quad	.LFE198-.LFB198
	.byte	0x4
	.long	.LCFI10-.LFB198
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI11-.LCFI10
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI12-.LCFI11
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI13-.LCFI12
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
	.long	.LCFI14-.LCFI13
	.byte	0xe
	.uleb128 0x200
	.align 8
.LEFDE13:
.LSFDE15:
	.long	.LEFDE15-.LASFDE15
.LASFDE15:
	.long	.LASFDE15-.Lframe1
	.quad	.LFB200
	.quad	.LFE200-.LFB200
	.align 8
.LEFDE15:
.LSFDE17:
	.long	.LEFDE17-.LASFDE17
.LASFDE17:
	.long	.LASFDE17-.Lframe1
	.quad	.LFB201
	.quad	.LFE201-.LFB201
	.byte	0x4
	.long	.LCFI15-.LFB201
	.byte	0xe
	.uleb128 0x10
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI16-.LCFI15
	.byte	0xe
	.uleb128 0x18
	.byte	0x8e
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI17-.LCFI16
	.byte	0xe
	.uleb128 0x20
	.byte	0x8d
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI18-.LCFI17
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI19-.LCFI18
	.byte	0xe
	.uleb128 0x30
	.byte	0x86
	.uleb128 0x6
	.byte	0x8c
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI20-.LCFI19
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI21-.LCFI20
	.byte	0xe
	.uleb128 0x2080
	.byte	0x83
	.uleb128 0x7
	.align 8
.LEFDE17:
.LSFDE19:
	.long	.LEFDE19-.LASFDE19
.LASFDE19:
	.long	.LASFDE19-.Lframe1
	.quad	.LFB202
	.quad	.LFE202-.LFB202
	.byte	0x4
	.long	.LCFI22-.LFB202
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
	.quad	.LFB203
	.quad	.LFE203-.LFB203
	.byte	0x4
	.long	.LCFI25-.LFB203
	.byte	0xe
	.uleb128 0xb0
	.byte	0x86
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE21:
	.file 3 "/home/remco/Projects/Argos/src/target-i386/cpu.h"
	.file 4 "../cpu-defs.h"
	.file 5 "/usr/include/stdint.h"
	.file 6 "../argos-tag.h"
	.file 7 "../argos.h"
	.file 8 "/home/remco/Projects/Argos/src/target-i386/argos-shellcode.h"
	.file 9 "/usr/include/stdio.h"
	.file 10 "/usr/include/libio.h"
	.file 11 "/usr/include/bits/types.h"
	.file 12 "/usr/lib/gcc/x86_64-linux-gnu/3.4.6/include/stddef.h"
	.file 13 "/usr/include/sys/types.h"
	.file 14 "/home/remco/Projects/Argos/src/fpu/softfloat-native.h"
	.file 15 "/usr/include/setjmp.h"
	.file 16 "/usr/include/bits/setjmp.h"
	.file 17 "/usr/include/bits/sigset.h"
	.file 18 "/home/remco/Projects/Argos/src/qemu-common.h"
	.file 19 "/home/remco/Projects/Argos/src/qemu-char.h"
	.file 20 "/home/remco/Projects/Argos/src/gdbstub.h"
	.file 21 "/usr/lib/gcc/x86_64-linux-gnu/3.4.6/include/stdarg.h"
	.file 22 "<internal>"
	.file 23 "/home/remco/Projects/Argos/src/sysemu.h"
	.text
.Letext0:
	.section	.debug_info
	.long	0x1cb3
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.Ldebug_line0
	.quad	.Letext0
	.quad	.Ltext0
	.long	.LASF295
	.byte	0x1
	.long	.LASF296
	.long	.LASF297
	.uleb128 0x2
	.long	.LASF9
	.byte	0xc
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
	.uleb128 0x5
	.byte	0x8
	.long	0x6f
	.uleb128 0x6
	.long	0x74
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
	.long	0x4d
	.uleb128 0x2
	.long	.LASF11
	.byte	0xb
	.byte	0x8e
	.long	0x4d
	.uleb128 0x7
	.byte	0x8
	.uleb128 0x5
	.byte	0x8
	.long	0x74
	.uleb128 0x2
	.long	.LASF12
	.byte	0xd
	.byte	0xc5
	.long	0x3f
	.uleb128 0x2
	.long	.LASF13
	.byte	0xd
	.byte	0xc6
	.long	0x4d
	.uleb128 0x8
	.long	0xdb
	.byte	0x80
	.byte	0x11
	.byte	0x20
	.uleb128 0x9
	.long	.LASF17
	.byte	0x11
	.byte	0x1f
	.long	0xdb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xa
	.long	0xeb
	.long	0x38
	.uleb128 0xb
	.long	0x5b
	.byte	0xf
	.byte	0x0
	.uleb128 0x2
	.long	.LASF14
	.byte	0x11
	.byte	0x20
	.long	0xc4
	.uleb128 0x3
	.long	.LASF15
	.byte	0x8
	.byte	0x7
	.uleb128 0x2
	.long	.LASF16
	.byte	0x9
	.byte	0x31
	.long	0x108
	.uleb128 0xc
	.long	0x2d4
	.long	.LASF48
	.byte	0xd8
	.byte	0x9
	.byte	0x2d
	.uleb128 0xd
	.long	.LASF18
	.byte	0xa
	.value	0x110
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF19
	.byte	0xa
	.value	0x115
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF20
	.byte	0xa
	.value	0x116
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.long	.LASF21
	.byte	0xa
	.value	0x117
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.long	.LASF22
	.byte	0xa
	.value	0x118
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.long	.LASF23
	.byte	0xa
	.value	0x119
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.long	.LASF24
	.byte	0xa
	.value	0x11a
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.long	.LASF25
	.byte	0xa
	.value	0x11b
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.long	.LASF26
	.byte	0xa
	.value	0x11c
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.long	.LASF27
	.byte	0xa
	.value	0x11e
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.long	.LASF28
	.byte	0xa
	.value	0x11f
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xd
	.long	.LASF29
	.byte	0xa
	.value	0x120
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xd
	.long	.LASF30
	.byte	0xa
	.value	0x122
	.long	0x372
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.long	.LASF31
	.byte	0xa
	.value	0x124
	.long	0x378
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.long	.LASF32
	.byte	0xa
	.value	0x126
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xd
	.long	.LASF33
	.byte	0xa
	.value	0x12a
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xd
	.long	.LASF34
	.byte	0xa
	.value	0x12c
	.long	0x90
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xd
	.long	.LASF35
	.byte	0xa
	.value	0x130
	.long	0x62
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xd
	.long	.LASF36
	.byte	0xa
	.value	0x131
	.long	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0x82
	.uleb128 0xd
	.long	.LASF37
	.byte	0xa
	.value	0x132
	.long	0x37e
	.byte	0x3
	.byte	0x23
	.uleb128 0x83
	.uleb128 0xd
	.long	.LASF38
	.byte	0xa
	.value	0x136
	.long	0x38e
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xd
	.long	.LASF39
	.byte	0xa
	.value	0x13f
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xd
	.long	.LASF40
	.byte	0xa
	.value	0x148
	.long	0xa6
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xd
	.long	.LASF41
	.byte	0xa
	.value	0x149
	.long	0xa6
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xd
	.long	.LASF42
	.byte	0xa
	.value	0x14a
	.long	0xa6
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xd
	.long	.LASF43
	.byte	0xa
	.value	0x14b
	.long	0xa6
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xd
	.long	.LASF44
	.byte	0xa
	.value	0x14c
	.long	0x2d
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0xd
	.long	.LASF45
	.byte	0xa
	.value	0x14e
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xd
	.long	.LASF46
	.byte	0xa
	.value	0x150
	.long	0x394
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.byte	0x0
	.uleb128 0x2
	.long	.LASF47
	.byte	0x15
	.byte	0x2b
	.long	0x2df
	.uleb128 0xa
	.long	0x2ef
	.long	0x2ef
	.uleb128 0xb
	.long	0x5b
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.long	0x334
	.long	.LASF49
	.byte	0x18
	.byte	0x16
	.byte	0x0
	.uleb128 0x9
	.long	.LASF50
	.byte	0x16
	.byte	0x0
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF51
	.byte	0x16
	.byte	0x0
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.long	.LASF52
	.byte	0x16
	.byte	0x0
	.long	0xa6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF53
	.byte	0x16
	.byte	0x0
	.long	0xa6
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0xe
	.long	.LASF54
	.byte	0xa
	.byte	0xb4
	.uleb128 0xc
	.long	0x372
	.long	.LASF55
	.byte	0x18
	.byte	0xa
	.byte	0xba
	.uleb128 0x9
	.long	.LASF56
	.byte	0xa
	.byte	0xbb
	.long	0x372
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF57
	.byte	0xa
	.byte	0xbc
	.long	0x378
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF58
	.byte	0xa
	.byte	0xc0
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x33b
	.uleb128 0x5
	.byte	0x8
	.long	0x108
	.uleb128 0xa
	.long	0x38e
	.long	0x74
	.uleb128 0xb
	.long	0x5b
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x334
	.uleb128 0xa
	.long	0x3a4
	.long	0x74
	.uleb128 0xb
	.long	0x5b
	.byte	0x13
	.byte	0x0
	.uleb128 0xf
	.long	0x3b4
	.byte	0x1
	.long	0x3f
	.uleb128 0x10
	.long	0xa6
	.byte	0x0
	.uleb128 0x2
	.long	.LASF59
	.byte	0x9
	.byte	0x50
	.long	0x2d4
	.uleb128 0x2
	.long	.LASF60
	.byte	0x5
	.byte	0x31
	.long	0x7b
	.uleb128 0x2
	.long	.LASF61
	.byte	0x5
	.byte	0x32
	.long	0x62
	.uleb128 0x2
	.long	.LASF62
	.byte	0x5
	.byte	0x34
	.long	0x46
	.uleb128 0x2
	.long	.LASF63
	.byte	0x5
	.byte	0x38
	.long	0x38
	.uleb128 0x2
	.long	.LASF64
	.byte	0x10
	.byte	0x20
	.long	0x3f6
	.uleb128 0xa
	.long	0x406
	.long	0x4d
	.uleb128 0xb
	.long	0x5b
	.byte	0x7
	.byte	0x0
	.uleb128 0xc
	.long	0x43d
	.long	.LASF65
	.byte	0xc8
	.byte	0xf
	.byte	0x24
	.uleb128 0x9
	.long	.LASF66
	.byte	0xf
	.byte	0x29
	.long	0x3eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF67
	.byte	0xf
	.byte	0x2a
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.long	.LASF68
	.byte	0xf
	.byte	0x2b
	.long	0xeb
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.byte	0x0
	.uleb128 0x2
	.long	.LASF69
	.byte	0xf
	.byte	0x31
	.long	0x448
	.uleb128 0xa
	.long	0x458
	.long	0x406
	.uleb128 0xb
	.long	0x5b
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.long	.LASF70
	.byte	0x4
	.byte	0x31
	.long	0x3d5
	.uleb128 0x2
	.long	.LASF71
	.byte	0x4
	.byte	0x49
	.long	0x3e0
	.uleb128 0xc
	.long	0x4b3
	.long	.LASF72
	.byte	0x18
	.byte	0x4
	.byte	0x69
	.uleb128 0x9
	.long	.LASF73
	.byte	0x4
	.byte	0x70
	.long	0x458
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF74
	.byte	0x4
	.byte	0x71
	.long	0x458
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.long	.LASF75
	.byte	0x4
	.byte	0x72
	.long	0x458
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF76
	.byte	0x4
	.byte	0x74
	.long	0x463
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.long	.LASF72
	.byte	0x4
	.byte	0x75
	.long	0x46e
	.uleb128 0x3
	.long	.LASF77
	.byte	0x4
	.byte	0x4
	.uleb128 0x3
	.long	.LASF78
	.byte	0x8
	.byte	0x4
	.uleb128 0x2
	.long	.LASF79
	.byte	0xe
	.byte	0x3b
	.long	0x4be
	.uleb128 0x2
	.long	.LASF80
	.byte	0xe
	.byte	0x3c
	.long	0x4c5
	.uleb128 0x2
	.long	.LASF81
	.byte	0xe
	.byte	0x3e
	.long	0x4ed
	.uleb128 0x3
	.long	.LASF82
	.byte	0x10
	.byte	0x4
	.uleb128 0xc
	.long	0x51d
	.long	.LASF83
	.byte	0x2
	.byte	0xe
	.byte	0x6d
	.uleb128 0x9
	.long	.LASF84
	.byte	0xe
	.byte	0x6e
	.long	0x82
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF85
	.byte	0xe
	.byte	0x70
	.long	0x82
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0x0
	.uleb128 0x2
	.long	.LASF83
	.byte	0xe
	.byte	0x72
	.long	0x4f4
	.uleb128 0x11
	.long	.LASF86
	.byte	0x3
	.value	0x198
	.long	0x4e2
	.uleb128 0x12
	.long	0x57e
	.long	.LASF87
	.byte	0x10
	.byte	0x3
	.value	0x19d
	.uleb128 0xd
	.long	.LASF88
	.byte	0x3
	.value	0x19e
	.long	0x3d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF89
	.byte	0x3
	.value	0x19f
	.long	0x458
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.long	.LASF90
	.byte	0x3
	.value	0x1a0
	.long	0x3d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF91
	.byte	0x3
	.value	0x1a1
	.long	0x3d5
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x11
	.long	.LASF87
	.byte	0x3
	.value	0x1a2
	.long	0x534
	.uleb128 0x13
	.long	0x5d6
	.byte	0x10
	.byte	0x3
	.value	0x1ab
	.uleb128 0x14
	.string	"_b"
	.byte	0x3
	.value	0x1a5
	.long	0x5d6
	.uleb128 0x14
	.string	"_w"
	.byte	0x3
	.value	0x1a6
	.long	0x5e6
	.uleb128 0x14
	.string	"_l"
	.byte	0x3
	.value	0x1a7
	.long	0x5f6
	.uleb128 0x14
	.string	"_q"
	.byte	0x3
	.value	0x1a8
	.long	0x606
	.uleb128 0x14
	.string	"_s"
	.byte	0x3
	.value	0x1a9
	.long	0x616
	.uleb128 0x14
	.string	"_d"
	.byte	0x3
	.value	0x1aa
	.long	0x626
	.byte	0x0
	.uleb128 0xa
	.long	0x5e6
	.long	0x3bf
	.uleb128 0xb
	.long	0x5b
	.byte	0xf
	.byte	0x0
	.uleb128 0xa
	.long	0x5f6
	.long	0x3ca
	.uleb128 0xb
	.long	0x5b
	.byte	0x7
	.byte	0x0
	.uleb128 0xa
	.long	0x606
	.long	0x3d5
	.uleb128 0xb
	.long	0x5b
	.byte	0x3
	.byte	0x0
	.uleb128 0xa
	.long	0x616
	.long	0x3e0
	.uleb128 0xb
	.long	0x5b
	.byte	0x1
	.byte	0x0
	.uleb128 0xa
	.long	0x626
	.long	0x4cc
	.uleb128 0xb
	.long	0x5b
	.byte	0x3
	.byte	0x0
	.uleb128 0xa
	.long	0x636
	.long	0x4d7
	.uleb128 0xb
	.long	0x5b
	.byte	0x1
	.byte	0x0
	.uleb128 0x11
	.long	.LASF92
	.byte	0x3
	.value	0x1ab
	.long	0x58a
	.uleb128 0x13
	.long	0x677
	.byte	0x8
	.byte	0x3
	.value	0x1b2
	.uleb128 0x14
	.string	"_b"
	.byte	0x3
	.value	0x1ae
	.long	0x677
	.uleb128 0x14
	.string	"_w"
	.byte	0x3
	.value	0x1af
	.long	0x687
	.uleb128 0x14
	.string	"_l"
	.byte	0x3
	.value	0x1b0
	.long	0x697
	.uleb128 0x14
	.string	"q"
	.byte	0x3
	.value	0x1b1
	.long	0x3e0
	.byte	0x0
	.uleb128 0xa
	.long	0x687
	.long	0x3bf
	.uleb128 0xb
	.long	0x5b
	.byte	0x7
	.byte	0x0
	.uleb128 0xa
	.long	0x697
	.long	0x3ca
	.uleb128 0xb
	.long	0x5b
	.byte	0x1
	.byte	0x0
	.uleb128 0xa
	.long	0x6a7
	.long	0x3d5
	.uleb128 0xb
	.long	0x5b
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.long	.LASF93
	.byte	0x3
	.value	0x1b2
	.long	0x642
	.uleb128 0x2
	.long	.LASF94
	.byte	0x7
	.byte	0x2f
	.long	0x3d5
	.uleb128 0x2
	.long	.LASF95
	.byte	0x7
	.byte	0x34
	.long	0x3d5
	.uleb128 0x2
	.long	.LASF96
	.byte	0x7
	.byte	0x35
	.long	0x6be
	.uleb128 0xc
	.long	0x6fd
	.long	.LASF97
	.byte	0x8
	.byte	0x6
	.byte	0x37
	.uleb128 0x9
	.long	.LASF98
	.byte	0x6
	.byte	0x38
	.long	0x6b3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF99
	.byte	0x6
	.byte	0x39
	.long	0x6be
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.long	.LASF100
	.byte	0x6
	.byte	0x3d
	.long	0x6d4
	.uleb128 0xc
	.long	0x87d
	.long	.LASF101
	.byte	0xd0
	.byte	0x8
	.byte	0x36
	.uleb128 0x9
	.long	.LASF102
	.byte	0x8
	.byte	0x38
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF103
	.byte	0x8
	.byte	0x39
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x15
	.string	"cr3"
	.byte	0x8
	.byte	0x3d
	.long	0x458
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF104
	.byte	0x8
	.byte	0x3f
	.long	0x87d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.long	.LASF105
	.byte	0x8
	.byte	0x41
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.long	.LASF106
	.byte	0x8
	.byte	0x43
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x9
	.long	.LASF107
	.byte	0x8
	.byte	0x45
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.long	.LASF108
	.byte	0x8
	.byte	0x47
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.long	.LASF109
	.byte	0x8
	.byte	0x4a
	.long	0x458
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.long	.LASF110
	.byte	0x8
	.byte	0x4b
	.long	0x458
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.long	.LASF111
	.byte	0x8
	.byte	0x4c
	.long	0x458
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.long	.LASF112
	.byte	0x8
	.byte	0x4e
	.long	0x883
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x9
	.long	.LASF113
	.byte	0x8
	.byte	0x50
	.long	0x62
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0x9
	.long	.LASF114
	.byte	0x8
	.byte	0x52
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x9
	.long	.LASF115
	.byte	0x8
	.byte	0x54
	.long	0x893
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x9
	.long	.LASF116
	.byte	0x8
	.byte	0x56
	.long	0x458
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x9
	.long	.LASF117
	.byte	0x8
	.byte	0x58
	.long	0x8a3
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x9
	.long	.LASF118
	.byte	0x8
	.byte	0x5b
	.long	0x38
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x9
	.long	.LASF119
	.byte	0x8
	.byte	0x5c
	.long	0x7b
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x9
	.long	.LASF120
	.byte	0x8
	.byte	0x5e
	.long	0x46
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0x9
	.long	.LASF121
	.byte	0x8
	.byte	0x60
	.long	0x458
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x9
	.long	.LASF122
	.byte	0x8
	.byte	0x62
	.long	0x8a3
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x9
	.long	.LASF123
	.byte	0x8
	.byte	0x65
	.long	0x38
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x9
	.long	.LASF124
	.byte	0x8
	.byte	0x66
	.long	0x7b
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.uleb128 0x9
	.long	.LASF125
	.byte	0x8
	.byte	0x68
	.long	0x46
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xfd
	.uleb128 0xa
	.long	0x893
	.long	0x74
	.uleb128 0xb
	.long	0x5b
	.byte	0x10
	.byte	0x0
	.uleb128 0xa
	.long	0x8a3
	.long	0x6be
	.uleb128 0xb
	.long	0x5b
	.byte	0x10
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x6be
	.uleb128 0x2
	.long	.LASF126
	.byte	0x8
	.byte	0x69
	.long	0x708
	.uleb128 0x13
	.long	0x8d4
	.byte	0x10
	.byte	0x3
	.value	0x20f
	.uleb128 0x14
	.string	"d"
	.byte	0x3
	.value	0x20a
	.long	0x528
	.uleb128 0x14
	.string	"mmx"
	.byte	0x3
	.value	0x20e
	.long	0x6a7
	.byte	0x0
	.uleb128 0x13
	.long	0x90a
	.byte	0x8
	.byte	0x3
	.value	0x219
	.uleb128 0x14
	.string	"f"
	.byte	0x3
	.value	0x215
	.long	0x4be
	.uleb128 0x14
	.string	"d"
	.byte	0x3
	.value	0x216
	.long	0x4c5
	.uleb128 0x14
	.string	"i32"
	.byte	0x3
	.value	0x217
	.long	0x3f
	.uleb128 0x14
	.string	"i64"
	.byte	0x3
	.value	0x218
	.long	0xb9
	.byte	0x0
	.uleb128 0x16
	.long	0x932
	.byte	0x10
	.byte	0x3
	.value	0x246
	.uleb128 0xd
	.long	.LASF127
	.byte	0x3
	.value	0x246
	.long	0x458
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF76
	.byte	0x3
	.value	0x246
	.long	0x463
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x17
	.long	0xece
	.long	.LASF128
	.value	0xb820
	.byte	0x3
	.value	0x1d8
	.uleb128 0xd
	.long	.LASF129
	.byte	0x3
	.value	0x1df
	.long	0xece
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x18
	.string	"eip"
	.byte	0x3
	.value	0x1e0
	.long	0x458
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.long	.LASF130
	.byte	0x3
	.value	0x1e1
	.long	0x458
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.long	.LASF131
	.byte	0x3
	.value	0x1e6
	.long	0x6fd
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.long	.LASF132
	.byte	0x3
	.value	0x1e6
	.long	0x6fd
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.long	.LASF133
	.byte	0x3
	.value	0x1e6
	.long	0x6fd
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.long	.LASF134
	.byte	0x3
	.value	0x1e7
	.long	0xede
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.long	.LASF135
	.byte	0x3
	.value	0x1e9
	.long	0x8a9
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xd
	.long	.LASF136
	.byte	0x3
	.value	0x1ec
	.long	0x458
	.byte	0x3
	.byte	0x23
	.uleb128 0x150
	.uleb128 0xd
	.long	.LASF137
	.byte	0x3
	.value	0x1ed
	.long	0x458
	.byte	0x3
	.byte	0x23
	.uleb128 0x154
	.uleb128 0xd
	.long	.LASF138
	.byte	0x3
	.value	0x1ee
	.long	0x3d5
	.byte	0x3
	.byte	0x23
	.uleb128 0x158
	.uleb128 0x18
	.string	"df"
	.byte	0x3
	.value	0x1ef
	.long	0xae
	.byte	0x3
	.byte	0x23
	.uleb128 0x15c
	.uleb128 0xd
	.long	.LASF139
	.byte	0x3
	.value	0x1f0
	.long	0x3d5
	.byte	0x3
	.byte	0x23
	.uleb128 0x160
	.uleb128 0xd
	.long	.LASF140
	.byte	0x3
	.value	0x1f3
	.long	0xeee
	.byte	0x3
	.byte	0x23
	.uleb128 0x164
	.uleb128 0x18
	.string	"ldt"
	.byte	0x3
	.value	0x1f4
	.long	0x57e
	.byte	0x3
	.byte	0x23
	.uleb128 0x1c4
	.uleb128 0x18
	.string	"tr"
	.byte	0x3
	.value	0x1f5
	.long	0x57e
	.byte	0x3
	.byte	0x23
	.uleb128 0x1d4
	.uleb128 0x18
	.string	"gdt"
	.byte	0x3
	.value	0x1f6
	.long	0x57e
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e4
	.uleb128 0x18
	.string	"idt"
	.byte	0x3
	.value	0x1f7
	.long	0x57e
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f4
	.uleb128 0x18
	.string	"cr"
	.byte	0x3
	.value	0x1f9
	.long	0xefe
	.byte	0x3
	.byte	0x23
	.uleb128 0x204
	.uleb128 0xd
	.long	.LASF141
	.byte	0x3
	.value	0x1fa
	.long	0x3d5
	.byte	0x3
	.byte	0x23
	.uleb128 0x218
	.uleb128 0xd
	.long	.LASF142
	.byte	0x3
	.value	0x201
	.long	0x458
	.byte	0x3
	.byte	0x23
	.uleb128 0x21c
	.uleb128 0xd
	.long	.LASF143
	.byte	0x3
	.value	0x202
	.long	0x458
	.byte	0x3
	.byte	0x23
	.uleb128 0x220
	.uleb128 0xd
	.long	.LASF144
	.byte	0x3
	.value	0x204
	.long	0x46
	.byte	0x3
	.byte	0x23
	.uleb128 0x224
	.uleb128 0xd
	.long	.LASF145
	.byte	0x3
	.value	0x205
	.long	0x46
	.byte	0x3
	.byte	0x23
	.uleb128 0x228
	.uleb128 0xd
	.long	.LASF146
	.byte	0x3
	.value	0x206
	.long	0x46
	.byte	0x3
	.byte	0x23
	.uleb128 0x22c
	.uleb128 0xd
	.long	.LASF147
	.byte	0x3
	.value	0x207
	.long	0x677
	.byte	0x3
	.byte	0x23
	.uleb128 0x230
	.uleb128 0xd
	.long	.LASF148
	.byte	0x3
	.value	0x20f
	.long	0xf0e
	.byte	0x3
	.byte	0x23
	.uleb128 0x240
	.uleb128 0xd
	.long	.LASF149
	.byte	0x3
	.value	0x212
	.long	0x51d
	.byte	0x3
	.byte	0x23
	.uleb128 0x2c0
	.uleb128 0x18
	.string	"ft0"
	.byte	0x3
	.value	0x213
	.long	0x528
	.byte	0x3
	.byte	0x23
	.uleb128 0x2d0
	.uleb128 0xd
	.long	.LASF150
	.byte	0x3
	.value	0x219
	.long	0x8d4
	.byte	0x3
	.byte	0x23
	.uleb128 0x2e0
	.uleb128 0xd
	.long	.LASF151
	.byte	0x3
	.value	0x21b
	.long	0x51d
	.byte	0x3
	.byte	0x23
	.uleb128 0x2e8
	.uleb128 0xd
	.long	.LASF152
	.byte	0x3
	.value	0x21c
	.long	0x3d5
	.byte	0x3
	.byte	0x23
	.uleb128 0x2ec
	.uleb128 0xd
	.long	.LASF153
	.byte	0x3
	.value	0x21d
	.long	0xf1e
	.byte	0x3
	.byte	0x23
	.uleb128 0x2f0
	.uleb128 0xd
	.long	.LASF154
	.byte	0x3
	.value	0x21e
	.long	0x636
	.byte	0x3
	.byte	0x23
	.uleb128 0x370
	.uleb128 0xd
	.long	.LASF155
	.byte	0x3
	.value	0x21f
	.long	0x6a7
	.byte	0x3
	.byte	0x23
	.uleb128 0x380
	.uleb128 0xd
	.long	.LASF156
	.byte	0x3
	.value	0x222
	.long	0x3d5
	.byte	0x3
	.byte	0x23
	.uleb128 0x388
	.uleb128 0xd
	.long	.LASF157
	.byte	0x3
	.value	0x223
	.long	0x3d5
	.byte	0x3
	.byte	0x23
	.uleb128 0x38c
	.uleb128 0xd
	.long	.LASF158
	.byte	0x3
	.value	0x224
	.long	0x3d5
	.byte	0x3
	.byte	0x23
	.uleb128 0x390
	.uleb128 0xd
	.long	.LASF159
	.byte	0x3
	.value	0x225
	.long	0x3e0
	.byte	0x3
	.byte	0x23
	.uleb128 0x398
	.uleb128 0xd
	.long	.LASF160
	.byte	0x3
	.value	0x226
	.long	0x3e0
	.byte	0x3
	.byte	0x23
	.uleb128 0x3a0
	.uleb128 0xd
	.long	.LASF161
	.byte	0x3
	.value	0x228
	.long	0x463
	.byte	0x3
	.byte	0x23
	.uleb128 0x3a8
	.uleb128 0xd
	.long	.LASF162
	.byte	0x3
	.value	0x229
	.long	0x463
	.byte	0x3
	.byte	0x23
	.uleb128 0x3b0
	.uleb128 0xd
	.long	.LASF163
	.byte	0x3
	.value	0x22a
	.long	0x3e0
	.byte	0x3
	.byte	0x23
	.uleb128 0x3b8
	.uleb128 0xd
	.long	.LASF164
	.byte	0x3
	.value	0x22b
	.long	0x3ca
	.byte	0x3
	.byte	0x23
	.uleb128 0x3c0
	.uleb128 0xd
	.long	.LASF165
	.byte	0x3
	.value	0x22c
	.long	0x3ca
	.byte	0x3
	.byte	0x23
	.uleb128 0x3c2
	.uleb128 0xd
	.long	.LASF166
	.byte	0x3
	.value	0x22d
	.long	0x3ca
	.byte	0x3
	.byte	0x23
	.uleb128 0x3c4
	.uleb128 0xd
	.long	.LASF167
	.byte	0x3
	.value	0x22e
	.long	0x3ca
	.byte	0x3
	.byte	0x23
	.uleb128 0x3c6
	.uleb128 0xd
	.long	.LASF168
	.byte	0x3
	.value	0x22f
	.long	0x3d5
	.byte	0x3
	.byte	0x23
	.uleb128 0x3c8
	.uleb128 0x18
	.string	"pat"
	.byte	0x3
	.value	0x238
	.long	0x3e0
	.byte	0x3
	.byte	0x23
	.uleb128 0x3d0
	.uleb128 0xd
	.long	.LASF169
	.byte	0x3
	.value	0x23b
	.long	0x43d
	.byte	0x3
	.byte	0x23
	.uleb128 0x3d8
	.uleb128 0xd
	.long	.LASF170
	.byte	0x3
	.value	0x23c
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x4a0
	.uleb128 0xd
	.long	.LASF171
	.byte	0x3
	.value	0x23d
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x4a4
	.uleb128 0xd
	.long	.LASF172
	.byte	0x3
	.value	0x23e
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x4a8
	.uleb128 0xd
	.long	.LASF173
	.byte	0x3
	.value	0x23f
	.long	0x458
	.byte	0x3
	.byte	0x23
	.uleb128 0x4ac
	.uleb128 0x18
	.string	"dr"
	.byte	0x3
	.value	0x240
	.long	0xece
	.byte	0x3
	.byte	0x23
	.uleb128 0x4b0
	.uleb128 0xd
	.long	.LASF174
	.byte	0x3
	.value	0x241
	.long	0x3d5
	.byte	0x3
	.byte	0x23
	.uleb128 0x4d0
	.uleb128 0xd
	.long	.LASF175
	.byte	0x3
	.value	0x242
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x4d4
	.uleb128 0xd
	.long	.LASF176
	.byte	0x3
	.value	0x243
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x4d8
	.uleb128 0xd
	.long	.LASF177
	.byte	0x3
	.value	0x244
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x4dc
	.uleb128 0xd
	.long	.LASF178
	.byte	0x3
	.value	0x246
	.long	0xf34
	.byte	0x3
	.byte	0x23
	.uleb128 0x4e0
	.uleb128 0xd
	.long	.LASF179
	.byte	0x3
	.value	0x246
	.long	0x38
	.byte	0x3
	.byte	0x23
	.uleb128 0x4e8
	.uleb128 0xd
	.long	.LASF180
	.byte	0x3
	.value	0x246
	.long	0x458
	.byte	0x3
	.byte	0x23
	.uleb128 0x4f0
	.uleb128 0xd
	.long	.LASF181
	.byte	0x3
	.value	0x246
	.long	0xf3a
	.byte	0x3
	.byte	0x23
	.uleb128 0x4f8
	.uleb128 0xd
	.long	.LASF182
	.byte	0x3
	.value	0x246
	.long	0xf50
	.byte	0x3
	.byte	0x23
	.uleb128 0x34f8
	.uleb128 0xd
	.long	.LASF183
	.byte	0x3
	.value	0x246
	.long	0xf61
	.byte	0x4
	.byte	0x23
	.uleb128 0xb4f8
	.uleb128 0xd
	.long	.LASF184
	.byte	0x3
	.value	0x246
	.long	0x3f
	.byte	0x4
	.byte	0x23
	.uleb128 0xb578
	.uleb128 0xd
	.long	.LASF185
	.byte	0x3
	.value	0x246
	.long	0x3f
	.byte	0x4
	.byte	0x23
	.uleb128 0xb57c
	.uleb128 0xd
	.long	.LASF186
	.byte	0x3
	.value	0x246
	.long	0xf71
	.byte	0x4
	.byte	0x23
	.uleb128 0xb580
	.uleb128 0xd
	.long	.LASF187
	.byte	0x3
	.value	0x246
	.long	0x3f
	.byte	0x4
	.byte	0x23
	.uleb128 0xb780
	.uleb128 0xd
	.long	.LASF188
	.byte	0x3
	.value	0x246
	.long	0x3f
	.byte	0x4
	.byte	0x23
	.uleb128 0xb784
	.uleb128 0xd
	.long	.LASF189
	.byte	0x3
	.value	0x246
	.long	0xa6
	.byte	0x4
	.byte	0x23
	.uleb128 0xb788
	.uleb128 0xd
	.long	.LASF190
	.byte	0x3
	.value	0x246
	.long	0x3f
	.byte	0x4
	.byte	0x23
	.uleb128 0xb790
	.uleb128 0xd
	.long	.LASF191
	.byte	0x3
	.value	0x246
	.long	0xa6
	.byte	0x4
	.byte	0x23
	.uleb128 0xb798
	.uleb128 0xd
	.long	.LASF192
	.byte	0x3
	.value	0x246
	.long	0x69
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7a0
	.uleb128 0xd
	.long	.LASF193
	.byte	0x3
	.value	0x249
	.long	0x3d5
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7a8
	.uleb128 0xd
	.long	.LASF194
	.byte	0x3
	.value	0x24a
	.long	0x3d5
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7ac
	.uleb128 0xd
	.long	.LASF195
	.byte	0x3
	.value	0x24b
	.long	0x3d5
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7b0
	.uleb128 0xd
	.long	.LASF196
	.byte	0x3
	.value	0x24c
	.long	0x3d5
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7b4
	.uleb128 0xd
	.long	.LASF197
	.byte	0x3
	.value	0x24d
	.long	0x3d5
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7b8
	.uleb128 0xd
	.long	.LASF198
	.byte	0x3
	.value	0x24e
	.long	0x3d5
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7bc
	.uleb128 0xd
	.long	.LASF199
	.byte	0x3
	.value	0x24f
	.long	0x3d5
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7c0
	.uleb128 0xd
	.long	.LASF200
	.byte	0x3
	.value	0x250
	.long	0x3d5
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7c4
	.uleb128 0xd
	.long	.LASF201
	.byte	0x3
	.value	0x251
	.long	0xf81
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7c8
	.uleb128 0xd
	.long	.LASF202
	.byte	0x3
	.value	0x252
	.long	0x3d5
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7f8
	.uleb128 0xd
	.long	.LASF203
	.byte	0x3
	.value	0x253
	.long	0x3d5
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7fc
	.uleb128 0xd
	.long	.LASF204
	.byte	0x3
	.value	0x254
	.long	0x3d5
	.byte	0x4
	.byte	0x23
	.uleb128 0xb800
	.uleb128 0xd
	.long	.LASF205
	.byte	0x3
	.value	0x25b
	.long	0xf91
	.byte	0x4
	.byte	0x23
	.uleb128 0xb808
	.uleb128 0xd
	.long	.LASF206
	.byte	0x3
	.value	0x25f
	.long	0xf9d
	.byte	0x4
	.byte	0x23
	.uleb128 0xb810
	.byte	0x0
	.uleb128 0xa
	.long	0xede
	.long	0x458
	.uleb128 0xb
	.long	0x5b
	.byte	0x7
	.byte	0x0
	.uleb128 0xa
	.long	0xeee
	.long	0x6fd
	.uleb128 0xb
	.long	0x5b
	.byte	0x7
	.byte	0x0
	.uleb128 0xa
	.long	0xefe
	.long	0x57e
	.uleb128 0xb
	.long	0x5b
	.byte	0x5
	.byte	0x0
	.uleb128 0xa
	.long	0xf0e
	.long	0x458
	.uleb128 0xb
	.long	0x5b
	.byte	0x4
	.byte	0x0
	.uleb128 0xa
	.long	0xf1e
	.long	0x8b4
	.uleb128 0xb
	.long	0x5b
	.byte	0x7
	.byte	0x0
	.uleb128 0xa
	.long	0xf2e
	.long	0x636
	.uleb128 0xb
	.long	0x5b
	.byte	0x7
	.byte	0x0
	.uleb128 0x19
	.long	.LASF207
	.byte	0x1
	.uleb128 0x5
	.byte	0x8
	.long	0xf2e
	.uleb128 0xa
	.long	0xf50
	.long	0x4b3
	.uleb128 0xb
	.long	0x5b
	.byte	0x1
	.uleb128 0xb
	.long	0x5b
	.byte	0xff
	.byte	0x0
	.uleb128 0xa
	.long	0xf61
	.long	0xf34
	.uleb128 0x1a
	.long	0x5b
	.value	0xfff
	.byte	0x0
	.uleb128 0xa
	.long	0xf71
	.long	0x458
	.uleb128 0xb
	.long	0x5b
	.byte	0x1f
	.byte	0x0
	.uleb128 0xa
	.long	0xf81
	.long	0x90a
	.uleb128 0xb
	.long	0x5b
	.byte	0x1f
	.byte	0x0
	.uleb128 0xa
	.long	0xf91
	.long	0x3d5
	.uleb128 0xb
	.long	0x5b
	.byte	0xb
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x6c9
	.uleb128 0x19
	.long	.LASF208
	.byte	0x1
	.uleb128 0x5
	.byte	0x8
	.long	0xf97
	.uleb128 0x11
	.long	.LASF128
	.byte	0x3
	.value	0x260
	.long	0x932
	.uleb128 0x2
	.long	.LASF209
	.byte	0x12
	.byte	0x45
	.long	0xfba
	.uleb128 0x19
	.long	.LASF209
	.byte	0x1
	.uleb128 0x2
	.long	.LASF210
	.byte	0x12
	.byte	0x5f
	.long	0xfcb
	.uleb128 0x1b
	.long	0xfe1
	.byte	0x1
	.uleb128 0x10
	.long	0xa6
	.uleb128 0x10
	.long	0xfe1
	.uleb128 0x10
	.long	0x3f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xfe7
	.uleb128 0x6
	.long	0x3bf
	.uleb128 0x2
	.long	.LASF211
	.byte	0x12
	.byte	0x60
	.long	0x3a4
	.uleb128 0x2
	.long	.LASF212
	.byte	0x12
	.byte	0x6e
	.long	0x1002
	.uleb128 0x19
	.long	.LASF212
	.byte	0x1
	.uleb128 0x2
	.long	.LASF213
	.byte	0x12
	.byte	0x71
	.long	0x1013
	.uleb128 0xc
	.long	0x10d5
	.long	.LASF213
	.byte	0x68
	.byte	0x12
	.byte	0x71
	.uleb128 0x9
	.long	.LASF214
	.byte	0x13
	.byte	0x22
	.long	0x1111
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF215
	.byte	0x13
	.byte	0x23
	.long	0x1123
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF216
	.byte	0x13
	.byte	0x24
	.long	0x1143
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.long	.LASF217
	.byte	0x13
	.byte	0x25
	.long	0x1149
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.long	.LASF218
	.byte	0x13
	.byte	0x26
	.long	0x114f
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.long	.LASF219
	.byte	0x13
	.byte	0x27
	.long	0x1155
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.long	.LASF220
	.byte	0x13
	.byte	0x28
	.long	0xa6
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.long	.LASF221
	.byte	0x13
	.byte	0x29
	.long	0x116c
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.long	.LASF222
	.byte	0x13
	.byte	0x2a
	.long	0x1123
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.long	.LASF223
	.byte	0x13
	.byte	0x2b
	.long	0x1123
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x9
	.long	.LASF191
	.byte	0x13
	.byte	0x2c
	.long	0xa6
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x9
	.long	.LASF224
	.byte	0x13
	.byte	0x2d
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x15
	.string	"bh"
	.byte	0x13
	.byte	0x2e
	.long	0x1172
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.byte	0x0
	.uleb128 0x2
	.long	.LASF225
	.byte	0x13
	.byte	0x1f
	.long	0x10e0
	.uleb128 0x1b
	.long	0x10f1
	.byte	0x1
	.uleb128 0x10
	.long	0xa6
	.uleb128 0x10
	.long	0x3f
	.byte	0x0
	.uleb128 0xf
	.long	0x110b
	.byte	0x1
	.long	0x3f
	.uleb128 0x10
	.long	0x110b
	.uleb128 0x10
	.long	0xfe1
	.uleb128 0x10
	.long	0x3f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x1013
	.uleb128 0x5
	.byte	0x8
	.long	0x10f1
	.uleb128 0x1b
	.long	0x1123
	.byte	0x1
	.uleb128 0x10
	.long	0x110b
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x1117
	.uleb128 0xf
	.long	0x1143
	.byte	0x1
	.long	0x3f
	.uleb128 0x10
	.long	0x110b
	.uleb128 0x10
	.long	0x3f
	.uleb128 0x10
	.long	0xa6
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x1129
	.uleb128 0x5
	.byte	0x8
	.long	0x10d5
	.uleb128 0x5
	.byte	0x8
	.long	0xfec
	.uleb128 0x5
	.byte	0x8
	.long	0xfc0
	.uleb128 0x1b
	.long	0x116c
	.byte	0x1
	.uleb128 0x10
	.long	0x110b
	.uleb128 0x10
	.long	0x3f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x115b
	.uleb128 0x5
	.byte	0x8
	.long	0xfaf
	.uleb128 0x1c
	.long	0x11a5
	.byte	0x4
	.byte	0x17
	.byte	0x77
	.uleb128 0x1d
	.long	.LASF226
	.sleb128 0
	.uleb128 0x1d
	.long	.LASF227
	.sleb128 1
	.uleb128 0x1d
	.long	.LASF228
	.sleb128 2
	.uleb128 0x1d
	.long	.LASF229
	.sleb128 3
	.uleb128 0x1d
	.long	.LASF230
	.sleb128 4
	.uleb128 0x1d
	.long	.LASF231
	.sleb128 5
	.byte	0x0
	.uleb128 0x2
	.long	.LASF232
	.byte	0x17
	.byte	0x79
	.long	0x1178
	.uleb128 0xc
	.long	0x11f5
	.long	.LASF233
	.byte	0x18
	.byte	0x17
	.byte	0x7b
	.uleb128 0x9
	.long	.LASF234
	.byte	0x17
	.byte	0x7c
	.long	0x11f5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF235
	.byte	0x17
	.byte	0x7d
	.long	0x11a5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x15
	.string	"bus"
	.byte	0x17
	.byte	0x7e
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.long	.LASF236
	.byte	0x17
	.byte	0x7f
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xff7
	.uleb128 0x2
	.long	.LASF233
	.byte	0x17
	.byte	0x80
	.long	0x11b0
	.uleb128 0x2
	.long	.LASF237
	.byte	0x14
	.byte	0x7
	.long	0x1211
	.uleb128 0x5
	.byte	0x8
	.long	0x1217
	.uleb128 0x1b
	.long	0x122d
	.byte	0x1
	.uleb128 0x10
	.long	0x122d
	.uleb128 0x10
	.long	0x458
	.uleb128 0x10
	.long	0x458
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xfa3
	.uleb128 0x1e
	.long	0x125e
	.long	.LASF298
	.byte	0x4
	.byte	0x1
	.byte	0x35
	.uleb128 0x1d
	.long	.LASF238
	.sleb128 0
	.uleb128 0x1d
	.long	.LASF239
	.sleb128 1
	.uleb128 0x1d
	.long	.LASF240
	.sleb128 2
	.uleb128 0x1d
	.long	.LASF241
	.sleb128 3
	.uleb128 0x1d
	.long	.LASF242
	.sleb128 4
	.byte	0x0
	.uleb128 0x1f
	.long	0x12e1
	.long	.LASF243
	.value	0x2028
	.byte	0x1
	.byte	0x3c
	.uleb128 0x15
	.string	"env"
	.byte	0x1
	.byte	0x3d
	.long	0x122d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF244
	.byte	0x1
	.byte	0x3e
	.long	0x1233
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF245
	.byte	0x1
	.byte	0x3f
	.long	0x12e1
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.long	.LASF246
	.byte	0x1
	.byte	0x40
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x100c
	.uleb128 0x9
	.long	.LASF247
	.byte	0x1
	.byte	0x41
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x1010
	.uleb128 0x9
	.long	.LASF248
	.byte	0x1
	.byte	0x42
	.long	0x12f2
	.byte	0x3
	.byte	0x23
	.uleb128 0x1014
	.uleb128 0x9
	.long	.LASF249
	.byte	0x1
	.byte	0x43
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x2018
	.uleb128 0x15
	.string	"chr"
	.byte	0x1
	.byte	0x48
	.long	0x1303
	.byte	0x3
	.byte	0x23
	.uleb128 0x2020
	.byte	0x0
	.uleb128 0xa
	.long	0x12f2
	.long	0x74
	.uleb128 0x1a
	.long	0x5b
	.value	0xfff
	.byte	0x0
	.uleb128 0xa
	.long	0x1303
	.long	0x3bf
	.uleb128 0x1a
	.long	0x5b
	.value	0x1003
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x1008
	.uleb128 0x2
	.long	.LASF243
	.byte	0x1
	.byte	0x4a
	.long	0x125e
	.uleb128 0x1c
	.long	0x132f
	.byte	0x4
	.byte	0x1
	.byte	0x6b
	.uleb128 0x1d
	.long	.LASF250
	.sleb128 0
	.uleb128 0x1d
	.long	.LASF251
	.sleb128 1
	.uleb128 0x1d
	.long	.LASF252
	.sleb128 2
	.byte	0x0
	.uleb128 0x20
	.byte	0x1
	.long	.LASF299
	.byte	0x1
	.byte	0x74
	.byte	0x1
	.long	0x3f
	.quad	.LFB187
	.quad	.LFE187
	.byte	0x1
	.byte	0x57
	.uleb128 0x21
	.long	0x1392
	.long	.LASF253
	.byte	0x1
	.byte	0x7d
	.byte	0x1
	.quad	.LFB188
	.quad	.LFE188
	.byte	0x1
	.byte	0x57
	.uleb128 0x22
	.string	"s"
	.byte	0x1
	.byte	0x7c
	.long	0x1392
	.byte	0x1
	.byte	0x55
	.uleb128 0x22
	.string	"buf"
	.byte	0x1
	.byte	0x7c
	.long	0xfe1
	.byte	0x1
	.byte	0x54
	.uleb128 0x22
	.string	"len"
	.byte	0x1
	.byte	0x7c
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x1309
	.uleb128 0x21
	.long	0x143d
	.long	.LASF254
	.byte	0x1
	.byte	0xa5
	.byte	0x1
	.quad	.LFB191
	.quad	.LFE191
	.byte	0x1
	.byte	0x57
	.uleb128 0x22
	.string	"buf"
	.byte	0x1
	.byte	0xa4
	.long	0xa8
	.byte	0x1
	.byte	0x55
	.uleb128 0x22
	.string	"mem"
	.byte	0x1
	.byte	0xa4
	.long	0xfe1
	.byte	0x1
	.byte	0x54
	.uleb128 0x22
	.string	"len"
	.byte	0x1
	.byte	0xa4
	.long	0x3f
	.byte	0x1
	.byte	0x5b
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.byte	0xa6
	.long	0x3f
	.byte	0x1
	.byte	0x5a
	.uleb128 0x23
	.string	"c"
	.byte	0x1
	.byte	0xa6
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x23
	.string	"q"
	.byte	0x1
	.byte	0xa7
	.long	0xa8
	.byte	0x1
	.byte	0x58
	.uleb128 0x24
	.long	0x141f
	.long	0x143d
	.quad	.LBB2
	.quad	.LBE2
	.uleb128 0x25
	.long	0x144e
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x26
	.long	0x143d
	.quad	.LBB4
	.quad	.LBE4
	.uleb128 0x25
	.long	0x144e
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.long	0x1458
	.long	.LASF255
	.byte	0x1
	.byte	0x9d
	.byte	0x1
	.long	0x3f
	.byte	0x3
	.uleb128 0x28
	.string	"v"
	.byte	0x1
	.byte	0x9c
	.long	0x3f
	.byte	0x0
	.uleb128 0x21
	.long	0x14e7
	.long	.LASF256
	.byte	0x1
	.byte	0xb2
	.byte	0x1
	.quad	.LFB192
	.quad	.LFE192
	.byte	0x1
	.byte	0x57
	.uleb128 0x22
	.string	"mem"
	.byte	0x1
	.byte	0xb1
	.long	0x14e7
	.byte	0x1
	.byte	0x55
	.uleb128 0x22
	.string	"buf"
	.byte	0x1
	.byte	0xb1
	.long	0x69
	.byte	0x1
	.byte	0x54
	.uleb128 0x22
	.string	"len"
	.byte	0x1
	.byte	0xb1
	.long	0x3f
	.byte	0x1
	.byte	0x5a
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.byte	0xb3
	.long	0x3f
	.byte	0x1
	.byte	0x59
	.uleb128 0x24
	.long	0x14c9
	.long	0x14ed
	.quad	.LBB8
	.quad	.LBE8
	.uleb128 0x25
	.long	0x14fe
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x26
	.long	0x14ed
	.quad	.LBB10
	.quad	.LBE10
	.uleb128 0x25
	.long	0x14fe
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x3bf
	.uleb128 0x27
	.long	0x1508
	.long	.LASF257
	.byte	0x1
	.byte	0x91
	.byte	0x1
	.long	0x3f
	.byte	0x3
	.uleb128 0x28
	.string	"v"
	.byte	0x1
	.byte	0x90
	.long	0x3f
	.byte	0x0
	.uleb128 0x29
	.long	0x15b1
	.long	.LASF258
	.byte	0x1
	.byte	0xbd
	.byte	0x1
	.long	0x3f
	.quad	.LFB193
	.quad	.LFE193
	.byte	0x1
	.byte	0x57
	.uleb128 0x22
	.string	"s"
	.byte	0x1
	.byte	0xbc
	.long	0x1392
	.byte	0x1
	.byte	0x5e
	.uleb128 0x22
	.string	"buf"
	.byte	0x1
	.byte	0xbc
	.long	0xa8
	.byte	0x1
	.byte	0x5d
	.uleb128 0x23
	.string	"len"
	.byte	0x1
	.byte	0xbe
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.uleb128 0x2a
	.long	.LASF259
	.byte	0x1
	.byte	0xbe
	.long	0x3f
	.byte	0x1
	.byte	0x55
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.byte	0xbe
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x23
	.string	"p"
	.byte	0x1
	.byte	0xbf
	.long	0x14e7
	.byte	0x1
	.byte	0x5c
	.uleb128 0x24
	.long	0x1593
	.long	0x143d
	.quad	.LBB13
	.quad	.LBE13
	.uleb128 0x25
	.long	0x144e
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x26
	.long	0x143d
	.quad	.LBB16
	.quad	.LBE16
	.uleb128 0x25
	.long	0x144e
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.long	0x1614
	.long	.LASF260
	.byte	0x1
	.value	0x43a
	.byte	0x1
	.quad	.LFB197
	.quad	.LFE197
	.byte	0x1
	.byte	0x57
	.uleb128 0x2c
	.long	.LASF191
	.byte	0x1
	.value	0x439
	.long	0xa6
	.byte	0x1
	.byte	0x56
	.uleb128 0x2c
	.long	.LASF261
	.byte	0x1
	.value	0x439
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.uleb128 0x2d
	.string	"s"
	.byte	0x1
	.value	0x43b
	.long	0x1392
	.uleb128 0x2e
	.string	"buf"
	.byte	0x1
	.value	0x43c
	.long	0x1614
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"ret"
	.byte	0x1
	.value	0x43d
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.uleb128 0xa
	.long	0x1624
	.long	0x74
	.uleb128 0xb
	.long	0x5b
	.byte	0xff
	.byte	0x0
	.uleb128 0x2f
	.long	0x16c3
	.byte	0x1
	.long	.LASF279
	.byte	0x1
	.value	0x460
	.byte	0x1
	.quad	.LFB198
	.quad	.LFE198
	.byte	0x1
	.byte	0x57
	.uleb128 0x30
	.string	"cb"
	.byte	0x1
	.value	0x45f
	.long	0x1206
	.byte	0x1
	.byte	0x55
	.uleb128 0x30
	.string	"fmt"
	.byte	0x1
	.value	0x45f
	.long	0xa8
	.byte	0x1
	.byte	0x53
	.uleb128 0x31
	.uleb128 0x2e
	.string	"va"
	.byte	0x1
	.value	0x461
	.long	0x3b4
	.byte	0x3
	.byte	0x91
	.sleb128 256
	.uleb128 0x2e
	.string	"buf"
	.byte	0x1
	.value	0x462
	.long	0x1614
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"p"
	.byte	0x1
	.value	0x463
	.long	0xa8
	.byte	0x1
	.byte	0x56
	.uleb128 0x32
	.long	.LASF262
	.byte	0x1
	.value	0x464
	.long	0x458
	.byte	0x1
	.byte	0x51
	.uleb128 0x2e
	.string	"i64"
	.byte	0x1
	.value	0x465
	.long	0x3e0
	.byte	0x1
	.byte	0x51
	.uleb128 0x2e
	.string	"s"
	.byte	0x1
	.value	0x466
	.long	0x1392
	.byte	0x1
	.byte	0x5c
	.uleb128 0x33
	.long	.LASF272
	.byte	0x1
	.value	0x487
	.quad	.L78
	.byte	0x0
	.uleb128 0x34
	.long	0x16f5
	.long	.LASF263
	.byte	0x1
	.value	0x56e
	.byte	0x1
	.long	0x3f
	.quad	.LFB200
	.quad	.LFE200
	.byte	0x1
	.byte	0x57
	.uleb128 0x2c
	.long	.LASF191
	.byte	0x1
	.value	0x56d
	.long	0xa6
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x2b
	.long	0x1955
	.long	.LASF264
	.byte	0x1
	.value	0x573
	.byte	0x1
	.quad	.LFB201
	.quad	.LFE201
	.byte	0x1
	.byte	0x57
	.uleb128 0x2c
	.long	.LASF191
	.byte	0x1
	.value	0x572
	.long	0xa6
	.byte	0x1
	.byte	0x56
	.uleb128 0x30
	.string	"buf"
	.byte	0x1
	.value	0x572
	.long	0xfe1
	.byte	0x1
	.byte	0x5f
	.uleb128 0x2c
	.long	.LASF265
	.byte	0x1
	.value	0x572
	.long	0x3f
	.byte	0x1
	.byte	0x5e
	.uleb128 0x2d
	.string	"s"
	.byte	0x1
	.value	0x574
	.long	0x1392
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.value	0x575
	.long	0x3f
	.byte	0x1
	.byte	0x5d
	.uleb128 0x24
	.long	0x179d
	.long	0x1955
	.quad	.LBB21
	.quad	.LBE21
	.uleb128 0x35
	.long	0x1963
	.uleb128 0x25
	.long	0x196d
	.byte	0x1
	.byte	0x53
	.uleb128 0x36
	.long	.Ldebug_ranges0+0x0
	.uleb128 0x37
	.long	0x1978
	.byte	0x1
	.byte	0x5c
	.uleb128 0x37
	.long	0x1984
	.byte	0x1
	.byte	0x52
	.uleb128 0x37
	.long	0x198e
	.byte	0x1
	.byte	0x54
	.uleb128 0x37
	.long	0x199a
	.byte	0x2
	.byte	0x91
	.sleb128 63
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
	.long	0x17bc
	.long	0x14ed
	.quad	.LBB27
	.quad	.LBE27
	.uleb128 0x35
	.long	0x14fe
	.byte	0x0
	.uleb128 0x24
	.long	0x17db
	.long	0x14ed
	.quad	.LBB39
	.quad	.LBE39
	.uleb128 0x35
	.long	0x14fe
	.byte	0x0
	.uleb128 0x24
	.long	0x1853
	.long	0x19a7
	.quad	.LBB47
	.quad	.LBE47
	.uleb128 0x35
	.long	0x19b9
	.uleb128 0x35
	.long	0x19c3
	.uleb128 0x35
	.long	0x19cf
	.uleb128 0x36
	.long	.Ldebug_ranges0+0xb0
	.uleb128 0x37
	.long	0x19db
	.byte	0x2
	.byte	0x91
	.sleb128 48
	.uleb128 0x37
	.long	0x19e5
	.byte	0x1
	.byte	0x50
	.uleb128 0x38
	.long	0x19f0
	.uleb128 0x37
	.long	0x19fc
	.byte	0x1
	.byte	0x53
	.uleb128 0x37
	.long	0x1a08
	.byte	0x3
	.byte	0x91
	.sleb128 4160
	.uleb128 0x37
	.long	0x1a14
	.byte	0x3
	.byte	0x91
	.sleb128 64
	.uleb128 0x38
	.long	0x1a20
	.uleb128 0x38
	.long	0x1a2c
	.uleb128 0x38
	.long	0x1a38
	.uleb128 0x39
	.long	0x1a44
	.quad	.L201
	.byte	0x0
	.byte	0x0
	.uleb128 0x3a
	.long	0x186b
	.long	.Ldebug_ranges0+0x100
	.uleb128 0x37
	.long	0x1a4d
	.byte	0x1
	.byte	0x5c
	.uleb128 0x37
	.long	0x1a59
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x24
	.long	0x18b2
	.long	0x1a7e
	.quad	.LBB56
	.quad	.LBE56
	.uleb128 0x35
	.long	0x1a8f
	.uleb128 0x35
	.long	0x1a9a
	.uleb128 0x3b
	.quad	.LBB57
	.quad	.LBE57
	.uleb128 0x37
	.long	0x1aa5
	.byte	0x1
	.byte	0x52
	.uleb128 0x38
	.long	0x1aae
	.uleb128 0x38
	.long	0x1ab9
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.long	0x1ac5
	.quad	.LBB59
	.quad	.LBE59
	.uleb128 0x35
	.long	0x1ad3
	.uleb128 0x35
	.long	0x1adf
	.uleb128 0x35
	.long	0x1aeb
	.uleb128 0x3b
	.quad	.LBB60
	.quad	.LBE60
	.uleb128 0x38
	.long	0x1af7
	.uleb128 0x37
	.long	0x1b03
	.byte	0x1
	.byte	0x52
	.uleb128 0x24
	.long	0x1914
	.long	0x1b0e
	.quad	.LBB61
	.quad	.LBE61
	.uleb128 0x25
	.long	0x1b1f
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x24
	.long	0x1935
	.long	0x1b0e
	.quad	.LBB62
	.quad	.LBE62
	.uleb128 0x25
	.long	0x1b1f
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x26
	.long	0x1b0e
	.quad	.LBB63
	.quad	.LBE63
	.uleb128 0x25
	.long	0x1b1f
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3c
	.long	0x19a7
	.long	.LASF266
	.byte	0x1
	.value	0x49b
	.byte	0x1
	.byte	0x1
	.uleb128 0x3d
	.string	"s"
	.byte	0x1
	.value	0x49a
	.long	0x1392
	.uleb128 0x3d
	.string	"ch"
	.byte	0x1
	.value	0x49a
	.long	0x3f
	.uleb128 0x2d
	.string	"env"
	.byte	0x1
	.value	0x49c
	.long	0x122d
	.uleb128 0x2d
	.string	"i"
	.byte	0x1
	.value	0x49d
	.long	0x3f
	.uleb128 0x3e
	.long	.LASF259
	.byte	0x1
	.value	0x49d
	.long	0x3f
	.uleb128 0x3e
	.long	.LASF267
	.byte	0x1
	.value	0x49e
	.long	0x3bf
	.byte	0x0
	.uleb128 0x3f
	.long	0x1a67
	.long	.LASF268
	.byte	0x1
	.value	0x368
	.byte	0x1
	.long	0x3f
	.byte	0x1
	.uleb128 0x3d
	.string	"s"
	.byte	0x1
	.value	0x367
	.long	0x1392
	.uleb128 0x3d
	.string	"env"
	.byte	0x1
	.value	0x367
	.long	0x122d
	.uleb128 0x40
	.long	.LASF245
	.byte	0x1
	.value	0x367
	.long	0x69
	.uleb128 0x2d
	.string	"p"
	.byte	0x1
	.value	0x369
	.long	0x69
	.uleb128 0x2d
	.string	"ch"
	.byte	0x1
	.value	0x36a
	.long	0x3f
	.uleb128 0x3e
	.long	.LASF269
	.byte	0x1
	.value	0x36a
	.long	0x3f
	.uleb128 0x3e
	.long	.LASF235
	.byte	0x1
	.value	0x36a
	.long	0x3f
	.uleb128 0x2d
	.string	"buf"
	.byte	0x1
	.value	0x36b
	.long	0x12e1
	.uleb128 0x3e
	.long	.LASF270
	.byte	0x1
	.value	0x36c
	.long	0x1a67
	.uleb128 0x3e
	.long	.LASF271
	.byte	0x1
	.value	0x36d
	.long	0x1a78
	.uleb128 0x3e
	.long	.LASF262
	.byte	0x1
	.value	0x36e
	.long	0x458
	.uleb128 0x2d
	.string	"len"
	.byte	0x1
	.value	0x36e
	.long	0x458
	.uleb128 0x41
	.long	.LASF273
	.byte	0x1
	.value	0x404
	.uleb128 0x42
	.uleb128 0x2d
	.string	"ret"
	.byte	0x1
	.value	0x3b2
	.long	0x458
	.uleb128 0x2d
	.string	"err"
	.byte	0x1
	.value	0x3b3
	.long	0x458
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.long	0x1a78
	.long	0x3bf
	.uleb128 0x1a
	.long	0x5b
	.value	0xfff
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x3d5
	.uleb128 0x27
	.long	0x1ac5
	.long	.LASF274
	.byte	0x1
	.byte	0xe6
	.byte	0x1
	.long	0x3f
	.byte	0x1
	.uleb128 0x28
	.string	"env"
	.byte	0x1
	.byte	0xe5
	.long	0x122d
	.uleb128 0x43
	.long	.LASF270
	.byte	0x1
	.byte	0xe5
	.long	0x14e7
	.uleb128 0x44
	.string	"i"
	.byte	0x1
	.byte	0xe7
	.long	0x3f
	.uleb128 0x45
	.long	.LASF145
	.byte	0x1
	.byte	0xe7
	.long	0x3f
	.uleb128 0x45
	.long	.LASF271
	.byte	0x1
	.byte	0xe8
	.long	0x1a78
	.byte	0x0
	.uleb128 0x3c
	.long	0x1b0e
	.long	.LASF275
	.byte	0x1
	.value	0x13b
	.byte	0x1
	.byte	0x1
	.uleb128 0x3d
	.string	"env"
	.byte	0x1
	.value	0x13a
	.long	0x122d
	.uleb128 0x40
	.long	.LASF270
	.byte	0x1
	.value	0x13a
	.long	0x14e7
	.uleb128 0x40
	.long	.LASF265
	.byte	0x1
	.value	0x13a
	.long	0x3f
	.uleb128 0x3e
	.long	.LASF271
	.byte	0x1
	.value	0x13c
	.long	0x1a78
	.uleb128 0x2d
	.string	"i"
	.byte	0x1
	.value	0x13d
	.long	0x3f
	.byte	0x0
	.uleb128 0x27
	.long	0x1b29
	.long	.LASF276
	.byte	0x2
	.byte	0x56
	.byte	0x1
	.long	0x3d5
	.byte	0x3
	.uleb128 0x28
	.string	"s"
	.byte	0x2
	.byte	0x55
	.long	0x3d5
	.byte	0x0
	.uleb128 0x2b
	.long	0x1b65
	.long	.LASF277
	.byte	0x1
	.value	0x57d
	.byte	0x1
	.quad	.LFB202
	.quad	.LFE202
	.byte	0x1
	.byte	0x57
	.uleb128 0x2c
	.long	.LASF191
	.byte	0x1
	.value	0x57c
	.long	0xa6
	.byte	0x1
	.byte	0x53
	.uleb128 0x2c
	.long	.LASF278
	.byte	0x1
	.value	0x57c
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0x46
	.long	0x1bda
	.byte	0x1
	.long	.LASF280
	.byte	0x1
	.value	0x589
	.byte	0x1
	.long	0x3f
	.quad	.LFB203
	.quad	.LFE203
	.byte	0x1
	.byte	0x57
	.uleb128 0x2c
	.long	.LASF281
	.byte	0x1
	.value	0x588
	.long	0x69
	.byte	0x1
	.byte	0x53
	.uleb128 0x2e
	.string	"s"
	.byte	0x1
	.value	0x58a
	.long	0x1392
	.byte	0x1
	.byte	0x53
	.uleb128 0x32
	.long	.LASF282
	.byte	0x1
	.value	0x58b
	.long	0x1bda
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x3e
	.long	.LASF283
	.byte	0x1
	.value	0x58c
	.long	0x3f
	.uleb128 0x2e
	.string	"p"
	.byte	0x1
	.value	0x58d
	.long	0xa8
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2e
	.string	"chr"
	.byte	0x1
	.value	0x58e
	.long	0x1303
	.byte	0x1
	.byte	0x56
	.byte	0x0
	.uleb128 0xa
	.long	0x1bea
	.long	0x74
	.uleb128 0xb
	.long	0x5b
	.byte	0x7f
	.byte	0x0
	.uleb128 0x47
	.long	.LASF284
	.byte	0x9
	.byte	0x91
	.long	0x378
	.byte	0x1
	.byte	0x1
	.uleb128 0x47
	.long	.LASF285
	.byte	0x9
	.byte	0x92
	.long	0x378
	.byte	0x1
	.byte	0x1
	.uleb128 0x47
	.long	.LASF286
	.byte	0x9
	.byte	0x93
	.long	0x378
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.long	.LASF287
	.byte	0x2
	.value	0x32b
	.long	0x122d
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.long	.LASF288
	.byte	0x2
	.value	0x376
	.long	0x14e7
	.byte	0x1
	.byte	0x1
	.uleb128 0x47
	.long	.LASF289
	.byte	0x17
	.byte	0x9
	.long	0x3f
	.byte	0x1
	.byte	0x1
	.uleb128 0x49
	.long	.LASF290
	.byte	0x17
	.byte	0x86
	.long	0x3f
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	nb_drives
	.uleb128 0xa
	.long	0x1c60
	.long	0x11fb
	.uleb128 0xb
	.long	0x5b
	.byte	0x20
	.byte	0x0
	.uleb128 0x49
	.long	.LASF291
	.byte	0x17
	.byte	0x87
	.long	0x1c50
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	drives_table
	.uleb128 0x2a
	.long	.LASF292
	.byte	0x1
	.byte	0x68
	.long	0x1392
	.byte	0x9
	.byte	0x3
	.quad	gdb_syscall_state
	.uleb128 0x2a
	.long	.LASF293
	.byte	0x1
	.byte	0x69
	.long	0x1206
	.byte	0x9
	.byte	0x3
	.quad	gdb_current_syscall_cb
	.uleb128 0x49
	.long	.LASF294
	.byte	0x1
	.byte	0x6f
	.long	0x1314
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	gdb_syscall_mode
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
	.uleb128 0x10
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x27
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
	.uleb128 0x4
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
	.uleb128 0x1d
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
	.uleb128 0x18
	.byte	0x0
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x34
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
	.uleb128 0x35
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.uleb128 0xa
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x3a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.uleb128 0x3f
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
	.uleb128 0x40
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
	.uleb128 0x41
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
	.uleb128 0x42
	.uleb128 0xb
	.byte	0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x43
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
	.uleb128 0x44
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
	.uleb128 0x45
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
	.uleb128 0x46
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
	.uleb128 0x47
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
	.uleb128 0x48
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
	.uleb128 0x49
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
	.long	0x7e
	.value	0x2
	.long	.Ldebug_info0
	.long	0x1cb7
	.long	0x132f
	.string	"use_gdb_syscalls"
	.long	0x1624
	.string	"gdb_do_syscall"
	.long	0x1b65
	.string	"gdbserver_start"
	.long	0x1c3a
	.string	"nb_drives"
	.long	0x1c60
	.string	"drives_table"
	.long	0x1ca0
	.string	"gdb_syscall_mode"
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
	.quad	.LBB22-.Ltext0
	.quad	.LBE22-.Ltext0
	.quad	.LBB44-.Ltext0
	.quad	.LBE44-.Ltext0
	.quad	.LBB42-.Ltext0
	.quad	.LBE42-.Ltext0
	.quad	.LBB38-.Ltext0
	.quad	.LBE38-.Ltext0
	.quad	.LBB36-.Ltext0
	.quad	.LBE36-.Ltext0
	.quad	.LBB32-.Ltext0
	.quad	.LBE32-.Ltext0
	.quad	.LBB30-.Ltext0
	.quad	.LBE30-.Ltext0
	.quad	.LBB26-.Ltext0
	.quad	.LBE26-.Ltext0
	.quad	.LBB24-.Ltext0
	.quad	.LBE24-.Ltext0
	.quad	.LBB23-.Ltext0
	.quad	.LBE23-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB48-.Ltext0
	.quad	.LBE48-.Ltext0
	.quad	.LBB66-.Ltext0
	.quad	.LBE66-.Ltext0
	.quad	.LBB54-.Ltext0
	.quad	.LBE54-.Ltext0
	.quad	.LBB50-.Ltext0
	.quad	.LBE50-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB55-.Ltext0
	.quad	.LBE55-.Ltext0
	.quad	.LBB69-.Ltext0
	.quad	.LBE69-.Ltext0
	.quad	.LBB68-.Ltext0
	.quad	.LBE68-.Ltext0
	.quad	.LBB67-.Ltext0
	.quad	.LBE67-.Ltext0
	.quad	.LBB64-.Ltext0
	.quad	.LBE64-.Ltext0
	.quad	.LBB58-.Ltext0
	.quad	.LBE58-.Ltext0
	.quad	0x0
	.quad	0x0
	.section	.debug_str,"MS",@progbits,1
.LASF192:
	.string	"cpu_model_str"
.LASF278:
	.string	"event"
.LASF46:
	.string	"_unused2"
.LASF258:
	.string	"put_packet"
.LASF203:
	.string	"cpuid_ext3_features"
.LASF254:
	.string	"memtohex"
.LASF32:
	.string	"_fileno"
.LASF103:
	.string	"stop_condition"
.LASF68:
	.string	"__saved_mask"
.LASF173:
	.string	"exception_next_eip"
.LASF209:
	.string	"QEMUBH"
.LASF79:
	.string	"float32"
.LASF190:
	.string	"cpu_index"
.LASF62:
	.string	"uint32_t"
.LASF142:
	.string	"fpip"
.LASF94:
	.string	"argos_paddr_t"
.LASF201:
	.string	"cpuid_model"
.LASF270:
	.string	"mem_buf"
.LASF26:
	.string	"_IO_buf_end"
.LASF233:
	.string	"DriveInfo"
.LASF37:
	.string	"_shortbuf"
.LASF240:
	.string	"RS_CHKSUM1"
.LASF277:
	.string	"gdb_chr_event"
.LASF263:
	.string	"gdb_chr_can_receive"
.LASF231:
	.string	"IF_SD"
.LASF76:
	.string	"addend"
.LASF171:
	.string	"error_code"
.LASF18:
	.string	"_flags"
.LASF180:
	.string	"mem_write_vaddr"
.LASF53:
	.string	"reg_save_area"
.LASF273:
	.string	"breakpoint_error"
.LASF151:
	.string	"sse_status"
.LASF245:
	.string	"line_buf"
.LASF234:
	.string	"bdrv"
.LASF38:
	.string	"_lock"
.LASF285:
	.string	"stdout"
.LASF132:
	.string	"t1tag"
.LASF12:
	.string	"int32_t"
.LASF133:
	.string	"t2tag"
.LASF119:
	.string	"load_addr_type"
.LASF226:
	.string	"IF_IDE"
.LASF298:
	.string	"RSState"
.LASF175:
	.string	"interrupt_request"
.LASF24:
	.string	"_IO_write_end"
.LASF218:
	.string	"chr_can_read"
.LASF261:
	.string	"reason"
.LASF181:
	.string	"tlb_table"
.LASF116:
	.string	"load_value"
.LASF14:
	.string	"__sigset_t"
.LASF136:
	.string	"cc_src"
.LASF129:
	.string	"regs"
.LASF110:
	.string	"storedby_eip"
.LASF297:
	.string	"/home/remco/Projects/Argos/src/i386-softmmu"
.LASF15:
	.string	"long long unsigned int"
.LASF128:
	.string	"CPUX86State"
.LASF158:
	.string	"sysenter_eip"
.LASF235:
	.string	"type"
.LASF232:
	.string	"BlockInterfaceType"
.LASF143:
	.string	"prev_fpip"
.LASF125:
	.string	"store_size"
.LASF146:
	.string	"fpuc"
.LASF145:
	.string	"fpus"
.LASF47:
	.string	"__gnuc_va_list"
.LASF104:
	.string	"logfile"
.LASF31:
	.string	"_chain"
.LASF65:
	.string	"__jmp_buf_tag"
.LASF134:
	.string	"regtags"
.LASF6:
	.string	"unsigned char"
.LASF144:
	.string	"fpstt"
.LASF54:
	.string	"_IO_lock_t"
.LASF280:
	.string	"gdbserver_start"
.LASF139:
	.string	"hflags"
.LASF77:
	.string	"float"
.LASF3:
	.string	"long long int"
.LASF148:
	.string	"fpregs"
.LASF279:
	.string	"gdb_do_syscall"
.LASF217:
	.string	"chr_event"
.LASF220:
	.string	"handler_opaque"
.LASF141:
	.string	"a20_mask"
.LASF118:
	.string	"load_addr"
.LASF172:
	.string	"exception_is_int"
.LASF74:
	.string	"addr_write"
.LASF86:
	.string	"CPU86_LDouble"
.LASF63:
	.string	"uint64_t"
.LASF71:
	.string	"target_phys_addr_t"
.LASF284:
	.string	"stdin"
.LASF115:
	.string	"instruction_netidx"
.LASF299:
	.string	"use_gdb_syscalls"
.LASF219:
	.string	"chr_read"
.LASF185:
	.string	"singlestep_enabled"
.LASF99:
	.string	"netidx"
.LASF272:
	.string	"bad_format"
.LASF205:
	.string	"envmap"
.LASF97:
	.string	"argos_rtag"
.LASF59:
	.string	"va_list"
.LASF111:
	.string	"executed_eip"
.LASF265:
	.string	"size"
.LASF250:
	.string	"GDB_SYS_UNKNOWN"
.LASF16:
	.string	"FILE"
.LASF253:
	.string	"put_buffer"
.LASF152:
	.string	"mxcsr"
.LASF157:
	.string	"sysenter_esp"
.LASF267:
	.string	"reply"
.LASF9:
	.string	"size_t"
.LASF256:
	.string	"hextomem"
.LASF198:
	.string	"cpuid_features"
.LASF222:
	.string	"chr_close"
.LASF163:
	.string	"intercept"
.LASF165:
	.string	"intercept_cr_write"
.LASF27:
	.string	"_IO_save_base"
.LASF262:
	.string	"addr"
.LASF189:
	.string	"next_cpu"
.LASF127:
	.string	"vaddr"
.LASF102:
	.string	"running"
.LASF80:
	.string	"float64"
.LASF23:
	.string	"_IO_write_ptr"
.LASF95:
	.string	"argos_netidx_t"
.LASF216:
	.string	"chr_ioctl"
.LASF178:
	.string	"current_tb"
.LASF113:
	.string	"instruction_size"
.LASF41:
	.string	"__pad2"
.LASF42:
	.string	"__pad3"
.LASF44:
	.string	"__pad5"
.LASF162:
	.string	"vm_vmcb"
.LASF186:
	.string	"watchpoint"
.LASF291:
	.string	"drives_table"
.LASF11:
	.string	"__off64_t"
.LASF109:
	.string	"loadedby_eip"
.LASF84:
	.string	"float_rounding_mode"
.LASF225:
	.string	"IOEventHandler"
.LASF56:
	.string	"_next"
.LASF137:
	.string	"cc_dst"
.LASF153:
	.string	"xmm_regs"
.LASF122:
	.string	"store_value_netidx"
.LASF271:
	.string	"registers"
.LASF124:
	.string	"store_addr_type"
.LASF10:
	.string	"__off_t"
.LASF169:
	.string	"jmp_env"
.LASF204:
	.string	"cpuid_apic_id"
.LASF93:
	.string	"MMXReg"
.LASF179:
	.string	"mem_write_pc"
.LASF57:
	.string	"_sbuf"
.LASF29:
	.string	"_IO_save_end"
.LASF87:
	.string	"SegmentCache"
.LASF236:
	.string	"unit"
.LASF159:
	.string	"efer"
.LASF257:
	.string	"fromhex"
.LASF50:
	.string	"gp_offset"
.LASF49:
	.string	"__va_list_tag"
.LASF246:
	.string	"line_buf_index"
.LASF4:
	.string	"short unsigned int"
.LASF138:
	.string	"cc_op"
.LASF7:
	.string	"signed char"
.LASF105:
	.string	"instruction_cnt"
.LASF199:
	.string	"cpuid_ext_features"
.LASF200:
	.string	"cpuid_xlevel"
.LASF85:
	.string	"floatx80_rounding_precision"
.LASF164:
	.string	"intercept_cr_read"
.LASF188:
	.string	"watchpoint_hit"
.LASF21:
	.string	"_IO_read_base"
.LASF39:
	.string	"_offset"
.LASF81:
	.string	"floatx80"
.LASF283:
	.string	"port_num"
.LASF244:
	.string	"state"
.LASF249:
	.string	"last_packet_len"
.LASF161:
	.string	"vm_hsave"
.LASF184:
	.string	"nb_breakpoints"
.LASF114:
	.string	"logged"
.LASF177:
	.string	"old_exception"
.LASF45:
	.string	"_mode"
.LASF22:
	.string	"_IO_write_base"
.LASF92:
	.string	"XMMReg"
.LASF66:
	.string	"__jmpbuf"
.LASF155:
	.string	"mmx_t0"
.LASF294:
	.string	"gdb_syscall_mode"
.LASF183:
	.string	"breakpoints"
.LASF260:
	.string	"gdb_vm_stopped"
.LASF215:
	.string	"chr_update_read_handler"
.LASF176:
	.string	"user_mode_only"
.LASF227:
	.string	"IF_SCSI"
.LASF2:
	.string	"long int"
.LASF211:
	.string	"IOCanRWHandler"
.LASF106:
	.string	"instruction_stage"
.LASF168:
	.string	"intercept_exceptions"
.LASF131:
	.string	"t0tag"
.LASF67:
	.string	"__mask_was_saved"
.LASF55:
	.string	"_IO_marker"
.LASF90:
	.string	"limit"
.LASF210:
	.string	"IOReadHandler"
.LASF191:
	.string	"opaque"
.LASF20:
	.string	"_IO_read_end"
.LASF268:
	.string	"gdb_handle_packet"
.LASF221:
	.string	"chr_send_event"
.LASF60:
	.string	"uint8_t"
.LASF264:
	.string	"gdb_chr_receive"
.LASF140:
	.string	"segs"
.LASF193:
	.string	"cpuid_level"
.LASF276:
	.string	"tswap32"
.LASF207:
	.string	"TranslationBlock"
.LASF208:
	.string	"APICState"
.LASF83:
	.string	"float_status"
.LASF82:
	.string	"long double"
.LASF212:
	.string	"BlockDriverState"
.LASF117:
	.string	"load_value_netidx"
.LASF0:
	.string	"long unsigned int"
.LASF150:
	.string	"fp_convert"
.LASF295:
	.string	"GNU C 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
.LASF242:
	.string	"RS_SYSCALL"
.LASF229:
	.string	"IF_PFLASH"
.LASF5:
	.string	"char"
.LASF287:
	.string	"first_cpu"
.LASF34:
	.string	"_old_offset"
.LASF237:
	.string	"gdb_syscall_complete_cb"
.LASF25:
	.string	"_IO_buf_base"
.LASF290:
	.string	"nb_drives"
.LASF156:
	.string	"sysenter_cs"
.LASF296:
	.string	"/home/remco/Projects/Argos/src/gdbstub.c"
.LASF123:
	.string	"store_addr"
.LASF101:
	.string	"argos_shellcode_context_s"
.LASF126:
	.string	"argos_shellcode_context_t"
.LASF48:
	.string	"_IO_FILE"
.LASF100:
	.string	"argos_rtag_t"
.LASF167:
	.string	"intercept_dr_write"
.LASF107:
	.string	"trace_stage"
.LASF228:
	.string	"IF_FLOPPY"
.LASF206:
	.string	"apic_state"
.LASF213:
	.string	"CharDriverState"
.LASF40:
	.string	"__pad1"
.LASF43:
	.string	"__pad4"
.LASF248:
	.string	"last_packet"
.LASF30:
	.string	"_markers"
.LASF58:
	.string	"_pos"
.LASF13:
	.string	"int64_t"
.LASF247:
	.string	"line_csum"
.LASF78:
	.string	"double"
.LASF166:
	.string	"intercept_dr_read"
.LASF75:
	.string	"addr_code"
.LASF52:
	.string	"overflow_arg_area"
.LASF223:
	.string	"chr_accept_input"
.LASF259:
	.string	"csum"
.LASF230:
	.string	"IF_MTD"
.LASF120:
	.string	"load_size"
.LASF149:
	.string	"fp_status"
.LASF286:
	.string	"stderr"
.LASF214:
	.string	"chr_write"
.LASF239:
	.string	"RS_GETLINE"
.LASF51:
	.string	"fp_offset"
.LASF89:
	.string	"base"
.LASF275:
	.string	"cpu_gdb_write_registers"
.LASF202:
	.string	"cpuid_ext2_features"
.LASF266:
	.string	"gdb_read_byte"
.LASF147:
	.string	"fptags"
.LASF182:
	.string	"tb_jmp_cache"
.LASF35:
	.string	"_cur_column"
.LASF135:
	.string	"shellcode_context"
.LASF252:
	.string	"GDB_SYS_DISABLED"
.LASF197:
	.string	"cpuid_version"
.LASF282:
	.string	"gdbstub_port_name"
.LASF28:
	.string	"_IO_backup_base"
.LASF224:
	.string	"focus"
.LASF19:
	.string	"_IO_read_ptr"
.LASF269:
	.string	"reg_size"
.LASF187:
	.string	"nb_watchpoints"
.LASF108:
	.string	"is_system_call"
.LASF72:
	.string	"CPUTLBEntry"
.LASF61:
	.string	"uint16_t"
.LASF154:
	.string	"xmm_t0"
.LASF281:
	.string	"port"
.LASF33:
	.string	"_flags2"
.LASF130:
	.string	"eflags"
.LASF288:
	.string	"phys_ram_dirty"
.LASF255:
	.string	"tohex"
.LASF243:
	.string	"GDBState"
.LASF251:
	.string	"GDB_SYS_ENABLED"
.LASF292:
	.string	"gdb_syscall_state"
.LASF293:
	.string	"gdb_current_syscall_cb"
.LASF96:
	.string	"argos_bytemap_t"
.LASF98:
	.string	"origin"
.LASF121:
	.string	"store_value"
.LASF70:
	.string	"target_ulong"
.LASF289:
	.string	"vm_running"
.LASF238:
	.string	"RS_IDLE"
.LASF17:
	.string	"__val"
.LASF1:
	.string	"unsigned int"
.LASF174:
	.string	"smbase"
.LASF69:
	.string	"jmp_buf"
.LASF274:
	.string	"cpu_gdb_read_registers"
.LASF241:
	.string	"RS_CHKSUM2"
.LASF112:
	.string	"instruction"
.LASF8:
	.string	"short int"
.LASF194:
	.string	"cpuid_vendor1"
.LASF195:
	.string	"cpuid_vendor2"
.LASF196:
	.string	"cpuid_vendor3"
.LASF64:
	.string	"__jmp_buf"
.LASF36:
	.string	"_vtable_offset"
.LASF170:
	.string	"exception_index"
.LASF73:
	.string	"addr_read"
.LASF160:
	.string	"star"
.LASF91:
	.string	"flags"
.LASF88:
	.string	"selector"
	.section	.note.GNU-stack,"",@progbits
	.ident	"GCC: (GNU) 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
