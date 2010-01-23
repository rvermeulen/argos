	.file	"pci.c"
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
	.string	"SCSI controller"
.LC1:
	.string	"IDE controller"
.LC2:
	.string	"Floppy controller"
.LC3:
	.string	"IPI controller"
.LC4:
	.string	"RAID controller"
.LC5:
	.string	"SATA controller"
.LC6:
	.string	"SAS controller"
.LC7:
	.string	"Storage controller"
.LC8:
	.string	"Ethernet controller"
.LC9:
	.string	"Token Ring controller"
.LC10:
	.string	"FDDI controller"
.LC11:
	.string	"ATM controller"
.LC12:
	.string	"Network controller"
.LC13:
	.string	"VGA controller"
.LC14:
	.string	"XGA controller"
.LC15:
	.string	"3D controller"
.LC16:
	.string	"Display controller"
.LC17:
	.string	"Video controller"
.LC18:
	.string	"Audio controller"
.LC19:
	.string	"Phone"
.LC20:
	.string	"Multimedia controller"
.LC21:
	.string	"RAM controller"
.LC22:
	.string	"Flash controller"
.LC23:
	.string	"Memory controller"
.LC24:
	.string	"Host bridge"
.LC25:
	.string	"ISA bridge"
.LC26:
	.string	"EISA bridge"
.LC27:
	.string	"MC bridge"
.LC28:
	.string	"PCI bridge"
.LC29:
	.string	"PCMCIA bridge"
.LC30:
	.string	"NUBUS bridge"
.LC31:
	.string	"CARDBUS bridge"
.LC32:
	.string	"RACEWAY bridge"
.LC33:
	.string	"Bridge"
.LC34:
	.string	"USB controller"
	.data
	.align 32
	.type	pci_class_descriptions, @object
	.size	pci_class_descriptions, 576
pci_class_descriptions:
	.value	256
	.zero	6
	.quad	.LC0
	.value	257
	.zero	6
	.quad	.LC1
	.value	258
	.zero	6
	.quad	.LC2
	.value	259
	.zero	6
	.quad	.LC3
	.value	260
	.zero	6
	.quad	.LC4
	.value	262
	.zero	6
	.quad	.LC5
	.value	263
	.zero	6
	.quad	.LC6
	.value	384
	.zero	6
	.quad	.LC7
	.value	512
	.zero	6
	.quad	.LC8
	.value	513
	.zero	6
	.quad	.LC9
	.value	514
	.zero	6
	.quad	.LC10
	.value	515
	.zero	6
	.quad	.LC11
	.value	640
	.zero	6
	.quad	.LC12
	.value	768
	.zero	6
	.quad	.LC13
	.value	769
	.zero	6
	.quad	.LC14
	.value	770
	.zero	6
	.quad	.LC15
	.value	896
	.zero	6
	.quad	.LC16
	.value	1024
	.zero	6
	.quad	.LC17
	.value	1025
	.zero	6
	.quad	.LC18
	.value	1026
	.zero	6
	.quad	.LC19
	.value	1152
	.zero	6
	.quad	.LC20
	.value	1280
	.zero	6
	.quad	.LC21
	.value	1281
	.zero	6
	.quad	.LC22
	.value	1408
	.zero	6
	.quad	.LC23
	.value	1536
	.zero	6
	.quad	.LC24
	.value	1537
	.zero	6
	.quad	.LC25
	.value	1538
	.zero	6
	.quad	.LC26
	.value	1539
	.zero	6
	.quad	.LC27
	.value	1540
	.zero	6
	.quad	.LC28
	.value	1541
	.zero	6
	.quad	.LC29
	.value	1542
	.zero	6
	.quad	.LC30
	.value	1543
	.zero	6
	.quad	.LC31
	.value	1544
	.zero	6
	.quad	.LC32
	.value	1664
	.zero	6
	.quad	.LC33
	.value	3075
	.zero	6
	.quad	.LC34
	.value	0
	.zero	6
	.quad	0
	.text
	.p2align 4,,15
	.type	pcibus_save, @function
pcibus_save:
.LFB196:
	.file 1 "/home/remco/Projects/Argos/src/hw/pci.c"
	.loc 1 57 0
	pushq	%r12
.LCFI0:
	movq	%rdi, %r12
	pushq	%rbp
.LCFI1:
	movq	%rsi, %rbp
	pushq	%rbx
.LCFI2:
	.loc 1 61 0
	movl	2112(%rsi), %esi
	.loc 1 62 0
	xorl	%ebx, %ebx
	.loc 1 61 0
	call	qemu_put_be32
	.loc 1 62 0
	movl	2112(%rbp), %eax
	testl	%eax, %eax
	jle	.L7
	.p2align 4,,7
.L5:
	.loc 1 63 0
	movslq	%ebx,%rax
	movq	%r12, %rdi
	.loc 1 62 0
	incl	%ebx
	.loc 1 63 0
	movl	2116(%rbp,%rax,4), %esi
	call	qemu_put_be32
	.loc 1 62 0
	cmpl	%ebx, 2112(%rbp)
	jg	.L5
.L7:
	popq	%rbx
	popq	%rbp
	popq	%r12
	ret
.LFE196:
	.size	pcibus_save, .-pcibus_save
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC35:
	.string	"pcibus_load: nirq mismatch: src=%d dst=%d\n"
	.text
	.p2align 4,,15
	.type	pcibus_load, @function
pcibus_load:
.LFB197:
	.loc 1 67 0
	movq	%r13, -16(%rsp)
.LCFI3:
	movq	%r14, -8(%rsp)
.LCFI4:
	movq	%rsi, %r13
	movq	%rbx, -40(%rsp)
.LCFI5:
	movq	%rbp, -32(%rsp)
.LCFI6:
	movq	%rdi, %r14
	movq	%r12, -24(%rsp)
.LCFI7:
	subq	$40, %rsp
.LCFI8:
	.loc 1 71 0
	decl	%edx
	.loc 1 72 0
	movl	$-22, %eax
	.loc 1 71 0
	jne	.L9
	.loc 1 74 0
	call	qemu_get_be32
	.loc 1 75 0
	movl	2112(%r13), %ecx
	.loc 1 74 0
	movl	%eax, %r12d
	.loc 1 75 0
	cmpl	%eax, %ecx
	jne	.L19
	.loc 1 81 0
	xorl	%ebp, %ebp
	cmpl	%r12d, %ebp
	jge	.L17
	.p2align 4,,7
.L20:
	.loc 1 82 0
	movslq	%ebp,%rbx
	movq	%r14, %rdi
	.loc 1 81 0
	incl	%ebp
	.loc 1 82 0
	call	qemu_get_be32
	movl	%eax, 2116(%r13,%rbx,4)
	.loc 1 81 0
	cmpl	%r12d, %ebp
	jl	.L20
.L17:
	.loc 1 84 0
	xorl	%eax, %eax
.L9:
	.loc 1 85 0
	movq	(%rsp), %rbx
	movq	8(%rsp), %rbp
	movq	16(%rsp), %r12
	movq	24(%rsp), %r13
	movq	32(%rsp), %r14
	addq	$40, %rsp
	ret
.L19:
	.loc 1 76 0
	movq	stderr(%rip), %rdi
	movl	%eax, %edx
	movl	$.LC35, %esi
	xorl	%eax, %eax
	call	fprintf
	.loc 1 78 0
	movl	$-22, %eax
	jmp	.L9
.LFE197:
	.size	pcibus_load, .-pcibus_load
	.local	nbus.0
	.comm	nbus.0,4,4
	.section	.rodata.str1.1
.LC36:
	.string	"PCIBUS"
	.text
	.p2align 4,,15
.globl pci_register_bus
	.type	pci_register_bus, @function
pci_register_bus:
.LFB198:
	.loc 1 89 0
	movq	%r13, -24(%rsp)
.LCFI9:
	movq	%rdi, %r13
	.loc 1 93 0
	movslq	%r8d,%rdi
	leaq	2120(,%rdi,4), %rdi
	.loc 1 89 0
	movq	%rbx, -48(%rsp)
.LCFI10:
	movq	%rbp, -40(%rsp)
.LCFI11:
	movq	%r12, -32(%rsp)
.LCFI12:
	movl	%ecx, %ebp
	movl	%r8d, %r12d
	movq	%r14, -16(%rsp)
.LCFI13:
	movq	%r15, -8(%rsp)
.LCFI14:
	movq	%rsi, %r14
	subq	$56, %rsp
.LCFI15:
	.loc 1 89 0
	movq	%rdx, %r15
	.loc 1 93 0
	call	qemu_mallocz
	.loc 1 94 0
	movq	%r13, 8(%rax)
	.loc 1 95 0
	movq	%r14, 16(%rax)
	.loc 1 93 0
	movq	%rax, %rbx
	.loc 1 96 0
	movq	%r15, 40(%rax)
	.loc 1 97 0
	movl	%ebp, 4(%rax)
	.loc 1 100 0
	movq	%rbx, %r9
	.loc 1 98 0
	movl	%r12d, 2112(%rax)
	.loc 1 100 0
	movl	nbus.0(%rip), %esi
	movl	$pcibus_load, %r8d
	.loc 1 99 0
	movq	%rax, first_bus(%rip)
	.loc 1 100 0
	movl	$pcibus_save, %ecx
	movl	$1, %edx
	movl	$.LC36, %edi
	leal	1(%rsi), %eax
	movl	%eax, nbus.0(%rip)
	call	register_savevm
	.loc 1 102 0
	movq	%rbx, %rax
	movq	16(%rsp), %rbp
	movq	8(%rsp), %rbx
	movq	24(%rsp), %r12
	movq	32(%rsp), %r13
	movq	40(%rsp), %r14
	movq	48(%rsp), %r15
	addq	$56, %rsp
	ret
.LFE198:
	.size	pci_register_bus, .-pci_register_bus
	.p2align 4,,15
.globl pci_bus_num
	.type	pci_bus_num, @function
pci_bus_num:
.LFB200:
	.loc 1 116 0
	.loc 1 117 0
	movl	(%rdi), %eax
	.loc 1 118 0
	ret
.LFE200:
	.size	pci_bus_num, .-pci_bus_num
	.p2align 4,,15
.globl pci_device_save
	.type	pci_device_save, @function
pci_device_save:
.LFB201:
	.loc 1 121 0
	pushq	%r12
.LCFI16:
	movq	%rdi, %r12
	pushq	%rbp
.LCFI17:
	movq	%rsi, %rbp
	.loc 1 124 0
	movl	$2, %esi
	movq	%rbp, %rdi
	.loc 1 121 0
	pushq	%rbx
.LCFI18:
	.loc 1 126 0
	xorl	%ebx, %ebx
	.loc 1 124 0
	call	qemu_put_be32
	.loc 1 125 0
	movl	$256, %edx
	movq	%r12, %rsi
	movq	%rbp, %rdi
	call	qemu_put_buffer
	.p2align 4,,7
.L27:
	.loc 1 127 0
	movslq	%ebx,%rax
	movq	%rbp, %rdi
	.loc 1 126 0
	incl	%ebx
	.loc 1 127 0
	movl	536(%r12,%rax,4), %esi
	call	qemu_put_be32
	.loc 1 126 0
	cmpl	$3, %ebx
	jle	.L27
	popq	%rbx
	popq	%rbp
	popq	%r12
	ret
.LFE201:
	.size	pci_device_save, .-pci_device_save
	.p2align 4,,15
.globl pci_register_device
	.type	pci_register_device, @function
pci_register_device:
.LFB203:
	.loc 1 153 0
	movq	%rbp, -40(%rsp)
.LCFI19:
	movq	%r12, -32(%rsp)
.LCFI20:
	.loc 1 157 0
	xorl	%eax, %eax
	.loc 1 153 0
	movq	%r13, -24(%rsp)
.LCFI21:
	movq	%r14, -16(%rsp)
.LCFI22:
	movq	%rdi, %r12
	movq	%r15, -8(%rsp)
.LCFI23:
	movq	%rbx, -48(%rsp)
.LCFI24:
	subq	$56, %rsp
.LCFI25:
	.loc 1 156 0
	cmpl	$63, pci_irq_index(%rip)
	.loc 1 153 0
	movq	%rsi, %r15
	movl	%ecx, %ebp
	movq	%r8, %r13
	movq	%r9, %r14
	.loc 1 156 0
	jg	.L30
	.loc 1 159 0
	testl	%ecx, %ecx
	js	.L45
.L37:
.L32:
	.loc 1 167 0
	movslq	%edx,%rdi
	call	qemu_mallocz
	movq	%rax, %rbx
	.loc 1 169 0
	xorl	%eax, %eax
	.loc 1 168 0
	testq	%rbx, %rbx
	je	.L30
	.loc 1 172 0
	leaq	268(%rbx), %rdi
	movq	%r15, %rdx
	movl	$64, %esi
	.loc 1 170 0
	movq	%r12, 256(%rbx)
	.loc 1 171 0
	movl	%ebp, 264(%rbx)
	.loc 1 172 0
	call	pstrcpy
	.loc 1 176 0
	testq	%r13, %r13
	movl	$pci_default_read_config, %eax
	.loc 1 173 0
	movq	$0, 536(%rbx)
	.loc 1 176 0
	cmove	%rax, %r13
	.loc 1 178 0
	testq	%r14, %r14
	movl	$pci_default_write_config, %eax
	cmove	%rax, %r14
	.loc 1 173 0
	movq	$0, 544(%rbx)
	.loc 1 179 0
	movq	%r13, 504(%rbx)
	.loc 1 180 0
	movq	%r14, 512(%rbx)
	.loc 1 181 0
	movl	pci_irq_index(%rip), %edx
	.loc 1 183 0
	movq	%rbx, %rsi
	movl	$pci_set_irq, %edi
	.loc 1 181 0
	leal	1(%rdx), %eax
	movl	%eax, pci_irq_index(%rip)
	.loc 1 182 0
	movslq	%ebp,%rax
	.loc 1 181 0
	movl	%edx, 520(%rbx)
	.loc 1 182 0
	movq	%rbx, 48(%r12,%rax,8)
	.loc 1 183 0
	movl	$4, %edx
	call	qemu_allocate_irqs
	movq	%rax, 528(%rbx)
	.loc 1 184 0
	movq	%rbx, %rax
.L30:
	.loc 1 185 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	movq	24(%rsp), %r12
	movq	32(%rsp), %r13
	movq	40(%rsp), %r14
	movq	48(%rsp), %r15
	addq	$56, %rsp
	ret
	.p2align 4,,7
.L45:
	.loc 1 160 0
	movl	4(%rdi), %ebp
	jmp	.L44
	.p2align 4,,7
.L46:
	.loc 1 161 0
	movslq	%ebp,%rax
	cmpq	$0, 48(%r12,%rax,8)
	je	.L32
	.loc 1 160 0
	addl	$8, %ebp
.L44:
	cmpl	$255, %ebp
	jle	.L46
	.loc 1 164 0
	xorl	%eax, %eax
	jmp	.L30
.LFE203:
	.size	pci_register_device, .-pci_register_device
	.p2align 4,,15
.globl pci_register_io_region
	.type	pci_register_io_region, @function
pci_register_io_region:
.LFB204:
	.loc 1 190 0
	.loc 1 194 0
	cmpl	$6, %esi
	.loc 1 190 0
	movl	%edx, %r9d
	.loc 1 194 0
	ja	.L47
	.loc 1 196 0
	movslq	%esi,%rax
	.loc 1 202 0
	cmpl	$6, %esi
	.loc 1 196 0
	leaq	(%rax,%rax,2), %rax
	leaq	(%rdi,%rax,8), %rax
	leaq	336(%rax), %rdx
	.loc 1 197 0
	movl	$-1, 336(%rax)
	.loc 1 202 0
	movl	$48, %eax
	.loc 1 198 0
	movl	%r9d, 4(%rdx)
	.loc 1 199 0
	movb	%cl, 8(%rdx)
	.loc 1 200 0
	movq	%r8, 16(%rdx)
	.loc 1 202 0
	leal	16(,%rsi,4), %edx
	cmovne	%edx, %eax
	.loc 1 206 0
	mov	%eax, %eax
	.file 2 "../bswap.h"
	.loc 2 124 0
	movl	%ecx, (%rax,%rdi)
.L47:
	rep ; ret
.LFE204:
	.size	pci_register_io_region, .-pci_register_io_region
	.p2align 4,,15
	.type	pci_update_mappings, @function
pci_update_mappings:
.LFB206:
	.loc 1 215 0
	pushq	%r14
.LCFI26:
	pushq	%r13
.LCFI27:
	movq	%rdi, %r13
	pushq	%r12
.LCFI28:
	.loc 1 221 0
	xorl	%r12d, %r12d
	.loc 1 215 0
	pushq	%rbp
.LCFI29:
	pushq	%rbx
.LCFI30:
	.loc 2 123 0
	movzwl	4(%rdi), %r14d
	leaq	336(%rdi), %rbx
	.p2align 4,,7
.L82:
	.loc 1 228 0
	movl	4(%rbx), %esi
	.loc 1 224 0
	leal	16(,%r12,4), %eax
	cmpl	$6, %r12d
	movl	$48, %edx
	cmovne	%eax, %edx
	.loc 1 228 0
	testl	%esi, %esi
	je	.L56
	.loc 1 229 0
	movzbl	8(%rbx), %edi
	testb	$1, %dil
	je	.L60
	.loc 1 230 0
	testb	$1, %r14b
	.loc 1 241 0
	movl	$-1, %ebp
	.loc 1 230 0
	je	.L66
.LBB2:
	.loc 2 124 0
	mov	%edx, %eax
.LBE2:
	.loc 1 233 0
	movl	%esi, %ebp
	negl	%ebp
	andl	(%rax,%r13), %ebp
	.loc 1 234 0
	leal	-1(%rsi,%rbp), %ecx
	.loc 1 236 0
	cmpl	%ebp, %ecx
	setbe	%dl
	testl	%ebp, %ebp
	sete	%al
	orl	%edx, %eax
	testb	$1, %al
	jne	.L70
	cmpl	$65535, %ecx
	ja	.L70
	.p2align 4,,7
.L66:
	.loc 1 266 0
	movl	(%rbx), %ecx
	cmpl	%ebp, %ecx
	je	.L56
	.loc 1 267 0
	cmpl	$-1, %ecx
	.p2align 4,,3
	je	.L75
	.loc 1 268 0
	andl	$1, %edi
	.p2align 4,,3
	je	.L76
.LBB3:
	.loc 1 272 0
	movzbl	11(%r13), %eax
	movzbl	10(%r13), %edx
	sall	$8, %eax
	orl	%eax, %edx
	.loc 1 273 0
	cmpl	$257, %edx
	jne	.L77
	cmpl	$4, %esi
	je	.L87
.L77:
	.loc 1 276 0
	movl	(%rbx), %edi
.L85:
	call	isa_unassign_ioport
.L75:
.LBE3:
	.loc 1 285 0
	cmpl	$-1, %ebp
	.loc 1 284 0
	movl	%ebp, (%rbx)
	.loc 1 285 0
	je	.L56
	.loc 1 286 0
	movzbl	8(%rbx), %r8d
	movl	4(%rbx), %ecx
	movl	%ebp, %edx
	movl	%r12d, %esi
	movq	%r13, %rdi
	call	*16(%rbx)
	.p2align 4,,7
.L56:
	.loc 1 221 0
	incl	%r12d
	addq	$24, %rbx
	cmpl	$6, %r12d
	jle	.L82
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	ret
	.p2align 4,,7
.L60:
	.loc 1 244 0
	testb	$2, %r14b
	je	.L70
.LBB4:
	.loc 2 124 0
	mov	%edx, %eax
.LBE4:
	.loc 1 248 0
	cmpl	$6, %r12d
.LBB5:
	.loc 2 124 0
	movl	(%rax,%r13), %ebp
.LBE5:
	.loc 1 248 0
	je	.L88
.L69:
	.loc 1 250 0
	movl	%esi, %eax
	negl	%eax
	andl	%eax, %ebp
	.loc 1 251 0
	leal	-1(%rsi,%rbp), %ecx
	.loc 1 256 0
	cmpl	%ebp, %ecx
	setbe	%dl
	testl	%ebp, %ebp
	sete	%al
	orl	%edx, %eax
	testb	$1, %al
	jne	.L70
	incl	%ecx
	jne	.L66
	.p2align 4,,7
.L70:
	.loc 1 262 0
	movl	$-1, %ebp
	jmp	.L66
.L76:
.LBB6:
	.loc 1 210 0
	mov	%ecx, %edi
.LBB7:
	.loc 1 211 0
	addq	pci_mem_base(%rip), %rdi
.LBE7:
.LBE6:
	.loc 1 210 0
	mov	%esi, %esi
	movl	$32, %edx
	call	cpu_register_physical_memory
	jmp	.L75
.L88:
	.loc 1 248 0
	testb	$1, %bpl
	jne	.L69
	.loc 1 262 0
	movl	$-1, %ebp
	.p2align 4,,7
	jmp	.L66
.L87:
.LBB8:
	.loc 1 274 0
	leal	2(%rcx), %edi
	movb	$1, %sil
	.p2align 4,,3
	jmp	.L85
.LBE8:
.LFE206:
	.size	pci_update_mappings, .-pci_update_mappings
	.p2align 4,,15
.globl pci_device_load
	.type	pci_device_load, @function
pci_device_load:
.LFB202:
	.loc 1 131 0
	movq	%rbx, -32(%rsp)
.LCFI31:
	movq	%r12, -16(%rsp)
.LCFI32:
	movq	%rsi, %r12
	movq	%r13, -8(%rsp)
.LCFI33:
	movq	%rbp, -24(%rsp)
.LCFI34:
	movq	%rdi, %r13
	subq	$40, %rsp
.LCFI35:
	.loc 1 135 0
	movq	%rsi, %rdi
	call	qemu_get_be32
	movl	%eax, %ebx
	.loc 1 137 0
	movl	$-22, %eax
	.loc 1 136 0
	cmpl	$2, %ebx
	ja	.L89
	.loc 1 138 0
	movl	$256, %edx
	movq	%r13, %rsi
	movq	%r12, %rdi
	call	qemu_get_buffer
	.loc 1 139 0
	movq	%r13, %rdi
	call	pci_update_mappings
	.loc 1 141 0
	cmpl	$1, %ebx
	jbe	.L91
	.loc 1 142 0
	xorl	%ebp, %ebp
	.p2align 4,,7
.L95:
	.loc 1 143 0
	movslq	%ebp,%rbx
	movq	%r12, %rdi
	.loc 1 142 0
	incl	%ebp
	.loc 1 143 0
	call	qemu_get_be32
	.loc 1 142 0
	cmpl	$3, %ebp
	.loc 1 143 0
	movl	%eax, 536(%r13,%rbx,4)
	.loc 1 142 0
	jle	.L95
.L91:
	.loc 1 145 0
	xorl	%eax, %eax
.L89:
	.loc 1 146 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	movq	24(%rsp), %r12
	movq	32(%rsp), %r13
	addq	$40, %rsp
	ret
.LFE202:
	.size	pci_device_load, .-pci_device_load
	.p2align 4,,15
.globl pci_default_read_config
	.type	pci_default_read_config, @function
pci_default_read_config:
.LFB207:
	.loc 1 295 0
	.loc 1 298 0
	cmpl	$1, %edx
	je	.L106
	cmpl	$2, %edx
	je	.L103
	.loc 1 301 0
	cmpl	$252, %esi
	jbe	.L107
.L103:
	.loc 1 307 0
	cmpl	$254, %esi
	.p2align 4,,5
	ja	.L106
.LBB9:
	.loc 2 123 0
	mov	%esi, %eax
.LBE9:
	movzwl	(%rax,%rdi), %eax
	.loc 1 309 0
	.p2align 4,,3
	ret
	.p2align 4,,7
.L107:
.LBB10:
	.loc 2 124 0
	mov	%esi, %eax
	movl	(%rax,%rdi), %eax
.LBE10:
	.loc 1 303 0
	.p2align 4,,2
	ret
	.p2align 4,,7
.L106:
	.loc 1 313 0
	mov	%esi, %eax
	movzbl	(%rdi,%rax), %eax
	.loc 1 317 0
	.p2align 4,,1
	ret
.LFE207:
	.size	pci_default_read_config, .-pci_default_read_config
	.p2align 4,,15
.globl pci_default_write_config
	.type	pci_default_write_config, @function
pci_default_write_config:
.LFB208:
	.loc 1 321 0
	pushq	%rbp
.LCFI36:
	.loc 1 325 0
	cmpl	$4, %ecx
	.loc 1 321 0
	movl	%edx, %r8d
	movl	%ecx, %r10d
	pushq	%rbx
.LCFI37:
	.loc 1 325 0
	je	.L160
.L113:
	.loc 1 353 0
	xorl	%r9d, %r9d
	.loc 1 352 0
	movl	%esi, %edx
	.loc 1 353 0
	cmpl	%r10d, %r9d
	jge	.L118
	movl	$1, %r11d
	movabsq	$2310066233375936271, %rbx
	movabsq	$3386706919782633231, %rbp
	jmp	.L154
	.p2align 4,,7
.L161:
	.loc 1 355 0
	addl	$-128, %eax
	je	.L122
	.loc 1 380 0
	cmpl	$61, %edx
	ja	.L157
	movslq	%edx,%rcx
	movq	%r11, %rax
	salq	%cl, %rax
	testq	%rbp, %rax
.L158:
	jne	.L152
.L157:
	.loc 1 401 0
	mov	%edx, %eax
	movb	%r8b, (%rdi,%rax)
.L152:
	.loc 1 403 0
	incl	%edx
	cmpl	$255, %edx
	ja	.L118
	.loc 1 353 0
	incl	%r9d
	.loc 1 405 0
	shrl	$8, %r8d
	.loc 1 353 0
	cmpl	%r10d, %r9d
	jge	.L118
.L154:
	.loc 1 355 0
	movzbl	14(%rdi), %eax
	testl	%eax, %eax
	jne	.L161
.L122:
	.loc 1 358 0
	cmpl	$61, %edx
	ja	.L157
	movslq	%edx,%rcx
	movq	%r11, %rax
	salq	%cl, %rax
	testq	%rbx, %rax
	jmp	.L158
	.p2align 4,,7
.L118:
	.loc 1 408 0
	leal	(%rsi,%r10), %eax
	.loc 1 409 0
	cmpl	$4, %eax
	seta	%dl
	xorl	%eax, %eax
	cmpl	$5, %esi
	setbe	%al
	testl	%edx, %eax
	jne	.L159
	.loc 1 413 0
	popq	%rbx
	popq	%rbp
	ret
.L160:
	.loc 1 325 0
	leal	-16(%rsi), %ecx
	leal	-48(%rsi), %eax
	cmpl	$23, %ecx
	setbe	%dl
	cmpl	$3, %eax
	setbe	%al
	orl	%edx, %eax
	testb	$1, %al
	je	.L113
.LBB11:
	.loc 1 331 0
	shrl	$2, %ecx
	movl	$6, %edx
	cmpl	$48, %esi
	cmovb	%ecx, %edx
	.loc 1 335 0
	movslq	%edx,%rax
	leaq	(%rax,%rax,2), %rax
	leaq	336(%rdi,%rax,8), %rcx
	.loc 1 336 0
	movl	4(%rcx), %eax
	testl	%eax, %eax
	je	.L113
	.loc 1 339 0
	cmpl	$6, %edx
	je	.L162
	.loc 1 343 0
	negl	%eax
	andl	%eax, %r8d
	.loc 1 344 0
	movzbl	8(%rcx), %eax
	orl	%eax, %r8d
.L115:
	.loc 1 346 0
	mov	%esi, %eax
	.loc 2 124 0
	movl	%r8d, (%rax,%rdi)
	.p2align 4,,7
.L159:
.LBE11:
	.loc 1 413 0
	popq	%rbx
	popq	%rbp
	.loc 1 411 0
	jmp	pci_update_mappings
.L162:
.LBB12:
	.loc 1 341 0
	negl	%eax
	orl	$1, %eax
	andl	%eax, %r8d
	jmp	.L115
.LBE12:
.LFE208:
	.size	pci_default_write_config, .-pci_default_write_config
	.p2align 4,,15
.globl pci_data_write
	.type	pci_data_write, @function
pci_data_write:
.LFB209:
	.loc 1 416 0
	.loc 1 425 0
	movl	%esi, %eax
	shrl	$16, %eax
	andl	$255, %eax
	jmp	.L171
	.p2align 4,,7
.L172:
	.loc 1 427 0
	movq	2104(%rdi), %rdi
.L171:
	testq	%rdi, %rdi
	je	.L163
	cmpl	%eax, (%rdi)
	jne	.L172
	.loc 1 428 0
	testq	%rdi, %rdi
	je	.L163
	.loc 1 430 0
	movl	%esi, %eax
	shrl	$8, %eax
	movzbl	%al, %eax 
	movq	48(%rdi,%rax,8), %rax
	.loc 1 431 0
	testq	%rax, %rax
	je	.L163
	.loc 1 433 0
	andl	$255, %esi
	.loc 1 438 0
	movq	%rax, %rdi
	movq	512(%rax), %r11
	jmp	*%r11
	.p2align 4,,7
.L163:
	rep ; ret
.LFE209:
	.size	pci_data_write, .-pci_data_write
	.p2align 4,,15
.globl pci_data_read
	.type	pci_data_read, @function
pci_data_read:
.LFB210:
	.loc 1 442 0
	.loc 1 448 0
	movl	%esi, %eax
	.loc 1 442 0
	subq	$8, %rsp
.LCFI38:
	.loc 1 448 0
	shrl	$16, %eax
	andl	$255, %eax
	jmp	.L188
	.p2align 4,,7
.L189:
	.loc 1 450 0
	movq	2104(%rdi), %rdi
.L188:
	testq	%rdi, %rdi
	je	.L178
	cmpl	%eax, (%rdi)
	jne	.L189
	.loc 1 451 0
	testq	%rdi, %rdi
	je	.L178
	.loc 1 453 0
	movl	%esi, %eax
	shrl	$8, %eax
	movzbl	%al, %eax 
	movq	48(%rdi,%rax,8), %rax
	.loc 1 454 0
	testq	%rax, %rax
	je	.L178
	.loc 1 470 0
	andl	$255, %esi
	.loc 1 471 0
	movq	%rax, %rdi
	call	*504(%rax)
.L185:
	.loc 1 482 0
	addq	$8, %rsp
	ret
	.p2align 4,,7
.L178:
	.loc 1 456 0
	cmpl	$1, %edx
	.loc 1 458 0
	movl	$255, %eax
	.loc 1 456 0
	je	.L185
	cmpl	$2, %edx
	.loc 1 461 0
	movw	$-1, %ax
	.loc 1 456 0
	.p2align 4,,2
	je	.L185
	.loc 1 465 0
	movl	$-1, %eax
	.loc 1 482 0
	addq	$8, %rsp
	ret
.LFE210:
	.size	pci_data_read, .-pci_data_read
	.p2align 4,,15
	.type	pci_set_irq, @function
pci_set_irq:
.LFB211:
	.loc 1 489 0
	pushq	%rbp
.LCFI39:
	.loc 1 494 0
	movslq	%esi,%rax
	.loc 1 495 0
	movl	%edx, %ebp
	.loc 1 489 0
	pushq	%rbx
.LCFI40:
	subq	$8, %rsp
.LCFI41:
	.loc 1 495 0
	subl	536(%rdi,%rax,4), %ebp
	je	.L190
	.loc 1 498 0
	movl	%edx, 536(%rdi,%rax,4)
	jmp	.L192
	.p2align 4,,7
.L195:
	.loc 1 504 0
	movq	2096(%rbx), %rdi
.L192:
	.loc 1 500 0
	movq	256(%rdi), %rbx
	.loc 1 501 0
	call	*16(%rbx)
	.loc 1 502 0
	movq	8(%rbx), %rcx
	.loc 1 501 0
	movl	%eax, %esi
	.loc 1 502 0
	testq	%rcx, %rcx
	je	.L195
	.loc 1 506 0
	cltq
	.loc 1 507 0
	movq	40(%rbx), %rdi
	movq	%rcx, %r11
	.loc 1 506 0
	movl	2116(%rbx,%rax,4), %edx
	addl	%ebp, %edx
	.loc 1 507 0
	testl	%edx, %edx
	.loc 1 506 0
	movl	%edx, 2116(%rbx,%rax,4)
	.loc 1 507 0
	setne	%dl
	.loc 1 508 0
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	.loc 1 507 0
	movzbl	%dl, %edx
	jmp	*%r11
.L190:
	.loc 1 508 0
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
.LFE211:
	.size	pci_set_irq, .-pci_set_irq
	.p2align 4,,15
.globl pci_for_each_device
	.type	pci_for_each_device, @function
pci_for_each_device:
.LFB213:
	.loc 1 605 0
	pushq	%r12
.LCFI42:
	movq	%rsi, %r12
	pushq	%rbp
.LCFI43:
	.loc 1 606 0
	movq	first_bus(%rip), %rbp
	.loc 1 605 0
	pushq	%rbx
.LCFI44:
	jmp	.L209
.L210:
	.loc 1 611 0
	movq	2104(%rbp), %rbp
.L209:
	testq	%rbp, %rbp
	je	.L196
	cmpl	%edi, (%rbp)
	jne	.L210
	.loc 1 612 0
	testq	%rbp, %rbp
	je	.L196
	.loc 1 613 0
	xorl	%ebx, %ebx
	.p2align 4,,7
.L205:
	.loc 1 614 0
	movslq	%ebx,%rax
	movq	48(%rbp,%rax,8), %rdi
	.loc 1 615 0
	testq	%rdi, %rdi
	je	.L203
	.loc 1 616 0
	call	*%r12
.L203:
	.loc 1 613 0
	incl	%ebx
	cmpl	$255, %ebx
	jle	.L205
.L196:
	.loc 1 619 0
	popq	%rbx
	popq	%rbp
	popq	%r12
	.p2align 4,,4
	ret
.LFE213:
	.size	pci_for_each_device, .-pci_for_each_device
	.section	.rodata.str1.8
	.align 8
.LC37:
	.string	"  Bus %2d, device %3d, function %d:\n"
	.section	.rodata.str1.1
.LC38:
	.string	"    "
.LC40:
	.string	"Class %04x"
.LC41:
	.string	": PCI device %04x:%04x\n"
.LC44:
	.string	"      BAR%d: "
.LC45:
	.string	"I/O at 0x%04x [0x%04x].\n"
	.section	.rodata.str1.8
	.align 8
.LC46:
	.string	"32 bit memory at 0x%08x [0x%08x].\n"
	.section	.rodata.str1.1
.LC39:
	.string	"%s"
.LC42:
	.string	"      IRQ %d.\n"
.LC43:
	.string	"      BUS %d.\n"
	.text
	.p2align 4,,15
	.type	pci_info_device, @function
pci_info_device:
.LFB212:
	.loc 1 559 0
	pushq	%r13
.LCFI45:
	pushq	%r12
.LCFI46:
	movq	%rdi, %r12
	pushq	%rbp
.LCFI47:
	pushq	%rbx
.LCFI48:
	subq	$8, %rsp
.LCFI49:
	.loc 1 564 0
	movq	256(%rdi), %rax
	movl	264(%rdi), %edx
	movl	$.LC37, %edi
	movl	(%rax), %esi
	movl	%edx, %ecx
	xorl	%eax, %eax
	sarl	$3, %edx
	andl	$7, %ecx
	call	term_printf
	.loc 1 567 0
	xorl	%eax, %eax
	movl	$.LC38, %edi
	.loc 2 123 0
	movzwl	10(%r12), %r13d
	.loc 1 567 0
	call	term_printf
	.loc 1 570 0
	movq	pci_class_descriptions+8(%rip), %rsi
	.loc 1 568 0
	movl	$pci_class_descriptions, %edx
	.loc 1 570 0
	testq	%rsi, %rsi
	je	.L233
	movzwl	pci_class_descriptions(%rip), %eax
	jmp	.L235
	.p2align 4,,7
.L237:
	addq	$16, %rdx
	movq	8(%rdx), %rsi
	testq	%rsi, %rsi
	je	.L216
	movzwl	(%rdx), %eax
.L235:
	cmpl	%r13d, %eax
	jne	.L237
	.loc 1 571 0
	testq	%rsi, %rsi
	jne	.L238
.L216:
	.loc 1 574 0
	xorl	%eax, %eax
	movl	%r13d, %esi
	movl	$.LC40, %edi
	call	term_printf
	.loc 2 123 0
	movzwl	2(%r12), %edx
	movzwl	(%r12), %esi
	xorl	%eax, %eax
	movl	$.LC41, %edi
	call	term_printf
	.loc 1 580 0
	cmpb	$0, 61(%r12)
	jne	.L239
.L220:
	.loc 1 583 0
	cmpl	$1540, %r13d
	je	.L240
.L221:
	.loc 1 586 0
	xorl	%ebp, %ebp
	movq	%r12, %rbx
	.p2align 4,,3
	jmp	.L228
	.p2align 4,,7
.L224:
	incl	%ebp
	addq	$24, %rbx
	cmpl	$6, %ebp
	jg	.L241
.L228:
	.loc 1 588 0
	movl	340(%rbx), %edx
	testl	%edx, %edx
	je	.L224
	.loc 1 589 0
	xorl	%eax, %eax
	movl	%ebp, %esi
	movl	$.LC44, %edi
	call	term_printf
	.loc 1 590 0
	testb	$1, 344(%rbx)
	je	.L226
	.loc 1 591 0
	movl	336(%rbx), %esi
	movl	$.LC45, %edi
	movl	%esi, %edx
	addl	340(%rbx), %edx
	decl	%edx
.L236:
	.loc 1 594 0
	xorl	%eax, %eax
	.loc 1 586 0
	incl	%ebp
	addq	$24, %rbx
	.loc 1 594 0
	call	term_printf
	.loc 1 586 0
	cmpl	$6, %ebp
	jle	.L228
	.p2align 4,,7
.L241:
	.loc 1 599 0
	cmpl	$1540, %r13d
	je	.L242
.L211:
	.loc 1 602 0
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	.p2align 4,,7
.L226:
	.loc 1 594 0
	movl	336(%rbx), %esi
	movl	$.LC46, %edi
	movl	%esi, %edx
	addl	340(%rbx), %edx
	decl	%edx
	jmp	.L236
.L233:
	movq	pci_class_descriptions+8(%rip), %rsi
	.loc 1 571 0
	testq	%rsi, %rsi
	je	.L216
.L238:
	.loc 1 572 0
	xorl	%eax, %eax
	movl	$.LC39, %edi
	call	term_printf
	.loc 2 123 0
	movzwl	2(%r12), %edx
	movzwl	(%r12), %esi
	xorl	%eax, %eax
	movl	$.LC41, %edi
	call	term_printf
	.loc 1 580 0
	cmpb	$0, 61(%r12)
	je	.L220
.L239:
	.loc 1 581 0
	movzbl	60(%r12), %esi
	xorl	%eax, %eax
	movl	$.LC42, %edi
	call	term_printf
	.loc 1 583 0
	cmpl	$1540, %r13d
	jne	.L221
.L240:
	.loc 1 584 0
	movzbl	25(%r12), %esi
	movl	$.LC43, %edi
	xorl	%eax, %eax
	call	term_printf
	jmp	.L221
.L242:
	.loc 1 599 0
	movzbl	25(%r12), %eax
	testb	%al, %al
	je	.L211
	.loc 1 602 0
	addq	$8, %rsp
	.loc 1 600 0
	movzbl	%al, %edi
	movl	$pci_info_device, %esi
	.loc 1 602 0
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	.loc 1 600 0
	jmp	pci_for_each_device
.LFE212:
	.size	pci_info_device, .-pci_info_device
	.p2align 4,,15
.globl pci_info
	.type	pci_info, @function
pci_info:
.LFB214:
	.loc 1 622 0
	.loc 1 623 0
	movl	$pci_info_device, %esi
	xorl	%edi, %edi
	jmp	pci_for_each_device
.LFE214:
	.size	pci_info, .-pci_info
	.section	.rodata.str1.1
.LC47:
	.string	"ne2k_pci"
	.section	.rodata.str1.8
	.align 8
.LC49:
	.string	"qemu: Supported PCI NICs: ne2k_pci\n"
	.section	.rodata.str1.1
.LC50:
	.string	"qemu: Unsupported NIC: %s\n"
	.text
	.p2align 4,,15
.globl pci_nic_init
	.type	pci_nic_init, @function
pci_nic_init:
.LFB215:
	.loc 1 628 0
	subq	$8, %rsp
.LCFI50:
.LBB13:
	.loc 1 629 0
	movq	8(%rsi), %r8
.LBE13:
	.loc 1 628 0
	movq	%rdi, %r11
.LBB14:
	.loc 1 629 0
	cld
.LBE14:
	.loc 1 628 0
	movq	%rsi, %r9
.LBB15:
	.loc 1 629 0
	movl	$.LC47, %edi
	movl	$9, %ecx
	movq	%r8, %rsi
.LBE15:
	repz
	cmpsb
	je	.L260
.LBB16:
.LBB17:
	.loc 1 643 0
	movzbl	(%r8), %eax
	subl	$63, %eax
	je	.L261
.L255:
.LBE17:
.LBE16:
	testl	%eax, %eax
	jne	.L252
	.loc 1 648 0
	movq	stderr(%rip), %rcx
	movl	$35, %edx
	movl	$1, %esi
	movl	$.LC49, %edi
	call	fwrite
.L259:
	.loc 1 652 0
	movl	$1, %edi
	call	exit
	.p2align 4,,7
.L261:
.LBB18:
.LBB19:
	.loc 1 643 0
	movzbl	1(%r8), %eax
	jmp	.L255
	.p2align 4,,7
.L260:
.LBE19:
.LBE18:
	.loc 1 630 0
	movq	%r9, %rsi
	movq	%r11, %rdi
	.loc 1 654 0
	addq	$8, %rsp
	.loc 1 630 0
	jmp	pci_ne2000_init
.L252:
	.loc 1 651 0
	movq	stderr(%rip), %rdi
	movq	%r8, %rdx
	movl	$.LC50, %esi
	xorl	%eax, %eax
	call	fprintf
	jmp	.L259
.LFE215:
	.size	pci_nic_init, .-pci_nic_init
	.p2align 4,,15
	.type	pci_bridge_write_config, @function
pci_bridge_write_config:
.LFB216:
	.loc 1 663 0
	.loc 1 666 0
	cmpl	$25, %esi
	.loc 1 663 0
	pushq	%rbx
.LCFI51:
	.loc 1 663 0
	movl	%edx, %r8d
	.loc 1 666 0
	je	.L267
	cmpl	$24, %esi
	sete	%dl
	xorl	%eax, %eax
	cmpl	$1, %ecx
	setg	%al
	testl	%edx, %eax
	je	.L263
	.loc 1 670 0
	movq	552(%rdi), %rdx
	movq	%r8, %rbx
	movzbl	%bh, %eax
	movl	%eax, (%rdx)
.L263:
	.loc 1 675 0
	popq	%rbx
	movl	%r8d, %edx
	jmp	pci_default_write_config
	.p2align 4,,7
.L267:
	.loc 1 668 0
	movq	552(%rdi), %rdx
	movzbl	%r8b,%eax
	.loc 1 670 0
	movl	%eax, (%rdx)
	jmp	.L263
.LFE216:
	.size	pci_bridge_write_config, .-pci_bridge_write_config
	.p2align 4,,15
.globl pci_bridge_init
	.type	pci_bridge_init, @function
pci_bridge_init:
.LFB217:
	.loc 1 680 0
	pushq	%r13
.LCFI52:
	movl	%esi, %eax
	movq	%rcx, %r13
	movq	%r8, %rsi
	.loc 1 682 0
	movl	$pci_bridge_write_config, %r9d
	xorl	%r8d, %r8d
	.loc 1 680 0
	pushq	%r12
.LCFI53:
	.loc 1 682 0
	movl	%eax, %ecx
	.loc 1 680 0
	movl	%edx, %r12d
	.loc 1 682 0
	movl	$560, %edx
	.loc 1 680 0
	pushq	%rbx
.LCFI54:
	.loc 1 682 0
	call	pci_register_device
	movq	%rax, %rbx
	.loc 1 684 0
	movl	%r12d, %eax
.LBB20:
.LBB21:
	.loc 1 107 0
	movl	$2120, %edi
.LBE21:
.LBE20:
	.loc 1 684 0
	shrl	$16, %eax
	.loc 1 686 0
	movb	%r12b, 2(%rbx)
	.loc 1 688 0
	movb	$6, 4(%rbx)
	.loc 1 684 0
	movb	%al, (%rbx)
	.loc 1 685 0
	movl	%r12d, %eax
	.loc 1 687 0
	shrl	$8, %r12d
	.loc 1 685 0
	shrl	$24, %eax
	.loc 1 687 0
	movb	%r12b, 3(%rbx)
	.loc 1 689 0
	movb	$0, 5(%rbx)
	.loc 1 685 0
	movb	%al, 1(%rbx)
	.loc 1 690 0
	movb	$-96, 6(%rbx)
	.loc 1 691 0
	movb	$0, 7(%rbx)
	.loc 1 692 0
	movb	$0, 8(%rbx)
	.loc 1 693 0
	movb	$0, 9(%rbx)
	.loc 1 694 0
	movb	$4, 10(%rbx)
	.loc 1 695 0
	movb	$6, 11(%rbx)
	.loc 1 696 0
	movb	$16, 13(%rbx)
	.loc 1 697 0
	movb	$-127, 14(%rbx)
	.loc 1 698 0
	movb	$-96, 30(%rbx)
.LBB22:
.LBB23:
	.loc 1 107 0
	call	qemu_mallocz
	.loc 1 108 0
	movq	%r13, 16(%rax)
	.loc 1 109 0
	movq	%rbx, 2096(%rax)
	.loc 1 110 0
	movq	256(%rbx), %rdx
	movq	2104(%rdx), %rdx
	movq	%rdx, 2104(%rax)
	.loc 1 111 0
	movq	256(%rbx), %rdx
	movq	%rax, 2104(%rdx)
.LBE23:
.LBE22:
	.loc 1 105 0
	movq	%rax, 552(%rbx)
	.loc 1 702 0
	popq	%rbx
	popq	%r12
	popq	%r13
	ret
.LFE217:
	.size	pci_bridge_init, .-pci_bridge_init
	.comm	pci_mem_base,8,8
	.local	pci_irq_index
	.comm	pci_irq_index,4,4
	.local	first_bus
	.comm	first_bus,8,8
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
	.quad	.LFB196
	.quad	.LFE196-.LFB196
	.byte	0x4
	.long	.LCFI0-.LFB196
	.byte	0xe
	.uleb128 0x10
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI1-.LCFI0
	.byte	0xe
	.uleb128 0x18
	.byte	0x86
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI2-.LCFI1
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x4
	.align 8
.LEFDE0:
.LSFDE2:
	.long	.LEFDE2-.LASFDE2
.LASFDE2:
	.long	.Lframe0
	.quad	.LFB197
	.quad	.LFE197-.LFB197
	.byte	0x4
	.long	.LCFI4-.LFB197
	.byte	0x8e
	.uleb128 0x2
	.byte	0x8d
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI8-.LCFI4
	.byte	0xe
	.uleb128 0x30
	.byte	0x8c
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x5
	.byte	0x83
	.uleb128 0x6
	.align 8
.LEFDE2:
.LSFDE4:
	.long	.LEFDE4-.LASFDE4
.LASFDE4:
	.long	.Lframe0
	.quad	.LFB198
	.quad	.LFE198-.LFB198
	.byte	0x4
	.long	.LCFI9-.LFB198
	.byte	0x8d
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI12-.LCFI9
	.byte	0x8c
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x6
	.byte	0x83
	.uleb128 0x7
	.byte	0x4
	.long	.LCFI14-.LCFI12
	.byte	0x8f
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI15-.LCFI14
	.byte	0xe
	.uleb128 0x40
	.align 8
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.quad	.LFB200
	.quad	.LFE200-.LFB200
	.align 8
.LEFDE6:
.LSFDE8:
	.long	.LEFDE8-.LASFDE8
.LASFDE8:
	.long	.Lframe0
	.quad	.LFB201
	.quad	.LFE201-.LFB201
	.byte	0x4
	.long	.LCFI16-.LFB201
	.byte	0xe
	.uleb128 0x10
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI17-.LCFI16
	.byte	0xe
	.uleb128 0x18
	.byte	0x86
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI18-.LCFI17
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x4
	.align 8
.LEFDE8:
.LSFDE10:
	.long	.LEFDE10-.LASFDE10
.LASFDE10:
	.long	.Lframe0
	.quad	.LFB203
	.quad	.LFE203-.LFB203
	.byte	0x4
	.long	.LCFI22-.LFB203
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8d
	.uleb128 0x4
	.byte	0x8c
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI25-.LCFI22
	.byte	0xe
	.uleb128 0x40
	.byte	0x83
	.uleb128 0x7
	.byte	0x8f
	.uleb128 0x2
	.align 8
.LEFDE10:
.LSFDE12:
	.long	.LEFDE12-.LASFDE12
.LASFDE12:
	.long	.Lframe0
	.quad	.LFB204
	.quad	.LFE204-.LFB204
	.align 8
.LEFDE12:
.LSFDE14:
	.long	.LEFDE14-.LASFDE14
.LASFDE14:
	.long	.Lframe0
	.quad	.LFB206
	.quad	.LFE206-.LFB206
	.byte	0x4
	.long	.LCFI26-.LFB206
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI27-.LCFI26
	.byte	0xe
	.uleb128 0x18
	.byte	0x8d
	.uleb128 0x3
	.byte	0x8e
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI28-.LCFI27
	.byte	0xe
	.uleb128 0x20
	.byte	0x8c
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI29-.LCFI28
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI30-.LCFI29
	.byte	0xe
	.uleb128 0x30
	.byte	0x83
	.uleb128 0x6
	.byte	0x86
	.uleb128 0x5
	.align 8
.LEFDE14:
.LSFDE16:
	.long	.LEFDE16-.LASFDE16
.LASFDE16:
	.long	.Lframe0
	.quad	.LFB202
	.quad	.LFE202-.LFB202
	.byte	0x4
	.long	.LCFI32-.LFB202
	.byte	0x8c
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI34-.LCFI32
	.byte	0x86
	.uleb128 0x4
	.byte	0x8d
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI35-.LCFI34
	.byte	0xe
	.uleb128 0x30
	.align 8
.LEFDE16:
.LSFDE18:
	.long	.LEFDE18-.LASFDE18
.LASFDE18:
	.long	.Lframe0
	.quad	.LFB207
	.quad	.LFE207-.LFB207
	.align 8
.LEFDE18:
.LSFDE20:
	.long	.LEFDE20-.LASFDE20
.LASFDE20:
	.long	.Lframe0
	.quad	.LFB208
	.quad	.LFE208-.LFB208
	.byte	0x4
	.long	.LCFI36-.LFB208
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI37-.LCFI36
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x2
	.align 8
.LEFDE20:
.LSFDE22:
	.long	.LEFDE22-.LASFDE22
.LASFDE22:
	.long	.Lframe0
	.quad	.LFB209
	.quad	.LFE209-.LFB209
	.align 8
.LEFDE22:
.LSFDE24:
	.long	.LEFDE24-.LASFDE24
.LASFDE24:
	.long	.Lframe0
	.quad	.LFB210
	.quad	.LFE210-.LFB210
	.byte	0x4
	.long	.LCFI38-.LFB210
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE24:
.LSFDE26:
	.long	.LEFDE26-.LASFDE26
.LASFDE26:
	.long	.Lframe0
	.quad	.LFB211
	.quad	.LFE211-.LFB211
	.byte	0x4
	.long	.LCFI39-.LFB211
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI40-.LCFI39
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI41-.LCFI40
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE26:
.LSFDE28:
	.long	.LEFDE28-.LASFDE28
.LASFDE28:
	.long	.Lframe0
	.quad	.LFB213
	.quad	.LFE213-.LFB213
	.byte	0x4
	.long	.LCFI42-.LFB213
	.byte	0xe
	.uleb128 0x10
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI43-.LCFI42
	.byte	0xe
	.uleb128 0x18
	.byte	0x86
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI44-.LCFI43
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x4
	.align 8
.LEFDE28:
.LSFDE30:
	.long	.LEFDE30-.LASFDE30
.LASFDE30:
	.long	.Lframe0
	.quad	.LFB212
	.quad	.LFE212-.LFB212
	.byte	0x4
	.long	.LCFI45-.LFB212
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI46-.LCFI45
	.byte	0xe
	.uleb128 0x18
	.byte	0x8c
	.uleb128 0x3
	.byte	0x8d
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI47-.LCFI46
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI48-.LCFI47
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI49-.LCFI48
	.byte	0xe
	.uleb128 0x30
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.align 8
.LEFDE30:
.LSFDE32:
	.long	.LEFDE32-.LASFDE32
.LASFDE32:
	.long	.Lframe0
	.quad	.LFB214
	.quad	.LFE214-.LFB214
	.align 8
.LEFDE32:
.LSFDE34:
	.long	.LEFDE34-.LASFDE34
.LASFDE34:
	.long	.Lframe0
	.quad	.LFB215
	.quad	.LFE215-.LFB215
	.byte	0x4
	.long	.LCFI50-.LFB215
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE34:
.LSFDE36:
	.long	.LEFDE36-.LASFDE36
.LASFDE36:
	.long	.Lframe0
	.quad	.LFB216
	.quad	.LFE216-.LFB216
	.byte	0x4
	.long	.LCFI51-.LFB216
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE36:
.LSFDE38:
	.long	.LEFDE38-.LASFDE38
.LASFDE38:
	.long	.Lframe0
	.quad	.LFB217
	.quad	.LFE217-.LFB217
	.byte	0x4
	.long	.LCFI52-.LFB217
	.byte	0xe
	.uleb128 0x10
	.byte	0x8d
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI53-.LCFI52
	.byte	0xe
	.uleb128 0x18
	.byte	0x8c
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI54-.LCFI53
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x4
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
	.quad	.LFB196
	.quad	.LFE196-.LFB196
	.byte	0x4
	.long	.LCFI0-.LFB196
	.byte	0xe
	.uleb128 0x10
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI1-.LCFI0
	.byte	0xe
	.uleb128 0x18
	.byte	0x86
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI2-.LCFI1
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x4
	.align 8
.LEFDE1:
.LSFDE3:
	.long	.LEFDE3-.LASFDE3
.LASFDE3:
	.long	.LASFDE3-.Lframe1
	.quad	.LFB197
	.quad	.LFE197-.LFB197
	.byte	0x4
	.long	.LCFI4-.LFB197
	.byte	0x8e
	.uleb128 0x2
	.byte	0x8d
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI8-.LCFI4
	.byte	0xe
	.uleb128 0x30
	.byte	0x8c
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x5
	.byte	0x83
	.uleb128 0x6
	.align 8
.LEFDE3:
.LSFDE5:
	.long	.LEFDE5-.LASFDE5
.LASFDE5:
	.long	.LASFDE5-.Lframe1
	.quad	.LFB198
	.quad	.LFE198-.LFB198
	.byte	0x4
	.long	.LCFI9-.LFB198
	.byte	0x8d
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI12-.LCFI9
	.byte	0x8c
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x6
	.byte	0x83
	.uleb128 0x7
	.byte	0x4
	.long	.LCFI14-.LCFI12
	.byte	0x8f
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI15-.LCFI14
	.byte	0xe
	.uleb128 0x40
	.align 8
.LEFDE5:
.LSFDE7:
	.long	.LEFDE7-.LASFDE7
.LASFDE7:
	.long	.LASFDE7-.Lframe1
	.quad	.LFB200
	.quad	.LFE200-.LFB200
	.align 8
.LEFDE7:
.LSFDE9:
	.long	.LEFDE9-.LASFDE9
.LASFDE9:
	.long	.LASFDE9-.Lframe1
	.quad	.LFB201
	.quad	.LFE201-.LFB201
	.byte	0x4
	.long	.LCFI16-.LFB201
	.byte	0xe
	.uleb128 0x10
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI17-.LCFI16
	.byte	0xe
	.uleb128 0x18
	.byte	0x86
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI18-.LCFI17
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x4
	.align 8
.LEFDE9:
.LSFDE11:
	.long	.LEFDE11-.LASFDE11
.LASFDE11:
	.long	.LASFDE11-.Lframe1
	.quad	.LFB203
	.quad	.LFE203-.LFB203
	.byte	0x4
	.long	.LCFI22-.LFB203
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8d
	.uleb128 0x4
	.byte	0x8c
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI25-.LCFI22
	.byte	0xe
	.uleb128 0x40
	.byte	0x83
	.uleb128 0x7
	.byte	0x8f
	.uleb128 0x2
	.align 8
.LEFDE11:
.LSFDE13:
	.long	.LEFDE13-.LASFDE13
.LASFDE13:
	.long	.LASFDE13-.Lframe1
	.quad	.LFB204
	.quad	.LFE204-.LFB204
	.align 8
.LEFDE13:
.LSFDE15:
	.long	.LEFDE15-.LASFDE15
.LASFDE15:
	.long	.LASFDE15-.Lframe1
	.quad	.LFB206
	.quad	.LFE206-.LFB206
	.byte	0x4
	.long	.LCFI26-.LFB206
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI27-.LCFI26
	.byte	0xe
	.uleb128 0x18
	.byte	0x8d
	.uleb128 0x3
	.byte	0x8e
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI28-.LCFI27
	.byte	0xe
	.uleb128 0x20
	.byte	0x8c
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI29-.LCFI28
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI30-.LCFI29
	.byte	0xe
	.uleb128 0x30
	.byte	0x83
	.uleb128 0x6
	.byte	0x86
	.uleb128 0x5
	.align 8
.LEFDE15:
.LSFDE17:
	.long	.LEFDE17-.LASFDE17
.LASFDE17:
	.long	.LASFDE17-.Lframe1
	.quad	.LFB202
	.quad	.LFE202-.LFB202
	.byte	0x4
	.long	.LCFI32-.LFB202
	.byte	0x8c
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI34-.LCFI32
	.byte	0x86
	.uleb128 0x4
	.byte	0x8d
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI35-.LCFI34
	.byte	0xe
	.uleb128 0x30
	.align 8
.LEFDE17:
.LSFDE19:
	.long	.LEFDE19-.LASFDE19
.LASFDE19:
	.long	.LASFDE19-.Lframe1
	.quad	.LFB207
	.quad	.LFE207-.LFB207
	.align 8
.LEFDE19:
.LSFDE21:
	.long	.LEFDE21-.LASFDE21
.LASFDE21:
	.long	.LASFDE21-.Lframe1
	.quad	.LFB208
	.quad	.LFE208-.LFB208
	.byte	0x4
	.long	.LCFI36-.LFB208
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI37-.LCFI36
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x2
	.align 8
.LEFDE21:
.LSFDE23:
	.long	.LEFDE23-.LASFDE23
.LASFDE23:
	.long	.LASFDE23-.Lframe1
	.quad	.LFB209
	.quad	.LFE209-.LFB209
	.align 8
.LEFDE23:
.LSFDE25:
	.long	.LEFDE25-.LASFDE25
.LASFDE25:
	.long	.LASFDE25-.Lframe1
	.quad	.LFB210
	.quad	.LFE210-.LFB210
	.byte	0x4
	.long	.LCFI38-.LFB210
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE25:
.LSFDE27:
	.long	.LEFDE27-.LASFDE27
.LASFDE27:
	.long	.LASFDE27-.Lframe1
	.quad	.LFB211
	.quad	.LFE211-.LFB211
	.byte	0x4
	.long	.LCFI39-.LFB211
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI40-.LCFI39
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI41-.LCFI40
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE27:
.LSFDE29:
	.long	.LEFDE29-.LASFDE29
.LASFDE29:
	.long	.LASFDE29-.Lframe1
	.quad	.LFB213
	.quad	.LFE213-.LFB213
	.byte	0x4
	.long	.LCFI42-.LFB213
	.byte	0xe
	.uleb128 0x10
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI43-.LCFI42
	.byte	0xe
	.uleb128 0x18
	.byte	0x86
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI44-.LCFI43
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x4
	.align 8
.LEFDE29:
.LSFDE31:
	.long	.LEFDE31-.LASFDE31
.LASFDE31:
	.long	.LASFDE31-.Lframe1
	.quad	.LFB212
	.quad	.LFE212-.LFB212
	.byte	0x4
	.long	.LCFI45-.LFB212
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI46-.LCFI45
	.byte	0xe
	.uleb128 0x18
	.byte	0x8c
	.uleb128 0x3
	.byte	0x8d
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI47-.LCFI46
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI48-.LCFI47
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI49-.LCFI48
	.byte	0xe
	.uleb128 0x30
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.align 8
.LEFDE31:
.LSFDE33:
	.long	.LEFDE33-.LASFDE33
.LASFDE33:
	.long	.LASFDE33-.Lframe1
	.quad	.LFB214
	.quad	.LFE214-.LFB214
	.align 8
.LEFDE33:
.LSFDE35:
	.long	.LEFDE35-.LASFDE35
.LASFDE35:
	.long	.LASFDE35-.Lframe1
	.quad	.LFB215
	.quad	.LFE215-.LFB215
	.byte	0x4
	.long	.LCFI50-.LFB215
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE35:
.LSFDE37:
	.long	.LEFDE37-.LASFDE37
.LASFDE37:
	.long	.LASFDE37-.Lframe1
	.quad	.LFB216
	.quad	.LFE216-.LFB216
	.byte	0x4
	.long	.LCFI51-.LFB216
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE37:
.LSFDE39:
	.long	.LEFDE39-.LASFDE39
.LASFDE39:
	.long	.LASFDE39-.Lframe1
	.quad	.LFB217
	.quad	.LFE217-.LFB217
	.byte	0x4
	.long	.LCFI52-.LFB217
	.byte	0xe
	.uleb128 0x10
	.byte	0x8d
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI53-.LCFI52
	.byte	0xe
	.uleb128 0x18
	.byte	0x8c
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI54-.LCFI53
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x4
	.align 8
.LEFDE39:
	.file 3 "../qemu-common.h"
	.file 4 "/home/remco/Projects/Argos/src/hw/pci.h"
	.file 5 "/usr/include/stdint.h"
	.file 6 "/home/remco/Projects/Argos/src/hw/irq.h"
	.file 7 "../cpu-defs.h"
	.file 8 "../net.h"
	.file 9 "/usr/lib/gcc/x86_64-linux-gnu/3.4.6/include/stddef.h"
	.file 10 "/usr/include/stdio.h"
	.file 11 "/usr/include/libio.h"
	.file 12 "/usr/include/bits/types.h"
	.file 13 "../cpu-all.h"
	.text
.Letext0:
	.section	.debug_info
	.long	0x1381
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.Ldebug_line0
	.quad	.Letext0
	.quad	.Ltext0
	.long	.LASF165
	.byte	0x1
	.long	.LASF166
	.long	.LASF167
	.uleb128 0x2
	.long	.LASF9
	.byte	0x9
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
	.byte	0xc
	.byte	0x8d
	.long	0x4d
	.uleb128 0x2
	.long	.LASF11
	.byte	0xc
	.byte	0x8e
	.long	0x4d
	.uleb128 0x7
	.byte	0x8
	.uleb128 0x5
	.byte	0x8
	.long	0x74
	.uleb128 0x3
	.long	.LASF12
	.byte	0x8
	.byte	0x7
	.uleb128 0x8
	.long	0x281
	.long	.LASF43
	.byte	0xd8
	.byte	0xa
	.byte	0x2d
	.uleb128 0x9
	.long	.LASF13
	.byte	0xb
	.value	0x110
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF14
	.byte	0xb
	.value	0x115
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF15
	.byte	0xb
	.value	0x116
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.long	.LASF16
	.byte	0xb
	.value	0x117
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.long	.LASF17
	.byte	0xb
	.value	0x118
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.long	.LASF18
	.byte	0xb
	.value	0x119
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.long	.LASF19
	.byte	0xb
	.value	0x11a
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.long	.LASF20
	.byte	0xb
	.value	0x11b
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.long	.LASF21
	.byte	0xb
	.value	0x11c
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.long	.LASF22
	.byte	0xb
	.value	0x11e
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x9
	.long	.LASF23
	.byte	0xb
	.value	0x11f
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x9
	.long	.LASF24
	.byte	0xb
	.value	0x120
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x9
	.long	.LASF25
	.byte	0xb
	.value	0x122
	.long	0x2bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x9
	.long	.LASF26
	.byte	0xb
	.value	0x124
	.long	0x2c5
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x9
	.long	.LASF27
	.byte	0xb
	.value	0x126
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x9
	.long	.LASF28
	.byte	0xb
	.value	0x12a
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x9
	.long	.LASF29
	.byte	0xb
	.value	0x12c
	.long	0x90
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x9
	.long	.LASF30
	.byte	0xb
	.value	0x130
	.long	0x62
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x9
	.long	.LASF31
	.byte	0xb
	.value	0x131
	.long	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0x82
	.uleb128 0x9
	.long	.LASF32
	.byte	0xb
	.value	0x132
	.long	0x2cb
	.byte	0x3
	.byte	0x23
	.uleb128 0x83
	.uleb128 0x9
	.long	.LASF33
	.byte	0xb
	.value	0x136
	.long	0x2db
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x9
	.long	.LASF34
	.byte	0xb
	.value	0x13f
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x9
	.long	.LASF35
	.byte	0xb
	.value	0x148
	.long	0xa6
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x9
	.long	.LASF36
	.byte	0xb
	.value	0x149
	.long	0xa6
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x9
	.long	.LASF37
	.byte	0xb
	.value	0x14a
	.long	0xa6
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x9
	.long	.LASF38
	.byte	0xb
	.value	0x14b
	.long	0xa6
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x9
	.long	.LASF39
	.byte	0xb
	.value	0x14c
	.long	0x2d
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x9
	.long	.LASF40
	.byte	0xb
	.value	0x14e
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x9
	.long	.LASF41
	.byte	0xb
	.value	0x150
	.long	0x2e1
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.byte	0x0
	.uleb128 0xa
	.long	.LASF42
	.byte	0xb
	.byte	0xb4
	.uleb128 0x8
	.long	0x2bf
	.long	.LASF44
	.byte	0x18
	.byte	0xb
	.byte	0xba
	.uleb128 0xb
	.long	.LASF45
	.byte	0xb
	.byte	0xbb
	.long	0x2bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF46
	.byte	0xb
	.byte	0xbc
	.long	0x2c5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF47
	.byte	0xb
	.byte	0xc0
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x288
	.uleb128 0x5
	.byte	0x8
	.long	0xb5
	.uleb128 0xc
	.long	0x2db
	.long	0x74
	.uleb128 0xd
	.long	0x5b
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x281
	.uleb128 0xc
	.long	0x2f1
	.long	0x74
	.uleb128 0xd
	.long	0x5b
	.byte	0x13
	.byte	0x0
	.uleb128 0xe
	.long	0x301
	.byte	0x1
	.long	0x3f
	.uleb128 0xf
	.long	0xa6
	.byte	0x0
	.uleb128 0x2
	.long	.LASF48
	.byte	0x5
	.byte	0x31
	.long	0x7b
	.uleb128 0x2
	.long	.LASF49
	.byte	0x5
	.byte	0x32
	.long	0x62
	.uleb128 0x2
	.long	.LASF50
	.byte	0x5
	.byte	0x34
	.long	0x46
	.uleb128 0x2
	.long	.LASF51
	.byte	0x5
	.byte	0x38
	.long	0x38
	.uleb128 0x2
	.long	.LASF52
	.byte	0x7
	.byte	0x49
	.long	0x322
	.uleb128 0x3
	.long	.LASF53
	.byte	0x4
	.byte	0x4
	.uleb128 0x3
	.long	.LASF54
	.byte	0x8
	.byte	0x4
	.uleb128 0x3
	.long	.LASF55
	.byte	0x10
	.byte	0x4
	.uleb128 0x2
	.long	.LASF56
	.byte	0x3
	.byte	0x5f
	.long	0x358
	.uleb128 0x10
	.long	0x36e
	.byte	0x1
	.uleb128 0xf
	.long	0xa6
	.uleb128 0xf
	.long	0x36e
	.uleb128 0xf
	.long	0x3f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x374
	.uleb128 0x6
	.long	0x301
	.uleb128 0x2
	.long	.LASF57
	.byte	0x3
	.byte	0x60
	.long	0x2f1
	.uleb128 0x2
	.long	.LASF58
	.byte	0x3
	.byte	0x6c
	.long	0x38f
	.uleb128 0x8
	.long	0x3c6
	.long	.LASF58
	.byte	0x18
	.byte	0x3
	.byte	0x6c
	.uleb128 0xb
	.long	.LASF59
	.byte	0x8
	.byte	0x2a
	.long	0x7fd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF60
	.byte	0x8
	.byte	0x2b
	.long	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF61
	.byte	0x8
	.byte	0x2c
	.long	0x80d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.long	.LASF62
	.byte	0x3
	.byte	0x72
	.long	0x3d1
	.uleb128 0x8
	.long	0x423
	.long	.LASF62
	.byte	0x20
	.byte	0x3
	.byte	0x72
	.uleb128 0x11
	.string	"id"
	.byte	0x8
	.byte	0x14
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF63
	.byte	0x8
	.byte	0x15
	.long	0x7f7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF64
	.byte	0x8
	.byte	0x16
	.long	0x7e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.long	.LASF65
	.byte	0x8
	.byte	0x17
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.long	.LASF66
	.byte	0x8
	.byte	0x17
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x2
	.long	.LASF67
	.byte	0x3
	.byte	0x73
	.long	0x42e
	.uleb128 0x12
	.long	.LASF67
	.byte	0x1
	.uleb128 0x2
	.long	.LASF68
	.byte	0x3
	.byte	0x78
	.long	0x43f
	.uleb128 0x13
	.long	0x4f9
	.long	.LASF68
	.value	0x848
	.byte	0x3
	.byte	0x78
	.uleb128 0xb
	.long	.LASF69
	.byte	0x1
	.byte	0x20
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF70
	.byte	0x1
	.byte	0x21
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.long	.LASF71
	.byte	0x1
	.byte	0x22
	.long	0x70f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF72
	.byte	0x1
	.byte	0x23
	.long	0x736
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.long	.LASF73
	.byte	0x1
	.byte	0x24
	.long	0x317
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.long	.LASF74
	.byte	0x1
	.byte	0x26
	.long	0x813
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.long	.LASF75
	.byte	0x1
	.byte	0x27
	.long	0x6f9
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.long	.LASF76
	.byte	0x1
	.byte	0x28
	.long	0x819
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xb
	.long	.LASF77
	.byte	0x1
	.byte	0x29
	.long	0x60b
	.byte	0x3
	.byte	0x23
	.uleb128 0x830
	.uleb128 0xb
	.long	.LASF64
	.byte	0x1
	.byte	0x2a
	.long	0x6c7
	.byte	0x3
	.byte	0x23
	.uleb128 0x838
	.uleb128 0xb
	.long	.LASF78
	.byte	0x1
	.byte	0x2d
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x840
	.uleb128 0xb
	.long	.LASF79
	.byte	0x1
	.byte	0x2e
	.long	0x829
	.byte	0x3
	.byte	0x23
	.uleb128 0x844
	.byte	0x0
	.uleb128 0x2
	.long	.LASF80
	.byte	0x3
	.byte	0x79
	.long	0x504
	.uleb128 0x13
	.long	0x5a7
	.long	.LASF80
	.value	0x228
	.byte	0x3
	.byte	0x79
	.uleb128 0xb
	.long	.LASF81
	.byte	0x4
	.byte	0x2f
	.long	0x6b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x11
	.string	"bus"
	.byte	0x4
	.byte	0x32
	.long	0x6c7
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0xb
	.long	.LASF82
	.byte	0x4
	.byte	0x33
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.uleb128 0xb
	.long	.LASF83
	.byte	0x4
	.byte	0x34
	.long	0x6cd
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.uleb128 0xb
	.long	.LASF84
	.byte	0x4
	.byte	0x35
	.long	0x6dd
	.byte	0x3
	.byte	0x23
	.uleb128 0x150
	.uleb128 0xb
	.long	.LASF85
	.byte	0x4
	.byte	0x38
	.long	0x6ed
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f8
	.uleb128 0xb
	.long	.LASF86
	.byte	0x4
	.byte	0x39
	.long	0x6f3
	.byte	0x3
	.byte	0x23
	.uleb128 0x200
	.uleb128 0xb
	.long	.LASF87
	.byte	0x4
	.byte	0x3b
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x208
	.uleb128 0x11
	.string	"irq"
	.byte	0x4
	.byte	0x3e
	.long	0x6f9
	.byte	0x3
	.byte	0x23
	.uleb128 0x210
	.uleb128 0xb
	.long	.LASF88
	.byte	0x4
	.byte	0x41
	.long	0x6ff
	.byte	0x3
	.byte	0x23
	.uleb128 0x218
	.byte	0x0
	.uleb128 0x2
	.long	.LASF89
	.byte	0x3
	.byte	0x7b
	.long	0x5b2
	.uleb128 0x5
	.byte	0x8
	.long	0x5b8
	.uleb128 0x12
	.long	.LASF90
	.byte	0x1
	.uleb128 0x10
	.long	0x5d4
	.byte	0x1
	.uleb128 0xf
	.long	0xa6
	.uleb128 0xf
	.long	0x3f
	.uleb128 0xf
	.long	0x3f
	.byte	0x0
	.uleb128 0x2
	.long	.LASF91
	.byte	0x6
	.byte	0x8
	.long	0x5be
	.uleb128 0x5
	.byte	0x8
	.long	0x423
	.uleb128 0x2
	.long	.LASF92
	.byte	0x4
	.byte	0xc
	.long	0x5f0
	.uleb128 0x10
	.long	0x60b
	.byte	0x1
	.uleb128 0xf
	.long	0x60b
	.uleb128 0xf
	.long	0x317
	.uleb128 0xf
	.long	0x317
	.uleb128 0xf
	.long	0x3f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x4f9
	.uleb128 0x2
	.long	.LASF93
	.byte	0x4
	.byte	0xe
	.long	0x61c
	.uleb128 0xe
	.long	0x636
	.byte	0x1
	.long	0x317
	.uleb128 0xf
	.long	0x60b
	.uleb128 0xf
	.long	0x317
	.uleb128 0xf
	.long	0x3f
	.byte	0x0
	.uleb128 0x2
	.long	.LASF94
	.byte	0x4
	.byte	0x10
	.long	0x641
	.uleb128 0x10
	.long	0x661
	.byte	0x1
	.uleb128 0xf
	.long	0x60b
	.uleb128 0xf
	.long	0x3f
	.uleb128 0xf
	.long	0x317
	.uleb128 0xf
	.long	0x317
	.uleb128 0xf
	.long	0x3f
	.byte	0x0
	.uleb128 0x8
	.long	0x6a6
	.long	.LASF95
	.byte	0x18
	.byte	0x4
	.byte	0x16
	.uleb128 0xb
	.long	.LASF96
	.byte	0x4
	.byte	0x17
	.long	0x317
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF97
	.byte	0x4
	.byte	0x18
	.long	0x317
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.long	.LASF98
	.byte	0x4
	.byte	0x19
	.long	0x301
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF99
	.byte	0x4
	.byte	0x1a
	.long	0x6a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x636
	.uleb128 0x2
	.long	.LASF95
	.byte	0x4
	.byte	0x1b
	.long	0x661
	.uleb128 0xc
	.long	0x6c7
	.long	0x301
	.uleb128 0xd
	.long	0x5b
	.byte	0xff
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x434
	.uleb128 0xc
	.long	0x6dd
	.long	0x74
	.uleb128 0xd
	.long	0x5b
	.byte	0x3f
	.byte	0x0
	.uleb128 0xc
	.long	0x6ed
	.long	0x6ac
	.uleb128 0xd
	.long	0x5b
	.byte	0x6
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x611
	.uleb128 0x5
	.byte	0x8
	.long	0x5e5
	.uleb128 0x5
	.byte	0x8
	.long	0x5a7
	.uleb128 0xc
	.long	0x70f
	.long	0x3f
	.uleb128 0xd
	.long	0x5b
	.byte	0x3
	.byte	0x0
	.uleb128 0x2
	.long	.LASF100
	.byte	0x4
	.byte	0x54
	.long	0x71a
	.uleb128 0x5
	.byte	0x8
	.long	0x720
	.uleb128 0x10
	.long	0x736
	.byte	0x1
	.uleb128 0xf
	.long	0x6f9
	.uleb128 0xf
	.long	0x3f
	.uleb128 0xf
	.long	0x3f
	.byte	0x0
	.uleb128 0x2
	.long	.LASF101
	.byte	0x4
	.byte	0x55
	.long	0x741
	.uleb128 0x5
	.byte	0x8
	.long	0x747
	.uleb128 0xe
	.long	0x75c
	.byte	0x1
	.long	0x3f
	.uleb128 0xf
	.long	0x60b
	.uleb128 0xf
	.long	0x3f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x379
	.uleb128 0x5
	.byte	0x8
	.long	0x34d
	.uleb128 0x5
	.byte	0x8
	.long	0x301
	.uleb128 0x2
	.long	.LASF102
	.byte	0x8
	.byte	0x6
	.long	0x779
	.uleb128 0x13
	.long	0x7db
	.long	.LASF102
	.value	0x128
	.byte	0x8
	.byte	0x6
	.uleb128 0xb
	.long	.LASF103
	.byte	0x8
	.byte	0x9
	.long	0x762
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF104
	.byte	0x8
	.byte	0xc
	.long	0x75c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF105
	.byte	0x8
	.byte	0xd
	.long	0xa6
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.long	.LASF64
	.byte	0x8
	.byte	0xe
	.long	0x7db
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.long	.LASF61
	.byte	0x8
	.byte	0xf
	.long	0x7e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.long	.LASF106
	.byte	0x8
	.byte	0x10
	.long	0x7e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x779
	.uleb128 0x5
	.byte	0x8
	.long	0x3d1
	.uleb128 0xc
	.long	0x7f7
	.long	0x74
	.uleb128 0xd
	.long	0x5b
	.byte	0xff
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x76e
	.uleb128 0xc
	.long	0x80d
	.long	0x301
	.uleb128 0xd
	.long	0x5b
	.byte	0x5
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x3c6
	.uleb128 0x5
	.byte	0x8
	.long	0x5d4
	.uleb128 0xc
	.long	0x829
	.long	0x60b
	.uleb128 0xd
	.long	0x5b
	.byte	0xff
	.byte	0x0
	.uleb128 0xc
	.long	0x838
	.long	0x3f
	.uleb128 0x14
	.long	0x5b
	.byte	0x0
	.uleb128 0x15
	.long	0x860
	.byte	0x10
	.byte	0x1
	.value	0x204
	.uleb128 0x9
	.long	.LASF107
	.byte	0x1
	.value	0x202
	.long	0x30c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF108
	.byte	0x1
	.value	0x203
	.long	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x16
	.long	.LASF109
	.byte	0x1
	.value	0x204
	.long	0x838
	.uleb128 0x17
	.long	0x896
	.value	0x230
	.byte	0x1
	.value	0x293
	.uleb128 0x18
	.string	"dev"
	.byte	0x1
	.value	0x291
	.long	0x4f9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x18
	.string	"bus"
	.byte	0x1
	.value	0x292
	.long	0x6c7
	.byte	0x3
	.byte	0x23
	.uleb128 0x228
	.byte	0x0
	.uleb128 0x16
	.long	.LASF110
	.byte	0x1
	.value	0x293
	.long	0x86c
	.uleb128 0x19
	.long	0x8f1
	.long	.LASF111
	.byte	0x1
	.byte	0x39
	.byte	0x1
	.quad	.LFB196
	.quad	.LFE196
	.byte	0x1
	.byte	0x57
	.uleb128 0x1a
	.string	"f"
	.byte	0x1
	.byte	0x38
	.long	0x5df
	.byte	0x1
	.byte	0x5c
	.uleb128 0x1b
	.long	.LASF105
	.byte	0x1
	.byte	0x38
	.long	0xa6
	.byte	0x1
	.byte	0x54
	.uleb128 0x1c
	.string	"bus"
	.byte	0x1
	.byte	0x3a
	.long	0x6c7
	.byte	0x1
	.byte	0x56
	.uleb128 0x1c
	.string	"i"
	.byte	0x1
	.byte	0x3b
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x1d
	.long	0x95c
	.long	.LASF112
	.byte	0x1
	.byte	0x43
	.byte	0x1
	.long	0x3f
	.quad	.LFB197
	.quad	.LFE197
	.byte	0x1
	.byte	0x57
	.uleb128 0x1a
	.string	"f"
	.byte	0x1
	.byte	0x42
	.long	0x5df
	.byte	0x1
	.byte	0x5e
	.uleb128 0x1b
	.long	.LASF105
	.byte	0x1
	.byte	0x42
	.long	0xa6
	.byte	0x1
	.byte	0x5d
	.uleb128 0x1b
	.long	.LASF113
	.byte	0x1
	.byte	0x42
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x1e
	.string	"bus"
	.byte	0x1
	.byte	0x44
	.long	0x6c7
	.uleb128 0x1c
	.string	"i"
	.byte	0x1
	.byte	0x45
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.uleb128 0x1f
	.long	.LASF78
	.byte	0x1
	.byte	0x45
	.long	0x3f
	.byte	0x1
	.byte	0x5c
	.byte	0x0
	.uleb128 0x20
	.long	0x9e3
	.byte	0x1
	.long	.LASF115
	.byte	0x1
	.byte	0x59
	.byte	0x1
	.long	0x6c7
	.quad	.LFB198
	.quad	.LFE198
	.byte	0x1
	.byte	0x57
	.uleb128 0x1b
	.long	.LASF71
	.byte	0x1
	.byte	0x57
	.long	0x70f
	.byte	0x1
	.byte	0x5d
	.uleb128 0x1b
	.long	.LASF72
	.byte	0x1
	.byte	0x57
	.long	0x736
	.byte	0x1
	.byte	0x5e
	.uleb128 0x1a
	.string	"pic"
	.byte	0x1
	.byte	0x58
	.long	0x6f9
	.byte	0x1
	.byte	0x5f
	.uleb128 0x1b
	.long	.LASF70
	.byte	0x1
	.byte	0x58
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.uleb128 0x1b
	.long	.LASF78
	.byte	0x1
	.byte	0x58
	.long	0x3f
	.byte	0x1
	.byte	0x5c
	.uleb128 0x1c
	.string	"bus"
	.byte	0x1
	.byte	0x5a
	.long	0x6c7
	.byte	0x1
	.byte	0x53
	.uleb128 0x1f
	.long	.LASF114
	.byte	0x1
	.byte	0x5b
	.long	0x3f
	.byte	0x9
	.byte	0x3
	.quad	nbus.0
	.byte	0x0
	.uleb128 0x20
	.long	0xa12
	.byte	0x1
	.long	.LASF116
	.byte	0x1
	.byte	0x74
	.byte	0x1
	.long	0x3f
	.quad	.LFB200
	.quad	.LFE200
	.byte	0x1
	.byte	0x57
	.uleb128 0x1a
	.string	"s"
	.byte	0x1
	.byte	0x73
	.long	0x6c7
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x21
	.long	0xa53
	.byte	0x1
	.long	.LASF117
	.byte	0x1
	.byte	0x79
	.byte	0x1
	.quad	.LFB201
	.quad	.LFE201
	.byte	0x1
	.byte	0x57
	.uleb128 0x1a
	.string	"s"
	.byte	0x1
	.byte	0x78
	.long	0x60b
	.byte	0x1
	.byte	0x5c
	.uleb128 0x1a
	.string	"f"
	.byte	0x1
	.byte	0x78
	.long	0x5df
	.byte	0x1
	.byte	0x56
	.uleb128 0x1c
	.string	"i"
	.byte	0x1
	.byte	0x7a
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x20
	.long	0xae1
	.byte	0x1
	.long	.LASF118
	.byte	0x1
	.byte	0x99
	.byte	0x1
	.long	0x60b
	.quad	.LFB203
	.quad	.LFE203
	.byte	0x1
	.byte	0x57
	.uleb128 0x1a
	.string	"bus"
	.byte	0x1
	.byte	0x95
	.long	0x6c7
	.byte	0x1
	.byte	0x5c
	.uleb128 0x1b
	.long	.LASF83
	.byte	0x1
	.byte	0x95
	.long	0x69
	.byte	0x1
	.byte	0x5f
	.uleb128 0x1b
	.long	.LASF119
	.byte	0x1
	.byte	0x96
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x1b
	.long	.LASF82
	.byte	0x1
	.byte	0x96
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.uleb128 0x1b
	.long	.LASF85
	.byte	0x1
	.byte	0x97
	.long	0x6ed
	.byte	0x1
	.byte	0x5d
	.uleb128 0x1b
	.long	.LASF86
	.byte	0x1
	.byte	0x98
	.long	0x6f3
	.byte	0x1
	.byte	0x5e
	.uleb128 0x1f
	.long	.LASF120
	.byte	0x1
	.byte	0x9a
	.long	0x60b
	.byte	0x1
	.byte	0x53
	.uleb128 0x22
	.long	.LASF127
	.byte	0x1
	.byte	0xa5
	.quad	.L37
	.byte	0x0
	.uleb128 0x21
	.long	0xb58
	.byte	0x1
	.long	.LASF121
	.byte	0x1
	.byte	0xbe
	.byte	0x1
	.quad	.LFB204
	.quad	.LFE204
	.byte	0x1
	.byte	0x57
	.uleb128 0x1b
	.long	.LASF120
	.byte	0x1
	.byte	0xbb
	.long	0x60b
	.byte	0x1
	.byte	0x55
	.uleb128 0x1b
	.long	.LASF122
	.byte	0x1
	.byte	0xbb
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x1b
	.long	.LASF97
	.byte	0x1
	.byte	0xbc
	.long	0x317
	.byte	0x1
	.byte	0x59
	.uleb128 0x1b
	.long	.LASF98
	.byte	0x1
	.byte	0xbc
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x1b
	.long	.LASF99
	.byte	0x1
	.byte	0xbd
	.long	0x6a6
	.byte	0x1
	.byte	0x58
	.uleb128 0x1c
	.string	"r"
	.byte	0x1
	.byte	0xbf
	.long	0xb58
	.byte	0x1
	.byte	0x51
	.uleb128 0x23
	.long	.LASF96
	.byte	0x1
	.byte	0xc0
	.long	0x317
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x6ac
	.uleb128 0x19
	.long	0xc51
	.long	.LASF123
	.byte	0x1
	.byte	0xd7
	.byte	0x1
	.quad	.LFB206
	.quad	.LFE206
	.byte	0x1
	.byte	0x57
	.uleb128 0x1a
	.string	"d"
	.byte	0x1
	.byte	0xd6
	.long	0x60b
	.byte	0x1
	.byte	0x5d
	.uleb128 0x1e
	.string	"r"
	.byte	0x1
	.byte	0xd8
	.long	0xb58
	.uleb128 0x1c
	.string	"cmd"
	.byte	0x1
	.byte	0xd9
	.long	0x3f
	.byte	0x1
	.byte	0x5e
	.uleb128 0x1c
	.string	"i"
	.byte	0x1
	.byte	0xd9
	.long	0x3f
	.byte	0x1
	.byte	0x5c
	.uleb128 0x1f
	.long	.LASF124
	.byte	0x1
	.byte	0xda
	.long	0x317
	.byte	0x1
	.byte	0x52
	.uleb128 0x1f
	.long	.LASF125
	.byte	0x1
	.byte	0xda
	.long	0x317
	.byte	0x1
	.byte	0x56
	.uleb128 0x1f
	.long	.LASF126
	.byte	0x1
	.byte	0xda
	.long	0x317
	.byte	0x1
	.byte	0x51
	.uleb128 0x24
	.long	.LASF128
	.byte	0x1
	.value	0x105
	.quad	.L70
	.uleb128 0x25
	.long	0xbfe
	.long	0xc51
	.quad	.LBB2
	.quad	.LBE2
	.uleb128 0x26
	.long	0xc62
	.byte	0x0
	.uleb128 0x27
	.long	0xc14
	.long	.Ldebug_ranges0+0x0
	.uleb128 0x28
	.long	.LASF107
	.byte	0x1
	.value	0x10d
	.long	0x3f
	.byte	0x0
	.uleb128 0x25
	.long	0xc33
	.long	0xc51
	.quad	.LBB4
	.quad	.LBE4
	.uleb128 0x26
	.long	0xc62
	.byte	0x0
	.uleb128 0x29
	.long	0xc6c
	.quad	.LBB6
	.quad	.LBE6
	.uleb128 0x2a
	.long	0xc7d
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.long	0xc6c
	.long	.LASF129
	.byte	0x2
	.byte	0x7c
	.byte	0x1
	.long	0x317
	.byte	0x3
	.uleb128 0x2c
	.string	"v"
	.byte	0x2
	.byte	0x7c
	.long	0x317
	.byte	0x0
	.uleb128 0x2b
	.long	0xc89
	.long	.LASF130
	.byte	0x1
	.byte	0xd2
	.byte	0x1
	.long	0x32d
	.byte	0x1
	.uleb128 0x2d
	.long	.LASF96
	.byte	0x1
	.byte	0xd1
	.long	0x32d
	.byte	0x0
	.uleb128 0x20
	.long	0xcdb
	.byte	0x1
	.long	.LASF131
	.byte	0x1
	.byte	0x83
	.byte	0x1
	.long	0x3f
	.quad	.LFB202
	.quad	.LFE202
	.byte	0x1
	.byte	0x57
	.uleb128 0x1a
	.string	"s"
	.byte	0x1
	.byte	0x82
	.long	0x60b
	.byte	0x1
	.byte	0x5d
	.uleb128 0x1a
	.string	"f"
	.byte	0x1
	.byte	0x82
	.long	0x5df
	.byte	0x1
	.byte	0x5c
	.uleb128 0x1f
	.long	.LASF113
	.byte	0x1
	.byte	0x84
	.long	0x317
	.byte	0x1
	.byte	0x53
	.uleb128 0x1c
	.string	"i"
	.byte	0x1
	.byte	0x85
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.byte	0x0
	.uleb128 0x2e
	.long	0xd70
	.byte	0x1
	.long	.LASF132
	.byte	0x1
	.value	0x127
	.byte	0x1
	.long	0x317
	.quad	.LFB207
	.quad	.LFE207
	.byte	0x1
	.byte	0x57
	.uleb128 0x2f
	.string	"d"
	.byte	0x1
	.value	0x125
	.long	0x60b
	.byte	0x1
	.byte	0x55
	.uleb128 0x30
	.long	.LASF133
	.byte	0x1
	.value	0x126
	.long	0x317
	.byte	0x1
	.byte	0x54
	.uleb128 0x2f
	.string	"len"
	.byte	0x1
	.value	0x126
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x31
	.string	"val"
	.byte	0x1
	.value	0x128
	.long	0x317
	.byte	0x1
	.byte	0x50
	.uleb128 0x25
	.long	0xd54
	.long	0xd70
	.quad	.LBB9
	.quad	.LBE9
	.uleb128 0x26
	.long	0xd81
	.byte	0x0
	.uleb128 0x29
	.long	0xc51
	.quad	.LBB10
	.quad	.LBE10
	.uleb128 0x26
	.long	0xc62
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.long	0xd8b
	.long	.LASF134
	.byte	0x2
	.byte	0x7b
	.byte	0x1
	.long	0x30c
	.byte	0x3
	.uleb128 0x2c
	.string	"v"
	.byte	0x2
	.byte	0x7b
	.long	0x30c
	.byte	0x0
	.uleb128 0x32
	.long	0xe46
	.byte	0x1
	.long	.LASF135
	.byte	0x1
	.value	0x141
	.byte	0x1
	.quad	.LFB208
	.quad	.LFE208
	.byte	0x1
	.byte	0x57
	.uleb128 0x2f
	.string	"d"
	.byte	0x1
	.value	0x13f
	.long	0x60b
	.byte	0x1
	.byte	0x55
	.uleb128 0x30
	.long	.LASF133
	.byte	0x1
	.value	0x140
	.long	0x317
	.byte	0x1
	.byte	0x54
	.uleb128 0x2f
	.string	"val"
	.byte	0x1
	.value	0x140
	.long	0x317
	.byte	0x1
	.byte	0x58
	.uleb128 0x2f
	.string	"len"
	.byte	0x1
	.value	0x140
	.long	0x3f
	.byte	0x1
	.byte	0x5a
	.uleb128 0x28
	.long	.LASF136
	.byte	0x1
	.value	0x142
	.long	0x3f
	.uleb128 0x31
	.string	"i"
	.byte	0x1
	.value	0x142
	.long	0x3f
	.byte	0x1
	.byte	0x59
	.uleb128 0x31
	.string	"end"
	.byte	0x1
	.value	0x143
	.long	0x317
	.byte	0x1
	.byte	0x50
	.uleb128 0x33
	.long	.LASF96
	.byte	0x1
	.value	0x143
	.long	0x317
	.byte	0x1
	.byte	0x51
	.uleb128 0x24
	.long	.LASF137
	.byte	0x1
	.value	0x15e
	.quad	.L113
	.uleb128 0x34
	.long	.Ldebug_ranges0+0x30
	.uleb128 0x31
	.string	"r"
	.byte	0x1
	.value	0x147
	.long	0xb58
	.byte	0x1
	.byte	0x52
	.uleb128 0x31
	.string	"reg"
	.byte	0x1
	.value	0x148
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.long	0xed5
	.byte	0x1
	.long	.LASF138
	.byte	0x1
	.value	0x1a0
	.byte	0x1
	.quad	.LFB209
	.quad	.LFE209
	.byte	0x1
	.byte	0x57
	.uleb128 0x30
	.long	.LASF105
	.byte	0x1
	.value	0x19f
	.long	0xa6
	.byte	0x1
	.byte	0x55
	.uleb128 0x30
	.long	.LASF96
	.byte	0x1
	.value	0x19f
	.long	0x317
	.byte	0x1
	.byte	0x54
	.uleb128 0x2f
	.string	"val"
	.byte	0x1
	.value	0x19f
	.long	0x317
	.byte	0x1
	.byte	0x51
	.uleb128 0x2f
	.string	"len"
	.byte	0x1
	.value	0x19f
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x31
	.string	"s"
	.byte	0x1
	.value	0x1a1
	.long	0x6c7
	.byte	0x1
	.byte	0x55
	.uleb128 0x33
	.long	.LASF120
	.byte	0x1
	.value	0x1a2
	.long	0x60b
	.byte	0x1
	.byte	0x50
	.uleb128 0x33
	.long	.LASF139
	.byte	0x1
	.value	0x1a3
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x33
	.long	.LASF69
	.byte	0x1
	.value	0x1a3
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x2e
	.long	0xf88
	.byte	0x1
	.long	.LASF140
	.byte	0x1
	.value	0x1ba
	.byte	0x1
	.long	0x317
	.quad	.LFB210
	.quad	.LFE210
	.byte	0x1
	.byte	0x57
	.uleb128 0x30
	.long	.LASF105
	.byte	0x1
	.value	0x1b9
	.long	0xa6
	.byte	0x1
	.byte	0x55
	.uleb128 0x30
	.long	.LASF96
	.byte	0x1
	.value	0x1b9
	.long	0x317
	.byte	0x1
	.byte	0x54
	.uleb128 0x2f
	.string	"len"
	.byte	0x1
	.value	0x1b9
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x31
	.string	"s"
	.byte	0x1
	.value	0x1bb
	.long	0x6c7
	.byte	0x1
	.byte	0x55
	.uleb128 0x33
	.long	.LASF120
	.byte	0x1
	.value	0x1bc
	.long	0x60b
	.byte	0x1
	.byte	0x50
	.uleb128 0x33
	.long	.LASF139
	.byte	0x1
	.value	0x1bd
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x33
	.long	.LASF69
	.byte	0x1
	.value	0x1bd
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.uleb128 0x31
	.string	"val"
	.byte	0x1
	.value	0x1be
	.long	0x317
	.byte	0x1
	.byte	0x50
	.uleb128 0x24
	.long	.LASF141
	.byte	0x1
	.value	0x1c7
	.quad	.L178
	.uleb128 0x24
	.long	.LASF142
	.byte	0x1
	.value	0x1dc
	.quad	.L185
	.byte	0x0
	.uleb128 0x35
	.long	0xffc
	.long	.LASF143
	.byte	0x1
	.value	0x1e9
	.byte	0x1
	.quad	.LFB211
	.quad	.LFE211
	.byte	0x1
	.byte	0x57
	.uleb128 0x30
	.long	.LASF105
	.byte	0x1
	.value	0x1e8
	.long	0xa6
	.byte	0x1
	.byte	0x55
	.uleb128 0x30
	.long	.LASF144
	.byte	0x1
	.value	0x1e8
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x30
	.long	.LASF145
	.byte	0x1
	.value	0x1e8
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x33
	.long	.LASF120
	.byte	0x1
	.value	0x1ea
	.long	0x60b
	.byte	0x1
	.byte	0x55
	.uleb128 0x31
	.string	"bus"
	.byte	0x1
	.value	0x1eb
	.long	0x6c7
	.byte	0x1
	.byte	0x53
	.uleb128 0x33
	.long	.LASF146
	.byte	0x1
	.value	0x1ec
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.byte	0x0
	.uleb128 0x32
	.long	0x1060
	.byte	0x1
	.long	.LASF147
	.byte	0x1
	.value	0x25d
	.byte	0x1
	.quad	.LFB213
	.quad	.LFE213
	.byte	0x1
	.byte	0x57
	.uleb128 0x30
	.long	.LASF69
	.byte	0x1
	.value	0x25c
	.long	0x3f
	.byte	0x1
	.byte	0x55
	.uleb128 0x2f
	.string	"fn"
	.byte	0x1
	.value	0x25c
	.long	0x106c
	.byte	0x1
	.byte	0x5c
	.uleb128 0x31
	.string	"bus"
	.byte	0x1
	.value	0x25e
	.long	0x6c7
	.byte	0x1
	.byte	0x56
	.uleb128 0x31
	.string	"d"
	.byte	0x1
	.value	0x25f
	.long	0x60b
	.byte	0x1
	.byte	0x55
	.uleb128 0x33
	.long	.LASF82
	.byte	0x1
	.value	0x260
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x10
	.long	0x106c
	.byte	0x1
	.uleb128 0xf
	.long	0x60b
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x1060
	.uleb128 0x35
	.long	0x10d0
	.long	.LASF148
	.byte	0x1
	.value	0x22f
	.byte	0x1
	.quad	.LFB212
	.quad	.LFE212
	.byte	0x1
	.byte	0x57
	.uleb128 0x2f
	.string	"d"
	.byte	0x1
	.value	0x22e
	.long	0x60b
	.byte	0x1
	.byte	0x5c
	.uleb128 0x31
	.string	"i"
	.byte	0x1
	.value	0x230
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.uleb128 0x33
	.long	.LASF107
	.byte	0x1
	.value	0x230
	.long	0x3f
	.byte	0x1
	.byte	0x5d
	.uleb128 0x36
	.string	"r"
	.byte	0x1
	.value	0x231
	.long	0xb58
	.uleb128 0x33
	.long	.LASF108
	.byte	0x1
	.value	0x232
	.long	0x10d0
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x860
	.uleb128 0x37
	.byte	0x1
	.long	.LASF168
	.byte	0x1
	.value	0x26e
	.byte	0x1
	.quad	.LFB214
	.quad	.LFE214
	.byte	0x1
	.byte	0x57
	.uleb128 0x32
	.long	0x119c
	.byte	0x1
	.long	.LASF149
	.byte	0x1
	.value	0x274
	.byte	0x1
	.quad	.LFB215
	.quad	.LFE215
	.byte	0x1
	.byte	0x57
	.uleb128 0x2f
	.string	"bus"
	.byte	0x1
	.value	0x273
	.long	0x6c7
	.byte	0x1
	.byte	0x5b
	.uleb128 0x2f
	.string	"nd"
	.byte	0x1
	.value	0x273
	.long	0x119c
	.byte	0x1
	.byte	0x59
	.uleb128 0x30
	.long	.LASF82
	.byte	0x1
	.value	0x273
	.long	0x3f
	.byte	0x1
	.byte	0x5a
	.uleb128 0x27
	.long	0x115d
	.long	.Ldebug_ranges0+0x60
	.uleb128 0x28
	.long	.LASF150
	.byte	0x1
	.value	0x275
	.long	0x2d
	.uleb128 0x28
	.long	.LASF151
	.byte	0x1
	.value	0x275
	.long	0x2d
	.byte	0x0
	.uleb128 0x34
	.long	.Ldebug_ranges0+0xa0
	.uleb128 0x28
	.long	.LASF150
	.byte	0x1
	.value	0x283
	.long	0x2d
	.uleb128 0x28
	.long	.LASF151
	.byte	0x1
	.value	0x283
	.long	0x2d
	.uleb128 0x34
	.long	.Ldebug_ranges0+0xd0
	.uleb128 0x28
	.long	.LASF152
	.byte	0x1
	.value	0x283
	.long	0x11a2
	.uleb128 0x33
	.long	.LASF153
	.byte	0x1
	.value	0x283
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x384
	.uleb128 0x5
	.byte	0x8
	.long	0x11a8
	.uleb128 0x6
	.long	0x7b
	.uleb128 0x35
	.long	0x120d
	.long	.LASF154
	.byte	0x1
	.value	0x297
	.byte	0x1
	.quad	.LFB216
	.quad	.LFE216
	.byte	0x1
	.byte	0x57
	.uleb128 0x2f
	.string	"d"
	.byte	0x1
	.value	0x295
	.long	0x60b
	.byte	0x1
	.byte	0x55
	.uleb128 0x30
	.long	.LASF133
	.byte	0x1
	.value	0x296
	.long	0x317
	.byte	0x1
	.byte	0x54
	.uleb128 0x2f
	.string	"val"
	.byte	0x1
	.value	0x296
	.long	0x317
	.byte	0x1
	.byte	0x58
	.uleb128 0x2f
	.string	"len"
	.byte	0x1
	.value	0x296
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x36
	.string	"s"
	.byte	0x1
	.value	0x298
	.long	0x120d
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x896
	.uleb128 0x2e
	.long	0x12b6
	.byte	0x1
	.long	.LASF155
	.byte	0x1
	.value	0x2a8
	.byte	0x1
	.long	0x6c7
	.quad	.LFB217
	.quad	.LFE217
	.byte	0x1
	.byte	0x57
	.uleb128 0x2f
	.string	"bus"
	.byte	0x1
	.value	0x2a6
	.long	0x6c7
	.byte	0x1
	.byte	0x55
	.uleb128 0x30
	.long	.LASF82
	.byte	0x1
	.value	0x2a6
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.uleb128 0x2f
	.string	"id"
	.byte	0x1
	.value	0x2a6
	.long	0x317
	.byte	0x1
	.byte	0x5c
	.uleb128 0x30
	.long	.LASF72
	.byte	0x1
	.value	0x2a7
	.long	0x736
	.byte	0x1
	.byte	0x5d
	.uleb128 0x30
	.long	.LASF83
	.byte	0x1
	.value	0x2a7
	.long	0x69
	.byte	0x1
	.byte	0x54
	.uleb128 0x31
	.string	"s"
	.byte	0x1
	.value	0x2a9
	.long	0x120d
	.byte	0x1
	.byte	0x53
	.uleb128 0x29
	.long	0x12b6
	.quad	.LBB20
	.quad	.LBE20
	.uleb128 0x26
	.long	0x12c7
	.uleb128 0x26
	.long	0x12d2
	.uleb128 0x34
	.long	.Ldebug_ranges0+0x100
	.uleb128 0x38
	.long	0x12dd
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.long	0x12e9
	.long	.LASF156
	.byte	0x1
	.byte	0x69
	.byte	0x1
	.long	0x6c7
	.byte	0x1
	.uleb128 0x2c
	.string	"dev"
	.byte	0x1
	.byte	0x68
	.long	0x60b
	.uleb128 0x2d
	.long	.LASF72
	.byte	0x1
	.byte	0x68
	.long	0x736
	.uleb128 0x1e
	.string	"bus"
	.byte	0x1
	.byte	0x6a
	.long	0x6c7
	.byte	0x0
	.uleb128 0x39
	.long	.LASF157
	.byte	0xa
	.byte	0x91
	.long	0x2c5
	.byte	0x1
	.byte	0x1
	.uleb128 0x39
	.long	.LASF158
	.byte	0xa
	.byte	0x92
	.long	0x2c5
	.byte	0x1
	.byte	0x1
	.uleb128 0x39
	.long	.LASF159
	.byte	0xa
	.byte	0x93
	.long	0x2c5
	.byte	0x1
	.byte	0x1
	.uleb128 0x3a
	.long	.LASF160
	.byte	0xd
	.value	0x376
	.long	0x768
	.byte	0x1
	.byte	0x1
	.uleb128 0x3b
	.long	.LASF161
	.byte	0x1
	.byte	0x34
	.long	0x32d
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	pci_mem_base
	.uleb128 0x1f
	.long	.LASF162
	.byte	0x1
	.byte	0x35
	.long	0x3f
	.byte	0x9
	.byte	0x3
	.quad	pci_irq_index
	.uleb128 0x1f
	.long	.LASF163
	.byte	0x1
	.byte	0x36
	.long	0x6c7
	.byte	0x9
	.byte	0x3
	.quad	first_bus
	.uleb128 0xc
	.long	0x136e
	.long	0x860
	.uleb128 0xd
	.long	0x5b
	.byte	0x23
	.byte	0x0
	.uleb128 0x33
	.long	.LASF164
	.byte	0x1
	.value	0x206
	.long	0x135e
	.byte	0x9
	.byte	0x3
	.quad	pci_class_descriptions
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x27
	.uleb128 0xc
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
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x1e
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
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
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
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x33
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
	.uleb128 0x34
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.uleb128 0x2e
	.byte	0x0
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
	.uleb128 0x38
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
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
	.long	0x147
	.value	0x2
	.long	.Ldebug_info0
	.long	0x1385
	.long	0x95c
	.string	"pci_register_bus"
	.long	0x9e3
	.string	"pci_bus_num"
	.long	0xa12
	.string	"pci_device_save"
	.long	0xa53
	.string	"pci_register_device"
	.long	0xae1
	.string	"pci_register_io_region"
	.long	0xc89
	.string	"pci_device_load"
	.long	0xcdb
	.string	"pci_default_read_config"
	.long	0xd8b
	.string	"pci_default_write_config"
	.long	0xe46
	.string	"pci_data_write"
	.long	0xed5
	.string	"pci_data_read"
	.long	0xffc
	.string	"pci_for_each_device"
	.long	0x10d6
	.string	"pci_info"
	.long	0x10f2
	.string	"pci_nic_init"
	.long	0x1213
	.string	"pci_bridge_init"
	.long	0x131e
	.string	"pci_mem_base"
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
	.quad	.LBB8-.Ltext0
	.quad	.LBE8-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB11-.Ltext0
	.quad	.LBE11-.Ltext0
	.quad	.LBB12-.Ltext0
	.quad	.LBE12-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB13-.Ltext0
	.quad	.LBE13-.Ltext0
	.quad	.LBB15-.Ltext0
	.quad	.LBE15-.Ltext0
	.quad	.LBB14-.Ltext0
	.quad	.LBE14-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB16-.Ltext0
	.quad	.LBE16-.Ltext0
	.quad	.LBB18-.Ltext0
	.quad	.LBE18-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB17-.Ltext0
	.quad	.LBE17-.Ltext0
	.quad	.LBB19-.Ltext0
	.quad	.LBE19-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB21-.Ltext0
	.quad	.LBE21-.Ltext0
	.quad	.LBB23-.Ltext0
	.quad	.LBE23-.Ltext0
	.quad	0x0
	.quad	0x0
	.section	.debug_str,"MS",@progbits,1
.LASF5:
	.string	"char"
.LASF115:
	.string	"pci_register_bus"
.LASF9:
	.string	"size_t"
.LASF151:
	.string	"__s2_len"
.LASF117:
	.string	"pci_device_save"
.LASF24:
	.string	"_IO_save_end"
.LASF59:
	.string	"macaddr"
.LASF17:
	.string	"_IO_write_base"
.LASF33:
	.string	"_lock"
.LASF77:
	.string	"parent_dev"
.LASF22:
	.string	"_IO_save_base"
.LASF122:
	.string	"region_num"
.LASF58:
	.string	"NICInfo"
.LASF30:
	.string	"_cur_column"
.LASF40:
	.string	"_mode"
.LASF93:
	.string	"PCIConfigReadFunc"
.LASF146:
	.string	"change"
.LASF168:
	.string	"pci_info"
.LASF143:
	.string	"pci_set_irq"
.LASF2:
	.string	"long int"
.LASF166:
	.string	"/home/remco/Projects/Argos/src/hw/pci.c"
.LASF44:
	.string	"_IO_marker"
.LASF105:
	.string	"opaque"
.LASF4:
	.string	"short unsigned int"
.LASF88:
	.string	"irq_state"
.LASF90:
	.string	"IRQState"
.LASF7:
	.string	"signed char"
.LASF112:
	.string	"pcibus_load"
.LASF43:
	.string	"_IO_FILE"
.LASF6:
	.string	"unsigned char"
.LASF63:
	.string	"first_client"
.LASF144:
	.string	"irq_num"
.LASF66:
	.string	"nb_host_devs"
.LASF60:
	.string	"model"
.LASF82:
	.string	"devfn"
.LASF71:
	.string	"set_irq"
.LASF56:
	.string	"IOReadHandler"
.LASF91:
	.string	"SetIRQFunc"
.LASF42:
	.string	"_IO_lock_t"
.LASF102:
	.string	"VLANClientState"
.LASF67:
	.string	"QEMUFile"
.LASF118:
	.string	"pci_register_device"
.LASF70:
	.string	"devfn_min"
.LASF81:
	.string	"config"
.LASF147:
	.string	"pci_for_each_device"
.LASF65:
	.string	"nb_guest_devs"
.LASF14:
	.string	"_IO_read_ptr"
.LASF54:
	.string	"double"
.LASF128:
	.string	"no_mem_map"
.LASF76:
	.string	"devices"
.LASF47:
	.string	"_pos"
.LASF157:
	.string	"stdin"
.LASF99:
	.string	"map_func"
.LASF80:
	.string	"PCIDevice"
.LASF92:
	.string	"PCIConfigWriteFunc"
.LASF25:
	.string	"_markers"
.LASF130:
	.string	"pci_to_cpu_addr"
.LASF135:
	.string	"pci_default_write_config"
.LASF73:
	.string	"config_reg"
.LASF148:
	.string	"pci_info_device"
.LASF155:
	.string	"pci_bridge_init"
.LASF41:
	.string	"_unused2"
.LASF137:
	.string	"default_config"
.LASF126:
	.string	"config_ofs"
.LASF28:
	.string	"_flags2"
.LASF16:
	.string	"_IO_read_base"
.LASF140:
	.string	"pci_data_read"
.LASF103:
	.string	"fd_read"
.LASF62:
	.string	"VLANState"
.LASF29:
	.string	"_old_offset"
.LASF109:
	.string	"pci_class_desc"
.LASF113:
	.string	"version_id"
.LASF119:
	.string	"instance_size"
.LASF127:
	.string	"found"
.LASF152:
	.string	"__s1"
.LASF72:
	.string	"map_irq"
.LASF142:
	.string	"the_end"
.LASF3:
	.string	"long long int"
.LASF154:
	.string	"pci_bridge_write_config"
.LASF19:
	.string	"_IO_write_end"
.LASF100:
	.string	"pci_set_irq_fn"
.LASF167:
	.string	"/home/remco/Projects/Argos/src/i386-softmmu"
.LASF96:
	.string	"addr"
.LASF20:
	.string	"_IO_buf_base"
.LASF45:
	.string	"_next"
.LASF1:
	.string	"unsigned int"
.LASF123:
	.string	"pci_update_mappings"
.LASF165:
	.string	"GNU C 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
.LASF95:
	.string	"PCIIORegion"
.LASF35:
	.string	"__pad1"
.LASF36:
	.string	"__pad2"
.LASF37:
	.string	"__pad3"
.LASF38:
	.string	"__pad4"
.LASF39:
	.string	"__pad5"
.LASF46:
	.string	"_sbuf"
.LASF87:
	.string	"irq_index"
.LASF163:
	.string	"first_bus"
.LASF13:
	.string	"_flags"
.LASF133:
	.string	"address"
.LASF120:
	.string	"pci_dev"
.LASF131:
	.string	"pci_device_load"
.LASF86:
	.string	"config_write"
.LASF85:
	.string	"config_read"
.LASF98:
	.string	"type"
.LASF52:
	.string	"target_phys_addr_t"
.LASF150:
	.string	"__s1_len"
.LASF64:
	.string	"next"
.LASF138:
	.string	"pci_data_write"
.LASF55:
	.string	"long double"
.LASF34:
	.string	"_offset"
.LASF162:
	.string	"pci_irq_index"
.LASF104:
	.string	"fd_can_read"
.LASF97:
	.string	"size"
.LASF12:
	.string	"long long unsigned int"
.LASF48:
	.string	"uint8_t"
.LASF49:
	.string	"uint16_t"
.LASF10:
	.string	"__off_t"
.LASF26:
	.string	"_chain"
.LASF0:
	.string	"long unsigned int"
.LASF74:
	.string	"low_set_irq"
.LASF121:
	.string	"pci_register_io_region"
.LASF79:
	.string	"irq_count"
.LASF68:
	.string	"PCIBus"
.LASF23:
	.string	"_IO_backup_base"
.LASF32:
	.string	"_shortbuf"
.LASF108:
	.string	"desc"
.LASF134:
	.string	"le16_to_cpu"
.LASF149:
	.string	"pci_nic_init"
.LASF11:
	.string	"__off64_t"
.LASF75:
	.string	"irq_opaque"
.LASF101:
	.string	"pci_map_irq_fn"
.LASF21:
	.string	"_IO_buf_end"
.LASF83:
	.string	"name"
.LASF161:
	.string	"pci_mem_base"
.LASF125:
	.string	"new_addr"
.LASF159:
	.string	"stderr"
.LASF8:
	.string	"short int"
.LASF51:
	.string	"uint64_t"
.LASF116:
	.string	"pci_bus_num"
.LASF69:
	.string	"bus_num"
.LASF31:
	.string	"_vtable_offset"
.LASF106:
	.string	"info_str"
.LASF139:
	.string	"config_addr"
.LASF111:
	.string	"pcibus_save"
.LASF156:
	.string	"pci_register_secondary_bus"
.LASF164:
	.string	"pci_class_descriptions"
.LASF78:
	.string	"nirq"
.LASF57:
	.string	"IOCanRWHandler"
.LASF129:
	.string	"le32_to_cpu"
.LASF160:
	.string	"phys_ram_dirty"
.LASF15:
	.string	"_IO_read_end"
.LASF84:
	.string	"io_regions"
.LASF50:
	.string	"uint32_t"
.LASF110:
	.string	"PCIBridge"
.LASF27:
	.string	"_fileno"
.LASF145:
	.string	"level"
.LASF94:
	.string	"PCIMapIORegionFunc"
.LASF53:
	.string	"float"
.LASF158:
	.string	"stdout"
.LASF141:
	.string	"fail"
.LASF18:
	.string	"_IO_write_ptr"
.LASF114:
	.string	"nbus"
.LASF153:
	.string	"__result"
.LASF136:
	.string	"can_write"
.LASF132:
	.string	"pci_default_read_config"
.LASF61:
	.string	"vlan"
.LASF107:
	.string	"class"
.LASF124:
	.string	"last_addr"
.LASF89:
	.string	"qemu_irq"
	.section	.note.GNU-stack,"",@progbits
	.ident	"GCC: (GNU) 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
