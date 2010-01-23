	.file	"ossaudio.c"
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
	.string	"oss"
.LC1:
	.string	"OSS http://www.opensound.com"
.globl oss_audio_driver
	.data
	.align 32
	.type	oss_audio_driver, @object
	.size	oss_audio_driver, 72
oss_audio_driver:
	.quad	.LC0
	.quad	.LC1
	.quad	oss_options
	.quad	oss_audio_init
	.quad	oss_audio_fini
	.quad	oss_pcm_ops
	.long	1
	.long	2147483647
	.long	2147483647
	.long	152
	.long	136
	.zero	4
	.align 32
	.type	oss_pcm_ops, @object
	.size	oss_pcm_ops, 80
oss_pcm_ops:
	.quad	oss_init_out
	.quad	oss_fini_out
	.quad	oss_run_out
	.quad	oss_write
	.quad	oss_ctl_out
	.quad	oss_init_in
	.quad	oss_fini_in
	.quad	oss_run_in
	.quad	oss_read
	.quad	oss_ctl_in
	.section	.rodata.str1.1
.LC2:
	.string	"FRAGSIZE"
.LC3:
	.string	"Fragment size in bytes"
.LC4:
	.string	"NFRAGS"
.LC5:
	.string	"Number of fragments"
.LC6:
	.string	"MMAP"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC7:
	.string	"Try using memory mapped access"
	.section	.rodata.str1.1
.LC8:
	.string	"DAC_DEV"
.LC9:
	.string	"Path to DAC device"
.LC10:
	.string	"ADC_DEV"
.LC11:
	.string	"Path to ADC device"
.LC12:
	.string	"DEBUG"
	.section	.rodata.str1.8
	.align 8
.LC13:
	.string	"Turn on some debugging messages"
	.data
	.align 32
	.type	oss_options, @object
	.size	oss_options, 336
oss_options:
	.quad	.LC2
	.long	0
	.zero	4
	.quad	conf+8
	.quad	.LC3
	.quad	0
	.long	0
	.zero	4
	.quad	.LC4
	.long	0
	.zero	4
	.quad	conf+4
	.quad	.LC5
	.quad	0
	.long	0
	.zero	4
	.quad	.LC6
	.long	3
	.zero	4
	.quad	conf
	.quad	.LC7
	.quad	0
	.long	0
	.zero	4
	.quad	.LC8
	.long	2
	.zero	4
	.quad	conf+16
	.quad	.LC9
	.quad	0
	.long	0
	.zero	4
	.quad	.LC10
	.long	2
	.zero	4
	.quad	conf+24
	.quad	.LC11
	.quad	0
	.long	0
	.zero	4
	.quad	.LC12
	.long	3
	.zero	4
	.quad	conf+32
	.quad	.LC13
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.zero	4
	.section	.rodata.str1.1
.LC14:
	.string	"/dev/dsp"
	.data
	.align 32
	.type	conf, @object
	.size	conf, 40
conf:
	.long	0
	.long	4
	.long	4096
	.zero	4
	.quad	.LC14
	.quad	.LC14
	.long	0
	.zero	4
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
	.type	ldebug, @function
ldebug:
.LFB100:
	.loc 1 263 0
	movzbl	%al, %edx 
	subq	$64, %rsp
.LCFI1:
	.loc 1 263 0
	leaq	0(,%rdx,4), %rax
	movl	$.L4, %edx
	subq	%rax, %rdx
	leaq	55(%rsp), %rax
	jmp	*%rdx
	movaps	%xmm7, -15(%rax)
	movaps	%xmm6, -31(%rax)
	movaps	%xmm5, -47(%rax)
	movaps	%xmm4, -63(%rax)
	movaps	%xmm3, -79(%rax)
	movaps	%xmm2, -95(%rax)
	movaps	%xmm1, -111(%rax)
	movaps	%xmm0, -127(%rax)
.L4:
	.loc 1 264 0
	addq	$64, %rsp
	ret
.LFE100:
	.size	ldebug, .-ldebug
	.section	.rodata.str1.1
.LC15:
	.string	"Reason: %s\n"
	.text
	.p2align 4,,15
	.type	oss_logerr, @function
oss_logerr:
.LFB101:
	.file 2 "audio/ossaudio.c"
	.loc 2 83 0
	pushq	%rbx
.LCFI2:
	movl	%edi, %ebx
	.loc 2 87 0
	movl	$.LC0, %edi
	.loc 2 83 0
	subq	$208, %rsp
.LCFI3:
	.loc 2 83 0
	movq	%rdx, 48(%rsp)
	movzbl	%al, %edx 
	movq	%rcx, 56(%rsp)
	leaq	0(,%rdx,4), %rax
	movl	$.L6, %edx
	movq	%r8, 64(%rsp)
	movq	%r9, 72(%rsp)
	subq	%rax, %rdx
	leaq	207(%rsp), %rax
	jmp	*%rdx
	movaps	%xmm7, -15(%rax)
	movaps	%xmm6, -31(%rax)
	movaps	%xmm5, -47(%rax)
	movaps	%xmm4, -63(%rax)
	movaps	%xmm3, -79(%rax)
	movaps	%xmm2, -95(%rax)
	movaps	%xmm1, -111(%rax)
	movaps	%xmm0, -127(%rax)
.L6:
	.loc 2 86 0
	leaq	224(%rsp), %rax
	.loc 2 87 0
	movq	%rsp, %rdx
	.loc 2 86 0
	movl	$16, (%rsp)
	movl	$48, 4(%rsp)
	movq	%rax, 8(%rsp)
	leaq	32(%rsp), %rax
	movq	%rax, 16(%rsp)
	.loc 2 87 0
	call	AUD_vlog
	.loc 2 90 0
	movl	%ebx, %edi
	call	strerror
	movl	$.LC15, %esi
	movq	%rax, %rdx
	movl	$.LC0, %edi
	xorl	%eax, %eax
	call	AUD_log
	addq	$208, %rsp
	popq	%rbx
	ret
.LFE101:
	.size	oss_logerr, .-oss_logerr
	.section	.rodata.str1.1
.LC16:
	.string	"Could not initialize %s\n"
	.text
	.p2align 4,,15
	.type	oss_logerr2, @function
oss_logerr2:
.LFB102:
	.loc 2 99 0
	pushq	%r12
.LCFI4:
	movl	%edi, %r12d
	.loc 2 102 0
	movl	$.LC0, %edi
	.loc 2 99 0
	pushq	%rbx
.LCFI5:
	movq	%rdx, %rbx
	.loc 2 102 0
	movq	%rsi, %rdx
	movl	$.LC16, %esi
	.loc 2 99 0
	subq	$216, %rsp
.LCFI6:
	.loc 2 99 0
	movq	%rcx, 56(%rsp)
	movzbl	%al, %ecx 
	movq	%r8, 64(%rsp)
	leaq	0(,%rcx,4), %rax
	movl	$.L8, %ecx
	movq	%r9, 72(%rsp)
	subq	%rax, %rcx
	leaq	207(%rsp), %rax
	jmp	*%rcx
	movaps	%xmm7, -15(%rax)
	movaps	%xmm6, -31(%rax)
	movaps	%xmm5, -47(%rax)
	movaps	%xmm4, -63(%rax)
	movaps	%xmm3, -79(%rax)
	movaps	%xmm2, -95(%rax)
	movaps	%xmm1, -111(%rax)
	movaps	%xmm0, -127(%rax)
.L8:
	.loc 2 102 0
	xorl	%eax, %eax
	call	AUD_log
	.loc 2 104 0
	leaq	240(%rsp), %rax
	.loc 2 105 0
	movq	%rsp, %rdx
	movq	%rbx, %rsi
	movl	$.LC0, %edi
	.loc 2 104 0
	movl	$24, (%rsp)
	movl	$48, 4(%rsp)
	movq	%rax, 8(%rsp)
	leaq	32(%rsp), %rax
	movq	%rax, 16(%rsp)
	.loc 2 105 0
	call	AUD_vlog
	.loc 2 108 0
	movl	%r12d, %edi
	call	strerror
	movl	$.LC15, %esi
	movq	%rax, %rdx
	movl	$.LC0, %edi
	xorl	%eax, %eax
	call	AUD_log
	addq	$216, %rsp
	popq	%rbx
	popq	%r12
	ret
.LFE102:
	.size	oss_logerr2, .-oss_logerr2
	.section	.rodata.str1.1
.LC17:
	.string	"Failed to close file(fd=%d)\n"
	.text
	.p2align 4,,15
	.type	oss_anal_close, @function
oss_anal_close:
.LFB103:
	.loc 2 112 0
	pushq	%rbx
.LCFI7:
	.loc 2 112 0
	movq	%rdi, %rbx
	.loc 2 113 0
	movl	(%rdi), %edi
	call	close
	.loc 2 114 0
	testl	%eax, %eax
	jne	.L12
	.loc 2 117 0
	movl	$-1, (%rbx)
	popq	%rbx
	ret
	.p2align 4,,7
.L12:
	.loc 2 115 0
	.p2align 4,,7
	call	__errno_location
	movl	(%rbx), %edx
	movl	(%rax), %edi
	movl	$.LC17, %esi
	xorl	%eax, %eax
	call	oss_logerr
	.loc 2 117 0
	movl	$-1, (%rbx)
	popq	%rbx
	ret
.LFE103:
	.size	oss_anal_close, .-oss_anal_close
	.p2align 4,,15
	.type	oss_write, @function
oss_write:
.LFB104:
	.loc 2 121 0
	.loc 2 122 0
	jmp	audio_pcm_sw_write
.LFE104:
	.size	oss_write, .-oss_write
	.section	.rodata.str1.8
	.align 8
.LC18:
	.string	"Internal logic error: Bad audio format %d\n"
	.text
	.p2align 4,,15
	.type	aud_to_ossfmt, @function
aud_to_ossfmt:
.LFB105:
	.loc 2 126 0
	subq	$8, %rsp
.LCFI8:
	.loc 2 127 0
	cmpl	$1, %edi
	.loc 2 129 0
	movl	$64, %eax
	.loc 2 127 0
	je	.L14
	jb	.L21
	cmpl	$2, %edi
	.loc 2 138 0
	movb	$-128, %al
	.loc 2 127 0
	je	.L14
	cmpl	$3, %edi
	.loc 2 135 0
	movb	$16, %al
	.loc 2 127 0
	.p2align 4,,3
	je	.L14
	.loc 2 141 0
	movl	%edi, %esi
	xorl	%eax, %eax
	movl	$.LC18, %edi
	call	dolog
.L21:
	.loc 2 145 0
	movl	$8, %eax
.L14:
	.loc 2 147 0
	addq	$8, %rsp
	ret
.LFE105:
	.size	aud_to_ossfmt, .-aud_to_ossfmt
	.section	.rodata.str1.1
.LC19:
	.string	"Unrecognized audio format %d\n"
	.text
	.p2align 4,,15
	.type	oss_to_audfmt, @function
oss_to_audfmt:
.LFB106:
	.loc 2 150 0
	subq	$8, %rsp
.LCFI9:
	.loc 2 151 0
	cmpl	$32, %edi
	je	.L28
	jg	.L31
	cmpl	$8, %edi
	je	.L25
	cmpl	$16, %edi
	.p2align 4,,7
	je	.L26
.L30:
	.loc 2 183 0
	movl	%edi, %esi
	xorl	%eax, %eax
	movl	$.LC19, %edi
	call	dolog
	.loc 2 184 0
	movl	$-1, %eax
	.loc 2 188 0
	addq	$8, %rsp
	ret
	.p2align 4,,7
.L31:
	.loc 2 151 0
	cmpl	$128, %edi
	je	.L27
	.p2align 4,,6
	jg	.L32
	cmpl	$64, %edi
	.p2align 4,,7
	jne	.L30
	.loc 2 153 0
	movl	$0, (%rdx)
	.loc 2 187 0
	xorl	%eax, %eax
	.loc 2 154 0
	movl	$1, (%rsi)
	.p2align 4,,7
.L35:
	.loc 2 188 0
	addq	$8, %rsp
	.p2align 4,,1
	ret
	.p2align 4,,7
.L28:
	.loc 2 173 0
	movl	$1, (%rdx)
.L34:
	.loc 2 187 0
	xorl	%eax, %eax
	.loc 2 174 0
	movl	$3, (%rsi)
	jmp	.L35
	.p2align 4,,7
.L32:
	.loc 2 151 0
	cmpl	$256, %edi
	jne	.L30
	.loc 2 178 0
	movl	$1, (%rdx)
	jmp	.L33
.L26:
	.loc 2 163 0
	movl	$0, (%rdx)
	.p2align 4,,5
	jmp	.L34
	.p2align 4,,7
.L25:
	.loc 2 187 0
	xorl	%eax, %eax
	.loc 2 158 0
	movl	$0, (%rdx)
	.loc 2 159 0
	movl	$0, (%rsi)
	jmp	.L35
	.p2align 4,,7
.L27:
	.loc 2 168 0
	movl	$0, (%rdx)
.L33:
	.loc 2 187 0
	xorl	%eax, %eax
	.loc 2 179 0
	movl	$2, (%rsi)
	jmp	.L35
.LFE106:
	.size	oss_to_audfmt, .-oss_to_audfmt
	.section	.rodata.str1.1
.LC21:
	.string	"DAC"
.LC20:
	.string	"ADC"
.LC25:
	.string	"Failed to set frequency %d\n"
	.section	.rodata.str1.8
	.align 8
.LC24:
	.string	"Failed to set number of channels %d\n"
	.align 8
.LC26:
	.string	"Failed to set non-blocking mode\n"
	.align 8
.LC27:
	.string	"Failed to set buffer length (%d, %d)\n"
	.section	.rodata.str1.1
.LC28:
	.string	"Failed to get buffer length\n"
.LC23:
	.string	"Failed to set sample size %d\n"
.LC22:
	.string	"Failed to open `%s'\n"
	.text
	.p2align 4,,15
	.type	oss_open, @function
oss_open:
.LFB107:
	.loc 2 206 0
	movq	%r12, -32(%rsp)
.LCFI10:
	movq	%r13, -24(%rsp)
.LCFI11:
	movq	%rsi, %r12
	movq	%r14, -16(%rsp)
.LCFI12:
	movq	%rbx, -48(%rsp)
.LCFI13:
	movl	%edi, %r14d
	movq	%rbp, -40(%rsp)
.LCFI14:
	movq	%r15, -8(%rsp)
.LCFI15:
	subq	$104, %rsp
.LCFI16:
	.loc 2 211 0
	testl	%edi, %edi
	.loc 2 206 0
	movq	%rdx, %r13
	movq	%rcx, (%rsp)
	.loc 2 211 0
	jne	.L58
	movq	conf+16(%rip), %rbp
	.loc 2 212 0
	movl	$.LC21, %r15d
	.loc 2 214 0
	movl	$2049, %esi
.L44:
	xorl	%eax, %eax
	movq	%rbp, %rdi
	call	open64
	.loc 2 215 0
	cmpl	$-1, %eax
	.loc 2 214 0
	movl	%eax, %ebx
	movl	%eax, 12(%rsp)
	.loc 2 215 0
	je	.L62
	.loc 2 220 0
	movl	(%r12), %eax
	.loc 2 224 0
	leaq	28(%rsp), %rdx
	movl	$3221508101, %esi
	movl	%ebx, %edi
	.loc 2 220 0
	movl	%eax, 20(%rsp)
	.loc 2 221 0
	movl	8(%r12), %eax
	movl	%eax, 24(%rsp)
	.loc 2 222 0
	movl	4(%r12), %eax
	movl	%eax, 28(%rsp)
	.loc 2 224 0
	xorl	%eax, %eax
	call	ioctl
	testl	%eax, %eax
	jne	.L63
	.loc 2 229 0
	movl	12(%rsp), %edi
	leaq	24(%rsp), %rdx
	xorl	%eax, %eax
	movl	$3221508102, %esi
	call	ioctl
	testl	%eax, %eax
	jne	.L64
	.loc 2 235 0
	movl	12(%rsp), %edi
	leaq	20(%rsp), %rdx
	xorl	%eax, %eax
	movl	$3221508098, %esi
	call	ioctl
	testl	%eax, %eax
	jne	.L65
	.loc 2 240 0
	movl	12(%rsp), %edi
	xorl	%eax, %eax
	movl	$20494, %esi
	call	ioctl
	testl	%eax, %eax
	jne	.L66
	.loc 2 245 0
	movl	16(%r12), %edi
	movl	12(%r12), %ebx
	call	lsbindex
	.loc 2 246 0
	movl	12(%rsp), %edi
	.loc 2 245 0
	sall	$16, %ebx
	.loc 2 246 0
	leaq	16(%rsp), %rdx
	.loc 2 245 0
	orl	%eax, %ebx
	.loc 2 246 0
	movl	$3221508106, %esi
	xorl	%eax, %eax
	.loc 2 245 0
	movl	%ebx, 16(%rsp)
	.loc 2 246 0
	call	ioctl
	testl	%eax, %eax
	jne	.L67
	.loc 2 252 0
	cmpl	$1, %r14d
	movl	12(%rsp), %edi
	movl	$2148552717, %eax
	sbbq	%rsi, %rsi
	leaq	32(%rsp), %rdx
	addq	%rax, %rsi
	xorl	%eax, %eax
	call	ioctl
	testl	%eax, %eax
	jne	.L68
	.loc 2 257 0
	movl	28(%rsp), %eax
	.loc 2 262 0
	movq	(%rsp), %rdx
	.loc 2 257 0
	movl	%eax, 4(%r13)
	.loc 2 258 0
	movl	24(%rsp), %eax
	movl	%eax, 8(%r13)
	.loc 2 259 0
	movl	20(%rsp), %eax
	movl	%eax, (%r13)
	.loc 2 260 0
	movl	36(%rsp), %eax
	movl	%eax, 12(%r13)
	.loc 2 261 0
	movl	40(%rsp), %eax
	movl	%eax, 16(%r13)
	.loc 2 262 0
	movl	12(%rsp), %eax
	movl	%eax, (%rdx)
	.loc 2 278 0
	xorl	%eax, %eax
	.p2align 4,,7
.L36:
	.loc 2 283 0
	movq	56(%rsp), %rbx
	movq	64(%rsp), %rbp
	movq	72(%rsp), %r12
	movq	80(%rsp), %r13
	movq	88(%rsp), %r14
	movq	96(%rsp), %r15
	addq	$104, %rsp
	ret
	.p2align 4,,7
.L58:
	.loc 2 211 0
	movq	conf+24(%rip), %rbp
	.loc 2 212 0
	movl	$.LC20, %r15d
	.loc 2 214 0
	movl	$2048, %esi
	jmp	.L44
	.p2align 4,,7
.L65:
	.loc 2 236 0
	call	__errno_location
	movl	(%r12), %ecx
	movl	$.LC25, %edx
.L61:
	movl	(%rax), %edi
	movq	%r15, %rsi
	xorl	%eax, %eax
	call	oss_logerr2
.L47:
	.loc 2 281 0
	leaq	12(%rsp), %rdi
	call	oss_anal_close
	.loc 2 282 0
	movl	$-1, %eax
	jmp	.L36
	.p2align 4,,7
.L64:
	.loc 2 230 0
	call	__errno_location
	movl	8(%r12), %ecx
	movl	$.LC24, %edx
	jmp	.L61
	.p2align 4,,7
.L66:
	.loc 2 241 0
	call	__errno_location
	movl	$.LC26, %edx
.L60:
	.loc 2 253 0
	movl	(%rax), %edi
	movq	%r15, %rsi
	xorl	%eax, %eax
	call	oss_logerr2
	jmp	.L47
.L67:
	.loc 2 247 0
	call	__errno_location
	movl	12(%r12), %ecx
	movl	(%rax), %edi
	movl	$.LC27, %edx
	movl	16(%r12), %r8d
	movq	%r15, %rsi
	xorl	%eax, %eax
	call	oss_logerr2
	jmp	.L47
.L68:
	.loc 2 253 0
	call	__errno_location
	movl	$.LC28, %edx
	.p2align 4,,3
	jmp	.L60
.L63:
	.loc 2 225 0
	call	__errno_location
	movl	4(%r12), %ecx
	movl	$.LC23, %edx
	jmp	.L61
.L62:
	.loc 2 216 0
	call	__errno_location
	movl	(%rax), %edi
	movq	%rbp, %rcx
	xorl	%eax, %eax
	movl	$.LC22, %edx
	movq	%r15, %rsi
	call	oss_logerr2
	.loc 2 217 0
	movl	%ebx, %eax
	jmp	.L36
.LFE107:
	.size	oss_open, .-oss_open
	.section	.rodata.str1.8
	.align 8
.LC34:
	.string	"warning: Misaligned write %d (requested %d), alignment %d\n"
	.align 8
.LC33:
	.string	"Failed to write %d bytes of audio data from %p\n"
	.section	.rodata.str1.1
.LC29:
	.string	"SNDCTL_DSP_GETOPTR failed\n"
.LC30:
	.string	"warning: Overrun\n"
	.section	.rodata.str1.8
	.align 8
.LC32:
	.string	"warning: Invalid available size, size=%d bufsize=%d\n"
	.align 8
.LC31:
	.string	"warning: Invalid available size, size=%d bufsize=%d\nplease report your OS/audio hw to malc@pulsesoft.com\n"
	.text
	.p2align 4,,15
	.type	oss_run_out, @function
oss_run_out:
.LFB108:
	.loc 2 286 0
	movq	%rbp, -40(%rsp)
.LCFI17:
	movq	%r12, -32(%rsp)
.LCFI18:
	movq	%rdi, %r12
	movq	%rbx, -48(%rsp)
.LCFI19:
	movq	%r13, -24(%rsp)
.LCFI20:
	movq	%r14, -16(%rsp)
.LCFI21:
	movq	%r15, -8(%rsp)
.LCFI22:
	subq	$88, %rsp
.LCFI23:
	.loc 2 296 0
	call	audio_pcm_hw_get_live_out
	movl	%eax, %ebp
	.loc 2 298 0
	xorl	%eax, %eax
	.loc 2 297 0
	testl	%ebp, %ebp
	je	.L69
	.loc 2 301 0
	movl	72(%r12), %ebx
	movl	28(%r12), %ecx
	.loc 2 303 0
	movl	140(%r12), %r8d
	.loc 2 301 0
	sall	%cl, %ebx
	.loc 2 303 0
	testl	%r8d, %r8d
	je	.L71
.LBB2:
	.loc 2 306 0
	movl	128(%r12), %edi
	movq	%rsp, %rdx
	movl	$2148290578, %esi
	call	ioctl
	.loc 2 307 0
	testl	%eax, %eax
	js	.L102
	.loc 2 312 0
	movl	8(%rsp), %eax
	movl	144(%r12), %ecx
	cmpl	%ecx, %eax
	je	.L103
	.loc 2 319 0
	jg	.L101
	.loc 2 323 0
	addl	%ebx, %eax
.L101:
	subl	%ecx, %eax
.LBB3:
	.loc 2 326 0
	movl	28(%r12), %ecx
	movl	%ebp, %r15d
	sarl	%cl, %eax
	cmpl	%ebp, %eax
	cmovle	%eax, %r15d
.L79:
.LBE3:
.LBE2:
	.loc 2 398 0
	testl	%r15d, %r15d
	.loc 2 358 0
	movl	%r15d, %r14d
	.loc 2 359 0
	movl	48(%r12), %r13d
	.loc 2 398 0
	jne	.L97
	jmp	.L89
	.p2align 4,,7
.L93:
.LBB4:
	.loc 2 397 0
	leal	(%r13,%rbx), %eax
	.loc 2 398 0
	subl	%ebx, %r14d
	.loc 2 397 0
	cltd
	idivl	72(%r12)
	movl	%edx, %r13d
.L88:
.LBE4:
	.loc 2 398 0
	testl	%r14d, %r14d
	je	.L89
	movl	28(%r12), %ecx
.L97:
.LBB5:
	.loc 2 361 0
	movl	72(%r12), %eax
	.loc 2 364 0
	movslq	%r13d,%rsi
	.loc 2 361 0
	subl	%r13d, %eax
.LBB6:
	.loc 2 362 0
	cmpl	%eax, %r14d
	movl	%eax, %ebx
.LBE6:
.LBB7:
	.file 3 "audio/audio.h"
	.loc 3 145 0
	movl	%r13d, %eax
.LBE7:
.LBB8:
	.loc 2 362 0
	cmovle	%r14d, %ebx
.LBE8:
.LBB9:
	.loc 3 145 0
	sall	%cl, %eax
.LBE9:
	.loc 2 364 0
	salq	$4, %rsi
.LBB10:
.LBB11:
	.loc 3 146 0
	movslq	%eax,%rbp
	addq	120(%r12), %rbp
.LBE11:
.LBE10:
	.loc 2 364 0
	addq	64(%r12), %rsi
	.loc 2 367 0
	movl	%ebx, %edx
	movq	%rbp, %rdi
	call	*40(%r12)
	.loc 2 368 0
	movl	140(%r12), %edx
	testl	%edx, %edx
	jne	.L93
.LBB12:
	.loc 2 371 0
	movl	28(%r12), %ecx
	movl	128(%r12), %edi
	movl	%ebx, %eax
	movq	%rbp, %rsi
	sall	%cl, %eax
	movslq	%eax,%rdx
	call	write
	.loc 2 373 0
	cmpl	$-1, %eax
	.loc 2 371 0
	movq	%rax, %rdi
	.loc 2 373 0
	je	.L104
	.loc 2 383 0
	movl	28(%r12), %ecx
	movl	%ebx, %eax
	sall	%cl, %eax
	cmpl	%edi, %eax
	je	.L93
.LBB13:
	.loc 2 384 0
	movl	%edi, %ebx
	sarl	%cl, %ebx
	.loc 2 385 0
	movl	%ebx, %esi
	sall	%cl, %esi
	.loc 2 386 0
	cmpl	%edi, %esi
	je	.L96
	.loc 2 387 0
	movl	24(%r12), %ecx
	movl	%edi, %edx
	xorl	%eax, %eax
	movl	$.LC34, %edi
	incl	%ecx
	call	dolog
.L96:
	.loc 2 392 0
	leal	(%r13,%rbx), %eax
	.loc 2 391 0
	subl	%ebx, %r15d
	.loc 2 392 0
	cltd
	idivl	72(%r12)
	movl	%edx, %r13d
.L89:
.LBE13:
.LBE12:
.LBE5:
	.loc 2 400 0
	movl	140(%r12), %eax
	testl	%eax, %eax
	je	.L98
	.loc 2 401 0
	movl	8(%rsp), %eax
	movl	%eax, 144(%r12)
.L98:
	.loc 2 404 0
	movl	%r13d, 48(%r12)
	.loc 2 405 0
	movl	%r15d, %eax
	.p2align 4,,7
.L69:
	.loc 2 406 0
	movq	40(%rsp), %rbx
	movq	48(%rsp), %rbp
	movq	56(%rsp), %r12
	movq	64(%rsp), %r13
	movq	72(%rsp), %r14
	movq	80(%rsp), %r15
	addq	$88, %rsp
	ret
.L71:
	.loc 2 329 0
	movl	128(%r12), %edi
	leaq	16(%rsp), %rdx
	xorl	%eax, %eax
	movl	$2148552716, %esi
	call	ioctl
	.loc 2 330 0
	testl	%eax, %eax
	js	.L102
	.loc 2 335 0
	movl	28(%rsp), %esi
	cmpl	%ebx, %esi
	jle	.L81
	.loc 2 336 0
	movl	conf+32(%rip), %edi
	testl	%edi, %edi
	jne	.L105
.L82:
	.loc 2 341 0
	movl	%ebx, %esi
	movl	%ebx, 28(%rsp)
.L81:
	.loc 2 344 0
	testl	%esi, %esi
	js	.L106
.LBB14:
	.loc 2 352 0
	movl	28(%r12), %ecx
	movl	%esi, %eax
	movl	%ebp, %r15d
	sarl	%cl, %eax
	cmpl	%ebp, %eax
	cmovle	%eax, %r15d
.LBE14:
	.loc 2 354 0
	xorl	%eax, %eax
	.loc 2 353 0
	testl	%r15d, %r15d
	je	.L69
	jmp	.L79
.L103:
.LBB15:
	.loc 2 313 0
	movl	72(%r12), %eax
	subl	%ebp, %eax
	addl	$63, %eax
	cmpl	$126, %eax
	jbe	.L107
.L84:
.LBE15:
	.loc 2 349 0
	xorl	%eax, %eax
	jmp	.L69
.L104:
.LBB16:
.LBB17:
	.loc 2 374 0
	call	__errno_location
	movl	28(%r12), %ecx
	movl	(%rax), %edi
	movl	$.LC33, %esi
	xorl	%eax, %eax
	sall	%cl, %ebx
	movq	%rbp, %rcx
	movl	%ebx, %edx
	call	oss_logerr
	jmp	.L88
.L102:
.LBE17:
.LBE16:
	.loc 2 331 0
	call	__errno_location
	movl	(%rax), %edi
	movl	$.LC29, %esi
	xorl	%eax, %eax
	call	oss_logerr
	.loc 2 349 0
	xorl	%eax, %eax
	jmp	.L69
.L107:
.LBB18:
	.loc 2 314 0
	xorl	%eax, %eax
	movl	$.LC30, %edi
	call	dolog
.LBE18:
	.loc 2 349 0
	xorl	%eax, %eax
	jmp	.L69
.L106:
	.loc 2 345 0
	movl	conf+32(%rip), %ecx
	testl	%ecx, %ecx
	je	.L84
	.loc 2 346 0
	xorl	%eax, %eax
	movl	%ebx, %edx
	movl	$.LC32, %edi
	call	dolog
	.loc 2 349 0
	xorl	%eax, %eax
	jmp	.L69
.L105:
	.loc 2 337 0
	movl	%ebx, %edx
	movl	$.LC31, %edi
	xorl	%eax, %eax
	call	dolog
	jmp	.L82
.LFE108:
	.size	oss_run_out, .-oss_run_out
	.section	.rodata.str1.8
	.align 8
.LC35:
	.string	"Failed to unmap buffer %p, size %d\n"
	.text
	.p2align 4,,15
	.type	oss_fini_out, @function
oss_fini_out:
.LFB109:
	.loc 2 409 0
	pushq	%rbx
.LCFI24:
	.loc 2 409 0
	movq	%rdi, %rbx
	.loc 2 414 0
	leaq	128(%rdi), %rdi
	call	oss_anal_close
	.loc 2 416 0
	movq	120(%rbx), %rdi
	testq	%rdi, %rdi
	je	.L108
	.loc 2 417 0
	movl	140(%rbx), %r9d
	testl	%r9d, %r9d
	jne	.L113
	.loc 2 425 0
	call	qemu_free
.L112:
	.loc 2 427 0
	movq	$0, 120(%rbx)
.L108:
	.loc 2 429 0
	popq	%rbx
	ret
	.p2align 4,,7
.L113:
	.loc 2 418 0
	movl	72(%rbx), %esi
	movl	28(%rbx), %ecx
	sall	%cl, %esi
	movslq	%esi,%rsi
	call	munmap
	.loc 2 419 0
	testl	%eax, %eax
	je	.L112
	.loc 2 420 0
	call	__errno_location
	movl	28(%rbx), %edx
	movl	72(%rbx), %esi
	movl	(%rax), %edi
	xorl	%eax, %eax
	movl	%edx, %ecx
	movq	120(%rbx), %rdx
	sall	%cl, %esi
	movl	%esi, %ecx
	movl	$.LC35, %esi
	call	oss_logerr
	jmp	.L112
.LFE109:
	.size	oss_fini_out, .-oss_fini_out
	.section	.rodata
	.type	__FUNCTION__.1, @object
	.size	__FUNCTION__.1, 13
__FUNCTION__.1:
	.string	"oss_init_out"
	.section	.rodata.str1.8
	.align 8
.LC40:
	.string	"Failed to unmap buffer %p size %d\n"
	.align 8
.LC36:
	.string	"warning: Misaligned DAC buffer, size %d, alignment %d\n"
	.align 8
.LC41:
	.string	"Could not allocate DAC buffer (%d samples, each %d bytes)\n"
	.align 8
.LC37:
	.string	"Failed to map %d bytes of DAC\n"
	.align 8
.LC38:
	.string	"SNDCTL_DSP_SETTRIGGER 0 failed\n"
	.align 8
.LC39:
	.string	"SNDCTL_DSP_SETTRIGGER PCM_ENABLE_OUTPUT failed\n"
	.text
	.p2align 4,,15
	.type	oss_init_out, @function
oss_init_out:
.LFB110:
	.loc 2 432 0
	pushq	%rbp
.LCFI25:
	movq	%rdi, %rbp
	pushq	%rbx
.LCFI26:
	movq	%rsi, %rbx
	subq	$104, %rsp
.LCFI27:
	.loc 2 441 0
	movl	$-1, 128(%rdi)
	.loc 2 443 0
	movl	8(%rsi), %edi
	call	aud_to_ossfmt
	movl	%eax, 68(%rsp)
	.loc 2 444 0
	movl	(%rbx), %eax
	.loc 2 449 0
	leaq	32(%rsp), %rdx
	leaq	64(%rsp), %rsi
	leaq	12(%rsp), %rcx
	xorl	%edi, %edi
	.loc 2 444 0
	movl	%eax, 64(%rsp)
	.loc 2 445 0
	movl	4(%rbx), %eax
	movl	%eax, 72(%rsp)
	.loc 2 446 0
	movl	conf+8(%rip), %eax
	movl	%eax, 80(%rsp)
	.loc 2 447 0
	movl	conf+4(%rip), %eax
	movl	%eax, 76(%rsp)
	.loc 2 449 0
	call	oss_open
	testl	%eax, %eax
	.loc 2 450 0
	movl	$-1, %edx
	.loc 2 449 0
	jne	.L114
	.loc 2 453 0
	movl	36(%rsp), %edi
	leaq	8(%rsp), %rdx
	leaq	4(%rsp), %rsi
	call	oss_to_audfmt
	.loc 2 454 0
	testl	%eax, %eax
	jne	.L132
	.loc 2 459 0
	movl	32(%rsp), %eax
	.loc 2 464 0
	leaq	16(%rsp), %rsi
	leaq	8(%rbp), %rdi
	.loc 2 459 0
	movl	%eax, 16(%rsp)
	.loc 2 460 0
	movl	40(%rsp), %eax
	movl	%eax, 20(%rsp)
	.loc 2 461 0
	movl	4(%rsp), %eax
	movl	%eax, 24(%rsp)
	.loc 2 462 0
	movl	8(%rsp), %eax
	movl	%eax, 28(%rsp)
	.loc 2 464 0
	call	audio_pcm_init_info
	.loc 2 465 0
	movl	44(%rsp), %ecx
	.loc 2 468 0
	movl	24(%rbp), %edx
	.loc 2 465 0
	movl	%ecx, 132(%rbp)
	.loc 2 466 0
	movl	48(%rsp), %eax
	.loc 2 468 0
	movl	%ecx, %esi
	imull	%eax, %esi
	.loc 2 466 0
	movl	%eax, 136(%rbp)
	.loc 2 468 0
	testl	%edx, %esi
	jne	.L133
.L117:
	.loc 2 473 0
	imull	%ecx, %eax
	movl	28(%rbp), %ecx
	.loc 2 475 0
	movl	$0, 140(%rbp)
	xorl	%edx, %edx
	.loc 2 473 0
	sarl	%cl, %eax
	movl	%eax, 72(%rbp)
	.loc 2 476 0
	movl	conf(%rip), %r11d
	testl	%r11d, %r11d
	jne	.L134
.L118:
	.loc 2 517 0
	testl	%edx, %edx
	je	.L135
.L127:
	.loc 2 534 0
	movl	12(%rsp), %eax
	.loc 2 535 0
	xorl	%edx, %edx
	.loc 2 534 0
	movl	%eax, 128(%rbp)
.L114:
	.loc 2 536 0
	addq	$104, %rsp
	movl	%edx, %eax
	popq	%rbx
	popq	%rbp
	ret
	.p2align 4,,7
.L134:
	.loc 2 477 0
	movl	12(%rsp), %r8d
	sall	%cl, %eax
	xorl	%r9d, %r9d
	xorl	%edi, %edi
	movslq	%eax,%rsi
	movl	$1, %ecx
	movb	$3, %dl
	call	mmap64
	movq	%rax, 120(%rbp)
	.loc 2 485 0
	incq	%rax
	je	.L136
.LBB19:
	.loc 2 491 0
	movl	12(%rsp), %edi
	xorl	%eax, %eax
	movq	%rsp, %rdx
	movl	$1074024464, %esi
	.loc 2 490 0
	movl	$0, (%rsp)
	.loc 2 491 0
	call	ioctl
	testl	%eax, %eax
	js	.L137
	.loc 2 496 0
	movl	12(%rsp), %edi
	xorl	%eax, %eax
	movq	%rsp, %rdx
	movl	$1074024464, %esi
	.loc 2 495 0
	movl	$2, (%rsp)
	.loc 2 496 0
	call	ioctl
	testl	%eax, %eax
	js	.L138
	.loc 2 503 0
	movl	$1, 140(%rbp)
.L122:
	.loc 2 507 0
	movl	140(%rbp), %r10d
	testl	%r10d, %r10d
	jne	.L127
	.loc 2 508 0
	movl	72(%rbp), %esi
	movl	28(%rbp), %ecx
	movq	120(%rbp), %rdi
	sall	%cl, %esi
	movslq	%esi,%rsi
	call	munmap
	.loc 2 509 0
	testl	%eax, %eax
	je	.L130
	.loc 2 510 0
	call	__errno_location
	movl	28(%rbp), %edx
	movl	72(%rbp), %esi
	movl	(%rax), %edi
	xorl	%eax, %eax
	movl	%edx, %ecx
	movq	120(%rbp), %rdx
	sall	%cl, %esi
	movl	%esi, %ecx
	movl	$.LC40, %esi
	call	oss_logerr
	jmp	.L130
	.p2align 4,,7
.L133:
.LBE19:
	.loc 2 469 0
	xorl	%eax, %eax
	incl	%edx
	movl	$.LC36, %edi
	call	dolog
	movl	44(%rsp), %ecx
	movl	48(%rsp), %eax
	jmp	.L117
	.p2align 4,,7
.L135:
	.loc 2 518 0
	movl	28(%rbp), %ecx
	movl	$1, %ebx
	movl	72(%rbp), %esi
	movl	%ebx, %eax
	movl	$__FUNCTION__.1, %edi
	sall	%cl, %eax
	movslq	%eax,%rdx
	call	audio_calloc
	.loc 2 523 0
	testq	%rax, %rax
	.loc 2 518 0
	movq	%rax, 120(%rbp)
	.loc 2 523 0
	jne	.L127
	.loc 2 524 0
	movl	28(%rbp), %ecx
	movl	72(%rbp), %esi
	movl	$.LC41, %edi
	sall	%cl, %ebx
	movl	%ebx, %edx
	call	dolog
.L132:
	.loc 2 529 0
	leaq	12(%rsp), %rdi
	call	oss_anal_close
	.loc 2 530 0
	movl	$-1, %edx
	jmp	.L114
.L136:
	.loc 2 486 0
	call	__errno_location
	movl	72(%rbp), %edx
	movl	28(%rbp), %ecx
	movl	$.LC37, %esi
	movl	(%rax), %edi
	xorl	%eax, %eax
	sall	%cl, %edx
	call	oss_logerr
.L130:
	movl	140(%rbp), %edx
	jmp	.L118
.L137:
.LBB20:
	.loc 2 492 0
	call	__errno_location
	movl	$.LC38, %esi
.L131:
	.loc 2 497 0
	movl	(%rax), %edi
	xorl	%eax, %eax
	call	oss_logerr
	jmp	.L122
.L138:
	call	__errno_location
	movl	$.LC39, %esi
	.p2align 4,,3
	jmp	.L131
.LBE20:
.LFE110:
	.size	oss_init_out, .-oss_init_out
	.p2align 4,,15
	.type	oss_ctl_out, @function
oss_ctl_out:
.LFB111:
	.loc 2 539 0
	pushq	%rbx
.LCFI28:
	movq	%rdi, %rbx
	subq	$192, %rsp
.LCFI29:
	.loc 2 539 0
	movq	%rdx, 32(%rsp)
	movzbl	%al, %edx 
	movq	%rcx, 40(%rsp)
	leaq	0(,%rdx,4), %rax
	movl	$.L140, %edx
	movq	%r8, 48(%rsp)
	movq	%r9, 56(%rsp)
	subq	%rax, %rdx
	leaq	191(%rsp), %rax
	jmp	*%rdx
	movaps	%xmm7, -15(%rax)
	movaps	%xmm6, -31(%rax)
	movaps	%xmm5, -47(%rax)
	movaps	%xmm4, -63(%rax)
	movaps	%xmm3, -79(%rax)
	movaps	%xmm2, -95(%rax)
	movaps	%xmm1, -111(%rax)
	movaps	%xmm0, -127(%rax)
.L140:
	.loc 2 543 0
	movl	140(%rdi), %edx
	.loc 2 544 0
	xorl	%eax, %eax
	.loc 2 543 0
	testl	%edx, %edx
	je	.L139
	.loc 2 547 0
	cmpl	$1, %esi
	je	.L143
	cmpl	$2, %esi
	je	.L145
.L142:
	.loc 2 570 0
	xorl	%eax, %eax
.L139:
	.loc 2 571 0
	addq	$192, %rsp
	popq	%rbx
	.p2align 4,,2
	ret
.L143:
	.loc 2 550 0
	movl	72(%rdi), %edx
	movq	120(%rdi), %rsi
	leaq	8(%rdi), %rdi
	call	audio_pcm_info_clear_buf
	.loc 2 552 0
	movl	128(%rbx), %edi
	leaq	12(%rsp), %rdx
	xorl	%eax, %eax
	movl	$1074024464, %esi
	.loc 2 551 0
	movl	$2, 12(%rsp)
	.loc 2 552 0
	call	ioctl
	testl	%eax, %eax
	jns	.L142
	.loc 2 553 0
	call	__errno_location
	movl	$.LC39, %esi
.L147:
	.loc 2 565 0
	movl	(%rax), %edi
	xorl	%eax, %eax
	call	oss_logerr
	.loc 2 566 0
	movl	$-1, %eax
	jmp	.L139
	.p2align 4,,7
.L145:
	.loc 2 563 0
	movl	$0, 12(%rsp)
	.loc 2 564 0
	movl	128(%rdi), %edi
	leaq	12(%rsp), %rdx
	xorl	%eax, %eax
	movl	$1074024464, %esi
	call	ioctl
	testl	%eax, %eax
	jns	.L142
	.loc 2 565 0
	call	__errno_location
	movl	$.LC38, %esi
	jmp	.L147
.LFE111:
	.size	oss_ctl_out, .-oss_ctl_out
	.section	.rodata
	.type	__FUNCTION__.0, @object
	.size	__FUNCTION__.0, 12
__FUNCTION__.0:
	.string	"oss_init_in"
	.section	.rodata.str1.8
	.align 8
.LC42:
	.string	"warning: Misaligned ADC buffer, size %d, alignment %d\n"
	.align 8
.LC43:
	.string	"Could not allocate ADC buffer (%d samples, each %d bytes)\n"
	.text
	.p2align 4,,15
	.type	oss_init_in, @function
oss_init_in:
.LFB112:
	.loc 2 574 0
	pushq	%rbp
.LCFI30:
	movq	%rdi, %rbp
	pushq	%rbx
.LCFI31:
	movq	%rsi, %rbx
	subq	$104, %rsp
.LCFI32:
	.loc 2 583 0
	movl	$-1, 120(%rdi)
	.loc 2 585 0
	movl	8(%rsi), %edi
	call	aud_to_ossfmt
	movl	%eax, 68(%rsp)
	.loc 2 586 0
	movl	(%rbx), %eax
	.loc 2 590 0
	leaq	32(%rsp), %rdx
	leaq	64(%rsp), %rsi
	leaq	12(%rsp), %rcx
	movl	$1, %edi
	.loc 2 586 0
	movl	%eax, 64(%rsp)
	.loc 2 587 0
	movl	4(%rbx), %eax
	movl	%eax, 72(%rsp)
	.loc 2 588 0
	movl	conf+8(%rip), %eax
	movl	%eax, 80(%rsp)
	.loc 2 589 0
	movl	conf+4(%rip), %eax
	movl	%eax, 76(%rsp)
	.loc 2 590 0
	call	oss_open
	testl	%eax, %eax
	.loc 2 591 0
	movl	$-1, %edx
	.loc 2 590 0
	jne	.L148
	.loc 2 594 0
	movl	36(%rsp), %edi
	leaq	8(%rsp), %rdx
	leaq	4(%rsp), %rsi
	call	oss_to_audfmt
	.loc 2 595 0
	testl	%eax, %eax
	jne	.L153
	.loc 2 600 0
	movl	32(%rsp), %eax
	.loc 2 605 0
	leaq	16(%rsp), %rsi
	leaq	4(%rbp), %rdi
	.loc 2 600 0
	movl	%eax, 16(%rsp)
	.loc 2 601 0
	movl	40(%rsp), %eax
	movl	%eax, 20(%rsp)
	.loc 2 602 0
	movl	4(%rsp), %eax
	movl	%eax, 24(%rsp)
	.loc 2 603 0
	movl	8(%rsp), %eax
	movl	%eax, 28(%rsp)
	.loc 2 605 0
	call	audio_pcm_init_info
	.loc 2 606 0
	movl	44(%rsp), %ecx
	.loc 2 609 0
	movl	20(%rbp), %edx
	.loc 2 606 0
	movl	%ecx, 124(%rbp)
	.loc 2 607 0
	movl	48(%rsp), %eax
	.loc 2 609 0
	movl	%ecx, %esi
	imull	%eax, %esi
	.loc 2 607 0
	movl	%eax, 128(%rbp)
	.loc 2 609 0
	testl	%edx, %esi
	jne	.L154
.L151:
	.loc 2 614 0
	movl	%ecx, %esi
	movl	24(%rbp), %ecx
	.loc 2 615 0
	movl	$1, %ebx
	.loc 2 614 0
	imull	%eax, %esi
	.loc 2 615 0
	movl	%ebx, %eax
	movl	$__FUNCTION__.0, %edi
	sall	%cl, %eax
	.loc 2 614 0
	sarl	%cl, %esi
	.loc 2 615 0
	movslq	%eax,%rdx
	.loc 2 614 0
	movl	%esi, 72(%rbp)
	.loc 2 615 0
	call	audio_calloc
	.loc 2 616 0
	testq	%rax, %rax
	.loc 2 615 0
	movq	%rax, 112(%rbp)
	.loc 2 616 0
	je	.L155
	.loc 2 623 0
	movl	12(%rsp), %eax
	.loc 2 624 0
	xorl	%edx, %edx
	.loc 2 623 0
	movl	%eax, 120(%rbp)
.L148:
	.loc 2 625 0
	addq	$104, %rsp
	movl	%edx, %eax
	popq	%rbx
	popq	%rbp
	ret
	.p2align 4,,7
.L154:
	.loc 2 610 0
	xorl	%eax, %eax
	incl	%edx
	movl	$.LC42, %edi
	call	dolog
	movl	44(%rsp), %ecx
	movl	48(%rsp), %eax
	jmp	.L151
.L155:
	.loc 2 617 0
	movl	24(%rbp), %ecx
	movl	72(%rbp), %esi
	movl	$.LC43, %edi
	sall	%cl, %ebx
	movl	%ebx, %edx
	call	dolog
.L153:
	.loc 2 619 0
	leaq	12(%rsp), %rdi
	call	oss_anal_close
	.loc 2 620 0
	movl	$-1, %edx
	jmp	.L148
.LFE112:
	.size	oss_init_in, .-oss_init_in
	.p2align 4,,15
	.type	oss_fini_in, @function
oss_fini_in:
.LFB113:
	.loc 2 628 0
	pushq	%rbx
.LCFI33:
	.loc 2 628 0
	movq	%rdi, %rbx
	.loc 2 631 0
	leaq	120(%rdi), %rdi
	call	oss_anal_close
	.loc 2 633 0
	movq	112(%rbx), %rdi
	testq	%rdi, %rdi
	jne	.L158
	.loc 2 637 0
	popq	%rbx
	ret
	.p2align 4,,7
.L158:
	.loc 2 634 0
	.p2align 4,,7
	call	qemu_free
	.loc 2 635 0
	movq	$0, 112(%rbx)
	.loc 2 637 0
	popq	%rbx
	.p2align 4,,5
	ret
.LFE113:
	.size	oss_fini_in, .-oss_fini_in
	.section	.rodata.str1.8
	.align 8
.LC45:
	.string	"Failed to read %d bytes of audio (to %p)\n"
	.align 8
.LC44:
	.string	"warning: Misaligned read %zd (requested %d), alignment %d\n"
	.text
	.p2align 4,,15
	.type	oss_run_in, @function
oss_run_in:
.LFB114:
	.loc 2 640 0
	movq	%rbx, -48(%rsp)
.LCFI34:
	movq	%rbp, -40(%rsp)
.LCFI35:
	movq	%rdi, %rbx
	movq	%r12, -32(%rsp)
.LCFI36:
	movq	%r13, -24(%rsp)
.LCFI37:
	movq	%r14, -16(%rsp)
.LCFI38:
	movq	%r15, -8(%rsp)
.LCFI39:
	subq	$104, %rsp
.LCFI40:
	.loc 2 642 0
	movl	24(%rdi), %r14d
	.loc 2 644 0
	call	audio_pcm_hw_get_live_in
	.loc 2 650 0
	movl	48(%rbx), %edi
	.loc 2 645 0
	movl	72(%rbx), %esi
	.loc 2 650 0
	movl	$0, 20(%rsp)
	.loc 2 646 0
	movq	$0, 8(%rsp)
	.loc 2 650 0
	movq	$0, 24(%rsp)
	movq	$0, 40(%rsp)
	movl	%edi, 16(%rsp)
	movq	16(%rsp), %rdx
	.loc 2 655 0
	movl	%esi, %r8d
	.loc 2 650 0
	movq	%rdx, 32(%rsp)
	.loc 2 656 0
	xorl	%edx, %edx
	.loc 2 655 0
	subl	%eax, %r8d
	je	.L159
	.loc 2 659 0
	leal	(%rdi,%r8), %eax
	cmpl	%esi, %eax
	jle	.L161
	.loc 2 660 0
	movl	%esi, %edx
	movl	%r14d, %ecx
	subl	%edi, %edx
	movl	%edx, %eax
	.loc 2 661 0
	subl	%edx, %r8d
	.loc 2 660 0
	sall	%cl, %eax
	.loc 2 661 0
	sall	%cl, %r8d
	.loc 2 660 0
	movl	%eax, 36(%rsp)
	.loc 2 661 0
	movl	%r8d, 44(%rsp)
.L162:
	.loc 2 668 0
	xorl	%r13d, %r13d
.L176:
.LBB21:
	.loc 2 671 0
	movslq	%r13d,%rbp
	movl	36(%rsp,%rbp,8), %edx
	testl	%edx, %edx
	jne	.L178
.L165:
.LBE21:
	.loc 2 668 0
	incl	%r13d
	cmpl	$1, %r13d
	jle	.L176
.L164:
	.loc 2 706 0
	movslq	48(%rbx),%rax
	movslq	72(%rbx),%rdx
	addq	8(%rsp), %rax
	movq	%rdx, %rcx
	xorl	%edx, %edx
	divq	%rcx
	movl	%edx, 48(%rbx)
	.loc 2 707 0
	movl	8(%rsp), %edx
.L159:
	.loc 2 708 0
	movq	56(%rsp), %rbx
	movq	64(%rsp), %rbp
	movl	%edx, %eax
	movq	72(%rsp), %r12
	movq	80(%rsp), %r13
	movq	88(%rsp), %r14
	movq	96(%rsp), %r15
	addq	$104, %rsp
	ret
	.p2align 4,,7
.L161:
	.loc 2 664 0
	movl	%r14d, %ecx
	sall	%cl, %r8d
	movl	%r8d, 36(%rsp)
	jmp	.L162
	.p2align 4,,7
.L178:
.LBB22:
.LBB23:
.LBB24:
	.loc 3 145 0
	movl	32(%rsp,%rbp,8), %eax
	movl	%r14d, %ecx
.LBE24:
	.loc 2 673 0
	movl	120(%rbx), %edi
	movslq	%edx,%rdx
.LBB25:
	.loc 3 145 0
	sall	%cl, %eax
.LBB26:
	.loc 3 146 0
	movslq	%eax,%r15
	addq	112(%rbx), %r15
.LBE26:
.LBE25:
	.loc 2 673 0
	movq	%r15, %rsi
	call	read
	.loc 2 675 0
	testq	%rax, %rax
	.loc 2 673 0
	movq	%rax, %r12
	.loc 2 675 0
	jle	.L168
	.loc 2 676 0
	movl	20(%rbx), %edx
	movslq	%edx,%rax
	testq	%r12, %rax
	jne	.L179
.L169:
	.loc 2 681 0
	movl	%r14d, %ecx
	movq	%r12, %rdx
	.loc 2 682 0
	movq	%r15, %rsi
	.loc 2 681 0
	sarq	%cl, %rdx
	addq	%rdx, 8(%rsp)
	.loc 2 682 0
	movl	$nominal_volume, %ecx
	movslq	32(%rsp,%rbp,8),%rdi
	salq	$4, %rdi
	addq	64(%rbx), %rdi
	call	*40(%rbx)
.L168:
	.loc 2 686 0
	movl	36(%rsp,%rbp,8), %ebp
	movslq	%ebp,%rax
	cmpq	%r12, %rax
	je	.L165
	.loc 2 687 0
	incq	%r12
	jne	.L164
	.loc 2 688 0
	call	__errno_location
	movl	(%rax), %edi
	cmpl	$4, %edi
	.p2align 4,,2
	je	.L164
	cmpl	$11, %edi
	.p2align 4,,2
	je	.L164
	.loc 2 693 0
	movq	%r15, %rcx
	movl	%ebp, %edx
	movl	$.LC45, %esi
	xorl	%eax, %eax
	call	oss_logerr
	jmp	.L164
	.p2align 4,,7
.L179:
	.loc 2 677 0
	leal	1(%rdx), %eax
	movl	32(%rsp,%rbp,8), %edx
	movl	%r14d, %ecx
	movq	%r12, %rsi
	movl	$.LC44, %edi
	sall	%cl, %edx
	movl	%eax, %ecx
	xorl	%eax, %eax
	call	dolog
	jmp	.L169
.LBE23:
.LBE22:
.LFE114:
	.size	oss_run_in, .-oss_run_in
	.p2align 4,,15
	.type	oss_read, @function
oss_read:
.LFB115:
	.loc 2 711 0
	.loc 2 712 0
	jmp	audio_pcm_sw_read
.LFE115:
	.size	oss_read, .-oss_read
	.p2align 4,,15
	.type	oss_ctl_in, @function
oss_ctl_in:
.LFB116:
	.loc 2 716 0
	movzbl	%al, %edx 
	subq	$64, %rsp
.LCFI41:
	.loc 2 716 0
	leaq	0(,%rdx,4), %rax
	movl	$.L182, %edx
	subq	%rax, %rdx
	leaq	55(%rsp), %rax
	jmp	*%rdx
	movaps	%xmm7, -15(%rax)
	movaps	%xmm6, -31(%rax)
	movaps	%xmm5, -47(%rax)
	movaps	%xmm4, -63(%rax)
	movaps	%xmm3, -79(%rax)
	movaps	%xmm2, -95(%rax)
	movaps	%xmm1, -111(%rax)
	movaps	%xmm0, -127(%rax)
.L182:
	.loc 2 720 0
	xorl	%eax, %eax
	addq	$64, %rsp
	ret
.LFE116:
	.size	oss_ctl_in, .-oss_ctl_in
	.p2align 4,,15
	.type	oss_audio_init, @function
oss_audio_init:
.LFB117:
	.loc 2 723 0
	.loc 2 725 0
	movl	$conf, %eax
	ret
.LFE117:
	.size	oss_audio_init, .-oss_audio_init
	.p2align 4,,15
	.type	oss_audio_fini, @function
oss_audio_fini:
.LFB118:
	.loc 2 728 0
	.loc 2 729 0
	rep ; ret
.LFE118:
	.size	oss_audio_fini, .-oss_audio_fini
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
	.quad	.LFB100
	.quad	.LFE100-.LFB100
	.byte	0x4
	.long	.LCFI1-.LFB100
	.byte	0xe
	.uleb128 0x48
	.align 8
.LEFDE2:
.LSFDE4:
	.long	.LEFDE4-.LASFDE4
.LASFDE4:
	.long	.Lframe0
	.quad	.LFB101
	.quad	.LFE101-.LFB101
	.byte	0x4
	.long	.LCFI2-.LFB101
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI3-.LCFI2
	.byte	0xe
	.uleb128 0xe0
	.align 8
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.quad	.LFB102
	.quad	.LFE102-.LFB102
	.byte	0x4
	.long	.LCFI4-.LFB102
	.byte	0xe
	.uleb128 0x10
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI5-.LCFI4
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI6-.LCFI5
	.byte	0xe
	.uleb128 0xf0
	.align 8
.LEFDE6:
.LSFDE8:
	.long	.LEFDE8-.LASFDE8
.LASFDE8:
	.long	.Lframe0
	.quad	.LFB103
	.quad	.LFE103-.LFB103
	.byte	0x4
	.long	.LCFI7-.LFB103
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
	.quad	.LFB104
	.quad	.LFE104-.LFB104
	.align 8
.LEFDE10:
.LSFDE12:
	.long	.LEFDE12-.LASFDE12
.LASFDE12:
	.long	.Lframe0
	.quad	.LFB105
	.quad	.LFE105-.LFB105
	.byte	0x4
	.long	.LCFI8-.LFB105
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE12:
.LSFDE14:
	.long	.LEFDE14-.LASFDE14
.LASFDE14:
	.long	.Lframe0
	.quad	.LFB106
	.quad	.LFE106-.LFB106
	.byte	0x4
	.long	.LCFI9-.LFB106
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE14:
.LSFDE16:
	.long	.LEFDE16-.LASFDE16
.LASFDE16:
	.long	.Lframe0
	.quad	.LFB107
	.quad	.LFE107-.LFB107
	.byte	0x4
	.long	.LCFI11-.LFB107
	.byte	0x8d
	.uleb128 0x4
	.byte	0x8c
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI13-.LCFI11
	.byte	0x83
	.uleb128 0x7
	.byte	0x8e
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI16-.LCFI13
	.byte	0xe
	.uleb128 0x70
	.byte	0x8f
	.uleb128 0x2
	.byte	0x86
	.uleb128 0x6
	.align 8
.LEFDE16:
.LSFDE18:
	.long	.LEFDE18-.LASFDE18
.LASFDE18:
	.long	.Lframe0
	.quad	.LFB108
	.quad	.LFE108-.LFB108
	.byte	0x4
	.long	.LCFI18-.LFB108
	.byte	0x8c
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI23-.LCFI18
	.byte	0xe
	.uleb128 0x60
	.byte	0x8f
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8d
	.uleb128 0x4
	.byte	0x83
	.uleb128 0x7
	.align 8
.LEFDE18:
.LSFDE20:
	.long	.LEFDE20-.LASFDE20
.LASFDE20:
	.long	.Lframe0
	.quad	.LFB109
	.quad	.LFE109-.LFB109
	.byte	0x4
	.long	.LCFI24-.LFB109
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE20:
.LSFDE22:
	.long	.LEFDE22-.LASFDE22
.LASFDE22:
	.long	.Lframe0
	.quad	.LFB110
	.quad	.LFE110-.LFB110
	.byte	0x4
	.long	.LCFI25-.LFB110
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI26-.LCFI25
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI27-.LCFI26
	.byte	0xe
	.uleb128 0x80
	.align 8
.LEFDE22:
.LSFDE24:
	.long	.LEFDE24-.LASFDE24
.LASFDE24:
	.long	.Lframe0
	.quad	.LFB111
	.quad	.LFE111-.LFB111
	.byte	0x4
	.long	.LCFI28-.LFB111
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI29-.LCFI28
	.byte	0xe
	.uleb128 0xd0
	.align 8
.LEFDE24:
.LSFDE26:
	.long	.LEFDE26-.LASFDE26
.LASFDE26:
	.long	.Lframe0
	.quad	.LFB112
	.quad	.LFE112-.LFB112
	.byte	0x4
	.long	.LCFI30-.LFB112
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI31-.LCFI30
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI32-.LCFI31
	.byte	0xe
	.uleb128 0x80
	.align 8
.LEFDE26:
.LSFDE28:
	.long	.LEFDE28-.LASFDE28
.LASFDE28:
	.long	.Lframe0
	.quad	.LFB113
	.quad	.LFE113-.LFB113
	.byte	0x4
	.long	.LCFI33-.LFB113
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE28:
.LSFDE30:
	.long	.LEFDE30-.LASFDE30
.LASFDE30:
	.long	.Lframe0
	.quad	.LFB114
	.quad	.LFE114-.LFB114
	.byte	0x4
	.long	.LCFI35-.LFB114
	.byte	0x86
	.uleb128 0x6
	.byte	0x83
	.uleb128 0x7
	.byte	0x4
	.long	.LCFI40-.LCFI35
	.byte	0xe
	.uleb128 0x70
	.byte	0x8f
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8d
	.uleb128 0x4
	.byte	0x8c
	.uleb128 0x5
	.align 8
.LEFDE30:
.LSFDE32:
	.long	.LEFDE32-.LASFDE32
.LASFDE32:
	.long	.Lframe0
	.quad	.LFB115
	.quad	.LFE115-.LFB115
	.align 8
.LEFDE32:
.LSFDE34:
	.long	.LEFDE34-.LASFDE34
.LASFDE34:
	.long	.Lframe0
	.quad	.LFB116
	.quad	.LFE116-.LFB116
	.byte	0x4
	.long	.LCFI41-.LFB116
	.byte	0xe
	.uleb128 0x48
	.align 8
.LEFDE34:
.LSFDE36:
	.long	.LEFDE36-.LASFDE36
.LASFDE36:
	.long	.Lframe0
	.quad	.LFB117
	.quad	.LFE117-.LFB117
	.align 8
.LEFDE36:
.LSFDE38:
	.long	.LEFDE38-.LASFDE38
.LASFDE38:
	.long	.Lframe0
	.quad	.LFB118
	.quad	.LFE118-.LFB118
	.align 8
.LEFDE38:
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
	.quad	.LFB100
	.quad	.LFE100-.LFB100
	.byte	0x4
	.long	.LCFI1-.LFB100
	.byte	0xe
	.uleb128 0x48
	.align 8
.LEFDE3:
.LSFDE5:
	.long	.LEFDE5-.LASFDE5
.LASFDE5:
	.long	.LASFDE5-.Lframe1
	.quad	.LFB101
	.quad	.LFE101-.LFB101
	.byte	0x4
	.long	.LCFI2-.LFB101
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI3-.LCFI2
	.byte	0xe
	.uleb128 0xe0
	.align 8
.LEFDE5:
.LSFDE7:
	.long	.LEFDE7-.LASFDE7
.LASFDE7:
	.long	.LASFDE7-.Lframe1
	.quad	.LFB102
	.quad	.LFE102-.LFB102
	.byte	0x4
	.long	.LCFI4-.LFB102
	.byte	0xe
	.uleb128 0x10
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI5-.LCFI4
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI6-.LCFI5
	.byte	0xe
	.uleb128 0xf0
	.align 8
.LEFDE7:
.LSFDE9:
	.long	.LEFDE9-.LASFDE9
.LASFDE9:
	.long	.LASFDE9-.Lframe1
	.quad	.LFB103
	.quad	.LFE103-.LFB103
	.byte	0x4
	.long	.LCFI7-.LFB103
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
	.quad	.LFB104
	.quad	.LFE104-.LFB104
	.align 8
.LEFDE11:
.LSFDE13:
	.long	.LEFDE13-.LASFDE13
.LASFDE13:
	.long	.LASFDE13-.Lframe1
	.quad	.LFB105
	.quad	.LFE105-.LFB105
	.byte	0x4
	.long	.LCFI8-.LFB105
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE13:
.LSFDE15:
	.long	.LEFDE15-.LASFDE15
.LASFDE15:
	.long	.LASFDE15-.Lframe1
	.quad	.LFB106
	.quad	.LFE106-.LFB106
	.byte	0x4
	.long	.LCFI9-.LFB106
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE15:
.LSFDE17:
	.long	.LEFDE17-.LASFDE17
.LASFDE17:
	.long	.LASFDE17-.Lframe1
	.quad	.LFB107
	.quad	.LFE107-.LFB107
	.byte	0x4
	.long	.LCFI11-.LFB107
	.byte	0x8d
	.uleb128 0x4
	.byte	0x8c
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI13-.LCFI11
	.byte	0x83
	.uleb128 0x7
	.byte	0x8e
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI16-.LCFI13
	.byte	0xe
	.uleb128 0x70
	.byte	0x8f
	.uleb128 0x2
	.byte	0x86
	.uleb128 0x6
	.align 8
.LEFDE17:
.LSFDE19:
	.long	.LEFDE19-.LASFDE19
.LASFDE19:
	.long	.LASFDE19-.Lframe1
	.quad	.LFB108
	.quad	.LFE108-.LFB108
	.byte	0x4
	.long	.LCFI18-.LFB108
	.byte	0x8c
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI23-.LCFI18
	.byte	0xe
	.uleb128 0x60
	.byte	0x8f
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8d
	.uleb128 0x4
	.byte	0x83
	.uleb128 0x7
	.align 8
.LEFDE19:
.LSFDE21:
	.long	.LEFDE21-.LASFDE21
.LASFDE21:
	.long	.LASFDE21-.Lframe1
	.quad	.LFB109
	.quad	.LFE109-.LFB109
	.byte	0x4
	.long	.LCFI24-.LFB109
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE21:
.LSFDE23:
	.long	.LEFDE23-.LASFDE23
.LASFDE23:
	.long	.LASFDE23-.Lframe1
	.quad	.LFB110
	.quad	.LFE110-.LFB110
	.byte	0x4
	.long	.LCFI25-.LFB110
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI26-.LCFI25
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI27-.LCFI26
	.byte	0xe
	.uleb128 0x80
	.align 8
.LEFDE23:
.LSFDE25:
	.long	.LEFDE25-.LASFDE25
.LASFDE25:
	.long	.LASFDE25-.Lframe1
	.quad	.LFB111
	.quad	.LFE111-.LFB111
	.byte	0x4
	.long	.LCFI28-.LFB111
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI29-.LCFI28
	.byte	0xe
	.uleb128 0xd0
	.align 8
.LEFDE25:
.LSFDE27:
	.long	.LEFDE27-.LASFDE27
.LASFDE27:
	.long	.LASFDE27-.Lframe1
	.quad	.LFB112
	.quad	.LFE112-.LFB112
	.byte	0x4
	.long	.LCFI30-.LFB112
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI31-.LCFI30
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI32-.LCFI31
	.byte	0xe
	.uleb128 0x80
	.align 8
.LEFDE27:
.LSFDE29:
	.long	.LEFDE29-.LASFDE29
.LASFDE29:
	.long	.LASFDE29-.Lframe1
	.quad	.LFB113
	.quad	.LFE113-.LFB113
	.byte	0x4
	.long	.LCFI33-.LFB113
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE29:
.LSFDE31:
	.long	.LEFDE31-.LASFDE31
.LASFDE31:
	.long	.LASFDE31-.Lframe1
	.quad	.LFB114
	.quad	.LFE114-.LFB114
	.byte	0x4
	.long	.LCFI35-.LFB114
	.byte	0x86
	.uleb128 0x6
	.byte	0x83
	.uleb128 0x7
	.byte	0x4
	.long	.LCFI40-.LCFI35
	.byte	0xe
	.uleb128 0x70
	.byte	0x8f
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8d
	.uleb128 0x4
	.byte	0x8c
	.uleb128 0x5
	.align 8
.LEFDE31:
.LSFDE33:
	.long	.LEFDE33-.LASFDE33
.LASFDE33:
	.long	.LASFDE33-.Lframe1
	.quad	.LFB115
	.quad	.LFE115-.LFB115
	.align 8
.LEFDE33:
.LSFDE35:
	.long	.LEFDE35-.LASFDE35
.LASFDE35:
	.long	.LASFDE35-.Lframe1
	.quad	.LFB116
	.quad	.LFE116-.LFB116
	.byte	0x4
	.long	.LCFI41-.LFB116
	.byte	0xe
	.uleb128 0x48
	.align 8
.LEFDE35:
.LSFDE37:
	.long	.LEFDE37-.LASFDE37
.LASFDE37:
	.long	.LASFDE37-.Lframe1
	.quad	.LFB117
	.quad	.LFE117-.LFB117
	.align 8
.LEFDE37:
.LSFDE39:
	.long	.LEFDE39-.LASFDE39
.LASFDE39:
	.long	.LASFDE39-.Lframe1
	.quad	.LFB118
	.quad	.LFE118-.LFB118
	.align 8
.LEFDE39:
	.file 4 "/usr/include/stdio.h"
	.file 5 "/usr/lib/gcc/x86_64-linux-gnu/3.4.6/include/stdarg.h"
	.file 6 "<internal>"
	.file 7 "audio/mixeng.h"
	.file 8 "/usr/include/sys/types.h"
	.file 9 "/usr/include/stdint.h"
	.file 10 "/usr/include/linux/soundcard.h"
	.file 11 "/usr/lib/gcc/x86_64-linux-gnu/3.4.6/include/stddef.h"
	.file 12 "/usr/include/bits/types.h"
	.file 13 "/usr/include/libio.h"
	.text
.Letext0:
	.section	.debug_info
	.long	0x1b7e
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.Ldebug_line0
	.quad	.Letext0
	.quad	.Ltext0
	.long	.LASF231
	.byte	0x1
	.long	.LASF232
	.long	.LASF233
	.uleb128 0x2
	.long	.LASF9
	.byte	0xb
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
	.byte	0xc
	.byte	0x8d
	.long	0x53
	.uleb128 0x2
	.long	.LASF11
	.byte	0xc
	.byte	0x8e
	.long	0x53
	.uleb128 0x7
	.byte	0x8
	.uleb128 0x2
	.long	.LASF12
	.byte	0xc
	.byte	0xb4
	.long	0x53
	.uleb128 0x5
	.byte	0x8
	.long	0x7a
	.uleb128 0x2
	.long	.LASF13
	.byte	0x8
	.byte	0x6e
	.long	0xae
	.uleb128 0x2
	.long	.LASF14
	.byte	0x8
	.byte	0xc6
	.long	0x53
	.uleb128 0x3
	.long	.LASF15
	.byte	0x8
	.byte	0x7
	.uleb128 0x5
	.byte	0x8
	.long	0xe2
	.uleb128 0x8
	.uleb128 0x9
	.long	0xf3
	.long	0x7a
	.uleb128 0xa
	.long	0x61
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
	.long	0x13d
	.long	.LASF20
	.byte	0x10
	.byte	0xa
	.value	0x238
	.uleb128 0xc
	.long	.LASF16
	.byte	0xa
	.value	0x239
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.long	.LASF17
	.byte	0xa
	.value	0x23a
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.long	.LASF18
	.byte	0xa
	.value	0x23b
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.long	.LASF19
	.byte	0xa
	.value	0x23d
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0xd
	.long	.LASF20
	.byte	0xa
	.value	0x23f
	.long	0xf3
	.uleb128 0xb
	.long	0x184
	.long	.LASF21
	.byte	0xc
	.byte	0xa
	.value	0x25a
	.uleb128 0xc
	.long	.LASF19
	.byte	0xa
	.value	0x25b
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.long	.LASF22
	.byte	0xa
	.value	0x25c
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"ptr"
	.byte	0xa
	.value	0x25d
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0xf
	.long	0x350
	.long	.LASF23
	.byte	0xd8
	.byte	0x4
	.byte	0x2d
	.uleb128 0xc
	.long	.LASF24
	.byte	0xd
	.value	0x110
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.long	.LASF25
	.byte	0xd
	.value	0x115
	.long	0xb9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.long	.LASF26
	.byte	0xd
	.value	0x116
	.long	0xb9
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xc
	.long	.LASF27
	.byte	0xd
	.value	0x117
	.long	0xb9
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xc
	.long	.LASF28
	.byte	0xd
	.value	0x118
	.long	0xb9
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xc
	.long	.LASF29
	.byte	0xd
	.value	0x119
	.long	0xb9
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xc
	.long	.LASF30
	.byte	0xd
	.value	0x11a
	.long	0xb9
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xc
	.long	.LASF31
	.byte	0xd
	.value	0x11b
	.long	0xb9
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xc
	.long	.LASF32
	.byte	0xd
	.value	0x11c
	.long	0xb9
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xc
	.long	.LASF33
	.byte	0xd
	.value	0x11e
	.long	0xb9
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xc
	.long	.LASF34
	.byte	0xd
	.value	0x11f
	.long	0xb9
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xc
	.long	.LASF35
	.byte	0xd
	.value	0x120
	.long	0xb9
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xc
	.long	.LASF36
	.byte	0xd
	.value	0x122
	.long	0x3ee
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xc
	.long	.LASF37
	.byte	0xd
	.value	0x124
	.long	0x3f4
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xc
	.long	.LASF38
	.byte	0xd
	.value	0x126
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xc
	.long	.LASF39
	.byte	0xd
	.value	0x12a
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xc
	.long	.LASF40
	.byte	0xd
	.value	0x12c
	.long	0x96
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xc
	.long	.LASF41
	.byte	0xd
	.value	0x130
	.long	0x68
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xc
	.long	.LASF42
	.byte	0xd
	.value	0x131
	.long	0x88
	.byte	0x3
	.byte	0x23
	.uleb128 0x82
	.uleb128 0xc
	.long	.LASF43
	.byte	0xd
	.value	0x132
	.long	0xe3
	.byte	0x3
	.byte	0x23
	.uleb128 0x83
	.uleb128 0xc
	.long	.LASF44
	.byte	0xd
	.value	0x136
	.long	0x3fa
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xc
	.long	.LASF45
	.byte	0xd
	.value	0x13f
	.long	0xa1
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xc
	.long	.LASF46
	.byte	0xd
	.value	0x148
	.long	0xac
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xc
	.long	.LASF47
	.byte	0xd
	.value	0x149
	.long	0xac
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xc
	.long	.LASF48
	.byte	0xd
	.value	0x14a
	.long	0xac
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xc
	.long	.LASF49
	.byte	0xd
	.value	0x14b
	.long	0xac
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xc
	.long	.LASF50
	.byte	0xd
	.value	0x14c
	.long	0x2d
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0xc
	.long	.LASF51
	.byte	0xd
	.value	0x14e
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xc
	.long	.LASF52
	.byte	0xd
	.value	0x150
	.long	0x400
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.byte	0x0
	.uleb128 0x2
	.long	.LASF53
	.byte	0x5
	.byte	0x2b
	.long	0x35b
	.uleb128 0x9
	.long	0x36b
	.long	0x36b
	.uleb128 0xa
	.long	0x61
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x3b0
	.long	.LASF54
	.byte	0x18
	.byte	0x6
	.byte	0x0
	.uleb128 0x10
	.long	.LASF55
	.byte	0x6
	.byte	0x0
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.long	.LASF56
	.byte	0x6
	.byte	0x0
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.long	.LASF57
	.byte	0x6
	.byte	0x0
	.long	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x10
	.long	.LASF58
	.byte	0x6
	.byte	0x0
	.long	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x11
	.long	.LASF59
	.byte	0xd
	.byte	0xb4
	.uleb128 0xf
	.long	0x3ee
	.long	.LASF60
	.byte	0x18
	.byte	0xd
	.byte	0xba
	.uleb128 0x10
	.long	.LASF61
	.byte	0xd
	.byte	0xbb
	.long	0x3ee
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.long	.LASF62
	.byte	0xd
	.byte	0xbc
	.long	0x3f4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x10
	.long	.LASF63
	.byte	0xd
	.byte	0xc0
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x3b7
	.uleb128 0x5
	.byte	0x8
	.long	0x184
	.uleb128 0x5
	.byte	0x8
	.long	0x3b0
	.uleb128 0x9
	.long	0x410
	.long	0x7a
	.uleb128 0xa
	.long	0x61
	.byte	0x13
	.byte	0x0
	.uleb128 0x2
	.long	.LASF64
	.byte	0x4
	.byte	0x50
	.long	0x350
	.uleb128 0x2
	.long	.LASF65
	.byte	0x9
	.byte	0x31
	.long	0x81
	.uleb128 0x2
	.long	.LASF66
	.byte	0x9
	.byte	0x38
	.long	0x38
	.uleb128 0x12
	.long	0x43d
	.byte	0x1
	.uleb128 0x13
	.long	0xac
	.byte	0x0
	.uleb128 0x2
	.long	.LASF67
	.byte	0x3
	.byte	0x1e
	.long	0x448
	.uleb128 0x5
	.byte	0x8
	.long	0x44e
	.uleb128 0x12
	.long	0x45f
	.byte	0x1
	.uleb128 0x13
	.long	0xac
	.uleb128 0x13
	.long	0x3f
	.byte	0x0
	.uleb128 0x14
	.long	0x48c
	.byte	0x4
	.byte	0x3
	.byte	0x20
	.uleb128 0x15
	.long	.LASF68
	.sleb128 0
	.uleb128 0x15
	.long	.LASF69
	.sleb128 1
	.uleb128 0x15
	.long	.LASF70
	.sleb128 2
	.uleb128 0x15
	.long	.LASF71
	.sleb128 3
	.uleb128 0x15
	.long	.LASF72
	.sleb128 4
	.uleb128 0x15
	.long	.LASF73
	.sleb128 5
	.byte	0x0
	.uleb128 0x2
	.long	.LASF74
	.byte	0x3
	.byte	0x27
	.long	0x45f
	.uleb128 0x16
	.long	0x4d8
	.byte	0x10
	.byte	0x3
	.byte	0x34
	.uleb128 0x10
	.long	.LASF75
	.byte	0x3
	.byte	0x30
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.long	.LASF76
	.byte	0x3
	.byte	0x31
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x17
	.string	"fmt"
	.byte	0x3
	.byte	0x32
	.long	0x48c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x10
	.long	.LASF77
	.byte	0x3
	.byte	0x33
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.long	.LASF78
	.byte	0x3
	.byte	0x34
	.long	0x497
	.uleb128 0x14
	.long	0x4f8
	.byte	0x4
	.byte	0x3
	.byte	0x36
	.uleb128 0x15
	.long	.LASF79
	.sleb128 0
	.uleb128 0x15
	.long	.LASF80
	.sleb128 1
	.byte	0x0
	.uleb128 0x2
	.long	.LASF81
	.byte	0x3
	.byte	0x39
	.long	0x4e3
	.uleb128 0xf
	.long	0x53a
	.long	.LASF82
	.byte	0x18
	.byte	0x3
	.byte	0x3b
	.uleb128 0x10
	.long	.LASF83
	.byte	0x3
	.byte	0x3c
	.long	0x54b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.long	.LASF84
	.byte	0x3
	.byte	0x3d
	.long	0x567
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x10
	.long	.LASF85
	.byte	0x3
	.byte	0x3e
	.long	0x56d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x12
	.long	0x54b
	.byte	0x1
	.uleb128 0x13
	.long	0xac
	.uleb128 0x13
	.long	0x4f8
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x53a
	.uleb128 0x12
	.long	0x567
	.byte	0x1
	.uleb128 0x13
	.long	0xac
	.uleb128 0x13
	.long	0xac
	.uleb128 0x13
	.long	0x3f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x551
	.uleb128 0x5
	.byte	0x8
	.long	0x431
	.uleb128 0x2
	.long	.LASF86
	.byte	0x3
	.byte	0x4c
	.long	0x57e
	.uleb128 0xf
	.long	0x641
	.long	.LASF86
	.byte	0x98
	.byte	0x3
	.byte	0x4c
	.uleb128 0x10
	.long	.LASF87
	.byte	0x1
	.byte	0x6b
	.long	0x8cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.long	.LASF88
	.byte	0x1
	.byte	0x6c
	.long	0xc51
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x10
	.long	.LASF89
	.byte	0x1
	.byte	0x6d
	.long	0xca
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x17
	.string	"buf"
	.byte	0x1
	.byte	0x6e
	.long	0x7de
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x10
	.long	.LASF90
	.byte	0x1
	.byte	0x6f
	.long	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x10
	.long	.LASF91
	.byte	0x1
	.byte	0x70
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x10
	.long	.LASF92
	.byte	0x1
	.byte	0x71
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x10
	.long	.LASF93
	.byte	0x1
	.byte	0x72
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x17
	.string	"hw"
	.byte	0x1
	.byte	0x73
	.long	0xc8d
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x10
	.long	.LASF94
	.byte	0x1
	.byte	0x74
	.long	0xb9
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x17
	.string	"vol"
	.byte	0x1
	.byte	0x75
	.long	0x781
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x10
	.long	.LASF95
	.byte	0x1
	.byte	0x76
	.long	0x8a3
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x10
	.long	.LASF96
	.byte	0x1
	.byte	0x77
	.long	0xc62
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.byte	0x0
	.uleb128 0x2
	.long	.LASF97
	.byte	0x3
	.byte	0x4d
	.long	0x64c
	.uleb128 0xf
	.long	0x692
	.long	.LASF97
	.byte	0x98
	.byte	0x3
	.byte	0x4d
	.uleb128 0x17
	.string	"hw"
	.byte	0x1
	.byte	0xac
	.long	0xb4d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x17
	.string	"buf"
	.byte	0x1
	.byte	0xad
	.long	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x10
	.long	.LASF98
	.byte	0x1
	.byte	0xae
	.long	0xef5
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x10
	.long	.LASF96
	.byte	0x1
	.byte	0xaf
	.long	0xf10
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.byte	0x0
	.uleb128 0x2
	.long	.LASF99
	.byte	0x3
	.byte	0x4e
	.long	0x69d
	.uleb128 0xf
	.long	0x752
	.long	.LASF99
	.byte	0x98
	.byte	0x3
	.byte	0x4e
	.uleb128 0x10
	.long	.LASF92
	.byte	0x1
	.byte	0x7b
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.long	.LASF87
	.byte	0x1
	.byte	0x7c
	.long	0x8cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.long	.LASF89
	.byte	0x1
	.byte	0x7d
	.long	0xca
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x10
	.long	.LASF90
	.byte	0x1
	.byte	0x7e
	.long	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x10
	.long	.LASF100
	.byte	0x1
	.byte	0x7f
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x17
	.string	"buf"
	.byte	0x1
	.byte	0x80
	.long	0x7de
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x10
	.long	.LASF101
	.byte	0x1
	.byte	0x81
	.long	0xaa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x17
	.string	"hw"
	.byte	0x1
	.byte	0x82
	.long	0xcbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x10
	.long	.LASF94
	.byte	0x1
	.byte	0x83
	.long	0xb9
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x17
	.string	"vol"
	.byte	0x1
	.byte	0x84
	.long	0x781
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x10
	.long	.LASF95
	.byte	0x1
	.byte	0x85
	.long	0x8a3
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x10
	.long	.LASF96
	.byte	0x1
	.byte	0x86
	.long	0xc93
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.byte	0x0
	.uleb128 0x16
	.long	0x781
	.byte	0x18
	.byte	0x7
	.byte	0x20
	.uleb128 0x10
	.long	.LASF102
	.byte	0x7
	.byte	0x20
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x17
	.string	"r"
	.byte	0x7
	.byte	0x20
	.long	0xca
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x17
	.string	"l"
	.byte	0x7
	.byte	0x20
	.long	0xca
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.long	.LASF103
	.byte	0x7
	.byte	0x20
	.long	0x752
	.uleb128 0x16
	.long	0x7ad
	.byte	0x10
	.byte	0x7
	.byte	0x21
	.uleb128 0x17
	.string	"l"
	.byte	0x7
	.byte	0x21
	.long	0xca
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x17
	.string	"r"
	.byte	0x7
	.byte	0x21
	.long	0xca
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x2
	.long	.LASF104
	.byte	0x7
	.byte	0x21
	.long	0x78c
	.uleb128 0x2
	.long	.LASF105
	.byte	0x7
	.byte	0x25
	.long	0x7c3
	.uleb128 0x12
	.long	0x7de
	.byte	0x1
	.uleb128 0x13
	.long	0x7de
	.uleb128 0x13
	.long	0xdc
	.uleb128 0x13
	.long	0x3f
	.uleb128 0x13
	.long	0x7e4
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x7ad
	.uleb128 0x5
	.byte	0x8
	.long	0x781
	.uleb128 0x2
	.long	.LASF106
	.byte	0x7
	.byte	0x26
	.long	0x7f5
	.uleb128 0x12
	.long	0x80b
	.byte	0x1
	.uleb128 0x13
	.long	0xac
	.uleb128 0x13
	.long	0x80b
	.uleb128 0x13
	.long	0x3f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x811
	.uleb128 0x6
	.long	0x7ad
	.uleb128 0x14
	.long	0x837
	.byte	0x4
	.byte	0x1
	.byte	0x23
	.uleb128 0x15
	.long	.LASF107
	.sleb128 0
	.uleb128 0x15
	.long	.LASF108
	.sleb128 1
	.uleb128 0x15
	.long	.LASF109
	.sleb128 2
	.uleb128 0x15
	.long	.LASF110
	.sleb128 3
	.byte	0x0
	.uleb128 0x2
	.long	.LASF111
	.byte	0x1
	.byte	0x28
	.long	0x816
	.uleb128 0xf
	.long	0x8a3
	.long	.LASF112
	.byte	0x30
	.byte	0x1
	.byte	0x2a
	.uleb128 0x10
	.long	.LASF94
	.byte	0x1
	.byte	0x2b
	.long	0x6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x17
	.string	"tag"
	.byte	0x1
	.byte	0x2c
	.long	0x837
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x10
	.long	.LASF113
	.byte	0x1
	.byte	0x2d
	.long	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x10
	.long	.LASF114
	.byte	0x1
	.byte	0x2e
	.long	0x6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x10
	.long	.LASF115
	.byte	0x1
	.byte	0x2f
	.long	0x4d
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x10
	.long	.LASF116
	.byte	0x1
	.byte	0x30
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0xf
	.long	0x8cb
	.long	.LASF117
	.byte	0x10
	.byte	0x1
	.byte	0x33
	.uleb128 0x10
	.long	.LASF118
	.byte	0x1
	.byte	0x34
	.long	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x17
	.string	"fn"
	.byte	0x1
	.byte	0x35
	.long	0x43d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0xf
	.long	0x948
	.long	.LASF119
	.byte	0x20
	.byte	0x1
	.byte	0x38
	.uleb128 0x10
	.long	.LASF120
	.byte	0x1
	.byte	0x39
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.long	.LASF121
	.byte	0x1
	.byte	0x3a
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.long	.LASF75
	.byte	0x1
	.byte	0x3b
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x10
	.long	.LASF76
	.byte	0x1
	.byte	0x3c
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x10
	.long	.LASF122
	.byte	0x1
	.byte	0x3d
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x10
	.long	.LASF123
	.byte	0x1
	.byte	0x3e
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x10
	.long	.LASF124
	.byte	0x1
	.byte	0x3f
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x10
	.long	.LASF125
	.byte	0x1
	.byte	0x40
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0xf
	.long	0x980
	.long	.LASF126
	.byte	0xb0
	.byte	0x1
	.byte	0x43
	.uleb128 0x17
	.string	"sw"
	.byte	0x1
	.byte	0xb3
	.long	0x573
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x17
	.string	"cap"
	.byte	0x1
	.byte	0xb4
	.long	0xf6c
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x10
	.long	.LASF96
	.byte	0x1
	.byte	0xb5
	.long	0xf41
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.byte	0x0
	.uleb128 0xf
	.long	0x99b
	.long	.LASF127
	.byte	0x8
	.byte	0x1
	.byte	0x52
	.uleb128 0x10
	.long	.LASF128
	.byte	0x1
	.byte	0x52
	.long	0x99b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x57e
	.uleb128 0xf
	.long	0x9bc
	.long	.LASF129
	.byte	0x8
	.byte	0x1
	.byte	0x53
	.uleb128 0x10
	.long	.LASF128
	.byte	0x1
	.byte	0x53
	.long	0x9bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x948
	.uleb128 0x16
	.long	0x9e7
	.byte	0x10
	.byte	0x1
	.byte	0x55
	.uleb128 0x10
	.long	.LASF130
	.byte	0x1
	.byte	0x55
	.long	0xa9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.long	.LASF131
	.byte	0x1
	.byte	0x55
	.long	0xaa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0xf
	.long	0xa9c
	.long	.LASF132
	.byte	0x78
	.byte	0x1
	.byte	0x45
	.uleb128 0x10
	.long	.LASF133
	.byte	0x1
	.byte	0x46
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.long	.LASF134
	.byte	0x1
	.byte	0x47
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.long	.LASF87
	.byte	0x1
	.byte	0x48
	.long	0x8cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x10
	.long	.LASF101
	.byte	0x1
	.byte	0x4a
	.long	0xaa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x10
	.long	.LASF135
	.byte	0x1
	.byte	0x4c
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x10
	.long	.LASF136
	.byte	0x1
	.byte	0x4d
	.long	0x426
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x10
	.long	.LASF137
	.byte	0x1
	.byte	0x4f
	.long	0x7de
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x10
	.long	.LASF138
	.byte	0x1
	.byte	0x51
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x10
	.long	.LASF139
	.byte	0x1
	.byte	0x52
	.long	0x980
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x10
	.long	.LASF140
	.byte	0x1
	.byte	0x53
	.long	0x9a1
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x10
	.long	.LASF141
	.byte	0x1
	.byte	0x54
	.long	0xb47
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x10
	.long	.LASF96
	.byte	0x1
	.byte	0x55
	.long	0x9c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x9e7
	.uleb128 0x5
	.byte	0x8
	.long	0xa9c
	.uleb128 0x5
	.byte	0x8
	.long	0x7ea
	.uleb128 0xf
	.long	0xb47
	.long	.LASF142
	.byte	0x50
	.byte	0x1
	.byte	0x21
	.uleb128 0x10
	.long	.LASF143
	.byte	0x1
	.byte	0x98
	.long	0xd98
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.long	.LASF144
	.byte	0x1
	.byte	0x99
	.long	0xdaa
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x10
	.long	.LASF145
	.byte	0x1
	.byte	0x9a
	.long	0xdc0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x10
	.long	.LASF146
	.byte	0x1
	.byte	0x9b
	.long	0xde6
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x10
	.long	.LASF147
	.byte	0x1
	.byte	0x9c
	.long	0xe02
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x10
	.long	.LASF148
	.byte	0x1
	.byte	0x9e
	.long	0xe1d
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x10
	.long	.LASF149
	.byte	0x1
	.byte	0x9f
	.long	0xe2f
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x10
	.long	.LASF150
	.byte	0x1
	.byte	0xa0
	.long	0xe45
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x10
	.long	.LASF151
	.byte	0x1
	.byte	0xa1
	.long	0xe6b
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x10
	.long	.LASF152
	.byte	0x1
	.byte	0xa2
	.long	0xe87
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xaae
	.uleb128 0x2
	.long	.LASF132
	.byte	0x1
	.byte	0x56
	.long	0x9e7
	.uleb128 0xf
	.long	0xb73
	.long	.LASF153
	.byte	0x8
	.byte	0x1
	.byte	0x65
	.uleb128 0x10
	.long	.LASF128
	.byte	0x1
	.byte	0x65
	.long	0xb73
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x69d
	.uleb128 0x16
	.long	0xb9e
	.byte	0x10
	.byte	0x1
	.byte	0x67
	.uleb128 0x10
	.long	.LASF130
	.byte	0x1
	.byte	0x67
	.long	0xc45
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.long	.LASF131
	.byte	0x1
	.byte	0x67
	.long	0xc4b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0xf
	.long	0xc45
	.long	.LASF154
	.byte	0x70
	.byte	0x1
	.byte	0x58
	.uleb128 0x10
	.long	.LASF133
	.byte	0x1
	.byte	0x59
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.long	.LASF87
	.byte	0x1
	.byte	0x5a
	.long	0x8cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.long	.LASF88
	.byte	0x1
	.byte	0x5c
	.long	0xc51
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x10
	.long	.LASF155
	.byte	0x1
	.byte	0x5e
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x10
	.long	.LASF156
	.byte	0x1
	.byte	0x5f
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x10
	.long	.LASF136
	.byte	0x1
	.byte	0x60
	.long	0x426
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x10
	.long	.LASF157
	.byte	0x1
	.byte	0x62
	.long	0x7de
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x10
	.long	.LASF138
	.byte	0x1
	.byte	0x64
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x10
	.long	.LASF139
	.byte	0x1
	.byte	0x65
	.long	0xb58
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x10
	.long	.LASF141
	.byte	0x1
	.byte	0x66
	.long	0xb47
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x10
	.long	.LASF96
	.byte	0x1
	.byte	0x67
	.long	0xb79
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xb9e
	.uleb128 0x5
	.byte	0x8
	.long	0xc45
	.uleb128 0x5
	.byte	0x8
	.long	0x7b8
	.uleb128 0x2
	.long	.LASF154
	.byte	0x1
	.byte	0x68
	.long	0xb9e
	.uleb128 0x16
	.long	0xc87
	.byte	0x10
	.byte	0x1
	.byte	0x77
	.uleb128 0x10
	.long	.LASF130
	.byte	0x1
	.byte	0x77
	.long	0x99b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.long	.LASF131
	.byte	0x1
	.byte	0x77
	.long	0xc87
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x99b
	.uleb128 0x5
	.byte	0x8
	.long	0xb4d
	.uleb128 0x16
	.long	0xcb8
	.byte	0x10
	.byte	0x1
	.byte	0x86
	.uleb128 0x10
	.long	.LASF130
	.byte	0x1
	.byte	0x86
	.long	0xb73
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.long	.LASF131
	.byte	0x1
	.byte	0x86
	.long	0xcb8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xb73
	.uleb128 0x5
	.byte	0x8
	.long	0xc57
	.uleb128 0xf
	.long	0xd6b
	.long	.LASF158
	.byte	0x48
	.byte	0x1
	.byte	0x89
	.uleb128 0x10
	.long	.LASF94
	.byte	0x1
	.byte	0x8a
	.long	0x6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.long	.LASF114
	.byte	0x1
	.byte	0x8b
	.long	0x6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x10
	.long	.LASF159
	.byte	0x1
	.byte	0x8c
	.long	0xd6b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x10
	.long	.LASF160
	.byte	0x1
	.byte	0x8d
	.long	0xd77
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x10
	.long	.LASF161
	.byte	0x1
	.byte	0x8e
	.long	0x56d
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x10
	.long	.LASF141
	.byte	0x1
	.byte	0x8f
	.long	0xb47
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x10
	.long	.LASF162
	.byte	0x1
	.byte	0x90
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x10
	.long	.LASF163
	.byte	0x1
	.byte	0x91
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x10
	.long	.LASF164
	.byte	0x1
	.byte	0x92
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x10
	.long	.LASF165
	.byte	0x1
	.byte	0x93
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x10
	.long	.LASF166
	.byte	0x1
	.byte	0x94
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x842
	.uleb128 0x18
	.byte	0x1
	.long	0xac
	.uleb128 0x5
	.byte	0x8
	.long	0xd71
	.uleb128 0x19
	.long	0xd92
	.byte	0x1
	.long	0x3f
	.uleb128 0x13
	.long	0xc8d
	.uleb128 0x13
	.long	0xd92
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x4d8
	.uleb128 0x5
	.byte	0x8
	.long	0xd7d
	.uleb128 0x12
	.long	0xdaa
	.byte	0x1
	.uleb128 0x13
	.long	0xc8d
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xd9e
	.uleb128 0x19
	.long	0xdc0
	.byte	0x1
	.long	0x3f
	.uleb128 0x13
	.long	0xc8d
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xdb0
	.uleb128 0x19
	.long	0xde0
	.byte	0x1
	.long	0x3f
	.uleb128 0x13
	.long	0xde0
	.uleb128 0x13
	.long	0xac
	.uleb128 0x13
	.long	0x3f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x573
	.uleb128 0x5
	.byte	0x8
	.long	0xdc6
	.uleb128 0x19
	.long	0xe02
	.byte	0x1
	.long	0x3f
	.uleb128 0x13
	.long	0xc8d
	.uleb128 0x13
	.long	0x3f
	.uleb128 0x1a
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xdec
	.uleb128 0x19
	.long	0xe1d
	.byte	0x1
	.long	0x3f
	.uleb128 0x13
	.long	0xcbe
	.uleb128 0x13
	.long	0xd92
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xe08
	.uleb128 0x12
	.long	0xe2f
	.byte	0x1
	.uleb128 0x13
	.long	0xcbe
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xe23
	.uleb128 0x19
	.long	0xe45
	.byte	0x1
	.long	0x3f
	.uleb128 0x13
	.long	0xcbe
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xe35
	.uleb128 0x19
	.long	0xe65
	.byte	0x1
	.long	0x3f
	.uleb128 0x13
	.long	0xe65
	.uleb128 0x13
	.long	0xac
	.uleb128 0x13
	.long	0x3f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x692
	.uleb128 0x5
	.byte	0x8
	.long	0xe4b
	.uleb128 0x19
	.long	0xe87
	.byte	0x1
	.long	0x3f
	.uleb128 0x13
	.long	0xcbe
	.uleb128 0x13
	.long	0x3f
	.uleb128 0x1a
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xe71
	.uleb128 0x16
	.long	0xeb2
	.byte	0x10
	.byte	0x1
	.byte	0xa8
	.uleb128 0x10
	.long	.LASF130
	.byte	0x1
	.byte	0xa8
	.long	0xee9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.long	.LASF131
	.byte	0x1
	.byte	0xa8
	.long	0xeef
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0xf
	.long	0xee9
	.long	.LASF167
	.byte	0x30
	.byte	0x1
	.byte	0xa5
	.uleb128 0x17
	.string	"ops"
	.byte	0x1
	.byte	0xa6
	.long	0x503
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.long	.LASF118
	.byte	0x1
	.byte	0xa7
	.long	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x10
	.long	.LASF96
	.byte	0x1
	.byte	0xa8
	.long	0xe8d
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xeb2
	.uleb128 0x5
	.byte	0x8
	.long	0xee9
	.uleb128 0xf
	.long	0xf10
	.long	.LASF168
	.byte	0x8
	.byte	0x1
	.byte	0xae
	.uleb128 0x10
	.long	.LASF128
	.byte	0x1
	.byte	0xae
	.long	0xee9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x16
	.long	0xf35
	.byte	0x10
	.byte	0x1
	.byte	0xaf
	.uleb128 0x10
	.long	.LASF130
	.byte	0x1
	.byte	0xaf
	.long	0xf35
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.long	.LASF131
	.byte	0x1
	.byte	0xaf
	.long	0xf3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x64c
	.uleb128 0x5
	.byte	0x8
	.long	0xf35
	.uleb128 0x16
	.long	0xf66
	.byte	0x10
	.byte	0x1
	.byte	0xb5
	.uleb128 0x10
	.long	.LASF130
	.byte	0x1
	.byte	0xb5
	.long	0x9bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.long	.LASF131
	.byte	0x1
	.byte	0xb5
	.long	0xf66
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x9bc
	.uleb128 0x5
	.byte	0x8
	.long	0x641
	.uleb128 0xf
	.long	0xfe4
	.long	.LASF169
	.byte	0x98
	.byte	0x2
	.byte	0x27
	.uleb128 0x17
	.string	"hw"
	.byte	0x2
	.byte	0x28
	.long	0xb4d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.long	.LASF170
	.byte	0x2
	.byte	0x29
	.long	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x17
	.string	"fd"
	.byte	0x2
	.byte	0x2a
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x10
	.long	.LASF171
	.byte	0x2
	.byte	0x2b
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x10
	.long	.LASF18
	.byte	0x2
	.byte	0x2c
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x10
	.long	.LASF172
	.byte	0x2
	.byte	0x2d
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x10
	.long	.LASF173
	.byte	0x2
	.byte	0x2e
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.byte	0x0
	.uleb128 0x2
	.long	.LASF169
	.byte	0x2
	.byte	0x2f
	.long	0xf72
	.uleb128 0xf
	.long	0x1050
	.long	.LASF174
	.byte	0x88
	.byte	0x2
	.byte	0x31
	.uleb128 0x17
	.string	"hw"
	.byte	0x2
	.byte	0x32
	.long	0xc57
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.long	.LASF170
	.byte	0x2
	.byte	0x33
	.long	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x17
	.string	"fd"
	.byte	0x2
	.byte	0x34
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x10
	.long	.LASF171
	.byte	0x2
	.byte	0x35
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x10
	.long	.LASF18
	.byte	0x2
	.byte	0x36
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x10
	.long	.LASF173
	.byte	0x2
	.byte	0x37
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.byte	0x0
	.uleb128 0x2
	.long	.LASF174
	.byte	0x2
	.byte	0x38
	.long	0xfef
	.uleb128 0x16
	.long	0x10b8
	.byte	0x28
	.byte	0x2
	.byte	0x41
	.uleb128 0x10
	.long	.LASF175
	.byte	0x2
	.byte	0x3b
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.long	.LASF171
	.byte	0x2
	.byte	0x3c
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.long	.LASF18
	.byte	0x2
	.byte	0x3d
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x10
	.long	.LASF176
	.byte	0x2
	.byte	0x3e
	.long	0x6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x10
	.long	.LASF177
	.byte	0x2
	.byte	0x3f
	.long	0x6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x10
	.long	.LASF178
	.byte	0x2
	.byte	0x40
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0xf
	.long	0x110b
	.long	.LASF179
	.byte	0x14
	.byte	0x2
	.byte	0x4a
	.uleb128 0x10
	.long	.LASF75
	.byte	0x2
	.byte	0x4b
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x17
	.string	"fmt"
	.byte	0x2
	.byte	0x4c
	.long	0x48c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.long	.LASF76
	.byte	0x2
	.byte	0x4d
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x10
	.long	.LASF171
	.byte	0x2
	.byte	0x4e
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x10
	.long	.LASF18
	.byte	0x2
	.byte	0x4f
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x1b
	.long	0x1145
	.long	.LASF180
	.byte	0x1
	.byte	0xef
	.byte	0x1
	.quad	.LFB99
	.quad	.LFE99
	.byte	0x1
	.byte	0x57
	.uleb128 0x1c
	.string	"fmt"
	.byte	0x1
	.byte	0xee
	.long	0x6f
	.byte	0x1
	.byte	0x55
	.uleb128 0x1a
	.uleb128 0x1d
	.string	"ap"
	.byte	0x1
	.byte	0xf0
	.long	0x410
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x1e
	.long	0x1174
	.long	.LASF181
	.byte	0x1
	.value	0x107
	.byte	0x1
	.quad	.LFB100
	.quad	.LFE100
	.byte	0x1
	.byte	0x57
	.uleb128 0x1f
	.string	"fmt"
	.byte	0x1
	.value	0x106
	.long	0x6f
	.byte	0x1
	.byte	0x55
	.uleb128 0x1a
	.byte	0x0
	.uleb128 0x1b
	.long	0x11bb
	.long	.LASF182
	.byte	0x2
	.byte	0x53
	.byte	0x1
	.quad	.LFB101
	.quad	.LFE101
	.byte	0x1
	.byte	0x57
	.uleb128 0x1c
	.string	"err"
	.byte	0x2
	.byte	0x52
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.uleb128 0x1c
	.string	"fmt"
	.byte	0x2
	.byte	0x52
	.long	0x6f
	.byte	0x1
	.byte	0x54
	.uleb128 0x1a
	.uleb128 0x1d
	.string	"ap"
	.byte	0x2
	.byte	0x54
	.long	0x410
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x1b
	.long	0x120f
	.long	.LASF183
	.byte	0x2
	.byte	0x63
	.byte	0x1
	.quad	.LFB102
	.quad	.LFE102
	.byte	0x1
	.byte	0x57
	.uleb128 0x1c
	.string	"err"
	.byte	0x2
	.byte	0x5e
	.long	0x3f
	.byte	0x1
	.byte	0x5c
	.uleb128 0x1c
	.string	"typ"
	.byte	0x2
	.byte	0x5f
	.long	0x6f
	.byte	0x1
	.byte	0x54
	.uleb128 0x1c
	.string	"fmt"
	.byte	0x2
	.byte	0x60
	.long	0x6f
	.byte	0x1
	.byte	0x53
	.uleb128 0x1a
	.uleb128 0x1d
	.string	"ap"
	.byte	0x2
	.byte	0x64
	.long	0x410
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x1b
	.long	0x1248
	.long	.LASF184
	.byte	0x2
	.byte	0x70
	.byte	0x1
	.quad	.LFB103
	.quad	.LFE103
	.byte	0x1
	.byte	0x57
	.uleb128 0x1c
	.string	"fdp"
	.byte	0x2
	.byte	0x6f
	.long	0x4d
	.byte	0x1
	.byte	0x53
	.uleb128 0x1d
	.string	"err"
	.byte	0x2
	.byte	0x71
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x20
	.long	0x1291
	.long	.LASF185
	.byte	0x2
	.byte	0x79
	.byte	0x1
	.long	0x3f
	.quad	.LFB104
	.quad	.LFE104
	.byte	0x1
	.byte	0x57
	.uleb128 0x1c
	.string	"sw"
	.byte	0x2
	.byte	0x78
	.long	0xde0
	.byte	0x1
	.byte	0x55
	.uleb128 0x1c
	.string	"buf"
	.byte	0x2
	.byte	0x78
	.long	0xac
	.byte	0x1
	.byte	0x54
	.uleb128 0x1c
	.string	"len"
	.byte	0x2
	.byte	0x78
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x20
	.long	0x12c1
	.long	.LASF186
	.byte	0x2
	.byte	0x7e
	.byte	0x1
	.long	0x3f
	.quad	.LFB105
	.quad	.LFE105
	.byte	0x1
	.byte	0x57
	.uleb128 0x1c
	.string	"fmt"
	.byte	0x2
	.byte	0x7d
	.long	0x48c
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x20
	.long	0x130b
	.long	.LASF187
	.byte	0x2
	.byte	0x96
	.byte	0x1
	.long	0x3f
	.quad	.LFB106
	.quad	.LFE106
	.byte	0x1
	.byte	0x57
	.uleb128 0x21
	.long	.LASF188
	.byte	0x2
	.byte	0x95
	.long	0x3f
	.byte	0x1
	.byte	0x55
	.uleb128 0x1c
	.string	"fmt"
	.byte	0x2
	.byte	0x95
	.long	0x130b
	.byte	0x1
	.byte	0x54
	.uleb128 0x21
	.long	.LASF77
	.byte	0x2
	.byte	0x95
	.long	0x4d
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x48c
	.uleb128 0x20
	.long	0x13e5
	.long	.LASF189
	.byte	0x2
	.byte	0xce
	.byte	0x1
	.long	0x3f
	.quad	.LFB107
	.quad	.LFE107
	.byte	0x1
	.byte	0x57
	.uleb128 0x1c
	.string	"in"
	.byte	0x2
	.byte	0xcc
	.long	0x3f
	.byte	0x1
	.byte	0x5e
	.uleb128 0x1c
	.string	"req"
	.byte	0x2
	.byte	0xcc
	.long	0x13e5
	.byte	0x1
	.byte	0x5c
	.uleb128 0x1c
	.string	"obt"
	.byte	0x2
	.byte	0xcd
	.long	0x13e5
	.byte	0x1
	.byte	0x5d
	.uleb128 0x1c
	.string	"pfd"
	.byte	0x2
	.byte	0xcd
	.long	0x4d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1d
	.string	"fd"
	.byte	0x2
	.byte	0xcf
	.long	0x3f
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x22
	.long	.LASF190
	.byte	0x2
	.byte	0xd0
	.long	0x3f
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x22
	.long	.LASF191
	.byte	0x2
	.byte	0xd1
	.long	0x13d
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x1d
	.string	"fmt"
	.byte	0x2
	.byte	0xd2
	.long	0x3f
	.byte	0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0x22
	.long	.LASF75
	.byte	0x2
	.byte	0xd2
	.long	0x3f
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x22
	.long	.LASF76
	.byte	0x2
	.byte	0xd2
	.long	0x3f
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x22
	.long	.LASF192
	.byte	0x2
	.byte	0xd3
	.long	0x6f
	.byte	0x1
	.byte	0x56
	.uleb128 0x1d
	.string	"typ"
	.byte	0x2
	.byte	0xd4
	.long	0x6f
	.byte	0x1
	.byte	0x5f
	.uleb128 0x23
	.string	"err"
	.byte	0x2
	.value	0x118
	.quad	.L47
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x10b8
	.uleb128 0x24
	.long	0x15e9
	.long	.LASF193
	.byte	0x2
	.value	0x11e
	.byte	0x1
	.long	0x3f
	.quad	.LFB108
	.quad	.LFE108
	.byte	0x1
	.byte	0x57
	.uleb128 0x1f
	.string	"hw"
	.byte	0x2
	.value	0x11d
	.long	0xc8d
	.byte	0x1
	.byte	0x5c
	.uleb128 0x25
	.string	"oss"
	.byte	0x2
	.value	0x11f
	.long	0x15e9
	.uleb128 0x26
	.string	"err"
	.byte	0x2
	.value	0x120
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.uleb128 0x27
	.long	.LASF135
	.byte	0x2
	.value	0x120
	.long	0x3f
	.byte	0x1
	.byte	0x5d
	.uleb128 0x27
	.long	.LASF194
	.byte	0x2
	.value	0x120
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.uleb128 0x27
	.long	.LASF195
	.byte	0x2
	.value	0x120
	.long	0x3f
	.byte	0x1
	.byte	0x5f
	.uleb128 0x27
	.long	.LASF138
	.byte	0x2
	.value	0x121
	.long	0x3f
	.byte	0x1
	.byte	0x5e
	.uleb128 0x25
	.string	"dst"
	.byte	0x2
	.value	0x122
	.long	0x15ef
	.uleb128 0x25
	.string	"src"
	.byte	0x2
	.value	0x123
	.long	0x7de
	.uleb128 0x27
	.long	.LASF191
	.byte	0x2
	.value	0x124
	.long	0xf3
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x27
	.long	.LASF196
	.byte	0x2
	.value	0x125
	.long	0x149
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.long	.LASF197
	.byte	0x2
	.value	0x126
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.uleb128 0x28
	.long	0x14f3
	.long	.Ldebug_ranges0+0x0
	.uleb128 0x27
	.long	.LASF19
	.byte	0x2
	.value	0x130
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.uleb128 0x29
	.quad	.LBB3
	.quad	.LBE3
	.uleb128 0x26
	.string	"ta"
	.byte	0x2
	.value	0x146
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.uleb128 0x25
	.string	"tb"
	.byte	0x2
	.value	0x146
	.long	0x3f
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.long	0x1517
	.long	.Ldebug_ranges0+0x40
	.uleb128 0x27
	.long	.LASF198
	.byte	0x2
	.value	0x169
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.uleb128 0x2a
	.long	.LASF199
	.byte	0x2
	.value	0x16a
	.long	0x3f
	.byte	0x0
	.uleb128 0x28
	.long	0x1537
	.long	.Ldebug_ranges0+0x80
	.uleb128 0x25
	.string	"ta"
	.byte	0x2
	.value	0x16a
	.long	0x3f
	.uleb128 0x25
	.string	"tb"
	.byte	0x2
	.value	0x16a
	.long	0x3f
	.byte	0x0
	.uleb128 0x2b
	.long	0x155d
	.long	0x15f5
	.quad	.LBB7
	.quad	.LBE7
	.uleb128 0x2c
	.long	0x1606
	.uleb128 0x2d
	.long	0x160f
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x2e
	.long	0x1578
	.quad	.LBB11
	.quad	.LBE11
	.uleb128 0x2f
	.long	0x161a
	.byte	0x0
	.uleb128 0x28
	.long	0x15be
	.long	.Ldebug_ranges0+0xb0
	.uleb128 0x27
	.long	.LASF200
	.byte	0x2
	.value	0x171
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x29
	.quad	.LBB13
	.quad	.LBE13
	.uleb128 0x27
	.long	.LASF201
	.byte	0x2
	.value	0x180
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.uleb128 0x27
	.long	.LASF202
	.byte	0x2
	.value	0x181
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.quad	.LBB14
	.quad	.LBE14
	.uleb128 0x26
	.string	"ta"
	.byte	0x2
	.value	0x160
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.uleb128 0x25
	.string	"tb"
	.byte	0x2
	.value	0x160
	.long	0x3f
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xfe4
	.uleb128 0x5
	.byte	0x8
	.long	0x41b
	.uleb128 0x30
	.long	0x1624
	.long	.LASF203
	.byte	0x3
	.byte	0x91
	.byte	0x1
	.long	0xac
	.byte	0x3
	.uleb128 0x31
	.string	"p"
	.byte	0x3
	.byte	0x90
	.long	0xac
	.uleb128 0x32
	.long	.LASF204
	.byte	0x3
	.byte	0x90
	.long	0x3f
	.uleb128 0x33
	.string	"d"
	.byte	0x3
	.byte	0x92
	.long	0x15ef
	.byte	0x0
	.uleb128 0x1e
	.long	0x166d
	.long	.LASF205
	.byte	0x2
	.value	0x199
	.byte	0x1
	.quad	.LFB109
	.quad	.LFE109
	.byte	0x1
	.byte	0x57
	.uleb128 0x1f
	.string	"hw"
	.byte	0x2
	.value	0x198
	.long	0xc8d
	.byte	0x1
	.byte	0x55
	.uleb128 0x26
	.string	"err"
	.byte	0x2
	.value	0x19a
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.uleb128 0x26
	.string	"oss"
	.byte	0x2
	.value	0x19b
	.long	0x15e9
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x24
	.long	0x1756
	.long	.LASF206
	.byte	0x2
	.value	0x1b0
	.byte	0x1
	.long	0x3f
	.quad	.LFB110
	.quad	.LFE110
	.byte	0x1
	.byte	0x57
	.uleb128 0x1f
	.string	"hw"
	.byte	0x2
	.value	0x1af
	.long	0xc8d
	.byte	0x1
	.byte	0x56
	.uleb128 0x1f
	.string	"as"
	.byte	0x2
	.value	0x1af
	.long	0xd92
	.byte	0x1
	.byte	0x53
	.uleb128 0x25
	.string	"oss"
	.byte	0x2
	.value	0x1b1
	.long	0x15e9
	.uleb128 0x26
	.string	"req"
	.byte	0x2
	.value	0x1b2
	.long	0x10b8
	.byte	0x3
	.byte	0x91
	.sleb128 64
	.uleb128 0x26
	.string	"obt"
	.byte	0x2
	.value	0x1b2
	.long	0x10b8
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x27
	.long	.LASF77
	.byte	0x2
	.value	0x1b3
	.long	0x3f
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x26
	.string	"err"
	.byte	0x2
	.value	0x1b4
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.uleb128 0x26
	.string	"fd"
	.byte	0x2
	.value	0x1b5
	.long	0x3f
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x27
	.long	.LASF207
	.byte	0x2
	.value	0x1b6
	.long	0x48c
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x27
	.long	.LASF208
	.byte	0x2
	.value	0x1b7
	.long	0x4d8
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x34
	.long	.LASF209
	.long	0x1766
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__FUNCTION__.1
	.uleb128 0x35
	.long	.Ldebug_ranges0+0xe0
	.uleb128 0x26
	.string	"err"
	.byte	0x2
	.value	0x1e9
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.uleb128 0x27
	.long	.LASF210
	.byte	0x2
	.value	0x1ea
	.long	0x3f
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
	.long	0x1766
	.long	0x75
	.uleb128 0xa
	.long	0x61
	.byte	0xc
	.byte	0x0
	.uleb128 0x6
	.long	0x1756
	.uleb128 0x24
	.long	0x17c6
	.long	.LASF211
	.byte	0x2
	.value	0x21b
	.byte	0x1
	.long	0x3f
	.quad	.LFB111
	.quad	.LFE111
	.byte	0x1
	.byte	0x57
	.uleb128 0x1f
	.string	"hw"
	.byte	0x2
	.value	0x21a
	.long	0xc8d
	.byte	0x1
	.byte	0x53
	.uleb128 0x1f
	.string	"cmd"
	.byte	0x2
	.value	0x21a
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x1a
	.uleb128 0x27
	.long	.LASF210
	.byte	0x2
	.value	0x21c
	.long	0x3f
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x25
	.string	"oss"
	.byte	0x2
	.value	0x21d
	.long	0x15e9
	.byte	0x0
	.uleb128 0x24
	.long	0x188c
	.long	.LASF212
	.byte	0x2
	.value	0x23e
	.byte	0x1
	.long	0x3f
	.quad	.LFB112
	.quad	.LFE112
	.byte	0x1
	.byte	0x57
	.uleb128 0x1f
	.string	"hw"
	.byte	0x2
	.value	0x23d
	.long	0xcbe
	.byte	0x1
	.byte	0x56
	.uleb128 0x1f
	.string	"as"
	.byte	0x2
	.value	0x23d
	.long	0xd92
	.byte	0x1
	.byte	0x53
	.uleb128 0x25
	.string	"oss"
	.byte	0x2
	.value	0x23f
	.long	0x188c
	.uleb128 0x26
	.string	"req"
	.byte	0x2
	.value	0x240
	.long	0x10b8
	.byte	0x3
	.byte	0x91
	.sleb128 64
	.uleb128 0x26
	.string	"obt"
	.byte	0x2
	.value	0x240
	.long	0x10b8
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x27
	.long	.LASF77
	.byte	0x2
	.value	0x241
	.long	0x3f
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x26
	.string	"err"
	.byte	0x2
	.value	0x242
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.uleb128 0x26
	.string	"fd"
	.byte	0x2
	.value	0x243
	.long	0x3f
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x27
	.long	.LASF207
	.byte	0x2
	.value	0x244
	.long	0x48c
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x27
	.long	.LASF208
	.byte	0x2
	.value	0x245
	.long	0x4d8
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x34
	.long	.LASF209
	.long	0x18a2
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__FUNCTION__.0
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x1050
	.uleb128 0x9
	.long	0x18a2
	.long	0x75
	.uleb128 0xa
	.long	0x61
	.byte	0xb
	.byte	0x0
	.uleb128 0x6
	.long	0x1892
	.uleb128 0x1e
	.long	0x18e0
	.long	.LASF213
	.byte	0x2
	.value	0x274
	.byte	0x1
	.quad	.LFB113
	.quad	.LFE113
	.byte	0x1
	.byte	0x57
	.uleb128 0x1f
	.string	"hw"
	.byte	0x2
	.value	0x273
	.long	0xcbe
	.byte	0x1
	.byte	0x53
	.uleb128 0x25
	.string	"oss"
	.byte	0x2
	.value	0x275
	.long	0x188c
	.byte	0x0
	.uleb128 0x24
	.long	0x1a08
	.long	.LASF214
	.byte	0x2
	.value	0x280
	.byte	0x1
	.long	0x3f
	.quad	.LFB114
	.quad	.LFE114
	.byte	0x1
	.byte	0x57
	.uleb128 0x1f
	.string	"hw"
	.byte	0x2
	.value	0x27f
	.long	0xcbe
	.byte	0x1
	.byte	0x53
	.uleb128 0x25
	.string	"oss"
	.byte	0x2
	.value	0x281
	.long	0x188c
	.uleb128 0x27
	.long	.LASF215
	.byte	0x2
	.value	0x282
	.long	0x3f
	.byte	0x1
	.byte	0x5e
	.uleb128 0x26
	.string	"i"
	.byte	0x2
	.value	0x283
	.long	0x3f
	.byte	0x1
	.byte	0x5d
	.uleb128 0x27
	.long	.LASF194
	.byte	0x2
	.value	0x284
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.uleb128 0x27
	.long	.LASF216
	.byte	0x2
	.value	0x285
	.long	0x3f
	.byte	0x1
	.byte	0x58
	.uleb128 0x27
	.long	.LASF217
	.byte	0x2
	.value	0x286
	.long	0x2d
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x36
	.long	0x1989
	.byte	0x8
	.byte	0x2
	.value	0x28a
	.uleb128 0xe
	.string	"add"
	.byte	0x2
	.value	0x288
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"len"
	.byte	0x2
	.value	0x289
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x27
	.long	.LASF218
	.byte	0x2
	.value	0x28a
	.long	0x1a08
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x28
	.long	0x19b0
	.long	.Ldebug_ranges0+0x110
	.uleb128 0x27
	.long	.LASF219
	.byte	0x2
	.value	0x29d
	.long	0xbf
	.byte	0x1
	.byte	0x5c
	.byte	0x0
	.uleb128 0x29
	.quad	.LBB23
	.quad	.LBE23
	.uleb128 0x25
	.string	"p"
	.byte	0x2
	.value	0x2a0
	.long	0xac
	.uleb128 0x2b
	.long	0x19ef
	.long	0x15f5
	.quad	.LBB24
	.quad	.LBE24
	.uleb128 0x2c
	.long	0x1606
	.uleb128 0x2c
	.long	0x160f
	.byte	0x0
	.uleb128 0x29
	.quad	.LBB26
	.quad	.LBE26
	.uleb128 0x2f
	.long	0x161a
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
	.long	0x1a18
	.long	0x1961
	.uleb128 0xa
	.long	0x61
	.byte	0x1
	.byte	0x0
	.uleb128 0x24
	.long	0x1a65
	.long	.LASF220
	.byte	0x2
	.value	0x2c7
	.byte	0x1
	.long	0x3f
	.quad	.LFB115
	.quad	.LFE115
	.byte	0x1
	.byte	0x57
	.uleb128 0x1f
	.string	"sw"
	.byte	0x2
	.value	0x2c6
	.long	0xe65
	.byte	0x1
	.byte	0x55
	.uleb128 0x1f
	.string	"buf"
	.byte	0x2
	.value	0x2c6
	.long	0xac
	.byte	0x1
	.byte	0x54
	.uleb128 0x37
	.long	.LASF221
	.byte	0x2
	.value	0x2c6
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x24
	.long	0x1aa5
	.long	.LASF222
	.byte	0x2
	.value	0x2cc
	.byte	0x1
	.long	0x3f
	.quad	.LFB116
	.quad	.LFE116
	.byte	0x1
	.byte	0x57
	.uleb128 0x1f
	.string	"hw"
	.byte	0x2
	.value	0x2cb
	.long	0xcbe
	.byte	0x1
	.byte	0x55
	.uleb128 0x1f
	.string	"cmd"
	.byte	0x2
	.value	0x2cb
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x1a
	.byte	0x0
	.uleb128 0x38
	.long	.LASF234
	.byte	0x2
	.value	0x2d3
	.byte	0x1
	.long	0xac
	.quad	.LFB117
	.quad	.LFE117
	.byte	0x1
	.byte	0x57
	.uleb128 0x1e
	.long	0x1af2
	.long	.LASF223
	.byte	0x2
	.value	0x2d8
	.byte	0x1
	.quad	.LFB118
	.quad	.LFE118
	.byte	0x1
	.byte	0x57
	.uleb128 0x37
	.long	.LASF118
	.byte	0x2
	.value	0x2d7
	.long	0xac
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x39
	.long	.LASF224
	.byte	0x4
	.byte	0x91
	.long	0x3f4
	.byte	0x1
	.byte	0x1
	.uleb128 0x39
	.long	.LASF225
	.byte	0x4
	.byte	0x92
	.long	0x3f4
	.byte	0x1
	.byte	0x1
	.uleb128 0x3a
	.long	.LASF226
	.byte	0x2
	.value	0x2fa
	.long	0xcc4
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	oss_audio_driver
	.uleb128 0x39
	.long	.LASF227
	.byte	0x1
	.byte	0xcd
	.long	0x781
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.long	.LASF228
	.byte	0x2
	.byte	0x41
	.long	0x105b
	.byte	0x9
	.byte	0x3
	.quad	conf
	.uleb128 0x9
	.long	0x1b55
	.long	0x842
	.uleb128 0xa
	.long	0x61
	.byte	0x6
	.byte	0x0
	.uleb128 0x27
	.long	.LASF229
	.byte	0x2
	.value	0x2dc
	.long	0x1b45
	.byte	0x9
	.byte	0x3
	.quad	oss_options
	.uleb128 0x27
	.long	.LASF230
	.byte	0x2
	.value	0x2ec
	.long	0xaae
	.byte	0x9
	.byte	0x3
	.quad	oss_pcm_ops
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0x38
	.uleb128 0xa
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
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x27
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x15
	.byte	0x0
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x18
	.byte	0x0
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0xa
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
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
	.uleb128 0x2c
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
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
	.uleb128 0x2f
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x34
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
	.uleb128 0x35
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x23
	.value	0x2
	.long	.Ldebug_info0
	.long	0x1b82
	.long	0x1b0c
	.string	"oss_audio_driver"
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
	.quad	.LBB18-.Ltext0
	.quad	.LBE18-.Ltext0
	.quad	.LBB15-.Ltext0
	.quad	.LBE15-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB4-.Ltext0
	.quad	.LBE4-.Ltext0
	.quad	.LBB16-.Ltext0
	.quad	.LBE16-.Ltext0
	.quad	.LBB5-.Ltext0
	.quad	.LBE5-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB6-.Ltext0
	.quad	.LBE6-.Ltext0
	.quad	.LBB8-.Ltext0
	.quad	.LBE8-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB12-.Ltext0
	.quad	.LBE12-.Ltext0
	.quad	.LBB17-.Ltext0
	.quad	.LBE17-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB19-.Ltext0
	.quad	.LBE19-.Ltext0
	.quad	.LBB20-.Ltext0
	.quad	.LBE20-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB21-.Ltext0
	.quad	.LBE21-.Ltext0
	.quad	.LBB22-.Ltext0
	.quad	.LBE22-.Ltext0
	.quad	0x0
	.quad	0x0
	.section	.debug_str,"MS",@progbits,1
.LASF125:
	.string	"swap_endianness"
.LASF105:
	.string	"t_sample"
.LASF9:
	.string	"size_t"
.LASF84:
	.string	"capture"
.LASF206:
	.string	"oss_init_out"
.LASF155:
	.string	"wpos"
.LASF12:
	.string	"__ssize_t"
.LASF198:
	.string	"left_till_end_samples"
.LASF17:
	.string	"fragstotal"
.LASF35:
	.string	"_IO_save_end"
.LASF146:
	.string	"write"
.LASF172:
	.string	"mmapped"
.LASF28:
	.string	"_IO_write_base"
.LASF121:
	.string	"sign"
.LASF139:
	.string	"sw_head"
.LASF117:
	.string	"audio_callback"
.LASF44:
	.string	"_lock"
.LASF33:
	.string	"_IO_save_base"
.LASF197:
	.string	"bufsize"
.LASF95:
	.string	"callback"
.LASF37:
	.string	"_chain"
.LASF13:
	.string	"ssize_t"
.LASF41:
	.string	"_cur_column"
.LASF179:
	.string	"oss_params"
.LASF51:
	.string	"_mode"
.LASF204:
	.string	"incr"
.LASF208:
	.string	"obt_as"
.LASF217:
	.string	"read_samples"
.LASF120:
	.string	"bits"
.LASF113:
	.string	"valp"
.LASF112:
	.string	"audio_option"
.LASF91:
	.string	"total_hw_samples_mixed"
.LASF64:
	.string	"va_list"
.LASF2:
	.string	"long int"
.LASF205:
	.string	"oss_fini_out"
.LASF216:
	.string	"dead"
.LASF201:
	.string	"wsamples"
.LASF60:
	.string	"_IO_marker"
.LASF118:
	.string	"opaque"
.LASF123:
	.string	"shift"
.LASF188:
	.string	"ossfmt"
.LASF18:
	.string	"fragsize"
.LASF143:
	.string	"init_out"
.LASF7:
	.string	"signed char"
.LASF73:
	.string	"AUD_FMT_S32"
.LASF106:
	.string	"f_sample"
.LASF6:
	.string	"unsigned char"
.LASF195:
	.string	"decr"
.LASF207:
	.string	"effective_fmt"
.LASF135:
	.string	"rpos"
.LASF69:
	.string	"AUD_FMT_S8"
.LASF209:
	.string	"__FUNCTION__"
.LASF190:
	.string	"mmmmssss"
.LASF53:
	.string	"__gnuc_va_list"
.LASF19:
	.string	"bytes"
.LASF211:
	.string	"oss_ctl_out"
.LASF5:
	.string	"char"
.LASF141:
	.string	"pcm_ops"
.LASF189:
	.string	"oss_open"
.LASF59:
	.string	"_IO_lock_t"
.LASF174:
	.string	"OSSVoiceIn"
.LASF96:
	.string	"entries"
.LASF213:
	.string	"oss_fini_in"
.LASF154:
	.string	"HWVoiceIn"
.LASF68:
	.string	"AUD_FMT_U8"
.LASF25:
	.string	"_IO_read_ptr"
.LASF77:
	.string	"endianness"
.LASF56:
	.string	"fp_offset"
.LASF63:
	.string	"_pos"
.LASF224:
	.string	"stdin"
.LASF110:
	.string	"AUD_OPT_BOOL"
.LASF153:
	.string	"sw_in_listhead"
.LASF101:
	.string	"clip"
.LASF36:
	.string	"_markers"
.LASF170:
	.string	"pcm_buf"
.LASF138:
	.string	"samples"
.LASF196:
	.string	"cntinfo"
.LASF81:
	.string	"audcnotification_e"
.LASF234:
	.string	"oss_audio_init"
.LASF90:
	.string	"rate"
.LASF122:
	.string	"align"
.LASF45:
	.string	"_offset"
.LASF147:
	.string	"ctl_out"
.LASF133:
	.string	"enabled"
.LASF168:
	.string	"cb_listhead"
.LASF220:
	.string	"oss_read"
.LASF162:
	.string	"can_be_default"
.LASF161:
	.string	"fini"
.LASF165:
	.string	"voice_size_out"
.LASF233:
	.string	"/home/remco/Projects/Argos/src"
.LASF98:
	.string	"cb_head"
.LASF93:
	.string	"empty"
.LASF104:
	.string	"st_sample_t"
.LASF39:
	.string	"_flags2"
.LASF109:
	.string	"AUD_OPT_STR"
.LASF181:
	.string	"ldebug"
.LASF27:
	.string	"_IO_read_base"
.LASF58:
	.string	"reg_save_area"
.LASF92:
	.string	"active"
.LASF149:
	.string	"fini_in"
.LASF52:
	.string	"_unused2"
.LASF67:
	.string	"audio_callback_fn_t"
.LASF210:
	.string	"trig"
.LASF40:
	.string	"_old_offset"
.LASF126:
	.string	"SWVoiceCap"
.LASF71:
	.string	"AUD_FMT_S16"
.LASF171:
	.string	"nfrags"
.LASF3:
	.string	"long long int"
.LASF230:
	.string	"oss_pcm_ops"
.LASF226:
	.string	"oss_audio_driver"
.LASF82:
	.string	"audio_capture_ops"
.LASF30:
	.string	"_IO_write_end"
.LASF191:
	.string	"abinfo"
.LASF111:
	.string	"audio_option_tag_e"
.LASF175:
	.string	"try_mmap"
.LASF55:
	.string	"gp_offset"
.LASF192:
	.string	"dspname"
.LASF86:
	.string	"SWVoiceOut"
.LASF214:
	.string	"oss_run_in"
.LASF70:
	.string	"AUD_FMT_U16"
.LASF219:
	.string	"nread"
.LASF151:
	.string	"read"
.LASF31:
	.string	"_IO_buf_base"
.LASF108:
	.string	"AUD_OPT_FMT"
.LASF199:
	.string	"convert_samples"
.LASF231:
	.string	"GNU C 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
.LASF114:
	.string	"descr"
.LASF1:
	.string	"unsigned int"
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
.LASF79:
	.string	"AUD_CNOTIFY_ENABLE"
.LASF62:
	.string	"_sbuf"
.LASF183:
	.string	"oss_logerr2"
.LASF163:
	.string	"max_voices_out"
.LASF57:
	.string	"overflow_arg_area"
.LASF89:
	.string	"ratio"
.LASF76:
	.string	"nchannels"
.LASF24:
	.string	"_flags"
.LASF180:
	.string	"dolog"
.LASF186:
	.string	"aud_to_ossfmt"
.LASF221:
	.string	"size"
.LASF72:
	.string	"AUD_FMT_U32"
.LASF129:
	.string	"sw_cap_listhead"
.LASF203:
	.string	"advance"
.LASF193:
	.string	"oss_run_out"
.LASF150:
	.string	"run_in"
.LASF144:
	.string	"fini_out"
.LASF212:
	.string	"oss_init_in"
.LASF87:
	.string	"info"
.LASF218:
	.string	"bufs"
.LASF140:
	.string	"cap_head"
.LASF124:
	.string	"bytes_per_second"
.LASF83:
	.string	"notify"
.LASF16:
	.string	"fragments"
.LASF176:
	.string	"devpath_out"
.LASF15:
	.string	"long long unsigned int"
.LASF85:
	.string	"destroy"
.LASF65:
	.string	"uint8_t"
.LASF194:
	.string	"live"
.LASF10:
	.string	"__off_t"
.LASF0:
	.string	"long unsigned int"
.LASF103:
	.string	"volume_t"
.LASF80:
	.string	"AUD_CNOTIFY_DISABLE"
.LASF107:
	.string	"AUD_OPT_INT"
.LASF178:
	.string	"debug"
.LASF99:
	.string	"SWVoiceIn"
.LASF215:
	.string	"hwshift"
.LASF223:
	.string	"oss_audio_fini"
.LASF169:
	.string	"OSSVoiceOut"
.LASF34:
	.string	"_IO_backup_base"
.LASF43:
	.string	"_shortbuf"
.LASF21:
	.string	"count_info"
.LASF100:
	.string	"total_hw_samples_acquired"
.LASF74:
	.string	"audfmt_e"
.LASF61:
	.string	"_next"
.LASF127:
	.string	"sw_out_listhead"
.LASF11:
	.string	"__off64_t"
.LASF187:
	.string	"oss_to_audfmt"
.LASF160:
	.string	"init"
.LASF177:
	.string	"devpath_in"
.LASF142:
	.string	"audio_pcm_ops"
.LASF88:
	.string	"conv"
.LASF78:
	.string	"audsettings_t"
.LASF32:
	.string	"_IO_buf_end"
.LASF166:
	.string	"voice_size_in"
.LASF94:
	.string	"name"
.LASF157:
	.string	"conv_buf"
.LASF232:
	.string	"audio/ossaudio.c"
.LASF202:
	.string	"wbytes"
.LASF8:
	.string	"short int"
.LASF156:
	.string	"total_samples_captured"
.LASF66:
	.string	"uint64_t"
.LASF158:
	.string	"audio_driver"
.LASF115:
	.string	"overriddenp"
.LASF102:
	.string	"mute"
.LASF137:
	.string	"mix_buf"
.LASF130:
	.string	"le_next"
.LASF20:
	.string	"audio_buf_info"
.LASF42:
	.string	"_vtable_offset"
.LASF182:
	.string	"oss_logerr"
.LASF132:
	.string	"HWVoiceOut"
.LASF54:
	.string	"__va_list_tag"
.LASF131:
	.string	"le_prev"
.LASF116:
	.string	"overridden"
.LASF164:
	.string	"max_voices_in"
.LASF119:
	.string	"audio_pcm_info"
.LASF152:
	.string	"ctl_in"
.LASF200:
	.string	"written"
.LASF26:
	.string	"_IO_read_end"
.LASF22:
	.string	"blocks"
.LASF184:
	.string	"oss_anal_close"
.LASF38:
	.string	"_fileno"
.LASF173:
	.string	"old_optr"
.LASF227:
	.string	"nominal_volume"
.LASF75:
	.string	"freq"
.LASF4:
	.string	"short unsigned int"
.LASF225:
	.string	"stdout"
.LASF134:
	.string	"pending_disable"
.LASF145:
	.string	"run_out"
.LASF136:
	.string	"ts_helper"
.LASF29:
	.string	"_IO_write_ptr"
.LASF23:
	.string	"_IO_FILE"
.LASF14:
	.string	"int64_t"
.LASF128:
	.string	"lh_first"
.LASF159:
	.string	"options"
.LASF97:
	.string	"CaptureVoiceOut"
.LASF185:
	.string	"oss_write"
.LASF228:
	.string	"conf"
.LASF148:
	.string	"init_in"
.LASF222:
	.string	"oss_ctl_in"
.LASF167:
	.string	"capture_callback"
.LASF229:
	.string	"oss_options"
	.section	.note.GNU-stack,"",@progbits
	.ident	"GCC: (GNU) 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
