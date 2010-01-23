	.file	"pc.c"
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
	.string	"isapc"
.LC1:
	.string	"ISA-only PC"
.globl isapc_machine
	.data
	.align 32
	.type	isapc_machine, @object
	.size	isapc_machine, 32
isapc_machine:
	.quad	.LC0
	.quad	.LC1
	.quad	pc_init_isa
	.zero	8
	.section	.rodata.str1.1
.LC2:
	.string	"pc"
.LC3:
	.string	"Standard PC"
.globl pc_machine
	.data
	.align 32
	.type	pc_machine, @object
	.size	pc_machine, 32
pc_machine:
	.quad	.LC2
	.quad	.LC3
	.quad	pc_init_pci
	.zero	8
	.section	.rodata
	.align 4
	.type	ide_irq, @object
	.size	ide_irq, 8
ide_irq:
	.long	14
	.long	15
	.align 4
	.type	ide_iobase2, @object
	.size	ide_iobase2, 8
ide_iobase2:
	.long	1014
	.long	886
	.align 4
	.type	ide_iobase, @object
	.size	ide_iobase, 8
ide_iobase:
	.long	496
	.long	368
	.data
	.align 16
	.type	serial_irq, @object
	.size	serial_irq, 16
serial_irq:
	.long	4
	.long	3
	.long	4
	.long	3
	.align 16
	.type	serial_io, @object
	.size	serial_io, 16
serial_io:
	.long	1016
	.long	760
	.long	1000
	.long	744
	.align 16
	.type	ne2000_irq, @object
	.size	ne2000_irq, 24
ne2000_irq:
	.long	9
	.long	10
	.long	11
	.long	3
	.long	4
	.long	5
	.align 16
	.type	ne2000_io, @object
	.size	ne2000_io, 24
ne2000_io:
	.long	768
	.long	800
	.long	832
	.long	864
	.long	640
	.long	896
	.text
	.p2align 4,,15
	.type	ioport80_write, @function
ioport80_write:
.LFB195:
	.file 1 "/home/remco/Projects/Argos/src/hw/pc.c"
	.loc 1 56 0
	.loc 1 56 0
	rep ; ret
.LFE195:
	.size	ioport80_write, .-ioport80_write
	.p2align 4,,15
.globl cpu_set_ferr
	.type	cpu_set_ferr, @function
cpu_set_ferr:
.LFB196:
	.loc 1 63 0
.LBB2:
	.file 2 "/home/remco/Projects/Argos/src/hw/irq.h"
	.loc 2 13 0
	movq	ferr_irq(%rip), %rdi
.LBB3:
	.loc 2 14 0
	movl	$1, %esi
	jmp	qemu_set_irq
.LBE3:
.LBE2:
.LFE196:
	.size	cpu_set_ferr, .-cpu_set_ferr
	.p2align 4,,15
	.type	ioportF0_write, @function
ioportF0_write:
.LFB197:
	.loc 1 68 0
.LBB4:
	.loc 2 18 0
	movq	ferr_irq(%rip), %rdi
.LBB5:
	.loc 2 19 0
	xorl	%esi, %esi
	jmp	qemu_set_irq
.LBE5:
.LBE4:
.LFE197:
	.size	ioportF0_write, .-ioportF0_write
	.p2align 4,,15
.globl cpu_get_tsc
	.type	cpu_get_tsc, @function
cpu_get_tsc:
.LFB198:
	.loc 1 74 0
	.loc 1 84 0
	jmp	cpu_get_ticks
.LFE198:
	.size	cpu_get_tsc, .-cpu_get_tsc
	.p2align 4,,15
.globl cpu_smm_update
	.type	cpu_smm_update, @function
cpu_smm_update:
.LFB199:
	.loc 1 90 0
	.loc 1 91 0
	movq	i440fx_state(%rip), %rax
	testq	%rax, %rax
	je	.L7
	cmpq	first_cpu(%rip), %rdi
	je	.L10
.L7:
	rep ; ret
.L10:
	.loc 1 92 0
	movl	352(%rdi), %esi
	movq	%rax, %rdi
	shrl	$19, %esi
	andl	$1, %esi
	jmp	i440fx_set_smm
.LFE199:
	.size	cpu_smm_update, .-cpu_smm_update
	.p2align 4,,15
.globl cpu_get_pic_interrupt
	.type	cpu_get_pic_interrupt, @function
cpu_get_pic_interrupt:
.LFB200:
	.loc 1 98 0
	movq	%rbx, -16(%rsp)
.LCFI0:
	movq	%rbp, -8(%rsp)
.LCFI1:
	subq	$24, %rsp
.LCFI2:
	.loc 1 98 0
	movq	%rdi, %rbp
	.loc 1 101 0
	call	apic_get_interrupt
	.loc 1 102 0
	testl	%eax, %eax
	.loc 1 101 0
	movl	%eax, %ebx
	.loc 1 102 0
	js	.L12
	.loc 1 105 0
	movq	isa_pic(%rip), %rdi
	call	pic_update_irq
	.loc 1 106 0
	movl	%ebx, %edx
.L11:
	.loc 1 114 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	movl	%edx, %eax
	addq	$24, %rsp
	ret
	.p2align 4,,7
.L12:
	.loc 1 109 0
	movq	%rbp, %rdi
	call	apic_accept_pic_intr
	testl	%eax, %eax
	.loc 1 110 0
	movl	$-1, %edx
	.loc 1 109 0
	je	.L11
	.loc 1 112 0
	movq	isa_pic(%rip), %rdi
	.loc 1 114 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	addq	$24, %rsp
	.loc 1 112 0
	jmp	pic_read_irq
.LFE200:
	.size	cpu_get_pic_interrupt, .-cpu_get_pic_interrupt
	.p2align 4,,15
	.type	pic_irq_request, @function
pic_irq_request:
.LFB201:
	.loc 1 117 0
	.loc 1 119 0
	testl	%edx, %edx
	.loc 1 117 0
	pushq	%rbx
.LCFI3:
	.loc 1 117 0
	movq	%rdi, %rbx
	.loc 1 119 0
	jne	.L16
.L14:
	.loc 1 121 0
	popq	%rbx
	ret
	.p2align 4,,7
.L16:
	.loc 1 119 0
	call	apic_accept_pic_intr
	testl	%eax, %eax
	.p2align 4,,6
	je	.L14
	.loc 1 120 0
	movq	%rbx, %rdi
	movl	$2, %esi
	.loc 1 121 0
	popq	%rbx
	.loc 1 120 0
	jmp	cpu_interrupt
.LFE201:
	.size	pic_irq_request, .-pic_irq_request
	.p2align 4,,15
	.type	cmos_init_hd, @function
cmos_init_hd:
.LFB203:
	.loc 1 152 0
	pushq	%r13
.LCFI4:
	movl	%edi, %r13d
	movq	%rdx, %rdi
	pushq	%r12
.LCFI5:
	pushq	%rbx
.LCFI6:
	movl	%esi, %ebx
	subq	$16, %rsp
.LCFI7:
	.loc 1 153 0
	movq	rtc_state(%rip), %r12
	.loc 1 155 0
	leaq	12(%rsp), %rcx
	leaq	8(%rsp), %rdx
	leaq	4(%rsp), %rsi
	call	bdrv_get_geometry_hint
	.loc 1 156 0
	movl	%r13d, %esi
	movq	%r12, %rdi
	movl	$47, %edx
	call	rtc_set_memory
	.loc 1 157 0
	movl	4(%rsp), %edx
	movl	%ebx, %esi
	movq	%r12, %rdi
	call	rtc_set_memory
	.loc 1 158 0
	movl	4(%rsp), %edx
	leal	1(%rbx), %esi
	movq	%r12, %rdi
	sarl	$8, %edx
	call	rtc_set_memory
	.loc 1 159 0
	movl	8(%rsp), %edx
	leal	2(%rbx), %esi
	movq	%r12, %rdi
	call	rtc_set_memory
	.loc 1 160 0
	leal	3(%rbx), %esi
	movq	%r12, %rdi
	movl	$255, %edx
	call	rtc_set_memory
	.loc 1 161 0
	leal	4(%rbx), %esi
	movq	%r12, %rdi
	movl	$255, %edx
	call	rtc_set_memory
	.loc 1 162 0
	xorl	%edx, %edx
	cmpl	$8, 8(%rsp)
	leal	5(%rbx), %esi
	movq	%r12, %rdi
	setg	%dl
	leal	192(,%rdx,8), %edx
	call	rtc_set_memory
	.loc 1 163 0
	movl	4(%rsp), %edx
	leal	6(%rbx), %esi
	movq	%r12, %rdi
	call	rtc_set_memory
	.loc 1 164 0
	movl	4(%rsp), %edx
	leal	7(%rbx), %esi
	movq	%r12, %rdi
	.loc 1 165 0
	addl	$8, %ebx
	.loc 1 164 0
	sarl	$8, %edx
	call	rtc_set_memory
	.loc 1 165 0
	movl	12(%rsp), %edx
	movl	%ebx, %esi
	movq	%r12, %rdi
	call	rtc_set_memory
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	ret
.LFE203:
	.size	cmos_init_hd, .-cmos_init_hd
	.p2align 4,,15
.globl ioport_set_a20
	.type	ioport_set_a20, @function
ioport_set_a20:
.LFB206:
	.loc 1 301 0
	.loc 1 303 0
	movl	%edi, %esi
	movq	first_cpu(%rip), %rdi
	jmp	cpu_x86_set_a20
.LFE206:
	.size	ioport_set_a20, .-ioport_set_a20
	.p2align 4,,15
.globl ioport_get_a20
	.type	ioport_get_a20, @function
ioport_get_a20:
.LFB207:
	.loc 1 307 0
	.loc 1 308 0
	movq	first_cpu(%rip), %rax
	movl	536(%rax), %eax
	shrl	$20, %eax
	andl	$1, %eax
	.loc 1 309 0
	ret
.LFE207:
	.size	ioport_get_a20, .-ioport_get_a20
	.p2align 4,,15
	.type	ioport92_write, @function
ioport92_write:
.LFB208:
	.loc 1 312 0
	.loc 1 312 0
	movl	%edx, %edi
	.loc 1 313 0
	shrl	%edi
	andl	$1, %edi
	jmp	ioport_set_a20
.LFE208:
	.size	ioport92_write, .-ioport92_write
	.p2align 4,,15
	.type	ioport92_read, @function
ioport92_read:
.LFB209:
	.loc 1 318 0
	.loc 1 319 0
	call	ioport_get_a20
	addl	%eax, %eax
	.loc 1 320 0
	ret
.LFE209:
	.size	ioport92_read, .-ioport92_read
	.section	.rodata
	.type	shutdown_str.1, @object
	.size	shutdown_str.1, 8
shutdown_str.1:
	.ascii	"Shutdown"
	.local	shutdown_index.2
	.comm	shutdown_index.2,4,4
	.section	.rodata.str1.1
.LC5:
	.string	"VGA BIOS panic, line %d\n"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC4:
	.string	"BIOS panic at rombios.c, line %d\n"
	.text
	.p2align 4,,15
	.type	bochs_bios_write, @function
bochs_bios_write:
.LFB210:
	.loc 1 326 0
	subq	$8, %rsp
.LCFI8:
	.loc 1 330 0
	cmpl	$1282, %esi
	ja	.L40
	cmpl	$1281, %esi
	jae	.L37
	leal	-1024(%rsi), %eax
	cmpl	$1, %eax
	jbe	.L43
.L26:
	.loc 1 367 0
	addq	$8, %rsp
	.p2align 4,,3
	ret
	.p2align 4,,7
.L40:
	.loc 1 330 0
	cmpl	$35072, %esi
	.p2align 4,,4
	jne	.L26
	.loc 1 344 0
	movl	shutdown_index.2(%rip), %ecx
	movslq	%ecx,%rax
	movsbl	shutdown_str.1(%rax),%eax
	cmpl	%edx, %eax
	je	.L44
	.loc 1 351 0
	movl	$0, shutdown_index.2(%rip)
	.loc 1 367 0
	addq	$8, %rsp
	ret
.L37:
	.loc 1 358 0
	movl	$.LC5, %esi
.L42:
	movq	stderr(%rip), %rdi
	xorl	%eax, %eax
	call	fprintf
	.loc 1 359 0
	movl	$1, %edi
	call	exit
.L43:
	.loc 1 334 0
	movl	$.LC4, %esi
	jmp	.L42
.L44:
	.loc 1 345 0
	leal	1(%rcx), %eax
	.loc 1 346 0
	cmpl	$8, %eax
	je	.L45
	movl	%eax, shutdown_index.2(%rip)
	.loc 1 367 0
	addq	$8, %rsp
	ret
.L45:
	.loc 1 347 0
	movl	$0, shutdown_index.2(%rip)
	.loc 1 367 0
	addq	$8, %rsp
	.loc 1 348 0
	jmp	qemu_system_shutdown_request
.LFE210:
	.size	bochs_bios_write, .-bochs_bios_write
	.p2align 4,,15
	.type	get_file_size, @function
get_file_size:
.LFB214:
	.loc 1 473 0
	movq	%rbx, -24(%rsp)
.LCFI9:
	movq	%r12, -16(%rsp)
.LCFI10:
	movq	%rdi, %rbx
	movq	%r13, -8(%rsp)
.LCFI11:
	subq	$24, %rsp
.LCFI12:
	.loc 1 478 0
	call	ftell
	.loc 1 479 0
	movl	$2, %edx
	xorl	%esi, %esi
	movq	%rbx, %rdi
	.loc 1 478 0
	movq	%rax, %r13
	.loc 1 479 0
	call	fseek
	.loc 1 480 0
	movq	%rbx, %rdi
	call	ftell
	.loc 1 481 0
	movq	%r13, %rsi
	.loc 1 480 0
	movq	%rax, %r12
	.loc 1 481 0
	movq	%rbx, %rdi
	xorl	%edx, %edx
	call	fseek
	.loc 1 484 0
	movq	%r12, %rax
	movq	(%rsp), %rbx
	movq	8(%rsp), %r12
	movq	16(%rsp), %r13
	addq	$24, %rsp
	ret
.LFE214:
	.size	get_file_size, .-get_file_size
	.p2align 4,,15
	.type	main_cpu_reset, @function
main_cpu_reset:
.LFB216:
	.loc 1 640 0
	.loc 1 642 0
	jmp	cpu_reset
.LFE216:
	.size	main_cpu_reset, .-main_cpu_reset
	.section	.rodata
	.type	__FUNCTION__.0, @object
	.size	__FUNCTION__.0, 9
__FUNCTION__.0:
	.string	"pc_init1"
	.local	nb_ne2k.3
	.comm	nb_ne2k.3,4,4
	.section	.rodata.str1.1
.LC6:
	.string	"qemu32"
.LC8:
	.string	"cpu"
.LC9:
	.string	"bios.bin"
.LC10:
	.string	"%s/%s"
	.section	.rodata.str1.8
	.align 8
.LC11:
	.string	"qemu: could not load PC BIOS '%s'\n"
	.section	.rodata.str1.1
.LC12:
	.string	"vgabios-cirrus.bin"
.LC13:
	.string	"vgabios.bin"
	.section	.rodata.str1.8
	.align 8
.LC14:
	.string	"qemu: could not load VGA BIOS '%s'\n"
	.align 8
.LC7:
	.string	"Unable to find x86 CPU definition\n"
	.section	.rodata.str1.1
.LC17:
	.string	"rb"
	.section	.rodata.str1.8
	.align 8
.LC18:
	.string	"qemu: could not load kernel '%s'\n"
	.section	.rodata.str1.1
.LC27:
	.string	"ne2k_isa"
.LC26:
	.string	"ne2k_pci"
.LC16:
	.string	"Too many option ROMS\n"
	.section	.rodata.str1.8
	.align 8
.LC29:
	.string	"qemu: Supported ISA NICs: ne2k_isa\n"
	.section	.rodata.str1.1
.LC25:
	.string	"%s: vmware_vga: no PCI bus\n"
.LC31:
	.string	"qemu: too many IDE bus\n"
.LC32:
	.string	"Too many boot devices for PC\n"
	.section	.rodata.str1.8
	.align 8
.LC33:
	.string	"Invalid boot device for PC: '%c'\n"
	.section	.rodata.str1.1
.LC30:
	.string	"qemu: Unsupported NIC: %s\n"
	.section	.rodata.str1.8
	.align 8
.LC21:
	.string	"qemu: loading initrd (%#x bytes) at %#zx\n"
	.align 8
.LC23:
	.string	"qemu: read error on kernel '%s'\n"
	.align 8
.LC20:
	.string	"qemu: could not load initial ram disk '%s'\n"
	.align 8
.LC19:
	.string	"qemu: linux kernel too old to load a ram disk\n"
	.align 8
.LC22:
	.string	"qemu: read error on initial ram disk '%s'\n"
	.align 8
.LC24:
	.string	"A disk image must be given for 'hda' when booting a Linux kernel\n"
	.align 8
.LC15:
	.string	"Could not load option rom '%s'\n"
	.text
	.p2align 4,,15
	.type	pc_init1, @function
pc_init1:
.LFB219:
	.loc 1 708 0
	pushq	%r15
.LCFI13:
	.loc 1 723 0
	xorl	%eax, %eax
	.loc 1 708 0
	pushq	%r14
.LCFI14:
	movq	%r8, %r14
	pushq	%r13
.LCFI15:
	movl	%edi, %r13d
	pushq	%r12
.LCFI16:
	pushq	%rbp
.LCFI17:
	pushq	%rbx
.LCFI18:
	subq	$2888, %rsp
.LCFI19:
	.loc 1 723 0
	testq	%r8, %r8
	.loc 1 708 0
	movq	2960(%rsp), %rbp
	.loc 1 723 0
	setne	%al
	.loc 1 708 0
	movl	2952(%rsp), %r15d
	.loc 1 723 0
	movl	%eax, 164(%rsp)
	.loc 1 730 0
	movl	$.LC6, %eax
	.loc 1 708 0
	movl	%esi, 192(%rsp)
	movq	%rdx, 184(%rsp)
	movq	%rcx, 176(%rsp)
	.loc 1 730 0
	testq	%rbp, %rbp
	.loc 1 708 0
	movq	%r9, 168(%rsp)
	.loc 1 714 0
	movl	$-1, 124(%rsp)
	.loc 1 730 0
	cmove	%rax, %rbp
	.loc 1 734 0
	xorl	%r12d, %r12d
	jmp	.L275
	.p2align 4,,7
.L56:
	.loc 1 751 0
	movq	%rbx, %rdi
	.loc 1 734 0
	incl	%r12d
	.loc 1 751 0
	call	vmport_init
.L275:
	.loc 1 734 0
	cmpl	smp_cpus(%rip), %r12d
	jge	.L251
	.loc 1 735 0
	movq	%rbp, %rdi
	call	cpu_x86_init
	.loc 1 736 0
	testq	%rax, %rax
	.loc 1 735 0
	movq	%rax, %rbx
	.loc 1 736 0
	je	.L288
	.loc 1 740 0
	testl	%r12d, %r12d
	je	.L54
	.loc 1 741 0
	orl	$262144, 352(%rax)
.L54:
	.loc 1 742 0
	cmpl	$1, smp_cpus(%rip)
	jle	.L55
	.loc 1 744 0
	orl	$512, 47036(%rbx)
.L55:
	.loc 1 746 0
	movq	%rbx, %r9
	movl	$cpu_load, %r8d
	movl	$cpu_save, %ecx
	movl	$4, %edx
	movl	%r12d, %esi
	movl	$.LC8, %edi
	call	register_savevm
	.loc 1 747 0
	movq	%rbx, %rsi
	movl	$main_cpu_reset, %edi
	call	qemu_register_reset
	.loc 1 748 0
	testl	%r15d, %r15d
	je	.L56
	.loc 1 749 0
	movq	%rbx, %rdi
	call	apic_init
	.p2align 4,,4
	jmp	.L56
	.p2align 4,,7
.L251:
	.loc 1 755 0
	movl	%r13d, %edi
	.loc 1 764 0
	leaq	1856(%rsp), %rbx
	.loc 1 755 0
	call	qemu_ram_alloc
	.loc 1 756 0
	movslq	%r13d,%rdx
	xorl	%edi, %edi
	movq	%rdx, 48(%rsp)
	movq	48(%rsp), %rsi
	movq	%rax, %rdx
	call	cpu_register_physical_memory
	.loc 1 759 0
	movl	192(%rsp), %edi
	call	qemu_ram_alloc
	movq	%rax, 152(%rsp)
	.loc 1 762 0
	movq	bios_name(%rip), %rax
	.loc 1 763 0
	movl	$.LC9, %r8d
	.loc 1 764 0
	movq	bios_dir(%rip), %rcx
	movl	$.LC10, %edx
	movl	$1024, %esi
	movq	%rbx, %rdi
	.loc 1 763 0
	testq	%rax, %rax
	cmovne	%rax, %r8
	.loc 1 764 0
	xorl	%eax, %eax
	.loc 1 763 0
	movq	%r8, bios_name(%rip)
	.loc 1 764 0
	call	snprintf
	.loc 1 765 0
	movq	%rbx, %rdi
	call	get_image_size
	.loc 1 766 0
	testl	%eax, %eax
	.loc 1 765 0
	movl	%eax, %ebp
	.loc 1 766 0
	jle	.L61
	testw	%ax, %ax
	je	.L289
.L61:
	.loc 1 774 0
	movq	%rbx, %rdx
	movl	$.LC11, %esi
.L287:
	.loc 1 792 0
	movq	stderr(%rip), %rdi
	xorl	%eax, %eax
	call	fprintf
.L285:
.LBB6:
.LBB7:
	.loc 1 230 0
	movl	$1, %edi
	call	exit
.L289:
.LBE7:
.LBE6:
	.loc 1 770 0
	movl	%eax, %edi
	call	qemu_ram_alloc
	.loc 1 771 0
	movq	%rax, %rsi
	addq	phys_ram_base(%rip), %rsi
	movq	%rbx, %rdi
	.loc 1 770 0
	movq	%rax, 144(%rsp)
	.loc 1 771 0
	call	load_image
	.loc 1 772 0
	cmpl	%ebp, %eax
	jne	.L61
	.loc 1 779 0
	movl	cirrus_vga_enabled(%rip), %r9d
	.loc 1 780 0
	movl	$.LC12, %r8d
	.loc 1 779 0
	testl	%r9d, %r9d
	jne	.L276
	.loc 1 782 0
	movl	$.LC13, %r8d
.L276:
	movq	bios_dir(%rip), %rcx
	movl	$.LC10, %edx
	movl	$1024, %esi
	movq	%rbx, %rdi
	xorl	%eax, %eax
	call	snprintf
	.loc 1 784 0
	movq	%rbx, %rdi
	call	get_image_size
	movl	%eax, 140(%rsp)
	.loc 1 785 0
	decl	%eax
	cmpl	$65535, %eax
	ja	.L66
	.loc 1 787 0
	movl	$65536, %edi
	call	qemu_ram_alloc
	.loc 1 789 0
	movq	phys_ram_base(%rip), %rsi
	movq	%rbx, %rdi
	.loc 1 787 0
	movq	%rax, %r12
	.loc 1 789 0
	addq	%rax, %rsi
	call	load_image
	.loc 1 790 0
	cmpl	140(%rsp), %eax
	je	.L67
.L66:
	.loc 1 792 0
	movq	%rbx, %rdx
	movl	$.LC14, %esi
	jmp	.L287
.L288:
	.loc 1 737 0
	movq	stderr(%rip), %rcx
	movl	$34, %edx
	movl	$1, %esi
	movl	$.LC7, %edi
.LBB8:
	.loc 1 828 0
	call	fwrite
	jmp	.L285
.L67:
.LBE8:
	.loc 1 797 0
	orq	$16, %r12
	movl	$65536, %esi
	movl	$786432, %edi
	movq	%r12, %rdx
	.loc 1 803 0
	movl	$131072, %ebx
	.loc 1 797 0
	call	cpu_register_physical_memory
	.loc 1 803 0
	cmpl	$131073, %ebp
	.loc 1 804 0
	movl	$196608, %esi
	movl	$32, %edx
	.loc 1 803 0
	cmovl	%ebp, %ebx
	.loc 1 804 0
	movl	$851968, %edi
.LBB9:
	.loc 1 815 0
	xorl	%r12d, %r12d
.LBE9:
	.loc 1 804 0
	subl	%ebx, %esi
	movslq	%esi,%rsi
	call	cpu_register_physical_memory
	.loc 1 806 0
	movslq	%ebp,%rcx
	movslq	%ebx,%rsi
	movl	$1048576, %edi
	movq	%rcx, %rdx
	addq	144(%rsp), %rdx
	subl	%ebx, %edi
	movslq	%edi,%rdi
	movq	%rcx, 40(%rsp)
	subq	%rsi, %rdx
	orq	$16, %rdx
	call	cpu_register_physical_memory
.LBB10:
	.loc 1 815 0
	cmpl	nb_option_roms(%rip), %r12d
	.loc 1 814 0
	movl	$0, 120(%rsp)
	.loc 1 815 0
	jge	.L253
.L291:
	.loc 1 816 0
	movslq	%r12d,%rbx
	movq	option_rom(,%rbx,8), %rdi
	movq	%rbx, 112(%rsp)
	call	get_image_size
	.loc 1 817 0
	testl	%eax, %eax
	.loc 1 816 0
	movl	%eax, %ebx
	.loc 1 817 0
	js	.L290
	.loc 1 822 0
	movl	$65536, %eax
	subl	120(%rsp), %eax
	cmpl	%ebx, %eax
	jl	.L74
	.loc 1 824 0
	movl	%ebx, %edi
	call	qemu_ram_alloc
	.loc 1 825 0
	movq	112(%rsp), %rdx
	movq	phys_ram_base(%rip), %rsi
	movq	%rax, 24(%rsp)
	movq	option_rom(,%rdx,8), %rdi
	addq	%rax, %rsi
	call	load_image
	.loc 1 826 0
	cmpl	%ebx, %eax
	movq	24(%rsp), %r8
	jne	.L74
	.loc 1 832 0
	movl	120(%rsp), %edi
	.loc 1 831 0
	addl	$4095, %ebx
	.loc 1 832 0
	orq	$16, %r8
	.loc 1 831 0
	andl	$-4096, %ebx
	.loc 1 832 0
	movq	%r8, %rdx
	.loc 1 815 0
	incl	%r12d
	.loc 1 832 0
	movslq	%ebx,%rsi
	addl	$851968, %edi
	movslq	%edi,%rdi
	call	cpu_register_physical_memory
	.loc 1 834 0
	addl	%ebx, 120(%rsp)
	.loc 1 815 0
	cmpl	nb_option_roms(%rip), %r12d
	jl	.L291
.L253:
.LBE10:
	.loc 1 839 0
	orq	$16, 144(%rsp)
	movq	40(%rsp), %rsi
	negl	%ebp
	movq	144(%rsp), %rdx
	mov	%ebp, %edi
	call	cpu_register_physical_memory
.LBB11:
.LBB12:
	.loc 1 371 0
	xorl	%r8d, %r8d
	movl	$bochs_bios_write, %ecx
	movl	$2, %edx
	movl	$1, %esi
	movl	$1024, %edi
	call	register_ioport_write
	.loc 1 372 0
	xorl	%r8d, %r8d
	movl	$bochs_bios_write, %ecx
	movl	$2, %edx
	movl	$1, %esi
	movl	$1025, %edi
	call	register_ioport_write
	.loc 1 373 0
	xorl	%r8d, %r8d
	movl	$bochs_bios_write, %ecx
	movl	$1, %edx
	movl	$1, %esi
	movl	$1026, %edi
	call	register_ioport_write
	.loc 1 374 0
	xorl	%r8d, %r8d
	movl	$bochs_bios_write, %ecx
	movl	$1, %edx
	movl	$1, %esi
	movl	$1027, %edi
	call	register_ioport_write
	.loc 1 375 0
	xorl	%r8d, %r8d
	movl	$bochs_bios_write, %ecx
	movl	$1, %edx
	movl	$1, %esi
	movl	$35072, %edi
	call	register_ioport_write
	.loc 1 377 0
	xorl	%r8d, %r8d
	movl	$bochs_bios_write, %ecx
	movl	$2, %edx
	movl	$1, %esi
	movl	$1281, %edi
	call	register_ioport_write
	.loc 1 378 0
	xorl	%r8d, %r8d
	movl	$bochs_bios_write, %ecx
	movl	$2, %edx
	movl	$1, %esi
	movl	$1282, %edi
	call	register_ioport_write
	.loc 1 379 0
	xorl	%r8d, %r8d
	movl	$bochs_bios_write, %ecx
	movl	$1, %edx
	movl	$1, %esi
	movl	$1280, %edi
	call	register_ioport_write
	.loc 1 380 0
	xorl	%r8d, %r8d
	movl	$bochs_bios_write, %ecx
	movl	$1, %edx
	movl	$1, %esi
	movl	$1283, %edi
	call	register_ioport_write
.LBE12:
.LBE11:
	.loc 1 844 0
	movl	164(%rsp), %r8d
	testl	%r8d, %r8d
	je	.L78
.LBB13:
.LBB14:
	.loc 1 501 0
	movq	168(%rsp), %rdi
	call	strlen
	leal	16(%rax), %ebp
	.loc 1 504 0
	movl	$.LC17, %esi
	movq	%r14, %rdi
	call	fopen64
	.loc 1 501 0
	andl	$-16, %ebp
	.loc 1 505 0
	testq	%rax, %rax
	.loc 1 504 0
	movq	%rax, 64(%rsp)
	.loc 1 505 0
	je	.L80
	movq	%rax, %rdi
	call	get_file_size
	testl	%eax, %eax
	movl	%eax, 108(%rsp)
	jne	.L292
.L80:
	.loc 1 507 0
	movq	%r14, %rdx
	movl	$.LC18, %esi
	jmp	.L287
.L109:
	.loc 1 627 0
	movq	64(%rsp), %rdi
.LBB15:
	.loc 1 386 0
	leaq	1776(%rsp), %rbp
	leaq	1760(%rsp), %r12
.LBE15:
	.loc 1 627 0
	call	fclose
	.loc 1 630 0
	movq	96(%rsp), %rax
	subq	phys_ram_base(%rip), %rax
	.loc 1 633 0
	leaq	1776(%rsp), %rdi
	cld
	movl	$4, %ecx
.LBB16:
.LBB17:
	.loc 1 391 0
	xorl	%edx, %edx
	xorl	%esi, %esi
.LBE17:
.LBE16:
	.loc 1 630 0
	sarq	$4, %rax
	.loc 1 631 0
	movw	%ax, 1768(%rsp)
	movw	%ax, 1766(%rsp)
	movw	%ax, 1764(%rsp)
	movw	%ax, 1760(%rsp)
	.loc 1 632 0
	addl	$32, %eax
	movw	%ax, 1762(%rsp)
	.loc 1 633 0
	xorl	%eax, %eax
	rep
	stosq
.LBB18:
.LBB19:
	.loc 1 391 0
	xorl	%edi, %edi
.LBE19:
.LBE18:
	.loc 1 634 0
	movl	80(%rsp), %eax
	subl	96(%rsp), %eax
	subl	$16, %eax
	movl	%eax, 1792(%rsp)
.LBB20:
.LBB21:
	.loc 1 391 0
	call	drive_get_index
	.loc 1 392 0
	cmpl	$-1, %eax
	.loc 1 391 0
	movl	%eax, %ebx
	.loc 1 392 0
	je	.L293
	.loc 1 398 0
	leaq	224(%rsp), %r14
	movl	$512, %edx
	xorl	%esi, %esi
	.loc 1 401 0
	movslq	%ebx,%rbx
	.loc 1 398 0
	movq	%r14, %rdi
	call	memset
	.loc 1 401 0
	leaq	(%rbx,%rbx,2), %rax
	movl	$1, %ecx
	xorl	%esi, %esi
	movq	%r14, %rdx
	movq	drives_table(,%rax,8), %rdi
	call	bdrv_read
	.loc 1 410 0
	leaq	2(%r14), %rcx
	.loc 1 404 0
	movb	$85, 734(%rsp)
	.loc 1 405 0
	movb	$-86, 735(%rsp)
	.loc 1 409 0
	movb	$-6, 224(%rsp)
	.loc 1 410 0
	movb	$-4, 225(%rsp)
	.loc 1 412 0
	xorl	%esi, %esi
.L116:
	.loc 1 413 0
	cmpl	$1, %esi
	je	.L114
	.loc 1 417 0
	movslq	%esi,%rdx
	.loc 1 416 0
	movb	$-72, (%rcx)
	incq	%rcx
	.loc 1 417 0
	movzwl	(%r12,%rdx,2), %eax
	movb	%al, (%rcx)
	.loc 1 418 0
	movzbw	1(%r12,%rdx,2), %ax
	.loc 1 417 0
	incq	%rcx
	.loc 1 418 0
	movb	%al, (%rcx)
	incq	%rcx
	.loc 1 420 0
	leal	-64(,%rsi,8), %eax
	.loc 1 419 0
	movb	$-114, (%rcx)
	incq	%rcx
	.loc 1 420 0
	movb	%al, (%rcx)
	incq	%rcx
.L114:
	.loc 1 412 0
	incl	%esi
	cmpl	$5, %esi
	jle	.L116
	.loc 1 423 0
	xorl	%esi, %esi
.L120:
	.loc 1 425 0
	leal	-72(%rsi), %eax
	.loc 1 424 0
	movb	$102, (%rcx)
	.loc 1 426 0
	movslq	%esi,%rdx
	.loc 1 424 0
	incq	%rcx
	.loc 1 423 0
	incl	%esi
	.loc 1 425 0
	movb	%al, (%rcx)
	.loc 1 426 0
	movl	(%rbp,%rdx,4), %eax
	.loc 1 425 0
	incq	%rcx
	.loc 1 426 0
	movb	%al, (%rcx)
	.loc 1 427 0
	movl	(%rbp,%rdx,4), %eax
	.loc 1 426 0
	incq	%rcx
	.loc 1 427 0
	shrl	$8, %eax
	movb	%al, (%rcx)
	.loc 1 428 0
	movzwl	2(%rbp,%rdx,4), %eax
	.loc 1 427 0
	incq	%rcx
	.loc 1 428 0
	movb	%al, (%rcx)
	.loc 1 429 0
	movzbl	3(%rbp,%rdx,4), %eax
	.loc 1 428 0
	incq	%rcx
	.loc 1 429 0
	movb	%al, (%rcx)
	incq	%rcx
	.loc 1 423 0
	cmpl	$7, %esi
	jle	.L120
	.loc 1 432 0
	movb	$-22, (%rcx)
	incq	%rcx
	.loc 1 438 0
	movl	$512, %edx
	.loc 1 433 0
	movb	$0, (%rcx)
	incq	%rcx
	.loc 1 438 0
	movq	%r14, %rsi
	.loc 1 434 0
	movb	$0, (%rcx)
	.loc 1 435 0
	movzwl	2(%r12), %eax
	.loc 1 434 0
	incq	%rcx
	.loc 1 435 0
	movb	%al, (%rcx)
	.loc 1 436 0
	movzbw	3(%r12), %ax
	movb	%al, 1(%rcx)
	.loc 1 438 0
	leaq	(%rbx,%rbx,2), %rax
	movq	drives_table(,%rax,8), %rdi
	call	bdrv_set_boot_sector
.L78:
.LBE21:
.LBE20:
.LBE14:
.LBE13:
	.loc 1 847 0
	movq	first_cpu(%rip), %rsi
	movl	$1, %edx
	movl	$pic_irq_request, %edi
	call	qemu_allocate_irqs
	.loc 1 848 0
	movq	(%rax), %rdi
	call	i8259_init
	movq	%rax, %r14
	.loc 1 849 0
	movq	104(%rax), %rax
	.loc 1 851 0
	testl	%r15d, %r15d
	.loc 1 855 0
	movq	$0, 128(%rsp)
	.loc 1 849 0
	movq	%rax, ferr_irq(%rip)
	.loc 1 851 0
	jne	.L294
.L124:
	.loc 1 859 0
	xorl	%r8d, %r8d
	movl	$ioport80_write, %ecx
	movl	$1, %edx
	movl	$1, %esi
	movl	$128, %edi
	call	register_ioport_write
	.loc 1 861 0
	xorl	%r8d, %r8d
	movl	$240, %edi
	movl	$ioportF0_write, %ecx
	movl	$1, %edx
	movl	$1, %esi
	call	register_ioport_write
	.loc 1 863 0
	movl	cirrus_vga_enabled(%rip), %edi
	testl	%edi, %edi
	je	.L125
	.loc 1 864 0
	testl	%r15d, %r15d
	je	.L126
	.loc 1 865 0
	movq	152(%rsp), %rdx
	addq	phys_ram_base(%rip), %rdx
	movl	192(%rsp), %r8d
	movq	152(%rsp), %rcx
	movq	176(%rsp), %rsi
	movq	128(%rsp), %rdi
	call	pci_cirrus_vga_init
.L128:
	.loc 1 888 0
	movq	64(%r14), %rsi
	movl	$112, %edi
	call	rtc_init
	.loc 1 890 0
	xorl	%r8d, %r8d
	movl	$ioport92_read, %ecx
	movl	$1, %edx
	movl	$1, %esi
	movl	$146, %edi
	.loc 1 888 0
	movq	%rax, rtc_state(%rip)
	.loc 1 890 0
	call	register_ioport_read
	.loc 1 891 0
	xorl	%r8d, %r8d
	movl	$ioport92_write, %ecx
	movl	$1, %edx
	movl	$1, %esi
	movl	$146, %edi
	call	register_ioport_write
	.loc 1 893 0
	testl	%r15d, %r15d
	jne	.L295
.L135:
	.loc 1 896 0
	movq	(%r14), %rsi
	movl	$64, %edi
	call	pit_init
	movq	%rax, %rdi
	movq	%rax, pit(%rip)
	.loc 1 897 0
	call	pcspk_init
	.loc 1 898 0
	testl	%r15d, %r15d
	jne	.L296
.L136:
	.loc 1 902 0
	xorl	%r12d, %r12d
.L141:
	.loc 1 903 0
	movslq	%r12d,%rcx
	movq	serial_hds(,%rcx,8), %rdx
	testq	%rdx, %rdx
	je	.L139
	.loc 1 904 0
	movslq	serial_irq(,%rcx,4),%rax
	movl	serial_io(,%rcx,4), %edi
	movq	(%r14,%rax,8), %rsi
	call	serial_init
.L139:
	.loc 1 902 0
	incl	%r12d
	cmpl	$3, %r12d
	jle	.L141
	.loc 1 917 0
	movl	nb_nics(%rip), %r8d
	xorl	%r12d, %r12d
	cmpl	%r8d, %r12d
	jge	.L261
	movl	$.LC27, %ebp
	jmp	.L172
.L298:
.LBB22:
.LBB23:
	.loc 1 696 0
	movl	nb_ne2k.3(%rip), %eax
	cmpl	$6, %eax
	jne	.L297
.L144:
.LBE23:
.LBE22:
	.loc 1 917 0
	incl	%r12d
	cmpl	%r8d, %r12d
	jge	.L261
.L172:
	.loc 1 918 0
	movslq	%r12d,%rax
	leaq	(%rax,%rax,2), %rax
	leaq	0(,%rax,8), %rcx
	.loc 1 919 0
	cmpq	$0, nd_table+8(%rcx)
	.loc 1 918 0
	leaq	nd_table(%rcx), %rbx
	.loc 1 919 0
	jne	.L145
	.loc 1 921 0
	movl	$.LC26, %eax
	testl	%r15d, %r15d
	movl	$.LC27, %edx
	cmove	%rdx, %rax
	movq	%rax, nd_table+8(%rcx)
.L145:
.LBB24:
	.loc 1 926 0
	movq	nd_table+8(%rcx), %r9
	movl	$9, %eax
	movq	%rbp, %rdi
	cld
	movq	%rax, %rcx
	movq	%r9, %rsi
.LBE24:
	repz
	cmpsb
	je	.L298
	.loc 1 928 0
	testl	%r15d, %r15d
	je	.L157
.LBB25:
.LBB26:
	.loc 1 929 0
	movzbl	(%r9), %eax
	subl	$63, %eax
	jne	.L161
	movzbl	1(%r9), %eax
.L161:
.LBE26:
.LBE25:
	testl	%eax, %eax
	je	.L299
.L158:
	.loc 1 931 0
	movq	128(%rsp), %rdi
	movl	$-1, %edx
	movq	%rbx, %rsi
	call	pci_nic_init
.L280:
	movl	nb_nics(%rip), %r8d
	jmp	.L144
.L296:
	.loc 1 899 0
	movq	ioapic(%rip), %rdx
	movq	isa_pic(%rip), %rdi
	movl	$ioapic_set_irq, %esi
	call	pic_set_alt_irq_func
	jmp	.L136
	.p2align 4,,7
.L297:
.LBB27:
.LBB28:
	.loc 1 698 0
	movslq	%eax,%rdx
	movslq	ne2000_irq(,%rdx,4),%rax
	movl	ne2000_io(,%rdx,4), %edi
	movq	%rbx, %rdx
	movq	(%r14,%rax,8), %rsi
	call	isa_ne2000_init
	.loc 1 699 0
	incl	nb_ne2k.3(%rip)
	jmp	.L280
.L261:
.LBE28:
.LBE27:
	.loc 1 941 0
	xorl	%edi, %edi
	call	drive_get_max_bus
	decl	%eax
	jg	.L300
	leaq	1824(%rsp), %rbx
	.loc 1 946 0
	xorl	%r12d, %r12d
.L179:
	.loc 1 947 0
	movl	%r12d, %esi
	movl	%r12d, %edx
	xorl	%edi, %edi
	shrl	$31, %esi
	leal	(%r12,%rsi), %esi
	sarl	%esi
	leal	(%rsi,%rsi), %eax
	subl	%eax, %edx
	call	drive_get_index
	.loc 1 948 0
	cmpl	$-1, %eax
	je	.L177
	.loc 1 949 0
	cltq
	leaq	(%rax,%rax,2), %rax
	movq	drives_table(,%rax,8), %rax
	movq	%rax, (%rbx)
.L176:
	.loc 1 946 0
	incl	%r12d
	addq	$8, %rbx
	cmpl	$3, %r12d
	jle	.L179
	.loc 1 957 0
	xorl	%r12d, %r12d
	.loc 1 954 0
	testl	%r15d, %r15d
	jne	.L301
.L185:
	.loc 1 958 0
	movslq	%r12d,%rax
	.loc 1 957 0
	incl	%r12d
	.loc 1 958 0
	movslq	ide_irq(,%rax,4),%rdx
	movq	%rax, %rcx
	movl	ide_iobase2(,%rax,4), %esi
	salq	$4, %rcx
	movl	ide_iobase(,%rax,4), %edi
	movq	1832(%rsp,%rcx), %r8
	movq	1824(%rsp,%rcx), %rcx
	movq	(%r14,%rdx,8), %rdx
	call	isa_ide_init
	.loc 1 957 0
	cmpl	$1, %r12d
	jle	.L185
.L181:
	.loc 1 963 0
	movq	96(%r14), %rsi
	movq	8(%r14), %rdi
	movl	$96, %edx
.LBB29:
	.loc 1 662 0
	xorl	%r12d, %r12d
.LBB30:
	.loc 1 666 0
	movl	$soundhw, %ebx
.LBE30:
.LBE29:
	.loc 1 963 0
	call	i8042_init
	.loc 1 964 0
	xorl	%edi, %edi
	call	DMA_init
.LBB31:
	.loc 1 662 0
	testl	%r15d, %r15d
	cmovne	128(%rsp), %r12
.LBB32:
	.loc 1 666 0
	cmpq	$0, soundhw(%rip)
	jmp	.L281
.L302:
	.loc 1 667 0
	movl	16(%rbx), %eax
	.loc 1 666 0
	addq	$32, %rbx
	testl	%eax, %eax
	jne	.L274
	cmpq	$0, (%rbx)
.L281:
	jne	.L302
.L202:
.LBE32:
.LBE31:
.LBB33:
.LBB34:
	.loc 1 189 0
	cld
	leaq	208(%rsp), %rdi
	xorl	%eax, %eax
	movl	$1, %ecx
	.loc 1 188 0
	movq	rtc_state(%rip), %r14
	.loc 1 198 0
	movl	$640, %edx
	movl	$21, %esi
	.loc 1 189 0
	rep
	stosq
.LBE34:
.LBE33:
	.loc 1 979 0
	movq	$0, floppy_controller(%rip)
.LBB35:
.LBB36:
	.loc 1 189 0
	movl	$0, (%rdi)
	.loc 1 198 0
	movq	%r14, %rdi
	call	rtc_set_memory
	.loc 1 199 0
	movl	$2, %edx
	movl	$22, %esi
	movq	%r14, %rdi
	call	rtc_set_memory
	.loc 1 201 0
	leal	1023(%r13), %eax
	cmpl	$-1, %r13d
	.loc 1 204 0
	movl	$23, %esi
	movq	%r14, %rdi
	.loc 1 201 0
	cmovg	%r13d, %eax
	sarl	$10, %eax
	leal	-1024(%rax), %ebp
	.loc 1 203 0
	movl	$65535, %eax
	cmpl	$65536, %ebp
	cmovge	%eax, %ebp
	.loc 1 205 0
	movl	%ebp, %ebx
	.loc 1 204 0
	movl	%ebp, %edx
	.loc 1 205 0
	sarl	$8, %ebx
	.loc 1 204 0
	call	rtc_set_memory
	.loc 1 205 0
	movl	%ebx, %edx
	movl	$24, %esi
	movq	%r14, %rdi
	call	rtc_set_memory
	.loc 1 206 0
	movl	%ebp, %edx
	movl	$48, %esi
	movq	%r14, %rdi
	call	rtc_set_memory
	.loc 1 207 0
	movl	%ebx, %edx
	movl	$49, %esi
	movq	%r14, %rdi
	call	rtc_set_memory
	.loc 1 212 0
	xorl	%ebp, %ebp
	.loc 1 209 0
	cmpl	$16777216, %r13d
	jle	.L208
	.loc 1 210 0
	movl	%r13d, %edi
	cmpl	$-1, %r13d
	leal	65535(%rdi), %eax
	cmovle	%eax, %edi
	.loc 1 214 0
	movl	$65535, %eax
	.loc 1 210 0
	sarl	$16, %edi
	leal	-256(%rdi), %ebp
	.loc 1 214 0
	cmpl	$65536, %ebp
	cmovge	%eax, %ebp
.L208:
	.loc 1 215 0
	movl	%ebp, %edx
	movl	$52, %esi
	movq	%r14, %rdi
	call	rtc_set_memory
	.loc 1 216 0
	movl	%ebp, %edx
	movl	$53, %esi
	movq	%r14, %rdi
	sarl	$8, %edx
	call	rtc_set_memory
	.loc 1 220 0
	movq	184(%rsp), %rdi
	call	strlen
	.loc 1 221 0
	cmpl	$3, %eax
	.loc 1 220 0
	movl	%eax, %ecx
	.loc 1 221 0
	jg	.L303
	.loc 1 225 0
	xorl	%r12d, %r12d
.L284:
	cmpl	%ecx, %r12d
	jge	.L268
.LBB37:
.LBB38:
	.loc 1 171 0
	movq	184(%rsp), %rbx
.LBE38:
.LBE37:
	.loc 1 226 0
	movslq	%r12d,%rdx
.LBB39:
.LBB40:
	.loc 1 171 0
	movsbl	(%rdx,%rbx),%eax
	subl	$97, %eax
	cmpl	$13, %eax
	ja	.L213
	mov	%eax, %eax
	jmp	*.L220(,%rax,8)
	.section	.rodata
	.align 8
	.align 4
.L220:
	.quad	.L215
	.quad	.L215
	.quad	.L217
	.quad	.L218
	.quad	.L213
	.quad	.L213
	.quad	.L213
	.quad	.L213
	.quad	.L213
	.quad	.L213
	.quad	.L213
	.quad	.L213
	.quad	.L213
	.quad	.L219
	.text
.L213:
	.loc 1 181 0
	xorl	%eax, %eax
.L216:
.LBE40:
.LBE39:
	.loc 1 227 0
	testl	%eax, %eax
	.loc 1 170 0
	movl	%eax, 208(%rsp,%rdx,4)
	.loc 1 227 0
	je	.L304
	.loc 1 225 0
	incl	%r12d
	jmp	.L284
.L219:
.LBB41:
.LBB42:
	.loc 1 179 0
	movl	$4, %eax
	jmp	.L216
.L217:
	.loc 1 175 0
	movl	$2, %eax
	.p2align 4,,5
	jmp	.L216
.L215:
	.loc 1 173 0
	movl	$1, %eax
	.p2align 4,,5
	jmp	.L216
.L218:
	.loc 1 177 0
	movl	$3, %eax
	.p2align 4,,5
	jmp	.L216
.L177:
.LBE42:
.LBE41:
.LBE36:
.LBE35:
	.loc 1 951 0
	movq	$0, (%rbx)
	.p2align 4,,5
	jmp	.L176
.L268:
.LBB43:
.LBB44:
	.loc 1 233 0
	movl	212(%rsp), %edx
	movl	$61, %esi
	movq	%r14, %rdi
	sall	$4, %edx
	orl	208(%rsp), %edx
	call	rtc_set_memory
	.loc 1 234 0
	movl	216(%rsp), %eax
	xorl	%edx, %edx
	movl	$56, %esi
	movq	%r14, %rdi
	sall	$4, %eax
	cmpl	$0, fd_bootchk(%rip)
	sete	%dl
	orl	%eax, %edx
	call	rtc_set_memory
	.loc 1 243 0
	movl	%ebp, %edx
	movl	$16, %esi
	movq	%r14, %rdi
	call	rtc_set_memory
	.loc 1 245 0
	xorl	%ebp, %ebp
	.loc 1 248 0
	xorl	%edx, %edx
	cmpl	$2, 60(%rsp)
	setle	%dl
	.loc 1 250 0
	xorl	%eax, %eax
	cmpl	$2, 56(%rsp)
	setle	%al
	addl	%eax, %edx
	.loc 1 251 0
	cmpl	$1, %edx
	je	.L227
	cmpl	$2, %edx
	je	.L228
.L225:
	.loc 1 262 0
	orl	$6, %ebp
	.loc 1 263 0
	movl	$20, %esi
	movq	%r14, %rdi
	movl	%ebp, %edx
	call	rtc_set_memory
	.loc 1 267 0
	movq	1824(%rsp), %rax
	movl	$18, %esi
	movq	%r14, %rdi
	cmpq	$1, %rax
	sbbl	%edx, %edx
	notl	%edx
	andl	$240, %edx
	movl	%edx, %eax
	orl	$15, %eax
	cmpq	$0, 1832(%rsp)
	cmovne	%eax, %edx
	call	rtc_set_memory
	.loc 1 268 0
	movq	1824(%rsp), %rdx
	testq	%rdx, %rdx
	jne	.L305
.L232:
	.loc 1 270 0
	movq	1832(%rsp), %rdx
	testq	%rdx, %rdx
	jne	.L306
.L233:
	.loc 1 273 0
	xorl	%ebp, %ebp
	.loc 1 274 0
	xorl	%r12d, %r12d
.L242:
	.loc 1 275 0
	movslq	%r12d,%r13
	movq	1824(%rsp,%r13,8), %rdi
	testq	%rdi, %rdi
	jne	.L307
.L236:
	.loc 1 274 0
	incl	%r12d
	cmpl	$3, %r12d
	jle	.L242
	.loc 1 297 0
	movl	%ebp, %edx
	movl	$57, %esi
	movq	%r14, %rdi
	call	rtc_set_memory
.LBE44:
.LBE43:
	.loc 1 990 0
	testl	%r15d, %r15d
	je	.L244
	movl	acpi_enabled(%rip), %eax
	testl	%eax, %eax
	jne	.L308
.L244:
	.loc 1 1001 0
	movq	i440fx_state(%rip), %rdi
	testq	%rdi, %rdi
	jne	.L309
.L48:
	.loc 1 1024 0
	addq	$2888, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L307:
.LBB45:
.LBB46:
.LBB47:
	.loc 1 281 0
	call	bdrv_get_translation_hint
	.loc 1 282 0
	testl	%eax, %eax
	.loc 1 281 0
	movl	%eax, %ebx
	.loc 1 282 0
	je	.L310
	.loc 1 292 0
	decl	%ebx
.L241:
	.loc 1 294 0
	leal	(%r12,%r12), %ecx
	sall	%cl, %ebx
	orl	%ebx, %ebp
	jmp	.L236
.L74:
.LBE47:
.LBE46:
.LBE45:
.LBB48:
	.loc 1 828 0
	movq	stderr(%rip), %rcx
	movl	$21, %edx
	movl	$1, %esi
	movl	$.LC16, %edi
	call	fwrite
	jmp	.L285
.L125:
.LBE48:
	.loc 1 872 0
	movl	vmsvga_enabled(%rip), %esi
	testl	%esi, %esi
	je	.L129
	.loc 1 873 0
	testl	%r15d, %r15d
	.p2align 4,,2
	je	.L130
	.loc 1 874 0
	movq	48(%rsp), %rdx
	addq	phys_ram_base(%rip), %rdx
	movl	192(%rsp), %r8d
	movq	48(%rsp), %rcx
	movq	176(%rsp), %rsi
	movq	128(%rsp), %rdi
	call	pci_vmsvga_init
	jmp	.L128
	.p2align 4,,7
.L299:
	.loc 1 930 0
	movq	stderr(%rip), %rcx
	movl	$35, %edx
	movl	$1, %esi
	movl	$.LC29, %edi
	call	fwrite
	jmp	.L158
.L126:
	.loc 1 869 0
	movq	152(%rsp), %rsi
	addq	phys_ram_base(%rip), %rsi
	movl	192(%rsp), %ecx
	movq	152(%rsp), %rdx
	movq	176(%rsp), %rdi
	call	isa_cirrus_vga_init
	jmp	.L128
.L295:
	.loc 1 894 0
	call	ioapic_init
	movq	%rax, ioapic(%rip)
	.p2align 4,,3
	jmp	.L135
.L130:
	.loc 1 877 0
	movq	stderr(%rip), %rdi
	movl	$__FUNCTION__.0, %edx
	movl	$.LC25, %esi
	xorl	%eax, %eax
	call	fprintf
	jmp	.L128
.L129:
	.loc 1 879 0
	testl	%r15d, %r15d
	je	.L133
	.loc 1 880 0
	movq	152(%rsp), %rdx
	addq	phys_ram_base(%rip), %rdx
	xorl	%r9d, %r9d
	movl	192(%rsp), %r8d
	movq	152(%rsp), %rcx
	movq	176(%rsp), %rsi
	movq	128(%rsp), %rdi
	movl	$0, (%rsp)
	call	pci_vga_init
	jmp	.L128
.L306:
.LBB49:
.LBB50:
	.loc 1 271 0
	movl	$36, %esi
	movl	$26, %edi
	call	cmos_init_hd
	.p2align 4,,4
	jmp	.L233
.L228:
	.loc 1 258 0
	movl	$65, %ebp
	.p2align 4,,2
	jmp	.L225
.L227:
	.loc 1 255 0
	movl	$1, %ebp
	.p2align 4,,7
	jmp	.L225
.L300:
.LBE50:
.LBE49:
	.loc 1 942 0
	movq	stderr(%rip), %rcx
	movl	$23, %edx
	movl	$1, %esi
	movl	$.LC31, %edi
.LBB51:
	.loc 1 828 0
	call	fwrite
	jmp	.L285
.L157:
.LBE51:
.LBB52:
.LBB53:
	.loc 1 932 0
	movzbl	(%r9), %eax
	subl	$63, %eax
	jne	.L168
	movzbl	1(%r9), %eax
.L168:
.LBE53:
.LBE52:
	testl	%eax, %eax
	.p2align 4,,3
	jne	.L165
	.loc 1 933 0
	movq	stderr(%rip), %rcx
	movl	$35, %edx
	movl	$1, %esi
	movl	$.LC29, %edi
.LBB54:
	.loc 1 828 0
	call	fwrite
	jmp	.L285
.L274:
.LBE54:
.LBB55:
.LBB56:
.LBB57:
	.loc 1 673 0
	call	AUD_init
	.loc 1 674 0
	testq	%rax, %rax
	.loc 1 673 0
	movq	%rax, %rbp
	.loc 1 674 0
	.p2align 4,,4
	je	.L202
	.loc 1 675 0
	cmpq	$0, soundhw(%rip)
	movl	$soundhw, %ebx
	jmp	.L282
	.p2align 4,,7
.L311:
	.loc 1 676 0
	movl	16(%rbx), %ecx
	testl	%ecx, %ecx
	je	.L196
	.loc 1 677 0
	movl	20(%rbx), %edx
	.loc 1 678 0
	movq	%r14, %rsi
	movq	%rbp, %rdi
	.loc 1 677 0
	testl	%edx, %edx
	jne	.L283
	.loc 1 681 0
	testq	%r12, %r12
	je	.L196
	.loc 1 682 0
	movq	%rbp, %rsi
	movq	%r12, %rdi
.L283:
	call	*24(%rbx)
.L196:
	.loc 1 675 0
	addq	$32, %rbx
	cmpq	$0, (%rbx)
.L282:
	jne	.L311
	.p2align 4,,3
	jmp	.L202
.L303:
.LBE57:
.LBE56:
.LBE55:
.LBB58:
.LBB59:
	.loc 1 222 0
	movq	stderr(%rip), %rcx
	movl	$29, %edx
	movl	$1, %esi
	movl	$.LC32, %edi
.LBE59:
.LBE58:
.LBB60:
	.loc 1 828 0
	call	fwrite
	jmp	.L285
.L301:
.LBE60:
	.loc 1 955 0
	movl	124(%rsp), %edx
	movq	128(%rsp), %rdi
	leaq	1824(%rsp), %rsi
	movq	%r14, %rcx
	incl	%edx
	call	pci_piix3_ide_init
	jmp	.L181
.L304:
.LBB61:
.LBB62:
	.loc 1 228 0
	movq	184(%rsp), %rax
	movq	stderr(%rip), %rdi
	movl	$.LC33, %esi
	movsbl	(%rdx,%rax),%edx
	xorl	%eax, %eax
	call	fprintf
	jmp	.L285
.L165:
.LBE62:
.LBE61:
	.loc 1 936 0
	movq	%r9, %rdx
	movl	$.LC30, %esi
	jmp	.L287
.L294:
	.loc 1 852 0
	movq	%r14, %rsi
	movl	$i440fx_state, %edi
	call	i440fx_init
	.loc 1 853 0
	movl	$-1, %esi
	movq	%rax, %rdi
	.loc 1 852 0
	movq	%rax, 128(%rsp)
	.loc 1 853 0
	call	piix3_init
	movl	%eax, 124(%rsp)
	jmp	.L124
.L292:
.LBB63:
.LBB64:
	.loc 1 505 0
	movq	64(%rsp), %rcx
	leaq	736(%rsp), %rdi
	movl	$1024, %edx
	movl	$1, %esi
	call	fread
	cmpq	$1024, %rax
	jne	.L80
	.loc 1 519 0
	xorl	%ebx, %ebx
	.file 3 "../cpu-all.h"
	.loc 3 351 0
	cmpl	$1400005704, 1250(%rsp)
	je	.L312
.L86:
	.loc 1 523 0
	movq	phys_ram_base(%rip), %rax
	.loc 1 524 0
	movslq	%ebp,%rdx
	.loc 1 523 0
	leaq	589824(%rax), %rcx
	movq	%rcx, 96(%rsp)
	.loc 1 524 0
	movq	%rax, %rcx
	.loc 1 525 0
	addq	$65536, %rax
	.loc 1 524 0
	subq	%rdx, %rcx
	movq	%rcx, %rdx
	addq	$630784, %rdx
	movq	%rdx, 80(%rsp)
.L279:
	.loc 1 549 0
	cmpw	$514, %bx
	.loc 1 535 0
	movq	%rax, 88(%rsp)
	.loc 1 552 0
	movl	$939524095, 104(%rsp)
	.loc 1 549 0
	jbe	.L92
.LBB65:
.LBB66:
	.loc 3 352 0
	movl	1292(%rsp), %eax
	movl	%eax, 104(%rsp)
.L92:
.LBE66:
.LBE65:
	.loc 1 554 0
	movl	ram_size(%rip), %eax
	.loc 1 558 0
	movq	80(%rsp), %rdi
	movl	$4096, %esi
	.loc 1 554 0
	leal	-65536(%rax), %edx
	.loc 1 555 0
	subl	$65537, %eax
	cmpl	104(%rsp), %edx
	cmova	104(%rsp), %eax
	.loc 1 558 0
	movq	168(%rsp), %rdx
	.loc 1 555 0
	movl	%eax, 104(%rsp)
	.loc 1 558 0
	call	pstrcpy
	.loc 1 560 0
	cmpw	$513, %bx
	jbe	.L94
.LBB67:
	.loc 3 366 0
	movl	80(%rsp), %eax
	subl	phys_ram_base(%rip), %eax
.LBB68:
	.loc 3 367 0
	movl	%eax, 1288(%rsp)
.L96:
.LBE68:
.LBE67:
	.loc 1 572 0
	movzbl	1264(%rsp), %edx
	movl	$-80, %eax
	cmpw	$512, %bx
	cmovb	%edx, %eax
	movb	%al, 1264(%rsp)
	.loc 1 575 0
	jbe	.L100
.LBB69:
	.loc 3 361 0
	movl	80(%rsp), %eax
	subl	96(%rsp), %eax
.LBE69:
	.loc 1 576 0
	orb	$-128, 1265(%rsp)
.LBB70:
	.loc 3 361 0
	subl	$512, %eax
.LBB71:
	.loc 3 362 0
	movw	%ax, 1284(%rsp)
.L100:
.LBE71:
.LBE70:
	.loc 1 581 0
	cmpq	$0, 2944(%rsp)
	je	.L102
	.loc 1 582 0
	cmpw	$511, %bx
	jbe	.L313
	.loc 1 587 0
	movq	2944(%rsp), %rdi
	movl	$.LC17, %esi
	call	fopen64
	.loc 1 588 0
	testq	%rax, %rax
	.loc 1 587 0
	movq	%rax, %rbp
	.loc 1 588 0
	je	.L314
	.loc 1 594 0
	movq	%rax, %rdi
	call	get_file_size
	.loc 1 595 0
	movl	104(%rsp), %ecx
	movq	phys_ram_base(%rip), %rdx
	.loc 1 594 0
	movq	%rax, %r12
	.loc 1 597 0
	movq	stderr(%rip), %rdi
	movl	$.LC21, %esi
	.loc 1 600 0
	movslq	%r12d,%rbx
	.loc 1 595 0
	subl	%eax, %ecx
	andl	$4294963200, %ecx
	addq	%rcx, %rdx
	movq	%rdx, 72(%rsp)
	.loc 1 597 0
	movl	%eax, %edx
	xorl	%eax, %eax
	call	fprintf
	.loc 1 600 0
	movq	72(%rsp), %rdi
	movq	%rbp, %rcx
	movq	%rbx, %rdx
	movl	$1, %esi
	call	fread
	cmpq	%rbx, %rax
	jne	.L315
	.loc 1 605 0
	movq	%rbp, %rdi
	call	fclose
.LBB72:
	.loc 3 366 0
	movl	72(%rsp), %eax
	subl	phys_ram_base(%rip), %eax
.LBE72:
.LBB73:
.LBB74:
	.loc 3 367 0
	movl	%r12d, 1276(%rsp)
.LBE74:
.LBE73:
.LBB75:
.LBB76:
	movl	%eax, 1272(%rsp)
.L102:
.LBE76:
.LBE75:
	.loc 1 612 0
	movq	96(%rsp), %rdi
	leaq	736(%rsp), %rsi
	movl	$1024, %edx
	.loc 1 616 0
	movl	$4, %ebx
	.loc 1 612 0
	call	memcpy
	.loc 1 614 0
	movzbl	1233(%rsp), %eax
	.loc 1 621 0
	movq	96(%rsp), %rdi
	movl	$1, %esi
	movq	64(%rsp), %rcx
	.loc 1 616 0
	testl	%eax, %eax
	cmovne	%eax, %ebx
	.loc 1 621 0
	addq	$1024, %rdi
	.loc 1 618 0
	sall	$9, %ebx
	leal	512(%rbx), %eax
	.loc 1 621 0
	subl	$512, %ebx
	.loc 1 619 0
	subl	%eax, 108(%rsp)
	.loc 1 621 0
	movslq	%ebx,%rbx
	movq	%rbx, %rdx
	call	fread
	cmpq	%rbx, %rax
	jne	.L110
	movslq	108(%rsp),%rbx
	movq	64(%rsp), %rcx
	movl	$1, %esi
	movq	88(%rsp), %rdi
	movq	%rbx, %rdx
	call	fread
	cmpq	%rbx, %rax
	je	.L109
.L110:
	.loc 1 623 0
	movq	%r14, %rdx
	movl	$.LC23, %esi
	jmp	.L287
.L314:
	.loc 1 589 0
	movq	2944(%rsp), %rdx
	movl	$.LC20, %esi
	jmp	.L287
.L313:
	.loc 1 583 0
	movq	stderr(%rip), %rcx
	movl	$46, %edx
	movl	$1, %esi
	movl	$.LC19, %edi
.LBE64:
.LBE63:
.LBB77:
	.loc 1 828 0
	call	fwrite
	jmp	.L285
.L315:
.LBE77:
.LBB78:
.LBB79:
	.loc 1 601 0
	movq	2944(%rsp), %rdx
	movl	$.LC22, %esi
	jmp	.L287
.L293:
.LBB80:
.LBB81:
	.loc 1 393 0
	movq	stderr(%rip), %rcx
	movl	$65, %edx
	movl	$1, %esi
	movl	$.LC24, %edi
.LBE81:
.LBE80:
.LBE79:
.LBE78:
.LBB82:
	.loc 1 828 0
	call	fwrite
	jmp	.L285
.L94:
.LBE82:
.LBB83:
.LBB84:
.LBB85:
	.loc 3 361 0
	movl	80(%rsp), %eax
	subl	96(%rsp), %eax
.LBE85:
.LBB86:
.LBB87:
	.loc 3 362 0
	movw	$-23745, 768(%rsp)
.LBE87:
.LBE86:
.LBB88:
.LBB89:
	movw	%ax, 770(%rsp)
	jmp	.L96
.L308:
.LBE89:
.LBE88:
.LBE84:
.LBE83:
.LBB90:
	.loc 1 991 0
	movl	$2048, %edi
	.loc 1 996 0
	xorl	%r12d, %r12d
	.loc 1 991 0
	call	qemu_mallocz
	.loc 1 995 0
	movl	124(%rsp), %esi
	movq	128(%rsp), %rdi
	movl	$45312, %edx
	.loc 1 991 0
	movq	%rax, %rbx
	.loc 1 995 0
	addl	$3, %esi
	call	piix4_pm_init
	movq	%rax, %rbp
.L248:
	.loc 1 997 0
	movl	%r12d, %edx
	leal	80(%r12), %esi
	movq	%rbp, %rdi
	sall	$8, %edx
	.loc 1 996 0
	incl	%r12d
	.loc 1 997 0
	movslq	%edx,%rdx
	movzbl	%sil, %esi
	addq	%rbx, %rdx
	call	smbus_eeprom_device_init
	.loc 1 996 0
	cmpl	$7, %r12d
	jle	.L248
	jmp	.L244
.L309:
.LBE90:
	.loc 1 1002 0
	.p2align 4,,9
	call	i440fx_init_memory_mappings
	.p2align 4,,8
	jmp	.L48
.L305:
.LBB91:
.LBB92:
	.loc 1 269 0
	movl	$27, %esi
	movl	$25, %edi
	call	cmos_init_hd
	.p2align 4,,4
	jmp	.L232
.L133:
.LBE92:
.LBE91:
	.loc 1 883 0
	movq	152(%rsp), %rsi
	addq	phys_ram_base(%rip), %rsi
	movl	192(%rsp), %ecx
	movq	152(%rsp), %rdx
	movq	176(%rsp), %rdi
	call	isa_vga_init
	jmp	.L128
.L290:
.LBB93:
	.loc 1 818 0
	movq	112(%rsp), %rax
	movl	$.LC15, %esi
	movq	option_rom(,%rax,8), %rdx
	jmp	.L287
.L310:
.LBE93:
.LBB94:
.LBB95:
.LBB96:
	.loc 1 283 0
	movq	1824(%rsp,%r13,8), %rdi
	leaq	204(%rsp), %rcx
	leaq	200(%rsp), %rdx
	leaq	196(%rsp), %rsi
	call	bdrv_get_geometry_hint
	.loc 1 284 0
	cmpl	$1024, 196(%rsp)
	jg	.L239
	cmpl	$16, 200(%rsp)
	jg	.L239
	cmpl	$63, 204(%rsp)
	jle	.L241
.L239:
	.loc 1 289 0
	movl	$1, %ebx
	jmp	.L241
.L312:
.LBE96:
.LBE95:
.LBE94:
.LBB97:
.LBB98:
	.loc 3 341 0
	movzwl	1254(%rsp), %ebx
	.loc 1 521 0
	cmpw	$511, %bx
	jbe	.L86
	testb	$1, 1265(%rsp)
	je	.L86
	.loc 1 526 0
	cmpw	$513, %bx
	ja	.L88
	.loc 1 528 0
	movq	phys_ram_base(%rip), %rax
	leaq	589824(%rax), %rdx
	.loc 1 529 0
	movq	%rax, %rcx
	.loc 1 528 0
	movq	%rdx, 96(%rsp)
	.loc 1 529 0
	movslq	%ebp,%rdx
	subq	%rdx, %rcx
	movq	%rcx, %rdx
	addq	$630784, %rdx
	movq	%rdx, 80(%rsp)
.L278:
	.loc 1 535 0
	addq	$1048576, %rax
	jmp	.L279
.L88:
	.loc 1 533 0
	movq	phys_ram_base(%rip), %rax
	leaq	65536(%rax), %rdx
	.loc 1 534 0
	leaq	131072(%rax), %rcx
	.loc 1 533 0
	movq	%rdx, 96(%rsp)
	.loc 1 534 0
	movq	%rcx, 80(%rsp)
	jmp	.L278
.LBE98:
.LBE97:
.LFE219:
	.size	pc_init1, .-pc_init1
	.p2align 4,,15
	.type	pc_init_pci, @function
pc_init_pci:
.LFB220:
	.loc 1 1032 0
	subq	$24, %rsp
.LCFI20:
	.loc 1 1033 0
	movq	40(%rsp), %rax
	movl	$1, 8(%rsp)
	movq	%rax, 16(%rsp)
	movq	32(%rsp), %rax
	movq	%rax, (%rsp)
	call	pc_init1
	addq	$24, %rsp
	ret
.LFE220:
	.size	pc_init_pci, .-pc_init_pci
	.p2align 4,,15
	.type	pc_init_isa, @function
pc_init_isa:
.LFB221:
	.loc 1 1044 0
	subq	$24, %rsp
.LCFI21:
	.loc 1 1045 0
	movq	40(%rsp), %rax
	movl	$0, 8(%rsp)
	movq	%rax, 16(%rsp)
	movq	32(%rsp), %rax
	movq	%rax, (%rsp)
	call	pc_init1
	addq	$24, %rsp
	ret
.LFE221:
	.size	pc_init_isa, .-pc_init_isa
	.comm	nb_drives,4,4
	.comm	drives_table,792,32
	.local	floppy_controller
	.comm	floppy_controller,8,8
	.local	rtc_state
	.comm	rtc_state,8,8
	.local	pit
	.comm	pit,8,8
	.local	ioapic
	.comm	ioapic,8,8
	.local	i440fx_state
	.comm	i440fx_state,8,8
	.local	ferr_irq
	.comm	ferr_irq,8,8
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
	.quad	.LFB195
	.quad	.LFE195-.LFB195
	.align 8
.LEFDE0:
.LSFDE2:
	.long	.LEFDE2-.LASFDE2
.LASFDE2:
	.long	.Lframe0
	.quad	.LFB196
	.quad	.LFE196-.LFB196
	.align 8
.LEFDE2:
.LSFDE4:
	.long	.LEFDE4-.LASFDE4
.LASFDE4:
	.long	.Lframe0
	.quad	.LFB197
	.quad	.LFE197-.LFB197
	.align 8
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.quad	.LFB198
	.quad	.LFE198-.LFB198
	.align 8
.LEFDE6:
.LSFDE8:
	.long	.LEFDE8-.LASFDE8
.LASFDE8:
	.long	.Lframe0
	.quad	.LFB199
	.quad	.LFE199-.LFB199
	.align 8
.LEFDE8:
.LSFDE10:
	.long	.LEFDE10-.LASFDE10
.LASFDE10:
	.long	.Lframe0
	.quad	.LFB200
	.quad	.LFE200-.LFB200
	.byte	0x4
	.long	.LCFI2-.LFB200
	.byte	0xe
	.uleb128 0x20
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
	.quad	.LFB201
	.quad	.LFE201-.LFB201
	.byte	0x4
	.long	.LCFI3-.LFB201
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE12:
.LSFDE14:
	.long	.LEFDE14-.LASFDE14
.LASFDE14:
	.long	.Lframe0
	.quad	.LFB203
	.quad	.LFE203-.LFB203
	.byte	0x4
	.long	.LCFI4-.LFB203
	.byte	0xe
	.uleb128 0x10
	.byte	0x8d
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI5-.LCFI4
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI6-.LCFI5
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x4
	.byte	0x8c
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI7-.LCFI6
	.byte	0xe
	.uleb128 0x30
	.align 8
.LEFDE14:
.LSFDE16:
	.long	.LEFDE16-.LASFDE16
.LASFDE16:
	.long	.Lframe0
	.quad	.LFB206
	.quad	.LFE206-.LFB206
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
	.long	.LCFI8-.LFB210
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE24:
.LSFDE26:
	.long	.LEFDE26-.LASFDE26
.LASFDE26:
	.long	.Lframe0
	.quad	.LFB214
	.quad	.LFE214-.LFB214
	.byte	0x4
	.long	.LCFI10-.LFB214
	.byte	0x8c
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI12-.LCFI10
	.byte	0xe
	.uleb128 0x20
	.byte	0x8d
	.uleb128 0x2
	.align 8
.LEFDE26:
.LSFDE28:
	.long	.LEFDE28-.LASFDE28
.LASFDE28:
	.long	.Lframe0
	.quad	.LFB216
	.quad	.LFE216-.LFB216
	.align 8
.LEFDE28:
.LSFDE30:
	.long	.LEFDE30-.LASFDE30
.LASFDE30:
	.long	.Lframe0
	.quad	.LFB219
	.quad	.LFE219-.LFB219
	.byte	0x4
	.long	.LCFI13-.LFB219
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI14-.LCFI13
	.byte	0xe
	.uleb128 0x18
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI15-.LCFI14
	.byte	0xe
	.uleb128 0x20
	.byte	0x8d
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI16-.LCFI15
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI17-.LCFI16
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI18-.LCFI17
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI19-.LCFI18
	.byte	0xe
	.uleb128 0xb80
	.byte	0x83
	.uleb128 0x7
	.byte	0x86
	.uleb128 0x6
	.byte	0x8c
	.uleb128 0x5
	.align 8
.LEFDE30:
.LSFDE32:
	.long	.LEFDE32-.LASFDE32
.LASFDE32:
	.long	.Lframe0
	.quad	.LFB220
	.quad	.LFE220-.LFB220
	.byte	0x4
	.long	.LCFI20-.LFB220
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE32:
.LSFDE34:
	.long	.LEFDE34-.LASFDE34
.LASFDE34:
	.long	.Lframe0
	.quad	.LFB221
	.quad	.LFE221-.LFB221
	.byte	0x4
	.long	.LCFI21-.LFB221
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE34:
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
	.quad	.LFB195
	.quad	.LFE195-.LFB195
	.align 8
.LEFDE1:
.LSFDE3:
	.long	.LEFDE3-.LASFDE3
.LASFDE3:
	.long	.LASFDE3-.Lframe1
	.quad	.LFB196
	.quad	.LFE196-.LFB196
	.align 8
.LEFDE3:
.LSFDE5:
	.long	.LEFDE5-.LASFDE5
.LASFDE5:
	.long	.LASFDE5-.Lframe1
	.quad	.LFB197
	.quad	.LFE197-.LFB197
	.align 8
.LEFDE5:
.LSFDE7:
	.long	.LEFDE7-.LASFDE7
.LASFDE7:
	.long	.LASFDE7-.Lframe1
	.quad	.LFB198
	.quad	.LFE198-.LFB198
	.align 8
.LEFDE7:
.LSFDE9:
	.long	.LEFDE9-.LASFDE9
.LASFDE9:
	.long	.LASFDE9-.Lframe1
	.quad	.LFB199
	.quad	.LFE199-.LFB199
	.align 8
.LEFDE9:
.LSFDE11:
	.long	.LEFDE11-.LASFDE11
.LASFDE11:
	.long	.LASFDE11-.Lframe1
	.quad	.LFB200
	.quad	.LFE200-.LFB200
	.byte	0x4
	.long	.LCFI2-.LFB200
	.byte	0xe
	.uleb128 0x20
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
	.quad	.LFB201
	.quad	.LFE201-.LFB201
	.byte	0x4
	.long	.LCFI3-.LFB201
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE13:
.LSFDE15:
	.long	.LEFDE15-.LASFDE15
.LASFDE15:
	.long	.LASFDE15-.Lframe1
	.quad	.LFB203
	.quad	.LFE203-.LFB203
	.byte	0x4
	.long	.LCFI4-.LFB203
	.byte	0xe
	.uleb128 0x10
	.byte	0x8d
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI5-.LCFI4
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI6-.LCFI5
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x4
	.byte	0x8c
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI7-.LCFI6
	.byte	0xe
	.uleb128 0x30
	.align 8
.LEFDE15:
.LSFDE17:
	.long	.LEFDE17-.LASFDE17
.LASFDE17:
	.long	.LASFDE17-.Lframe1
	.quad	.LFB206
	.quad	.LFE206-.LFB206
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
	.long	.LCFI8-.LFB210
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE25:
.LSFDE27:
	.long	.LEFDE27-.LASFDE27
.LASFDE27:
	.long	.LASFDE27-.Lframe1
	.quad	.LFB214
	.quad	.LFE214-.LFB214
	.byte	0x4
	.long	.LCFI10-.LFB214
	.byte	0x8c
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI12-.LCFI10
	.byte	0xe
	.uleb128 0x20
	.byte	0x8d
	.uleb128 0x2
	.align 8
.LEFDE27:
.LSFDE29:
	.long	.LEFDE29-.LASFDE29
.LASFDE29:
	.long	.LASFDE29-.Lframe1
	.quad	.LFB216
	.quad	.LFE216-.LFB216
	.align 8
.LEFDE29:
.LSFDE31:
	.long	.LEFDE31-.LASFDE31
.LASFDE31:
	.long	.LASFDE31-.Lframe1
	.quad	.LFB219
	.quad	.LFE219-.LFB219
	.byte	0x4
	.long	.LCFI13-.LFB219
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI14-.LCFI13
	.byte	0xe
	.uleb128 0x18
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI15-.LCFI14
	.byte	0xe
	.uleb128 0x20
	.byte	0x8d
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI16-.LCFI15
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI17-.LCFI16
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI18-.LCFI17
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI19-.LCFI18
	.byte	0xe
	.uleb128 0xb80
	.byte	0x83
	.uleb128 0x7
	.byte	0x86
	.uleb128 0x6
	.byte	0x8c
	.uleb128 0x5
	.align 8
.LEFDE31:
.LSFDE33:
	.long	.LEFDE33-.LASFDE33
.LASFDE33:
	.long	.LASFDE33-.Lframe1
	.quad	.LFB220
	.quad	.LFE220-.LFB220
	.byte	0x4
	.long	.LCFI20-.LFB220
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE33:
.LSFDE35:
	.long	.LEFDE35-.LASFDE35
.LASFDE35:
	.long	.LASFDE35-.Lframe1
	.quad	.LFB221
	.quad	.LFE221-.LFB221
	.byte	0x4
	.long	.LCFI21-.LFB221
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE35:
	.file 4 "/usr/include/stdint.h"
	.file 5 "/home/remco/Projects/Argos/src/target-i386/cpu.h"
	.file 6 "../cpu-defs.h"
	.file 7 "../argos-tag.h"
	.file 8 "../argos.h"
	.file 9 "/home/remco/Projects/Argos/src/target-i386/argos-shellcode.h"
	.file 10 "/usr/include/stdio.h"
	.file 11 "/usr/include/libio.h"
	.file 12 "/usr/include/bits/types.h"
	.file 13 "/usr/lib/gcc/x86_64-linux-gnu/3.4.6/include/stddef.h"
	.file 14 "/usr/include/sys/types.h"
	.file 15 "/home/remco/Projects/Argos/src/fpu/softfloat-native.h"
	.file 16 "/usr/include/setjmp.h"
	.file 17 "/usr/include/bits/setjmp.h"
	.file 18 "/usr/include/bits/sigset.h"
	.file 19 "../qemu-common.h"
	.file 20 "/home/remco/Projects/Argos/src/hw/pc.h"
	.file 21 "../net.h"
	.file 22 "../sysemu.h"
	.file 23 "/home/remco/Projects/Argos/src/hw/boards.h"
	.file 24 "/home/remco/Projects/Argos/src/hw/fdc.h"
	.file 25 "/home/remco/Projects/Argos/src/hw/pci.h"
	.text
.Letext0:
	.section	.debug_info
	.long	0x28b7
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.Ldebug_line0
	.quad	.Letext0
	.quad	.Ltext0
	.long	.LASF395
	.byte	0x1
	.long	.LASF396
	.long	.LASF397
	.uleb128 0x2
	.long	.LASF9
	.byte	0xd
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
	.long	0x3f
	.uleb128 0x6
	.byte	0x8
	.long	0x74
	.uleb128 0x5
	.long	0x79
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
	.uleb128 0x6
	.byte	0x8
	.long	0x79
	.uleb128 0x2
	.long	.LASF12
	.byte	0xe
	.byte	0xc5
	.long	0x3f
	.uleb128 0x2
	.long	.LASF13
	.byte	0xe
	.byte	0xc6
	.long	0x4d
	.uleb128 0x8
	.long	0xe0
	.byte	0x80
	.byte	0x12
	.byte	0x20
	.uleb128 0x9
	.long	.LASF17
	.byte	0x12
	.byte	0x1f
	.long	0xe0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xa
	.long	0xf0
	.long	0x38
	.uleb128 0xb
	.long	0x5b
	.byte	0xf
	.byte	0x0
	.uleb128 0x2
	.long	.LASF14
	.byte	0x12
	.byte	0x20
	.long	0xc9
	.uleb128 0x3
	.long	.LASF15
	.byte	0x8
	.byte	0x7
	.uleb128 0x2
	.long	.LASF16
	.byte	0xa
	.byte	0x31
	.long	0x10d
	.uleb128 0xc
	.long	0x2d9
	.long	.LASF48
	.byte	0xd8
	.byte	0xa
	.byte	0x2d
	.uleb128 0xd
	.long	.LASF18
	.byte	0xb
	.value	0x110
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF19
	.byte	0xb
	.value	0x115
	.long	0xad
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF20
	.byte	0xb
	.value	0x116
	.long	0xad
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.long	.LASF21
	.byte	0xb
	.value	0x117
	.long	0xad
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.long	.LASF22
	.byte	0xb
	.value	0x118
	.long	0xad
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.long	.LASF23
	.byte	0xb
	.value	0x119
	.long	0xad
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.long	.LASF24
	.byte	0xb
	.value	0x11a
	.long	0xad
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.long	.LASF25
	.byte	0xb
	.value	0x11b
	.long	0xad
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.long	.LASF26
	.byte	0xb
	.value	0x11c
	.long	0xad
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.long	.LASF27
	.byte	0xb
	.value	0x11e
	.long	0xad
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.long	.LASF28
	.byte	0xb
	.value	0x11f
	.long	0xad
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xd
	.long	.LASF29
	.byte	0xb
	.value	0x120
	.long	0xad
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xd
	.long	.LASF30
	.byte	0xb
	.value	0x122
	.long	0x317
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.long	.LASF31
	.byte	0xb
	.value	0x124
	.long	0x31d
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.long	.LASF32
	.byte	0xb
	.value	0x126
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xd
	.long	.LASF33
	.byte	0xb
	.value	0x12a
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xd
	.long	.LASF34
	.byte	0xb
	.value	0x12c
	.long	0x95
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xd
	.long	.LASF35
	.byte	0xb
	.value	0x130
	.long	0x62
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xd
	.long	.LASF36
	.byte	0xb
	.value	0x131
	.long	0x87
	.byte	0x3
	.byte	0x23
	.uleb128 0x82
	.uleb128 0xd
	.long	.LASF37
	.byte	0xb
	.value	0x132
	.long	0x323
	.byte	0x3
	.byte	0x23
	.uleb128 0x83
	.uleb128 0xd
	.long	.LASF38
	.byte	0xb
	.value	0x136
	.long	0x333
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xd
	.long	.LASF39
	.byte	0xb
	.value	0x13f
	.long	0xa0
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xd
	.long	.LASF40
	.byte	0xb
	.value	0x148
	.long	0xab
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xd
	.long	.LASF41
	.byte	0xb
	.value	0x149
	.long	0xab
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xd
	.long	.LASF42
	.byte	0xb
	.value	0x14a
	.long	0xab
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xd
	.long	.LASF43
	.byte	0xb
	.value	0x14b
	.long	0xab
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xd
	.long	.LASF44
	.byte	0xb
	.value	0x14c
	.long	0x2d
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0xd
	.long	.LASF45
	.byte	0xb
	.value	0x14e
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xd
	.long	.LASF46
	.byte	0xb
	.value	0x150
	.long	0x339
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.byte	0x0
	.uleb128 0xe
	.long	.LASF47
	.byte	0xb
	.byte	0xb4
	.uleb128 0xc
	.long	0x317
	.long	.LASF49
	.byte	0x18
	.byte	0xb
	.byte	0xba
	.uleb128 0x9
	.long	.LASF50
	.byte	0xb
	.byte	0xbb
	.long	0x317
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF51
	.byte	0xb
	.byte	0xbc
	.long	0x31d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF52
	.byte	0xb
	.byte	0xc0
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x2e0
	.uleb128 0x6
	.byte	0x8
	.long	0x10d
	.uleb128 0xa
	.long	0x333
	.long	0x79
	.uleb128 0xb
	.long	0x5b
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x2d9
	.uleb128 0xa
	.long	0x349
	.long	0x79
	.uleb128 0xb
	.long	0x5b
	.byte	0x13
	.byte	0x0
	.uleb128 0xf
	.long	0x359
	.byte	0x1
	.long	0x3f
	.uleb128 0x10
	.long	0xab
	.byte	0x0
	.uleb128 0x2
	.long	.LASF53
	.byte	0x4
	.byte	0x31
	.long	0x80
	.uleb128 0x2
	.long	.LASF54
	.byte	0x4
	.byte	0x32
	.long	0x62
	.uleb128 0x2
	.long	.LASF55
	.byte	0x4
	.byte	0x34
	.long	0x46
	.uleb128 0x2
	.long	.LASF56
	.byte	0x4
	.byte	0x38
	.long	0x38
	.uleb128 0x2
	.long	.LASF57
	.byte	0x11
	.byte	0x20
	.long	0x390
	.uleb128 0xa
	.long	0x3a0
	.long	0x4d
	.uleb128 0xb
	.long	0x5b
	.byte	0x7
	.byte	0x0
	.uleb128 0xc
	.long	0x3d7
	.long	.LASF58
	.byte	0xc8
	.byte	0x10
	.byte	0x24
	.uleb128 0x9
	.long	.LASF59
	.byte	0x10
	.byte	0x29
	.long	0x385
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF60
	.byte	0x10
	.byte	0x2a
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.long	.LASF61
	.byte	0x10
	.byte	0x2b
	.long	0xf0
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.byte	0x0
	.uleb128 0x2
	.long	.LASF62
	.byte	0x10
	.byte	0x31
	.long	0x3e2
	.uleb128 0xa
	.long	0x3f2
	.long	0x3a0
	.uleb128 0xb
	.long	0x5b
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.long	.LASF63
	.byte	0x6
	.byte	0x31
	.long	0x36f
	.uleb128 0x2
	.long	.LASF64
	.byte	0x6
	.byte	0x49
	.long	0x37a
	.uleb128 0x2
	.long	.LASF65
	.byte	0x6
	.byte	0x50
	.long	0x38
	.uleb128 0xc
	.long	0x458
	.long	.LASF66
	.byte	0x18
	.byte	0x6
	.byte	0x69
	.uleb128 0x9
	.long	.LASF67
	.byte	0x6
	.byte	0x70
	.long	0x3f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF68
	.byte	0x6
	.byte	0x71
	.long	0x3f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.long	.LASF69
	.byte	0x6
	.byte	0x72
	.long	0x3f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF70
	.byte	0x6
	.byte	0x74
	.long	0x3fd
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.long	.LASF66
	.byte	0x6
	.byte	0x75
	.long	0x413
	.uleb128 0x3
	.long	.LASF71
	.byte	0x4
	.byte	0x4
	.uleb128 0x3
	.long	.LASF72
	.byte	0x8
	.byte	0x4
	.uleb128 0x2
	.long	.LASF73
	.byte	0xf
	.byte	0x3b
	.long	0x463
	.uleb128 0x2
	.long	.LASF74
	.byte	0xf
	.byte	0x3c
	.long	0x46a
	.uleb128 0x2
	.long	.LASF75
	.byte	0xf
	.byte	0x3e
	.long	0x492
	.uleb128 0x3
	.long	.LASF76
	.byte	0x10
	.byte	0x4
	.uleb128 0xc
	.long	0x4c2
	.long	.LASF77
	.byte	0x2
	.byte	0xf
	.byte	0x6d
	.uleb128 0x9
	.long	.LASF78
	.byte	0xf
	.byte	0x6e
	.long	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF79
	.byte	0xf
	.byte	0x70
	.long	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0x0
	.uleb128 0x2
	.long	.LASF77
	.byte	0xf
	.byte	0x72
	.long	0x499
	.uleb128 0x11
	.long	.LASF80
	.byte	0x5
	.value	0x198
	.long	0x487
	.uleb128 0x12
	.long	0x523
	.long	.LASF81
	.byte	0x10
	.byte	0x5
	.value	0x19d
	.uleb128 0xd
	.long	.LASF82
	.byte	0x5
	.value	0x19e
	.long	0x36f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF83
	.byte	0x5
	.value	0x19f
	.long	0x3f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.long	.LASF84
	.byte	0x5
	.value	0x1a0
	.long	0x36f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF85
	.byte	0x5
	.value	0x1a1
	.long	0x36f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x11
	.long	.LASF81
	.byte	0x5
	.value	0x1a2
	.long	0x4d9
	.uleb128 0x13
	.long	0x57b
	.byte	0x10
	.byte	0x5
	.value	0x1ab
	.uleb128 0x14
	.string	"_b"
	.byte	0x5
	.value	0x1a5
	.long	0x57b
	.uleb128 0x14
	.string	"_w"
	.byte	0x5
	.value	0x1a6
	.long	0x58b
	.uleb128 0x14
	.string	"_l"
	.byte	0x5
	.value	0x1a7
	.long	0x59b
	.uleb128 0x14
	.string	"_q"
	.byte	0x5
	.value	0x1a8
	.long	0x5ab
	.uleb128 0x14
	.string	"_s"
	.byte	0x5
	.value	0x1a9
	.long	0x5bb
	.uleb128 0x14
	.string	"_d"
	.byte	0x5
	.value	0x1aa
	.long	0x5cb
	.byte	0x0
	.uleb128 0xa
	.long	0x58b
	.long	0x359
	.uleb128 0xb
	.long	0x5b
	.byte	0xf
	.byte	0x0
	.uleb128 0xa
	.long	0x59b
	.long	0x364
	.uleb128 0xb
	.long	0x5b
	.byte	0x7
	.byte	0x0
	.uleb128 0xa
	.long	0x5ab
	.long	0x36f
	.uleb128 0xb
	.long	0x5b
	.byte	0x3
	.byte	0x0
	.uleb128 0xa
	.long	0x5bb
	.long	0x37a
	.uleb128 0xb
	.long	0x5b
	.byte	0x1
	.byte	0x0
	.uleb128 0xa
	.long	0x5cb
	.long	0x471
	.uleb128 0xb
	.long	0x5b
	.byte	0x3
	.byte	0x0
	.uleb128 0xa
	.long	0x5db
	.long	0x47c
	.uleb128 0xb
	.long	0x5b
	.byte	0x1
	.byte	0x0
	.uleb128 0x11
	.long	.LASF86
	.byte	0x5
	.value	0x1ab
	.long	0x52f
	.uleb128 0x13
	.long	0x61c
	.byte	0x8
	.byte	0x5
	.value	0x1b2
	.uleb128 0x14
	.string	"_b"
	.byte	0x5
	.value	0x1ae
	.long	0x61c
	.uleb128 0x14
	.string	"_w"
	.byte	0x5
	.value	0x1af
	.long	0x62c
	.uleb128 0x14
	.string	"_l"
	.byte	0x5
	.value	0x1b0
	.long	0x63c
	.uleb128 0x14
	.string	"q"
	.byte	0x5
	.value	0x1b1
	.long	0x37a
	.byte	0x0
	.uleb128 0xa
	.long	0x62c
	.long	0x359
	.uleb128 0xb
	.long	0x5b
	.byte	0x7
	.byte	0x0
	.uleb128 0xa
	.long	0x63c
	.long	0x364
	.uleb128 0xb
	.long	0x5b
	.byte	0x1
	.byte	0x0
	.uleb128 0xa
	.long	0x64c
	.long	0x36f
	.uleb128 0xb
	.long	0x5b
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.long	.LASF87
	.byte	0x5
	.value	0x1b2
	.long	0x5e7
	.uleb128 0x2
	.long	.LASF88
	.byte	0x8
	.byte	0x2f
	.long	0x36f
	.uleb128 0x2
	.long	.LASF89
	.byte	0x8
	.byte	0x34
	.long	0x36f
	.uleb128 0x2
	.long	.LASF90
	.byte	0x8
	.byte	0x35
	.long	0x663
	.uleb128 0xc
	.long	0x6a2
	.long	.LASF91
	.byte	0x8
	.byte	0x7
	.byte	0x37
	.uleb128 0x9
	.long	.LASF92
	.byte	0x7
	.byte	0x38
	.long	0x658
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF93
	.byte	0x7
	.byte	0x39
	.long	0x663
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.long	.LASF94
	.byte	0x7
	.byte	0x3d
	.long	0x679
	.uleb128 0xc
	.long	0x822
	.long	.LASF95
	.byte	0xd0
	.byte	0x9
	.byte	0x36
	.uleb128 0x9
	.long	.LASF96
	.byte	0x9
	.byte	0x38
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF97
	.byte	0x9
	.byte	0x39
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x15
	.string	"cr3"
	.byte	0x9
	.byte	0x3d
	.long	0x3f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF98
	.byte	0x9
	.byte	0x3f
	.long	0x822
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.long	.LASF99
	.byte	0x9
	.byte	0x41
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.long	.LASF100
	.byte	0x9
	.byte	0x43
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x9
	.long	.LASF101
	.byte	0x9
	.byte	0x45
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.long	.LASF102
	.byte	0x9
	.byte	0x47
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.long	.LASF103
	.byte	0x9
	.byte	0x4a
	.long	0x3f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.long	.LASF104
	.byte	0x9
	.byte	0x4b
	.long	0x3f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.long	.LASF105
	.byte	0x9
	.byte	0x4c
	.long	0x3f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.long	.LASF106
	.byte	0x9
	.byte	0x4e
	.long	0x828
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x9
	.long	.LASF107
	.byte	0x9
	.byte	0x50
	.long	0x62
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0x9
	.long	.LASF108
	.byte	0x9
	.byte	0x52
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x9
	.long	.LASF109
	.byte	0x9
	.byte	0x54
	.long	0x838
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x9
	.long	.LASF110
	.byte	0x9
	.byte	0x56
	.long	0x3f2
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x9
	.long	.LASF111
	.byte	0x9
	.byte	0x58
	.long	0x848
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x9
	.long	.LASF112
	.byte	0x9
	.byte	0x5b
	.long	0x38
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x9
	.long	.LASF113
	.byte	0x9
	.byte	0x5c
	.long	0x80
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x9
	.long	.LASF114
	.byte	0x9
	.byte	0x5e
	.long	0x46
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0x9
	.long	.LASF115
	.byte	0x9
	.byte	0x60
	.long	0x3f2
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x9
	.long	.LASF116
	.byte	0x9
	.byte	0x62
	.long	0x848
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x9
	.long	.LASF117
	.byte	0x9
	.byte	0x65
	.long	0x38
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x9
	.long	.LASF118
	.byte	0x9
	.byte	0x66
	.long	0x80
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.uleb128 0x9
	.long	.LASF119
	.byte	0x9
	.byte	0x68
	.long	0x46
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x102
	.uleb128 0xa
	.long	0x838
	.long	0x79
	.uleb128 0xb
	.long	0x5b
	.byte	0x10
	.byte	0x0
	.uleb128 0xa
	.long	0x848
	.long	0x663
	.uleb128 0xb
	.long	0x5b
	.byte	0x10
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x663
	.uleb128 0x2
	.long	.LASF120
	.byte	0x9
	.byte	0x69
	.long	0x6ad
	.uleb128 0x13
	.long	0x879
	.byte	0x10
	.byte	0x5
	.value	0x20f
	.uleb128 0x14
	.string	"d"
	.byte	0x5
	.value	0x20a
	.long	0x4cd
	.uleb128 0x14
	.string	"mmx"
	.byte	0x5
	.value	0x20e
	.long	0x64c
	.byte	0x0
	.uleb128 0x13
	.long	0x8af
	.byte	0x8
	.byte	0x5
	.value	0x219
	.uleb128 0x14
	.string	"f"
	.byte	0x5
	.value	0x215
	.long	0x463
	.uleb128 0x14
	.string	"d"
	.byte	0x5
	.value	0x216
	.long	0x46a
	.uleb128 0x14
	.string	"i32"
	.byte	0x5
	.value	0x217
	.long	0x3f
	.uleb128 0x14
	.string	"i64"
	.byte	0x5
	.value	0x218
	.long	0xbe
	.byte	0x0
	.uleb128 0x16
	.long	0x8d7
	.byte	0x10
	.byte	0x5
	.value	0x246
	.uleb128 0xd
	.long	.LASF121
	.byte	0x5
	.value	0x246
	.long	0x3f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF70
	.byte	0x5
	.value	0x246
	.long	0x3fd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x17
	.long	0xe73
	.long	.LASF122
	.value	0xb820
	.byte	0x5
	.value	0x1d8
	.uleb128 0xd
	.long	.LASF123
	.byte	0x5
	.value	0x1df
	.long	0xe73
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x18
	.string	"eip"
	.byte	0x5
	.value	0x1e0
	.long	0x3f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.long	.LASF124
	.byte	0x5
	.value	0x1e1
	.long	0x3f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.long	.LASF125
	.byte	0x5
	.value	0x1e6
	.long	0x6a2
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.long	.LASF126
	.byte	0x5
	.value	0x1e6
	.long	0x6a2
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.long	.LASF127
	.byte	0x5
	.value	0x1e6
	.long	0x6a2
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.long	.LASF128
	.byte	0x5
	.value	0x1e7
	.long	0xe83
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.long	.LASF129
	.byte	0x5
	.value	0x1e9
	.long	0x84e
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xd
	.long	.LASF130
	.byte	0x5
	.value	0x1ec
	.long	0x3f2
	.byte	0x3
	.byte	0x23
	.uleb128 0x150
	.uleb128 0xd
	.long	.LASF131
	.byte	0x5
	.value	0x1ed
	.long	0x3f2
	.byte	0x3
	.byte	0x23
	.uleb128 0x154
	.uleb128 0xd
	.long	.LASF132
	.byte	0x5
	.value	0x1ee
	.long	0x36f
	.byte	0x3
	.byte	0x23
	.uleb128 0x158
	.uleb128 0x18
	.string	"df"
	.byte	0x5
	.value	0x1ef
	.long	0xb3
	.byte	0x3
	.byte	0x23
	.uleb128 0x15c
	.uleb128 0xd
	.long	.LASF133
	.byte	0x5
	.value	0x1f0
	.long	0x36f
	.byte	0x3
	.byte	0x23
	.uleb128 0x160
	.uleb128 0xd
	.long	.LASF134
	.byte	0x5
	.value	0x1f3
	.long	0xe93
	.byte	0x3
	.byte	0x23
	.uleb128 0x164
	.uleb128 0x18
	.string	"ldt"
	.byte	0x5
	.value	0x1f4
	.long	0x523
	.byte	0x3
	.byte	0x23
	.uleb128 0x1c4
	.uleb128 0x18
	.string	"tr"
	.byte	0x5
	.value	0x1f5
	.long	0x523
	.byte	0x3
	.byte	0x23
	.uleb128 0x1d4
	.uleb128 0x18
	.string	"gdt"
	.byte	0x5
	.value	0x1f6
	.long	0x523
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e4
	.uleb128 0x18
	.string	"idt"
	.byte	0x5
	.value	0x1f7
	.long	0x523
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f4
	.uleb128 0x18
	.string	"cr"
	.byte	0x5
	.value	0x1f9
	.long	0xea3
	.byte	0x3
	.byte	0x23
	.uleb128 0x204
	.uleb128 0xd
	.long	.LASF135
	.byte	0x5
	.value	0x1fa
	.long	0x36f
	.byte	0x3
	.byte	0x23
	.uleb128 0x218
	.uleb128 0xd
	.long	.LASF136
	.byte	0x5
	.value	0x201
	.long	0x3f2
	.byte	0x3
	.byte	0x23
	.uleb128 0x21c
	.uleb128 0xd
	.long	.LASF137
	.byte	0x5
	.value	0x202
	.long	0x3f2
	.byte	0x3
	.byte	0x23
	.uleb128 0x220
	.uleb128 0xd
	.long	.LASF138
	.byte	0x5
	.value	0x204
	.long	0x46
	.byte	0x3
	.byte	0x23
	.uleb128 0x224
	.uleb128 0xd
	.long	.LASF139
	.byte	0x5
	.value	0x205
	.long	0x46
	.byte	0x3
	.byte	0x23
	.uleb128 0x228
	.uleb128 0xd
	.long	.LASF140
	.byte	0x5
	.value	0x206
	.long	0x46
	.byte	0x3
	.byte	0x23
	.uleb128 0x22c
	.uleb128 0xd
	.long	.LASF141
	.byte	0x5
	.value	0x207
	.long	0x61c
	.byte	0x3
	.byte	0x23
	.uleb128 0x230
	.uleb128 0xd
	.long	.LASF142
	.byte	0x5
	.value	0x20f
	.long	0xeb3
	.byte	0x3
	.byte	0x23
	.uleb128 0x240
	.uleb128 0xd
	.long	.LASF143
	.byte	0x5
	.value	0x212
	.long	0x4c2
	.byte	0x3
	.byte	0x23
	.uleb128 0x2c0
	.uleb128 0x18
	.string	"ft0"
	.byte	0x5
	.value	0x213
	.long	0x4cd
	.byte	0x3
	.byte	0x23
	.uleb128 0x2d0
	.uleb128 0xd
	.long	.LASF144
	.byte	0x5
	.value	0x219
	.long	0x879
	.byte	0x3
	.byte	0x23
	.uleb128 0x2e0
	.uleb128 0xd
	.long	.LASF145
	.byte	0x5
	.value	0x21b
	.long	0x4c2
	.byte	0x3
	.byte	0x23
	.uleb128 0x2e8
	.uleb128 0xd
	.long	.LASF146
	.byte	0x5
	.value	0x21c
	.long	0x36f
	.byte	0x3
	.byte	0x23
	.uleb128 0x2ec
	.uleb128 0xd
	.long	.LASF147
	.byte	0x5
	.value	0x21d
	.long	0xec3
	.byte	0x3
	.byte	0x23
	.uleb128 0x2f0
	.uleb128 0xd
	.long	.LASF148
	.byte	0x5
	.value	0x21e
	.long	0x5db
	.byte	0x3
	.byte	0x23
	.uleb128 0x370
	.uleb128 0xd
	.long	.LASF149
	.byte	0x5
	.value	0x21f
	.long	0x64c
	.byte	0x3
	.byte	0x23
	.uleb128 0x380
	.uleb128 0xd
	.long	.LASF150
	.byte	0x5
	.value	0x222
	.long	0x36f
	.byte	0x3
	.byte	0x23
	.uleb128 0x388
	.uleb128 0xd
	.long	.LASF151
	.byte	0x5
	.value	0x223
	.long	0x36f
	.byte	0x3
	.byte	0x23
	.uleb128 0x38c
	.uleb128 0xd
	.long	.LASF152
	.byte	0x5
	.value	0x224
	.long	0x36f
	.byte	0x3
	.byte	0x23
	.uleb128 0x390
	.uleb128 0xd
	.long	.LASF153
	.byte	0x5
	.value	0x225
	.long	0x37a
	.byte	0x3
	.byte	0x23
	.uleb128 0x398
	.uleb128 0xd
	.long	.LASF154
	.byte	0x5
	.value	0x226
	.long	0x37a
	.byte	0x3
	.byte	0x23
	.uleb128 0x3a0
	.uleb128 0xd
	.long	.LASF155
	.byte	0x5
	.value	0x228
	.long	0x3fd
	.byte	0x3
	.byte	0x23
	.uleb128 0x3a8
	.uleb128 0xd
	.long	.LASF156
	.byte	0x5
	.value	0x229
	.long	0x3fd
	.byte	0x3
	.byte	0x23
	.uleb128 0x3b0
	.uleb128 0xd
	.long	.LASF157
	.byte	0x5
	.value	0x22a
	.long	0x37a
	.byte	0x3
	.byte	0x23
	.uleb128 0x3b8
	.uleb128 0xd
	.long	.LASF158
	.byte	0x5
	.value	0x22b
	.long	0x364
	.byte	0x3
	.byte	0x23
	.uleb128 0x3c0
	.uleb128 0xd
	.long	.LASF159
	.byte	0x5
	.value	0x22c
	.long	0x364
	.byte	0x3
	.byte	0x23
	.uleb128 0x3c2
	.uleb128 0xd
	.long	.LASF160
	.byte	0x5
	.value	0x22d
	.long	0x364
	.byte	0x3
	.byte	0x23
	.uleb128 0x3c4
	.uleb128 0xd
	.long	.LASF161
	.byte	0x5
	.value	0x22e
	.long	0x364
	.byte	0x3
	.byte	0x23
	.uleb128 0x3c6
	.uleb128 0xd
	.long	.LASF162
	.byte	0x5
	.value	0x22f
	.long	0x36f
	.byte	0x3
	.byte	0x23
	.uleb128 0x3c8
	.uleb128 0x18
	.string	"pat"
	.byte	0x5
	.value	0x238
	.long	0x37a
	.byte	0x3
	.byte	0x23
	.uleb128 0x3d0
	.uleb128 0xd
	.long	.LASF163
	.byte	0x5
	.value	0x23b
	.long	0x3d7
	.byte	0x3
	.byte	0x23
	.uleb128 0x3d8
	.uleb128 0xd
	.long	.LASF164
	.byte	0x5
	.value	0x23c
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x4a0
	.uleb128 0xd
	.long	.LASF165
	.byte	0x5
	.value	0x23d
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x4a4
	.uleb128 0xd
	.long	.LASF166
	.byte	0x5
	.value	0x23e
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x4a8
	.uleb128 0xd
	.long	.LASF167
	.byte	0x5
	.value	0x23f
	.long	0x3f2
	.byte	0x3
	.byte	0x23
	.uleb128 0x4ac
	.uleb128 0x18
	.string	"dr"
	.byte	0x5
	.value	0x240
	.long	0xe73
	.byte	0x3
	.byte	0x23
	.uleb128 0x4b0
	.uleb128 0xd
	.long	.LASF168
	.byte	0x5
	.value	0x241
	.long	0x36f
	.byte	0x3
	.byte	0x23
	.uleb128 0x4d0
	.uleb128 0xd
	.long	.LASF169
	.byte	0x5
	.value	0x242
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x4d4
	.uleb128 0xd
	.long	.LASF170
	.byte	0x5
	.value	0x243
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x4d8
	.uleb128 0xd
	.long	.LASF171
	.byte	0x5
	.value	0x244
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x4dc
	.uleb128 0xd
	.long	.LASF172
	.byte	0x5
	.value	0x246
	.long	0xed9
	.byte	0x3
	.byte	0x23
	.uleb128 0x4e0
	.uleb128 0xd
	.long	.LASF173
	.byte	0x5
	.value	0x246
	.long	0x38
	.byte	0x3
	.byte	0x23
	.uleb128 0x4e8
	.uleb128 0xd
	.long	.LASF174
	.byte	0x5
	.value	0x246
	.long	0x3f2
	.byte	0x3
	.byte	0x23
	.uleb128 0x4f0
	.uleb128 0xd
	.long	.LASF175
	.byte	0x5
	.value	0x246
	.long	0xedf
	.byte	0x3
	.byte	0x23
	.uleb128 0x4f8
	.uleb128 0xd
	.long	.LASF176
	.byte	0x5
	.value	0x246
	.long	0xef5
	.byte	0x3
	.byte	0x23
	.uleb128 0x34f8
	.uleb128 0xd
	.long	.LASF177
	.byte	0x5
	.value	0x246
	.long	0xf06
	.byte	0x4
	.byte	0x23
	.uleb128 0xb4f8
	.uleb128 0xd
	.long	.LASF178
	.byte	0x5
	.value	0x246
	.long	0x3f
	.byte	0x4
	.byte	0x23
	.uleb128 0xb578
	.uleb128 0xd
	.long	.LASF179
	.byte	0x5
	.value	0x246
	.long	0x3f
	.byte	0x4
	.byte	0x23
	.uleb128 0xb57c
	.uleb128 0xd
	.long	.LASF180
	.byte	0x5
	.value	0x246
	.long	0xf16
	.byte	0x4
	.byte	0x23
	.uleb128 0xb580
	.uleb128 0xd
	.long	.LASF181
	.byte	0x5
	.value	0x246
	.long	0x3f
	.byte	0x4
	.byte	0x23
	.uleb128 0xb780
	.uleb128 0xd
	.long	.LASF182
	.byte	0x5
	.value	0x246
	.long	0x3f
	.byte	0x4
	.byte	0x23
	.uleb128 0xb784
	.uleb128 0xd
	.long	.LASF183
	.byte	0x5
	.value	0x246
	.long	0xab
	.byte	0x4
	.byte	0x23
	.uleb128 0xb788
	.uleb128 0xd
	.long	.LASF184
	.byte	0x5
	.value	0x246
	.long	0x3f
	.byte	0x4
	.byte	0x23
	.uleb128 0xb790
	.uleb128 0xd
	.long	.LASF185
	.byte	0x5
	.value	0x246
	.long	0xab
	.byte	0x4
	.byte	0x23
	.uleb128 0xb798
	.uleb128 0xd
	.long	.LASF186
	.byte	0x5
	.value	0x246
	.long	0x6e
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7a0
	.uleb128 0xd
	.long	.LASF187
	.byte	0x5
	.value	0x249
	.long	0x36f
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7a8
	.uleb128 0xd
	.long	.LASF188
	.byte	0x5
	.value	0x24a
	.long	0x36f
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7ac
	.uleb128 0xd
	.long	.LASF189
	.byte	0x5
	.value	0x24b
	.long	0x36f
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7b0
	.uleb128 0xd
	.long	.LASF190
	.byte	0x5
	.value	0x24c
	.long	0x36f
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7b4
	.uleb128 0xd
	.long	.LASF191
	.byte	0x5
	.value	0x24d
	.long	0x36f
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7b8
	.uleb128 0xd
	.long	.LASF192
	.byte	0x5
	.value	0x24e
	.long	0x36f
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7bc
	.uleb128 0xd
	.long	.LASF193
	.byte	0x5
	.value	0x24f
	.long	0x36f
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7c0
	.uleb128 0xd
	.long	.LASF194
	.byte	0x5
	.value	0x250
	.long	0x36f
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7c4
	.uleb128 0xd
	.long	.LASF195
	.byte	0x5
	.value	0x251
	.long	0xf26
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7c8
	.uleb128 0xd
	.long	.LASF196
	.byte	0x5
	.value	0x252
	.long	0x36f
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7f8
	.uleb128 0xd
	.long	.LASF197
	.byte	0x5
	.value	0x253
	.long	0x36f
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7fc
	.uleb128 0xd
	.long	.LASF198
	.byte	0x5
	.value	0x254
	.long	0x36f
	.byte	0x4
	.byte	0x23
	.uleb128 0xb800
	.uleb128 0xd
	.long	.LASF199
	.byte	0x5
	.value	0x25b
	.long	0xf36
	.byte	0x4
	.byte	0x23
	.uleb128 0xb808
	.uleb128 0xd
	.long	.LASF200
	.byte	0x5
	.value	0x25f
	.long	0xf42
	.byte	0x4
	.byte	0x23
	.uleb128 0xb810
	.byte	0x0
	.uleb128 0xa
	.long	0xe83
	.long	0x3f2
	.uleb128 0xb
	.long	0x5b
	.byte	0x7
	.byte	0x0
	.uleb128 0xa
	.long	0xe93
	.long	0x6a2
	.uleb128 0xb
	.long	0x5b
	.byte	0x7
	.byte	0x0
	.uleb128 0xa
	.long	0xea3
	.long	0x523
	.uleb128 0xb
	.long	0x5b
	.byte	0x5
	.byte	0x0
	.uleb128 0xa
	.long	0xeb3
	.long	0x3f2
	.uleb128 0xb
	.long	0x5b
	.byte	0x4
	.byte	0x0
	.uleb128 0xa
	.long	0xec3
	.long	0x859
	.uleb128 0xb
	.long	0x5b
	.byte	0x7
	.byte	0x0
	.uleb128 0xa
	.long	0xed3
	.long	0x5db
	.uleb128 0xb
	.long	0x5b
	.byte	0x7
	.byte	0x0
	.uleb128 0x19
	.long	.LASF201
	.byte	0x1
	.uleb128 0x6
	.byte	0x8
	.long	0xed3
	.uleb128 0xa
	.long	0xef5
	.long	0x458
	.uleb128 0xb
	.long	0x5b
	.byte	0x1
	.uleb128 0xb
	.long	0x5b
	.byte	0xff
	.byte	0x0
	.uleb128 0xa
	.long	0xf06
	.long	0xed9
	.uleb128 0x1a
	.long	0x5b
	.value	0xfff
	.byte	0x0
	.uleb128 0xa
	.long	0xf16
	.long	0x3f2
	.uleb128 0xb
	.long	0x5b
	.byte	0x1f
	.byte	0x0
	.uleb128 0xa
	.long	0xf26
	.long	0x8af
	.uleb128 0xb
	.long	0x5b
	.byte	0x1f
	.byte	0x0
	.uleb128 0xa
	.long	0xf36
	.long	0x36f
	.uleb128 0xb
	.long	0x5b
	.byte	0xb
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x66e
	.uleb128 0x19
	.long	.LASF202
	.byte	0x1
	.uleb128 0x6
	.byte	0x8
	.long	0xf3c
	.uleb128 0x11
	.long	.LASF122
	.byte	0x5
	.value	0x260
	.long	0x8d7
	.uleb128 0x6
	.byte	0x8
	.long	0x6a2
	.uleb128 0x2
	.long	.LASF203
	.byte	0x13
	.byte	0x5f
	.long	0xf65
	.uleb128 0x1b
	.long	0xf7b
	.byte	0x1
	.uleb128 0x10
	.long	0xab
	.uleb128 0x10
	.long	0xf7b
	.uleb128 0x10
	.long	0x3f
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0xf81
	.uleb128 0x5
	.long	0x359
	.uleb128 0x2
	.long	.LASF204
	.byte	0x13
	.byte	0x60
	.long	0x349
	.uleb128 0x2
	.long	.LASF205
	.byte	0x13
	.byte	0x6c
	.long	0xf9c
	.uleb128 0xc
	.long	0xfd3
	.long	.LASF205
	.byte	0x18
	.byte	0x13
	.byte	0x6c
	.uleb128 0x9
	.long	.LASF206
	.byte	0x15
	.byte	0x2a
	.long	0x14b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF207
	.byte	0x15
	.byte	0x2b
	.long	0x6e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF208
	.byte	0x15
	.byte	0x2c
	.long	0x14c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.long	.LASF209
	.byte	0x13
	.byte	0x6d
	.long	0xfde
	.uleb128 0x19
	.long	.LASF209
	.byte	0x1
	.uleb128 0x2
	.long	.LASF210
	.byte	0x13
	.byte	0x6e
	.long	0xfef
	.uleb128 0x19
	.long	.LASF210
	.byte	0x1
	.uleb128 0x2
	.long	.LASF211
	.byte	0x13
	.byte	0x6f
	.long	0x1000
	.uleb128 0x19
	.long	.LASF211
	.byte	0x1
	.uleb128 0x2
	.long	.LASF212
	.byte	0x13
	.byte	0x71
	.long	0x1011
	.uleb128 0x19
	.long	.LASF212
	.byte	0x1
	.uleb128 0x2
	.long	.LASF213
	.byte	0x13
	.byte	0x72
	.long	0x1022
	.uleb128 0xc
	.long	0x1074
	.long	.LASF213
	.byte	0x20
	.byte	0x13
	.byte	0x72
	.uleb128 0x15
	.string	"id"
	.byte	0x15
	.byte	0x14
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF214
	.byte	0x15
	.byte	0x15
	.long	0x14ab
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF215
	.byte	0x15
	.byte	0x16
	.long	0x14a5
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.long	.LASF216
	.byte	0x15
	.byte	0x17
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.long	.LASF217
	.byte	0x15
	.byte	0x17
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x2
	.long	.LASF218
	.byte	0x13
	.byte	0x74
	.long	0x107f
	.uleb128 0x19
	.long	.LASF218
	.byte	0x1
	.uleb128 0x2
	.long	.LASF219
	.byte	0x13
	.byte	0x78
	.long	0x1090
	.uleb128 0x19
	.long	.LASF219
	.byte	0x1
	.uleb128 0x2
	.long	.LASF220
	.byte	0x13
	.byte	0x79
	.long	0x10a1
	.uleb128 0x1c
	.long	0x1144
	.long	.LASF220
	.value	0x228
	.byte	0x13
	.byte	0x79
	.uleb128 0x9
	.long	.LASF221
	.byte	0x19
	.byte	0x2f
	.long	0x1282
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x15
	.string	"bus"
	.byte	0x19
	.byte	0x32
	.long	0x1292
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0x9
	.long	.LASF222
	.byte	0x19
	.byte	0x33
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.uleb128 0x9
	.long	.LASF223
	.byte	0x19
	.byte	0x34
	.long	0x1298
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.uleb128 0x9
	.long	.LASF224
	.byte	0x19
	.byte	0x35
	.long	0x12a8
	.byte	0x3
	.byte	0x23
	.uleb128 0x150
	.uleb128 0x9
	.long	.LASF225
	.byte	0x19
	.byte	0x38
	.long	0x12b8
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f8
	.uleb128 0x9
	.long	.LASF226
	.byte	0x19
	.byte	0x39
	.long	0x12be
	.byte	0x3
	.byte	0x23
	.uleb128 0x200
	.uleb128 0x9
	.long	.LASF227
	.byte	0x19
	.byte	0x3b
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x208
	.uleb128 0x15
	.string	"irq"
	.byte	0x19
	.byte	0x3e
	.long	0x12c4
	.byte	0x3
	.byte	0x23
	.uleb128 0x210
	.uleb128 0x9
	.long	.LASF228
	.byte	0x19
	.byte	0x41
	.long	0x12ca
	.byte	0x3
	.byte	0x23
	.uleb128 0x218
	.byte	0x0
	.uleb128 0x2
	.long	.LASF229
	.byte	0x13
	.byte	0x7b
	.long	0x114f
	.uleb128 0x6
	.byte	0x8
	.long	0x1155
	.uleb128 0x19
	.long	.LASF230
	.byte	0x1
	.uleb128 0x2
	.long	.LASF231
	.byte	0x14
	.byte	0x1a
	.long	0x1166
	.uleb128 0x19
	.long	.LASF231
	.byte	0x1
	.uleb128 0x2
	.long	.LASF232
	.byte	0x14
	.byte	0x28
	.long	0x1177
	.uleb128 0x19
	.long	.LASF232
	.byte	0x1
	.uleb128 0x2
	.long	.LASF233
	.byte	0x14
	.byte	0x34
	.long	0x1188
	.uleb128 0x19
	.long	.LASF233
	.byte	0x1
	.uleb128 0x2
	.long	.LASF234
	.byte	0x14
	.byte	0x4c
	.long	0x1199
	.uleb128 0x19
	.long	.LASF234
	.byte	0x1
	.uleb128 0x2
	.long	.LASF235
	.byte	0x18
	.byte	0x5
	.long	0x11aa
	.uleb128 0x19
	.long	.LASF235
	.byte	0x1
	.uleb128 0x2
	.long	.LASF236
	.byte	0x19
	.byte	0xc
	.long	0x11bb
	.uleb128 0x1b
	.long	0x11d6
	.byte	0x1
	.uleb128 0x10
	.long	0x11d6
	.uleb128 0x10
	.long	0x36f
	.uleb128 0x10
	.long	0x36f
	.uleb128 0x10
	.long	0x3f
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x1096
	.uleb128 0x2
	.long	.LASF237
	.byte	0x19
	.byte	0xe
	.long	0x11e7
	.uleb128 0xf
	.long	0x1201
	.byte	0x1
	.long	0x36f
	.uleb128 0x10
	.long	0x11d6
	.uleb128 0x10
	.long	0x36f
	.uleb128 0x10
	.long	0x3f
	.byte	0x0
	.uleb128 0x2
	.long	.LASF238
	.byte	0x19
	.byte	0x10
	.long	0x120c
	.uleb128 0x1b
	.long	0x122c
	.byte	0x1
	.uleb128 0x10
	.long	0x11d6
	.uleb128 0x10
	.long	0x3f
	.uleb128 0x10
	.long	0x36f
	.uleb128 0x10
	.long	0x36f
	.uleb128 0x10
	.long	0x3f
	.byte	0x0
	.uleb128 0xc
	.long	0x1271
	.long	.LASF239
	.byte	0x18
	.byte	0x19
	.byte	0x16
	.uleb128 0x9
	.long	.LASF240
	.byte	0x19
	.byte	0x17
	.long	0x36f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF241
	.byte	0x19
	.byte	0x18
	.long	0x36f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.long	.LASF242
	.byte	0x19
	.byte	0x19
	.long	0x359
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF243
	.byte	0x19
	.byte	0x1a
	.long	0x1271
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x1201
	.uleb128 0x2
	.long	.LASF239
	.byte	0x19
	.byte	0x1b
	.long	0x122c
	.uleb128 0xa
	.long	0x1292
	.long	0x359
	.uleb128 0xb
	.long	0x5b
	.byte	0xff
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x1085
	.uleb128 0xa
	.long	0x12a8
	.long	0x79
	.uleb128 0xb
	.long	0x5b
	.byte	0x3f
	.byte	0x0
	.uleb128 0xa
	.long	0x12b8
	.long	0x1277
	.uleb128 0xb
	.long	0x5b
	.byte	0x6
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x11dc
	.uleb128 0x6
	.byte	0x8
	.long	0x11b0
	.uleb128 0x6
	.byte	0x8
	.long	0x1144
	.uleb128 0xa
	.long	0x12da
	.long	0x3f
	.uleb128 0xb
	.long	0x5b
	.byte	0x3
	.byte	0x0
	.uleb128 0xa
	.long	0x12ea
	.long	0x79
	.uleb128 0xb
	.long	0x5b
	.byte	0xff
	.byte	0x0
	.uleb128 0x1d
	.long	0x1317
	.byte	0x4
	.byte	0x16
	.byte	0x77
	.uleb128 0x1e
	.long	.LASF244
	.sleb128 0
	.uleb128 0x1e
	.long	.LASF245
	.sleb128 1
	.uleb128 0x1e
	.long	.LASF246
	.sleb128 2
	.uleb128 0x1e
	.long	.LASF247
	.sleb128 3
	.uleb128 0x1e
	.long	.LASF248
	.sleb128 4
	.uleb128 0x1e
	.long	.LASF249
	.sleb128 5
	.byte	0x0
	.uleb128 0x2
	.long	.LASF250
	.byte	0x16
	.byte	0x79
	.long	0x12ea
	.uleb128 0xc
	.long	0x1367
	.long	.LASF251
	.byte	0x18
	.byte	0x16
	.byte	0x7b
	.uleb128 0x9
	.long	.LASF252
	.byte	0x16
	.byte	0x7c
	.long	0x1367
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF242
	.byte	0x16
	.byte	0x7d
	.long	0x1317
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x15
	.string	"bus"
	.byte	0x16
	.byte	0x7e
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.long	.LASF253
	.byte	0x16
	.byte	0x7f
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0xfe4
	.uleb128 0x2
	.long	.LASF251
	.byte	0x16
	.byte	0x80
	.long	0x1322
	.uleb128 0x1f
	.long	0x1397
	.byte	0x8
	.byte	0x16
	.byte	0xab
	.uleb128 0x20
	.long	.LASF254
	.byte	0x16
	.byte	0xa9
	.long	0x13b2
	.uleb128 0x20
	.long	.LASF255
	.byte	0x16
	.byte	0xaa
	.long	0x13cd
	.byte	0x0
	.uleb128 0xf
	.long	0x13ac
	.byte	0x1
	.long	0x3f
	.uleb128 0x10
	.long	0x13ac
	.uleb128 0x10
	.long	0x12c4
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0xfd3
	.uleb128 0x6
	.byte	0x8
	.long	0x1397
	.uleb128 0xf
	.long	0x13cd
	.byte	0x1
	.long	0x3f
	.uleb128 0x10
	.long	0x1292
	.uleb128 0x10
	.long	0x13ac
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x13b8
	.uleb128 0xc
	.long	0x1426
	.long	.LASF256
	.byte	0x20
	.byte	0x16
	.byte	0xa3
	.uleb128 0x9
	.long	.LASF223
	.byte	0x16
	.byte	0xa4
	.long	0x6e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF257
	.byte	0x16
	.byte	0xa5
	.long	0x6e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF258
	.byte	0x16
	.byte	0xa6
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x15
	.string	"isa"
	.byte	0x16
	.byte	0xa7
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.long	.LASF259
	.byte	0x16
	.byte	0xab
	.long	0x1378
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x2
	.long	.LASF260
	.byte	0x15
	.byte	0x6
	.long	0x1431
	.uleb128 0x1c
	.long	0x1493
	.long	.LASF260
	.value	0x128
	.byte	0x15
	.byte	0x6
	.uleb128 0x9
	.long	.LASF261
	.byte	0x15
	.byte	0x9
	.long	0x1493
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF262
	.byte	0x15
	.byte	0xc
	.long	0x1499
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF185
	.byte	0x15
	.byte	0xd
	.long	0xab
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.long	.LASF215
	.byte	0x15
	.byte	0xe
	.long	0x149f
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.long	.LASF208
	.byte	0x15
	.byte	0xf
	.long	0x14a5
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.long	.LASF263
	.byte	0x15
	.byte	0x10
	.long	0x12da
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0xf5a
	.uleb128 0x6
	.byte	0x8
	.long	0xf86
	.uleb128 0x6
	.byte	0x8
	.long	0x1431
	.uleb128 0x6
	.byte	0x8
	.long	0x1022
	.uleb128 0x6
	.byte	0x8
	.long	0x1426
	.uleb128 0xa
	.long	0x14c1
	.long	0x359
	.uleb128 0xb
	.long	0x5b
	.byte	0x5
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x1017
	.uleb128 0x6
	.byte	0x8
	.long	0x359
	.uleb128 0x2
	.long	.LASF264
	.byte	0x17
	.byte	0xb
	.long	0x14d8
	.uleb128 0x1b
	.long	0x1507
	.byte	0x1
	.uleb128 0x10
	.long	0x3f
	.uleb128 0x10
	.long	0x3f
	.uleb128 0x10
	.long	0x6e
	.uleb128 0x10
	.long	0x1507
	.uleb128 0x10
	.long	0x6e
	.uleb128 0x10
	.long	0x6e
	.uleb128 0x10
	.long	0x6e
	.uleb128 0x10
	.long	0x6e
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0xff5
	.uleb128 0xc
	.long	0x1552
	.long	.LASF265
	.byte	0x20
	.byte	0x17
	.byte	0xd
	.uleb128 0x9
	.long	.LASF223
	.byte	0x17
	.byte	0xe
	.long	0x6e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF266
	.byte	0x17
	.byte	0xf
	.long	0x6e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF259
	.byte	0x17
	.byte	0x10
	.long	0x1552
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.long	.LASF215
	.byte	0x17
	.byte	0x11
	.long	0x1558
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x14cd
	.uleb128 0x6
	.byte	0x8
	.long	0x150d
	.uleb128 0x2
	.long	.LASF265
	.byte	0x17
	.byte	0x12
	.long	0x150d
	.uleb128 0x21
	.long	0x15af
	.long	.LASF268
	.byte	0x1
	.byte	0x38
	.byte	0x1
	.quad	.LFB195
	.quad	.LFE195
	.byte	0x1
	.byte	0x57
	.uleb128 0x22
	.long	.LASF185
	.byte	0x1
	.byte	0x37
	.long	0xab
	.byte	0x1
	.byte	0x55
	.uleb128 0x22
	.long	.LASF240
	.byte	0x1
	.byte	0x37
	.long	0x36f
	.byte	0x1
	.byte	0x54
	.uleb128 0x22
	.long	.LASF267
	.byte	0x1
	.byte	0x37
	.long	0x36f
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x23
	.long	0x15f7
	.byte	0x1
	.long	.LASF272
	.byte	0x1
	.byte	0x3f
	.byte	0x1
	.quad	.LFB196
	.quad	.LFE196
	.byte	0x1
	.byte	0x57
	.uleb128 0x24
	.string	"s"
	.byte	0x1
	.byte	0x3e
	.long	0x15f7
	.byte	0x1
	.byte	0x55
	.uleb128 0x25
	.long	0x15fd
	.quad	.LBB2
	.quad	.LBE2
	.uleb128 0x26
	.long	0x160a
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0xf48
	.uleb128 0x27
	.long	0x1616
	.long	.LASF269
	.byte	0x2
	.byte	0xd
	.byte	0x1
	.byte	0x3
	.uleb128 0x28
	.string	"irq"
	.byte	0x2
	.byte	0xc
	.long	0x1144
	.byte	0x0
	.uleb128 0x21
	.long	0x1679
	.long	.LASF270
	.byte	0x1
	.byte	0x44
	.byte	0x1
	.quad	.LFB197
	.quad	.LFE197
	.byte	0x1
	.byte	0x57
	.uleb128 0x22
	.long	.LASF185
	.byte	0x1
	.byte	0x43
	.long	0xab
	.byte	0x1
	.byte	0x55
	.uleb128 0x22
	.long	.LASF240
	.byte	0x1
	.byte	0x43
	.long	0x36f
	.byte	0x1
	.byte	0x54
	.uleb128 0x22
	.long	.LASF267
	.byte	0x1
	.byte	0x43
	.long	0x36f
	.byte	0x1
	.byte	0x51
	.uleb128 0x25
	.long	0x1679
	.quad	.LBB4
	.quad	.LBE4
	.uleb128 0x26
	.long	0x1686
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.long	0x1692
	.long	.LASF271
	.byte	0x2
	.byte	0x12
	.byte	0x1
	.byte	0x3
	.uleb128 0x28
	.string	"irq"
	.byte	0x2
	.byte	0x11
	.long	0x1144
	.byte	0x0
	.uleb128 0x29
	.long	0x16c3
	.byte	0x1
	.long	.LASF273
	.byte	0x1
	.byte	0x4a
	.byte	0x1
	.long	0x37a
	.quad	.LFB198
	.quad	.LFE198
	.byte	0x1
	.byte	0x57
	.uleb128 0x24
	.string	"env"
	.byte	0x1
	.byte	0x49
	.long	0x15f7
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x23
	.long	0x16f0
	.byte	0x1
	.long	.LASF274
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.quad	.LFB199
	.quad	.LFE199
	.byte	0x1
	.byte	0x57
	.uleb128 0x24
	.string	"env"
	.byte	0x1
	.byte	0x59
	.long	0x15f7
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x29
	.long	0x172e
	.byte	0x1
	.long	.LASF275
	.byte	0x1
	.byte	0x62
	.byte	0x1
	.long	0x3f
	.quad	.LFB200
	.quad	.LFE200
	.byte	0x1
	.byte	0x57
	.uleb128 0x24
	.string	"env"
	.byte	0x1
	.byte	0x61
	.long	0x15f7
	.byte	0x1
	.byte	0x56
	.uleb128 0x2a
	.long	.LASF278
	.byte	0x1
	.byte	0x63
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x21
	.long	0x177f
	.long	.LASF276
	.byte	0x1
	.byte	0x75
	.byte	0x1
	.quad	.LFB201
	.quad	.LFE201
	.byte	0x1
	.byte	0x57
	.uleb128 0x22
	.long	.LASF185
	.byte	0x1
	.byte	0x74
	.long	0xab
	.byte	0x1
	.byte	0x53
	.uleb128 0x24
	.string	"irq"
	.byte	0x1
	.byte	0x74
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x22
	.long	.LASF277
	.byte	0x1
	.byte	0x74
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x2b
	.string	"env"
	.byte	0x1
	.byte	0x76
	.long	0x15f7
	.byte	0x0
	.uleb128 0x21
	.long	0x17f9
	.long	.LASF279
	.byte	0x1
	.byte	0x98
	.byte	0x1
	.quad	.LFB203
	.quad	.LFE203
	.byte	0x1
	.byte	0x57
	.uleb128 0x22
	.long	.LASF280
	.byte	0x1
	.byte	0x97
	.long	0x3f
	.byte	0x1
	.byte	0x5d
	.uleb128 0x22
	.long	.LASF281
	.byte	0x1
	.byte	0x97
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.uleb128 0x24
	.string	"hd"
	.byte	0x1
	.byte	0x97
	.long	0x1367
	.byte	0x1
	.byte	0x55
	.uleb128 0x2c
	.string	"s"
	.byte	0x1
	.byte	0x99
	.long	0x17f9
	.byte	0x1
	.byte	0x5c
	.uleb128 0x2a
	.long	.LASF282
	.byte	0x1
	.byte	0x9a
	.long	0x3f
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2a
	.long	.LASF283
	.byte	0x1
	.byte	0x9a
	.long	0x3f
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2a
	.long	.LASF284
	.byte	0x1
	.byte	0x9a
	.long	0x3f
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x118e
	.uleb128 0x2d
	.long	0x182e
	.byte	0x1
	.long	.LASF285
	.byte	0x1
	.value	0x12d
	.byte	0x1
	.quad	.LFB206
	.quad	.LFE206
	.byte	0x1
	.byte	0x57
	.uleb128 0x2e
	.long	.LASF286
	.byte	0x1
	.value	0x12c
	.long	0x3f
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x2f
	.byte	0x1
	.long	.LASF398
	.byte	0x1
	.value	0x133
	.byte	0x1
	.long	0x3f
	.quad	.LFB207
	.quad	.LFE207
	.byte	0x1
	.byte	0x57
	.uleb128 0x30
	.long	0x1898
	.long	.LASF287
	.byte	0x1
	.value	0x138
	.byte	0x1
	.quad	.LFB208
	.quad	.LFE208
	.byte	0x1
	.byte	0x57
	.uleb128 0x2e
	.long	.LASF185
	.byte	0x1
	.value	0x137
	.long	0xab
	.byte	0x1
	.byte	0x55
	.uleb128 0x2e
	.long	.LASF240
	.byte	0x1
	.value	0x137
	.long	0x36f
	.byte	0x1
	.byte	0x54
	.uleb128 0x31
	.string	"val"
	.byte	0x1
	.value	0x137
	.long	0x36f
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x32
	.long	0x18e4
	.long	.LASF288
	.byte	0x1
	.value	0x13e
	.byte	0x1
	.long	0x36f
	.quad	.LFB209
	.quad	.LFE209
	.byte	0x1
	.byte	0x57
	.uleb128 0x2e
	.long	.LASF185
	.byte	0x1
	.value	0x13d
	.long	0xab
	.byte	0x1
	.byte	0x55
	.uleb128 0x2e
	.long	.LASF240
	.byte	0x1
	.value	0x13d
	.long	0x36f
	.byte	0x1
	.byte	0x54
	.uleb128 0x31
	.string	"t"
	.byte	0x1
	.value	0x13d
	.long	0xf54
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x30
	.long	0x195a
	.long	.LASF289
	.byte	0x1
	.value	0x146
	.byte	0x1
	.quad	.LFB210
	.quad	.LFE210
	.byte	0x1
	.byte	0x57
	.uleb128 0x2e
	.long	.LASF185
	.byte	0x1
	.value	0x145
	.long	0xab
	.byte	0x1
	.byte	0x55
	.uleb128 0x2e
	.long	.LASF240
	.byte	0x1
	.value	0x145
	.long	0x36f
	.byte	0x1
	.byte	0x54
	.uleb128 0x31
	.string	"val"
	.byte	0x1
	.value	0x145
	.long	0x36f
	.byte	0x1
	.byte	0x51
	.uleb128 0x33
	.long	.LASF290
	.byte	0x1
	.value	0x147
	.long	0x196a
	.byte	0x9
	.byte	0x3
	.quad	shutdown_str.1
	.uleb128 0x33
	.long	.LASF291
	.byte	0x1
	.value	0x148
	.long	0x3f
	.byte	0x9
	.byte	0x3
	.quad	shutdown_index.2
	.byte	0x0
	.uleb128 0xa
	.long	0x196a
	.long	0x74
	.uleb128 0xb
	.long	0x5b
	.byte	0x7
	.byte	0x0
	.uleb128 0x5
	.long	0x195a
	.uleb128 0x32
	.long	0x19bb
	.long	.LASF292
	.byte	0x1
	.value	0x1d9
	.byte	0x1
	.long	0x4d
	.quad	.LFB214
	.quad	.LFE214
	.byte	0x1
	.byte	0x57
	.uleb128 0x31
	.string	"f"
	.byte	0x1
	.value	0x1d8
	.long	0x822
	.byte	0x1
	.byte	0x53
	.uleb128 0x33
	.long	.LASF293
	.byte	0x1
	.value	0x1da
	.long	0x4d
	.byte	0x1
	.byte	0x5d
	.uleb128 0x33
	.long	.LASF241
	.byte	0x1
	.value	0x1da
	.long	0x4d
	.byte	0x1
	.byte	0x5c
	.byte	0x0
	.uleb128 0x30
	.long	0x19f5
	.long	.LASF294
	.byte	0x1
	.value	0x280
	.byte	0x1
	.quad	.LFB216
	.quad	.LFE216
	.byte	0x1
	.byte	0x57
	.uleb128 0x2e
	.long	.LASF185
	.byte	0x1
	.value	0x27f
	.long	0xab
	.byte	0x1
	.byte	0x55
	.uleb128 0x34
	.string	"env"
	.byte	0x1
	.value	0x281
	.long	0x15f7
	.byte	0x0
	.uleb128 0x30
	.long	0x2092
	.long	.LASF295
	.byte	0x1
	.value	0x2c4
	.byte	0x1
	.quad	.LFB219
	.quad	.LFE219
	.byte	0x1
	.byte	0x57
	.uleb128 0x2e
	.long	.LASF296
	.byte	0x1
	.value	0x2bf
	.long	0x3f
	.byte	0x1
	.byte	0x5d
	.uleb128 0x2e
	.long	.LASF297
	.byte	0x1
	.value	0x2bf
	.long	0x3f
	.byte	0x3
	.byte	0x91
	.sleb128 192
	.uleb128 0x2e
	.long	.LASF298
	.byte	0x1
	.value	0x2c0
	.long	0x6e
	.byte	0x3
	.byte	0x91
	.sleb128 184
	.uleb128 0x31
	.string	"ds"
	.byte	0x1
	.value	0x2c0
	.long	0x1507
	.byte	0x3
	.byte	0x91
	.sleb128 176
	.uleb128 0x2e
	.long	.LASF299
	.byte	0x1
	.value	0x2c1
	.long	0x6e
	.byte	0x1
	.byte	0x5e
	.uleb128 0x2e
	.long	.LASF300
	.byte	0x1
	.value	0x2c1
	.long	0x6e
	.byte	0x3
	.byte	0x91
	.sleb128 168
	.uleb128 0x2e
	.long	.LASF301
	.byte	0x1
	.value	0x2c2
	.long	0x6e
	.byte	0x3
	.byte	0x91
	.sleb128 2944
	.uleb128 0x2e
	.long	.LASF302
	.byte	0x1
	.value	0x2c3
	.long	0x3f
	.byte	0x1
	.byte	0x5f
	.uleb128 0x2e
	.long	.LASF303
	.byte	0x1
	.value	0x2c3
	.long	0x6e
	.byte	0x1
	.byte	0x56
	.uleb128 0x35
	.string	"buf"
	.byte	0x1
	.value	0x2c5
	.long	0x2092
	.byte	0x3
	.byte	0x91
	.sleb128 1856
	.uleb128 0x35
	.string	"ret"
	.byte	0x1
	.value	0x2c6
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.uleb128 0x33
	.long	.LASF304
	.byte	0x1
	.value	0x2c6
	.long	0x3f
	.byte	0x3
	.byte	0x91
	.sleb128 164
	.uleb128 0x35
	.string	"i"
	.byte	0x1
	.value	0x2c6
	.long	0x3f
	.byte	0x1
	.byte	0x5c
	.uleb128 0x33
	.long	.LASF305
	.byte	0x1
	.value	0x2c7
	.long	0x408
	.byte	0x1
	.byte	0x50
	.uleb128 0x33
	.long	.LASF306
	.byte	0x1
	.value	0x2c7
	.long	0x408
	.byte	0x3
	.byte	0x91
	.sleb128 152
	.uleb128 0x33
	.long	.LASF307
	.byte	0x1
	.value	0x2c7
	.long	0x408
	.byte	0x3
	.byte	0x91
	.sleb128 144
	.uleb128 0x33
	.long	.LASF308
	.byte	0x1
	.value	0x2c7
	.long	0x408
	.byte	0x1
	.byte	0x5c
	.uleb128 0x33
	.long	.LASF309
	.byte	0x1
	.value	0x2c8
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.uleb128 0x33
	.long	.LASF310
	.byte	0x1
	.value	0x2c8
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.uleb128 0x33
	.long	.LASF311
	.byte	0x1
	.value	0x2c8
	.long	0x3f
	.byte	0x3
	.byte	0x91
	.sleb128 140
	.uleb128 0x33
	.long	.LASF312
	.byte	0x1
	.value	0x2c9
	.long	0x1292
	.byte	0x3
	.byte	0x91
	.sleb128 128
	.uleb128 0x33
	.long	.LASF313
	.byte	0x1
	.value	0x2ca
	.long	0x3f
	.byte	0x3
	.byte	0x91
	.sleb128 124
	.uleb128 0x35
	.string	"env"
	.byte	0x1
	.value	0x2cb
	.long	0x15f7
	.byte	0x1
	.byte	0x53
	.uleb128 0x35
	.string	"nd"
	.byte	0x1
	.value	0x2cc
	.long	0x20a3
	.byte	0x1
	.byte	0x53
	.uleb128 0x33
	.long	.LASF314
	.byte	0x1
	.value	0x2cd
	.long	0x12c4
	.byte	0x1
	.byte	0x50
	.uleb128 0x33
	.long	.LASF315
	.byte	0x1
	.value	0x2ce
	.long	0x12c4
	.byte	0x1
	.byte	0x5e
	.uleb128 0x33
	.long	.LASF316
	.byte	0x1
	.value	0x2cf
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.uleb128 0x35
	.string	"hd"
	.byte	0x1
	.value	0x2d0
	.long	0x20a9
	.byte	0x3
	.byte	0x91
	.sleb128 1824
	.uleb128 0x35
	.string	"fd"
	.byte	0x1
	.value	0x2d1
	.long	0x20b9
	.byte	0x3
	.byte	0x91
	.sleb128 1808
	.uleb128 0x36
	.long	.LASF317
	.byte	0x1
	.value	0x305
	.quad	.L61
	.uleb128 0x36
	.long	.LASF318
	.byte	0x1
	.value	0x317
	.quad	.L66
	.uleb128 0x36
	.long	.LASF319
	.byte	0x1
	.value	0x33b
	.quad	.L74
	.uleb128 0x37
	.long	.LASF320
	.long	0x20d9
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__FUNCTION__.0
	.uleb128 0x38
	.long	0x1c6f
	.long	0x20de
	.quad	.LBB6
	.quad	.LBE6
	.uleb128 0x39
	.long	0x20eb
	.uleb128 0x39
	.long	0x20f6
	.uleb128 0x39
	.long	0x2101
	.uleb128 0x3a
	.long	.Ldebug_ranges0+0x0
	.uleb128 0x3b
	.long	0x210c
	.byte	0x1
	.byte	0x5e
	.uleb128 0x3b
	.long	0x2115
	.byte	0x1
	.byte	0x52
	.uleb128 0x3b
	.long	0x2120
	.byte	0x3
	.byte	0x91
	.sleb128 208
	.uleb128 0x3b
	.long	0x212b
	.byte	0x1
	.byte	0x56
	.uleb128 0x3b
	.long	0x2136
	.byte	0x2
	.byte	0x91
	.sleb128 60
	.uleb128 0x3b
	.long	0x2141
	.byte	0x2
	.byte	0x91
	.sleb128 56
	.uleb128 0x3b
	.long	0x214c
	.byte	0x1
	.byte	0x51
	.uleb128 0x3b
	.long	0x2156
	.byte	0x1
	.byte	0x5c
	.byte	0x0
	.byte	0x0
	.uleb128 0x3c
	.long	0x1ca5
	.long	.Ldebug_ranges0+0xb0
	.uleb128 0x33
	.long	.LASF321
	.byte	0x1
	.value	0x32b
	.long	0x408
	.byte	0x1
	.byte	0x58
	.uleb128 0x33
	.long	.LASF241
	.byte	0x1
	.value	0x32c
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.uleb128 0x33
	.long	.LASF322
	.byte	0x1
	.value	0x32c
	.long	0x3f
	.byte	0x3
	.byte	0x91
	.sleb128 120
	.byte	0x0
	.uleb128 0x3d
	.long	0x21a8
	.quad	.LBB11
	.quad	.LBE11
	.uleb128 0x38
	.long	0x1dbc
	.long	0x21b2
	.quad	.LBB13
	.quad	.LBE13
	.uleb128 0x39
	.long	0x21c0
	.uleb128 0x39
	.long	0x21cc
	.uleb128 0x39
	.long	0x21d8
	.uleb128 0x3a
	.long	.Ldebug_ranges0+0x160
	.uleb128 0x3b
	.long	0x21e4
	.byte	0x1
	.byte	0x53
	.uleb128 0x3b
	.long	0x21f0
	.byte	0x3
	.byte	0x91
	.sleb128 1776
	.uleb128 0x3b
	.long	0x21fc
	.byte	0x3
	.byte	0x91
	.sleb128 1760
	.uleb128 0x3e
	.long	0x2208
	.uleb128 0x3b
	.long	0x2214
	.byte	0x1
	.byte	0x50
	.uleb128 0x3b
	.long	0x2220
	.byte	0x3
	.byte	0x91
	.sleb128 108
	.uleb128 0x3b
	.long	0x222c
	.byte	0x1
	.byte	0x53
	.uleb128 0x3b
	.long	0x2238
	.byte	0x1
	.byte	0x56
	.uleb128 0x3b
	.long	0x2244
	.byte	0x3
	.byte	0x91
	.sleb128 104
	.uleb128 0x3b
	.long	0x2250
	.byte	0x3
	.byte	0x91
	.sleb128 736
	.uleb128 0x3b
	.long	0x225c
	.byte	0x3
	.byte	0x91
	.sleb128 96
	.uleb128 0x3b
	.long	0x2268
	.byte	0x3
	.byte	0x91
	.sleb128 88
	.uleb128 0x3b
	.long	0x2274
	.byte	0x3
	.byte	0x91
	.sleb128 80
	.uleb128 0x3b
	.long	0x2280
	.byte	0x3
	.byte	0x91
	.sleb128 72
	.uleb128 0x3b
	.long	0x228c
	.byte	0x3
	.byte	0x91
	.sleb128 64
	.uleb128 0x3b
	.long	0x2296
	.byte	0x1
	.byte	0x56
	.uleb128 0x38
	.long	0x1d96
	.long	0x22d3
	.quad	.LBB15
	.quad	.LBE15
	.uleb128 0x26
	.long	0x22e1
	.byte	0x1
	.byte	0x56
	.uleb128 0x26
	.long	0x22ed
	.byte	0x1
	.byte	0x5c
	.uleb128 0x39
	.long	0x22f9
	.byte	0x0
	.uleb128 0x3a
	.long	.Ldebug_ranges0+0x1c0
	.uleb128 0x3b
	.long	0x2304
	.byte	0x3
	.byte	0x91
	.sleb128 224
	.uleb128 0x3b
	.long	0x2310
	.byte	0x1
	.byte	0x52
	.uleb128 0x3b
	.long	0x231a
	.byte	0x1
	.byte	0x54
	.uleb128 0x3b
	.long	0x2324
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
	.long	0x1de0
	.long	0x234e
	.quad	.LBB22
	.quad	.LBE22
	.uleb128 0x39
	.long	0x235c
	.uleb128 0x39
	.long	0x2367
	.byte	0x0
	.uleb128 0x3f
	.long	0x1e0e
	.quad	.LBB24
	.quad	.LBE24
	.uleb128 0x40
	.long	.LASF323
	.byte	0x1
	.value	0x39e
	.long	0x2d
	.uleb128 0x40
	.long	.LASF324
	.byte	0x1
	.value	0x39e
	.long	0x2d
	.byte	0x0
	.uleb128 0x3f
	.long	0x1e68
	.quad	.LBB25
	.quad	.LBE25
	.uleb128 0x40
	.long	.LASF323
	.byte	0x1
	.value	0x3a1
	.long	0x2d
	.uleb128 0x40
	.long	.LASF324
	.byte	0x1
	.value	0x3a1
	.long	0x2d
	.uleb128 0x41
	.quad	.LBB26
	.quad	.LBE26
	.uleb128 0x40
	.long	.LASF325
	.byte	0x1
	.value	0x3a1
	.long	0x2380
	.uleb128 0x33
	.long	.LASF326
	.byte	0x1
	.value	0x3a1
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
	.long	0x1ea2
	.long	0x238b
	.quad	.LBB29
	.quad	.LBE29
	.uleb128 0x26
	.long	0x2399
	.byte	0x1
	.byte	0x5c
	.uleb128 0x39
	.long	0x23a5
	.uleb128 0x3a
	.long	.Ldebug_ranges0+0x210
	.uleb128 0x3b
	.long	0x23b1
	.byte	0x1
	.byte	0x53
	.uleb128 0x3b
	.long	0x23bb
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
	.long	0x1ec1
	.long	0x23da
	.quad	.LBB37
	.quad	.LBE37
	.uleb128 0x39
	.long	0x23eb
	.byte	0x0
	.uleb128 0x3c
	.long	0x1eed
	.long	.Ldebug_ranges0+0x250
	.uleb128 0x3b
	.long	0x2160
	.byte	0x3
	.byte	0x91
	.sleb128 196
	.uleb128 0x3b
	.long	0x216c
	.byte	0x3
	.byte	0x91
	.sleb128 200
	.uleb128 0x3b
	.long	0x2178
	.byte	0x3
	.byte	0x91
	.sleb128 204
	.uleb128 0x3b
	.long	0x2184
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x3f
	.long	0x1f47
	.quad	.LBB52
	.quad	.LBE52
	.uleb128 0x40
	.long	.LASF323
	.byte	0x1
	.value	0x3a4
	.long	0x2d
	.uleb128 0x40
	.long	.LASF324
	.byte	0x1
	.value	0x3a4
	.long	0x2d
	.uleb128 0x41
	.quad	.LBB53
	.quad	.LBE53
	.uleb128 0x40
	.long	.LASF325
	.byte	0x1
	.value	0x3a4
	.long	0x2380
	.uleb128 0x33
	.long	.LASF326
	.byte	0x1
	.value	0x3a4
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.uleb128 0x3f
	.long	0x1f64
	.quad	.LBB57
	.quad	.LBE57
	.uleb128 0x3b
	.long	0x23c8
	.byte	0x1
	.byte	0x56
	.byte	0x0
	.uleb128 0x38
	.long	0x1f83
	.long	0x23f7
	.quad	.LBB65
	.quad	.LBE65
	.uleb128 0x39
	.long	0x2409
	.byte	0x0
	.uleb128 0x38
	.long	0x1fa9
	.long	0x2416
	.quad	.LBB67
	.quad	.LBE67
	.uleb128 0x39
	.long	0x2424
	.uleb128 0x26
	.long	0x2430
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x38
	.long	0x1fcf
	.long	0x243b
	.quad	.LBB69
	.quad	.LBE69
	.uleb128 0x39
	.long	0x2449
	.uleb128 0x26
	.long	0x2455
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x38
	.long	0x1ff5
	.long	0x2416
	.quad	.LBB72
	.quad	.LBE72
	.uleb128 0x39
	.long	0x2424
	.uleb128 0x26
	.long	0x2430
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x38
	.long	0x2019
	.long	0x2416
	.quad	.LBB73
	.quad	.LBE73
	.uleb128 0x39
	.long	0x2424
	.uleb128 0x39
	.long	0x2430
	.byte	0x0
	.uleb128 0x38
	.long	0x203f
	.long	0x243b
	.quad	.LBB85
	.quad	.LBE85
	.uleb128 0x39
	.long	0x2449
	.uleb128 0x26
	.long	0x2455
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x38
	.long	0x2063
	.long	0x243b
	.quad	.LBB86
	.quad	.LBE86
	.uleb128 0x39
	.long	0x2449
	.uleb128 0x39
	.long	0x2455
	.byte	0x0
	.uleb128 0x41
	.quad	.LBB90
	.quad	.LBE90
	.uleb128 0x33
	.long	.LASF327
	.byte	0x1
	.value	0x3df
	.long	0x14c7
	.byte	0x1
	.byte	0x53
	.uleb128 0x33
	.long	.LASF328
	.byte	0x1
	.value	0x3e0
	.long	0x2460
	.byte	0x1
	.byte	0x56
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.long	0x20a3
	.long	0x79
	.uleb128 0x1a
	.long	0x5b
	.value	0x3ff
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0xf91
	.uleb128 0xa
	.long	0x20b9
	.long	0x1367
	.uleb128 0xb
	.long	0x5b
	.byte	0x3
	.byte	0x0
	.uleb128 0xa
	.long	0x20c9
	.long	0x1367
	.uleb128 0xb
	.long	0x5b
	.byte	0x1
	.byte	0x0
	.uleb128 0xa
	.long	0x20d9
	.long	0x74
	.uleb128 0xb
	.long	0x5b
	.byte	0x8
	.byte	0x0
	.uleb128 0x5
	.long	0x20c9
	.uleb128 0x27
	.long	0x2192
	.long	.LASF329
	.byte	0x1
	.byte	0xbb
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.long	.LASF296
	.byte	0x1
	.byte	0xba
	.long	0x3f
	.uleb128 0x42
	.long	.LASF298
	.byte	0x1
	.byte	0xba
	.long	0x6e
	.uleb128 0x42
	.long	.LASF330
	.byte	0x1
	.byte	0xba
	.long	0x2192
	.uleb128 0x2b
	.string	"s"
	.byte	0x1
	.byte	0xbc
	.long	0x17f9
	.uleb128 0x43
	.long	.LASF331
	.byte	0x1
	.byte	0xbd
	.long	0x3f
	.uleb128 0x2b
	.string	"bds"
	.byte	0x1
	.byte	0xbd
	.long	0x2198
	.uleb128 0x2b
	.string	"val"
	.byte	0x1
	.byte	0xbe
	.long	0x3f
	.uleb128 0x2b
	.string	"fd0"
	.byte	0x1
	.byte	0xbf
	.long	0x3f
	.uleb128 0x2b
	.string	"fd1"
	.byte	0x1
	.byte	0xbf
	.long	0x3f
	.uleb128 0x2b
	.string	"nb"
	.byte	0x1
	.byte	0xbf
	.long	0x3f
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.byte	0xc0
	.long	0x3f
	.uleb128 0x44
	.uleb128 0x40
	.long	.LASF282
	.byte	0x1
	.value	0x114
	.long	0x3f
	.uleb128 0x40
	.long	.LASF283
	.byte	0x1
	.value	0x114
	.long	0x3f
	.uleb128 0x40
	.long	.LASF284
	.byte	0x1
	.value	0x114
	.long	0x3f
	.uleb128 0x40
	.long	.LASF332
	.byte	0x1
	.value	0x114
	.long	0x3f
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x1367
	.uleb128 0xa
	.long	0x21a8
	.long	0x3f
	.uleb128 0xb
	.long	0x5b
	.byte	0x2
	.byte	0x0
	.uleb128 0x45
	.long	.LASF399
	.byte	0x1
	.value	0x172
	.byte	0x1
	.byte	0x1
	.uleb128 0x46
	.long	0x22a2
	.long	.LASF333
	.byte	0x1
	.value	0x1e9
	.byte	0x1
	.byte	0x1
	.uleb128 0x47
	.long	.LASF299
	.byte	0x1
	.value	0x1e6
	.long	0x6e
	.uleb128 0x47
	.long	.LASF301
	.byte	0x1
	.value	0x1e7
	.long	0x6e
	.uleb128 0x47
	.long	.LASF300
	.byte	0x1
	.value	0x1e8
	.long	0x6e
	.uleb128 0x40
	.long	.LASF334
	.byte	0x1
	.value	0x1ea
	.long	0x364
	.uleb128 0x34
	.string	"gpr"
	.byte	0x1
	.value	0x1eb
	.long	0x22a2
	.uleb128 0x34
	.string	"seg"
	.byte	0x1
	.value	0x1ec
	.long	0x22b2
	.uleb128 0x40
	.long	.LASF335
	.byte	0x1
	.value	0x1ed
	.long	0x364
	.uleb128 0x40
	.long	.LASF336
	.byte	0x1
	.value	0x1ee
	.long	0x3f
	.uleb128 0x40
	.long	.LASF337
	.byte	0x1
	.value	0x1ee
	.long	0x3f
	.uleb128 0x40
	.long	.LASF338
	.byte	0x1
	.value	0x1ee
	.long	0x3f
	.uleb128 0x40
	.long	.LASF339
	.byte	0x1
	.value	0x1ee
	.long	0x3f
	.uleb128 0x40
	.long	.LASF340
	.byte	0x1
	.value	0x1ef
	.long	0x36f
	.uleb128 0x40
	.long	.LASF341
	.byte	0x1
	.value	0x1f0
	.long	0x22c2
	.uleb128 0x40
	.long	.LASF342
	.byte	0x1
	.value	0x1f1
	.long	0x14c7
	.uleb128 0x40
	.long	.LASF343
	.byte	0x1
	.value	0x1f1
	.long	0x14c7
	.uleb128 0x40
	.long	.LASF344
	.byte	0x1
	.value	0x1f1
	.long	0x14c7
	.uleb128 0x40
	.long	.LASF345
	.byte	0x1
	.value	0x1f1
	.long	0x14c7
	.uleb128 0x34
	.string	"f"
	.byte	0x1
	.value	0x1f2
	.long	0x822
	.uleb128 0x34
	.string	"fi"
	.byte	0x1
	.value	0x1f2
	.long	0x822
	.byte	0x0
	.uleb128 0xa
	.long	0x22b2
	.long	0x36f
	.uleb128 0xb
	.long	0x5b
	.byte	0x7
	.byte	0x0
	.uleb128 0xa
	.long	0x22c2
	.long	0x364
	.uleb128 0xb
	.long	0x5b
	.byte	0x5
	.byte	0x0
	.uleb128 0xa
	.long	0x22d3
	.long	0x359
	.uleb128 0x1a
	.long	0x5b
	.value	0x3ff
	.byte	0x0
	.uleb128 0x46
	.long	0x2331
	.long	.LASF346
	.byte	0x1
	.value	0x182
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.string	"gpr"
	.byte	0x1
	.value	0x181
	.long	0x2331
	.uleb128 0x47
	.long	.LASF134
	.byte	0x1
	.value	0x181
	.long	0x2337
	.uleb128 0x48
	.string	"ip"
	.byte	0x1
	.value	0x181
	.long	0x364
	.uleb128 0x40
	.long	.LASF347
	.byte	0x1
	.value	0x183
	.long	0x233d
	.uleb128 0x34
	.string	"p"
	.byte	0x1
	.value	0x183
	.long	0x14c7
	.uleb128 0x34
	.string	"i"
	.byte	0x1
	.value	0x184
	.long	0x3f
	.uleb128 0x34
	.string	"hda"
	.byte	0x1
	.value	0x185
	.long	0x3f
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x36f
	.uleb128 0x6
	.byte	0x8
	.long	0x364
	.uleb128 0xa
	.long	0x234e
	.long	0x359
	.uleb128 0x1a
	.long	0x5b
	.value	0x1ff
	.byte	0x0
	.uleb128 0x46
	.long	0x2380
	.long	.LASF348
	.byte	0x1
	.value	0x2b5
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.string	"nd"
	.byte	0x1
	.value	0x2b4
	.long	0x20a3
	.uleb128 0x48
	.string	"pic"
	.byte	0x1
	.value	0x2b4
	.long	0x12c4
	.uleb128 0x40
	.long	.LASF349
	.byte	0x1
	.value	0x2b6
	.long	0x3f
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x2386
	.uleb128 0x5
	.long	0x80
	.uleb128 0x46
	.long	0x23d4
	.long	.LASF350
	.byte	0x1
	.value	0x296
	.byte	0x1
	.byte	0x1
	.uleb128 0x47
	.long	.LASF312
	.byte	0x1
	.value	0x295
	.long	0x1292
	.uleb128 0x48
	.string	"pic"
	.byte	0x1
	.value	0x295
	.long	0x12c4
	.uleb128 0x34
	.string	"c"
	.byte	0x1
	.value	0x297
	.long	0x23d4
	.uleb128 0x40
	.long	.LASF351
	.byte	0x1
	.value	0x298
	.long	0x3f
	.uleb128 0x44
	.uleb128 0x34
	.string	"s"
	.byte	0x1
	.value	0x29f
	.long	0x13ac
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x13d3
	.uleb128 0x49
	.long	0x23f7
	.long	.LASF352
	.byte	0x1
	.byte	0xaa
	.byte	0x1
	.long	0x3f
	.byte	0x1
	.uleb128 0x42
	.long	.LASF298
	.byte	0x1
	.byte	0xa9
	.long	0x79
	.byte	0x0
	.uleb128 0x4a
	.long	0x2416
	.long	.LASF353
	.byte	0x3
	.value	0x15f
	.byte	0x1
	.long	0x3f
	.byte	0x3
	.uleb128 0x48
	.string	"ptr"
	.byte	0x3
	.value	0x15e
	.long	0xab
	.byte	0x0
	.uleb128 0x46
	.long	0x243b
	.long	.LASF354
	.byte	0x3
	.value	0x16e
	.byte	0x1
	.byte	0x3
	.uleb128 0x48
	.string	"ptr"
	.byte	0x3
	.value	0x16d
	.long	0xab
	.uleb128 0x48
	.string	"v"
	.byte	0x3
	.value	0x16d
	.long	0x3f
	.byte	0x0
	.uleb128 0x46
	.long	0x2460
	.long	.LASF355
	.byte	0x3
	.value	0x169
	.byte	0x1
	.byte	0x3
	.uleb128 0x48
	.string	"ptr"
	.byte	0x3
	.value	0x168
	.long	0xab
	.uleb128 0x48
	.string	"v"
	.byte	0x3
	.value	0x168
	.long	0x3f
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x1074
	.uleb128 0x30
	.long	0x24f5
	.long	.LASF356
	.byte	0x1
	.value	0x408
	.byte	0x1
	.quad	.LFB220
	.quad	.LFE220
	.byte	0x1
	.byte	0x57
	.uleb128 0x2e
	.long	.LASF296
	.byte	0x1
	.value	0x402
	.long	0x3f
	.byte	0x1
	.byte	0x55
	.uleb128 0x2e
	.long	.LASF297
	.byte	0x1
	.value	0x402
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x2e
	.long	.LASF298
	.byte	0x1
	.value	0x403
	.long	0x6e
	.byte	0x1
	.byte	0x51
	.uleb128 0x31
	.string	"ds"
	.byte	0x1
	.value	0x403
	.long	0x1507
	.byte	0x1
	.byte	0x52
	.uleb128 0x2e
	.long	.LASF299
	.byte	0x1
	.value	0x404
	.long	0x6e
	.byte	0x1
	.byte	0x58
	.uleb128 0x2e
	.long	.LASF300
	.byte	0x1
	.value	0x405
	.long	0x6e
	.byte	0x1
	.byte	0x59
	.uleb128 0x2e
	.long	.LASF301
	.byte	0x1
	.value	0x406
	.long	0x6e
	.byte	0x1
	.byte	0x50
	.uleb128 0x2e
	.long	.LASF303
	.byte	0x1
	.value	0x407
	.long	0x6e
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x30
	.long	0x2584
	.long	.LASF357
	.byte	0x1
	.value	0x414
	.byte	0x1
	.quad	.LFB221
	.quad	.LFE221
	.byte	0x1
	.byte	0x57
	.uleb128 0x2e
	.long	.LASF296
	.byte	0x1
	.value	0x40e
	.long	0x3f
	.byte	0x1
	.byte	0x55
	.uleb128 0x2e
	.long	.LASF297
	.byte	0x1
	.value	0x40e
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x2e
	.long	.LASF298
	.byte	0x1
	.value	0x40f
	.long	0x6e
	.byte	0x1
	.byte	0x51
	.uleb128 0x31
	.string	"ds"
	.byte	0x1
	.value	0x40f
	.long	0x1507
	.byte	0x1
	.byte	0x52
	.uleb128 0x2e
	.long	.LASF299
	.byte	0x1
	.value	0x410
	.long	0x6e
	.byte	0x1
	.byte	0x58
	.uleb128 0x2e
	.long	.LASF300
	.byte	0x1
	.value	0x411
	.long	0x6e
	.byte	0x1
	.byte	0x59
	.uleb128 0x2e
	.long	.LASF301
	.byte	0x1
	.value	0x412
	.long	0x6e
	.byte	0x1
	.byte	0x50
	.uleb128 0x2e
	.long	.LASF303
	.byte	0x1
	.value	0x413
	.long	0x6e
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x4b
	.long	.LASF358
	.byte	0xa
	.byte	0x91
	.long	0x31d
	.byte	0x1
	.byte	0x1
	.uleb128 0x4b
	.long	.LASF359
	.byte	0xa
	.byte	0x92
	.long	0x31d
	.byte	0x1
	.byte	0x1
	.uleb128 0x4b
	.long	.LASF360
	.byte	0xa
	.byte	0x93
	.long	0x31d
	.byte	0x1
	.byte	0x1
	.uleb128 0x4c
	.long	.LASF361
	.byte	0x3
	.value	0x32b
	.long	0x15f7
	.byte	0x1
	.byte	0x1
	.uleb128 0x4c
	.long	.LASF362
	.byte	0x3
	.value	0x375
	.long	0x14c7
	.byte	0x1
	.byte	0x1
	.uleb128 0x4c
	.long	.LASF363
	.byte	0x3
	.value	0x376
	.long	0x14c7
	.byte	0x1
	.byte	0x1
	.uleb128 0x4b
	.long	.LASF364
	.byte	0x14
	.byte	0x1b
	.long	0x25e2
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.byte	0x8
	.long	0x115b
	.uleb128 0x4b
	.long	.LASF365
	.byte	0x14
	.byte	0x54
	.long	0x3f
	.byte	0x1
	.byte	0x1
	.uleb128 0x4b
	.long	.LASF366
	.byte	0x14
	.byte	0x5a
	.long	0x3f
	.byte	0x1
	.byte	0x1
	.uleb128 0x4b
	.long	.LASF367
	.byte	0x16
	.byte	0x6
	.long	0x6e
	.byte	0x1
	.byte	0x1
	.uleb128 0x4b
	.long	.LASF368
	.byte	0x16
	.byte	0x7
	.long	0x6e
	.byte	0x1
	.byte	0x1
	.uleb128 0x4b
	.long	.LASF296
	.byte	0x16
	.byte	0x48
	.long	0x3f
	.byte	0x1
	.byte	0x1
	.uleb128 0x4b
	.long	.LASF369
	.byte	0x16
	.byte	0x4c
	.long	0x3f
	.byte	0x1
	.byte	0x1
	.uleb128 0x4b
	.long	.LASF370
	.byte	0x16
	.byte	0x4d
	.long	0x3f
	.byte	0x1
	.byte	0x1
	.uleb128 0x4b
	.long	.LASF371
	.byte	0x16
	.byte	0x55
	.long	0x3f
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.long	0x2660
	.long	0x6e
	.uleb128 0xb
	.long	0x5b
	.byte	0xf
	.byte	0x0
	.uleb128 0x4b
	.long	.LASF372
	.byte	0x16
	.byte	0x64
	.long	0x2650
	.byte	0x1
	.byte	0x1
	.uleb128 0x4b
	.long	.LASF373
	.byte	0x16
	.byte	0x65
	.long	0x3f
	.byte	0x1
	.byte	0x1
	.uleb128 0x4d
	.long	.LASF374
	.byte	0x16
	.byte	0x86
	.long	0x3f
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	nb_drives
	.uleb128 0xa
	.long	0x26a0
	.long	0x136d
	.uleb128 0xb
	.long	0x5b
	.byte	0x20
	.byte	0x0
	.uleb128 0x4d
	.long	.LASF375
	.byte	0x16
	.byte	0x87
	.long	0x2690
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	drives_table
	.uleb128 0xa
	.long	0x26c6
	.long	0x26c6
	.uleb128 0xb
	.long	0x5b
	.byte	0x3
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x1006
	.uleb128 0x4b
	.long	.LASF376
	.byte	0x16
	.byte	0x90
	.long	0x26b6
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.long	0x26e4
	.long	0x13d3
	.uleb128 0x4e
	.byte	0x0
	.uleb128 0x4b
	.long	.LASF256
	.byte	0x16
	.byte	0xae
	.long	0x26d9
	.byte	0x1
	.byte	0x1
	.uleb128 0x4b
	.long	.LASF377
	.byte	0x15
	.byte	0x2f
	.long	0x3f
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.long	0x270e
	.long	0xf91
	.uleb128 0xb
	.long	0x5b
	.byte	0x7
	.byte	0x0
	.uleb128 0x4b
	.long	.LASF378
	.byte	0x15
	.byte	0x30
	.long	0x26fe
	.byte	0x1
	.byte	0x1
	.uleb128 0x4f
	.long	.LASF379
	.byte	0x1
	.value	0x41a
	.long	0x155e
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	pc_machine
	.uleb128 0x4f
	.long	.LASF380
	.byte	0x1
	.value	0x420
	.long	0x155e
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	isapc_machine
	.uleb128 0x2a
	.long	.LASF381
	.byte	0x1
	.byte	0x31
	.long	0x275e
	.byte	0x9
	.byte	0x3
	.quad	floppy_controller
	.uleb128 0x6
	.byte	0x8
	.long	0x119f
	.uleb128 0x2a
	.long	.LASF382
	.byte	0x1
	.byte	0x32
	.long	0x17f9
	.byte	0x9
	.byte	0x3
	.quad	rtc_state
	.uleb128 0x2c
	.string	"pit"
	.byte	0x1
	.byte	0x33
	.long	0x278e
	.byte	0x9
	.byte	0x3
	.quad	pit
	.uleb128 0x6
	.byte	0x8
	.long	0x117d
	.uleb128 0x2a
	.long	.LASF383
	.byte	0x1
	.byte	0x34
	.long	0x27a9
	.byte	0x9
	.byte	0x3
	.quad	ioapic
	.uleb128 0x6
	.byte	0x8
	.long	0x116c
	.uleb128 0x2a
	.long	.LASF384
	.byte	0x1
	.byte	0x35
	.long	0x11d6
	.byte	0x9
	.byte	0x3
	.quad	i440fx_state
	.uleb128 0x2a
	.long	.LASF385
	.byte	0x1
	.byte	0x3c
	.long	0x1144
	.byte	0x9
	.byte	0x3
	.quad	ferr_irq
	.uleb128 0xa
	.long	0x27e9
	.long	0x69
	.uleb128 0xb
	.long	0x5b
	.byte	0x1
	.byte	0x0
	.uleb128 0x33
	.long	.LASF386
	.byte	0x1
	.value	0x285
	.long	0x27ff
	.byte	0x9
	.byte	0x3
	.quad	ide_iobase
	.uleb128 0x5
	.long	0x27d9
	.uleb128 0x33
	.long	.LASF387
	.byte	0x1
	.value	0x286
	.long	0x281a
	.byte	0x9
	.byte	0x3
	.quad	ide_iobase2
	.uleb128 0x5
	.long	0x27d9
	.uleb128 0x33
	.long	.LASF388
	.byte	0x1
	.value	0x287
	.long	0x2835
	.byte	0x9
	.byte	0x3
	.quad	ide_irq
	.uleb128 0x5
	.long	0x27d9
	.uleb128 0xa
	.long	0x284a
	.long	0x3f
	.uleb128 0xb
	.long	0x5b
	.byte	0x5
	.byte	0x0
	.uleb128 0x33
	.long	.LASF389
	.byte	0x1
	.value	0x28b
	.long	0x283a
	.byte	0x9
	.byte	0x3
	.quad	ne2000_io
	.uleb128 0x33
	.long	.LASF390
	.byte	0x1
	.value	0x28c
	.long	0x283a
	.byte	0x9
	.byte	0x3
	.quad	ne2000_irq
	.uleb128 0x33
	.long	.LASF391
	.byte	0x1
	.value	0x28e
	.long	0x12ca
	.byte	0x9
	.byte	0x3
	.quad	serial_io
	.uleb128 0x33
	.long	.LASF392
	.byte	0x1
	.value	0x28f
	.long	0x12ca
	.byte	0x9
	.byte	0x3
	.quad	serial_irq
	.uleb128 0x40
	.long	.LASF393
	.byte	0x1
	.value	0x291
	.long	0x2198
	.uleb128 0x40
	.long	.LASF394
	.byte	0x1
	.value	0x292
	.long	0x2198
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
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
	.uleb128 0x17
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
	.uleb128 0x20
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x2c
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x3a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x3b
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x3c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x3d
	.uleb128 0x1d
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x3e
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x3f
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x41
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x42
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
	.uleb128 0x43
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
	.uleb128 0x44
	.uleb128 0xb
	.byte	0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x45
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x46
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
	.uleb128 0x47
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
	.uleb128 0x48
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
	.uleb128 0x49
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
	.uleb128 0x4a
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
	.uleb128 0x4b
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
	.uleb128 0x4c
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
	.uleb128 0x4d
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
	.uleb128 0x4e
	.uleb128 0x21
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x4f
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
	.long	0xc2
	.value	0x2
	.long	.Ldebug_info0
	.long	0x28bb
	.long	0x15af
	.string	"cpu_set_ferr"
	.long	0x1692
	.string	"cpu_get_tsc"
	.long	0x16c3
	.string	"cpu_smm_update"
	.long	0x16f0
	.string	"cpu_get_pic_interrupt"
	.long	0x17ff
	.string	"ioport_set_a20"
	.long	0x182e
	.string	"ioport_get_a20"
	.long	0x267a
	.string	"nb_drives"
	.long	0x26a0
	.string	"drives_table"
	.long	0x271b
	.string	"pc_machine"
	.long	0x2732
	.string	"isapc_machine"
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
	.quad	.LBB95-.Ltext0
	.quad	.LBE95-.Ltext0
	.quad	.LBB92-.Ltext0
	.quad	.LBE92-.Ltext0
	.quad	.LBB62-.Ltext0
	.quad	.LBE62-.Ltext0
	.quad	.LBB59-.Ltext0
	.quad	.LBE59-.Ltext0
	.quad	.LBB50-.Ltext0
	.quad	.LBE50-.Ltext0
	.quad	.LBB46-.Ltext0
	.quad	.LBE46-.Ltext0
	.quad	.LBB44-.Ltext0
	.quad	.LBE44-.Ltext0
	.quad	.LBB36-.Ltext0
	.quad	.LBE36-.Ltext0
	.quad	.LBB34-.Ltext0
	.quad	.LBE34-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB8-.Ltext0
	.quad	.LBE8-.Ltext0
	.quad	.LBB93-.Ltext0
	.quad	.LBE93-.Ltext0
	.quad	.LBB82-.Ltext0
	.quad	.LBE82-.Ltext0
	.quad	.LBB77-.Ltext0
	.quad	.LBE77-.Ltext0
	.quad	.LBB60-.Ltext0
	.quad	.LBE60-.Ltext0
	.quad	.LBB54-.Ltext0
	.quad	.LBE54-.Ltext0
	.quad	.LBB51-.Ltext0
	.quad	.LBE51-.Ltext0
	.quad	.LBB48-.Ltext0
	.quad	.LBE48-.Ltext0
	.quad	.LBB10-.Ltext0
	.quad	.LBE10-.Ltext0
	.quad	.LBB9-.Ltext0
	.quad	.LBE9-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB14-.Ltext0
	.quad	.LBE14-.Ltext0
	.quad	.LBB98-.Ltext0
	.quad	.LBE98-.Ltext0
	.quad	.LBB84-.Ltext0
	.quad	.LBE84-.Ltext0
	.quad	.LBB79-.Ltext0
	.quad	.LBE79-.Ltext0
	.quad	.LBB64-.Ltext0
	.quad	.LBE64-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB17-.Ltext0
	.quad	.LBE17-.Ltext0
	.quad	.LBB81-.Ltext0
	.quad	.LBE81-.Ltext0
	.quad	.LBB21-.Ltext0
	.quad	.LBE21-.Ltext0
	.quad	.LBB19-.Ltext0
	.quad	.LBE19-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB30-.Ltext0
	.quad	.LBE30-.Ltext0
	.quad	.LBB56-.Ltext0
	.quad	.LBE56-.Ltext0
	.quad	.LBB32-.Ltext0
	.quad	.LBE32-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB47-.Ltext0
	.quad	.LBE47-.Ltext0
	.quad	.LBB96-.Ltext0
	.quad	.LBE96-.Ltext0
	.quad	0x0
	.quad	0x0
	.section	.debug_str,"MS",@progbits,1
.LASF5:
	.string	"char"
.LASF153:
	.string	"efer"
.LASF233:
	.string	"PITState"
.LASF9:
	.string	"size_t"
.LASF58:
	.string	"__jmp_buf_tag"
.LASF303:
	.string	"cpu_model"
.LASF12:
	.string	"int32_t"
.LASF255:
	.string	"init_pci"
.LASF29:
	.string	"_IO_save_end"
.LASF140:
	.string	"fpuc"
.LASF206:
	.string	"macaddr"
.LASF141:
	.string	"fptags"
.LASF75:
	.string	"floatx80"
.LASF139:
	.string	"fpus"
.LASF22:
	.string	"_IO_write_base"
.LASF69:
	.string	"addr_code"
.LASF96:
	.string	"running"
.LASF348:
	.string	"pc_init_ne2k_isa"
.LASF38:
	.string	"_lock"
.LASF302:
	.string	"pci_enabled"
.LASF362:
	.string	"phys_ram_base"
.LASF129:
	.string	"shellcode_context"
.LASF163:
	.string	"jmp_env"
.LASF315:
	.string	"i8259"
.LASF27:
	.string	"_IO_save_base"
.LASF121:
	.string	"vaddr"
.LASF301:
	.string	"initrd_filename"
.LASF338:
	.string	"initrd_size"
.LASF130:
	.string	"cc_src"
.LASF205:
	.string	"NICInfo"
.LASF131:
	.string	"cc_dst"
.LASF157:
	.string	"intercept"
.LASF264:
	.string	"QEMUMachineInitFunc"
.LASF265:
	.string	"QEMUMachine"
.LASF133:
	.string	"hflags"
.LASF35:
	.string	"_cur_column"
.LASF108:
	.string	"logged"
.LASF45:
	.string	"_mode"
.LASF237:
	.string	"PCIConfigReadFunc"
.LASF293:
	.string	"where"
.LASF70:
	.string	"addend"
.LASF297:
	.string	"vga_ram_size"
.LASF16:
	.string	"FILE"
.LASF2:
	.string	"long int"
.LASF269:
	.string	"qemu_irq_raise"
.LASF193:
	.string	"cpuid_ext_features"
.LASF84:
	.string	"limit"
.LASF49:
	.string	"_IO_marker"
.LASF388:
	.string	"ide_irq"
.LASF93:
	.string	"netidx"
.LASF185:
	.string	"opaque"
.LASF311:
	.string	"vga_bios_size"
.LASF4:
	.string	"short unsigned int"
.LASF122:
	.string	"CPUX86State"
.LASF65:
	.string	"ram_addr_t"
.LASF210:
	.string	"BlockDriverState"
.LASF151:
	.string	"sysenter_esp"
.LASF172:
	.string	"current_tb"
.LASF228:
	.string	"irq_state"
.LASF156:
	.string	"vm_vmcb"
.LASF100:
	.string	"instruction_stage"
.LASF152:
	.string	"sysenter_eip"
.LASF382:
	.string	"rtc_state"
.LASF370:
	.string	"vmsvga_enabled"
.LASF316:
	.string	"index"
.LASF188:
	.string	"cpuid_vendor1"
.LASF190:
	.string	"cpuid_vendor3"
.LASF201:
	.string	"TranslationBlock"
.LASF377:
	.string	"nb_nics"
.LASF230:
	.string	"IRQState"
.LASF361:
	.string	"first_cpu"
.LASF218:
	.string	"i2c_bus"
.LASF369:
	.string	"cirrus_vga_enabled"
.LASF356:
	.string	"pc_init_pci"
.LASF7:
	.string	"signed char"
.LASF291:
	.string	"shutdown_index"
.LASF312:
	.string	"pci_bus"
.LASF48:
	.string	"_IO_FILE"
.LASF313:
	.string	"piix3_devfn"
.LASF110:
	.string	"load_value"
.LASF333:
	.string	"load_linux"
.LASF394:
	.string	"parallel_irq"
.LASF6:
	.string	"unsigned char"
.LASF353:
	.string	"ldl_le_p"
.LASF94:
	.string	"argos_rtag_t"
.LASF195:
	.string	"cpuid_model"
.LASF91:
	.string	"argos_rtag"
.LASF214:
	.string	"first_client"
.LASF115:
	.string	"store_value"
.LASF294:
	.string	"main_cpu_reset"
.LASF375:
	.string	"drives_table"
.LASF217:
	.string	"nb_host_devs"
.LASF134:
	.string	"segs"
.LASF379:
	.string	"pc_machine"
.LASF197:
	.string	"cpuid_ext3_features"
.LASF74:
	.string	"float64"
.LASF194:
	.string	"cpuid_xlevel"
.LASF207:
	.string	"model"
.LASF171:
	.string	"old_exception"
.LASF222:
	.string	"devfn"
.LASF306:
	.string	"vga_ram_addr"
.LASF203:
	.string	"IOReadHandler"
.LASF47:
	.string	"_IO_lock_t"
.LASF260:
	.string	"VLANClientState"
.LASF113:
	.string	"load_addr_type"
.LASF221:
	.string	"config"
.LASF308:
	.string	"vga_bios_offset"
.LASF88:
	.string	"argos_paddr_t"
.LASF85:
	.string	"flags"
.LASF19:
	.string	"_IO_read_ptr"
.LASF72:
	.string	"double"
.LASF281:
	.string	"info_ofs"
.LASF357:
	.string	"pc_init_isa"
.LASF52:
	.string	"_pos"
.LASF358:
	.string	"stdin"
.LASF116:
	.string	"store_value_netidx"
.LASF212:
	.string	"CharDriverState"
.LASF243:
	.string	"map_func"
.LASF145:
	.string	"sse_status"
.LASF220:
	.string	"PCIDevice"
.LASF270:
	.string	"ioportF0_write"
.LASF236:
	.string	"PCIConfigWriteFunc"
.LASF30:
	.string	"_markers"
.LASF169:
	.string	"interrupt_request"
.LASF198:
	.string	"cpuid_apic_id"
.LASF289:
	.string	"bochs_bios_write"
.LASF328:
	.string	"smbus"
.LASF365:
	.string	"fd_bootchk"
.LASF389:
	.string	"ne2000_io"
.LASF232:
	.string	"IOAPICState"
.LASF283:
	.string	"heads"
.LASF387:
	.string	"ide_iobase2"
.LASF167:
	.string	"exception_next_eip"
.LASF251:
	.string	"DriveInfo"
.LASF109:
	.string	"instruction_netidx"
.LASF138:
	.string	"fpstt"
.LASF211:
	.string	"DisplayState"
.LASF347:
	.string	"bootsect"
.LASF149:
	.string	"mmx_t0"
.LASF46:
	.string	"_unused2"
.LASF179:
	.string	"singlestep_enabled"
.LASF174:
	.string	"mem_write_vaddr"
.LASF390:
	.string	"ne2000_irq"
.LASF114:
	.string	"load_size"
.LASF339:
	.string	"cmdline_size"
.LASF275:
	.string	"cpu_get_pic_interrupt"
.LASF98:
	.string	"logfile"
.LASF103:
	.string	"loadedby_eip"
.LASF250:
	.string	"BlockInterfaceType"
.LASF33:
	.string	"_flags2"
.LASF21:
	.string	"_IO_read_base"
.LASF318:
	.string	"vga_bios_error"
.LASF143:
	.string	"fp_status"
.LASF342:
	.string	"real_addr"
.LASF329:
	.string	"cmos_init"
.LASF216:
	.string	"nb_guest_devs"
.LASF86:
	.string	"XMMReg"
.LASF261:
	.string	"fd_read"
.LASF252:
	.string	"bdrv"
.LASF150:
	.string	"sysenter_cs"
.LASF196:
	.string	"cpuid_ext2_features"
.LASF95:
	.string	"argos_shellcode_context_s"
.LASF162:
	.string	"intercept_exceptions"
.LASF79:
	.string	"floatx80_rounding_precision"
.LASF351:
	.string	"audio_enabled"
.LASF299:
	.string	"kernel_filename"
.LASF213:
	.string	"VLANState"
.LASF258:
	.string	"enabled"
.LASF118:
	.string	"store_addr_type"
.LASF325:
	.string	"__s1"
.LASF34:
	.string	"_old_offset"
.LASF154:
	.string	"star"
.LASF146:
	.string	"mxcsr"
.LASF274:
	.string	"cpu_smm_update"
.LASF396:
	.string	"/home/remco/Projects/Argos/src/hw/pc.c"
.LASF3:
	.string	"long long int"
.LASF248:
	.string	"IF_MTD"
.LASF286:
	.string	"enable"
.LASF330:
	.string	"hd_table"
.LASF80:
	.string	"CPU86_LDouble"
.LASF24:
	.string	"_IO_write_end"
.LASF135:
	.string	"a20_mask"
.LASF384:
	.string	"i440fx_state"
.LASF67:
	.string	"addr_read"
.LASF126:
	.string	"t1tag"
.LASF112:
	.string	"load_addr"
.LASF78:
	.string	"float_rounding_mode"
.LASF272:
	.string	"cpu_set_ferr"
.LASF397:
	.string	"/home/remco/Projects/Argos/src/i386-softmmu"
.LASF186:
	.string	"cpu_model_str"
.LASF240:
	.string	"addr"
.LASF177:
	.string	"breakpoints"
.LASF119:
	.string	"store_size"
.LASF25:
	.string	"_IO_buf_base"
.LASF273:
	.string	"cpu_get_tsc"
.LASF374:
	.string	"nb_drives"
.LASF50:
	.string	"_next"
.LASF1:
	.string	"unsigned int"
.LASF256:
	.string	"soundhw"
.LASF317:
	.string	"bios_error"
.LASF395:
	.string	"GNU C 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
.LASF239:
	.string	"PCIIORegion"
.LASF368:
	.string	"bios_dir"
.LASF340:
	.string	"initrd_max"
.LASF182:
	.string	"watchpoint_hit"
.LASF89:
	.string	"argos_netidx_t"
.LASF257:
	.string	"descr"
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
.LASF51:
	.string	"_sbuf"
.LASF371:
	.string	"smp_cpus"
.LASF104:
	.string	"storedby_eip"
.LASF111:
	.string	"load_value_netidx"
.LASF227:
	.string	"irq_index"
.LASF200:
	.string	"apic_state"
.LASF17:
	.string	"__val"
.LASF18:
	.string	"_flags"
.LASF267:
	.string	"data"
.LASF173:
	.string	"mem_write_pc"
.LASF320:
	.string	"__FUNCTION__"
.LASF61:
	.string	"__saved_mask"
.LASF304:
	.string	"linux_boot"
.LASF380:
	.string	"isapc_machine"
.LASF59:
	.string	"__jmpbuf"
.LASF231:
	.string	"PicState2"
.LASF184:
	.string	"cpu_index"
.LASF57:
	.string	"__jmp_buf"
.LASF364:
	.string	"isa_pic"
.LASF226:
	.string	"config_write"
.LASF225:
	.string	"config_read"
.LASF285:
	.string	"ioport_set_a20"
.LASF242:
	.string	"type"
.LASF332:
	.string	"translation"
.LASF181:
	.string	"nb_watchpoints"
.LASF64:
	.string	"target_phys_addr_t"
.LASF295:
	.string	"pc_init1"
.LASF215:
	.string	"next"
.LASF76:
	.string	"long double"
.LASF290:
	.string	"shutdown_str"
.LASF279:
	.string	"cmos_init_hd"
.LASF314:
	.string	"cpu_irq"
.LASF137:
	.string	"prev_fpip"
.LASF367:
	.string	"bios_name"
.LASF39:
	.string	"_offset"
.LASF350:
	.string	"audio_init"
.LASF60:
	.string	"__mask_was_saved"
.LASF355:
	.string	"stw_le_p"
.LASF262:
	.string	"fd_can_read"
.LASF192:
	.string	"cpuid_features"
.LASF335:
	.string	"real_seg"
.LASF158:
	.string	"intercept_cr_read"
.LASF322:
	.string	"offset"
.LASF241:
	.string	"size"
.LASF101:
	.string	"trace_stage"
.LASF15:
	.string	"long long unsigned int"
.LASF392:
	.string	"serial_irq"
.LASF53:
	.string	"uint8_t"
.LASF280:
	.string	"type_ofs"
.LASF54:
	.string	"uint16_t"
.LASF10:
	.string	"__off_t"
.LASF31:
	.string	"_chain"
.LASF0:
	.string	"long unsigned int"
.LASF144:
	.string	"fp_convert"
.LASF106:
	.string	"instruction"
.LASF310:
	.string	"isa_bios_size"
.LASF268:
	.string	"ioport80_write"
.LASF300:
	.string	"kernel_cmdline"
.LASF331:
	.string	"nbds"
.LASF344:
	.string	"cmdline_addr"
.LASF132:
	.string	"cc_op"
.LASF183:
	.string	"next_cpu"
.LASF73:
	.string	"float32"
.LASF66:
	.string	"CPUTLBEntry"
.LASF381:
	.string	"floppy_controller"
.LASF296:
	.string	"ram_size"
.LASF160:
	.string	"intercept_dr_read"
.LASF359:
	.string	"stdout"
.LASF219:
	.string	"PCIBus"
.LASF284:
	.string	"sectors"
.LASF117:
	.string	"store_addr"
.LASF165:
	.string	"error_code"
.LASF234:
	.string	"RTCState"
.LASF28:
	.string	"_IO_backup_base"
.LASF37:
	.string	"_shortbuf"
.LASF266:
	.string	"desc"
.LASF99:
	.string	"instruction_cnt"
.LASF246:
	.string	"IF_FLOPPY"
.LASF123:
	.string	"regs"
.LASF366:
	.string	"acpi_enabled"
.LASF391:
	.string	"serial_io"
.LASF11:
	.string	"__off64_t"
.LASF259:
	.string	"init"
.LASF102:
	.string	"is_system_call"
.LASF161:
	.string	"intercept_dr_write"
.LASF125:
	.string	"t0tag"
.LASF349:
	.string	"nb_ne2k"
.LASF97:
	.string	"stop_condition"
.LASF393:
	.string	"parallel_io"
.LASF168:
	.string	"smbase"
.LASF127:
	.string	"t2tag"
.LASF249:
	.string	"IF_SD"
.LASF26:
	.string	"_IO_buf_end"
.LASF298:
	.string	"boot_device"
.LASF223:
	.string	"name"
.LASF307:
	.string	"bios_offset"
.LASF63:
	.string	"target_ulong"
.LASF282:
	.string	"cylinders"
.LASF159:
	.string	"intercept_cr_write"
.LASF360:
	.string	"stderr"
.LASF8:
	.string	"short int"
.LASF68:
	.string	"addr_write"
.LASF337:
	.string	"kernel_size"
.LASF56:
	.string	"uint64_t"
.LASF343:
	.string	"prot_addr"
.LASF352:
	.string	"boot_device2nibble"
.LASF189:
	.string	"cpuid_vendor2"
.LASF81:
	.string	"SegmentCache"
.LASF346:
	.string	"generate_bootsect"
.LASF87:
	.string	"MMXReg"
.LASF36:
	.string	"_vtable_offset"
.LASF166:
	.string	"exception_is_int"
.LASF341:
	.string	"header"
.LASF142:
	.string	"fpregs"
.LASF147:
	.string	"xmm_regs"
.LASF244:
	.string	"IF_IDE"
.LASF263:
	.string	"info_str"
.LASF327:
	.string	"eeprom_buf"
.LASF170:
	.string	"user_mode_only"
.LASF383:
	.string	"ioapic"
.LASF155:
	.string	"vm_hsave"
.LASF178:
	.string	"nb_breakpoints"
.LASF204:
	.string	"IOCanRWHandler"
.LASF136:
	.string	"fpip"
.LASF107:
	.string	"instruction_size"
.LASF376:
	.string	"serial_hds"
.LASF191:
	.string	"cpuid_version"
.LASF324:
	.string	"__s2_len"
.LASF288:
	.string	"ioport92_read"
.LASF309:
	.string	"bios_size"
.LASF202:
	.string	"APICState"
.LASF128:
	.string	"regtags"
.LASF254:
	.string	"init_isa"
.LASF253:
	.string	"unit"
.LASF399:
	.string	"bochs_bios_init"
.LASF77:
	.string	"float_status"
.LASF305:
	.string	"ram_addr"
.LASF20:
	.string	"_IO_read_end"
.LASF287:
	.string	"ioport92_write"
.LASF271:
	.string	"qemu_irq_lower"
.LASF378:
	.string	"nd_table"
.LASF224:
	.string	"io_regions"
.LASF55:
	.string	"uint32_t"
.LASF247:
	.string	"IF_PFLASH"
.LASF398:
	.string	"ioport_get_a20"
.LASF292:
	.string	"get_file_size"
.LASF319:
	.string	"option_rom_error"
.LASF32:
	.string	"_fileno"
.LASF277:
	.string	"level"
.LASF235:
	.string	"fdctrl_t"
.LASF278:
	.string	"intno"
.LASF164:
	.string	"exception_index"
.LASF209:
	.string	"AudioState"
.LASF180:
	.string	"watchpoint"
.LASF62:
	.string	"jmp_buf"
.LASF238:
	.string	"PCIMapIORegionFunc"
.LASF71:
	.string	"float"
.LASF276:
	.string	"pic_irq_request"
.LASF105:
	.string	"executed_eip"
.LASF323:
	.string	"__s1_len"
.LASF83:
	.string	"base"
.LASF23:
	.string	"_IO_write_ptr"
.LASF354:
	.string	"stl_le_p"
.LASF124:
	.string	"eflags"
.LASF175:
	.string	"tlb_table"
.LASF326:
	.string	"__result"
.LASF373:
	.string	"nb_option_roms"
.LASF13:
	.string	"int64_t"
.LASF82:
	.string	"selector"
.LASF336:
	.string	"setup_size"
.LASF176:
	.string	"tb_jmp_cache"
.LASF372:
	.string	"option_rom"
.LASF321:
	.string	"option_rom_offset"
.LASF345:
	.string	"initrd_addr"
.LASF92:
	.string	"origin"
.LASF363:
	.string	"phys_ram_dirty"
.LASF199:
	.string	"envmap"
.LASF14:
	.string	"__sigset_t"
.LASF187:
	.string	"cpuid_level"
.LASF245:
	.string	"IF_SCSI"
.LASF385:
	.string	"ferr_irq"
.LASF120:
	.string	"argos_shellcode_context_t"
.LASF90:
	.string	"argos_bytemap_t"
.LASF386:
	.string	"ide_iobase"
.LASF208:
	.string	"vlan"
.LASF148:
	.string	"xmm_t0"
.LASF334:
	.string	"protocol"
.LASF229:
	.string	"qemu_irq"
	.section	.note.GNU-stack,"",@progbits
	.ident	"GCC: (GNU) 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
