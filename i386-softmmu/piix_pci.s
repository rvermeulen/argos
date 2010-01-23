	.file	"piix_pci.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.p2align 4,,15
	.type	pci_host_data_writeb, @function
pci_host_data_writeb:
.LFB194:
	.file 1 "/home/remco/Projects/Argos/src/hw/pci_host.h"
	.loc 1 34 0
	.loc 1 34 0
	movl	%esi, %eax
	.loc 1 36 0
	movl	(%rdi), %esi
	testl	%esi, %esi
	js	.L4
	rep ; ret
	.p2align 4,,7
.L4:
	.loc 1 37 0
	movq	8(%rdi), %rdi
	andl	$3, %eax
	movl	$1, %ecx
	orl	%eax, %esi
	jmp	pci_data_write
.LFE194:
	.size	pci_host_data_writeb, .-pci_host_data_writeb
	.p2align 4,,15
	.type	pci_host_data_writew, @function
pci_host_data_writew:
.LFB195:
	.loc 1 41 0
	.loc 1 41 0
	movl	%esi, %eax
	.loc 1 46 0
	movl	(%rdi), %esi
	testl	%esi, %esi
	js	.L7
	rep ; ret
	.p2align 4,,7
.L7:
	.loc 1 47 0
	movq	8(%rdi), %rdi
	andl	$3, %eax
	movl	$2, %ecx
	orl	%eax, %esi
	jmp	pci_data_write
.LFE195:
	.size	pci_host_data_writew, .-pci_host_data_writew
	.p2align 4,,15
	.type	pci_host_data_writel, @function
pci_host_data_writel:
.LFB196:
	.loc 1 51 0
	.loc 1 56 0
	movl	(%rdi), %esi
	testl	%esi, %esi
	js	.L10
	rep ; ret
	.p2align 4,,7
.L10:
	.loc 1 57 0
	movq	8(%rdi), %rdi
	movl	$4, %ecx
	jmp	pci_data_write
.LFE196:
	.size	pci_host_data_writel, .-pci_host_data_writel
	.p2align 4,,15
	.type	pci_host_data_readb, @function
pci_host_data_readb:
.LFB197:
	.loc 1 62 0
	.loc 1 62 0
	movl	%esi, %eax
	.loc 1 64 0
	movl	(%rdi), %esi
	testl	%esi, %esi
	jns	.L13
	.loc 1 66 0
	movq	8(%rdi), %rdi
	andl	$3, %eax
	movl	$1, %edx
	orl	%eax, %esi
	jmp	pci_data_read
	.p2align 4,,7
.L13:
	.loc 1 67 0
	movl	$255, %eax
	ret
.LFE197:
	.size	pci_host_data_readb, .-pci_host_data_readb
	.p2align 4,,15
	.type	pci_host_data_readw, @function
pci_host_data_readw:
.LFB198:
	.loc 1 71 0
	.loc 1 71 0
	movl	%esi, %eax
	.loc 1 74 0
	movl	(%rdi), %esi
	testl	%esi, %esi
	jns	.L16
	.loc 1 76 0
	movq	8(%rdi), %rdi
	andl	$3, %eax
	movl	$2, %edx
	orl	%eax, %esi
	jmp	pci_data_read
	.p2align 4,,7
.L16:
	.loc 1 81 0
	movl	$65535, %eax
	ret
.LFE198:
	.size	pci_host_data_readw, .-pci_host_data_readw
	.p2align 4,,15
	.type	pci_host_data_readl, @function
pci_host_data_readl:
.LFB199:
	.loc 1 85 0
	.loc 1 85 0
	movl	%esi, %eax
	.loc 1 88 0
	movl	(%rdi), %esi
	testl	%esi, %esi
	jns	.L19
	.loc 1 90 0
	movq	8(%rdi), %rdi
	andl	$3, %eax
	movl	$4, %edx
	orl	%eax, %esi
	jmp	pci_data_read
	.p2align 4,,7
.L19:
	.loc 1 95 0
	movl	$-1, %eax
	ret
.LFE199:
	.size	pci_host_data_readl, .-pci_host_data_readl
	.p2align 4,,15
	.type	i440fx_addr_writel, @function
i440fx_addr_writel:
.LFB200:
	.file 2 "/home/remco/Projects/Argos/src/hw/piix_pci.c"
	.loc 2 35 0
	.loc 2 37 0
	movl	%edx, (%rdi)
	ret
.LFE200:
	.size	i440fx_addr_writel, .-i440fx_addr_writel
	.p2align 4,,15
	.type	i440fx_addr_readl, @function
i440fx_addr_readl:
.LFB201:
	.loc 2 41 0
	.loc 2 43 0
	movl	(%rdi), %eax
	.loc 2 44 0
	ret
.LFE201:
	.size	i440fx_addr_readl, .-i440fx_addr_readl
	.p2align 4,,15
	.type	pci_slot_get_pirq, @function
pci_slot_get_pirq:
.LFB202:
	.loc 2 52 0
	.loc 2 54 0
	movl	264(%rdi), %eax
	sarl	$3, %eax
	.loc 2 55 0
	leal	-1(%rax,%rsi), %eax
	andl	$3, %eax
	.loc 2 56 0
	ret
.LFE202:
	.size	pci_slot_get_pirq, .-pci_slot_get_pirq
	.p2align 4,,15
	.type	update_pam, @function
update_pam:
.LFB203:
	.loc 2 63 0
	movq	%r12, -8(%rsp)
.LCFI0:
	movq	%rbx, -24(%rsp)
.LCFI1:
	movl	%esi, %eax
	movq	%rbp, -16(%rsp)
.LCFI2:
	subq	$24, %rsp
.LCFI3:
	.loc 2 67 0
	cmpl	$1, %ecx
	.loc 2 63 0
	movl	%edx, %r12d
	.loc 2 67 0
	je	.L26
	jle	.L36
	cmpl	$2, %ecx
	je	.L28
	cmpl	$3, %ecx
	.p2align 4,,7
	je	.L37
.L23:
	.loc 2 87 0
	movq	(%rsp), %rbx
	movq	8(%rsp), %rbp
	movq	16(%rsp), %r12
	addq	$24, %rsp
	ret
	.p2align 4,,7
.L36:
	.loc 2 67 0
	testl	%ecx, %ecx
	jne	.L23
	.p2align 4,,7
.L28:
	.loc 2 81 0
	cmpl	%r12d, %eax
	movl	%eax, %ebx
	jae	.L23
	leal	-655360(%rbx), %ebp
	.p2align 4,,7
.L32:
	.loc 2 82 0
	movl	%ebp, %eax
	mov	%ebx, %edi
	movl	$4096, %esi
	shrl	$12, %eax
	.loc 2 81 0
	addl	$4096, %ebx
	addl	$4096, %ebp
	.loc 2 82 0
	mov	%eax, %eax
	mov	isa_page_descs(,%rax,4), %edx
	call	cpu_register_physical_memory
	.loc 2 81 0
	cmpl	%r12d, %ebx
	jb	.L32
	.loc 2 87 0
	movq	(%rsp), %rbx
	movq	8(%rsp), %rbp
	movq	16(%rsp), %r12
	addq	$24, %rsp
	ret
	.p2align 4,,7
.L26:
	.loc 2 75 0
	movl	%esi, %edx
	movl	%r12d, %esi
	.loc 2 87 0
	movq	(%rsp), %rbx
	movq	8(%rsp), %rbp
	movq	16(%rsp), %r12
	.loc 2 75 0
	orl	$16, %edx
	subl	%eax, %esi
	mov	%eax, %edi
	.loc 2 87 0
	addq	$24, %rsp
	.loc 2 75 0
	jmp	cpu_register_physical_memory
.L37:
	.loc 2 70 0
	mov	%esi, %edi
	movl	%edx, %esi
	.loc 2 87 0
	movq	(%rsp), %rbx
	movq	8(%rsp), %rbp
	movq	16(%rsp), %r12
	.loc 2 70 0
	subl	%eax, %esi
	movq	%rdi, %rdx
	.loc 2 87 0
	addq	$24, %rsp
	.loc 2 75 0
	jmp	cpu_register_physical_memory
.LFE203:
	.size	update_pam, .-update_pam
	.p2align 4,,15
	.type	i440fx_update_memory_mappings, @function
i440fx_update_memory_mappings:
.LFB204:
	.loc 2 90 0
	pushq	%rbp
.LCFI4:
	.loc 2 94 0
	movl	$1048576, %edx
	movl	$983040, %esi
	.loc 2 90 0
	movq	%rdi, %rbp
	pushq	%rbx
.LCFI5:
	.loc 2 95 0
	xorl	%ebx, %ebx
	.loc 2 90 0
	subq	$8, %rsp
.LCFI6:
	.loc 2 94 0
	movzbl	89(%rdi), %ecx
	shrb	$4, %cl
	andl	$3, %ecx
	call	update_pam
	.p2align 4,,7
.L42:
	.loc 2 96 0
	movl	%ebx, %eax
	.loc 2 97 0
	movl	%ebx, %esi
	.loc 2 96 0
	sarl	%eax
	.loc 2 97 0
	sall	$14, %esi
	.loc 2 96 0
	addl	$90, %eax
	.loc 2 97 0
	leal	802816(%rsi), %edx
	addl	$786432, %esi
	.loc 2 96 0
	cltq
	movzbl	(%rbp,%rax), %edi
	movl	%ebx, %eax
	.loc 2 95 0
	incl	%ebx
	.loc 2 96 0
	andl	$1, %eax
	sall	$2, %eax
	movl	%eax, %ecx
	sarl	%cl, %edi
	andl	$3, %edi
	.loc 2 97 0
	movl	%edi, %ecx
	movq	%rbp, %rdi
	call	update_pam
	.loc 2 95 0
	cmpl	$11, %ebx
	jle	.L42
	.loc 2 100 0
	cmpb	$0, smm_enabled(%rip)
	.loc 2 99 0
	movzbl	114(%rbp), %eax
	.loc 2 100 0
	je	.L45
	testb	$8, %al
	je	.L45
.L44:
	.loc 2 108 0
	addq	$8, %rsp
	.loc 2 101 0
	movl	$655360, %edx
	movl	$131072, %esi
	.loc 2 108 0
	popq	%rbx
	popq	%rbp
	.loc 2 101 0
	movl	$655360, %edi
	jmp	cpu_register_physical_memory
.L45:
	.loc 2 100 0
	testb	$64, %al
	jne	.L44
	.loc 2 103 0
	movl	$655360, %ebx
	xorl	%ebp, %ebp
	.p2align 4,,7
.L50:
	.loc 2 104 0
	movl	%ebp, %eax
	mov	%ebx, %edi
	movl	$4096, %esi
	shrl	$12, %eax
	.loc 2 103 0
	addl	$4096, %ebx
	addl	$4096, %ebp
	.loc 2 104 0
	mov	%eax, %eax
	mov	isa_page_descs(,%rax,4), %edx
	call	cpu_register_physical_memory
	.loc 2 103 0
	cmpl	$786431, %ebx
	jbe	.L50
	.loc 2 108 0
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
.LFE204:
	.size	i440fx_update_memory_mappings, .-i440fx_update_memory_mappings
	.p2align 4,,15
.globl i440fx_set_smm
	.type	i440fx_set_smm, @function
i440fx_set_smm:
.LFB205:
	.loc 2 111 0
	.loc 2 112 0
	testl	%esi, %esi
	.loc 2 113 0
	movl	$1, %esi
	.loc 2 112 0
	setne	%al
	.loc 2 113 0
	andl	%eax, %esi
	cmpb	%al, smm_enabled(%rip)
	je	.L55
	.loc 2 114 0
	movb	%sil, smm_enabled(%rip)
	.loc 2 115 0
	jmp	i440fx_update_memory_mappings
	.p2align 4,,7
.L55:
	rep ; ret
.LFE205:
	.size	i440fx_set_smm, .-i440fx_set_smm
	.p2align 4,,15
.globl i440fx_init_memory_mappings
	.type	i440fx_init_memory_mappings, @function
i440fx_init_memory_mappings:
.LFB206:
	.loc 2 124 0
	pushq	%r12
.LCFI7:
	movl	$655360, %r12d
	pushq	%rbp
.LCFI8:
	.loc 2 126 0
	xorl	%ebp, %ebp
	.loc 2 124 0
	pushq	%rbx
.LCFI9:
	.p2align 4,,7
.L61:
	.loc 2 127 0
	movslq	%ebp,%rbx
	movslq	%r12d,%rdi
	.loc 2 126 0
	incl	%ebp
	.loc 2 127 0
	call	cpu_get_physical_page_desc
	addl	$4096, %r12d
	.loc 2 126 0
	cmpl	$95, %ebp
	.loc 2 127 0
	movl	%eax, isa_page_descs(,%rbx,4)
	.loc 2 126 0
	jle	.L61
	popq	%rbx
	popq	%rbp
	popq	%r12
	ret
.LFE206:
	.size	i440fx_init_memory_mappings, .-i440fx_init_memory_mappings
	.p2align 4,,15
	.type	i440fx_write_config, @function
i440fx_write_config:
.LFB207:
	.loc 2 133 0
	movq	%rbx, -16(%rsp)
.LCFI10:
	movq	%rbp, -8(%rsp)
.LCFI11:
	movl	%esi, %ebx
	subq	$24, %rsp
.LCFI12:
	.loc 2 133 0
	movq	%rdi, %rbp
	.loc 2 135 0
	call	pci_default_write_config
	.loc 2 136 0
	leal	-89(%rbx), %eax
	cmpl	$6, %eax
	setbe	%dl
	cmpl	$114, %ebx
	sete	%al
	orl	%edx, %eax
	testb	$1, %al
	jne	.L66
	.loc 2 138 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	addq	$24, %rsp
	ret
	.p2align 4,,7
.L66:
	.loc 2 137 0
	movq	%rbp, %rdi
	.loc 2 138 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	addq	$24, %rsp
	.loc 2 137 0
	jmp	i440fx_update_memory_mappings
.LFE207:
	.size	i440fx_write_config, .-i440fx_write_config
	.p2align 4,,15
	.type	i440fx_save, @function
i440fx_save:
.LFB208:
	.loc 2 141 0
	pushq	%rbp
.LCFI13:
	movq	%rdi, %rbp
	movq	%rsi, %rdi
	.loc 2 145 0
	movq	%rbp, %rsi
	.loc 2 141 0
	pushq	%rbx
.LCFI14:
	.loc 2 148 0
	xorl	%ebx, %ebx
	.loc 2 141 0
	subq	$8, %rsp
.LCFI15:
	.loc 2 145 0
	call	pci_device_save
.LBB2:
.LBB3:
	.file 3 "/home/remco/Projects/Argos/src/hw/hw.h"
	.loc 3 42 0
	movzbl	smm_enabled(%rip), %esi
	movq	%rbp, %rdi
	call	qemu_put_byte
	.p2align 4,,7
.L72:
.LBE3:
.LBE2:
	.loc 2 149 0
	movslq	%ebx,%rax
	movq	%rbp, %rdi
	.loc 2 148 0
	incl	%ebx
	.loc 2 149 0
	movl	pci_irq_levels(,%rax,4), %esi
	call	qemu_put_be32
	.loc 2 148 0
	cmpl	$3, %ebx
	jle	.L72
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
.LFE208:
	.size	i440fx_save, .-i440fx_save
	.p2align 4,,15
	.type	i440fx_load, @function
i440fx_load:
.LFB209:
	.loc 2 153 0
	movq	%rbx, -24(%rsp)
.LCFI16:
	movq	%rbp, -16(%rsp)
.LCFI17:
	movq	%rsi, %rbx
	movq	%r12, -8(%rsp)
.LCFI18:
	subq	$24, %rsp
.LCFI19:
	.loc 2 157 0
	cmpl	$2, %edx
	.loc 2 153 0
	movq	%rdi, %r12
	movl	%edx, %ebp
	.loc 2 158 0
	movl	$-22, %eax
	.loc 2 157 0
	jg	.L75
	.loc 2 159 0
	movq	%rdi, %rsi
	movq	%rbx, %rdi
	call	pci_device_load
	.loc 2 160 0
	testl	%eax, %eax
	js	.L75
	.loc 2 162 0
	movq	%rbx, %rdi
	call	i440fx_update_memory_mappings
.LBB4:
.LBB5:
	.loc 3 62 0
	movq	%r12, %rdi
	call	qemu_get_byte
.LBE5:
.LBE4:
	.loc 2 165 0
	decl	%ebp
.LBB6:
.LBB7:
	.loc 3 62 0
	movb	%al, smm_enabled(%rip)
.LBE7:
.LBE6:
	.loc 2 165 0
	jle	.L79
	.loc 2 166 0
	xorl	%ebp, %ebp
	.p2align 4,,7
.L83:
	.loc 2 167 0
	movslq	%ebp,%rbx
	movq	%r12, %rdi
	.loc 2 166 0
	incl	%ebp
	.loc 2 167 0
	call	qemu_get_be32
	.loc 2 166 0
	cmpl	$3, %ebp
	.loc 2 167 0
	movl	%eax, pci_irq_levels(,%rbx,4)
	.loc 2 166 0
	jle	.L83
.L79:
	.loc 2 169 0
	xorl	%eax, %eax
.L75:
	.loc 2 170 0
	movq	(%rsp), %rbx
	movq	8(%rsp), %rbp
	movq	16(%rsp), %r12
	addq	$24, %rsp
	ret
.LFE209:
	.size	i440fx_load, .-i440fx_load
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"i440FX"
.LC1:
	.string	"I440FX"
	.text
	.p2align 4,,15
.globl i440fx_init
	.type	i440fx_init, @function
i440fx_init:
.LFB210:
	.loc 2 173 0
	pushq	%r13
.LCFI20:
	movq	%rdi, %r13
	.loc 2 178 0
	movl	$16, %edi
	.loc 2 173 0
	pushq	%r12
.LCFI21:
	movq	%rsi, %r12
	pushq	%rbx
.LCFI22:
	.loc 2 178 0
	call	qemu_mallocz
	.loc 2 179 0
	movq	%r12, %rdx
	.loc 2 178 0
	movq	%rax, %rbx
	.loc 2 179 0
	movl	$4, %r8d
	xorl	%ecx, %ecx
	movl	$pci_slot_get_pirq, %esi
	movl	$piix3_set_irq, %edi
	call	pci_register_bus
	.loc 2 182 0
	movq	%rbx, %r8
	.loc 2 180 0
	movq	%rax, 8(%rbx)
	.loc 2 182 0
	movl	$i440fx_addr_writel, %ecx
	movl	$4, %edx
	movl	$4, %esi
	movl	$3320, %edi
	.loc 2 179 0
	movq	%rax, %r12
	.loc 2 182 0
	call	register_ioport_write
	.loc 2 183 0
	movq	%rbx, %r8
	movl	$i440fx_addr_readl, %ecx
	movl	$4, %edx
	movl	$4, %esi
	movl	$3320, %edi
	call	register_ioport_read
	.loc 2 185 0
	movq	%rbx, %r8
	movl	$pci_host_data_writeb, %ecx
	movl	$1, %edx
	movl	$4, %esi
	movl	$3324, %edi
	call	register_ioport_write
	.loc 2 186 0
	movq	%rbx, %r8
	movl	$pci_host_data_writew, %ecx
	movl	$2, %edx
	movl	$4, %esi
	movl	$3324, %edi
	call	register_ioport_write
	.loc 2 187 0
	movq	%rbx, %r8
	movl	$pci_host_data_writel, %ecx
	movl	$4, %edx
	movl	$4, %esi
	movl	$3324, %edi
	call	register_ioport_write
	.loc 2 188 0
	movq	%rbx, %r8
	movl	$pci_host_data_readb, %ecx
	movl	$1, %edx
	movl	$4, %esi
	movl	$3324, %edi
	call	register_ioport_read
	.loc 2 189 0
	movq	%rbx, %r8
	movl	$pci_host_data_readw, %ecx
	movl	$2, %edx
	movl	$4, %esi
	movl	$3324, %edi
	call	register_ioport_read
	.loc 2 190 0
	movq	%rbx, %r8
	movl	$pci_host_data_readl, %ecx
	movl	$4, %edx
	movl	$4, %esi
	movl	$3324, %edi
	call	register_ioport_read
	.loc 2 192 0
	movq	%r12, %rdi
	movl	$i440fx_write_config, %r9d
	xorl	%r8d, %r8d
	xorl	%ecx, %ecx
	movl	$552, %edx
	movl	$.LC0, %esi
	call	pci_register_device
	.loc 2 206 0
	movl	$i440fx_load, %r8d
	.loc 2 192 0
	movq	%rax, %rbx
	.loc 2 195 0
	movb	$-122, (%rax)
	.loc 2 196 0
	movb	$-128, 1(%rax)
	.loc 2 197 0
	movb	$55, 2(%rax)
	.loc 2 206 0
	movq	%rax, %r9
	.loc 2 198 0
	movb	$18, 3(%rax)
	.loc 2 199 0
	movb	$2, 8(%rax)
	.loc 2 206 0
	movl	$i440fx_save, %ecx
	.loc 2 200 0
	movb	$0, 10(%rax)
	.loc 2 201 0
	movb	$6, 11(%rax)
	.loc 2 206 0
	movl	$2, %edx
	.loc 2 202 0
	movb	$0, 14(%rax)
	.loc 2 204 0
	movb	$2, 114(%rax)
	.loc 2 206 0
	xorl	%esi, %esi
	movl	$.LC1, %edi
	call	register_savevm
	.loc 2 207 0
	movq	%rbx, (%r13)
	.loc 2 209 0
	movq	%r12, %rax
	popq	%rbx
	popq	%r12
	popq	%r13
	ret
.LFE210:
	.size	i440fx_init, .-i440fx_init
	.p2align 4,,15
	.type	piix3_set_irq, @function
piix3_set_irq:
.LFB211:
	.loc 2 220 0
	.loc 2 223 0
	movq	piix3_dev(%rip), %rcx
	leal	96(%rsi), %eax
	.loc 2 224 0
	movslq	%esi,%rsi
	.loc 2 223 0
	cltq
	andb	$127, (%rcx,%rax)
	.loc 2 224 0
	movl	%edx, pci_irq_levels(,%rsi,4)
	.loc 2 228 0
	movq	piix3_dev(%rip), %r8
	movzbl	(%r8,%rax), %ecx
	.loc 2 229 0
	cmpl	$15, %ecx
	jg	.L86
	.loc 2 232 0
	xorl	%esi, %esi
	.loc 2 233 0
	xorl	%edx, %edx
	.p2align 4,,7
.L92:
	.loc 2 234 0
	leal	96(%rdx), %eax
	cltq
	movzbl	(%r8,%rax), %eax
	cmpl	%ecx, %eax
	je	.L95
.L90:
	.loc 2 233 0
	incl	%edx
	cmpl	$3, %edx
	jle	.L92
	.loc 2 237 0
	movslq	%ecx,%rax
	movq	(%rdi,%rax,8), %rdi
	jmp	qemu_set_irq
	.p2align 4,,7
.L86:
	rep ; ret
	.p2align 4,,7
.L95:
	.loc 2 235 0
	movslq	%edx,%rax
	orl	pci_irq_levels(,%rax,4), %esi
	jmp	.L90
.LFE211:
	.size	piix3_set_irq, .-piix3_set_irq
	.p2align 4,,15
	.type	piix_save, @function
piix_save:
.LFB214:
	.loc 2 313 0
	.loc 2 313 0
	movq	%rsi, %rax
	.loc 2 315 0
	movq	%rdi, %rsi
	movq	%rax, %rdi
	jmp	pci_device_save
.LFE214:
	.size	piix_save, .-piix_save
	.p2align 4,,15
	.type	piix_load, @function
piix_load:
.LFB215:
	.loc 2 319 0
	.loc 2 321 0
	cmpl	$2, %edx
	.loc 2 319 0
	movq	%rsi, %rax
	.loc 2 321 0
	jne	.L99
	.loc 2 323 0
	movq	%rdi, %rsi
	movq	%rax, %rdi
	jmp	pci_device_load
	.p2align 4,,7
.L99:
	.loc 2 324 0
	movl	$-22, %eax
	ret
.LFE215:
	.size	piix_load, .-piix_load
	.section	.rodata.str1.1
.LC2:
	.string	"PIIX3"
	.text
	.p2align 4,,15
.globl piix3_init
	.type	piix3_init, @function
piix3_init:
.LFB216:
	.loc 2 327 0
	pushq	%rbx
.LCFI23:
	.loc 2 331 0
	movl	%esi, %ecx
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movl	$552, %edx
	movl	$.LC2, %esi
	call	pci_register_device
	.loc 2 333 0
	movl	$piix_load, %r8d
	.loc 2 331 0
	movq	%rax, %rbx
	.loc 2 333 0
	movq	%rax, %r9
	movl	$piix_save, %ecx
	movl	$2, %edx
	xorl	%esi, %esi
	movl	$.LC2, %edi
	call	register_savevm
	.loc 2 335 0
	movq	%rbx, piix3_dev(%rip)
	.loc 2 338 0
	movb	$-122, (%rbx)
	.loc 2 339 0
	movb	$-128, 1(%rbx)
	.loc 2 340 0
	movb	$0, 2(%rbx)
	.loc 2 341 0
	movb	$112, 3(%rbx)
	.loc 2 342 0
	movb	$1, 10(%rbx)
	.loc 2 343 0
	movb	$6, 11(%rbx)
	.loc 2 344 0
	movb	$-128, 14(%rbx)
.LBB8:
.LBB9:
	.loc 2 245 0
	movb	$7, 4(%rbx)
	.loc 2 246 0
	movb	$0, 5(%rbx)
	.loc 2 247 0
	movb	$0, 6(%rbx)
	.loc 2 248 0
	movb	$2, 7(%rbx)
	.loc 2 249 0
	movb	$77, 76(%rbx)
	.loc 2 250 0
	movb	$3, 78(%rbx)
	.loc 2 251 0
	movb	$0, 79(%rbx)
	.loc 2 252 0
	movb	$-128, 96(%rbx)
	.loc 2 253 0
	movb	$2, 105(%rbx)
	.loc 2 254 0
	movb	$-128, 112(%rbx)
	.loc 2 255 0
	movb	$12, 118(%rbx)
	.loc 2 256 0
	movb	$12, 119(%rbx)
	.loc 2 257 0
	movb	$2, 120(%rbx)
	.loc 2 258 0
	movb	$0, 121(%rbx)
	.loc 2 259 0
	movb	$0, 128(%rbx)
	.loc 2 260 0
	movb	$0, 130(%rbx)
	.loc 2 261 0
	movb	$8, 160(%rbx)
	.loc 2 262 0
	movb	$0, 162(%rbx)
	.loc 2 263 0
	movb	$0, 163(%rbx)
	.loc 2 264 0
	movb	$0, 164(%rbx)
	.loc 2 265 0
	movb	$0, 165(%rbx)
	.loc 2 266 0
	movb	$0, 166(%rbx)
	.loc 2 267 0
	movb	$0, 167(%rbx)
	.loc 2 268 0
	movb	$15, 168(%rbx)
	.loc 2 269 0
	movb	$0, 170(%rbx)
	.loc 2 270 0
	movb	$0, 171(%rbx)
.LBE9:
.LBE8:
	.loc 2 347 0
	movl	264(%rbx), %eax
.LBB10:
.LBB11:
	.loc 2 271 0
	movb	$0, 172(%rbx)
	.loc 2 272 0
	movb	$0, 174(%rbx)
.LBE11:
.LBE10:
	.loc 2 348 0
	popq	%rbx
	ret
.LFE216:
	.size	piix3_init, .-piix3_init
	.section	.rodata.str1.1
.LC3:
	.string	"PIIX4"
	.text
	.p2align 4,,15
.globl piix4_init
	.type	piix4_init, @function
piix4_init:
.LFB217:
	.loc 2 351 0
	pushq	%rbx
.LCFI24:
	.loc 2 355 0
	movl	%esi, %ecx
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movl	$552, %edx
	movl	$.LC3, %esi
	call	pci_register_device
	.loc 2 357 0
	movl	$piix_load, %r8d
	.loc 2 355 0
	movq	%rax, %rbx
	.loc 2 357 0
	movq	%rax, %r9
	movl	$piix_save, %ecx
	movl	$2, %edx
	xorl	%esi, %esi
	movl	$.LC3, %edi
	call	register_savevm
	.loc 2 359 0
	movq	%rbx, piix4_dev(%rip)
	.loc 2 362 0
	movb	$-122, (%rbx)
	.loc 2 363 0
	movb	$-128, 1(%rbx)
	.loc 2 364 0
	movb	$16, 2(%rbx)
	.loc 2 365 0
	movb	$113, 3(%rbx)
	.loc 2 366 0
	movb	$1, 10(%rbx)
	.loc 2 367 0
	movb	$6, 11(%rbx)
	.loc 2 368 0
	movb	$-128, 14(%rbx)
.LBB12:
.LBB13:
	.loc 2 279 0
	movb	$7, 4(%rbx)
	.loc 2 280 0
	movb	$0, 5(%rbx)
	.loc 2 281 0
	movb	$0, 6(%rbx)
	.loc 2 282 0
	movb	$2, 7(%rbx)
	.loc 2 283 0
	movb	$77, 76(%rbx)
	.loc 2 284 0
	movb	$3, 78(%rbx)
	.loc 2 285 0
	movb	$0, 79(%rbx)
	.loc 2 286 0
	movb	$10, 96(%rbx)
	.loc 2 287 0
	movb	$10, 97(%rbx)
	.loc 2 288 0
	movb	$11, 98(%rbx)
	.loc 2 289 0
	movb	$11, 99(%rbx)
	.loc 2 290 0
	movb	$2, 105(%rbx)
	.loc 2 291 0
	movb	$-128, 112(%rbx)
	.loc 2 292 0
	movb	$12, 118(%rbx)
	.loc 2 293 0
	movb	$12, 119(%rbx)
	.loc 2 294 0
	movb	$2, 120(%rbx)
	.loc 2 295 0
	movb	$0, 121(%rbx)
	.loc 2 296 0
	movb	$0, 128(%rbx)
	.loc 2 297 0
	movb	$0, 130(%rbx)
	.loc 2 298 0
	movb	$8, 160(%rbx)
	.loc 2 299 0
	movb	$0, 162(%rbx)
	.loc 2 300 0
	movb	$0, 163(%rbx)
	.loc 2 301 0
	movb	$0, 164(%rbx)
	.loc 2 302 0
	movb	$0, 165(%rbx)
	.loc 2 303 0
	movb	$0, 166(%rbx)
	.loc 2 304 0
	movb	$0, 167(%rbx)
.LBE13:
.LBE12:
	.loc 2 371 0
	movl	264(%rbx), %eax
.LBB14:
.LBB15:
	.loc 2 305 0
	movb	$15, 168(%rbx)
	.loc 2 306 0
	movb	$0, 170(%rbx)
	.loc 2 307 0
	movb	$0, 171(%rbx)
	.loc 2 308 0
	movb	$0, 172(%rbx)
	.loc 2 309 0
	movb	$0, 174(%rbx)
.LBE15:
.LBE14:
	.loc 2 372 0
	popq	%rbx
	ret
.LFE217:
	.size	piix4_init, .-piix4_init
	.local	isa_page_descs
	.comm	isa_page_descs,384,32
	.local	smm_enabled
	.comm	smm_enabled,1,1
	.local	pci_irq_levels
	.comm	pci_irq_levels,16,16
	.comm	piix3_dev,8,8
	.comm	piix4_dev,8,8
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
	.quad	.LFB194
	.quad	.LFE194-.LFB194
	.align 8
.LEFDE0:
.LSFDE2:
	.long	.LEFDE2-.LASFDE2
.LASFDE2:
	.long	.Lframe0
	.quad	.LFB195
	.quad	.LFE195-.LFB195
	.align 8
.LEFDE2:
.LSFDE4:
	.long	.LEFDE4-.LASFDE4
.LASFDE4:
	.long	.Lframe0
	.quad	.LFB196
	.quad	.LFE196-.LFB196
	.align 8
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.quad	.LFB197
	.quad	.LFE197-.LFB197
	.align 8
.LEFDE6:
.LSFDE8:
	.long	.LEFDE8-.LASFDE8
.LASFDE8:
	.long	.Lframe0
	.quad	.LFB198
	.quad	.LFE198-.LFB198
	.align 8
.LEFDE8:
.LSFDE10:
	.long	.LEFDE10-.LASFDE10
.LASFDE10:
	.long	.Lframe0
	.quad	.LFB199
	.quad	.LFE199-.LFB199
	.align 8
.LEFDE10:
.LSFDE12:
	.long	.LEFDE12-.LASFDE12
.LASFDE12:
	.long	.Lframe0
	.quad	.LFB200
	.quad	.LFE200-.LFB200
	.align 8
.LEFDE12:
.LSFDE14:
	.long	.LEFDE14-.LASFDE14
.LASFDE14:
	.long	.Lframe0
	.quad	.LFB201
	.quad	.LFE201-.LFB201
	.align 8
.LEFDE14:
.LSFDE16:
	.long	.LEFDE16-.LASFDE16
.LASFDE16:
	.long	.Lframe0
	.quad	.LFB202
	.quad	.LFE202-.LFB202
	.align 8
.LEFDE16:
.LSFDE18:
	.long	.LEFDE18-.LASFDE18
.LASFDE18:
	.long	.Lframe0
	.quad	.LFB203
	.quad	.LFE203-.LFB203
	.byte	0x4
	.long	.LCFI3-.LFB203
	.byte	0xe
	.uleb128 0x20
	.byte	0x86
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x4
	.byte	0x8c
	.uleb128 0x2
	.align 8
.LEFDE18:
.LSFDE20:
	.long	.LEFDE20-.LASFDE20
.LASFDE20:
	.long	.Lframe0
	.quad	.LFB204
	.quad	.LFE204-.LFB204
	.byte	0x4
	.long	.LCFI4-.LFB204
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
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
	.uleb128 0x20
	.align 8
.LEFDE20:
.LSFDE22:
	.long	.LEFDE22-.LASFDE22
.LASFDE22:
	.long	.Lframe0
	.quad	.LFB205
	.quad	.LFE205-.LFB205
	.align 8
.LEFDE22:
.LSFDE24:
	.long	.LEFDE24-.LASFDE24
.LASFDE24:
	.long	.Lframe0
	.quad	.LFB206
	.quad	.LFE206-.LFB206
	.byte	0x4
	.long	.LCFI7-.LFB206
	.byte	0xe
	.uleb128 0x10
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI8-.LCFI7
	.byte	0xe
	.uleb128 0x18
	.byte	0x86
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI9-.LCFI8
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x4
	.align 8
.LEFDE24:
.LSFDE26:
	.long	.LEFDE26-.LASFDE26
.LASFDE26:
	.long	.Lframe0
	.quad	.LFB207
	.quad	.LFE207-.LFB207
	.byte	0x4
	.long	.LCFI11-.LFB207
	.byte	0x86
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI12-.LCFI11
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE26:
.LSFDE28:
	.long	.LEFDE28-.LASFDE28
.LASFDE28:
	.long	.Lframe0
	.quad	.LFB208
	.quad	.LFE208-.LFB208
	.byte	0x4
	.long	.LCFI13-.LFB208
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI14-.LCFI13
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI15-.LCFI14
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE28:
.LSFDE30:
	.long	.LEFDE30-.LASFDE30
.LASFDE30:
	.long	.Lframe0
	.quad	.LFB209
	.quad	.LFE209-.LFB209
	.byte	0x4
	.long	.LCFI17-.LFB209
	.byte	0x86
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI19-.LCFI17
	.byte	0xe
	.uleb128 0x20
	.byte	0x8c
	.uleb128 0x2
	.align 8
.LEFDE30:
.LSFDE32:
	.long	.LEFDE32-.LASFDE32
.LASFDE32:
	.long	.Lframe0
	.quad	.LFB210
	.quad	.LFE210-.LFB210
	.byte	0x4
	.long	.LCFI20-.LFB210
	.byte	0xe
	.uleb128 0x10
	.byte	0x8d
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI21-.LCFI20
	.byte	0xe
	.uleb128 0x18
	.byte	0x8c
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI22-.LCFI21
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x4
	.align 8
.LEFDE32:
.LSFDE34:
	.long	.LEFDE34-.LASFDE34
.LASFDE34:
	.long	.Lframe0
	.quad	.LFB211
	.quad	.LFE211-.LFB211
	.align 8
.LEFDE34:
.LSFDE36:
	.long	.LEFDE36-.LASFDE36
.LASFDE36:
	.long	.Lframe0
	.quad	.LFB214
	.quad	.LFE214-.LFB214
	.align 8
.LEFDE36:
.LSFDE38:
	.long	.LEFDE38-.LASFDE38
.LASFDE38:
	.long	.Lframe0
	.quad	.LFB215
	.quad	.LFE215-.LFB215
	.align 8
.LEFDE38:
.LSFDE40:
	.long	.LEFDE40-.LASFDE40
.LASFDE40:
	.long	.Lframe0
	.quad	.LFB216
	.quad	.LFE216-.LFB216
	.byte	0x4
	.long	.LCFI23-.LFB216
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE40:
.LSFDE42:
	.long	.LEFDE42-.LASFDE42
.LASFDE42:
	.long	.Lframe0
	.quad	.LFB217
	.quad	.LFE217-.LFB217
	.byte	0x4
	.long	.LCFI24-.LFB217
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE42:
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
	.quad	.LFB194
	.quad	.LFE194-.LFB194
	.align 8
.LEFDE1:
.LSFDE3:
	.long	.LEFDE3-.LASFDE3
.LASFDE3:
	.long	.LASFDE3-.Lframe1
	.quad	.LFB195
	.quad	.LFE195-.LFB195
	.align 8
.LEFDE3:
.LSFDE5:
	.long	.LEFDE5-.LASFDE5
.LASFDE5:
	.long	.LASFDE5-.Lframe1
	.quad	.LFB196
	.quad	.LFE196-.LFB196
	.align 8
.LEFDE5:
.LSFDE7:
	.long	.LEFDE7-.LASFDE7
.LASFDE7:
	.long	.LASFDE7-.Lframe1
	.quad	.LFB197
	.quad	.LFE197-.LFB197
	.align 8
.LEFDE7:
.LSFDE9:
	.long	.LEFDE9-.LASFDE9
.LASFDE9:
	.long	.LASFDE9-.Lframe1
	.quad	.LFB198
	.quad	.LFE198-.LFB198
	.align 8
.LEFDE9:
.LSFDE11:
	.long	.LEFDE11-.LASFDE11
.LASFDE11:
	.long	.LASFDE11-.Lframe1
	.quad	.LFB199
	.quad	.LFE199-.LFB199
	.align 8
.LEFDE11:
.LSFDE13:
	.long	.LEFDE13-.LASFDE13
.LASFDE13:
	.long	.LASFDE13-.Lframe1
	.quad	.LFB200
	.quad	.LFE200-.LFB200
	.align 8
.LEFDE13:
.LSFDE15:
	.long	.LEFDE15-.LASFDE15
.LASFDE15:
	.long	.LASFDE15-.Lframe1
	.quad	.LFB201
	.quad	.LFE201-.LFB201
	.align 8
.LEFDE15:
.LSFDE17:
	.long	.LEFDE17-.LASFDE17
.LASFDE17:
	.long	.LASFDE17-.Lframe1
	.quad	.LFB202
	.quad	.LFE202-.LFB202
	.align 8
.LEFDE17:
.LSFDE19:
	.long	.LEFDE19-.LASFDE19
.LASFDE19:
	.long	.LASFDE19-.Lframe1
	.quad	.LFB203
	.quad	.LFE203-.LFB203
	.byte	0x4
	.long	.LCFI3-.LFB203
	.byte	0xe
	.uleb128 0x20
	.byte	0x86
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x4
	.byte	0x8c
	.uleb128 0x2
	.align 8
.LEFDE19:
.LSFDE21:
	.long	.LEFDE21-.LASFDE21
.LASFDE21:
	.long	.LASFDE21-.Lframe1
	.quad	.LFB204
	.quad	.LFE204-.LFB204
	.byte	0x4
	.long	.LCFI4-.LFB204
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
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
	.uleb128 0x20
	.align 8
.LEFDE21:
.LSFDE23:
	.long	.LEFDE23-.LASFDE23
.LASFDE23:
	.long	.LASFDE23-.Lframe1
	.quad	.LFB205
	.quad	.LFE205-.LFB205
	.align 8
.LEFDE23:
.LSFDE25:
	.long	.LEFDE25-.LASFDE25
.LASFDE25:
	.long	.LASFDE25-.Lframe1
	.quad	.LFB206
	.quad	.LFE206-.LFB206
	.byte	0x4
	.long	.LCFI7-.LFB206
	.byte	0xe
	.uleb128 0x10
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI8-.LCFI7
	.byte	0xe
	.uleb128 0x18
	.byte	0x86
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI9-.LCFI8
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x4
	.align 8
.LEFDE25:
.LSFDE27:
	.long	.LEFDE27-.LASFDE27
.LASFDE27:
	.long	.LASFDE27-.Lframe1
	.quad	.LFB207
	.quad	.LFE207-.LFB207
	.byte	0x4
	.long	.LCFI11-.LFB207
	.byte	0x86
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI12-.LCFI11
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE27:
.LSFDE29:
	.long	.LEFDE29-.LASFDE29
.LASFDE29:
	.long	.LASFDE29-.Lframe1
	.quad	.LFB208
	.quad	.LFE208-.LFB208
	.byte	0x4
	.long	.LCFI13-.LFB208
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI14-.LCFI13
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI15-.LCFI14
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE29:
.LSFDE31:
	.long	.LEFDE31-.LASFDE31
.LASFDE31:
	.long	.LASFDE31-.Lframe1
	.quad	.LFB209
	.quad	.LFE209-.LFB209
	.byte	0x4
	.long	.LCFI17-.LFB209
	.byte	0x86
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI19-.LCFI17
	.byte	0xe
	.uleb128 0x20
	.byte	0x8c
	.uleb128 0x2
	.align 8
.LEFDE31:
.LSFDE33:
	.long	.LEFDE33-.LASFDE33
.LASFDE33:
	.long	.LASFDE33-.Lframe1
	.quad	.LFB210
	.quad	.LFE210-.LFB210
	.byte	0x4
	.long	.LCFI20-.LFB210
	.byte	0xe
	.uleb128 0x10
	.byte	0x8d
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI21-.LCFI20
	.byte	0xe
	.uleb128 0x18
	.byte	0x8c
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI22-.LCFI21
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x4
	.align 8
.LEFDE33:
.LSFDE35:
	.long	.LEFDE35-.LASFDE35
.LASFDE35:
	.long	.LASFDE35-.Lframe1
	.quad	.LFB211
	.quad	.LFE211-.LFB211
	.align 8
.LEFDE35:
.LSFDE37:
	.long	.LEFDE37-.LASFDE37
.LASFDE37:
	.long	.LASFDE37-.Lframe1
	.quad	.LFB214
	.quad	.LFE214-.LFB214
	.align 8
.LEFDE37:
.LSFDE39:
	.long	.LEFDE39-.LASFDE39
.LASFDE39:
	.long	.LASFDE39-.Lframe1
	.quad	.LFB215
	.quad	.LFE215-.LFB215
	.align 8
.LEFDE39:
.LSFDE41:
	.long	.LEFDE41-.LASFDE41
.LASFDE41:
	.long	.LASFDE41-.Lframe1
	.quad	.LFB216
	.quad	.LFE216-.LFB216
	.byte	0x4
	.long	.LCFI23-.LFB216
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE41:
.LSFDE43:
	.long	.LEFDE43-.LASFDE43
.LASFDE43:
	.long	.LASFDE43-.Lframe1
	.quad	.LFB217
	.quad	.LFE217-.LFB217
	.byte	0x4
	.long	.LCFI24-.LFB217
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE43:
	.file 4 "/usr/include/stdint.h"
	.file 5 "../qemu-common.h"
	.file 6 "../argos-tag.h"
	.file 7 "../argos.h"
	.file 8 "/home/remco/Projects/Argos/src/hw/pci.h"
	.file 9 "/usr/include/stdio.h"
	.file 10 "/usr/include/libio.h"
	.file 11 "/usr/include/bits/types.h"
	.file 12 "/usr/lib/gcc/x86_64-linux-gnu/3.4.6/include/stddef.h"
	.file 13 "../cpu-all.h"
	.text
.Letext0:
	.section	.debug_info
	.long	0xeb1
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.Ldebug_line0
	.quad	.Letext0
	.quad	.Ltext0
	.long	.LASF131
	.byte	0x1
	.long	.LASF132
	.long	.LASF133
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
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x6
	.byte	0x8
	.long	0x69
	.uleb128 0x3
	.long	.LASF12
	.byte	0x8
	.byte	0x7
	.uleb128 0x7
	.long	0x276
	.long	.LASF43
	.byte	0xd8
	.byte	0x9
	.byte	0x2d
	.uleb128 0x8
	.long	.LASF13
	.byte	0xa
	.value	0x110
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF14
	.byte	0xa
	.value	0x115
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF15
	.byte	0xa
	.value	0x116
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.long	.LASF16
	.byte	0xa
	.value	0x117
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.long	.LASF17
	.byte	0xa
	.value	0x118
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x8
	.long	.LASF18
	.byte	0xa
	.value	0x119
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x8
	.long	.LASF19
	.byte	0xa
	.value	0x11a
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x8
	.long	.LASF20
	.byte	0xa
	.value	0x11b
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x8
	.long	.LASF21
	.byte	0xa
	.value	0x11c
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x8
	.long	.LASF22
	.byte	0xa
	.value	0x11e
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x8
	.long	.LASF23
	.byte	0xa
	.value	0x11f
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x8
	.long	.LASF24
	.byte	0xa
	.value	0x120
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x8
	.long	.LASF25
	.byte	0xa
	.value	0x122
	.long	0x2b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x8
	.long	.LASF26
	.byte	0xa
	.value	0x124
	.long	0x2ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x8
	.long	.LASF27
	.byte	0xa
	.value	0x126
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x8
	.long	.LASF28
	.byte	0xa
	.value	0x12a
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x8
	.long	.LASF29
	.byte	0xa
	.value	0x12c
	.long	0x85
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x8
	.long	.LASF30
	.byte	0xa
	.value	0x130
	.long	0x62
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x8
	.long	.LASF31
	.byte	0xa
	.value	0x131
	.long	0x77
	.byte	0x3
	.byte	0x23
	.uleb128 0x82
	.uleb128 0x8
	.long	.LASF32
	.byte	0xa
	.value	0x132
	.long	0x2c0
	.byte	0x3
	.byte	0x23
	.uleb128 0x83
	.uleb128 0x8
	.long	.LASF33
	.byte	0xa
	.value	0x136
	.long	0x2d0
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x8
	.long	.LASF34
	.byte	0xa
	.value	0x13f
	.long	0x90
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x8
	.long	.LASF35
	.byte	0xa
	.value	0x148
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x8
	.long	.LASF36
	.byte	0xa
	.value	0x149
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x8
	.long	.LASF37
	.byte	0xa
	.value	0x14a
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x8
	.long	.LASF38
	.byte	0xa
	.value	0x14b
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x8
	.long	.LASF39
	.byte	0xa
	.value	0x14c
	.long	0x2d
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x8
	.long	.LASF40
	.byte	0xa
	.value	0x14e
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x8
	.long	.LASF41
	.byte	0xa
	.value	0x150
	.long	0x2d6
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.byte	0x0
	.uleb128 0x9
	.long	.LASF42
	.byte	0xa
	.byte	0xb4
	.uleb128 0x7
	.long	0x2b4
	.long	.LASF44
	.byte	0x18
	.byte	0xa
	.byte	0xba
	.uleb128 0xa
	.long	.LASF45
	.byte	0xa
	.byte	0xbb
	.long	0x2b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF46
	.byte	0xa
	.byte	0xbc
	.long	0x2ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF47
	.byte	0xa
	.byte	0xc0
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x27d
	.uleb128 0x6
	.byte	0x8
	.long	0xaa
	.uleb128 0xb
	.long	0x2d0
	.long	0x69
	.uleb128 0xc
	.long	0x5b
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x276
	.uleb128 0xb
	.long	0x2e6
	.long	0x69
	.uleb128 0xc
	.long	0x5b
	.byte	0x13
	.byte	0x0
	.uleb128 0x2
	.long	.LASF48
	.byte	0x4
	.byte	0x31
	.long	0x70
	.uleb128 0x2
	.long	.LASF49
	.byte	0x4
	.byte	0x34
	.long	0x46
	.uleb128 0x3
	.long	.LASF50
	.byte	0x4
	.byte	0x4
	.uleb128 0x3
	.long	.LASF51
	.byte	0x8
	.byte	0x4
	.uleb128 0x3
	.long	.LASF52
	.byte	0x10
	.byte	0x4
	.uleb128 0x2
	.long	.LASF53
	.byte	0x7
	.byte	0x2f
	.long	0x2f1
	.uleb128 0x2
	.long	.LASF54
	.byte	0x7
	.byte	0x34
	.long	0x2f1
	.uleb128 0x7
	.long	0x350
	.long	.LASF55
	.byte	0x8
	.byte	0x6
	.byte	0x37
	.uleb128 0xa
	.long	.LASF56
	.byte	0x6
	.byte	0x38
	.long	0x311
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF57
	.byte	0x6
	.byte	0x39
	.long	0x31c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.long	.LASF58
	.byte	0x6
	.byte	0x3d
	.long	0x327
	.uleb128 0x6
	.byte	0x8
	.long	0x350
	.uleb128 0x6
	.byte	0x8
	.long	0x367
	.uleb128 0xd
	.long	0x2e6
	.uleb128 0x2
	.long	.LASF59
	.byte	0x5
	.byte	0x73
	.long	0x377
	.uleb128 0xe
	.long	.LASF59
	.byte	0x1
	.uleb128 0x2
	.long	.LASF60
	.byte	0x5
	.byte	0x78
	.long	0x388
	.uleb128 0xe
	.long	.LASF60
	.byte	0x1
	.uleb128 0x2
	.long	.LASF61
	.byte	0x5
	.byte	0x79
	.long	0x399
	.uleb128 0xf
	.long	0x43c
	.long	.LASF61
	.value	0x228
	.byte	0x5
	.byte	0x79
	.uleb128 0xa
	.long	.LASF62
	.byte	0x8
	.byte	0x2f
	.long	0x52b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.string	"bus"
	.byte	0x8
	.byte	0x32
	.long	0x53b
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0xa
	.long	.LASF63
	.byte	0x8
	.byte	0x33
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.uleb128 0xa
	.long	.LASF64
	.byte	0x8
	.byte	0x34
	.long	0x541
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.uleb128 0xa
	.long	.LASF65
	.byte	0x8
	.byte	0x35
	.long	0x551
	.byte	0x3
	.byte	0x23
	.uleb128 0x150
	.uleb128 0xa
	.long	.LASF66
	.byte	0x8
	.byte	0x38
	.long	0x561
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f8
	.uleb128 0xa
	.long	.LASF67
	.byte	0x8
	.byte	0x39
	.long	0x567
	.byte	0x3
	.byte	0x23
	.uleb128 0x200
	.uleb128 0xa
	.long	.LASF68
	.byte	0x8
	.byte	0x3b
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x208
	.uleb128 0x10
	.string	"irq"
	.byte	0x8
	.byte	0x3e
	.long	0x56d
	.byte	0x3
	.byte	0x23
	.uleb128 0x210
	.uleb128 0xa
	.long	.LASF69
	.byte	0x8
	.byte	0x41
	.long	0x573
	.byte	0x3
	.byte	0x23
	.uleb128 0x218
	.byte	0x0
	.uleb128 0x2
	.long	.LASF70
	.byte	0x5
	.byte	0x7b
	.long	0x447
	.uleb128 0x6
	.byte	0x8
	.long	0x44d
	.uleb128 0xe
	.long	.LASF71
	.byte	0x1
	.uleb128 0x6
	.byte	0x8
	.long	0x36c
	.uleb128 0x2
	.long	.LASF72
	.byte	0x8
	.byte	0xc
	.long	0x464
	.uleb128 0x11
	.long	0x47f
	.byte	0x1
	.uleb128 0x12
	.long	0x47f
	.uleb128 0x12
	.long	0x2f1
	.uleb128 0x12
	.long	0x2f1
	.uleb128 0x12
	.long	0x3f
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x38e
	.uleb128 0x2
	.long	.LASF73
	.byte	0x8
	.byte	0xe
	.long	0x490
	.uleb128 0x13
	.long	0x4aa
	.byte	0x1
	.long	0x2f1
	.uleb128 0x12
	.long	0x47f
	.uleb128 0x12
	.long	0x2f1
	.uleb128 0x12
	.long	0x3f
	.byte	0x0
	.uleb128 0x2
	.long	.LASF74
	.byte	0x8
	.byte	0x10
	.long	0x4b5
	.uleb128 0x11
	.long	0x4d5
	.byte	0x1
	.uleb128 0x12
	.long	0x47f
	.uleb128 0x12
	.long	0x3f
	.uleb128 0x12
	.long	0x2f1
	.uleb128 0x12
	.long	0x2f1
	.uleb128 0x12
	.long	0x3f
	.byte	0x0
	.uleb128 0x7
	.long	0x51a
	.long	.LASF75
	.byte	0x18
	.byte	0x8
	.byte	0x16
	.uleb128 0xa
	.long	.LASF76
	.byte	0x8
	.byte	0x17
	.long	0x2f1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF77
	.byte	0x8
	.byte	0x18
	.long	0x2f1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.long	.LASF78
	.byte	0x8
	.byte	0x19
	.long	0x2e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF79
	.byte	0x8
	.byte	0x1a
	.long	0x51a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x4aa
	.uleb128 0x2
	.long	.LASF75
	.byte	0x8
	.byte	0x1b
	.long	0x4d5
	.uleb128 0xb
	.long	0x53b
	.long	0x2e6
	.uleb128 0xc
	.long	0x5b
	.byte	0xff
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x37d
	.uleb128 0xb
	.long	0x551
	.long	0x69
	.uleb128 0xc
	.long	0x5b
	.byte	0x3f
	.byte	0x0
	.uleb128 0xb
	.long	0x561
	.long	0x520
	.uleb128 0xc
	.long	0x5b
	.byte	0x6
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x485
	.uleb128 0x6
	.byte	0x8
	.long	0x459
	.uleb128 0x6
	.byte	0x8
	.long	0x43c
	.uleb128 0xb
	.long	0x583
	.long	0x3f
	.uleb128 0xc
	.long	0x5b
	.byte	0x3
	.byte	0x0
	.uleb128 0x2
	.long	.LASF80
	.byte	0x2
	.byte	0x1d
	.long	0x2f1
	.uleb128 0x14
	.long	0x5b3
	.byte	0x10
	.byte	0x1
	.byte	0x1f
	.uleb128 0xa
	.long	.LASF81
	.byte	0x1
	.byte	0x1d
	.long	0x2f1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.string	"bus"
	.byte	0x1
	.byte	0x1e
	.long	0x53b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x2
	.long	.LASF82
	.byte	0x1
	.byte	0x1f
	.long	0x58e
	.uleb128 0x2
	.long	.LASF83
	.byte	0x2
	.byte	0x20
	.long	0x5b3
	.uleb128 0x15
	.long	0x618
	.long	.LASF85
	.byte	0x1
	.byte	0x22
	.byte	0x1
	.quad	.LFB194
	.quad	.LFE194
	.byte	0x1
	.byte	0x57
	.uleb128 0x16
	.long	.LASF84
	.byte	0x1
	.byte	0x21
	.long	0x9b
	.byte	0x1
	.byte	0x55
	.uleb128 0x16
	.long	.LASF76
	.byte	0x1
	.byte	0x21
	.long	0x583
	.byte	0x1
	.byte	0x50
	.uleb128 0x17
	.string	"val"
	.byte	0x1
	.byte	0x21
	.long	0x2f1
	.byte	0x1
	.byte	0x51
	.uleb128 0x18
	.string	"s"
	.byte	0x1
	.byte	0x23
	.long	0x618
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x5b3
	.uleb128 0x15
	.long	0x66d
	.long	.LASF86
	.byte	0x1
	.byte	0x29
	.byte	0x1
	.quad	.LFB195
	.quad	.LFE195
	.byte	0x1
	.byte	0x57
	.uleb128 0x16
	.long	.LASF84
	.byte	0x1
	.byte	0x28
	.long	0x9b
	.byte	0x1
	.byte	0x55
	.uleb128 0x16
	.long	.LASF76
	.byte	0x1
	.byte	0x28
	.long	0x583
	.byte	0x1
	.byte	0x50
	.uleb128 0x17
	.string	"val"
	.byte	0x1
	.byte	0x28
	.long	0x2f1
	.byte	0x1
	.byte	0x51
	.uleb128 0x18
	.string	"s"
	.byte	0x1
	.byte	0x2a
	.long	0x618
	.byte	0x0
	.uleb128 0x15
	.long	0x6bc
	.long	.LASF87
	.byte	0x1
	.byte	0x33
	.byte	0x1
	.quad	.LFB196
	.quad	.LFE196
	.byte	0x1
	.byte	0x57
	.uleb128 0x16
	.long	.LASF84
	.byte	0x1
	.byte	0x32
	.long	0x9b
	.byte	0x1
	.byte	0x55
	.uleb128 0x16
	.long	.LASF76
	.byte	0x1
	.byte	0x32
	.long	0x583
	.byte	0x1
	.byte	0x54
	.uleb128 0x17
	.string	"val"
	.byte	0x1
	.byte	0x32
	.long	0x2f1
	.byte	0x1
	.byte	0x51
	.uleb128 0x18
	.string	"s"
	.byte	0x1
	.byte	0x34
	.long	0x618
	.byte	0x0
	.uleb128 0x19
	.long	0x70d
	.long	.LASF88
	.byte	0x1
	.byte	0x3e
	.byte	0x1
	.long	0x2f1
	.quad	.LFB197
	.quad	.LFE197
	.byte	0x1
	.byte	0x57
	.uleb128 0x16
	.long	.LASF84
	.byte	0x1
	.byte	0x3c
	.long	0x9b
	.byte	0x1
	.byte	0x55
	.uleb128 0x16
	.long	.LASF76
	.byte	0x1
	.byte	0x3c
	.long	0x583
	.byte	0x1
	.byte	0x50
	.uleb128 0x17
	.string	"t"
	.byte	0x1
	.byte	0x3d
	.long	0x35b
	.byte	0x1
	.byte	0x51
	.uleb128 0x18
	.string	"s"
	.byte	0x1
	.byte	0x3f
	.long	0x618
	.byte	0x0
	.uleb128 0x19
	.long	0x769
	.long	.LASF89
	.byte	0x1
	.byte	0x47
	.byte	0x1
	.long	0x2f1
	.quad	.LFB198
	.quad	.LFE198
	.byte	0x1
	.byte	0x57
	.uleb128 0x16
	.long	.LASF84
	.byte	0x1
	.byte	0x45
	.long	0x9b
	.byte	0x1
	.byte	0x55
	.uleb128 0x16
	.long	.LASF76
	.byte	0x1
	.byte	0x45
	.long	0x583
	.byte	0x1
	.byte	0x50
	.uleb128 0x17
	.string	"t"
	.byte	0x1
	.byte	0x46
	.long	0x35b
	.byte	0x1
	.byte	0x51
	.uleb128 0x18
	.string	"s"
	.byte	0x1
	.byte	0x48
	.long	0x618
	.uleb128 0x18
	.string	"val"
	.byte	0x1
	.byte	0x49
	.long	0x2f1
	.byte	0x0
	.uleb128 0x19
	.long	0x7c5
	.long	.LASF90
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.long	0x2f1
	.quad	.LFB199
	.quad	.LFE199
	.byte	0x1
	.byte	0x57
	.uleb128 0x16
	.long	.LASF84
	.byte	0x1
	.byte	0x53
	.long	0x9b
	.byte	0x1
	.byte	0x55
	.uleb128 0x16
	.long	.LASF76
	.byte	0x1
	.byte	0x53
	.long	0x583
	.byte	0x1
	.byte	0x50
	.uleb128 0x17
	.string	"t"
	.byte	0x1
	.byte	0x54
	.long	0x35b
	.byte	0x1
	.byte	0x51
	.uleb128 0x18
	.string	"s"
	.byte	0x1
	.byte	0x56
	.long	0x618
	.uleb128 0x18
	.string	"val"
	.byte	0x1
	.byte	0x57
	.long	0x2f1
	.byte	0x0
	.uleb128 0x15
	.long	0x814
	.long	.LASF91
	.byte	0x2
	.byte	0x23
	.byte	0x1
	.quad	.LFB200
	.quad	.LFE200
	.byte	0x1
	.byte	0x57
	.uleb128 0x16
	.long	.LASF84
	.byte	0x2
	.byte	0x22
	.long	0x9b
	.byte	0x1
	.byte	0x55
	.uleb128 0x16
	.long	.LASF76
	.byte	0x2
	.byte	0x22
	.long	0x2f1
	.byte	0x1
	.byte	0x54
	.uleb128 0x17
	.string	"val"
	.byte	0x2
	.byte	0x22
	.long	0x2f1
	.byte	0x1
	.byte	0x51
	.uleb128 0x18
	.string	"s"
	.byte	0x2
	.byte	0x24
	.long	0x814
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x5be
	.uleb128 0x19
	.long	0x86b
	.long	.LASF92
	.byte	0x2
	.byte	0x29
	.byte	0x1
	.long	0x2f1
	.quad	.LFB201
	.quad	.LFE201
	.byte	0x1
	.byte	0x57
	.uleb128 0x16
	.long	.LASF84
	.byte	0x2
	.byte	0x28
	.long	0x9b
	.byte	0x1
	.byte	0x55
	.uleb128 0x16
	.long	.LASF76
	.byte	0x2
	.byte	0x28
	.long	0x2f1
	.byte	0x1
	.byte	0x54
	.uleb128 0x17
	.string	"t"
	.byte	0x2
	.byte	0x28
	.long	0x35b
	.byte	0x1
	.byte	0x51
	.uleb128 0x18
	.string	"s"
	.byte	0x2
	.byte	0x2a
	.long	0x814
	.byte	0x0
	.uleb128 0x19
	.long	0x8b3
	.long	.LASF93
	.byte	0x2
	.byte	0x34
	.byte	0x1
	.long	0x3f
	.quad	.LFB202
	.quad	.LFE202
	.byte	0x1
	.byte	0x57
	.uleb128 0x16
	.long	.LASF94
	.byte	0x2
	.byte	0x33
	.long	0x47f
	.byte	0x1
	.byte	0x55
	.uleb128 0x16
	.long	.LASF95
	.byte	0x2
	.byte	0x33
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x1a
	.long	.LASF96
	.byte	0x2
	.byte	0x35
	.long	0x3f
	.byte	0x0
	.uleb128 0x15
	.long	0x90f
	.long	.LASF97
	.byte	0x2
	.byte	0x3f
	.byte	0x1
	.quad	.LFB203
	.quad	.LFE203
	.byte	0x1
	.byte	0x57
	.uleb128 0x17
	.string	"d"
	.byte	0x2
	.byte	0x3e
	.long	0x47f
	.byte	0x1
	.byte	0x55
	.uleb128 0x16
	.long	.LASF98
	.byte	0x2
	.byte	0x3e
	.long	0x2f1
	.byte	0x1
	.byte	0x50
	.uleb128 0x17
	.string	"end"
	.byte	0x2
	.byte	0x3e
	.long	0x2f1
	.byte	0x1
	.byte	0x5c
	.uleb128 0x17
	.string	"r"
	.byte	0x2
	.byte	0x3e
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x1b
	.long	.LASF76
	.byte	0x2
	.byte	0x40
	.long	0x2f1
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x15
	.long	0x967
	.long	.LASF99
	.byte	0x2
	.byte	0x5a
	.byte	0x1
	.quad	.LFB204
	.quad	.LFE204
	.byte	0x1
	.byte	0x57
	.uleb128 0x17
	.string	"d"
	.byte	0x2
	.byte	0x59
	.long	0x47f
	.byte	0x1
	.byte	0x56
	.uleb128 0x1c
	.string	"i"
	.byte	0x2
	.byte	0x5b
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.uleb128 0x18
	.string	"r"
	.byte	0x2
	.byte	0x5b
	.long	0x3f
	.uleb128 0x1b
	.long	.LASF100
	.byte	0x2
	.byte	0x5c
	.long	0x2f1
	.byte	0x1
	.byte	0x50
	.uleb128 0x1b
	.long	.LASF76
	.byte	0x2
	.byte	0x5c
	.long	0x2f1
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x1d
	.long	0x99f
	.byte	0x1
	.long	.LASF101
	.byte	0x2
	.byte	0x6f
	.byte	0x1
	.quad	.LFB205
	.quad	.LFE205
	.byte	0x1
	.byte	0x57
	.uleb128 0x17
	.string	"d"
	.byte	0x2
	.byte	0x6e
	.long	0x47f
	.byte	0x1
	.byte	0x55
	.uleb128 0x17
	.string	"val"
	.byte	0x2
	.byte	0x6e
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0x1d
	.long	0x9d5
	.byte	0x1
	.long	.LASF102
	.byte	0x2
	.byte	0x7c
	.byte	0x1
	.quad	.LFB206
	.quad	.LFE206
	.byte	0x1
	.byte	0x57
	.uleb128 0x17
	.string	"d"
	.byte	0x2
	.byte	0x7b
	.long	0x47f
	.byte	0x1
	.byte	0x55
	.uleb128 0x1c
	.string	"i"
	.byte	0x2
	.byte	0x7d
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.byte	0x0
	.uleb128 0x15
	.long	0xa26
	.long	.LASF103
	.byte	0x2
	.byte	0x85
	.byte	0x1
	.quad	.LFB207
	.quad	.LFE207
	.byte	0x1
	.byte	0x57
	.uleb128 0x17
	.string	"d"
	.byte	0x2
	.byte	0x83
	.long	0x47f
	.byte	0x1
	.byte	0x56
	.uleb128 0x16
	.long	.LASF104
	.byte	0x2
	.byte	0x84
	.long	0x2f1
	.byte	0x1
	.byte	0x53
	.uleb128 0x17
	.string	"val"
	.byte	0x2
	.byte	0x84
	.long	0x2f1
	.byte	0x1
	.byte	0x51
	.uleb128 0x17
	.string	"len"
	.byte	0x2
	.byte	0x84
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.uleb128 0x15
	.long	0xa91
	.long	.LASF105
	.byte	0x2
	.byte	0x8d
	.byte	0x1
	.quad	.LFB208
	.quad	.LFE208
	.byte	0x1
	.byte	0x57
	.uleb128 0x17
	.string	"f"
	.byte	0x2
	.byte	0x8c
	.long	0x453
	.byte	0x1
	.byte	0x56
	.uleb128 0x16
	.long	.LASF84
	.byte	0x2
	.byte	0x8c
	.long	0x9b
	.byte	0x1
	.byte	0x55
	.uleb128 0x18
	.string	"d"
	.byte	0x2
	.byte	0x8e
	.long	0x47f
	.uleb128 0x1c
	.string	"i"
	.byte	0x2
	.byte	0x8f
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.uleb128 0x1e
	.long	0xa91
	.quad	.LBB2
	.quad	.LBE2
	.uleb128 0x1f
	.long	0xa9e
	.uleb128 0x1f
	.long	0xaa7
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
	.long	0xab2
	.long	.LASF106
	.byte	0x3
	.byte	0x29
	.byte	0x1
	.byte	0x3
	.uleb128 0x21
	.string	"f"
	.byte	0x3
	.byte	0x28
	.long	0x453
	.uleb128 0x21
	.string	"pv"
	.byte	0x3
	.byte	0x28
	.long	0x361
	.byte	0x0
	.uleb128 0x19
	.long	0xb3b
	.long	.LASF107
	.byte	0x2
	.byte	0x99
	.byte	0x1
	.long	0x3f
	.quad	.LFB209
	.quad	.LFE209
	.byte	0x1
	.byte	0x57
	.uleb128 0x17
	.string	"f"
	.byte	0x2
	.byte	0x98
	.long	0x453
	.byte	0x1
	.byte	0x5c
	.uleb128 0x16
	.long	.LASF84
	.byte	0x2
	.byte	0x98
	.long	0x9b
	.byte	0x1
	.byte	0x53
	.uleb128 0x16
	.long	.LASF108
	.byte	0x2
	.byte	0x98
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.uleb128 0x18
	.string	"d"
	.byte	0x2
	.byte	0x9a
	.long	0x47f
	.uleb128 0x1c
	.string	"ret"
	.byte	0x2
	.byte	0x9b
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.uleb128 0x1c
	.string	"i"
	.byte	0x2
	.byte	0x9b
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.uleb128 0x1e
	.long	0xb3b
	.quad	.LBB4
	.quad	.LBE4
	.uleb128 0x1f
	.long	0xb48
	.uleb128 0x1f
	.long	0xb51
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
	.long	0xb5c
	.long	.LASF109
	.byte	0x3
	.byte	0x3d
	.byte	0x1
	.byte	0x3
	.uleb128 0x21
	.string	"f"
	.byte	0x3
	.byte	0x3c
	.long	0x453
	.uleb128 0x21
	.string	"pv"
	.byte	0x3
	.byte	0x3c
	.long	0xb5c
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x2e6
	.uleb128 0x22
	.long	0xbc1
	.byte	0x1
	.long	.LASF110
	.byte	0x2
	.byte	0xad
	.byte	0x1
	.long	0x53b
	.quad	.LFB210
	.quad	.LFE210
	.byte	0x1
	.byte	0x57
	.uleb128 0x16
	.long	.LASF111
	.byte	0x2
	.byte	0xac
	.long	0xbc1
	.byte	0x1
	.byte	0x5d
	.uleb128 0x17
	.string	"pic"
	.byte	0x2
	.byte	0xac
	.long	0x56d
	.byte	0x1
	.byte	0x5c
	.uleb128 0x1c
	.string	"b"
	.byte	0x2
	.byte	0xae
	.long	0x53b
	.byte	0x1
	.byte	0x5c
	.uleb128 0x1c
	.string	"d"
	.byte	0x2
	.byte	0xaf
	.long	0x47f
	.byte	0x1
	.byte	0x53
	.uleb128 0x1c
	.string	"s"
	.byte	0x2
	.byte	0xb0
	.long	0x814
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x47f
	.uleb128 0x15
	.long	0xc32
	.long	.LASF112
	.byte	0x2
	.byte	0xdc
	.byte	0x1
	.quad	.LFB211
	.quad	.LFE211
	.byte	0x1
	.byte	0x57
	.uleb128 0x17
	.string	"pic"
	.byte	0x2
	.byte	0xdb
	.long	0x56d
	.byte	0x1
	.byte	0x55
	.uleb128 0x16
	.long	.LASF95
	.byte	0x2
	.byte	0xdb
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x16
	.long	.LASF113
	.byte	0x2
	.byte	0xdb
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x1c
	.string	"i"
	.byte	0x2
	.byte	0xdd
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x1b
	.long	.LASF114
	.byte	0x2
	.byte	0xdd
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x1b
	.long	.LASF115
	.byte	0x2
	.byte	0xdd
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0x23
	.long	0xc76
	.long	.LASF116
	.byte	0x2
	.value	0x139
	.byte	0x1
	.quad	.LFB214
	.quad	.LFE214
	.byte	0x1
	.byte	0x57
	.uleb128 0x24
	.string	"f"
	.byte	0x2
	.value	0x138
	.long	0x453
	.byte	0x1
	.byte	0x55
	.uleb128 0x25
	.long	.LASF84
	.byte	0x2
	.value	0x138
	.long	0x9b
	.byte	0x1
	.byte	0x50
	.uleb128 0x26
	.string	"d"
	.byte	0x2
	.value	0x13a
	.long	0x47f
	.byte	0x0
	.uleb128 0x27
	.long	0xccc
	.long	.LASF117
	.byte	0x2
	.value	0x13f
	.byte	0x1
	.long	0x3f
	.quad	.LFB215
	.quad	.LFE215
	.byte	0x1
	.byte	0x57
	.uleb128 0x24
	.string	"f"
	.byte	0x2
	.value	0x13e
	.long	0x453
	.byte	0x1
	.byte	0x55
	.uleb128 0x25
	.long	.LASF84
	.byte	0x2
	.value	0x13e
	.long	0x9b
	.byte	0x1
	.byte	0x50
	.uleb128 0x25
	.long	.LASF108
	.byte	0x2
	.value	0x13e
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x26
	.string	"d"
	.byte	0x2
	.value	0x140
	.long	0x47f
	.byte	0x0
	.uleb128 0x28
	.long	0xd4b
	.byte	0x1
	.long	.LASF118
	.byte	0x2
	.value	0x147
	.byte	0x1
	.long	0x3f
	.quad	.LFB216
	.quad	.LFE216
	.byte	0x1
	.byte	0x57
	.uleb128 0x24
	.string	"bus"
	.byte	0x2
	.value	0x146
	.long	0x53b
	.byte	0x1
	.byte	0x55
	.uleb128 0x25
	.long	.LASF63
	.byte	0x2
	.value	0x146
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x29
	.string	"d"
	.byte	0x2
	.value	0x148
	.long	0x47f
	.byte	0x1
	.byte	0x53
	.uleb128 0x2a
	.long	.LASF119
	.byte	0x2
	.value	0x149
	.long	0xb5c
	.uleb128 0x1e
	.long	0xd4b
	.quad	.LBB8
	.quad	.LBE8
	.uleb128 0x1f
	.long	0xd58
	.uleb128 0x2b
	.long	.Ldebug_ranges0+0x0
	.uleb128 0x2c
	.long	0xd61
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
	.long	0xd6d
	.long	.LASF120
	.byte	0x2
	.byte	0xf2
	.byte	0x1
	.byte	0x1
	.uleb128 0x21
	.string	"d"
	.byte	0x2
	.byte	0xf1
	.long	0x47f
	.uleb128 0x1a
	.long	.LASF119
	.byte	0x2
	.byte	0xf3
	.long	0xb5c
	.byte	0x0
	.uleb128 0x28
	.long	0xdec
	.byte	0x1
	.long	.LASF121
	.byte	0x2
	.value	0x15f
	.byte	0x1
	.long	0x3f
	.quad	.LFB217
	.quad	.LFE217
	.byte	0x1
	.byte	0x57
	.uleb128 0x24
	.string	"bus"
	.byte	0x2
	.value	0x15e
	.long	0x53b
	.byte	0x1
	.byte	0x55
	.uleb128 0x25
	.long	.LASF63
	.byte	0x2
	.value	0x15e
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x29
	.string	"d"
	.byte	0x2
	.value	0x160
	.long	0x47f
	.byte	0x1
	.byte	0x53
	.uleb128 0x2a
	.long	.LASF119
	.byte	0x2
	.value	0x161
	.long	0xb5c
	.uleb128 0x1e
	.long	0xdec
	.quad	.LBB12
	.quad	.LBE12
	.uleb128 0x1f
	.long	0xdfa
	.uleb128 0x2b
	.long	.Ldebug_ranges0+0x30
	.uleb128 0x2c
	.long	0xe04
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.long	0xe11
	.long	.LASF122
	.byte	0x2
	.value	0x114
	.byte	0x1
	.byte	0x1
	.uleb128 0x2e
	.string	"d"
	.byte	0x2
	.value	0x113
	.long	0x47f
	.uleb128 0x2a
	.long	.LASF119
	.byte	0x2
	.value	0x115
	.long	0xb5c
	.byte	0x0
	.uleb128 0x2f
	.long	.LASF123
	.byte	0x9
	.byte	0x91
	.long	0x2ba
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.long	.LASF124
	.byte	0x9
	.byte	0x92
	.long	0x2ba
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.long	.LASF125
	.byte	0xd
	.value	0x376
	.long	0xb5c
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0xe49
	.long	0x2f1
	.uleb128 0xc
	.long	0x5b
	.byte	0x5f
	.byte	0x0
	.uleb128 0x1b
	.long	.LASF126
	.byte	0x2
	.byte	0x3a
	.long	0xe39
	.byte	0x9
	.byte	0x3
	.quad	isa_page_descs
	.uleb128 0x1b
	.long	.LASF127
	.byte	0x2
	.byte	0x3b
	.long	0x2e6
	.byte	0x9
	.byte	0x3
	.quad	smm_enabled
	.uleb128 0x1b
	.long	.LASF128
	.byte	0x2
	.byte	0x3c
	.long	0x573
	.byte	0x9
	.byte	0x3
	.quad	pci_irq_levels
	.uleb128 0x31
	.long	.LASF129
	.byte	0x2
	.byte	0xd5
	.long	0x47f
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	piix3_dev
	.uleb128 0x31
	.long	.LASF130
	.byte	0x2
	.byte	0xd6
	.long	0x47f
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	piix4_dev
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
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0xc
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
	.uleb128 0x5
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
	.uleb128 0x11
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x27
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
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
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x20
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.uleb128 0x34
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.long	0x8b
	.value	0x2
	.long	.Ldebug_info0
	.long	0xeb5
	.long	0x967
	.string	"i440fx_set_smm"
	.long	0x99f
	.string	"i440fx_init_memory_mappings"
	.long	0xb62
	.string	"i440fx_init"
	.long	0xccc
	.string	"piix3_init"
	.long	0xd6d
	.string	"piix4_init"
	.long	0xe88
	.string	"piix3_dev"
	.long	0xe9e
	.string	"piix4_dev"
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
	.quad	.LBB9-.Ltext0
	.quad	.LBE9-.Ltext0
	.quad	.LBB11-.Ltext0
	.quad	.LBE11-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB13-.Ltext0
	.quad	.LBE13-.Ltext0
	.quad	.LBB15-.Ltext0
	.quad	.LBE15-.Ltext0
	.quad	0x0
	.quad	0x0
	.section	.debug_str,"MS",@progbits,1
.LASF5:
	.string	"char"
.LASF9:
	.string	"size_t"
.LASF83:
	.string	"I440FXState"
.LASF24:
	.string	"_IO_save_end"
.LASF111:
	.string	"pi440fx_state"
.LASF17:
	.string	"_IO_write_base"
.LASF33:
	.string	"_lock"
.LASF22:
	.string	"_IO_save_base"
.LASF87:
	.string	"pci_host_data_writel"
.LASF30:
	.string	"_cur_column"
.LASF101:
	.string	"i440fx_set_smm"
.LASF98:
	.string	"start"
.LASF40:
	.string	"_mode"
.LASF119:
	.string	"pci_conf"
.LASF73:
	.string	"PCIConfigReadFunc"
.LASF2:
	.string	"long int"
.LASF88:
	.string	"pci_host_data_readb"
.LASF44:
	.string	"_IO_marker"
.LASF57:
	.string	"netidx"
.LASF84:
	.string	"opaque"
.LASF4:
	.string	"short unsigned int"
.LASF89:
	.string	"pci_host_data_readw"
.LASF85:
	.string	"pci_host_data_writeb"
.LASF69:
	.string	"irq_state"
.LASF108:
	.string	"version_id"
.LASF86:
	.string	"pci_host_data_writew"
.LASF90:
	.string	"pci_host_data_readl"
.LASF71:
	.string	"IRQState"
.LASF7:
	.string	"signed char"
.LASF43:
	.string	"_IO_FILE"
.LASF6:
	.string	"unsigned char"
.LASF58:
	.string	"argos_rtag_t"
.LASF55:
	.string	"argos_rtag"
.LASF95:
	.string	"irq_num"
.LASF63:
	.string	"devfn"
.LASF42:
	.string	"_IO_lock_t"
.LASF59:
	.string	"QEMUFile"
.LASF94:
	.string	"pci_dev"
.LASF62:
	.string	"config"
.LASF121:
	.string	"piix4_init"
.LASF53:
	.string	"argos_paddr_t"
.LASF14:
	.string	"_IO_read_ptr"
.LASF51:
	.string	"double"
.LASF47:
	.string	"_pos"
.LASF123:
	.string	"stdin"
.LASF79:
	.string	"map_func"
.LASF97:
	.string	"update_pam"
.LASF61:
	.string	"PCIDevice"
.LASF116:
	.string	"piix_save"
.LASF72:
	.string	"PCIConfigWriteFunc"
.LASF25:
	.string	"_markers"
.LASF93:
	.string	"pci_slot_get_pirq"
.LASF96:
	.string	"slot_addend"
.LASF81:
	.string	"config_reg"
.LASF132:
	.string	"/home/remco/Projects/Argos/src/hw/piix_pci.c"
.LASF41:
	.string	"_unused2"
.LASF80:
	.string	"pci_addr_t"
.LASF127:
	.string	"smm_enabled"
.LASF28:
	.string	"_flags2"
.LASF16:
	.string	"_IO_read_base"
.LASF92:
	.string	"i440fx_addr_readl"
.LASF106:
	.string	"qemu_put_8s"
.LASF107:
	.string	"i440fx_load"
.LASF29:
	.string	"_old_offset"
.LASF99:
	.string	"i440fx_update_memory_mappings"
.LASF105:
	.string	"i440fx_save"
.LASF3:
	.string	"long long int"
.LASF103:
	.string	"i440fx_write_config"
.LASF100:
	.string	"smram"
.LASF19:
	.string	"_IO_write_end"
.LASF133:
	.string	"/home/remco/Projects/Argos/src/i386-softmmu"
.LASF76:
	.string	"addr"
.LASF114:
	.string	"pic_irq"
.LASF20:
	.string	"_IO_buf_base"
.LASF45:
	.string	"_next"
.LASF1:
	.string	"unsigned int"
.LASF131:
	.string	"GNU C 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
.LASF75:
	.string	"PCIIORegion"
.LASF109:
	.string	"qemu_get_8s"
.LASF54:
	.string	"argos_netidx_t"
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
.LASF118:
	.string	"piix3_init"
.LASF68:
	.string	"irq_index"
.LASF13:
	.string	"_flags"
.LASF128:
	.string	"pci_irq_levels"
.LASF104:
	.string	"address"
.LASF67:
	.string	"config_write"
.LASF66:
	.string	"config_read"
.LASF78:
	.string	"type"
.LASF115:
	.string	"pic_level"
.LASF52:
	.string	"long double"
.LASF110:
	.string	"i440fx_init"
.LASF82:
	.string	"PCIHostState"
.LASF102:
	.string	"i440fx_init_memory_mappings"
.LASF34:
	.string	"_offset"
.LASF91:
	.string	"i440fx_addr_writel"
.LASF77:
	.string	"size"
.LASF12:
	.string	"long long unsigned int"
.LASF129:
	.string	"piix3_dev"
.LASF48:
	.string	"uint8_t"
.LASF10:
	.string	"__off_t"
.LASF26:
	.string	"_chain"
.LASF0:
	.string	"long unsigned int"
.LASF112:
	.string	"piix3_set_irq"
.LASF60:
	.string	"PCIBus"
.LASF23:
	.string	"_IO_backup_base"
.LASF32:
	.string	"_shortbuf"
.LASF11:
	.string	"__off64_t"
.LASF21:
	.string	"_IO_buf_end"
.LASF64:
	.string	"name"
.LASF8:
	.string	"short int"
.LASF125:
	.string	"phys_ram_dirty"
.LASF31:
	.string	"_vtable_offset"
.LASF120:
	.string	"piix3_reset"
.LASF15:
	.string	"_IO_read_end"
.LASF65:
	.string	"io_regions"
.LASF49:
	.string	"uint32_t"
.LASF122:
	.string	"piix4_reset"
.LASF27:
	.string	"_fileno"
.LASF113:
	.string	"level"
.LASF74:
	.string	"PCIMapIORegionFunc"
.LASF117:
	.string	"piix_load"
.LASF50:
	.string	"float"
.LASF124:
	.string	"stdout"
.LASF18:
	.string	"_IO_write_ptr"
.LASF130:
	.string	"piix4_dev"
.LASF56:
	.string	"origin"
.LASF126:
	.string	"isa_page_descs"
.LASF70:
	.string	"qemu_irq"
	.section	.note.GNU-stack,"",@progbits
	.ident	"GCC: (GNU) 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
