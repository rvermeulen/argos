	.file	"vl.c"
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
	.string	"pcspk"
.LC1:
	.string	"PC speaker"
.LC2:
	.string	"sb16"
.LC3:
	.string	"Creative Sound Blaster 16"
.LC4:
	.string	"es1370"
.LC5:
	.string	"ENSONIQ AudioPCI ES1370"
.globl soundhw
	.data
	.align 32
	.type	soundhw, @object
	.size	soundhw, 128
soundhw:
	.quad	.LC0
	.quad	.LC1
	.long	0
	.long	1
	.quad	pcspk_audio_init
	.quad	.LC2
	.quad	.LC3
	.long	0
	.long	1
	.quad	SB16_init
	.quad	.LC4
	.quad	.LC5
	.long	0
	.long	0
	.quad	es1370_init
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	0
	.section	.rodata.str1.1
.LC6:
	.string	"h"
.LC7:
	.string	"help"
.LC8:
	.string	"M"
.LC9:
	.string	"cpu"
.LC10:
	.string	"fda"
.LC11:
	.string	"fdb"
.LC12:
	.string	"hda"
.LC13:
	.string	"hdb"
.LC14:
	.string	"hdc"
.LC15:
	.string	"hdd"
.LC16:
	.string	"drive"
.LC17:
	.string	"cdrom"
.LC18:
	.string	"mtdblock"
.LC19:
	.string	"sd"
.LC20:
	.string	"pflash"
.LC21:
	.string	"boot"
.LC22:
	.string	"snapshot"
.LC23:
	.string	"no-fd-bootchk"
.LC24:
	.string	"m"
.LC25:
	.string	"nographic"
.LC26:
	.string	"portrait"
.LC27:
	.string	"k"
.LC28:
	.string	"audio-help"
.LC29:
	.string	"soundhw"
.LC30:
	.string	"net"
.LC31:
	.string	"tftp"
.LC32:
	.string	"bootp"
.LC33:
	.string	"smb"
.LC34:
	.string	"redir"
.LC35:
	.string	"kernel"
.LC36:
	.string	"append"
.LC37:
	.string	"initrd"
.LC38:
	.string	"S"
.LC39:
	.string	"s"
.LC40:
	.string	"p"
.LC41:
	.string	"d"
.LC42:
	.string	"hdachs"
.LC43:
	.string	"L"
.LC44:
	.string	"bios"
.LC45:
	.string	"no-code-copy"
.LC46:
	.string	"localtime"
.LC47:
	.string	"std-vga"
.LC48:
	.string	"echr"
.LC49:
	.string	"monitor"
.LC50:
	.string	"serial"
.LC51:
	.string	"parallel"
.LC52:
	.string	"loadvm"
.LC53:
	.string	"full-screen"
.LC54:
	.string	"no-frame"
.LC55:
	.string	"alt-grab"
.LC56:
	.string	"no-quit"
.LC57:
	.string	"pidfile"
.LC58:
	.string	"win2k-hack"
.LC59:
	.string	"usb"
.LC60:
	.string	"cirrusvga"
.LC61:
	.string	"vmwarevga"
.LC62:
	.string	"no-acpi"
.LC63:
	.string	"no-reboot"
.LC64:
	.string	"show-cursor"
.LC65:
	.string	"daemonize"
.LC66:
	.string	"option-rom"
.LC67:
	.string	"name"
.LC68:
	.string	"clock"
.LC69:
	.string	"startdate"
.LC70:
	.string	"linux"
.LC71:
	.string	"win2k"
.LC72:
	.string	"winxp"
.LC73:
	.string	"wp"
.LC74:
	.string	"no-csilog"
.LC75:
	.string	"no-fsc"
.LC76:
	.string	"usbdevice"
.LC77:
	.string	"smp"
.LC78:
	.string	"vnc"
.LC79:
	.string	"csaddr"
.LC80:
	.string	"csport"
.LC81:
	.string	"tracksc"
.globl qemu_options
	.section	.rodata
	.align 32
	.type	qemu_options, @object
	.size	qemu_options, 1232
qemu_options:
	.quad	.LC6
	.long	0
	.long	0
	.quad	.LC7
	.long	0
	.long	0
	.quad	.LC8
	.long	1
	.long	1
	.quad	.LC9
	.long	1
	.long	2
	.quad	.LC10
	.long	1
	.long	3
	.quad	.LC11
	.long	1
	.long	4
	.quad	.LC12
	.long	1
	.long	5
	.quad	.LC13
	.long	1
	.long	6
	.quad	.LC14
	.long	1
	.long	7
	.quad	.LC15
	.long	1
	.long	8
	.quad	.LC16
	.long	1
	.long	9
	.quad	.LC17
	.long	1
	.long	10
	.quad	.LC18
	.long	1
	.long	11
	.quad	.LC19
	.long	1
	.long	12
	.quad	.LC20
	.long	1
	.long	13
	.quad	.LC21
	.long	1
	.long	14
	.quad	.LC22
	.long	0
	.long	15
	.quad	.LC23
	.long	0
	.long	16
	.quad	.LC24
	.long	1
	.long	17
	.quad	.LC25
	.long	0
	.long	18
	.quad	.LC26
	.long	0
	.long	19
	.quad	.LC27
	.long	1
	.long	38
	.quad	.LC28
	.long	0
	.long	20
	.quad	.LC29
	.long	1
	.long	21
	.quad	.LC30
	.long	1
	.long	22
	.quad	.LC31
	.long	1
	.long	23
	.quad	.LC32
	.long	1
	.long	24
	.quad	.LC33
	.long	1
	.long	25
	.quad	.LC34
	.long	1
	.long	26
	.quad	.LC35
	.long	1
	.long	27
	.quad	.LC36
	.long	1
	.long	28
	.quad	.LC37
	.long	1
	.long	29
	.quad	.LC38
	.long	0
	.long	30
	.quad	.LC39
	.long	0
	.long	31
	.quad	.LC40
	.long	1
	.long	32
	.quad	.LC41
	.long	1
	.long	33
	.quad	.LC42
	.long	1
	.long	34
	.quad	.LC43
	.long	1
	.long	35
	.quad	.LC44
	.long	1
	.long	36
	.quad	.LC45
	.long	0
	.long	37
	.quad	.LC46
	.long	0
	.long	39
	.quad	.LC47
	.long	0
	.long	43
	.quad	.LC48
	.long	1
	.long	44
	.quad	.LC49
	.long	1
	.long	45
	.quad	.LC50
	.long	1
	.long	46
	.quad	.LC51
	.long	1
	.long	47
	.quad	.LC52
	.long	1
	.long	48
	.quad	.LC53
	.long	0
	.long	49
	.quad	.LC54
	.long	0
	.long	50
	.quad	.LC55
	.long	0
	.long	51
	.quad	.LC56
	.long	0
	.long	52
	.quad	.LC57
	.long	1
	.long	53
	.quad	.LC58
	.long	0
	.long	56
	.quad	.LC59
	.long	0
	.long	57
	.quad	.LC60
	.long	0
	.long	40
	.quad	.LC61
	.long	0
	.long	41
	.quad	.LC62
	.long	0
	.long	61
	.quad	.LC63
	.long	0
	.long	62
	.quad	.LC64
	.long	0
	.long	63
	.quad	.LC65
	.long	0
	.long	64
	.quad	.LC66
	.long	1
	.long	65
	.quad	.LC67
	.long	1
	.long	67
	.quad	.LC68
	.long	1
	.long	70
	.quad	.LC69
	.long	1
	.long	71
	.quad	.LC70
	.long	0
	.long	72
	.quad	.LC71
	.long	0
	.long	73
	.quad	.LC72
	.long	0
	.long	74
	.quad	.LC73
	.long	1
	.long	75
	.quad	.LC74
	.long	0
	.long	76
	.quad	.LC75
	.long	0
	.long	77
	.quad	.LC76
	.long	1
	.long	58
	.quad	.LC77
	.long	1
	.long	59
	.quad	.LC78
	.long	1
	.long	60
	.quad	.LC79
	.long	1
	.long	78
	.quad	.LC80
	.long	1
	.long	79
	.quad	.LC81
	.long	0
	.long	80
	.quad	0
	.zero	8
.globl first_machine
	.bss
	.align 8
	.type	first_machine, @object
	.size	first_machine, 8
first_machine:
	.zero	8
.globl isa_mem_base
	.align 8
	.type	isa_mem_base, @object
	.size	isa_mem_base, 8
isa_mem_base:
	.zero	8
.globl argos_nt_fl
	.align 8
	.type	argos_nt_fl, @object
	.size	argos_nt_fl, 8
argos_nt_fl:
	.zero	8
.globl argos_tracksc
	.align 4
	.type	argos_tracksc, @object
	.size	argos_tracksc, 4
argos_tracksc:
	.zero	4
.globl argos_wprofile
	.align 8
	.type	argos_wprofile, @object
	.size	argos_wprofile, 8
argos_wprofile:
	.zero	8
.globl argos_instance_id
	.align 4
	.type	argos_instance_id, @object
	.size	argos_instance_id, 4
argos_instance_id:
	.zero	4
.globl argos_fsc
	.data
	.align 4
	.type	argos_fsc, @object
	.size	argos_fsc, 4
argos_fsc:
	.long	1
.globl argos_csilog
	.align 4
	.type	argos_csilog, @object
	.size	argos_csilog, 4
argos_csilog:
	.long	1
.globl argos_os_hint
	.bss
	.align 4
	.type	argos_os_hint, @object
	.size	argos_os_hint, 4
argos_os_hint:
	.zero	4
.globl alt_grab
	.align 4
	.type	alt_grab, @object
	.size	alt_grab, 4
alt_grab:
	.zero	4
.globl autostart
	.data
	.align 4
	.type	autostart, @object
	.size	autostart, 4
autostart:
	.long	1
.globl semihosting_enabled
	.bss
	.align 4
	.type	semihosting_enabled, @object
	.size	semihosting_enabled, 4
semihosting_enabled:
	.zero	4
.globl daemonize
	.align 4
	.type	daemonize, @object
	.size	daemonize, 4
daemonize:
	.zero	4
.globl graphic_rotate
	.align 4
	.type	graphic_rotate, @object
	.size	graphic_rotate, 4
graphic_rotate:
	.zero	4
.globl cursor_hide
	.data
	.align 4
	.type	cursor_hide, @object
	.size	cursor_hide, 4
cursor_hide:
	.long	1
.globl no_reboot
	.bss
	.align 4
	.type	no_reboot, @object
	.size	no_reboot, 4
no_reboot:
	.zero	4
.globl fd_bootchk
	.data
	.align 4
	.type	fd_bootchk, @object
	.size	fd_bootchk, 4
fd_bootchk:
	.long	1
.globl acpi_enabled
	.align 4
	.type	acpi_enabled, @object
	.size	acpi_enabled, 4
acpi_enabled:
	.long	1
.globl smp_cpus
	.align 4
	.type	smp_cpus, @object
	.size	smp_cpus, 4
smp_cpus:
	.long	1
.globl usb_enabled
	.bss
	.align 4
	.type	usb_enabled, @object
	.size	usb_enabled, 4
usb_enabled:
	.zero	4
.globl win2k_install_hack
	.align 4
	.type	win2k_install_hack, @object
	.size	win2k_install_hack, 4
win2k_install_hack:
	.zero	4
.globl no_quit
	.align 4
	.type	no_quit, @object
	.size	no_quit, 4
no_quit:
	.zero	4
.globl no_frame
	.align 4
	.type	no_frame, @object
	.size	no_frame, 4
no_frame:
	.zero	4
.globl full_screen
	.align 4
	.type	full_screen, @object
	.size	full_screen, 4
full_screen:
	.zero	4
.globl graphic_depth
	.data
	.align 4
	.type	graphic_depth, @object
	.size	graphic_depth, 4
graphic_depth:
	.long	15
.globl graphic_height
	.align 4
	.type	graphic_height, @object
	.size	graphic_height, 4
graphic_height:
	.long	600
.globl graphic_width
	.align 4
	.type	graphic_width, @object
	.size	graphic_width, 4
graphic_width:
	.long	800
.globl vmsvga_enabled
	.bss
	.align 4
	.type	vmsvga_enabled, @object
	.size	vmsvga_enabled, 4
vmsvga_enabled:
	.zero	4
.globl cirrus_vga_enabled
	.data
	.align 4
	.type	cirrus_vga_enabled, @object
	.size	cirrus_vga_enabled, 4
cirrus_vga_enabled:
	.long	1
.globl rtc_start_date
	.align 4
	.type	rtc_start_date, @object
	.size	rtc_start_date, 4
rtc_start_date:
	.long	-1
.globl rtc_utc
	.align 4
	.type	rtc_utc, @object
	.size	rtc_utc, 4
rtc_utc:
	.long	1
.globl pit_min_timer_count
	.bss
	.align 4
	.type	pit_min_timer_count, @object
	.size	pit_min_timer_count, 4
pit_min_timer_count:
	.zero	4
.globl keyboard_layout
	.align 8
	.type	keyboard_layout, @object
	.size	keyboard_layout, 8
keyboard_layout:
	.zero	8
.globl bios_name
	.align 8
	.type	bios_name, @object
	.size	bios_name, 8
bios_name:
	.zero	8
	.section	.rodata.str1.1
.LC82:
	.string	"/usr/local/share/argos"
.globl bios_dir
	.data
	.align 8
	.type	bios_dir, @object
	.size	bios_dir, 8
bios_dir:
	.quad	.LC82
	.align 4
	.type	ctrlsock_lport, @object
	.size	ctrlsock_lport, 4
ctrlsock_lport:
	.long	1374
	.local	ctrlsock_laddr
	.comm	ctrlsock_laddr,8,8
	.align 4
	.type	term_escape_char, @object
	.size	term_escape_char, 4
term_escape_char:
	.long	1
	.section	.rodata.str1.1
.LC83:
	.string	"dynticks"
.LC84:
	.string	"hpet"
.LC85:
	.string	"rtc"
.LC86:
	.string	"unix"
	.data
	.align 32
	.type	alarm_timers, @object
	.size	alarm_timers, 240
alarm_timers:
	.quad	.LC83
	.long	1
	.zero	4
	.quad	dynticks_start_timer
	.quad	dynticks_stop_timer
	.quad	dynticks_rearm_timer
	.quad	0
	.quad	.LC84
	.long	0
	.zero	4
	.quad	hpet_start_timer
	.quad	hpet_stop_timer
	.quad	0
	.quad	0
	.quad	.LC85
	.long	0
	.zero	4
	.quad	rtc_start_timer
	.quad	rtc_stop_timer
	.quad	0
	.quad	0
	.quad	.LC86
	.long	0
	.zero	4
	.quad	unix_start_timer
	.quad	unix_stop_timer
	.quad	0
	.quad	0
	.quad	0
	.zero	40
	.align 4
	.type	event_pending, @object
	.size	event_pending, 4
event_pending:
	.long	1
	.local	ctrlsock
	.comm	ctrlsock,8,8
	.local	first_bh
	.comm	first_bh,8,8
	.local	pcmcia_sockets
	.comm	pcmcia_sockets,8,8
	.section	.rodata.str1.1
.LC87:
	.string	"% h    print this help\n\r"
.LC88:
	.string	"% x    exit emulator\n\r"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC89:
	.string	"% s    save disk data back to file (if -snapshot)\n\r"
	.align 8
.LC90:
	.string	"% t    toggle console timestamps\n\r% b    send break (magic sysrq)\n\r"
	.align 8
.LC91:
	.string	"% c    switch between console and monitor\n\r"
	.section	.rodata.str1.1
.LC92:
	.string	"% %  sends %\n\r"
	.data
	.align 32
	.type	mux_help, @object
	.size	mux_help, 56
mux_help:
	.quad	.LC87
	.quad	.LC88
	.quad	.LC89
	.quad	.LC90
	.quad	.LC91
	.quad	.LC92
	.quad	0
	.local	stdio_nb_clients
	.comm	stdio_nb_clients,4,4
	.text
	.p2align 4,,15
.globl qemu_set_fd_handler2
	.type	qemu_set_fd_handler2, @function
qemu_set_fd_handler2:
.LFB448:
	.file 1 "/home/remco/Projects/Argos/src/vl.c"
	.loc 1 6260 0
	.loc 1 6263 0
	movq	%rdx, %rax
	.loc 1 6260 0
	movq	%rbx, -40(%rsp)
.LCFI0:
	movq	%rbp, -32(%rsp)
.LCFI1:
	movq	%r12, -24(%rsp)
.LCFI2:
	movq	%r13, -16(%rsp)
.LCFI3:
	movl	%edi, %ebx
	movq	%r14, -8(%rsp)
.LCFI4:
	subq	$40, %rsp
.LCFI5:
	.loc 1 6263 0
	orq	%rcx, %rax
	.loc 1 6260 0
	movq	%rsi, %r13
	movq	%rdx, %rbp
	movq	%rcx, %r12
	movq	%r8, %r14
	.loc 1 6263 0
	jne	.L2
	.loc 1 6264 0
	movl	$first_io_handler, %eax
	jmp	.L3
	.p2align 4,,7
.L20:
	.loc 1 6269 0
	cmpl	%ebx, (%rdx)
	je	.L17
	.loc 1 6273 0
	leaq	56(%rdx), %rax
.L3:
	.loc 1 6266 0
	movq	(%rax), %rdx
	.loc 1 6267 0
	testq	%rdx, %rdx
	jne	.L20
	.p2align 4,,7
.L7:
	.loc 1 6293 0
	xorl	%eax, %eax
.L1:
	.loc 1 6294 0
	movq	(%rsp), %rbx
	movq	8(%rsp), %rbp
	movq	16(%rsp), %r12
	movq	24(%rsp), %r13
	movq	32(%rsp), %r14
	addq	$40, %rsp
	ret
.L2:
	.loc 1 6276 0
	movq	first_io_handler(%rip), %rdx
	jmp	.L18
	.p2align 4,,7
.L21:
	.loc 1 6277 0
	cmpl	%ebx, (%rdx)
	je	.L12
	.loc 1 6276 0
	movq	56(%rdx), %rdx
.L18:
	testq	%rdx, %rdx
	jne	.L21
	.loc 1 6280 0
	movl	$64, %edi
	call	qemu_mallocz
	movq	%rax, %rdx
	.loc 1 6282 0
	movl	$-1, %eax
	.loc 1 6281 0
	testq	%rdx, %rdx
	je	.L1
	.loc 1 6283 0
	movq	first_io_handler(%rip), %rax
	movq	%rax, 56(%rdx)
	.loc 1 6284 0
	movq	%rdx, first_io_handler(%rip)
.L12:
	.loc 1 6286 0
	movl	%ebx, (%rdx)
	.loc 1 6287 0
	movq	%r13, 8(%rdx)
	.loc 1 6288 0
	movq	%rbp, 16(%rdx)
	.loc 1 6289 0
	movq	%r12, 24(%rdx)
	.loc 1 6290 0
	movq	%r14, 40(%rdx)
	.loc 1 6291 0
	movl	$0, 32(%rdx)
	jmp	.L7
.L17:
	.loc 1 6270 0
	movl	$1, 32(%rdx)
	jmp	.L7
.LFE448:
	.size	qemu_set_fd_handler2, .-qemu_set_fd_handler2
	.p2align 4,,15
.globl qemu_set_fd_handler
	.type	qemu_set_fd_handler, @function
qemu_set_fd_handler:
.LFB449:
	.loc 1 6300 0
	.loc 1 6301 0
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	xorl	%esi, %esi
	jmp	qemu_set_fd_handler2
.LFE449:
	.size	qemu_set_fd_handler, .-qemu_set_fd_handler
	.p2align 4,,15
	.type	default_ioport_readb, @function
default_ioport_readb:
.LFB257:
	.loc 1 578 0
	.loc 1 583 0
	movl	$255, %eax
	ret
.LFE257:
	.size	default_ioport_readb, .-default_ioport_readb
	.p2align 4,,15
	.type	default_ioport_writeb, @function
default_ioport_writeb:
.LFB258:
	.loc 1 586 0
	.loc 1 586 0
	rep ; ret
.LFE258:
	.size	default_ioport_writeb, .-default_ioport_writeb
	.p2align 4,,15
	.type	default_ioport_readw, @function
default_ioport_readw:
.LFB259:
	.loc 1 595 0
	movq	%rbx, -32(%rsp)
.LCFI6:
	movq	%rbp, -24(%rsp)
.LCFI7:
	.loc 1 598 0
	mov	%esi, %eax
	.loc 1 595 0
	movl	%esi, %ebp
	movq	%r12, -16(%rsp)
.LCFI8:
	movq	%r13, -8(%rsp)
.LCFI9:
	.loc 1 598 0
	movl	$ioport_opaque, %r12d
	.loc 1 595 0
	subq	$40, %rsp
.LCFI10:
	.loc 1 598 0
	movl	$ioport_read_table, %r13d
	movq	(%r12,%rax,8), %rdi
	movq	%rsp, %rdx
	call	*(%r13,%rax,8)
	movl	%eax, %ebx
	.loc 1 600 0
	leal	1(%rbp), %eax
	.loc 1 601 0
	movq	%rsp, %rdx
	.loc 1 600 0
	movzwl	%ax,%ebp
	.loc 1 601 0
	mov	%ebp, %eax
	movl	%ebp, %esi
	movq	(%r12,%rax,8), %rdi
	call	*(%r13,%rax,8)
	sall	$8, %eax
	.loc 1 604 0
	movq	16(%rsp), %rbp
	movq	24(%rsp), %r12
	.loc 1 601 0
	orl	%eax, %ebx
	.loc 1 604 0
	movq	32(%rsp), %r13
	movl	%ebx, %eax
	movq	8(%rsp), %rbx
	addq	$40, %rsp
	ret
.LFE259:
	.size	default_ioport_readw, .-default_ioport_readw
	.p2align 4,,15
	.type	default_ioport_writew, @function
default_ioport_writew:
.LFB260:
	.loc 1 607 0
	movq	%rbp, -24(%rsp)
.LCFI11:
	movq	%r12, -16(%rsp)
.LCFI12:
	movl	%esi, %ebp
	movq	%r13, -8(%rsp)
.LCFI13:
	.loc 1 608 0
	mov	%esi, %eax
	movl	$ioport_write_table, %r13d
	movl	$ioport_opaque, %r12d
	.loc 1 607 0
	movq	%rbx, -32(%rsp)
.LCFI14:
	subq	$40, %rsp
.LCFI15:
	.loc 1 607 0
	movl	%edx, %ebx
	.loc 1 608 0
	movq	(%r12,%rax,8), %rdi
	andl	$255, %edx
	call	*(%r13,%rax,8)
	.loc 1 609 0
	leal	1(%rbp), %eax
	.loc 1 610 0
	movzbl	%bh, %ebx
	movl	%ebx, %edx
	movq	8(%rsp), %rbx
	.loc 1 609 0
	movzwl	%ax,%ebp
	.loc 1 610 0
	mov	%ebp, %eax
	movl	%ebp, %esi
	movq	16(%rsp), %rbp
	movq	(%r12,%rax,8), %rdi
	movq	(%r13,%rax,8), %r11
	movq	24(%rsp), %r12
	movq	32(%rsp), %r13
	addq	$40, %rsp
	jmp	*%r11
.LFE260:
	.size	default_ioport_writew, .-default_ioport_writew
	.p2align 4,,15
	.type	default_ioport_readl, @function
default_ioport_readl:
.LFB261:
	.loc 1 615 0
	.loc 1 620 0
	movl	$-1, %eax
	ret
.LFE261:
	.size	default_ioport_readl, .-default_ioport_readl
	.p2align 4,,15
.globl default_ioport_writel
	.type	default_ioport_writel, @function
default_ioport_writel:
.LFB262:
	.loc 1 623 0
	.loc 1 623 0
	rep ; ret
.LFE262:
	.size	default_ioport_writel, .-default_ioport_writel
	.p2align 4,,15
.globl isa_unassign_ioport
	.type	isa_unassign_ioport, @function
isa_unassign_ioport:
.LFB266:
	.loc 1 694 0
	.loc 1 697 0
	leal	(%rdi,%rsi), %eax
	cmpl	%edi, %eax
	jle	.L35
	movl	$ioport_read_table, %esi
	movl	$ioport_write_table, %ecx
	movl	%eax, %edx
	.p2align 4,,7
.L33:
	.loc 1 698 0
	movslq	%edi,%rax
	.loc 1 697 0
	incl	%edi
	cmpl	%edi, %edx
	.loc 1 698 0
	movq	$default_ioport_readb, ioport_read_table(,%rax,8)
	.loc 1 702 0
	movq	$default_ioport_writeb, ioport_write_table(,%rax,8)
	.loc 1 699 0
	movq	$default_ioport_readw, 524288(%rsi,%rax,8)
	.loc 1 700 0
	movq	$default_ioport_readl, 1048576(%rsi,%rax,8)
	.loc 1 703 0
	movq	$default_ioport_writew, 524288(%rcx,%rax,8)
	.loc 1 704 0
	movq	$default_ioport_writel, 1048576(%rcx,%rax,8)
	.loc 1 697 0
	jg	.L33
.L35:
	rep ; ret
.LFE266:
	.size	isa_unassign_ioport, .-isa_unassign_ioport
	.p2align 4,,15
.globl cpu_outb
	.type	cpu_outb, @function
cpu_outb:
.LFB267:
	.loc 1 711 0
	.loc 1 716 0
	movslq	%esi,%rax
	movq	ioport_opaque(,%rax,8), %rdi
	movq	ioport_write_table(,%rax,8), %r11
	jmp	*%r11
.LFE267:
	.size	cpu_outb, .-cpu_outb
	.p2align 4,,15
.globl cpu_outw
	.type	cpu_outw, @function
cpu_outw:
.LFB268:
	.loc 1 724 0
	.loc 1 729 0
	movslq	%esi,%rax
	movq	ioport_opaque(,%rax,8), %rdi
	movq	ioport_write_table+524288(,%rax,8), %r11
	jmp	*%r11
.LFE268:
	.size	cpu_outw, .-cpu_outw
	.p2align 4,,15
.globl cpu_outl
	.type	cpu_outl, @function
cpu_outl:
.LFB269:
	.loc 1 737 0
	.loc 1 742 0
	movslq	%esi,%rax
	movq	ioport_opaque(,%rax,8), %rdi
	movq	ioport_write_table+1048576(,%rax,8), %r11
	jmp	*%r11
.LFE269:
	.size	cpu_outl, .-cpu_outl
	.p2align 4,,15
.globl argos_cpu_inb
	.type	argos_cpu_inb, @function
argos_cpu_inb:
.LFB270:
	.loc 1 750 0
	.loc 1 752 0
	movslq	%esi,%rax
	movq	ioport_opaque(,%rax,8), %rdi
	movq	ioport_read_table(,%rax,8), %r11
	jmp	*%r11
.LFE270:
	.size	argos_cpu_inb, .-argos_cpu_inb
	.p2align 4,,15
.globl argos_cpu_inw
	.type	argos_cpu_inw, @function
argos_cpu_inw:
.LFB271:
	.loc 1 765 0
	.loc 1 767 0
	movslq	%esi,%rax
	movq	ioport_opaque(,%rax,8), %rdi
	movq	ioport_read_table+524288(,%rax,8), %r11
	jmp	*%r11
.LFE271:
	.size	argos_cpu_inw, .-argos_cpu_inw
	.p2align 4,,15
.globl argos_cpu_inl
	.type	argos_cpu_inl, @function
argos_cpu_inl:
.LFB272:
	.loc 1 780 0
	.loc 1 782 0
	movslq	%esi,%rax
	movq	ioport_opaque(,%rax,8), %rdi
	movq	ioport_read_table+1048576(,%rax,8), %r11
	jmp	*%r11
.LFE272:
	.size	argos_cpu_inl, .-argos_cpu_inl
	.section	.rodata.str1.1
.LC93:
	.string	"qemu: hardware error: "
.LC94:
	.string	"CPU #%d:\n"
	.text
	.p2align 4,,15
.globl hw_error
	.type	hw_error, @function
hw_error:
.LFB273:
	.loc 1 796 0
	pushq	%rbx
.LCFI16:
	movq	%rdi, %rbx
	.loc 1 801 0
	movl	$.LC93, %edi
	.loc 1 796 0
	subq	$208, %rsp
.LCFI17:
	.loc 1 796 0
	movq	%rdx, 48(%rsp)
	movzbl	%al, %edx 
	movq	%r8, 64(%rsp)
	leaq	0(,%rdx,4), %rax
	movl	$.L43, %edx
	movq	%r9, 72(%rsp)
	movq	%rsi, 40(%rsp)
	movq	%rcx, 56(%rsp)
	.loc 1 801 0
	movl	$1, %esi
	.loc 1 796 0
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
.L43:
	.loc 1 800 0
	leaq	224(%rsp), %rax
	.loc 1 801 0
	movq	stderr(%rip), %rcx
	movl	$22, %edx
	.loc 1 800 0
	movl	$8, (%rsp)
	movl	$48, 4(%rsp)
	movq	%rax, 8(%rsp)
	leaq	32(%rsp), %rax
	movq	%rax, 16(%rsp)
	.loc 1 801 0
	call	fwrite
	.loc 1 802 0
	movq	stderr(%rip), %rdi
	movq	%rbx, %rsi
	movq	%rsp, %rdx
	call	vfprintf
	.loc 1 803 0
	movq	stderr(%rip), %rsi
	movl	$10, %edi
	call	fputc
	.loc 1 804 0
	movq	first_cpu(%rip), %rbx
	jmp	.L50
	.p2align 4,,7
.L51:
	.loc 1 805 0
	movl	46992(%rbx), %edx
	movq	stderr(%rip), %rdi
	movl	$.LC94, %esi
	xorl	%eax, %eax
	call	fprintf
	.loc 1 807 0
	movq	stderr(%rip), %rsi
	movq	%rbx, %rdi
	movl	$1, %ecx
	movl	$fprintf, %edx
	call	cpu_dump_state
	.loc 1 804 0
	movq	46984(%rbx), %rbx
.L50:
	testq	%rbx, %rbx
	jne	.L51
	.loc 1 813 0
	call	abort
.LFE273:
	.size	hw_error, .-hw_error
	.section	.rodata.str1.8
	.align 8
.LC95:
	.string	"register_ioport_write: invalid size"
	.align 8
.LC96:
	.string	"register_ioport_write: invalid opaque"
	.text
	.p2align 4,,15
.globl register_ioport_write
	.type	register_ioport_write, @function
register_ioport_write:
.LFB265:
	.loc 1 671 0
	subq	$8, %rsp
.LCFI18:
	.loc 1 675 0
	xorl	%eax, %eax
	.loc 1 674 0
	cmpl	$1, %edx
	je	.L54
	.loc 1 676 0
	cmpl	$2, %edx
	.loc 1 677 0
	movb	$1, %al
	.loc 1 676 0
	je	.L54
	.loc 1 678 0
	cmpl	$4, %edx
	.loc 1 679 0
	movb	$2, %al
	.loc 1 678 0
	jne	.L67
.L54:
	.loc 1 684 0
	leal	(%rdi,%rsi), %esi
	cmpl	%edi, %esi
	jle	.L65
	movslq	%eax,%r10
	salq	$16, %r10
	.p2align 4,,7
.L63:
	.loc 1 685 0
	movslq	%edi,%r9
	leaq	(%r10,%r9), %rax
	movq	%rcx, ioport_write_table(,%rax,8)
	.loc 1 686 0
	movq	ioport_opaque(,%r9,8), %rax
	testq	%rax, %rax
	je	.L62
	cmpq	%r8, %rax
	jne	.L68
.L62:
	.loc 1 684 0
	addl	%edx, %edi
	.loc 1 688 0
	movq	%r8, ioport_opaque(,%r9,8)
	.loc 1 684 0
	cmpl	%edi, %esi
	jg	.L63
.L65:
	.loc 1 691 0
	xorl	%eax, %eax
	addq	$8, %rsp
	ret
.L67:
	.loc 1 681 0
	movl	$.LC95, %edi
.L66:
	.loc 1 687 0
	xorl	%eax, %eax
	call	hw_error
.L68:
	movl	$.LC96, %edi
	jmp	.L66
.LFE265:
	.size	register_ioport_write, .-register_ioport_write
	.section	.rodata.str1.8
	.align 8
.LC97:
	.string	"register_ioport_read: invalid size"
	.align 8
.LC98:
	.string	"register_ioport_read: invalid opaque"
	.text
	.p2align 4,,15
.globl register_ioport_read
	.type	register_ioport_read, @function
register_ioport_read:
.LFB264:
	.loc 1 646 0
	subq	$8, %rsp
.LCFI19:
	.loc 1 650 0
	xorl	%eax, %eax
	.loc 1 649 0
	cmpl	$1, %edx
	je	.L71
	.loc 1 651 0
	cmpl	$2, %edx
	.loc 1 652 0
	movb	$1, %al
	.loc 1 651 0
	je	.L71
	.loc 1 653 0
	cmpl	$4, %edx
	.loc 1 654 0
	movb	$2, %al
	.loc 1 653 0
	jne	.L84
.L71:
	.loc 1 659 0
	leal	(%rdi,%rsi), %esi
	cmpl	%edi, %esi
	jle	.L82
	movslq	%eax,%r10
	salq	$16, %r10
	.p2align 4,,7
.L80:
	.loc 1 660 0
	movslq	%edi,%r9
	leaq	(%r10,%r9), %rax
	movq	%rcx, ioport_read_table(,%rax,8)
	.loc 1 661 0
	movq	ioport_opaque(,%r9,8), %rax
	testq	%rax, %rax
	je	.L79
	cmpq	%r8, %rax
	jne	.L85
.L79:
	.loc 1 659 0
	addl	%edx, %edi
	.loc 1 663 0
	movq	%r8, ioport_opaque(,%r9,8)
	.loc 1 659 0
	cmpl	%edi, %esi
	jg	.L80
.L82:
	.loc 1 666 0
	xorl	%eax, %eax
	addq	$8, %rsp
	ret
.L84:
	.loc 1 656 0
	movl	$.LC97, %edi
.L83:
	.loc 1 662 0
	xorl	%eax, %eax
	call	hw_error
.L85:
	movl	$.LC98, %edi
	jmp	.L83
.LFE264:
	.size	register_ioport_read, .-register_ioport_read
	.p2align 4,,15
.globl qemu_add_kbd_event_handler
	.type	qemu_add_kbd_event_handler, @function
qemu_add_kbd_event_handler:
.LFB274:
	.loc 1 825 0
	.loc 1 826 0
	movq	%rsi, qemu_put_kbd_event_opaque(%rip)
	.loc 1 827 0
	movq	%rdi, qemu_put_kbd_event(%rip)
	ret
.LFE274:
	.size	qemu_add_kbd_event_handler, .-qemu_add_kbd_event_handler
	.p2align 4,,15
.globl qemu_add_mouse_event_handler
	.type	qemu_add_mouse_event_handler, @function
qemu_add_mouse_event_handler:
.LFB275:
	.loc 1 833 0
	movq	%rbx, -40(%rsp)
.LCFI20:
	movq	%rbp, -32(%rsp)
.LCFI21:
	movq	%rdi, %rbp
	movq	%r12, -24(%rsp)
.LCFI22:
	movq	%r13, -16(%rsp)
.LCFI23:
	.loc 1 836 0
	movl	$40, %edi
	.loc 1 833 0
	movq	%r14, -8(%rsp)
.LCFI24:
	subq	$40, %rsp
.LCFI25:
	.loc 1 833 0
	movq	%rsi, %r12
	movl	%edx, %r13d
	movq	%rcx, %r14
	.loc 1 836 0
	call	qemu_mallocz
	movq	%rax, %rbx
	.loc 1 838 0
	xorl	%eax, %eax
	.loc 1 837 0
	testq	%rbx, %rbx
	je	.L87
	.loc 1 840 0
	movq	%rbp, (%rbx)
	.loc 1 841 0
	movq	%r12, 8(%rbx)
	.loc 1 843 0
	movq	%r14, %rdi
	.loc 1 842 0
	movl	%r13d, 16(%rbx)
	.loc 1 843 0
	call	qemu_strdup
	.loc 1 844 0
	movq	$0, 32(%rbx)
	.loc 1 843 0
	movq	%rax, 24(%rbx)
	.loc 1 846 0
	movq	qemu_put_mouse_event_head(%rip), %rax
	testq	%rax, %rax
	jne	.L89
	.loc 1 847 0
	movq	%rbx, qemu_put_mouse_event_current(%rip)
	movq	%rbx, qemu_put_mouse_event_head(%rip)
	jmp	.L95
	.p2align 4,,7
.L89:
	.loc 1 851 0
	movq	%rax, %rdx
	.loc 1 853 0
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L89
	.loc 1 855 0
	movq	%rbx, 32(%rdx)
	.loc 1 856 0
	movq	%rbx, qemu_put_mouse_event_current(%rip)
.L95:
	.loc 1 858 0
	movq	%rbx, %rax
.L87:
	.loc 1 859 0
	movq	(%rsp), %rbx
	movq	8(%rsp), %rbp
	movq	16(%rsp), %r12
	movq	24(%rsp), %r13
	movq	32(%rsp), %r14
	addq	$40, %rsp
	ret
.LFE275:
	.size	qemu_add_mouse_event_handler, .-qemu_add_mouse_event_handler
	.p2align 4,,15
.globl qemu_remove_mouse_event_handler
	.type	qemu_remove_mouse_event_handler, @function
qemu_remove_mouse_event_handler:
.LFB276:
	.loc 1 862 0
	.loc 1 865 0
	movq	qemu_put_mouse_event_head(%rip), %rcx
	.loc 1 863 0
	xorl	%esi, %esi
	.loc 1 862 0
	pushq	%rbx
.LCFI26:
	.loc 1 862 0
	movq	%rdi, %rbx
	.loc 1 865 0
	testq	%rcx, %rcx
	sete	%dl
	testq	%rdi, %rdi
	sete	%al
	orl	%edx, %eax
	testb	$1, %al
	jne	.L96
	jmp	.L108
	.p2align 4,,7
.L111:
	.loc 1 870 0
	movq	%rcx, %rsi
	.loc 1 871 0
	movq	32(%rcx), %rcx
.L108:
	testq	%rcx, %rcx
	setne	%dl
	xorl	%eax, %eax
	cmpq	%rbx, %rcx
	setne	%al
	testl	%edx, %eax
	jne	.L111
	.loc 1 874 0
	testq	%rcx, %rcx
	je	.L96
	.loc 1 876 0
	testq	%rsi, %rsi
	je	.L112
	.loc 1 885 0
	movq	32(%rbx), %rax
	movq	%rax, 32(%rsi)
	.loc 1 887 0
	movq	qemu_put_mouse_event_current(%rip), %rax
	.loc 1 888 0
	cmpq	%rbx, %rax
	cmove	%rsi, %rax
.L110:
	movq	%rax, qemu_put_mouse_event_current(%rip)
.L109:
	.loc 1 890 0
	movq	24(%rbx), %rdi
	call	qemu_free
	.loc 1 891 0
	movq	%rbx, %rdi
	.loc 1 892 0
	popq	%rbx
	.loc 1 891 0
	jmp	qemu_free
	.p2align 4,,7
.L96:
	.loc 1 892 0
	popq	%rbx
	ret
.L112:
	.loc 1 878 0
	cmpq	%rbx, qemu_put_mouse_event_current(%rip)
	.loc 1 877 0
	movq	32(%rcx), %rax
	movq	%rax, qemu_put_mouse_event_head(%rip)
	.loc 1 878 0
	jne	.L109
	.loc 1 879 0
	movq	32(%rcx), %rax
	jmp	.L110
.LFE276:
	.size	qemu_remove_mouse_event_handler, .-qemu_remove_mouse_event_handler
	.p2align 4,,15
.globl kbd_put_keycode
	.type	kbd_put_keycode, @function
kbd_put_keycode:
.LFB277:
	.loc 1 895 0
	.loc 1 896 0
	movq	qemu_put_kbd_event(%rip), %rax
	testq	%rax, %rax
	jne	.L115
	rep ; ret
	.p2align 4,,7
.L115:
	.loc 1 897 0
	movl	%edi, %esi
	movq	%rax, %r11
	movq	qemu_put_kbd_event_opaque(%rip), %rdi
	jmp	*%r11
.LFE277:
	.size	kbd_put_keycode, .-kbd_put_keycode
	.p2align 4,,15
.globl kbd_mouse_event
	.type	kbd_mouse_event, @function
kbd_mouse_event:
.LFB278:
	.loc 1 902 0
	.loc 1 907 0
	movq	qemu_put_mouse_event_current(%rip), %rax
	.loc 1 902 0
	movl	%esi, %r9d
	.loc 1 907 0
	testq	%rax, %rax
	je	.L116
	.loc 1 911 0
	movq	(%rax), %r11
	.loc 1 913 0
	movq	8(%rax), %r10
	.loc 1 916 0
	testq	%r11, %r11
	je	.L116
	.loc 1 917 0
	movl	graphic_rotate(%rip), %esi
	testl	%esi, %esi
	je	.L119
	.loc 1 919 0
	movl	16(%rax), %eax
	movl	$32767, %esi
	.loc 1 922 0
	movl	%ecx, %r8d
	movl	%edx, %ecx
	movl	%edi, %edx
	.loc 1 925 0
	movq	%r10, %rdi
	.loc 1 919 0
	testl	%eax, %eax
	cmove	graphic_width(%rip), %esi
	.loc 1 922 0
	subl	%r9d, %esi
	.loc 1 925 0
	jmp	*%r11
	.p2align 4,,7
.L116:
	rep ; ret
	.p2align 4,,7
.L119:
	movl	%ecx, %r8d
	movl	%edi, %esi
	movl	%edx, %ecx
	movq	%r10, %rdi
	movl	%r9d, %edx
	jmp	*%r11
.LFE278:
	.size	kbd_mouse_event, .-kbd_mouse_event
	.p2align 4,,15
.globl kbd_mouse_is_absolute
	.type	kbd_mouse_is_absolute, @function
kbd_mouse_is_absolute:
.LFB279:
	.loc 1 931 0
	.loc 1 932 0
	movq	qemu_put_mouse_event_current(%rip), %rdx
	.loc 1 933 0
	xorl	%eax, %eax
	.loc 1 932 0
	testq	%rdx, %rdx
	je	.L124
	.loc 1 935 0
	movl	16(%rdx), %eax
.L124:
	.loc 1 936 0
	rep ; ret
.LFE279:
	.size	kbd_mouse_is_absolute, .-kbd_mouse_is_absolute
	.section	.rodata.str1.1
.LC99:
	.string	"No mouse devices connected\n"
.LC100:
	.string	"Mouse devices available:\n"
.LC101:
	.string	"%c Mouse #%d: %s\n"
	.text
	.p2align 4,,15
.globl do_info_mice
	.type	do_info_mice, @function
do_info_mice:
.LFB280:
	.loc 1 939 0
	pushq	%rbp
.LCFI27:
	.loc 1 941 0
	xorl	%ebp, %ebp
	.loc 1 939 0
	pushq	%rbx
.LCFI28:
	subq	$8, %rsp
.LCFI29:
	.loc 1 943 0
	cmpq	$0, qemu_put_mouse_event_head(%rip)
	jne	.L127
	.loc 1 957 0
	addq	$8, %rsp
	.loc 1 944 0
	movl	$.LC99, %edi
	xorl	%eax, %eax
	.loc 1 957 0
	popq	%rbx
	popq	%rbp
	.loc 1 944 0
	jmp	term_printf
	.p2align 4,,7
.L127:
	.loc 1 948 0
	movl	$.LC100, %edi
	xorl	%eax, %eax
	call	term_printf
	.loc 1 949 0
	movq	qemu_put_mouse_event_head(%rip), %rbx
	jmp	.L137
	.p2align 4,,7
.L138:
	.loc 1 951 0
	cmpq	qemu_put_mouse_event_current(%rip), %rbx
	movq	24(%rbx), %rcx
	movl	$32, %eax
	movl	$42, %esi
	movl	%ebp, %edx
	movl	$.LC101, %edi
	cmovne	%eax, %esi
	xorl	%eax, %eax
	.loc 1 954 0
	incl	%ebp
	.loc 1 951 0
	call	term_printf
	.loc 1 955 0
	movq	32(%rbx), %rbx
.L137:
	testq	%rbx, %rbx
	jne	.L138
	.loc 1 957 0
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
.LFE280:
	.size	do_info_mice, .-do_info_mice
	.section	.rodata.str1.8
	.align 8
.LC102:
	.string	"Mouse at given index not found\n"
	.text
	.p2align 4,,15
.globl do_mouse_set
	.type	do_mouse_set, @function
do_mouse_set:
.LFB281:
	.loc 1 960 0
	.loc 1 964 0
	movq	qemu_put_mouse_event_head(%rip), %rax
	.loc 1 962 0
	xorl	%esi, %esi
	.loc 1 964 0
	testq	%rax, %rax
	je	.L150
	.loc 1 969 0
	movq	%rax, %rcx
	.loc 1 972 0
	testl	%edi, %edi
	jmp	.L148
	.p2align 4,,7
.L151:
	movq	32(%rcx), %rcx
	.loc 1 971 0
	incl	%esi
	.loc 1 972 0
	testq	%rcx, %rcx
	setne	%dl
	xorl	%eax, %eax
	cmpl	%esi, %edi
	setne	%al
	testl	%edx, %eax
.L148:
	jne	.L151
	.loc 1 975 0
	testq	%rcx, %rcx
	je	.L144
	.loc 1 976 0
	movq	%rcx, qemu_put_mouse_event_current(%rip)
	ret
	.p2align 4,,7
.L150:
	.loc 1 965 0
	movl	$.LC99, %edi
	.loc 1 978 0
	jmp	term_printf
.L144:
	movl	$.LC102, %edi
	xorl	%eax, %eax
	jmp	term_printf
.LFE281:
	.size	do_mouse_set, .-do_mouse_set
	.p2align 4,,15
.globl muldiv64
	.type	muldiv64, @function
muldiv64:
.LFB282:
	.loc 1 983 0
	.loc 1 997 0
	mov	%esi, %esi
	mov	%edi, %r9d
	.loc 1 998 0
	movq	%rdi, %rax
	.loc 1 997 0
	imulq	%rsi, %r9
	.loc 1 998 0
	shrq	$32, %rax
	.loc 1 1000 0
	andl	$4294967295, %r8d
	.loc 1 998 0
	imulq	%rsi, %rax
	.loc 1 1000 0
	mov	%edx, %esi
	xorl	%edx, %edx
	.loc 1 999 0
	movq	%r9, %rcx
	.loc 1 1001 0
	andl	$4294967295, %r9d
	.loc 1 999 0
	shrq	$32, %rcx
	addq	%rcx, %rax
	.loc 1 1000 0
	divq	%rsi
	movq	%rdx, %rcx
	salq	$32, %rax
	.loc 1 1001 0
	xorl	%edx, %edx
	salq	$32, %rcx
	.loc 1 1000 0
	orq	%rax, %r8
	.loc 1 1001 0
	leaq	(%rcx,%r9), %rax
	divq	%rsi
	mov	%eax, %edx
	movabsq	$-4294967296, %rax
	andq	%rax, %r8
	orq	%rdx, %r8
	.loc 1 1003 0
	movq	%r8, %rax
	ret
.LFE282:
	.size	muldiv64, .-muldiv64
	.p2align 4,,15
	.type	get_clock, @function
get_clock:
.LFB284:
	.loc 1 1051 0
	subq	$40, %rsp
.LCFI30:
	.loc 1 1053 0
	movl	use_rt_clock(%rip), %r10d
	testl	%r10d, %r10d
	je	.L154
.LBB2:
	.loc 1 1055 0
	leaq	16(%rsp), %rsi
	movl	$1, %edi
	call	clock_gettime
	.loc 1 1056 0
	movq	16(%rsp), %r9
	imulq	$1000000000, %r9, %rax
	addq	24(%rsp), %rax
.LBE2:
	.loc 1 1066 0
	addq	$40, %rsp
	ret
	.p2align 4,,7
.L154:
.LBB3:
	.loc 1 1063 0
	movq	%rsp, %rdi
	xorl	%esi, %esi
	call	gettimeofday
	.loc 1 1064 0
	movq	(%rsp), %r8
	movq	8(%rsp), %rdi
.LBE3:
	.loc 1 1066 0
	addq	$40, %rsp
.LBB4:
	.loc 1 1064 0
	imulq	$1000000000, %r8, %rdx
	imulq	$1000, %rdi, %rax
	leaq	(%rdx,%rax), %rax
.LBE4:
	.loc 1 1066 0
	ret
.LFE284:
	.size	get_clock, .-get_clock
	.p2align 4,,15
.globl cpu_get_ticks
	.type	cpu_get_ticks, @function
cpu_get_ticks:
.LFB285:
	.loc 1 1080 0
	.loc 1 1081 0
	movl	cpu_ticks_enabled(%rip), %r11d
	testl	%r11d, %r11d
	jne	.L157
	.loc 1 1082 0
	movq	cpu_ticks_offset(%rip), %rax
	ret
	.p2align 4,,7
.L157:
.LBB5:
.LBB6:
.LBB7:
	.file 2 "../cpu-all.h"
	.loc 2 1028 0
#APP
	rdtsc
	.loc 2 1030 0
#NO_APP
	salq	$32, %rdx
	.loc 2 1031 0
	mov	%eax, %eax
	orq	%rax, %rdx
.LBE7:
.LBE6:
	.loc 1 1086 0
	movq	cpu_ticks_prev(%rip), %rax
	cmpq	%rdx, %rax
	jg	.L162
	movq	cpu_ticks_offset(%rip), %rax
	.loc 1 1091 0
	movq	%rdx, cpu_ticks_prev(%rip)
	.loc 1 1092 0
	leaq	(%rdx,%rax), %rax
.LBE5:
	.loc 1 1094 0
	ret
	.p2align 4,,7
.L162:
.LBB8:
	.loc 1 1089 0
	subq	%rdx, %rax
	addq	cpu_ticks_offset(%rip), %rax
	.loc 1 1091 0
	movq	%rdx, cpu_ticks_prev(%rip)
	.loc 1 1089 0
	movq	%rax, cpu_ticks_offset(%rip)
	.loc 1 1092 0
	leaq	(%rdx,%rax), %rax
.LBE8:
	.loc 1 1094 0
	ret
.LFE285:
	.size	cpu_get_ticks, .-cpu_get_ticks
	.p2align 4,,15
	.type	cpu_get_clock, @function
cpu_get_clock:
.LFB286:
	.loc 1 1098 0
	subq	$8, %rsp
.LCFI31:
	.loc 1 1100 0
	movl	cpu_ticks_enabled(%rip), %eax
	testl	%eax, %eax
	jne	.L164
	.loc 1 1101 0
	movq	cpu_clock_offset(%rip), %rax
	.loc 1 1106 0
	addq	$8, %rsp
	ret
	.p2align 4,,7
.L164:
	.loc 1 1103 0
	call	get_clock
	.loc 1 1104 0
	addq	cpu_clock_offset(%rip), %rax
	.loc 1 1106 0
	addq	$8, %rsp
	ret
.LFE286:
	.size	cpu_get_clock, .-cpu_get_clock
	.p2align 4,,15
.globl cpu_enable_ticks
	.type	cpu_enable_ticks, @function
cpu_enable_ticks:
.LFB287:
	.loc 1 1110 0
	subq	$8, %rsp
.LCFI32:
	.loc 1 1111 0
	movl	cpu_ticks_enabled(%rip), %eax
	testl	%eax, %eax
	je	.L169
	.loc 1 1116 0
	addq	$8, %rsp
	ret
	.p2align 4,,7
.L169:
.LBB9:
.LBB10:
	.loc 2 1028 0
#APP
	rdtsc
	.loc 2 1031 0
#NO_APP
	mov	%eax, %eax
	.loc 2 1030 0
	salq	$32, %rdx
	.loc 2 1031 0
	orq	%rax, %rdx
.LBE10:
.LBE9:
	.loc 2 1025 0
	subq	%rdx, cpu_ticks_offset(%rip)
	.loc 1 1113 0
	call	get_clock
	subq	%rax, cpu_clock_offset(%rip)
	.loc 1 1114 0
	movl	$1, cpu_ticks_enabled(%rip)
	.loc 1 1116 0
	addq	$8, %rsp
	ret
.LFE287:
	.size	cpu_enable_ticks, .-cpu_enable_ticks
	.p2align 4,,15
.globl cpu_disable_ticks
	.type	cpu_disable_ticks, @function
cpu_disable_ticks:
.LFB288:
	.loc 1 1121 0
	subq	$8, %rsp
.LCFI33:
	.loc 1 1122 0
	movl	cpu_ticks_enabled(%rip), %eax
	testl	%eax, %eax
	jne	.L172
	.loc 1 1127 0
	addq	$8, %rsp
	ret
	.p2align 4,,7
.L172:
	.loc 1 1123 0
	call	cpu_get_ticks
	movq	%rax, cpu_ticks_offset(%rip)
	.loc 1 1124 0
	call	cpu_get_clock
	.loc 1 1125 0
	movl	$0, cpu_ticks_enabled(%rip)
	.loc 1 1124 0
	movq	%rax, cpu_clock_offset(%rip)
	.loc 1 1127 0
	addq	$8, %rsp
	ret
.LFE288:
	.size	cpu_disable_ticks, .-cpu_disable_ticks
	.p2align 4,,15
	.type	qemu_rearm_alarm_timer, @function
qemu_rearm_alarm_timer:
.LFB290:
	.loc 1 1167 0
	.loc 1 1162 0
	testb	$1, 8(%rdi)
	.loc 1 1167 0
	movq	%rdi, %rax
	.loc 1 1162 0
	jne	.L176
	rep ; ret
	.p2align 4,,7
.L176:
	.loc 1 1171 0
	movq	32(%rax), %r11
	jmp	*%r11
.LFE290:
	.size	qemu_rearm_alarm_timer, .-qemu_rearm_alarm_timer
	.section	.rodata.str1.8
	.align 8
.LC103:
	.string	"Available alarm timers, in order of precedence:"
	.text
	.p2align 4,,15
	.type	show_available_alarms, @function
show_available_alarms:
.LFB291:
	.loc 1 1233 0
	pushq	%rbx
.LCFI34:
	.loc 1 1236 0
	movl	$.LC103, %edi
	.loc 1 1237 0
	xorl	%ebx, %ebx
	.loc 1 1236 0
	call	puts
	.loc 1 1237 0
	cmpq	$0, alarm_timers(%rip)
	je	.L183
	xorl	%edx, %edx
	.p2align 4,,7
.L181:
	.loc 1 1238 0
	leaq	(%rdx,%rdx,2), %rax
	.loc 1 1237 0
	incl	%ebx
	.loc 1 1238 0
	salq	$4, %rax
	movq	alarm_timers(%rax), %rdi
	call	puts
	.loc 1 1237 0
	movslq	%ebx,%rdx
	leaq	(%rdx,%rdx,2), %rax
	salq	$4, %rax
	cmpq	$0, alarm_timers(%rax)
	jne	.L181
.L183:
	popq	%rbx
	ret
.LFE291:
	.size	show_available_alarms, .-show_available_alarms
	.p2align 4,,15
	.type	qemu_new_clock, @function
qemu_new_clock:
.LFB293:
	.loc 1 1303 0
	pushq	%rbx
.LCFI35:
	.loc 1 1303 0
	movl	%edi, %ebx
	.loc 1 1305 0
	movl	$4, %edi
	call	qemu_mallocz
	.loc 1 1307 0
	xorl	%edx, %edx
	.loc 1 1306 0
	testq	%rax, %rax
	je	.L184
	.loc 1 1308 0
	movl	%ebx, (%rax)
	.loc 1 1309 0
	movq	%rax, %rdx
.L184:
	.loc 1 1310 0
	popq	%rbx
	movq	%rdx, %rax
	ret
.LFE293:
	.size	qemu_new_clock, .-qemu_new_clock
	.p2align 4,,15
.globl qemu_new_timer
	.type	qemu_new_timer, @function
qemu_new_timer:
.LFB294:
	.loc 1 1313 0
	movq	%rbx, -24(%rsp)
.LCFI36:
	movq	%r12, -16(%rsp)
.LCFI37:
	movq	%rdi, %rbx
	movq	%r13, -8(%rsp)
.LCFI38:
	movq	%rsi, %r12
	subq	$24, %rsp
.LCFI39:
	.loc 1 1313 0
	movq	%rdx, %r13
	.loc 1 1316 0
	movl	$40, %edi
	call	qemu_mallocz
	.loc 1 1317 0
	movq	%rbx, (%rax)
	.loc 1 1318 0
	movq	%r12, 16(%rax)
	.loc 1 1319 0
	movq	%r13, 24(%rax)
	.loc 1 1321 0
	movq	(%rsp), %rbx
	movq	8(%rsp), %r12
	movq	16(%rsp), %r13
	addq	$24, %rsp
	ret
.LFE294:
	.size	qemu_new_timer, .-qemu_new_timer
	.p2align 4,,15
.globl qemu_free_timer
	.type	qemu_free_timer, @function
qemu_free_timer:
.LFB295:
	.loc 1 1324 0
	.loc 1 1325 0
	jmp	qemu_free
.LFE295:
	.size	qemu_free_timer, .-qemu_free_timer
	.p2align 4,,15
.globl qemu_del_timer
	.type	qemu_del_timer, @function
qemu_del_timer:
.LFB296:
	.loc 1 1330 0
	.loc 1 1335 0
	movq	(%rdi), %rax
	movslq	(%rax),%rax
	leaq	active_timers(,%rax,8), %rdx
	jmp	.L189
	.p2align 4,,7
.L194:
	.loc 1 1340 0
	cmpq	%rdi, %rax
	je	.L193
	.loc 1 1344 0
	leaq	32(%rax), %rdx
.L189:
	.loc 1 1337 0
	movq	(%rdx), %rax
	.loc 1 1338 0
	testq	%rax, %rax
	jne	.L194
	rep ; ret
.L193:
	.loc 1 1341 0
	movq	32(%rax), %rax
	movq	%rax, (%rdx)
	.loc 1 1342 0
	ret
.LFE296:
	.size	qemu_del_timer, .-qemu_del_timer
	.p2align 4,,15
.globl qemu_mod_timer
	.type	qemu_mod_timer, @function
qemu_mod_timer:
.LFB297:
	.loc 1 1351 0
	pushq	%rbp
.LCFI40:
	movq	%rdi, %rbp
	pushq	%rbx
.LCFI41:
	movq	%rsi, %rbx
	subq	$8, %rsp
.LCFI42:
	.loc 1 1354 0
	call	qemu_del_timer
	.loc 1 1359 0
	movq	(%rbp), %rax
	movslq	(%rax),%rax
	leaq	active_timers(,%rax,8), %rdx
	jmp	.L196
	.p2align 4,,7
.L201:
	.loc 1 1364 0
	cmpq	%rbx, 8(%rax)
	jg	.L197
	.loc 1 1366 0
	leaq	32(%rax), %rdx
.L196:
	.loc 1 1361 0
	movq	(%rdx), %rax
	.loc 1 1362 0
	testq	%rax, %rax
	jne	.L201
.L197:
	.loc 1 1368 0
	movq	%rbx, 8(%rbp)
	.loc 1 1369 0
	movq	(%rdx), %rax
	movq	%rax, 32(%rbp)
	.loc 1 1370 0
	movq	%rbp, (%rdx)
	.loc 1 1373 0
	movq	alarm_timer(%rip), %rdi
	testb	$2, 8(%rdi)
	jne	.L195
	movq	(%rbp), %rax
	movslq	(%rax),%rax
	leaq	active_timers(,%rax,8), %rax
	cmpq	%rdx, %rax
	je	.L202
.L195:
	.loc 1 1376 0
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
.L202:
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	.loc 1 1375 0
	jmp	qemu_rearm_alarm_timer
.LFE297:
	.size	qemu_mod_timer, .-qemu_mod_timer
	.p2align 4,,15
.globl qemu_timer_pending
	.type	qemu_timer_pending, @function
qemu_timer_pending:
.LFB298:
	.loc 1 1379 0
	.loc 1 1381 0
	movq	(%rdi), %rax
	movslq	(%rax),%rax
	movq	active_timers(,%rax,8), %rax
	jmp	.L211
	.p2align 4,,7
.L213:
	.loc 1 1382 0
	cmpq	%rdi, %rax
	je	.L212
	.loc 1 1381 0
	movq	32(%rax), %rax
.L211:
	testq	%rax, %rax
	jne	.L213
	.loc 1 1385 0
	xorl	%eax, %eax
	.loc 1 1386 0
	.p2align 4,,3
	ret
.L212:
	.loc 1 1383 0
	movl	$1, %eax
	.p2align 4,,4
	ret
.LFE298:
	.size	qemu_timer_pending, .-qemu_timer_pending
	.p2align 4,,15
	.type	qemu_run_timers, @function
qemu_run_timers:
.LFB300:
	.loc 1 1396 0
	pushq	%rbp
.LCFI43:
	movq	%rsi, %rbp
	pushq	%rbx
.LCFI44:
	movq	%rdi, %rbx
	subq	$8, %rsp
.LCFI45:
	jmp	.L215
	.p2align 4,,7
.L219:
	.loc 1 1401 0
	cmpq	%rbp, 8(%rdx)
	jg	.L216
	.loc 1 1404 0
	movq	32(%rdx), %rax
	movq	%rax, (%rbx)
	.loc 1 1405 0
	movq	$0, 32(%rdx)
	.loc 1 1408 0
	movq	24(%rdx), %rdi
	call	*16(%rdx)
.L215:
	.loc 1 1400 0
	movq	(%rbx), %rdx
	.loc 1 1401 0
	testq	%rdx, %rdx
	jne	.L219
.L216:
	.loc 1 1399 0
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
.LFE300:
	.size	qemu_run_timers, .-qemu_run_timers
	.p2align 4,,15
.globl qemu_get_clock
	.type	qemu_get_clock, @function
qemu_get_clock:
.LFB301:
	.loc 1 1413 0
	subq	$8, %rsp
.LCFI46:
	.loc 1 1414 0
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.L225
	.loc 1 1421 0
	addq	$8, %rsp
	.loc 1 1419 0
	jmp	cpu_get_clock
	.p2align 4,,7
.L225:
	.loc 1 1416 0
	call	get_clock
	movabsq	$4835703278458516699, %rdx
	movq	%rax, %rcx
	.loc 1 1421 0
	addq	$8, %rsp
	.loc 1 1416 0
	imulq	%rdx
	movq	%rcx, %rax
	sarq	$63, %rax
	sarq	$18, %rdx
	subq	%rax, %rdx
	.loc 1 1421 0
	movq	%rdx, %rax
	ret
.LFE301:
	.size	qemu_get_clock, .-qemu_get_clock
	.p2align 4,,15
.globl qemu_system_shutdown_request
	.type	qemu_system_shutdown_request, @function
qemu_system_shutdown_request:
.LFB515:
	.loc 1 8115 0
	.loc 1 8117 0
	movq	cpu_single_env(%rip), %rdi
	.loc 1 8116 0
	movl	$1, shutdown_requested(%rip)
	.loc 1 8117 0
	testq	%rdi, %rdi
	jne	.L228
	rep ; ret
	.p2align 4,,7
.L228:
	.loc 1 8118 0
	movl	$1, %esi
	jmp	cpu_interrupt
.LFE515:
	.size	qemu_system_shutdown_request, .-qemu_system_shutdown_request
	.p2align 4,,15
.globl qemu_system_reset_request
	.type	qemu_system_reset_request, @function
qemu_system_reset_request:
.LFB514:
	.loc 1 8104 0
	.loc 1 8105 0
	movl	no_reboot(%rip), %eax
	testl	%eax, %eax
	je	.L230
	.loc 1 8110 0
	movq	cpu_single_env(%rip), %rdi
	.loc 1 8106 0
	movl	$1, shutdown_requested(%rip)
	.loc 1 8110 0
	testq	%rdi, %rdi
	jne	.L233
.L229:
	rep ; ret
	.p2align 4,,7
.L230:
	movq	cpu_single_env(%rip), %rdi
	.loc 1 8108 0
	movl	$1, reset_requested(%rip)
	.loc 1 8110 0
	testq	%rdi, %rdi
	je	.L229
.L233:
	.loc 1 8111 0
	movl	$1, %esi
	jmp	cpu_interrupt
.LFE514:
	.size	qemu_system_reset_request, .-qemu_system_reset_request
	.p2align 4,,15
	.type	host_alarm_handler, @function
host_alarm_handler:
.LFB307:
	.loc 1 1487 0
.LBB11:
	.loc 1 1162 0
	movq	alarm_timer(%rip), %rax
.LBE11:
	.loc 1 1487 0
	pushq	%rbx
.LCFI47:
	.loc 1 1162 0
	testb	$1, 8(%rax)
	je	.L245
.L236:
.LBB12:
	.loc 1 1526 0
	movq	next_cpu(%rip), %rdi
	.loc 1 1528 0
	orl	$2, 8(%rax)
	.loc 1 1530 0
	testq	%rdi, %rdi
	je	.L242
	.loc 1 1532 0
	movl	$1, %esi
	call	cpu_interrupt
.L242:
	.loc 1 1539 0
	movl	$1, event_pending(%rip)
.L234:
.LBE12:
	.loc 1 1541 0
	popq	%rbx
	ret
	.p2align 4,,7
.L245:
.LBB13:
	.loc 1 1389 0
	movq	active_timers+8(%rip), %rbx
	movq	vm_clock(%rip), %rdi
	call	qemu_get_clock
.LBB14:
	.loc 1 1390 0
	testq	%rbx, %rbx
	je	.L244
.LBE14:
.LBE13:
	.loc 1 1389 0
	cmpq	%rax, 8(%rbx)
	jle	.L243
.L244:
.LBB15:
	movq	active_timers(%rip), %rbx
	movq	rt_clock(%rip), %rdi
	call	qemu_get_clock
.LBB16:
	.loc 1 1390 0
	testq	%rbx, %rbx
	je	.L234
.LBE16:
.LBE15:
	.loc 1 1389 0
	cmpq	%rax, 8(%rbx)
	jg	.L234
.L243:
	movq	alarm_timer(%rip), %rax
	.p2align 4,,2
	jmp	.L236
.LFE307:
	.size	host_alarm_handler, .-host_alarm_handler
	.p2align 4,,15
.globl socket_set_block
	.type	socket_set_block, @function
socket_set_block:
.LFB346:
	.loc 1 2328 0
	.loc 1 2329 0
	xorl	%edx, %edx
	movl	$4, %esi
	xorl	%eax, %eax
	jmp	fcntl
.LFE346:
	.size	socket_set_block, .-socket_set_block
	.p2align 4,,15
.globl socket_set_nonblock
	.type	socket_set_nonblock, @function
socket_set_nonblock:
.LFB345:
	.loc 1 2324 0
	.loc 1 2325 0
	movl	$2048, %edx
	movl	$4, %esi
	xorl	%eax, %eax
	jmp	fcntl
.LFE345:
	.size	socket_set_nonblock, .-socket_set_nonblock
	.section	.rodata.str1.1
.LC104:
	.string	"r+"
.LC105:
	.string	"fdopen()"
.LC106:
	.string	"getcwd()"
.LC107:
	.string	"%s\n"
	.text
	.p2align 4,,15
	.type	control_socket_accept, @function
control_socket_accept:
.LFB255:
	.loc 1 476 0
	pushq	%r12
.LCFI48:
	pushq	%rbp
.LCFI49:
	pushq	%rbx
.LCFI50:
	movq	%rdi, %rbx
	subq	$1056, %rsp
.LCFI51:
	.loc 1 484 0
	movl	8(%rdi), %eax
	testl	%eax, %eax
	jne	.L248
	leaq	1040(%rsp), %r12
	.p2align 4,,7
.L250:
	.loc 1 488 0
	movl	(%rbx), %edi
	leaq	12(%rsp), %rdx
	movq	%r12, %rsi
	call	accept
	.loc 1 489 0
	testl	%eax, %eax
	.loc 1 488 0
	movl	%eax, %ebp
	.loc 1 489 0
	jns	.L251
	.loc 1 490 0
	call	__errno_location
	cmpl	$4, (%rax)
	.p2align 4,,2
	je	.L250
.L248:
	.loc 1 515 0
	addq	$1056, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	ret
.L251:
	.loc 1 497 0
	movl	$.LC104, %esi
	movl	%eax, %edi
	call	fdopen
	testq	%rax, %rax
	movq	%rax, 16(%rbx)
	jne	.L255
	.loc 1 498 0
	movl	$.LC105, %edi
	call	perror
	.loc 1 499 0
	movl	%ebp, %edi
	call	close
	jmp	.L248
.L255:
	.loc 1 502 0
	leaq	16(%rsp), %r12
	movl	$1024, %esi
	movq	%r12, %rdi
	call	getcwd
	testq	%rax, %rax
	jne	.L256
	.loc 1 503 0
	movl	$.LC106, %edi
	call	perror
	jmp	.L248
.L256:
	.loc 1 507 0
	movq	16(%rbx), %rdi
	movq	%r12, %rdx
	movl	$.LC107, %esi
	xorl	%eax, %eax
	call	fprintf
	.loc 1 508 0
	movq	16(%rbx), %rdi
	call	fflush
	.loc 1 510 0
	movl	%ebp, %edi
	call	socket_set_nonblock
	.loc 1 511 0
	movl	$1, 8(%rbx)
	.loc 1 512 0
	movl	%ebp, 4(%rbx)
	.loc 1 513 0
	movq	%rbx, %rcx
	xorl	%edx, %edx
	movl	$control_socket_read, %esi
	movl	%ebp, %edi
	call	qemu_set_fd_handler
	jmp	.L248
.LFE255:
	.size	control_socket_accept, .-control_socket_accept
	.p2align 4,,15
.globl argos_logf
	.type	argos_logf, @function
argos_logf:
.LFB254:
	.loc 1 454 0
	pushq	%rbx
.LCFI52:
	movq	%rdi, %rbx
	subq	$208, %rsp
.LCFI53:
	.loc 1 454 0
	movq	%rdx, 48(%rsp)
	movzbl	%al, %edx 
	movq	%rsi, 40(%rsp)
	leaq	0(,%rdx,4), %rax
	movl	$.L258, %edx
	movq	%rcx, 56(%rsp)
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
.L258:
	.loc 1 459 0
	leaq	224(%rsp), %rax
	movl	$8, (%rsp)
	movl	$48, 4(%rsp)
	movq	%rax, 8(%rsp)
	leaq	32(%rsp), %rax
	movq	%rax, 16(%rsp)
	.loc 1 460 0
	movq	ctrlsock(%rip), %rax
	testq	%rax, %rax
	je	.L259
	movl	8(%rax), %edx
	testl	%edx, %edx
	jne	.L262
.L259:
.LBB17:
.LBB18:
	.file 3 "/usr/include/bits/stdio.h"
	.loc 3 39 0
	movq	stdout(%rip), %rdi
.LBE18:
	.loc 3 38 0
	movq	%rsp, %rdx
.LBB19:
	.loc 3 39 0
	movq	%rbx, %rsi
	call	vfprintf
.LBE19:
.LBE17:
	.loc 1 467 0
	movq	stdout(%rip), %rdi
.LBB20:
.LBB21:
	.loc 3 39 0
	movl	%eax, %ebx
.LBE21:
.LBE20:
	.loc 1 467 0
	call	fflush
	.loc 1 472 0
	movl	%ebx, %eax
	addq	$208, %rsp
	popq	%rbx
	ret
	.p2align 4,,7
.L262:
	.loc 1 461 0
	movl	4(%rax), %edi
	call	socket_set_block
	.loc 1 462 0
	movq	ctrlsock(%rip), %rax
	movq	%rsp, %rdx
	movq	%rbx, %rsi
	movq	16(%rax), %rdi
	call	vfprintf
	movl	%eax, %ebx
	.loc 1 463 0
	movq	ctrlsock(%rip), %rax
	movq	16(%rax), %rdi
	call	fflush
	.loc 1 464 0
	movq	ctrlsock(%rip), %rax
	movl	4(%rax), %edi
	call	socket_set_nonblock
	.loc 1 472 0
	movl	%ebx, %eax
	addq	$208, %rsp
	popq	%rbx
	ret
.LFE254:
	.size	argos_logf, .-argos_logf
	.p2align 4,,15
	.type	enable_sigio_timer, @function
enable_sigio_timer:
.LFB309:
	.loc 1 1574 0
	pushq	%r12
.LCFI54:
	movl	%edi, %r12d
	pushq	%rbx
.LCFI55:
	subq	$168, %rsp
.LCFI56:
	.loc 1 1578 0
	leaq	8(%rsp), %rdi
	call	sigfillset
	.loc 1 1582 0
	movq	%rsp, %rsi
	xorl	%edx, %edx
	movl	$29, %edi
	.loc 1 1579 0
	movl	$0, 136(%rsp)
	.loc 1 1580 0
	movq	$host_alarm_handler, (%rsp)
	.loc 1 1582 0
	call	sigaction
	.loc 1 1583 0
	movl	%r12d, %edi
	movl	$8192, %edx
	movl	$4, %esi
	xorl	%eax, %eax
	call	fcntl
	.loc 1 1584 0
	call	getpid
	movl	%r12d, %edi
	movl	%eax, %edx
	movl	$8, %esi
	xorl	%eax, %eax
	call	fcntl
	addq	$168, %rsp
	popq	%rbx
	popq	%r12
	ret
.LFE309:
	.size	enable_sigio_timer, .-enable_sigio_timer
	.section	.rodata.str1.1
.LC108:
	.string	"/dev/hpet"
	.section	.rodata.str1.8
	.align 8
.LC109:
	.string	"Could not configure '/dev/hpet' to have a 1024Hz timer. This is not a fatal\nerror, but for better emulation accuracy type:\n'echo 1024 > /proc/sys/dev/hpet/max-user-freq' as root.\n"
	.text
	.p2align 4,,15
	.type	hpet_start_timer, @function
hpet_start_timer:
.LFB310:
	.loc 1 1588 0
	pushq	%rbp
.LCFI57:
	.loc 1 1592 0
	xorl	%esi, %esi
	xorl	%eax, %eax
	.loc 1 1588 0
	movq	%rdi, %rbp
	.loc 1 1592 0
	movl	$.LC108, %edi
	.loc 1 1588 0
	pushq	%rbx
.LCFI58:
	subq	$40, %rsp
.LCFI59:
	.loc 1 1592 0
	call	open64
	movl	%eax, %ebx
	.loc 1 1594 0
	movl	$-1, %eax
	.loc 1 1593 0
	testl	%ebx, %ebx
	js	.L264
	.loc 1 1597 0
	xorl	%eax, %eax
	movl	$1024, %edx
	movl	$1074292742, %esi
	movl	%ebx, %edi
	call	ioctl
	.loc 1 1598 0
	testl	%eax, %eax
	js	.L271
	.loc 1 1606 0
	xorl	%eax, %eax
	movq	%rsp, %rdx
	movl	$2149083139, %esi
	movl	%ebx, %edi
	call	ioctl
	.loc 1 1607 0
	testl	%eax, %eax
	js	.L267
	.loc 1 1611 0
	xorl	%edx, %edx
	xorl	%eax, %eax
	movl	$26628, %esi
	movl	%ebx, %edi
	call	ioctl
	.loc 1 1612 0
	cmpq	$0, 8(%rsp)
	.loc 1 1611 0
	movl	%eax, %edx
	.loc 1 1612 0
	setne	%al
	shrl	$31, %edx
	testl	%eax, %edx
	jne	.L267
	.loc 1 1616 0
	xorl	%edx, %edx
	xorl	%eax, %eax
	movl	$26625, %esi
	movl	%ebx, %edi
	call	ioctl
	.loc 1 1617 0
	testl	%eax, %eax
	js	.L267
	.loc 1 1620 0
	movl	%ebx, %edi
	call	enable_sigio_timer
	.loc 1 1621 0
	movslq	%ebx,%rax
	movq	%rax, 40(%rbp)
	.loc 1 1627 0
	addq	$40, %rsp
	.loc 1 1623 0
	xorl	%eax, %eax
	.loc 1 1627 0
	popq	%rbx
	popq	%rbp
	ret
.L271:
	.loc 1 1599 0
	movq	stderr(%rip), %rcx
	movl	$179, %edx
	movl	$1, %esi
	movl	$.LC109, %edi
	call	fwrite
	.p2align 4,,7
.L267:
	.loc 1 1625 0
	movl	%ebx, %edi
	call	close
	.loc 1 1626 0
	movl	$-1, %eax
.L264:
	.loc 1 1627 0
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
.LFE310:
	.size	hpet_start_timer, .-hpet_start_timer
	.p2align 4,,15
	.type	hpet_stop_timer, @function
hpet_stop_timer:
.LFB311:
	.loc 1 1630 0
	.loc 1 1631 0
	movq	40(%rdi), %rdi
	.loc 1 1633 0
	jmp	close
.LFE311:
	.size	hpet_stop_timer, .-hpet_stop_timer
	.section	.rodata.str1.1
.LC110:
	.string	"/dev/rtc"
	.section	.rodata.str1.8
	.align 8
.LC111:
	.string	"Could not configure '/dev/rtc' to have a 1024 Hz timer. This is not a fatal\nerror, but for better emulation accuracy either use a 2.6 host Linux kernel or\ntype 'echo 1024 > /proc/sys/dev/rtc/max-user-freq' as root.\n"
	.text
	.p2align 4,,15
	.type	rtc_start_timer, @function
rtc_start_timer:
.LFB312:
	.loc 1 1637 0
	pushq	%rbp
.LCFI60:
	movq	%rdi, %rbp
	pushq	%rbx
.LCFI61:
	subq	$8, %rsp
.LCFI62:
	.p2align 4,,7
.L274:
	.loc 1 1640 0
	xorl	%esi, %esi
	xorl	%eax, %eax
	movl	$.LC110, %edi
	call	open64
	cmpl	$-1, %eax
	movl	%eax, %ebx
	jne	.L275
	call	__errno_location
	cmpl	$4, (%rax)
	.p2align 4,,2
	je	.L274
.L283:
	.loc 1 1660 0
	addq	$8, %rsp
	.loc 1 1652 0
	movl	$-1, %eax
	.loc 1 1660 0
	popq	%rbx
	popq	%rbp
	ret
.L275:
	.loc 1 1641 0
	testl	%eax, %eax
	.p2align 4,,2
	js	.L283
	.loc 1 1643 0
	movl	%eax, %edi
	movl	$1024, %edx
	xorl	%eax, %eax
	movl	$1074294796, %esi
	call	ioctl
	testl	%eax, %eax
	js	.L284
	.loc 1 1649 0
	xorl	%edx, %edx
	xorl	%eax, %eax
	movl	$28677, %esi
	movl	%ebx, %edi
	call	ioctl
	testl	%eax, %eax
	js	.L280
	.loc 1 1655 0
	movl	%ebx, %edi
	call	enable_sigio_timer
	.loc 1 1657 0
	movslq	%ebx,%rax
	movq	%rax, 40(%rbp)
	.loc 1 1660 0
	addq	$8, %rsp
	.loc 1 1659 0
	xorl	%eax, %eax
	.loc 1 1660 0
	popq	%rbx
	popq	%rbp
	ret
.L284:
	.loc 1 1644 0
	movq	stderr(%rip), %rcx
	movl	$215, %edx
	movl	$1, %esi
	movl	$.LC111, %edi
	call	fwrite
.L280:
	.loc 1 1651 0
	movl	%ebx, %edi
	call	close
	jmp	.L283
.LFE312:
	.size	rtc_start_timer, .-rtc_start_timer
	.p2align 4,,15
	.type	rtc_stop_timer, @function
rtc_stop_timer:
.LFB313:
	.loc 1 1663 0
	.loc 1 1664 0
	movq	40(%rdi), %rdi
	.loc 1 1666 0
	jmp	close
.LFE313:
	.size	rtc_stop_timer, .-rtc_stop_timer
	.section	.rodata.str1.1
.LC112:
	.string	"timer_create"
.LC113:
	.string	"Dynamic Ticks disabled\n"
	.text
	.p2align 4,,15
	.type	dynticks_start_timer, @function
dynticks_start_timer:
.LFB314:
	.loc 1 1670 0
	pushq	%rbp
.LCFI63:
	movq	%rdi, %rbp
	pushq	%rbx
.LCFI64:
	subq	$248, %rsp
.LCFI65:
	.loc 1 1675 0
	leaq	16(%rsp), %rbx
	leaq	8(%rbx), %rdi
	call	sigfillset
	.loc 1 1679 0
	xorl	%edx, %edx
	movq	%rbx, %rsi
	movl	$14, %edi
	.loc 1 1676 0
	movl	$0, 152(%rsp)
	.loc 1 1677 0
	movq	$host_alarm_handler, 16(%rsp)
	.loc 1 1679 0
	call	sigaction
	.loc 1 1685 0
	leaq	176(%rsp), %rsi
	leaq	8(%rsp), %rdx
	xorl	%edi, %edi
	.loc 1 1681 0
	movl	$0, 176(%rsp)
	.loc 1 1682 0
	movl	$0, 188(%rsp)
	.loc 1 1683 0
	movl	$14, 184(%rsp)
	.loc 1 1685 0
	call	timer_create
	testl	%eax, %eax
	jne	.L288
	.loc 1 1694 0
	movq	8(%rsp), %rax
	movq	%rax, 40(%rbp)
	.loc 1 1696 0
	xorl	%eax, %eax
.L286:
	.loc 1 1697 0
	addq	$248, %rsp
	popq	%rbx
	popq	%rbp
	ret
.L288:
	.loc 1 1686 0
	movl	$.LC112, %edi
	call	perror
	.loc 1 1689 0
	movq	stderr(%rip), %rcx
	movl	$23, %edx
	movl	$1, %esi
	movl	$.LC113, %edi
	call	fwrite
	.loc 1 1691 0
	movl	$-1, %eax
	jmp	.L286
.LFE314:
	.size	dynticks_start_timer, .-dynticks_start_timer
	.p2align 4,,15
	.type	dynticks_stop_timer, @function
dynticks_stop_timer:
.LFB315:
	.loc 1 1700 0
	.loc 1 1701 0
	movq	40(%rdi), %rdi
	.loc 1 1703 0
	jmp	timer_delete
.LFE315:
	.size	dynticks_stop_timer, .-dynticks_stop_timer
	.section	.rodata.str1.1
.LC114:
	.string	"gettime"
.LC116:
	.string	"settime"
	.section	.rodata.str1.8
	.align 8
.LC115:
	.string	"Internal timer error: aborting\n"
	.text
	.p2align 4,,15
	.type	dynticks_rearm_timer, @function
dynticks_rearm_timer:
.LFB316:
	.loc 1 1707 0
	movq	%rbx, -24(%rsp)
.LCFI66:
	movq	%rbp, -16(%rsp)
.LCFI67:
	movq	%r12, -8(%rsp)
.LCFI68:
	subq	$56, %rsp
.LCFI69:
	.loc 1 1713 0
	movq	active_timers(%rip), %rbx
	.loc 1 1708 0
	movq	40(%rdi), %r12
	.loc 1 1713 0
	testq	%rbx, %rbx
	jne	.L291
	cmpq	$0, active_timers+8(%rip)
	je	.L290
.L291:
.LBB22:
.LBB23:
	.loc 1 1548 0
	testq	%rbx, %rbx
	.loc 1 1545 0
	movabsq	$9223372036854775807, %rbp
	.loc 1 1548 0
	jne	.L301
.L292:
	.loc 1 1552 0
	movq	active_timers+8(%rip), %rbx
	testq	%rbx, %rbx
	jne	.L302
.L293:
	.loc 1 1562 0
	cmpq	$250, %rbp
	movl	$250, %eax
.LBE23:
.LBE22:
	.loc 1 1720 0
	movq	%r12, %rdi
	movq	%rsp, %rsi
.LBB24:
.LBB25:
	.loc 1 1562 0
	cmovle	%rax, %rbp
.LBE25:
.LBE24:
	.loc 1 1720 0
	call	timer_gettime
	testl	%eax, %eax
	.loc 1 1721 0
	movl	$.LC114, %edi
	.loc 1 1720 0
	jne	.L300
	.loc 1 1725 0
	movq	24(%rsp), %rsi
	movq	16(%rsp), %rcx
	movabsq	$2361183241434822607, %rdx
	movq	%rsi, %rax
	imulq	%rdx
	movq	%rsi, %rax
	imulq	$1000000, %rcx, %rcx
	sarq	$63, %rax
	sarq	$7, %rdx
	subq	%rax, %rdx
	.loc 1 1726 0
	addq	%rdx, %rcx
	setne	%dl
	xorl	%eax, %eax
	cmpq	%rbp, %rcx
	setle	%al
	testl	%edx, %eax
	je	.L303
.L290:
	.loc 1 1738 0
	movq	32(%rsp), %rbx
	movq	40(%rsp), %rbp
	movq	48(%rsp), %r12
	addq	$56, %rsp
	ret
	.p2align 4,,7
.L302:
.LBB26:
.LBB27:
	.loc 1 1554 0
	movq	vm_clock(%rip), %rdi
	call	qemu_get_clock
	movq	8(%rbx), %rcx
	movabsq	$2361183241434822607, %rdx
	subq	%rax, %rcx
	addq	$999, %rcx
	movq	%rcx, %rax
	sarq	$63, %rcx
	imulq	%rdx
	sarq	$7, %rdx
	subq	%rcx, %rdx
	.loc 1 1557 0
	cmpq	%rbp, %rdx
	cmovl	%rdx, %rbp
	jmp	.L293
	.p2align 4,,7
.L301:
	.loc 1 1549 0
	movq	rt_clock(%rip), %rdi
	call	qemu_get_clock
	movq	8(%rbx), %rdx
	subq	%rax, %rdx
	imulq	$1000, %rdx, %rbp
	jmp	.L292
	.p2align 4,,7
.L303:
.LBE27:
.LBE26:
	.loc 1 1731 0
	movq	%rbp, %rax
	movabsq	$4835703278458516699, %rdx
	.loc 1 1733 0
	xorl	%ecx, %ecx
	.loc 1 1731 0
	imulq	%rdx
	movq	%rbp, %rax
	.loc 1 1733 0
	xorl	%esi, %esi
	.loc 1 1731 0
	sarq	$63, %rax
	.loc 1 1733 0
	movq	%r12, %rdi
	.loc 1 1729 0
	movq	$0, (%rsp)
	.loc 1 1730 0
	movq	$0, 8(%rsp)
	.loc 1 1731 0
	sarq	$18, %rdx
	subq	%rax, %rdx
	movq	%rdx, 16(%rsp)
	.loc 1 1732 0
	imulq	$1000000, %rdx, %rdx
	subq	%rdx, %rbp
	.loc 1 1733 0
	movq	%rsp, %rdx
	.loc 1 1732 0
	imulq	$1000, %rbp, %rax
	movq	%rax, 24(%rsp)
	.loc 1 1733 0
	call	timer_settime
	testl	%eax, %eax
	je	.L290
	.loc 1 1734 0
	movl	$.LC116, %edi
.L300:
	call	perror
	.loc 1 1735 0
	movq	stderr(%rip), %rcx
	movl	$.LC115, %edi
	movl	$31, %edx
	movl	$1, %esi
	call	fwrite
	.loc 1 1736 0
	movl	$1, %edi
	call	exit
.LFE316:
	.size	dynticks_rearm_timer, .-dynticks_rearm_timer
	.p2align 4,,15
	.type	unix_start_timer, @function
unix_start_timer:
.LFB317:
	.loc 1 1743 0
	pushq	%rbx
.LCFI70:
	subq	$192, %rsp
.LCFI71:
	.loc 1 1749 0
	leaq	32(%rsp), %rbx
	leaq	8(%rbx), %rdi
	call	sigfillset
	.loc 1 1753 0
	xorl	%edx, %edx
	movq	%rbx, %rsi
	movl	$14, %edi
	.loc 1 1750 0
	movl	$0, 168(%rsp)
	.loc 1 1751 0
	movq	$host_alarm_handler, 32(%rsp)
	.loc 1 1753 0
	call	sigaction
	.loc 1 1761 0
	movq	%rsp, %rsi
	xorl	%edx, %edx
	xorl	%edi, %edi
	.loc 1 1755 0
	movq	$0, (%rsp)
	.loc 1 1757 0
	movq	$999, 8(%rsp)
	.loc 1 1758 0
	movq	$0, 16(%rsp)
	.loc 1 1759 0
	movq	$10000, 24(%rsp)
	.loc 1 1761 0
	call	setitimer
	.loc 1 1763 0
	cmpl	$1, %eax
	sbbl	%eax, %eax
	.loc 1 1766 0
	addq	$192, %rsp
	popq	%rbx
	.loc 1 1763 0
	notl	%eax
	.loc 1 1766 0
	ret
.LFE317:
	.size	unix_start_timer, .-unix_start_timer
	.p2align 4,,15
	.type	unix_stop_timer, @function
unix_stop_timer:
.LFB318:
	.loc 1 1769 0
	subq	$40, %rsp
.LCFI72:
	.loc 1 1772 0
	xorl	%eax, %eax
	movl	$4, %ecx
	cld
	movq	%rsp, %rdi
	.loc 1 1773 0
	movq	%rsp, %rsi
	xorl	%edx, %edx
	.loc 1 1772 0
	rep
	stosq
	.loc 1 1773 0
	xorl	%edi, %edi
	call	setitimer
	addq	$40, %rsp
	ret
.LFE318:
	.size	unix_stop_timer, .-unix_stop_timer
	.p2align 4,,15
	.type	qemu_chr_event, @function
qemu_chr_event:
.LFB321:
	.loc 1 1898 0
	.loc 1 1899 0
	movq	24(%rdi), %rax
	testq	%rax, %rax
	jne	.L309
	rep ; ret
	.p2align 4,,7
.L309:
	.loc 1 1901 0
	movq	48(%rdi), %rdi
	movq	%rax, %r11
	jmp	*%r11
.LFE321:
	.size	qemu_chr_event, .-qemu_chr_event
	.p2align 4,,15
.globl qemu_bh_new
	.type	qemu_bh_new, @function
qemu_bh_new:
.LFB497:
	.loc 1 7879 0
	movq	%rbx, -16(%rsp)
.LCFI73:
	movq	%rbp, -8(%rsp)
.LCFI74:
	movq	%rdi, %rbx
	subq	$24, %rsp
.LCFI75:
	.loc 1 7881 0
	movl	$32, %edi
	.loc 1 7879 0
	movq	%rsi, %rbp
	.loc 1 7881 0
	call	qemu_mallocz
	.loc 1 7883 0
	xorl	%edx, %edx
	.loc 1 7882 0
	testq	%rax, %rax
	je	.L310
	.loc 1 7884 0
	movq	%rbx, (%rax)
	.loc 1 7885 0
	movq	%rbp, 8(%rax)
	.loc 1 7886 0
	movq	%rax, %rdx
.L310:
	.loc 1 7887 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	movq	%rdx, %rax
	addq	$24, %rsp
	ret
.LFE497:
	.size	qemu_bh_new, .-qemu_bh_new
	.p2align 4,,15
.globl qemu_bh_schedule
	.type	qemu_bh_schedule, @function
qemu_bh_schedule:
.LFB499:
	.loc 1 7909 0
	.loc 1 7911 0
	movl	16(%rdi), %esi
	.loc 1 7910 0
	movq	cpu_single_env(%rip), %rdx
	.loc 1 7911 0
	testl	%esi, %esi
	jne	.L312
	.loc 1 7913 0
	movl	$1, 16(%rdi)
	.loc 1 7914 0
	movq	first_bh(%rip), %rax
	.loc 1 7918 0
	testq	%rdx, %rdx
	.loc 1 7914 0
	movq	%rax, 24(%rdi)
	.loc 1 7915 0
	movq	%rdi, first_bh(%rip)
	.loc 1 7918 0
	je	.L312
	.loc 1 7919 0
	movl	$1, %esi
	movq	%rdx, %rdi
	jmp	cpu_interrupt
	.p2align 4,,7
.L312:
	rep ; ret
.LFE499:
	.size	qemu_bh_schedule, .-qemu_bh_schedule
	.p2align 4,,15
.globl qemu_chr_reset
	.type	qemu_chr_reset, @function
qemu_chr_reset:
.LFB323:
	.loc 1 1913 0
	pushq	%rbx
.LCFI76:
	.loc 1 1914 0
	cmpq	$0, 96(%rdi)
	.loc 1 1913 0
	movq	%rdi, %rbx
	.loc 1 1914 0
	je	.L317
	.loc 1 1918 0
	popq	%rbx
	ret
	.p2align 4,,7
.L317:
	.loc 1 1915 0
	movq	%rdi, %rsi
	movl	$qemu_chr_reset_bh, %edi
	call	qemu_bh_new
	movq	%rax, 96(%rbx)
	movq	%rax, %rdi
	.loc 1 1918 0
	popq	%rbx
	.loc 1 1916 0
	jmp	qemu_bh_schedule
.LFE323:
	.size	qemu_chr_reset, .-qemu_chr_reset
	.p2align 4,,15
.globl qemu_chr_write
	.type	qemu_chr_write, @function
qemu_chr_write:
.LFB324:
	.loc 1 1921 0
	.loc 1 1921 0
	movq	%rdi, %rax
	.loc 1 1922 0
	movq	(%rax), %r11
	jmp	*%r11
.LFE324:
	.size	qemu_chr_write, .-qemu_chr_write
	.p2align 4,,15
.globl qemu_chr_ioctl
	.type	qemu_chr_ioctl, @function
qemu_chr_ioctl:
.LFB325:
	.loc 1 1926 0
	.loc 1 1927 0
	movq	16(%rdi), %rax
	testq	%rax, %rax
	je	.L321
	.loc 1 1929 0
	movq	%rax, %r11
	jmp	*%r11
.L321:
	.loc 1 1930 0
	movl	$-95, %eax
	ret
.LFE325:
	.size	qemu_chr_ioctl, .-qemu_chr_ioctl
	.p2align 4,,15
.globl qemu_chr_can_read
	.type	qemu_chr_can_read, @function
qemu_chr_can_read:
.LFB326:
	.loc 1 1933 0
	.loc 1 1934 0
	movq	32(%rdi), %rax
	testq	%rax, %rax
	jne	.L325
	.loc 1 1937 0
	xorl	%eax, %eax
	ret
	.p2align 4,,7
.L325:
	.loc 1 1936 0
	movq	48(%rdi), %rdi
	movq	%rax, %r11
	jmp	*%r11
.LFE326:
	.size	qemu_chr_can_read, .-qemu_chr_can_read
	.p2align 4,,15
.globl qemu_chr_read
	.type	qemu_chr_read, @function
qemu_chr_read:
.LFB327:
	.loc 1 1940 0
	.loc 1 1940 0
	movq	%rdi, %rax
	.loc 1 1941 0
	movq	48(%rdi), %rdi
	movq	40(%rax), %r11
	jmp	*%r11
.LFE327:
	.size	qemu_chr_read, .-qemu_chr_read
	.p2align 4,,15
.globl qemu_chr_accept_input
	.type	qemu_chr_accept_input, @function
qemu_chr_accept_input:
.LFB328:
	.loc 1 1945 0
	.loc 1 1946 0
	movq	72(%rdi), %rax
	testq	%rax, %rax
	jne	.L329
	rep ; ret
	.p2align 4,,7
.L329:
	.loc 1 1947 0
	movq	%rax, %r11
	jmp	*%r11
.LFE328:
	.size	qemu_chr_accept_input, .-qemu_chr_accept_input
	.p2align 4,,15
.globl qemu_chr_printf
	.type	qemu_chr_printf, @function
qemu_chr_printf:
.LFB329:
	.loc 1 1951 0
	pushq	%rbp
.LCFI77:
	movq	%rdi, %rbp
	pushq	%rbx
.LCFI78:
	subq	$4312, %rsp
.LCFI79:
	.loc 1 1951 0
	movq	%rdx, 4144(%rsp)
	movzbl	%al, %edx 
	movq	%rcx, 4152(%rsp)
	leaq	0(,%rdx,4), %rax
	movl	$.L331, %edx
	movq	%r8, 4160(%rsp)
	movq	%r9, 4168(%rsp)
	.loc 1 1955 0
	leaq	32(%rsp), %rbx
	movq	%rsp, %rcx
	.loc 1 1951 0
	subq	%rax, %rdx
	leaq	4303(%rsp), %rax
	.loc 1 1955 0
	movq	%rbx, %rdi
	.loc 1 1951 0
	jmp	*%rdx
	movaps	%xmm7, -15(%rax)
	movaps	%xmm6, -31(%rax)
	movaps	%xmm5, -47(%rax)
	movaps	%xmm4, -63(%rax)
	movaps	%xmm3, -79(%rax)
	movaps	%xmm2, -95(%rax)
	movaps	%xmm1, -111(%rax)
	movaps	%xmm0, -127(%rax)
.L331:
	.loc 1 1954 0
	leaq	4336(%rsp), %rax
	.loc 1 1955 0
	movq	%rsi, %rdx
	movl	$4096, %esi
	.loc 1 1954 0
	movl	$16, (%rsp)
	movl	$48, 4(%rsp)
	movq	%rax, 8(%rsp)
	leaq	4128(%rsp), %rax
	movq	%rax, 16(%rsp)
	.loc 1 1955 0
	call	vsnprintf
	.loc 1 1956 0
	movq	%rbx, %rdx
	.p2align 4,,7
.L334:
	movl	(%rdx), %eax
	addq	$4, %rdx
	leal	-16843009(%rax), %ecx
	notl	%eax
	andl	%eax, %ecx
	andl	$-2139062144, %ecx
	je	.L334
	movl	%ecx, %eax
	movq	%rbx, %rsi
	movq	%rbp, %rdi
	shrl	$16, %eax
	testl	$32896, %ecx
	cmove	%eax, %ecx
	leaq	2(%rdx), %rax
	cmove	%rax, %rdx
	addb	%cl, %cl
	sbbq	$3, %rdx
	subq	%rbx, %rdx
	call	qemu_chr_write
	.loc 1 1957 0
	addq	$4312, %rsp
	popq	%rbx
	popq	%rbp
	ret
.LFE329:
	.size	qemu_chr_printf, .-qemu_chr_printf
	.p2align 4,,15
.globl qemu_chr_send_event
	.type	qemu_chr_send_event, @function
qemu_chr_send_event:
.LFB330:
	.loc 1 1961 0
	.loc 1 1962 0
	movq	56(%rdi), %rax
	testq	%rax, %rax
	jne	.L338
	rep ; ret
	.p2align 4,,7
.L338:
	.loc 1 1963 0
	movq	%rax, %r11
	jmp	*%r11
.LFE330:
	.size	qemu_chr_send_event, .-qemu_chr_send_event
	.p2align 4,,15
.globl qemu_chr_add_handlers
	.type	qemu_chr_add_handlers, @function
qemu_chr_add_handlers:
.LFB331:
	.loc 1 1971 0
	.loc 1 1976 0
	movq	8(%rdi), %rax
	.loc 1 1972 0
	movq	%rsi, 32(%rdi)
	.loc 1 1973 0
	movq	%rdx, 40(%rdi)
	.loc 1 1974 0
	movq	%rcx, 24(%rdi)
	.loc 1 1975 0
	movq	%r8, 48(%rdi)
	.loc 1 1976 0
	testq	%rax, %rax
	jne	.L341
	rep ; ret
	.p2align 4,,7
.L341:
	.loc 1 1977 0
	movq	%rax, %r11
	jmp	*%r11
.LFE331:
	.size	qemu_chr_add_handlers, .-qemu_chr_add_handlers
	.p2align 4,,15
	.type	null_chr_write, @function
null_chr_write:
.LFB332:
	.loc 1 1981 0
	.loc 1 1981 0
	movl	%edx, %eax
	.loc 1 1983 0
	ret
.LFE332:
	.size	null_chr_write, .-null_chr_write
	.section	.rodata.str1.1
.LC117:
	.string	"[%02d:%02d:%02d.%03d] "
	.text
	.p2align 4,,15
	.type	mux_chr_write, @function
mux_chr_write:
.LFB334:
	.loc 1 2018 0
	pushq	%r15
.LCFI80:
	pushq	%r14
.LCFI81:
	movl	%edx, %r14d
	pushq	%r13
.LCFI82:
	pushq	%r12
.LCFI83:
	pushq	%rbp
.LCFI84:
	pushq	%rbx
.LCFI85:
	subq	$88, %rsp
.LCFI86:
	.loc 1 2021 0
	movl	term_timestamps(%rip), %eax
	.loc 1 2019 0
	movq	80(%rdi), %r13
	.loc 1 2021 0
	testl	%eax, %eax
	je	.L357
.LBB28:
	.loc 1 2026 0
	xorl	%ebp, %ebp
	.loc 1 2027 0
	xorl	%r12d, %r12d
	cmpl	%edx, %ebp
	jge	.L345
	leaq	16(%rsp), %r15
	movq	%rsi, %rbx
	jmp	.L355
	.p2align 4,,7
.L348:
	incl	%r12d
	incq	%rbx
	cmpl	%r14d, %r12d
	jge	.L345
.L355:
	.loc 1 2028 0
	movq	128(%r13), %rax
	movl	$1, %edx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	*(%rax)
	addl	%eax, %ebp
	.loc 1 2029 0
	cmpb	$10, (%rbx)
	jne	.L348
.LBB29:
	.loc 1 2034 0
	call	get_clock
	movq	%rax, %r10
	.loc 1 2035 0
	movq	term_timestamps_start(%rip), %rax
	cmpq	$-1, %rax
	je	.L358
.L350:
	.loc 1 2037 0
	subq	%rax, %r10
	.loc 1 2038 0
	movabsq	$1237940039285380275, %rax
	imulq	%r10
	movq	%r10, %rdi
	sarq	$63, %rdi
	sarq	$26, %rdx
	movl	%edx, %r11d
	subl	%edi, %r11d
	.loc 1 2039 0
	movslq	%r11d,%rcx
	movl	%r11d, %eax
	imulq	$-2004318071, %rcx, %r8
	cltd
	movl	$60, %eax
	imulq	$-1851608123, %rcx, %rcx
	shrq	$32, %r8
	leal	(%r11,%r8), %r8d
	shrq	$32, %rcx
	leal	(%r11,%rcx), %ecx
	sarl	$5, %r8d
	subl	%edx, %r8d
	sarl	$11, %ecx
	movslq	%r8d,%rsi
	movl	%r8d, %r9d
	subl	%edx, %ecx
	imulq	$-2004318071, %rsi, %rsi
	imull	%eax, %r9d
	movl	%r8d, %eax
	sarl	$31, %eax
	shrq	$32, %rsi
	leal	(%r8,%rsi), %esi
	subl	%r9d, %r11d
	movl	%r11d, %r9d
	sarl	$5, %esi
	subl	%eax, %esi
	movl	$60, %eax
	imull	%eax, %esi
	movabsq	$4835703278458516699, %rax
	imulq	%r10
	subl	%esi, %r8d
	movl	$64, %esi
	movq	%rdx, %r10
	movabsq	$2361183241434822607, %rdx
	sarq	$18, %r10
	subq	%rdi, %r10
	movq	%r15, %rdi
	movq	%r10, %rax
	imulq	%rdx
	movq	%r10, %rax
	sarq	$63, %rax
	sarq	$7, %rdx
	subq	%rax, %rdx
	movq	%r10, %rax
	imulq	$1000, %rdx, %rdx
	subq	%rdx, %rax
	movl	$.LC117, %edx
	movl	%eax, (%rsp)
	xorl	%eax, %eax
	call	snprintf
	.loc 1 2045 0
	movq	%r15, %rdx
	.p2align 4,,7
.L353:
	movl	(%rdx), %eax
	addq	$4, %rdx
	leal	-16843009(%rax), %ecx
	notl	%eax
	andl	%eax, %ecx
	andl	$-2139062144, %ecx
	je	.L353
	movl	%ecx, %eax
	movq	%r15, %rsi
	shrl	$16, %eax
	testl	$32896, %ecx
	cmove	%eax, %ecx
	leaq	2(%rdx), %rax
	cmove	%rax, %rdx
	movq	128(%r13), %rax
	addb	%cl, %cl
	sbbq	$3, %rdx
.LBE29:
	.loc 1 2027 0
	incl	%r12d
	incq	%rbx
.LBB30:
	.loc 1 2045 0
	subq	%r15, %rdx
	movq	%rax, %rdi
	call	*(%rax)
.LBE30:
	.loc 1 2027 0
	cmpl	%r14d, %r12d
	jl	.L355
	.p2align 4,,7
.L345:
.LBE28:
	.loc 1 2050 0
	addq	$88, %rsp
	movl	%ebp, %eax
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L357:
	.loc 1 2022 0
	movq	128(%r13), %rax
	movq	%rax, %rdi
	call	*(%rax)
	.loc 1 2050 0
	addq	$88, %rsp
	.loc 1 2022 0
	movl	%eax, %ebp
	.loc 1 2050 0
	popq	%rbx
	movl	%ebp, %eax
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L358:
.LBB31:
.LBB32:
	.loc 1 2036 0
	movq	%r10, %rax
	movq	%r10, term_timestamps_start(%rip)
	jmp	.L350
.LBE32:
.LBE31:
.LFE334:
	.size	mux_chr_write, .-mux_chr_write
	.p2align 4,,15
	.type	mux_chr_accept_input, @function
mux_chr_accept_input:
.LFB337:
	.loc 1 2138 0
	pushq	%rbp
.LCFI87:
	pushq	%rbx
.LCFI88:
	subq	$8, %rsp
.LCFI89:
	.loc 1 2140 0
	movq	80(%rdi), %rbx
	movslq	88(%rdi),%rbp
	jmp	.L360
	.p2align 4,,7
.L363:
	.loc 1 2145 0
	movq	(%rbx,%rbp,8), %rax
	testq	%rax, %rax
	je	.L361
	movq	96(%rbx,%rbp,8), %rdi
	call	*%rax
	testl	%eax, %eax
	.p2align 4,,2
	je	.L361
	movl	172(%rbx), %eax
	movq	96(%rbx,%rbp,8), %rdi
	movl	$1, %edx
	movq	%rax, %rsi
	incl	%eax
	andl	$31, %esi
	movl	%eax, 172(%rbx)
	leaq	136(%rsi,%rbx), %rsi
	call	*32(%rbx,%rbp,8)
.L360:
	movl	172(%rbx), %eax
	cmpl	%eax, 168(%rbx)
	jne	.L363
.L361:
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
.LFE337:
	.size	mux_chr_accept_input, .-mux_chr_accept_input
	.p2align 4,,15
	.type	mux_chr_can_read, @function
mux_chr_can_read:
.LFB338:
	.loc 1 2151 0
	.loc 1 2153 0
	movq	80(%rdi), %rdx
	.loc 1 2156 0
	movl	$1, %esi
	.loc 1 2155 0
	movl	168(%rdx), %eax
	subl	172(%rdx), %eax
	cmpl	$31, %eax
	jle	.L364
	.loc 1 2157 0
	movslq	88(%rdi),%rax
	.loc 1 2159 0
	xorb	%sil, %sil
	.loc 1 2157 0
	movq	(%rdx,%rax,8), %rcx
	testq	%rcx, %rcx
	jne	.L367
.L364:
	.loc 1 2160 0
	movl	%esi, %eax
	ret
	.p2align 4,,7
.L367:
	.loc 1 2158 0
	movq	96(%rdx,%rax,8), %rdi
	movq	%rcx, %r11
	jmp	*%r11
.LFE338:
	.size	mux_chr_can_read, .-mux_chr_can_read
	.section	.rodata
.LC118:
	.string	"Escape-Char"
	.zero	3
	.section	.rodata.str1.1
.LC120:
	.string	"C-%c"
.LC122:
	.string	"QEMU: Terminated\n\r"
	.section	.rodata
.LC119:
	.string	"\n\r"
	.zero	47
	.section	.rodata.str1.8
	.align 8
.LC121:
	.string	"\n\rEscape-Char set to Ascii: 0x%02x\n\r\n\r"
	.text
	.p2align 4,,15
	.type	mux_chr_read, @function
mux_chr_read:
.LFB339:
	.loc 1 2163 0
	pushq	%r15
.LCFI90:
	.loc 1 2171 0
	xorl	%r15d, %r15d
	.loc 1 2163 0
	pushq	%r14
.LCFI91:
	pushq	%r13
.LCFI92:
	pushq	%r12
.LCFI93:
	pushq	%rbp
.LCFI94:
	movq	%rdi, %rbp
	pushq	%rbx
.LCFI95:
	subq	$120, %rsp
.LCFI96:
	.loc 1 2163 0
	movq	%rsi, 24(%rsp)
	movl	%edx, 20(%rsp)
	.loc 1 2166 0
	movl	88(%rdi), %eax
	.loc 1 2165 0
	movq	80(%rdi), %r12
	.loc 1 2166 0
	movl	%eax, 16(%rsp)
	.loc 1 2169 0
	call	mux_chr_accept_input
	.loc 1 2171 0
	cmpl	20(%rsp), %r15d
	jge	.L419
	.p2align 4,,7
.L434:
.LBB33:
	.loc 1 2089 0
	movq	24(%rsp), %rdx
	movslq	%r15d,%rbx
	movzbl	(%rbx,%rdx), %eax
.LBB34:
	.loc 1 2090 0
	movl	180(%r12), %edx
	testl	%edx, %edx
	je	.L373
	.loc 1 2091 0
	movl	$0, 180(%r12)
	.loc 1 2092 0
	movl	term_escape_char(%rip), %edx
	cmpl	%edx, %eax
	je	.L375
	.loc 1 2094 0
	subl	$63, %eax
	cmpl	$57, %eax
	ja	.L371
	mov	%eax, %eax
	jmp	*.L410(,%rax,8)
	.section	.rodata
	.align 8
	.align 4
.L410:
	.quad	.L378
	.quad	.L371
	.quad	.L371
	.quad	.L371
	.quad	.L371
	.quad	.L371
	.quad	.L371
	.quad	.L371
	.quad	.L371
	.quad	.L371
	.quad	.L371
	.quad	.L371
	.quad	.L371
	.quad	.L371
	.quad	.L371
	.quad	.L371
	.quad	.L371
	.quad	.L371
	.quad	.L371
	.quad	.L371
	.quad	.L371
	.quad	.L371
	.quad	.L371
	.quad	.L371
	.quad	.L371
	.quad	.L371
	.quad	.L371
	.quad	.L371
	.quad	.L371
	.quad	.L371
	.quad	.L371
	.quad	.L371
	.quad	.L371
	.quad	.L371
	.quad	.L371
	.quad	.L406
	.quad	.L407
	.quad	.L371
	.quad	.L371
	.quad	.L371
	.quad	.L371
	.quad	.L378
	.quad	.L371
	.quad	.L371
	.quad	.L371
	.quad	.L371
	.quad	.L371
	.quad	.L371
	.quad	.L371
	.quad	.L371
	.quad	.L371
	.quad	.L371
	.quad	.L401
	.quad	.L409
	.quad	.L371
	.quad	.L371
	.quad	.L371
	.quad	.L400
	.text
	.p2align 4,,7
.L373:
	.loc 1 2128 0
	cmpl	term_escape_char(%rip), %eax
	je	.L432
.L375:
.LBE34:
.LBE33:
	.loc 1 2173 0
	movl	168(%r12), %ecx
	cmpl	172(%r12), %ecx
	je	.L433
.L415:
	.loc 1 2178 0
	movq	24(%rsp), %rsi
	movq	%rcx, %rax
	andl	$31, %eax
	movzbl	(%rbx,%rsi), %edx
	movb	%dl, 136(%rax,%r12)
	leal	1(%rcx), %eax
	movl	%eax, 168(%r12)
.L371:
	.loc 1 2171 0
	incl	%r15d
.L435:
	cmpl	20(%rsp), %r15d
	jl	.L434
.L419:
	addq	$120, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L432:
	incl	%r15d
.LBB35:
.LBB36:
	.loc 1 2129 0
	movl	$1, 180(%r12)
	jmp	.L435
.L433:
.LBE36:
.LBE35:
	.loc 1 2173 0
	movslq	16(%rsp),%r13
	movq	(%r12,%r13,8), %rax
	testq	%rax, %rax
	je	.L415
	movq	96(%r12,%r13,8), %rdi
	call	*%rax
	testl	%eax, %eax
	jne	.L436
	movl	168(%r12), %ecx
	jmp	.L415
.L409:
.LBB37:
.LBB38:
	.loc 1 2124 0
	xorl	%eax, %eax
	cmpl	$0, term_timestamps(%rip)
	.loc 1 2125 0
	movq	$-1, term_timestamps_start(%rip)
	.loc 1 2124 0
	sete	%al
.LBE38:
.LBE37:
	.loc 1 2171 0
	incl	%r15d
.LBB39:
.LBB40:
	.loc 1 2124 0
	movl	%eax, term_timestamps(%rip)
	jmp	.L435
.L406:
	.loc 1 2115 0
	xorl	%esi, %esi
	movq	%rbp, %rdi
.LBE40:
.LBE39:
	.loc 1 2171 0
	incl	%r15d
.LBB41:
.LBB42:
	.loc 1 2115 0
	call	qemu_chr_event
	jmp	.L435
.L407:
	.loc 1 2119 0
	movl	88(%rbp), %eax
	incl	%eax
	movl	%eax, 88(%rbp)
	.loc 1 2120 0
	cmpl	176(%r12), %eax
	jl	.L371
.LBE42:
.LBE41:
	.loc 1 2171 0
	incl	%r15d
.LBB43:
.LBB44:
	.loc 1 2121 0
	movl	$0, 88(%rbp)
	jmp	.L435
.L378:
.LBB45:
.LBB46:
	.loc 1 2067 0
	movq	.LC118(%rip), %rax
	.loc 1 2068 0
	leaq	35(%rsp), %rdi
	movl	$5, %ecx
	cld
	.loc 1 2067 0
	movw	$0, 108(%rsp)
	movb	$0, 110(%rsp)
	movq	%rax, 96(%rsp)
	movl	.LC118+8(%rip), %eax
	movl	%eax, 104(%rsp)
	.loc 1 2068 0
	xorl	%eax, %eax
	rep
	stosq
	.loc 1 2070 0
	leal	-1(%rdx), %eax
	.loc 1 2068 0
	movl	$0, (%rdi)
	addq	$4, %rdi
	.loc 1 2070 0
	cmpl	$24, %eax
	.loc 1 2068 0
	movw	$0, (%rdi)
	movb	$0, 2(%rdi)
	.loc 1 2070 0
	ja	.L379
	.loc 1 2072 0
	leaq	96(%rsp), %rdi
	leaq	32(%rsp), %rbx
	addl	$96, %edx
	movl	$.LC120, %esi
	xorl	%eax, %eax
	.loc 1 2071 0
	movw	$3338, 32(%rsp)
	movb	$0, 34(%rsp)
	.loc 1 2072 0
	call	sprintf
.L380:
	.loc 1 2077 0
	movq	%rbx, %rdx
.L383:
	movl	(%rdx), %eax
	addq	$4, %rdx
	leal	-16843009(%rax), %ecx
	notl	%eax
	andl	%eax, %ecx
	andl	$-2139062144, %ecx
	je	.L383
	movl	%ecx, %eax
	movq	%rbx, %rsi
	movq	%rbp, %rdi
	shrl	$16, %eax
	testl	$32896, %ecx
	cmove	%eax, %ecx
	leaq	2(%rdx), %rax
	cmove	%rax, %rdx
	addb	%cl, %cl
	sbbq	$3, %rdx
	subq	%rbx, %rdx
	call	*(%rbp)
	.loc 1 2078 0
	cmpq	$0, mux_help(%rip)
	movl	$0, 12(%rsp)
	je	.L371
	leaq	96(%rsp), %r14
	xorl	%r13d, %r13d
.L398:
	.loc 1 2079 0
	movq	mux_help(,%r13,8), %rax
	xorl	%ebx, %ebx
	cmpb	$0, (%rax)
	je	.L423
	xorl	%edx, %edx
	.p2align 4,,7
.L397:
	.loc 1 2080 0
	cmpb	$37, (%rax,%rdx)
	jne	.L391
	.loc 1 2081 0
	movq	%r14, %rdx
	.p2align 4,,7
.L394:
	movl	(%rdx), %eax
	addq	$4, %rdx
	leal	-16843009(%rax), %ecx
	notl	%eax
	andl	%eax, %ecx
	andl	$-2139062144, %ecx
	je	.L394
	movl	%ecx, %eax
	movq	%r14, %rsi
	shrl	$16, %eax
	testl	$32896, %ecx
	cmove	%eax, %ecx
	leaq	2(%rdx), %rax
	cmove	%rax, %rdx
	addb	%cl, %cl
	sbbq	$3, %rdx
	subq	%r14, %rdx
.L429:
	.loc 1 2083 0
	movq	%rbp, %rdi
	.loc 1 2079 0
	incl	%ebx
	.loc 1 2083 0
	call	*(%rbp)
	.loc 1 2079 0
	movq	mux_help(,%r13,8), %rax
	movslq	%ebx,%rdx
	cmpb	$0, (%rax,%rdx)
	jne	.L397
.L423:
	.loc 1 2078 0
	incl	12(%rsp)
	movslq	12(%rsp),%r13
	cmpq	$0, mux_help(,%r13,8)
	jne	.L398
.LBE46:
.LBE45:
.LBE44:
.LBE43:
	.loc 1 2171 0
	incl	%r15d
	jmp	.L435
.L401:
.LBB47:
.LBB48:
.LBB49:
	.loc 1 2109 0
	xorl	%ebx, %ebx
	cmpl	nb_drives(%rip), %ebx
	jge	.L371
.L437:
	.loc 1 2110 0
	movslq	%ebx,%rax
	.loc 1 2109 0
	incl	%ebx
	.loc 1 2110 0
	leaq	(%rax,%rax,2), %rax
	movq	drives_table(,%rax,8), %rdi
	call	bdrv_commit
	.loc 1 2109 0
	cmpl	nb_drives(%rip), %ebx
	jl	.L437
.LBE49:
.LBE48:
.LBE47:
	.loc 1 2171 0
	incl	%r15d
	jmp	.L435
.L400:
.LBB50:
.LBB51:
.LBB52:
	.loc 1 2102 0
	movl	$.LC122, %edi
	call	strlen
	movq	%rbp, %rdi
	movl	%eax, %edx
	movl	$.LC122, %esi
	call	*(%rbp)
	.loc 1 2103 0
	xorl	%edi, %edi
	call	exit
	.p2align 4,,7
.L391:
.LBE52:
.LBB53:
.LBB54:
	.loc 1 2083 0
	leaq	(%rax,%rdx), %rsi
	movl	$1, %edx
	jmp	.L429
.L379:
	movzwl	.LC119(%rip), %eax
	.loc 1 2074 0
	leaq	32(%rsp), %rbx
	movl	$.LC121, %esi
	movq	%rbx, %rdi
	movw	%ax, 32(%rsp)
	movzbl	.LC119+2(%rip), %eax
	movb	%al, 34(%rsp)
	xorl	%eax, %eax
	call	sprintf
	jmp	.L380
.L436:
.LBE54:
.LBE53:
.LBE51:
.LBE50:
	.loc 1 2176 0
	movq	24(%rsp), %rax
	movq	96(%r12,%r13,8), %rdi
	movl	$1, %edx
	.loc 1 2171 0
	incl	%r15d
	.loc 1 2176 0
	leaq	(%rbx,%rax), %rsi
	call	*32(%r12,%r13,8)
	jmp	.L435
.LFE339:
	.size	mux_chr_read, .-mux_chr_read
	.p2align 4,,15
	.type	mux_chr_event, @function
mux_chr_event:
.LFB340:
	.loc 1 2183 0
	pushq	%r12
.LCFI97:
	movl	%esi, %r12d
	pushq	%rbp
.LCFI98:
	pushq	%rbx
.LCFI99:
	.loc 1 2185 0
	movq	80(%rdi), %rbp
	.loc 1 2189 0
	xorl	%ebx, %ebx
	movl	176(%rbp), %ecx
	cmpl	$0, %ecx
	jle	.L445
	.p2align 4,,7
.L448:
	.loc 1 2190 0
	movslq	%ebx,%rax
	movq	64(%rbp,%rax,8), %rdx
	testq	%rdx, %rdx
	jne	.L447
	.loc 1 2189 0
	incl	%ebx
	cmpl	%ebx, %ecx
.L449:
	jg	.L448
.L445:
	popq	%rbx
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,7
.L447:
	.loc 1 2191 0
	movq	96(%rbp,%rax,8), %rdi
	movl	%r12d, %esi
	.loc 1 2189 0
	incl	%ebx
	.loc 1 2191 0
	call	*%rdx
	movl	176(%rbp), %ecx
	.loc 1 2189 0
	cmpl	%ebx, %ecx
	jmp	.L449
.LFE340:
	.size	mux_chr_event, .-mux_chr_event
	.section	.rodata.str1.8
	.align 8
.LC123:
	.string	"Cannot add I/O handlers, MUX array is full\n"
	.text
	.p2align 4,,15
	.type	mux_chr_update_read_handler, @function
mux_chr_update_read_handler:
.LFB341:
	.loc 1 2195 0
	movq	%rbp, -8(%rsp)
.LCFI100:
	movq	%rbx, -16(%rsp)
.LCFI101:
	subq	$24, %rsp
.LCFI102:
	.loc 1 2196 0
	movq	80(%rdi), %rbx
	.loc 1 2195 0
	movq	%rdi, %rbp
	.loc 1 2198 0
	movl	176(%rbx), %ecx
	cmpl	$3, %ecx
	jg	.L453
	.loc 1 2202 0
	movq	48(%rdi), %rax
	movslq	%ecx,%rdx
	.loc 1 2207 0
	testl	%ecx, %ecx
	.loc 1 2202 0
	movq	%rax, 96(%rbx,%rdx,8)
	.loc 1 2203 0
	movq	32(%rdi), %rax
	movq	%rax, (%rbx,%rdx,8)
	.loc 1 2204 0
	movq	40(%rdi), %rax
	movq	%rax, 32(%rbx,%rdx,8)
	.loc 1 2205 0
	movq	24(%rdi), %rax
	movq	%rax, 64(%rbx,%rdx,8)
	.loc 1 2207 0
	je	.L454
	.loc 1 2211 0
	movl	%ecx, 88(%rbp)
	.loc 1 2212 0
	incl	176(%rbx)
	.loc 1 2213 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	addq	$24, %rsp
	ret
	.p2align 4,,7
.L453:
	.loc 1 2199 0
	movq	stderr(%rip), %rcx
	.loc 1 2213 0
	movq	8(%rsp), %rbx
	.loc 1 2199 0
	movl	$43, %edx
	.loc 1 2213 0
	movq	16(%rsp), %rbp
	.loc 1 2199 0
	movl	$1, %esi
	movl	$.LC123, %edi
	.loc 1 2213 0
	addq	$24, %rsp
	.loc 1 2199 0
	jmp	fwrite
	.p2align 4,,7
.L454:
	.loc 1 2208 0
	movq	128(%rbx), %rdi
	movq	%rbp, %r8
	movl	$mux_chr_event, %ecx
	movl	$mux_chr_read, %edx
	movl	$mux_chr_can_read, %esi
	call	qemu_chr_add_handlers
	movl	176(%rbx), %ecx
	.loc 1 2211 0
	movl	%ecx, 88(%rbp)
	.loc 1 2212 0
	incl	176(%rbx)
	.loc 1 2213 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	addq	$24, %rsp
	ret
.LFE341:
	.size	mux_chr_update_read_handler, .-mux_chr_update_read_handler
	.p2align 4,,15
	.type	unix_write, @function
unix_write:
.LFB343:
	.loc 1 2299 0
	pushq	%r13
.LCFI103:
	movl	%edi, %r13d
	pushq	%r12
.LCFI104:
	movl	%edx, %r12d
	pushq	%rbp
.LCFI105:
	movq	%rsi, %rbp
	pushq	%rbx
.LCFI106:
	.loc 1 2302 0
	movl	%edx, %ebx
	.loc 1 2299 0
	subq	$8, %rsp
.LCFI107:
	.loc 1 2312 0
	testl	%edx, %edx
	jle	.L457
	.p2align 4,,7
.L467:
	.loc 1 2304 0
	movslq	%ebx,%rdx
	movq	%rbp, %rsi
	movl	%r13d, %edi
	call	write
	.loc 1 2305 0
	testl	%eax, %eax
	.loc 1 2304 0
	movl	%eax, %edx
	.loc 1 2305 0
	jl	.L466
	.loc 1 2308 0
	je	.L457
	.loc 1 2311 0
	cltq
	.loc 1 2312 0
	subl	%edx, %ebx
	.loc 1 2311 0
	addq	%rax, %rbp
.L456:
	.loc 1 2312 0
	testl	%ebx, %ebx
	jg	.L467
.L457:
	.loc 1 2315 0
	movl	%r12d, %eax
	subl	%ebx, %eax
.L455:
	.loc 1 2316 0
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	.p2align 4,,7
.L466:
	.loc 1 2306 0
	call	__errno_location
	movl	(%rax), %eax
	cmpl	$4, %eax
	je	.L456
	cmpl	$11, %eax
	.p2align 4,,2
	je	.L456
	.loc 1 2307 0
	movl	$-1, %eax
	.p2align 4,,3
	jmp	.L455
.LFE343:
	.size	unix_write, .-unix_write
	.p2align 4,,15
	.type	fd_chr_write, @function
fd_chr_write:
.LFB347:
	.loc 1 2344 0
	.loc 1 2345 0
	movq	80(%rdi), %rax
	.loc 1 2346 0
	movl	4(%rax), %edi
	jmp	unix_write
.LFE347:
	.size	fd_chr_write, .-fd_chr_write
	.p2align 4,,15
	.type	fd_chr_read_poll, @function
fd_chr_read_poll:
.LFB348:
	.loc 1 2350 0
	pushq	%rbx
.LCFI108:
	.loc 1 2352 0
	movq	80(%rdi), %rbx
	.loc 1 2354 0
	call	qemu_chr_can_read
	movl	%eax, 8(%rbx)
	.loc 1 2356 0
	popq	%rbx
	ret
.LFE348:
	.size	fd_chr_read_poll, .-fd_chr_read_poll
	.p2align 4,,15
	.type	fd_chr_read, @function
fd_chr_read:
.LFB349:
	.loc 1 2359 0
	movq	%rbp, -16(%rsp)
.LCFI109:
	movq	%rbx, -24(%rsp)
.LCFI110:
	movq	%rdi, %rbp
	movq	%r12, -8(%rsp)
.LCFI111:
	subq	$1048, %rsp
.LCFI112:
	.loc 1 2361 0
	movq	80(%rdi), %rbx
	.loc 1 2365 0
	movl	$1024, %edx
	.loc 1 2366 0
	movl	8(%rbx), %eax
	cmpl	$1024, %eax
	jge	.L475
	.loc 1 2368 0
	testl	%eax, %eax
	.loc 1 2367 0
	movl	%eax, %edx
	.loc 1 2368 0
	je	.L470
.L475:
	.loc 1 2370 0
	movl	(%rbx), %edi
	movslq	%edx,%rdx
	movq	%rsp, %rsi
	call	read
	.loc 1 2371 0
	cmpl	$0, %eax
	je	.L477
	.loc 1 2376 0
	jle	.L470
	.loc 1 2377 0
	movl	%eax, %edx
	movq	%rsp, %rsi
	movq	%rbp, %rdi
	call	qemu_chr_read
	.p2align 4,,7
.L470:
	.loc 1 2379 0
	movq	1024(%rsp), %rbx
	movq	1032(%rsp), %rbp
	movq	1040(%rsp), %r12
	addq	$1048, %rsp
	ret
	.p2align 4,,7
.L477:
	.loc 1 2373 0
	movl	(%rbx), %edi
	xorl	%r8d, %r8d
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	xorl	%esi, %esi
	call	qemu_set_fd_handler2
	jmp	.L470
.LFE349:
	.size	fd_chr_read, .-fd_chr_read
	.p2align 4,,15
	.type	fd_chr_update_read_handler, @function
fd_chr_update_read_handler:
.LFB350:
	.loc 1 2382 0
	.loc 1 2383 0
	movq	80(%rdi), %rax
	.loc 1 2382 0
	movq	%rdi, %rdx
	.loc 1 2385 0
	movl	(%rax), %edi
	testl	%edi, %edi
	js	.L478
	.loc 1 2386 0
	movl	nographic(%rip), %ecx
	testl	%ecx, %ecx
	je	.L480
	testl	%edi, %edi
	je	.L478
.L480:
	.loc 1 2388 0
	movq	%rdx, %r8
	xorl	%ecx, %ecx
	movl	$fd_chr_read, %edx
	movl	$fd_chr_read_poll, %esi
	jmp	qemu_set_fd_handler2
	.p2align 4,,7
.L478:
	rep ; ret
.LFE350:
	.size	fd_chr_update_read_handler, .-fd_chr_update_read_handler
	.p2align 4,,15
	.type	qemu_chr_open_fd, @function
qemu_chr_open_fd:
.LFB351:
	.loc 1 2396 0
	movq	%rbx, -24(%rsp)
.LCFI113:
	movq	%rbp, -16(%rsp)
.LCFI114:
	movl	%edi, %ebp
	movq	%r12, -8(%rsp)
.LCFI115:
	.loc 1 2400 0
	movl	$104, %edi
	.loc 1 2396 0
	subq	$24, %rsp
.LCFI116:
	.loc 1 2396 0
	movl	%esi, %r12d
	.loc 1 2400 0
	call	qemu_mallocz
	movq	%rax, %rbx
	.loc 1 2402 0
	xorl	%eax, %eax
	.loc 1 2401 0
	testq	%rbx, %rbx
	je	.L482
	.loc 1 2403 0
	movl	$12, %edi
	call	qemu_mallocz
	.loc 1 2404 0
	testq	%rax, %rax
	je	.L485
	.loc 1 2408 0
	movl	%ebp, (%rax)
	.loc 1 2409 0
	movl	%r12d, 4(%rax)
	.loc 1 2414 0
	movq	%rbx, %rdi
	.loc 1 2410 0
	movq	%rax, 80(%rbx)
	.loc 1 2411 0
	movq	$fd_chr_write, (%rbx)
	.loc 1 2412 0
	movq	$fd_chr_update_read_handler, 8(%rbx)
	.loc 1 2414 0
	call	qemu_chr_reset
	.loc 1 2416 0
	movq	%rbx, %rax
.L482:
	.loc 1 2417 0
	movq	(%rsp), %rbx
	movq	8(%rsp), %rbp
	movq	16(%rsp), %r12
	addq	$24, %rsp
	ret
.L485:
	.loc 1 2405 0
	movq	%rbx, %rdi
	call	free
	.loc 1 2406 0
	xorl	%eax, %eax
	jmp	.L482
.LFE351:
	.size	qemu_chr_open_fd, .-qemu_chr_open_fd
	.p2align 4,,15
	.type	stdio_read_poll, @function
stdio_read_poll:
.LFB354:
	.loc 1 2460 0
	pushq	%rbx
.LCFI117:
	.loc 1 2460 0
	movq	%rdi, %rbx
	.loc 1 2464 0
	movl	term_fifo_size(%rip), %edi
	testl	%edi, %edi
	jne	.L492
	.loc 1 2470 0
	movl	$1, %eax
.L486:
	.loc 1 2473 0
	popq	%rbx
	ret
	.p2align 4,,7
.L492:
	.loc 1 2464 0
	movq	%rbx, %rdi
	call	qemu_chr_can_read
	testl	%eax, %eax
	.p2align 4,,2
	jle	.L490
	.loc 1 2465 0
	movl	$1, %edx
	movl	$term_fifo, %esi
	movq	%rbx, %rdi
	call	qemu_chr_read
	.loc 1 2470 0
	movl	$1, %eax
	.loc 1 2466 0
	movl	$0, term_fifo_size(%rip)
	jmp	.L486
	.p2align 4,,7
.L490:
	.loc 1 2469 0
	movl	term_fifo_size(%rip), %esi
	.loc 1 2472 0
	xorl	%eax, %eax
	.loc 1 2469 0
	testl	%esi, %esi
	jne	.L486
	.loc 1 2470 0
	movl	$1, %eax
	jmp	.L486
.LFE354:
	.size	stdio_read_poll, .-stdio_read_poll
	.p2align 4,,15
	.type	stdio_read, @function
stdio_read:
.LFB355:
	.loc 1 2476 0
	pushq	%rbx
.LCFI118:
	.loc 1 2481 0
	movl	$1, %edx
	.loc 1 2476 0
	movq	%rdi, %rbx
	.loc 1 2481 0
	xorl	%edi, %edi
	.loc 1 2476 0
	subq	$16, %rsp
.LCFI119:
	.loc 1 2481 0
	leaq	15(%rsp), %rsi
	call	read
	.loc 1 2482 0
	cmpl	$0, %eax
	je	.L499
	.loc 1 2487 0
	jle	.L493
	.loc 1 2488 0
	movq	%rbx, %rdi
	.p2align 4,,7
	call	qemu_chr_can_read
	testl	%eax, %eax
	.p2align 4,,4
	jle	.L496
	.loc 1 2489 0
	leaq	15(%rsp), %rsi
	movl	$1, %edx
	movq	%rbx, %rdi
	call	qemu_chr_read
.L493:
	.loc 1 2494 0
	addq	$16, %rsp
	popq	%rbx
	ret
	.p2align 4,,7
.L499:
	.loc 1 2484 0
	xorl	%r8d, %r8d
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	xorl	%esi, %esi
	xorl	%edi, %edi
	call	qemu_set_fd_handler2
	.loc 1 2494 0
	addq	$16, %rsp
	popq	%rbx
	ret
	.p2align 4,,7
.L496:
	.loc 1 2490 0
	movl	term_fifo_size(%rip), %r8d
	testl	%r8d, %r8d
	jne	.L493
	.loc 1 2491 0
	movzbl	15(%rsp), %eax
	movl	$1, term_fifo_size(%rip)
	movb	%al, term_fifo(%rip)
	jmp	.L493
.LFE355:
	.size	stdio_read, .-stdio_read
	.p2align 4,,15
	.type	term_exit, @function
term_exit:
.LFB356:
	.loc 1 2501 0
	subq	$8, %rsp
.LCFI120:
	.loc 1 2502 0
	movl	$oldtty, %edx
	xorl	%esi, %esi
	xorl	%edi, %edi
	call	tcsetattr
	.loc 1 2503 0
	movl	old_fd0_flags(%rip), %edx
	movl	$4, %esi
	xorl	%edi, %edi
	xorl	%eax, %eax
	addq	$8, %rsp
	jmp	fcntl
.LFE356:
	.size	term_exit, .-term_exit
	.p2align 4,,15
	.type	tty_serial_init, @function
tty_serial_init:
.LFB360:
	.loc 1 2574 0
	movq	%rbx, -48(%rsp)
.LCFI121:
	movq	%rbp, -40(%rsp)
.LCFI122:
	movl	%esi, %ebx
	movq	%r12, -32(%rsp)
.LCFI123:
	movq	%r13, -24(%rsp)
.LCFI124:
	movl	%ecx, %r12d
	movq	%r14, -16(%rsp)
.LCFI125:
	movq	%r15, -8(%rsp)
.LCFI126:
	subq	$136, %rsp
.LCFI127:
	.loc 1 2582 0
	leaq	16(%rsp), %r13
	.loc 1 2574 0
	movl	%edi, %r15d
	movl	%edx, %r14d
	movl	%r8d, 12(%rsp)
	.loc 1 2601 0
	movl	$11, %ebp
	.loc 1 2582 0
	movq	%r13, %rsi
	call	tcgetattr
	.loc 1 2584 0
	cmpl	$2400, %ebx
	je	.L502
	jg	.L516
	cmpl	$300, %ebx
	.loc 1 2592 0
	movb	$7, %bpl
	.loc 1 2584 0
	.p2align 4,,5
	je	.L502
	.p2align 4,,7
	jle	.L536
	cmpl	$600, %ebx
	.loc 1 2595 0
	movl	$8, %ebp
	.loc 1 2584 0
	.p2align 4,,3
	je	.L502
	.loc 1 2598 0
	movb	$9, %bpl
	.loc 1 2584 0
	cmpl	$1200, %ebx
	.p2align 4,,7
.L533:
	.p2align 4,,3
	je	.L502
	.loc 1 2620 0
	movl	$4098, %ebp
	.p2align 4,,7
.L502:
	.loc 1 2624 0
	movl	%ebp, %esi
	movq	%r13, %rdi
	call	cfsetispeed
	.loc 1 2625 0
	movl	%ebp, %esi
	movq	%r13, %rdi
	call	cfsetospeed
	.loc 1 2631 0
	movl	24(%rsp), %ecx
	.loc 1 2627 0
	andl	$-1516, 16(%rsp)
	.loc 1 2629 0
	orl	$1, 20(%rsp)
	.loc 1 2630 0
	andl	$-32844, 28(%rsp)
	.loc 1 2631 0
	andl	$2147482767, %ecx
	.loc 1 2632 0
	cmpl	$6, %r12d
	.loc 1 2631 0
	movl	%ecx, %eax
	movl	%ecx, %edx
	.loc 1 2632 0
	je	.L523
	jg	.L525
	cmpl	$5, %r12d
	je	.L519
.L521:
	.loc 1 2635 0
	movl	%ecx, %eax
	orl	$48, %eax
.L534:
	.loc 1 2641 0
	movl	%eax, %edx
.L519:
	.loc 1 2647 0
	cmpl	$69, %r14d
	je	.L529
	cmpl	$79, %r14d
	je	.L530
.L526:
	.loc 1 2658 0
	cmpl	$2, 12(%rsp)
	je	.L537
	movl	%eax, 24(%rsp)
.L531:
	.loc 1 2661 0
	movq	%r13, %rdx
	movl	%r15d, %edi
	xorl	%esi, %esi
	call	tcsetattr
	movq	88(%rsp), %rbx
	movq	96(%rsp), %rbp
	movq	104(%rsp), %r12
	movq	112(%rsp), %r13
	movq	120(%rsp), %r14
	movq	128(%rsp), %r15
	addq	$136, %rsp
	ret
	.p2align 4,,7
.L516:
	.loc 1 2584 0
	cmpl	$19200, %ebx
	.loc 1 2610 0
	movl	$14, %ebp
	.loc 1 2584 0
	je	.L502
	jg	.L518
	cmpl	$4800, %ebx
	.loc 1 2604 0
	movb	$12, %bpl
	.loc 1 2584 0
	.p2align 4,,3
	je	.L502
	.loc 1 2607 0
	movb	$13, %bpl
	.loc 1 2584 0
	cmpl	$9600, %ebx
	.p2align 4,,3
	jmp	.L533
	.p2align 4,,7
.L525:
	.loc 1 2632 0
	cmpl	$7, %r12d
	jne	.L521
	.loc 1 2638 0
	orl	$32, %eax
	.p2align 4,,3
	jmp	.L534
	.p2align 4,,7
.L523:
	.loc 1 2641 0
	orl	$16, %eax
	.p2align 4,,5
	jmp	.L534
	.p2align 4,,7
.L537:
	.loc 1 2659 0
	orl	$64, %edx
	movl	%edx, 24(%rsp)
	.p2align 4,,2
	jmp	.L531
	.p2align 4,,7
.L529:
	.loc 1 2652 0
	movl	%edx, %eax
	orb	$1, %ah
	.loc 1 2655 0
	movl	%eax, %edx
	jmp	.L526
	.p2align 4,,7
.L530:
	movl	%edx, %eax
	orb	$3, %ah
	movl	%eax, %edx
	jmp	.L526
	.p2align 4,,7
.L518:
	.loc 1 2584 0
	cmpl	$38400, %ebx
	.loc 1 2613 0
	movl	$15, %ebp
	.loc 1 2584 0
	je	.L502
	.loc 1 2616 0
	movw	$4097, %bp
	.loc 1 2584 0
	cmpl	$57600, %ebx
	jmp	.L533
	.p2align 4,,7
.L536:
	cmpl	$50, %ebx
	.loc 1 2586 0
	movb	$1, %bpl
	.loc 1 2584 0
	je	.L502
	.loc 1 2589 0
	movb	$2, %bpl
	.loc 1 2584 0
	cmpl	$75, %ebx
	jmp	.L533
.LFE360:
	.size	tty_serial_init, .-tty_serial_init
	.p2align 4,,15
	.type	tty_serial_ioctl, @function
tty_serial_ioctl:
.LFB361:
	.loc 1 2665 0
	subq	$8, %rsp
.LCFI128:
	.loc 1 2668 0
	cmpl	$1, %esi
	.loc 1 2665 0
	movq	%rdx, %rax
	.loc 1 2666 0
	movq	80(%rdi), %rdi
	.loc 1 2668 0
	je	.L540
	cmpl	$2, %esi
	jne	.L544
.LBB55:
	.loc 1 2679 0
	movl	(%rdx), %r9d
	testl	%r9d, %r9d
	jne	.L545
.LBE55:
	.loc 1 2686 0
	xorl	%eax, %eax
.L538:
	.loc 1 2687 0
	addq	$8, %rsp
	.p2align 4,,1
	ret
	.p2align 4,,7
.L545:
.LBB56:
	.loc 1 2680 0
	movl	(%rdi), %edi
	movl	$1, %esi
	call	tcsendbreak
.LBE56:
	.loc 1 2686 0
	xorl	%eax, %eax
	jmp	.L538
	.p2align 4,,7
.L540:
.LBB57:
	.loc 1 2672 0
	movl	8(%rdx), %ecx
	movl	12(%rax), %r8d
	movl	(%rax), %esi
	movl	4(%rdx), %edx
	movl	(%rdi), %edi
	call	tty_serial_init
.LBE57:
	.loc 1 2686 0
	xorl	%eax, %eax
	jmp	.L538
.L544:
	.loc 1 2684 0
	movl	$-95, %eax
	.loc 1 2687 0
	addq	$8, %rsp
	ret
.LFE361:
	.size	tty_serial_ioctl, .-tty_serial_ioctl
	.p2align 4,,15
	.type	pp_hw_mode, @function
pp_hw_mode:
.LFB363:
	.loc 1 2720 0
	movq	%rbx, -16(%rsp)
.LCFI129:
	movq	%rbp, -8(%rsp)
.LCFI130:
	.loc 1 2721 0
	movzwl	%si, %ebx
	.loc 1 2720 0
	subq	$24, %rsp
.LCFI131:
	.loc 1 2721 0
	cmpl	%ebx, 4(%rdi)
	.loc 1 2720 0
	movq	%rdi, %rbp
	.loc 1 2721 0
	je	.L547
.LBB58:
	.loc 1 2722 0
	movl	%ebx, 4(%rsp)
	.loc 1 2723 0
	movl	(%rdi), %edi
	leaq	4(%rsp), %rdx
	xorl	%eax, %eax
	movl	$1074032768, %esi
	call	ioctl
	.loc 1 2724 0
	xorl	%edx, %edx
	.loc 1 2723 0
	testl	%eax, %eax
	js	.L546
	.loc 1 2725 0
	movl	%ebx, 4(%rbp)
.L547:
.LBE58:
	.loc 1 2727 0
	movl	$1, %edx
.L546:
	.loc 1 2728 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	movl	%edx, %eax
	addq	$24, %rsp
	ret
.LFE363:
	.size	pp_hw_mode, .-pp_hw_mode
	.p2align 4,,15
	.type	pp_ioctl, @function
pp_ioctl:
.LFB364:
	.loc 1 2731 0
	pushq	%rbp
.LCFI132:
	.loc 1 2736 0
	leal	-3(%rsi), %eax
	.loc 1 2731 0
	pushq	%rbx
.LCFI133:
	movq	%rdx, %rbx
	.loc 1 2802 0
	movl	$-95, %edx
	.loc 1 2731 0
	subq	$8, %rsp
.LCFI134:
	.loc 1 2732 0
	movq	80(%rdi), %rdi
	.loc 1 2736 0
	cmpl	$8, %eax
	.loc 1 2733 0
	movl	(%rdi), %ebp
	.loc 1 2736 0
	ja	.L549
	mov	%eax, %eax
	jmp	*.L574(,%rax,8)
	.section	.rodata
	.align 8
	.align 4
.L574:
	.quad	.L551
	.quad	.L553
	.quad	.L555
	.quad	.L557
	.quad	.L559
	.quad	.L561
	.quad	.L564
	.quad	.L567
	.quad	.L570
	.text
	.p2align 4,,7
.L551:
	.loc 1 2738 0
	leaq	7(%rsp), %rdx
	movl	$2147577989, %esi
.L582:
	.loc 1 2761 0
	xorl	%eax, %eax
	movl	%ebp, %edi
	call	ioctl
	testl	%eax, %eax
	.loc 1 2762 0
	movl	$-95, %edx
	.loc 1 2761 0
	js	.L549
	.loc 1 2763 0
	movzbl	7(%rsp), %eax
	movb	%al, (%rbx)
.L550:
	.loc 1 2804 0
	xorl	%edx, %edx
.L549:
	.loc 1 2805 0
	addq	$8, %rsp
	movl	%edx, %eax
	popq	%rbx
	popq	%rbp
	ret
	.p2align 4,,7
.L570:
	.loc 1 2793 0
	movl	$64, %esi
.L580:
	call	pp_hw_mode
	testl	%eax, %eax
	je	.L550
.LBB59:
	.loc 1 2795 0
	movslq	8(%rbx),%rdx
	movq	(%rbx), %rsi
	movl	%ebp, %edi
	call	write
	jmp	.L576
	.p2align 4,,7
.L553:
.LBE59:
	.loc 1 2743 0
	movzbl	(%rbx), %eax
	.loc 1 2744 0
	leaq	7(%rsp), %rdx
	movl	$1073836166, %esi
	.loc 1 2743 0
	movb	%al, 7(%rsp)
.L577:
	.loc 1 2757 0
	xorl	%eax, %eax
	movl	%ebp, %edi
	call	ioctl
	testl	%eax, %eax
	.loc 1 2758 0
	movl	$-95, %edx
	.loc 1 2757 0
	js	.L549
	.loc 1 2804 0
	xorl	%edx, %edx
	jmp	.L549
	.p2align 4,,7
.L555:
	.loc 1 2748 0
	leaq	7(%rsp), %rdx
	xorl	%eax, %eax
	movl	$2147577987, %esi
	movl	%ebp, %edi
	call	ioctl
	testl	%eax, %eax
	.loc 1 2749 0
	movl	$-95, %edx
	.loc 1 2748 0
	js	.L549
	.loc 1 2753 0
	movzbl	7(%rsp), %eax
	orl	$-64, %eax
	.loc 1 2763 0
	movb	%al, (%rbx)
	jmp	.L550
	.p2align 4,,7
.L557:
	.loc 1 2756 0
	movzbl	(%rbx), %eax
	.loc 1 2757 0
	leaq	7(%rsp), %rdx
	movl	$1073836164, %esi
	.loc 1 2756 0
	movb	%al, 7(%rsp)
	jmp	.L577
	.p2align 4,,7
.L559:
	.loc 1 2761 0
	leaq	7(%rsp), %rdx
	movl	$2147577985, %esi
	jmp	.L582
	.p2align 4,,7
.L561:
	.loc 1 2766 0
	movl	$8256, %esi
.L583:
	.loc 1 2775 0
	call	pp_hw_mode
	testl	%eax, %eax
	je	.L550
.LBB60:
	.loc 1 2777 0
	movslq	8(%rbx),%rdx
	movq	(%rbx), %rsi
	movl	%ebp, %edi
	call	read
.L576:
.LBE60:
.LBB61:
	.loc 1 2796 0
	cmpl	%eax, 8(%rbx)
	.loc 1 2797 0
	movl	$-5, %edx
	.loc 1 2796 0
	jne	.L549
.LBE61:
	.loc 1 2804 0
	xorl	%edx, %edx
	jmp	.L549
	.p2align 4,,7
.L564:
	.loc 1 2775 0
	movl	$64, %esi
	.p2align 4,,3
	jmp	.L583
	.p2align 4,,7
.L567:
	.loc 1 2784 0
	movl	$8256, %esi
	.p2align 4,,5
	jmp	.L580
.LFE364:
	.size	pp_ioctl, .-pp_ioctl
	.p2align 4,,15
	.type	pp_close, @function
pp_close:
.LFB365:
	.loc 1 2808 0
	movq	%rbx, -16(%rsp)
.LCFI135:
	movq	%r12, -8(%rsp)
.LCFI136:
	subq	$24, %rsp
.LCFI137:
	.loc 1 2809 0
	movq	80(%rdi), %rbx
	.loc 1 2812 0
	movl	$256, %esi
	.loc 1 2810 0
	movl	(%rbx), %r12d
	.loc 1 2812 0
	movq	%rbx, %rdi
	call	pp_hw_mode
	.loc 1 2813 0
	movl	$28812, %esi
	xorl	%eax, %eax
	movl	%r12d, %edi
	call	ioctl
	.loc 1 2814 0
	movl	%r12d, %edi
	call	close
	.loc 1 2815 0
	movq	%rbx, %rdi
	movq	16(%rsp), %r12
	movq	8(%rsp), %rbx
	addq	$24, %rsp
	jmp	qemu_free
.LFE365:
	.size	pp_close, .-pp_close
	.p2align 4,,15
	.type	udp_chr_write, @function
udp_chr_write:
.LFB367:
	.loc 1 3240 0
	subq	$8, %rsp
.LCFI138:
	.loc 1 3241 0
	movq	80(%rdi), %rax
	.loc 1 3243 0
	movslq	%edx,%rdx
	movl	$16, %r9d
	xorl	%ecx, %ecx
	movl	(%rax), %edi
	leaq	4(%rax), %r8
	call	sendto
	.loc 1 3245 0
	addq	$8, %rsp
	ret
.LFE367:
	.size	udp_chr_write, .-udp_chr_write
	.p2align 4,,15
	.type	udp_chr_read_poll, @function
udp_chr_read_poll:
.LFB368:
	.loc 1 3248 0
	pushq	%rbp
.LCFI139:
	movq	%rdi, %rbp
	pushq	%rbx
.LCFI140:
	subq	$8, %rsp
.LCFI141:
	.loc 1 3250 0
	movq	80(%rdi), %rbx
	.loc 1 3260 0
	movq	%rbp, %rdi
	call	qemu_chr_can_read
	testl	%eax, %eax
	movl	%eax, 1052(%rbx)
	jle	.L588
	.p2align 4,,7
.L591:
	movl	1048(%rbx), %edx
	cmpl	1044(%rbx), %edx
	jge	.L588
	.loc 1 3258 0
	movslq	%edx,%rsi
	movq	%rbp, %rdi
	movl	$1, %edx
	leaq	20(%rsi,%rbx), %rsi
	call	qemu_chr_read
	.loc 1 3259 0
	incl	1048(%rbx)
	.loc 1 3260 0
	movq	%rbp, %rdi
	call	qemu_chr_can_read
	testl	%eax, %eax
	movl	%eax, 1052(%rbx)
	jg	.L591
	.p2align 4,,7
.L588:
	.loc 1 3263 0
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
.LFE368:
	.size	udp_chr_read_poll, .-udp_chr_read_poll
	.p2align 4,,15
	.type	udp_chr_read, @function
udp_chr_read:
.LFB369:
	.loc 1 3266 0
	pushq	%rbp
.LCFI142:
	movq	%rdi, %rbp
	pushq	%rbx
.LCFI143:
	subq	$8, %rsp
.LCFI144:
	.loc 1 3268 0
	movq	80(%rdi), %rbx
	.loc 1 3270 0
	movl	1052(%rbx), %r11d
	testl	%r11d, %r11d
	jne	.L601
.L593:
	.loc 1 3283 0
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.p2align 4,,7
.L601:
	.loc 1 3272 0
	movl	(%rbx), %edi
	leaq	20(%rbx), %rsi
	xorl	%ecx, %ecx
	movl	$1024, %edx
	call	recv
	.loc 1 3274 0
	testl	%eax, %eax
	.loc 1 3272 0
	movl	%eax, 1044(%rbx)
	.loc 1 3274 0
	jle	.L600
	.loc 1 3281 0
	movl	1052(%rbx), %r10d
	.loc 1 3277 0
	movl	$0, 1048(%rbx)
	.loc 1 3281 0
	testl	%r10d, %r10d
	jle	.L593
	testl	%eax, %eax
	jle	.L593
	xorl	%eax, %eax
	.p2align 4,,7
.L598:
	.loc 1 3279 0
	movslq	%eax,%rsi
	movl	$1, %edx
	movq	%rbp, %rdi
	leaq	20(%rsi,%rbx), %rsi
	call	qemu_chr_read
	.loc 1 3280 0
	incl	1048(%rbx)
	.loc 1 3281 0
	movq	%rbp, %rdi
	call	qemu_chr_can_read
	testl	%eax, %eax
	movl	%eax, 1052(%rbx)
	jle	.L593
	movl	1048(%rbx), %eax
	cmpl	1044(%rbx), %eax
	jl	.L598
	jmp	.L593
.L600:
	movl	%eax, 1048(%rbx)
	jmp	.L593
.LFE369:
	.size	udp_chr_read, .-udp_chr_read
	.p2align 4,,15
	.type	udp_chr_update_read_handler, @function
udp_chr_update_read_handler:
.LFB370:
	.loc 1 3286 0
	.loc 1 3287 0
	movq	80(%rdi), %rax
	.loc 1 3289 0
	movl	(%rax), %eax
	testl	%eax, %eax
	js	.L602
	.loc 1 3290 0
	movq	%rdi, %r8
	xorl	%ecx, %ecx
	movl	$udp_chr_read, %edx
	movl	$udp_chr_read_poll, %esi
	movl	%eax, %edi
	jmp	qemu_set_fd_handler2
	.p2align 4,,7
.L602:
	rep ; ret
.LFE370:
	.size	udp_chr_update_read_handler, .-udp_chr_update_read_handler
	.p2align 4,,15
	.type	tcp_chr_write, @function
tcp_chr_write:
.LFB372:
	.loc 1 3367 0
	.loc 1 3368 0
	movq	80(%rdi), %rax
	.loc 1 3369 0
	movl	8(%rax), %ecx
	testl	%ecx, %ecx
	jne	.L608
	.loc 1 3375 0
	movl	%edx, %eax
	ret
	.p2align 4,,7
.L608:
.LBB62:
	.loc 1 2319 0
	movl	(%rax), %edi
.LBB63:
	.loc 1 2320 0
	jmp	unix_write
.LBE63:
.LBE62:
.LFE372:
	.size	tcp_chr_write, .-tcp_chr_write
	.p2align 4,,15
	.type	tcp_chr_read_poll, @function
tcp_chr_read_poll:
.LFB373:
	.loc 1 3378 0
	pushq	%rbx
.LCFI145:
	.loc 1 3380 0
	movq	80(%rdi), %rbx
	.loc 1 3382 0
	xorl	%eax, %eax
	.loc 1 3381 0
	movl	8(%rbx), %esi
	testl	%esi, %esi
	jne	.L611
	.loc 1 3385 0
	popq	%rbx
	ret
	.p2align 4,,7
.L611:
	.loc 1 3383 0
	call	qemu_chr_can_read
	movl	%eax, 12(%rbx)
	.loc 1 3385 0
	popq	%rbx
	.p2align 4,,5
	ret
.LFE373:
	.size	tcp_chr_read_poll, .-tcp_chr_read_poll
	.p2align 4,,15
	.type	tcp_chr_read, @function
tcp_chr_read:
.LFB375:
	.loc 1 3438 0
	movq	%r12, -32(%rsp)
.LCFI146:
	movq	%rbx, -48(%rsp)
.LCFI147:
	movq	%rdi, %r12
	movq	%rbp, -40(%rsp)
.LCFI148:
	movq	%r13, -24(%rsp)
.LCFI149:
	movq	%r14, -16(%rsp)
.LCFI150:
	movq	%r15, -8(%rsp)
.LCFI151:
	subq	$1096, %rsp
.LCFI152:
	.loc 1 3440 0
	movq	80(%rdi), %rbx
	.loc 1 3444 0
	movl	8(%rbx), %edi
	testl	%edi, %edi
	je	.L612
	movl	12(%rbx), %eax
	testl	%eax, %eax
	jle	.L612
	.loc 1 3448 0
	cmpl	$1023, %eax
	.loc 1 3446 0
	movl	$1024, %edx
	.loc 1 3449 0
	leaq	16(%rsp), %r13
	movl	(%rbx), %edi
	.loc 1 3448 0
	cmovle	%eax, %edx
	.loc 1 3449 0
	xorl	%ecx, %ecx
	movslq	%edx,%rdx
	movq	%r13, %rsi
	call	recv
	.loc 1 3450 0
	testl	%eax, %eax
	.loc 1 3449 0
	movl	%eax, 12(%rsp)
	.loc 1 3450 0
	movl	%eax, %edx
	je	.L640
	.loc 1 3459 0
	jle	.L612
	.loc 1 3460 0
	movl	16(%rbx), %eax
	testl	%eax, %eax
	je	.L620
.LBB64:
.LBB65:
	.loc 1 3403 0
	xorl	%r14d, %r14d
	.loc 1 3405 0
	xorl	%ebp, %ebp
	.loc 1 3406 0
	cmpl	$1, %eax
.LBE65:
	.loc 1 3392 0
	leaq	12(%rsp), %r15
.LBB66:
	.loc 1 3406 0
	jle	.L624
	.p2align 4,,7
.L644:
	.loc 1 3407 0
	movslq	%ebp,%rdx
	movzbl	(%rdx,%r13), %ecx
	cmpb	$-1, %cl
	je	.L641
.L625:
	.loc 1 3414 0
	cmpb	$-13, (%rdx,%r13)
	je	.L642
.L628:
	.loc 1 3419 0
	incl	%eax
	movl	%eax, 16(%rbx)
.L627:
	.loc 1 3421 0
	cmpl	$3, 16(%rbx)
	jle	.L623
	.loc 1 3422 0
	movl	$1, 16(%rbx)
	.p2align 4,,7
.L623:
	.loc 1 3405 0
	incl	%ebp
	cmpl	%ebp, (%r15)
	jle	.L643
	movl	16(%rbx), %eax
	.loc 1 3406 0
	cmpl	$1, %eax
	jg	.L644
.L624:
	.loc 1 3425 0
	movslq	%ebp,%rax
	movzbl	(%rax,%r13), %edx
	cmpb	$-1, %dl
	je	.L645
	.loc 1 3428 0
	cmpl	%ebp, %r14d
	je	.L633
	.loc 1 3429 0
	movslq	%r14d,%rax
	movb	%dl, (%rax,%r13)
.L633:
	.loc 1 3430 0
	incl	%r14d
	jmp	.L623
	.p2align 4,,7
.L640:
.LBE66:
.LBE64:
	.loc 1 3453 0
	movl	4(%rbx), %edi
	.loc 1 3452 0
	movl	$0, 8(%rbx)
	.loc 1 3453 0
	testl	%edi, %edi
	js	.L617
	.loc 1 3454 0
	movq	%r12, %rcx
	xorl	%edx, %edx
	movl	$tcp_chr_accept, %esi
	call	qemu_set_fd_handler
.L617:
	.loc 1 3456 0
	movl	(%rbx), %edi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	xorl	%esi, %esi
	call	qemu_set_fd_handler
	.loc 1 3457 0
	movl	(%rbx), %edi
	call	close
	.loc 1 3458 0
	movl	$-1, (%rbx)
	.p2align 4,,7
.L612:
	.loc 1 3465 0
	movq	1048(%rsp), %rbx
	movq	1056(%rsp), %rbp
	movq	1064(%rsp), %r12
	movq	1072(%rsp), %r13
	movq	1080(%rsp), %r14
	movq	1088(%rsp), %r15
	addq	$1096, %rsp
	ret
	.p2align 4,,7
.L642:
.LBB67:
.LBB68:
	.loc 1 3414 0
	cmpl	$2, %eax
	jne	.L628
	.loc 1 3416 0
	xorl	%esi, %esi
	movq	%r12, %rdi
	call	qemu_chr_event
	.loc 1 3417 0
	movl	16(%rbx), %eax
	incl	%eax
	movl	%eax, 16(%rbx)
	jmp	.L628
.L643:
	.loc 1 3434 0
	movl	%r14d, (%r15)
	movl	12(%rsp), %edx
.L620:
.LBE68:
.LBE67:
	.loc 1 3462 0
	testl	%edx, %edx
	jle	.L612
	.loc 1 3463 0
	movq	%r13, %rsi
	movq	%r12, %rdi
	call	qemu_chr_read
	jmp	.L612
	.p2align 4,,7
.L645:
.LBB69:
.LBB70:
	.loc 1 3426 0
	movl	$2, 16(%rbx)
	.p2align 4,,2
	jmp	.L623
	.p2align 4,,7
.L641:
	.loc 1 3407 0
	cmpl	$2, %eax
	.p2align 4,,7
	jne	.L625
	.loc 1 3409 0
	cmpl	%ebp, %r14d
	.p2align 4,,5
	je	.L626
	.loc 1 3410 0
	movslq	%r14d,%rax
	movb	%cl, (%rax,%r13)
.L626:
	.loc 1 3411 0
	incl	%r14d
	.loc 1 3412 0
	movl	$1, 16(%rbx)
	jmp	.L627
.LBE70:
.LBE69:
.LFE375:
	.size	tcp_chr_read, .-tcp_chr_read
	.p2align 4,,15
	.type	tcp_chr_connect, @function
tcp_chr_connect:
.LFB376:
	.loc 1 3468 0
	pushq	%rbx
.LCFI153:
	.loc 1 3470 0
	movq	80(%rdi), %rax
	.loc 1 3468 0
	movq	%rdi, %rbx
	.loc 1 3473 0
	movq	%rdi, %r8
	xorl	%ecx, %ecx
	movl	$tcp_chr_read, %edx
	movl	$tcp_chr_read_poll, %esi
	movl	(%rax), %edi
	.loc 1 3472 0
	movl	$1, 8(%rax)
	.loc 1 3473 0
	call	qemu_set_fd_handler2
	.loc 1 3475 0
	movq	%rbx, %rdi
	popq	%rbx
	jmp	qemu_chr_reset
.LFE376:
	.size	tcp_chr_connect, .-tcp_chr_connect
	.p2align 4,,15
	.type	socket_set_nodelay, @function
socket_set_nodelay:
.LFB378:
	.loc 1 3494 0
	subq	$8, %rsp
.LCFI154:
	.loc 1 3496 0
	movl	$4, %r8d
	movl	$1, %edx
	leaq	4(%rsp), %rcx
	movl	$6, %esi
	.loc 1 3495 0
	movl	$1, 4(%rsp)
	.loc 1 3496 0
	call	setsockopt
	addq	$8, %rsp
	ret
.LFE378:
	.size	socket_set_nodelay, .-socket_set_nodelay
	.p2align 4,,15
	.type	tcp_chr_accept, @function
tcp_chr_accept:
.LFB379:
	.loc 1 3500 0
	pushq	%r13
.LCFI155:
	pushq	%r12
.LCFI156:
	movq	%rdi, %r12
	pushq	%rbp
.LCFI157:
	pushq	%rbx
.LCFI158:
	subq	$168, %rsp
.LCFI159:
	.loc 1 3502 0
	movq	80(%rdi), %rbp
	leaq	16(%rsp), %r13
	jmp	.L649
	.p2align 4,,7
.L660:
	.loc 1 3514 0
	movl	$110, 12(%rsp)
	.loc 1 3522 0
	movl	4(%rbp), %edi
	.loc 1 3515 0
	leaq	32(%rsp), %rsi
	.loc 1 3522 0
	leaq	12(%rsp), %rdx
	call	accept
	.loc 1 3523 0
	testl	%eax, %eax
	.loc 1 3522 0
	movl	%eax, %ebx
	.loc 1 3523 0
	jns	.L659
.L661:
	call	__errno_location
	cmpl	$4, (%rax)
	.p2align 4,,2
	jne	.L648
.L649:
	.loc 1 3513 0
	movl	24(%rbp), %r10d
	testl	%r10d, %r10d
	.p2align 4,,2
	jne	.L660
	.loc 1 3519 0
	movl	$16, 12(%rsp)
	.loc 1 3522 0
	movl	4(%rbp), %edi
	.loc 1 3520 0
	leaq	144(%rsp), %rsi
	.loc 1 3522 0
	leaq	12(%rsp), %rdx
	call	accept
	.loc 1 3523 0
	testl	%eax, %eax
	.loc 1 3522 0
	movl	%eax, %ebx
	.loc 1 3523 0
	js	.L661
.L659:
	.loc 1 3526 0
	movl	16(%rbp), %r9d
	testl	%r9d, %r9d
	jne	.L662
	.loc 1 3531 0
	movl	%ebx, %edi
	call	socket_set_nonblock
	.loc 1 3532 0
	movl	20(%rbp), %r8d
	testl	%r8d, %r8d
	jne	.L663
.L658:
	.loc 1 3535 0
	movl	4(%rbp), %edi
	.loc 1 3534 0
	movl	%ebx, (%rbp)
	.loc 1 3535 0
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	xorl	%esi, %esi
	call	qemu_set_fd_handler
	.loc 1 3536 0
	movq	%r12, %rdi
	call	tcp_chr_connect
.L648:
	.loc 1 3537 0
	addq	$168, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
.L662:
.LBB71:
.LBB72:
	.loc 1 3484 0
	xorl	%ecx, %ecx
	movq	%r13, %rsi
	movl	$3, %edx
	movl	%eax, %edi
	.loc 1 3483 0
	movb	$-1, 16(%rsp)
	movb	$-5, 17(%rsp)
	movb	$1, 18(%rsp)
	.loc 1 3484 0
	call	send
	.loc 1 3486 0
	xorl	%ecx, %ecx
	movq	%r13, %rsi
	movl	%ebx, %edi
	movl	$3, %edx
	.loc 1 3485 0
	movb	$-1, 16(%rsp)
	movb	$-5, 17(%rsp)
	movb	$3, 18(%rsp)
	.loc 1 3486 0
	call	send
	.loc 1 3488 0
	xorl	%ecx, %ecx
	movq	%r13, %rsi
	movl	%ebx, %edi
	movl	$3, %edx
	.loc 1 3487 0
	movb	$-1, 16(%rsp)
	movb	$-5, 17(%rsp)
	movb	$0, 18(%rsp)
	.loc 1 3488 0
	call	send
	.loc 1 3490 0
	xorl	%ecx, %ecx
	movl	$3, %edx
	movq	%r13, %rsi
	movl	%ebx, %edi
	.loc 1 3489 0
	movb	$-1, 16(%rsp)
	movb	$-3, 17(%rsp)
	movb	$0, 18(%rsp)
	.loc 1 3490 0
	call	send
.LBE72:
.LBE71:
	.loc 1 3531 0
	movl	%ebx, %edi
	call	socket_set_nonblock
	.loc 1 3532 0
	movl	20(%rbp), %r8d
	testl	%r8d, %r8d
	je	.L658
.L663:
	.loc 1 3533 0
	movl	%ebx, %edi
	call	socket_set_nodelay
	.p2align 4,,2
	jmp	.L658
.LFE379:
	.size	tcp_chr_accept, .-tcp_chr_accept
	.p2align 4,,15
	.type	tcp_chr_close, @function
tcp_chr_close:
.LFB380:
	.loc 1 3540 0
	pushq	%rbx
.LCFI160:
	.loc 1 3541 0
	movq	80(%rdi), %rbx
	.loc 1 3542 0
	movl	(%rbx), %edi
	testl	%edi, %edi
	js	.L665
	.loc 1 3543 0
	call	close
.L665:
	.loc 1 3544 0
	movl	4(%rbx), %edi
	testl	%edi, %edi
	js	.L666
	.loc 1 3545 0
	call	close
.L666:
	.loc 1 3546 0
	movq	%rbx, %rdi
	popq	%rbx
	jmp	qemu_free
.LFE380:
	.size	tcp_chr_close, .-tcp_chr_close
	.p2align 4,,15
.globl qemu_chr_close
	.type	qemu_chr_close, @function
qemu_chr_close:
.LFB383:
	.loc 1 3771 0
	.loc 1 3772 0
	movq	64(%rdi), %rax
	testq	%rax, %rax
	jne	.L669
	rep ; ret
	.p2align 4,,7
.L669:
	.loc 1 3773 0
	movq	%rax, %r11
	jmp	*%r11
.LFE383:
	.size	qemu_chr_close, .-qemu_chr_close
	.p2align 4,,15
	.type	get_str_sep, @function
get_str_sep:
.LFB386:
	.loc 1 3839 0
	movq	%rbx, -40(%rsp)
.LCFI161:
	movq	%rbp, -32(%rsp)
.LCFI162:
	movl	%esi, %ebx
	movq	%r13, -16(%rsp)
.LCFI163:
	movq	%r14, -8(%rsp)
.LCFI164:
	movl	%ecx, %esi
	movq	%r12, -24(%rsp)
.LCFI165:
	subq	$40, %rsp
.LCFI166:
	.loc 1 3842 0
	movq	(%rdx), %r12
	.loc 1 3839 0
	movq	%rdi, %r14
	movq	%rdx, %r13
	.loc 1 3843 0
	movq	%r12, %rdi
	call	strchr
	movq	%rax, %rbp
	.loc 1 3845 0
	movl	$-1, %eax
	.loc 1 3844 0
	testq	%rbp, %rbp
	je	.L670
	.loc 1 3846 0
	movl	%ebp, %edx
	.loc 1 3847 0
	incq	%rbp
	.loc 1 3846 0
	subl	%r12d, %edx
	.loc 1 3848 0
	testl	%ebx, %ebx
	jle	.L674
	.loc 1 3849 0
	leal	(%rbx,%rax), %eax
	.loc 1 3851 0
	movq	%r12, %rsi
	movq	%r14, %rdi
	.loc 1 3850 0
	cmpl	%edx, %eax
	cmovl	%eax, %edx
	.loc 1 3851 0
	movslq	%edx,%rbx
	movq	%rbx, %rdx
	call	memcpy
	.loc 1 3852 0
	movb	$0, (%rbx,%r14)
.L674:
	.loc 1 3854 0
	movq	%rbp, (%r13)
	.loc 1 3855 0
	xorl	%eax, %eax
.L670:
	.loc 1 3856 0
	movq	(%rsp), %rbx
	movq	8(%rsp), %rbp
	movq	16(%rsp), %r12
	movq	24(%rsp), %r13
	movq	32(%rsp), %r14
	addq	$40, %rsp
	ret
.LFE386:
	.size	get_str_sep, .-get_str_sep
	.p2align 4,,15
.globl parse_host_port
	.type	parse_host_port, @function
parse_host_port:
.LFB388:
	.loc 1 3898 0
	pushq	%r12
.LCFI167:
	.loc 1 3905 0
	movl	$58, %ecx
	.loc 1 3898 0
	pushq	%rbp
.LCFI168:
	movq	%rdi, %rbp
	pushq	%rbx
.LCFI169:
	subq	$528, %rsp
.LCFI170:
	.loc 1 3905 0
	leaq	16(%rsp), %r12
	leaq	8(%rsp), %rdx
	.loc 1 3904 0
	movq	%rsi, 8(%rsp)
	.loc 1 3905 0
	movl	$512, %esi
	movq	%r12, %rdi
	call	get_str_sep
	testl	%eax, %eax
	.loc 1 3906 0
	movl	$-1, %edx
	.loc 1 3905 0
	js	.L676
	.loc 1 3907 0
	movw	$2, (%rbp)
	.loc 1 3908 0
	movzbl	16(%rsp), %ebx
	testb	%bl, %bl
	je	.L687
	.loc 1 3911 0
	call	__ctype_b_loc
	movq	(%rax), %rax
	movsbq	%bl,%rdx
	testb	$8, 1(%rax,%rdx,2)
	je	.L680
	.loc 1 3912 0
	leaq	4(%rbp), %rsi
	movq	%r12, %rdi
	call	inet_aton
	testl	%eax, %eax
	.loc 1 3913 0
	movl	$-1, %edx
	.loc 1 3912 0
	je	.L676
	.p2align 4,,7
.L679:
	.loc 1 3920 0
	movq	8(%rsp), %rdi
	xorl	%edx, %edx
	movq	%rsp, %rsi
	call	strtol
	.loc 1 3921 0
	movq	8(%rsp), %rcx
	cmpq	%rcx, (%rsp)
	.loc 1 3922 0
	movl	$-1, %edx
	.loc 1 3921 0
	je	.L676
.LBB73:
	.loc 1 3923 0
#APP
	rorw $8, %ax
#NO_APP
.LBE73:
	.loc 1 3924 0
	xorl	%edx, %edx
	.loc 1 3923 0
	movw	%ax, 2(%rbp)
.L676:
	.loc 1 3925 0
	addq	$528, %rsp
	movl	%edx, %eax
	popq	%rbx
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,7
.L687:
	.loc 1 3909 0
	movl	$0, 4(%rbp)
	jmp	.L679
	.p2align 4,,7
.L680:
	.loc 1 3915 0
	movq	%r12, %rdi
	call	gethostbyname
	testq	%rax, %rax
	.loc 1 3916 0
	movl	$-1, %edx
	.loc 1 3915 0
	je	.L676
	.loc 1 3917 0
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	movl	%eax, 4(%rbp)
	jmp	.L679
.LFE388:
	.size	parse_host_port, .-parse_host_port
	.section	.rodata.str1.1
.LC124:
	.string	":0"
	.text
	.p2align 4,,15
.globl parse_host_src_port
	.type	parse_host_src_port, @function
parse_host_src_port:
.LFB387:
	.loc 1 3861 0
	movq	%rbx, -32(%rsp)
.LCFI171:
	movq	%rbp, -24(%rsp)
.LCFI172:
	movq	%rdx, %rbx
	movq	%r12, -16(%rsp)
.LCFI173:
	movq	%r13, -8(%rsp)
.LCFI174:
	movq	%rdi, %r12
	subq	$40, %rsp
.LCFI175:
	.loc 1 3862 0
	movq	%rdx, %rdi
	.loc 1 3861 0
	movq	%rsi, %r13
	.loc 1 3862 0
	call	__strdup
	.loc 1 3872 0
	movl	$44, %esi
	movq	%rax, %rdi
	.loc 1 3862 0
	movq	%rax, %rbp
	.loc 1 3872 0
	call	strchr
	testq	%rax, %rax
	je	.L689
	.loc 1 3873 0
	movb	$0, (%rax)
.L689:
	.loc 1 3875 0
	movq	%rbx, %rdi
	movl	$64, %esi
	call	strchr
	testq	%rax, %rax
	movq	%rax, %rbx
	je	.L690
	.loc 1 3876 0
	movb	$0, (%rax)
	.loc 1 3877 0
	incq	%rbx
.L690:
	.loc 1 3880 0
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	parse_host_port
	testl	%eax, %eax
	js	.L692
	.loc 1 3883 0
	testq	%rbx, %rbx
	je	.L694
	cmpb	$0, (%rbx)
	.p2align 4,,5
	je	.L694
	.loc 1 3886 0
	movq	%rbx, %rsi
	movq	%r13, %rdi
	call	parse_host_port
	testl	%eax, %eax
	js	.L692
.L696:
	.loc 1 3889 0
	movq	%rbp, %rdi
	call	free
	.loc 1 3895 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	.loc 1 3890 0
	xorl	%eax, %eax
	.loc 1 3895 0
	movq	24(%rsp), %r12
	movq	32(%rsp), %r13
	addq	$40, %rsp
	ret
	.p2align 4,,7
.L694:
	.loc 1 3884 0
	movl	$.LC124, %ebx
	.loc 1 3886 0
	movq	%r13, %rdi
	movq	%rbx, %rsi
	call	parse_host_port
	testl	%eax, %eax
	jns	.L696
.L692:
	.loc 1 3893 0
	movq	%rbp, %rdi
	call	free
	.loc 1 3895 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	.loc 1 3894 0
	movl	$-1, %eax
	.loc 1 3895 0
	movq	24(%rsp), %r12
	movq	32(%rsp), %r13
	addq	$40, %rsp
	ret
.LFE387:
	.size	parse_host_src_port, .-parse_host_src_port
	.section	.rodata.str1.1
.LC125:
	.string	"server"
.LC126:
	.string	"nowait"
.LC127:
	.string	"nodelay"
.LC128:
	.string	"Unknown option: %s\n"
	.section	.rodata.str1.8
	.align 8
.LC129:
	.string	"QEMU waiting for connection on: %s\n"
	.text
	.p2align 4,,15
	.type	qemu_chr_open_tcp, @function
qemu_chr_open_tcp:
.LFB381:
	.loc 1 3552 0
	pushq	%r15
.LCFI176:
	.loc 1 3556 0
	xorl	%r15d, %r15d
	.loc 1 3552 0
	pushq	%r14
.LCFI177:
	movl	%edx, %r14d
	pushq	%r13
.LCFI178:
	.loc 1 3554 0
	xorl	%r13d, %r13d
	.loc 1 3552 0
	pushq	%r12
.LCFI179:
	movq	%rdi, %r12
	pushq	%rbp
.LCFI180:
	pushq	%rbx
.LCFI181:
	subq	$296, %rsp
.LCFI182:
	.loc 1 3568 0
	testl	%edx, %edx
	.loc 1 3552 0
	movl	%esi, 40(%rsp)
	.loc 1 3553 0
	movq	$0, 32(%rsp)
	.loc 1 3557 0
	movl	$1, 28(%rsp)
	.loc 1 3558 0
	movl	$0, 24(%rsp)
	.loc 1 3568 0
	je	.L698
	.loc 1 3569 0
	leaq	160(%rsp), %rax
	.loc 1 3570 0
	movl	$110, 12(%rsp)
.LBB74:
.LBB75:
	.loc 1 3933 0
	movl	$108, %ebx
.LBE75:
.LBE74:
	.loc 1 3569 0
	movq	%rax, 16(%rsp)
.LBB76:
.LBB77:
	.loc 1 3933 0
	call	strlen
	.loc 1 3934 0
	movl	$44, %esi
	.loc 1 3933 0
	cmpq	$108, %rax
	.loc 1 3934 0
	movq	%r12, %rdi
	.loc 1 3933 0
	cmovbe	%eax, %ebx
	.loc 1 3934 0
	call	strchr
	.loc 1 3935 0
	testq	%rax, %rax
	je	.L702
	.loc 1 3936 0
	subq	%r12, %rax
	movslq	%ebx,%rdx
	cmpq	%rdx, %rax
	movq	%rdx, %rbx
	cmovle	%rax, %rbx
.L702:
	.loc 1 3938 0
	movq	16(%rsp), %rdi
	movl	$110, %edx
	xorl	%esi, %esi
	call	memset
	.loc 1 3940 0
	movq	16(%rsp), %rcx
	.loc 1 3941 0
	movslq	%ebx,%rdx
	movq	%r12, %rsi
	movq	%rcx, %rdi
	.loc 1 3940 0
	movw	$1, (%rcx)
	.loc 1 3941 0
	addq	$2, %rdi
	call	memcpy
.L706:
.LBE77:
.LBE76:
	.loc 1 3582 0
	movq	%r12, %r8
	.p2align 4,,7
.L750:
	.loc 1 3593 0
	movq	%r8, %rdi
	movl	$44, %esi
	call	strchr
	testq	%rax, %rax
	movq	%rax, %r8
	je	.L751
.L716:
	.loc 1 3584 0
	incq	%r8
	.loc 1 3585 0
	movl	$6, %eax
	movl	$.LC125, %edi
	cld
	movq	%r8, %rsi
	movq	%rax, %rcx
	repz
	cmpsb
	jne	.L710
	.loc 1 3593 0
	movq	%r8, %rdi
	movl	$44, %esi
	.loc 1 3586 0
	movl	$1, %r15d
	.loc 1 3593 0
	call	strchr
	testq	%rax, %rax
	movq	%rax, %r8
	jne	.L716
.L751:
	.loc 1 3597 0
	testl	%r15d, %r15d
	movl	$0, %eax
	cmovne	28(%rsp), %eax
	.loc 1 3599 0
	movl	$104, %edi
	.loc 1 3597 0
	movl	%eax, 28(%rsp)
	.loc 1 3599 0
	call	qemu_mallocz
	.loc 1 3600 0
	testq	%rax, %rax
	.loc 1 3599 0
	movq	%rax, 32(%rsp)
	.loc 1 3600 0
	je	.L742
	.loc 1 3602 0
	movl	$28, %edi
	call	qemu_mallocz
	.loc 1 3603 0
	testq	%rax, %rax
	.loc 1 3602 0
	movq	%rax, %r13
	.loc 1 3603 0
	je	.L742
	.loc 1 3607 0
	testl	%r14d, %r14d
	je	.L720
	.loc 1 3608 0
	xorl	%edx, %edx
	movl	$1, %esi
	movl	$1, %edi
.L749:
	.loc 1 3611 0
	call	socket
	.loc 1 3613 0
	testl	%eax, %eax
	.loc 1 3611 0
	movl	%eax, %ebp
	.loc 1 3613 0
	js	.L742
	.loc 1 3616 0
	movl	28(%rsp), %eax
	testl	%eax, %eax
	je	.L752
.L723:
	.loc 1 3619 0
	movl	$0, 8(%r13)
	.loc 1 3620 0
	movl	$-1, (%r13)
	.loc 1 3621 0
	movl	$-1, 4(%r13)
	.loc 1 3622 0
	movl	%r14d, 24(%r13)
	.loc 1 3623 0
	movl	24(%rsp), %eax
	testl	%eax, %eax
	setne	%dl
	xorl	%eax, %eax
	testl	%r14d, %r14d
	sete	%al
	andl	%edx, %eax
	.loc 1 3629 0
	testl	%r15d, %r15d
	.loc 1 3623 0
	movl	%eax, 20(%r13)
	.loc 1 3625 0
	movq	32(%rsp), %rax
	movq	%r13, 80(%rax)
	.loc 1 3626 0
	movq	$tcp_chr_write, (%rax)
	.loc 1 3627 0
	movq	$tcp_chr_close, 64(%rax)
	.loc 1 3629 0
	je	.L731
	.loc 1 3632 0
	testl	%r14d, %r14d
	jne	.L753
	.loc 1 3641 0
	leaq	44(%rsp), %rcx
	movl	$4, %r8d
	movl	$2, %edx
	movl	$1, %esi
	movl	%ebp, %edi
	.loc 1 3640 0
	movl	$1, 44(%rsp)
	.loc 1 3641 0
	call	setsockopt
.L726:
	.loc 1 3644 0
	movl	12(%rsp), %edx
	movq	16(%rsp), %rsi
	movl	%ebp, %edi
	call	bind
	.loc 1 3645 0
	testl	%eax, %eax
	js	.L705
	.loc 1 3648 0
	xorl	%esi, %esi
	movl	%ebp, %edi
	call	listen
	.loc 1 3649 0
	testl	%eax, %eax
	js	.L705
	.loc 1 3652 0
	movl	%ebp, 4(%r13)
	.loc 1 3653 0
	movq	32(%rsp), %rcx
	xorl	%edx, %edx
	movl	$tcp_chr_accept, %esi
	movl	%ebp, %edi
	call	qemu_set_fd_handler
	.loc 1 3654 0
	movl	40(%rsp), %ebx
	testl	%ebx, %ebx
	je	.L730
	.loc 1 3655 0
	movl	$1, 16(%r13)
.L730:
	.loc 1 3684 0
	testl	%r15d, %r15d
	setne	%dl
	xorl	%eax, %eax
	cmpl	$0, 28(%rsp)
	setne	%al
	testl	%edx, %eax
	jne	.L754
.L741:
	.loc 1 3690 0
	movq	32(%rsp), %rax
	.loc 1 3697 0
	addq	$296, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.p2align 4,,7
.L710:
	.loc 1 3587 0
	movl	$6, %eax
	movl	$.LC126, %edi
	movq	%r8, %rsi
	cld
	movq	%rax, %rcx
	repz
	cmpsb
	jne	.L712
	.loc 1 3588 0
	movl	$0, 28(%rsp)
	jmp	.L750
	.p2align 4,,7
.L712:
	.loc 1 3589 0
	movl	$6, %eax
	movl	$.LC127, %edi
	movq	%r8, %rsi
	cld
	movq	%rax, %rcx
	repz
	cmpsb
	jne	.L714
	.loc 1 3590 0
	movl	$1, 24(%rsp)
	jmp	.L750
.L698:
	.loc 1 3576 0
	leaq	272(%rsp), %rax
	.loc 1 3578 0
	movq	%rdi, %rsi
	.loc 1 3577 0
	movl	$16, 12(%rsp)
	.loc 1 3578 0
	movq	%rax, %rdi
	.loc 1 3576 0
	movq	%rax, 16(%rsp)
	.loc 1 3578 0
	call	parse_host_port
	testl	%eax, %eax
	jns	.L706
.L742:
	.loc 1 3694 0
	movq	%r13, %rdi
	call	qemu_free
	.loc 1 3695 0
	movq	32(%rsp), %rdi
	call	qemu_free
	.loc 1 3696 0
	xorl	%eax, %eax
.L755:
	.loc 1 3697 0
	addq	$296, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L720:
	.loc 1 3611 0
	xorl	%edx, %edx
	movl	$1, %esi
	movl	$2, %edi
	jmp	.L749
.L731:
	.loc 1 3658 0
	movl	12(%rsp), %edx
	movq	16(%rsp), %rsi
	movl	%ebp, %edi
	call	connect
	.loc 1 3659 0
	testl	%eax, %eax
	jns	.L733
	.loc 1 3660 0
	call	__errno_location
	movl	(%rax), %ecx
	.loc 1 3661 0
	cmpl	$4, %ecx
	sete	%dl
	cmpl	$11, %ecx
	sete	%al
	orl	%edx, %eax
	testb	$1, %al
	jne	.L731
	.loc 1 3662 0
	cmpl	$115, %ecx
	jne	.L705
.L732:
	.loc 1 3676 0
	movl	%ebp, (%r13)
	.loc 1 3677 0
	movl	%ebp, %edi
	call	socket_set_nodelay
	.loc 1 3678 0
	movl	8(%r13), %r11d
	testl	%r11d, %r11d
	je	.L739
	.loc 1 3679 0
	movq	32(%rsp), %rdi
	call	tcp_chr_connect
	jmp	.L730
.L753:
.LBB78:
	.loc 1 3634 0
	leaq	48(%rsp), %rbx
	leaq	162(%rsp), %rsi
	movl	$108, %edx
	movq	%rbx, %rdi
	call	strncpy
	.loc 1 3636 0
	movq	%rbx, %rdi
	.loc 1 3635 0
	movb	$0, 156(%rsp)
	.loc 1 3636 0
	call	unlink
	jmp	.L726
.L705:
.LBE78:
	.loc 1 3692 0
	testl	%ebp, %ebp
	js	.L742
	.loc 1 3693 0
	movl	%ebp, %edi
	.p2align 4,,7
	call	close
	.loc 1 3694 0
	movq	%r13, %rdi
	call	qemu_free
	.loc 1 3695 0
	movq	32(%rsp), %rdi
	call	qemu_free
	.loc 1 3696 0
	xorl	%eax, %eax
	jmp	.L755
.L714:
	.loc 1 3592 0
	movq	%r8, %rsi
	movl	$.LC128, %edi
	xorl	%eax, %eax
	call	printf
	.loc 1 3694 0
	movq	%r13, %rdi
	call	qemu_free
	.loc 1 3695 0
	movq	32(%rsp), %rdi
	call	qemu_free
	.loc 1 3696 0
	xorl	%eax, %eax
	jmp	.L755
.L752:
	.loc 1 3617 0
	movl	%ebp, %edi
	call	socket_set_nonblock
	.p2align 4,,4
	jmp	.L723
.L754:
	.loc 1 3685 0
	movq	%r12, %rsi
	movl	$.LC129, %edi
	xorl	%eax, %eax
	call	printf
	.loc 1 3686 0
	movq	32(%rsp), %rdi
	call	tcp_chr_accept
	.loc 1 3687 0
	movl	4(%r13), %edi
	call	socket_set_nonblock
	jmp	.L741
.L739:
	.loc 1 3681 0
	movq	32(%rsp), %rcx
	movl	(%r13), %edi
	movl	$tcp_chr_connect, %edx
	xorl	%esi, %esi
	call	qemu_set_fd_handler
	jmp	.L730
.L733:
	.loc 1 3672 0
	movl	$1, 8(%r13)
	jmp	.L732
.LFE381:
	.size	qemu_chr_open_tcp, .-qemu_chr_open_tcp
	.section	.rodata.str1.1
.LC131:
	.string	"vc:"
.LC132:
	.string	"null"
.LC133:
	.string	"tcp:"
.LC134:
	.string	"telnet:"
.LC135:
	.string	"udp:"
.LC136:
	.string	"socket(PF_INET, SOCK_DGRAM)"
.LC139:
	.string	"mon:"
.LC141:
	.string	"unix:"
.LC138:
	.string	"bind"
.LC142:
	.string	"file:"
.LC143:
	.string	"pipe:"
.LC148:
	.string	"stdio"
.LC137:
	.string	"Could not parse: %s\n"
.LC144:
	.string	"%s.in"
.LC145:
	.string	"%s.out"
.LC140:
	.string	"Unable to open driver: %s\n"
.LC147:
	.string	"char device redirected to %s\n"
.LC149:
	.string	"/dev/parport"
.LC150:
	.string	"/dev/"
	.text
	.p2align 4,,15
.globl qemu_chr_open
	.type	qemu_chr_open, @function
qemu_chr_open:
.LFB382:
	.loc 1 3700 0
	movq	%rbx, -40(%rsp)
.LCFI183:
	movq	%rbp, -32(%rsp)
.LCFI184:
	movq	%rdi, %rbx
	movq	%r12, -24(%rsp)
.LCFI185:
	movq	%r13, -16(%rsp)
.LCFI186:
	movq	%r14, -8(%rsp)
.LCFI187:
	subq	$1608, %rsp
.LCFI188:
.LBB79:
.LBB80:
	.loc 1 3703 0
	movzbl	(%rdi), %eax
	subl	$118, %eax
	jne	.L760
	movzbl	1(%rdi), %eax
	subl	$99, %eax
	je	.L881
	.p2align 4,,7
.L760:
.LBE80:
.LBE79:
	testl	%eax, %eax
	jne	.L757
	.loc 1 3704 0
	xorl	%esi, %esi
.L874:
	.loc 1 3706 0
	movl	$display_state, %edi
	call	text_console_init
.L864:
	.loc 1 2690 0
	movq	%rax, %rdx
.L756:
	.loc 1 3768 0
	movq	1568(%rsp), %rbx
	movq	1576(%rsp), %rbp
	movq	%rdx, %rax
	movq	1584(%rsp), %r12
	movq	1592(%rsp), %r13
	movq	1600(%rsp), %r14
	addq	$1608, %rsp
	ret
	.p2align 4,,7
.L757:
	.loc 1 3705 0
	leaq	8(%rsp), %rdx
	movl	$.LC131, %esi
	movq	%rbx, %rdi
	call	strstart
	testl	%eax, %eax
	jne	.L882
.LBB81:
	.loc 1 3707 0
	cld
	movl	$.LC132, %edi
	movl	$5, %ecx
	movq	%rbx, %rsi
.LBE81:
	repz
	cmpsb
	jne	.L766
.LBB82:
.LBB83:
	.loc 1 1989 0
	movl	$104, %edi
	call	qemu_mallocz
	.loc 1 1990 0
	xorl	%edx, %edx
	testq	%rax, %rax
	je	.L756
	.loc 1 1992 0
	movq	$null_chr_write, (%rax)
	jmp	.L864
	.p2align 4,,7
.L881:
.LBE83:
.LBE82:
.LBB84:
.LBB85:
	.loc 1 3703 0
	movzbl	2(%rdi), %eax
	jmp	.L760
	.p2align 4,,7
.L766:
.LBE85:
.LBE84:
	.loc 1 3710 0
	leaq	8(%rsp), %rdx
	movl	$.LC133, %esi
	movq	%rbx, %rdi
	call	strstart
	testl	%eax, %eax
	je	.L775
	.loc 1 3711 0
	movq	8(%rsp), %rdi
	xorl	%edx, %edx
	.loc 1 3731 0
	xorl	%esi, %esi
.L875:
	.loc 1 3714 0
	call	qemu_chr_open_tcp
	jmp	.L864
	.p2align 4,,7
.L882:
	.loc 1 3706 0
	movq	8(%rsp), %rsi
	jmp	.L874
.L775:
	.loc 1 3713 0
	leaq	8(%rsp), %rdx
	movl	$.LC134, %esi
	movq	%rbx, %rdi
	call	strstart
	testl	%eax, %eax
	jne	.L883
	.loc 1 3716 0
	leaq	8(%rsp), %rdx
	movl	$.LC135, %esi
	movq	%rbx, %rdi
	call	strstart
	testl	%eax, %eax
	je	.L779
.LBB86:
.LBB87:
	.loc 1 3310 0
	movl	$104, %edi
.LBE87:
	.loc 1 3304 0
	movq	8(%rsp), %r14
.LBB88:
	.loc 1 3307 0
	movl	$-1, %r12d
	.loc 1 3310 0
	call	qemu_mallocz
	.loc 1 3311 0
	testq	%rax, %rax
	.loc 1 3310 0
	movq	%rax, %rbp
	.loc 1 3311 0
	je	.L873
	.loc 1 3313 0
	movl	$1056, %edi
	call	qemu_mallocz
	.loc 1 3314 0
	testq	%rax, %rax
	.loc 1 3313 0
	movq	%rax, %rbx
	.loc 1 3314 0
	je	.L781
	.loc 1 3317 0
	xorl	%edx, %edx
	movl	$2, %edi
	movl	$2, %esi
	call	socket
	.loc 1 3318 0
	testl	%eax, %eax
	.loc 1 3317 0
	movl	%eax, %r12d
	.loc 1 3319 0
	movl	$.LC136, %edi
	.loc 1 3318 0
	js	.L871
	.loc 1 3323 0
	leaq	1552(%rsp), %r13
	leaq	4(%rbx), %rdi
	movq	%r14, %rdx
	movq	%r13, %rsi
	call	parse_host_src_port
	testl	%eax, %eax
	js	.L884
	.loc 1 3328 0
	movl	$16, %edx
	movq	%r13, %rsi
	movl	%r12d, %edi
	call	bind
	testl	%eax, %eax
	js	.L885
	.loc 1 3339 0
	movq	%rbp, %rax
	.loc 1 3334 0
	movl	%r12d, (%rbx)
	.loc 1 3335 0
	movl	$0, 1044(%rbx)
	.loc 1 3336 0
	movl	$0, 1048(%rbx)
	.loc 1 3337 0
	movq	%rbx, 80(%rbp)
	.loc 1 3338 0
	movq	$udp_chr_write, (%rbp)
	.loc 1 3339 0
	movq	$udp_chr_update_read_handler, 8(%rbp)
	jmp	.L864
.L883:
.LBE88:
.LBE86:
	.loc 1 3714 0
	movq	8(%rsp), %rdi
	xorl	%edx, %edx
	movl	$1, %esi
	call	qemu_chr_open_tcp
	jmp	.L864
.L779:
	.loc 1 3719 0
	leaq	8(%rsp), %rdx
	movl	$.LC139, %esi
	movq	%rbx, %rdi
	call	strstart
	testl	%eax, %eax
	je	.L791
.LBB89:
	.loc 1 3720 0
	movq	8(%rsp), %rdi
	call	qemu_chr_open
	.loc 1 3721 0
	testq	%rax, %rax
	.loc 1 3720 0
	movq	%rax, %rbp
	.loc 1 3721 0
	je	.L793
.LBB90:
.LBB91:
	.loc 1 2220 0
	movl	$104, %edi
	.loc 1 2221 0
	xorl	%r12d, %r12d
	.loc 1 2220 0
	call	qemu_mallocz
	.loc 1 2221 0
	testq	%rax, %rax
	.loc 1 2220 0
	movq	%rax, %rbx
	.loc 1 2221 0
	je	.L795
	.loc 1 2223 0
	movl	$192, %edi
	call	qemu_mallocz
	.loc 1 2224 0
	testq	%rax, %rax
	je	.L886
	.loc 1 2229 0
	movq	%rax, 80(%rbx)
	.loc 1 2234 0
	movq	%rbx, %r12
	.loc 1 2230 0
	movq	%rbp, 128(%rax)
	.loc 1 2231 0
	movl	$-1, 88(%rbx)
	.loc 1 2232 0
	movq	$mux_chr_write, (%rbx)
	.loc 1 2233 0
	movq	$mux_chr_update_read_handler, 8(%rbx)
	.loc 1 2234 0
	movq	$mux_chr_accept_input, 72(%rbx)
.L795:
.LBE91:
.LBE90:
	.loc 1 3723 0
	xorl	%esi, %esi
	cmpl	$0, nographic(%rip)
	movq	%r12, %rdi
	sete	%sil
	call	monitor_init
	.loc 1 3724 0
	movq	%r12, %rdx
	jmp	.L756
.L889:
.LBE89:
.LBB92:
.LBB93:
	.loc 1 2843 0
	movq	%rbp, %rdi
	call	qemu_free
.L872:
	.loc 1 2844 0
	movl	%r12d, %edi
.L879:
	call	close
.L873:
	xorl	%eax, %eax
	jmp	.L864
.L791:
.LBE93:
.LBE92:
	.loc 1 3730 0
	leaq	8(%rsp), %rdx
	movl	$.LC141, %esi
	movq	%rbx, %rdi
	call	strstart
	testl	%eax, %eax
	je	.L798
	.loc 1 3731 0
	movq	8(%rsp), %rdi
	movl	$1, %edx
	xorl	%esi, %esi
	jmp	.L875
.L885:
.LBB94:
.LBB95:
	.loc 1 3330 0
	movl	$.LC138, %edi
.L871:
	call	perror
.L781:
	.loc 1 3343 0
	testq	%rbp, %rbp
	je	.L787
	.loc 1 3344 0
	movq	%rbp, %rdi
	call	free
.L787:
	.loc 1 3345 0
	testq	%rbx, %rbx
	.p2align 4,,2
	je	.L788
	.loc 1 3346 0
	movq	%rbx, %rdi
	call	free
.L788:
	.loc 1 3347 0
	testl	%r12d, %r12d
	.p2align 4,,2
	js	.L873
.LBE95:
.LBE94:
.LBB96:
.LBB97:
	.loc 1 2844 0
	movl	%r12d, %edi
	.p2align 4,,2
	jmp	.L879
.L798:
.LBE97:
.LBE96:
	.loc 1 3732 0
	leaq	8(%rsp), %rdx
	movl	$.LC142, %esi
	movq	%rbx, %rdi
	call	strstart
	testl	%eax, %eax
	je	.L800
.LBB98:
	.loc 1 2420 0
	movq	8(%rsp), %rbx
.L801:
.LBB99:
	.loc 1 2423 0
	xorl	%eax, %eax
	movl	$438, %edx
	movl	$577, %esi
	movq	%rbx, %rdi
	call	open64
	cmpl	$-1, %eax
	jne	.L802
	call	__errno_location
	cmpl	$4, (%rax)
	.p2align 4,,4
	je	.L801
.LBE99:
.LBE98:
.LBB100:
.LBB101:
	.loc 1 2844 0
	xorl	%eax, %eax
	.p2align 4,,4
	jmp	.L864
.L800:
.LBE101:
.LBE100:
	.loc 1 3734 0
	leaq	8(%rsp), %rdx
	movl	$.LC143, %esi
	movq	%rbx, %rdi
	call	strstart
	testl	%eax, %eax
	jne	.L887
.LBB102:
.LBB103:
	.loc 1 3736 0
	movzbl	(%rbx), %eax
	subl	$112, %eax
	jne	.L830
	movzbl	1(%rbx), %eax
	subl	$116, %eax
	jne	.L830
	movzbl	2(%rbx), %eax
	subl	$121, %eax
	jne	.L830
	movzbl	3(%rbx), %eax
.L830:
.LBE103:
.LBE102:
	testl	%eax, %eax
	je	.L888
.LBB104:
	.loc 1 3738 0
	cld
	movl	$.LC148, %edi
	movl	$6, %ecx
	movq	%rbx, %rsi
.LBE104:
	repz
	cmpsb
	jne	.L836
.LBB105:
.LBB106:
	.loc 1 2537 0
	movl	stdio_nb_clients(%rip), %esi
	xorl	%eax, %eax
	testl	%esi, %esi
	jg	.L864
	.loc 1 2539 0
	xorl	%edi, %edi
	movl	$1, %esi
.LBB107:
.LBB108:
	.loc 1 2510 0
	leaq	16(%rsp), %rbp
.LBE108:
.LBE107:
	.loc 1 2539 0
	call	qemu_chr_open_fd
	.loc 1 2540 0
	xorl	%ecx, %ecx
	movl	$stdio_read, %edx
	movq	%rax, %r8
	xorl	%edi, %edi
	movl	$stdio_read_poll, %esi
	.loc 1 2539 0
	movq	%rax, %rbx
	.loc 1 2540 0
	call	qemu_set_fd_handler2
.LBB109:
.LBB110:
	.loc 1 2510 0
	xorl	%edi, %edi
	movq	%rbp, %rsi
.LBE110:
.LBE109:
	.loc 1 2541 0
	incl	stdio_nb_clients(%rip)
.LBB111:
.LBB112:
	.loc 1 2510 0
	call	tcgetattr
	.loc 1 2511 0
	movq	16(%rsp), %rax
	.loc 1 2512 0
	xorl	%edi, %edi
	movl	$3, %esi
	.loc 1 2511 0
	movq	%rax, oldtty(%rip)
	movq	24(%rsp), %rax
	movq	%rax, oldtty+8(%rip)
	movq	32(%rsp), %rax
	movq	%rax, oldtty+16(%rip)
	movq	40(%rsp), %rax
	movq	%rax, oldtty+24(%rip)
	movq	48(%rsp), %rax
	movq	%rax, oldtty+32(%rip)
	movq	56(%rsp), %rax
	movq	%rax, oldtty+40(%rip)
	movq	64(%rsp), %rax
	movq	%rax, oldtty+48(%rip)
	movl	72(%rsp), %eax
	movl	%eax, oldtty+56(%rip)
	.loc 1 2512 0
	xorl	%eax, %eax
	call	fcntl
	movl	%eax, old_fd0_flags(%rip)
	.loc 1 2517 0
	movl	28(%rsp), %eax
	.loc 1 2519 0
	movl	nographic(%rip), %ecx
	.loc 1 2514 0
	andl	$-1516, 16(%rsp)
	.loc 1 2516 0
	orl	$1, 20(%rsp)
	.loc 1 2517 0
	movl	%eax, %edx
	andl	$-32843, %edx
	.loc 1 2519 0
	testl	%ecx, %ecx
	je	.L866
	.loc 1 2520 0
	andl	$-32844, %eax
	movl	%eax, 28(%rsp)
.L844:
	.loc 1 2521 0
	movl	24(%rsp), %eax
	.loc 1 2526 0
	movq	%rbp, %rdx
	xorl	%esi, %esi
	xorl	%edi, %edi
	.loc 1 2523 0
	movb	$1, 39(%rsp)
	.loc 1 2524 0
	movb	$0, 38(%rsp)
	.loc 1 2521 0
	andl	$-305, %eax
	.loc 1 2522 0
	orl	$48, %eax
	movl	%eax, 24(%rsp)
	.loc 1 2526 0
	call	tcsetattr
	.loc 1 2528 0
	movl	$term_exit, %edi
	call	atexit
	.loc 1 2530 0
	movl	$2048, %edx
	movl	$4, %esi
	xorl	%edi, %edi
	xorl	%eax, %eax
	call	fcntl
.L877:
.LBE112:
.LBE111:
.LBE106:
.LBE105:
.LBB113:
.LBB114:
	.loc 1 2703 0
	movq	%rbx, %rax
	jmp	.L864
.L884:
.LBE114:
.LBE113:
.LBB115:
.LBB116:
	.loc 1 3324 0
	movq	%r14, %rsi
	movl	$.LC137, %edi
	xorl	%eax, %eax
	call	printf
	jmp	.L781
.L802:
.LBE116:
.LBE115:
.LBB117:
.LBB118:
	.loc 1 2424 0
	testl	%eax, %eax
	movl	%eax, %esi
	movl	$-1, %edi
	js	.L873
.LBE118:
.LBE117:
.LBB119:
.LBB120:
	.loc 1 2446 0
	.p2align 4,,5
	call	qemu_chr_open_fd
	.p2align 4,,2
	jmp	.L864
.L886:
.LBE120:
.LBE119:
.LBB121:
.LBB122:
.LBB123:
	.loc 1 2225 0
	movq	%rbx, %rdi
	.p2align 4,,6
	call	free
	.p2align 4,,6
	jmp	.L795
.L887:
.LBE123:
.LBE122:
.LBE121:
.LBB124:
	.loc 1 2430 0
	movq	8(%rsp), %r12
.LBB125:
	.loc 1 2434 0
	leaq	1296(%rsp), %rbp
	.loc 1 2435 0
	leaq	1040(%rsp), %r13
	.loc 1 2434 0
	movl	$.LC144, %edx
	movl	$256, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	movq	%r12, %rcx
	call	snprintf
	.loc 1 2435 0
	movq	%r12, %rcx
	movl	$.LC145, %edx
	movl	$256, %esi
	movq	%r13, %rdi
	xorl	%eax, %eax
	call	snprintf
.L809:
	.loc 1 2436 0
	xorl	%eax, %eax
	movl	$2, %esi
	movq	%rbp, %rdi
	call	open64
	cmpl	$-1, %eax
	movl	%eax, %ebx
	jne	.L813
	call	__errno_location
	cmpl	$4, (%rax)
	.p2align 4,,2
	je	.L809
.L813:
	.loc 1 2437 0
	xorl	%eax, %eax
	movl	$2, %esi
	movq	%r13, %rdi
	call	open64
	cmpl	$-1, %eax
	movl	%eax, %ebp
	jne	.L814
	call	__errno_location
	cmpl	$4, (%rax)
	.p2align 4,,2
	je	.L813
.L814:
	.loc 1 2438 0
	movl	%ebp, %eax
	orl	%ebx, %eax
	.p2align 4,,2
	jns	.L817
	.loc 1 2439 0
	testl	%ebx, %ebx
	.p2align 4,,3
	js	.L818
	.loc 1 2440 0
	movl	%ebx, %edi
	call	close
.L818:
	.loc 1 2441 0
	testl	%ebp, %ebp
	.p2align 4,,2
	js	.L820
	.loc 1 2442 0
	movl	%ebp, %edi
	call	close
.L820:
	.loc 1 2443 0
	xorl	%eax, %eax
	movl	$2, %esi
	movq	%r12, %rdi
	call	open64
	cmpl	$-1, %eax
	movl	%eax, %ebx
	movl	%eax, %ebp
	jne	.L821
	call	__errno_location
	cmpl	$4, (%rax)
	je	.L820
.LBE125:
.LBE124:
.LBB126:
.LBB127:
	.loc 1 2844 0
	xorl	%eax, %eax
	.p2align 4,,4
	jmp	.L864
.L793:
.LBE127:
.LBE126:
.LBB128:
	.loc 1 3726 0
	movq	8(%rsp), %rsi
	movl	$.LC140, %edi
	xorl	%eax, %eax
	call	printf
	.loc 1 3727 0
	xorl	%edx, %edx
	jmp	.L756
.L888:
.LBE128:
.LBB129:
.LBB130:
	.loc 1 2556 0
	leaq	16(%rsp), %rbp
	leaq	4(%rsp), %rsi
	xorl	%r8d, %r8d
	xorl	%ecx, %ecx
	movq	%rsp, %rdi
	movq	%rbp, %rdx
	call	openpty
	.loc 1 2557 0
	xorl	%edx, %edx
	.loc 1 2556 0
	testl	%eax, %eax
	js	.L756
	.loc 1 2562 0
	leaq	1040(%rsp), %rbx
	movl	(%rsp), %edi
	movq	%rbx, %rsi
	call	tcgetattr
	.loc 1 2566 0
	movl	(%rsp), %edi
	movq	%rbx, %rdx
	movl	$2, %esi
	.loc 1 2563 0
	andl	$-12, 1052(%rsp)
	.loc 1 2564 0
	movb	$1, 1063(%rsp)
	.loc 1 2565 0
	movb	$0, 1062(%rsp)
	.loc 1 2566 0
	call	tcsetattr
	.loc 1 2568 0
	movq	stderr(%rip), %rdi
	movq	%rbp, %rdx
	movl	$.LC147, %esi
	xorl	%eax, %eax
	call	fprintf
	movl	(%rsp), %edi
	movl	%edi, %esi
.LBE130:
.LBE129:
.LBB131:
.LBB132:
	.loc 1 2446 0
	call	qemu_chr_open_fd
	jmp	.L864
.L821:
	.loc 1 2444 0
	testl	%eax, %eax
	.p2align 4,,2
	js	.L873
.L817:
	.loc 1 2446 0
	movl	%ebp, %esi
	movl	%ebx, %edi
	.p2align 4,,5
	call	qemu_chr_open_fd
	.p2align 4,,2
	jmp	.L864
.L836:
.LBE132:
.LBE131:
	.loc 1 3742 0
	xorl	%edx, %edx
	movl	$.LC149, %esi
	movq	%rbx, %rdi
	call	strstart
	testl	%eax, %eax
	je	.L847
.L848:
.LBB133:
.LBB134:
	.loc 1 2824 0
	xorl	%eax, %eax
	movl	$2, %esi
	movq	%rbx, %rdi
	call	open64
	cmpl	$-1, %eax
	movl	%eax, %r12d
	jne	.L849
	call	__errno_location
	cmpl	$4, (%rax)
	.p2align 4,,2
	je	.L848
	.loc 1 2844 0
	xorl	%eax, %eax
	.p2align 4,,4
	jmp	.L864
.L847:
.LBE134:
.LBE133:
	.loc 1 3747 0
	xorl	%edx, %edx
	movl	$.LC150, %esi
	movq	%rbx, %rdi
	call	strstart
	.loc 1 3766 0
	xorl	%edx, %edx
	.loc 1 3747 0
	testl	%eax, %eax
	je	.L756
.L859:
.LBB135:
.LBB136:
	.loc 1 2694 0
	xorl	%eax, %eax
	movl	$2050, %esi
	movq	%rbx, %rdi
	call	open64
	cmpl	$-1, %eax
	movl	%eax, %ebp
	jne	.L860
	call	__errno_location
	cmpl	$4, (%rax)
	.p2align 4,,2
	je	.L859
.L860:
	.loc 1 2695 0
	movl	$2048, %edx
	movl	$4, %esi
	movl	%ebp, %edi
	xorl	%eax, %eax
	call	fcntl
	.loc 1 2696 0
	movl	$1, %r8d
	movl	$8, %ecx
	movl	$78, %edx
	movl	$115200, %esi
	movl	%ebp, %edi
	call	tty_serial_init
	.loc 1 2697 0
	movl	%ebp, %edi
	movl	%ebp, %esi
	call	qemu_chr_open_fd
	.loc 1 2698 0
	testq	%rax, %rax
	.loc 1 2697 0
	movq	%rax, %rbx
	.loc 1 2699 0
	movl	%ebp, %edi
	.loc 1 2698 0
	je	.L879
	.loc 1 2702 0
	movq	$tty_serial_ioctl, 16(%rax)
.L880:
	.loc 1 2703 0
	movq	%rbx, %rdi
	call	qemu_chr_reset
	jmp	.L877
.L866:
	movl	%edx, 28(%rsp)
	jmp	.L844
.L849:
.LBE136:
.LBE135:
.LBB137:
.LBB138:
	.loc 1 2825 0
	testl	%eax, %eax
	.p2align 4,,6
	js	.L873
	.loc 1 2828 0
	movl	%eax, %edi
	movl	$28811, %esi
	xorl	%eax, %eax
	call	ioctl
	testl	%eax, %eax
	js	.L872
	.loc 1 2833 0
	movl	$8, %edi
	call	qemu_mallocz
	.loc 1 2834 0
	testq	%rax, %rax
	.loc 1 2833 0
	movq	%rax, %rbp
	.loc 1 2834 0
	je	.L872
	.loc 1 2838 0
	movl	%r12d, (%rax)
	.loc 1 2839 0
	movl	$256, 4(%rax)
	.loc 1 2841 0
	movl	$104, %edi
	call	qemu_mallocz
	.loc 1 2842 0
	testq	%rax, %rax
	.loc 1 2841 0
	movq	%rax, %rbx
	.loc 1 2842 0
	je	.L889
	.loc 1 2847 0
	movq	$null_chr_write, (%rax)
	.loc 1 2848 0
	movq	$pp_ioctl, 16(%rax)
	.loc 1 2849 0
	movq	$pp_close, 64(%rax)
	.loc 1 2850 0
	movq	%rbp, 80(%rax)
	jmp	.L880
.LBE138:
.LBE137:
.LFE382:
	.size	qemu_chr_open, .-qemu_chr_open
	.p2align 4,,15
.globl qemu_find_vlan
	.type	qemu_find_vlan, @function
qemu_find_vlan:
.LFB390:
	.loc 1 3949 0
	.loc 1 3951 0
	movq	first_vlan(%rip), %rdx
	.loc 1 3949 0
	pushq	%rbx
.LCFI189:
	.loc 1 3949 0
	movl	%edi, %ebx
	jmp	.L905
	.p2align 4,,7
.L908:
	.loc 1 3952 0
	cmpl	%ebx, (%rdx)
	je	.L907
	.loc 1 3951 0
	movq	16(%rdx), %rdx
.L905:
	testq	%rdx, %rdx
	jne	.L908
	.loc 1 3955 0
	movl	$32, %edi
	call	qemu_mallocz
	movq	%rax, %rdx
	.loc 1 3957 0
	xorl	%eax, %eax
	.loc 1 3956 0
	testq	%rdx, %rdx
	je	.L890
	.loc 1 3958 0
	movl	%ebx, (%rdx)
	.loc 1 3959 0
	movq	$0, 16(%rdx)
	.loc 1 3960 0
	movl	$first_vlan, %ecx
	.loc 1 3962 0
	cmpq	$0, first_vlan(%rip)
	jmp	.L906
	.p2align 4,,7
.L909:
	movq	(%rcx), %rax
	cmpq	$0, 16(%rax)
	leaq	16(%rax), %rcx
.L906:
	jne	.L909
	.loc 1 3963 0
	movq	%rdx, (%rcx)
.L907:
	.loc 1 3964 0
	movq	%rdx, %rax
.L890:
	.loc 1 3965 0
	popq	%rbx
	ret
.LFE390:
	.size	qemu_find_vlan, .-qemu_find_vlan
	.p2align 4,,15
.globl qemu_new_vlan_client
	.type	qemu_new_vlan_client, @function
qemu_new_vlan_client:
.LFB391:
	.loc 1 3971 0
	movq	%rbx, -32(%rsp)
.LCFI190:
	movq	%rbp, -24(%rsp)
.LCFI191:
	movq	%rdi, %rbx
	movq	%r12, -16(%rsp)
.LCFI192:
	movq	%r13, -8(%rsp)
.LCFI193:
	.loc 1 3973 0
	movl	$296, %edi
	.loc 1 3971 0
	subq	$40, %rsp
.LCFI194:
	.loc 1 3971 0
	movq	%rcx, %r13
	movq	%rsi, %rbp
	movq	%rdx, %r12
	.loc 1 3973 0
	call	qemu_mallocz
	movq	%rax, %rcx
	.loc 1 3975 0
	xorl	%eax, %eax
	.loc 1 3974 0
	testq	%rcx, %rcx
	je	.L910
	.loc 1 3976 0
	movq	%rbp, (%rcx)
	.loc 1 3977 0
	movq	%r12, 8(%rcx)
	.loc 1 3982 0
	leaq	8(%rbx), %rdx
	.loc 1 3978 0
	movq	%r13, 16(%rcx)
	.loc 1 3979 0
	movq	%rbx, 32(%rcx)
	.loc 1 3981 0
	movq	$0, 24(%rcx)
	.loc 1 3984 0
	cmpq	$0, 8(%rbx)
	jmp	.L917
	.p2align 4,,7
.L918:
	movq	(%rdx), %rax
	cmpq	$0, 24(%rax)
	leaq	24(%rax), %rdx
.L917:
	jne	.L918
	.loc 1 3985 0
	movq	%rcx, (%rdx)
	.loc 1 3986 0
	movq	%rcx, %rax
.L910:
	.loc 1 3987 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	movq	24(%rsp), %r12
	movq	32(%rsp), %r13
	addq	$40, %rsp
	ret
.LFE391:
	.size	qemu_new_vlan_client, .-qemu_new_vlan_client
	.p2align 4,,15
.globl qemu_can_send_packet
	.type	qemu_can_send_packet, @function
qemu_can_send_packet:
.LFB392:
	.loc 1 3990 0
	pushq	%rbp
.LCFI195:
	movq	%rdi, %rbp
	pushq	%rbx
.LCFI196:
	subq	$8, %rsp
.LCFI197:
	.loc 1 3991 0
	movq	32(%rdi), %rax
	.loc 1 3994 0
	movq	8(%rax), %rbx
	jmp	.L928
	.p2align 4,,7
.L922:
	movq	24(%rbx), %rbx
.L928:
	testq	%rbx, %rbx
	je	.L927
	.loc 1 3995 0
	cmpq	%rbp, %rbx
	je	.L922
	.loc 1 3996 0
	movq	8(%rbx), %rax
	testq	%rax, %rax
	je	.L922
	movq	16(%rbx), %rdi
	.p2align 4,,3
	call	*%rax
	testl	%eax, %eax
	.p2align 4,,3
	je	.L922
	.loc 1 3997 0
	movl	$1, %eax
	.p2align 4,,5
	jmp	.L919
	.p2align 4,,7
.L927:
	.loc 1 4000 0
	xorl	%eax, %eax
.L919:
	.loc 1 4001 0
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	.p2align 4,,1
	ret
.LFE392:
	.size	qemu_can_send_packet, .-qemu_can_send_packet
	.p2align 4,,15
.globl qemu_send_packet
	.type	qemu_send_packet, @function
qemu_send_packet:
.LFB393:
	.loc 1 4004 0
	pushq	%r13
.LCFI198:
	movq	%rsi, %r13
	pushq	%r12
.LCFI199:
	movl	%edx, %r12d
	pushq	%rbp
.LCFI200:
	movq	%rdi, %rbp
	pushq	%rbx
.LCFI201:
	subq	$8, %rsp
.LCFI202:
	.loc 1 4005 0
	movq	32(%rdi), %rax
	.loc 1 4012 0
	movq	8(%rax), %rbx
	jmp	.L937
	.p2align 4,,7
.L938:
	.loc 1 4013 0
	cmpq	%rbp, %rbx
	je	.L932
	.loc 1 4014 0
	movq	16(%rbx), %rdi
	movl	%r12d, %edx
	movq	%r13, %rsi
	call	*(%rbx)
.L932:
	.loc 1 4012 0
	movq	24(%rbx), %rbx
.L937:
	testq	%rbx, %rbx
	jne	.L938
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
.LFE393:
	.size	qemu_send_packet, .-qemu_send_packet
	.p2align 4,,15
.globl slirp_can_output
	.type	slirp_can_output, @function
slirp_can_output:
.LFB394:
	.loc 1 4027 0
	.loc 1 4028 0
	movq	slirp_vc(%rip), %rdi
	.loc 1 4027 0
	pushq	%rbx
.LCFI203:
	.loc 1 4028 0
	xorl	%ebx, %ebx
	testq	%rdi, %rdi
	jne	.L942
	movl	$1, %ebx
.L940:
	.loc 1 4029 0
	movl	%ebx, %eax
	popq	%rbx
	ret
	.p2align 4,,7
.L942:
	.loc 1 4028 0
	call	qemu_can_send_packet
	testl	%eax, %eax
	.p2align 4,,2
	je	.L940
	movl	$1, %ebx
	.p2align 4,,4
	jmp	.L940
.LFE394:
	.size	slirp_can_output, .-slirp_can_output
	.p2align 4,,15
.globl slirp_output
	.type	slirp_output, @function
slirp_output:
.LFB395:
	.loc 1 4032 0
	.loc 1 4032 0
	movq	%rdi, %rax
	.loc 1 4037 0
	movq	slirp_vc(%rip), %rdi
	testq	%rdi, %rdi
	jne	.L945
	rep ; ret
	.p2align 4,,7
.L945:
	.loc 1 4039 0
	movl	%esi, %edx
	movq	%rax, %rsi
	jmp	qemu_send_packet
.LFE395:
	.size	slirp_output, .-slirp_output
	.p2align 4,,15
	.type	slirp_receive, @function
slirp_receive:
.LFB396:
	.loc 1 4043 0
	.loc 1 4043 0
	movq	%rsi, %rdi
	movl	%edx, %esi
	.loc 1 4048 0
	jmp	slirp_input
.LFE396:
	.size	slirp_receive, .-slirp_receive
	.section	.rodata.str1.1
.LC153:
	.string	"%s/%s"
	.text
	.p2align 4,,15
	.type	smb_exit, @function
smb_exit:
.LFB399:
	.loc 1 4120 0
	pushq	%rbp
.LCFI204:
	.loc 1 4126 0
	movl	$smb_dir, %edi
	.loc 1 4120 0
	pushq	%rbx
.LCFI205:
	subq	$1032, %rsp
.LCFI206:
	.loc 1 4126 0
	call	opendir
	movq	%rsp, %rbp
	movq	%rax, %rbx
	.p2align 4,,7
.L965:
	.loc 1 4128 0
	movq	%rbx, %rdi
	call	readdir64
	.loc 1 4129 0
	testq	%rax, %rax
	je	.L949
.L966:
.LBB139:
.LBB140:
	.loc 1 4131 0
	leaq	19(%rax), %rcx
	movzbl	19(%rax), %eax
	movl	%eax, %edx
	subl	$46, %edx
	jne	.L954
	movzbl	1(%rcx), %edx
.L954:
.LBE140:
.LBE139:
	testl	%edx, %edx
	je	.L965
.LBB141:
.LBB142:
	.loc 1 4132 0
	subl	$46, %eax
	jne	.L959
	movzbl	1(%rcx), %eax
	subl	$46, %eax
	jne	.L959
	movzbl	2(%rcx), %eax
	.p2align 4,,7
.L959:
.LBE142:
.LBE141:
	testl	%eax, %eax
	je	.L965
	.loc 1 4133 0
	movq	%rcx, %r8
	movl	$.LC153, %edx
	movl	$smb_dir, %ecx
	movl	$1024, %esi
	movq	%rbp, %rdi
	xorl	%eax, %eax
	call	snprintf
	.loc 1 4135 0
	movq	%rbp, %rdi
	call	unlink
	.loc 1 4128 0
	movq	%rbx, %rdi
	call	readdir64
	.loc 1 4129 0
	testq	%rax, %rax
	jne	.L966
.L949:
	.loc 1 4138 0
	movq	%rbx, %rdi
	call	closedir
	.loc 1 4139 0
	movl	$smb_dir, %edi
	call	rmdir
	addq	$1032, %rsp
	popq	%rbx
	popq	%rbp
	ret
.LFE399:
	.size	smb_exit, .-smb_exit
	.p2align 4,,15
.globl do_info_slirp
	.type	do_info_slirp, @function
do_info_slirp:
.LFB401:
	.loc 1 4199 0
	.loc 1 4200 0
	jmp	slirp_stats
.LFE401:
	.size	do_info_slirp, .-do_info_slirp
	.p2align 4,,15
	.type	tap_receive, @function
tap_receive:
.LFB402:
	.loc 1 4214 0
	pushq	%r12
.LCFI207:
	movq	%rdi, %r12
	pushq	%rbp
.LCFI208:
	movq	%rsi, %rbp
	pushq	%rbx
.LCFI209:
	movslq	%edx,%rbx
	.p2align 4,,7
.L977:
	.loc 1 4218 0
	movl	8(%r12), %edi
	movq	%rbx, %rdx
	movq	%rbp, %rsi
	call	write
	.loc 1 4219 0
	testl	%eax, %eax
	jns	.L970
	call	__errno_location
	movl	(%rax), %eax
	cmpl	$4, %eax
	.p2align 4,,2
	je	.L977
	cmpl	$11, %eax
	.p2align 4,,2
	je	.L977
.L970:
	.loc 1 4217 0
	popq	%rbx
	popq	%rbp
	popq	%r12
	.p2align 4,,1
	ret
.LFE402:
	.size	tap_receive, .-tap_receive
	.p2align 4,,15
	.type	tap_send, @function
tap_send:
.LFB403:
	.loc 1 4227 0
	movq	%rbx, -16(%rsp)
.LCFI210:
	movq	%rbp, -8(%rsp)
.LCFI211:
	movq	%rdi, %rbx
	subq	$4120, %rsp
.LCFI212:
	.loc 1 4239 0
	movl	8(%rdi), %edi
	movl	$4096, %edx
	movq	%rsp, %rsi
	call	read
	.loc 1 4241 0
	testl	%eax, %eax
	jle	.L978
	.loc 1 4242 0
	movq	(%rbx), %rdi
	movl	%eax, %edx
	movq	%rsp, %rsi
	call	qemu_send_packet
.L978:
	.loc 1 4244 0
	movq	4104(%rsp), %rbx
	movq	4112(%rsp), %rbp
	addq	$4120, %rsp
	ret
.LFE403:
	.size	tap_send, .-tap_send
	.section	.rodata.str1.1
.LC154:
	.string	"tap: fd=%d"
	.text
	.p2align 4,,15
	.type	net_tap_fd_init, @function
net_tap_fd_init:
.LFB404:
	.loc 1 4249 0
	movq	%rbx, -24(%rsp)
.LCFI213:
	movq	%rbp, -16(%rsp)
.LCFI214:
	movq	%rdi, %rbp
	movq	%r12, -8(%rsp)
.LCFI215:
	.loc 1 4252 0
	movl	$1040, %edi
	.loc 1 4249 0
	subq	$24, %rsp
.LCFI216:
	.loc 1 4249 0
	movl	%esi, %r12d
	.loc 1 4252 0
	call	qemu_mallocz
	movq	%rax, %rbx
	.loc 1 4254 0
	xorl	%eax, %eax
	.loc 1 4253 0
	testq	%rbx, %rbx
	je	.L980
	.loc 1 4256 0
	movq	%rbx, %rcx
	xorl	%edx, %edx
	movl	$tap_receive, %esi
	movq	%rbp, %rdi
	.loc 1 4255 0
	movl	%r12d, 8(%rbx)
	.loc 1 4256 0
	call	qemu_new_vlan_client
	.loc 1 4257 0
	movl	8(%rbx), %edi
	movq	%rbx, %rcx
	xorl	%edx, %edx
	movl	$tap_send, %esi
	.loc 1 4256 0
	movq	%rax, (%rbx)
	.loc 1 4257 0
	call	qemu_set_fd_handler
	.loc 1 4258 0
	movq	(%rbx), %rdi
	movl	%r12d, %ecx
	movl	$.LC154, %edx
	movl	$256, %esi
	xorl	%eax, %eax
	addq	$40, %rdi
	call	snprintf
	.loc 1 4259 0
	movq	%rbx, %rax
.L980:
	.loc 1 4260 0
	movq	(%rsp), %rbx
	movq	8(%rsp), %rbp
	movq	16(%rsp), %r12
	addq	$24, %rsp
	ret
.LFE404:
	.size	net_tap_fd_init, .-net_tap_fd_init
	.section	.rodata.str1.8
	.align 8
.LC155:
	.string	"%s: could not launch network script\n"
	.text
	.p2align 4,,15
	.type	launch_script, @function
launch_script:
.LFB406:
	.loc 1 4447 0
	movq	%rbx, -48(%rsp)
.LCFI217:
	movq	%rbp, -40(%rsp)
.LCFI218:
	movq	%rdi, %rbp
	movq	%r12, -32(%rsp)
.LCFI219:
	movq	%r13, -24(%rsp)
.LCFI220:
	movl	%edx, %r12d
	movq	%r14, -16(%rsp)
.LCFI221:
	movq	%r15, -8(%rsp)
.LCFI222:
	subq	$104, %rsp
.LCFI223:
	.loc 1 4447 0
	movq	%rsi, %r13
	.loc 1 4453 0
	call	fork
	.loc 1 4454 0
	testl	%eax, %eax
	.loc 1 4453 0
	movl	%eax, %ebx
	.loc 1 4454 0
	jl	.L983
.LBB143:
	.loc 1 4455 0
	je	.L997
	.p2align 4,,7
.L990:
	.loc 1 4471 0
	leaq	12(%rsp), %rsi
	xorl	%edx, %edx
	movl	%ebx, %edi
	call	waitpid
	cmpl	%ebx, %eax
	jne	.L990
	.loc 1 4472 0
	movl	12(%rsp), %eax
	testb	$127, %al
	jne	.L993
	.loc 1 4473 0
	movzbl	%ah, %eax
	testl	%eax, %eax
	je	.L983
.L993:
	.loc 1 4474 0
	movq	stderr(%rip), %rdi
	movq	%rbp, %rdx
	movl	$.LC155, %esi
	xorl	%eax, %eax
	call	fprintf
	.loc 1 4476 0
	movl	$-1, %eax
.L982:
.LBE143:
	.loc 1 4480 0
	movq	56(%rsp), %rbx
	movq	64(%rsp), %rbp
	movq	72(%rsp), %r12
	movq	80(%rsp), %r13
	movq	88(%rsp), %r14
	movq	96(%rsp), %r15
	addq	$104, %rsp
	ret
.L983:
	.loc 1 4479 0
	xorl	%eax, %eax
	jmp	.L982
.L997:
.LBB144:
.LBB145:
	.loc 1 4456 0
	movl	$4, %edi
	.loc 1 4457 0
	xorl	%r14d, %r14d
	.loc 1 4456 0
	call	sysconf
	movl	%eax, %r15d
	.loc 1 4457 0
	cmpl	%eax, %ebx
.L996:
	jge	.L995
	.loc 1 4458 0
	cmpl	$2, %r14d
	seta	%dl
	xorl	%eax, %eax
	cmpl	%r12d, %r14d
	setne	%al
	testl	%edx, %eax
	jne	.L998
	.loc 1 4457 0
	incl	%r14d
	cmpl	%r15d, %r14d
	jmp	.L996
.L998:
	.loc 1 4462 0
	movl	%r14d, %edi
	.loc 1 4457 0
	incl	%r14d
	.loc 1 4462 0
	call	close
	.loc 1 4457 0
	cmpl	%r15d, %r14d
	jmp	.L996
.L995:
	.loc 1 4464 0
	leaq	16(%rsp), %rax
	.loc 1 4465 0
	movq	%rbp, 16(%rsp)
	.loc 1 4468 0
	movq	%rbp, %rdi
	.loc 1 4465 0
	movq	%rax, %rsi
	addq	$8, %rax
	.loc 1 4466 0
	movq	%r13, (%rax)
	.loc 1 4467 0
	movq	$0, 8(%rax)
	.loc 1 4468 0
	call	execv
	.loc 1 4469 0
	movl	$1, %edi
	call	_exit
.LBE145:
.LBE144:
.LFE406:
	.size	launch_script, .-launch_script
	.p2align 4,,15
	.type	net_socket_receive, @function
net_socket_receive:
.LFB408:
	.loc 1 4533 0
	movq	%rbx, -24(%rsp)
.LCFI224:
	movq	%r12, -16(%rsp)
.LCFI225:
.LBB146:
	.loc 1 4536 0
	movl	%edx, %eax
.LBE146:
	.loc 1 4533 0
	movq	%r13, -8(%rsp)
.LCFI226:
	subq	$40, %rsp
.LCFI227:
	.loc 1 4533 0
	movq	%rdi, %r12
.LBB147:
	.loc 1 4536 0
#APP
	bswap %eax
#NO_APP
.LBE147:
	movl	%eax, 12(%rsp)
.LBB148:
	.loc 1 2319 0
	movl	8(%rdi), %edi
.LBE148:
	.loc 1 4533 0
	movq	%rsi, %r13
.LBB149:
.LBB150:
	.loc 1 2320 0
	leaq	12(%rsp), %rsi
.LBE150:
.LBE149:
	.loc 1 4533 0
	movl	%edx, %ebx
.LBB151:
.LBB152:
	.loc 1 2320 0
	movl	$4, %edx
	call	unix_write
.LBE152:
.LBE151:
.LBB153:
	.loc 1 2319 0
	movl	8(%r12), %edi
.LBB154:
	.loc 1 2320 0
	movl	%ebx, %edx
	movq	%r13, %rsi
	call	unix_write
.LBE154:
.LBE153:
	.loc 1 2319 0
	movq	16(%rsp), %rbx
	movq	24(%rsp), %r12
	movq	32(%rsp), %r13
	addq	$40, %rsp
	ret
.LFE408:
	.size	net_socket_receive, .-net_socket_receive
	.p2align 4,,15
	.type	net_unixsocket_receive, @function
net_unixsocket_receive:
.LFB409:
	.loc 1 4547 0
	pushq	%r12
.LCFI228:
	movq	%rdi, %r12
	pushq	%rbp
.LCFI229:
	movq	%rsi, %rbp
	pushq	%rbx
.LCFI230:
	movslq	%edx,%rbx
	.p2align 4,,7
.L1013:
	.loc 1 4557 0
	movl	8(%r12), %edi
	movq	%rbx, %rdx
	movq	%rbp, %rsi
	call	write
	.loc 1 4558 0
	testl	%eax, %eax
	jns	.L1006
	call	__errno_location
	movl	(%rax), %eax
	cmpl	$4, %eax
	.p2align 4,,2
	je	.L1013
	cmpl	$11, %eax
	.p2align 4,,2
	je	.L1013
.L1006:
	.loc 1 4556 0
	popq	%rbx
	popq	%rbp
	popq	%r12
	.p2align 4,,1
	ret
.LFE409:
	.size	net_unixsocket_receive, .-net_unixsocket_receive
	.p2align 4,,15
	.type	net_socket_receive_dgram, @function
net_socket_receive_dgram:
.LFB410:
	.loc 1 4566 0
	.loc 1 4566 0
	movq	%rdi, %rax
	.loc 1 4568 0
	movl	8(%rdi), %edi
	movslq	%edx,%rdx
	leaq	4120(%rax), %r8
	movl	$16, %r9d
	xorl	%ecx, %ecx
	jmp	sendto
.LFE410:
	.size	net_socket_receive_dgram, .-net_socket_receive_dgram
	.p2align 4,,15
	.type	net_socket_send, @function
net_socket_send:
.LFB411:
	.loc 1 4573 0
	pushq	%r14
.LCFI231:
	.loc 1 4579 0
	xorl	%ecx, %ecx
	movl	$4096, %edx
	.loc 1 4573 0
	pushq	%r13
.LCFI232:
	pushq	%r12
.LCFI233:
	movq	%rdi, %r12
	pushq	%rbp
.LCFI234:
	pushq	%rbx
.LCFI235:
	subq	$4096, %rsp
.LCFI236:
	.loc 1 4579 0
	movl	8(%rdi), %edi
	movq	%rsp, %rsi
	movq	%rsp, %rbx
	call	recv
	.loc 1 4580 0
	testl	%eax, %eax
	.loc 1 4579 0
	movl	%eax, %r13d
	.loc 1 4580 0
	jl	.L1037
	.loc 1 4584 0
	je	.L1018
.L1019:
	.loc 1 4591 0
	movq	%rbx, %r14
	.p2align 4,,7
.L1036:
	.loc 1 4623 0
	testl	%r13d, %r13d
	.p2align 4,,3
	jle	.L1015
	.loc 1 4594 0
	movl	12(%r12), %eax
	testl	%eax, %eax
	.p2align 4,,3
	je	.L1024
	decl	%eax
	.p2align 4,,2
	jne	.L1036
	.loc 1 4611 0
	movslq	16(%r12),%rdi
	movl	20(%r12), %ebp
	.loc 1 4614 0
	movq	%r14, %rsi
	.loc 1 4611 0
	subl	%edi, %ebp
	.loc 1 4614 0
	leaq	24(%rdi,%r12), %rdi
	.loc 1 4613 0
	cmpl	%r13d, %ebp
	cmovg	%r13d, %ebp
	.loc 1 4614 0
	movslq	%ebp,%rbx
	.loc 1 4617 0
	subl	%ebp, %r13d
	.loc 1 4614 0
	movq	%rbx, %rdx
	.loc 1 4616 0
	addq	%rbx, %r14
	.loc 1 4614 0
	call	memcpy
	.loc 1 4615 0
	movl	16(%r12), %eax
	.loc 1 4618 0
	movl	20(%r12), %edx
	.loc 1 4615 0
	addl	%ebp, %eax
	.loc 1 4618 0
	cmpl	%edx, %eax
	.loc 1 4615 0
	movl	%eax, 16(%r12)
	.loc 1 4618 0
	jl	.L1036
	.loc 1 4619 0
	movq	(%r12), %rdi
	leaq	24(%r12), %rsi
	call	qemu_send_packet
	.loc 1 4620 0
	movl	$0, 16(%r12)
	.loc 1 4621 0
	movl	$0, 12(%r12)
	jmp	.L1036
.L1037:
	.loc 1 4581 0
	call	__errno_location
	.loc 1 4582 0
	cmpl	$11, (%rax)
	.p2align 4,,2
	je	.L1019
	.p2align 4,,7
.L1018:
	.loc 1 4587 0
	movl	8(%r12), %edi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	xorl	%esi, %esi
	call	qemu_set_fd_handler
	.loc 1 4588 0
	movl	8(%r12), %edi
	call	close
.L1015:
	.loc 1 4626 0
	addq	$4096, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	ret
	.p2align 4,,7
.L1024:
	.loc 1 4596 0
	movslq	16(%r12),%rdi
	movl	$4, %ebp
	.loc 1 4599 0
	movq	%r14, %rsi
	.loc 1 4596 0
	subl	%edi, %ebp
	.loc 1 4599 0
	leaq	24(%rdi,%r12), %rdi
	.loc 1 4598 0
	cmpl	%r13d, %ebp
	cmovg	%r13d, %ebp
	.loc 1 4599 0
	movslq	%ebp,%rbx
	.loc 1 4601 0
	subl	%ebp, %r13d
	.loc 1 4599 0
	movq	%rbx, %rdx
	.loc 1 4600 0
	addq	%rbx, %r14
	.loc 1 4599 0
	call	memcpy
	.loc 1 4602 0
	movl	16(%r12), %eax
	addl	%ebp, %eax
	.loc 1 4603 0
	cmpl	$4, %eax
	je	.L1038
	movl	%eax, 16(%r12)
	jmp	.L1036
	.p2align 4,,7
.L1038:
.LBB155:
	.loc 1 4605 0
	movl	24(%r12), %eax
.LBE155:
	.loc 1 4606 0
	movl	$0, 16(%r12)
.LBB156:
	.loc 1 4605 0
#APP
	bswap %eax
#NO_APP
.LBE156:
	.loc 1 4607 0
	movl	$1, 12(%r12)
	.loc 1 4605 0
	movl	%eax, 20(%r12)
	jmp	.L1036
.LFE411:
	.size	net_socket_send, .-net_socket_send
	.p2align 4,,15
	.type	net_unixsocket_send, @function
net_unixsocket_send:
.LFB412:
	.loc 1 4629 0
	movq	%rbx, -16(%rsp)
.LCFI237:
	movq	%rbp, -8(%rsp)
.LCFI238:
	movq	%rdi, %rbx
	subq	$4120, %rsp
.LCFI239:
	.loc 1 4641 0
	movl	8(%rdi), %edi
	movl	$4096, %edx
	movq	%rsp, %rsi
	call	read
	.loc 1 4643 0
	testl	%eax, %eax
	jle	.L1039
	.loc 1 4644 0
	movq	(%rbx), %rdi
	movl	%eax, %edx
	movq	%rsp, %rsi
	call	qemu_send_packet
.L1039:
	.loc 1 4646 0
	movq	4104(%rsp), %rbx
	movq	4112(%rsp), %rbp
	addq	$4120, %rsp
	ret
.LFE412:
	.size	net_unixsocket_send, .-net_unixsocket_send
	.p2align 4,,15
	.type	net_socket_send_dgram, @function
net_socket_send_dgram:
.LFB413:
	.loc 1 4650 0
	movq	%rbx, -16(%rsp)
.LCFI240:
	movq	%rbp, -8(%rsp)
.LCFI241:
	movq	%rdi, %rbx
	subq	$24, %rsp
.LCFI242:
	.loc 1 4654 0
	leaq	24(%rdi), %rbp
	movl	8(%rdi), %edi
	xorl	%ecx, %ecx
	movl	$4096, %edx
	movq	%rbp, %rsi
	call	recv
	.loc 1 4655 0
	cmpl	$0, %eax
	jl	.L1041
	.loc 1 4657 0
	jne	.L1043
	.loc 1 4659 0
	movl	8(%rbx), %edi
	.loc 1 4663 0
	movq	16(%rsp), %rbp
	.loc 1 4659 0
	xorl	%ecx, %ecx
	.loc 1 4663 0
	movq	8(%rsp), %rbx
	.loc 1 4659 0
	xorl	%edx, %edx
	xorl	%esi, %esi
	.loc 1 4663 0
	addq	$24, %rsp
	.loc 1 4659 0
	jmp	qemu_set_fd_handler
	.p2align 4,,7
.L1043:
	.loc 1 4662 0
	movq	(%rbx), %rdi
	movq	%rbp, %rsi
	.loc 1 4663 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	.loc 1 4662 0
	movl	%eax, %edx
	.loc 1 4663 0
	addq	$24, %rsp
	.loc 1 4662 0
	jmp	qemu_send_packet
	.p2align 4,,7
.L1041:
	.loc 1 4663 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	addq	$24, %rsp
	ret
.LFE413:
	.size	net_socket_send_dgram, .-net_socket_send_dgram
	.section	.rodata.str1.8
	.align 8
.LC157:
	.string	"setsockopt(SOL_SOCKET, SO_REUSEADDR)"
	.section	.rodata.str1.1
.LC158:
	.string	"setsockopt(IP_ADD_MEMBERSHIP)"
	.section	.rodata.str1.8
	.align 8
.LC159:
	.string	"setsockopt(SOL_IP, IP_MULTICAST_LOOP)"
	.align 8
.LC156:
	.string	"qemu: error: specified mcastaddr \"%s\" (0x%08x) does not contain a multicast address\n"
	.text
	.p2align 4,,15
	.type	net_socket_mcast_create, @function
net_socket_mcast_create:
.LFB414:
	.loc 1 4666 0
	pushq	%rbp
.LCFI243:
	movq	%rdi, %rbp
	pushq	%rbx
.LCFI244:
	subq	$24, %rsp
.LCFI245:
.LBB157:
	.loc 1 4670 0
	movl	4(%rdi), %edi
	movl	%edi, %ebx
#APP
	bswap %ebx
#NO_APP
.LBE157:
	movl	%ebx, %eax
	andl	$-268435456, %eax
	cmpl	$-536870912, %eax
	jne	.L1060
	.loc 1 4677 0
	xorl	%edx, %edx
	movl	$2, %esi
	movl	$2, %edi
	call	socket
	.loc 1 4678 0
	testl	%eax, %eax
	.loc 1 4677 0
	movl	%eax, %ebx
	.loc 1 4678 0
	js	.L1061
	.loc 1 4684 0
	leaq	20(%rsp), %rcx
	movl	%eax, %edi
	movl	$4, %r8d
	movl	$2, %edx
	movl	$1, %esi
	.loc 1 4683 0
	movl	$1, 20(%rsp)
	.loc 1 4684 0
	call	setsockopt
	.loc 1 4686 0
	testl	%eax, %eax
	.loc 1 4687 0
	movl	$.LC157, %edi
	.loc 1 4686 0
	js	.L1059
	.loc 1 4691 0
	movl	%ebx, %edi
	movl	$16, %edx
	movq	%rbp, %rsi
	call	bind
	.loc 1 4692 0
	testl	%eax, %eax
	.loc 1 4693 0
	movl	$.LC138, %edi
	.loc 1 4692 0
	js	.L1059
	.loc 1 4698 0
	movl	4(%rbp), %eax
	.loc 1 4701 0
	leaq	8(%rsp), %rcx
	xorl	%esi, %esi
	movl	%ebx, %edi
	movl	$8, %r8d
	movl	$35, %edx
	.loc 1 4699 0
	movl	$0, 12(%rsp)
	.loc 1 4698 0
	movl	%eax, 8(%rsp)
	.loc 1 4701 0
	call	setsockopt
	.loc 1 4703 0
	testl	%eax, %eax
	.loc 1 4704 0
	movl	$.LC158, %edi
	.loc 1 4703 0
	js	.L1059
	.loc 1 4710 0
	leaq	20(%rsp), %rcx
	xorl	%esi, %esi
	movl	%ebx, %edi
	movl	$4, %r8d
	movl	$34, %edx
	.loc 1 4709 0
	movl	$1, 20(%rsp)
	.loc 1 4710 0
	call	setsockopt
	.loc 1 4712 0
	testl	%eax, %eax
	.loc 1 4713 0
	movl	$.LC159, %edi
	.loc 1 4712 0
	js	.L1059
	.loc 1 4717 0
	movl	%ebx, %edi
	call	socket_set_nonblock
	.loc 1 4718 0
	movl	%ebx, %eax
	.loc 1 4723 0
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.p2align 4,,7
.L1059:
.L1052:
	.loc 1 4713 0
	call	perror
	.loc 1 4720 0
	testl	%ebx, %ebx
	js	.L1058
	.loc 1 4721 0
	movl	%ebx, %edi
	call	close
.L1058:
	.loc 1 4722 0
	movl	$-1, %eax
.L1062:
	.loc 1 4723 0
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	ret
.L1060:
	.loc 1 4673 0
	call	inet_ntoa
	movq	stderr(%rip), %rdi
	movq	%rax, %rdx
	movl	%ebx, %ecx
	movl	$.LC156, %esi
	xorl	%eax, %eax
	call	fprintf
	.loc 1 4722 0
	movl	$-1, %eax
	jmp	.L1062
.L1061:
	.loc 1 4679 0
	movl	$.LC136, %edi
	call	perror
	.loc 1 4722 0
	movl	$-1, %eax
	jmp	.L1062
.LFE414:
	.size	net_socket_mcast_create, .-net_socket_mcast_create
	.p2align 4,,15
	.type	net_socket_connect, @function
net_socket_connect:
.LFB417:
	.loc 1 4800 0
	.loc 1 4800 0
	movq	%rdi, %rax
	.loc 1 4802 0
	movl	8(%rdi), %edi
	xorl	%edx, %edx
	movq	%rax, %rcx
	movl	$net_socket_send, %esi
	jmp	qemu_set_fd_handler
.LFE417:
	.size	net_socket_connect, .-net_socket_connect
	.section	.rodata.str1.1
.LC160:
	.string	"socket: fd=%d"
	.text
	.p2align 4,,15
	.type	net_socket_fd_init_stream, @function
net_socket_fd_init_stream:
.LFB418:
	.loc 1 4807 0
	movq	%rbx, -32(%rsp)
.LCFI246:
	movq	%rbp, -24(%rsp)
.LCFI247:
	movl	%esi, %ebp
	movq	%r12, -16(%rsp)
.LCFI248:
	movq	%r13, -8(%rsp)
.LCFI249:
	movq	%rdi, %r12
	subq	$40, %rsp
.LCFI250:
	.loc 1 4809 0
	movl	$4136, %edi
	.loc 1 4807 0
	movl	%edx, %r13d
	.loc 1 4809 0
	call	qemu_mallocz
	movq	%rax, %rbx
	.loc 1 4811 0
	xorl	%eax, %eax
	.loc 1 4810 0
	testq	%rbx, %rbx
	je	.L1064
	.loc 1 4813 0
	xorl	%edx, %edx
	movq	%rbx, %rcx
	movl	$net_socket_receive, %esi
	movq	%r12, %rdi
	.loc 1 4812 0
	movl	%ebp, 8(%rbx)
	.loc 1 4813 0
	call	qemu_new_vlan_client
	.loc 1 4815 0
	leaq	40(%rax), %rdi
	.loc 1 4813 0
	movq	%rax, (%rbx)
	.loc 1 4815 0
	movl	%ebp, %ecx
	xorl	%eax, %eax
	movl	$.LC160, %edx
	movl	$256, %esi
	call	snprintf
	.loc 1 4817 0
	testl	%r13d, %r13d
	jne	.L1068
	.loc 1 4820 0
	movl	8(%rbx), %edi
	movq	%rbx, %rcx
	movl	$net_socket_connect, %edx
	xorl	%esi, %esi
	call	qemu_set_fd_handler
.L1067:
	.loc 1 4822 0
	movq	%rbx, %rax
.L1064:
	.loc 1 4823 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	movq	24(%rsp), %r12
	movq	32(%rsp), %r13
	addq	$40, %rsp
	ret
	.p2align 4,,7
.L1068:
	.loc 1 4818 0
	movq	%rbx, %rdi
	call	net_socket_connect
	jmp	.L1067
.LFE418:
	.size	net_socket_fd_init_stream, .-net_socket_fd_init_stream
	.section	.rodata.str1.8
	.align 8
.LC167:
	.string	"qemu: warning: socket type=%d for fd=%d is not SOCK_DGRAM or SOCK_STREAM\n"
	.align 8
.LC162:
	.string	"qemu: error: init_dgram: fd=%d unbound, cannot setup multicast dst addr\n"
	.section	.rodata.str1.1
.LC165:
	.string	""
.LC164:
	.string	"cloned"
	.section	.rodata.str1.8
	.align 8
.LC166:
	.string	"socket: fd=%d (%s mcast=%s:%d)"
	.align 8
.LC163:
	.string	"qemu: error: init_dgram: fd=%d failed getsockname(): %s\n"
	.align 8
.LC161:
	.string	"qemu: error: getsockopt(SO_TYPE) for fd=%d failed\n"
	.text
	.p2align 4,,15
	.type	net_socket_fd_init, @function
net_socket_fd_init:
.LFB419:
	.loc 1 4827 0
	movq	%r12, -24(%rsp)
.LCFI251:
	movq	%r13, -16(%rsp)
.LCFI252:
	movl	%esi, %r12d
	movq	%r14, -8(%rsp)
.LCFI253:
	movq	%rbx, -40(%rsp)
.LCFI254:
	movq	%rdi, %r14
	movq	%rbp, -32(%rsp)
.LCFI255:
	subq	$88, %rsp
.LCFI256:
	.loc 1 4827 0
	movl	%edx, %r13d
	.loc 1 4830 0
	leaq	28(%rsp), %r8
	leaq	24(%rsp), %rcx
	movl	$3, %edx
	movl	$1, %esi
	movl	%r12d, %edi
	.loc 1 4828 0
	movl	$-1, 24(%rsp)
	movl	$4, 28(%rsp)
	.loc 1 4830 0
	call	getsockopt
	testl	%eax, %eax
	js	.L1090
	.loc 1 4835 0
	movl	24(%rsp), %edx
	cmpl	$1, %edx
	je	.L1088
	cmpl	$2, %edx
	.p2align 4,,2
	je	.L1091
	.loc 1 4842 0
	movq	stderr(%rip), %rdi
	movl	%r12d, %ecx
	movl	$.LC167, %esi
	xorl	%eax, %eax
	call	fprintf
.L1088:
	.loc 1 4843 0
	movl	%r13d, %edx
	movl	%r12d, %esi
	movq	%r14, %rdi
	call	net_socket_fd_init_stream
.L1069:
	.loc 1 4846 0
	movq	48(%rsp), %rbx
	movq	56(%rsp), %rbp
	movq	64(%rsp), %r12
	movq	72(%rsp), %r13
	movq	80(%rsp), %r14
	addq	$88, %rsp
	ret
	.p2align 4,,7
.L1091:
.LBB158:
.LBB159:
	.loc 1 4738 0
	testl	%r13d, %r13d
	je	.L1073
	.loc 1 4739 0
	leaq	32(%rsp), %rbx
	leaq	20(%rsp), %rdx
	movl	%r12d, %edi
	movq	%rbx, %rsi
	call	getsockname
	testl	%eax, %eax
	jne	.L1074
	.loc 1 4741 0
	movl	36(%rsp), %edi
	testl	%edi, %edi
	jne	.L1075
	.loc 1 4742 0
	movq	stderr(%rip), %rdi
	movl	%r12d, %edx
	movl	$.LC162, %esi
	call	fprintf
.L1087:
	.loc 1 4758 0
	xorl	%eax, %eax
	jmp	.L1069
.L1075:
	.loc 1 4747 0
	movq	%rbx, %rdi
	call	net_socket_mcast_create
	.loc 1 4748 0
	testl	%eax, %eax
	.loc 1 4747 0
	movl	%eax, %ebx
	.loc 1 4748 0
	js	.L1092
	.loc 1 4754 0
	movl	%eax, %edi
	movl	%r12d, %esi
	call	dup2
	.loc 1 4755 0
	movl	%ebx, %edi
	call	close
	.p2align 4,,7
.L1073:
	.loc 1 4764 0
	movl	$4136, %edi
	call	qemu_mallocz
	movq	%rax, %rbp
	.loc 1 4765 0
	xorl	%eax, %eax
	testq	%rbp, %rbp
	je	.L1069
	.loc 1 4769 0
	xorl	%edx, %edx
	movq	%rbp, %rcx
	movl	$net_socket_receive_dgram, %esi
	movq	%r14, %rdi
	.loc 1 4767 0
	movl	%r12d, 8(%rbp)
	.loc 1 4769 0
	call	qemu_new_vlan_client
	.loc 1 4770 0
	movl	8(%rbp), %edi
	xorl	%edx, %edx
	.loc 1 4769 0
	movq	%rax, (%rbp)
	.loc 1 4770 0
	movq	%rbp, %rcx
	movl	$net_socket_send_dgram, %esi
	call	qemu_set_fd_handler
	.loc 1 4773 0
	testl	%r13d, %r13d
	je	.L1080
	movq	32(%rsp), %rax
	movq	%rax, 4120(%rbp)
	movq	40(%rsp), %rax
	movq	%rax, 4128(%rbp)
.L1080:
	.loc 1 4778 0
	movl	36(%rsp), %edi
.LBB160:
	movzwl	34(%rsp), %ebx
#APP
	rorw $8, %bx
#NO_APP
.LBE160:
	movzwl	%bx, %ebx
	call	inet_ntoa
	movq	(%rbp), %rdi
	testl	%r13d, %r13d
	movl	$.LC165, %edx
	movl	$.LC164, %r8d
	movq	%rax, %r9
	movl	%r12d, %ecx
	cmove	%rdx, %r8
	movl	$256, %esi
	movl	$.LC166, %edx
	addq	$40, %rdi
	xorl	%eax, %eax
	movl	%ebx, (%rsp)
	call	snprintf
	movq	%rbp, %rax
	jmp	.L1069
.L1074:
	.loc 1 4758 0
	call	__errno_location
	movl	(%rax), %edi
	call	strerror
	movq	stderr(%rip), %rdi
	movq	%rax, %rcx
	movl	%r12d, %edx
	movl	$.LC163, %esi
	xorl	%eax, %eax
	call	fprintf
	xorl	%eax, %eax
	jmp	.L1069
.L1092:
	.loc 1 4750 0
	movl	%r12d, %edi
	call	close
	.loc 1 4758 0
	xorl	%eax, %eax
	.p2align 4,,2
	jmp	.L1069
.L1090:
.LBE159:
.LBE158:
	.loc 1 4832 0
	movq	stderr(%rip), %rdi
	movl	%r12d, %edx
	movl	$.LC161, %esi
	xorl	%eax, %eax
.LBB161:
.LBB162:
	.loc 1 4742 0
	call	fprintf
	jmp	.L1087
.LBE162:
.LBE161:
.LFE419:
	.size	net_socket_fd_init, .-net_socket_fd_init
	.section	.rodata.str1.1
.LC168:
	.string	"socket: connection from %s:%d"
	.text
	.p2align 4,,15
	.type	net_socket_accept, @function
net_socket_accept:
.LFB420:
	.loc 1 4849 0
	pushq	%r12
.LCFI257:
	pushq	%rbp
.LCFI258:
	movq	%rdi, %rbp
	pushq	%rbx
.LCFI259:
	subq	$32, %rsp
.LCFI260:
	leaq	16(%rsp), %r12
	jmp	.L1094
	.p2align 4,,7
.L1104:
	.loc 1 4859 0
	call	__errno_location
	cmpl	$4, (%rax)
	jne	.L1093
.L1094:
	.loc 1 4857 0
	movl	$16, 12(%rsp)
	.loc 1 4858 0
	movl	8(%rbp), %edi
	leaq	12(%rsp), %rdx
	movq	%r12, %rsi
	call	accept
	.loc 1 4859 0
	testl	%eax, %eax
	.loc 1 4858 0
	movl	%eax, %ebx
	.loc 1 4859 0
	js	.L1104
	.loc 1 4865 0
	movq	(%rbp), %rdi
	movl	$1, %edx
	movl	%eax, %esi
	call	net_socket_fd_init
	.loc 1 4866 0
	testq	%rax, %rax
	.loc 1 4865 0
	movq	%rax, %rbp
	.loc 1 4866 0
	je	.L1105
	.loc 1 4871 0
	movl	20(%rsp), %edi
.LBB163:
	movzwl	18(%rsp), %ebx
#APP
	rorw $8, %bx
#NO_APP
.LBE163:
	movzwl	%bx, %ebx
	call	inet_ntoa
	movq	(%rbp), %rdi
	movq	%rax, %rcx
	movl	%ebx, %r8d
	movl	$.LC168, %edx
	movl	$256, %esi
	xorl	%eax, %eax
	addq	$40, %rdi
	call	snprintf
.L1093:
	.loc 1 4873 0
	addq	$32, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	ret
.L1105:
	.loc 1 4867 0
	movl	%ebx, %edi
	call	close
	jmp	.L1093
.LFE420:
	.size	net_socket_accept, .-net_socket_accept
	.section	.rodata.str1.1
.LC170:
	.string	"unix socket: fd=%d"
.LC171:
	.string	"unix socket"
	.section	.rodata.str1.8
	.align 8
.LC169:
	.string	"Peer failed to connect to Argos using the unix socket.\n"
	.text
	.p2align 4,,15
	.type	net_unixsocket_accept, @function
net_unixsocket_accept:
.LFB424:
	.loc 1 4990 0
	pushq	%r12
.LCFI261:
	pushq	%rbp
.LCFI262:
	movq	%rdi, %rbp
	pushq	%rbx
.LCFI263:
	addq	$-128, %rsp
.LCFI264:
	leaq	16(%rsp), %r12
	jmp	.L1107
	.p2align 4,,7
.L1119:
	.loc 1 5000 0
	call	__errno_location
	cmpl	$4, (%rax)
	jne	.L1117
.L1107:
	.loc 1 4998 0
	movl	$110, 12(%rsp)
	.loc 1 4999 0
	movl	8(%rbp), %edi
	leaq	12(%rsp), %rdx
	movq	%r12, %rsi
	call	accept
	.loc 1 5000 0
	testl	%eax, %eax
	.loc 1 4999 0
	movl	%eax, %ebx
	.loc 1 5000 0
	js	.L1119
.LBB164:
.LBB165:
	.loc 1 4785 0
	movl	$4136, %edi
.LBE165:
	.loc 1 4783 0
	movq	(%rbp), %r12
.LBB166:
	.loc 1 4785 0
	call	qemu_mallocz
	.loc 1 4786 0
	testq	%rax, %rax
	.loc 1 4785 0
	movq	%rax, %rbp
	.loc 1 4786 0
	je	.L1120
	.loc 1 4789 0
	movq	%r12, %rdi
	.loc 1 4788 0
	movl	%ebx, 8(%rax)
	.loc 1 4789 0
	movq	%rax, %rcx
	xorl	%edx, %edx
	movl	$net_unixsocket_receive, %esi
	call	qemu_new_vlan_client
	.loc 1 4791 0
	leaq	40(%rax), %rdi
	.loc 1 4789 0
	movq	%rax, (%rbp)
	.loc 1 4791 0
	movl	%ebx, %ecx
	movl	$.LC170, %edx
	movl	$256, %esi
	xorl	%eax, %eax
	call	snprintf
	.loc 1 4794 0
	movl	8(%rbp), %edi
	movq	%rbp, %rcx
	xorl	%edx, %edx
	movl	$net_unixsocket_send, %esi
	call	qemu_set_fd_handler
.LBE166:
.LBE164:
	.loc 1 5011 0
	movq	(%rbp), %rdi
	movl	$.LC171, %edx
	movl	$256, %esi
	xorl	%eax, %eax
	addq	$40, %rdi
	call	snprintf
	.loc 1 5014 0
	subq	$-128, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	ret
.L1117:
	.loc 1 5001 0
	movq	stderr(%rip), %rcx
	movl	$55, %edx
	movl	$1, %esi
	movl	$.LC169, %edi
	call	fwrite
	.loc 1 5014 0
	subq	$-128, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	ret
.L1120:
	.loc 1 5009 0
	movl	%ebx, %edi
	call	close
	.loc 1 5014 0
	subq	$-128, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	ret
.LFE424:
	.size	net_unixsocket_accept, .-net_unixsocket_accept
	.p2align 4,,15
	.type	get_word, @function
get_word:
.LFB426:
	.loc 1 5411 0
	.loc 1 5430 0
	movzbl	(%rdx), %ecx
	.loc 1 5415 0
	xorl	%r10d, %r10d
	.loc 1 5411 0
	movq	%rdx, %r8
	.loc 1 5416 0
	movq	%rdi, %r9
	.loc 1 5430 0
	testb	%cl, %cl
	je	.L1123
	leal	-1(%rsi), %eax
	movslq	%eax,%rsi
	jmp	.L1131
	.p2align 4,,7
.L1124:
	.loc 1 5422 0
	cmpb	$34, %cl
	je	.L1134
	.loc 1 5426 0
	testl	%r10d, %r10d
	.p2align 4,,3
	jne	.L1126
	cmpb	$44, %cl
	sete	%dl
	cmpb	$61, %cl
	sete	%al
	orl	%edx, %eax
	testb	$1, %al
	jne	.L1123
	.p2align 4,,7
.L1126:
	.loc 1 5428 0
	testq	%r9, %r9
	je	.L1130
	movq	%r9, %rax
	subq	%rdi, %rax
	cmpq	%rsi, %rax
	jge	.L1130
	.loc 1 5429 0
	movb	%cl, (%r9)
	incq	%r9
	.p2align 4,,7
.L1130:
	.loc 1 5430 0
	incq	%r8
	movzbl	(%r8), %ecx
	testb	%cl, %cl
	je	.L1123
.L1131:
	.loc 1 5418 0
	cmpb	$92, %cl
	jne	.L1124
	.loc 1 5419 0
	incq	%r8
	.loc 1 5420 0
	movzbl	(%r8), %ecx
	testb	%cl, %cl
	jne	.L1126
	.p2align 4,,7
.L1123:
	.loc 1 5432 0
	testq	%r9, %r9
	je	.L1132
	.loc 1 5433 0
	movb	$0, (%r9)
.L1132:
	.loc 1 5436 0
	movq	%r8, %rax
	ret
	.p2align 4,,7
.L1134:
	.loc 1 5423 0
	testl	%r10d, %r10d
	sete	%al
	movzbl	%al, %r10d
	jmp	.L1130
.LFE426:
	.size	get_word, .-get_word
	.p2align 4,,15
	.type	get_param_value, @function
get_param_value:
.LFB427:
	.loc 1 5440 0
	pushq	%r14
.LCFI265:
	movl	%esi, %r14d
	pushq	%r13
.LCFI266:
	movq	%rdi, %r13
	pushq	%r12
.LCFI267:
	movq	%rdx, %r12
	pushq	%rbp
.LCFI268:
	pushq	%rbx
.LCFI269:
	movq	%rcx, %rbx
	addq	$-128, %rsp
.LCFI270:
	movq	%rsp, %rbp
	jmp	.L1136
	.p2align 4,,7
.L1143:
.LBB167:
	.loc 1 5450 0
	movq	%rbp, %rsi
	movq	%r12, %rdi
.LBE167:
	.loc 1 5449 0
	incq	%rbx
.LBB168:
	.loc 1 5450 0
	call	strcmp
.LBE168:
	testl	%eax, %eax
	je	.L1142
	.loc 1 5454 0
	movq	%rbx, %rdx
	xorl	%esi, %esi
	xorl	%edi, %edi
	call	get_word
	.loc 1 5456 0
	cmpb	$44, (%rax)
	.loc 1 5454 0
	movq	%rax, %rbx
	.loc 1 5456 0
	jne	.L1137
	.loc 1 5458 0
	incq	%rbx
.L1136:
	.loc 1 5446 0
	movq	%rbx, %rdx
	movl	$128, %esi
	movq	%rbp, %rdi
	call	get_word
	.loc 1 5447 0
	cmpb	$61, (%rax)
	.loc 1 5446 0
	movq	%rax, %rbx
	.loc 1 5447 0
	je	.L1143
.L1137:
	.loc 1 5461 0
	subq	$-128, %rsp
	.loc 1 5460 0
	xorl	%eax, %eax
	.loc 1 5461 0
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	ret
.L1142:
	.loc 1 5451 0
	movq	%rbx, %rdx
	movl	%r14d, %esi
	movq	%r13, %rdi
	call	get_word
	.loc 1 5452 0
	movq	%r13, %rdi
	call	strlen
	.loc 1 5461 0
	subq	$-128, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	ret
.LFE427:
	.size	get_param_value, .-get_param_value
	.section	.rodata.str1.1
.LC172:
	.string	"VLAN %d devices:\n"
.LC173:
	.string	"  %s\n"
	.text
	.p2align 4,,15
.globl do_info_network
	.type	do_info_network, @function
do_info_network:
.LFB430:
	.loc 1 5651 0
	pushq	%rbp
.LCFI271:
	pushq	%rbx
.LCFI272:
	subq	$8, %rsp
.LCFI273:
	.loc 1 5655 0
	movq	first_vlan(%rip), %rbp
	testq	%rbp, %rbp
	je	.L1154
	.p2align 4,,7
.L1160:
	.loc 1 5656 0
	movl	(%rbp), %esi
	movl	$.LC172, %edi
	xorl	%eax, %eax
	call	term_printf
	.loc 1 5657 0
	movq	8(%rbp), %rbx
	jmp	.L1158
	.p2align 4,,7
.L1159:
	.loc 1 5658 0
	leaq	40(%rbx), %rsi
	movl	$.LC173, %edi
	xorl	%eax, %eax
	call	term_printf
	.loc 1 5657 0
	movq	24(%rbx), %rbx
.L1158:
	testq	%rbx, %rbx
	jne	.L1159
	.loc 1 5655 0
	movq	16(%rbp), %rbp
	testq	%rbp, %rbp
	jne	.L1160
.L1154:
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
.LFE430:
	.size	do_info_network, .-do_info_network
	.section	.rodata.str1.1
.LC174:
	.string	"qemu: too many drives\n"
	.text
	.p2align 4,,15
	.type	drive_add, @function
drive_add:
.LFB431:
	.loc 1 5674 0
	subq	$216, %rsp
.LCFI274:
	.loc 1 5674 0
	movq	%rdx, 48(%rsp)
	movzbl	%al, %edx 
	movq	%rsi, 40(%rsp)
	leaq	0(,%rdx,4), %rax
	movl	$.L1162, %edx
	movq	%rcx, 56(%rsp)
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
.L1162:
	.loc 1 5677 0
	movl	nb_drives_opt(%rip), %eax
	.loc 1 5674 0
	movq	%rdi, %rdx
	.loc 1 5677 0
	cmpl	$31, %eax
	jg	.L1164
	.loc 1 5682 0
	leaq	224(%rsp), %rcx
	.loc 1 5683 0
	movslq	%eax,%rdi
	movl	$1024, %esi
	salq	$10, %rdi
	.loc 1 5682 0
	movl	$8, (%rsp)
	movl	$48, 4(%rsp)
	movq	%rcx, 8(%rsp)
	leaq	32(%rsp), %rcx
	.loc 1 5683 0
	addq	$drives_opt, %rdi
	.loc 1 5682 0
	movq	%rcx, 16(%rsp)
	.loc 1 5683 0
	movq	%rsp, %rcx
	call	vsnprintf
	.loc 1 5686 0
	movl	nb_drives_opt(%rip), %eax
	leal	1(%rax), %edx
	movl	%edx, nb_drives_opt(%rip)
	.loc 1 5687 0
	addq	$216, %rsp
	ret
.L1164:
	.loc 1 5678 0
	movq	stderr(%rip), %rcx
	movl	$.LC174, %edi
	movl	$22, %edx
	movl	$1, %esi
	call	fwrite
	.loc 1 5679 0
	movl	$1, %edi
	call	exit
.LFE431:
	.size	drive_add, .-drive_add
	.p2align 4,,15
.globl drive_get_index
	.type	drive_get_index, @function
drive_get_index:
.LFB432:
	.loc 1 5690 0
	.loc 1 5695 0
	movl	nb_drives(%rip), %r8d
	xorl	%eax, %eax
	cmpl	%r8d, %eax
	jge	.L1172
	xorl	%ecx, %ecx
	jmp	.L1170
	.p2align 4,,7
.L1168:
	incl	%eax
	addq	$24, %rcx
	cmpl	%r8d, %eax
	jge	.L1172
.L1170:
	.loc 1 5696 0
	cmpl	%edi, drives_table+8(%rcx)
	jne	.L1168
	cmpl	%esi, drives_table+12(%rcx)
	jne	.L1168
	cmpl	%edx, drives_table+16(%rcx)
	jne	.L1168
	.loc 1 5702 0
	rep ; ret
	.p2align 4,,7
.L1172:
	.loc 1 5701 0
	movl	$-1, %eax
	.loc 1 5702 0
	ret
.LFE432:
	.size	drive_get_index, .-drive_get_index
	.p2align 4,,15
.globl drive_get_max_bus
	.type	drive_get_max_bus, @function
drive_get_max_bus:
.LFB433:
	.loc 1 5705 0
	.loc 1 5710 0
	movl	nb_drives(%rip), %esi
	xorl	%ecx, %ecx
	.loc 1 5709 0
	movl	$-1, %r8d
	.loc 1 5710 0
	cmpl	%esi, %ecx
	jge	.L1180
	xorl	%edx, %edx
	jmp	.L1178
	.p2align 4,,7
.L1176:
	incl	%ecx
	addq	$24, %rdx
	cmpl	%esi, %ecx
	jge	.L1180
.L1178:
	.loc 1 5711 0
	cmpl	%edi, drives_table+8(%rdx)
	jne	.L1176
	movl	drives_table+12(%rdx), %eax
	.loc 1 5713 0
	cmpl	%r8d, %eax
	cmovg	%eax, %r8d
	.loc 1 5710 0
	incl	%ecx
	addq	$24, %rdx
	cmpl	%esi, %ecx
	jl	.L1178
	.p2align 4,,7
.L1180:
	.loc 1 5716 0
	movl	%r8d, %eax
	ret
.LFE433:
	.size	drive_get_max_bus, .-drive_get_max_bus
	.p2align 4,,15
.globl qemu_register_usb_port
	.type	qemu_register_usb_port, @function
qemu_register_usb_port:
.LFB435:
	.loc 1 6019 0
	.loc 1 6020 0
	movq	%rsi, 16(%rdi)
	.loc 1 6021 0
	movl	%edx, 24(%rdi)
	.loc 1 6022 0
	movq	%rcx, 8(%rdi)
	.loc 1 6023 0
	movq	free_usb_ports(%rip), %rax
	movq	%rax, 32(%rdi)
	.loc 1 6024 0
	movq	%rdi, free_usb_ports(%rip)
	ret
.LFE435:
	.size	qemu_register_usb_port, .-qemu_register_usb_port
	.section	.rodata.str1.1
.LC175:
	.string	"host:"
.LC176:
	.string	"mouse"
.LC177:
	.string	"tablet"
.LC178:
	.string	"keyboard"
.LC179:
	.string	"disk:"
.LC180:
	.string	"wacom-tablet"
	.text
	.p2align 4,,15
	.type	usb_device_add, @function
usb_device_add:
.LFB436:
	.loc 1 6028 0
	pushq	%rbp
.LCFI275:
	.loc 1 6034 0
	movl	$-1, %ecx
	.loc 1 6028 0
	pushq	%rbx
.LCFI276:
	movq	%rdi, %rbx
	subq	$8, %rsp
.LCFI277:
	.loc 1 6033 0
	cmpq	$0, free_usb_ports(%rip)
	je	.L1182
	.loc 1 6036 0
	movq	%rsp, %rdx
	movl	$.LC175, %esi
	call	strstart
	testl	%eax, %eax
	jne	.L1219
.LBB169:
	.loc 1 6038 0
	cld
	movl	$.LC176, %edi
	movl	$6, %ecx
	movq	%rbx, %rsi
.LBE169:
	repz
	cmpsb
	je	.L1220
.LBB170:
	.loc 1 6040 0
	cld
	movl	$.LC177, %edi
	movl	$7, %ecx
	movq	%rbx, %rsi
.LBE170:
	repz
	cmpsb
	je	.L1221
.LBB171:
	.loc 1 6042 0
	cld
	movl	$.LC178, %edi
	movl	$9, %ecx
	movq	%rbx, %rsi
.LBE171:
	repz
	cmpsb
	je	.L1222
	.loc 1 6044 0
	movq	%rsp, %rdx
	movl	$.LC179, %esi
	movq	%rbx, %rdi
	call	strstart
	testl	%eax, %eax
	jne	.L1223
.LBB172:
	.loc 1 6046 0
	cld
	movl	$13, %ecx
	movl	$.LC180, %edi
	movq	%rbx, %rsi
	repz
	cmpsb
.LBE172:
	.loc 1 6049 0
	movl	$-1, %ecx
.LBB173:
	.loc 1 6046 0
	seta	%dl
	setb	%al
.LBE173:
	cmpb	%al, %dl
	jne	.L1182
	.loc 1 6047 0
	call	usb_wacom_init
	jmp	.L1218
	.p2align 4,,7
.L1219:
	.loc 1 6037 0
	movq	(%rsp), %rdi
	.p2align 4,,6
	call	usb_host_device_open
	.p2align 4,,7
.L1218:
	.loc 1 6051 0
	testq	%rax, %rax
	.loc 1 6047 0
	movq	%rax, %rbp
	.loc 1 6052 0
	movl	$-1, %ecx
	.loc 1 6051 0
	je	.L1182
	.loc 1 6055 0
	movq	free_usb_ports(%rip), %rbx
	.loc 1 6056 0
	movq	32(%rbx), %rax
	testq	%rax, %rax
	je	.L1224
.L1217:
	.loc 1 6069 0
	movq	%rax, free_usb_ports(%rip)
	.loc 1 6070 0
	movq	used_usb_ports(%rip), %rax
	.loc 1 6072 0
	movq	%rbp, %rsi
	movq	%rbx, %rdi
	.loc 1 6070 0
	movq	%rax, 32(%rbx)
	.loc 1 6071 0
	movq	%rbx, used_usb_ports(%rip)
	.loc 1 6072 0
	call	usb_attach
	.loc 1 6073 0
	xorl	%ecx, %ecx
.L1182:
	.loc 1 6074 0
	addq	$8, %rsp
	movl	%ecx, %eax
	popq	%rbx
	popq	%rbp
	ret
	.p2align 4,,7
.L1224:
.LBB174:
	.loc 1 6061 0
	movq	used_usb_ports(%rip), %rax
	.loc 1 6060 0
	movq	$0, free_usb_ports(%rip)
	.loc 1 6064 0
	movl	$8, %edi
	.loc 1 6061 0
	movq	%rax, 32(%rbx)
	.loc 1 6062 0
	movq	%rbx, used_usb_ports(%rip)
	.loc 1 6064 0
	call	usb_hub_init
	.loc 1 6065 0
	movq	%rbx, %rdi
	.loc 1 6064 0
	movq	%rax, %rsi
	.loc 1 6065 0
	call	usb_attach
	.loc 1 6066 0
	movq	free_usb_ports(%rip), %rbx
	movq	32(%rbx), %rax
	jmp	.L1217
	.p2align 4,,7
.L1220:
.LBE174:
	.loc 1 6039 0
	call	usb_mouse_init
	jmp	.L1218
	.p2align 4,,7
.L1222:
	.loc 1 6043 0
	.p2align 4,,8
	call	usb_keyboard_init
	.p2align 4,,8
	jmp	.L1218
	.p2align 4,,7
.L1221:
	.loc 1 6041 0
	.p2align 4,,8
	call	usb_tablet_init
	.p2align 4,,8
	jmp	.L1218
.L1223:
	.loc 1 6045 0
	movq	(%rsp), %rdi
	.p2align 4,,6
	call	usb_msd_init
	.p2align 4,,6
	jmp	.L1218
.LFE436:
	.size	usb_device_add, .-usb_device_add
	.section	.rodata.str1.8
	.align 8
.LC181:
	.string	"Could not add USB device '%s'\n"
	.text
	.p2align 4,,15
.globl do_usb_add
	.type	do_usb_add, @function
do_usb_add:
.LFB438:
	.loc 1 6115 0
	pushq	%rbx
.LCFI278:
	.loc 1 6115 0
	movq	%rdi, %rbx
	.loc 1 6117 0
	call	usb_device_add
	.loc 1 6118 0
	testl	%eax, %eax
	js	.L1227
	.loc 1 6120 0
	popq	%rbx
	ret
	.p2align 4,,7
.L1227:
	.loc 1 6119 0
	movq	%rbx, %rsi
	movl	$.LC181, %edi
	xorl	%eax, %eax
	.loc 1 6120 0
	popq	%rbx
	.loc 1 6119 0
	jmp	term_printf
.LFE438:
	.size	do_usb_add, .-do_usb_add
	.section	.rodata.str1.8
	.align 8
.LC182:
	.string	"Could not remove USB device '%s'\n"
	.text
	.p2align 4,,15
.globl do_usb_del
	.type	do_usb_del, @function
do_usb_del:
.LFB439:
	.loc 1 6123 0
	movq	%r12, -8(%rsp)
.LCFI279:
	movq	%rbx, -24(%rsp)
.LCFI280:
	movq	%rdi, %r12
	movq	%rbp, -16(%rsp)
.LCFI281:
	subq	$24, %rsp
.LCFI282:
.LBB175:
.LBB176:
	.loc 1 6084 0
	cmpq	$0, used_usb_ports(%rip)
	je	.L1239
	.loc 1 6087 0
	movl	$46, %esi
	call	strchr
	.loc 1 6088 0
	testq	%rax, %rax
	.loc 1 6087 0
	movq	%rax, %rbx
	.loc 1 6088 0
	je	.L1239
	.loc 1 6090 0
	xorl	%edx, %edx
	xorl	%esi, %esi
	movq	%r12, %rdi
	call	strtoul
	.loc 1 6091 0
	leaq	1(%rbx), %rdi
	xorl	%edx, %edx
	.loc 1 6090 0
	movl	%eax, %ebp
	.loc 1 6091 0
	xorl	%esi, %esi
	call	strtoul
	.loc 1 6092 0
	testl	%ebp, %ebp
	.loc 1 6091 0
	movl	%eax, %edx
	.loc 1 6092 0
	jne	.L1239
	.loc 1 6096 0
	movq	used_usb_ports(%rip), %rbp
	.loc 1 6095 0
	movl	$used_usb_ports, %ecx
	jmp	.L1242
	.p2align 4,,7
.L1243:
	.loc 1 6098 0
	leaq	32(%rbp), %rcx
	.loc 1 6099 0
	movq	32(%rbp), %rbp
.L1242:
	testq	%rbp, %rbp
	je	.L1239
	movq	(%rbp), %rax
	movzbl	56(%rax), %eax
	cmpl	%edx, %eax
	jne	.L1243
	.loc 1 6102 0
	testq	%rbp, %rbp
	je	.L1239
	.loc 1 6106 0
	movq	32(%rbp), %rax
	.loc 1 6105 0
	movq	(%rbp), %rbx
	.loc 1 6107 0
	movq	%rbp, %rdi
	xorl	%esi, %esi
	.loc 1 6106 0
	movq	%rax, (%rcx)
	.loc 1 6107 0
	call	usb_attach
	.loc 1 6108 0
	movq	%rbx, %rdi
	call	*16(%rbx)
	.loc 1 6109 0
	movq	free_usb_ports(%rip), %rax
	movq	%rax, 32(%rbp)
	.loc 1 6110 0
	movq	%rbp, free_usb_ports(%rip)
.LBE176:
.LBE175:
	.loc 1 6128 0
	movq	(%rsp), %rbx
	movq	8(%rsp), %rbp
	movq	16(%rsp), %r12
	addq	$24, %rsp
	ret
	.p2align 4,,7
.L1239:
	.loc 1 6127 0
	movq	%r12, %rsi
	.loc 1 6128 0
	movq	(%rsp), %rbx
	movq	8(%rsp), %rbp
	movq	16(%rsp), %r12
	.loc 1 6127 0
	movl	$.LC182, %edi
	xorl	%eax, %eax
	.loc 1 6128 0
	addq	$24, %rsp
	.loc 1 6127 0
	jmp	term_printf
.LFE439:
	.size	do_usb_del, .-do_usb_del
	.section	.rodata.str1.1
.LC185:
	.string	"12"
.LC186:
	.string	"480"
.LC187:
	.string	"?"
	.section	.rodata.str1.8
	.align 8
.LC188:
	.string	"  Device %d.%d, Speed %s Mb/s, Product %s\n"
	.section	.rodata.str1.1
.LC184:
	.string	"1.5"
.LC183:
	.string	"USB support not enabled\n"
	.text
	.p2align 4,,15
.globl usb_info
	.type	usb_info, @function
usb_info:
.LFB440:
	.loc 1 6131 0
	.loc 1 6136 0
	movl	usb_enabled(%rip), %r8d
	.loc 1 6131 0
	pushq	%rbx
.LCFI283:
	.loc 1 6136 0
	testl	%r8d, %r8d
	je	.L1261
	.loc 1 6141 0
	movq	used_usb_ports(%rip), %rbx
	jmp	.L1259
	.p2align 4,,7
.L1263:
	.loc 1 6142 0
	movq	(%rbx), %rax
	.loc 1 6143 0
	testq	%rax, %rax
	je	.L1248
	.loc 1 6145 0
	movl	24(%rax), %edx
	.loc 1 6150 0
	movl	$.LC185, %ecx
	.loc 1 6145 0
	cmpl	$1, %edx
	je	.L1250
	jle	.L1262
	.loc 1 6153 0
	movl	$.LC186, %ecx
	.loc 1 6145 0
	cmpl	$2, %edx
.L1260:
	je	.L1250
	.loc 1 6156 0
	movl	$.LC187, %ecx
.L1250:
	.loc 1 6159 0
	movzbl	56(%rax), %edx
	leaq	57(%rax), %r8
	xorl	%esi, %esi
	movl	$.LC188, %edi
	xorl	%eax, %eax
	call	term_printf
.L1248:
	.loc 1 6141 0
	movq	32(%rbx), %rbx
.L1259:
	testq	%rbx, %rbx
	jne	.L1263
	.loc 1 6162 0
	popq	%rbx
	ret
	.p2align 4,,7
.L1262:
	.loc 1 6147 0
	movl	$.LC184, %ecx
	.loc 1 6145 0
	testl	%edx, %edx
	jmp	.L1260
	.p2align 4,,7
.L1261:
	.loc 1 6162 0
	popq	%rbx
	.loc 1 6137 0
	movl	$.LC183, %edi
	xorl	%eax, %eax
	jmp	term_printf
.LFE440:
	.size	usb_info, .-usb_info
	.p2align 4,,15
.globl pcmcia_socket_register
	.type	pcmcia_socket_register, @function
pcmcia_socket_register:
.LFB441:
	.loc 1 6173 0
	pushq	%rbx
.LCFI284:
	.loc 1 6173 0
	movq	%rdi, %rbx
	.loc 1 6176 0
	movl	$16, %edi
	call	qemu_malloc
	.loc 1 6177 0
	movq	%rbx, (%rax)
	.loc 1 6178 0
	movq	pcmcia_sockets(%rip), %rdx
	movq	%rdx, 8(%rax)
	.loc 1 6179 0
	movq	%rax, pcmcia_sockets(%rip)
	popq	%rbx
	ret
.LFE441:
	.size	pcmcia_socket_register, .-pcmcia_socket_register
	.p2align 4,,15
.globl pcmcia_socket_unregister
	.type	pcmcia_socket_unregister, @function
pcmcia_socket_unregister:
.LFB442:
	.loc 1 6183 0
	pushq	%rbp
.LCFI285:
	.loc 1 6186 0
	movl	$pcmcia_sockets, %edx
	.loc 1 6183 0
	movq	%rdi, %rbp
	pushq	%rbx
.LCFI286:
	subq	$8, %rsp
.LCFI287:
	.loc 1 6187 0
	movq	pcmcia_sockets(%rip), %rbx
	jmp	.L1273
	.p2align 4,,7
.L1275:
	.loc 1 6188 0
	cmpq	%rbp, (%rbx)
	je	.L1274
.L1268:
	.loc 1 6187 0
	leaq	8(%rbx), %rdx
	movq	8(%rbx), %rbx
.L1273:
	testq	%rbx, %rbx
	jne	.L1275
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
.L1274:
	.loc 1 6189 0
	movq	8(%rbx), %rax
	.loc 1 6190 0
	movq	%rbx, %rdi
	.loc 1 6189 0
	movq	%rax, (%rdx)
	.loc 1 6190 0
	call	qemu_free
	jmp	.L1268
.LFE442:
	.size	pcmcia_socket_unregister, .-pcmcia_socket_unregister
	.section	.rodata.str1.1
.LC190:
	.string	"Empty"
.LC191:
	.string	"%s: %s\n"
.LC189:
	.string	"No PCMCIA sockets\n"
	.text
	.p2align 4,,15
.globl pcmcia_info
	.type	pcmcia_info, @function
pcmcia_info:
.LFB443:
	.loc 1 6195 0
	.loc 1 6197 0
	movq	pcmcia_sockets(%rip), %rax
	.loc 1 6195 0
	pushq	%rbx
.LCFI288:
	.loc 1 6197 0
	testq	%rax, %rax
	je	.L1289
.L1277:
	.loc 1 6200 0
	movq	%rax, %rbx
	jmp	.L1288
	.p2align 4,,7
.L1290:
	.loc 1 6201 0
	movq	(%rbx), %rax
	movl	$.LC190, %edx
	movl	8(%rax), %r9d
	testl	%r9d, %r9d
	je	.L1284
	movq	24(%rax), %rdx
.L1284:
	movq	16(%rax), %rsi
	movl	$.LC191, %edi
	xorl	%eax, %eax
	call	term_printf
	.loc 1 6200 0
	movq	8(%rbx), %rbx
.L1288:
	testq	%rbx, %rbx
	jne	.L1290
	popq	%rbx
	ret
.L1289:
	.loc 1 6198 0
	movl	$.LC189, %edi
	call	term_printf
	movq	pcmcia_sockets(%rip), %rax
	jmp	.L1277
.LFE443:
	.size	pcmcia_info, .-pcmcia_info
	.p2align 4,,15
	.type	dumb_update, @function
dumb_update:
.LFB444:
	.loc 1 6210 0
	.loc 1 6210 0
	rep ; ret
.LFE444:
	.size	dumb_update, .-dumb_update
	.p2align 4,,15
	.type	dumb_resize, @function
dumb_resize:
.LFB445:
	.loc 1 6214 0
	.loc 1 6214 0
	rep ; ret
.LFE445:
	.size	dumb_resize, .-dumb_resize
	.p2align 4,,15
	.type	dumb_refresh, @function
dumb_refresh:
.LFB446:
	.loc 1 6218 0
	.loc 1 6220 0
	jmp	vga_hw_update
.LFE446:
	.size	dumb_refresh, .-dumb_refresh
	.p2align 4,,15
.globl qemu_add_polling_cb
	.type	qemu_add_polling_cb, @function
qemu_add_polling_cb:
.LFB450:
	.loc 1 6316 0
	pushq	%rbp
.LCFI289:
	movq	%rsi, %rbp
	pushq	%rbx
.LCFI290:
	movq	%rdi, %rbx
	.loc 1 6318 0
	movl	$24, %edi
	.loc 1 6316 0
	subq	$8, %rsp
.LCFI291:
	.loc 1 6318 0
	call	qemu_mallocz
	movq	%rax, %rcx
	.loc 1 6320 0
	movl	$-1, %eax
	.loc 1 6319 0
	testq	%rcx, %rcx
	je	.L1294
	.loc 1 6321 0
	movq	%rbx, (%rcx)
	.loc 1 6322 0
	movq	%rbp, 8(%rcx)
	.loc 1 6323 0
	movl	$first_polling_entry, %edx
	cmpq	$0, first_polling_entry(%rip)
	jmp	.L1302
	.p2align 4,,7
.L1303:
	movq	(%rdx), %rax
	cmpq	$0, 16(%rax)
	leaq	16(%rax), %rdx
.L1302:
	jne	.L1303
	.loc 1 6324 0
	movq	%rcx, (%rdx)
	.loc 1 6325 0
	xorl	%eax, %eax
.L1294:
	.loc 1 6326 0
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
.LFE450:
	.size	qemu_add_polling_cb, .-qemu_add_polling_cb
	.p2align 4,,15
.globl qemu_del_polling_cb
	.type	qemu_del_polling_cb, @function
qemu_del_polling_cb:
.LFB451:
	.loc 1 6329 0
	.loc 1 6331 0
	cmpq	$0, first_polling_entry(%rip)
	.loc 1 6329 0
	movq	%rdi, %rcx
	.loc 1 6331 0
	movl	$first_polling_entry, %edx
	jmp	.L1312
	.p2align 4,,7
.L1314:
	.loc 1 6332 0
	movq	(%rdx), %rax
	.loc 1 6333 0
	cmpq	%rcx, (%rax)
	.loc 1 6332 0
	movq	%rax, %rdi
	.loc 1 6333 0
	je	.L1313
.L1307:
	.loc 1 6331 0
	cmpq	$0, 16(%rax)
	leaq	16(%rax), %rdx
.L1312:
	jne	.L1314
	rep ; ret
	.p2align 4,,7
.L1313:
	.loc 1 6333 0
	cmpq	%rsi, 8(%rax)
	jne	.L1307
	.loc 1 6334 0
	movq	16(%rax), %rax
	movq	%rax, (%rdx)
	.loc 1 6335 0
	jmp	qemu_free
.LFE451:
	.size	qemu_del_polling_cb, .-qemu_del_polling_cb
	.p2align 4,,15
.globl qemu_fopen
	.type	qemu_fopen, @function
qemu_fopen:
.LFB452:
	.loc 1 6405 0
	movq	%rbx, -24(%rsp)
.LCFI292:
	movq	%rbp, -16(%rsp)
.LCFI293:
	movq	%rsi, %rbp
	movq	%r12, -8(%rsp)
.LCFI294:
	subq	$24, %rsp
.LCFI295:
	.loc 1 6405 0
	movq	%rdi, %r12
	.loc 1 6408 0
	movl	$32816, %edi
	call	qemu_mallocz
	movq	%rax, %rbx
	.loc 1 6410 0
	xorl	%eax, %eax
	.loc 1 6409 0
	testq	%rbx, %rbx
	je	.L1315
.LBB177:
.LBB178:
	.loc 1 6411 0
	movzbl	(%rbp), %edx
	movzbl	%dl, %eax
	subl	$119, %eax
	je	.L1335
.L1320:
.LBE178:
.LBE177:
	testl	%eax, %eax
	jne	.L1317
.L1336:
	.loc 1 6412 0
	movl	$1, 20(%rbx)
	.loc 1 6418 0
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	fopen64
	.loc 1 6419 0
	testq	%rax, %rax
	.loc 1 6418 0
	movq	%rax, (%rbx)
	.loc 1 6419 0
	je	.L1333
.L1338:
	.loc 1 6421 0
	movl	$1, 16(%rbx)
	.loc 1 6422 0
	movq	%rbx, %rax
.L1315:
	.loc 1 6428 0
	movq	(%rsp), %rbx
	movq	8(%rsp), %rbp
	movq	16(%rsp), %r12
	addq	$24, %rsp
	ret
	.p2align 4,,7
.L1335:
.LBB179:
.LBB180:
	.loc 1 6411 0
	movzbl	1(%rbp), %eax
	subl	$98, %eax
	jne	.L1320
	movzbl	2(%rbp), %eax
.LBE180:
.LBE179:
	testl	%eax, %eax
	je	.L1336
	.p2align 4,,7
.L1317:
.LBB181:
.LBB182:
	.loc 1 6413 0
	movzbl	%dl, %eax
	subl	$114, %eax
	jne	.L1327
	movzbl	1(%rbp), %eax
	subl	$98, %eax
	je	.L1337
	.p2align 4,,7
.L1327:
.LBE182:
.LBE181:
	testl	%eax, %eax
	jne	.L1334
.L1339:
	.loc 1 6414 0
	movl	$0, 20(%rbx)
	.loc 1 6418 0
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	fopen64
	.loc 1 6419 0
	testq	%rax, %rax
	.loc 1 6418 0
	movq	%rax, (%rbx)
	.loc 1 6419 0
	jne	.L1338
	.p2align 4,,7
.L1333:
	.loc 1 6426 0
	movq	%rbx, %rdi
	call	qemu_free
	.loc 1 6428 0
	movq	(%rsp), %rbx
	movq	8(%rsp), %rbp
	.loc 1 6427 0
	xorl	%eax, %eax
	.loc 1 6428 0
	movq	16(%rsp), %r12
	addq	$24, %rsp
	ret
	.p2align 4,,7
.L1337:
.LBB183:
.LBB184:
	.loc 1 6413 0
	movzbl	2(%rbp), %eax
.LBE184:
.LBE183:
	testl	%eax, %eax
	je	.L1339
	.p2align 4,,7
.L1334:
.L1331:
	movq	(%rbx), %rax
	.loc 1 6424 0
	testq	%rax, %rax
	je	.L1333
	.loc 1 6425 0
	movq	%rax, %rdi
	call	fclose
	.p2align 4,,2
	jmp	.L1333
.LFE452:
	.size	qemu_fopen, .-qemu_fopen
	.p2align 4,,15
	.type	qemu_fopen_bdrv, @function
qemu_fopen_bdrv:
.LFB453:
	.loc 1 6431 0
	movq	%rbx, -24(%rsp)
.LCFI296:
	movq	%rbp, -16(%rsp)
.LCFI297:
	movq	%rdi, %rbp
	movq	%r12, -8(%rsp)
.LCFI298:
	.loc 1 6434 0
	movl	$32816, %edi
	.loc 1 6431 0
	subq	$24, %rsp
.LCFI299:
	.loc 1 6431 0
	movl	%edx, %ebx
	movq	%rsi, %r12
	.loc 1 6434 0
	call	qemu_mallocz
	.loc 1 6436 0
	xorl	%edx, %edx
	.loc 1 6435 0
	testq	%rax, %rax
	je	.L1340
	.loc 1 6437 0
	movl	$0, 16(%rax)
	.loc 1 6438 0
	movq	%rbp, 8(%rax)
	.loc 1 6441 0
	movq	%rax, %rdx
	.loc 1 6439 0
	movl	%ebx, 20(%rax)
	.loc 1 6440 0
	movq	%r12, 24(%rax)
.L1340:
	.loc 1 6442 0
	movq	(%rsp), %rbx
	movq	8(%rsp), %rbp
	movq	%rdx, %rax
	movq	16(%rsp), %r12
	addq	$24, %rsp
	ret
.LFE453:
	.size	qemu_fopen_bdrv, .-qemu_fopen_bdrv
	.p2align 4,,15
.globl qemu_fflush
	.type	qemu_fflush, @function
qemu_fflush:
.LFB454:
	.loc 1 6445 0
	pushq	%rbx
.LCFI300:
	.loc 1 6446 0
	movl	20(%rdi), %r11d
	.loc 1 6445 0
	movq	%rdi, %rbx
	.loc 1 6446 0
	testl	%r11d, %r11d
	je	.L1342
	.loc 1 6448 0
	movl	40(%rdi), %ecx
	testl	%ecx, %ecx
	jle	.L1342
	.loc 1 6449 0
	movl	16(%rdi), %r10d
	testl	%r10d, %r10d
	jne	.L1347
	.loc 1 6453 0
	movq	32(%rdi), %rsi
	addq	24(%rdi), %rsi
	leaq	48(%rdi), %rdx
	movq	8(%rdi), %rdi
	call	bdrv_pwrite
.L1346:
	.loc 1 6456 0
	movslq	40(%rbx),%rax
	.loc 1 6457 0
	movl	$0, 40(%rbx)
	.loc 1 6456 0
	addq	%rax, 32(%rbx)
.L1342:
	.loc 1 6459 0
	popq	%rbx
	ret
	.p2align 4,,7
.L1347:
	.loc 1 6450 0
	movq	32(%rdi), %rsi
	movq	(%rdi), %rdi
	xorl	%edx, %edx
	call	fseek
	.loc 1 6451 0
	movslq	40(%rbx),%rdx
	movq	(%rbx), %rcx
	leaq	48(%rbx), %rdi
	movl	$1, %esi
	call	fwrite
	jmp	.L1346
.LFE454:
	.size	qemu_fflush, .-qemu_fflush
	.p2align 4,,15
.globl qemu_put_byte
	.type	qemu_put_byte, @function
qemu_put_byte:
.LFB458:
	.loc 1 6510 0
	.loc 1 6511 0
	movl	40(%rdi), %eax
	movslq	%eax,%rdx
	incl	%eax
	.loc 1 6512 0
	cmpl	$32767, %eax
	.loc 1 6511 0
	movb	%sil, 48(%rdx,%rdi)
	movl	%eax, 40(%rdi)
	.loc 1 6512 0
	jg	.L1350
	rep ; ret
	.p2align 4,,7
.L1350:
	.loc 1 6513 0
	jmp	qemu_fflush
.LFE458:
	.size	qemu_put_byte, .-qemu_put_byte
	.p2align 4,,15
.globl qemu_put_be32
	.type	qemu_put_be32, @function
qemu_put_be32:
.LFB464:
	.loc 1 6582 0
	movq	%rbx, -16(%rsp)
.LCFI301:
	movq	%r12, -8(%rsp)
.LCFI302:
	movl	%esi, %ebx
	subq	$24, %rsp
.LCFI303:
	.loc 1 6583 0
	shrl	$24, %esi
	.loc 1 6582 0
	movq	%rdi, %r12
	.loc 1 6583 0
	call	qemu_put_byte
	.loc 1 6584 0
	movl	%ebx, %esi
	movq	%r12, %rdi
	shrl	$16, %esi
	call	qemu_put_byte
	.loc 1 6585 0
	movl	%ebx, %esi
	movq	%r12, %rdi
	shrl	$8, %esi
	call	qemu_put_byte
	.loc 1 6586 0
	movl	%ebx, %esi
	movq	%r12, %rdi
	movq	8(%rsp), %rbx
	movq	16(%rsp), %r12
	addq	$24, %rsp
	jmp	qemu_put_byte
.LFE464:
	.size	qemu_put_be32, .-qemu_put_be32
	.p2align 4,,15
.globl qemu_put_be64
	.type	qemu_put_be64, @function
qemu_put_be64:
.LFB465:
	.loc 1 6590 0
	movq	%rbx, -16(%rsp)
.LCFI304:
	movq	%r12, -8(%rsp)
.LCFI305:
	movq	%rsi, %rbx
	subq	$24, %rsp
.LCFI306:
	.loc 1 6590 0
	movq	%rdi, %r12
	.loc 1 6591 0
	shrq	$32, %rsi
	call	qemu_put_be32
	.loc 1 6592 0
	movl	%ebx, %esi
	movq	%r12, %rdi
	movq	8(%rsp), %rbx
	movq	16(%rsp), %r12
	addq	$24, %rsp
	jmp	qemu_put_be32
.LFE465:
	.size	qemu_put_be64, .-qemu_put_be64
	.section	.rodata.str1.8
	.align 8
.LC194:
	.string	"cannot save state if virtual timers are running"
	.text
	.p2align 4,,15
	.type	timer_save, @function
timer_save:
.LFB305:
	.loc 1 1457 0
	.loc 1 1458 0
	movl	cpu_ticks_enabled(%rip), %eax
	.loc 1 1457 0
	pushq	%rbx
.LCFI307:
	.loc 1 1457 0
	movq	%rdi, %rbx
	.loc 1 1458 0
	testl	%eax, %eax
	jne	.L1355
	.loc 1 1461 0
	movq	cpu_ticks_offset(%rip), %rsi
	call	qemu_put_be64
	.loc 1 1462 0
	movq	ticks_per_sec(%rip), %rsi
	movq	%rbx, %rdi
	call	qemu_put_be64
	.loc 1 1463 0
	movq	%rbx, %rdi
	movq	cpu_clock_offset(%rip), %rsi
	popq	%rbx
	jmp	qemu_put_be64
.L1355:
	.loc 1 1459 0
	movl	$.LC194, %edi
	xorl	%eax, %eax
	call	hw_error
.LFE305:
	.size	timer_save, .-timer_save
	.p2align 4,,15
.globl qemu_put_timer
	.type	qemu_put_timer, @function
qemu_put_timer:
.LFB303:
	.loc 1 1433 0
	movq	%rbx, -16(%rsp)
.LCFI308:
	movq	%rbp, -8(%rsp)
.LCFI309:
	subq	$24, %rsp
.LCFI310:
	.loc 1 1433 0
	movq	%rdi, %rbp
	.loc 1 1436 0
	movq	%rsi, %rdi
	.loc 1 1433 0
	movq	%rsi, %rbx
	.loc 1 1436 0
	call	qemu_timer_pending
	testl	%eax, %eax
	.loc 1 1439 0
	movq	$-1, %rsi
	.loc 1 1436 0
	je	.L1358
	.loc 1 1437 0
	movq	8(%rbx), %rsi
.L1358:
	.loc 1 1441 0
	movq	%rbp, %rdi
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	addq	$24, %rsp
	jmp	qemu_put_be64
.LFE303:
	.size	qemu_put_timer, .-qemu_put_timer
	.p2align 4,,15
.globl qemu_put_be16
	.type	qemu_put_be16, @function
qemu_put_be16:
.LFB463:
	.loc 1 6576 0
	movq	%rbx, -16(%rsp)
.LCFI311:
	movq	%r12, -8(%rsp)
.LCFI312:
	movl	%esi, %ebx
	subq	$24, %rsp
.LCFI313:
	.loc 1 6576 0
	movq	%rdi, %r12
	.loc 1 6577 0
	shrl	$8, %esi
	call	qemu_put_byte
	.loc 1 6578 0
	movl	%ebx, %esi
	movq	%r12, %rdi
	movq	8(%rsp), %rbx
	movq	16(%rsp), %r12
	addq	$24, %rsp
	jmp	qemu_put_byte
.LFE463:
	.size	qemu_put_be16, .-qemu_put_be16
	.p2align 4,,15
	.type	qemu_fill_buffer, @function
qemu_fill_buffer:
.LFB455:
	.loc 1 6462 0
	movq	%rbx, -16(%rsp)
.LCFI314:
	movq	%rbp, -8(%rsp)
.LCFI315:
	subq	$24, %rsp
.LCFI316:
	.loc 1 6465 0
	movl	20(%rdi), %eax
	.loc 1 6462 0
	movq	%rdi, %rbx
	.loc 1 6465 0
	testl	%eax, %eax
	jne	.L1360
	.loc 1 6467 0
	movl	16(%rdi), %ebp
	testl	%ebp, %ebp
	jne	.L1366
	.loc 1 6473 0
	movq	32(%rdi), %rsi
	addq	24(%rdi), %rsi
	leaq	48(%rdi), %rdx
	movq	8(%rdi), %rdi
	movl	$32768, %ecx
	call	bdrv_pread
	.loc 1 6476 0
	testl	%eax, %eax
	cmovs	%ebp, %eax
.L1364:
	.loc 1 6479 0
	movl	%eax, 44(%rbx)
	.loc 1 6480 0
	cltq
	addq	%rax, 32(%rbx)
	.loc 1 6478 0
	movl	$0, 40(%rbx)
.L1360:
	.loc 1 6481 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	addq	$24, %rsp
	ret
	.p2align 4,,7
.L1366:
	.loc 1 6468 0
	movq	32(%rdi), %rsi
	movq	(%rdi), %rdi
	xorl	%edx, %edx
	call	fseek
	.loc 1 6469 0
	movq	(%rbx), %rcx
	leaq	48(%rbx), %rdi
	movl	$32768, %edx
	movl	$1, %esi
	call	fread
	.loc 1 6470 0
	testl	%eax, %eax
	jns	.L1364
	.loc 1 6471 0
	xorl	%eax, %eax
	jmp	.L1364
.LFE455:
	.size	qemu_fill_buffer, .-qemu_fill_buffer
	.p2align 4,,15
.globl qemu_get_byte
	.type	qemu_get_byte, @function
qemu_get_byte:
.LFB460:
	.loc 1 6540 0
	pushq	%rbx
.LCFI317:
	.loc 1 6541 0
	movl	40(%rdi), %ecx
	.loc 1 6540 0
	movq	%rdi, %rbx
	.loc 1 6541 0
	cmpl	44(%rdi), %ecx
	jge	.L1371
.L1368:
	.loc 1 6546 0
	movslq	%ecx,%rax
	movzbl	48(%rax,%rbx), %edx
	leal	1(%rcx), %eax
	movl	%eax, 40(%rbx)
	.loc 1 6547 0
	popq	%rbx
	.loc 1 6546 0
	movl	%edx, %eax
	.loc 1 6547 0
	ret
	.p2align 4,,7
.L1371:
	.loc 1 6542 0
	call	qemu_fill_buffer
	.loc 1 6543 0
	movl	40(%rbx), %ecx
	.loc 1 6544 0
	xorl	%eax, %eax
	.loc 1 6543 0
	cmpl	44(%rbx), %ecx
	jl	.L1368
	.loc 1 6547 0
	popq	%rbx
	.p2align 4,,1
	ret
.LFE460:
	.size	qemu_get_byte, .-qemu_get_byte
	.p2align 4,,15
.globl qemu_get_be32
	.type	qemu_get_be32, @function
qemu_get_be32:
.LFB467:
	.loc 1 6604 0
	pushq	%r12
.LCFI318:
	movq	%rdi, %r12
	pushq	%rbx
.LCFI319:
	subq	$8, %rsp
.LCFI320:
	.loc 1 6606 0
	call	qemu_get_byte
	.loc 1 6607 0
	movq	%r12, %rdi
	.loc 1 6606 0
	movl	%eax, %ebx
	sall	$24, %ebx
	.loc 1 6607 0
	call	qemu_get_byte
	.loc 1 6608 0
	movq	%r12, %rdi
	.loc 1 6607 0
	sall	$16, %eax
	orl	%eax, %ebx
	.loc 1 6608 0
	call	qemu_get_byte
	sall	$8, %eax
	.loc 1 6609 0
	movq	%r12, %rdi
	.loc 1 6608 0
	orl	%eax, %ebx
	.loc 1 6609 0
	call	qemu_get_byte
	orl	%eax, %ebx
	.loc 1 6611 0
	addq	$8, %rsp
	movl	%ebx, %eax
	popq	%rbx
	popq	%r12
	ret
.LFE467:
	.size	qemu_get_be32, .-qemu_get_be32
	.p2align 4,,15
.globl qemu_get_be64
	.type	qemu_get_be64, @function
qemu_get_be64:
.LFB468:
	.loc 1 6614 0
	movq	%rbx, -16(%rsp)
.LCFI321:
	movq	%r12, -8(%rsp)
.LCFI322:
	subq	$24, %rsp
.LCFI323:
	.loc 1 6614 0
	movq	%rdi, %r12
	.loc 1 6616 0
	call	qemu_get_be32
	.loc 1 6617 0
	movq	%r12, %rdi
	.loc 1 6616 0
	movl	%eax, %ebx
	salq	$32, %rbx
	.loc 1 6617 0
	call	qemu_get_be32
	mov	%eax, %eax
	.loc 1 6619 0
	movq	16(%rsp), %r12
	.loc 1 6617 0
	orq	%rax, %rbx
	.loc 1 6619 0
	movq	%rbx, %rax
	movq	8(%rsp), %rbx
	addq	$24, %rsp
	ret
.LFE468:
	.size	qemu_get_be64, .-qemu_get_be64
	.p2align 4,,15
	.type	timer_load, @function
timer_load:
.LFB306:
	.loc 1 1467 0
	pushq	%rbp
.LCFI324:
	movl	%edx, %ebp
	.loc 1 1469 0
	movl	$-22, %edx
	.loc 1 1468 0
	leal	-1(%rbp), %eax
	.loc 1 1467 0
	pushq	%rbx
.LCFI325:
	movq	%rdi, %rbx
	subq	$8, %rsp
.LCFI326:
	.loc 1 1468 0
	cmpl	$1, %eax
	ja	.L1374
	.loc 1 1470 0
	movl	cpu_ticks_enabled(%rip), %eax
	testl	%eax, %eax
	jne	.L1374
	.loc 1 1473 0
	call	qemu_get_be64
	.loc 1 1474 0
	movq	%rbx, %rdi
	.loc 1 1473 0
	movq	%rax, cpu_ticks_offset(%rip)
	.loc 1 1474 0
	call	qemu_get_be64
	.loc 1 1475 0
	cmpl	$2, %ebp
	.loc 1 1474 0
	movq	%rax, ticks_per_sec(%rip)
	.loc 1 1475 0
	je	.L1378
.L1377:
	.loc 1 1478 0
	xorl	%edx, %edx
.L1374:
	.loc 1 1479 0
	addq	$8, %rsp
	movl	%edx, %eax
	popq	%rbx
	popq	%rbp
	ret
	.p2align 4,,7
.L1378:
	.loc 1 1476 0
	movq	%rbx, %rdi
	call	qemu_get_be64
	movq	%rax, cpu_clock_offset(%rip)
	jmp	.L1377
.LFE306:
	.size	timer_load, .-timer_load
	.p2align 4,,15
.globl qemu_get_timer
	.type	qemu_get_timer, @function
qemu_get_timer:
.LFB304:
	.loc 1 1445 0
	pushq	%rbx
.LCFI327:
	.loc 1 1445 0
	movq	%rsi, %rbx
	.loc 1 1448 0
	call	qemu_get_be64
	.loc 1 1449 0
	cmpq	$-1, %rax
	je	.L1380
	.loc 1 1450 0
	movq	%rbx, %rdi
	movq	%rax, %rsi
	.loc 1 1454 0
	popq	%rbx
	.loc 1 1450 0
	jmp	qemu_mod_timer
	.p2align 4,,7
.L1380:
	.loc 1 1452 0
	movq	%rbx, %rdi
	.loc 1 1454 0
	popq	%rbx
	.loc 1 1452 0
	jmp	qemu_del_timer
.LFE304:
	.size	qemu_get_timer, .-qemu_get_timer
	.p2align 4,,15
.globl qemu_get_be16
	.type	qemu_get_be16, @function
qemu_get_be16:
.LFB466:
	.loc 1 6596 0
	movq	%rbx, -16(%rsp)
.LCFI328:
	movq	%r12, -8(%rsp)
.LCFI329:
	subq	$24, %rsp
.LCFI330:
	.loc 1 6596 0
	movq	%rdi, %rbx
	.loc 1 6598 0
	call	qemu_get_byte
	movl	%eax, %r12d
	.loc 1 6599 0
	movq	%rbx, %rdi
	.loc 1 6598 0
	sall	$8, %r12d
	.loc 1 6599 0
	call	qemu_get_byte
	orl	%eax, %r12d
	.loc 1 6601 0
	movq	8(%rsp), %rbx
	movl	%r12d, %eax
	movq	16(%rsp), %r12
	addq	$24, %rsp
	ret
.LFE466:
	.size	qemu_get_be16, .-qemu_get_be16
	.p2align 4,,15
.globl qemu_fclose
	.type	qemu_fclose, @function
qemu_fclose:
.LFB456:
	.loc 1 6484 0
	pushq	%rbx
.LCFI331:
	.loc 1 6485 0
	movl	20(%rdi), %eax
	.loc 1 6484 0
	movq	%rdi, %rbx
	.loc 1 6485 0
	testl	%eax, %eax
	jne	.L1386
	.loc 1 6487 0
	movl	16(%rbx), %eax
	testl	%eax, %eax
	jne	.L1387
.L1385:
	.loc 1 6490 0
	movq	%rbx, %rdi
	popq	%rbx
	jmp	qemu_free
	.p2align 4,,7
.L1386:
	.loc 1 6486 0
	call	qemu_fflush
	.loc 1 6487 0
	movl	16(%rbx), %eax
	testl	%eax, %eax
	je	.L1385
	.p2align 4,,7
.L1387:
	.loc 1 6488 0
	movq	(%rbx), %rdi
	call	fclose
	.loc 1 6490 0
	movq	%rbx, %rdi
	popq	%rbx
	jmp	qemu_free
.LFE456:
	.size	qemu_fclose, .-qemu_fclose
	.p2align 4,,15
.globl qemu_put_buffer
	.type	qemu_put_buffer, @function
qemu_put_buffer:
.LFB457:
	.loc 1 6494 0
	pushq	%r15
.LCFI332:
	pushq	%r14
.LCFI333:
	movq	%rsi, %r14
	pushq	%r13
.LCFI334:
	movq	%rdi, %r13
	pushq	%r12
.LCFI335:
	pushq	%rbp
.LCFI336:
	movl	%edx, %ebp
	pushq	%rbx
.LCFI337:
	subq	$8, %rsp
.LCFI338:
	.loc 1 6505 0
	testl	%edx, %edx
	jle	.L1395
	movl	$32768, %r15d
	jmp	.L1393
	.p2align 4,,7
.L1389:
	testl	%ebp, %ebp
	jle	.L1395
.L1393:
	.loc 1 6497 0
	movslq	40(%r13),%rdi
	movl	%r15d, %ebx
	.loc 1 6500 0
	movq	%r14, %rsi
	.loc 1 6497 0
	subl	%edi, %ebx
	.loc 1 6500 0
	leaq	48(%rdi,%r13), %rdi
	.loc 1 6499 0
	cmpl	%ebp, %ebx
	cmovg	%ebp, %ebx
	.loc 1 6500 0
	movslq	%ebx,%r12
	.loc 1 6503 0
	subl	%ebx, %ebp
	.loc 1 6500 0
	movq	%r12, %rdx
	.loc 1 6502 0
	addq	%r12, %r14
	.loc 1 6500 0
	call	memcpy
	.loc 1 6501 0
	movl	40(%r13), %eax
	addl	%ebx, %eax
	.loc 1 6504 0
	cmpl	$32767, %eax
	.loc 1 6501 0
	movl	%eax, 40(%r13)
	.loc 1 6504 0
	jle	.L1389
	.loc 1 6505 0
	movq	%r13, %rdi
	call	qemu_fflush
	testl	%ebp, %ebp
	jg	.L1393
	.p2align 4,,7
.L1395:
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.LFE457:
	.size	qemu_put_buffer, .-qemu_put_buffer
	.p2align 4,,15
.globl qemu_get_buffer
	.type	qemu_get_buffer, @function
qemu_get_buffer:
.LFB459:
	.loc 1 6517 0
	pushq	%r15
.LCFI339:
	movl	%edx, %r15d
	pushq	%r14
.LCFI340:
	movq	%rsi, %r14
	pushq	%r13
.LCFI341:
	.loc 1 6520 0
	movl	%edx, %r13d
	.loc 1 6517 0
	pushq	%r12
.LCFI342:
	movq	%rdi, %r12
	pushq	%rbp
.LCFI343:
	pushq	%rbx
.LCFI344:
	subq	$8, %rsp
.LCFI345:
	.loc 1 6534 0
	testl	%edx, %edx
	jle	.L1398
	movl	40(%rdi), %edx
	jmp	.L1402
	.p2align 4,,7
.L1399:
	.loc 1 6530 0
	cmpl	%r13d, %ebp
	.loc 1 6531 0
	movslq	%edx,%rsi
	movq	%r14, %rdi
	.loc 1 6530 0
	cmovg	%r13d, %ebp
	.loc 1 6531 0
	leaq	48(%rsi,%r12), %rsi
	movslq	%ebp,%rbx
	.loc 1 6534 0
	subl	%ebp, %r13d
	.loc 1 6531 0
	movq	%rbx, %rdx
	.loc 1 6533 0
	addq	%rbx, %r14
	.loc 1 6531 0
	call	memcpy
	.loc 1 6532 0
	movl	40(%r12), %eax
	addl	%ebp, %eax
	.loc 1 6534 0
	testl	%r13d, %r13d
	.loc 1 6532 0
	movl	%eax, %edx
	movl	%eax, 40(%r12)
	.loc 1 6534 0
	jle	.L1398
.L1402:
	.loc 1 6522 0
	movl	44(%r12), %eax
	.loc 1 6523 0
	movl	%eax, %ebp
	subl	%edx, %ebp
	jne	.L1399
	.loc 1 6524 0
	movq	%r12, %rdi
	call	qemu_fill_buffer
	.loc 1 6525 0
	movl	44(%r12), %eax
	movl	40(%r12), %edx
	.loc 1 6526 0
	movl	%eax, %ebp
	subl	%edx, %ebp
	jne	.L1399
	.p2align 4,,7
.L1398:
	.loc 1 6537 0
	addq	$8, %rsp
	.loc 1 6536 0
	subl	%r13d, %r15d
	.loc 1 6537 0
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	movl	%r15d, %eax
	popq	%r15
	ret
.LFE459:
	.size	qemu_get_buffer, .-qemu_get_buffer
	.p2align 4,,15
.globl qemu_ftell
	.type	qemu_ftell, @function
qemu_ftell:
.LFB461:
	.loc 1 6550 0
	.loc 1 6551 0
	movslq	44(%rdi),%rdx
	movq	32(%rdi), %rax
	subq	%rdx, %rax
	movslq	40(%rdi),%rdx
	addq	%rdx, %rax
	.loc 1 6552 0
	ret
.LFE461:
	.size	qemu_ftell, .-qemu_ftell
	.p2align 4,,15
.globl qemu_fseek
	.type	qemu_fseek, @function
qemu_fseek:
.LFB462:
	.loc 1 6555 0
	movq	%rbx, -16(%rsp)
.LCFI346:
	movq	%rbp, -8(%rsp)
.LCFI347:
	subq	$24, %rsp
.LCFI348:
	.loc 1 6556 0
	testl	%edx, %edx
	.loc 1 6555 0
	movq	%rdi, %rbx
	movq	%rsi, %rbp
	.loc 1 6556 0
	je	.L1407
	.loc 1 6558 0
	decl	%edx
	.loc 1 6562 0
	movq	$-1, %rax
	.loc 1 6558 0
	jne	.L1405
	.loc 1 6559 0
	call	qemu_ftell
	addq	%rax, %rbp
.L1407:
	.loc 1 6564 0
	movl	20(%rbx), %eax
	testl	%eax, %eax
	jne	.L1412
	.loc 1 6568 0
	movq	%rbp, 32(%rbx)
	.loc 1 6569 0
	movl	$0, 40(%rbx)
	.loc 1 6570 0
	movl	$0, 44(%rbx)
.L1411:
	.loc 1 6572 0
	movq	%rbp, %rax
.L1405:
	.loc 1 6573 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	addq	$24, %rsp
	ret
	.p2align 4,,7
.L1412:
	.loc 1 6565 0
	movq	%rbx, %rdi
	call	qemu_fflush
	.loc 1 6566 0
	movq	%rbp, 32(%rbx)
	jmp	.L1411
.LFE462:
	.size	qemu_fseek, .-qemu_fseek
	.p2align 4,,15
.globl register_savevm
	.type	register_savevm, @function
register_savevm:
.LFB469:
	.loc 1 6639 0
	movq	%rbx, -48(%rsp)
.LCFI349:
	movq	%rbp, -40(%rsp)
.LCFI350:
	movq	%rdi, %rbp
	movq	%r12, -32(%rsp)
.LCFI351:
	movq	%r13, -24(%rsp)
.LCFI352:
	.loc 1 6642 0
	movl	$296, %edi
	.loc 1 6639 0
	movq	%r14, -16(%rsp)
.LCFI353:
	movq	%r15, -8(%rsp)
.LCFI354:
	subq	$56, %rsp
.LCFI355:
	.loc 1 6639 0
	movl	%esi, %r12d
	movl	%edx, %r13d
	movq	%rcx, %r14
	movq	%r8, %r15
	movq	%r9, (%rsp)
	.loc 1 6642 0
	call	qemu_malloc
	movq	%rax, %rbx
	.loc 1 6644 0
	movl	$-1, %eax
	.loc 1 6643 0
	testq	%rbx, %rbx
	je	.L1413
	.loc 1 6645 0
	movq	%rbp, %rdx
	movl	$256, %esi
	movq	%rbx, %rdi
	call	pstrcpy
	.loc 1 6646 0
	movl	%r12d, 256(%rbx)
	.loc 1 6647 0
	movl	%r13d, 260(%rbx)
	.loc 1 6654 0
	movl	$first_se, %edx
	.loc 1 6648 0
	movq	%r14, 264(%rbx)
	.loc 1 6649 0
	movq	%r15, 272(%rbx)
	.loc 1 6650 0
	movq	(%rsp), %rax
	.loc 1 6651 0
	movq	$0, 288(%rbx)
	.loc 1 6650 0
	movq	%rax, 280(%rbx)
	.loc 1 6656 0
	cmpq	$0, first_se(%rip)
	jmp	.L1420
	.p2align 4,,7
.L1421:
	movq	(%rdx), %rax
	cmpq	$0, 288(%rax)
	leaq	288(%rax), %rdx
.L1420:
	jne	.L1421
	.loc 1 6657 0
	movq	%rbx, (%rdx)
	.loc 1 6658 0
	xorl	%eax, %eax
.L1413:
	.loc 1 6659 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	movq	24(%rsp), %r12
	movq	32(%rsp), %r13
	movq	40(%rsp), %r14
	movq	48(%rsp), %r15
	addq	$56, %rsp
	ret
.LFE469:
	.size	register_savevm, .-register_savevm
	.p2align 4,,15
	.type	bdrv_has_snapshot, @function
bdrv_has_snapshot:
.LFB474:
	.loc 1 6779 0
	movq	%rbx, -16(%rsp)
.LCFI356:
	movq	%rbp, -8(%rsp)
.LCFI357:
	subq	$24, %rsp
.LCFI358:
	.loc 1 6780 0
	xorl	%ebp, %ebp
	testq	%rdi, %rdi
	.loc 1 6779 0
	movq	%rdi, %rbx
	.loc 1 6780 0
	je	.L1423
	call	bdrv_is_removable
	testl	%eax, %eax
	je	.L1424
.L1423:
	.loc 1 6783 0
	movl	%ebp, %eax
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	addq	$24, %rsp
	ret
	.p2align 4,,7
.L1424:
	.loc 1 6780 0
	movq	%rbx, %rdi
	call	bdrv_is_read_only
	testl	%eax, %eax
	movl	$1, %eax
	.loc 1 6783 0
	movq	8(%rsp), %rbx
	.loc 1 6780 0
	cmove	%eax, %ebp
	.loc 1 6783 0
	movl	%ebp, %eax
	movq	16(%rsp), %rbp
	addq	$24, %rsp
	ret
.LFE474:
	.size	bdrv_has_snapshot, .-bdrv_has_snapshot
	.p2align 4,,15
	.type	get_bs_snapshots, @function
get_bs_snapshots:
.LFB475:
	.loc 1 6786 0
	pushq	%rbp
.LCFI359:
	pushq	%rbx
.LCFI360:
	subq	$8, %rsp
.LCFI361:
	.loc 1 6790 0
	movq	bs_snapshots(%rip), %rax
	testq	%rax, %rax
	jne	.L1425
	.loc 1 6792 0
	xorl	%ebp, %ebp
	cmpl	nb_drives(%rip), %ebp
	jg	.L1436
	.p2align 4,,7
.L1444:
	.loc 1 6793 0
	movslq	%ebp,%rax
	leaq	(%rax,%rax,2), %rax
	movq	drives_table(,%rax,8), %rbx
.LBB185:
.LBB186:
	.loc 1 6772 0
	testq	%rbx, %rbx
	je	.L1437
	movq	%rbx, %rdi
	call	bdrv_is_removable
	testl	%eax, %eax
	je	.L1443
.L1437:
.LBE186:
.LBE185:
	.loc 1 6792 0
	incl	%ebp
	cmpl	nb_drives(%rip), %ebp
	jle	.L1444
.L1436:
	.loc 1 6797 0
	xorl	%eax, %eax
.L1425:
	.loc 1 6801 0
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.p2align 4,,7
.L1443:
.LBB187:
.LBB188:
	.loc 1 6772 0
	movq	%rbx, %rdi
	call	bdrv_is_read_only
	testl	%eax, %eax
	jne	.L1437
.L1433:
.LBE188:
.LBE187:
	.loc 1 6800 0
	movq	%rbx, %rax
	.loc 1 6799 0
	movq	%rbx, bs_snapshots(%rip)
	jmp	.L1425
.LFE475:
	.size	get_bs_snapshots, .-get_bs_snapshots
	.section	.rodata.str1.8
	.align 8
.LC197:
	.string	"Error %d while deleting snapshot on '%s'\n"
	.align 8
.LC196:
	.string	"Snapshots not supported on device '%s'\n"
	.align 8
.LC195:
	.string	"No block device supports snapshots\n"
	.text
	.p2align 4,,15
.globl do_delvm
	.type	do_delvm, @function
do_delvm:
.LFB479:
	.loc 1 6995 0
	movq	%r13, -8(%rsp)
.LCFI362:
	movq	%rbx, -32(%rsp)
.LCFI363:
	movq	%rdi, %r13
	movq	%rbp, -24(%rsp)
.LCFI364:
	movq	%r12, -16(%rsp)
.LCFI365:
	subq	$40, %rsp
.LCFI366:
	.loc 1 6999 0
	call	get_bs_snapshots
	.loc 1 7000 0
	testq	%rax, %rax
	je	.L1458
	.loc 1 7005 0
	xorl	%r12d, %r12d
	cmpl	nb_drives(%rip), %r12d
	jg	.L1456
	.p2align 4,,7
.L1460:
	.loc 1 7006 0
	movslq	%r12d,%rax
	leaq	(%rax,%rax,2), %rax
	movq	drives_table(,%rax,8), %rbx
	.loc 1 7007 0
	movq	%rbx, %rdi
	call	bdrv_has_snapshot
	testl	%eax, %eax
	jne	.L1459
.L1449:
	.loc 1 7005 0
	incl	%r12d
.L1462:
	cmpl	nb_drives(%rip), %r12d
	jle	.L1460
.L1456:
	.loc 1 7019 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	movq	24(%rsp), %r12
	movq	32(%rsp), %r13
	addq	$40, %rsp
	ret
	.p2align 4,,7
.L1459:
	.loc 1 7008 0
	movq	%r13, %rsi
	movq	%rbx, %rdi
	call	bdrv_snapshot_delete
	.loc 1 7009 0
	testl	%eax, %eax
	.loc 1 7008 0
	movl	%eax, %ebp
	.loc 1 7009 0
	jns	.L1449
	.loc 1 7010 0
	cmpl	$-95, %eax
	je	.L1461
	.loc 1 7014 0
	movq	%rbx, %rdi
	.loc 1 7005 0
	incl	%r12d
	.loc 1 7014 0
	call	bdrv_get_device_name
	movl	%ebp, %esi
	movq	%rax, %rdx
	movl	$.LC197, %edi
	xorl	%eax, %eax
	call	term_printf
	jmp	.L1462
.L1461:
	.loc 1 7011 0
	movq	%rbx, %rdi
	.loc 1 7005 0
	incl	%r12d
	.loc 1 7011 0
	call	bdrv_get_device_name
	movl	$.LC196, %edi
	movq	%rax, %rsi
	xorl	%eax, %eax
	call	term_printf
	jmp	.L1462
.L1458:
	.loc 1 7019 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	.loc 1 7001 0
	movl	$.LC195, %edi
	.loc 1 7019 0
	movq	24(%rsp), %r12
	movq	32(%rsp), %r13
	addq	$40, %rsp
	.loc 1 7001 0
	jmp	term_printf
.LFE479:
	.size	do_delvm, .-do_delvm
	.section	.rodata.str1.1
.LC199:
	.string	"Snapshot devices:"
.LC201:
	.string	"\n"
.LC203:
	.string	"Snapshot list (from %s):\n"
.LC200:
	.string	" %s"
	.section	.rodata.str1.8
	.align 8
.LC198:
	.string	"No available block device supports snapshots\n"
	.section	.rodata.str1.1
.LC202:
	.string	"bdrv_snapshot_list: error %d\n"
	.text
	.p2align 4,,15
.globl do_info_snapshots
	.type	do_info_snapshots, @function
do_info_snapshots:
.LFB480:
	.loc 1 7022 0
	pushq	%r13
.LCFI367:
	pushq	%r12
.LCFI368:
	pushq	%rbp
.LCFI369:
	pushq	%rbx
.LCFI370:
	subq	$280, %rsp
.LCFI371:
	.loc 1 7028 0
	call	get_bs_snapshots
	.loc 1 7029 0
	testq	%rax, %rax
	.loc 1 7028 0
	movq	%rax, %r13
	.loc 1 7029 0
	je	.L1481
	.loc 1 7033 0
	xorl	%eax, %eax
	movl	$.LC199, %edi
	.loc 1 7034 0
	xorl	%ebp, %ebp
	.loc 1 7033 0
	call	term_printf
	.loc 1 7034 0
	cmpl	nb_drives(%rip), %ebp
	jg	.L1477
	.p2align 4,,7
.L1483:
	.loc 1 7035 0
	movslq	%ebp,%rax
	leaq	(%rax,%rax,2), %rax
	movq	drives_table(,%rax,8), %rbx
	.loc 1 7036 0
	movq	%rbx, %rdi
	call	bdrv_has_snapshot
	testl	%eax, %eax
	je	.L1467
	.loc 1 7037 0
	cmpq	%rbx, %r13
	je	.L1482
.L1467:
	.loc 1 7034 0
	incl	%ebp
.L1485:
	cmpl	nb_drives(%rip), %ebp
	jle	.L1483
.L1477:
	.loc 1 7041 0
	xorl	%eax, %eax
	movl	$.LC201, %edi
	call	term_printf
	.loc 1 7043 0
	leaq	8(%rsp), %rsi
	movq	%r13, %rdi
	call	bdrv_snapshot_list
	.loc 1 7044 0
	testl	%eax, %eax
	.loc 1 7043 0
	movl	%eax, %r12d
	.loc 1 7044 0
	js	.L1484
	.loc 1 7048 0
	movq	%r13, %rdi
	.loc 1 7049 0
	leaq	16(%rsp), %r13
	.loc 1 7050 0
	xorl	%ebp, %ebp
	.loc 1 7048 0
	call	bdrv_get_device_name
	movl	$.LC203, %edi
	movq	%rax, %rsi
	xorl	%eax, %eax
	call	term_printf
	.loc 1 7049 0
	xorl	%edx, %edx
	movl	$256, %esi
	movq	%r13, %rdi
	call	bdrv_snapshot_dump
	movl	$.LC107, %edi
	movq	%rax, %rsi
	xorl	%eax, %eax
	call	term_printf
	.loc 1 7050 0
	cmpl	%r12d, %ebp
	jge	.L1479
	xorl	%ebx, %ebx
	.p2align 4,,7
.L1475:
	.loc 1 7051 0
	movq	%rbx, %rdx
	addq	8(%rsp), %rdx
	.loc 1 7052 0
	movl	$256, %esi
	movq	%r13, %rdi
	.loc 1 7050 0
	incl	%ebp
	addq	$408, %rbx
	.loc 1 7052 0
	call	bdrv_snapshot_dump
	movl	$.LC107, %edi
	movq	%rax, %rsi
	xorl	%eax, %eax
	call	term_printf
	.loc 1 7050 0
	cmpl	%r12d, %ebp
	jl	.L1475
.L1479:
	.loc 1 7054 0
	movq	8(%rsp), %rdi
	call	qemu_free
	.loc 1 7055 0
	addq	$280, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
.L1482:
	.loc 1 7038 0
	movq	%r13, %rdi
	.loc 1 7034 0
	incl	%ebp
	.loc 1 7038 0
	call	bdrv_get_device_name
	movl	$.LC200, %edi
	movq	%rax, %rsi
	xorl	%eax, %eax
	call	term_printf
	jmp	.L1485
.L1481:
	.loc 1 7030 0
	movl	$.LC198, %edi
	xorl	%eax, %eax
	call	term_printf
	.loc 1 7055 0
	addq	$280, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
.L1484:
	.loc 1 7045 0
	movl	%eax, %esi
	movl	$.LC202, %edi
	xorl	%eax, %eax
	call	term_printf
	.loc 1 7055 0
	addq	$280, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
.LFE480:
	.size	do_info_snapshots, .-do_info_snapshots
	.p2align 4,,15
	.type	cpu_put_seg, @function
cpu_put_seg:
.LFB481:
	.loc 1 7063 0
	movq	%rbx, -16(%rsp)
.LCFI372:
	movq	%r12, -8(%rsp)
.LCFI373:
	movq	%rsi, %rbx
	subq	$24, %rsp
.LCFI374:
	.loc 1 7064 0
	movl	(%rsi), %esi
	.loc 1 7063 0
	movq	%rdi, %r12
	.loc 1 7064 0
	call	qemu_put_be32
	.loc 1 7065 0
	movl	4(%rbx), %esi
	movq	%r12, %rdi
	call	qemu_put_be32
	.loc 1 7066 0
	movl	8(%rbx), %esi
	movq	%r12, %rdi
	call	qemu_put_be32
	.loc 1 7067 0
	movl	12(%rbx), %esi
	movq	%r12, %rdi
	movq	8(%rsp), %rbx
	movq	16(%rsp), %r12
	addq	$24, %rsp
	jmp	qemu_put_be32
.LFE481:
	.size	cpu_put_seg, .-cpu_put_seg
	.p2align 4,,15
	.type	cpu_get_seg, @function
cpu_get_seg:
.LFB482:
	.loc 1 7071 0
	movq	%rbx, -16(%rsp)
.LCFI375:
	movq	%r12, -8(%rsp)
.LCFI376:
	movq	%rdi, %rbx
	movq	%rsi, %r12
	subq	$24, %rsp
.LCFI377:
	.loc 1 7072 0
	call	qemu_get_be32
	.loc 1 7073 0
	movq	%rbx, %rdi
	.loc 1 7072 0
	movl	%eax, (%r12)
	.loc 1 7073 0
	call	qemu_get_be32
	.loc 1 7074 0
	movq	%rbx, %rdi
	.loc 1 7073 0
	movl	%eax, 4(%r12)
	.loc 1 7074 0
	call	qemu_get_be32
	.loc 1 7075 0
	movq	%rbx, %rdi
	.loc 1 7074 0
	movl	%eax, 8(%r12)
	.loc 1 7075 0
	call	qemu_get_be32
	movq	8(%rsp), %rbx
	movl	%eax, 12(%r12)
	movq	16(%rsp), %r12
	addq	$24, %rsp
	ret
.LFE482:
	.size	cpu_get_seg, .-cpu_get_seg
	.p2align 4,,15
.globl cpu_save
	.type	cpu_save, @function
cpu_save:
.LFB483:
	.loc 1 7079 0
	pushq	%r14
.LCFI378:
	pushq	%r13
.LCFI379:
	movq	%rsi, %r13
	pushq	%r12
.LCFI380:
	movq	%rdi, %r12
	pushq	%rbp
.LCFI381:
	movl	$7, %ebp
	pushq	%rbx
.LCFI382:
	movq	%rsi, %rbx
	subq	$32, %rsp
.LCFI383:
	.p2align 4,,7
.L1493:
.LBB189:
.LBB190:
	.file 4 "/home/remco/Projects/Argos/src/hw/hw.h"
	.loc 4 32 0
	movl	(%rbx), %esi
	movq	%r12, %rdi
	addq	$4, %rbx
	call	qemu_put_be32
	decl	%ebp
	jns	.L1493
.LBE190:
.LBE189:
.LBB191:
.LBB192:
	movl	32(%r13), %esi
	movq	%r12, %rdi
.LBE192:
.LBE191:
	.loc 1 7095 0
	xorl	%ebx, %ebx
	.loc 1 7096 0
	xorl	%ebp, %ebp
.LBB193:
.LBB194:
	.loc 4 32 0
	call	qemu_put_be32
.LBE194:
.LBE193:
.LBB195:
.LBB196:
	movl	36(%r13), %esi
	movq	%r12, %rdi
	call	qemu_put_be32
.LBE196:
.LBE195:
	.loc 1 7089 0
	movl	352(%r13), %esi
.LBB197:
.LBB198:
	.loc 4 32 0
	movq	%r12, %rdi
	call	qemu_put_be32
.LBE198:
.LBE197:
	.loc 1 7094 0
	movzwl	548(%r13), %eax
	movzwl	552(%r13), %r14d
	movl	$1, %edi
	.loc 1 7093 0
	movzwl	556(%r13), %esi
	.loc 1 7094 0
	andl	$7, %eax
	andw	$-14337, %r14w
	sall	$11, %eax
	orl	%eax, %r14d
	.p2align 4,,7
.L1501:
	.loc 1 7097 0
	movslq	%ebp,%rax
	movzwl	%bx, %edx
	cmpb	$0, 560(%rax,%r13)
	jne	.L1500
	movl	%edi, %eax
	movl	%ebp, %ecx
	sall	%cl, %eax
	orl	%eax, %edx
.L1500:
	.loc 1 7096 0
	incl	%ebp
	.loc 1 7097 0
	movl	%edx, %ebx
	.loc 1 7096 0
	cmpl	$7, %ebp
	jle	.L1501
.LBB199:
.LBB200:
	.loc 4 37 0
	movzwl	%si, %esi
	movq	%r12, %rdi
	movl	$7, %ebp
	call	qemu_put_be16
.LBE200:
.LBE199:
.LBB201:
.LBB202:
	movzwl	%r14w, %esi
	movq	%r12, %rdi
	call	qemu_put_be16
.LBE202:
.LBE201:
.LBB203:
.LBB204:
	movzwl	%bx, %esi
	movq	%r12, %rdi
	leaq	576(%r13), %rbx
	call	qemu_put_be16
.LBE204:
.LBE203:
.LBB205:
.LBB206:
	xorl	%esi, %esi
	movq	%r12, %rdi
	call	qemu_put_be16
	.p2align 4,,7
.L1509:
.LBE206:
.LBE205:
.LBB207:
	.loc 1 7118 0
	movq	(%rbx), %rax
	movl	8(%rbx), %edx
	leaq	30(%rsp), %rsi
	leaq	16(%rsp), %rdi
	addq	$16, %rbx
	movq	%rax, (%rsp)
	movl	%edx, 8(%rsp)
	call	cpu_get_fp80
	.loc 1 7119 0
	movq	16(%rsp), %rsi
	movq	%r12, %rdi
	call	qemu_put_be64
	.loc 1 7120 0
	movzwl	30(%rsp), %esi
	movq	%r12, %rdi
	call	qemu_put_be16
	decl	%ebp
	jns	.L1509
	leaq	356(%r13), %rbx
	movl	$5, %ebp
	.p2align 4,,7
.L1513:
.LBE207:
	.loc 1 7132 0
	movq	%rbx, %rsi
	movq	%r12, %rdi
	addq	$16, %rbx
	call	cpu_put_seg
	decl	%ebp
	jns	.L1513
	.loc 1 7133 0
	leaq	452(%r13), %rsi
	movq	%r12, %rdi
	leaq	1200(%r13), %rbx
	movl	$7, %ebp
	call	cpu_put_seg
	.loc 1 7134 0
	leaq	468(%r13), %rsi
	movq	%r12, %rdi
	call	cpu_put_seg
	.loc 1 7135 0
	leaq	484(%r13), %rsi
	movq	%r12, %rdi
	call	cpu_put_seg
	.loc 1 7136 0
	leaq	500(%r13), %rsi
	movq	%r12, %rdi
	call	cpu_put_seg
.LBB208:
.LBB209:
	.loc 4 32 0
	movl	904(%r13), %esi
	movq	%r12, %rdi
	call	qemu_put_be32
.LBE209:
.LBE208:
.LBB210:
.LBB211:
	movl	908(%r13), %esi
	movq	%r12, %rdi
	call	qemu_put_be32
.LBE211:
.LBE210:
.LBB212:
.LBB213:
	movl	912(%r13), %esi
	movq	%r12, %rdi
	call	qemu_put_be32
.LBE213:
.LBE212:
.LBB214:
.LBB215:
	movl	516(%r13), %esi
	movq	%r12, %rdi
	call	qemu_put_be32
.LBE215:
.LBE214:
.LBB216:
.LBB217:
	movl	524(%r13), %esi
	movq	%r12, %rdi
	call	qemu_put_be32
.LBE217:
.LBE216:
.LBB218:
.LBB219:
	movl	528(%r13), %esi
	movq	%r12, %rdi
	call	qemu_put_be32
.LBE219:
.LBE218:
.LBB220:
.LBB221:
	movl	532(%r13), %esi
	movq	%r12, %rdi
	call	qemu_put_be32
	.p2align 4,,7
.L1525:
.LBE221:
.LBE220:
.LBB222:
.LBB223:
	movl	(%rbx), %esi
	movq	%r12, %rdi
	addq	$4, %rbx
	call	qemu_put_be32
	decl	%ebp
	jns	.L1525
.LBE223:
.LBE222:
.LBB224:
.LBB225:
	movl	536(%r13), %esi
	movq	%r12, %rdi
	movq	%r13, %rbx
	movl	$7, %ebp
	call	qemu_put_be32
.LBE225:
.LBE224:
.LBB226:
.LBB227:
	movl	748(%r13), %esi
	movq	%r12, %rdi
	call	qemu_put_be32
	.p2align 4,,7
.L1533:
.LBE227:
.LBE226:
.LBB228:
.LBB229:
	.loc 4 27 0
	movq	752(%rbx), %rsi
	movq	%r12, %rdi
	call	qemu_put_be64
.LBE229:
.LBE228:
.LBB230:
.LBB231:
	movq	760(%rbx), %rsi
	movq	%r12, %rdi
	addq	$16, %rbx
	call	qemu_put_be64
	decl	%ebp
	jns	.L1533
.LBE231:
.LBE230:
.LBB232:
.LBB233:
	.loc 4 32 0
	movl	1232(%r13), %esi
	movq	%r12, %rdi
	call	qemu_put_be32
.LBE233:
.LBE232:
	addq	$32, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	ret
.LFE483:
	.size	cpu_save, .-cpu_save
	.p2align 4,,15
.globl cpu_load
	.type	cpu_load, @function
cpu_load:
.LFB485:
	.loc 1 7196 0
	pushq	%r15
.LCFI384:
	.loc 1 7202 0
	movl	%edx, %eax
	subl	$3, %eax
	.loc 1 7196 0
	pushq	%r14
.LCFI385:
	movq	%rsi, %r14
	pushq	%r13
.LCFI386:
	movq	%rdi, %r13
	pushq	%r12
.LCFI387:
	pushq	%rbp
.LCFI388:
	pushq	%rbx
.LCFI389:
	subq	$56, %rsp
.LCFI390:
	.loc 1 7202 0
	cmpl	$1, %eax
	.loc 1 7196 0
	movl	%edx, 44(%rsp)
	.loc 1 7203 0
	movl	$-22, %edx
	.loc 1 7202 0
	ja	.L1547
	movq	%rsi, %rbx
	movl	$7, %ebp
	.p2align 4,,7
.L1553:
.LBB234:
.LBB235:
	.loc 4 52 0
	movq	%r13, %rdi
	call	qemu_get_be32
	movl	%eax, (%rbx)
	addq	$4, %rbx
	decl	%ebp
	jns	.L1553
.LBE235:
.LBE234:
.LBB236:
.LBB237:
	movq	%r13, %rdi
	call	qemu_get_be32
.LBE237:
.LBE236:
.LBB238:
.LBB239:
	movq	%r13, %rdi
.LBE239:
.LBE238:
.LBB240:
.LBB241:
	movl	%eax, 32(%r14)
.LBE241:
.LBE240:
.LBB242:
.LBB243:
	call	qemu_get_be32
.LBE243:
.LBE242:
.LBB244:
.LBB245:
	movq	%r13, %rdi
.LBE245:
.LBE244:
.LBB246:
.LBB247:
	movl	%eax, 36(%r14)
.LBE247:
.LBE246:
.LBB248:
.LBB249:
	call	qemu_get_be32
.LBE249:
.LBE248:
.LBB250:
.LBB251:
	.loc 4 57 0
	movq	%r13, %rdi
.LBE251:
.LBE250:
.LBB252:
.LBB253:
	.loc 4 52 0
	movl	%eax, 8(%rsp)
.LBE253:
.LBE252:
.LBB254:
.LBB255:
	.loc 4 57 0
	call	qemu_get_be16
.LBE255:
.LBE254:
.LBB256:
.LBB257:
	movq	%r13, %rdi
.LBE257:
.LBE256:
.LBB258:
.LBB259:
	movw	%ax, 14(%rsp)
.LBE259:
.LBE258:
.LBB260:
.LBB261:
	call	qemu_get_be16
.LBE261:
.LBE260:
.LBB262:
.LBB263:
	movq	%r13, %rdi
.LBE263:
.LBE262:
.LBB264:
.LBB265:
	movw	%ax, 16(%rsp)
.LBE265:
.LBE264:
.LBB266:
.LBB267:
	call	qemu_get_be16
.LBE267:
.LBE266:
.LBB268:
.LBB269:
	movq	%r13, %rdi
.LBE269:
.LBE268:
.LBB270:
.LBB271:
	movw	%ax, 12(%rsp)
.LBE271:
.LBE270:
.LBB272:
.LBB273:
	call	qemu_get_be16
.LBE273:
.LBE272:
	.loc 1 7218 0
	cmpw	$255, 12(%rsp)
.LBB274:
.LBB275:
	.loc 4 57 0
	movl	%eax, %edx
.LBE275:
.LBE274:
	.loc 1 7218 0
	movl	$0, 40(%rsp)
	je	.L1615
.L1561:
	.loc 1 7219 0
	xorl	%ebp, %ebp
	movzwl	%dx, %r15d
	movq	%r14, %r12
	jmp	.L1572
	.p2align 4,,7
.L1621:
.LBB276:
.LBB277:
.LBB278:
.LBB279:
	.loc 1 7187 0
	movabsq	$4503599627370495, %rax
	movabsq	$-9223372036854775808, %rdx
.LBE279:
.LBE278:
.LBE277:
.LBE276:
	.loc 1 7219 0
	incl	%ebp
.LBB280:
.LBB281:
.LBB282:
.LBB283:
	.loc 1 7187 0
	andq	%rbx, %rax
	salq	$11, %rax
	orq	%rdx, %rax
	movq	%rax, 576(%r12)
	.loc 1 7189 0
	movq	%rbx, %rax
	.loc 1 7190 0
	shrq	$48, %rbx
	.loc 1 7189 0
	shrq	$52, %rax
	.loc 1 7190 0
	andl	$32768, %ebx
	.loc 1 7189 0
	andl	$2047, %eax
	addl	$15360, %eax
	.loc 1 7190 0
	orl	%ebx, %eax
	.loc 1 7191 0
	movw	%ax, 576(%r12)
	addq	$16, %r12
.LBE283:
.LBE282:
.LBE281:
.LBE280:
	.loc 1 7219 0
	cmpl	$7, %ebp
	jg	.L1616
	.p2align 4,,7
.L1572:
.LBB284:
	.loc 1 7223 0
	testl	%r15d, %r15d
	je	.L1566
	cmpl	$1, %r15d
	jne	.L1617
	.loc 1 7238 0
	movq	%r13, %rdi
	.p2align 4,,5
	call	qemu_get_be64
.LBB285:
	.loc 1 7244 0
	movl	40(%rsp), %edx
.LBE285:
	.loc 1 7238 0
	movq	%rax, %rbx
.LBB286:
	.loc 1 7244 0
	testl	%edx, %edx
	je	.L1621
	.loc 1 7245 0
	movq	%rax, 576(%r12)
	.loc 1 7246 0
	movw	$-1, 576(%r12)
.LBE286:
.LBE284:
	.loc 1 7219 0
	incl	%ebp
.L1622:
	addq	$16, %r12
	cmpl	$7, %ebp
	jle	.L1572
.L1616:
	.loc 1 7260 0
	movzwl	14(%rsp), %eax
	xorl	%ebp, %ebp
	movl	%eax, 556(%r14)
	.loc 1 7262 0
	movl	16(%rsp), %eax
	shrw	$11, %ax
	andl	$7, %eax
	movl	%eax, 548(%r14)
	.loc 1 7263 0
	movl	16(%rsp), %eax
	andl	$51199, %eax
	movl	%eax, 552(%r14)
	.loc 1 7264 0
	xorw	$255, 12(%rsp)
	movzwl	12(%rsp), %esi
	.p2align 4,,7
.L1576:
	.loc 1 7266 0
	movl	%ebp, %ecx
	movl	%esi, %eax
	movslq	%ebp,%rdx
	sarl	%cl, %eax
	.loc 1 7265 0
	incl	%ebp
	.loc 1 7266 0
	andl	$1, %eax
	.loc 1 7265 0
	cmpl	$7, %ebp
	.loc 1 7266 0
	movb	%al, 560(%rdx,%r14)
	.loc 1 7265 0
	jle	.L1576
	leaq	356(%r14), %rbx
	movl	$5, %ebp
	.p2align 4,,7
.L1580:
	.loc 1 7270 0
	movq	%rbx, %rsi
	movq	%r13, %rdi
	addq	$16, %rbx
	call	cpu_get_seg
	decl	%ebp
	jns	.L1580
	.loc 1 7271 0
	leaq	452(%r14), %rsi
	movq	%r13, %rdi
	leaq	1200(%r14), %rbx
	movl	$7, %ebp
	call	cpu_get_seg
	.loc 1 7272 0
	leaq	468(%r14), %rsi
	movq	%r13, %rdi
	call	cpu_get_seg
	.loc 1 7273 0
	leaq	484(%r14), %rsi
	movq	%r13, %rdi
	call	cpu_get_seg
	.loc 1 7274 0
	leaq	500(%r14), %rsi
	movq	%r13, %rdi
	call	cpu_get_seg
.LBB287:
.LBB288:
	.loc 4 52 0
	movq	%r13, %rdi
	call	qemu_get_be32
.LBE288:
.LBE287:
.LBB289:
.LBB290:
	movq	%r13, %rdi
.LBE290:
.LBE289:
.LBB291:
.LBB292:
	movl	%eax, 904(%r14)
.LBE292:
.LBE291:
.LBB293:
.LBB294:
	call	qemu_get_be32
.LBE294:
.LBE293:
.LBB295:
.LBB296:
	movq	%r13, %rdi
.LBE296:
.LBE295:
.LBB297:
.LBB298:
	movl	%eax, 908(%r14)
.LBE298:
.LBE297:
.LBB299:
.LBB300:
	call	qemu_get_be32
.LBE300:
.LBE299:
.LBB301:
.LBB302:
	movq	%r13, %rdi
.LBE302:
.LBE301:
.LBB303:
.LBB304:
	movl	%eax, 912(%r14)
.LBE304:
.LBE303:
.LBB305:
.LBB306:
	call	qemu_get_be32
.LBE306:
.LBE305:
.LBB307:
.LBB308:
	movq	%r13, %rdi
.LBE308:
.LBE307:
.LBB309:
.LBB310:
	movl	%eax, 516(%r14)
.LBE310:
.LBE309:
.LBB311:
.LBB312:
	call	qemu_get_be32
.LBE312:
.LBE311:
.LBB313:
.LBB314:
	movq	%r13, %rdi
.LBE314:
.LBE313:
.LBB315:
.LBB316:
	movl	%eax, 524(%r14)
.LBE316:
.LBE315:
.LBB317:
.LBB318:
	call	qemu_get_be32
.LBE318:
.LBE317:
.LBB319:
.LBB320:
	movq	%r13, %rdi
.LBE320:
.LBE319:
.LBB321:
.LBB322:
	movl	%eax, 528(%r14)
.LBE322:
.LBE321:
.LBB323:
.LBB324:
	call	qemu_get_be32
	movl	%eax, 532(%r14)
	.p2align 4,,7
.L1592:
.LBE324:
.LBE323:
.LBB325:
.LBB326:
	movq	%r13, %rdi
	call	qemu_get_be32
	movl	%eax, (%rbx)
	addq	$4, %rbx
	decl	%ebp
	jns	.L1592
.LBE326:
.LBE325:
.LBB327:
.LBB328:
	movq	%r13, %rdi
	movq	%r14, %rbx
	movl	$7, %ebp
	call	qemu_get_be32
.LBE328:
.LBE327:
.LBB329:
.LBB330:
	movq	%r13, %rdi
.LBE330:
.LBE329:
.LBB331:
.LBB332:
	movl	%eax, 536(%r14)
.LBE332:
.LBE331:
.LBB333:
.LBB334:
	call	qemu_get_be32
	movl	%eax, 748(%r14)
	.p2align 4,,7
.L1600:
.LBE334:
.LBE333:
.LBB335:
.LBB336:
	.loc 4 47 0
	movq	%r13, %rdi
	call	qemu_get_be64
.LBE336:
.LBE335:
.LBB337:
.LBB338:
	movq	%r13, %rdi
.LBE338:
.LBE337:
.LBB339:
.LBB340:
	movq	%rax, 752(%rbx)
.LBE340:
.LBE339:
.LBB341:
.LBB342:
	call	qemu_get_be64
	movq	%rax, 760(%rbx)
	addq	$16, %rbx
	decl	%ebp
	jns	.L1600
.LBE342:
.LBE341:
	.loc 1 7305 0
	cmpl	$3, 44(%rsp)
	jg	.L1619
.L1601:
	.loc 1 7309 0
	movl	8(%rsp), %eax
	.loc 1 7310 0
	movl	$1, %esi
	movq	%r14, %rdi
	.loc 1 7309 0
	movl	%eax, 352(%r14)
	.loc 1 7310 0
	call	tlb_flush
	.loc 1 7311 0
	xorl	%edx, %edx
.L1547:
	.loc 1 7312 0
	addq	$56, %rsp
	movl	%edx, %eax
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.p2align 4,,7
.L1566:
.LBB343:
	.loc 1 7225 0
	movq	%r13, %rdi
	call	qemu_get_be64
	.loc 1 7226 0
	movq	%r13, %rdi
	.loc 1 7225 0
	movq	%rax, %rbx
	.loc 1 7226 0
	call	qemu_get_be16
	.loc 1 7228 0
	movq	%rbx, %rdi
	movzwl	%ax, %esi
	call	cpu_set_fp80
	fstpt	576(%r12)
.LBE343:
	.loc 1 7219 0
	incl	%ebp
	jmp	.L1622
.L1615:
	.loc 1 7218 0
	movl	16(%rsp), %eax
	testb	$56, %ah
	movl	$1, %eax
	cmovne	40(%rsp), %eax
	movl	%eax, 40(%rsp)
	jmp	.L1561
.L1619:
.LBB344:
.LBB345:
	.loc 4 52 0
	movq	%r13, %rdi
	call	qemu_get_be32
	movl	%eax, 1232(%r14)
	jmp	.L1601
.L1617:
.LBE345:
.LBE344:
	.loc 1 7312 0
	addq	$56, %rsp
.LBB346:
	.loc 1 7256 0
	movl	$-22, %edx
.LBE346:
	.loc 1 7312 0
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	movl	%edx, %eax
	ret
.LFE485:
	.size	cpu_load, .-cpu_load
	.p2align 4,,15
	.type	ram_put_cblock, @function
ram_put_cblock:
.LFB489:
	.loc 1 7671 0
	movq	%rbx, -24(%rsp)
.LCFI391:
	movq	%r12, -16(%rsp)
.LCFI392:
	movq	%rdi, %rbx
	movq	%r13, -8(%rsp)
.LCFI393:
	subq	$24, %rsp
.LCFI394:
	.loc 1 7672 0
	movq	112(%rdi), %rdi
	.loc 1 7671 0
	movq	%rsi, %r13
	.loc 1 7672 0
	movl	$64190, %esi
	.loc 1 7671 0
	movl	%edx, %r12d
	.loc 1 7672 0
	call	qemu_put_be16
	.loc 1 7673 0
	movq	112(%rbx), %rdi
	movl	%r12d, %esi
	call	qemu_put_be16
	.loc 1 7674 0
	movq	112(%rbx), %rdi
	movl	%r12d, %edx
	movq	%r13, %rsi
	movq	(%rsp), %rbx
	movq	8(%rsp), %r12
	movq	16(%rsp), %r13
	addq	$24, %rsp
	jmp	qemu_put_buffer
.LFE489:
	.size	ram_put_cblock, .-ram_put_cblock
	.p2align 4,,15
	.type	ram_compress_buf, @function
ram_compress_buf:
.LFB490:
	.loc 1 7678 0
	pushq	%rbp
.LCFI395:
	pushq	%rbx
.LCFI396:
	movq	%rdi, %rbx
	subq	$8, %rsp
.LCFI397:
	.loc 1 7690 0
	testl	%edx, %edx
	.loc 1 7681 0
	movl	%edx, 8(%rdi)
	.loc 1 7682 0
	movq	%rsi, (%rdi)
	.loc 1 7690 0
	je	.L1631
	leaq	120(%rdi), %rbp
	jmp	.L1629
	.p2align 4,,7
.L1625:
	movl	8(%rbx), %ecx
	testl	%ecx, %ecx
	je	.L1631
.L1629:
	.loc 1 7684 0
	xorl	%esi, %esi
	movq	%rbx, %rdi
	call	deflate
	.loc 1 7685 0
	testl	%eax, %eax
	jne	.L1632
	.loc 1 7687 0
	movl	32(%rbx), %esi
	testl	%esi, %esi
	jne	.L1625
	.loc 1 7688 0
	movl	$4096, %edx
	movq	%rbp, %rsi
	movq	%rbx, %rdi
	call	ram_put_cblock
	.loc 1 7690 0
	movl	8(%rbx), %ecx
	.loc 1 7689 0
	movl	$4096, 32(%rbx)
	.loc 1 7690 0
	movq	%rbp, 24(%rbx)
	testl	%ecx, %ecx
	jne	.L1629
	.p2align 4,,7
.L1631:
	.loc 1 7694 0
	addq	$8, %rsp
	.loc 1 7693 0
	xorl	%eax, %eax
	.loc 1 7694 0
	popq	%rbx
	popq	%rbp
	ret
.L1632:
	addq	$8, %rsp
	.loc 1 7686 0
	movl	$-1, %eax
	.loc 1 7694 0
	popq	%rbx
	popq	%rbp
	ret
.LFE490:
	.size	ram_compress_buf, .-ram_compress_buf
	.p2align 4,,15
	.type	ram_decompress_buf, @function
ram_decompress_buf:
.LFB493:
	.loc 1 7738 0
	pushq	%r12
.LCFI398:
	.loc 1 7756 0
	testl	%edx, %edx
	.loc 1 7738 0
	pushq	%rbp
.LCFI399:
	pushq	%rbx
.LCFI400:
	.loc 1 7738 0
	movq	%rdi, %rbx
	.loc 1 7741 0
	movl	%edx, 32(%rdi)
	.loc 1 7742 0
	movq	%rsi, 24(%rdi)
	.loc 1 7756 0
	je	.L1642
	leaq	120(%rdi), %r12
	.p2align 4,,7
.L1640:
	.loc 1 7744 0
	movl	8(%rbx), %r8d
	testl	%r8d, %r8d
	jne	.L1636
	.loc 1 7745 0
	movq	112(%rbx), %rdi
	call	qemu_get_be16
	cmpl	$64190, %eax
	jne	.L1643
	.loc 1 7747 0
	movq	112(%rbx), %rdi
	call	qemu_get_be16
	.loc 1 7748 0
	cmpl	$4096, %eax
	.loc 1 7747 0
	movl	%eax, %ebp
	.loc 1 7748 0
	jg	.L1643
	.loc 1 7750 0
	movq	112(%rbx), %rdi
	movl	%eax, %edx
	movq	%r12, %rsi
	call	qemu_get_buffer
	.loc 1 7751 0
	movl	%ebp, 8(%rbx)
	.loc 1 7752 0
	movq	%r12, (%rbx)
.L1636:
	.loc 1 7754 0
	movl	$1, %esi
	movq	%rbx, %rdi
	call	inflate
	.loc 1 7755 0
	cmpl	$1, %eax
	ja	.L1643
	.loc 1 7756 0
	movl	32(%rbx), %edi
	testl	%edi, %edi
	jne	.L1640
.L1642:
	.loc 1 7760 0
	popq	%rbx
	popq	%rbp
	popq	%r12
	.loc 1 7759 0
	xorl	%eax, %eax
	.loc 1 7760 0
	ret
.L1643:
	popq	%rbx
	popq	%rbp
	popq	%r12
	.loc 1 7756 0
	movl	$-1, %eax
	.loc 1 7760 0
	ret
.LFE493:
	.size	ram_decompress_buf, .-ram_decompress_buf
	.section	.rodata.str1.1
.LC205:
	.string	"1.2.3.3"
	.text
	.p2align 4,,15
	.type	ram_save, @function
ram_save:
.LFB495:
	.loc 1 7768 0
	pushq	%r13
.LCFI401:
	pushq	%r12
.LCFI402:
	pushq	%rbp
.LCFI403:
	pushq	%rbx
.LCFI404:
	movq	%rdi, %rbx
	subq	$4264, %rsp
.LCFI405:
	.loc 1 7773 0
	movl	phys_ram_size(%rip), %esi
	.loc 1 7770 0
	leaq	32(%rsp), %rbp
	.loc 1 7773 0
	call	qemu_put_be32
.LBB347:
.LBB348:
	.loc 1 7658 0
	xorl	%esi, %esi
	movl	$4216, %edx
	movq	%rbp, %rdi
	call	memset
	.loc 1 7660 0
	xorl	%r9d, %r9d
	movl	$9, %r8d
	movl	$15, %ecx
	movl	$8, %edx
	movl	$1, %esi
	movq	%rbp, %rdi
	.loc 1 7659 0
	movq	%rbx, 144(%rsp)
	.loc 1 7660 0
	movl	$112, 8(%rsp)
	movq	$.LC205, (%rsp)
	call	deflateInit2_
	.loc 1 7663 0
	testl	%eax, %eax
	jne	.L1644
	.loc 1 7666 0
	leaq	120(%rbp), %rbx
	.loc 1 7665 0
	movl	$4096, 64(%rsp)
	.loc 1 7666 0
	movq	%rbx, 56(%rsp)
.LBE348:
.LBE347:
	.loc 1 7776 0
	xorl	%ebx, %ebx
	cmpl	phys_ram_size(%rip), %ebx
	jge	.L1661
	leaq	16(%rsp), %r12
	.p2align 4,,7
.L1651:
	.loc 1 7803 0
	movl	$1, %edx
	movq	%r12, %rsi
	movq	%rbp, %rdi
	.loc 1 7802 0
	movb	$0, 16(%rsp)
	.loc 1 7803 0
	call	ram_compress_buf
	.loc 1 7804 0
	movslq	%ebx,%rsi
	addq	phys_ram_base(%rip), %rsi
	movl	$1024, %edx
	movq	%rbp, %rdi
	.loc 1 7776 0
	addl	$1024, %ebx
	.loc 1 7804 0
	call	ram_compress_buf
	.loc 1 7776 0
	cmpl	phys_ram_size(%rip), %ebx
	jl	.L1651
.L1661:
	movl	$4096, %r13d
	.p2align 4,,7
.L1652:
.LBB349:
.LBB350:
	.loc 1 7702 0
	movl	$4, %esi
	movq	%rbp, %rdi
	call	deflate
	.loc 1 7703 0
	cmpl	$1, %eax
	.loc 1 7702 0
	movl	%eax, %r12d
	.loc 1 7703 0
	ja	.L1658
	.loc 1 7704 0
	movl	%r13d, %edx
	subl	32(%rbp), %edx
	leaq	120(%rbp), %rbx
	.loc 1 7705 0
	testl	%edx, %edx
	jle	.L1655
	.loc 1 7706 0
	movq	%rbx, %rsi
	movq	%rbp, %rdi
	call	ram_put_cblock
.L1655:
	.loc 1 7710 0
	decl	%r12d
	.loc 1 7708 0
	movl	$4096, 32(%rbp)
	.loc 1 7709 0
	movq	%rbx, 24(%rbp)
	.loc 1 7710 0
	jne	.L1652
.L1658:
	.loc 1 7717 0
	movq	%rbp, %rdi
	call	deflateEnd
.L1644:
.LBE350:
.LBE349:
	.loc 1 7808 0
	addq	$4264, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
.LFE495:
	.size	ram_save, .-ram_save
	.section	.rodata.str1.8
	.align 8
.LC207:
	.string	"Error while reading ram block address=0x%08x"
	.section	.rodata.str1.1
.LC208:
	.string	"Error block header"
	.section	.rodata.str1.8
	.align 8
.LC206:
	.string	"Error while reading ram block header\n"
	.text
	.p2align 4,,15
	.type	ram_load, @function
ram_load:
.LFB496:
	.loc 1 7811 0
	pushq	%r12
.LCFI406:
	pushq	%rbp
.LCFI407:
	pushq	%rbx
.LCFI408:
	movq	%rdi, %rbx
	subq	$4240, %rsp
.LCFI409:
	.loc 1 7816 0
	cmpl	$1, %edx
	.loc 1 7812 0
	leaq	16(%rsp), %rbp
	.loc 1 7816 0
	je	.L1702
	.loc 1 7818 0
	cmpl	$2, %edx
	.loc 1 7819 0
	movl	$-22, %ecx
	.loc 1 7818 0
	jne	.L1664
	.loc 1 7820 0
	call	qemu_get_be32
	cmpl	phys_ram_size(%rip), %eax
	.loc 1 7821 0
	movl	$-22, %ecx
	.loc 1 7820 0
	jne	.L1664
.LBB351:
.LBB352:
	.loc 1 7729 0
	xorl	%esi, %esi
	movl	$4216, %edx
	movq	%rbp, %rdi
	call	memset
	.loc 1 7731 0
	movl	$112, %edx
	movl	$.LC205, %esi
	movq	%rbp, %rdi
	.loc 1 7730 0
	movq	%rbx, 128(%rsp)
	.loc 1 7731 0
	call	inflateInit_
	.loc 1 7732 0
	testl	%eax, %eax
.LBE352:
.LBE351:
	.loc 1 7823 0
	movl	$-22, %ecx
.LBB353:
.LBB354:
	.loc 1 7732 0
	jne	.L1664
.LBE354:
.LBE353:
	.loc 1 7824 0
	xorl	%ebx, %ebx
	cmpl	phys_ram_size(%rip), %ebx
	jge	.L1697
	movq	%rsp, %r12
	.p2align 4,,7
.L1692:
	.loc 1 7825 0
	movl	$1, %edx
	movq	%r12, %rsi
	movq	%rbp, %rdi
	call	ram_decompress_buf
	testl	%eax, %eax
	js	.L1703
	.loc 1 7829 0
	cmpb	$0, (%rsp)
	jne	.L1688
	.loc 1 7830 0
	movslq	%ebx,%rsi
	addq	phys_ram_base(%rip), %rsi
	movl	$1024, %edx
	movq	%rbp, %rdi
	call	ram_decompress_buf
	testl	%eax, %eax
	js	.L1704
	.loc 1 7824 0
	addl	$1024, %ebx
	cmpl	phys_ram_size(%rip), %ebx
	jl	.L1692
.L1697:
.LBB355:
.LBB356:
	.loc 1 7764 0
	movq	%rbp, %rdi
	call	inflateEnd
.LBE356:
.LBE355:
	.loc 1 7863 0
	xorl	%ecx, %ecx
	.p2align 4,,7
.L1664:
	.loc 1 7864 0
	addq	$4240, %rsp
	movl	%ecx, %eax
	popq	%rbx
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,7
.L1702:
.LBB357:
.LBB358:
	.loc 1 7635 0
	call	qemu_get_be32
	movl	%eax, %edx
	cmpl	phys_ram_size(%rip), %edx
	movl	$-22, %eax
	je	.L1705
.LBE358:
.LBE357:
	.loc 1 7632 0
	movl	%eax, %ecx
.L1708:
	.loc 1 7864 0
	addq	$4240, %rsp
	movl	%ecx, %eax
	popq	%rbx
	popq	%rbp
	popq	%r12
	ret
.L1704:
	.loc 1 7831 0
	movq	stderr(%rip), %rdi
	movl	%ebx, %edx
	movl	$.LC207, %esi
	xorl	%eax, %eax
	call	fprintf
.L1688:
	.loc 1 7858 0
	movl	$.LC208, %edi
	call	puts
	.loc 1 7859 0
	movl	$-22, %ecx
	jmp	.L1664
.L1705:
.LBB359:
.LBB360:
	.loc 1 7637 0
	xorl	%r12d, %r12d
	cmpl	%edx, %r12d
	jge	.L1695
.L1707:
.LBB361:
.LBB362:
	.loc 1 7615 0
	movq	%rbx, %rdi
.LBE362:
	.loc 1 7612 0
	movslq	%r12d,%rbp
	addq	phys_ram_base(%rip), %rbp
.LBB363:
	.loc 1 7615 0
	call	qemu_get_byte
	.loc 1 7616 0
	testl	%eax, %eax
	je	.L1672
	decl	%eax
	jne	.L1706
	.loc 1 7622 0
	movq	%rbx, %rdi
	.p2align 4,,6
	call	qemu_get_byte
	.loc 1 7623 0
	movl	$4096, %edx
	movl	%eax, %esi
	movq	%rbp, %rdi
	call	memset
.L1671:
.LBE363:
.LBE361:
	.loc 1 7637 0
	addl	$4096, %r12d
	cmpl	phys_ram_size(%rip), %r12d
	jl	.L1707
.L1695:
	.loc 1 7641 0
	xorl	%eax, %eax
.LBE360:
.LBE359:
	.loc 1 7632 0
	movl	%eax, %ecx
	jmp	.L1708
.L1672:
.LBB364:
.LBB365:
.LBB366:
.LBB367:
	.loc 1 7618 0
	movl	$4096, %edx
	movq	%rbp, %rsi
	movq	%rbx, %rdi
	call	qemu_get_buffer
	cmpl	$4096, %eax
	je	.L1671
	movl	$-5, %eax
.LBE367:
.LBE366:
.LBE365:
.LBE364:
	.loc 1 7632 0
	movl	%eax, %ecx
	jmp	.L1708
	.p2align 4,,7
.L1703:
	.loc 1 7826 0
	movq	stderr(%rip), %rcx
	movl	$37, %edx
	movl	$1, %esi
	movl	$.LC206, %edi
	call	fwrite
	jmp	.L1688
.L1706:
.LBB368:
.LBB369:
.LBB370:
.LBB371:
	.loc 1 7625 0
	movl	$-22, %eax
.LBE371:
.LBE370:
.LBE369:
.LBE368:
	.loc 1 7632 0
	movl	%eax, %ecx
	jmp	.L1708
.LFE496:
	.size	ram_load, .-ram_load
	.p2align 4,,15
.globl qemu_bh_poll
	.type	qemu_bh_poll, @function
qemu_bh_poll:
.LFB498:
	.loc 1 7890 0
	pushq	%rbx
.LCFI410:
	.loc 1 7894 0
	xorl	%ebx, %ebx
	jmp	.L1710
	.p2align 4,,7
.L1713:
	.loc 1 7901 0
	movq	24(%rdx), %rax
	.loc 1 7900 0
	movl	$1, %ebx
	.loc 1 7901 0
	movq	%rax, first_bh(%rip)
	.loc 1 7902 0
	movl	$0, 16(%rdx)
	.loc 1 7903 0
	movq	8(%rdx), %rdi
	call	*(%rdx)
.L1710:
	.loc 1 7897 0
	movq	first_bh(%rip), %rdx
	.loc 1 7898 0
	testq	%rdx, %rdx
	jne	.L1713
	.loc 1 7906 0
	movl	%ebx, %eax
	popq	%rbx
	ret
.LFE498:
	.size	qemu_bh_poll, .-qemu_bh_poll
	.p2align 4,,15
.globl qemu_bh_cancel
	.type	qemu_bh_cancel, @function
qemu_bh_cancel:
.LFB500:
	.loc 1 7924 0
	.loc 1 7926 0
	movl	16(%rdi), %r9d
	testl	%r9d, %r9d
	je	.L1714
	.loc 1 7929 0
	cmpq	%rdi, first_bh(%rip)
	.loc 1 7927 0
	movl	$first_bh, %edx
	jmp	.L1721
	.p2align 4,,7
.L1722:
	.loc 1 7929 0
	movq	(%rdx), %rax
	cmpq	%rdi, 24(%rax)
	leaq	24(%rax), %rdx
.L1721:
	jne	.L1722
	.loc 1 7930 0
	movq	24(%rdi), %rax
	movq	%rax, (%rdx)
	.loc 1 7931 0
	movl	$0, 16(%rdi)
.L1714:
	rep ; ret
.LFE500:
	.size	qemu_bh_cancel, .-qemu_bh_cancel
	.p2align 4,,15
.globl qemu_bh_delete
	.type	qemu_bh_delete, @function
qemu_bh_delete:
.LFB501:
	.loc 1 7936 0
	pushq	%rbx
.LCFI411:
	.loc 1 7936 0
	movq	%rdi, %rbx
	.loc 1 7937 0
	call	qemu_bh_cancel
	.loc 1 7938 0
	movq	%rbx, %rdi
	popq	%rbx
	jmp	qemu_free
.LFE501:
	.size	qemu_bh_delete, .-qemu_bh_delete
	.p2align 4,,15
	.type	qemu_chr_reset_bh, @function
qemu_chr_reset_bh:
.LFB322:
	.loc 1 1905 0
	pushq	%rbx
.LCFI412:
	.loc 1 1907 0
	movl	$2, %esi
	.loc 1 1905 0
	movq	%rdi, %rbx
	.loc 1 1907 0
	call	qemu_chr_event
	.loc 1 1908 0
	movq	96(%rbx), %rdi
	call	qemu_bh_delete
	.loc 1 1909 0
	movq	$0, 96(%rbx)
	popq	%rbx
	ret
.LFE322:
	.size	qemu_chr_reset_bh, .-qemu_chr_reset_bh
	.p2align 4,,15
.globl qemu_register_machine
	.type	qemu_register_machine, @function
qemu_register_machine:
.LFB502:
	.loc 1 7947 0
	.loc 1 7951 0
	cmpq	$0, first_machine(%rip)
	.loc 1 7949 0
	movl	$first_machine, %edx
	jmp	.L1731
	.p2align 4,,7
.L1732:
	.loc 1 7951 0
	movq	(%rdx), %rax
	cmpq	$0, 24(%rax)
	leaq	24(%rax), %rdx
.L1731:
	jne	.L1732
	.loc 1 7955 0
	xorl	%eax, %eax
	.loc 1 7952 0
	movq	$0, 24(%rdi)
	.loc 1 7953 0
	movq	%rdi, (%rdx)
	.loc 1 7955 0
	ret
.LFE502:
	.size	qemu_register_machine, .-qemu_register_machine
	.p2align 4,,15
	.type	gui_update, @function
gui_update:
.LFB504:
	.loc 1 7972 0
	pushq	%rbx
.LCFI413:
	.loc 1 7972 0
	movq	%rdi, %rbx
	.loc 1 7974 0
	call	*64(%rbx)
	.loc 1 7975 0
	movq	rt_clock(%rip), %rdi
	call	qemu_get_clock
	movq	40(%rbx), %rdi
	leaq	30(%rax), %rsi
	popq	%rbx
	jmp	qemu_mod_timer
.LFE504:
	.size	gui_update, .-gui_update
	.p2align 4,,15
.globl qemu_add_vm_change_state_handler
	.type	qemu_add_vm_change_state_handler, @function
qemu_add_vm_change_state_handler:
.LFB505:
	.loc 1 7988 0
	pushq	%rbp
.LCFI414:
	movq	%rsi, %rbp
	pushq	%rbx
.LCFI415:
	movq	%rdi, %rbx
	.loc 1 7991 0
	movl	$32, %edi
	.loc 1 7988 0
	subq	$8, %rsp
.LCFI416:
	.loc 1 7991 0
	call	qemu_mallocz
	movq	%rax, %rcx
	.loc 1 7993 0
	xorl	%eax, %eax
	.loc 1 7992 0
	testq	%rcx, %rcx
	je	.L1734
	.loc 1 7995 0
	movq	%rbx, (%rcx)
	.loc 1 7996 0
	movq	%rbp, 8(%rcx)
	.loc 1 7997 0
	movq	vm_change_state_head(%rip), %rax
	testq	%rax, %rax
	movq	%rax, 16(%rcx)
	jne	.L1737
.L1736:
	movq	%rcx, vm_change_state_head(%rip)
	.loc 1 7998 0
	movq	%rcx, %rax
	.loc 1 7997 0
	movq	$vm_change_state_head, 24(%rcx)
.L1734:
	.loc 1 7999 0
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.p2align 4,,7
.L1737:
	.loc 1 7997 0
	movq	vm_change_state_head(%rip), %rax
	leaq	16(%rcx), %rdx
	movq	%rdx, 24(%rax)
	jmp	.L1736
.LFE505:
	.size	qemu_add_vm_change_state_handler, .-qemu_add_vm_change_state_handler
	.p2align 4,,15
.globl qemu_del_vm_change_state_handler
	.type	qemu_del_vm_change_state_handler, @function
qemu_del_vm_change_state_handler:
.LFB506:
	.loc 1 8002 0
	.loc 1 8003 0
	movq	16(%rdi), %rdx
	testq	%rdx, %rdx
	je	.L1739
	movq	24(%rdi), %rax
	movq	%rax, 24(%rdx)
.L1739:
	movq	24(%rdi), %rax
	movq	%rdx, (%rax)
	.loc 1 8004 0
	jmp	qemu_free
.LFE506:
	.size	qemu_del_vm_change_state_handler, .-qemu_del_vm_change_state_handler
	.p2align 4,,15
	.type	vm_state_notify, @function
vm_state_notify:
.LFB507:
	.loc 1 8008 0
	pushq	%rbp
.LCFI417:
	movl	%edi, %ebp
	pushq	%rbx
.LCFI418:
	subq	$8, %rsp
.LCFI419:
	.loc 1 8011 0
	movq	vm_change_state_head(%rip), %rbx
	jmp	.L1747
	.p2align 4,,7
.L1748:
	.loc 1 8012 0
	movq	8(%rbx), %rdi
	movl	%ebp, %esi
	call	*(%rbx)
	.loc 1 8011 0
	movq	16(%rbx), %rbx
.L1747:
	testq	%rbx, %rbx
	jne	.L1748
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
.LFE507:
	.size	vm_state_notify, .-vm_state_notify
	.p2align 4,,15
.globl vm_stop
	.type	vm_stop, @function
vm_stop:
.LFB511:
	.loc 1 8043 0
	.loc 1 8044 0
	movl	vm_running(%rip), %r10d
	.loc 1 8043 0
	pushq	%rbx
.LCFI420:
	.loc 1 8043 0
	movl	%edi, %ebx
	.loc 1 8044 0
	testl	%r10d, %r10d
	jne	.L1753
	.loc 1 8054 0
	popq	%rbx
	ret
	.p2align 4,,7
.L1753:
	.loc 1 8045 0
	call	cpu_disable_ticks
	.loc 1 8047 0
	testl	%ebx, %ebx
	.loc 1 8046 0
	movl	$0, vm_running(%rip)
	.loc 1 8047 0
	jne	.L1754
.L1751:
	.loc 1 8054 0
	popq	%rbx
	.loc 1 8052 0
	xorl	%edi, %edi
	jmp	vm_state_notify
.L1754:
	.loc 1 8048 0
	movq	vm_stop_cb(%rip), %rax
	testq	%rax, %rax
	je	.L1751
	.loc 1 8049 0
	movq	vm_stop_opaque(%rip), %rdi
	movl	%ebx, %esi
	call	*%rax
	jmp	.L1751
.LFE511:
	.size	vm_stop, .-vm_stop
	.p2align 4,,15
.globl vm_start
	.type	vm_start, @function
vm_start:
.LFB510:
	.loc 1 8033 0
	subq	$8, %rsp
.LCFI421:
	.loc 1 8034 0
	movl	vm_running(%rip), %r11d
	testl	%r11d, %r11d
	je	.L1757
	.loc 1 8040 0
	addq	$8, %rsp
	ret
	.p2align 4,,7
.L1757:
	.loc 1 8035 0
	call	cpu_enable_ticks
	.loc 1 8037 0
	movl	$1, %edi
	.loc 1 8036 0
	movl	$1, vm_running(%rip)
	.loc 1 8037 0
	call	vm_state_notify
	.loc 1 8038 0
	movq	alarm_timer(%rip), %rdi
	.loc 1 8040 0
	addq	$8, %rsp
	.loc 1 8038 0
	jmp	qemu_rearm_alarm_timer
.LFE510:
	.size	vm_start, .-vm_start
	.section	.rodata.str1.1
.LC209:
	.string	"RESET"
.LC210:
	.string	"SHUTDOWN"
.LC211:
	.string	"PAUSE"
.LC212:
	.string	"RESUME"
.LC215:
	.string	"fgets()"
.LC213:
	.string	"Unknown command: %s"
	.section	.rodata.str1.8
	.align 8
.LC214:
	.string	"Error: Received unknown control command!\n"
	.text
	.p2align 4,,15
	.type	control_socket_read, @function
control_socket_read:
.LFB252:
	.loc 1 364 0
	pushq	%rbp
.LCFI422:
	pushq	%rbx
.LCFI423:
	movq	%rdi, %rbx
	subq	$1032, %rsp
.LCFI424:
	.loc 1 370 0
	movq	16(%rdi), %rdx
	movl	$1024, %esi
	movq	%rsp, %rdi
	movq	%rsp, %rbp
	call	fgets
	testq	%rax, %rax
	je	.L1787
.L1761:
.LBB372:
.LBB373:
	.loc 1 296 0
	movl	$5, %edx
	movl	$.LC209, %esi
	movq	%rbp, %rdi
	call	strncasecmp
	testl	%eax, %eax
	je	.L1788
	.loc 1 300 0
	movl	$8, %edx
	movl	$.LC210, %esi
	movq	%rbp, %rdi
	call	strncasecmp
	testl	%eax, %eax
	je	.L1789
	.loc 1 304 0
	movl	$5, %edx
	movl	$.LC211, %esi
	movq	%rbp, %rdi
	call	strncasecmp
	testl	%eax, %eax
	je	.L1790
	.loc 1 308 0
	movl	$6, %edx
	movl	$.LC212, %esi
	movq	%rbp, %rdi
	call	strncasecmp
	testl	%eax, %eax
	jne	.L1771
.LBE373:
.LBE372:
.LBB374:
.LBB375:
	.loc 1 340 0
	call	vm_start
.LBE375:
.LBE374:
	.loc 1 389 0
	addq	$1032, %rsp
	popq	%rbx
	popq	%rbp
	.p2align 4,,2
	ret
	.p2align 4,,7
.L1787:
	.loc 1 371 0
	movq	16(%rbx), %rdi
	call	ferror
	testl	%eax, %eax
	je	.L1761
.L1764:
	.loc 1 385 0
	movl	$.LC215, %edi
	call	perror
	.loc 1 386 0
	movl	4(%rbx), %edi
	xorl	%r8d, %r8d
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	xorl	%esi, %esi
	call	qemu_set_fd_handler2
	.loc 1 387 0
	movq	16(%rbx), %rdi
	call	fclose
	.loc 1 388 0
	movl	$0, 8(%rbx)
	.loc 1 389 0
	addq	$1032, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.p2align 4,,7
.L1788:
.LBB376:
.LBB377:
	.loc 1 331 0
	call	qemu_system_reset_request
.LBE377:
.LBE376:
	.loc 1 389 0
	addq	$1032, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.p2align 4,,7
.L1789:
.LBB378:
.LBB379:
	.loc 1 334 0
	.p2align 4,,5
	call	qemu_system_shutdown_request
.LBE379:
.LBE378:
	.loc 1 389 0
	addq	$1032, %rsp
	popq	%rbx
	popq	%rbp
	.p2align 4,,1
	ret
	.p2align 4,,7
.L1771:
.LBB380:
.LBB381:
	.loc 1 318 0
	movq	stderr(%rip), %rdi
	movq	%rbp, %rdx
	movl	$.LC213, %esi
	xorl	%eax, %eax
	call	fprintf
.LBE381:
.LBE380:
.LBB382:
.LBB383:
	.loc 1 357 0
	movq	stdout(%rip), %rcx
	movl	$41, %edx
	movl	$1, %esi
	movl	$.LC214, %edi
	call	fwrite
.LBE383:
.LBE382:
	.loc 1 389 0
	addq	$1032, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.p2align 4,,7
.L1790:
.LBB384:
.LBB385:
	.loc 1 337 0
	xorl	%edi, %edi
	call	vm_stop
.LBE385:
.LBE384:
	.loc 1 389 0
	addq	$1032, %rsp
	popq	%rbx
	popq	%rbp
	ret
.LFE252:
	.size	control_socket_read, .-control_socket_read
	.section	.rodata.str1.1
.LC216:
	.string	"Warning: "
	.section	.rodata.str1.8
	.align 8
.LC218:
	.string	"Error %d while activating snapshot on '%s'\n"
	.align 8
.LC221:
	.string	"qemu: warning: instance 0x%x of device '%s' not present in current VM\n"
	.align 8
.LC219:
	.string	"Device %s does not support VM state snapshots\n"
	.align 8
.LC222:
	.string	"qemu: warning: error while loading state for instance 0x%x of device '%s'\n"
	.align 8
.LC223:
	.string	"Error %d while loading VM state\n"
	.section	.rodata.str1.1
.LC220:
	.string	"Could not open VM state file\n"
	.section	.rodata.str1.8
	.align 8
.LC217:
	.string	"Could not find snapshot '%s' on device '%s'\n"
	.text
	.p2align 4,,15
.globl do_loadvm
	.type	do_loadvm, @function
do_loadvm:
.LFB478:
	.loc 1 6925 0
	pushq	%r15
.LCFI425:
	pushq	%r14
.LCFI426:
	movq	%rdi, %r14
	pushq	%r13
.LCFI427:
	pushq	%r12
.LCFI428:
	pushq	%rbp
.LCFI429:
	pushq	%rbx
.LCFI430:
	subq	$296, %rsp
.LCFI431:
	.loc 1 6932 0
	call	get_bs_snapshots
	.loc 1 6933 0
	testq	%rax, %rax
	.loc 1 6927 0
	leaq	272(%rsp), %r15
	.loc 1 6932 0
	movq	%rax, %r13
	.loc 1 6933 0
	je	.L1837
	.loc 1 6939 0
	call	qemu_aio_flush
	.loc 1 6941 0
	movl	vm_running(%rip), %eax
	.loc 1 6942 0
	xorl	%edi, %edi
	.loc 1 6944 0
	xorl	%r12d, %r12d
	.loc 1 6941 0
	movl	%eax, 12(%rsp)
	.loc 1 6942 0
	call	vm_stop
	.loc 1 6944 0
	cmpl	nb_drives(%rip), %r12d
	jg	.L1829
	.p2align 4,,7
.L1839:
	.loc 1 6945 0
	movslq	%r12d,%rax
	leaq	(%rax,%rax,2), %rax
	movq	drives_table(,%rax,8), %rbx
	.loc 1 6946 0
	movq	%rbx, %rdi
	call	bdrv_has_snapshot
	testl	%eax, %eax
	jne	.L1838
.L1795:
	.loc 1 6944 0
	incl	%r12d
.L1844:
	cmpl	nb_drives(%rip), %r12d
	jle	.L1839
.L1829:
	.loc 1 6972 0
	movq	%r15, %rsi
	movq	%r13, %rdi
	call	bdrv_get_info
	testl	%eax, %eax
	js	.L1807
	movq	8(%r15), %rsi
	testq	%rsi, %rsi
	jle	.L1807
	.loc 1 6979 0
	xorl	%edx, %edx
	movq	%r13, %rdi
	call	qemu_fopen_bdrv
	.loc 1 6980 0
	testq	%rax, %rax
	.loc 1 6979 0
	movq	%rax, %rbp
	.loc 1 6980 0
	je	.L1840
.LBB386:
.LBB387:
	.loc 1 6725 0
	movq	%rax, %rdi
	call	qemu_get_be32
	.loc 1 6726 0
	cmpl	$1363498573, %eax
	je	.L1841
.L1810:
	.loc 1 6731 0
	movl	$-1, %ebx
.L1812:
.LBE387:
.LBE386:
	.loc 1 6985 0
	movq	%rbp, %rdi
	call	qemu_fclose
	.loc 1 6986 0
	testl	%ebx, %ebx
	js	.L1842
.L1804:
	.loc 1 6990 0
	movl	12(%rsp), %ebx
	testl	%ebx, %ebx
	jne	.L1843
	.loc 1 6992 0
	addq	$296, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.p2align 4,,7
.L1838:
	.loc 1 6947 0
	movq	%r14, %rsi
	movq	%rbx, %rdi
	call	bdrv_snapshot_goto
	.loc 1 6948 0
	testl	%eax, %eax
	.loc 1 6947 0
	movl	%eax, %ebp
	.loc 1 6948 0
	jns	.L1795
	.loc 1 6949 0
	cmpq	%rbx, %r13
	je	.L1798
	.loc 1 6950 0
	movl	$.LC216, %edi
	xorl	%eax, %eax
	call	term_printf
.L1798:
	.loc 1 6951 0
	cmpl	$-95, %ebp
	je	.L1800
	cmpl	$-2, %ebp
	je	.L1801
	.loc 1 6961 0
	movq	%rbx, %rdi
	.p2align 4,,5
	call	bdrv_get_device_name
	movl	%ebp, %esi
	movq	%rax, %rdx
	movl	$.LC218, %edi
	xorl	%eax, %eax
	call	term_printf
.L1799:
	.loc 1 6966 0
	cmpq	%rbx, %r13
	je	.L1804
	.loc 1 6944 0
	incl	%r12d
	jmp	.L1844
.L1841:
.LBB388:
.LBB389:
	.loc 1 6728 0
	movq	%rbp, %rdi
	.p2align 4,,5
	call	qemu_get_be32
	.loc 1 6729 0
	cmpl	$2, %eax
	.p2align 4,,2
	jne	.L1810
	.loc 1 6734 0
	movq	%rbp, %rdi
	leaq	16(%rsp), %r13
	call	qemu_get_be64
	.loc 1 6735 0
	movq	%rbp, %rdi
	.loc 1 6734 0
	movq	%rax, %rbx
	.loc 1 6735 0
	call	qemu_ftell
	addq	%rbx, %rax
	movq	%rax, (%rsp)
.L1813:
	.loc 1 6737 0
	movq	%rbp, %rdi
	call	qemu_ftell
	cmpq	(%rsp), %rax
	jge	.L1814
	.loc 1 6739 0
	movq	%rbp, %rdi
	call	qemu_get_byte
	.loc 1 6740 0
	movq	%r13, %rsi
	movl	%eax, %edx
	.loc 1 6739 0
	movl	%eax, %ebx
	.loc 1 6740 0
	movq	%rbp, %rdi
	.loc 1 6741 0
	movslq	%ebx,%rbx
	.loc 1 6740 0
	call	qemu_get_buffer
	.loc 1 6742 0
	movq	%rbp, %rdi
	.loc 1 6741 0
	movb	$0, 16(%rsp,%rbx)
	.loc 1 6742 0
	call	qemu_get_be32
	.loc 1 6743 0
	movq	%rbp, %rdi
	.loc 1 6742 0
	movl	%eax, %r12d
	.loc 1 6743 0
	call	qemu_get_be32
	.loc 1 6744 0
	movq	%rbp, %rdi
	.loc 1 6743 0
	movl	%eax, 8(%rsp)
	.loc 1 6744 0
	call	qemu_get_be32
	.loc 1 6749 0
	movq	%rbp, %rdi
	.loc 1 6744 0
	movl	%eax, %r15d
	.loc 1 6749 0
	call	qemu_ftell
.LBB390:
.LBB391:
	.loc 1 6709 0
	movq	first_se(%rip), %rbx
.LBE391:
.LBE390:
	.loc 1 6749 0
	movq	%rax, %r14
	jmp	.L1835
	.p2align 4,,7
.L1845:
.LBB392:
.LBB393:
.LBB394:
	.loc 1 6710 0
	movq	%r13, %rsi
	movq	%rbx, %rdi
	call	strcmp
.LBE394:
	testl	%eax, %eax
	jne	.L1818
	cmpl	%r12d, 256(%rbx)
	je	.L1832
.L1818:
	.loc 1 6709 0
	movq	288(%rbx), %rbx
.L1835:
	testq	%rbx, %rbx
	jne	.L1845
.L1833:
.LBE393:
.LBE392:
	.loc 1 6752 0
	movq	%r13, %rcx
	movl	%r12d, %edx
	movl	$.LC221, %esi
.L1836:
	.loc 1 6757 0
	movq	stderr(%rip), %rdi
	xorl	%eax, %eax
	call	fprintf
.L1823:
	.loc 1 6762 0
	movslq	%r15d,%rsi
	xorl	%edx, %edx
	movq	%rbp, %rdi
	addq	%r14, %rsi
	call	qemu_fseek
	jmp	.L1813
.L1807:
.LBE389:
.LBE388:
	.loc 1 6973 0
	movq	%r13, %rdi
	call	bdrv_get_device_name
	movl	$.LC219, %edi
	movq	%rax, %rsi
	xorl	%eax, %eax
	call	term_printf
	.loc 1 6992 0
	addq	$296, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L1837:
	.loc 1 6934 0
	movl	$.LC195, %edi
	xorl	%eax, %eax
	call	term_printf
	.loc 1 6992 0
	addq	$296, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L1843:
	.loc 1 6991 0
	call	vm_start
	.loc 1 6992 0
	addq	$296, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L1832:
.LBB395:
.LBB396:
	.loc 1 6751 0
	testq	%rbx, %rbx
	je	.L1833
	.loc 1 6755 0
	movq	280(%rbx), %rsi
	movl	8(%rsp), %edx
	movq	%rbp, %rdi
	call	*272(%rbx)
	.loc 1 6756 0
	testl	%eax, %eax
	jns	.L1823
	.loc 1 6757 0
	movq	%r13, %rcx
	movl	%r12d, %edx
	movl	$.LC222, %esi
	jmp	.L1836
	.p2align 4,,7
.L1800:
.LBE396:
.LBE395:
	.loc 1 6953 0
	movq	%rbx, %rdi
	call	bdrv_get_device_name
	movl	$.LC196, %edi
	movq	%rax, %rsi
	xorl	%eax, %eax
	call	term_printf
	jmp	.L1799
.L1842:
	.loc 1 6987 0
	movl	%ebx, %esi
	movl	$.LC223, %edi
	xorl	%eax, %eax
	call	term_printf
	jmp	.L1804
.L1840:
	.loc 1 6981 0
	movl	$.LC220, %edi
	xorl	%eax, %eax
	call	term_printf
	jmp	.L1804
.L1801:
	.loc 1 6957 0
	movq	%rbx, %rdi
	call	bdrv_get_device_name
	movq	%r14, %rsi
	movq	%rax, %rdx
	movl	$.LC217, %edi
	xorl	%eax, %eax
	call	term_printf
	jmp	.L1799
.L1814:
.LBB397:
.LBB398:
	.loc 1 6764 0
	xorl	%ebx, %ebx
	jmp	.L1812
.LBE398:
.LBE397:
.LFE478:
	.size	do_loadvm, .-do_loadvm
	.section	.rodata.str1.8
	.align 8
.LC227:
	.string	"Error while creating snapshot on '%s'\n"
	.align 8
.LC226:
	.string	"Error while deleting snapshot on '%s'\n"
	.align 8
.LC224:
	.string	"No block device can accept snapshots\n"
	.text
	.p2align 4,,15
.globl do_savevm
	.type	do_savevm, @function
do_savevm:
.LFB477:
	.loc 1 6826 0
	pushq	%r15
.LCFI432:
	pushq	%r14
.LCFI433:
	movq	%rdi, %r14
	pushq	%r13
.LCFI434:
	pushq	%r12
.LCFI435:
	pushq	%rbp
.LCFI436:
	pushq	%rbx
.LCFI437:
	subq	$904, %rsp
.LCFI438:
	.loc 1 6839 0
	call	get_bs_snapshots
	.loc 1 6840 0
	testq	%rax, %rax
	.loc 1 6839 0
	movq	%rax, %r15
	.loc 1 6840 0
	je	.L1890
	.loc 1 6846 0
	call	qemu_aio_flush
	.loc 1 6848 0
	movl	vm_running(%rip), %eax
	.loc 1 6849 0
	xorl	%edi, %edi
	.loc 1 6848 0
	movl	%eax, 16(%rsp)
	.loc 1 6849 0
	call	vm_stop
	.loc 1 6852 0
	testq	%r14, %r14
	.loc 1 6851 0
	movl	$0, 20(%rsp)
	.loc 1 6852 0
	je	.L1848
.LBB399:
.LBB400:
	.loc 1 6810 0
	leaq	24(%rsp), %rsi
	movq	%r15, %rdi
	.loc 1 6809 0
	movl	$-2, 12(%rsp)
	.loc 1 6810 0
	call	bdrv_snapshot_list
	movl	%eax, %r12d
	.loc 1 6811 0
	movl	12(%rsp), %eax
	testl	%r12d, %r12d
	js	.L1850
	.loc 1 6813 0
	xorl	%ebp, %ebp
	cmpl	%r12d, 20(%rsp)
	jge	.L1886
	movq	24(%rsp), %r13
.L1856:
	.loc 1 6814 0
	movslq	%ebp,%rax
.LBB401:
	.loc 1 6815 0
	movq	%r14, %rsi
.LBE401:
	.loc 1 6814 0
	imulq	$408, %rax, %rax
	leaq	(%rax,%r13), %rbx
.LBB402:
	.loc 1 6815 0
	movq	%rbx, %rdi
	call	strcmp
.LBE402:
	testl	%eax, %eax
	je	.L1855
.LBB403:
	leaq	128(%rbx), %rdi
	movq	%r14, %rsi
	call	strcmp
.LBE403:
	testl	%eax, %eax
	je	.L1855
	.loc 1 6813 0
	incl	%ebp
	cmpl	%r12d, %ebp
	jl	.L1856
	.loc 1 6821 0
	movq	%r13, %rdi
	call	qemu_free
	movl	12(%rsp), %eax
.L1850:
.LBE400:
.LBE399:
	.loc 1 6855 0
	testl	%eax, %eax
	movl	$1, %eax
	cmovs	20(%rsp), %eax
	movl	%eax, 20(%rsp)
.L1848:
	.loc 1 6858 0
	leaq	480(%rsp), %rdi
	xorl	%esi, %esi
	movl	$408, %edx
	call	memset
	.loc 1 6859 0
	movl	20(%rsp), %eax
	testl	%eax, %eax
	jne	.L1891
	.loc 1 6863 0
	testq	%r14, %r14
	je	.L1859
	.loc 1 6864 0
	leaq	480(%rsp), %rdi
	movq	%r14, %rdx
	movl	$256, %esi
	subq	$-128, %rdi
.L1887:
	call	pstrcpy
.L1859:
	.loc 1 6873 0
	leaq	32(%rsp), %rdi
	xorl	%esi, %esi
	call	gettimeofday
	.loc 1 6874 0
	movq	32(%rsp), %rax
	.loc 1 6875 0
	movq	40(%rsp), %r13
	.loc 1 6877 0
	movq	vm_clock(%rip), %rdi
	.loc 1 6874 0
	movl	%eax, 868(%rsp)
	.loc 1 6875 0
	imulq	$1000, %r13, %rax
	movl	%eax, 872(%rsp)
	.loc 1 6877 0
	call	qemu_get_clock
	.loc 1 6879 0
	leaq	48(%rsp), %rsi
	movq	%r15, %rdi
	.loc 1 6877 0
	movq	%rax, 880(%rsp)
	.loc 1 6879 0
	call	bdrv_get_info
	testl	%eax, %eax
	js	.L1862
	movq	56(%rsp), %rsi
	testq	%rsi, %rsi
	jle	.L1862
	.loc 1 6886 0
	movl	$1, %edx
	movq	%r15, %rdi
	call	qemu_fopen_bdrv
	.loc 1 6887 0
	testq	%rax, %rax
	.loc 1 6886 0
	movq	%rax, %rbp
	.loc 1 6887 0
	je	.L1892
.LBB404:
.LBB405:
	.loc 1 6670 0
	movq	%rax, %rdi
	movl	$1363498573, %esi
	call	qemu_put_be32
	.loc 1 6671 0
	movl	$2, %esi
	movq	%rbp, %rdi
	call	qemu_put_be32
	.loc 1 6672 0
	movq	%rbp, %rdi
	call	qemu_ftell
	.loc 1 6673 0
	xorl	%esi, %esi
	movq	%rbp, %rdi
	.loc 1 6672 0
	movq	%rax, %r15
	.loc 1 6673 0
	call	qemu_put_be64
	.loc 1 6675 0
	movq	first_se(%rip), %r12
	testq	%r12, %r12
	je	.L1884
	.p2align 4,,7
.L1893:
	.loc 1 6677 0
	movq	%r12, %rbx
	.p2align 4,,7
.L1868:
	movl	(%rbx), %eax
	addq	$4, %rbx
	leal	-16843009(%rax), %edx
	notl	%eax
	andl	%eax, %edx
	andl	$-2139062144, %edx
	je	.L1868
	movl	%edx, %eax
	.loc 1 6678 0
	movq	%rbp, %rdi
	.loc 1 6677 0
	shrl	$16, %eax
	testl	$32896, %edx
	cmove	%eax, %edx
	leaq	2(%rbx), %rax
	cmove	%rax, %rbx
	addb	%dl, %dl
	sbbq	$3, %rbx
	subq	%r12, %rbx
	.loc 1 6678 0
	movl	%ebx, %esi
	call	qemu_put_byte
	.loc 1 6679 0
	movl	%ebx, %edx
	movq	%r12, %rsi
	movq	%rbp, %rdi
	call	qemu_put_buffer
	.loc 1 6681 0
	movl	256(%r12), %esi
	movq	%rbp, %rdi
	call	qemu_put_be32
	.loc 1 6682 0
	movl	260(%r12), %esi
	movq	%rbp, %rdi
	call	qemu_put_be32
	.loc 1 6685 0
	movq	%rbp, %rdi
	call	qemu_ftell
	.loc 1 6686 0
	xorl	%esi, %esi
	movq	%rbp, %rdi
	.loc 1 6685 0
	movq	%rax, %rbx
	.loc 1 6686 0
	call	qemu_put_be32
	.loc 1 6687 0
	movq	280(%r12), %rsi
	movq	%rbp, %rdi
	call	*264(%r12)
	.loc 1 6690 0
	movq	%rbp, %rdi
	call	qemu_ftell
	movq	%rax, %r14
	.loc 1 6691 0
	subl	%ebx, %eax
	.loc 1 6692 0
	xorl	%edx, %edx
	.loc 1 6691 0
	leal	-4(%rax), %r13d
	.loc 1 6692 0
	movq	%rbx, %rsi
	movq	%rbp, %rdi
	call	qemu_fseek
	.loc 1 6693 0
	movl	%r13d, %esi
	movq	%rbp, %rdi
	call	qemu_put_be32
	.loc 1 6694 0
	xorl	%edx, %edx
	movq	%r14, %rsi
	movq	%rbp, %rdi
	call	qemu_fseek
	.loc 1 6675 0
	movq	288(%r12), %r12
	testq	%r12, %r12
	jne	.L1893
.L1884:
	.loc 1 6696 0
	movq	%rbp, %rdi
	call	qemu_ftell
	.loc 1 6697 0
	xorl	%edx, %edx
	.loc 1 6696 0
	movq	%rax, %r14
	.loc 1 6697 0
	movq	%rbp, %rdi
	movq	%r15, %rsi
	call	qemu_fseek
	.loc 1 6698 0
	movq	%r14, %rsi
	movq	%rbp, %rdi
	subq	%r15, %rsi
	subq	$8, %rsi
	call	qemu_put_be64
	.loc 1 6699 0
	xorl	%edx, %edx
	movq	%r14, %rsi
	movq	%rbp, %rdi
	call	qemu_fseek
.LBE405:
.LBE404:
	.loc 1 6892 0
	movq	%rbp, %rdi
	call	qemu_ftell
	.loc 1 6893 0
	movq	%rbp, %rdi
	.loc 1 6892 0
	movl	%eax, 864(%rsp)
	.loc 1 6901 0
	xorl	%ebp, %ebp
	.loc 1 6893 0
	call	qemu_fclose
	.loc 1 6901 0
	cmpl	nb_drives(%rip), %ebp
	jge	.L1863
.L1896:
	.loc 1 6902 0
	movslq	%ebp,%rax
	leaq	(%rax,%rax,2), %rax
	movq	drives_table(,%rax,8), %rbx
	.loc 1 6903 0
	movq	%rbx, %rdi
	call	bdrv_has_snapshot
	testl	%eax, %eax
	je	.L1875
	.loc 1 6904 0
	movl	20(%rsp), %r12d
	testl	%r12d, %r12d
	jne	.L1894
.L1877:
	.loc 1 6911 0
	leaq	480(%rsp), %rsi
	movq	%rbx, %rdi
	call	bdrv_snapshot_create
	.loc 1 6912 0
	testl	%eax, %eax
	js	.L1895
.L1875:
	.loc 1 6901 0
	incl	%ebp
.L1898:
	cmpl	nb_drives(%rip), %ebp
	jl	.L1896
.L1863:
	.loc 1 6920 0
	movl	16(%rsp), %ebp
	testl	%ebp, %ebp
	jne	.L1897
.L1846:
	.loc 1 6922 0
	addq	$904, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L1891:
	.loc 1 6860 0
	leaq	64(%rsp), %rdx
	leaq	480(%rsp), %rdi
	movl	$256, %esi
	subq	$-128, %rdx
	subq	$-128, %rdi
	call	pstrcpy
	.loc 1 6861 0
	leaq	64(%rsp), %rdx
	leaq	480(%rsp), %rdi
	movl	$128, %esi
	jmp	.L1887
.L1895:
	.loc 1 6913 0
	movq	%rbx, %rdi
	.loc 1 6901 0
	incl	%ebp
	.loc 1 6913 0
	call	bdrv_get_device_name
	movl	$.LC227, %edi
	movq	%rax, %rsi
	xorl	%eax, %eax
	call	term_printf
	jmp	.L1898
.L1862:
	.loc 1 6880 0
	movq	%r15, %rdi
	call	bdrv_get_device_name
	movl	$.LC219, %edi
	movq	%rax, %rsi
	xorl	%eax, %eax
	call	term_printf
	.loc 1 6920 0
	movl	16(%rsp), %ebp
	testl	%ebp, %ebp
	je	.L1846
.L1897:
	.loc 1 6921 0
	call	vm_start
	.loc 1 6922 0
	addq	$904, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L1894:
	.loc 1 6905 0
	leaq	64(%rsp), %rsi
	movq	%rbx, %rdi
	call	bdrv_snapshot_delete
	.loc 1 6906 0
	testl	%eax, %eax
	jns	.L1877
	.loc 1 6907 0
	movq	%rbx, %rdi
	call	bdrv_get_device_name
	movl	$.LC226, %edi
	movq	%rax, %rsi
	xorl	%eax, %eax
	call	term_printf
	jmp	.L1877
.L1855:
.LBB406:
.LBB407:
	.loc 1 6816 0
	leaq	64(%rsp), %rdi
	movl	$408, %edx
	movq	%rbx, %rsi
	call	memcpy
	.loc 1 6817 0
	movl	$0, 12(%rsp)
.L1886:
	movq	24(%rsp), %r13
	.loc 1 6821 0
	movq	%r13, %rdi
	call	qemu_free
	movl	12(%rsp), %eax
	jmp	.L1850
.L1890:
.LBE407:
.LBE406:
	.loc 1 6841 0
	movl	$.LC224, %edi
	xorl	%eax, %eax
	call	term_printf
	.loc 1 6922 0
	addq	$904, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L1892:
	.loc 1 6888 0
	movl	$.LC220, %edi
	xorl	%eax, %eax
	call	term_printf
	jmp	.L1863
.LFE477:
	.size	do_savevm, .-do_savevm
	.p2align 4,,15
.globl qemu_add_vm_stop_handler
	.type	qemu_add_vm_stop_handler, @function
qemu_add_vm_stop_handler:
.LFB508:
	.loc 1 8021 0
	.loc 1 8025 0
	xorl	%eax, %eax
	.loc 1 8022 0
	movq	%rdi, vm_stop_cb(%rip)
	.loc 1 8023 0
	movq	%rsi, vm_stop_opaque(%rip)
	.loc 1 8025 0
	ret
.LFE508:
	.size	qemu_add_vm_stop_handler, .-qemu_add_vm_stop_handler
	.p2align 4,,15
.globl qemu_del_vm_stop_handler
	.type	qemu_del_vm_stop_handler, @function
qemu_del_vm_stop_handler:
.LFB509:
	.loc 1 8028 0
	.loc 1 8029 0
	movq	$0, vm_stop_cb(%rip)
	ret
.LFE509:
	.size	qemu_del_vm_stop_handler, .-qemu_del_vm_stop_handler
	.p2align 4,,15
.globl qemu_register_reset
	.type	qemu_register_reset, @function
qemu_register_reset:
.LFB512:
	.loc 1 8070 0
	movq	%rbx, -24(%rsp)
.LCFI439:
	movq	%rbp, -16(%rsp)
.LCFI440:
	.loc 1 8073 0
	movl	$first_reset_entry, %ebx
	.loc 1 8070 0
	movq	%r12, -8(%rsp)
.LCFI441:
	subq	$24, %rsp
.LCFI442:
	.loc 1 8075 0
	cmpq	$0, first_reset_entry(%rip)
	.loc 1 8070 0
	movq	%rdi, %rbp
	movq	%rsi, %r12
	jmp	.L1907
	.p2align 4,,7
.L1908:
	.loc 1 8075 0
	movq	(%rbx), %rax
	cmpq	$0, 16(%rax)
	leaq	16(%rax), %rbx
.L1907:
	jne	.L1908
	.loc 1 8076 0
	movl	$24, %edi
	call	qemu_mallocz
	.loc 1 8077 0
	movq	%rbp, (%rax)
	.loc 1 8078 0
	movq	%r12, 8(%rax)
	.loc 1 8079 0
	movq	$0, 16(%rax)
	.loc 1 8080 0
	movq	%rax, (%rbx)
	movq	(%rsp), %rbx
	movq	8(%rsp), %rbp
	movq	16(%rsp), %r12
	addq	$24, %rsp
	ret
.LFE512:
	.size	qemu_register_reset, .-qemu_register_reset
	.p2align 4,,15
.globl qemu_system_powerdown_request
	.type	qemu_system_powerdown_request, @function
qemu_system_powerdown_request:
.LFB516:
	.loc 1 8122 0
	.loc 1 8124 0
	movq	cpu_single_env(%rip), %rdi
	.loc 1 8123 0
	movl	$1, powerdown_requested(%rip)
	.loc 1 8124 0
	testq	%rdi, %rdi
	jne	.L1911
	rep ; ret
	.p2align 4,,7
.L1911:
	.loc 1 8125 0
	movl	$1, %esi
	jmp	cpu_interrupt
.LFE516:
	.size	qemu_system_powerdown_request, .-qemu_system_powerdown_request
	.p2align 4,,15
.globl main_loop_wait
	.type	main_loop_wait, @function
main_loop_wait:
.LFB517:
	.loc 1 8129 0
	pushq	%r15
.LCFI443:
	pushq	%r14
.LCFI444:
	pushq	%r13
.LCFI445:
	pushq	%r12
.LCFI446:
	pushq	%rbp
.LCFI447:
	movl	%edi, %ebp
	pushq	%rbx
.LCFI448:
	subq	$424, %rsp
.LCFI449:
	.loc 1 8142 0
	movq	first_polling_entry(%rip), %rbx
	jmp	.L1960
	.p2align 4,,7
.L1962:
	.loc 1 8143 0
	movq	8(%rbx), %rdi
	call	*(%rbx)
	.loc 1 8142 0
	movq	16(%rbx), %rbx
.L1960:
	testq	%rbx, %rbx
	jne	.L1962
.LBB408:
	.loc 1 8179 0
	leaq	288(%rsp), %r14
	movl	$16, %esi
.LBE408:
	.loc 1 8178 0
	movl	$-1, 12(%rsp)
.LBB409:
	.loc 1 8179 0
	xorl	%eax, %eax
	movq	%rsi, %rcx
	movq	%r14, %rdi
#APP
	cld; rep; stosq
#NO_APP
.LBE409:
.LBB410:
	.loc 1 8180 0
	leaq	160(%rsp), %r13
	movq	%rsi, %rcx
	movq	%r13, %rdi
#APP
	cld; rep; stosq
#NO_APP
.LBE410:
.LBB411:
	.loc 1 8181 0
	leaq	32(%rsp), %r12
	movq	%rsi, %rcx
	movq	%r12, %rdi
#APP
	cld; rep; stosq
#NO_APP
.LBE411:
	.loc 1 8182 0
	movq	first_io_handler(%rip), %rbx
	jmp	.L1961
	.p2align 4,,7
.L1922:
	movq	56(%rbx), %rbx
.L1961:
	testq	%rbx, %rbx
	je	.L1953
	.loc 1 8183 0
	movl	32(%rbx), %r8d
	testl	%r8d, %r8d
	jne	.L1922
	.loc 1 8185 0
	cmpq	$0, 16(%rbx)
	je	.L1924
	movq	8(%rbx), %rax
	testq	%rax, %rax
	jne	.L1963
.L1925:
	.loc 1 8188 0
	movslq	(%rbx),%rax
	movq	%rax, %rdx
	andl	$63, %eax
	shrq	$6, %rdx
#APP
	btsq %rax,288(%rsp,%rdx,8)
	.loc 1 8189 0
#NO_APP
	movl	(%rbx), %edx
	movl	12(%rsp), %eax
	.loc 1 8190 0
	cmpl	%eax, %edx
	cmovg	%edx, %eax
	movl	%eax, 12(%rsp)
.L1924:
	.loc 1 8192 0
	cmpq	$0, 24(%rbx)
	je	.L1922
	.loc 1 8193 0
	movslq	(%rbx),%rax
	movq	%rax, %rdx
	andl	$63, %eax
	shrq	$6, %rdx
#APP
	btsq %rax,160(%rsp,%rdx,8)
	.loc 1 8194 0
#NO_APP
	movl	(%rbx), %edx
	movl	12(%rsp), %eax
	.loc 1 8195 0
	cmpl	%eax, %edx
	cmovg	%edx, %eax
	movl	%eax, 12(%rsp)
	jmp	.L1922
.L1963:
	.loc 1 8185 0
	movq	40(%rbx), %rdi
	call	*%rax
	testl	%eax, %eax
	je	.L1924
	.p2align 4,,7
	jmp	.L1925
	.p2align 4,,7
.L1953:
	.loc 1 8203 0
	imull	$1000, %ebp, %eax
	.loc 1 8206 0
	movl	slirp_inited(%rip), %edi
	.loc 1 8199 0
	movq	$0, 16(%rsp)
	.loc 1 8203 0
	cltq
	.loc 1 8206 0
	testl	%edi, %edi
	.loc 1 8203 0
	movq	%rax, 24(%rsp)
	.loc 1 8206 0
	jne	.L1964
.L1930:
	.loc 1 8210 0
	movl	12(%rsp), %edi
	leaq	16(%rsp), %r8
	movq	%r12, %rcx
	movq	%r13, %rdx
	movq	%r14, %rsi
	incl	%edi
	call	select
	.loc 1 8211 0
	testl	%eax, %eax
	.loc 1 8210 0
	movl	%eax, %r15d
	.loc 1 8211 0
	jle	.L1931
.LBB412:
	.loc 1 8214 0
	movq	first_io_handler(%rip), %rbx
	testq	%rbx, %rbx
	movq	%rbx, %rax
	je	.L1955
	.p2align 4,,7
.L1937:
	.loc 1 8215 0
	movl	32(%rbx), %esi
	testl	%esi, %esi
	jne	.L1934
	movq	16(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L1957
.LBB413:
	movslq	(%rbx),%rax
	movq	%rax, %rdx
	shrq	$6, %rax
	andl	$63, %edx
#APP
	btq %rdx,288(%rsp,%rax,8) ; setcb %dl
#NO_APP
.LBE413:
	testb	%dl, %dl
	jne	.L1965
.L1957:
	.loc 1 8218 0
	movq	24(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L1934
.LBB414:
	movslq	(%rbx),%rax
	movq	%rax, %rdx
	shrq	$6, %rax
	andl	$63, %edx
#APP
	btq %rdx,160(%rsp,%rax,8) ; setcb %dl
#NO_APP
.LBE414:
	testb	%dl, %dl
	jne	.L1966
	.p2align 4,,7
.L1934:
	.loc 1 8214 0
	movq	56(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.L1937
	movq	first_io_handler(%rip), %rax
.L1955:
	.loc 1 8231 0
	testq	%rax, %rax
	.loc 1 8224 0
	movl	$first_io_handler, %ebp
	.loc 1 8231 0
	je	.L1931
	movq	first_io_handler(%rip), %rax
	jmp	.L1942
	.p2align 4,,7
.L1940:
	leaq	56(%rax), %rbp
	movq	(%rbp), %rax
	testq	%rax, %rax
	je	.L1931
.L1942:
	.loc 1 8227 0
	movl	32(%rax), %edx
	.loc 1 8226 0
	movq	%rax, %rbx
	.loc 1 8227 0
	testl	%edx, %edx
	je	.L1940
	.loc 1 8228 0
	movq	56(%rax), %rax
	.loc 1 8229 0
	movq	%rbx, %rdi
	.loc 1 8228 0
	movq	%rax, (%rbp)
	.loc 1 8229 0
	call	qemu_free
	.loc 1 8231 0
	movq	(%rbp), %rax
	testq	%rax, %rax
	jne	.L1942
	.p2align 4,,7
.L1931:
.LBE412:
	.loc 1 8235 0
	movl	slirp_inited(%rip), %eax
	testl	%eax, %eax
	je	.L1943
	.loc 1 8236 0
	testl	%r15d, %r15d
	js	.L1967
.L1944:
	.loc 1 8241 0
	movq	%r12, %rdx
	movq	%r13, %rsi
	movq	%r14, %rdi
	call	slirp_select_poll
.L1943:
	.loc 1 8244 0
	call	qemu_aio_poll
	.loc 1 8246 0
	movl	vm_running(%rip), %eax
	testl	%eax, %eax
	jne	.L1968
.L1948:
	.loc 1 8254 0
	movq	rt_clock(%rip), %rdi
	call	qemu_get_clock
	movl	$active_timers, %edi
	movq	%rax, %rsi
	call	qemu_run_timers
	.loc 1 8257 0
	movq	alarm_timer(%rip), %rdx
	movl	8(%rdx), %eax
	testb	$2, %al
	jne	.L1969
	.loc 1 8264 0
	call	qemu_bh_poll
	addq	$424, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L1965:
.LBB415:
	.loc 1 8216 0
	movq	40(%rbx), %rdi
	call	*%rcx
	.loc 1 8218 0
	movl	32(%rbx), %ecx
	testl	%ecx, %ecx
	jne	.L1934
	.p2align 4,,5
	jmp	.L1957
.L1966:
	.loc 1 8219 0
	movq	40(%rbx), %rdi
	.p2align 4,,5
	call	*%rcx
	.p2align 4,,9
	jmp	.L1934
.L1964:
.LBE415:
	.loc 1 8207 0
	leaq	12(%rsp), %rdi
	movq	%r12, %rcx
	movq	%r13, %rdx
	movq	%r14, %rsi
	call	slirp_select_fill
	jmp	.L1930
.L1969:
	.loc 1 8258 0
	andl	$-3, %eax
	movl	%eax, 8(%rdx)
	.loc 1 8259 0
	movq	alarm_timer(%rip), %rdi
	call	qemu_rearm_alarm_timer
	.loc 1 8264 0
	call	qemu_bh_poll
	addq	$424, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L1968:
	.loc 1 8247 0
	movq	vm_clock(%rip), %rdi
	call	qemu_get_clock
	movq	$active_timers+8, %rdi
	movq	%rax, %rsi
	call	qemu_run_timers
	.loc 1 8250 0
	call	DMA_run
	jmp	.L1948
.L1967:
.LBB416:
	.loc 1 8237 0
	movl	$16, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	movq	%rsi, %rcx
#APP
	cld; rep; stosq
#NO_APP
.LBE416:
.LBB417:
	.loc 1 8238 0
	movq	%rsi, %rcx
	movq	%r13, %rdi
#APP
	cld; rep; stosq
#NO_APP
.LBE417:
.LBB418:
	.loc 1 8239 0
	movq	%rsi, %rcx
	movq	%r12, %rdi
#APP
	cld; rep; stosq
#NO_APP
	jmp	.L1944
.LBE418:
.LFE517:
	.size	main_loop_wait, .-main_loop_wait
	.section	.rodata.str1.1
.LC228:
	.string	"1234"
.LC229:
	.string	"/etc/argos-ifdown"
	.section	.rodata.str1.8
	.align 8
.LC232:
	.ascii	"ARGOS Secure PC emulator version 0.4.2-1, Copyright (c) 2005"
	.ascii	"-2008 Georgios Portokalidis\nBased on QEMU PC emulator versi"
	.ascii	"on 0.9.1, Copyright (c) 2003-2008 Fabrice Bellard\nusage: %s"
	.ascii	" [options] [disk_image]\n\n'disk_image' is a raw hard image "
	.ascii	"image for IDE hard disk 0\n\nStandard options:\n-M machine  "
	.ascii	"    select emulated machine (-M ? for list)\n-cpu cpu       "
	.ascii	" select CPU (-cpu ? for list)\n-fda/-fdb file  use 'file' as"
	.ascii	" floppy disk 0/1 image\n-hda/-hdb file  use 'file' as IDE ha"
	.ascii	"rd disk 0/1 image\n-hdc/-hdd file  use 'file' as IDE hard di"
	.ascii	"sk 2/3 image\n-cdrom file     use 'file' as IDE cdrom image "
	.ascii	"(cdrom is ide1 master)\n-drive [file=file][,if=type][,bus=n]"
	.ascii	"[,unit=m][,media=d][index=i]\n       [,cyls=c,heads=h,secs=s"
	.ascii	"[,trans=t]][snapshot=on|off]       [,cache=on|off]\n        "
	.ascii	"        use 'file' as a drive image\n-mtdblock file  use 'fi"
	.ascii	"le' as on-board Flash memory image\n-sd file        use 'fil"
	.ascii	"e' as SecureDigital card image\n-pflash file    use 'file' a"
	.ascii	"s a parallel flash image\n-boot [a|c|d|n] boot on floppy (a)"
	.ascii	", hard disk (c), CD-ROM (d), or network (n)\n-snapshot      "
	.ascii	" write to temporary files instead of disk image files\n-no-f"
	.ascii	"rame       open SDL window without a frame and window decora"
	.ascii	"tions\n-alt-grab       use Ctrl-Alt-Shift to grab mouse (ins"
	.ascii	"tead of Ctrl-Alt)\n-no-quit        disable SDL window close "
	.ascii	"capability\n-no-fd-bootchk  disable boot signature checking "
	.ascii	"for floppy disks\n-m megs         set virtual RAM size to me"
	.ascii	"gs MB [default=%d]\n-smp n          set the number of CPUs t"
	.ascii	"o 'n' [default=1]\n-nographic      disable graphical output "
	.ascii	"and redirect serial I/Os to console\n-portrait       rotate "
	.ascii	"graphical output 90 deg left (only PXA LCD)\n-k language    "
	.ascii	" use keyboard layout (for example \"fr\" for French)\n-audio"
	.ascii	"-help     print list of audio drivers and their options\n-so"
	.ascii	"undhw c1,... enable audio support\n                and only "
	.ascii	"specified sound cards (comma separated list)\n              "
	.ascii	"  use -soundhw ? to get the list of supported cards\n       "
	.ascii	"         use -soundhw all to enable all of them\n-localti"
	.ascii	"me      set the real time clock to local time [default=utc]\n"
	.ascii	"-full-screen    start in full screen\n-win2k-hack     use it"
	.ascii	" when installing Windows 2000 to avoid a disk full bug\n-usb"
	.ascii	"            enable the USB driver (will be the default soon)"
	.ascii	"\n-usbdevice name add the host or guest USB device 'name'\n-"
	.ascii	"name string    set the name of the guest\n\nNetwork options:"
	.ascii	"\n-net nic[,vlan=n][,macaddr=addr][,model=type]\n           "
	.ascii	"     create a new Network Interface Card and connect it to V"
	.ascii	"LAN 'n'\n-net user[,vlan=n][,hostname=host]\n               "
	.ascii	" connect the user mode network stack to VLAN 'n' and send\n "
	.ascii	"               hostname 'host' to DHCP clients\n-net tap[,vl"
	.ascii	"an=n][,fd=h][,ifname=name][,script=file][,downscript=dfile]\n"
	.ascii	"                connect the host TAP network interface to VL"
	.ascii	"AN 'n' and use the\n                network scripts 'file' ("
	.ascii	"default=%s)\n                and 'dfile' (default=%s);\n    "
	.ascii	"            use '[down]script=no' to disable script executio"
	.ascii	"n;\n                use 'fd=h' to connect to an already open"
	.ascii	"ed TAP interface\n-net socket[,vlan=n][,fd=h][,listen=[host]"
	.ascii	":port][,connect=host:port]\n                connect the vlan"
	.ascii	" 'n' to another VLAN using a socket connection\n-net socket["
	.ascii	",vlan=n][,fd=h][,mcast=maddr:port]\n                connect "
	.ascii	"the vlan 'n' to multicast maddr and port\n-net socket[,vlan="
	.ascii	"n],unix=path\n                connect the host to VLAN n as "
	.ascii	"if the unix socket is a NIC.\n-net none       use it alone t"
	.ascii	"o have zero network devices; if no -net option\n            "
	.ascii	"    is provided, the default is '-net nic -net user'\n\n-tft"
	.ascii	"p dir       allow tftp access to files in dir [-net user]\n-"
	.ascii	"bootp file     advertise file in BOOTP replies\n-smb dir    "
	.ascii	"    allow SMB access to files in 'dir' [-net user]\n-redir ["
	.ascii	"tcp|udp]:host-port:[guest-host]:guest-port\n                "
	.ascii	"redirect TCP or UDP connections from host to guest [-net use"
	.ascii	"r]\n\nArgos specific:\n-linux          use it when emulating"
	.ascii	" Linux\n                 (optional if argos logs are disable"
	.ascii	"d)\n-win2k          use it when emulating Windows 2000\n"
	.ascii	"                 (optional if argos logs are disabled)\n-win"
	.ascii	"xp          use it when emulating Windows XP\n              "
	.ascii	"   (optional if argos logs are disabled)\n-no-csilog      do"
	.ascii	" not generate an argos log when an attack is detected\n-no-f"
	.ascii	"sc         do not inject forensics shellcode after an attack"
	.ascii	" is detected\n-tracksc        tracks and logs shellcode afte"
	.ascii	"r an attack is detected\n-csaddr addr    enable the control "
	.ascii	"socket, and start listening on addr\n-csport port    set the"
	.ascii	" control socket port, default is 1374\n\nLinux boot specific"
	.ascii	":\n-kernel bzImage use 'bzImage' as kernel image\n-append cm"
	.ascii	"dline use 'cmdline' as kernel command line\n-initrd file    "
	.ascii	"use 'file' as initial ram disk\n\nDebug/Expert options:\n-mo"
	.ascii	"nitor dev    redirect the monitor to char device 'dev'\n-ser"
	.ascii	"ial dev     redirect the serial port to char device 'dev'\n-"
	.ascii	"parallel dev   redirect the parallel port to char device 'de"
	.ascii	"v'\n-pidfile file   Write PID to 'file'\n-S              fre"
	.ascii	"eze CPU at startup (use 'c' to start execution)\n-s         "
	.ascii	"     wait gdb connection to port\n-p port         set gdb co"
	.ascii	"nnection port [default=%s]\n-d item1,...    output log to %s"
	.ascii	" (use -d ? for a list of log items)\n-hdachs c,h,s[,t]  forc"
	.ascii	"e hard disk 0 physical geometry and the optional BIOS\n     "
	.ascii	"           translation (t=none or lba) (usually qemu can gue"
	.ascii	"ss them)\n-L path         set the directory for the BIOS, VG"
	.ascii	"A BIOS and keymaps\n-std-vga        simulate a standard VGA "
	.ascii	"card with VESA Bochs Extensions\n                (default is"
	.ascii	" CL-GD5446 PCI VGA)\n-no-acpi        disable ACPI\n-no-reboo"
	.ascii	"t      exit instead of rebooting\n-loadvm file    start righ"
	.ascii	"t away with a saved state (loadvm in monitor)\n-vnc display "
	.ascii	"   start a VNC server on display\n-daemonize      daemonize "
	.ascii	"QEMU after initializing\n-option-rom rom load a file, rom, i"
	.ascii	"nto the option ROM space\n-clock          force the use of t"
	.ascii	"he given methods for timer alarm.\n                To see wh"
	.ascii	"at timers are available use -clock help\n\nDuring emulation,"
	.ascii	" the following keys are useful:\nctrl-alt-f      toggle fu"
	.string	"ll screen\nctrl-alt-n      switch to virtual console 'n'\nctrl-alt        toggle mouse and keyboard grab\n\nWhen using -nographic, press 'ctrl-a h' to get some help.\n"
	.section	.rodata.str1.1
.LC230:
	.string	"/etc/argos-ifup"
.LC231:
	.string	"qemu"
.LC233:
	.string	"/tmp/qemu.log"
	.text
	.p2align 4,,15
	.type	help, @function
help:
.LFB519:
	.loc 1 8563 0
	pushq	%rbx
.LCFI450:
	.loc 1 8564 0
	movl	$.LC228, %r9d
	.loc 1 8563 0
	movl	%edi, %ebx
	.loc 1 8564 0
	movl	$.LC229, %r8d
	movl	$.LC232, %edi
	movl	$.LC230, %ecx
	.loc 1 8563 0
	subq	$16, %rsp
.LCFI451:
	.loc 1 8564 0
	movl	$128, %edx
	movl	$.LC231, %esi
	xorl	%eax, %eax
	movq	$.LC233, (%rsp)
	call	printf
	.loc 1 8734 0
	movl	%ebx, %edi
	call	exit
.LFE519:
	.size	help, .-help
	.section	.rodata.str1.1
.LC234:
	.string	"%s is encrypted.\n"
.LC235:
	.string	"Password: "
.LC236:
	.string	"invalid password\n"
	.text
	.p2align 4,,15
.globl qemu_key_check
	.type	qemu_key_check, @function
qemu_key_check:
.LFB520:
	.loc 1 8956 0
	movq	%rbx, -24(%rsp)
.LCFI452:
	movq	%rbp, -16(%rsp)
.LCFI453:
	movq	%rsi, %rbx
	movq	%r12, -8(%rsp)
.LCFI454:
	subq	$280, %rsp
.LCFI455:
	.loc 1 8956 0
	movq	%rdi, %rbp
	.loc 1 8960 0
	call	bdrv_is_encrypted
	.loc 1 8961 0
	xorl	%edx, %edx
	.loc 1 8960 0
	testl	%eax, %eax
	jne	.L1981
.L1971:
	.loc 1 8971 0
	movq	256(%rsp), %rbx
	movq	264(%rsp), %rbp
	movl	%edx, %eax
	movq	272(%rsp), %r12
	addq	$280, %rsp
	ret
	.p2align 4,,7
.L1981:
	.loc 1 8963 0
	movq	%rbx, %rsi
	movl	$.LC234, %edi
	xorl	%eax, %eax
	.loc 1 8964 0
	xorl	%ebx, %ebx
	movq	%rsp, %r12
	.loc 1 8963 0
	call	term_printf
.L1977:
	.loc 1 8965 0
	movl	$256, %ecx
	movq	%r12, %rdx
	movl	$1, %esi
	movl	$.LC235, %edi
	call	monitor_readline
	.loc 1 8966 0
	movq	%r12, %rsi
	movq	%rbp, %rdi
	call	bdrv_set_key
	testl	%eax, %eax
	je	.L1980
	.loc 1 8968 0
	xorl	%eax, %eax
	movl	$.LC236, %edi
	.loc 1 8964 0
	incl	%ebx
	.loc 1 8968 0
	call	term_printf
	.loc 1 8964 0
	cmpl	$2, %ebx
	jle	.L1977
	.loc 1 8970 0
	movl	$-1, %edx
	jmp	.L1971
.L1980:
	.loc 1 8967 0
	xorl	%edx, %edx
	.p2align 4,,5
	jmp	.L1971
.LFE520:
	.size	qemu_key_check, .-qemu_key_check
	.section	.rodata.str1.1
.LC237:
	.string	"bus"
.LC238:
	.string	"unit"
.LC239:
	.string	"if"
.LC240:
	.string	"index"
.LC241:
	.string	"cyls"
.LC242:
	.string	"heads"
.LC243:
	.string	"secs"
.LC244:
	.string	"trans"
.LC245:
	.string	"media"
.LC246:
	.string	"file"
.LC247:
	.string	"cache"
	.section	.rodata.str1.8
	.align 8
.LC248:
	.string	"qemu: unknowm parameter '%s' in '%s'\n"
	.section	.rodata.str1.1
.LC249:
	.string	"realview"
.LC250:
	.string	"SS-5"
.LC251:
	.string	"SS-10"
.LC255:
	.string	"qemu: '%s' invalid bus id\n"
.LC256:
	.string	"qemu: '%s' invalid unit id\n"
.LC258:
	.string	"scsi"
.LC262:
	.string	"qemu: '%s' invalid index\n"
	.section	.rodata.str1.8
	.align 8
.LC263:
	.string	"qemu: '%s' invalid physical cyls number\n"
	.align 8
.LC264:
	.string	"qemu: '%s' invalid physical heads number\n"
	.align 8
.LC265:
	.string	"qemu: '%s' invalid physical secs number\n"
	.align 8
.LC266:
	.string	"qemu: '%s' trans must be used with cyls,heads and secs\n"
	.section	.rodata.str1.1
.LC267:
	.string	"none"
.LC269:
	.string	"auto"
.LC271:
	.string	"disk"
	.section	.rodata.str1.8
	.align 8
.LC276:
	.string	"qemu: '%s' invalid snapshot option\n"
	.align 8
.LC278:
	.string	"qemu: '%s' index cannot be used with bus and unit\n"
	.section	.rodata.str1.1
.LC282:
	.string	"%s%i%s%i"
	.section	.rodata.str1.8
	.align 8
.LC284:
	.string	"qemu: could not open disk image %s\n"
	.section	.rodata.str1.1
.LC280:
	.string	"-cd"
.LC281:
	.string	"-hd"
.LC259:
	.string	"floppy"
	.section	.rodata.str1.8
	.align 8
.LC261:
	.string	"qemu: '%s' unsupported bus type '%s'\n"
	.section	.rodata.str1.1
.LC252:
	.string	"SS-600MP"
.LC253:
	.string	"versatilepb"
.LC254:
	.string	"versatileab"
.LC283:
	.string	"%s%s%i"
	.section	.rodata.str1.8
	.align 8
.LC279:
	.string	"qemu: '%s' unit %d too big (max is %d)\n"
	.align 8
.LC272:
	.string	"qemu: '%s' invalid physical CHS format\n"
	.section	.rodata.str1.1
.LC273:
	.string	"qemu: '%s' invalid media\n"
	.section	.rodata.str1.8
	.align 8
.LC270:
	.string	"qemu: '%s' invalid translation type\n"
	.section	.rodata.str1.1
.LC277:
	.string	"qemu: invalid cache option\n"
	.text
	.p2align 4,,15
	.type	drive_init, @function
drive_init:
.LFB434:
	.loc 1 5719 0
	pushq	%r15
.LCFI456:
	movq	%rdi, %r15
	pushq	%r14
.LCFI457:
	pushq	%r13
.LCFI458:
	pushq	%r12
.LCFI459:
	pushq	%rbp
.LCFI460:
.LBB419:
.LBB420:
	.loc 1 5469 0
	movq	%rdi, %rbp
.LBE420:
.LBE419:
	.loc 1 5719 0
	pushq	%rbx
.LCFI461:
	subq	$1480, %rsp
.LCFI462:
.LBB421:
	.loc 1 5465 0
	leaq	1344(%rsp), %r14
	leaq	80(%rsp), %r13
.LBE421:
	.loc 1 5719 0
	movl	%esi, 76(%rsp)
	movq	%rdx, 64(%rsp)
	.loc 1 5723 0
	movq	$.LC165, 56(%rsp)
	.loc 1 5733 0
	movq	$.LC237, 80(%rsp)
	movq	$.LC238, 88(%rsp)
	movq	$.LC239, 96(%rsp)
	movq	$.LC240, 104(%rsp)
	movq	$.LC241, 112(%rsp)
	movq	$.LC242, 120(%rsp)
	movq	$.LC243, 128(%rsp)
	movq	$.LC244, 136(%rsp)
	movq	$.LC245, 144(%rsp)
	movq	$.LC22, 152(%rsp)
	movq	$.LC246, 160(%rsp)
	movq	$.LC247, 168(%rsp)
	movq	$0, 176(%rsp)
	.p2align 4,,7
.L1984:
.LBB422:
.LBB423:
	.loc 1 5471 0
	movq	%rbp, %rdx
	movl	$128, %esi
	movq	%r14, %rdi
	call	get_word
	.loc 1 5472 0
	cmpb	$61, (%rax)
	.loc 1 5471 0
	movq	%rax, %rbp
	.loc 1 5472 0
	jne	.L2189
	.loc 1 5474 0
	incq	%rbp
	.loc 1 5475 0
	xorl	%r12d, %r12d
	cmpq	$0, (%r13)
	je	.L2186
	xorl	%ebx, %ebx
	.p2align 4,,7
.L1992:
.LBB424:
	.loc 1 5476 0
	movq	(%r13,%rbx,8), %rdi
	movq	%r14, %rsi
	call	strcmp
.LBE424:
	testl	%eax, %eax
	je	.L1989
	.loc 1 5475 0
	incl	%r12d
	movslq	%r12d,%rbx
	cmpq	$0, (%r13,%rbx,8)
	jne	.L1992
.L2189:
.LBE423:
.LBE422:
	.loc 1 5738 0
	movq	%r15, %rcx
	movq	%r14, %rdx
	movl	$.LC248, %esi
.L2195:
	.loc 1 5806 0
	movq	stderr(%rip), %rdi
	xorl	%eax, %eax
	call	fprintf
.L2194:
	.loc 1 6005 0
	movl	$-1, %edx
.L1982:
	.loc 1 6008 0
	addq	$1480, %rsp
	movl	%edx, %eax
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L2186:
	xorl	%ebx, %ebx
.L1989:
.LBB425:
.LBB426:
	.loc 1 5478 0
	cmpq	$0, (%r13,%rbx,8)
	je	.L2189
	.loc 1 5480 0
	movq	%rbp, %rdx
	xorl	%esi, %esi
	xorl	%edi, %edi
	call	get_word
	.loc 1 5481 0
	cmpb	$44, (%rax)
	.loc 1 5480 0
	movq	%rax, %rbp
	.loc 1 5481 0
	jne	.L1985
	.loc 1 5483 0
	incq	%rbp
	jmp	.L1984
.L1985:
.LBE426:
.LBE425:
.LBB427:
	.loc 1 5751 0
	movq	64(%rsp), %rax
.LBE427:
	.loc 1 5746 0
	movl	$-1, %ebx
	.loc 1 5743 0
	movb	$0, 320(%rsp)
	.loc 1 5744 0
	movl	$0, 40(%rsp)
	movl	$0, 44(%rsp)
.LBB428:
	.loc 1 5751 0
	movl	$.LC249, %edi
.LBE428:
	.loc 1 5744 0
	movl	$0, 48(%rsp)
	.loc 1 5747 0
	movl	$0, 36(%rsp)
.LBB429:
	.loc 1 5751 0
	movl	$9, %ecx
.LBE429:
	.loc 1 5748 0
	movl	%ebx, 32(%rsp)
	.loc 1 5749 0
	movl	$1, 28(%rsp)
	.loc 1 5745 0
	xorl	%r12d, %r12d
.LBB430:
	.loc 1 5751 0
	movq	(%rax), %r8
	cld
	movq	%r8, %rsi
.LBE430:
	repz
	cmpsb
	je	.L1996
.LBB431:
	.loc 1 5752 0
	movl	$.LC250, %edi
	movl	$5, %ecx
	movq	%r8, %rsi
.LBE431:
	repz
	cmpsb
	je	.L1996
.LBB432:
	.loc 1 5753 0
	movl	$.LC251, %edi
	movl	$6, %ecx
	movq	%r8, %rsi
.LBE432:
	repz
	cmpsb
	jne	.L2198
.L1996:
	.loc 1 5757 0
	movl	$1, %r13d
	.loc 1 5758 0
	movl	$7, %ebp
	.loc 1 5759 0
	movl	$1769169779, 192(%rsp)
	movb	$0, 196(%rsp)
.L2027:
	.loc 1 5769 0
	movq	%r15, %rcx
	movl	$.LC237, %edx
	movl	$128, %esi
	movq	%r14, %rdi
	.loc 1 5765 0
	movl	$0, 52(%rsp)
	.loc 1 5769 0
	call	get_param_value
	testl	%eax, %eax
	je	.L2028
	.loc 1 5770 0
	xorl	%edx, %edx
	xorl	%esi, %esi
	movq	%r14, %rdi
	call	strtol
	.loc 1 5771 0
	testl	%eax, %eax
	.loc 1 5770 0
	movl	%eax, %r12d
	.loc 1 5772 0
	movq	%r15, %rdx
	movl	$.LC255, %esi
	.loc 1 5771 0
	js	.L2196
.L2028:
	.loc 1 5777 0
	movq	%r15, %rcx
	movl	$.LC238, %edx
	movl	$128, %esi
	movq	%r14, %rdi
	call	get_param_value
	testl	%eax, %eax
	je	.L2030
	.loc 1 5778 0
	xorl	%edx, %edx
	xorl	%esi, %esi
	movq	%r14, %rdi
	call	strtol
	.loc 1 5779 0
	testl	%eax, %eax
	.loc 1 5778 0
	movl	%eax, %ebx
	.loc 1 5780 0
	movq	%r15, %rdx
	movl	$.LC256, %esi
	.loc 1 5779 0
	js	.L2196
.L2030:
	.loc 1 5785 0
	movq	%r15, %rcx
	movl	$.LC239, %edx
	movl	$128, %esi
	movq	%r14, %rdi
	call	get_param_value
	testl	%eax, %eax
	je	.L2032
	.loc 1 5786 0
	leaq	192(%rsp), %rdi
	movl	$128, %edx
	movq	%r14, %rsi
	call	strncpy
.LBB433:
.LBB434:
	.loc 1 5787 0
	movzbl	1344(%rsp), %r8d
	movzbl	%r8b, %eax
	subl	$105, %eax
	jne	.L2036
	movzbl	1345(%rsp), %eax
	subl	$100, %eax
	jne	.L2036
	movzbl	1346(%rsp), %eax
	subl	$101, %eax
	jne	.L2036
	movzbl	1347(%rsp), %eax
.L2036:
.LBE434:
.LBE433:
	.loc 1 5788 0
	xorl	%r13d, %r13d
	.loc 1 5787 0
	testl	%eax, %eax
	.loc 1 5789 0
	movl	$2, %ebp
	.loc 1 5787 0
	je	.L2032
.LBB435:
	.loc 1 5790 0
	movl	$5, %eax
	movl	$.LC258, %edi
	movq	%r14, %rsi
	cld
	movq	%rax, %rcx
.LBE435:
	.loc 1 5791 0
	movb	$1, %r13b
	.loc 1 5792 0
	movb	$7, %bpl
.LBB436:
	.loc 1 5790 0
	repz
	cmpsb
	seta	%dl
	setb	%al
.LBE436:
	cmpb	%al, %dl
	jne	.L2199
.L2032:
	.loc 1 5811 0
	movq	%r15, %rcx
	movl	$.LC240, %edx
	movl	$128, %esi
	movq	%r14, %rdi
	call	get_param_value
	testl	%eax, %eax
	je	.L2075
	.loc 1 5812 0
	xorl	%edx, %edx
	xorl	%esi, %esi
	movq	%r14, %rdi
	call	strtol
	.loc 1 5813 0
	testl	%eax, %eax
	.loc 1 5812 0
	movl	%eax, 32(%rsp)
	.loc 1 5814 0
	movq	%r15, %rdx
	movl	$.LC262, %esi
	.loc 1 5813 0
	js	.L2196
.L2075:
	.loc 1 5819 0
	movq	%r15, %rcx
	movl	$.LC241, %edx
	movl	$128, %esi
	movq	%r14, %rdi
	call	get_param_value
	testl	%eax, %eax
	jne	.L2200
.L2077:
	.loc 1 5823 0
	movq	%r15, %rcx
	movl	$.LC242, %edx
	movl	$128, %esi
	movq	%r14, %rdi
	call	get_param_value
	testl	%eax, %eax
	jne	.L2201
.L2078:
	.loc 1 5827 0
	movq	%r15, %rcx
	movl	$.LC243, %edx
	movl	$128, %esi
	movq	%r14, %rdi
	call	get_param_value
	testl	%eax, %eax
	jne	.L2202
.L2079:
	.loc 1 5831 0
	movl	48(%rsp), %eax
	orl	44(%rsp), %eax
	orl	40(%rsp), %eax
	je	.L2080
	.loc 1 5832 0
	movl	48(%rsp), %eax
	.loc 1 5833 0
	movq	%r15, %rdx
	movl	$.LC263, %esi
	.loc 1 5832 0
	decl	%eax
	cmpl	$16382, %eax
	ja	.L2196
	.loc 1 5836 0
	movl	44(%rsp), %eax
	.loc 1 5837 0
	movq	%r15, %rdx
	movl	$.LC264, %esi
	.loc 1 5836 0
	decl	%eax
	cmpl	$15, %eax
	ja	.L2196
	.loc 1 5840 0
	movl	40(%rsp), %eax
	.loc 1 5841 0
	movq	%r15, %rdx
	movl	$.LC265, %esi
	.loc 1 5840 0
	decl	%eax
	cmpl	$62, %eax
	ja	.L2196
.L2080:
	.loc 1 5846 0
	movq	%r15, %rcx
	movl	$.LC244, %edx
	movl	$128, %esi
	movq	%r14, %rdi
	call	get_param_value
	testl	%eax, %eax
	je	.L2084
	.loc 1 5847 0
	movl	48(%rsp), %eax
	.loc 1 5848 0
	movq	%r15, %rdx
	movl	$.LC266, %esi
	.loc 1 5847 0
	testl	%eax, %eax
	je	.L2196
.LBB437:
	.loc 1 5853 0
	cld
	movl	$.LC267, %edi
	movl	$5, %ecx
	movq	%r14, %rsi
	repz
	cmpsb
.LBE437:
	.loc 1 5854 0
	movl	$1, 36(%rsp)
.LBB438:
	.loc 1 5853 0
	seta	%dl
	setb	%al
.LBE438:
	cmpb	%al, %dl
	je	.L2084
.LBB439:
.LBB440:
	.loc 1 5855 0
	movzbl	1344(%rsp), %eax
	subl	$108, %eax
	jne	.L2096
	movzbl	1345(%rsp), %eax
	subl	$98, %eax
	je	.L2203
.L2096:
.LBE440:
.LBE439:
	testl	%eax, %eax
	.loc 1 5856 0
	movl	$2, 36(%rsp)
	.loc 1 5855 0
	je	.L2084
.LBB441:
	.loc 1 5857 0
	cld
	movl	$.LC269, %edi
	movl	$5, %ecx
	movq	%r14, %rsi
	repz
	cmpsb
.LBE441:
	.loc 1 5858 0
	movl	$0, 36(%rsp)
.LBB442:
	.loc 1 5857 0
	seta	%dl
	setb	%al
.LBE442:
	cmpb	%al, %dl
	jne	.L2204
.L2084:
	.loc 1 5865 0
	movq	%r15, %rcx
	movl	$.LC245, %edx
	movl	$128, %esi
	movq	%r14, %rdi
	call	get_param_value
	testl	%eax, %eax
	je	.L2107
.LBB443:
	.loc 1 5866 0
	cld
	movl	$.LC271, %edi
	movl	$5, %ecx
	movq	%r14, %rsi
	repz
	cmpsb
.LBE443:
	.loc 1 5867 0
	movl	$0, 52(%rsp)
.LBB444:
	.loc 1 5866 0
	seta	%dl
	setb	%al
.LBE444:
	cmpb	%al, %dl
	je	.L2107
.LBB445:
	.loc 1 5868 0
	movl	$.LC17, %edi
	movl	$6, %ecx
	movq	%r14, %rsi
.LBE445:
	repz
	cmpsb
	jne	.L2115
	.loc 1 5869 0
	movl	48(%rsp), %eax
	orl	40(%rsp), %eax
	orl	44(%rsp), %eax
	.loc 1 5874 0
	movl	$1, 52(%rsp)
	.loc 1 5869 0
	jne	.L2205
.L2107:
	.loc 1 5881 0
	movq	%r15, %rcx
	movl	$.LC22, %edx
	movl	$128, %esi
	movq	%r14, %rdi
	call	get_param_value
	testl	%eax, %eax
	je	.L2123
.LBB446:
.LBB447:
	.loc 1 5882 0
	movzbl	1344(%rsp), %r8d
	movzbl	%r8b, %eax
	subl	$111, %eax
	jne	.L2127
	movzbl	1345(%rsp), %eax
	subl	$110, %eax
	jne	.L2127
	movzbl	1346(%rsp), %eax
.L2127:
.LBE447:
.LBE446:
	testl	%eax, %eax
	.loc 1 5883 0
	movl	$1, 76(%rsp)
	.loc 1 5882 0
	je	.L2123
.LBB448:
.LBB449:
	.loc 1 5884 0
	movzbl	%r8b, %eax
	subl	$111, %eax
	jne	.L2134
	movzbl	1345(%rsp), %eax
	subl	$102, %eax
	je	.L2206
.L2134:
.LBE449:
.LBE448:
	testl	%eax, %eax
	.loc 1 5885 0
	movl	$0, 76(%rsp)
	.loc 1 5887 0
	movq	%r15, %rdx
	movl	$.LC276, %esi
	.loc 1 5884 0
	jne	.L2196
.L2123:
	.loc 1 5892 0
	movq	%r15, %rcx
	movl	$.LC247, %edx
	movl	$128, %esi
	movq	%r14, %rdi
	call	get_param_value
	testl	%eax, %eax
	je	.L2138
.LBB450:
.LBB451:
	.loc 1 5893 0
	movzbl	1344(%rsp), %r8d
	movzbl	%r8b, %eax
	subl	$111, %eax
	jne	.L2142
	movzbl	1345(%rsp), %eax
	subl	$102, %eax
	jne	.L2142
	movzbl	1346(%rsp), %eax
	subl	$102, %eax
	je	.L2207
.L2142:
.LBE451:
.LBE450:
	testl	%eax, %eax
	.loc 1 5894 0
	movl	$0, 28(%rsp)
	.loc 1 5893 0
	je	.L2138
.LBB452:
.LBB453:
	.loc 1 5895 0
	movzbl	%r8b, %eax
	subl	$111, %eax
	jne	.L2149
	movzbl	1345(%rsp), %eax
	subl	$110, %eax
	je	.L2208
.L2149:
.LBE453:
.LBE452:
	testl	%eax, %eax
	.loc 1 5896 0
	movl	$1, 28(%rsp)
	.loc 1 5895 0
	jne	.L2209
.L2138:
	.loc 1 5903 0
	leaq	320(%rsp), %rdi
	movq	%r15, %rcx
	movl	$.LC246, %edx
	movl	$1024, %esi
	call	get_param_value
	.loc 1 5907 0
	cmpl	$-1, 32(%rsp)
	je	.L2153
	.loc 1 5908 0
	testl	%r12d, %r12d
	.loc 1 5909 0
	movl	$.LC278, %esi
	.loc 1 5908 0
	setne	%dl
	incl	%ebx
	setne	%al
	orl	%edx, %eax
	.loc 1 5909 0
	movq	%r15, %rdx
	.loc 1 5908 0
	testb	$1, %al
	jne	.L2196
	.loc 1 5916 0
	xorl	%r12d, %r12d
	.loc 1 5913 0
	testl	%ebp, %ebp
	.loc 1 5915 0
	movl	32(%rsp), %ebx
	.loc 1 5913 0
	je	.L2153
	.loc 1 5919 0
	movl	%ebx, %eax
	cltd
	idivl	%ebp
	movl	%edx, %ebx
	movl	%eax, %r12d
.L2153:
	.loc 1 5927 0
	cmpl	$-1, %ebx
	je	.L2210
.L2157:
	.loc 1 5940 0
	testl	%ebp, %ebp
	setne	%dl
	xorl	%eax, %eax
	cmpl	%ebp, %ebx
	setge	%al
	testl	%edx, %eax
	jne	.L2211
	.loc 1 5950 0
	movl	%ebx, %edx
	movl	%r12d, %esi
	movl	%r13d, %edi
	call	drive_get_index
	.loc 1 5951 0
	xorl	%edx, %edx
	.loc 1 5950 0
	incl	%eax
	jne	.L1982
	.loc 1 5955 0
	cmpl	$1, %r13d
	jbe	.L2212
.L2164:
	.loc 1 5957 0
	testl	%ebp, %ebp
	.p2align 4,,4
	je	.L2167
	.loc 1 5958 0
	movq	56(%rsp), %r9
	leaq	192(%rsp), %rcx
	movl	%r12d, %r8d
	movl	$.LC282, %edx
	movl	$128, %esi
	movq	%r14, %rdi
	xorl	%eax, %eax
	movl	%ebx, (%rsp)
	call	snprintf
.L2168:
	.loc 1 5963 0
	movq	%r14, %rdi
	call	bdrv_new
	.loc 1 5964 0
	movl	nb_drives(%rip), %edx
	.loc 1 5963 0
	movq	%rax, %rbp
	.loc 1 5964 0
	movslq	%edx,%rax
	.loc 1 5968 0
	incl	%edx
	.loc 1 5964 0
	leaq	(%rax,%rax,2), %rax
	.loc 1 5968 0
	movl	%edx, nb_drives(%rip)
	.loc 1 5964 0
	salq	$3, %rax
	.loc 1 5970 0
	cmpl	$2, %r13d
	.loc 1 5964 0
	movq	%rbp, drives_table(%rax)
	.loc 1 5965 0
	movl	%r13d, drives_table+8(%rax)
	.loc 1 5966 0
	movl	%r12d, drives_table+12(%rax)
	.loc 1 5967 0
	movl	%ebx, drives_table+16(%rax)
	.loc 1 5970 0
	je	.L2177
	jb	.L2171
	cmpl	$5, %r13d
	je	.L2177
.L2169:
	.loc 1 5996 0
	xorl	%edx, %edx
	.loc 1 5995 0
	cmpb	$0, 320(%rsp)
	je	.L1982
	.loc 1 5999 0
	cmpl	$1, 76(%rsp)
	.loc 1 6001 0
	movl	28(%rsp), %r9d
	.loc 1 6002 0
	leaq	320(%rsp), %rsi
	movq	%rbp, %rdi
	.loc 1 5999 0
	sbbl	%edx, %edx
	notl	%edx
	andl	$8, %edx
	.loc 1 6001 0
	movl	%edx, %eax
	orl	$32, %eax
	testl	%r9d, %r9d
	cmove	%eax, %edx
	.loc 1 6002 0
	call	bdrv_open
	testl	%eax, %eax
	js	.L2184
	leaq	320(%rsp), %rsi
	movq	%rbp, %rdi
	call	qemu_key_check
	.loc 1 6007 0
	xorl	%edx, %edx
	.loc 1 6002 0
	testl	%eax, %eax
	je	.L1982
.L2184:
	.loc 1 6003 0
	leaq	320(%rsp), %rdx
	movl	$.LC284, %esi
.L2196:
	movq	stderr(%rip), %rdi
	xorl	%eax, %eax
	call	fprintf
	jmp	.L2194
.L2202:
	.loc 1 5828 0
	xorl	%edx, %edx
	xorl	%esi, %esi
	movq	%r14, %rdi
	call	strtol
	movl	%eax, 40(%rsp)
	jmp	.L2079
.L2201:
	.loc 1 5824 0
	xorl	%edx, %edx
	xorl	%esi, %esi
	movq	%r14, %rdi
	call	strtol
	movl	%eax, 44(%rsp)
	jmp	.L2078
.L2200:
	.loc 1 5820 0
	xorl	%edx, %edx
	xorl	%esi, %esi
	movq	%r14, %rdi
	call	strtol
	movl	%eax, 48(%rsp)
	jmp	.L2077
.L2210:
	.loc 1 5928 0
	xorl	%ebx, %ebx
.L2197:
	.loc 1 5933 0
	movl	%ebx, %edx
	movl	%r12d, %esi
	movl	%r13d, %edi
	call	drive_get_index
	incl	%eax
	je	.L2157
.L2161:
	.loc 1 5930 0
	incl	%ebx
	.loc 1 5931 0
	testl	%ebp, %ebp
	setne	%dl
	xorl	%eax, %eax
	cmpl	%ebp, %ebx
	setge	%al
	testl	%edx, %eax
	je	.L2197
	.loc 1 5932 0
	subl	%ebp, %ebx
	.loc 1 5933 0
	incl	%r12d
	movl	%r13d, %edi
	movl	%ebx, %edx
	movl	%r12d, %esi
	call	drive_get_index
	incl	%eax
	jne	.L2161
	jmp	.L2157
.L2212:
	.loc 1 5956 0
	cmpl	$1, 52(%rsp)
	movq	$.LC280, 56(%rsp)
	movl	$.LC281, %eax
	cmove	56(%rsp), %rax
	movq	%rax, 56(%rsp)
	jmp	.L2164
.L2199:
.LBB454:
	.loc 1 5793 0
	movl	$7, %eax
	movl	$.LC259, %edi
	movq	%r14, %rsi
	movq	%rax, %rcx
.LBE454:
	.loc 1 5794 0
	movb	$2, %r13b
.LBB455:
	.loc 1 5793 0
	repz
	cmpsb
	seta	%dl
	setb	%al
.LBE455:
	.loc 1 5795 0
	xorb	%bpl, %bpl
	.loc 1 5793 0
	cmpb	%al, %dl
	je	.L2032
.LBB456:
	.loc 1 5796 0
	movl	$7, %eax
	movl	$.LC20, %edi
	movq	%r14, %rsi
	movq	%rax, %rcx
.LBE456:
	.loc 1 5797 0
	movb	$3, %r13b
.LBB457:
	.loc 1 5796 0
	repz
	cmpsb
	seta	%dl
	setb	%al
.LBE457:
	cmpb	%al, %dl
	je	.L2032
.LBB458:
.LBB459:
	.loc 1 5799 0
	movzbl	%r8b, %eax
	subl	$109, %eax
	jne	.L2064
	movzbl	1345(%rsp), %eax
	subl	$116, %eax
	jne	.L2064
	movzbl	1346(%rsp), %eax
	subl	$100, %eax
	jne	.L2064
	movzbl	1347(%rsp), %eax
.L2064:
.LBE459:
.LBE458:
	.loc 1 5801 0
	xorl	%ebp, %ebp
	.loc 1 5799 0
	testl	%eax, %eax
	.loc 1 5800 0
	movl	$4, %r13d
	.loc 1 5799 0
	je	.L2032
.LBB460:
.LBB461:
	.loc 1 5802 0
	movzbl	%r8b, %eax
	subl	$115, %eax
	jne	.L2071
	movzbl	1345(%rsp), %eax
	subl	$100, %eax
	jne	.L2071
	movzbl	1346(%rsp), %eax
.L2071:
.LBE461:
.LBE460:
	.loc 1 5804 0
	xorl	%ebp, %ebp
	.loc 1 5802 0
	testl	%eax, %eax
	.loc 1 5803 0
	movl	$5, %r13d
	.loc 1 5802 0
	je	.L2032
	.loc 1 5806 0
	movq	%r14, %rcx
	movq	%r15, %rdx
	movl	$.LC261, %esi
	jmp	.L2195
	.p2align 4,,7
.L2198:
.LBB462:
	.loc 1 5754 0
	movl	$.LC252, %edi
	movl	$9, %ecx
	movq	%r8, %rsi
.LBE462:
	repz
	cmpsb
	je	.L1996
.LBB463:
	.loc 1 5755 0
	movl	$.LC253, %edi
	movl	$12, %ecx
	movq	%r8, %rsi
.LBE463:
	repz
	cmpsb
	je	.L1996
.LBB464:
	.loc 1 5756 0
	movl	$.LC254, %edi
	movl	$12, %ecx
	movq	%r8, %rsi
.LBE464:
	repz
	cmpsb
	je	.L1996
	.loc 1 5761 0
	xorl	%r13d, %r13d
	.loc 1 5762 0
	movl	$2, %ebp
	.loc 1 5763 0
	movl	$6644841, 192(%rsp)
	jmp	.L2027
.L2203:
.LBB465:
.LBB466:
	.loc 1 5855 0
	movzbl	1346(%rsp), %eax
	subl	$97, %eax
	jne	.L2096
	movzbl	1347(%rsp), %eax
	jmp	.L2096
.L2208:
.LBE466:
.LBE465:
.LBB467:
.LBB468:
	.loc 1 5895 0
	movzbl	1346(%rsp), %eax
	jmp	.L2149
.L2207:
.LBE468:
.LBE467:
.LBB469:
.LBB470:
	.loc 1 5893 0
	movzbl	1347(%rsp), %eax
	jmp	.L2142
.L2206:
.LBE470:
.LBE469:
.LBB471:
.LBB472:
	.loc 1 5884 0
	movzbl	1346(%rsp), %eax
	subl	$102, %eax
	jne	.L2134
	movzbl	1347(%rsp), %eax
	jmp	.L2134
.L2167:
.LBE472:
.LBE471:
	.loc 1 5961 0
	movq	56(%rsp), %r8
	leaq	192(%rsp), %rcx
	movl	%ebx, %r9d
	movl	$.LC283, %edx
	movl	$128, %esi
	movq	%r14, %rdi
	xorl	%eax, %eax
	call	snprintf
	jmp	.L2168
.L2171:
	.loc 1 5973 0
	movl	52(%rsp), %r11d
	testl	%r11d, %r11d
	je	.L2173
	cmpl	$1, 52(%rsp)
	.p2align 4,,3
	jne	.L2169
	.loc 1 5981 0
	movl	$1, %esi
.L2193:
	.loc 1 5989 0
	movq	%rbp, %rdi
	call	bdrv_set_type_hint
	jmp	.L2169
.L2177:
	movl	$2, %esi
	.p2align 4,,2
	jmp	.L2193
.L2173:
	.loc 1 5975 0
	movl	48(%rsp), %r10d
	testl	%r10d, %r10d
	.p2align 4,,4
	je	.L2169
	.loc 1 5976 0
	movl	48(%rsp), %esi
	movl	40(%rsp), %ecx
	movq	%rbp, %rdi
	movl	44(%rsp), %edx
	call	bdrv_set_geometry_hint
	.loc 1 5977 0
	movl	36(%rsp), %esi
	movq	%rbp, %rdi
	call	bdrv_set_translation_hint
	jmp	.L2169
.L2211:
	.loc 1 5941 0
	movq	stderr(%rip), %rdi
	leal	-1(%rbp), %r8d
	movl	%ebx, %ecx
	movq	%r15, %rdx
	movl	$.LC279, %esi
	xorl	%eax, %eax
	call	fprintf
	jmp	.L2194
.L2205:
	.loc 1 5870 0
	movq	%r15, %rdx
	movl	$.LC272, %esi
	jmp	.L2196
.L2115:
	.loc 1 5876 0
	movq	%r15, %rdx
	movl	$.LC273, %esi
	jmp	.L2196
.L2204:
	.loc 1 5860 0
	movq	%r15, %rdx
	movl	$.LC270, %esi
	jmp	.L2196
.L2209:
	.loc 1 5898 0
	movq	stderr(%rip), %rcx
	movl	$27, %edx
	movl	$1, %esi
	movl	$.LC277, %edi
	call	fwrite
	jmp	.L2194
.LFE434:
	.size	drive_init, .-drive_init
	.section	.rodata.str1.8
	.align 8
.LC289:
	.string	"Unknown sound card name (too big to show)\n"
	.align 8
.LC285:
	.string	"Valid sound card names (comma separated):"
	.align 8
.LC287:
	.string	"\n-soundhw all will enable all of the above"
	.align 8
.LC290:
	.string	"Unknown sound card name `%.*s'\n"
	.section	.rodata.str1.1
.LC286:
	.string	"%-11s %s\n"
	.text
	.p2align 4,,15
	.type	select_soundhw, @function
select_soundhw:
.LFB524:
	.loc 1 9109 0
	pushq	%r15
.LCFI463:
	pushq	%r14
.LCFI464:
	movq	%rdi, %r14
	pushq	%r13
.LCFI465:
	pushq	%r12
.LCFI466:
	pushq	%rbp
.LCFI467:
	pushq	%rbx
.LCFI468:
	subq	$8, %rsp
.LCFI469:
	.loc 1 9112 0
	movzbl	(%rdi), %edx
	cmpb	$63, %dl
	je	.L2215
.LBB473:
.LBB474:
.LBB475:
	.loc 1 9128 0
	movzbl	%dl, %eax
.LBE475:
.LBE474:
	.loc 1 9126 0
	xorl	%r15d, %r15d
.LBB476:
.LBB477:
	.loc 1 9128 0
	subl	$97, %eax
	je	.L2261
.L2224:
.LBE477:
.LBE476:
	testl	%eax, %eax
	jne	.L2221
.L2263:
	.loc 1 9129 0
	cmpq	$0, soundhw(%rip)
	movl	$soundhw, %ebx
	jmp	.L2258
	.p2align 4,,7
.L2262:
	.loc 1 9130 0
	movl	$1, 16(%rbx)
	.loc 1 9129 0
	addq	$32, %rbx
	cmpq	$0, (%rbx)
.L2258:
	jne	.L2262
.L2213:
.LBE473:
	.loc 1 9164 0
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L2261:
.LBB478:
.LBB479:
.LBB480:
	.loc 1 9128 0
	movzbl	1(%rdi), %eax
	subl	$108, %eax
	jne	.L2224
	movzbl	2(%rdi), %eax
	subl	$108, %eax
	jne	.L2224
	movzbl	3(%rdi), %eax
.LBE480:
.LBE479:
	testl	%eax, %eax
	je	.L2263
.L2221:
	.loc 1 9158 0
	testb	%dl, %dl
	.loc 1 9135 0
	movq	%r14, %rbp
	.loc 1 9158 0
	je	.L2213
	.p2align 4,,7
.L2245:
	.loc 1 9137 0
	movl	$44, %esi
	movq	%rbp, %rdi
	call	strchr
	.loc 1 9138 0
	testq	%rax, %rax
	.loc 1 9137 0
	movq	%rax, %r13
	.loc 1 9138 0
	je	.L2264
	movq	%rax, %r12
	subq	%rbp, %r12
.L2234:
	.loc 1 9140 0
	cmpq	$0, soundhw(%rip)
	movl	$soundhw, %ebx
	je	.L2254
	.loc 1 9141 0
	movq	(%rbx), %rdi
	movq	%r12, %rdx
	movq	%rbp, %rsi
	call	strncmp
	testl	%eax, %eax
	je	.L2255
	.p2align 4,,7
.L2265:
	.loc 1 9140 0
	addq	$32, %rbx
	cmpq	$0, (%rbx)
	je	.L2256
	.loc 1 9141 0
	movq	(%rbx), %rdi
	movq	%r12, %rdx
	movq	%rbp, %rsi
	call	strncmp
	testl	%eax, %eax
	jne	.L2265
.L2255:
	movq	(%rbx), %rax
	.loc 1 9142 0
	movl	$1, 16(%rbx)
	jmp	.L2236
.L2254:
	movq	soundhw(%rip), %rax
.L2236:
	.loc 1 9147 0
	testq	%rax, %rax
	jne	.L2242
.L2256:
	.loc 1 9148 0
	cmpq	$80, %r12
	jbe	.L2243
	.loc 1 9149 0
	movq	stderr(%rip), %rcx
	movl	$42, %edx
	movl	$1, %esi
	movl	$.LC289, %edi
	call	fwrite
.L2244:
	.loc 1 9156 0
	movl	$1, %r15d
.L2242:
	.loc 1 9158 0
	xorl	%eax, %eax
	leaq	(%r12,%rbp), %rdx
	testq	%r13, %r13
	setne	%al
	leaq	(%rdx,%rax), %rbp
	cmpb	$0, (%rbp)
	jne	.L2245
	.loc 1 9161 0
	testl	%r15d, %r15d
	je	.L2213
.L2215:
.LBE478:
	.loc 1 9115 0
	movl	$.LC285, %edi
	.loc 1 9116 0
	movl	$soundhw, %ebx
	.loc 1 9115 0
	call	puts
	.loc 1 9116 0
	cmpq	$0, soundhw(%rip)
	jne	.L2219
.L2248:
	.loc 1 9119 0
	movl	$.LC287, %edi
	call	puts
	.loc 1 9120 0
	xorl	%edi, %edi
	cmpb	$63, (%r14)
	setne	%dil
	call	exit
.L2243:
.LBB481:
	.loc 1 9153 0
	movq	stderr(%rip), %rdi
	movq	%rbp, %rcx
	movl	%r12d, %edx
	movl	$.LC290, %esi
	xorl	%eax, %eax
	call	fprintf
	jmp	.L2244
.L2264:
	.loc 1 9138 0
	movq	%rbp, %rdi
	call	strlen
	movq	%rax, %r12
	.p2align 4,,4
	jmp	.L2234
.L2219:
.LBE481:
	.loc 1 9117 0
	movq	8(%rbx), %rdx
	movq	(%rbx), %rsi
	xorl	%eax, %eax
	movl	$.LC286, %edi
	.loc 1 9116 0
	addq	$32, %rbx
	.loc 1 9117 0
	call	printf
	.loc 1 9116 0
	cmpq	$0, (%rbx)
	je	.L2248
	.loc 1 9117 0
	movq	8(%rbx), %rdx
	movq	(%rbx), %rsi
	xorl	%eax, %eax
	movl	$.LC286, %edi
	.loc 1 9116 0
	addq	$32, %rbx
	.loc 1 9117 0
	call	printf
	.loc 1 9116 0
	cmpq	$0, (%rbx)
	jne	.L2219
	jmp	.L2248
.LFE524:
	.size	select_soundhw, .-select_soundhw
	.section	.rodata.str1.1
.LC130:
	.string	"vc"
.LC291:
	.string	"file=\"%s\",index=%d,media=disk"
.LC292:
	.string	"%s: invalid option -- '%s'\n"
.LC333:
	.string	","
.LC321:
	.string	"10.0.2.15"
	.section	.rodata.str1.8
	.align 8
.LC322:
	.string	"qemu: could not set up redirection\n"
	.section	.rodata.str1.1
.LC311:
	.string	"/tmp/qemu-smb.%d"
.LC313:
	.string	"smb.conf"
.LC314:
	.string	"w"
	.section	.rodata.str1.8
	.align 8
.LC316:
	.string	"[global]\nprivate dir=%s\nsmb ports=0\nsocket address=127.0.0.1\npid directory=%s\nlock directory=%s\nlog file=%s/log.smbd\nsmb passwd file=%s/smbpasswd\nsecurity = share\n[qemu]\npath=%s\nread only=no\nguest ok=yes\n"
	.section	.rodata.str1.1
.LC317:
	.string	"/usr/sbin/smbd"
.LC318:
	.string	"%s -s %s"
	.section	.rodata.str1.8
	.align 8
.LC324:
	.string	"argos: at most %d MB RAM can be simulated safely\n"
	.section	.rodata.str1.1
.LC307:
	.string	"Invalid boot device '%c'\n"
.LC303:
	.string	"file=\"%s\",if=pflash"
.LC302:
	.string	"file=\"%s\",index=0,if=sd"
.LC301:
	.string	"file=\"%s\",if=mtd"
.LC306:
	.string	"file=\"%s\",index=2,media=cdrom"
.LC300:
	.string	"%s"
.LC299:
	.string	",trans=lba"
.LC298:
	.string	",trans=none"
	.section	.rodata.str1.8
	.align 8
.LC297:
	.string	"file=\"%s\",index=%d,media=disk,cyls=%d,heads=%d,secs=%d%s"
	.section	.rodata.str1.1
.LC309:
	.string	"file=\"%s\",index=%d,if=floppy"
.LC294:
	.string	"Supported machines are:"
.LC295:
	.string	" (default)"
.LC296:
	.string	"%-10s %s%s\n"
.LC305:
	.string	",cyls=%d,heads=%d,secs=%d%s"
.LC328:
	.string	"Bad argument to echr"
.LC331:
	.string	"Invalid number of CPUs\n"
.LC344:
	.string	"cad"
.LC354:
	.string	"vlan"
.LC357:
	.string	"macaddr"
.LC359:
	.string	"model"
.LC360:
	.string	"user"
.LC373:
	.string	"socket"
.LC363:
	.string	"fd"
	.section	.rodata.str1.8
	.align 8
.LC385:
	.string	"Could not initialize device '%s'\n"
	.align 8
.LC293:
	.string	"%s: option '%s' requires an argument\n"
	.align 8
.LC387:
	.string	"Warning: vlan %d is not connected to host network\n"
	.section	.rodata.str1.1
.LC388:
	.string	"ne2k_pci"
.LC389:
	.string	"%s/pxe-%s.bin"
.LC332:
	.string	"Too many option ROMs\n"
.LC192:
	.string	"wb"
.LC393:
	.string	"argos.netlog"
	.section	.rodata.str1.8
	.align 8
.LC358:
	.string	"invalid syntax for ethernet address\n"
	.section	.rodata.str1.1
.LC398:
	.string	"timer"
.LC399:
	.string	"ram"
.LC400:
	.string	"mon:stdio"
.LC408:
	.string	"/dev/null"
	.section	.rodata.str1.8
	.align 8
.LC347:
	.string	"control_socket_listen(target=%s, port=%d)\n"
	.section	.rodata.str1.1
.LC349:
	.string	"setsockopt()"
.LC350:
	.string	"bind()"
.LC351:
	.string	"listen()"
	.section	.rodata.str1.8
	.align 8
.LC345:
	.string	"Unable to find any suitable alarm timer.\n"
	.section	.rodata.str1.1
.LC346:
	.string	"Terminating\n"
.LC334:
	.string	"Unknown clock %s\n"
.LC336:
	.string	"%d-%d-%dT%d:%d:%d"
.LC337:
	.string	"%d-%d-%d"
	.section	.rodata.str1.8
	.align 8
.LC338:
	.string	"Invalid date format. Valid format are:\n'now' or '2006-06-17T16:01:21' or '2006-06-17'\n"
	.align 8
.LC407:
	.string	"argos: could not open gdbstub device on port '%s'\n"
	.align 8
.LC409:
	.string	"Prevented shellcode from calling system call 0x%x.\n"
	.align 8
.LC410:
	.string	"Could not reset net tracker log file argos.netlog\n"
	.section	.rodata.str1.1
.LC418:
	.string	"tap: ifname=%63s "
.LC403:
	.string	"serial%d console\r\n"
	.section	.rodata.str1.8
	.align 8
.LC402:
	.string	"qemu: could not open serial device '%s'\n"
	.align 8
.LC401:
	.string	"qemu: could not open monitor device '%s'\n"
	.section	.rodata.str1.1
.LC405:
	.string	"parallel%d console\r\n"
	.section	.rodata.str1.8
	.align 8
.LC308:
	.string	"Boot device '%c' was given twice\n"
	.align 8
.LC315:
	.string	"qemu: could not create samba server configuration file '%s'\n"
	.align 8
.LC312:
	.string	"qemu: could not create samba server dir '%s'\n"
	.align 8
.LC310:
	.string	"qemu: too many network clients\n"
	.align 8
.LC339:
	.string	"Can only track shellcode if using -no-fsc.\n"
	.align 8
.LC404:
	.string	"qemu: could not open parallel device '%s'\n"
	.section	.rodata.str1.1
.LC356:
	.string	"Too Many NICs\n"
	.section	.rodata.str1.8
	.align 8
.LC304:
	.string	"qemu: invalid physical CHS format\n"
	.align 8
.LC340:
	.string	"Can only daemonize if using -nographic or -vnc\n"
	.section	.rodata.str1.1
.LC341:
	.string	"Could not acquire pidfile\n"
	.section	.rodata.str1.8
	.align 8
.LC323:
	.string	"qemu: syntax: -redir [tcp|udp]:host-port:[guest-host]:guest-port\n"
	.section	.rodata.str1.1
.LC374:
	.string	"listen"
.LC375:
	.string	"connect"
.LC376:
	.string	"socket: connect to %s:%d"
.LC377:
	.string	"mcast"
.LC378:
	.string	"socket: mcast=%s:%d"
.LC379:
	.string	"Binding unix socket %s.\n"
	.section	.rodata.str1.8
	.align 8
.LC380:
	.string	"Deleting %s because it in use!!!\n"
	.section	.rodata.str1.1
.LC381:
	.string	"unlink"
	.section	.rodata.str1.8
	.align 8
.LC330:
	.string	"qemu: too many parallel ports\n"
	.section	.rodata.str1.1
.LC325:
	.string	"Log items (comma separated):"
.LC326:
	.string	"%-10s %s\n"
.LC384:
	.string	"Unknown network device: %s\n"
.LC342:
	.string	"/"
.LC364:
	.string	"ifname"
.LC365:
	.string	"script"
.LC366:
	.string	"downscript"
.LC369:
	.string	"tap%d"
	.section	.rodata.str1.8
	.align 8
.LC370:
	.string	"warning: could not configure /dev/net/tun: no virtual network emulation\n"
	.section	.rodata.str1.1
.LC367:
	.string	"/dev/net/tun"
	.section	.rodata.str1.8
	.align 8
.LC368:
	.string	"warning: could not open /dev/net/tun: no virtual network emulation\n"
	.align 8
.LC372:
	.string	"tap: ifname=%s setup_script=%s"
	.align 8
.LC327:
	.string	"qemu: invalid resolution or depth\n"
	.align 8
.LC382:
	.string	"Adjusting permissions for %s.\n"
	.section	.rodata.str1.1
.LC383:
	.string	"Unknown socket options: %s\n"
.LC348:
	.string	"socket()"
.LC343:
	.string	"Could not acquire pid file\n"
.LC355:
	.string	"Could not create vlan %d\n"
.LC352:
	.string	"nic"
.LC353:
	.string	"tap"
	.section	.rodata.str1.8
	.align 8
.LC386:
	.string	"Invalid vlan (%d) with no nics\n"
	.section	.rodata.str1.1
.LC329:
	.string	"qemu: too many serial ports\n"
.LC361:
	.string	"hostname"
.LC362:
	.string	"user redirector"
	.section	.rodata.str1.8
	.align 8
.LC390:
	.string	"No valid PXE rom found for network device\n"
	.section	.rodata.str1.1
.LC395:
	.string	"index=2,media=cdrom"
.LC396:
	.string	"index=%d,if=floppy"
.LC397:
	.string	"index=0,if=sd"
	.section	.rodata.str1.8
	.align 8
.LC394:
	.string	"Could not create net tracker log file argos.netlog\n"
	.align 8
.LC392:
	.string	"Could not allocate argos memory map\n"
	.align 8
.LC391:
	.string	"Could not allocate physical memory\n"
	.text
	.p2align 4,,15
.globl main
	.type	main, @function
main:
.LFB525:
	.loc 1 9178 0
	pushq	%r15
.LCFI470:
	movl	%edi, %r15d
	pushq	%r14
.LCFI471:
	movq	%rsi, %r14
	pushq	%r13
.LCFI472:
	pushq	%r12
.LCFI473:
	movl	$2, %r12d
	pushq	%rbp
.LCFI474:
	pushq	%rbx
.LCFI475:
	subq	$14104, %rsp
.LCFI476:
	.loc 1 9211 0
	movq	$0, vm_change_state_head(%rip)
.LBB482:
	.loc 1 9215 0
	leaq	3696(%rsp), %rbx
.LBE482:
	.loc 1 9183 0
	movl	$0, 148(%rsp)
	.loc 1 9188 0
	movq	$.LC165, 112(%rsp)
	.loc 1 9202 0
	movq	$0, 72(%rsp)
	.loc 1 9208 0
	movq	$0, 48(%rsp)
.LBB483:
	.loc 1 9215 0
	leaq	8(%rbx), %rdi
	call	sigfillset
	.loc 1 9218 0
	xorl	%edx, %edx
	movq	%rbx, %rsi
	movl	$13, %edi
	.loc 1 9216 0
	movl	$0, 3832(%rsp)
	.loc 1 9217 0
	movq	$1, 3696(%rsp)
	.loc 1 9218 0
	call	sigaction
.LBE483:
.LBB484:
.LBB485:
	.loc 1 8996 0
	movl	$pc_machine, %edi
	call	qemu_register_machine
	.loc 1 8997 0
	movl	$isapc_machine, %edi
	call	qemu_register_machine
.LBE485:
.LBE484:
	.loc 1 9243 0
	movq	first_machine(%rip), %rax
	.loc 1 9258 0
	leaq	5776(%rsp), %rdi
	movl	$.LC130, %edx
	movl	$128, %esi
	.loc 1 9244 0
	movq	$0, 56(%rsp)
	.loc 1 9245 0
	movq	$0, 136(%rsp)
	.loc 1 9246 0
	movl	$134217728, ram_size(%rip)
	.loc 1 9247 0
	movl	$8388608, vga_ram_size(%rip)
	.loc 1 9243 0
	movq	%rax, 64(%rsp)
	.loc 1 9249 0
	movl	$0, 160(%rsp)
	.loc 1 9250 0
	movq	$.LC228, 152(%rsp)
	.loc 1 9252 0
	movl	$0, 144(%rsp)
	.loc 1 9253 0
	movl	$0, nographic(%rip)
	.loc 1 9254 0
	movq	$0, 128(%rsp)
	.loc 1 9255 0
	movq	$.LC165, 120(%rsp)
	.loc 1 9256 0
	movl	$0, 100(%rsp)
	movl	$0, 104(%rsp)
	movl	$0, 108(%rsp)
	.loc 1 9257 0
	movl	$0, 96(%rsp)
	.loc 1 9258 0
	call	pstrcpy
	.loc 1 9260 0
	leaq	5264(%rsp), %rdi
	movl	$.LC130, %edx
	movl	$128, %esi
	call	pstrcpy
	leaq	5392(%rsp), %rax
.L2271:
	.loc 1 9262 0
	movb	$0, (%rax)
	subq	$-128, %rax
	decl	%r12d
	jns	.L2271
	.loc 1 9265 0
	leaq	4880(%rsp), %rdi
	movl	$.LC130, %edx
	movl	$128, %esi
	.loc 1 9263 0
	movl	$0, 84(%rsp)
	.loc 1 9266 0
	movl	$1, %r12d
	.loc 1 9265 0
	call	pstrcpy
	leaq	5008(%rsp), %rax
.L2275:
	.loc 1 9267 0
	movb	$0, (%rax)
	subq	$-128, %rax
	decl	%r12d
	jns	.L2275
	.loc 1 9268 0
	movl	$0, 80(%rsp)
	.loc 1 9272 0
	movl	$0, 92(%rsp)
	.loc 1 9280 0
	movl	$1, %r13d
	.loc 1 9273 0
	movl	$0, nb_drives(%rip)
	.loc 1 9274 0
	movl	$0, nb_drives_opt(%rip)
	.loc 1 9275 0
	movl	$-1, 88(%rsp)
	.loc 1 9277 0
	movl	$0, nb_nics(%rip)
	.p2align 4,,7
.L3037:
	.loc 1 9282 0
	cmpl	%r15d, %r13d
	jge	.L2277
	.loc 1 9284 0
	movslq	%r13d,%rax
	movq	(%r14,%rax,8), %r12
	.loc 1 9285 0
	cmpb	$45, (%r12)
	je	.L2279
	.loc 1 9286 0
	incl	%r13d
	xorl	%edx, %edx
	movq	%r12, %rsi
.L3007:
.LBB486:
	.loc 1 9347 0
	movl	$.LC291, %edi
	xorl	%eax, %eax
	call	drive_add
	.loc 1 9349 0
	movl	%eax, 88(%rsp)
	jmp	.L3037
.L2279:
	.loc 1 9293 0
	xorl	%eax, %eax
	.loc 1 9290 0
	incl	%r13d
	.loc 1 9293 0
	cmpb	$45, 1(%r12)
	.loc 1 9294 0
	movl	$qemu_options, %ebx
	.loc 1 9293 0
	sete	%al
	addq	%rax, %r12
	leaq	1(%r12), %rbp
	jmp	.L2282
	.p2align 4,,7
.L3042:
	.loc 1 9303 0
	addq	$16, %rbx
.L2282:
	.loc 1 9296 0
	movq	(%rbx), %rdi
	testq	%rdi, %rdi
	je	.L3041
.LBB487:
	.loc 1 9301 0
	movq	%rbp, %rsi
	call	strcmp
.LBE487:
	testl	%eax, %eax
	jne	.L3042
	.loc 1 9313 0
	xorl	%ebp, %ebp
	.loc 1 9305 0
	testb	$1, 8(%rbx)
	je	.L2288
	.loc 1 9306 0
	cmpl	%r15d, %r13d
	.p2align 4,,3
	jge	.L3043
	.loc 1 9311 0
	movslq	%r13d,%rax
	incl	%r13d
	movq	(%r14,%rax,8), %rbp
.L2288:
	.loc 1 9316 0
	movl	12(%rbx), %edx
	cmpl	$80, %edx
	ja	.L3037
	mov	%edx, %eax
	jmp	*.L2524(,%rax,8)
	.section	.rodata
	.align 8
	.align 4
.L2524:
	.quad	.L2414
	.quad	.L2290
	.quad	.L2306
	.quad	.L2374
	.quad	.L2374
	.quad	.L2310
	.quad	.L2319
	.quad	.L2319
	.quad	.L2319
	.quad	.L2320
	.quad	.L2365
	.quad	.L2321
	.quad	.L2322
	.quad	.L2323
	.quad	.L2366
	.quad	.L2324
	.quad	.L2375
	.quad	.L2415
	.quad	.L2361
	.quad	.L2362
	.quad	.L2412
	.quad	.L2413
	.quad	.L2377
	.quad	.L2379
	.quad	.L2380
	.quad	.L2381
	.quad	.L2386
	.quad	.L2363
	.quad	.L2364
	.quad	.L2309
	.quad	.L2429
	.quad	.L2425
	.quad	.L2426
	.quad	.L2419
	.quad	.L2325
	.quad	.L2427
	.quad	.L2428
	.quad	.L2376
	.quad	.L2430
	.quad	.L2431
	.quad	.L2432
	.quad	.L2433
	.quad	.L2435
	.quad	.L2434
	.quad	.L2445
	.quad	.L2447
	.quad	.L2448
	.quad	.L2450
	.quad	.L2452
	.quad	.L2453
	.quad	.L2454
	.quad	.L2455
	.quad	.L2456
	.quad	.L2457
	.quad	.L3037
	.quad	.L3037
	.quad	.L2458
	.quad	.L3037
	.quad	.L3037
	.quad	.L2459
	.quad	.L2462
	.quad	.L2463
	.quad	.L2464
	.quad	.L2465
	.quad	.L2466
	.quad	.L2467
	.quad	.L2469
	.quad	.L2470
	.quad	.L3037
	.quad	.L3037
	.quad	.L2471
	.quad	.L2495
	.quad	.L2509
	.quad	.L2511
	.quad	.L2513
	.quad	.L2515
	.quad	.L2516
	.quad	.L2517
	.quad	.L2518
	.quad	.L2519
	.quad	.L2521
	.text
.L3041:
	.loc 1 9297 0
	movq	(%r14), %rdx
	movq	%r12, %rcx
	movl	$.LC292, %esi
.L3034:
	.loc 1 9307 0
	movq	stderr(%rip), %rdi
	xorl	%eax, %eax
	call	fprintf
.L3024:
.LBE486:
.LBB488:
.LBB489:
.LBB490:
.LBB491:
	.loc 1 8098 0
	movl	$1, %edi
.L3025:
	call	exit
.L2521:
.LBE491:
.LBE490:
.LBE489:
.LBE488:
.LBB492:
	.loc 1 9819 0
	movl	argos_fsc(%rip), %ecx
	testl	%ecx, %ecx
	jne	.L2522
	.loc 1 9821 0
	movl	$1, argos_tracksc(%rip)
	jmp	.L3037
.L2519:
.LBB493:
.LBB494:
	.file 5 "/usr/include/stdlib.h"
	.loc 5 286 0
	movl	$10, %edx
	xorl	%esi, %esi
	movq	%rbp, %rdi
	call	strtol
.LBE494:
.LBE493:
	.loc 5 285 0
	movl	%eax, ctrlsock_lport(%rip)
	jmp	.L3037
.L2518:
	.loc 1 9813 0
	movq	%rbp, ctrlsock_laddr(%rip)
	jmp	.L3037
.L2517:
	.loc 1 9810 0
	movl	$0, argos_fsc(%rip)
	jmp	.L3037
.L2516:
	.loc 1 9807 0
	movl	$0, argos_csilog(%rip)
	jmp	.L3037
.L2515:
	.loc 1 9804 0
	movq	%rbp, %rdi
	call	__strdup
	movq	%rax, argos_wprofile(%rip)
	jmp	.L3037
.L2513:
	.loc 1 9800 0
	cmpq	$0, argos_wprofile(%rip)
	.loc 1 9799 0
	movl	$2, argos_os_hint(%rip)
	.loc 1 9800 0
	jne	.L3037
	.loc 1 9801 0
	movq	$.LC72, argos_wprofile(%rip)
	jmp	.L3037
.L2511:
	.loc 1 9795 0
	cmpq	$0, argos_wprofile(%rip)
	.loc 1 9794 0
	movl	$1, argos_os_hint(%rip)
	.loc 1 9795 0
	jne	.L3037
	.loc 1 9796 0
	movq	$.LC71, argos_wprofile(%rip)
	jmp	.L3037
.L2509:
	.loc 1 9790 0
	cmpq	$0, argos_wprofile(%rip)
	.loc 1 9789 0
	movl	$0, argos_os_hint(%rip)
	.loc 1 9790 0
	jne	.L3037
	.loc 1 9791 0
	movq	$.LC70, argos_wprofile(%rip)
	jmp	.L3037
.L2495:
.LBB495:
.LBB496:
.LBB497:
	.loc 1 9754 0
	movzbl	(%rbp), %eax
	subl	$110, %eax
	jne	.L2499
	movzbl	1(%rbp), %eax
	subl	$111, %eax
	jne	.L2499
	movzbl	2(%rbp), %eax
	subl	$119, %eax
	jne	.L2499
	movzbl	3(%rbp), %eax
.L2499:
.LBE497:
.LBE496:
	testl	%eax, %eax
	jne	.L2496
	.loc 1 9755 0
	movl	$-1, rtc_start_date(%rip)
	jmp	.L3037
.L2471:
.LBE495:
.LBB498:
.LBB499:
.LBB500:
	.loc 1 1249 0
	cld
	movl	$.LC7, %edi
	movl	$5, %ecx
	movq	%rbp, %rsi
.LBE500:
	.loc 1 1244 0
	xorl	%r12d, %r12d
	.loc 1 1249 0
	repz
	cmpsb
	je	.L3044
	.loc 1 1254 0
	movq	%rbp, %rdi
	call	__strdup
	.loc 1 1257 0
	movl	$.LC333, %esi
	.loc 1 1254 0
	movq	%rax, 40(%rsp)
	.loc 1 1257 0
	movq	%rax, %rdi
.L3009:
	call	strtok
	.loc 1 1282 0
	testq	%rax, %rax
	.loc 1 1257 0
	movq	%rax, %rbp
	.loc 1 1282 0
	je	.L2938
.LBB501:
	.loc 1 1261 0
	xorl	%ebx, %ebx
	cmpq	$0, alarm_timers(%rip)
	je	.L2485
	xorl	%edx, %edx
.L2484:
.LBB502:
	.loc 1 1262 0
	leaq	(%rdx,%rdx,2), %rax
	movq	%rbp, %rsi
	salq	$4, %rax
	movq	alarm_timers(%rax), %rdi
	call	strcmp
.LBE502:
	testl	%eax, %eax
	je	.L2481
	.loc 1 1261 0
	incl	%ebx
	cmpl	$4, %ebx
	jge	.L2481
	movslq	%ebx,%rdx
	leaq	(%rdx,%rdx,2), %rax
	salq	$4, %rax
	cmpq	$0, alarm_timers(%rax)
	jne	.L2484
.L2481:
	.loc 1 1266 0
	cmpl	$4, %ebx
	je	.L3045
.L2485:
	.loc 1 1271 0
	cmpl	%r12d, %ebx
	jl	.L2486
	.loc 1 1277 0
	movslq	%r12d,%rax
	.loc 1 1276 0
	movslq	%ebx,%rdx
	.loc 1 1280 0
	incl	%r12d
	.loc 1 1277 0
	leaq	(%rax,%rax,2), %rax
	.loc 1 1276 0
	leaq	(%rdx,%rdx,2), %rdx
	.loc 1 1277 0
	salq	$4, %rax
	.loc 1 1276 0
	salq	$4, %rdx
	.loc 1 1277 0
	movq	alarm_timers(%rax), %rcx
	.loc 1 1276 0
	movq	alarm_timers(%rdx), %rsi
	movq	alarm_timers+8(%rdx), %rdi
	movq	alarm_timers+16(%rdx), %r8
	movq	alarm_timers+24(%rdx), %r9
	movq	alarm_timers+32(%rdx), %r10
	.loc 1 1277 0
	movq	%rcx, alarm_timers(%rdx)
	movq	alarm_timers+8(%rax), %rcx
	.loc 1 1276 0
	movq	alarm_timers+40(%rdx), %r11
	movq	%rsi, 1344(%rsp)
	movq	%rdi, 1352(%rsp)
	movq	%r8, 1360(%rsp)
	.loc 1 1277 0
	movq	%rcx, alarm_timers+8(%rdx)
	movq	alarm_timers+16(%rax), %rcx
	.loc 1 1276 0
	movq	%r9, 1368(%rsp)
	movq	%r10, 1376(%rsp)
	movq	%r11, 1384(%rsp)
	.loc 1 1277 0
	movq	%rcx, alarm_timers+16(%rdx)
	movq	alarm_timers+24(%rax), %rcx
	movq	%rcx, alarm_timers+24(%rdx)
	movq	alarm_timers+32(%rax), %rcx
	movq	%rcx, alarm_timers+32(%rdx)
	movq	alarm_timers+40(%rax), %rcx
	movq	%rcx, alarm_timers+40(%rdx)
	.loc 1 1278 0
	movq	%rsi, alarm_timers(%rax)
	movq	%rdi, alarm_timers+8(%rax)
	movq	%r8, alarm_timers+16(%rax)
	movq	%r9, alarm_timers+24(%rax)
	movq	%r10, alarm_timers+32(%rax)
	movq	%r11, alarm_timers+40(%rax)
.L2486:
	.loc 1 1282 0
	movl	$.LC333, %esi
	xorl	%edi, %edi
	jmp	.L3009
.L2426:
.LBE501:
.LBE499:
.LBE498:
	.loc 1 9556 0
	movq	%rbp, 152(%rsp)
	jmp	.L3037
.L2425:
	.loc 1 9553 0
	movl	$1, 160(%rsp)
	jmp	.L3037
.L2429:
	.loc 1 9566 0
	movl	$0, autostart(%rip)
	jmp	.L3037
.L2309:
	.loc 1 9343 0
	movq	%rbp, 136(%rsp)
	jmp	.L3037
.L2364:
	.loc 1 9437 0
	movq	%rbp, 120(%rsp)
	jmp	.L3037
.L2363:
	.loc 1 9434 0
	movq	%rbp, 128(%rsp)
	jmp	.L3037
.L2386:
.LBB503:
.LBB504:
	.loc 1 4071 0
	movl	slirp_inited(%rip), %edi
	testl	%edi, %edi
	jne	.L2387
	.loc 1 4072 0
	movl	$1, slirp_inited(%rip)
	.loc 1 4073 0
	call	slirp_init
.L2387:
	.loc 1 4077 0
	leaq	1392(%rsp), %rbx
	leaq	240(%rsp), %rdx
	movl	$58, %ecx
	movl	$256, %esi
	.loc 1 4076 0
	movq	%rbp, 240(%rsp)
	.loc 1 4077 0
	movq	%rbx, %rdi
	call	get_str_sep
	testl	%eax, %eax
	js	.L2389
.LBB505:
.LBB506:
	.loc 1 4079 0
	movzbl	1392(%rsp), %edx
	movzbl	%dl, %eax
	subl	$116, %eax
	jne	.L2393
	movzbl	1393(%rsp), %eax
	subl	$99, %eax
	jne	.L2393
	movzbl	1394(%rsp), %eax
	subl	$112, %eax
	jne	.L2393
	movzbl	1395(%rsp), %eax
.L2393:
.LBE506:
.LBE505:
	.loc 1 4080 0
	xorl	%ebp, %ebp
	.loc 1 4079 0
	testl	%eax, %eax
	je	.L2396
.LBB507:
.LBB508:
	.loc 1 4081 0
	movzbl	%dl, %eax
	subl	$117, %eax
	jne	.L2400
	movzbl	1393(%rsp), %eax
	subl	$100, %eax
	jne	.L2400
	movzbl	1394(%rsp), %eax
	subl	$112, %eax
	jne	.L2400
	movzbl	1395(%rsp), %eax
.L2400:
.LBE508:
.LBE507:
	testl	%eax, %eax
	jne	.L2389
	.loc 1 4082 0
	movl	$1, %ebp
.L2396:
	.loc 1 4087 0
	leaq	240(%rsp), %rdx
	movl	$58, %ecx
	movl	$256, %esi
	movq	%rbx, %rdi
	call	get_str_sep
	testl	%eax, %eax
	js	.L2389
	.loc 1 4089 0
	leaq	232(%rsp), %rsi
	xorl	%edx, %edx
	movq	%rbx, %rdi
	call	strtol
	.loc 1 4090 0
	cmpq	232(%rsp), %rbx
	.loc 1 4089 0
	movq	%rax, %r12
	.loc 1 4090 0
	je	.L2389
	.loc 1 4093 0
	leaq	240(%rsp), %rdx
	movl	$58, %ecx
	movl	$256, %esi
	movq	%rbx, %rdi
	call	get_str_sep
	testl	%eax, %eax
	js	.L2389
	.loc 1 4095 0
	cmpb	$0, 1392(%rsp)
	jne	.L2407
	.loc 1 4096 0
	movl	$.LC321, %edx
	movl	$256, %esi
	movq	%rbx, %rdi
	call	pstrcpy
.L2407:
	.loc 1 4098 0
	leaq	228(%rsp), %rsi
	movq	%rbx, %rdi
	call	inet_aton
	testl	%eax, %eax
	je	.L2389
	.loc 1 4101 0
	movq	240(%rsp), %rdi
	leaq	232(%rsp), %rsi
	xorl	%edx, %edx
	call	strtol
	.loc 1 4102 0
	movq	240(%rsp), %rdx
	cmpq	%rdx, 232(%rsp)
	je	.L2389
	.loc 1 4105 0
	movl	228(%rsp), %edx
	movl	%eax, %ecx
	movl	%r12d, %esi
	movl	%ebp, %edi
	call	slirp_redir
	testl	%eax, %eax
	jns	.L3037
	.loc 1 4106 0
	movq	stderr(%rip), %rcx
	movl	$35, %edx
	movl	$1, %esi
	movl	$.LC322, %edi
.L3028:
.LBE504:
.LBE503:
.LBE492:
.LBB509:
.LBB510:
.LBB511:
.LBB512:
	.loc 1 8096 0
	call	fwrite
.L3059:
	.loc 1 8098 0
	movl	$1, %edi
	jmp	.L3025
.L2381:
.LBE512:
.LBE511:
.LBE510:
.LBE509:
.LBB513:
.LBB514:
.LBB515:
	.loc 1 4149 0
	movl	slirp_inited(%rip), %r8d
	testl	%r8d, %r8d
	jne	.L2382
	.loc 1 4150 0
	movl	$1, slirp_inited(%rip)
	.loc 1 4151 0
	call	slirp_init
.L2382:
	.loc 1 4155 0
	call	getpid
	movl	$.LC311, %edx
	movl	%eax, %ecx
	movl	$1024, %esi
	movl	$smb_dir, %edi
	xorl	%eax, %eax
	call	snprintf
	.loc 1 4156 0
	movl	$448, %esi
	movl	$smb_dir, %edi
	call	mkdir
	testl	%eax, %eax
	js	.L3046
	.loc 1 4160 0
	leaq	2672(%rsp), %r12
	movl	$.LC313, %r8d
	movl	$smb_dir, %ecx
	movl	$.LC153, %edx
	movl	$1024, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	call	snprintf
	.loc 1 4162 0
	movl	$.LC314, %esi
	movq	%r12, %rdi
	call	fopen64
	.loc 1 4163 0
	testq	%rax, %rax
	.loc 1 4162 0
	movq	%rax, %rbx
	.loc 1 4163 0
	je	.L3047
	.loc 1 4167 0
	movl	$smb_dir, %r9d
	movl	$smb_dir, %r8d
	movl	$smb_dir, %ecx
	movl	$smb_dir, %edx
	movl	$.LC316, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	movq	%rbp, 8(%rsp)
	movq	$smb_dir, (%rsp)
	call	fprintf
	.loc 1 4188 0
	movq	%rbx, %rdi
	.loc 1 4191 0
	leaq	1648(%rsp), %rbx
	.loc 1 4188 0
	call	fclose
	.loc 1 4189 0
	movl	$smb_exit, %edi
	call	atexit
	.loc 1 4191 0
	movq	%rbx, %rdi
	movq	%r12, %r8
	movl	$.LC317, %ecx
	movl	$.LC318, %edx
	movl	$1024, %esi
	xorl	%eax, %eax
	call	snprintf
	.loc 1 4194 0
	movl	$139, %ecx
	movl	$4, %edx
	movq	%rbx, %rsi
	xorl	%edi, %edi
	call	slirp_add_exec
	jmp	.L3037
.L2380:
.LBE515:
.LBE514:
	.loc 1 9501 0
	movq	%rbp, bootp_filename(%rip)
	jmp	.L3037
.L2379:
	.loc 1 9498 0
	movq	%rbp, tftp_prefix(%rip)
	jmp	.L3037
.L2412:
	.loc 1 9514 0
	call	AUD_help
.L3031:
	.loc 1 9515 0
	xorl	%edi, %edi
.L3096:
.LBE513:
.LBB516:
.LBB517:
.LBB518:
.LBB519:
	.loc 1 8098 0
	call	exit
.L2362:
.LBE519:
.LBE518:
.LBE517:
.LBE516:
.LBB520:
	.loc 1 9431 0
	movl	$1, graphic_rotate(%rip)
	jmp	.L3037
.L2361:
	.loc 1 9425 0
	leaq	5264(%rsp), %rdi
	movl	$.LC148, %edx
	movl	$128, %esi
	call	pstrcpy
	.loc 1 9426 0
	leaq	4880(%rsp), %rdi
	movl	$.LC132, %edx
	movl	$128, %esi
	call	pstrcpy
	.loc 1 9427 0
	leaq	5776(%rsp), %rdi
	movl	$.LC148, %edx
	movl	$128, %esi
	call	pstrcpy
	.loc 1 9428 0
	movl	$1, nographic(%rip)
	jmp	.L3037
.L2415:
.LBB521:
.LBB522:
	.loc 5 286 0
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%rbp, %rdi
	call	strtol
.LBE522:
.LBE521:
	.loc 5 285 0
	sall	$20, %eax
	.loc 1 9526 0
	testl	%eax, %eax
	.loc 5 285 0
	movl	%eax, ram_size(%rip)
	.loc 1 9526 0
	jle	.L3048
.L2417:
	.loc 1 9528 0
	cmpl	$536870912, ram_size(%rip)
	jle	.L3037
	.loc 1 9529 0
	movl	$512, %edx
	movl	$.LC324, %esi
.L3029:
.LBE520:
	.loc 1 9945 0
	movq	stderr(%rip), %rdi
	xorl	%eax, %eax
	call	fprintf
.LBB523:
.LBB524:
.LBB525:
.LBB526:
	.loc 1 8098 0
	movl	$1, %edi
	jmp	.L3025
	.p2align 4,,7
.L2377:
.LBE526:
.LBE525:
.LBE524:
.LBE523:
.LBB527:
	.loc 1 9487 0
	cmpl	$31, 92(%rsp)
	jg	.L3049
	.loc 1 9491 0
	movslq	92(%rsp),%rax
	movq	%rbp, %rdx
	movl	$256, %esi
	salq	$8, %rax
	leaq	5904(%rsp,%rax), %rdi
	call	pstrcpy
	.loc 1 9494 0
	incl	92(%rsp)
	jmp	.L3037
.L2413:
	.loc 1 9518 0
	movq	%rbp, %rdi
	call	select_soundhw
	.p2align 4,,3
	jmp	.L3037
.L2375:
	.loc 1 9480 0
	movl	$0, fd_bootchk(%rip)
	jmp	.L3037
.L2324:
	.loc 1 9375 0
	movl	$1, 144(%rsp)
	jmp	.L3037
.L2366:
	.loc 1 9443 0
	movq	%rbp, 112(%rsp)
.LBB528:
	.loc 1 9449 0
	movl	$0, 148(%rsp)
	.loc 1 9450 0
	movq	%rbp, %rsi
	movzbl	(%rbp), %eax
	testb	%al, %al
	je	.L3037
	movl	%eax, %edx
	movl	$1, %edi
	jmp	.L2372
.L2370:
	.loc 1 9464 0
	movsbl	%dl,%edx
	movl	%edi, %eax
	leal	-97(%rdx), %ecx
	sall	%cl, %eax
	testl	%eax, 148(%rsp)
	jne	.L3050
	.loc 1 9469 0
	orl	%eax, 148(%rsp)
	.loc 1 9450 0
	incq	%rsi
	movzbl	(%rsi), %edx
	testb	%dl, %dl
	je	.L3037
.L2372:
	.loc 1 9460 0
	leal	-97(%rdx), %eax
	cmpb	$16, %al
	jbe	.L2370
	.loc 1 9461 0
	movsbl	%dl,%edx
	movl	$.LC307, %esi
	jmp	.L3029
	.p2align 4,,7
.L2323:
.LBE528:
	.loc 1 9372 0
	movq	%rbp, %rsi
	movl	$.LC303, %edi
.L3003:
	.loc 1 9440 0
	xorl	%eax, %eax
	call	drive_add
	jmp	.L3037
.L2322:
	.loc 1 9369 0
	movq	%rbp, %rsi
	movl	$.LC302, %edi
	jmp	.L3003
.L2321:
	.loc 1 9366 0
	movq	%rbp, %rsi
	movl	$.LC301, %edi
	jmp	.L3003
.L2365:
	.loc 1 9440 0
	movq	%rbp, %rsi
	movl	$.LC306, %edi
	jmp	.L3003
.L2320:
	.loc 1 9363 0
	movq	%rbp, %rsi
	movl	$.LC300, %edi
	jmp	.L3003
.L2319:
	.loc 1 9360 0
	subl	$5, %edx
	movq	%rbp, %rsi
	movl	$.LC291, %edi
.L3004:
	.loc 1 9475 0
	xorl	%eax, %eax
	call	drive_add
	jmp	.L3037
.L2310:
	.loc 1 9346 0
	movl	108(%rsp), %r9d
	testl	%r9d, %r9d
	je	.L3051
	.loc 1 9349 0
	cmpl	$2, 96(%rsp)
	movl	$.LC299, %edx
	je	.L2314
	cmpl	$1, 96(%rsp)
	movl	$.LC298, %edx
	movl	$.LC165, %eax
	cmovne	%rax, %rdx
.L2314:
	movl	100(%rsp), %r9d
	movl	104(%rsp), %r8d
	movq	%rbp, %rsi
	movl	108(%rsp), %ecx
	movq	%rdx, (%rsp)
	movl	$.LC297, %edi
	xorl	%edx, %edx
	xorl	%eax, %eax
	call	drive_add
	movl	%eax, 88(%rsp)
	jmp	.L3037
.L2374:
	.loc 1 9475 0
	subl	$3, %edx
	movq	%rbp, %rsi
	movl	$.LC309, %edi
	jmp	.L3004
.L2306:
	.loc 1 9332 0
	cmpb	$63, (%rbp)
	je	.L3052
	.loc 1 9339 0
	movq	%rbp, 56(%rsp)
	jmp	.L3037
.L2290:
.LBB529:
.LBB530:
	.loc 1 7961 0
	movq	first_machine(%rip), %rbx
	jmp	.L3006
.L3053:
.LBB531:
	.loc 1 7962 0
	movq	(%rbx), %rdi
	movq	%rbp, %rsi
	call	strcmp
.LBE531:
	testl	%eax, %eax
	je	.L2972
	.loc 1 7961 0
	movq	24(%rbx), %rbx
.L3006:
	testq	%rbx, %rbx
	jne	.L3053
	.loc 1 7964 0
	xorl	%eax, %eax
.L2295:
.LBE530:
.LBE529:
	.loc 1 9319 0
	testq	%rax, %rax
	.loc 1 7958 0
	movq	%rax, 64(%rsp)
	.loc 1 9319 0
	jne	.L3037
.LBB532:
	.loc 1 9321 0
	movl	$.LC294, %edi
	call	puts
	.loc 1 9322 0
	movq	first_machine(%rip), %rbx
	testq	%rbx, %rbx
	movq	%rbx, %rax
	je	.L2932
.L2305:
	.loc 1 9323 0
	movq	8(%rbx), %rdx
	movq	(%rbx), %rsi
	cmpq	%rax, %rbx
	movl	$.LC295, %ecx
	movl	$.LC165, %eax
	movl	$.LC296, %edi
	cmovne	%rax, %rcx
	xorl	%eax, %eax
	call	printf
	.loc 1 9322 0
	movq	24(%rbx), %rbx
	testq	%rbx, %rbx
	je	.L2932
	movq	first_machine(%rip), %rax
	jmp	.L2305
	.p2align 4,,7
.L2414:
.LBE532:
	.loc 1 9522 0
	xorl	%edi, %edi
	call	help
	jmp	.L3037
.L2452:
	.loc 1 9650 0
	movq	%rbp, 72(%rsp)
	.p2align 4,,3
	jmp	.L3037
.L2450:
	.loc 1 9641 0
	cmpl	$2, 80(%rsp)
	.p2align 4,,5
	jg	.L3054
	.loc 1 9645 0
	movslq	80(%rsp),%rdi
	leaq	4880(%rsp), %rax
	movq	%rbp, %rdx
	movl	$128, %esi
	salq	$7, %rdi
	leaq	(%rax,%rdi), %rdi
	call	pstrcpy
	.loc 1 9647 0
	incl	80(%rsp)
	jmp	.L3037
.L2448:
	.loc 1 9632 0
	cmpl	$3, 84(%rsp)
	jg	.L3055
	.loc 1 9636 0
	movslq	84(%rsp),%rdi
	leaq	5264(%rsp), %rcx
	movq	%rbp, %rdx
	movl	$128, %esi
	salq	$7, %rdi
	leaq	(%rcx,%rdi), %rdi
	call	pstrcpy
	.loc 1 9638 0
	incl	84(%rsp)
	jmp	.L3037
.L2462:
	.loc 1 9706 0
	movq	%rbp, vnc_display(%rip)
	jmp	.L3037
.L2432:
	.loc 1 9575 0
	movl	$1, cirrus_vga_enabled(%rip)
.L3002:
	.loc 1 9584 0
	movl	$0, vmsvga_enabled(%rip)
	jmp	.L3037
.L2431:
	.loc 1 9572 0
	movl	$0, rtc_utc(%rip)
	jmp	.L3037
.L2430:
	.loc 1 9569 0
	movq	%rbp, keyboard_layout(%rip)
	jmp	.L3037
.L2376:
	.loc 1 9484 0
	movl	$0, code_copy_enabled(%rip)
	jmp	.L3037
.L2428:
	.loc 1 9563 0
	movq	%rbp, bios_name(%rip)
	jmp	.L3037
.L2427:
	.loc 1 9560 0
	movq	%rbp, bios_dir(%rip)
	jmp	.L3037
.L2325:
.LBB533:
	.loc 1 9381 0
	leaq	248(%rsp), %rsi
	xorl	%edx, %edx
	movq	%rbp, %rdi
	.loc 1 9380 0
	movq	%rbp, 248(%rsp)
	.loc 1 9381 0
	call	strtol
	movl	%eax, 108(%rsp)
	.loc 1 9382 0
	decl	%eax
	cmpl	$16382, %eax
	ja	.L2327
	.loc 1 9384 0
	movq	248(%rsp), %rax
	cmpb	$44, (%rax)
	jne	.L2327
	.loc 1 9386 0
	leaq	1(%rax), %rdi
	.loc 1 9387 0
	leaq	248(%rsp), %rsi
	xorl	%edx, %edx
	.loc 1 9386 0
	movq	%rdi, 248(%rsp)
	.loc 1 9387 0
	call	strtol
	movl	%eax, 104(%rsp)
	.loc 1 9388 0
	decl	%eax
	cmpl	$15, %eax
	ja	.L2327
	.loc 1 9390 0
	movq	248(%rsp), %rax
	cmpb	$44, (%rax)
	jne	.L2327
	.loc 1 9392 0
	leaq	1(%rax), %rdi
	.loc 1 9393 0
	leaq	248(%rsp), %rsi
	xorl	%edx, %edx
	.loc 1 9392 0
	movq	%rdi, 248(%rsp)
	.loc 1 9393 0
	call	strtol
	movl	%eax, 100(%rsp)
	.loc 1 9394 0
	decl	%eax
	cmpl	$62, %eax
	ja	.L2327
	.loc 1 9396 0
	movq	248(%rsp), %rax
	movzbl	(%rax), %edx
	movq	%rax, %r8
	cmpb	$44, %dl
	je	.L3056
	.loc 1 9406 0
	testb	%dl, %dl
	jne	.L2327
.L2354:
	.loc 1 9411 0
	cmpl	$-1, 88(%rsp)
	je	.L3037
	.loc 1 9412 0
	movslq	88(%rsp),%rbx
	salq	$10, %rbx
	leaq	drives_opt(%rbx), %rdi
	call	strlen
	movl	$1024, %esi
	leaq	drives_opt(%rbx,%rax), %rdi
	movl	$.LC299, %edx
	subq	%rax, %rsi
	cmpl	$2, 96(%rsp)
	je	.L2358
	cmpl	$1, 96(%rsp)
	movl	$.LC298, %edx
	movl	$.LC165, %eax
	cmovne	%rax, %rdx
.L2358:
	movl	100(%rsp), %r9d
	movl	104(%rsp), %r8d
	xorl	%eax, %eax
	movl	108(%rsp), %ecx
	movq	%rdx, (%rsp)
	movl	$.LC305, %edx
	call	snprintf
	jmp	.L3037
.L2419:
.LBE533:
.LBB534:
	.loc 1 9540 0
	movq	%rbp, %rdi
	call	cpu_str_to_log_mask
	.loc 1 9541 0
	testl	%eax, %eax
	.loc 1 9540 0
	movl	%eax, %edi
	.loc 1 9541 0
	.p2align 4,,2
	je	.L3057
	.loc 1 9548 0
	call	cpu_set_log
	.p2align 4,,4
	jmp	.L3037
.L2445:
.LBE534:
.LBB535:
	.loc 1 9623 0
	leaq	208(%rsp), %rsi
	xorl	%edx, %edx
	movq	%rbp, %rdi
	call	strtol
	.loc 1 9624 0
	cmpq	%rbp, 208(%rsp)
	.loc 1 9623 0
	movl	%eax, term_escape_char(%rip)
	.loc 1 9624 0
	jne	.L3037
	.loc 1 9625 0
	movl	$.LC328, %edi
	call	puts
	jmp	.L3037
	.p2align 4,,7
.L2447:
.LBE535:
	.loc 1 9629 0
	leaq	5776(%rsp), %rdi
	movq	%rbp, %rdx
	movl	$128, %esi
	call	pstrcpy
	jmp	.L3037
.L2435:
.LBB536:
	.loc 1 9591 0
	leaq	216(%rsp), %rsi
	movl	$10, %edx
	movq	%rbp, %rdi
	.loc 1 9590 0
	movq	%rbp, 216(%rsp)
	.loc 1 9591 0
	call	strtol
	.loc 1 9592 0
	testl	%eax, %eax
	.loc 1 9591 0
	movl	%eax, %ebx
	.loc 1 9592 0
	jle	.L2437
	.loc 1 9597 0
	movq	216(%rsp), %rdi
	cmpb	$120, (%rdi)
	jne	.L2437
	.loc 1 9600 0
	leaq	216(%rsp), %rsi
	.loc 1 9599 0
	incq	%rdi
	.loc 1 9600 0
	movl	$10, %edx
	.loc 1 9599 0
	movq	%rdi, 216(%rsp)
	.loc 1 9600 0
	call	strtol
	.loc 1 9601 0
	testl	%eax, %eax
	.loc 1 9600 0
	movl	%eax, %ebp
	.loc 1 9601 0
	jle	.L2437
	.loc 1 9603 0
	movq	216(%rsp), %rdi
	movzbl	(%rdi), %eax
	cmpb	$120, %al
	je	.L3058
	.loc 1 9609 0
	testb	%al, %al
	jne	.L2437
	.loc 1 9610 0
	movl	graphic_depth(%rip), %ecx
.L2442:
	.loc 1 9615 0
	movl	%ebx, graphic_width(%rip)
	.loc 1 9616 0
	movl	%ebp, graphic_height(%rip)
	.loc 1 9617 0
	movl	%ecx, graphic_depth(%rip)
	jmp	.L3037
.L2433:
.LBE536:
	.loc 1 9579 0
	movl	$0, cirrus_vga_enabled(%rip)
	.loc 1 9580 0
	movl	$1, vmsvga_enabled(%rip)
	jmp	.L3037
.L2434:
	.loc 1 9583 0
	movl	$0, cirrus_vga_enabled(%rip)
	jmp	.L3002
.L2466:
	.loc 1 9718 0
	movl	$1, daemonize(%rip)
	jmp	.L3037
.L2465:
	.loc 1 9715 0
	movl	$0, cursor_hide(%rip)
	jmp	.L3037
.L2464:
	.loc 1 9712 0
	movl	$1, no_reboot(%rip)
	jmp	.L3037
.L2463:
	.loc 1 9709 0
	movl	$0, acpi_enabled(%rip)
	jmp	.L3037
.L2469:
	.loc 1 9729 0
	movl	$1, semihosting_enabled(%rip)
	jmp	.L3037
.L2467:
	.loc 1 9721 0
	movl	nb_option_roms(%rip), %edx
	cmpl	$15, %edx
	jg	.L3036
	.loc 1 9725 0
	movslq	%edx,%rax
	movq	%rbp, option_rom(,%rax,8)
	.loc 1 9726 0
	leal	1(%rdx), %eax
	movl	%eax, nb_option_roms(%rip)
	jmp	.L3037
.L2470:
	.loc 1 9732 0
	movq	%rbp, qemu_name(%rip)
	jmp	.L3037
.L2456:
	.loc 1 9663 0
	movl	$1, no_quit(%rip)
	jmp	.L3037
.L2455:
	.loc 1 9660 0
	movl	$1, alt_grab(%rip)
	jmp	.L3037
.L2454:
	.loc 1 9657 0
	movl	$1, no_frame(%rip)
	jmp	.L3037
.L2453:
	.loc 1 9653 0
	movl	$1, full_screen(%rip)
	jmp	.L3037
.L2458:
	.loc 1 9671 0
	movl	$1, win2k_install_hack(%rip)
	jmp	.L3037
.L2457:
	.loc 1 9667 0
	movq	%rbp, 48(%rsp)
	jmp	.L3037
.L2459:
.LBB537:
.LBB538:
	.loc 5 286 0
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%rbp, %rdi
	call	strtol
.LBE538:
.LBE537:
	.loc 5 285 0
	movl	%eax, smp_cpus(%rip)
	.loc 1 9700 0
	decl	%eax
	cmpl	$254, %eax
	jbe	.L3037
	.loc 1 9701 0
	movq	stderr(%rip), %rcx
	movl	$23, %edx
	movl	$1, %esi
	movl	$.LC331, %edi
.LBE527:
.LBB539:
.LBB540:
.LBB541:
.LBB542:
	.loc 1 8096 0
	call	fwrite
	jmp	.L3059
	.p2align 4,,7
.L2277:
.LBE542:
.LBE541:
.LBE540:
.LBE539:
	.loc 1 9833 0
	movq	argos_wprofile(%rip), %rdx
	.loc 1 9834 0
	movl	$.LC70, %eax
	testq	%rdx, %rdx
	cmovne	%rdx, %rax
	movq	%rax, argos_wprofile(%rip)
	.loc 1 9837 0
	movl	daemonize(%rip), %eax
	testl	%eax, %eax
	je	.L2527
	movl	nographic(%rip), %edx
	testl	%edx, %edx
	jne	.L2526
	cmpq	$0, vnc_display(%rip)
	je	.L3060
.L2526:
	.loc 1 9842 0
	testl	%eax, %eax
	jne	.L3061
.L2527:
	.loc 1 9887 0
	cmpq	$0, 48(%rsp)
	je	.L2541
	movq	48(%rsp), %rdi
	call	qemu_create_pidfile
	testl	%eax, %eax
	jne	.L3062
.L2541:
	.loc 1 9900 0
	xorl	%eax, %eax
	cmpq	$0, 128(%rsp)
	.loc 1 9901 0
	movl	148(%rsp), %r15d
	.loc 1 9900 0
	setne	%al
	.loc 1 9901 0
	shrl	$13, %r15d
	andl	$15, %r15d
	.loc 1 9904 0
	orl	%r15d, %eax
	jne	.L2544
	movl	nb_drives_opt(%rip), %eax
	testl	%eax, %eax
	je	.L3063
.L2544:
	.loc 1 9910 0
	movq	112(%rsp), %rax
	.loc 1 9912 0
	movq	stdout(%rip), %rdi
.LBB543:
.LBB544:
.LBB545:
.LBB546:
.LBB547:
	.loc 1 1043 0
	leaq	1280(%rsp), %r13
.LBE547:
.LBE546:
.LBE545:
.LBE544:
.LBE543:
	.loc 1 9912 0
	movl	$1, %edx
	.loc 1 9910 0
	cmpb	$0, (%rax)
	movl	$.LC344, %eax
	cmovne	112(%rsp), %rax
	.loc 1 9912 0
	xorl	%ecx, %ecx
	xorl	%esi, %esi
	.loc 1 9910 0
	movq	%rax, 112(%rsp)
	.loc 1 9912 0
	call	setvbuf
.LBB548:
.LBB549:
.LBB550:
.LBB551:
.LBB552:
	.loc 1 1043 0
	movq	%r13, %rsi
	movl	$1, %edi
.LBE552:
	.loc 1 1039 0
	movl	$0, use_rt_clock(%rip)
.LBB553:
	.loc 1 1043 0
	call	clock_gettime
	.loc 1 1044 0
	movl	$1, %edx
	testl	%eax, %eax
	cmovne	use_rt_clock(%rip), %edx
.LBE553:
.LBE551:
.LBE550:
	.loc 1 1427 0
	xorl	%edi, %edi
	.loc 1 1426 0
	movq	$1000000000, ticks_per_sec(%rip)
.LBE549:
.LBE548:
.LBB554:
.LBB555:
	.loc 1 1871 0
	xorl	%ebp, %ebp
.LBE555:
.LBE554:
.LBB556:
.LBB557:
.LBB558:
.LBB559:
.LBB560:
	.loc 1 1044 0
	movl	%edx, use_rt_clock(%rip)
.LBE560:
.LBE559:
.LBE558:
	.loc 1 1427 0
	call	qemu_new_clock
	.loc 1 1428 0
	movl	$1, %edi
	.loc 1 1427 0
	movq	%rax, rt_clock(%rip)
	.loc 1 1428 0
	call	qemu_new_clock
.LBE557:
.LBE556:
.LBB561:
.LBB562:
	.loc 1 1871 0
	cmpq	$0, alarm_timers(%rip)
.LBE562:
.LBE561:
.LBB563:
.LBB564:
	.loc 1 1428 0
	movq	%rax, vm_clock(%rip)
.LBE564:
.LBE563:
.LBB565:
.LBB566:
	.loc 1 1871 0
	je	.L2978
	xorl	%edx, %edx
	jmp	.L2553
.L3064:
	incl	%ebp
	movslq	%ebp,%rdx
	leaq	(%rdx,%rdx,2), %rax
	salq	$4, %rax
	cmpq	$0, alarm_timers(%rax)
	je	.L2978
.L2553:
	.loc 1 1872 0
	leaq	(%rdx,%rdx,2), %rax
	salq	$4, %rax
	leaq	alarm_timers(%rax), %rbx
	.loc 1 1874 0
	movq	%rbx, %rdi
	call	*alarm_timers+16(%rax)
	.loc 1 1875 0
	testl	%eax, %eax
	jne	.L3064
	.loc 1 1885 0
	movq	%rbx, alarm_timer(%rip)
.LBE566:
.LBE565:
	.loc 1 9916 0
	call	qemu_aio_init
	.loc 1 9922 0
	movq	ctrlsock_laddr(%rip), %rsi
	testq	%rsi, %rsi
	jne	.L3065
.L2556:
	.loc 1 9928 0
	movl	92(%rsp), %eax
	testl	%eax, %eax
	je	.L3066
.L2569:
	.loc 1 9937 0
	xorl	%r12d, %r12d
.L3011:
	cmpl	92(%rsp), %r12d
	jge	.L2943
.LBB567:
	.loc 1 5490 0
	movslq	%r12d,%rax
.LBB568:
	.loc 1 5498 0
	leaq	5904(%rsp), %r13
	.loc 1 5499 0
	leaq	1296(%rsp), %rsi
.LBE568:
	.loc 1 5490 0
	salq	$8, %rax
.LBB569:
	.loc 1 5498 0
	addq	%rax, %r13
.L3012:
	.loc 1 5503 0
	movzbl	(%r13), %ecx
	testb	%cl, %cl
	setne	%dl
	xorl	%eax, %eax
	cmpb	$44, %cl
	setne	%al
	testl	%edx, %eax
	je	.L2945
	.loc 1 5501 0
	leaq	1296(%rsp), %rdx
	movq	%rsi, %rax
	subq	%rdx, %rax
	cmpq	$62, %rax
	ja	.L2576
	.loc 1 5502 0
	movb	%cl, (%rsi)
	incq	%rsi
.L2576:
	.loc 1 5503 0
	incq	%r13
	jmp	.L3012
.L2945:
	.loc 1 5505 0
	movb	$0, (%rsi)
	.loc 1 5507 0
	xorl	%eax, %eax
	cmpb	$44, (%r13)
	.loc 1 5509 0
	leaq	1360(%rsp), %rdi
	movl	$.LC354, %edx
	movl	$1024, %esi
	.loc 1 5507 0
	sete	%al
	.loc 1 5508 0
	xorl	%ebx, %ebx
	.loc 1 5507 0
	addq	%rax, %r13
	.loc 1 5509 0
	movq	%r13, %rcx
	call	get_param_value
	testl	%eax, %eax
	jne	.L3067
.L2579:
	.loc 1 5512 0
	movl	%ebx, %edi
	call	qemu_find_vlan
	.loc 1 5513 0
	testq	%rax, %rax
	.loc 1 5512 0
	movq	%rax, %r14
	.loc 1 5513 0
	je	.L3068
.LBB570:
.LBB571:
	.loc 1 5517 0
	movzbl	1296(%rsp), %r8d
	movzbl	%r8b, %eax
	subl	$110, %eax
	jne	.L2585
	movzbl	1297(%rsp), %eax
	subl	$105, %eax
	jne	.L2585
	movzbl	1298(%rsp), %eax
	subl	$99, %eax
	jne	.L2585
	movzbl	1299(%rsp), %eax
.L2585:
.LBE571:
.LBE570:
	testl	%eax, %eax
	jne	.L2582
.LBB572:
	.loc 1 5521 0
	movl	nb_nics(%rip), %edx
	cmpl	$7, %edx
	jg	.L3069
	.loc 1 5525 0
	movslq	%edx,%rax
	.loc 1 5534 0
	leaq	1360(%rsp), %rdi
	movl	$1024, %esi
	.loc 1 5525 0
	leaq	(%rax,%rax,2), %rax
	leaq	0(,%rax,8), %rbp
	.loc 1 5532 0
	leal	86(%rdx), %eax
	.loc 1 5534 0
	movl	$.LC357, %edx
	.loc 1 5525 0
	leaq	nd_table(%rbp), %rcx
	.loc 1 5527 0
	movb	$82, nd_table(%rbp)
	.loc 1 5528 0
	movb	$84, nd_table+1(%rbp)
	.loc 1 5529 0
	movb	$0, nd_table+2(%rbp)
	.loc 1 5530 0
	movb	$18, nd_table+3(%rbp)
	.loc 1 5525 0
	movq	%rcx, 16(%rsp)
	.loc 1 5534 0
	movq	%r13, %rcx
	.loc 1 5531 0
	movb	$52, nd_table+4(%rbp)
	.loc 1 5532 0
	movb	%al, nd_table+5(%rbp)
	.loc 1 5534 0
	call	get_param_value
	testl	%eax, %eax
	je	.L2589
.LBB573:
	.loc 1 3807 0
	leaq	1360(%rsp), %rax
	movq	%rax, 176(%rsp)
.LBB574:
	.loc 1 3812 0
	call	__errno_location
	movl	$0, (%rax)
	.loc 1 3813 0
	movq	176(%rsp), %rdi
	leaq	184(%rsp), %rsi
	.loc 1 3812 0
	movq	%rax, %rbx
	.loc 1 3813 0
	xorl	%edx, %edx
	call	strtol
	movq	%rax, %rcx
	.loc 1 3814 0
	movl	(%rbx), %eax
	testl	%eax, %eax
	jne	.L2591
	movq	184(%rsp), %rax
	cmpb	$0, (%rax)
	movq	%rcx, %rax
	notq	%rax
	sete	%dl
	shrq	$63, %rax
	testl	%eax, %edx
	je	.L2591
	cmpq	$16777215, %rcx
	jg	.L2591
	.loc 1 3816 0
	movq	%rcx, %rax
	.loc 1 3818 0
	movb	%cl, nd_table+5(%rbp)
	.loc 1 3816 0
	shrq	$16, %rax
	movb	%al, nd_table+3(%rbp)
	.loc 1 3817 0
	movq	%rcx, %rax
	shrq	$8, %rax
	movb	%al, nd_table+4(%rbp)
.L2589:
.LBE574:
.LBE573:
	.loc 1 5540 0
	leaq	1360(%rsp), %rdi
	movq	%r13, %rcx
	movl	$.LC359, %edx
	movl	$1024, %esi
	call	get_param_value
	testl	%eax, %eax
	je	.L2602
	.loc 1 5541 0
	leaq	1360(%rsp), %rdi
	call	__strdup
	movq	16(%rsp), %rdx
	movq	%rax, 8(%rdx)
.L2602:
	.loc 1 5543 0
	movq	16(%rsp), %rcx
	movq	%r14, 16(%rcx)
	.loc 1 5544 0
	incl	nb_nics(%rip)
	.loc 1 5545 0
	incl	24(%r14)
.L3017:
.LBE572:
	.loc 1 4052 0
	xorl	%ebx, %ebx
.L2721:
.LBE569:
.LBE567:
	.loc 1 5490 0
	testl	%ebx, %ebx
	js	.L3024
.L2572:
	.loc 1 9937 0
	incl	%r12d
	jmp	.L3011
.L2938:
.LBB575:
.LBB576:
.LBB577:
	.loc 1 1285 0
	movq	40(%rsp), %rdi
	call	free
	.loc 1 1287 0
	testl	%r12d, %r12d
	je	.L2489
	.loc 1 1289 0
	cmpl	$4, %r12d
	movl	%r12d, %ebx
	jge	.L2489
	movslq	%r12d,%rax
	leaq	(%rax,%rax,2), %rax
	salq	$4, %rax
	addq	$alarm_timers, %rax
.L2493:
	incl	%ebx
	.loc 1 1290 0
	movq	$0, (%rax)
	addq	$48, %rax
	.loc 1 1289 0
	cmpl	$4, %ebx
	jl	.L2493
.L2489:
	.loc 1 1294 0
	xorl	%eax, %eax
	call	show_available_alarms
	jmp	.L3037
.L2582:
.LBE577:
.LBE576:
.LBE575:
.LBB578:
.LBB579:
.LBB580:
	.loc 1 5548 0
	cld
	leaq	1296(%rsp), %rsi
	movl	$.LC267, %edi
	movl	$5, %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
.LBE580:
	.loc 1 5551 0
	xorl	%ebx, %ebx
	.loc 1 5548 0
	cmpb	%al, %dl
	je	.L2721
.LBB581:
	.loc 1 5554 0
	leaq	1296(%rsp), %rsi
	movl	$.LC360, %edi
	movl	$5, %ecx
.LBE581:
	repz
	cmpsb
	je	.L3070
.LBB582:
.LBB583:
	.loc 1 5573 0
	movzbl	%r8b, %eax
	subl	$116, %eax
	jne	.L2624
	movzbl	1297(%rsp), %eax
	subl	$97, %eax
	jne	.L2624
	movzbl	1298(%rsp), %eax
	subl	$112, %eax
	jne	.L2624
	movzbl	1299(%rsp), %eax
.L2624:
.LBE583:
.LBE582:
	testl	%eax, %eax
	je	.L3071
.LBB584:
	.loc 1 5597 0
	cld
	leaq	1296(%rsp), %rsi
	movl	$.LC373, %edi
	movl	$7, %ecx
.LBE584:
	repz
	cmpsb
	jne	.L2667
	.loc 1 5598 0
	leaq	1360(%rsp), %rdi
	movq	%r13, %rcx
	movl	$.LC363, %edx
	movl	$1024, %esi
	call	get_param_value
	testl	%eax, %eax
	jle	.L2673
.LBB585:
	.loc 1 5600 0
	leaq	1360(%rsp), %rdi
	xorl	%edx, %edx
	xorl	%esi, %esi
	.loc 1 5601 0
	movl	$-1, %ebx
	.loc 1 5600 0
	call	strtol
	.loc 1 5602 0
	movl	$1, %edx
	movl	%eax, %esi
	movq	%r14, %rdi
	call	net_socket_fd_init
	testq	%rax, %rax
	je	.L2675
	.loc 1 5603 0
	xorl	%ebx, %ebx
.L2675:
.LBE585:
	.loc 1 5617 0
	incl	28(%r14)
.L2603:
	.loc 1 5643 0
	testl	%ebx, %ebx
	jns	.L2572
.L2984:
	.loc 1 5644 0
	movq	stderr(%rip), %rdi
	leaq	1296(%rsp), %rdx
	movl	$.LC385, %esi
	xorl	%eax, %eax
	call	fprintf
	jmp	.L2721
	.p2align 4,,7
.L3043:
.LBE579:
.LBE578:
.LBB586:
	.loc 1 9307 0
	movq	(%r14), %rdx
	movq	%r12, %rcx
	movl	$.LC293, %esi
	jmp	.L3034
.L3067:
.LBE586:
.LBB587:
.LBB588:
	.loc 1 5510 0
	leaq	1360(%rsp), %rdi
	xorl	%edx, %edx
	xorl	%esi, %esi
	call	strtol
	movl	%eax, %ebx
	jmp	.L2579
.L2943:
.LBE588:
.LBE587:
	.loc 1 9941 0
	movq	first_vlan(%rip), %rbp
	jmp	.L3020
.L2725:
	movq	16(%rbp), %rbp
.L3020:
	testq	%rbp, %rbp
	je	.L2949
	.loc 1 9942 0
	cmpq	$0, 24(%rbp)
	je	.L2725
	.loc 1 9944 0
	movl	24(%rbp), %eax
	testl	%eax, %eax
	je	.L3072
	.loc 1 9948 0
	movl	28(%rbp), %r14d
	testl	%r14d, %r14d
	jne	.L2725
	.loc 1 9949 0
	movl	(%rbp), %edx
	movq	stderr(%rip), %rdi
	movl	$.LC387, %esi
	xorl	%eax, %eax
	call	fprintf
	jmp	.L2725
.L2949:
	.loc 1 9956 0
	testl	%r15d, %r15d
	je	.L2730
.LBB589:
	.loc 1 9958 0
	movl	nb_nics(%rip), %esi
	xorl	%r12d, %r12d
	.loc 1 9957 0
	xorl	%ebp, %ebp
	.loc 1 9958 0
	cmpl	%esi, %r12d
	jge	.L2986
	leaq	256(%rsp), %r13
	jmp	.L2738
	.p2align 4,,7
.L2737:
.LBB590:
	.loc 1 9970 0
	movq	%r13, %rdi
	movslq	%eax,%rbx
	.loc 1 9972 0
	incl	%ebp
	.loc 1 9970 0
	call	__strdup
	.loc 1 9971 0
	incl	nb_option_roms(%rip)
	.loc 1 9970 0
	movq	%rax, option_rom(,%rbx,8)
.L2971:
	movl	nb_nics(%rip), %esi
.L2733:
.LBE590:
	.loc 1 9958 0
	incl	%r12d
	cmpl	%esi, %r12d
	setl	%dl
	xorl	%eax, %eax
	cmpl	$3, %r12d
	setle	%al
	testl	%edx, %eax
	je	.L3073
.L2738:
.LBB591:
	.loc 1 9959 0
	movslq	%r12d,%rax
	.loc 1 9961 0
	movl	%r12d, %ecx
	.loc 1 9959 0
	leaq	(%rax,%rax,2), %rax
	movq	nd_table+8(,%rax,8), %rdx
	.loc 1 9961 0
	movl	%r15d, %eax
	sarl	%cl, %eax
	testb	$1, %al
	je	.L2733
	.loc 1 9964 0
	movq	bios_dir(%rip), %rcx
	.loc 1 9963 0
	testq	%rdx, %rdx
	.loc 1 9964 0
	movl	$.LC388, %r8d
	cmovne	%rdx, %r8
	movl	$1024, %esi
	movl	$.LC389, %edx
	movq	%r13, %rdi
	xorl	%eax, %eax
	call	snprintf
	.loc 1 9965 0
	movq	%r13, %rdi
	call	get_image_size
	testl	%eax, %eax
	jle	.L2971
	.loc 1 9966 0
	movl	nb_option_roms(%rip), %eax
	cmpl	$15, %eax
	jle	.L2737
.L3036:
	.loc 1 9967 0
	movq	stderr(%rip), %rcx
	movl	$21, %edx
	movl	$1, %esi
	movl	$.LC332, %edi
.LBE591:
.LBE589:
.LBB592:
.LBB593:
.LBB594:
.LBB595:
	.loc 1 8096 0
	call	fwrite
	jmp	.L3059
.L3073:
.LBE595:
.LBE594:
.LBE593:
.LBE592:
.LBB596:
	.loc 1 9976 0
	testl	%ebp, %ebp
	je	.L2986
.L2730:
.LBE596:
	.loc 1 9989 0
	movl	vga_ram_size(%rip), %edi
	addl	ram_size(%rip), %edi
	addl	$4194304, %edi
	movl	%edi, phys_ram_size(%rip)
	.loc 1 9991 0
	movslq	%edi,%rdi
	call	qemu_vmalloc
	.loc 1 9992 0
	testq	%rax, %rax
	.loc 1 9991 0
	movq	%rax, phys_ram_base(%rip)
	.loc 1 9992 0
	je	.L3074
	.loc 1 10003 0
	xorl	%edi, %edi
	call	time
	movl	%eax, %edi
	call	srand
	.loc 1 10004 0
	call	random
	.loc 1 10005 0
	movslq	phys_ram_size(%rip),%rdi
	.loc 1 10004 0
	movl	%eax, argos_instance_id(%rip)
	.loc 1 10005 0
	call	argos_bytemap_createz
	testq	%rax, %rax
	movq	%rax, argos_memmap(%rip)
	je	.L3075
	.loc 1 10010 0
	movl	$.LC192, %esi
	movl	$.LC393, %edi
	call	fopen64
	testq	%rax, %rax
	movq	%rax, argos_nt_fl(%rip)
	je	.L3076
	.loc 1 10017 0
	call	bdrv_init
	.loc 1 10021 0
	movl	nb_drives_opt(%rip), %eax
	cmpl	$31, %eax
	jle	.L3077
.L2745:
	.loc 1 10036 0
	xorl	%r12d, %r12d
	cmpl	%eax, %r12d
.L3021:
	jge	.L2953
	.loc 1 10037 0
	movslq	%r12d,%rdi
	movq	64(%rsp), %rdx
	movl	144(%rsp), %esi
	salq	$10, %rdi
	addq	$drives_opt, %rdi
	call	drive_init
	incl	%eax
	je	.L3024
	.loc 1 10036 0
	incl	%r12d
	cmpl	nb_drives_opt(%rip), %r12d
	jmp	.L3021
.L2591:
	movq	176(%rsp), %rdi
	movq	16(%rsp), %rbx
.LBB597:
.LBB598:
.LBB599:
.LBB600:
.LBB601:
	.loc 1 3821 0
	xorl	%ebp, %ebp
.L2601:
	.loc 1 3822 0
	leaq	176(%rsp), %rsi
	movl	$16, %edx
	call	strtol
	.loc 1 3823 0
	cmpl	$5, %ebp
	.loc 1 3822 0
	movb	%al, (%rbx)
	.loc 1 3823 0
	je	.L3078
	.loc 1 3827 0
	movq	176(%rsp), %rcx
	movzbl	(%rcx), %eax
	cmpb	$58, %al
	setne	%dl
	cmpb	$45, %al
	setne	%al
	movzbl	%al, %eax
	testl	%edx, %eax
	jne	.L2980
	.loc 1 3829 0
	leaq	1(%rcx), %rdi
	movq	%rdi, 176(%rsp)
.L2596:
	.loc 1 3821 0
	incl	%ebp
	incq	%rbx
	cmpl	$5, %ebp
	jle	.L2601
	jmp	.L2589
.L3078:
	.loc 1 3824 0
	movq	176(%rsp), %rdi
	cmpb	$0, (%rdi)
	je	.L2596
.L2980:
.LBE601:
.LBE600:
	.loc 1 5536 0
	movq	stderr(%rip), %rcx
	movl	$36, %edx
	movl	$1, %esi
	movl	$.LC358, %edi
.LBE599:
.LBE598:
.LBE597:
.LBB602:
.LBB603:
.LBB604:
.LBB605:
	.loc 1 8096 0
	call	fwrite
	jmp	.L3059
	.p2align 4,,7
.L2972:
.LBE605:
.LBE604:
.LBE603:
.LBE602:
.LBB606:
.LBB607:
.LBB608:
	.loc 1 7962 0
	movq	%rbx, %rax
	jmp	.L2295
.L2953:
.LBE608:
.LBE607:
.LBE606:
	.loc 1 10040 0
	xorl	%r9d, %r9d
	movl	$timer_load, %r8d
	movl	$timer_save, %ecx
	movl	$2, %edx
	xorl	%esi, %esi
	movl	$.LC398, %edi
	call	register_savevm
	.loc 1 10041 0
	movl	$ram_save, %ecx
	movl	$2, %edx
	xorl	%esi, %esi
	xorl	%r9d, %r9d
	movl	$ram_load, %r8d
	movl	$.LC399, %edi
	call	register_savevm
.LBB609:
.LBB610:
	.loc 1 633 0
	xorl	%edx, %edx
	movl	$ioport_read_table, %esi
	movl	$ioport_write_table, %ecx
	.p2align 4,,7
.L2754:
	.loc 1 634 0
	movslq	%edx,%rax
	.loc 1 633 0
	incl	%edx
	cmpl	$65535, %edx
	.loc 1 634 0
	movq	$default_ioport_readb, ioport_read_table(,%rax,8)
	.loc 1 635 0
	movq	$default_ioport_writeb, ioport_write_table(,%rax,8)
	.loc 1 636 0
	movq	$default_ioport_readw, 524288(%rsi,%rax,8)
	.loc 1 637 0
	movq	$default_ioport_writew, 524288(%rcx,%rax,8)
	.loc 1 638 0
	movq	$default_ioport_readl, 1048576(%rsi,%rax,8)
	.loc 1 639 0
	movq	$default_ioport_writel, 1048576(%rcx,%rax,8)
	.loc 1 633 0
	jle	.L2754
.LBE610:
.LBE609:
	.loc 1 10046 0
	xorl	%esi, %esi
	movl	$104, %edx
	movl	$display_state, %edi
	call	memset
	.loc 1 10047 0
	movl	nographic(%rip), %r13d
	testl	%r13d, %r13d
	je	.L2756
.LBB611:
.LBB612:
	.loc 1 6226 0
	movq	$0, display_state(%rip)
	.loc 1 6227 0
	movl	$0, display_state+8(%rip)
	.loc 1 6228 0
	movl	$0, display_state+12(%rip)
	.loc 1 6229 0
	movq	$dumb_update, display_state+48(%rip)
	.loc 1 6230 0
	movq	$dumb_resize, display_state+56(%rip)
	.loc 1 6231 0
	movq	$dumb_refresh, display_state+64(%rip)
.L2758:
.LBE612:
.LBE611:
.LBB613:
	.loc 1 10065 0
	movl	$.LC148, %r8d
	leaq	5776(%rsp), %rsi
	movl	$6, %ecx
	cld
	movq	%r8, %rdi
.LBE613:
	repz
	cmpsb
	jne	.L2762
	leaq	5264(%rsp), %r10
	.loc 1 10066 0
	xorl	%r12d, %r12d
	movl	$.LC400, %r9d
	jmp	.L2784
	.p2align 4,,7
.L3079:
.LBB614:
	.loc 1 10070 0
	movl	$6, %eax
	movq	%r10, %rsi
	movq	%r8, %rdi
	movq	%rax, %rcx
.LBE614:
	repz
	cmpsb
	je	.L2975
	.loc 1 10066 0
	incl	%r12d
	subq	$-128, %r10
	cmpl	$3, %r12d
	jg	.L2762
.L2784:
.LBB615:
	.loc 1 10067 0
	movl	$10, %eax
	movq	%r10, %rsi
	movq	%r9, %rdi
	cld
	movq	%rax, %rcx
.LBE615:
	repz
	cmpsb
	jne	.L3079
	.loc 1 10068 0
	movb	$0, 5776(%rsp)
.L2762:
	.loc 1 10077 0
	cmpb	$0, 5776(%rsp)
	jne	.L3080
.L2785:
	leaq	5264(%rsp), %rbx
	.loc 1 10086 0
	xorl	%r12d, %r12d
.L2798:
.LBB616:
	.loc 1 10088 0
	cmpb	$0, (%rbx)
	.loc 1 10087 0
	movslq	%r12d,%rbp
	.loc 1 10088 0
	je	.L2789
.LBB617:
	cld
	movl	$.LC267, %edi
	movl	$5, %ecx
	movq	%rbx, %rsi
.LBE617:
	repz
	cmpsb
	jne	.L3081
.L2789:
.LBE616:
	.loc 1 10086 0
	incl	%r12d
	subq	$-128, %rbx
	cmpl	$3, %r12d
	jle	.L2798
	leaq	4880(%rsp), %rbx
	.loc 1 10100 0
	xorl	%r12d, %r12d
.L2810:
.LBB618:
	.loc 1 10102 0
	cmpb	$0, (%rbx)
	.loc 1 10101 0
	movslq	%r12d,%rbp
	.loc 1 10102 0
	je	.L2801
.LBB619:
	cld
	movl	$.LC267, %edi
	movl	$5, %ecx
	movq	%rbx, %rsi
.LBE619:
	repz
	cmpsb
	jne	.L3082
.L2801:
.LBE618:
	.loc 1 10100 0
	incl	%r12d
	subq	$-128, %rbx
	cmpl	$2, %r12d
	jle	.L2810
	.loc 1 10114 0
	movq	56(%rsp), %rax
	movq	136(%rsp), %rdx
	movl	$display_state, %ecx
	movq	120(%rsp), %r9
	movq	128(%rsp), %r8
	movl	vga_ram_size(%rip), %esi
	movl	ram_size(%rip), %edi
	movq	%rax, 8(%rsp)
	movq	64(%rsp), %rax
	movq	%rdx, (%rsp)
	movq	112(%rsp), %rdx
	call	*16(%rax)
	.loc 1 10127 0
	cmpq	$0, display_state+64(%rip)
	jne	.L3083
.L2817:
	.loc 1 10133 0
	movl	160(%rsp), %r12d
	testl	%r12d, %r12d
	jne	.L3084
.L2818:
	.loc 1 10144 0
	cmpq	$0, 72(%rsp)
	je	.L2820
	.loc 1 10145 0
	movq	72(%rsp), %rdi
	call	do_loadvm
.L2820:
.LBB620:
.LBB621:
	.loc 1 8985 0
	xorl	%ebp, %ebp
	movl	$drives_table, %r12d
.L2827:
.LBB622:
.LBB623:
	.loc 1 8975 0
	cmpl	nb_drives(%rip), %ebp
	jg	.L2823
	movq	(%r12), %rbx
.LBE623:
.LBE622:
	.loc 1 8987 0
	testq	%rbx, %rbx
	je	.L2823
	.loc 1 8988 0
	movq	%rbx, %rdi
	call	bdrv_get_device_name
	movq	%rbx, %rdi
	movq	%rax, %rsi
	call	qemu_key_check
.L2823:
	.loc 1 8985 0
	incl	%ebp
	addq	$24, %r12
	cmpl	$5, %ebp
	jle	.L2827
.LBE621:
.LBE620:
	.loc 1 10150 0
	movl	autostart(%rip), %ebp
	testl	%ebp, %ebp
	jne	.L3085
.L2829:
	.loc 1 10155 0
	movl	daemonize(%rip), %ebx
	testl	%ebx, %ebx
	je	.L2830
	leaq	200(%rsp), %rbx
.LBB624:
	.loc 1 10156 0
	movb	$0, 167(%rsp)
	jmp	.L2831
	.p2align 4,,7
.L3086:
	.loc 1 10162 0
	call	__errno_location
	cmpl	$4, (%rax)
	jne	.L3024
.L2831:
	.loc 1 10161 0
	movl	4(%rbx), %edi
	leaq	167(%rsp), %rsi
	movl	$1, %edx
	call	write
	.loc 1 10162 0
	cmpq	$-1, %rax
	je	.L3086
	.loc 1 10165 0
	cmpq	$1, %rax
	jmp	.L3027
	.p2align 4,,7
.L3087:
	.loc 1 10168 0
	xorl	%eax, %eax
	movl	$2, %esi
	movl	$.LC408, %edi
	call	open64
	cmpl	$-1, %eax
	movl	%eax, %ebx
	jne	.L2838
	call	__errno_location
	cmpl	$4, (%rax)
.L3027:
	.loc 1 10165 0
	.p2align 4,,2
	je	.L3087
.LBE624:
.LBB625:
.LBB626:
.LBB627:
.LBB628:
	.loc 1 8098 0
	movl	$1, %edi
	.p2align 4,,4
	jmp	.L3025
	.p2align 4,,7
.L3065:
.LBE628:
.LBE627:
.LBE626:
.LBE625:
.LBB629:
	.loc 1 519 0
	movl	ctrlsock_lport(%rip), %ebp
.LBB630:
	.loc 1 525 0
	movl	$.LC347, %edi
	xorl	%eax, %eax
	movl	%ebp, %edx
	call	printf
	.loc 1 527 0
	movl	$24, %edi
	call	qemu_mallocz
	.loc 1 528 0
	testq	%rax, %rax
	.loc 1 527 0
	movq	%rax, %r12
	.loc 1 528 0
	je	.L3024
	.loc 1 531 0
	xorl	%edx, %edx
	movl	$1, %esi
	movl	$2, %edi
	call	socket
	testl	%eax, %eax
	movl	%eax, %ebx
	js	.L3088
	.loc 1 536 0
	movl	%eax, %edi
	call	socket_set_nonblock
	.loc 1 541 0
	leaq	192(%rsp), %rcx
	.loc 1 537 0
	movl	$0, 8(%r12)
	.loc 1 538 0
	movl	%ebx, (%r12)
	.loc 1 541 0
	movl	%ebx, %edi
	movl	$4, %r8d
	movl	$2, %edx
	movl	$1, %esi
	.loc 1 540 0
	movl	$1, 192(%rsp)
	.loc 1 541 0
	call	setsockopt
	.loc 1 542 0
	testl	%eax, %eax
	.loc 1 543 0
	movl	$.LC349, %edi
	.loc 1 542 0
	jne	.L3010
	.loc 1 551 0
	movl	%ebx, %edi
	movl	$16, %edx
	movq	%r13, %rsi
	.loc 1 547 0
	movq	$0, 1280(%rsp)
	movq	$0, 1288(%rsp)
.LBB631:
	.loc 1 549 0
	movl	%ebp, %eax
.LBE631:
	.loc 1 548 0
	movl	$0, 1284(%rsp)
.LBB632:
	.loc 1 549 0
#APP
	rorw $8, %ax
#NO_APP
.LBE632:
	movw	%ax, 1282(%rsp)
	.loc 1 551 0
	call	bind
	testl	%eax, %eax
	.loc 1 552 0
	movl	$.LC350, %edi
	.loc 1 551 0
	jne	.L3010
	.loc 1 555 0
	movl	%ebx, %edi
	movl	$1, %esi
	call	listen
	testl	%eax, %eax
	.loc 1 556 0
	movl	$.LC351, %edi
	.loc 1 555 0
	jne	.L3010
	.loc 1 561 0
	movq	%r12, %rcx
	xorl	%edx, %edx
	movl	$control_socket_accept, %esi
	movl	%ebx, %edi
	.loc 1 560 0
	movq	%r12, ctrlsock(%rip)
	.loc 1 561 0
	call	qemu_set_fd_handler
	jmp	.L2556
	.p2align 4,,7
.L2978:
.LBE630:
.LBE629:
.LBB633:
.LBB634:
	.loc 1 1880 0
	movq	stderr(%rip), %rcx
	movl	$41, %edx
	movl	$1, %esi
	movl	$.LC345, %edi
	call	fwrite
	.loc 1 1881 0
	movq	stderr(%rip), %rcx
	movl	$12, %edx
	movl	$1, %esi
	movl	$.LC346, %edi
.LBE634:
.LBE633:
.LBB635:
.LBB636:
.LBB637:
.LBB638:
	.loc 1 8096 0
	call	fwrite
	jmp	.L3059
.L3045:
.LBE638:
.LBE637:
.LBE636:
.LBE635:
.LBB639:
.LBB640:
.LBB641:
.LBB642:
	.loc 1 1267 0
	movq	stderr(%rip), %rdi
	movq	%rbp, %rdx
	movl	$.LC334, %esi
	xorl	%eax, %eax
	call	fprintf
	jmp	.L2486
.L3056:
.LBE642:
.LBE641:
.LBE640:
.LBB643:
	.loc 1 9397 0
	leaq	1(%rax), %r9
.LBB644:
	.loc 1 9398 0
	movl	$5, %eax
	movl	$.LC267, %edi
	cld
	movq	%rax, %rcx
.LBE644:
	.loc 1 9397 0
	movq	%r9, 248(%rsp)
.LBB645:
	.loc 1 9398 0
	movq	%r9, %rsi
	repz
	cmpsb
.LBE645:
	.loc 1 9399 0
	movl	$1, 96(%rsp)
.LBB646:
	.loc 1 9398 0
	seta	%dl
	setb	%al
.LBE646:
	cmpb	%al, %dl
	je	.L2354
.LBB647:
.LBB648:
	.loc 1 9400 0
	movzbl	1(%r8), %eax
	subl	$108, %eax
	jne	.L2343
	movzbl	1(%r9), %eax
	subl	$98, %eax
	jne	.L2343
	movzbl	2(%r9), %eax
	subl	$97, %eax
	jne	.L2343
	movzbl	3(%r9), %eax
.L2343:
.LBE648:
.LBE647:
	testl	%eax, %eax
	.loc 1 9401 0
	movl	$2, 96(%rsp)
	.loc 1 9400 0
	je	.L2354
.LBB649:
	.loc 1 9402 0
	movl	$5, %eax
	movl	$.LC269, %edi
	movq	%r9, %rsi
	cld
	movq	%rax, %rcx
.LBE649:
	repz
	cmpsb
	jne	.L2327
	.loc 1 9403 0
	movl	$0, 96(%rsp)
	jmp	.L2354
	.p2align 4,,7
.L3051:
.LBE643:
	.loc 1 9347 0
	xorl	%edx, %edx
	movq	%rbp, %rsi
	jmp	.L3007
.L2496:
.LBB650:
	.loc 1 9757 0
	leaq	1280(%rsp), %rbx
	movl	$.LC336, %esi
	movq	%rbp, %rdi
	leaq	16(%rbx), %rdx
	leaq	20(%rbx), %rcx
	leaq	4(%rbx), %rax
	leaq	12(%rbx), %r12
	leaq	8(%rbx), %r9
	movq	%rbx, 8(%rsp)
	movq	%rcx, 24(%rsp)
	movq	%rdx, 32(%rsp)
	movq	%rdx, %rcx
	movq	24(%rsp), %rdx
	movq	%rax, (%rsp)
	movq	%r12, %r8
	xorl	%eax, %eax
	call	sscanf
	cmpl	$6, %eax
	je	.L2504
	.loc 1 9765 0
	movq	32(%rsp), %rcx
	movq	24(%rsp), %rdx
	xorl	%eax, %eax
	movq	%r12, %r8
	movl	$.LC337, %esi
	movq	%rbp, %rdi
	call	sscanf
	cmpl	$3, %eax
	jne	.L2507
	.loc 1 9769 0
	movl	$0, 1288(%rsp)
	.loc 1 9770 0
	movl	$0, 1284(%rsp)
	.loc 1 9771 0
	movl	$0, 1280(%rsp)
.L2504:
	.loc 1 9777 0
	movq	%rbx, %rdi
	.loc 1 9775 0
	subl	$1900, 1300(%rsp)
	.loc 1 9776 0
	decl	1296(%rsp)
	.loc 1 9777 0
	call	mktimegm
	movl	%eax, rtc_start_date(%rip)
	.loc 1 9778 0
	incl	%eax
	jne	.L3037
.L2507:
	.loc 1 9780 0
	movq	stderr(%rip), %rcx
	movl	$86, %edx
	movl	$1, %esi
	movl	$.LC338, %edi
	jmp	.L3028
.L3084:
.LBE650:
.LBE639:
	.loc 1 10136 0
	movq	152(%rsp), %rdi
	call	gdbserver_start
	testl	%eax, %eax
	jns	.L2818
	.loc 1 10137 0
	movq	152(%rsp), %rdx
	movl	$.LC407, %esi
.L3019:
.LBB651:
.LBB652:
	.loc 1 5640 0
	movq	stderr(%rip), %rdi
	xorl	%eax, %eax
.L3030:
	call	fprintf
.LBE652:
.LBE651:
.LBB653:
.LBB654:
.LBB655:
.LBB656:
	.loc 1 8098 0
	movl	$1, %edi
	jmp	.L3025
.L3083:
.LBE656:
.LBE655:
.LBE654:
.LBE653:
	.loc 1 10128 0
	movq	rt_clock(%rip), %rdi
	movl	$display_state, %edx
	movl	$gui_update, %esi
	call	qemu_new_timer
	.loc 1 10129 0
	movq	rt_clock(%rip), %rdi
	.loc 1 10128 0
	movq	%rax, display_state+40(%rip)
	.loc 1 10129 0
	call	qemu_get_clock
	movq	display_state+40(%rip), %rdi
	movq	%rax, %rsi
	call	qemu_mod_timer
	jmp	.L2817
.L2838:
.LBB657:
	.loc 1 10172 0
	xorl	%esi, %esi
	movl	%eax, %edi
	call	dup2
	.loc 1 10173 0
	movl	$1, %esi
	movl	%ebx, %edi
	call	dup2
	.loc 1 10174 0
	movl	%ebx, %edi
	movl	$2, %esi
	call	dup2
	.loc 1 10176 0
	movl	%ebx, %edi
	call	close
.L2830:
.LBE657:
.LBB658:
.LBB659:
	.loc 1 8276 0
	movq	first_cpu(%rip), %rdx
	movq	%rdx, cur_cpu(%rip)
	.loc 1 8277 0
	movq	46984(%rdx), %rax
	testq	%rax, %rax
	cmove	%rdx, %rax
	movq	%rax, next_cpu(%rip)
.L2841:
	.loc 1 8279 0
	movl	vm_running(%rip), %r11d
	.loc 1 8548 0
	movl	$10, %edi
	.loc 1 8279 0
	testl	%r11d, %r11d
	je	.L2907
	movq	next_cpu(%rip), %rbp
.L3039:
	.loc 1 8287 0
	movq	%rbp, %rdi
	.loc 1 8283 0
	movq	%rbp, %rbx
	.loc 1 8287 0
	call	cpu_x86_exec
	.loc 1 8294 0
	movl	128(%rbp), %r10d
	.loc 1 8287 0
	movl	%eax, %r12d
	.loc 1 8294 0
	testl	%r10d, %r10d
	je	.L2846
	movl	164(%rbp), %r9d
	testl	%r9d, %r9d
	je	.L2846
	.loc 1 8297 0
	cmpl	$1, 132(%rbp)
	je	.L3089
.L2846:
	.loc 1 8311 0
	movq	46984(%rbp), %rax
	.loc 1 8312 0
	movl	event_pending(%rip), %r8d
	.loc 1 8311 0
	testq	%rax, %rax
	cmove	first_cpu(%rip), %rax
	.loc 1 8312 0
	testl	%r8d, %r8d
	.loc 1 8311 0
	movq	%rax, %rbp
	movq	%rax, next_cpu(%rip)
	.loc 1 8312 0
	jne	.L2976
	.loc 1 8317 0
	cmpl	$65537, %r12d
	je	.L3090
	.loc 1 8322 0
	cmpl	$65539, %r12d
	jne	.L2845
	.loc 1 8325 0
	cmpq	cur_cpu(%rip), %rbx
	.p2align 4,,2
	jne	.L3039
.L2845:
	.loc 1 8330 0
	movl	shutdown_requested(%rip), %edi
	.loc 1 8328 0
	movq	%rbx, cur_cpu(%rip)
	.loc 1 8330 0
	testl	%edi, %edi
	jne	.L2924
	.loc 1 8334 0
	movl	reset_requested(%rip), %esi
	testl	%esi, %esi
	je	.L2855
.LBB660:
.LBB661:
	.loc 1 8088 0
	movq	first_reset_entry(%rip), %rbx
.LBE661:
.LBE660:
	.loc 1 8335 0
	movl	$0, reset_requested(%rip)
	jmp	.L3022
.L3091:
.LBB662:
.LBB663:
	.loc 1 8089 0
	movq	8(%rbx), %rdi
	call	*(%rbx)
	.loc 1 8088 0
	movq	16(%rbx), %rbx
.L3022:
	testq	%rbx, %rbx
	jne	.L3091
	.loc 1 8094 0
	movq	argos_nt_fl(%rip), %rdx
	movl	$.LC314, %esi
	movl	$.LC393, %edi
	call	freopen64
	testq	%rax, %rax
	movq	%rax, argos_nt_fl(%rip)
	je	.L3092
.LBE663:
.LBE662:
	.loc 1 8337 0
	movl	$65536, %r12d
.L2855:
	.loc 1 8339 0
	movl	powerdown_requested(%rip), %ecx
	testl	%ecx, %ecx
	je	.L2862
	.loc 1 8340 0
	movl	$0, powerdown_requested(%rip)
	.loc 1 8546 0
	xorl	%edi, %edi
.L2907:
	.loc 1 8553 0
	call	main_loop_wait
	jmp	.L2841
.L3090:
	.loc 1 8319 0
	movq	%rbx, cur_cpu(%rip)
	jmp	.L3039
.L2976:
	.loc 1 8313 0
	movl	$65536, %r12d
	.loc 1 8314 0
	movl	$0, event_pending(%rip)
	jmp	.L2845
.L2862:
	.loc 1 8344 0
	cmpl	$65538, %r12d
	je	.L3093
	.loc 1 8543 0
	cmpl	$65539, %r12d
	.loc 1 8544 0
	movl	$10, %edi
	.loc 1 8543 0
	je	.L2907
	.loc 1 8546 0
	xorl	%edi, %edi
	.p2align 4,,3
	jmp	.L2907
.L3089:
	.loc 1 8303 0
	movq	144(%rbp), %rdi
	movl	(%rbp), %edx
	movl	$.LC409, %esi
	.loc 1 8299 0
	movl	$0, 164(%rbp)
	.loc 1 8300 0
	movl	$0, 128(%rbp)
	.loc 1 8303 0
	xorl	%eax, %eax
	call	fprintf
	.loc 1 8304 0
	movq	144(%rbp), %rdi
	call	fclose
	.loc 1 8306 0
	xorl	%edi, %edi
	call	vm_stop
	jmp	.L2846
.L3093:
	.loc 1 8538 0
	movl	$65538, %edi
	call	vm_stop
	.loc 1 8546 0
	xorl	%edi, %edi
	.p2align 4,,4
	jmp	.L2907
.L3092:
.LBB664:
.LBB665:
	.loc 1 8096 0
	movq	stderr(%rip), %rcx
	movl	$50, %edx
	movl	$1, %esi
	movl	$.LC410, %edi
	jmp	.L3028
.L2924:
.LBE665:
.LBE664:
	.loc 1 8558 0
	call	cpu_disable_ticks
.LBE659:
.LBE658:
.LBB666:
.LBB667:
	.loc 1 1890 0
	movq	alarm_timer(%rip), %rax
	movq	%rax, %rdi
	call	*24(%rax)
.LBE667:
.LBE666:
	.loc 1 10182 0
	cmpq	$0, ctrlsock_laddr(%rip)
.LBB668:
.LBB669:
	.loc 1 1891 0
	movq	$0, alarm_timer(%rip)
.LBE669:
.LBE668:
	.loc 1 10182 0
	je	.L2910
.LBB670:
.LBB671:
	.loc 1 443 0
	movq	ctrlsock(%rip), %rax
	testq	%rax, %rax
	je	.L2910
	.loc 1 445 0
	movl	8(%rax), %edx
	testl	%edx, %edx
	je	.L2913
	.loc 1 446 0
	movl	4(%rax), %edi
	xorl	%r8d, %r8d
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	xorl	%esi, %esi
	call	qemu_set_fd_handler2
	movq	ctrlsock(%rip), %rax
.L2913:
	.loc 1 447 0
	movl	(%rax), %edi
	xorl	%r8d, %r8d
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	xorl	%esi, %esi
	call	qemu_set_fd_handler2
	.loc 1 448 0
	movq	ctrlsock(%rip), %rdi
	call	qemu_free
	.loc 1 449 0
	movq	$0, ctrlsock(%rip)
.L2910:
.LBE671:
.LBE670:
	.loc 1 10187 0
	movq	first_vlan(%rip), %rbp
	testq	%rbp, %rbp
	je	.L2967
	leaq	256(%rsp), %r13
.L2923:
.LBB672:
	.loc 1 10190 0
	movq	8(%rbp), %rbx
	jmp	.L3023
.L2919:
	movq	24(%rbx), %rbx
.L3023:
	testq	%rbx, %rbx
	je	.L2969
	.loc 1 10191 0
	cmpq	$tap_receive, (%rbx)
	jne	.L2919
.LBB673:
	.loc 1 10195 0
	leaq	40(%rbx), %rdi
	xorl	%eax, %eax
	movq	%r13, %rdx
	movl	$.LC418, %esi
	.loc 1 10193 0
	movq	16(%rbx), %r12
	.loc 1 10195 0
	call	sscanf
	decl	%eax
	jne	.L2919
	cmpb	$0, 12(%r12)
	je	.L2919
	.loc 1 10197 0
	movl	8(%r12), %edx
	leaq	12(%r12), %rdi
	movq	%r13, %rsi
	call	launch_script
	jmp	.L2919
	.p2align 4,,7
.L2969:
.LBE673:
.LBE672:
	.loc 1 10187 0
	movq	16(%rbp), %rbp
	testq	%rbp, %rbp
	jne	.L2923
.L2967:
	.loc 1 10204 0
	addq	$14104, %rsp
	xorl	%eax, %eax
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L3085:
	.loc 1 10151 0
	call	vm_start
	jmp	.L2829
.L2756:
	.loc 1 10050 0
	cmpq	$0, vnc_display(%rip)
	.p2align 4,,3
	je	.L2759
	.loc 1 10051 0
	movl	$display_state, %edi
	call	vnc_display_init
	.loc 1 10052 0
	movq	vnc_display(%rip), %rsi
	movl	$display_state, %edi
	call	vnc_display_open
	testl	%eax, %eax
	jns	.L2758
.LBB674:
.LBB675:
.LBB676:
.LBB677:
	.loc 1 8098 0
	movl	$1, %edi
	jmp	.L3025
.L3081:
.LBE677:
.LBE676:
.LBE675:
.LBE674:
.LBB678:
	.loc 1 10089 0
	movq	%rbx, %rdi
	.p2align 4,,5
	call	qemu_chr_open
	.loc 1 10090 0
	testq	%rax, %rax
	.loc 1 10089 0
	movq	%rax, serial_hds(,%rbp,8)
	.loc 1 10090 0
	je	.L3094
	.loc 1 10095 0
	xorl	%edx, %edx
	movl	$.LC130, %esi
	movq	%rbx, %rdi
	call	strstart
	testl	%eax, %eax
	je	.L2789
	.loc 1 10096 0
	movq	serial_hds(,%rbp,8), %rdi
	movl	%r12d, %edx
	movl	$.LC403, %esi
	xorl	%eax, %eax
	call	qemu_chr_printf
	jmp	.L2789
.L2759:
.LBE678:
	.loc 1 10056 0
	movl	no_frame(%rip), %edx
	movl	full_screen(%rip), %esi
	movl	$display_state, %edi
	call	sdl_display_init
	jmp	.L2758
.L3094:
.LBB679:
	.loc 1 10091 0
	movq	%rbx, %rdx
	movl	$.LC402, %esi
.L3033:
.LBE679:
.LBB680:
	.loc 1 10105 0
	movq	stderr(%rip), %rdi
	jmp	.L3030
.L3080:
.LBE680:
	.loc 1 10078 0
	leaq	5776(%rsp), %rdi
	call	qemu_chr_open
	.loc 1 10079 0
	testq	%rax, %rax
	.loc 1 10078 0
	movq	%rax, %rdi
	.loc 1 10080 0
	leaq	5776(%rsp), %rdx
	movl	$.LC401, %esi
	.loc 1 10079 0
	je	.L3019
	.loc 1 10083 0
	xorl	%esi, %esi
	cmpl	$0, nographic(%rip)
	sete	%sil
	call	monitor_init
	jmp	.L2785
.L3082:
.LBB681:
	.loc 1 10103 0
	movq	%rbx, %rdi
	call	qemu_chr_open
	.loc 1 10104 0
	testq	%rax, %rax
	.loc 1 10103 0
	movq	%rax, parallel_hds(,%rbp,8)
	.loc 1 10104 0
	je	.L3095
	.loc 1 10109 0
	xorl	%edx, %edx
	movl	$.LC130, %esi
	movq	%rbx, %rdi
	call	strstart
	testl	%eax, %eax
	je	.L2801
	.loc 1 10110 0
	movq	parallel_hds(,%rbp,8), %rdi
	movl	%r12d, %edx
	movl	$.LC405, %esi
	xorl	%eax, %eax
	call	qemu_chr_printf
	jmp	.L2801
.L3050:
.LBE681:
.LBB682:
.LBB683:
	.loc 1 9465 0
	movl	$.LC308, %esi
	jmp	.L3029
.L3047:
.LBE683:
.LBB684:
.LBB685:
	.loc 1 4164 0
	movq	%r12, %rdx
	movl	$.LC315, %esi
	jmp	.L3019
.L3046:
	.loc 1 4157 0
	movl	$smb_dir, %edx
	movl	$.LC312, %esi
	jmp	.L3019
.L3048:
.LBE685:
.LBE684:
	.loc 1 9527 0
	movl	$1, %edi
	call	help
	jmp	.L2417
.L3049:
	.loc 1 9488 0
	movq	stderr(%rip), %rcx
	movl	$31, %edx
	movl	$1, %esi
	movl	$.LC310, %edi
	jmp	.L3028
.L3044:
.LBB686:
.LBB687:
	.loc 1 1250 0
	xorl	%eax, %eax
	call	show_available_alarms
.LBE687:
.LBE686:
	.loc 1 9515 0
	xorl	%edi, %edi
	jmp	.L3096
.L2522:
	.loc 1 9825 0
	movq	stderr(%rip), %rcx
	movl	$43, %edx
	movl	$1, %esi
	movl	$.LC339, %edi
	jmp	.L3028
.L3095:
.LBE682:
.LBB688:
	.loc 1 10105 0
	movq	%rbx, %rdx
	movl	$.LC404, %esi
	jmp	.L3033
.L3069:
.LBE688:
.LBB689:
.LBB690:
.LBB691:
	.loc 1 5522 0
	movq	stderr(%rip), %rcx
	movl	$14, %edx
	movl	$1, %esi
	movl	$.LC356, %edi
	jmp	.L3028
.L2327:
.LBE691:
.LBE690:
.LBE689:
.LBB692:
.LBB693:
	.loc 1 9408 0
	movq	stderr(%rip), %rcx
	movl	$34, %edx
	movl	$1, %esi
	movl	$.LC304, %edi
	jmp	.L3028
.L2975:
.LBE693:
.LBE692:
	.loc 1 10072 0
	leaq	5264(%rsp), %rdi
	movl	$.LC400, %edx
	movl	$128, %esi
	.loc 1 10071 0
	movb	$0, 5776(%rsp)
	.loc 1 10072 0
	call	pstrcpy
	jmp	.L2762
.L3052:
.LBB694:
	.loc 1 9335 0
	movq	stdout(%rip), %rdi
	movl	$fprintf, %esi
	call	x86_cpu_list
	.loc 1 9515 0
	xorl	%edi, %edi
	jmp	.L3096
.L3060:
.LBE694:
	.loc 1 9838 0
	movq	stderr(%rip), %rcx
	movl	$47, %edx
	movl	$1, %esi
	movl	$.LC340, %edi
	call	fwrite
	.loc 1 9839 0
	movl	$0, daemonize(%rip)
	jmp	.L2527
.L3061:
.LBB695:
	.loc 1 9845 0
	leaq	200(%rsp), %rdi
	call	pipe
	incl	%eax
	je	.L3024
	.loc 1 9848 0
	call	fork
	.loc 1 9849 0
	testl	%eax, %eax
	.p2align 4,,5
	jle	.L2529
.LBB696:
	.loc 1 9853 0
	movl	204(%rsp), %edi
	call	close
	jmp	.L2530
	.p2align 4,,7
.L3097:
	.loc 1 9857 0
	call	__errno_location
	cmpl	$4, (%rax)
	.p2align 4,,6
	jne	.L3024
.L2530:
	.loc 1 9856 0
	movl	200(%rsp), %edi
	leaq	199(%rsp), %rsi
	movl	$1, %edx
	call	read
	.loc 1 9857 0
	cmpq	$-1, %rax
	je	.L3097
	.loc 1 9860 0
	decq	%rax
	jne	.L3024
	.loc 1 9862 0
	cmpb	$1, 199(%rsp)
	jne	.L3031
	.loc 1 9863 0
	movq	stderr(%rip), %rcx
	movl	$26, %edx
	movl	$1, %esi
	movl	$.LC341, %edi
	jmp	.L3028
.L2389:
.LBE696:
.LBE695:
.LBB697:
.LBB698:
.LBB699:
	.loc 1 4111 0
	movq	stderr(%rip), %rcx
	movl	$65, %edx
	movl	$1, %esi
	movl	$.LC323, %edi
	jmp	.L3028
.L2673:
.LBE699:
.LBE698:
.LBE697:
.LBB700:
.LBB701:
	.loc 1 5604 0
	leaq	1360(%rsp), %rdi
	movq	%r13, %rcx
	movl	$.LC374, %edx
	movl	$1024, %esi
	call	get_param_value
	testl	%eax, %eax
	jle	.L2676
.LBB702:
.LBB703:
	.loc 1 4881 0
	leaq	1360(%rsp), %rsi
	leaq	256(%rsp), %rdi
	call	parse_host_port
	testl	%eax, %eax
	movl	$-1, %edx
	js	.L2702
	.loc 1 4884 0
	movl	$16, %edi
	call	qemu_mallocz
	.loc 1 4885 0
	testq	%rax, %rax
	.loc 1 4884 0
	movq	%rax, %rbp
	.loc 1 4885 0
	movl	$-1, %edx
	je	.L2702
	.loc 1 4888 0
	xorl	%edx, %edx
	movl	$1, %esi
	movl	$2, %edi
	call	socket
	.loc 1 4889 0
	testl	%eax, %eax
	.loc 1 4888 0
	movl	%eax, %ebx
	.loc 1 4889 0
	js	.L3035
	.loc 1 4893 0
	movl	%eax, %edi
	call	socket_set_nonblock
	.loc 1 4897 0
	leaq	172(%rsp), %rcx
	movl	$4, %r8d
	movl	$2, %edx
	movl	$1, %esi
	movl	%ebx, %edi
	.loc 1 4896 0
	movl	$1, 172(%rsp)
	.loc 1 4897 0
	call	setsockopt
	.loc 1 4899 0
	leaq	256(%rsp), %rsi
	movl	%ebx, %edi
	movl	$16, %edx
	call	bind
	.loc 1 4900 0
	testl	%eax, %eax
	.loc 1 4901 0
	movl	$.LC138, %edi
	.loc 1 4900 0
	js	.L3014
	.loc 1 4904 0
	xorl	%esi, %esi
	movl	%ebx, %edi
	call	listen
	.loc 1 4905 0
	testl	%eax, %eax
	js	.L3098
	.loc 1 4909 0
	movq	%r14, (%rbp)
	.loc 1 4910 0
	movl	%ebx, 8(%rbp)
	.loc 1 4911 0
	movq	%rbp, %rcx
	xorl	%edx, %edx
	movl	$net_socket_accept, %esi
	movl	%ebx, %edi
	call	qemu_set_fd_handler
.L3026:
.LBE703:
.LBE702:
.LBB704:
.LBB705:
	.loc 1 4984 0
	xorl	%edx, %edx
.L2702:
.LBE705:
.LBE704:
	.loc 1 4963 0
	movl	%edx, %ebx
	jmp	.L2675
.L2676:
	.loc 1 5606 0
	leaq	1360(%rsp), %rdi
	movq	%r13, %rcx
	movl	$.LC375, %edx
	movl	$1024, %esi
	call	get_param_value
	testl	%eax, %eax
	jle	.L2684
.LBB706:
.LBB707:
	.loc 1 4921 0
	leaq	1360(%rsp), %rsi
	leaq	272(%rsp), %rdi
	call	parse_host_port
	testl	%eax, %eax
	movl	$-1, %edx
	js	.L2702
	.loc 1 4924 0
	xorl	%edx, %edx
	movl	$1, %esi
	movl	$2, %edi
	call	socket
	.loc 1 4925 0
	testl	%eax, %eax
	.loc 1 4924 0
	movl	%eax, %ebx
	.loc 1 4925 0
	js	.L3035
	.loc 1 4929 0
	movl	%eax, %edi
	.loc 1 4931 0
	xorl	%ebp, %ebp
	.loc 1 4929 0
	call	socket_set_nonblock
.L2688:
	.loc 1 4933 0
	leaq	272(%rsp), %rsi
	movl	$16, %edx
	movl	%ebx, %edi
	call	connect
	.loc 1 4934 0
	testl	%eax, %eax
	jns	.L2690
	.loc 1 4935 0
	call	__errno_location
	movl	(%rax), %ecx
	.loc 1 4936 0
	cmpl	$4, %ecx
	sete	%dl
	cmpl	$11, %ecx
	sete	%al
	orl	%edx, %eax
	testb	$1, %al
	jne	.L2688
	.loc 1 4937 0
	cmpl	$115, %ecx
	je	.L2689
	.loc 1 4944 0
	movl	$.LC375, %edi
	call	perror
	.loc 1 4945 0
	movl	%ebx, %edi
	call	close
	jmp	.L3015
.L3098:
.LBE707:
.LBE706:
.LBB708:
.LBB709:
	.loc 1 4906 0
	movl	$.LC374, %edi
.L3014:
	call	perror
.L3015:
.LBE709:
.LBE708:
.LBB710:
.LBB711:
	.loc 1 4945 0
	movl	$-1, %edx
	jmp	.L2702
.L2690:
	.loc 1 4949 0
	movl	$1, %ebp
.L2689:
	.loc 1 4953 0
	movl	%ebp, %edx
	movl	%ebx, %esi
	movq	%r14, %rdi
	call	net_socket_fd_init
	.loc 1 4954 0
	testq	%rax, %rax
	.loc 1 4953 0
	movq	%rax, %rbp
	.loc 1 4954 0
	movl	$-1, %edx
	je	.L2702
	.loc 1 4958 0
	movl	276(%rsp), %edi
.LBB712:
	movzwl	274(%rsp), %ebx
#APP
	rorw $8, %bx
#NO_APP
.LBE712:
	movzwl	%bx, %ebx
	call	inet_ntoa
	movq	(%rbp), %rdi
	movq	%rax, %rcx
	movl	%ebx, %r8d
	movl	$.LC376, %edx
	addq	$40, %rdi
.L3032:
.LBE711:
.LBE710:
.LBB713:
.LBB714:
	.loc 1 4984 0
	movl	$256, %esi
	xorl	%eax, %eax
	call	snprintf
	jmp	.L3026
.L2684:
.LBE714:
.LBE713:
	.loc 1 5608 0
	leaq	1360(%rsp), %rdi
	movq	%r13, %rcx
	movl	$.LC377, %edx
	movl	$1024, %esi
	call	get_param_value
	testl	%eax, %eax
	jle	.L2700
.LBB715:
.LBB716:
	.loc 1 4968 0
	leaq	288(%rsp), %rbx
	leaq	1360(%rsp), %rsi
	movq	%rbx, %rdi
	call	parse_host_port
	testl	%eax, %eax
	movl	$-1, %edx
	js	.L2702
	.loc 1 4972 0
	movq	%rbx, %rdi
	call	net_socket_mcast_create
	.loc 1 4973 0
	testl	%eax, %eax
	.loc 1 4972 0
	movl	%eax, %esi
	.loc 1 4973 0
	movl	$-1, %edx
	js	.L2702
	.loc 1 4976 0
	xorl	%edx, %edx
	movq	%r14, %rdi
	call	net_socket_fd_init
	.loc 1 4977 0
	testq	%rax, %rax
	.loc 1 4976 0
	movq	%rax, %rbp
	.loc 1 4977 0
	movl	$-1, %edx
	je	.L2702
	.loc 1 4980 0
	movq	288(%rsp), %rax
	movq	%rax, 4120(%rbp)
	movq	296(%rsp), %rax
	movq	%rax, 4128(%rbp)
	.loc 1 4984 0
	movl	292(%rsp), %edi
.LBB717:
	movzwl	290(%rsp), %ebx
#APP
	rorw $8, %bx
#NO_APP
.LBE717:
	call	inet_ntoa
	movq	(%rbp), %rdi
	movzwl	%bx, %ebx
	movq	%rax, %rcx
	movl	%ebx, %r8d
	movl	$.LC378, %edx
	addq	$40, %rdi
	jmp	.L3032
.L3035:
.LBE716:
.LBE715:
.LBB718:
.LBB719:
	.loc 1 4926 0
	movl	$.LC373, %edi
	jmp	.L3014
.L2700:
.LBE719:
.LBE718:
	.loc 1 5610 0
	leaq	1360(%rsp), %rdi
	movq	%r13, %rcx
	movl	$.LC86, %edx
	movl	$1024, %esi
	call	get_param_value
	testl	%eax, %eax
	jle	.L2708
.LBB720:
.LBB721:
	.loc 1 5022 0
	leaq	304(%rsp), %rdi
	xorl	%esi, %esi
	movl	$110, %edx
	call	memset
	.loc 1 5025 0
	leaq	1360(%rsp), %rsi
	leaq	306(%rsp), %rdi
	movl	$107, %edx
	.loc 1 5024 0
	movw	$1, 304(%rsp)
	.loc 1 5025 0
	call	strncpy
	.loc 1 5027 0
	movl	$16, %edi
	call	qemu_mallocz
	movq	%rax, %r13
	.loc 1 5028 0
	movl	$-1, %eax
	testq	%r13, %r13
	je	.L2710
	.loc 1 5031 0
	xorl	%edx, %edx
	movl	$1, %edi
	movl	$1, %esi
	call	socket
	.loc 1 5032 0
	testl	%eax, %eax
	.loc 1 5031 0
	movl	%eax, %ebp
	.loc 1 5033 0
	movl	$.LC373, %edi
	.loc 1 5032 0
	js	.L3016
	.loc 1 5037 0
	movl	%eax, %edi
	call	socket_set_nonblock
	.loc 1 5041 0
	leaq	168(%rsp), %rcx
	movl	$4, %r8d
	movl	$2, %edx
	movl	$1, %esi
	movl	%ebp, %edi
	.loc 1 5040 0
	movl	$1, 168(%rsp)
	.loc 1 5041 0
	call	setsockopt
.L2712:
	.loc 1 5044 0
	movq	stderr(%rip), %rdi
	leaq	1360(%rsp), %rdx
	movl	$.LC379, %esi
	xorl	%eax, %eax
	call	fprintf
	.loc 1 5045 0
	leaq	304(%rsp), %rsi
	movl	$110, %edx
	movl	%ebp, %edi
	call	bind
	.loc 1 5046 0
	testl	%eax, %eax
	jns	.L2713
	.loc 1 5047 0
	call	__errno_location
	cmpl	$98, (%rax)
	.p2align 4,,4
	jne	.L2714
	.loc 1 5049 0
	movq	stderr(%rip), %rdi
	leaq	1360(%rsp), %rdx
	movl	$.LC380, %esi
	xorl	%eax, %eax
	call	fprintf
	.loc 1 5050 0
	leaq	1360(%rsp), %rdi
	call	unlink
	cmpl	$-1, %eax
	movl	%eax, %ebx
	jne	.L2712
	.loc 1 5052 0
	movl	$.LC381, %edi
	call	perror
	movl	%ebx, %eax
.L2710:
.LBE721:
.LBE720:
	.loc 1 5017 0
	movl	%eax, %ebx
	jmp	.L2675
.L3054:
.LBE701:
.LBE700:
.LBB722:
	.loc 1 9642 0
	movq	stderr(%rip), %rcx
	movl	$30, %edx
	movl	$1, %esi
	movl	$.LC330, %edi
	jmp	.L3028
.L3057:
.LBB723:
	.loc 1 9542 0
	movl	$.LC325, %edi
	.loc 1 9543 0
	movl	$cpu_log_items, %ebx
	.loc 1 9542 0
	call	puts
	.loc 1 9543 0
	cmpl	$0, cpu_log_items(%rip)
.L3008:
	je	.L3024
	.loc 1 9544 0
	movq	8(%rbx), %rsi
	movq	16(%rbx), %rdx
	xorl	%eax, %eax
	.loc 1 9543 0
	addq	$24, %rbx
	.loc 1 9544 0
	movl	$.LC326, %edi
	call	printf
	.loc 1 9543 0
	movl	(%rbx), %esi
	testl	%esi, %esi
	jmp	.L3008
.L2667:
.LBE723:
.LBE722:
.LBB724:
.LBB725:
	.loc 1 5640 0
	leaq	1296(%rsp), %rdx
	movl	$.LC384, %esi
	jmp	.L3019
.L3071:
.LBB726:
	.loc 1 5577 0
	incl	28(%r14)
	.loc 1 5578 0
	leaq	1360(%rsp), %rdi
	movq	%r13, %rcx
	movl	$.LC363, %edx
	movl	$1024, %esi
	call	get_param_value
	testl	%eax, %eax
	jle	.L2627
	.loc 1 5579 0
	leaq	1360(%rsp), %rdi
	xorl	%edx, %edx
	xorl	%esi, %esi
	.loc 1 5580 0
	movl	$-1, %ebx
	.loc 1 5579 0
	call	strtol
	.loc 1 5581 0
	movq	%r14, %rdi
	movl	%eax, %esi
	call	net_tap_fd_init
	testq	%rax, %rax
	je	.L2984
	.p2align 4,,2
	jmp	.L3017
.L2529:
.LBE726:
.LBE725:
.LBE724:
.LBB727:
	.loc 1 9867 0
	.p2align 4,,9
	jl	.L3024
	.loc 1 9870 0
	.p2align 4,,11
	call	setsid
	.loc 1 9872 0
	.p2align 4,,8
	call	fork
	.loc 1 9873 0
	testl	%eax, %eax
	.p2align 4,,3
	jg	.L3031
	.loc 1 9875 0
	.p2align 4,,6
	jl	.L3024
	.loc 1 9878 0
	movl	$23, %edi
	.p2align 4,,7
	call	umask
	.loc 1 9879 0
	movl	$.LC342, %edi
	call	chdir
	.loc 1 9881 0
	movl	$1, %esi
	movl	$20, %edi
	call	signal
	.loc 1 9882 0
	movl	$1, %esi
	movl	$22, %edi
	call	signal
	.loc 1 9883 0
	movl	$1, %esi
	movl	$21, %edi
	call	signal
	jmp	.L2527
.L2627:
.LBE727:
.LBB728:
.LBB729:
.LBB730:
	.loc 1 5584 0
	leaq	2384(%rsp), %rdi
	movq	%r13, %rcx
	movl	$.LC364, %edx
	movl	$64, %esi
	call	get_param_value
	.loc 1 5585 0
	xorl	%edx, %edx
	testl	%eax, %eax
	movzbl	2384(%rsp), %eax
	.loc 1 5587 0
	leaq	2448(%rsp), %rdi
	movq	%r13, %rcx
	movl	$1024, %esi
	.loc 1 5585 0
	cmovg	%eax, %edx
	movb	%dl, 2384(%rsp)
	.loc 1 5587 0
	movl	$.LC365, %edx
	call	get_param_value
	testl	%eax, %eax
	jne	.L2631
	.loc 1 5588 0
	leaq	2448(%rsp), %rdi
	movl	$.LC230, %edx
	movl	$1024, %esi
	call	pstrcpy
.L2631:
	.loc 1 5590 0
	leaq	256(%rsp), %rdi
	movq	%r13, %rcx
	movl	$.LC366, %edx
	movl	$1024, %esi
	call	get_param_value
	testl	%eax, %eax
	jne	.L2632
	.loc 1 5591 0
	leaq	256(%rsp), %rdi
	movl	$.LC229, %edx
	movl	$1024, %esi
	call	pstrcpy
.L2632:
.LBB731:
.LBB732:
	.loc 1 4490 0
	leaq	2384(%rsp), %rdx
	leaq	3472(%rsp), %rdi
.LBE732:
	.loc 1 4484 0
	leaq	2448(%rsp), %rbp
.LBB733:
	.loc 1 4490 0
	movl	$128, %esi
	xorl	%r13d, %r13d
	call	pstrcpy
	jmp	.L3038
	.p2align 4,,7
.L2640:
.LBB734:
.LBB735:
	.loc 1 4424 0
	testl	%eax, %eax
	js	.L2981
	.loc 1 4428 0
	cld
	leaq	3600(%rsp), %rdi
	movl	$5, %ecx
	movq	%r13, %rax
	.loc 1 4431 0
	leaq	3472(%rsp), %rdx
	.loc 1 4428 0
	rep
	stosq
	.loc 1 4429 0
	movw	$4098, 3616(%rsp)
	.loc 1 4430 0
	cmpb	$0, 3472(%rsp)
	jne	.L3013
	.loc 1 4433 0
	movl	$.LC369, %edx
.L3013:
	leaq	3600(%rsp), %rdi
	movl	$16, %esi
	call	pstrcpy
	.loc 1 4434 0
	leaq	3600(%rsp), %rdx
	xorl	%eax, %eax
	movl	$1074025674, %esi
	movl	%ebx, %edi
	call	ioctl
	.loc 1 4435 0
	testl	%eax, %eax
	je	.L2647
	.loc 1 4436 0
	movq	stderr(%rip), %rcx
	movl	$.LC370, %edi
	movl	$72, %edx
	movl	$1, %esi
	call	fwrite
	.loc 1 4437 0
	movl	%ebx, %edi
	call	close
.L2982:
.LBE735:
.LBE734:
	.loc 1 4493 0
	call	__errno_location
	cmpl	$4, (%rax)
	jne	.L2983
.L3038:
.LBB736:
.LBB737:
	.loc 1 4423 0
	xorl	%eax, %eax
	movl	$2, %esi
	movl	$.LC367, %edi
	call	open64
	cmpl	$-1, %eax
	movl	%eax, %ebx
	jne	.L2640
	call	__errno_location
	cmpl	$4, (%rax)
	.p2align 4,,2
	je	.L3038
.L2981:
	.loc 1 4425 0
	movq	stderr(%rip), %rcx
	movl	$67, %edx
	movl	$1, %esi
	movl	$.LC368, %edi
	call	fwrite
	jmp	.L2982
.L2983:
.LBE737:
.LBE736:
	.loc 1 4494 0
	movl	$-1, %edx
.L2649:
.LBE733:
.LBE731:
	.loc 1 4484 0
	movl	%edx, %ebx
	jmp	.L2603
.L2647:
.LBB738:
.LBB739:
.LBB740:
.LBB741:
	.loc 1 4440 0
	leaq	3600(%rsp), %rdx
	leaq	3472(%rsp), %rdi
	movl	$128, %esi
	call	pstrcpy
	.loc 1 4441 0
	xorl	%eax, %eax
	movl	$2048, %edx
	movl	$4, %esi
	movl	%ebx, %edi
	call	fcntl
.LBE741:
.LBE740:
	.loc 1 4419 0
	cmpl	$-1, %ebx
	je	.L2982
	.loc 1 4494 0
	testl	%ebx, %ebx
	js	.L2983
	.loc 1 4497 0
	leaq	2448(%rsp), %rdx
	testq	%rdx, %rdx
	je	.L2651
.LBB742:
.LBB743:
	movzbl	2448(%rsp), %eax
	subl	$110, %eax
	jne	.L2654
	movzbl	2449(%rsp), %eax
	subl	$111, %eax
	jne	.L2654
	movzbl	2450(%rsp), %eax
.L2654:
.LBE743:
.LBE742:
	testl	%eax, %eax
	jne	.L2650
.L2651:
	.loc 1 4498 0
	movl	$.LC165, %ebp
.L2650:
	.loc 1 4499 0
	cmpb	$0, (%rbp)
	je	.L2657
	.loc 1 4500 0
	leaq	3472(%rsp), %rsi
	movl	%ebx, %edx
	movq	%rbp, %rdi
	call	launch_script
	testl	%eax, %eax
	movl	$-1, %edx
	jne	.L2649
.L2657:
	.loc 1 4503 0
	movl	%ebx, %esi
	movq	%r14, %rdi
	call	net_tap_fd_init
	.loc 1 4504 0
	testq	%rax, %rax
	.loc 1 4503 0
	movq	%rax, %rbx
	.loc 1 4504 0
	movl	$-1, %edx
	je	.L2649
	.loc 1 4506 0
	movq	(%rax), %rdi
	leaq	3472(%rsp), %rcx
	xorl	%eax, %eax
	movq	%rbp, %r8
	movl	$.LC372, %edx
	movl	$256, %esi
	addq	$40, %rdi
	call	snprintf
	.loc 1 4508 0
	leaq	256(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L2660
.LBB744:
.LBB745:
	movzbl	256(%rsp), %eax
	subl	$110, %eax
	jne	.L2663
	movzbl	257(%rsp), %eax
	subl	$111, %eax
	jne	.L2663
	movzbl	258(%rsp), %eax
.L2663:
.LBE745:
.LBE744:
	testl	%eax, %eax
	je	.L2660
	.loc 1 4509 0
	leaq	12(%rbx), %rdi
	leaq	256(%rsp), %rcx
	movl	$.LC300, %edx
	movl	$1024, %esi
	xorl	%eax, %eax
	call	snprintf
.L2660:
	xorl	%edx, %edx
	jmp	.L2649
.L3058:
.LBE739:
.LBE738:
.LBE730:
.LBE729:
.LBE728:
.LBB746:
.LBB747:
	.loc 1 9605 0
	leaq	216(%rsp), %rsi
	.loc 1 9604 0
	incq	%rdi
	.loc 1 9605 0
	movl	$10, %edx
	.loc 1 9604 0
	movq	%rdi, 216(%rsp)
	.loc 1 9605 0
	call	strtol
	.loc 1 9606 0
	cmpl	$8, %eax
	.loc 1 9605 0
	movl	%eax, %ecx
	.loc 1 9606 0
	setne	%dl
	xorl	%eax, %eax
	cmpl	$15, %ecx
	setne	%al
	testl	%edx, %eax
	je	.L2442
	cmpl	$16, %ecx
	setne	%dl
	xorl	%eax, %eax
	cmpl	$24, %ecx
	setne	%al
	testl	%edx, %eax
	je	.L2442
	cmpl	$32, %ecx
	je	.L2442
.L2437:
	.loc 1 9594 0
	movq	stderr(%rip), %rcx
	movl	$34, %edx
	movl	$1, %esi
	movl	$.LC327, %edi
	jmp	.L3028
.L2713:
.LBE747:
.LBE746:
.LBB748:
.LBB749:
.LBB750:
.LBB751:
	.loc 1 5069 0
	movq	stderr(%rip), %rdi
	leaq	1360(%rsp), %rdx
	movl	$.LC382, %esi
	xorl	%eax, %eax
	call	fprintf
	.loc 1 5070 0
	leaq	1360(%rsp), %rdi
	movl	$438, %esi
	call	chmod
	.loc 1 5072 0
	xorl	%esi, %esi
	movl	%ebp, %edi
	call	listen
	.loc 1 5073 0
	testl	%eax, %eax
	js	.L3099
	.loc 1 5078 0
	movq	%r14, (%r13)
	.loc 1 5079 0
	movl	%ebp, 8(%r13)
	.loc 1 5080 0
	movq	%r13, %rcx
	xorl	%edx, %edx
	movl	$net_unixsocket_accept, %esi
	movl	%ebp, %edi
	call	qemu_set_fd_handler
	xorl	%eax, %eax
	jmp	.L2710
.L2714:
	.loc 1 5063 0
	movl	$.LC138, %edi
.L3016:
	.loc 1 5074 0
	call	perror
	movl	$-1, %eax
	jmp	.L2710
.L3099:
	movl	$.LC374, %edi
	jmp	.L3016
.L2708:
.LBE751:
.LBE750:
	.loc 1 5614 0
	movq	%r13, %rdx
	movl	$.LC383, %esi
	jmp	.L3019
.L3010:
.L2562:
.LBE749:
.LBE748:
.LBB752:
.LBB753:
	.loc 1 556 0
	call	perror
	.loc 1 565 0
	movl	%ebx, %edi
	call	close
	.loc 1 566 0
	movq	%r12, %rdi
	call	qemu_free
.LBE753:
.LBE752:
.LBB754:
.LBB755:
.LBB756:
.LBB757:
	.loc 1 8098 0
	movl	$1, %edi
	jmp	.L3025
.L3088:
.LBE757:
.LBE756:
.LBE755:
.LBE754:
.LBB758:
.LBB759:
	.loc 1 532 0
	movl	$.LC348, %edi
	call	perror
.LBE759:
.LBE758:
.LBB760:
.LBB761:
.LBB762:
.LBB763:
	.loc 1 8098 0
	movl	$1, %edi
	jmp	.L3025
.L3062:
.LBE763:
.LBE762:
.LBE761:
.LBE760:
	.loc 1 9888 0
	movl	daemonize(%rip), %eax
	testl	%eax, %eax
	je	.L2542
.LBB764:
	.loc 1 9890 0
	movl	204(%rsp), %edi
	leaq	198(%rsp), %rsi
	movl	$1, %edx
	.loc 1 9889 0
	movb	$1, 198(%rsp)
	.loc 1 9890 0
	call	write
.LBE764:
.LBB765:
.LBB766:
.LBB767:
.LBB768:
	.loc 1 8098 0
	movl	$1, %edi
	jmp	.L3025
.L3063:
.LBE768:
.LBE767:
.LBE766:
.LBE765:
	.loc 1 9906 0
	movl	$1, %edi
	call	help
	.p2align 4,,4
	jmp	.L2544
.L2542:
	.loc 1 9892 0
	movq	stderr(%rip), %rcx
	movl	$27, %edx
	movl	$1, %esi
	movl	$.LC343, %edi
	jmp	.L3028
.L2932:
.LBB769:
.LBB770:
	.loc 1 9327 0
	xorl	%edi, %edi
	cmpb	$63, (%rbp)
	setne	%dil
.LBE770:
.LBE769:
.LBB771:
.LBB772:
.LBB773:
.LBB774:
	.loc 1 8098 0
	call	exit
.L3068:
.LBE774:
.LBE773:
.LBE772:
.LBE771:
.LBB775:
.LBB776:
	.loc 1 5514 0
	movl	%ebx, %edx
	movl	$.LC355, %esi
	jmp	.L3029
.L3066:
.LBE776:
.LBE775:
	.loc 1 9930 0
	leaq	5904(%rsp), %rdi
	movl	$.LC352, %edx
	movl	$256, %esi
	call	pstrcpy
	.loc 1 9932 0
	leaq	5904(%rsp), %rdi
	movl	$.LC353, %edx
	movl	$256, %esi
	addq	$256, %rdi
	call	pstrcpy
	.loc 1 9934 0
	movl	$2, 92(%rsp)
	jmp	.L2569
.L3072:
	.loc 1 9945 0
	movl	(%rbp), %edx
	movl	$.LC386, %esi
	jmp	.L3029
.L3055:
.LBB777:
	.loc 1 9633 0
	movq	stderr(%rip), %rcx
	movl	$28, %edx
	movl	$1, %esi
	movl	$.LC329, %edi
	jmp	.L3028
.L3070:
.LBE777:
.LBB778:
.LBB779:
	.loc 1 5555 0
	leaq	1360(%rsp), %rdi
	movq	%r13, %rcx
	movl	$.LC361, %edx
	movl	$1024, %esi
	call	get_param_value
	testl	%eax, %eax
	je	.L2617
	.loc 1 5556 0
	leaq	1360(%rsp), %rdx
	movl	$33, %esi
	movl	$slirp_hostname, %edi
	call	pstrcpy
.L2617:
	.loc 1 5558 0
	incl	28(%r14)
.LBB780:
.LBB781:
	.loc 1 4053 0
	movl	slirp_inited(%rip), %eax
	testl	%eax, %eax
	jne	.L2618
	.loc 1 4054 0
	movl	$1, slirp_inited(%rip)
	.loc 1 4055 0
	call	slirp_init
.L2618:
	.loc 1 4057 0
	xorl	%edx, %edx
	movq	%r14, %rdi
	xorl	%ecx, %ecx
	movl	$slirp_receive, %esi
	call	qemu_new_vlan_client
	.loc 1 4059 0
	leaq	40(%rax), %rdi
	.loc 1 4057 0
	movq	%rax, slirp_vc(%rip)
	.loc 1 4059 0
	movl	$.LC362, %edx
	movl	$256, %esi
	xorl	%eax, %eax
	call	snprintf
	jmp	.L3017
.L2986:
.LBE781:
.LBE780:
.LBE779:
.LBE778:
.LBB782:
	.loc 1 9977 0
	movq	stderr(%rip), %rcx
	movl	$42, %edx
	movl	$1, %esi
	movl	$.LC390, %edi
	jmp	.L3028
.L3077:
.LBE782:
	.loc 1 10022 0
	xorl	%eax, %eax
	movl	$.LC395, %edi
	call	drive_add
	movl	nb_drives_opt(%rip), %eax
	.loc 1 10026 0
	cmpl	$31, %eax
	jg	.L2745
	.loc 1 10027 0
	xorl	%esi, %esi
	xorl	%eax, %eax
	movl	$.LC396, %edi
	call	drive_add
	movl	nb_drives_opt(%rip), %eax
	.loc 1 10031 0
	cmpl	$31, %eax
	jg	.L2745
	.loc 1 10032 0
	movl	$.LC397, %edi
	xorl	%eax, %eax
	call	drive_add
	movl	nb_drives_opt(%rip), %eax
	jmp	.L2745
.L3076:
	.loc 1 10011 0
	movq	stderr(%rip), %rcx
	movl	$51, %edx
	movl	$1, %esi
	movl	$.LC394, %edi
	jmp	.L3028
.L3075:
	.loc 1 10006 0
	movq	stderr(%rip), %rcx
	movl	$36, %edx
	movl	$1, %esi
	movl	$.LC392, %edi
	jmp	.L3028
.L3074:
	.loc 1 9993 0
	movq	stderr(%rip), %rcx
	movl	$35, %edx
	movl	$1, %esi
	movl	$.LC391, %edi
	jmp	.L3028
.LFE525:
	.size	main, .-main
	.comm	isa_pic,8,8
	.comm	nb_nics,4,4
	.comm	nd_table,192,32
	.comm	vm_running,4,4
	.comm	qemu_name,8,8
	.comm	ram_size,4,4
	.comm	option_rom,128,32
	.comm	nb_option_roms,4,4
	.comm	nb_drives,4,4
	.comm	drives_table,792,32
	.comm	serial_hds,32,32
	.comm	parallel_hds,24,16
	.comm	rt_clock,8,8
	.comm	vm_clock,8,8
	.comm	ticks_per_sec,8,8
	.comm	ioport_opaque,524288,32
	.comm	ioport_read_table,1572864,32
	.comm	ioport_write_table,1572864,32
	.comm	bs_snapshots,8,8
	.comm	vga_ram_size,4,4
	.local	display_state
	.comm	display_state,104,32
	.comm	nographic,4,4
	.local	first_vlan
	.comm	first_vlan,8,8
	.comm	vnc_display,8,8
	.comm	nb_drives_opt,4,4
	.comm	drives_opt,32768,32
	.local	cur_cpu
	.comm	cur_cpu,8,8
	.local	next_cpu
	.comm	next_cpu,8,8
	.local	qemu_put_kbd_event
	.comm	qemu_put_kbd_event,8,8
	.local	qemu_put_kbd_event_opaque
	.comm	qemu_put_kbd_event_opaque,8,8
	.local	qemu_put_mouse_event_head
	.comm	qemu_put_mouse_event_head,8,8
	.local	qemu_put_mouse_event_current
	.comm	qemu_put_mouse_event_current,8,8
	.local	use_rt_clock
	.comm	use_rt_clock,4,4
	.local	cpu_ticks_prev
	.comm	cpu_ticks_prev,8,8
	.local	cpu_ticks_offset
	.comm	cpu_ticks_offset,8,8
	.local	cpu_clock_offset
	.comm	cpu_clock_offset,8,8
	.local	cpu_ticks_enabled
	.comm	cpu_ticks_enabled,4,4
	.local	alarm_timer
	.comm	alarm_timer,8,8
	.local	active_timers
	.comm	active_timers,16,16
	.local	term_timestamps
	.comm	term_timestamps,4,4
	.local	term_timestamps_start
	.comm	term_timestamps_start,8,8
	.local	term_fifo
	.comm	term_fifo,1,1
	.local	term_fifo_size
	.comm	term_fifo_size,4,4
	.local	oldtty
	.comm	oldtty,60,32
	.local	old_fd0_flags
	.comm	old_fd0_flags,4,4
	.local	slirp_inited
	.comm	slirp_inited,4,4
	.local	slirp_vc
	.comm	slirp_vc,8,8
	.comm	smb_dir,1024,32
	.local	used_usb_ports
	.comm	used_usb_ports,8,8
	.local	free_usb_ports
	.comm	free_usb_ports,8,8
	.local	first_io_handler
	.comm	first_io_handler,8,8
	.local	first_polling_entry
	.comm	first_polling_entry,8,8
	.local	first_se
	.comm	first_se,8,8
	.local	vm_change_state_head
	.comm	vm_change_state_head,8,8
	.local	vm_stop_cb
	.comm	vm_stop_cb,8,8
	.local	vm_stop_opaque
	.comm	vm_stop_opaque,8,8
	.local	first_reset_entry
	.comm	first_reset_entry,8,8
	.local	reset_requested
	.comm	reset_requested,4,4
	.local	shutdown_requested
	.comm	shutdown_requested,4,4
	.local	powerdown_requested
	.comm	powerdown_requested,4,4
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
	.quad	.LFB448
	.quad	.LFE448-.LFB448
	.byte	0x4
	.long	.LCFI3-.LFB448
	.byte	0x8d
	.uleb128 0x3
	.byte	0x8c
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x5
	.byte	0x83
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI5-.LCFI3
	.byte	0xe
	.uleb128 0x30
	.byte	0x8e
	.uleb128 0x2
	.align 8
.LEFDE0:
.LSFDE2:
	.long	.LEFDE2-.LASFDE2
.LASFDE2:
	.long	.Lframe0
	.quad	.LFB449
	.quad	.LFE449-.LFB449
	.align 8
.LEFDE2:
.LSFDE4:
	.long	.LEFDE4-.LASFDE4
.LASFDE4:
	.long	.Lframe0
	.quad	.LFB257
	.quad	.LFE257-.LFB257
	.align 8
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.quad	.LFB258
	.quad	.LFE258-.LFB258
	.align 8
.LEFDE6:
.LSFDE8:
	.long	.LEFDE8-.LASFDE8
.LASFDE8:
	.long	.Lframe0
	.quad	.LFB259
	.quad	.LFE259-.LFB259
	.byte	0x4
	.long	.LCFI7-.LFB259
	.byte	0x86
	.uleb128 0x4
	.byte	0x83
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI9-.LCFI7
	.byte	0x8d
	.uleb128 0x2
	.byte	0x8c
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI10-.LCFI9
	.byte	0xe
	.uleb128 0x30
	.align 8
.LEFDE8:
.LSFDE10:
	.long	.LEFDE10-.LASFDE10
.LASFDE10:
	.long	.Lframe0
	.quad	.LFB260
	.quad	.LFE260-.LFB260
	.byte	0x4
	.long	.LCFI12-.LFB260
	.byte	0x8c
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI13-.LCFI12
	.byte	0x8d
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI15-.LCFI13
	.byte	0xe
	.uleb128 0x30
	.byte	0x83
	.uleb128 0x5
	.align 8
.LEFDE10:
.LSFDE12:
	.long	.LEFDE12-.LASFDE12
.LASFDE12:
	.long	.Lframe0
	.quad	.LFB261
	.quad	.LFE261-.LFB261
	.align 8
.LEFDE12:
.LSFDE14:
	.long	.LEFDE14-.LASFDE14
.LASFDE14:
	.long	.Lframe0
	.quad	.LFB262
	.quad	.LFE262-.LFB262
	.align 8
.LEFDE14:
.LSFDE16:
	.long	.LEFDE16-.LASFDE16
.LASFDE16:
	.long	.Lframe0
	.quad	.LFB266
	.quad	.LFE266-.LFB266
	.align 8
.LEFDE16:
.LSFDE18:
	.long	.LEFDE18-.LASFDE18
.LASFDE18:
	.long	.Lframe0
	.quad	.LFB267
	.quad	.LFE267-.LFB267
	.align 8
.LEFDE18:
.LSFDE20:
	.long	.LEFDE20-.LASFDE20
.LASFDE20:
	.long	.Lframe0
	.quad	.LFB268
	.quad	.LFE268-.LFB268
	.align 8
.LEFDE20:
.LSFDE22:
	.long	.LEFDE22-.LASFDE22
.LASFDE22:
	.long	.Lframe0
	.quad	.LFB269
	.quad	.LFE269-.LFB269
	.align 8
.LEFDE22:
.LSFDE24:
	.long	.LEFDE24-.LASFDE24
.LASFDE24:
	.long	.Lframe0
	.quad	.LFB270
	.quad	.LFE270-.LFB270
	.align 8
.LEFDE24:
.LSFDE26:
	.long	.LEFDE26-.LASFDE26
.LASFDE26:
	.long	.Lframe0
	.quad	.LFB271
	.quad	.LFE271-.LFB271
	.align 8
.LEFDE26:
.LSFDE28:
	.long	.LEFDE28-.LASFDE28
.LASFDE28:
	.long	.Lframe0
	.quad	.LFB272
	.quad	.LFE272-.LFB272
	.align 8
.LEFDE28:
.LSFDE30:
	.long	.LEFDE30-.LASFDE30
.LASFDE30:
	.long	.Lframe0
	.quad	.LFB273
	.quad	.LFE273-.LFB273
	.byte	0x4
	.long	.LCFI16-.LFB273
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI17-.LCFI16
	.byte	0xe
	.uleb128 0xe0
	.align 8
.LEFDE30:
.LSFDE32:
	.long	.LEFDE32-.LASFDE32
.LASFDE32:
	.long	.Lframe0
	.quad	.LFB265
	.quad	.LFE265-.LFB265
	.byte	0x4
	.long	.LCFI18-.LFB265
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE32:
.LSFDE34:
	.long	.LEFDE34-.LASFDE34
.LASFDE34:
	.long	.Lframe0
	.quad	.LFB264
	.quad	.LFE264-.LFB264
	.byte	0x4
	.long	.LCFI19-.LFB264
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE34:
.LSFDE36:
	.long	.LEFDE36-.LASFDE36
.LASFDE36:
	.long	.Lframe0
	.quad	.LFB274
	.quad	.LFE274-.LFB274
	.align 8
.LEFDE36:
.LSFDE38:
	.long	.LEFDE38-.LASFDE38
.LASFDE38:
	.long	.Lframe0
	.quad	.LFB275
	.quad	.LFE275-.LFB275
	.byte	0x4
	.long	.LCFI21-.LFB275
	.byte	0x86
	.uleb128 0x5
	.byte	0x83
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI25-.LCFI21
	.byte	0xe
	.uleb128 0x30
	.byte	0x8e
	.uleb128 0x2
	.byte	0x8d
	.uleb128 0x3
	.byte	0x8c
	.uleb128 0x4
	.align 8
.LEFDE38:
.LSFDE40:
	.long	.LEFDE40-.LASFDE40
.LASFDE40:
	.long	.Lframe0
	.quad	.LFB276
	.quad	.LFE276-.LFB276
	.byte	0x4
	.long	.LCFI26-.LFB276
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
	.quad	.LFB277
	.quad	.LFE277-.LFB277
	.align 8
.LEFDE42:
.LSFDE44:
	.long	.LEFDE44-.LASFDE44
.LASFDE44:
	.long	.Lframe0
	.quad	.LFB278
	.quad	.LFE278-.LFB278
	.align 8
.LEFDE44:
.LSFDE46:
	.long	.LEFDE46-.LASFDE46
.LASFDE46:
	.long	.Lframe0
	.quad	.LFB279
	.quad	.LFE279-.LFB279
	.align 8
.LEFDE46:
.LSFDE48:
	.long	.LEFDE48-.LASFDE48
.LASFDE48:
	.long	.Lframe0
	.quad	.LFB280
	.quad	.LFE280-.LFB280
	.byte	0x4
	.long	.LCFI27-.LFB280
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI28-.LCFI27
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI29-.LCFI28
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE48:
.LSFDE50:
	.long	.LEFDE50-.LASFDE50
.LASFDE50:
	.long	.Lframe0
	.quad	.LFB281
	.quad	.LFE281-.LFB281
	.align 8
.LEFDE50:
.LSFDE52:
	.long	.LEFDE52-.LASFDE52
.LASFDE52:
	.long	.Lframe0
	.quad	.LFB282
	.quad	.LFE282-.LFB282
	.align 8
.LEFDE52:
.LSFDE54:
	.long	.LEFDE54-.LASFDE54
.LASFDE54:
	.long	.Lframe0
	.quad	.LFB284
	.quad	.LFE284-.LFB284
	.byte	0x4
	.long	.LCFI30-.LFB284
	.byte	0xe
	.uleb128 0x30
	.align 8
.LEFDE54:
.LSFDE56:
	.long	.LEFDE56-.LASFDE56
.LASFDE56:
	.long	.Lframe0
	.quad	.LFB285
	.quad	.LFE285-.LFB285
	.align 8
.LEFDE56:
.LSFDE58:
	.long	.LEFDE58-.LASFDE58
.LASFDE58:
	.long	.Lframe0
	.quad	.LFB286
	.quad	.LFE286-.LFB286
	.byte	0x4
	.long	.LCFI31-.LFB286
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE58:
.LSFDE60:
	.long	.LEFDE60-.LASFDE60
.LASFDE60:
	.long	.Lframe0
	.quad	.LFB287
	.quad	.LFE287-.LFB287
	.byte	0x4
	.long	.LCFI32-.LFB287
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE60:
.LSFDE62:
	.long	.LEFDE62-.LASFDE62
.LASFDE62:
	.long	.Lframe0
	.quad	.LFB288
	.quad	.LFE288-.LFB288
	.byte	0x4
	.long	.LCFI33-.LFB288
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE62:
.LSFDE64:
	.long	.LEFDE64-.LASFDE64
.LASFDE64:
	.long	.Lframe0
	.quad	.LFB290
	.quad	.LFE290-.LFB290
	.align 8
.LEFDE64:
.LSFDE66:
	.long	.LEFDE66-.LASFDE66
.LASFDE66:
	.long	.Lframe0
	.quad	.LFB291
	.quad	.LFE291-.LFB291
	.byte	0x4
	.long	.LCFI34-.LFB291
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE66:
.LSFDE68:
	.long	.LEFDE68-.LASFDE68
.LASFDE68:
	.long	.Lframe0
	.quad	.LFB293
	.quad	.LFE293-.LFB293
	.byte	0x4
	.long	.LCFI35-.LFB293
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE68:
.LSFDE70:
	.long	.LEFDE70-.LASFDE70
.LASFDE70:
	.long	.Lframe0
	.quad	.LFB294
	.quad	.LFE294-.LFB294
	.byte	0x4
	.long	.LCFI37-.LFB294
	.byte	0x8c
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI39-.LCFI37
	.byte	0xe
	.uleb128 0x20
	.byte	0x8d
	.uleb128 0x2
	.align 8
.LEFDE70:
.LSFDE72:
	.long	.LEFDE72-.LASFDE72
.LASFDE72:
	.long	.Lframe0
	.quad	.LFB295
	.quad	.LFE295-.LFB295
	.align 8
.LEFDE72:
.LSFDE74:
	.long	.LEFDE74-.LASFDE74
.LASFDE74:
	.long	.Lframe0
	.quad	.LFB296
	.quad	.LFE296-.LFB296
	.align 8
.LEFDE74:
.LSFDE76:
	.long	.LEFDE76-.LASFDE76
.LASFDE76:
	.long	.Lframe0
	.quad	.LFB297
	.quad	.LFE297-.LFB297
	.byte	0x4
	.long	.LCFI40-.LFB297
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI41-.LCFI40
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI42-.LCFI41
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE76:
.LSFDE78:
	.long	.LEFDE78-.LASFDE78
.LASFDE78:
	.long	.Lframe0
	.quad	.LFB298
	.quad	.LFE298-.LFB298
	.align 8
.LEFDE78:
.LSFDE80:
	.long	.LEFDE80-.LASFDE80
.LASFDE80:
	.long	.Lframe0
	.quad	.LFB300
	.quad	.LFE300-.LFB300
	.byte	0x4
	.long	.LCFI43-.LFB300
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI44-.LCFI43
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI45-.LCFI44
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE80:
.LSFDE82:
	.long	.LEFDE82-.LASFDE82
.LASFDE82:
	.long	.Lframe0
	.quad	.LFB301
	.quad	.LFE301-.LFB301
	.byte	0x4
	.long	.LCFI46-.LFB301
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE82:
.LSFDE84:
	.long	.LEFDE84-.LASFDE84
.LASFDE84:
	.long	.Lframe0
	.quad	.LFB515
	.quad	.LFE515-.LFB515
	.align 8
.LEFDE84:
.LSFDE86:
	.long	.LEFDE86-.LASFDE86
.LASFDE86:
	.long	.Lframe0
	.quad	.LFB514
	.quad	.LFE514-.LFB514
	.align 8
.LEFDE86:
.LSFDE88:
	.long	.LEFDE88-.LASFDE88
.LASFDE88:
	.long	.Lframe0
	.quad	.LFB307
	.quad	.LFE307-.LFB307
	.byte	0x4
	.long	.LCFI47-.LFB307
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE88:
.LSFDE90:
	.long	.LEFDE90-.LASFDE90
.LASFDE90:
	.long	.Lframe0
	.quad	.LFB346
	.quad	.LFE346-.LFB346
	.align 8
.LEFDE90:
.LSFDE92:
	.long	.LEFDE92-.LASFDE92
.LASFDE92:
	.long	.Lframe0
	.quad	.LFB345
	.quad	.LFE345-.LFB345
	.align 8
.LEFDE92:
.LSFDE94:
	.long	.LEFDE94-.LASFDE94
.LASFDE94:
	.long	.Lframe0
	.quad	.LFB255
	.quad	.LFE255-.LFB255
	.byte	0x4
	.long	.LCFI48-.LFB255
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI49-.LCFI48
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI50-.LCFI49
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI51-.LCFI50
	.byte	0xe
	.uleb128 0x440
	.align 8
.LEFDE94:
.LSFDE96:
	.long	.LEFDE96-.LASFDE96
.LASFDE96:
	.long	.Lframe0
	.quad	.LFB254
	.quad	.LFE254-.LFB254
	.byte	0x4
	.long	.LCFI52-.LFB254
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI53-.LCFI52
	.byte	0xe
	.uleb128 0xe0
	.align 8
.LEFDE96:
.LSFDE98:
	.long	.LEFDE98-.LASFDE98
.LASFDE98:
	.long	.Lframe0
	.quad	.LFB309
	.quad	.LFE309-.LFB309
	.byte	0x4
	.long	.LCFI54-.LFB309
	.byte	0xe
	.uleb128 0x10
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI55-.LCFI54
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI56-.LCFI55
	.byte	0xe
	.uleb128 0xc0
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE98:
.LSFDE100:
	.long	.LEFDE100-.LASFDE100
.LASFDE100:
	.long	.Lframe0
	.quad	.LFB310
	.quad	.LFE310-.LFB310
	.byte	0x4
	.long	.LCFI57-.LFB310
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI58-.LCFI57
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI59-.LCFI58
	.byte	0xe
	.uleb128 0x40
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE100:
.LSFDE102:
	.long	.LEFDE102-.LASFDE102
.LASFDE102:
	.long	.Lframe0
	.quad	.LFB311
	.quad	.LFE311-.LFB311
	.align 8
.LEFDE102:
.LSFDE104:
	.long	.LEFDE104-.LASFDE104
.LASFDE104:
	.long	.Lframe0
	.quad	.LFB312
	.quad	.LFE312-.LFB312
	.byte	0x4
	.long	.LCFI60-.LFB312
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI61-.LCFI60
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI62-.LCFI61
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE104:
.LSFDE106:
	.long	.LEFDE106-.LASFDE106
.LASFDE106:
	.long	.Lframe0
	.quad	.LFB313
	.quad	.LFE313-.LFB313
	.align 8
.LEFDE106:
.LSFDE108:
	.long	.LEFDE108-.LASFDE108
.LASFDE108:
	.long	.Lframe0
	.quad	.LFB314
	.quad	.LFE314-.LFB314
	.byte	0x4
	.long	.LCFI63-.LFB314
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI64-.LCFI63
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI65-.LCFI64
	.byte	0xe
	.uleb128 0x110
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE108:
.LSFDE110:
	.long	.LEFDE110-.LASFDE110
.LASFDE110:
	.long	.Lframe0
	.quad	.LFB315
	.quad	.LFE315-.LFB315
	.align 8
.LEFDE110:
.LSFDE112:
	.long	.LEFDE112-.LASFDE112
.LASFDE112:
	.long	.Lframe0
	.quad	.LFB316
	.quad	.LFE316-.LFB316
	.byte	0x4
	.long	.LCFI69-.LFB316
	.byte	0xe
	.uleb128 0x40
	.byte	0x8c
	.uleb128 0x2
	.byte	0x86
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x4
	.align 8
.LEFDE112:
.LSFDE114:
	.long	.LEFDE114-.LASFDE114
.LASFDE114:
	.long	.Lframe0
	.quad	.LFB317
	.quad	.LFE317-.LFB317
	.byte	0x4
	.long	.LCFI70-.LFB317
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI71-.LCFI70
	.byte	0xe
	.uleb128 0xd0
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE114:
.LSFDE116:
	.long	.LEFDE116-.LASFDE116
.LASFDE116:
	.long	.Lframe0
	.quad	.LFB318
	.quad	.LFE318-.LFB318
	.byte	0x4
	.long	.LCFI72-.LFB318
	.byte	0xe
	.uleb128 0x30
	.align 8
.LEFDE116:
.LSFDE118:
	.long	.LEFDE118-.LASFDE118
.LASFDE118:
	.long	.Lframe0
	.quad	.LFB321
	.quad	.LFE321-.LFB321
	.align 8
.LEFDE118:
.LSFDE120:
	.long	.LEFDE120-.LASFDE120
.LASFDE120:
	.long	.Lframe0
	.quad	.LFB497
	.quad	.LFE497-.LFB497
	.byte	0x4
	.long	.LCFI74-.LFB497
	.byte	0x86
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI75-.LCFI74
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE120:
.LSFDE122:
	.long	.LEFDE122-.LASFDE122
.LASFDE122:
	.long	.Lframe0
	.quad	.LFB499
	.quad	.LFE499-.LFB499
	.align 8
.LEFDE122:
.LSFDE124:
	.long	.LEFDE124-.LASFDE124
.LASFDE124:
	.long	.Lframe0
	.quad	.LFB323
	.quad	.LFE323-.LFB323
	.byte	0x4
	.long	.LCFI76-.LFB323
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE124:
.LSFDE126:
	.long	.LEFDE126-.LASFDE126
.LASFDE126:
	.long	.Lframe0
	.quad	.LFB324
	.quad	.LFE324-.LFB324
	.align 8
.LEFDE126:
.LSFDE128:
	.long	.LEFDE128-.LASFDE128
.LASFDE128:
	.long	.Lframe0
	.quad	.LFB325
	.quad	.LFE325-.LFB325
	.align 8
.LEFDE128:
.LSFDE130:
	.long	.LEFDE130-.LASFDE130
.LASFDE130:
	.long	.Lframe0
	.quad	.LFB326
	.quad	.LFE326-.LFB326
	.align 8
.LEFDE130:
.LSFDE132:
	.long	.LEFDE132-.LASFDE132
.LASFDE132:
	.long	.Lframe0
	.quad	.LFB327
	.quad	.LFE327-.LFB327
	.align 8
.LEFDE132:
.LSFDE134:
	.long	.LEFDE134-.LASFDE134
.LASFDE134:
	.long	.Lframe0
	.quad	.LFB328
	.quad	.LFE328-.LFB328
	.align 8
.LEFDE134:
.LSFDE136:
	.long	.LEFDE136-.LASFDE136
.LASFDE136:
	.long	.Lframe0
	.quad	.LFB329
	.quad	.LFE329-.LFB329
	.byte	0x4
	.long	.LCFI77-.LFB329
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI78-.LCFI77
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI79-.LCFI78
	.byte	0xe
	.uleb128 0x10f0
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE136:
.LSFDE138:
	.long	.LEFDE138-.LASFDE138
.LASFDE138:
	.long	.Lframe0
	.quad	.LFB330
	.quad	.LFE330-.LFB330
	.align 8
.LEFDE138:
.LSFDE140:
	.long	.LEFDE140-.LASFDE140
.LASFDE140:
	.long	.Lframe0
	.quad	.LFB331
	.quad	.LFE331-.LFB331
	.align 8
.LEFDE140:
.LSFDE142:
	.long	.LEFDE142-.LASFDE142
.LASFDE142:
	.long	.Lframe0
	.quad	.LFB332
	.quad	.LFE332-.LFB332
	.align 8
.LEFDE142:
.LSFDE144:
	.long	.LEFDE144-.LASFDE144
.LASFDE144:
	.long	.Lframe0
	.quad	.LFB334
	.quad	.LFE334-.LFB334
	.byte	0x4
	.long	.LCFI80-.LFB334
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI81-.LCFI80
	.byte	0xe
	.uleb128 0x18
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI82-.LCFI81
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI83-.LCFI82
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI84-.LCFI83
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI85-.LCFI84
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI86-.LCFI85
	.byte	0xe
	.uleb128 0x90
	.byte	0x83
	.uleb128 0x7
	.byte	0x86
	.uleb128 0x6
	.byte	0x8c
	.uleb128 0x5
	.byte	0x8d
	.uleb128 0x4
	.align 8
.LEFDE144:
.LSFDE146:
	.long	.LEFDE146-.LASFDE146
.LASFDE146:
	.long	.Lframe0
	.quad	.LFB337
	.quad	.LFE337-.LFB337
	.byte	0x4
	.long	.LCFI87-.LFB337
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI88-.LCFI87
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI89-.LCFI88
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x2
	.align 8
.LEFDE146:
.LSFDE148:
	.long	.LEFDE148-.LASFDE148
.LASFDE148:
	.long	.Lframe0
	.quad	.LFB338
	.quad	.LFE338-.LFB338
	.align 8
.LEFDE148:
.LSFDE150:
	.long	.LEFDE150-.LASFDE150
.LASFDE150:
	.long	.Lframe0
	.quad	.LFB339
	.quad	.LFE339-.LFB339
	.byte	0x4
	.long	.LCFI90-.LFB339
	.byte	0xe
	.uleb128 0x10
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI91-.LCFI90
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI92-.LCFI91
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI93-.LCFI92
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI94-.LCFI93
	.byte	0xe
	.uleb128 0x30
	.byte	0x86
	.uleb128 0x6
	.byte	0x8c
	.uleb128 0x5
	.byte	0x8d
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI95-.LCFI94
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI96-.LCFI95
	.byte	0xe
	.uleb128 0xb0
	.byte	0x83
	.uleb128 0x7
	.align 8
.LEFDE150:
.LSFDE152:
	.long	.LEFDE152-.LASFDE152
.LASFDE152:
	.long	.Lframe0
	.quad	.LFB340
	.quad	.LFE340-.LFB340
	.byte	0x4
	.long	.LCFI97-.LFB340
	.byte	0xe
	.uleb128 0x10
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI98-.LCFI97
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI99-.LCFI98
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 8
.LEFDE152:
.LSFDE154:
	.long	.LEFDE154-.LASFDE154
.LASFDE154:
	.long	.Lframe0
	.quad	.LFB341
	.quad	.LFE341-.LFB341
	.byte	0x4
	.long	.LCFI102-.LFB341
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x2
	.align 8
.LEFDE154:
.LSFDE156:
	.long	.LEFDE156-.LASFDE156
.LASFDE156:
	.long	.Lframe0
	.quad	.LFB343
	.quad	.LFE343-.LFB343
	.byte	0x4
	.long	.LCFI103-.LFB343
	.byte	0xe
	.uleb128 0x10
	.byte	0x8d
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI104-.LCFI103
	.byte	0xe
	.uleb128 0x18
	.byte	0x8c
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI105-.LCFI104
	.byte	0xe
	.uleb128 0x20
	.byte	0x86
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI106-.LCFI105
	.byte	0xe
	.uleb128 0x28
	.byte	0x83
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI107-.LCFI106
	.byte	0xe
	.uleb128 0x30
	.align 8
.LEFDE156:
.LSFDE158:
	.long	.LEFDE158-.LASFDE158
.LASFDE158:
	.long	.Lframe0
	.quad	.LFB347
	.quad	.LFE347-.LFB347
	.align 8
.LEFDE158:
.LSFDE160:
	.long	.LEFDE160-.LASFDE160
.LASFDE160:
	.long	.Lframe0
	.quad	.LFB348
	.quad	.LFE348-.LFB348
	.byte	0x4
	.long	.LCFI108-.LFB348
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE160:
.LSFDE162:
	.long	.LEFDE162-.LASFDE162
.LASFDE162:
	.long	.Lframe0
	.quad	.LFB349
	.quad	.LFE349-.LFB349
	.byte	0x4
	.long	.LCFI110-.LFB349
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI112-.LCFI110
	.byte	0xe
	.uleb128 0x420
	.byte	0x8c
	.uleb128 0x2
	.align 8
.LEFDE162:
.LSFDE164:
	.long	.LEFDE164-.LASFDE164
.LASFDE164:
	.long	.Lframe0
	.quad	.LFB350
	.quad	.LFE350-.LFB350
	.align 8
.LEFDE164:
.LSFDE166:
	.long	.LEFDE166-.LASFDE166
.LASFDE166:
	.long	.Lframe0
	.quad	.LFB351
	.quad	.LFE351-.LFB351
	.byte	0x4
	.long	.LCFI114-.LFB351
	.byte	0x86
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI116-.LCFI114
	.byte	0xe
	.uleb128 0x20
	.byte	0x8c
	.uleb128 0x2
	.align 8
.LEFDE166:
.LSFDE168:
	.long	.LEFDE168-.LASFDE168
.LASFDE168:
	.long	.Lframe0
	.quad	.LFB354
	.quad	.LFE354-.LFB354
	.byte	0x4
	.long	.LCFI117-.LFB354
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE168:
.LSFDE170:
	.long	.LEFDE170-.LASFDE170
.LASFDE170:
	.long	.Lframe0
	.quad	.LFB355
	.quad	.LFE355-.LFB355
	.byte	0x4
	.long	.LCFI118-.LFB355
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI119-.LCFI118
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE170:
.LSFDE172:
	.long	.LEFDE172-.LASFDE172
.LASFDE172:
	.long	.Lframe0
	.quad	.LFB356
	.quad	.LFE356-.LFB356
	.byte	0x4
	.long	.LCFI120-.LFB356
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE172:
.LSFDE174:
	.long	.LEFDE174-.LASFDE174
.LASFDE174:
	.long	.Lframe0
	.quad	.LFB360
	.quad	.LFE360-.LFB360
	.byte	0x4
	.long	.LCFI122-.LFB360
	.byte	0x86
	.uleb128 0x6
	.byte	0x83
	.uleb128 0x7
	.byte	0x4
	.long	.LCFI124-.LCFI122
	.byte	0x8d
	.uleb128 0x4
	.byte	0x8c
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI127-.LCFI124
	.byte	0xe
	.uleb128 0x90
	.byte	0x8f
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x3
	.align 8
.LEFDE174:
.LSFDE176:
	.long	.LEFDE176-.LASFDE176
.LASFDE176:
	.long	.Lframe0
	.quad	.LFB361
	.quad	.LFE361-.LFB361
	.byte	0x4
	.long	.LCFI128-.LFB361
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE176:
.LSFDE178:
	.long	.LEFDE178-.LASFDE178
.LASFDE178:
	.long	.Lframe0
	.quad	.LFB363
	.quad	.LFE363-.LFB363
	.byte	0x4
	.long	.LCFI130-.LFB363
	.byte	0x86
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI131-.LCFI130
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE178:
.LSFDE180:
	.long	.LEFDE180-.LASFDE180
.LASFDE180:
	.long	.Lframe0
	.quad	.LFB364
	.quad	.LFE364-.LFB364
	.byte	0x4
	.long	.LCFI132-.LFB364
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI133-.LCFI132
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI134-.LCFI133
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE180:
.LSFDE182:
	.long	.LEFDE182-.LASFDE182
.LASFDE182:
	.long	.Lframe0
	.quad	.LFB365
	.quad	.LFE365-.LFB365
	.byte	0x4
	.long	.LCFI137-.LFB365
	.byte	0xe
	.uleb128 0x20
	.byte	0x8c
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE182:
.LSFDE184:
	.long	.LEFDE184-.LASFDE184
.LASFDE184:
	.long	.Lframe0
	.quad	.LFB367
	.quad	.LFE367-.LFB367
	.byte	0x4
	.long	.LCFI138-.LFB367
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE184:
.LSFDE186:
	.long	.LEFDE186-.LASFDE186
.LASFDE186:
	.long	.Lframe0
	.quad	.LFB368
	.quad	.LFE368-.LFB368
	.byte	0x4
	.long	.LCFI139-.LFB368
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI140-.LCFI139
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI141-.LCFI140
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE186:
.LSFDE188:
	.long	.LEFDE188-.LASFDE188
.LASFDE188:
	.long	.Lframe0
	.quad	.LFB369
	.quad	.LFE369-.LFB369
	.byte	0x4
	.long	.LCFI142-.LFB369
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI143-.LCFI142
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI144-.LCFI143
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE188:
.LSFDE190:
	.long	.LEFDE190-.LASFDE190
.LASFDE190:
	.long	.Lframe0
	.quad	.LFB370
	.quad	.LFE370-.LFB370
	.align 8
.LEFDE190:
.LSFDE192:
	.long	.LEFDE192-.LASFDE192
.LASFDE192:
	.long	.Lframe0
	.quad	.LFB372
	.quad	.LFE372-.LFB372
	.align 8
.LEFDE192:
.LSFDE194:
	.long	.LEFDE194-.LASFDE194
.LASFDE194:
	.long	.Lframe0
	.quad	.LFB373
	.quad	.LFE373-.LFB373
	.byte	0x4
	.long	.LCFI145-.LFB373
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE194:
.LSFDE196:
	.long	.LEFDE196-.LASFDE196
.LASFDE196:
	.long	.Lframe0
	.quad	.LFB375
	.quad	.LFE375-.LFB375
	.byte	0x4
	.long	.LCFI147-.LFB375
	.byte	0x83
	.uleb128 0x7
	.byte	0x8c
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI152-.LCFI147
	.byte	0xe
	.uleb128 0x450
	.byte	0x8f
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8d
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x6
	.align 8
.LEFDE196:
.LSFDE198:
	.long	.LEFDE198-.LASFDE198
.LASFDE198:
	.long	.Lframe0
	.quad	.LFB376
	.quad	.LFE376-.LFB376
	.byte	0x4
	.long	.LCFI153-.LFB376
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE198:
.LSFDE200:
	.long	.LEFDE200-.LASFDE200
.LASFDE200:
	.long	.Lframe0
	.quad	.LFB378
	.quad	.LFE378-.LFB378
	.byte	0x4
	.long	.LCFI154-.LFB378
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE200:
.LSFDE202:
	.long	.LEFDE202-.LASFDE202
.LASFDE202:
	.long	.Lframe0
	.quad	.LFB379
	.quad	.LFE379-.LFB379
	.byte	0x4
	.long	.LCFI155-.LFB379
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI156-.LCFI155
	.byte	0xe
	.uleb128 0x18
	.byte	0x8c
	.uleb128 0x3
	.byte	0x8d
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI157-.LCFI156
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI158-.LCFI157
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI159-.LCFI158
	.byte	0xe
	.uleb128 0xd0
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.align 8
.LEFDE202:
.LSFDE204:
	.long	.LEFDE204-.LASFDE204
.LASFDE204:
	.long	.Lframe0
	.quad	.LFB380
	.quad	.LFE380-.LFB380
	.byte	0x4
	.long	.LCFI160-.LFB380
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE204:
.LSFDE206:
	.long	.LEFDE206-.LASFDE206
.LASFDE206:
	.long	.Lframe0
	.quad	.LFB383
	.quad	.LFE383-.LFB383
	.align 8
.LEFDE206:
.LSFDE208:
	.long	.LEFDE208-.LASFDE208
.LASFDE208:
	.long	.Lframe0
	.quad	.LFB386
	.quad	.LFE386-.LFB386
	.byte	0x4
	.long	.LCFI162-.LFB386
	.byte	0x86
	.uleb128 0x5
	.byte	0x83
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI166-.LCFI162
	.byte	0xe
	.uleb128 0x30
	.byte	0x8c
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x2
	.byte	0x8d
	.uleb128 0x3
	.align 8
.LEFDE208:
.LSFDE210:
	.long	.LEFDE210-.LASFDE210
.LASFDE210:
	.long	.Lframe0
	.quad	.LFB388
	.quad	.LFE388-.LFB388
	.byte	0x4
	.long	.LCFI167-.LFB388
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI168-.LCFI167
	.byte	0xe
	.uleb128 0x18
	.byte	0x86
	.uleb128 0x3
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI169-.LCFI168
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI170-.LCFI169
	.byte	0xe
	.uleb128 0x230
	.byte	0x83
	.uleb128 0x4
	.align 8
.LEFDE210:
.LSFDE212:
	.long	.LEFDE212-.LASFDE212
.LASFDE212:
	.long	.Lframe0
	.quad	.LFB387
	.quad	.LFE387-.LFB387
	.byte	0x4
	.long	.LCFI172-.LFB387
	.byte	0x86
	.uleb128 0x4
	.byte	0x83
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI174-.LCFI172
	.byte	0x8d
	.uleb128 0x2
	.byte	0x8c
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI175-.LCFI174
	.byte	0xe
	.uleb128 0x30
	.align 8
.LEFDE212:
.LSFDE214:
	.long	.LEFDE214-.LASFDE214
.LASFDE214:
	.long	.Lframe0
	.quad	.LFB381
	.quad	.LFE381-.LFB381
	.byte	0x4
	.long	.LCFI176-.LFB381
	.byte	0xe
	.uleb128 0x10
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI177-.LCFI176
	.byte	0xe
	.uleb128 0x18
	.byte	0x8e
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI178-.LCFI177
	.byte	0xe
	.uleb128 0x20
	.byte	0x8d
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI179-.LCFI178
	.byte	0xe
	.uleb128 0x28
	.byte	0x8c
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI180-.LCFI179
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI181-.LCFI180
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI182-.LCFI181
	.byte	0xe
	.uleb128 0x160
	.byte	0x83
	.uleb128 0x7
	.byte	0x86
	.uleb128 0x6
	.align 8
.LEFDE214:
.LSFDE216:
	.long	.LEFDE216-.LASFDE216
.LASFDE216:
	.long	.Lframe0
	.quad	.LFB382
	.quad	.LFE382-.LFB382
	.byte	0x4
	.long	.LCFI184-.LFB382
	.byte	0x86
	.uleb128 0x5
	.byte	0x83
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI188-.LCFI184
	.byte	0xe
	.uleb128 0x650
	.byte	0x8e
	.uleb128 0x2
	.byte	0x8d
	.uleb128 0x3
	.byte	0x8c
	.uleb128 0x4
	.align 8
.LEFDE216:
.LSFDE218:
	.long	.LEFDE218-.LASFDE218
.LASFDE218:
	.long	.Lframe0
	.quad	.LFB390
	.quad	.LFE390-.LFB390
	.byte	0x4
	.long	.LCFI189-.LFB390
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE218:
.LSFDE220:
	.long	.LEFDE220-.LASFDE220
.LASFDE220:
	.long	.Lframe0
	.quad	.LFB391
	.quad	.LFE391-.LFB391
	.byte	0x4
	.long	.LCFI191-.LFB391
	.byte	0x86
	.uleb128 0x4
	.byte	0x83
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI194-.LCFI191
	.byte	0xe
	.uleb128 0x30
	.byte	0x8d
	.uleb128 0x2
	.byte	0x8c
	.uleb128 0x3
	.align 8
.LEFDE220:
.LSFDE222:
	.long	.LEFDE222-.LASFDE222
.LASFDE222:
	.long	.Lframe0
	.quad	.LFB392
	.quad	.LFE392-.LFB392
	.byte	0x4
	.long	.LCFI195-.LFB392
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI196-.LCFI195
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI197-.LCFI196
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE222:
.LSFDE224:
	.long	.LEFDE224-.LASFDE224
.LASFDE224:
	.long	.Lframe0
	.quad	.LFB393
	.quad	.LFE393-.LFB393
	.byte	0x4
	.long	.LCFI198-.LFB393
	.byte	0xe
	.uleb128 0x10
	.byte	0x8d
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI199-.LCFI198
	.byte	0xe
	.uleb128 0x18
	.byte	0x8c
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI200-.LCFI199
	.byte	0xe
	.uleb128 0x20
	.byte	0x86
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI201-.LCFI200
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI202-.LCFI201
	.byte	0xe
	.uleb128 0x30
	.byte	0x83
	.uleb128 0x5
	.align 8
.LEFDE224:
.LSFDE226:
	.long	.LEFDE226-.LASFDE226
.LASFDE226:
	.long	.Lframe0
	.quad	.LFB394
	.quad	.LFE394-.LFB394
	.byte	0x4
	.long	.LCFI203-.LFB394
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE226:
.LSFDE228:
	.long	.LEFDE228-.LASFDE228
.LASFDE228:
	.long	.Lframe0
	.quad	.LFB395
	.quad	.LFE395-.LFB395
	.align 8
.LEFDE228:
.LSFDE230:
	.long	.LEFDE230-.LASFDE230
.LASFDE230:
	.long	.Lframe0
	.quad	.LFB396
	.quad	.LFE396-.LFB396
	.align 8
.LEFDE230:
.LSFDE232:
	.long	.LEFDE232-.LASFDE232
.LASFDE232:
	.long	.Lframe0
	.quad	.LFB399
	.quad	.LFE399-.LFB399
	.byte	0x4
	.long	.LCFI204-.LFB399
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI205-.LCFI204
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI206-.LCFI205
	.byte	0xe
	.uleb128 0x420
	.byte	0x83
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x2
	.align 8
.LEFDE232:
.LSFDE234:
	.long	.LEFDE234-.LASFDE234
.LASFDE234:
	.long	.Lframe0
	.quad	.LFB401
	.quad	.LFE401-.LFB401
	.align 8
.LEFDE234:
.LSFDE236:
	.long	.LEFDE236-.LASFDE236
.LASFDE236:
	.long	.Lframe0
	.quad	.LFB402
	.quad	.LFE402-.LFB402
	.byte	0x4
	.long	.LCFI207-.LFB402
	.byte	0xe
	.uleb128 0x10
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI208-.LCFI207
	.byte	0xe
	.uleb128 0x18
	.byte	0x86
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI209-.LCFI208
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x4
	.align 8
.LEFDE236:
.LSFDE238:
	.long	.LEFDE238-.LASFDE238
.LASFDE238:
	.long	.Lframe0
	.quad	.LFB403
	.quad	.LFE403-.LFB403
	.byte	0x4
	.long	.LCFI211-.LFB403
	.byte	0x86
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI212-.LCFI211
	.byte	0xe
	.uleb128 0x1020
	.align 8
.LEFDE238:
.LSFDE240:
	.long	.LEFDE240-.LASFDE240
.LASFDE240:
	.long	.Lframe0
	.quad	.LFB404
	.quad	.LFE404-.LFB404
	.byte	0x4
	.long	.LCFI214-.LFB404
	.byte	0x86
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI216-.LCFI214
	.byte	0xe
	.uleb128 0x20
	.byte	0x8c
	.uleb128 0x2
	.align 8
.LEFDE240:
.LSFDE242:
	.long	.LEFDE242-.LASFDE242
.LASFDE242:
	.long	.Lframe0
	.quad	.LFB406
	.quad	.LFE406-.LFB406
	.byte	0x4
	.long	.LCFI218-.LFB406
	.byte	0x86
	.uleb128 0x6
	.byte	0x83
	.uleb128 0x7
	.byte	0x4
	.long	.LCFI220-.LCFI218
	.byte	0x8d
	.uleb128 0x4
	.byte	0x8c
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI223-.LCFI220
	.byte	0xe
	.uleb128 0x70
	.byte	0x8f
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x3
	.align 8
.LEFDE242:
.LSFDE244:
	.long	.LEFDE244-.LASFDE244
.LASFDE244:
	.long	.Lframe0
	.quad	.LFB408
	.quad	.LFE408-.LFB408
	.byte	0x4
	.long	.LCFI227-.LFB408
	.byte	0xe
	.uleb128 0x30
	.byte	0x8d
	.uleb128 0x2
	.byte	0x8c
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x4
	.align 8
.LEFDE244:
.LSFDE246:
	.long	.LEFDE246-.LASFDE246
.LASFDE246:
	.long	.Lframe0
	.quad	.LFB409
	.quad	.LFE409-.LFB409
	.byte	0x4
	.long	.LCFI228-.LFB409
	.byte	0xe
	.uleb128 0x10
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI229-.LCFI228
	.byte	0xe
	.uleb128 0x18
	.byte	0x86
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI230-.LCFI229
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x4
	.align 8
.LEFDE246:
.LSFDE248:
	.long	.LEFDE248-.LASFDE248
.LASFDE248:
	.long	.Lframe0
	.quad	.LFB410
	.quad	.LFE410-.LFB410
	.align 8
.LEFDE248:
.LSFDE250:
	.long	.LEFDE250-.LASFDE250
.LASFDE250:
	.long	.Lframe0
	.quad	.LFB411
	.quad	.LFE411-.LFB411
	.byte	0x4
	.long	.LCFI231-.LFB411
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI232-.LCFI231
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI233-.LCFI232
	.byte	0xe
	.uleb128 0x20
	.byte	0x8c
	.uleb128 0x4
	.byte	0x8d
	.uleb128 0x3
	.byte	0x8e
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI234-.LCFI233
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI235-.LCFI234
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI236-.LCFI235
	.byte	0xe
	.uleb128 0x1030
	.byte	0x83
	.uleb128 0x6
	.byte	0x86
	.uleb128 0x5
	.align 8
.LEFDE250:
.LSFDE252:
	.long	.LEFDE252-.LASFDE252
.LASFDE252:
	.long	.Lframe0
	.quad	.LFB412
	.quad	.LFE412-.LFB412
	.byte	0x4
	.long	.LCFI238-.LFB412
	.byte	0x86
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI239-.LCFI238
	.byte	0xe
	.uleb128 0x1020
	.align 8
.LEFDE252:
.LSFDE254:
	.long	.LEFDE254-.LASFDE254
.LASFDE254:
	.long	.Lframe0
	.quad	.LFB413
	.quad	.LFE413-.LFB413
	.byte	0x4
	.long	.LCFI241-.LFB413
	.byte	0x86
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI242-.LCFI241
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE254:
.LSFDE256:
	.long	.LEFDE256-.LASFDE256
.LASFDE256:
	.long	.Lframe0
	.quad	.LFB414
	.quad	.LFE414-.LFB414
	.byte	0x4
	.long	.LCFI243-.LFB414
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI244-.LCFI243
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI245-.LCFI244
	.byte	0xe
	.uleb128 0x30
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE256:
.LSFDE258:
	.long	.LEFDE258-.LASFDE258
.LASFDE258:
	.long	.Lframe0
	.quad	.LFB417
	.quad	.LFE417-.LFB417
	.align 8
.LEFDE258:
.LSFDE260:
	.long	.LEFDE260-.LASFDE260
.LASFDE260:
	.long	.Lframe0
	.quad	.LFB418
	.quad	.LFE418-.LFB418
	.byte	0x4
	.long	.LCFI247-.LFB418
	.byte	0x86
	.uleb128 0x4
	.byte	0x83
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI249-.LCFI247
	.byte	0x8d
	.uleb128 0x2
	.byte	0x8c
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI250-.LCFI249
	.byte	0xe
	.uleb128 0x30
	.align 8
.LEFDE260:
.LSFDE262:
	.long	.LEFDE262-.LASFDE262
.LASFDE262:
	.long	.Lframe0
	.quad	.LFB419
	.quad	.LFE419-.LFB419
	.byte	0x4
	.long	.LCFI252-.LFB419
	.byte	0x8d
	.uleb128 0x3
	.byte	0x8c
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI254-.LCFI252
	.byte	0x83
	.uleb128 0x6
	.byte	0x8e
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI256-.LCFI254
	.byte	0xe
	.uleb128 0x60
	.byte	0x86
	.uleb128 0x5
	.align 8
.LEFDE262:
.LSFDE264:
	.long	.LEFDE264-.LASFDE264
.LASFDE264:
	.long	.Lframe0
	.quad	.LFB420
	.quad	.LFE420-.LFB420
	.byte	0x4
	.long	.LCFI257-.LFB420
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI258-.LCFI257
	.byte	0xe
	.uleb128 0x18
	.byte	0x86
	.uleb128 0x3
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI259-.LCFI258
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI260-.LCFI259
	.byte	0xe
	.uleb128 0x40
	.byte	0x83
	.uleb128 0x4
	.align 8
.LEFDE264:
.LSFDE266:
	.long	.LEFDE266-.LASFDE266
.LASFDE266:
	.long	.Lframe0
	.quad	.LFB424
	.quad	.LFE424-.LFB424
	.byte	0x4
	.long	.LCFI261-.LFB424
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI262-.LCFI261
	.byte	0xe
	.uleb128 0x18
	.byte	0x86
	.uleb128 0x3
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI263-.LCFI262
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI264-.LCFI263
	.byte	0xe
	.uleb128 0xa0
	.byte	0x83
	.uleb128 0x4
	.align 8
.LEFDE266:
.LSFDE268:
	.long	.LEFDE268-.LASFDE268
.LASFDE268:
	.long	.Lframe0
	.quad	.LFB426
	.quad	.LFE426-.LFB426
	.align 8
.LEFDE268:
.LSFDE270:
	.long	.LEFDE270-.LASFDE270
.LASFDE270:
	.long	.Lframe0
	.quad	.LFB427
	.quad	.LFE427-.LFB427
	.byte	0x4
	.long	.LCFI265-.LFB427
	.byte	0xe
	.uleb128 0x10
	.byte	0x8e
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI266-.LCFI265
	.byte	0xe
	.uleb128 0x18
	.byte	0x8d
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI267-.LCFI266
	.byte	0xe
	.uleb128 0x20
	.byte	0x8c
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI268-.LCFI267
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI269-.LCFI268
	.byte	0xe
	.uleb128 0x30
	.byte	0x83
	.uleb128 0x6
	.byte	0x86
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI270-.LCFI269
	.byte	0xe
	.uleb128 0xb0
	.align 8
.LEFDE270:
.LSFDE272:
	.long	.LEFDE272-.LASFDE272
.LASFDE272:
	.long	.Lframe0
	.quad	.LFB430
	.quad	.LFE430-.LFB430
	.byte	0x4
	.long	.LCFI271-.LFB430
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI272-.LCFI271
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI273-.LCFI272
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x2
	.align 8
.LEFDE272:
.LSFDE274:
	.long	.LEFDE274-.LASFDE274
.LASFDE274:
	.long	.Lframe0
	.quad	.LFB431
	.quad	.LFE431-.LFB431
	.byte	0x4
	.long	.LCFI274-.LFB431
	.byte	0xe
	.uleb128 0xe0
	.align 8
.LEFDE274:
.LSFDE276:
	.long	.LEFDE276-.LASFDE276
.LASFDE276:
	.long	.Lframe0
	.quad	.LFB432
	.quad	.LFE432-.LFB432
	.align 8
.LEFDE276:
.LSFDE278:
	.long	.LEFDE278-.LASFDE278
.LASFDE278:
	.long	.Lframe0
	.quad	.LFB433
	.quad	.LFE433-.LFB433
	.align 8
.LEFDE278:
.LSFDE280:
	.long	.LEFDE280-.LASFDE280
.LASFDE280:
	.long	.Lframe0
	.quad	.LFB435
	.quad	.LFE435-.LFB435
	.align 8
.LEFDE280:
.LSFDE282:
	.long	.LEFDE282-.LASFDE282
.LASFDE282:
	.long	.Lframe0
	.quad	.LFB436
	.quad	.LFE436-.LFB436
	.byte	0x4
	.long	.LCFI275-.LFB436
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI276-.LCFI275
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI277-.LCFI276
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE282:
.LSFDE284:
	.long	.LEFDE284-.LASFDE284
.LASFDE284:
	.long	.Lframe0
	.quad	.LFB438
	.quad	.LFE438-.LFB438
	.byte	0x4
	.long	.LCFI278-.LFB438
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE284:
.LSFDE286:
	.long	.LEFDE286-.LASFDE286
.LASFDE286:
	.long	.Lframe0
	.quad	.LFB439
	.quad	.LFE439-.LFB439
	.byte	0x4
	.long	.LCFI280-.LFB439
	.byte	0x83
	.uleb128 0x4
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI282-.LCFI280
	.byte	0xe
	.uleb128 0x20
	.byte	0x86
	.uleb128 0x3
	.align 8
.LEFDE286:
.LSFDE288:
	.long	.LEFDE288-.LASFDE288
.LASFDE288:
	.long	.Lframe0
	.quad	.LFB440
	.quad	.LFE440-.LFB440
	.byte	0x4
	.long	.LCFI283-.LFB440
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE288:
.LSFDE290:
	.long	.LEFDE290-.LASFDE290
.LASFDE290:
	.long	.Lframe0
	.quad	.LFB441
	.quad	.LFE441-.LFB441
	.byte	0x4
	.long	.LCFI284-.LFB441
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE290:
.LSFDE292:
	.long	.LEFDE292-.LASFDE292
.LASFDE292:
	.long	.Lframe0
	.quad	.LFB442
	.quad	.LFE442-.LFB442
	.byte	0x4
	.long	.LCFI285-.LFB442
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI286-.LCFI285
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI287-.LCFI286
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE292:
.LSFDE294:
	.long	.LEFDE294-.LASFDE294
.LASFDE294:
	.long	.Lframe0
	.quad	.LFB443
	.quad	.LFE443-.LFB443
	.byte	0x4
	.long	.LCFI288-.LFB443
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE294:
.LSFDE296:
	.long	.LEFDE296-.LASFDE296
.LASFDE296:
	.long	.Lframe0
	.quad	.LFB444
	.quad	.LFE444-.LFB444
	.align 8
.LEFDE296:
.LSFDE298:
	.long	.LEFDE298-.LASFDE298
.LASFDE298:
	.long	.Lframe0
	.quad	.LFB445
	.quad	.LFE445-.LFB445
	.align 8
.LEFDE298:
.LSFDE300:
	.long	.LEFDE300-.LASFDE300
.LASFDE300:
	.long	.Lframe0
	.quad	.LFB446
	.quad	.LFE446-.LFB446
	.align 8
.LEFDE300:
.LSFDE302:
	.long	.LEFDE302-.LASFDE302
.LASFDE302:
	.long	.Lframe0
	.quad	.LFB450
	.quad	.LFE450-.LFB450
	.byte	0x4
	.long	.LCFI289-.LFB450
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI290-.LCFI289
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI291-.LCFI290
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE302:
.LSFDE304:
	.long	.LEFDE304-.LASFDE304
.LASFDE304:
	.long	.Lframe0
	.quad	.LFB451
	.quad	.LFE451-.LFB451
	.align 8
.LEFDE304:
.LSFDE306:
	.long	.LEFDE306-.LASFDE306
.LASFDE306:
	.long	.Lframe0
	.quad	.LFB452
	.quad	.LFE452-.LFB452
	.byte	0x4
	.long	.LCFI293-.LFB452
	.byte	0x86
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI295-.LCFI293
	.byte	0xe
	.uleb128 0x20
	.byte	0x8c
	.uleb128 0x2
	.align 8
.LEFDE306:
.LSFDE308:
	.long	.LEFDE308-.LASFDE308
.LASFDE308:
	.long	.Lframe0
	.quad	.LFB453
	.quad	.LFE453-.LFB453
	.byte	0x4
	.long	.LCFI297-.LFB453
	.byte	0x86
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI299-.LCFI297
	.byte	0xe
	.uleb128 0x20
	.byte	0x8c
	.uleb128 0x2
	.align 8
.LEFDE308:
.LSFDE310:
	.long	.LEFDE310-.LASFDE310
.LASFDE310:
	.long	.Lframe0
	.quad	.LFB454
	.quad	.LFE454-.LFB454
	.byte	0x4
	.long	.LCFI300-.LFB454
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE310:
.LSFDE312:
	.long	.LEFDE312-.LASFDE312
.LASFDE312:
	.long	.Lframe0
	.quad	.LFB458
	.quad	.LFE458-.LFB458
	.align 8
.LEFDE312:
.LSFDE314:
	.long	.LEFDE314-.LASFDE314
.LASFDE314:
	.long	.Lframe0
	.quad	.LFB464
	.quad	.LFE464-.LFB464
	.byte	0x4
	.long	.LCFI302-.LFB464
	.byte	0x8c
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI303-.LCFI302
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE314:
.LSFDE316:
	.long	.LEFDE316-.LASFDE316
.LASFDE316:
	.long	.Lframe0
	.quad	.LFB465
	.quad	.LFE465-.LFB465
	.byte	0x4
	.long	.LCFI305-.LFB465
	.byte	0x8c
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI306-.LCFI305
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE316:
.LSFDE318:
	.long	.LEFDE318-.LASFDE318
.LASFDE318:
	.long	.Lframe0
	.quad	.LFB305
	.quad	.LFE305-.LFB305
	.byte	0x4
	.long	.LCFI307-.LFB305
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE318:
.LSFDE320:
	.long	.LEFDE320-.LASFDE320
.LASFDE320:
	.long	.Lframe0
	.quad	.LFB303
	.quad	.LFE303-.LFB303
	.byte	0x4
	.long	.LCFI310-.LFB303
	.byte	0xe
	.uleb128 0x20
	.byte	0x86
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE320:
.LSFDE322:
	.long	.LEFDE322-.LASFDE322
.LASFDE322:
	.long	.Lframe0
	.quad	.LFB463
	.quad	.LFE463-.LFB463
	.byte	0x4
	.long	.LCFI312-.LFB463
	.byte	0x8c
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI313-.LCFI312
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE322:
.LSFDE324:
	.long	.LEFDE324-.LASFDE324
.LASFDE324:
	.long	.Lframe0
	.quad	.LFB455
	.quad	.LFE455-.LFB455
	.byte	0x4
	.long	.LCFI316-.LFB455
	.byte	0xe
	.uleb128 0x20
	.byte	0x86
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE324:
.LSFDE326:
	.long	.LEFDE326-.LASFDE326
.LASFDE326:
	.long	.Lframe0
	.quad	.LFB460
	.quad	.LFE460-.LFB460
	.byte	0x4
	.long	.LCFI317-.LFB460
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE326:
.LSFDE328:
	.long	.LEFDE328-.LASFDE328
.LASFDE328:
	.long	.Lframe0
	.quad	.LFB467
	.quad	.LFE467-.LFB467
	.byte	0x4
	.long	.LCFI318-.LFB467
	.byte	0xe
	.uleb128 0x10
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI319-.LCFI318
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI320-.LCFI319
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE328:
.LSFDE330:
	.long	.LEFDE330-.LASFDE330
.LASFDE330:
	.long	.Lframe0
	.quad	.LFB468
	.quad	.LFE468-.LFB468
	.byte	0x4
	.long	.LCFI323-.LFB468
	.byte	0xe
	.uleb128 0x20
	.byte	0x8c
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE330:
.LSFDE332:
	.long	.LEFDE332-.LASFDE332
.LASFDE332:
	.long	.Lframe0
	.quad	.LFB306
	.quad	.LFE306-.LFB306
	.byte	0x4
	.long	.LCFI324-.LFB306
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI325-.LCFI324
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI326-.LCFI325
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE332:
.LSFDE334:
	.long	.LEFDE334-.LASFDE334
.LASFDE334:
	.long	.Lframe0
	.quad	.LFB304
	.quad	.LFE304-.LFB304
	.byte	0x4
	.long	.LCFI327-.LFB304
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE334:
.LSFDE336:
	.long	.LEFDE336-.LASFDE336
.LASFDE336:
	.long	.Lframe0
	.quad	.LFB466
	.quad	.LFE466-.LFB466
	.byte	0x4
	.long	.LCFI330-.LFB466
	.byte	0xe
	.uleb128 0x20
	.byte	0x8c
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE336:
.LSFDE338:
	.long	.LEFDE338-.LASFDE338
.LASFDE338:
	.long	.Lframe0
	.quad	.LFB456
	.quad	.LFE456-.LFB456
	.byte	0x4
	.long	.LCFI331-.LFB456
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE338:
.LSFDE340:
	.long	.LEFDE340-.LASFDE340
.LASFDE340:
	.long	.Lframe0
	.quad	.LFB457
	.quad	.LFE457-.LFB457
	.byte	0x4
	.long	.LCFI332-.LFB457
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI333-.LCFI332
	.byte	0xe
	.uleb128 0x18
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI334-.LCFI333
	.byte	0xe
	.uleb128 0x20
	.byte	0x8d
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI335-.LCFI334
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI336-.LCFI335
	.byte	0xe
	.uleb128 0x30
	.byte	0x86
	.uleb128 0x6
	.byte	0x8c
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI337-.LCFI336
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI338-.LCFI337
	.byte	0xe
	.uleb128 0x40
	.byte	0x83
	.uleb128 0x7
	.align 8
.LEFDE340:
.LSFDE342:
	.long	.LEFDE342-.LASFDE342
.LASFDE342:
	.long	.Lframe0
	.quad	.LFB459
	.quad	.LFE459-.LFB459
	.byte	0x4
	.long	.LCFI339-.LFB459
	.byte	0xe
	.uleb128 0x10
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI340-.LCFI339
	.byte	0xe
	.uleb128 0x18
	.byte	0x8e
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI341-.LCFI340
	.byte	0xe
	.uleb128 0x20
	.byte	0x8d
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI342-.LCFI341
	.byte	0xe
	.uleb128 0x28
	.byte	0x8c
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI343-.LCFI342
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI344-.LCFI343
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI345-.LCFI344
	.byte	0xe
	.uleb128 0x40
	.byte	0x83
	.uleb128 0x7
	.byte	0x86
	.uleb128 0x6
	.align 8
.LEFDE342:
.LSFDE344:
	.long	.LEFDE344-.LASFDE344
.LASFDE344:
	.long	.Lframe0
	.quad	.LFB461
	.quad	.LFE461-.LFB461
	.align 8
.LEFDE344:
.LSFDE346:
	.long	.LEFDE346-.LASFDE346
.LASFDE346:
	.long	.Lframe0
	.quad	.LFB462
	.quad	.LFE462-.LFB462
	.byte	0x4
	.long	.LCFI348-.LFB462
	.byte	0xe
	.uleb128 0x20
	.byte	0x86
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE346:
.LSFDE348:
	.long	.LEFDE348-.LASFDE348
.LASFDE348:
	.long	.Lframe0
	.quad	.LFB469
	.quad	.LFE469-.LFB469
	.byte	0x4
	.long	.LCFI350-.LFB469
	.byte	0x86
	.uleb128 0x6
	.byte	0x83
	.uleb128 0x7
	.byte	0x4
	.long	.LCFI355-.LCFI350
	.byte	0xe
	.uleb128 0x40
	.byte	0x8f
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8d
	.uleb128 0x4
	.byte	0x8c
	.uleb128 0x5
	.align 8
.LEFDE348:
.LSFDE350:
	.long	.LEFDE350-.LASFDE350
.LASFDE350:
	.long	.Lframe0
	.quad	.LFB474
	.quad	.LFE474-.LFB474
	.byte	0x4
	.long	.LCFI358-.LFB474
	.byte	0xe
	.uleb128 0x20
	.byte	0x86
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE350:
.LSFDE352:
	.long	.LEFDE352-.LASFDE352
.LASFDE352:
	.long	.Lframe0
	.quad	.LFB475
	.quad	.LFE475-.LFB475
	.byte	0x4
	.long	.LCFI359-.LFB475
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI360-.LCFI359
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI361-.LCFI360
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x2
	.align 8
.LEFDE352:
.LSFDE354:
	.long	.LEFDE354-.LASFDE354
.LASFDE354:
	.long	.Lframe0
	.quad	.LFB479
	.quad	.LFE479-.LFB479
	.byte	0x4
	.long	.LCFI363-.LFB479
	.byte	0x83
	.uleb128 0x5
	.byte	0x8d
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI366-.LCFI363
	.byte	0xe
	.uleb128 0x30
	.byte	0x8c
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x4
	.align 8
.LEFDE354:
.LSFDE356:
	.long	.LEFDE356-.LASFDE356
.LASFDE356:
	.long	.Lframe0
	.quad	.LFB480
	.quad	.LFE480-.LFB480
	.byte	0x4
	.long	.LCFI367-.LFB480
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI368-.LCFI367
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI369-.LCFI368
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI370-.LCFI369
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI371-.LCFI370
	.byte	0xe
	.uleb128 0x140
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x8c
	.uleb128 0x3
	.byte	0x8d
	.uleb128 0x2
	.align 8
.LEFDE356:
.LSFDE358:
	.long	.LEFDE358-.LASFDE358
.LASFDE358:
	.long	.Lframe0
	.quad	.LFB481
	.quad	.LFE481-.LFB481
	.byte	0x4
	.long	.LCFI373-.LFB481
	.byte	0x8c
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI374-.LCFI373
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE358:
.LSFDE360:
	.long	.LEFDE360-.LASFDE360
.LASFDE360:
	.long	.Lframe0
	.quad	.LFB482
	.quad	.LFE482-.LFB482
	.byte	0x4
	.long	.LCFI376-.LFB482
	.byte	0x8c
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI377-.LCFI376
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE360:
.LSFDE362:
	.long	.LEFDE362-.LASFDE362
.LASFDE362:
	.long	.Lframe0
	.quad	.LFB483
	.quad	.LFE483-.LFB483
	.byte	0x4
	.long	.LCFI378-.LFB483
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI379-.LCFI378
	.byte	0xe
	.uleb128 0x18
	.byte	0x8d
	.uleb128 0x3
	.byte	0x8e
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI380-.LCFI379
	.byte	0xe
	.uleb128 0x20
	.byte	0x8c
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI381-.LCFI380
	.byte	0xe
	.uleb128 0x28
	.byte	0x86
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI382-.LCFI381
	.byte	0xe
	.uleb128 0x30
	.byte	0x83
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI383-.LCFI382
	.byte	0xe
	.uleb128 0x50
	.align 8
.LEFDE362:
.LSFDE364:
	.long	.LEFDE364-.LASFDE364
.LASFDE364:
	.long	.Lframe0
	.quad	.LFB485
	.quad	.LFE485-.LFB485
	.byte	0x4
	.long	.LCFI384-.LFB485
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI385-.LCFI384
	.byte	0xe
	.uleb128 0x18
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI386-.LCFI385
	.byte	0xe
	.uleb128 0x20
	.byte	0x8d
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI387-.LCFI386
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI388-.LCFI387
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI389-.LCFI388
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI390-.LCFI389
	.byte	0xe
	.uleb128 0x70
	.byte	0x83
	.uleb128 0x7
	.byte	0x86
	.uleb128 0x6
	.byte	0x8c
	.uleb128 0x5
	.align 8
.LEFDE364:
.LSFDE366:
	.long	.LEFDE366-.LASFDE366
.LASFDE366:
	.long	.Lframe0
	.quad	.LFB489
	.quad	.LFE489-.LFB489
	.byte	0x4
	.long	.LCFI392-.LFB489
	.byte	0x8c
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI394-.LCFI392
	.byte	0xe
	.uleb128 0x20
	.byte	0x8d
	.uleb128 0x2
	.align 8
.LEFDE366:
.LSFDE368:
	.long	.LEFDE368-.LASFDE368
.LASFDE368:
	.long	.Lframe0
	.quad	.LFB490
	.quad	.LFE490-.LFB490
	.byte	0x4
	.long	.LCFI395-.LFB490
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI396-.LCFI395
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI397-.LCFI396
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE368:
.LSFDE370:
	.long	.LEFDE370-.LASFDE370
.LASFDE370:
	.long	.Lframe0
	.quad	.LFB493
	.quad	.LFE493-.LFB493
	.byte	0x4
	.long	.LCFI398-.LFB493
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI399-.LCFI398
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI400-.LCFI399
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.byte	0x8c
	.uleb128 0x2
	.align 8
.LEFDE370:
.LSFDE372:
	.long	.LEFDE372-.LASFDE372
.LASFDE372:
	.long	.Lframe0
	.quad	.LFB495
	.quad	.LFE495-.LFB495
	.byte	0x4
	.long	.LCFI401-.LFB495
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI402-.LCFI401
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI403-.LCFI402
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI404-.LCFI403
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
	.long	.LCFI405-.LCFI404
	.byte	0xe
	.uleb128 0x10d0
	.align 8
.LEFDE372:
.LSFDE374:
	.long	.LEFDE374-.LASFDE374
.LASFDE374:
	.long	.Lframe0
	.quad	.LFB496
	.quad	.LFE496-.LFB496
	.byte	0x4
	.long	.LCFI406-.LFB496
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI407-.LCFI406
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI408-.LCFI407
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI409-.LCFI408
	.byte	0xe
	.uleb128 0x10b0
	.align 8
.LEFDE374:
.LSFDE376:
	.long	.LEFDE376-.LASFDE376
.LASFDE376:
	.long	.Lframe0
	.quad	.LFB498
	.quad	.LFE498-.LFB498
	.byte	0x4
	.long	.LCFI410-.LFB498
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE376:
.LSFDE378:
	.long	.LEFDE378-.LASFDE378
.LASFDE378:
	.long	.Lframe0
	.quad	.LFB500
	.quad	.LFE500-.LFB500
	.align 8
.LEFDE378:
.LSFDE380:
	.long	.LEFDE380-.LASFDE380
.LASFDE380:
	.long	.Lframe0
	.quad	.LFB501
	.quad	.LFE501-.LFB501
	.byte	0x4
	.long	.LCFI411-.LFB501
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE380:
.LSFDE382:
	.long	.LEFDE382-.LASFDE382
.LASFDE382:
	.long	.Lframe0
	.quad	.LFB322
	.quad	.LFE322-.LFB322
	.byte	0x4
	.long	.LCFI412-.LFB322
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE382:
.LSFDE384:
	.long	.LEFDE384-.LASFDE384
.LASFDE384:
	.long	.Lframe0
	.quad	.LFB502
	.quad	.LFE502-.LFB502
	.align 8
.LEFDE384:
.LSFDE386:
	.long	.LEFDE386-.LASFDE386
.LASFDE386:
	.long	.Lframe0
	.quad	.LFB504
	.quad	.LFE504-.LFB504
	.byte	0x4
	.long	.LCFI413-.LFB504
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE386:
.LSFDE388:
	.long	.LEFDE388-.LASFDE388
.LASFDE388:
	.long	.Lframe0
	.quad	.LFB505
	.quad	.LFE505-.LFB505
	.byte	0x4
	.long	.LCFI414-.LFB505
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI415-.LCFI414
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI416-.LCFI415
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE388:
.LSFDE390:
	.long	.LEFDE390-.LASFDE390
.LASFDE390:
	.long	.Lframe0
	.quad	.LFB506
	.quad	.LFE506-.LFB506
	.align 8
.LEFDE390:
.LSFDE392:
	.long	.LEFDE392-.LASFDE392
.LASFDE392:
	.long	.Lframe0
	.quad	.LFB507
	.quad	.LFE507-.LFB507
	.byte	0x4
	.long	.LCFI417-.LFB507
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI418-.LCFI417
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI419-.LCFI418
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE392:
.LSFDE394:
	.long	.LEFDE394-.LASFDE394
.LASFDE394:
	.long	.Lframe0
	.quad	.LFB511
	.quad	.LFE511-.LFB511
	.byte	0x4
	.long	.LCFI420-.LFB511
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE394:
.LSFDE396:
	.long	.LEFDE396-.LASFDE396
.LASFDE396:
	.long	.Lframe0
	.quad	.LFB510
	.quad	.LFE510-.LFB510
	.byte	0x4
	.long	.LCFI421-.LFB510
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE396:
.LSFDE398:
	.long	.LEFDE398-.LASFDE398
.LASFDE398:
	.long	.Lframe0
	.quad	.LFB252
	.quad	.LFE252-.LFB252
	.byte	0x4
	.long	.LCFI422-.LFB252
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI423-.LCFI422
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI424-.LCFI423
	.byte	0xe
	.uleb128 0x420
	.align 8
.LEFDE398:
.LSFDE400:
	.long	.LEFDE400-.LASFDE400
.LASFDE400:
	.long	.Lframe0
	.quad	.LFB478
	.quad	.LFE478-.LFB478
	.byte	0x4
	.long	.LCFI425-.LFB478
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI426-.LCFI425
	.byte	0xe
	.uleb128 0x18
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI427-.LCFI426
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI428-.LCFI427
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI429-.LCFI428
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI430-.LCFI429
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI431-.LCFI430
	.byte	0xe
	.uleb128 0x160
	.byte	0x83
	.uleb128 0x7
	.byte	0x86
	.uleb128 0x6
	.byte	0x8c
	.uleb128 0x5
	.byte	0x8d
	.uleb128 0x4
	.align 8
.LEFDE400:
.LSFDE402:
	.long	.LEFDE402-.LASFDE402
.LASFDE402:
	.long	.Lframe0
	.quad	.LFB477
	.quad	.LFE477-.LFB477
	.byte	0x4
	.long	.LCFI432-.LFB477
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI433-.LCFI432
	.byte	0xe
	.uleb128 0x18
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI434-.LCFI433
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI435-.LCFI434
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI436-.LCFI435
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI437-.LCFI436
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI438-.LCFI437
	.byte	0xe
	.uleb128 0x3c0
	.byte	0x83
	.uleb128 0x7
	.byte	0x86
	.uleb128 0x6
	.byte	0x8c
	.uleb128 0x5
	.byte	0x8d
	.uleb128 0x4
	.align 8
.LEFDE402:
.LSFDE404:
	.long	.LEFDE404-.LASFDE404
.LASFDE404:
	.long	.Lframe0
	.quad	.LFB508
	.quad	.LFE508-.LFB508
	.align 8
.LEFDE404:
.LSFDE406:
	.long	.LEFDE406-.LASFDE406
.LASFDE406:
	.long	.Lframe0
	.quad	.LFB509
	.quad	.LFE509-.LFB509
	.align 8
.LEFDE406:
.LSFDE408:
	.long	.LEFDE408-.LASFDE408
.LASFDE408:
	.long	.Lframe0
	.quad	.LFB512
	.quad	.LFE512-.LFB512
	.byte	0x4
	.long	.LCFI440-.LFB512
	.byte	0x86
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI442-.LCFI440
	.byte	0xe
	.uleb128 0x20
	.byte	0x8c
	.uleb128 0x2
	.align 8
.LEFDE408:
.LSFDE410:
	.long	.LEFDE410-.LASFDE410
.LASFDE410:
	.long	.Lframe0
	.quad	.LFB516
	.quad	.LFE516-.LFB516
	.align 8
.LEFDE410:
.LSFDE412:
	.long	.LEFDE412-.LASFDE412
.LASFDE412:
	.long	.Lframe0
	.quad	.LFB517
	.quad	.LFE517-.LFB517
	.byte	0x4
	.long	.LCFI443-.LFB517
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI444-.LCFI443
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI445-.LCFI444
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI446-.LCFI445
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI447-.LCFI446
	.byte	0xe
	.uleb128 0x30
	.byte	0x86
	.uleb128 0x6
	.byte	0x8c
	.uleb128 0x5
	.byte	0x8d
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI448-.LCFI447
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI449-.LCFI448
	.byte	0xe
	.uleb128 0x1e0
	.byte	0x83
	.uleb128 0x7
	.align 8
.LEFDE412:
.LSFDE414:
	.long	.LEFDE414-.LASFDE414
.LASFDE414:
	.long	.Lframe0
	.quad	.LFB519
	.quad	.LFE519-.LFB519
	.byte	0x4
	.long	.LCFI450-.LFB519
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI451-.LCFI450
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE414:
.LSFDE416:
	.long	.LEFDE416-.LASFDE416
.LASFDE416:
	.long	.Lframe0
	.quad	.LFB520
	.quad	.LFE520-.LFB520
	.byte	0x4
	.long	.LCFI453-.LFB520
	.byte	0x86
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI455-.LCFI453
	.byte	0xe
	.uleb128 0x120
	.byte	0x8c
	.uleb128 0x2
	.align 8
.LEFDE416:
.LSFDE418:
	.long	.LEFDE418-.LASFDE418
.LASFDE418:
	.long	.Lframe0
	.quad	.LFB434
	.quad	.LFE434-.LFB434
	.byte	0x4
	.long	.LCFI456-.LFB434
	.byte	0xe
	.uleb128 0x10
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI457-.LCFI456
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI458-.LCFI457
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI459-.LCFI458
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI460-.LCFI459
	.byte	0xe
	.uleb128 0x30
	.byte	0x86
	.uleb128 0x6
	.byte	0x8c
	.uleb128 0x5
	.byte	0x8d
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI461-.LCFI460
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI462-.LCFI461
	.byte	0xe
	.uleb128 0x600
	.byte	0x83
	.uleb128 0x7
	.align 8
.LEFDE418:
.LSFDE420:
	.long	.LEFDE420-.LASFDE420
.LASFDE420:
	.long	.Lframe0
	.quad	.LFB524
	.quad	.LFE524-.LFB524
	.byte	0x4
	.long	.LCFI463-.LFB524
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI464-.LCFI463
	.byte	0xe
	.uleb128 0x18
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI465-.LCFI464
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI466-.LCFI465
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI467-.LCFI466
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI468-.LCFI467
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI469-.LCFI468
	.byte	0xe
	.uleb128 0x40
	.byte	0x83
	.uleb128 0x7
	.byte	0x86
	.uleb128 0x6
	.byte	0x8c
	.uleb128 0x5
	.byte	0x8d
	.uleb128 0x4
	.align 8
.LEFDE420:
.LSFDE422:
	.long	.LEFDE422-.LASFDE422
.LASFDE422:
	.long	.Lframe0
	.quad	.LFB525
	.quad	.LFE525-.LFB525
	.byte	0x4
	.long	.LCFI470-.LFB525
	.byte	0xe
	.uleb128 0x10
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI471-.LCFI470
	.byte	0xe
	.uleb128 0x18
	.byte	0x8e
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI472-.LCFI471
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI473-.LCFI472
	.byte	0xe
	.uleb128 0x28
	.byte	0x8c
	.uleb128 0x5
	.byte	0x8d
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI474-.LCFI473
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI475-.LCFI474
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI476-.LCFI475
	.byte	0xe
	.uleb128 0x3750
	.byte	0x83
	.uleb128 0x7
	.byte	0x86
	.uleb128 0x6
	.align 8
.LEFDE422:
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
	.quad	.LFB448
	.quad	.LFE448-.LFB448
	.byte	0x4
	.long	.LCFI3-.LFB448
	.byte	0x8d
	.uleb128 0x3
	.byte	0x8c
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x5
	.byte	0x83
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI5-.LCFI3
	.byte	0xe
	.uleb128 0x30
	.byte	0x8e
	.uleb128 0x2
	.align 8
.LEFDE1:
.LSFDE3:
	.long	.LEFDE3-.LASFDE3
.LASFDE3:
	.long	.LASFDE3-.Lframe1
	.quad	.LFB449
	.quad	.LFE449-.LFB449
	.align 8
.LEFDE3:
.LSFDE5:
	.long	.LEFDE5-.LASFDE5
.LASFDE5:
	.long	.LASFDE5-.Lframe1
	.quad	.LFB257
	.quad	.LFE257-.LFB257
	.align 8
.LEFDE5:
.LSFDE7:
	.long	.LEFDE7-.LASFDE7
.LASFDE7:
	.long	.LASFDE7-.Lframe1
	.quad	.LFB258
	.quad	.LFE258-.LFB258
	.align 8
.LEFDE7:
.LSFDE9:
	.long	.LEFDE9-.LASFDE9
.LASFDE9:
	.long	.LASFDE9-.Lframe1
	.quad	.LFB259
	.quad	.LFE259-.LFB259
	.byte	0x4
	.long	.LCFI7-.LFB259
	.byte	0x86
	.uleb128 0x4
	.byte	0x83
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI9-.LCFI7
	.byte	0x8d
	.uleb128 0x2
	.byte	0x8c
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI10-.LCFI9
	.byte	0xe
	.uleb128 0x30
	.align 8
.LEFDE9:
.LSFDE11:
	.long	.LEFDE11-.LASFDE11
.LASFDE11:
	.long	.LASFDE11-.Lframe1
	.quad	.LFB260
	.quad	.LFE260-.LFB260
	.byte	0x4
	.long	.LCFI12-.LFB260
	.byte	0x8c
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI13-.LCFI12
	.byte	0x8d
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI15-.LCFI13
	.byte	0xe
	.uleb128 0x30
	.byte	0x83
	.uleb128 0x5
	.align 8
.LEFDE11:
.LSFDE13:
	.long	.LEFDE13-.LASFDE13
.LASFDE13:
	.long	.LASFDE13-.Lframe1
	.quad	.LFB261
	.quad	.LFE261-.LFB261
	.align 8
.LEFDE13:
.LSFDE15:
	.long	.LEFDE15-.LASFDE15
.LASFDE15:
	.long	.LASFDE15-.Lframe1
	.quad	.LFB262
	.quad	.LFE262-.LFB262
	.align 8
.LEFDE15:
.LSFDE17:
	.long	.LEFDE17-.LASFDE17
.LASFDE17:
	.long	.LASFDE17-.Lframe1
	.quad	.LFB266
	.quad	.LFE266-.LFB266
	.align 8
.LEFDE17:
.LSFDE19:
	.long	.LEFDE19-.LASFDE19
.LASFDE19:
	.long	.LASFDE19-.Lframe1
	.quad	.LFB267
	.quad	.LFE267-.LFB267
	.align 8
.LEFDE19:
.LSFDE21:
	.long	.LEFDE21-.LASFDE21
.LASFDE21:
	.long	.LASFDE21-.Lframe1
	.quad	.LFB268
	.quad	.LFE268-.LFB268
	.align 8
.LEFDE21:
.LSFDE23:
	.long	.LEFDE23-.LASFDE23
.LASFDE23:
	.long	.LASFDE23-.Lframe1
	.quad	.LFB269
	.quad	.LFE269-.LFB269
	.align 8
.LEFDE23:
.LSFDE25:
	.long	.LEFDE25-.LASFDE25
.LASFDE25:
	.long	.LASFDE25-.Lframe1
	.quad	.LFB270
	.quad	.LFE270-.LFB270
	.align 8
.LEFDE25:
.LSFDE27:
	.long	.LEFDE27-.LASFDE27
.LASFDE27:
	.long	.LASFDE27-.Lframe1
	.quad	.LFB271
	.quad	.LFE271-.LFB271
	.align 8
.LEFDE27:
.LSFDE29:
	.long	.LEFDE29-.LASFDE29
.LASFDE29:
	.long	.LASFDE29-.Lframe1
	.quad	.LFB272
	.quad	.LFE272-.LFB272
	.align 8
.LEFDE29:
.LSFDE31:
	.long	.LEFDE31-.LASFDE31
.LASFDE31:
	.long	.LASFDE31-.Lframe1
	.quad	.LFB273
	.quad	.LFE273-.LFB273
	.byte	0x4
	.long	.LCFI16-.LFB273
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI17-.LCFI16
	.byte	0xe
	.uleb128 0xe0
	.align 8
.LEFDE31:
.LSFDE33:
	.long	.LEFDE33-.LASFDE33
.LASFDE33:
	.long	.LASFDE33-.Lframe1
	.quad	.LFB265
	.quad	.LFE265-.LFB265
	.byte	0x4
	.long	.LCFI18-.LFB265
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE33:
.LSFDE35:
	.long	.LEFDE35-.LASFDE35
.LASFDE35:
	.long	.LASFDE35-.Lframe1
	.quad	.LFB264
	.quad	.LFE264-.LFB264
	.byte	0x4
	.long	.LCFI19-.LFB264
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE35:
.LSFDE37:
	.long	.LEFDE37-.LASFDE37
.LASFDE37:
	.long	.LASFDE37-.Lframe1
	.quad	.LFB274
	.quad	.LFE274-.LFB274
	.align 8
.LEFDE37:
.LSFDE39:
	.long	.LEFDE39-.LASFDE39
.LASFDE39:
	.long	.LASFDE39-.Lframe1
	.quad	.LFB275
	.quad	.LFE275-.LFB275
	.byte	0x4
	.long	.LCFI21-.LFB275
	.byte	0x86
	.uleb128 0x5
	.byte	0x83
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI25-.LCFI21
	.byte	0xe
	.uleb128 0x30
	.byte	0x8e
	.uleb128 0x2
	.byte	0x8d
	.uleb128 0x3
	.byte	0x8c
	.uleb128 0x4
	.align 8
.LEFDE39:
.LSFDE41:
	.long	.LEFDE41-.LASFDE41
.LASFDE41:
	.long	.LASFDE41-.Lframe1
	.quad	.LFB276
	.quad	.LFE276-.LFB276
	.byte	0x4
	.long	.LCFI26-.LFB276
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
	.quad	.LFB277
	.quad	.LFE277-.LFB277
	.align 8
.LEFDE43:
.LSFDE45:
	.long	.LEFDE45-.LASFDE45
.LASFDE45:
	.long	.LASFDE45-.Lframe1
	.quad	.LFB278
	.quad	.LFE278-.LFB278
	.align 8
.LEFDE45:
.LSFDE47:
	.long	.LEFDE47-.LASFDE47
.LASFDE47:
	.long	.LASFDE47-.Lframe1
	.quad	.LFB279
	.quad	.LFE279-.LFB279
	.align 8
.LEFDE47:
.LSFDE49:
	.long	.LEFDE49-.LASFDE49
.LASFDE49:
	.long	.LASFDE49-.Lframe1
	.quad	.LFB280
	.quad	.LFE280-.LFB280
	.byte	0x4
	.long	.LCFI27-.LFB280
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI28-.LCFI27
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI29-.LCFI28
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE49:
.LSFDE51:
	.long	.LEFDE51-.LASFDE51
.LASFDE51:
	.long	.LASFDE51-.Lframe1
	.quad	.LFB281
	.quad	.LFE281-.LFB281
	.align 8
.LEFDE51:
.LSFDE53:
	.long	.LEFDE53-.LASFDE53
.LASFDE53:
	.long	.LASFDE53-.Lframe1
	.quad	.LFB282
	.quad	.LFE282-.LFB282
	.align 8
.LEFDE53:
.LSFDE55:
	.long	.LEFDE55-.LASFDE55
.LASFDE55:
	.long	.LASFDE55-.Lframe1
	.quad	.LFB284
	.quad	.LFE284-.LFB284
	.byte	0x4
	.long	.LCFI30-.LFB284
	.byte	0xe
	.uleb128 0x30
	.align 8
.LEFDE55:
.LSFDE57:
	.long	.LEFDE57-.LASFDE57
.LASFDE57:
	.long	.LASFDE57-.Lframe1
	.quad	.LFB285
	.quad	.LFE285-.LFB285
	.align 8
.LEFDE57:
.LSFDE59:
	.long	.LEFDE59-.LASFDE59
.LASFDE59:
	.long	.LASFDE59-.Lframe1
	.quad	.LFB286
	.quad	.LFE286-.LFB286
	.byte	0x4
	.long	.LCFI31-.LFB286
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE59:
.LSFDE61:
	.long	.LEFDE61-.LASFDE61
.LASFDE61:
	.long	.LASFDE61-.Lframe1
	.quad	.LFB287
	.quad	.LFE287-.LFB287
	.byte	0x4
	.long	.LCFI32-.LFB287
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE61:
.LSFDE63:
	.long	.LEFDE63-.LASFDE63
.LASFDE63:
	.long	.LASFDE63-.Lframe1
	.quad	.LFB288
	.quad	.LFE288-.LFB288
	.byte	0x4
	.long	.LCFI33-.LFB288
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE63:
.LSFDE65:
	.long	.LEFDE65-.LASFDE65
.LASFDE65:
	.long	.LASFDE65-.Lframe1
	.quad	.LFB290
	.quad	.LFE290-.LFB290
	.align 8
.LEFDE65:
.LSFDE67:
	.long	.LEFDE67-.LASFDE67
.LASFDE67:
	.long	.LASFDE67-.Lframe1
	.quad	.LFB291
	.quad	.LFE291-.LFB291
	.byte	0x4
	.long	.LCFI34-.LFB291
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE67:
.LSFDE69:
	.long	.LEFDE69-.LASFDE69
.LASFDE69:
	.long	.LASFDE69-.Lframe1
	.quad	.LFB293
	.quad	.LFE293-.LFB293
	.byte	0x4
	.long	.LCFI35-.LFB293
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE69:
.LSFDE71:
	.long	.LEFDE71-.LASFDE71
.LASFDE71:
	.long	.LASFDE71-.Lframe1
	.quad	.LFB294
	.quad	.LFE294-.LFB294
	.byte	0x4
	.long	.LCFI37-.LFB294
	.byte	0x8c
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI39-.LCFI37
	.byte	0xe
	.uleb128 0x20
	.byte	0x8d
	.uleb128 0x2
	.align 8
.LEFDE71:
.LSFDE73:
	.long	.LEFDE73-.LASFDE73
.LASFDE73:
	.long	.LASFDE73-.Lframe1
	.quad	.LFB295
	.quad	.LFE295-.LFB295
	.align 8
.LEFDE73:
.LSFDE75:
	.long	.LEFDE75-.LASFDE75
.LASFDE75:
	.long	.LASFDE75-.Lframe1
	.quad	.LFB296
	.quad	.LFE296-.LFB296
	.align 8
.LEFDE75:
.LSFDE77:
	.long	.LEFDE77-.LASFDE77
.LASFDE77:
	.long	.LASFDE77-.Lframe1
	.quad	.LFB297
	.quad	.LFE297-.LFB297
	.byte	0x4
	.long	.LCFI40-.LFB297
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI41-.LCFI40
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI42-.LCFI41
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE77:
.LSFDE79:
	.long	.LEFDE79-.LASFDE79
.LASFDE79:
	.long	.LASFDE79-.Lframe1
	.quad	.LFB298
	.quad	.LFE298-.LFB298
	.align 8
.LEFDE79:
.LSFDE81:
	.long	.LEFDE81-.LASFDE81
.LASFDE81:
	.long	.LASFDE81-.Lframe1
	.quad	.LFB300
	.quad	.LFE300-.LFB300
	.byte	0x4
	.long	.LCFI43-.LFB300
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI44-.LCFI43
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI45-.LCFI44
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE81:
.LSFDE83:
	.long	.LEFDE83-.LASFDE83
.LASFDE83:
	.long	.LASFDE83-.Lframe1
	.quad	.LFB301
	.quad	.LFE301-.LFB301
	.byte	0x4
	.long	.LCFI46-.LFB301
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE83:
.LSFDE85:
	.long	.LEFDE85-.LASFDE85
.LASFDE85:
	.long	.LASFDE85-.Lframe1
	.quad	.LFB515
	.quad	.LFE515-.LFB515
	.align 8
.LEFDE85:
.LSFDE87:
	.long	.LEFDE87-.LASFDE87
.LASFDE87:
	.long	.LASFDE87-.Lframe1
	.quad	.LFB514
	.quad	.LFE514-.LFB514
	.align 8
.LEFDE87:
.LSFDE89:
	.long	.LEFDE89-.LASFDE89
.LASFDE89:
	.long	.LASFDE89-.Lframe1
	.quad	.LFB307
	.quad	.LFE307-.LFB307
	.byte	0x4
	.long	.LCFI47-.LFB307
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE89:
.LSFDE91:
	.long	.LEFDE91-.LASFDE91
.LASFDE91:
	.long	.LASFDE91-.Lframe1
	.quad	.LFB346
	.quad	.LFE346-.LFB346
	.align 8
.LEFDE91:
.LSFDE93:
	.long	.LEFDE93-.LASFDE93
.LASFDE93:
	.long	.LASFDE93-.Lframe1
	.quad	.LFB345
	.quad	.LFE345-.LFB345
	.align 8
.LEFDE93:
.LSFDE95:
	.long	.LEFDE95-.LASFDE95
.LASFDE95:
	.long	.LASFDE95-.Lframe1
	.quad	.LFB255
	.quad	.LFE255-.LFB255
	.byte	0x4
	.long	.LCFI48-.LFB255
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI49-.LCFI48
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI50-.LCFI49
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI51-.LCFI50
	.byte	0xe
	.uleb128 0x440
	.align 8
.LEFDE95:
.LSFDE97:
	.long	.LEFDE97-.LASFDE97
.LASFDE97:
	.long	.LASFDE97-.Lframe1
	.quad	.LFB254
	.quad	.LFE254-.LFB254
	.byte	0x4
	.long	.LCFI52-.LFB254
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI53-.LCFI52
	.byte	0xe
	.uleb128 0xe0
	.align 8
.LEFDE97:
.LSFDE99:
	.long	.LEFDE99-.LASFDE99
.LASFDE99:
	.long	.LASFDE99-.Lframe1
	.quad	.LFB309
	.quad	.LFE309-.LFB309
	.byte	0x4
	.long	.LCFI54-.LFB309
	.byte	0xe
	.uleb128 0x10
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI55-.LCFI54
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI56-.LCFI55
	.byte	0xe
	.uleb128 0xc0
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE99:
.LSFDE101:
	.long	.LEFDE101-.LASFDE101
.LASFDE101:
	.long	.LASFDE101-.Lframe1
	.quad	.LFB310
	.quad	.LFE310-.LFB310
	.byte	0x4
	.long	.LCFI57-.LFB310
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI58-.LCFI57
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI59-.LCFI58
	.byte	0xe
	.uleb128 0x40
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE101:
.LSFDE103:
	.long	.LEFDE103-.LASFDE103
.LASFDE103:
	.long	.LASFDE103-.Lframe1
	.quad	.LFB311
	.quad	.LFE311-.LFB311
	.align 8
.LEFDE103:
.LSFDE105:
	.long	.LEFDE105-.LASFDE105
.LASFDE105:
	.long	.LASFDE105-.Lframe1
	.quad	.LFB312
	.quad	.LFE312-.LFB312
	.byte	0x4
	.long	.LCFI60-.LFB312
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI61-.LCFI60
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI62-.LCFI61
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE105:
.LSFDE107:
	.long	.LEFDE107-.LASFDE107
.LASFDE107:
	.long	.LASFDE107-.Lframe1
	.quad	.LFB313
	.quad	.LFE313-.LFB313
	.align 8
.LEFDE107:
.LSFDE109:
	.long	.LEFDE109-.LASFDE109
.LASFDE109:
	.long	.LASFDE109-.Lframe1
	.quad	.LFB314
	.quad	.LFE314-.LFB314
	.byte	0x4
	.long	.LCFI63-.LFB314
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI64-.LCFI63
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI65-.LCFI64
	.byte	0xe
	.uleb128 0x110
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE109:
.LSFDE111:
	.long	.LEFDE111-.LASFDE111
.LASFDE111:
	.long	.LASFDE111-.Lframe1
	.quad	.LFB315
	.quad	.LFE315-.LFB315
	.align 8
.LEFDE111:
.LSFDE113:
	.long	.LEFDE113-.LASFDE113
.LASFDE113:
	.long	.LASFDE113-.Lframe1
	.quad	.LFB316
	.quad	.LFE316-.LFB316
	.byte	0x4
	.long	.LCFI69-.LFB316
	.byte	0xe
	.uleb128 0x40
	.byte	0x8c
	.uleb128 0x2
	.byte	0x86
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x4
	.align 8
.LEFDE113:
.LSFDE115:
	.long	.LEFDE115-.LASFDE115
.LASFDE115:
	.long	.LASFDE115-.Lframe1
	.quad	.LFB317
	.quad	.LFE317-.LFB317
	.byte	0x4
	.long	.LCFI70-.LFB317
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI71-.LCFI70
	.byte	0xe
	.uleb128 0xd0
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE115:
.LSFDE117:
	.long	.LEFDE117-.LASFDE117
.LASFDE117:
	.long	.LASFDE117-.Lframe1
	.quad	.LFB318
	.quad	.LFE318-.LFB318
	.byte	0x4
	.long	.LCFI72-.LFB318
	.byte	0xe
	.uleb128 0x30
	.align 8
.LEFDE117:
.LSFDE119:
	.long	.LEFDE119-.LASFDE119
.LASFDE119:
	.long	.LASFDE119-.Lframe1
	.quad	.LFB321
	.quad	.LFE321-.LFB321
	.align 8
.LEFDE119:
.LSFDE121:
	.long	.LEFDE121-.LASFDE121
.LASFDE121:
	.long	.LASFDE121-.Lframe1
	.quad	.LFB497
	.quad	.LFE497-.LFB497
	.byte	0x4
	.long	.LCFI74-.LFB497
	.byte	0x86
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI75-.LCFI74
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE121:
.LSFDE123:
	.long	.LEFDE123-.LASFDE123
.LASFDE123:
	.long	.LASFDE123-.Lframe1
	.quad	.LFB499
	.quad	.LFE499-.LFB499
	.align 8
.LEFDE123:
.LSFDE125:
	.long	.LEFDE125-.LASFDE125
.LASFDE125:
	.long	.LASFDE125-.Lframe1
	.quad	.LFB323
	.quad	.LFE323-.LFB323
	.byte	0x4
	.long	.LCFI76-.LFB323
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE125:
.LSFDE127:
	.long	.LEFDE127-.LASFDE127
.LASFDE127:
	.long	.LASFDE127-.Lframe1
	.quad	.LFB324
	.quad	.LFE324-.LFB324
	.align 8
.LEFDE127:
.LSFDE129:
	.long	.LEFDE129-.LASFDE129
.LASFDE129:
	.long	.LASFDE129-.Lframe1
	.quad	.LFB325
	.quad	.LFE325-.LFB325
	.align 8
.LEFDE129:
.LSFDE131:
	.long	.LEFDE131-.LASFDE131
.LASFDE131:
	.long	.LASFDE131-.Lframe1
	.quad	.LFB326
	.quad	.LFE326-.LFB326
	.align 8
.LEFDE131:
.LSFDE133:
	.long	.LEFDE133-.LASFDE133
.LASFDE133:
	.long	.LASFDE133-.Lframe1
	.quad	.LFB327
	.quad	.LFE327-.LFB327
	.align 8
.LEFDE133:
.LSFDE135:
	.long	.LEFDE135-.LASFDE135
.LASFDE135:
	.long	.LASFDE135-.Lframe1
	.quad	.LFB328
	.quad	.LFE328-.LFB328
	.align 8
.LEFDE135:
.LSFDE137:
	.long	.LEFDE137-.LASFDE137
.LASFDE137:
	.long	.LASFDE137-.Lframe1
	.quad	.LFB329
	.quad	.LFE329-.LFB329
	.byte	0x4
	.long	.LCFI77-.LFB329
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI78-.LCFI77
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI79-.LCFI78
	.byte	0xe
	.uleb128 0x10f0
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE137:
.LSFDE139:
	.long	.LEFDE139-.LASFDE139
.LASFDE139:
	.long	.LASFDE139-.Lframe1
	.quad	.LFB330
	.quad	.LFE330-.LFB330
	.align 8
.LEFDE139:
.LSFDE141:
	.long	.LEFDE141-.LASFDE141
.LASFDE141:
	.long	.LASFDE141-.Lframe1
	.quad	.LFB331
	.quad	.LFE331-.LFB331
	.align 8
.LEFDE141:
.LSFDE143:
	.long	.LEFDE143-.LASFDE143
.LASFDE143:
	.long	.LASFDE143-.Lframe1
	.quad	.LFB332
	.quad	.LFE332-.LFB332
	.align 8
.LEFDE143:
.LSFDE145:
	.long	.LEFDE145-.LASFDE145
.LASFDE145:
	.long	.LASFDE145-.Lframe1
	.quad	.LFB334
	.quad	.LFE334-.LFB334
	.byte	0x4
	.long	.LCFI80-.LFB334
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI81-.LCFI80
	.byte	0xe
	.uleb128 0x18
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI82-.LCFI81
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI83-.LCFI82
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI84-.LCFI83
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI85-.LCFI84
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI86-.LCFI85
	.byte	0xe
	.uleb128 0x90
	.byte	0x83
	.uleb128 0x7
	.byte	0x86
	.uleb128 0x6
	.byte	0x8c
	.uleb128 0x5
	.byte	0x8d
	.uleb128 0x4
	.align 8
.LEFDE145:
.LSFDE147:
	.long	.LEFDE147-.LASFDE147
.LASFDE147:
	.long	.LASFDE147-.Lframe1
	.quad	.LFB337
	.quad	.LFE337-.LFB337
	.byte	0x4
	.long	.LCFI87-.LFB337
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI88-.LCFI87
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI89-.LCFI88
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x2
	.align 8
.LEFDE147:
.LSFDE149:
	.long	.LEFDE149-.LASFDE149
.LASFDE149:
	.long	.LASFDE149-.Lframe1
	.quad	.LFB338
	.quad	.LFE338-.LFB338
	.align 8
.LEFDE149:
.LSFDE151:
	.long	.LEFDE151-.LASFDE151
.LASFDE151:
	.long	.LASFDE151-.Lframe1
	.quad	.LFB339
	.quad	.LFE339-.LFB339
	.byte	0x4
	.long	.LCFI90-.LFB339
	.byte	0xe
	.uleb128 0x10
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI91-.LCFI90
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI92-.LCFI91
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI93-.LCFI92
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI94-.LCFI93
	.byte	0xe
	.uleb128 0x30
	.byte	0x86
	.uleb128 0x6
	.byte	0x8c
	.uleb128 0x5
	.byte	0x8d
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI95-.LCFI94
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI96-.LCFI95
	.byte	0xe
	.uleb128 0xb0
	.byte	0x83
	.uleb128 0x7
	.align 8
.LEFDE151:
.LSFDE153:
	.long	.LEFDE153-.LASFDE153
.LASFDE153:
	.long	.LASFDE153-.Lframe1
	.quad	.LFB340
	.quad	.LFE340-.LFB340
	.byte	0x4
	.long	.LCFI97-.LFB340
	.byte	0xe
	.uleb128 0x10
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI98-.LCFI97
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI99-.LCFI98
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 8
.LEFDE153:
.LSFDE155:
	.long	.LEFDE155-.LASFDE155
.LASFDE155:
	.long	.LASFDE155-.Lframe1
	.quad	.LFB341
	.quad	.LFE341-.LFB341
	.byte	0x4
	.long	.LCFI102-.LFB341
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x2
	.align 8
.LEFDE155:
.LSFDE157:
	.long	.LEFDE157-.LASFDE157
.LASFDE157:
	.long	.LASFDE157-.Lframe1
	.quad	.LFB343
	.quad	.LFE343-.LFB343
	.byte	0x4
	.long	.LCFI103-.LFB343
	.byte	0xe
	.uleb128 0x10
	.byte	0x8d
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI104-.LCFI103
	.byte	0xe
	.uleb128 0x18
	.byte	0x8c
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI105-.LCFI104
	.byte	0xe
	.uleb128 0x20
	.byte	0x86
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI106-.LCFI105
	.byte	0xe
	.uleb128 0x28
	.byte	0x83
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI107-.LCFI106
	.byte	0xe
	.uleb128 0x30
	.align 8
.LEFDE157:
.LSFDE159:
	.long	.LEFDE159-.LASFDE159
.LASFDE159:
	.long	.LASFDE159-.Lframe1
	.quad	.LFB347
	.quad	.LFE347-.LFB347
	.align 8
.LEFDE159:
.LSFDE161:
	.long	.LEFDE161-.LASFDE161
.LASFDE161:
	.long	.LASFDE161-.Lframe1
	.quad	.LFB348
	.quad	.LFE348-.LFB348
	.byte	0x4
	.long	.LCFI108-.LFB348
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE161:
.LSFDE163:
	.long	.LEFDE163-.LASFDE163
.LASFDE163:
	.long	.LASFDE163-.Lframe1
	.quad	.LFB349
	.quad	.LFE349-.LFB349
	.byte	0x4
	.long	.LCFI110-.LFB349
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI112-.LCFI110
	.byte	0xe
	.uleb128 0x420
	.byte	0x8c
	.uleb128 0x2
	.align 8
.LEFDE163:
.LSFDE165:
	.long	.LEFDE165-.LASFDE165
.LASFDE165:
	.long	.LASFDE165-.Lframe1
	.quad	.LFB350
	.quad	.LFE350-.LFB350
	.align 8
.LEFDE165:
.LSFDE167:
	.long	.LEFDE167-.LASFDE167
.LASFDE167:
	.long	.LASFDE167-.Lframe1
	.quad	.LFB351
	.quad	.LFE351-.LFB351
	.byte	0x4
	.long	.LCFI114-.LFB351
	.byte	0x86
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI116-.LCFI114
	.byte	0xe
	.uleb128 0x20
	.byte	0x8c
	.uleb128 0x2
	.align 8
.LEFDE167:
.LSFDE169:
	.long	.LEFDE169-.LASFDE169
.LASFDE169:
	.long	.LASFDE169-.Lframe1
	.quad	.LFB354
	.quad	.LFE354-.LFB354
	.byte	0x4
	.long	.LCFI117-.LFB354
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE169:
.LSFDE171:
	.long	.LEFDE171-.LASFDE171
.LASFDE171:
	.long	.LASFDE171-.Lframe1
	.quad	.LFB355
	.quad	.LFE355-.LFB355
	.byte	0x4
	.long	.LCFI118-.LFB355
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI119-.LCFI118
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE171:
.LSFDE173:
	.long	.LEFDE173-.LASFDE173
.LASFDE173:
	.long	.LASFDE173-.Lframe1
	.quad	.LFB356
	.quad	.LFE356-.LFB356
	.byte	0x4
	.long	.LCFI120-.LFB356
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE173:
.LSFDE175:
	.long	.LEFDE175-.LASFDE175
.LASFDE175:
	.long	.LASFDE175-.Lframe1
	.quad	.LFB360
	.quad	.LFE360-.LFB360
	.byte	0x4
	.long	.LCFI122-.LFB360
	.byte	0x86
	.uleb128 0x6
	.byte	0x83
	.uleb128 0x7
	.byte	0x4
	.long	.LCFI124-.LCFI122
	.byte	0x8d
	.uleb128 0x4
	.byte	0x8c
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI127-.LCFI124
	.byte	0xe
	.uleb128 0x90
	.byte	0x8f
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x3
	.align 8
.LEFDE175:
.LSFDE177:
	.long	.LEFDE177-.LASFDE177
.LASFDE177:
	.long	.LASFDE177-.Lframe1
	.quad	.LFB361
	.quad	.LFE361-.LFB361
	.byte	0x4
	.long	.LCFI128-.LFB361
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE177:
.LSFDE179:
	.long	.LEFDE179-.LASFDE179
.LASFDE179:
	.long	.LASFDE179-.Lframe1
	.quad	.LFB363
	.quad	.LFE363-.LFB363
	.byte	0x4
	.long	.LCFI130-.LFB363
	.byte	0x86
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI131-.LCFI130
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE179:
.LSFDE181:
	.long	.LEFDE181-.LASFDE181
.LASFDE181:
	.long	.LASFDE181-.Lframe1
	.quad	.LFB364
	.quad	.LFE364-.LFB364
	.byte	0x4
	.long	.LCFI132-.LFB364
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI133-.LCFI132
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI134-.LCFI133
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE181:
.LSFDE183:
	.long	.LEFDE183-.LASFDE183
.LASFDE183:
	.long	.LASFDE183-.Lframe1
	.quad	.LFB365
	.quad	.LFE365-.LFB365
	.byte	0x4
	.long	.LCFI137-.LFB365
	.byte	0xe
	.uleb128 0x20
	.byte	0x8c
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE183:
.LSFDE185:
	.long	.LEFDE185-.LASFDE185
.LASFDE185:
	.long	.LASFDE185-.Lframe1
	.quad	.LFB367
	.quad	.LFE367-.LFB367
	.byte	0x4
	.long	.LCFI138-.LFB367
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE185:
.LSFDE187:
	.long	.LEFDE187-.LASFDE187
.LASFDE187:
	.long	.LASFDE187-.Lframe1
	.quad	.LFB368
	.quad	.LFE368-.LFB368
	.byte	0x4
	.long	.LCFI139-.LFB368
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI140-.LCFI139
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI141-.LCFI140
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE187:
.LSFDE189:
	.long	.LEFDE189-.LASFDE189
.LASFDE189:
	.long	.LASFDE189-.Lframe1
	.quad	.LFB369
	.quad	.LFE369-.LFB369
	.byte	0x4
	.long	.LCFI142-.LFB369
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI143-.LCFI142
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI144-.LCFI143
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE189:
.LSFDE191:
	.long	.LEFDE191-.LASFDE191
.LASFDE191:
	.long	.LASFDE191-.Lframe1
	.quad	.LFB370
	.quad	.LFE370-.LFB370
	.align 8
.LEFDE191:
.LSFDE193:
	.long	.LEFDE193-.LASFDE193
.LASFDE193:
	.long	.LASFDE193-.Lframe1
	.quad	.LFB372
	.quad	.LFE372-.LFB372
	.align 8
.LEFDE193:
.LSFDE195:
	.long	.LEFDE195-.LASFDE195
.LASFDE195:
	.long	.LASFDE195-.Lframe1
	.quad	.LFB373
	.quad	.LFE373-.LFB373
	.byte	0x4
	.long	.LCFI145-.LFB373
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE195:
.LSFDE197:
	.long	.LEFDE197-.LASFDE197
.LASFDE197:
	.long	.LASFDE197-.Lframe1
	.quad	.LFB375
	.quad	.LFE375-.LFB375
	.byte	0x4
	.long	.LCFI147-.LFB375
	.byte	0x83
	.uleb128 0x7
	.byte	0x8c
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI152-.LCFI147
	.byte	0xe
	.uleb128 0x450
	.byte	0x8f
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8d
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x6
	.align 8
.LEFDE197:
.LSFDE199:
	.long	.LEFDE199-.LASFDE199
.LASFDE199:
	.long	.LASFDE199-.Lframe1
	.quad	.LFB376
	.quad	.LFE376-.LFB376
	.byte	0x4
	.long	.LCFI153-.LFB376
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE199:
.LSFDE201:
	.long	.LEFDE201-.LASFDE201
.LASFDE201:
	.long	.LASFDE201-.Lframe1
	.quad	.LFB378
	.quad	.LFE378-.LFB378
	.byte	0x4
	.long	.LCFI154-.LFB378
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE201:
.LSFDE203:
	.long	.LEFDE203-.LASFDE203
.LASFDE203:
	.long	.LASFDE203-.Lframe1
	.quad	.LFB379
	.quad	.LFE379-.LFB379
	.byte	0x4
	.long	.LCFI155-.LFB379
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI156-.LCFI155
	.byte	0xe
	.uleb128 0x18
	.byte	0x8c
	.uleb128 0x3
	.byte	0x8d
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI157-.LCFI156
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI158-.LCFI157
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI159-.LCFI158
	.byte	0xe
	.uleb128 0xd0
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.align 8
.LEFDE203:
.LSFDE205:
	.long	.LEFDE205-.LASFDE205
.LASFDE205:
	.long	.LASFDE205-.Lframe1
	.quad	.LFB380
	.quad	.LFE380-.LFB380
	.byte	0x4
	.long	.LCFI160-.LFB380
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE205:
.LSFDE207:
	.long	.LEFDE207-.LASFDE207
.LASFDE207:
	.long	.LASFDE207-.Lframe1
	.quad	.LFB383
	.quad	.LFE383-.LFB383
	.align 8
.LEFDE207:
.LSFDE209:
	.long	.LEFDE209-.LASFDE209
.LASFDE209:
	.long	.LASFDE209-.Lframe1
	.quad	.LFB386
	.quad	.LFE386-.LFB386
	.byte	0x4
	.long	.LCFI162-.LFB386
	.byte	0x86
	.uleb128 0x5
	.byte	0x83
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI166-.LCFI162
	.byte	0xe
	.uleb128 0x30
	.byte	0x8c
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x2
	.byte	0x8d
	.uleb128 0x3
	.align 8
.LEFDE209:
.LSFDE211:
	.long	.LEFDE211-.LASFDE211
.LASFDE211:
	.long	.LASFDE211-.Lframe1
	.quad	.LFB388
	.quad	.LFE388-.LFB388
	.byte	0x4
	.long	.LCFI167-.LFB388
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI168-.LCFI167
	.byte	0xe
	.uleb128 0x18
	.byte	0x86
	.uleb128 0x3
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI169-.LCFI168
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI170-.LCFI169
	.byte	0xe
	.uleb128 0x230
	.byte	0x83
	.uleb128 0x4
	.align 8
.LEFDE211:
.LSFDE213:
	.long	.LEFDE213-.LASFDE213
.LASFDE213:
	.long	.LASFDE213-.Lframe1
	.quad	.LFB387
	.quad	.LFE387-.LFB387
	.byte	0x4
	.long	.LCFI172-.LFB387
	.byte	0x86
	.uleb128 0x4
	.byte	0x83
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI174-.LCFI172
	.byte	0x8d
	.uleb128 0x2
	.byte	0x8c
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI175-.LCFI174
	.byte	0xe
	.uleb128 0x30
	.align 8
.LEFDE213:
.LSFDE215:
	.long	.LEFDE215-.LASFDE215
.LASFDE215:
	.long	.LASFDE215-.Lframe1
	.quad	.LFB381
	.quad	.LFE381-.LFB381
	.byte	0x4
	.long	.LCFI176-.LFB381
	.byte	0xe
	.uleb128 0x10
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI177-.LCFI176
	.byte	0xe
	.uleb128 0x18
	.byte	0x8e
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI178-.LCFI177
	.byte	0xe
	.uleb128 0x20
	.byte	0x8d
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI179-.LCFI178
	.byte	0xe
	.uleb128 0x28
	.byte	0x8c
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI180-.LCFI179
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI181-.LCFI180
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI182-.LCFI181
	.byte	0xe
	.uleb128 0x160
	.byte	0x83
	.uleb128 0x7
	.byte	0x86
	.uleb128 0x6
	.align 8
.LEFDE215:
.LSFDE217:
	.long	.LEFDE217-.LASFDE217
.LASFDE217:
	.long	.LASFDE217-.Lframe1
	.quad	.LFB382
	.quad	.LFE382-.LFB382
	.byte	0x4
	.long	.LCFI184-.LFB382
	.byte	0x86
	.uleb128 0x5
	.byte	0x83
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI188-.LCFI184
	.byte	0xe
	.uleb128 0x650
	.byte	0x8e
	.uleb128 0x2
	.byte	0x8d
	.uleb128 0x3
	.byte	0x8c
	.uleb128 0x4
	.align 8
.LEFDE217:
.LSFDE219:
	.long	.LEFDE219-.LASFDE219
.LASFDE219:
	.long	.LASFDE219-.Lframe1
	.quad	.LFB390
	.quad	.LFE390-.LFB390
	.byte	0x4
	.long	.LCFI189-.LFB390
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE219:
.LSFDE221:
	.long	.LEFDE221-.LASFDE221
.LASFDE221:
	.long	.LASFDE221-.Lframe1
	.quad	.LFB391
	.quad	.LFE391-.LFB391
	.byte	0x4
	.long	.LCFI191-.LFB391
	.byte	0x86
	.uleb128 0x4
	.byte	0x83
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI194-.LCFI191
	.byte	0xe
	.uleb128 0x30
	.byte	0x8d
	.uleb128 0x2
	.byte	0x8c
	.uleb128 0x3
	.align 8
.LEFDE221:
.LSFDE223:
	.long	.LEFDE223-.LASFDE223
.LASFDE223:
	.long	.LASFDE223-.Lframe1
	.quad	.LFB392
	.quad	.LFE392-.LFB392
	.byte	0x4
	.long	.LCFI195-.LFB392
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI196-.LCFI195
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI197-.LCFI196
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE223:
.LSFDE225:
	.long	.LEFDE225-.LASFDE225
.LASFDE225:
	.long	.LASFDE225-.Lframe1
	.quad	.LFB393
	.quad	.LFE393-.LFB393
	.byte	0x4
	.long	.LCFI198-.LFB393
	.byte	0xe
	.uleb128 0x10
	.byte	0x8d
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI199-.LCFI198
	.byte	0xe
	.uleb128 0x18
	.byte	0x8c
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI200-.LCFI199
	.byte	0xe
	.uleb128 0x20
	.byte	0x86
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI201-.LCFI200
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI202-.LCFI201
	.byte	0xe
	.uleb128 0x30
	.byte	0x83
	.uleb128 0x5
	.align 8
.LEFDE225:
.LSFDE227:
	.long	.LEFDE227-.LASFDE227
.LASFDE227:
	.long	.LASFDE227-.Lframe1
	.quad	.LFB394
	.quad	.LFE394-.LFB394
	.byte	0x4
	.long	.LCFI203-.LFB394
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE227:
.LSFDE229:
	.long	.LEFDE229-.LASFDE229
.LASFDE229:
	.long	.LASFDE229-.Lframe1
	.quad	.LFB395
	.quad	.LFE395-.LFB395
	.align 8
.LEFDE229:
.LSFDE231:
	.long	.LEFDE231-.LASFDE231
.LASFDE231:
	.long	.LASFDE231-.Lframe1
	.quad	.LFB396
	.quad	.LFE396-.LFB396
	.align 8
.LEFDE231:
.LSFDE233:
	.long	.LEFDE233-.LASFDE233
.LASFDE233:
	.long	.LASFDE233-.Lframe1
	.quad	.LFB399
	.quad	.LFE399-.LFB399
	.byte	0x4
	.long	.LCFI204-.LFB399
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI205-.LCFI204
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI206-.LCFI205
	.byte	0xe
	.uleb128 0x420
	.byte	0x83
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x2
	.align 8
.LEFDE233:
.LSFDE235:
	.long	.LEFDE235-.LASFDE235
.LASFDE235:
	.long	.LASFDE235-.Lframe1
	.quad	.LFB401
	.quad	.LFE401-.LFB401
	.align 8
.LEFDE235:
.LSFDE237:
	.long	.LEFDE237-.LASFDE237
.LASFDE237:
	.long	.LASFDE237-.Lframe1
	.quad	.LFB402
	.quad	.LFE402-.LFB402
	.byte	0x4
	.long	.LCFI207-.LFB402
	.byte	0xe
	.uleb128 0x10
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI208-.LCFI207
	.byte	0xe
	.uleb128 0x18
	.byte	0x86
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI209-.LCFI208
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x4
	.align 8
.LEFDE237:
.LSFDE239:
	.long	.LEFDE239-.LASFDE239
.LASFDE239:
	.long	.LASFDE239-.Lframe1
	.quad	.LFB403
	.quad	.LFE403-.LFB403
	.byte	0x4
	.long	.LCFI211-.LFB403
	.byte	0x86
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI212-.LCFI211
	.byte	0xe
	.uleb128 0x1020
	.align 8
.LEFDE239:
.LSFDE241:
	.long	.LEFDE241-.LASFDE241
.LASFDE241:
	.long	.LASFDE241-.Lframe1
	.quad	.LFB404
	.quad	.LFE404-.LFB404
	.byte	0x4
	.long	.LCFI214-.LFB404
	.byte	0x86
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI216-.LCFI214
	.byte	0xe
	.uleb128 0x20
	.byte	0x8c
	.uleb128 0x2
	.align 8
.LEFDE241:
.LSFDE243:
	.long	.LEFDE243-.LASFDE243
.LASFDE243:
	.long	.LASFDE243-.Lframe1
	.quad	.LFB406
	.quad	.LFE406-.LFB406
	.byte	0x4
	.long	.LCFI218-.LFB406
	.byte	0x86
	.uleb128 0x6
	.byte	0x83
	.uleb128 0x7
	.byte	0x4
	.long	.LCFI220-.LCFI218
	.byte	0x8d
	.uleb128 0x4
	.byte	0x8c
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI223-.LCFI220
	.byte	0xe
	.uleb128 0x70
	.byte	0x8f
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x3
	.align 8
.LEFDE243:
.LSFDE245:
	.long	.LEFDE245-.LASFDE245
.LASFDE245:
	.long	.LASFDE245-.Lframe1
	.quad	.LFB408
	.quad	.LFE408-.LFB408
	.byte	0x4
	.long	.LCFI227-.LFB408
	.byte	0xe
	.uleb128 0x30
	.byte	0x8d
	.uleb128 0x2
	.byte	0x8c
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x4
	.align 8
.LEFDE245:
.LSFDE247:
	.long	.LEFDE247-.LASFDE247
.LASFDE247:
	.long	.LASFDE247-.Lframe1
	.quad	.LFB409
	.quad	.LFE409-.LFB409
	.byte	0x4
	.long	.LCFI228-.LFB409
	.byte	0xe
	.uleb128 0x10
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI229-.LCFI228
	.byte	0xe
	.uleb128 0x18
	.byte	0x86
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI230-.LCFI229
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x4
	.align 8
.LEFDE247:
.LSFDE249:
	.long	.LEFDE249-.LASFDE249
.LASFDE249:
	.long	.LASFDE249-.Lframe1
	.quad	.LFB410
	.quad	.LFE410-.LFB410
	.align 8
.LEFDE249:
.LSFDE251:
	.long	.LEFDE251-.LASFDE251
.LASFDE251:
	.long	.LASFDE251-.Lframe1
	.quad	.LFB411
	.quad	.LFE411-.LFB411
	.byte	0x4
	.long	.LCFI231-.LFB411
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI232-.LCFI231
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI233-.LCFI232
	.byte	0xe
	.uleb128 0x20
	.byte	0x8c
	.uleb128 0x4
	.byte	0x8d
	.uleb128 0x3
	.byte	0x8e
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI234-.LCFI233
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI235-.LCFI234
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI236-.LCFI235
	.byte	0xe
	.uleb128 0x1030
	.byte	0x83
	.uleb128 0x6
	.byte	0x86
	.uleb128 0x5
	.align 8
.LEFDE251:
.LSFDE253:
	.long	.LEFDE253-.LASFDE253
.LASFDE253:
	.long	.LASFDE253-.Lframe1
	.quad	.LFB412
	.quad	.LFE412-.LFB412
	.byte	0x4
	.long	.LCFI238-.LFB412
	.byte	0x86
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI239-.LCFI238
	.byte	0xe
	.uleb128 0x1020
	.align 8
.LEFDE253:
.LSFDE255:
	.long	.LEFDE255-.LASFDE255
.LASFDE255:
	.long	.LASFDE255-.Lframe1
	.quad	.LFB413
	.quad	.LFE413-.LFB413
	.byte	0x4
	.long	.LCFI241-.LFB413
	.byte	0x86
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI242-.LCFI241
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE255:
.LSFDE257:
	.long	.LEFDE257-.LASFDE257
.LASFDE257:
	.long	.LASFDE257-.Lframe1
	.quad	.LFB414
	.quad	.LFE414-.LFB414
	.byte	0x4
	.long	.LCFI243-.LFB414
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI244-.LCFI243
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI245-.LCFI244
	.byte	0xe
	.uleb128 0x30
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE257:
.LSFDE259:
	.long	.LEFDE259-.LASFDE259
.LASFDE259:
	.long	.LASFDE259-.Lframe1
	.quad	.LFB417
	.quad	.LFE417-.LFB417
	.align 8
.LEFDE259:
.LSFDE261:
	.long	.LEFDE261-.LASFDE261
.LASFDE261:
	.long	.LASFDE261-.Lframe1
	.quad	.LFB418
	.quad	.LFE418-.LFB418
	.byte	0x4
	.long	.LCFI247-.LFB418
	.byte	0x86
	.uleb128 0x4
	.byte	0x83
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI249-.LCFI247
	.byte	0x8d
	.uleb128 0x2
	.byte	0x8c
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI250-.LCFI249
	.byte	0xe
	.uleb128 0x30
	.align 8
.LEFDE261:
.LSFDE263:
	.long	.LEFDE263-.LASFDE263
.LASFDE263:
	.long	.LASFDE263-.Lframe1
	.quad	.LFB419
	.quad	.LFE419-.LFB419
	.byte	0x4
	.long	.LCFI252-.LFB419
	.byte	0x8d
	.uleb128 0x3
	.byte	0x8c
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI254-.LCFI252
	.byte	0x83
	.uleb128 0x6
	.byte	0x8e
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI256-.LCFI254
	.byte	0xe
	.uleb128 0x60
	.byte	0x86
	.uleb128 0x5
	.align 8
.LEFDE263:
.LSFDE265:
	.long	.LEFDE265-.LASFDE265
.LASFDE265:
	.long	.LASFDE265-.Lframe1
	.quad	.LFB420
	.quad	.LFE420-.LFB420
	.byte	0x4
	.long	.LCFI257-.LFB420
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI258-.LCFI257
	.byte	0xe
	.uleb128 0x18
	.byte	0x86
	.uleb128 0x3
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI259-.LCFI258
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI260-.LCFI259
	.byte	0xe
	.uleb128 0x40
	.byte	0x83
	.uleb128 0x4
	.align 8
.LEFDE265:
.LSFDE267:
	.long	.LEFDE267-.LASFDE267
.LASFDE267:
	.long	.LASFDE267-.Lframe1
	.quad	.LFB424
	.quad	.LFE424-.LFB424
	.byte	0x4
	.long	.LCFI261-.LFB424
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI262-.LCFI261
	.byte	0xe
	.uleb128 0x18
	.byte	0x86
	.uleb128 0x3
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI263-.LCFI262
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI264-.LCFI263
	.byte	0xe
	.uleb128 0xa0
	.byte	0x83
	.uleb128 0x4
	.align 8
.LEFDE267:
.LSFDE269:
	.long	.LEFDE269-.LASFDE269
.LASFDE269:
	.long	.LASFDE269-.Lframe1
	.quad	.LFB426
	.quad	.LFE426-.LFB426
	.align 8
.LEFDE269:
.LSFDE271:
	.long	.LEFDE271-.LASFDE271
.LASFDE271:
	.long	.LASFDE271-.Lframe1
	.quad	.LFB427
	.quad	.LFE427-.LFB427
	.byte	0x4
	.long	.LCFI265-.LFB427
	.byte	0xe
	.uleb128 0x10
	.byte	0x8e
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI266-.LCFI265
	.byte	0xe
	.uleb128 0x18
	.byte	0x8d
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI267-.LCFI266
	.byte	0xe
	.uleb128 0x20
	.byte	0x8c
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI268-.LCFI267
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI269-.LCFI268
	.byte	0xe
	.uleb128 0x30
	.byte	0x83
	.uleb128 0x6
	.byte	0x86
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI270-.LCFI269
	.byte	0xe
	.uleb128 0xb0
	.align 8
.LEFDE271:
.LSFDE273:
	.long	.LEFDE273-.LASFDE273
.LASFDE273:
	.long	.LASFDE273-.Lframe1
	.quad	.LFB430
	.quad	.LFE430-.LFB430
	.byte	0x4
	.long	.LCFI271-.LFB430
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI272-.LCFI271
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI273-.LCFI272
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x2
	.align 8
.LEFDE273:
.LSFDE275:
	.long	.LEFDE275-.LASFDE275
.LASFDE275:
	.long	.LASFDE275-.Lframe1
	.quad	.LFB431
	.quad	.LFE431-.LFB431
	.byte	0x4
	.long	.LCFI274-.LFB431
	.byte	0xe
	.uleb128 0xe0
	.align 8
.LEFDE275:
.LSFDE277:
	.long	.LEFDE277-.LASFDE277
.LASFDE277:
	.long	.LASFDE277-.Lframe1
	.quad	.LFB432
	.quad	.LFE432-.LFB432
	.align 8
.LEFDE277:
.LSFDE279:
	.long	.LEFDE279-.LASFDE279
.LASFDE279:
	.long	.LASFDE279-.Lframe1
	.quad	.LFB433
	.quad	.LFE433-.LFB433
	.align 8
.LEFDE279:
.LSFDE281:
	.long	.LEFDE281-.LASFDE281
.LASFDE281:
	.long	.LASFDE281-.Lframe1
	.quad	.LFB435
	.quad	.LFE435-.LFB435
	.align 8
.LEFDE281:
.LSFDE283:
	.long	.LEFDE283-.LASFDE283
.LASFDE283:
	.long	.LASFDE283-.Lframe1
	.quad	.LFB436
	.quad	.LFE436-.LFB436
	.byte	0x4
	.long	.LCFI275-.LFB436
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI276-.LCFI275
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI277-.LCFI276
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE283:
.LSFDE285:
	.long	.LEFDE285-.LASFDE285
.LASFDE285:
	.long	.LASFDE285-.Lframe1
	.quad	.LFB438
	.quad	.LFE438-.LFB438
	.byte	0x4
	.long	.LCFI278-.LFB438
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE285:
.LSFDE287:
	.long	.LEFDE287-.LASFDE287
.LASFDE287:
	.long	.LASFDE287-.Lframe1
	.quad	.LFB439
	.quad	.LFE439-.LFB439
	.byte	0x4
	.long	.LCFI280-.LFB439
	.byte	0x83
	.uleb128 0x4
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI282-.LCFI280
	.byte	0xe
	.uleb128 0x20
	.byte	0x86
	.uleb128 0x3
	.align 8
.LEFDE287:
.LSFDE289:
	.long	.LEFDE289-.LASFDE289
.LASFDE289:
	.long	.LASFDE289-.Lframe1
	.quad	.LFB440
	.quad	.LFE440-.LFB440
	.byte	0x4
	.long	.LCFI283-.LFB440
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE289:
.LSFDE291:
	.long	.LEFDE291-.LASFDE291
.LASFDE291:
	.long	.LASFDE291-.Lframe1
	.quad	.LFB441
	.quad	.LFE441-.LFB441
	.byte	0x4
	.long	.LCFI284-.LFB441
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE291:
.LSFDE293:
	.long	.LEFDE293-.LASFDE293
.LASFDE293:
	.long	.LASFDE293-.Lframe1
	.quad	.LFB442
	.quad	.LFE442-.LFB442
	.byte	0x4
	.long	.LCFI285-.LFB442
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI286-.LCFI285
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI287-.LCFI286
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE293:
.LSFDE295:
	.long	.LEFDE295-.LASFDE295
.LASFDE295:
	.long	.LASFDE295-.Lframe1
	.quad	.LFB443
	.quad	.LFE443-.LFB443
	.byte	0x4
	.long	.LCFI288-.LFB443
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE295:
.LSFDE297:
	.long	.LEFDE297-.LASFDE297
.LASFDE297:
	.long	.LASFDE297-.Lframe1
	.quad	.LFB444
	.quad	.LFE444-.LFB444
	.align 8
.LEFDE297:
.LSFDE299:
	.long	.LEFDE299-.LASFDE299
.LASFDE299:
	.long	.LASFDE299-.Lframe1
	.quad	.LFB445
	.quad	.LFE445-.LFB445
	.align 8
.LEFDE299:
.LSFDE301:
	.long	.LEFDE301-.LASFDE301
.LASFDE301:
	.long	.LASFDE301-.Lframe1
	.quad	.LFB446
	.quad	.LFE446-.LFB446
	.align 8
.LEFDE301:
.LSFDE303:
	.long	.LEFDE303-.LASFDE303
.LASFDE303:
	.long	.LASFDE303-.Lframe1
	.quad	.LFB450
	.quad	.LFE450-.LFB450
	.byte	0x4
	.long	.LCFI289-.LFB450
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI290-.LCFI289
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI291-.LCFI290
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE303:
.LSFDE305:
	.long	.LEFDE305-.LASFDE305
.LASFDE305:
	.long	.LASFDE305-.Lframe1
	.quad	.LFB451
	.quad	.LFE451-.LFB451
	.align 8
.LEFDE305:
.LSFDE307:
	.long	.LEFDE307-.LASFDE307
.LASFDE307:
	.long	.LASFDE307-.Lframe1
	.quad	.LFB452
	.quad	.LFE452-.LFB452
	.byte	0x4
	.long	.LCFI293-.LFB452
	.byte	0x86
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI295-.LCFI293
	.byte	0xe
	.uleb128 0x20
	.byte	0x8c
	.uleb128 0x2
	.align 8
.LEFDE307:
.LSFDE309:
	.long	.LEFDE309-.LASFDE309
.LASFDE309:
	.long	.LASFDE309-.Lframe1
	.quad	.LFB453
	.quad	.LFE453-.LFB453
	.byte	0x4
	.long	.LCFI297-.LFB453
	.byte	0x86
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI299-.LCFI297
	.byte	0xe
	.uleb128 0x20
	.byte	0x8c
	.uleb128 0x2
	.align 8
.LEFDE309:
.LSFDE311:
	.long	.LEFDE311-.LASFDE311
.LASFDE311:
	.long	.LASFDE311-.Lframe1
	.quad	.LFB454
	.quad	.LFE454-.LFB454
	.byte	0x4
	.long	.LCFI300-.LFB454
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE311:
.LSFDE313:
	.long	.LEFDE313-.LASFDE313
.LASFDE313:
	.long	.LASFDE313-.Lframe1
	.quad	.LFB458
	.quad	.LFE458-.LFB458
	.align 8
.LEFDE313:
.LSFDE315:
	.long	.LEFDE315-.LASFDE315
.LASFDE315:
	.long	.LASFDE315-.Lframe1
	.quad	.LFB464
	.quad	.LFE464-.LFB464
	.byte	0x4
	.long	.LCFI302-.LFB464
	.byte	0x8c
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI303-.LCFI302
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE315:
.LSFDE317:
	.long	.LEFDE317-.LASFDE317
.LASFDE317:
	.long	.LASFDE317-.Lframe1
	.quad	.LFB465
	.quad	.LFE465-.LFB465
	.byte	0x4
	.long	.LCFI305-.LFB465
	.byte	0x8c
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI306-.LCFI305
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE317:
.LSFDE319:
	.long	.LEFDE319-.LASFDE319
.LASFDE319:
	.long	.LASFDE319-.Lframe1
	.quad	.LFB305
	.quad	.LFE305-.LFB305
	.byte	0x4
	.long	.LCFI307-.LFB305
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE319:
.LSFDE321:
	.long	.LEFDE321-.LASFDE321
.LASFDE321:
	.long	.LASFDE321-.Lframe1
	.quad	.LFB303
	.quad	.LFE303-.LFB303
	.byte	0x4
	.long	.LCFI310-.LFB303
	.byte	0xe
	.uleb128 0x20
	.byte	0x86
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE321:
.LSFDE323:
	.long	.LEFDE323-.LASFDE323
.LASFDE323:
	.long	.LASFDE323-.Lframe1
	.quad	.LFB463
	.quad	.LFE463-.LFB463
	.byte	0x4
	.long	.LCFI312-.LFB463
	.byte	0x8c
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI313-.LCFI312
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE323:
.LSFDE325:
	.long	.LEFDE325-.LASFDE325
.LASFDE325:
	.long	.LASFDE325-.Lframe1
	.quad	.LFB455
	.quad	.LFE455-.LFB455
	.byte	0x4
	.long	.LCFI316-.LFB455
	.byte	0xe
	.uleb128 0x20
	.byte	0x86
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE325:
.LSFDE327:
	.long	.LEFDE327-.LASFDE327
.LASFDE327:
	.long	.LASFDE327-.Lframe1
	.quad	.LFB460
	.quad	.LFE460-.LFB460
	.byte	0x4
	.long	.LCFI317-.LFB460
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE327:
.LSFDE329:
	.long	.LEFDE329-.LASFDE329
.LASFDE329:
	.long	.LASFDE329-.Lframe1
	.quad	.LFB467
	.quad	.LFE467-.LFB467
	.byte	0x4
	.long	.LCFI318-.LFB467
	.byte	0xe
	.uleb128 0x10
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI319-.LCFI318
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI320-.LCFI319
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE329:
.LSFDE331:
	.long	.LEFDE331-.LASFDE331
.LASFDE331:
	.long	.LASFDE331-.Lframe1
	.quad	.LFB468
	.quad	.LFE468-.LFB468
	.byte	0x4
	.long	.LCFI323-.LFB468
	.byte	0xe
	.uleb128 0x20
	.byte	0x8c
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE331:
.LSFDE333:
	.long	.LEFDE333-.LASFDE333
.LASFDE333:
	.long	.LASFDE333-.Lframe1
	.quad	.LFB306
	.quad	.LFE306-.LFB306
	.byte	0x4
	.long	.LCFI324-.LFB306
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI325-.LCFI324
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI326-.LCFI325
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE333:
.LSFDE335:
	.long	.LEFDE335-.LASFDE335
.LASFDE335:
	.long	.LASFDE335-.Lframe1
	.quad	.LFB304
	.quad	.LFE304-.LFB304
	.byte	0x4
	.long	.LCFI327-.LFB304
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE335:
.LSFDE337:
	.long	.LEFDE337-.LASFDE337
.LASFDE337:
	.long	.LASFDE337-.Lframe1
	.quad	.LFB466
	.quad	.LFE466-.LFB466
	.byte	0x4
	.long	.LCFI330-.LFB466
	.byte	0xe
	.uleb128 0x20
	.byte	0x8c
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE337:
.LSFDE339:
	.long	.LEFDE339-.LASFDE339
.LASFDE339:
	.long	.LASFDE339-.Lframe1
	.quad	.LFB456
	.quad	.LFE456-.LFB456
	.byte	0x4
	.long	.LCFI331-.LFB456
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE339:
.LSFDE341:
	.long	.LEFDE341-.LASFDE341
.LASFDE341:
	.long	.LASFDE341-.Lframe1
	.quad	.LFB457
	.quad	.LFE457-.LFB457
	.byte	0x4
	.long	.LCFI332-.LFB457
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI333-.LCFI332
	.byte	0xe
	.uleb128 0x18
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI334-.LCFI333
	.byte	0xe
	.uleb128 0x20
	.byte	0x8d
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI335-.LCFI334
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI336-.LCFI335
	.byte	0xe
	.uleb128 0x30
	.byte	0x86
	.uleb128 0x6
	.byte	0x8c
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI337-.LCFI336
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI338-.LCFI337
	.byte	0xe
	.uleb128 0x40
	.byte	0x83
	.uleb128 0x7
	.align 8
.LEFDE341:
.LSFDE343:
	.long	.LEFDE343-.LASFDE343
.LASFDE343:
	.long	.LASFDE343-.Lframe1
	.quad	.LFB459
	.quad	.LFE459-.LFB459
	.byte	0x4
	.long	.LCFI339-.LFB459
	.byte	0xe
	.uleb128 0x10
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI340-.LCFI339
	.byte	0xe
	.uleb128 0x18
	.byte	0x8e
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI341-.LCFI340
	.byte	0xe
	.uleb128 0x20
	.byte	0x8d
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI342-.LCFI341
	.byte	0xe
	.uleb128 0x28
	.byte	0x8c
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI343-.LCFI342
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI344-.LCFI343
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI345-.LCFI344
	.byte	0xe
	.uleb128 0x40
	.byte	0x83
	.uleb128 0x7
	.byte	0x86
	.uleb128 0x6
	.align 8
.LEFDE343:
.LSFDE345:
	.long	.LEFDE345-.LASFDE345
.LASFDE345:
	.long	.LASFDE345-.Lframe1
	.quad	.LFB461
	.quad	.LFE461-.LFB461
	.align 8
.LEFDE345:
.LSFDE347:
	.long	.LEFDE347-.LASFDE347
.LASFDE347:
	.long	.LASFDE347-.Lframe1
	.quad	.LFB462
	.quad	.LFE462-.LFB462
	.byte	0x4
	.long	.LCFI348-.LFB462
	.byte	0xe
	.uleb128 0x20
	.byte	0x86
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE347:
.LSFDE349:
	.long	.LEFDE349-.LASFDE349
.LASFDE349:
	.long	.LASFDE349-.Lframe1
	.quad	.LFB469
	.quad	.LFE469-.LFB469
	.byte	0x4
	.long	.LCFI350-.LFB469
	.byte	0x86
	.uleb128 0x6
	.byte	0x83
	.uleb128 0x7
	.byte	0x4
	.long	.LCFI355-.LCFI350
	.byte	0xe
	.uleb128 0x40
	.byte	0x8f
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8d
	.uleb128 0x4
	.byte	0x8c
	.uleb128 0x5
	.align 8
.LEFDE349:
.LSFDE351:
	.long	.LEFDE351-.LASFDE351
.LASFDE351:
	.long	.LASFDE351-.Lframe1
	.quad	.LFB474
	.quad	.LFE474-.LFB474
	.byte	0x4
	.long	.LCFI358-.LFB474
	.byte	0xe
	.uleb128 0x20
	.byte	0x86
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE351:
.LSFDE353:
	.long	.LEFDE353-.LASFDE353
.LASFDE353:
	.long	.LASFDE353-.Lframe1
	.quad	.LFB475
	.quad	.LFE475-.LFB475
	.byte	0x4
	.long	.LCFI359-.LFB475
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI360-.LCFI359
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI361-.LCFI360
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x2
	.align 8
.LEFDE353:
.LSFDE355:
	.long	.LEFDE355-.LASFDE355
.LASFDE355:
	.long	.LASFDE355-.Lframe1
	.quad	.LFB479
	.quad	.LFE479-.LFB479
	.byte	0x4
	.long	.LCFI363-.LFB479
	.byte	0x83
	.uleb128 0x5
	.byte	0x8d
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI366-.LCFI363
	.byte	0xe
	.uleb128 0x30
	.byte	0x8c
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x4
	.align 8
.LEFDE355:
.LSFDE357:
	.long	.LEFDE357-.LASFDE357
.LASFDE357:
	.long	.LASFDE357-.Lframe1
	.quad	.LFB480
	.quad	.LFE480-.LFB480
	.byte	0x4
	.long	.LCFI367-.LFB480
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI368-.LCFI367
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI369-.LCFI368
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI370-.LCFI369
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI371-.LCFI370
	.byte	0xe
	.uleb128 0x140
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x8c
	.uleb128 0x3
	.byte	0x8d
	.uleb128 0x2
	.align 8
.LEFDE357:
.LSFDE359:
	.long	.LEFDE359-.LASFDE359
.LASFDE359:
	.long	.LASFDE359-.Lframe1
	.quad	.LFB481
	.quad	.LFE481-.LFB481
	.byte	0x4
	.long	.LCFI373-.LFB481
	.byte	0x8c
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI374-.LCFI373
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE359:
.LSFDE361:
	.long	.LEFDE361-.LASFDE361
.LASFDE361:
	.long	.LASFDE361-.Lframe1
	.quad	.LFB482
	.quad	.LFE482-.LFB482
	.byte	0x4
	.long	.LCFI376-.LFB482
	.byte	0x8c
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI377-.LCFI376
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE361:
.LSFDE363:
	.long	.LEFDE363-.LASFDE363
.LASFDE363:
	.long	.LASFDE363-.Lframe1
	.quad	.LFB483
	.quad	.LFE483-.LFB483
	.byte	0x4
	.long	.LCFI378-.LFB483
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI379-.LCFI378
	.byte	0xe
	.uleb128 0x18
	.byte	0x8d
	.uleb128 0x3
	.byte	0x8e
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI380-.LCFI379
	.byte	0xe
	.uleb128 0x20
	.byte	0x8c
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI381-.LCFI380
	.byte	0xe
	.uleb128 0x28
	.byte	0x86
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI382-.LCFI381
	.byte	0xe
	.uleb128 0x30
	.byte	0x83
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI383-.LCFI382
	.byte	0xe
	.uleb128 0x50
	.align 8
.LEFDE363:
.LSFDE365:
	.long	.LEFDE365-.LASFDE365
.LASFDE365:
	.long	.LASFDE365-.Lframe1
	.quad	.LFB485
	.quad	.LFE485-.LFB485
	.byte	0x4
	.long	.LCFI384-.LFB485
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI385-.LCFI384
	.byte	0xe
	.uleb128 0x18
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI386-.LCFI385
	.byte	0xe
	.uleb128 0x20
	.byte	0x8d
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI387-.LCFI386
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI388-.LCFI387
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI389-.LCFI388
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI390-.LCFI389
	.byte	0xe
	.uleb128 0x70
	.byte	0x83
	.uleb128 0x7
	.byte	0x86
	.uleb128 0x6
	.byte	0x8c
	.uleb128 0x5
	.align 8
.LEFDE365:
.LSFDE367:
	.long	.LEFDE367-.LASFDE367
.LASFDE367:
	.long	.LASFDE367-.Lframe1
	.quad	.LFB489
	.quad	.LFE489-.LFB489
	.byte	0x4
	.long	.LCFI392-.LFB489
	.byte	0x8c
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI394-.LCFI392
	.byte	0xe
	.uleb128 0x20
	.byte	0x8d
	.uleb128 0x2
	.align 8
.LEFDE367:
.LSFDE369:
	.long	.LEFDE369-.LASFDE369
.LASFDE369:
	.long	.LASFDE369-.Lframe1
	.quad	.LFB490
	.quad	.LFE490-.LFB490
	.byte	0x4
	.long	.LCFI395-.LFB490
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI396-.LCFI395
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI397-.LCFI396
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE369:
.LSFDE371:
	.long	.LEFDE371-.LASFDE371
.LASFDE371:
	.long	.LASFDE371-.Lframe1
	.quad	.LFB493
	.quad	.LFE493-.LFB493
	.byte	0x4
	.long	.LCFI398-.LFB493
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI399-.LCFI398
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI400-.LCFI399
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.byte	0x8c
	.uleb128 0x2
	.align 8
.LEFDE371:
.LSFDE373:
	.long	.LEFDE373-.LASFDE373
.LASFDE373:
	.long	.LASFDE373-.Lframe1
	.quad	.LFB495
	.quad	.LFE495-.LFB495
	.byte	0x4
	.long	.LCFI401-.LFB495
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI402-.LCFI401
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI403-.LCFI402
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI404-.LCFI403
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
	.long	.LCFI405-.LCFI404
	.byte	0xe
	.uleb128 0x10d0
	.align 8
.LEFDE373:
.LSFDE375:
	.long	.LEFDE375-.LASFDE375
.LASFDE375:
	.long	.LASFDE375-.Lframe1
	.quad	.LFB496
	.quad	.LFE496-.LFB496
	.byte	0x4
	.long	.LCFI406-.LFB496
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI407-.LCFI406
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI408-.LCFI407
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI409-.LCFI408
	.byte	0xe
	.uleb128 0x10b0
	.align 8
.LEFDE375:
.LSFDE377:
	.long	.LEFDE377-.LASFDE377
.LASFDE377:
	.long	.LASFDE377-.Lframe1
	.quad	.LFB498
	.quad	.LFE498-.LFB498
	.byte	0x4
	.long	.LCFI410-.LFB498
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE377:
.LSFDE379:
	.long	.LEFDE379-.LASFDE379
.LASFDE379:
	.long	.LASFDE379-.Lframe1
	.quad	.LFB500
	.quad	.LFE500-.LFB500
	.align 8
.LEFDE379:
.LSFDE381:
	.long	.LEFDE381-.LASFDE381
.LASFDE381:
	.long	.LASFDE381-.Lframe1
	.quad	.LFB501
	.quad	.LFE501-.LFB501
	.byte	0x4
	.long	.LCFI411-.LFB501
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE381:
.LSFDE383:
	.long	.LEFDE383-.LASFDE383
.LASFDE383:
	.long	.LASFDE383-.Lframe1
	.quad	.LFB322
	.quad	.LFE322-.LFB322
	.byte	0x4
	.long	.LCFI412-.LFB322
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE383:
.LSFDE385:
	.long	.LEFDE385-.LASFDE385
.LASFDE385:
	.long	.LASFDE385-.Lframe1
	.quad	.LFB502
	.quad	.LFE502-.LFB502
	.align 8
.LEFDE385:
.LSFDE387:
	.long	.LEFDE387-.LASFDE387
.LASFDE387:
	.long	.LASFDE387-.Lframe1
	.quad	.LFB504
	.quad	.LFE504-.LFB504
	.byte	0x4
	.long	.LCFI413-.LFB504
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE387:
.LSFDE389:
	.long	.LEFDE389-.LASFDE389
.LASFDE389:
	.long	.LASFDE389-.Lframe1
	.quad	.LFB505
	.quad	.LFE505-.LFB505
	.byte	0x4
	.long	.LCFI414-.LFB505
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI415-.LCFI414
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI416-.LCFI415
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE389:
.LSFDE391:
	.long	.LEFDE391-.LASFDE391
.LASFDE391:
	.long	.LASFDE391-.Lframe1
	.quad	.LFB506
	.quad	.LFE506-.LFB506
	.align 8
.LEFDE391:
.LSFDE393:
	.long	.LEFDE393-.LASFDE393
.LASFDE393:
	.long	.LASFDE393-.Lframe1
	.quad	.LFB507
	.quad	.LFE507-.LFB507
	.byte	0x4
	.long	.LCFI417-.LFB507
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI418-.LCFI417
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI419-.LCFI418
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE393:
.LSFDE395:
	.long	.LEFDE395-.LASFDE395
.LASFDE395:
	.long	.LASFDE395-.Lframe1
	.quad	.LFB511
	.quad	.LFE511-.LFB511
	.byte	0x4
	.long	.LCFI420-.LFB511
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE395:
.LSFDE397:
	.long	.LEFDE397-.LASFDE397
.LASFDE397:
	.long	.LASFDE397-.Lframe1
	.quad	.LFB510
	.quad	.LFE510-.LFB510
	.byte	0x4
	.long	.LCFI421-.LFB510
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE397:
.LSFDE399:
	.long	.LEFDE399-.LASFDE399
.LASFDE399:
	.long	.LASFDE399-.Lframe1
	.quad	.LFB252
	.quad	.LFE252-.LFB252
	.byte	0x4
	.long	.LCFI422-.LFB252
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI423-.LCFI422
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI424-.LCFI423
	.byte	0xe
	.uleb128 0x420
	.align 8
.LEFDE399:
.LSFDE401:
	.long	.LEFDE401-.LASFDE401
.LASFDE401:
	.long	.LASFDE401-.Lframe1
	.quad	.LFB478
	.quad	.LFE478-.LFB478
	.byte	0x4
	.long	.LCFI425-.LFB478
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI426-.LCFI425
	.byte	0xe
	.uleb128 0x18
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI427-.LCFI426
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI428-.LCFI427
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI429-.LCFI428
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI430-.LCFI429
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI431-.LCFI430
	.byte	0xe
	.uleb128 0x160
	.byte	0x83
	.uleb128 0x7
	.byte	0x86
	.uleb128 0x6
	.byte	0x8c
	.uleb128 0x5
	.byte	0x8d
	.uleb128 0x4
	.align 8
.LEFDE401:
.LSFDE403:
	.long	.LEFDE403-.LASFDE403
.LASFDE403:
	.long	.LASFDE403-.Lframe1
	.quad	.LFB477
	.quad	.LFE477-.LFB477
	.byte	0x4
	.long	.LCFI432-.LFB477
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI433-.LCFI432
	.byte	0xe
	.uleb128 0x18
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI434-.LCFI433
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI435-.LCFI434
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI436-.LCFI435
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI437-.LCFI436
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI438-.LCFI437
	.byte	0xe
	.uleb128 0x3c0
	.byte	0x83
	.uleb128 0x7
	.byte	0x86
	.uleb128 0x6
	.byte	0x8c
	.uleb128 0x5
	.byte	0x8d
	.uleb128 0x4
	.align 8
.LEFDE403:
.LSFDE405:
	.long	.LEFDE405-.LASFDE405
.LASFDE405:
	.long	.LASFDE405-.Lframe1
	.quad	.LFB508
	.quad	.LFE508-.LFB508
	.align 8
.LEFDE405:
.LSFDE407:
	.long	.LEFDE407-.LASFDE407
.LASFDE407:
	.long	.LASFDE407-.Lframe1
	.quad	.LFB509
	.quad	.LFE509-.LFB509
	.align 8
.LEFDE407:
.LSFDE409:
	.long	.LEFDE409-.LASFDE409
.LASFDE409:
	.long	.LASFDE409-.Lframe1
	.quad	.LFB512
	.quad	.LFE512-.LFB512
	.byte	0x4
	.long	.LCFI440-.LFB512
	.byte	0x86
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI442-.LCFI440
	.byte	0xe
	.uleb128 0x20
	.byte	0x8c
	.uleb128 0x2
	.align 8
.LEFDE409:
.LSFDE411:
	.long	.LEFDE411-.LASFDE411
.LASFDE411:
	.long	.LASFDE411-.Lframe1
	.quad	.LFB516
	.quad	.LFE516-.LFB516
	.align 8
.LEFDE411:
.LSFDE413:
	.long	.LEFDE413-.LASFDE413
.LASFDE413:
	.long	.LASFDE413-.Lframe1
	.quad	.LFB517
	.quad	.LFE517-.LFB517
	.byte	0x4
	.long	.LCFI443-.LFB517
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI444-.LCFI443
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI445-.LCFI444
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI446-.LCFI445
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI447-.LCFI446
	.byte	0xe
	.uleb128 0x30
	.byte	0x86
	.uleb128 0x6
	.byte	0x8c
	.uleb128 0x5
	.byte	0x8d
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI448-.LCFI447
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI449-.LCFI448
	.byte	0xe
	.uleb128 0x1e0
	.byte	0x83
	.uleb128 0x7
	.align 8
.LEFDE413:
.LSFDE415:
	.long	.LEFDE415-.LASFDE415
.LASFDE415:
	.long	.LASFDE415-.Lframe1
	.quad	.LFB519
	.quad	.LFE519-.LFB519
	.byte	0x4
	.long	.LCFI450-.LFB519
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI451-.LCFI450
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE415:
.LSFDE417:
	.long	.LEFDE417-.LASFDE417
.LASFDE417:
	.long	.LASFDE417-.Lframe1
	.quad	.LFB520
	.quad	.LFE520-.LFB520
	.byte	0x4
	.long	.LCFI453-.LFB520
	.byte	0x86
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI455-.LCFI453
	.byte	0xe
	.uleb128 0x120
	.byte	0x8c
	.uleb128 0x2
	.align 8
.LEFDE417:
.LSFDE419:
	.long	.LEFDE419-.LASFDE419
.LASFDE419:
	.long	.LASFDE419-.Lframe1
	.quad	.LFB434
	.quad	.LFE434-.LFB434
	.byte	0x4
	.long	.LCFI456-.LFB434
	.byte	0xe
	.uleb128 0x10
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI457-.LCFI456
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI458-.LCFI457
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI459-.LCFI458
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI460-.LCFI459
	.byte	0xe
	.uleb128 0x30
	.byte	0x86
	.uleb128 0x6
	.byte	0x8c
	.uleb128 0x5
	.byte	0x8d
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI461-.LCFI460
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI462-.LCFI461
	.byte	0xe
	.uleb128 0x600
	.byte	0x83
	.uleb128 0x7
	.align 8
.LEFDE419:
.LSFDE421:
	.long	.LEFDE421-.LASFDE421
.LASFDE421:
	.long	.LASFDE421-.Lframe1
	.quad	.LFB524
	.quad	.LFE524-.LFB524
	.byte	0x4
	.long	.LCFI463-.LFB524
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI464-.LCFI463
	.byte	0xe
	.uleb128 0x18
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI465-.LCFI464
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI466-.LCFI465
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI467-.LCFI466
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI468-.LCFI467
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI469-.LCFI468
	.byte	0xe
	.uleb128 0x40
	.byte	0x83
	.uleb128 0x7
	.byte	0x86
	.uleb128 0x6
	.byte	0x8c
	.uleb128 0x5
	.byte	0x8d
	.uleb128 0x4
	.align 8
.LEFDE421:
.LSFDE423:
	.long	.LEFDE423-.LASFDE423
.LASFDE423:
	.long	.LASFDE423-.Lframe1
	.quad	.LFB525
	.quad	.LFE525-.LFB525
	.byte	0x4
	.long	.LCFI470-.LFB525
	.byte	0xe
	.uleb128 0x10
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI471-.LCFI470
	.byte	0xe
	.uleb128 0x18
	.byte	0x8e
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI472-.LCFI471
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI473-.LCFI472
	.byte	0xe
	.uleb128 0x28
	.byte	0x8c
	.uleb128 0x5
	.byte	0x8d
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI474-.LCFI473
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI475-.LCFI474
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI476-.LCFI475
	.byte	0xe
	.uleb128 0x3750
	.byte	0x83
	.uleb128 0x7
	.byte	0x86
	.uleb128 0x6
	.align 8
.LEFDE423:
	.file 6 "../qemu-common.h"
	.file 7 "/usr/include/sys/poll.h"
	.file 8 "/usr/include/stdint.h"
	.file 9 "../argos-tag.h"
	.file 10 "../argos.h"
	.file 11 "/home/remco/Projects/Argos/src/target-i386/cpu.h"
	.file 12 "../cpu-defs.h"
	.file 13 "/home/remco/Projects/Argos/src/target-i386/argos-shellcode.h"
	.file 14 "/usr/include/stdio.h"
	.file 15 "/usr/include/libio.h"
	.file 16 "/usr/include/bits/types.h"
	.file 17 "/usr/lib/gcc/x86_64-linux-gnu/3.4.6/include/stddef.h"
	.file 18 "/usr/include/sys/types.h"
	.file 19 "/home/remco/Projects/Argos/src/fpu/softfloat-native.h"
	.file 20 "/usr/include/setjmp.h"
	.file 21 "/usr/include/bits/setjmp.h"
	.file 22 "/usr/include/bits/sigset.h"
	.file 23 "/home/remco/Projects/Argos/src/exec-all.h"
	.file 24 "/usr/lib/gcc/x86_64-linux-gnu/3.4.6/include/stdarg.h"
	.file 25 "<internal>"
	.file 26 "/home/remco/Projects/Argos/src/console.h"
	.file 27 "/usr/include/time.h"
	.file 28 "/usr/include/bits/time.h"
	.file 29 "/home/remco/Projects/Argos/src/qemu-timer.h"
	.file 30 "/usr/include/sys/socket.h"
	.file 31 "/usr/include/netinet/in.h"
	.file 32 "/usr/include/bits/sockaddr.h"
	.file 33 "/usr/include/unistd.h"
	.file 34 "/usr/include/bits/sigaction.h"
	.file 35 "/usr/include/signal.h"
	.file 36 "/usr/include/bits/siginfo.h"
	.file 37 "/home/remco/Projects/Argos/src/hpet.h"
	.file 38 "/usr/include/sys/time.h"
	.file 39 "/home/remco/Projects/Argos/src/qemu-char.h"
	.file 40 "/usr/include/bits/termios.h"
	.file 41 "/usr/include/sys/un.h"
	.file 42 "/usr/include/bits/socket.h"
	.file 43 "/usr/include/netdb.h"
	.file 44 "/home/remco/Projects/Argos/src/net.h"
	.file 45 "/usr/include/dirent.h"
	.file 46 "/usr/include/bits/dirent.h"
	.file 47 "/home/remco/Projects/Argos/src/sysemu.h"
	.file 48 "/home/remco/Projects/Argos/src/hw/usb.h"
	.file 49 "/home/remco/Projects/Argos/src/hw/pcmcia.h"
	.file 50 "/home/remco/Projects/Argos/src/block.h"
	.file 51 "/usr/include/zlib.h"
	.file 52 "/usr/include/zconf.h"
	.file 53 "/home/remco/Projects/Argos/src/hw/boards.h"
	.file 54 "/usr/include/sys/select.h"
	.file 55 "/usr/include/linux/if.h"
	.file 56 "/usr/include/linux/hdlc/ioctl.h"
	.file 57 "/home/remco/Projects/Argos/src/argos-memmap.h"
	.file 58 "/home/remco/Projects/Argos/src/hw/pc.h"
	.file 59 "/home/remco/Projects/Argos/src/slirp/libslirp.h"
	.text
.Letext0:
	.section	.debug_info
	.long	0xcaf7
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.Ldebug_line0
	.quad	.Letext0
	.quad	.Ltext0
	.long	.LASF1233
	.byte	0x1
	.long	.LASF1234
	.long	.LASF1235
	.uleb128 0x2
	.long	.LASF9
	.byte	0x11
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
	.byte	0x10
	.byte	0x87
	.long	0x46
	.uleb128 0x2
	.long	.LASF11
	.byte	0x10
	.byte	0x8a
	.long	0x38
	.uleb128 0x2
	.long	.LASF12
	.byte	0x10
	.byte	0x8d
	.long	0x53
	.uleb128 0x2
	.long	.LASF13
	.byte	0x10
	.byte	0x8e
	.long	0x53
	.uleb128 0x2
	.long	.LASF14
	.byte	0x10
	.byte	0x8f
	.long	0x3f
	.uleb128 0x7
	.long	0xdd
	.long	0x3f
	.uleb128 0x8
	.long	0x61
	.byte	0x1
	.byte	0x0
	.uleb128 0x2
	.long	.LASF15
	.byte	0x10
	.byte	0x91
	.long	0x53
	.uleb128 0x2
	.long	.LASF16
	.byte	0x10
	.byte	0x95
	.long	0x53
	.uleb128 0x2
	.long	.LASF17
	.byte	0x10
	.byte	0x97
	.long	0x53
	.uleb128 0x2
	.long	.LASF18
	.byte	0x10
	.byte	0xa1
	.long	0x109
	.uleb128 0x9
	.byte	0x8
	.uleb128 0x2
	.long	.LASF19
	.byte	0x10
	.byte	0xb4
	.long	0x53
	.uleb128 0x5
	.byte	0x8
	.long	0x7a
	.uleb128 0x2
	.long	.LASF20
	.byte	0x10
	.byte	0xc0
	.long	0x46
	.uleb128 0x2
	.long	.LASF21
	.byte	0x12
	.byte	0x64
	.long	0xc2
	.uleb128 0x2
	.long	.LASF22
	.byte	0x12
	.byte	0x6e
	.long	0x10b
	.uleb128 0x2
	.long	.LASF23
	.byte	0x1b
	.byte	0x68
	.long	0xfe
	.uleb128 0x2
	.long	.LASF24
	.byte	0x12
	.byte	0xc5
	.long	0x3f
	.uleb128 0x2
	.long	.LASF25
	.byte	0x12
	.byte	0xc6
	.long	0x53
	.uleb128 0xa
	.long	0x175
	.byte	0x80
	.byte	0x16
	.byte	0x20
	.uleb128 0xb
	.long	.LASF27
	.byte	0x16
	.byte	0x1f
	.long	0x175
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x7
	.long	0x185
	.long	0x38
	.uleb128 0x8
	.long	0x61
	.byte	0xf
	.byte	0x0
	.uleb128 0x2
	.long	.LASF26
	.byte	0x16
	.byte	0x20
	.long	0x15e
	.uleb128 0xc
	.long	0x1b9
	.long	.LASF30
	.byte	0x10
	.byte	0x1b
	.byte	0x79
	.uleb128 0xb
	.long	.LASF28
	.byte	0x1b
	.byte	0x7a
	.long	0xe8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF29
	.byte	0x1b
	.byte	0x7b
	.long	0x53
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0xc
	.long	0x1e2
	.long	.LASF31
	.byte	0x10
	.byte	0x1c
	.byte	0x46
	.uleb128 0xb
	.long	.LASF28
	.byte	0x1c
	.byte	0x47
	.long	0xe8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF32
	.byte	0x1c
	.byte	0x48
	.long	0xf3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x2
	.long	.LASF33
	.byte	0x36
	.byte	0x37
	.long	0x53
	.uleb128 0xa
	.long	0x204
	.byte	0x80
	.byte	0x36
	.byte	0x4e
	.uleb128 0xb
	.long	.LASF34
	.byte	0x36
	.byte	0x48
	.long	0x204
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x7
	.long	0x214
	.long	0x1e2
	.uleb128 0x8
	.long	0x61
	.byte	0xf
	.byte	0x0
	.uleb128 0x2
	.long	.LASF35
	.byte	0x36
	.byte	0x4e
	.long	0x1ed
	.uleb128 0x3
	.long	.LASF36
	.byte	0x8
	.byte	0x7
	.uleb128 0x7
	.long	0x236
	.long	0x7a
	.uleb128 0x8
	.long	0x61
	.byte	0x1f
	.byte	0x0
	.uleb128 0x2
	.long	.LASF37
	.byte	0xe
	.byte	0x31
	.long	0x241
	.uleb128 0xc
	.long	0x40d
	.long	.LASF38
	.byte	0xd8
	.byte	0xe
	.byte	0x2d
	.uleb128 0xd
	.long	.LASF39
	.byte	0xf
	.value	0x110
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF40
	.byte	0xf
	.value	0x115
	.long	0x116
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF41
	.byte	0xf
	.value	0x116
	.long	0x116
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.long	.LASF42
	.byte	0xf
	.value	0x117
	.long	0x116
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.long	.LASF43
	.byte	0xf
	.value	0x118
	.long	0x116
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.long	.LASF44
	.byte	0xf
	.value	0x119
	.long	0x116
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.long	.LASF45
	.byte	0xf
	.value	0x11a
	.long	0x116
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.long	.LASF46
	.byte	0xf
	.value	0x11b
	.long	0x116
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.long	.LASF47
	.byte	0xf
	.value	0x11c
	.long	0x116
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.long	.LASF48
	.byte	0xf
	.value	0x11e
	.long	0x116
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.long	.LASF49
	.byte	0xf
	.value	0x11f
	.long	0x116
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xd
	.long	.LASF50
	.byte	0xf
	.value	0x120
	.long	0x116
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xd
	.long	.LASF51
	.byte	0xf
	.value	0x122
	.long	0x4ab
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.long	.LASF52
	.byte	0xf
	.value	0x124
	.long	0x4b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.long	.LASF53
	.byte	0xf
	.value	0x126
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xd
	.long	.LASF54
	.byte	0xf
	.value	0x12a
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xd
	.long	.LASF55
	.byte	0xf
	.value	0x12c
	.long	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xd
	.long	.LASF56
	.byte	0xf
	.value	0x130
	.long	0x68
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xd
	.long	.LASF57
	.byte	0xf
	.value	0x131
	.long	0x88
	.byte	0x3
	.byte	0x23
	.uleb128 0x82
	.uleb128 0xd
	.long	.LASF58
	.byte	0xf
	.value	0x132
	.long	0x4b7
	.byte	0x3
	.byte	0x23
	.uleb128 0x83
	.uleb128 0xd
	.long	.LASF59
	.byte	0xf
	.value	0x136
	.long	0x4c7
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xd
	.long	.LASF60
	.byte	0xf
	.value	0x13f
	.long	0xb7
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xd
	.long	.LASF61
	.byte	0xf
	.value	0x148
	.long	0x109
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xd
	.long	.LASF62
	.byte	0xf
	.value	0x149
	.long	0x109
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xd
	.long	.LASF63
	.byte	0xf
	.value	0x14a
	.long	0x109
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xd
	.long	.LASF64
	.byte	0xf
	.value	0x14b
	.long	0x109
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xd
	.long	.LASF65
	.byte	0xf
	.value	0x14c
	.long	0x2d
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0xd
	.long	.LASF66
	.byte	0xf
	.value	0x14e
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xd
	.long	.LASF67
	.byte	0xf
	.value	0x150
	.long	0x4cd
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.byte	0x0
	.uleb128 0x2
	.long	.LASF68
	.byte	0x18
	.byte	0x2b
	.long	0x418
	.uleb128 0x7
	.long	0x428
	.long	0x428
	.uleb128 0x8
	.long	0x61
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.long	0x46d
	.long	.LASF69
	.byte	0x18
	.byte	0x19
	.byte	0x0
	.uleb128 0xb
	.long	.LASF70
	.byte	0x19
	.byte	0x0
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF71
	.byte	0x19
	.byte	0x0
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.long	.LASF72
	.byte	0x19
	.byte	0x0
	.long	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF73
	.byte	0x19
	.byte	0x0
	.long	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0xe
	.long	.LASF74
	.byte	0xf
	.byte	0xb4
	.uleb128 0xc
	.long	0x4ab
	.long	.LASF75
	.byte	0x18
	.byte	0xf
	.byte	0xba
	.uleb128 0xb
	.long	.LASF76
	.byte	0xf
	.byte	0xbb
	.long	0x4ab
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF77
	.byte	0xf
	.byte	0xbc
	.long	0x4b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF78
	.byte	0xf
	.byte	0xc0
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x474
	.uleb128 0x5
	.byte	0x8
	.long	0x241
	.uleb128 0x7
	.long	0x4c7
	.long	0x7a
	.uleb128 0x8
	.long	0x61
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x46d
	.uleb128 0x7
	.long	0x4dd
	.long	0x7a
	.uleb128 0x8
	.long	0x61
	.byte	0x13
	.byte	0x0
	.uleb128 0xf
	.long	0x4ed
	.byte	0x1
	.long	0x3f
	.uleb128 0x10
	.long	0x109
	.byte	0x0
	.uleb128 0x2
	.long	.LASF79
	.byte	0xe
	.byte	0x50
	.long	0x40d
	.uleb128 0x2
	.long	.LASF80
	.byte	0x8
	.byte	0x31
	.long	0x81
	.uleb128 0x2
	.long	.LASF81
	.byte	0x8
	.byte	0x32
	.long	0x68
	.uleb128 0x2
	.long	.LASF82
	.byte	0x8
	.byte	0x34
	.long	0x46
	.uleb128 0x2
	.long	.LASF83
	.byte	0x8
	.byte	0x38
	.long	0x38
	.uleb128 0x11
	.long	0x5ca
	.string	"tm"
	.byte	0x38
	.byte	0x1b
	.byte	0x86
	.uleb128 0xb
	.long	.LASF84
	.byte	0x1b
	.byte	0x87
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF85
	.byte	0x1b
	.byte	0x88
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.long	.LASF86
	.byte	0x1b
	.byte	0x89
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF87
	.byte	0x1b
	.byte	0x8a
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.long	.LASF88
	.byte	0x1b
	.byte	0x8b
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.long	.LASF89
	.byte	0x1b
	.byte	0x8c
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.long	.LASF90
	.byte	0x1b
	.byte	0x8d
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.long	.LASF91
	.byte	0x1b
	.byte	0x8e
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xb
	.long	.LASF92
	.byte	0x1b
	.byte	0x8f
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.long	.LASF93
	.byte	0x1b
	.byte	0x92
	.long	0x53
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.long	.LASF94
	.byte	0x1b
	.byte	0x93
	.long	0x6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0x0
	.uleb128 0xc
	.long	0x5f3
	.long	.LASF95
	.byte	0x20
	.byte	0x1b
	.byte	0xa2
	.uleb128 0xb
	.long	.LASF96
	.byte	0x1b
	.byte	0xa3
	.long	0x190
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF97
	.byte	0x1b
	.byte	0xa4
	.long	0x190
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.long	.LASF98
	.byte	0x21
	.byte	0xf7
	.long	0x11c
	.uleb128 0x2
	.long	.LASF99
	.byte	0x15
	.byte	0x20
	.long	0x609
	.uleb128 0x7
	.long	0x619
	.long	0x53
	.uleb128 0x8
	.long	0x61
	.byte	0x7
	.byte	0x0
	.uleb128 0xc
	.long	0x650
	.long	.LASF100
	.byte	0xc8
	.byte	0x14
	.byte	0x24
	.uleb128 0xb
	.long	.LASF101
	.byte	0x14
	.byte	0x29
	.long	0x5fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF102
	.byte	0x14
	.byte	0x2a
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xb
	.long	.LASF103
	.byte	0x14
	.byte	0x2b
	.long	0x185
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.byte	0x0
	.uleb128 0x2
	.long	.LASF104
	.byte	0x14
	.byte	0x31
	.long	0x65b
	.uleb128 0x7
	.long	0x66b
	.long	0x619
	.uleb128 0x8
	.long	0x61
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.long	.LASF105
	.byte	0xc
	.byte	0x31
	.long	0x50e
	.uleb128 0x2
	.long	.LASF106
	.byte	0xc
	.byte	0x49
	.long	0x519
	.uleb128 0xc
	.long	0x6c6
	.long	.LASF107
	.byte	0x18
	.byte	0xc
	.byte	0x69
	.uleb128 0xb
	.long	.LASF108
	.byte	0xc
	.byte	0x70
	.long	0x66b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF109
	.byte	0xc
	.byte	0x71
	.long	0x66b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.long	.LASF110
	.byte	0xc
	.byte	0x72
	.long	0x66b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF111
	.byte	0xc
	.byte	0x74
	.long	0x676
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.long	.LASF107
	.byte	0xc
	.byte	0x75
	.long	0x681
	.uleb128 0x3
	.long	.LASF112
	.byte	0x4
	.byte	0x4
	.uleb128 0x3
	.long	.LASF113
	.byte	0x8
	.byte	0x4
	.uleb128 0x2
	.long	.LASF114
	.byte	0x13
	.byte	0x3b
	.long	0x6d1
	.uleb128 0x2
	.long	.LASF115
	.byte	0x13
	.byte	0x3c
	.long	0x6d8
	.uleb128 0x2
	.long	.LASF116
	.byte	0x13
	.byte	0x3e
	.long	0x700
	.uleb128 0x3
	.long	.LASF117
	.byte	0x10
	.byte	0x4
	.uleb128 0xc
	.long	0x730
	.long	.LASF118
	.byte	0x2
	.byte	0x13
	.byte	0x6d
	.uleb128 0xb
	.long	.LASF119
	.byte	0x13
	.byte	0x6e
	.long	0x88
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF120
	.byte	0x13
	.byte	0x70
	.long	0x88
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0x0
	.uleb128 0x2
	.long	.LASF118
	.byte	0x13
	.byte	0x72
	.long	0x707
	.uleb128 0x12
	.long	.LASF121
	.byte	0xb
	.value	0x198
	.long	0x6f5
	.uleb128 0x13
	.long	0x791
	.long	.LASF122
	.byte	0x10
	.byte	0xb
	.value	0x19d
	.uleb128 0xd
	.long	.LASF123
	.byte	0xb
	.value	0x19e
	.long	0x50e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF124
	.byte	0xb
	.value	0x19f
	.long	0x66b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.long	.LASF125
	.byte	0xb
	.value	0x1a0
	.long	0x50e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF126
	.byte	0xb
	.value	0x1a1
	.long	0x50e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x12
	.long	.LASF122
	.byte	0xb
	.value	0x1a2
	.long	0x747
	.uleb128 0x14
	.long	0x7e9
	.byte	0x10
	.byte	0xb
	.value	0x1ab
	.uleb128 0x15
	.string	"_b"
	.byte	0xb
	.value	0x1a5
	.long	0x7e9
	.uleb128 0x15
	.string	"_w"
	.byte	0xb
	.value	0x1a6
	.long	0x7f9
	.uleb128 0x15
	.string	"_l"
	.byte	0xb
	.value	0x1a7
	.long	0x809
	.uleb128 0x15
	.string	"_q"
	.byte	0xb
	.value	0x1a8
	.long	0x819
	.uleb128 0x15
	.string	"_s"
	.byte	0xb
	.value	0x1a9
	.long	0x829
	.uleb128 0x15
	.string	"_d"
	.byte	0xb
	.value	0x1aa
	.long	0x839
	.byte	0x0
	.uleb128 0x7
	.long	0x7f9
	.long	0x4f8
	.uleb128 0x8
	.long	0x61
	.byte	0xf
	.byte	0x0
	.uleb128 0x7
	.long	0x809
	.long	0x503
	.uleb128 0x8
	.long	0x61
	.byte	0x7
	.byte	0x0
	.uleb128 0x7
	.long	0x819
	.long	0x50e
	.uleb128 0x8
	.long	0x61
	.byte	0x3
	.byte	0x0
	.uleb128 0x7
	.long	0x829
	.long	0x519
	.uleb128 0x8
	.long	0x61
	.byte	0x1
	.byte	0x0
	.uleb128 0x7
	.long	0x839
	.long	0x6df
	.uleb128 0x8
	.long	0x61
	.byte	0x3
	.byte	0x0
	.uleb128 0x7
	.long	0x849
	.long	0x6ea
	.uleb128 0x8
	.long	0x61
	.byte	0x1
	.byte	0x0
	.uleb128 0x12
	.long	.LASF127
	.byte	0xb
	.value	0x1ab
	.long	0x79d
	.uleb128 0x14
	.long	0x88a
	.byte	0x8
	.byte	0xb
	.value	0x1b2
	.uleb128 0x15
	.string	"_b"
	.byte	0xb
	.value	0x1ae
	.long	0x88a
	.uleb128 0x15
	.string	"_w"
	.byte	0xb
	.value	0x1af
	.long	0x89a
	.uleb128 0x15
	.string	"_l"
	.byte	0xb
	.value	0x1b0
	.long	0x8aa
	.uleb128 0x15
	.string	"q"
	.byte	0xb
	.value	0x1b1
	.long	0x519
	.byte	0x0
	.uleb128 0x7
	.long	0x89a
	.long	0x4f8
	.uleb128 0x8
	.long	0x61
	.byte	0x7
	.byte	0x0
	.uleb128 0x7
	.long	0x8aa
	.long	0x503
	.uleb128 0x8
	.long	0x61
	.byte	0x1
	.byte	0x0
	.uleb128 0x7
	.long	0x8ba
	.long	0x50e
	.uleb128 0x8
	.long	0x61
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.long	.LASF128
	.byte	0xb
	.value	0x1b2
	.long	0x855
	.uleb128 0x2
	.long	.LASF129
	.byte	0xa
	.byte	0x2f
	.long	0x50e
	.uleb128 0x2
	.long	.LASF130
	.byte	0xa
	.byte	0x34
	.long	0x50e
	.uleb128 0x2
	.long	.LASF131
	.byte	0xa
	.byte	0x35
	.long	0x8d1
	.uleb128 0x2
	.long	.LASF132
	.byte	0xa
	.byte	0x4f
	.long	0x8dc
	.uleb128 0xc
	.long	0x91b
	.long	.LASF133
	.byte	0x8
	.byte	0x9
	.byte	0x37
	.uleb128 0xb
	.long	.LASF134
	.byte	0x9
	.byte	0x38
	.long	0x8c6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF135
	.byte	0x9
	.byte	0x39
	.long	0x8d1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.long	.LASF136
	.byte	0x9
	.byte	0x3d
	.long	0x8f2
	.uleb128 0xc
	.long	0xa9b
	.long	.LASF137
	.byte	0xd0
	.byte	0xd
	.byte	0x36
	.uleb128 0xb
	.long	.LASF138
	.byte	0xd
	.byte	0x38
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF139
	.byte	0xd
	.byte	0x39
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x16
	.string	"cr3"
	.byte	0xd
	.byte	0x3d
	.long	0x66b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF140
	.byte	0xd
	.byte	0x3f
	.long	0xa9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.long	.LASF141
	.byte	0xd
	.byte	0x41
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.long	.LASF142
	.byte	0xd
	.byte	0x43
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xb
	.long	.LASF143
	.byte	0xd
	.byte	0x45
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.long	.LASF144
	.byte	0xd
	.byte	0x47
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xb
	.long	.LASF145
	.byte	0xd
	.byte	0x4a
	.long	0x66b
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.long	.LASF146
	.byte	0xd
	.byte	0x4b
	.long	0x66b
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xb
	.long	.LASF147
	.byte	0xd
	.byte	0x4c
	.long	0x66b
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xb
	.long	.LASF148
	.byte	0xd
	.byte	0x4e
	.long	0xaa1
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xb
	.long	.LASF149
	.byte	0xd
	.byte	0x50
	.long	0x68
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0xb
	.long	.LASF150
	.byte	0xd
	.byte	0x52
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xb
	.long	.LASF151
	.byte	0xd
	.byte	0x54
	.long	0xab1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xb
	.long	.LASF152
	.byte	0xd
	.byte	0x56
	.long	0x66b
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xb
	.long	.LASF153
	.byte	0xd
	.byte	0x58
	.long	0xac1
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xb
	.long	.LASF154
	.byte	0xd
	.byte	0x5b
	.long	0x38
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xb
	.long	.LASF155
	.byte	0xd
	.byte	0x5c
	.long	0x81
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xb
	.long	.LASF156
	.byte	0xd
	.byte	0x5e
	.long	0x46
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0xb
	.long	.LASF157
	.byte	0xd
	.byte	0x60
	.long	0x66b
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xb
	.long	.LASF158
	.byte	0xd
	.byte	0x62
	.long	0xac1
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0xb
	.long	.LASF159
	.byte	0xd
	.byte	0x65
	.long	0x38
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xb
	.long	.LASF160
	.byte	0xd
	.byte	0x66
	.long	0x81
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.uleb128 0xb
	.long	.LASF161
	.byte	0xd
	.byte	0x68
	.long	0x46
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x236
	.uleb128 0x7
	.long	0xab1
	.long	0x7a
	.uleb128 0x8
	.long	0x61
	.byte	0x10
	.byte	0x0
	.uleb128 0x7
	.long	0xac1
	.long	0x8d1
	.uleb128 0x8
	.long	0x61
	.byte	0x10
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x8d1
	.uleb128 0x2
	.long	.LASF162
	.byte	0xd
	.byte	0x69
	.long	0x926
	.uleb128 0x14
	.long	0xaf2
	.byte	0x10
	.byte	0xb
	.value	0x20f
	.uleb128 0x15
	.string	"d"
	.byte	0xb
	.value	0x20a
	.long	0x73b
	.uleb128 0x15
	.string	"mmx"
	.byte	0xb
	.value	0x20e
	.long	0x8ba
	.byte	0x0
	.uleb128 0x14
	.long	0xb28
	.byte	0x8
	.byte	0xb
	.value	0x219
	.uleb128 0x15
	.string	"f"
	.byte	0xb
	.value	0x215
	.long	0x6d1
	.uleb128 0x15
	.string	"d"
	.byte	0xb
	.value	0x216
	.long	0x6d8
	.uleb128 0x15
	.string	"i32"
	.byte	0xb
	.value	0x217
	.long	0x3f
	.uleb128 0x15
	.string	"i64"
	.byte	0xb
	.value	0x218
	.long	0x153
	.byte	0x0
	.uleb128 0x17
	.long	0xb50
	.byte	0x10
	.byte	0xb
	.value	0x246
	.uleb128 0xd
	.long	.LASF163
	.byte	0xb
	.value	0x246
	.long	0x66b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF111
	.byte	0xb
	.value	0x246
	.long	0x676
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x18
	.long	0x10ec
	.long	.LASF164
	.value	0xb820
	.byte	0xb
	.value	0x1d8
	.uleb128 0xd
	.long	.LASF165
	.byte	0xb
	.value	0x1df
	.long	0x10ec
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x19
	.string	"eip"
	.byte	0xb
	.value	0x1e0
	.long	0x66b
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.long	.LASF166
	.byte	0xb
	.value	0x1e1
	.long	0x66b
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.long	.LASF167
	.byte	0xb
	.value	0x1e6
	.long	0x91b
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.long	.LASF168
	.byte	0xb
	.value	0x1e6
	.long	0x91b
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.long	.LASF169
	.byte	0xb
	.value	0x1e6
	.long	0x91b
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.long	.LASF170
	.byte	0xb
	.value	0x1e7
	.long	0x10fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.long	.LASF171
	.byte	0xb
	.value	0x1e9
	.long	0xac7
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xd
	.long	.LASF172
	.byte	0xb
	.value	0x1ec
	.long	0x66b
	.byte	0x3
	.byte	0x23
	.uleb128 0x150
	.uleb128 0xd
	.long	.LASF173
	.byte	0xb
	.value	0x1ed
	.long	0x66b
	.byte	0x3
	.byte	0x23
	.uleb128 0x154
	.uleb128 0xd
	.long	.LASF174
	.byte	0xb
	.value	0x1ee
	.long	0x50e
	.byte	0x3
	.byte	0x23
	.uleb128 0x158
	.uleb128 0x19
	.string	"df"
	.byte	0xb
	.value	0x1ef
	.long	0x148
	.byte	0x3
	.byte	0x23
	.uleb128 0x15c
	.uleb128 0xd
	.long	.LASF175
	.byte	0xb
	.value	0x1f0
	.long	0x50e
	.byte	0x3
	.byte	0x23
	.uleb128 0x160
	.uleb128 0xd
	.long	.LASF176
	.byte	0xb
	.value	0x1f3
	.long	0x110c
	.byte	0x3
	.byte	0x23
	.uleb128 0x164
	.uleb128 0x19
	.string	"ldt"
	.byte	0xb
	.value	0x1f4
	.long	0x791
	.byte	0x3
	.byte	0x23
	.uleb128 0x1c4
	.uleb128 0x19
	.string	"tr"
	.byte	0xb
	.value	0x1f5
	.long	0x791
	.byte	0x3
	.byte	0x23
	.uleb128 0x1d4
	.uleb128 0x19
	.string	"gdt"
	.byte	0xb
	.value	0x1f6
	.long	0x791
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e4
	.uleb128 0x19
	.string	"idt"
	.byte	0xb
	.value	0x1f7
	.long	0x791
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f4
	.uleb128 0x19
	.string	"cr"
	.byte	0xb
	.value	0x1f9
	.long	0x111c
	.byte	0x3
	.byte	0x23
	.uleb128 0x204
	.uleb128 0xd
	.long	.LASF177
	.byte	0xb
	.value	0x1fa
	.long	0x50e
	.byte	0x3
	.byte	0x23
	.uleb128 0x218
	.uleb128 0xd
	.long	.LASF178
	.byte	0xb
	.value	0x201
	.long	0x66b
	.byte	0x3
	.byte	0x23
	.uleb128 0x21c
	.uleb128 0xd
	.long	.LASF179
	.byte	0xb
	.value	0x202
	.long	0x66b
	.byte	0x3
	.byte	0x23
	.uleb128 0x220
	.uleb128 0xd
	.long	.LASF180
	.byte	0xb
	.value	0x204
	.long	0x46
	.byte	0x3
	.byte	0x23
	.uleb128 0x224
	.uleb128 0xd
	.long	.LASF181
	.byte	0xb
	.value	0x205
	.long	0x46
	.byte	0x3
	.byte	0x23
	.uleb128 0x228
	.uleb128 0xd
	.long	.LASF182
	.byte	0xb
	.value	0x206
	.long	0x46
	.byte	0x3
	.byte	0x23
	.uleb128 0x22c
	.uleb128 0xd
	.long	.LASF183
	.byte	0xb
	.value	0x207
	.long	0x88a
	.byte	0x3
	.byte	0x23
	.uleb128 0x230
	.uleb128 0xd
	.long	.LASF184
	.byte	0xb
	.value	0x20f
	.long	0x112c
	.byte	0x3
	.byte	0x23
	.uleb128 0x240
	.uleb128 0xd
	.long	.LASF185
	.byte	0xb
	.value	0x212
	.long	0x730
	.byte	0x3
	.byte	0x23
	.uleb128 0x2c0
	.uleb128 0x19
	.string	"ft0"
	.byte	0xb
	.value	0x213
	.long	0x73b
	.byte	0x3
	.byte	0x23
	.uleb128 0x2d0
	.uleb128 0xd
	.long	.LASF186
	.byte	0xb
	.value	0x219
	.long	0xaf2
	.byte	0x3
	.byte	0x23
	.uleb128 0x2e0
	.uleb128 0xd
	.long	.LASF187
	.byte	0xb
	.value	0x21b
	.long	0x730
	.byte	0x3
	.byte	0x23
	.uleb128 0x2e8
	.uleb128 0xd
	.long	.LASF188
	.byte	0xb
	.value	0x21c
	.long	0x50e
	.byte	0x3
	.byte	0x23
	.uleb128 0x2ec
	.uleb128 0xd
	.long	.LASF189
	.byte	0xb
	.value	0x21d
	.long	0x113c
	.byte	0x3
	.byte	0x23
	.uleb128 0x2f0
	.uleb128 0xd
	.long	.LASF190
	.byte	0xb
	.value	0x21e
	.long	0x849
	.byte	0x3
	.byte	0x23
	.uleb128 0x370
	.uleb128 0xd
	.long	.LASF191
	.byte	0xb
	.value	0x21f
	.long	0x8ba
	.byte	0x3
	.byte	0x23
	.uleb128 0x380
	.uleb128 0xd
	.long	.LASF192
	.byte	0xb
	.value	0x222
	.long	0x50e
	.byte	0x3
	.byte	0x23
	.uleb128 0x388
	.uleb128 0xd
	.long	.LASF193
	.byte	0xb
	.value	0x223
	.long	0x50e
	.byte	0x3
	.byte	0x23
	.uleb128 0x38c
	.uleb128 0xd
	.long	.LASF194
	.byte	0xb
	.value	0x224
	.long	0x50e
	.byte	0x3
	.byte	0x23
	.uleb128 0x390
	.uleb128 0xd
	.long	.LASF195
	.byte	0xb
	.value	0x225
	.long	0x519
	.byte	0x3
	.byte	0x23
	.uleb128 0x398
	.uleb128 0xd
	.long	.LASF196
	.byte	0xb
	.value	0x226
	.long	0x519
	.byte	0x3
	.byte	0x23
	.uleb128 0x3a0
	.uleb128 0xd
	.long	.LASF197
	.byte	0xb
	.value	0x228
	.long	0x676
	.byte	0x3
	.byte	0x23
	.uleb128 0x3a8
	.uleb128 0xd
	.long	.LASF198
	.byte	0xb
	.value	0x229
	.long	0x676
	.byte	0x3
	.byte	0x23
	.uleb128 0x3b0
	.uleb128 0xd
	.long	.LASF199
	.byte	0xb
	.value	0x22a
	.long	0x519
	.byte	0x3
	.byte	0x23
	.uleb128 0x3b8
	.uleb128 0xd
	.long	.LASF200
	.byte	0xb
	.value	0x22b
	.long	0x503
	.byte	0x3
	.byte	0x23
	.uleb128 0x3c0
	.uleb128 0xd
	.long	.LASF201
	.byte	0xb
	.value	0x22c
	.long	0x503
	.byte	0x3
	.byte	0x23
	.uleb128 0x3c2
	.uleb128 0xd
	.long	.LASF202
	.byte	0xb
	.value	0x22d
	.long	0x503
	.byte	0x3
	.byte	0x23
	.uleb128 0x3c4
	.uleb128 0xd
	.long	.LASF203
	.byte	0xb
	.value	0x22e
	.long	0x503
	.byte	0x3
	.byte	0x23
	.uleb128 0x3c6
	.uleb128 0xd
	.long	.LASF204
	.byte	0xb
	.value	0x22f
	.long	0x50e
	.byte	0x3
	.byte	0x23
	.uleb128 0x3c8
	.uleb128 0x19
	.string	"pat"
	.byte	0xb
	.value	0x238
	.long	0x519
	.byte	0x3
	.byte	0x23
	.uleb128 0x3d0
	.uleb128 0xd
	.long	.LASF205
	.byte	0xb
	.value	0x23b
	.long	0x650
	.byte	0x3
	.byte	0x23
	.uleb128 0x3d8
	.uleb128 0xd
	.long	.LASF206
	.byte	0xb
	.value	0x23c
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x4a0
	.uleb128 0xd
	.long	.LASF207
	.byte	0xb
	.value	0x23d
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x4a4
	.uleb128 0xd
	.long	.LASF208
	.byte	0xb
	.value	0x23e
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x4a8
	.uleb128 0xd
	.long	.LASF209
	.byte	0xb
	.value	0x23f
	.long	0x66b
	.byte	0x3
	.byte	0x23
	.uleb128 0x4ac
	.uleb128 0x19
	.string	"dr"
	.byte	0xb
	.value	0x240
	.long	0x10ec
	.byte	0x3
	.byte	0x23
	.uleb128 0x4b0
	.uleb128 0xd
	.long	.LASF210
	.byte	0xb
	.value	0x241
	.long	0x50e
	.byte	0x3
	.byte	0x23
	.uleb128 0x4d0
	.uleb128 0xd
	.long	.LASF211
	.byte	0xb
	.value	0x242
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x4d4
	.uleb128 0xd
	.long	.LASF212
	.byte	0xb
	.value	0x243
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x4d8
	.uleb128 0xd
	.long	.LASF213
	.byte	0xb
	.value	0x244
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x4dc
	.uleb128 0xd
	.long	.LASF214
	.byte	0xb
	.value	0x246
	.long	0x120f
	.byte	0x3
	.byte	0x23
	.uleb128 0x4e0
	.uleb128 0xd
	.long	.LASF215
	.byte	0xb
	.value	0x246
	.long	0x38
	.byte	0x3
	.byte	0x23
	.uleb128 0x4e8
	.uleb128 0xd
	.long	.LASF216
	.byte	0xb
	.value	0x246
	.long	0x66b
	.byte	0x3
	.byte	0x23
	.uleb128 0x4f0
	.uleb128 0xd
	.long	.LASF217
	.byte	0xb
	.value	0x246
	.long	0x1215
	.byte	0x3
	.byte	0x23
	.uleb128 0x4f8
	.uleb128 0xd
	.long	.LASF218
	.byte	0xb
	.value	0x246
	.long	0x122b
	.byte	0x3
	.byte	0x23
	.uleb128 0x34f8
	.uleb128 0xd
	.long	.LASF219
	.byte	0xb
	.value	0x246
	.long	0x123c
	.byte	0x4
	.byte	0x23
	.uleb128 0xb4f8
	.uleb128 0xd
	.long	.LASF220
	.byte	0xb
	.value	0x246
	.long	0x3f
	.byte	0x4
	.byte	0x23
	.uleb128 0xb578
	.uleb128 0xd
	.long	.LASF221
	.byte	0xb
	.value	0x246
	.long	0x3f
	.byte	0x4
	.byte	0x23
	.uleb128 0xb57c
	.uleb128 0xd
	.long	.LASF222
	.byte	0xb
	.value	0x246
	.long	0x124c
	.byte	0x4
	.byte	0x23
	.uleb128 0xb580
	.uleb128 0xd
	.long	.LASF223
	.byte	0xb
	.value	0x246
	.long	0x3f
	.byte	0x4
	.byte	0x23
	.uleb128 0xb780
	.uleb128 0xd
	.long	.LASF224
	.byte	0xb
	.value	0x246
	.long	0x3f
	.byte	0x4
	.byte	0x23
	.uleb128 0xb784
	.uleb128 0xd
	.long	.LASF225
	.byte	0xb
	.value	0x246
	.long	0x109
	.byte	0x4
	.byte	0x23
	.uleb128 0xb788
	.uleb128 0xd
	.long	.LASF226
	.byte	0xb
	.value	0x246
	.long	0x3f
	.byte	0x4
	.byte	0x23
	.uleb128 0xb790
	.uleb128 0xd
	.long	.LASF227
	.byte	0xb
	.value	0x246
	.long	0x109
	.byte	0x4
	.byte	0x23
	.uleb128 0xb798
	.uleb128 0xd
	.long	.LASF228
	.byte	0xb
	.value	0x246
	.long	0x6f
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7a0
	.uleb128 0xd
	.long	.LASF229
	.byte	0xb
	.value	0x249
	.long	0x50e
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7a8
	.uleb128 0xd
	.long	.LASF230
	.byte	0xb
	.value	0x24a
	.long	0x50e
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7ac
	.uleb128 0xd
	.long	.LASF231
	.byte	0xb
	.value	0x24b
	.long	0x50e
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7b0
	.uleb128 0xd
	.long	.LASF232
	.byte	0xb
	.value	0x24c
	.long	0x50e
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7b4
	.uleb128 0xd
	.long	.LASF233
	.byte	0xb
	.value	0x24d
	.long	0x50e
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7b8
	.uleb128 0xd
	.long	.LASF234
	.byte	0xb
	.value	0x24e
	.long	0x50e
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7bc
	.uleb128 0xd
	.long	.LASF235
	.byte	0xb
	.value	0x24f
	.long	0x50e
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7c0
	.uleb128 0xd
	.long	.LASF236
	.byte	0xb
	.value	0x250
	.long	0x50e
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7c4
	.uleb128 0xd
	.long	.LASF237
	.byte	0xb
	.value	0x251
	.long	0x125c
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7c8
	.uleb128 0xd
	.long	.LASF238
	.byte	0xb
	.value	0x252
	.long	0x50e
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7f8
	.uleb128 0xd
	.long	.LASF239
	.byte	0xb
	.value	0x253
	.long	0x50e
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7fc
	.uleb128 0xd
	.long	.LASF240
	.byte	0xb
	.value	0x254
	.long	0x50e
	.byte	0x4
	.byte	0x23
	.uleb128 0xb800
	.uleb128 0xd
	.long	.LASF241
	.byte	0xb
	.value	0x25b
	.long	0x126c
	.byte	0x4
	.byte	0x23
	.uleb128 0xb808
	.uleb128 0xd
	.long	.LASF242
	.byte	0xb
	.value	0x25f
	.long	0x1278
	.byte	0x4
	.byte	0x23
	.uleb128 0xb810
	.byte	0x0
	.uleb128 0x7
	.long	0x10fc
	.long	0x66b
	.uleb128 0x8
	.long	0x61
	.byte	0x7
	.byte	0x0
	.uleb128 0x7
	.long	0x110c
	.long	0x91b
	.uleb128 0x8
	.long	0x61
	.byte	0x7
	.byte	0x0
	.uleb128 0x7
	.long	0x111c
	.long	0x791
	.uleb128 0x8
	.long	0x61
	.byte	0x5
	.byte	0x0
	.uleb128 0x7
	.long	0x112c
	.long	0x66b
	.uleb128 0x8
	.long	0x61
	.byte	0x4
	.byte	0x0
	.uleb128 0x7
	.long	0x113c
	.long	0xad2
	.uleb128 0x8
	.long	0x61
	.byte	0x7
	.byte	0x0
	.uleb128 0x7
	.long	0x114c
	.long	0x849
	.uleb128 0x8
	.long	0x61
	.byte	0x7
	.byte	0x0
	.uleb128 0x13
	.long	0x120f
	.long	.LASF243
	.byte	0x68
	.byte	0xb
	.value	0x246
	.uleb128 0x16
	.string	"pc"
	.byte	0x17
	.byte	0x93
	.long	0x66b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF244
	.byte	0x17
	.byte	0x94
	.long	0x66b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.long	.LASF126
	.byte	0x17
	.byte	0x95
	.long	0x519
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF245
	.byte	0x17
	.byte	0x96
	.long	0x503
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.long	.LASF246
	.byte	0x17
	.byte	0x98
	.long	0x503
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0xb
	.long	.LASF247
	.byte	0x17
	.byte	0x9e
	.long	0x1ad4
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.long	.LASF248
	.byte	0x17
	.byte	0xa0
	.long	0x120f
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.long	.LASF249
	.byte	0x17
	.byte	0xa3
	.long	0x2d65
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.long	.LASF250
	.byte	0x17
	.byte	0xa4
	.long	0x2d75
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xb
	.long	.LASF251
	.byte	0x17
	.byte	0xa8
	.long	0x89a
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xb
	.long	.LASF252
	.byte	0x17
	.byte	0xac
	.long	0x2d85
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xb
	.long	.LASF253
	.byte	0x17
	.byte	0xb2
	.long	0x2d65
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xb
	.long	.LASF254
	.byte	0x17
	.byte	0xb3
	.long	0x120f
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x114c
	.uleb128 0x7
	.long	0x122b
	.long	0x6c6
	.uleb128 0x8
	.long	0x61
	.byte	0x1
	.uleb128 0x8
	.long	0x61
	.byte	0xff
	.byte	0x0
	.uleb128 0x7
	.long	0x123c
	.long	0x120f
	.uleb128 0x1a
	.long	0x61
	.value	0xfff
	.byte	0x0
	.uleb128 0x7
	.long	0x124c
	.long	0x66b
	.uleb128 0x8
	.long	0x61
	.byte	0x1f
	.byte	0x0
	.uleb128 0x7
	.long	0x125c
	.long	0xb28
	.uleb128 0x8
	.long	0x61
	.byte	0x1f
	.byte	0x0
	.uleb128 0x7
	.long	0x126c
	.long	0x50e
	.uleb128 0x8
	.long	0x61
	.byte	0xb
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x8dc
	.uleb128 0x1b
	.long	.LASF274
	.byte	0x1
	.uleb128 0x5
	.byte	0x8
	.long	0x1272
	.uleb128 0x12
	.long	.LASF164
	.byte	0xb
	.value	0x260
	.long	0xb50
	.uleb128 0x13
	.long	0x12c5
	.long	.LASF255
	.byte	0x18
	.byte	0x2
	.value	0x353
	.uleb128 0xd
	.long	.LASF256
	.byte	0x2
	.value	0x354
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF257
	.byte	0x2
	.value	0x355
	.long	0x6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF258
	.byte	0x2
	.value	0x356
	.long	0x6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x12
	.long	.LASF255
	.byte	0x2
	.value	0x357
	.long	0x128a
	.uleb128 0x5
	.byte	0x8
	.long	0x91b
	.uleb128 0x2
	.long	.LASF259
	.byte	0x6
	.byte	0x45
	.long	0x12e2
	.uleb128 0xc
	.long	0x132a
	.long	.LASF259
	.byte	0x20
	.byte	0x6
	.byte	0x45
	.uleb128 0x19
	.string	"cb"
	.byte	0x1
	.value	0x1ebe
	.long	0x34a7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF227
	.byte	0x1
	.value	0x1ebf
	.long	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF260
	.byte	0x1
	.value	0x1ec0
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.long	.LASF261
	.byte	0x1
	.value	0x1ec1
	.long	0x1d2b
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x2
	.long	.LASF262
	.byte	0x6
	.byte	0x47
	.long	0x1335
	.uleb128 0x1c
	.long	0x1341
	.byte	0x1
	.uleb128 0x10
	.long	0x109
	.byte	0x0
	.uleb128 0x2
	.long	.LASF263
	.byte	0x6
	.byte	0x5f
	.long	0x134c
	.uleb128 0x1c
	.long	0x1362
	.byte	0x1
	.uleb128 0x10
	.long	0x109
	.uleb128 0x10
	.long	0x1362
	.uleb128 0x10
	.long	0x3f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x1368
	.uleb128 0x6
	.long	0x4f8
	.uleb128 0x2
	.long	.LASF264
	.byte	0x6
	.byte	0x60
	.long	0x4dd
	.uleb128 0x2
	.long	.LASF265
	.byte	0x6
	.byte	0x61
	.long	0x1335
	.uleb128 0xc
	.long	0x13ac
	.long	.LASF266
	.byte	0x10
	.byte	0x6
	.byte	0x63
	.uleb128 0xb
	.long	.LASF267
	.byte	0x6
	.byte	0x64
	.long	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF268
	.byte	0x6
	.byte	0x65
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x2
	.long	.LASF269
	.byte	0x6
	.byte	0x6c
	.long	0x13b7
	.uleb128 0xc
	.long	0x13ee
	.long	.LASF269
	.byte	0x18
	.byte	0x6
	.byte	0x6c
	.uleb128 0xb
	.long	.LASF270
	.byte	0x2c
	.byte	0x2a
	.long	0x1c38
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF271
	.byte	0x2c
	.byte	0x2b
	.long	0x6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF272
	.byte	0x2c
	.byte	0x2c
	.long	0x1c48
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.long	.LASF273
	.byte	0x6
	.byte	0x6d
	.long	0x13f9
	.uleb128 0x1b
	.long	.LASF273
	.byte	0x1
	.uleb128 0x2
	.long	.LASF275
	.byte	0x6
	.byte	0x6e
	.long	0x140a
	.uleb128 0x1b
	.long	.LASF275
	.byte	0x1
	.uleb128 0x2
	.long	.LASF276
	.byte	0x6
	.byte	0x6f
	.long	0x141b
	.uleb128 0xc
	.long	0x14fa
	.long	.LASF276
	.byte	0x68
	.byte	0x6
	.byte	0x6f
	.uleb128 0xb
	.long	.LASF277
	.byte	0x1a
	.byte	0x42
	.long	0x1ad4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF278
	.byte	0x1a
	.byte	0x43
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF279
	.byte	0x1a
	.byte	0x44
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x16
	.string	"bgr"
	.byte	0x1a
	.byte	0x45
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.long	.LASF280
	.byte	0x1a
	.byte	0x46
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.long	.LASF281
	.byte	0x1a
	.byte	0x47
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.long	.LASF227
	.byte	0x1a
	.byte	0x48
	.long	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.long	.LASF282
	.byte	0x1a
	.byte	0x49
	.long	0x1dd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.long	.LASF283
	.byte	0x1a
	.byte	0x4b
	.long	0x1dfd
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xb
	.long	.LASF284
	.byte	0x1a
	.byte	0x4c
	.long	0x1e19
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xb
	.long	.LASF285
	.byte	0x1a
	.byte	0x4d
	.long	0x1e2b
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xb
	.long	.LASF286
	.byte	0x1a
	.byte	0x4f
	.long	0x1e5b
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xb
	.long	.LASF287
	.byte	0x1a
	.byte	0x51
	.long	0x1e86
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xb
	.long	.LASF288
	.byte	0x1a
	.byte	0x52
	.long	0x1ea2
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xb
	.long	.LASF289
	.byte	0x1a
	.byte	0x54
	.long	0x1ed2
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.byte	0x0
	.uleb128 0x2
	.long	.LASF290
	.byte	0x6
	.byte	0x71
	.long	0x1505
	.uleb128 0xc
	.long	0x15c7
	.long	.LASF290
	.byte	0x68
	.byte	0x6
	.byte	0x71
	.uleb128 0xb
	.long	.LASF291
	.byte	0x27
	.byte	0x22
	.long	0x1cd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF292
	.byte	0x27
	.byte	0x23
	.long	0x1ce8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF293
	.byte	0x27
	.byte	0x24
	.long	0x1d08
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.long	.LASF294
	.byte	0x27
	.byte	0x25
	.long	0x1d0e
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.long	.LASF295
	.byte	0x27
	.byte	0x26
	.long	0x1c10
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.long	.LASF296
	.byte	0x27
	.byte	0x27
	.long	0x1c0a
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.long	.LASF297
	.byte	0x27
	.byte	0x28
	.long	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xb
	.long	.LASF298
	.byte	0x27
	.byte	0x29
	.long	0x1d25
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xb
	.long	.LASF299
	.byte	0x27
	.byte	0x2a
	.long	0x1ce8
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xb
	.long	.LASF300
	.byte	0x27
	.byte	0x2b
	.long	0x1ce8
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xb
	.long	.LASF227
	.byte	0x27
	.byte	0x2c
	.long	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xb
	.long	.LASF301
	.byte	0x27
	.byte	0x2d
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x16
	.string	"bh"
	.byte	0x27
	.byte	0x2e
	.long	0x1d2b
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.byte	0x0
	.uleb128 0x2
	.long	.LASF302
	.byte	0x6
	.byte	0x72
	.long	0x15d2
	.uleb128 0xc
	.long	0x1624
	.long	.LASF302
	.byte	0x20
	.byte	0x6
	.byte	0x72
	.uleb128 0x16
	.string	"id"
	.byte	0x2c
	.byte	0x14
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF303
	.byte	0x2c
	.byte	0x15
	.long	0x1c32
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF261
	.byte	0x2c
	.byte	0x16
	.long	0x1c1c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.long	.LASF304
	.byte	0x2c
	.byte	0x17
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.long	.LASF305
	.byte	0x2c
	.byte	0x17
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x2
	.long	.LASF306
	.byte	0x6
	.byte	0x73
	.long	0x162f
	.uleb128 0x1d
	.long	0x16c3
	.long	.LASF306
	.value	0x8030
	.byte	0x6
	.byte	0x73
	.uleb128 0xd
	.long	.LASF307
	.byte	0x1
	.value	0x18f8
	.long	0xa9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x19
	.string	"bs"
	.byte	0x1
	.value	0x18f9
	.long	0x1fba
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF308
	.byte	0x1
	.value	0x18fa
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.long	.LASF309
	.byte	0x1
	.value	0x18fb
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.long	.LASF310
	.byte	0x1
	.value	0x18fc
	.long	0x153
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.long	.LASF311
	.byte	0x1
	.value	0x18fd
	.long	0x153
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.long	.LASF312
	.byte	0x1
	.value	0x18ff
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.long	.LASF313
	.byte	0x1
	.value	0x1900
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x19
	.string	"buf"
	.byte	0x1
	.value	0x1901
	.long	0x3348
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0x0
	.uleb128 0x2
	.long	.LASF314
	.byte	0x6
	.byte	0x77
	.long	0x16ce
	.uleb128 0xc
	.long	0x1725
	.long	.LASF314
	.byte	0x28
	.byte	0x6
	.byte	0x77
	.uleb128 0xd
	.long	.LASF315
	.byte	0x1
	.value	0x475
	.long	0x2ddd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF316
	.byte	0x1
	.value	0x476
	.long	0x153
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x19
	.string	"cb"
	.byte	0x1
	.value	0x477
	.long	0x2de3
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.long	.LASF227
	.byte	0x1
	.value	0x478
	.long	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.long	.LASF261
	.byte	0x1
	.value	0x479
	.long	0x1dd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x2
	.long	.LASF317
	.byte	0x6
	.byte	0x78
	.long	0x1730
	.uleb128 0x1b
	.long	.LASF317
	.byte	0x1
	.uleb128 0x2
	.long	.LASF318
	.byte	0x6
	.byte	0x7b
	.long	0x1741
	.uleb128 0x5
	.byte	0x8
	.long	0x1747
	.uleb128 0x1b
	.long	.LASF319
	.byte	0x1
	.uleb128 0x2
	.long	.LASF320
	.byte	0x4
	.byte	0x52
	.long	0x1758
	.uleb128 0x1c
	.long	0x1769
	.byte	0x1
	.uleb128 0x10
	.long	0x1769
	.uleb128 0x10
	.long	0x109
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x1624
	.uleb128 0x2
	.long	.LASF321
	.byte	0x4
	.byte	0x53
	.long	0x177a
	.uleb128 0xf
	.long	0x1794
	.byte	0x1
	.long	0x3f
	.uleb128 0x10
	.long	0x1769
	.uleb128 0x10
	.long	0x109
	.uleb128 0x10
	.long	0x3f
	.byte	0x0
	.uleb128 0x2
	.long	.LASF322
	.byte	0x4
	.byte	0x5c
	.long	0x1335
	.uleb128 0x2
	.long	.LASF323
	.byte	0x4
	.byte	0x61
	.long	0x17aa
	.uleb128 0x1c
	.long	0x17c0
	.byte	0x1
	.uleb128 0x10
	.long	0x109
	.uleb128 0x10
	.long	0x50e
	.uleb128 0x10
	.long	0x50e
	.byte	0x0
	.uleb128 0x2
	.long	.LASF324
	.byte	0x4
	.byte	0x63
	.long	0x17cb
	.uleb128 0xf
	.long	0x17e5
	.byte	0x1
	.long	0x50e
	.uleb128 0x10
	.long	0x109
	.uleb128 0x10
	.long	0x50e
	.uleb128 0x10
	.long	0x12d1
	.byte	0x0
	.uleb128 0x2
	.long	.LASF325
	.byte	0x35
	.byte	0xb
	.long	0x17f0
	.uleb128 0x1c
	.long	0x181f
	.byte	0x1
	.uleb128 0x10
	.long	0x3f
	.uleb128 0x10
	.long	0x3f
	.uleb128 0x10
	.long	0x6f
	.uleb128 0x10
	.long	0x181f
	.uleb128 0x10
	.long	0x6f
	.uleb128 0x10
	.long	0x6f
	.uleb128 0x10
	.long	0x6f
	.uleb128 0x10
	.long	0x6f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x1410
	.uleb128 0xc
	.long	0x186a
	.long	.LASF326
	.byte	0x20
	.byte	0x35
	.byte	0xd
	.uleb128 0xb
	.long	.LASF257
	.byte	0x35
	.byte	0xe
	.long	0x6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF327
	.byte	0x35
	.byte	0xf
	.long	0x6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF328
	.byte	0x35
	.byte	0x10
	.long	0x186a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.long	.LASF261
	.byte	0x35
	.byte	0x11
	.long	0x1870
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x17e5
	.uleb128 0x5
	.byte	0x8
	.long	0x1825
	.uleb128 0x2
	.long	.LASF326
	.byte	0x35
	.byte	0x12
	.long	0x1825
	.uleb128 0x2
	.long	.LASF329
	.byte	0x30
	.byte	0x6f
	.long	0x188c
	.uleb128 0xc
	.long	0x18df
	.long	.LASF329
	.byte	0x28
	.byte	0x30
	.byte	0x6f
	.uleb128 0x16
	.string	"dev"
	.byte	0x30
	.byte	0x92
	.long	0x1a87
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF330
	.byte	0x30
	.byte	0x93
	.long	0x1af1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF227
	.byte	0x30
	.byte	0x94
	.long	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.long	.LASF331
	.byte	0x30
	.byte	0x95
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.long	.LASF261
	.byte	0x30
	.byte	0x96
	.long	0x1b19
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x2
	.long	.LASF332
	.byte	0x30
	.byte	0x70
	.long	0x18ea
	.uleb128 0x1d
	.long	0x19dc
	.long	.LASF332
	.value	0x478
	.byte	0x30
	.byte	0x70
	.uleb128 0xb
	.long	.LASF227
	.byte	0x30
	.byte	0x75
	.long	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF333
	.byte	0x30
	.byte	0x76
	.long	0x1a93
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF334
	.byte	0x30
	.byte	0x77
	.long	0x1aa5
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.long	.LASF335
	.byte	0x30
	.byte	0x79
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.long	.LASF336
	.byte	0x30
	.byte	0x7e
	.long	0x1aa5
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.long	.LASF337
	.byte	0x30
	.byte	0x80
	.long	0x1ada
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.long	.LASF338
	.byte	0x30
	.byte	0x81
	.long	0x1a93
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xb
	.long	.LASF339
	.byte	0x30
	.byte	0x82
	.long	0x4f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xb
	.long	.LASF340
	.byte	0x30
	.byte	0x83
	.long	0x226
	.byte	0x2
	.byte	0x23
	.uleb128 0x39
	.uleb128 0xb
	.long	.LASF341
	.byte	0x30
	.byte	0x85
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xb
	.long	.LASF342
	.byte	0x30
	.byte	0x86
	.long	0x88a
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xb
	.long	.LASF343
	.byte	0x30
	.byte	0x87
	.long	0x1ae0
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xb
	.long	.LASF344
	.byte	0x30
	.byte	0x88
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x468
	.uleb128 0xb
	.long	.LASF345
	.byte	0x30
	.byte	0x89
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x46c
	.uleb128 0xb
	.long	.LASF346
	.byte	0x30
	.byte	0x8a
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x470
	.uleb128 0xb
	.long	.LASF347
	.byte	0x30
	.byte	0x8b
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x474
	.byte	0x0
	.uleb128 0x2
	.long	.LASF348
	.byte	0x30
	.byte	0x71
	.long	0x19e7
	.uleb128 0xc
	.long	0x1a72
	.long	.LASF348
	.byte	0x38
	.byte	0x30
	.byte	0x71
	.uleb128 0x16
	.string	"pid"
	.byte	0x30
	.byte	0x9e
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF349
	.byte	0x30
	.byte	0x9f
	.long	0x4f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.long	.LASF350
	.byte	0x30
	.byte	0xa0
	.long	0x4f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0xb
	.long	.LASF277
	.byte	0x30
	.byte	0xa1
	.long	0x1ad4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x16
	.string	"len"
	.byte	0x30
	.byte	0xa2
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.long	.LASF351
	.byte	0x30
	.byte	0xa4
	.long	0x1b3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.long	.LASF352
	.byte	0x30
	.byte	0xa5
	.long	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.long	.LASF353
	.byte	0x30
	.byte	0xa6
	.long	0x1b3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.long	.LASF354
	.byte	0x30
	.byte	0xa7
	.long	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0x0
	.uleb128 0xf
	.long	0x1a87
	.byte	0x1
	.long	0x3f
	.uleb128 0x10
	.long	0x1a87
	.uleb128 0x10
	.long	0x1a8d
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x18df
	.uleb128 0x5
	.byte	0x8
	.long	0x19dc
	.uleb128 0x5
	.byte	0x8
	.long	0x1a72
	.uleb128 0x1c
	.long	0x1aa5
	.byte	0x1
	.uleb128 0x10
	.long	0x1a87
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x1a99
	.uleb128 0xf
	.long	0x1ad4
	.byte	0x1
	.long	0x3f
	.uleb128 0x10
	.long	0x1a87
	.uleb128 0x10
	.long	0x3f
	.uleb128 0x10
	.long	0x3f
	.uleb128 0x10
	.long	0x3f
	.uleb128 0x10
	.long	0x3f
	.uleb128 0x10
	.long	0x1ad4
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x4f8
	.uleb128 0x5
	.byte	0x8
	.long	0x1aab
	.uleb128 0x7
	.long	0x1af1
	.long	0x4f8
	.uleb128 0x1a
	.long	0x61
	.value	0x3ff
	.byte	0x0
	.uleb128 0x2
	.long	.LASF355
	.byte	0x30
	.byte	0x8e
	.long	0x1afc
	.uleb128 0x5
	.byte	0x8
	.long	0x1b02
	.uleb128 0x1c
	.long	0x1b13
	.byte	0x1
	.uleb128 0x10
	.long	0x1b13
	.uleb128 0x10
	.long	0x1a87
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x1881
	.uleb128 0x5
	.byte	0x8
	.long	0x188c
	.uleb128 0x2
	.long	.LASF356
	.byte	0x30
	.byte	0x99
	.long	0x1b2a
	.uleb128 0x1c
	.long	0x1b3b
	.byte	0x1
	.uleb128 0x10
	.long	0x1a8d
	.uleb128 0x10
	.long	0x109
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x1b1f
	.uleb128 0xc
	.long	0x1b86
	.long	.LASF357
	.byte	0x20
	.byte	0x31
	.byte	0x3
	.uleb128 0x16
	.string	"irq"
	.byte	0x31
	.byte	0x4
	.long	0x1736
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF358
	.byte	0x31
	.byte	0x5
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF359
	.byte	0x31
	.byte	0x6
	.long	0x6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.long	.LASF360
	.byte	0x31
	.byte	0x7
	.long	0x6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x1b41
	.uleb128 0x2
	.long	.LASF361
	.byte	0x3a
	.byte	0x1a
	.long	0x1b97
	.uleb128 0x1b
	.long	.LASF361
	.byte	0x1
	.uleb128 0x2
	.long	.LASF362
	.byte	0x2c
	.byte	0x6
	.long	0x1ba8
	.uleb128 0x1d
	.long	0x1c0a
	.long	.LASF362
	.value	0x128
	.byte	0x2c
	.byte	0x6
	.uleb128 0xb
	.long	.LASF363
	.byte	0x2c
	.byte	0x9
	.long	0x1c0a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF364
	.byte	0x2c
	.byte	0xc
	.long	0x1c10
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF227
	.byte	0x2c
	.byte	0xd
	.long	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.long	.LASF261
	.byte	0x2c
	.byte	0xe
	.long	0x1c16
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.long	.LASF272
	.byte	0x2c
	.byte	0xf
	.long	0x1c1c
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.long	.LASF365
	.byte	0x2c
	.byte	0x10
	.long	0x1c22
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x1341
	.uleb128 0x5
	.byte	0x8
	.long	0x136d
	.uleb128 0x5
	.byte	0x8
	.long	0x1ba8
	.uleb128 0x5
	.byte	0x8
	.long	0x15d2
	.uleb128 0x7
	.long	0x1c32
	.long	0x7a
	.uleb128 0x8
	.long	0x61
	.byte	0xff
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x1b9d
	.uleb128 0x7
	.long	0x1c48
	.long	0x4f8
	.uleb128 0x8
	.long	0x61
	.byte	0x5
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x15c7
	.uleb128 0xa
	.long	0x1c8f
	.byte	0x10
	.byte	0x27
	.byte	0x11
	.uleb128 0xb
	.long	.LASF335
	.byte	0x27
	.byte	0xd
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF366
	.byte	0x27
	.byte	0xe
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.long	.LASF367
	.byte	0x27
	.byte	0xf
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF368
	.byte	0x27
	.byte	0x10
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.long	.LASF369
	.byte	0x27
	.byte	0x11
	.long	0x1c4e
	.uleb128 0x2
	.long	.LASF370
	.byte	0x27
	.byte	0x1f
	.long	0x1ca5
	.uleb128 0x1c
	.long	0x1cb6
	.byte	0x1
	.uleb128 0x10
	.long	0x109
	.uleb128 0x10
	.long	0x3f
	.byte	0x0
	.uleb128 0xf
	.long	0x1cd0
	.byte	0x1
	.long	0x3f
	.uleb128 0x10
	.long	0x1cd0
	.uleb128 0x10
	.long	0x1362
	.uleb128 0x10
	.long	0x3f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x1505
	.uleb128 0x5
	.byte	0x8
	.long	0x1cb6
	.uleb128 0x1c
	.long	0x1ce8
	.byte	0x1
	.uleb128 0x10
	.long	0x1cd0
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x1cdc
	.uleb128 0xf
	.long	0x1d08
	.byte	0x1
	.long	0x3f
	.uleb128 0x10
	.long	0x1cd0
	.uleb128 0x10
	.long	0x3f
	.uleb128 0x10
	.long	0x109
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x1cee
	.uleb128 0x5
	.byte	0x8
	.long	0x1c9a
	.uleb128 0x1c
	.long	0x1d25
	.byte	0x1
	.uleb128 0x10
	.long	0x1cd0
	.uleb128 0x10
	.long	0x3f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x1d14
	.uleb128 0x5
	.byte	0x8
	.long	0x12d7
	.uleb128 0x2
	.long	.LASF371
	.byte	0x1a
	.byte	0xc
	.long	0x1ca5
	.uleb128 0x2
	.long	.LASF372
	.byte	0x1a
	.byte	0xd
	.long	0x1d47
	.uleb128 0x1c
	.long	0x1d67
	.byte	0x1
	.uleb128 0x10
	.long	0x109
	.uleb128 0x10
	.long	0x3f
	.uleb128 0x10
	.long	0x3f
	.uleb128 0x10
	.long	0x3f
	.uleb128 0x10
	.long	0x3f
	.byte	0x0
	.uleb128 0xc
	.long	0x1dba
	.long	.LASF373
	.byte	0x28
	.byte	0x1a
	.byte	0xf
	.uleb128 0xb
	.long	.LASF374
	.byte	0x1a
	.byte	0x10
	.long	0x1dba
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF375
	.byte	0x1a
	.byte	0x11
	.long	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF376
	.byte	0x1a
	.byte	0x12
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.long	.LASF377
	.byte	0x1a
	.byte	0x13
	.long	0x116
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.long	.LASF261
	.byte	0x1a
	.byte	0x16
	.long	0x1dc0
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x1d3c
	.uleb128 0x5
	.byte	0x8
	.long	0x1d67
	.uleb128 0x2
	.long	.LASF373
	.byte	0x1a
	.byte	0x17
	.long	0x1d67
	.uleb128 0x5
	.byte	0x8
	.long	0x16ce
	.uleb128 0x1c
	.long	0x1df7
	.byte	0x1
	.uleb128 0x10
	.long	0x1df7
	.uleb128 0x10
	.long	0x3f
	.uleb128 0x10
	.long	0x3f
	.uleb128 0x10
	.long	0x3f
	.uleb128 0x10
	.long	0x3f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x141b
	.uleb128 0x5
	.byte	0x8
	.long	0x1dd7
	.uleb128 0x1c
	.long	0x1e19
	.byte	0x1
	.uleb128 0x10
	.long	0x1df7
	.uleb128 0x10
	.long	0x3f
	.uleb128 0x10
	.long	0x3f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x1e03
	.uleb128 0x1c
	.long	0x1e2b
	.byte	0x1
	.uleb128 0x10
	.long	0x1df7
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x1e1f
	.uleb128 0x1c
	.long	0x1e5b
	.byte	0x1
	.uleb128 0x10
	.long	0x1df7
	.uleb128 0x10
	.long	0x3f
	.uleb128 0x10
	.long	0x3f
	.uleb128 0x10
	.long	0x3f
	.uleb128 0x10
	.long	0x3f
	.uleb128 0x10
	.long	0x3f
	.uleb128 0x10
	.long	0x3f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x1e31
	.uleb128 0x1c
	.long	0x1e86
	.byte	0x1
	.uleb128 0x10
	.long	0x1df7
	.uleb128 0x10
	.long	0x3f
	.uleb128 0x10
	.long	0x3f
	.uleb128 0x10
	.long	0x3f
	.uleb128 0x10
	.long	0x3f
	.uleb128 0x10
	.long	0x50e
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x1e61
	.uleb128 0x1c
	.long	0x1ea2
	.byte	0x1
	.uleb128 0x10
	.long	0x3f
	.uleb128 0x10
	.long	0x3f
	.uleb128 0x10
	.long	0x3f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x1e8c
	.uleb128 0x1c
	.long	0x1ed2
	.byte	0x1
	.uleb128 0x10
	.long	0x3f
	.uleb128 0x10
	.long	0x3f
	.uleb128 0x10
	.long	0x3f
	.uleb128 0x10
	.long	0x3f
	.uleb128 0x10
	.long	0x3f
	.uleb128 0x10
	.long	0x1ad4
	.uleb128 0x10
	.long	0x1ad4
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x1ea8
	.uleb128 0x2
	.long	.LASF378
	.byte	0x2f
	.byte	0xc
	.long	0x1ee3
	.uleb128 0xc
	.long	0x1f1c
	.long	.LASF379
	.byte	0x20
	.byte	0x2f
	.byte	0xc
	.uleb128 0x19
	.string	"cb"
	.byte	0x1
	.value	0x1f2b
	.long	0x34e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF227
	.byte	0x1
	.value	0x1f2c
	.long	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF380
	.byte	0x1
	.value	0x1f2d
	.long	0x34ad
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.long	.LASF381
	.byte	0x2f
	.byte	0xd
	.long	0x1ca5
	.uleb128 0x2
	.long	.LASF382
	.byte	0x2f
	.byte	0xe
	.long	0x1ca5
	.uleb128 0x2
	.long	.LASF383
	.byte	0x2f
	.byte	0x35
	.long	0x4dd
	.uleb128 0x1e
	.long	0x1f6a
	.byte	0x4
	.byte	0x2f
	.byte	0x77
	.uleb128 0x1f
	.long	.LASF384
	.sleb128 0
	.uleb128 0x1f
	.long	.LASF385
	.sleb128 1
	.uleb128 0x1f
	.long	.LASF386
	.sleb128 2
	.uleb128 0x1f
	.long	.LASF387
	.sleb128 3
	.uleb128 0x1f
	.long	.LASF388
	.sleb128 4
	.uleb128 0x1f
	.long	.LASF389
	.sleb128 5
	.byte	0x0
	.uleb128 0x2
	.long	.LASF390
	.byte	0x2f
	.byte	0x79
	.long	0x1f3d
	.uleb128 0xc
	.long	0x1fba
	.long	.LASF391
	.byte	0x18
	.byte	0x2f
	.byte	0x7b
	.uleb128 0xb
	.long	.LASF392
	.byte	0x2f
	.byte	0x7c
	.long	0x1fba
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF393
	.byte	0x2f
	.byte	0x7d
	.long	0x1f6a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x16
	.string	"bus"
	.byte	0x2f
	.byte	0x7e
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.long	.LASF394
	.byte	0x2f
	.byte	0x7f
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x13ff
	.uleb128 0x2
	.long	.LASF391
	.byte	0x2f
	.byte	0x80
	.long	0x1f75
	.uleb128 0x20
	.long	0x1fea
	.byte	0x8
	.byte	0x2f
	.byte	0xab
	.uleb128 0x21
	.long	.LASF395
	.byte	0x2f
	.byte	0xa9
	.long	0x200b
	.uleb128 0x21
	.long	.LASF396
	.byte	0x2f
	.byte	0xaa
	.long	0x202c
	.byte	0x0
	.uleb128 0xf
	.long	0x1fff
	.byte	0x1
	.long	0x3f
	.uleb128 0x10
	.long	0x1fff
	.uleb128 0x10
	.long	0x2005
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x13ee
	.uleb128 0x5
	.byte	0x8
	.long	0x1736
	.uleb128 0x5
	.byte	0x8
	.long	0x1fea
	.uleb128 0xf
	.long	0x2026
	.byte	0x1
	.long	0x3f
	.uleb128 0x10
	.long	0x2026
	.uleb128 0x10
	.long	0x1fff
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x1725
	.uleb128 0x5
	.byte	0x8
	.long	0x2011
	.uleb128 0xc
	.long	0x2085
	.long	.LASF397
	.byte	0x20
	.byte	0x2f
	.byte	0xa3
	.uleb128 0xb
	.long	.LASF257
	.byte	0x2f
	.byte	0xa4
	.long	0x6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF398
	.byte	0x2f
	.byte	0xa5
	.long	0x6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF399
	.byte	0x2f
	.byte	0xa6
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x16
	.string	"isa"
	.byte	0x2f
	.byte	0xa7
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.long	.LASF328
	.byte	0x2f
	.byte	0xab
	.long	0x1fcb
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x127e
	.uleb128 0x2
	.long	.LASF400
	.byte	0x1d
	.byte	0x6
	.long	0x2096
	.uleb128 0xc
	.long	0x20b2
	.long	.LASF400
	.byte	0x4
	.byte	0x1d
	.byte	0x6
	.uleb128 0xd
	.long	.LASF393
	.byte	0x1
	.value	0x470
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x2
	.long	.LASF401
	.byte	0x1d
	.byte	0x7
	.long	0x1335
	.uleb128 0xc
	.long	0x20e6
	.long	.LASF402
	.byte	0x10
	.byte	0x32
	.byte	0x14
	.uleb128 0xb
	.long	.LASF403
	.byte	0x32
	.byte	0x16
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF404
	.byte	0x32
	.byte	0x18
	.long	0x153
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x2
	.long	.LASF402
	.byte	0x32
	.byte	0x19
	.long	0x20bd
	.uleb128 0x1d
	.long	0x2158
	.long	.LASF405
	.value	0x198
	.byte	0x32
	.byte	0x1b
	.uleb128 0xb
	.long	.LASF406
	.byte	0x32
	.byte	0x1c
	.long	0x2158
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF257
	.byte	0x32
	.byte	0x1f
	.long	0x1c22
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xb
	.long	.LASF407
	.byte	0x32
	.byte	0x20
	.long	0x50e
	.byte	0x3
	.byte	0x23
	.uleb128 0x180
	.uleb128 0xb
	.long	.LASF408
	.byte	0x32
	.byte	0x21
	.long	0x50e
	.byte	0x3
	.byte	0x23
	.uleb128 0x184
	.uleb128 0xb
	.long	.LASF409
	.byte	0x32
	.byte	0x22
	.long	0x50e
	.byte	0x3
	.byte	0x23
	.uleb128 0x188
	.uleb128 0xb
	.long	.LASF410
	.byte	0x32
	.byte	0x23
	.long	0x519
	.byte	0x3
	.byte	0x23
	.uleb128 0x190
	.byte	0x0
	.uleb128 0x7
	.long	0x2168
	.long	0x7a
	.uleb128 0x8
	.long	0x61
	.byte	0x7f
	.byte	0x0
	.uleb128 0x2
	.long	.LASF405
	.byte	0x32
	.byte	0x24
	.long	0x20f1
	.uleb128 0x22
	.long	0x2196
	.long	.LASF628
	.byte	0x8
	.byte	0x24
	.byte	0x22
	.uleb128 0x21
	.long	.LASF411
	.byte	0x24
	.byte	0x23
	.long	0x3f
	.uleb128 0x21
	.long	.LASF412
	.byte	0x24
	.byte	0x24
	.long	0x109
	.byte	0x0
	.uleb128 0x2
	.long	.LASF413
	.byte	0x24
	.byte	0x25
	.long	0x2173
	.uleb128 0xa
	.long	0x21c6
	.byte	0x8
	.byte	0x24
	.byte	0x43
	.uleb128 0xb
	.long	.LASF414
	.byte	0x24
	.byte	0x41
	.long	0xc2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF415
	.byte	0x24
	.byte	0x42
	.long	0x96
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0xa
	.long	0x21f9
	.byte	0x10
	.byte	0x24
	.byte	0x4b
	.uleb128 0xb
	.long	.LASF416
	.byte	0x24
	.byte	0x48
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF417
	.byte	0x24
	.byte	0x49
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.long	.LASF418
	.byte	0x24
	.byte	0x4a
	.long	0x2196
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0xa
	.long	0x222c
	.byte	0x10
	.byte	0x24
	.byte	0x53
	.uleb128 0xb
	.long	.LASF414
	.byte	0x24
	.byte	0x50
	.long	0xc2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF415
	.byte	0x24
	.byte	0x51
	.long	0x96
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.long	.LASF418
	.byte	0x24
	.byte	0x52
	.long	0x2196
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0xa
	.long	0x227b
	.byte	0x20
	.byte	0x24
	.byte	0x5d
	.uleb128 0xb
	.long	.LASF414
	.byte	0x24
	.byte	0x58
	.long	0xc2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF415
	.byte	0x24
	.byte	0x59
	.long	0x96
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.long	.LASF419
	.byte	0x24
	.byte	0x5a
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF420
	.byte	0x24
	.byte	0x5b
	.long	0xdd
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.long	.LASF421
	.byte	0x24
	.byte	0x5c
	.long	0xdd
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0xa
	.long	0x2292
	.byte	0x8
	.byte	0x24
	.byte	0x63
	.uleb128 0xb
	.long	.LASF422
	.byte	0x24
	.byte	0x62
	.long	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xa
	.long	0x22b7
	.byte	0x10
	.byte	0x24
	.byte	0x6a
	.uleb128 0xb
	.long	.LASF423
	.byte	0x24
	.byte	0x68
	.long	0x53
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF424
	.byte	0x24
	.byte	0x69
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x20
	.long	0x230d
	.byte	0x70
	.byte	0x24
	.byte	0x6b
	.uleb128 0x21
	.long	.LASF425
	.byte	0x24
	.byte	0x3c
	.long	0x230d
	.uleb128 0x21
	.long	.LASF426
	.byte	0x24
	.byte	0x43
	.long	0x21a1
	.uleb128 0x21
	.long	.LASF427
	.byte	0x24
	.byte	0x4b
	.long	0x21c6
	.uleb128 0x23
	.string	"_rt"
	.byte	0x24
	.byte	0x53
	.long	0x21f9
	.uleb128 0x21
	.long	.LASF428
	.byte	0x24
	.byte	0x5d
	.long	0x222c
	.uleb128 0x21
	.long	.LASF429
	.byte	0x24
	.byte	0x63
	.long	0x227b
	.uleb128 0x21
	.long	.LASF430
	.byte	0x24
	.byte	0x6a
	.long	0x2292
	.byte	0x0
	.uleb128 0x7
	.long	0x231d
	.long	0x3f
	.uleb128 0x8
	.long	0x61
	.byte	0x1b
	.byte	0x0
	.uleb128 0xc
	.long	0x2362
	.long	.LASF431
	.byte	0x80
	.byte	0x24
	.byte	0x34
	.uleb128 0xb
	.long	.LASF432
	.byte	0x24
	.byte	0x35
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF433
	.byte	0x24
	.byte	0x36
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.long	.LASF434
	.byte	0x24
	.byte	0x38
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF435
	.byte	0x24
	.byte	0x6b
	.long	0x22b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.long	.LASF436
	.byte	0x24
	.byte	0x6c
	.long	0x231d
	.uleb128 0x17
	.long	0x2395
	.byte	0x10
	.byte	0x24
	.value	0x123
	.uleb128 0xd
	.long	.LASF437
	.byte	0x24
	.value	0x121
	.long	0x23a1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF438
	.byte	0x24
	.value	0x122
	.long	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x1c
	.long	0x23a1
	.byte	0x1
	.uleb128 0x10
	.long	0x2196
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x2395
	.uleb128 0x14
	.long	0x23d5
	.byte	0x30
	.byte	0x24
	.value	0x124
	.uleb128 0x24
	.long	.LASF425
	.byte	0x24
	.value	0x119
	.long	0x23d5
	.uleb128 0x24
	.long	.LASF439
	.byte	0x24
	.value	0x11d
	.long	0xc2
	.uleb128 0x24
	.long	.LASF440
	.byte	0x24
	.value	0x123
	.long	0x236d
	.byte	0x0
	.uleb128 0x7
	.long	0x23e5
	.long	0x3f
	.uleb128 0x8
	.long	0x61
	.byte	0xb
	.byte	0x0
	.uleb128 0xc
	.long	0x242e
	.long	.LASF441
	.byte	0x40
	.byte	0x1b
	.byte	0xa8
	.uleb128 0xd
	.long	.LASF442
	.byte	0x24
	.value	0x113
	.long	0x2196
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF443
	.byte	0x24
	.value	0x114
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF444
	.byte	0x24
	.value	0x115
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.long	.LASF445
	.byte	0x24
	.value	0x124
	.long	0x23a7
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.long	.LASF446
	.byte	0x23
	.byte	0x54
	.long	0x2439
	.uleb128 0x5
	.byte	0x8
	.long	0x243f
	.uleb128 0x1c
	.long	0x244b
	.byte	0x1
	.uleb128 0x10
	.long	0x3f
	.byte	0x0
	.uleb128 0x20
	.long	0x246a
	.byte	0x8
	.byte	0x22
	.byte	0x24
	.uleb128 0x21
	.long	.LASF447
	.byte	0x22
	.byte	0x20
	.long	0x242e
	.uleb128 0x21
	.long	.LASF448
	.byte	0x22
	.byte	0x22
	.long	0x2486
	.byte	0x0
	.uleb128 0x1c
	.long	0x2480
	.byte	0x1
	.uleb128 0x10
	.long	0x3f
	.uleb128 0x10
	.long	0x2480
	.uleb128 0x10
	.long	0x109
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x2362
	.uleb128 0x5
	.byte	0x8
	.long	0x246a
	.uleb128 0xc
	.long	0x24d3
	.long	.LASF449
	.byte	0x98
	.byte	0x22
	.byte	0x1a
	.uleb128 0xb
	.long	.LASF450
	.byte	0x22
	.byte	0x24
	.long	0x244b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF451
	.byte	0x22
	.byte	0x2c
	.long	0x185
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF452
	.byte	0x22
	.byte	0x2f
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xb
	.long	.LASF453
	.byte	0x22
	.byte	0x32
	.long	0x24d5
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.byte	0x0
	.uleb128 0x25
	.byte	0x1
	.uleb128 0x5
	.byte	0x8
	.long	0x24d3
	.uleb128 0xc
	.long	0x2504
	.long	.LASF454
	.byte	0x20
	.byte	0x26
	.byte	0x6e
	.uleb128 0xb
	.long	.LASF96
	.byte	0x26
	.byte	0x70
	.long	0x1b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF97
	.byte	0x26
	.byte	0x72
	.long	0x1b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x12
	.long	.LASF455
	.byte	0x34
	.value	0x148
	.long	0x81
	.uleb128 0x12
	.long	.LASF456
	.byte	0x34
	.value	0x14a
	.long	0x46
	.uleb128 0x12
	.long	.LASF457
	.byte	0x34
	.value	0x14b
	.long	0x38
	.uleb128 0x12
	.long	.LASF458
	.byte	0x34
	.value	0x151
	.long	0x2504
	.uleb128 0x12
	.long	.LASF459
	.byte	0x34
	.value	0x15a
	.long	0x109
	.uleb128 0x2
	.long	.LASF460
	.byte	0x33
	.byte	0x50
	.long	0x254b
	.uleb128 0x5
	.byte	0x8
	.long	0x2551
	.uleb128 0xf
	.long	0x256b
	.byte	0x1
	.long	0x2534
	.uleb128 0x10
	.long	0x2534
	.uleb128 0x10
	.long	0x2510
	.uleb128 0x10
	.long	0x2510
	.byte	0x0
	.uleb128 0x2
	.long	.LASF461
	.byte	0x33
	.byte	0x51
	.long	0x2576
	.uleb128 0x5
	.byte	0x8
	.long	0x257c
	.uleb128 0x1c
	.long	0x258d
	.byte	0x1
	.uleb128 0x10
	.long	0x2534
	.uleb128 0x10
	.long	0x2534
	.byte	0x0
	.uleb128 0xc
	.long	0x265e
	.long	.LASF462
	.byte	0x70
	.byte	0x33
	.byte	0x55
	.uleb128 0xb
	.long	.LASF463
	.byte	0x33
	.byte	0x56
	.long	0x265e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF464
	.byte	0x33
	.byte	0x57
	.long	0x2510
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF465
	.byte	0x33
	.byte	0x58
	.long	0x251c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.long	.LASF466
	.byte	0x33
	.byte	0x5a
	.long	0x265e
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.long	.LASF467
	.byte	0x33
	.byte	0x5b
	.long	0x2510
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.long	.LASF468
	.byte	0x33
	.byte	0x5c
	.long	0x251c
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x16
	.string	"msg"
	.byte	0x33
	.byte	0x5e
	.long	0x116
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xb
	.long	.LASF341
	.byte	0x33
	.byte	0x5f
	.long	0x2680
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xb
	.long	.LASF469
	.byte	0x33
	.byte	0x61
	.long	0x2540
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xb
	.long	.LASF470
	.byte	0x33
	.byte	0x62
	.long	0x256b
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xb
	.long	.LASF227
	.byte	0x33
	.byte	0x63
	.long	0x2534
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xb
	.long	.LASF471
	.byte	0x33
	.byte	0x65
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xb
	.long	.LASF472
	.byte	0x33
	.byte	0x66
	.long	0x251c
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xb
	.long	.LASF473
	.byte	0x33
	.byte	0x67
	.long	0x251c
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x2528
	.uleb128 0xc
	.long	0x2680
	.long	.LASF474
	.byte	0x4
	.byte	0x33
	.byte	0x53
	.uleb128 0xd
	.long	.LASF475
	.byte	0x33
	.value	0x573
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x2664
	.uleb128 0x2
	.long	.LASF476
	.byte	0x33
	.byte	0x68
	.long	0x258d
	.uleb128 0x2
	.long	.LASF477
	.byte	0x28
	.byte	0x19
	.long	0x81
	.uleb128 0x2
	.long	.LASF478
	.byte	0x28
	.byte	0x1a
	.long	0x46
	.uleb128 0x2
	.long	.LASF479
	.byte	0x28
	.byte	0x1b
	.long	0x46
	.uleb128 0xc
	.long	0x272f
	.long	.LASF480
	.byte	0x3c
	.byte	0x28
	.byte	0x1f
	.uleb128 0xb
	.long	.LASF481
	.byte	0x28
	.byte	0x20
	.long	0x26a7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF482
	.byte	0x28
	.byte	0x21
	.long	0x26a7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.long	.LASF483
	.byte	0x28
	.byte	0x22
	.long	0x26a7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF484
	.byte	0x28
	.byte	0x23
	.long	0x26a7
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.long	.LASF485
	.byte	0x28
	.byte	0x24
	.long	0x2691
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.long	.LASF486
	.byte	0x28
	.byte	0x25
	.long	0x272f
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0xb
	.long	.LASF487
	.byte	0x28
	.byte	0x26
	.long	0x269c
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xb
	.long	.LASF488
	.byte	0x28
	.byte	0x27
	.long	0x269c
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.byte	0x0
	.uleb128 0x7
	.long	0x273f
	.long	0x2691
	.uleb128 0x8
	.long	0x61
	.byte	0x1f
	.byte	0x0
	.uleb128 0xc
	.long	0x2775
	.long	.LASF489
	.byte	0x8
	.byte	0x7
	.byte	0x29
	.uleb128 0x16
	.string	"fd"
	.byte	0x7
	.byte	0x2a
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF490
	.byte	0x7
	.byte	0x2b
	.long	0x8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.long	.LASF491
	.byte	0x7
	.byte	0x2c
	.long	0x8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.byte	0x0
	.uleb128 0x7
	.long	0x2785
	.long	0x81
	.uleb128 0x8
	.long	0x61
	.byte	0x7
	.byte	0x0
	.uleb128 0x2
	.long	.LASF492
	.byte	0x20
	.byte	0x1d
	.long	0x68
	.uleb128 0xc
	.long	0x27b9
	.long	.LASF493
	.byte	0x10
	.byte	0x2a
	.byte	0xaf
	.uleb128 0xb
	.long	.LASF494
	.byte	0x2a
	.byte	0xb0
	.long	0x2785
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF495
	.byte	0x2a
	.byte	0xb1
	.long	0x27b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x7
	.long	0x27c9
	.long	0x7a
	.uleb128 0x8
	.long	0x61
	.byte	0xd
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x2790
	.uleb128 0xc
	.long	0x2814
	.long	.LASF496
	.byte	0x10
	.byte	0x1e
	.byte	0x5c
	.uleb128 0xb
	.long	.LASF497
	.byte	0x1f
	.byte	0xe3
	.long	0x2785
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF498
	.byte	0x1f
	.byte	0xe4
	.long	0x2859
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xb
	.long	.LASF499
	.byte	0x1f
	.byte	0xe5
	.long	0x286f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.long	.LASF500
	.byte	0x1f
	.byte	0xeb
	.long	0x2775
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x27cf
	.uleb128 0xc
	.long	0x2843
	.long	.LASF501
	.byte	0x6e
	.byte	0x1e
	.byte	0x5c
	.uleb128 0xb
	.long	.LASF502
	.byte	0x29
	.byte	0x20
	.long	0x2785
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF503
	.byte	0x29
	.byte	0x21
	.long	0x2849
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x281a
	.uleb128 0x7
	.long	0x2859
	.long	0x7a
	.uleb128 0x8
	.long	0x61
	.byte	0x6b
	.byte	0x0
	.uleb128 0x2
	.long	.LASF504
	.byte	0x1f
	.byte	0x61
	.long	0x503
	.uleb128 0x2
	.long	.LASF505
	.byte	0x1f
	.byte	0x8d
	.long	0x50e
	.uleb128 0xc
	.long	0x288a
	.long	.LASF506
	.byte	0x4
	.byte	0x1f
	.byte	0x8f
	.uleb128 0xb
	.long	.LASF507
	.byte	0x1f
	.byte	0x90
	.long	0x2864
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xc
	.long	0x28b4
	.long	.LASF508
	.byte	0x8
	.byte	0x1f
	.byte	0xfc
	.uleb128 0xb
	.long	.LASF509
	.byte	0x1f
	.byte	0xfe
	.long	0x286f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF510
	.byte	0x1f
	.value	0x101
	.long	0x286f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x1d
	.long	0x2908
	.long	.LASF511
	.value	0x118
	.byte	0x2e
	.byte	0x18
	.uleb128 0xb
	.long	.LASF512
	.byte	0x2e
	.byte	0x1d
	.long	0xa1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF513
	.byte	0x2e
	.byte	0x1e
	.long	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF514
	.byte	0x2e
	.byte	0x20
	.long	0x68
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.long	.LASF515
	.byte	0x2e
	.byte	0x21
	.long	0x81
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0xb
	.long	.LASF516
	.byte	0x2e
	.byte	0x22
	.long	0x1c22
	.byte	0x2
	.byte	0x23
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x26
	.string	"DIR"
	.byte	0x2d
	.byte	0x80
	.long	0x2913
	.uleb128 0x1b
	.long	.LASF517
	.byte	0x1
	.uleb128 0x5
	.byte	0x8
	.long	0x116
	.uleb128 0xc
	.long	0x2972
	.long	.LASF518
	.byte	0x20
	.byte	0x2b
	.byte	0x64
	.uleb128 0xb
	.long	.LASF519
	.byte	0x2b
	.byte	0x65
	.long	0x116
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF520
	.byte	0x2b
	.byte	0x66
	.long	0x2919
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF521
	.byte	0x2b
	.byte	0x67
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.long	.LASF522
	.byte	0x2b
	.byte	0x68
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.long	.LASF523
	.byte	0x2b
	.byte	0x69
	.long	0x2919
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0xa
	.long	0x29a5
	.byte	0xc
	.byte	0x38
	.byte	0x29
	.uleb128 0xb
	.long	.LASF524
	.byte	0x38
	.byte	0x26
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF525
	.byte	0x38
	.byte	0x27
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.long	.LASF526
	.byte	0x38
	.byte	0x28
	.long	0x68
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x2
	.long	.LASF527
	.byte	0x38
	.byte	0x29
	.long	0x2972
	.uleb128 0xa
	.long	0x29f1
	.byte	0x10
	.byte	0x38
	.byte	0x30
	.uleb128 0xb
	.long	.LASF524
	.byte	0x38
	.byte	0x2c
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF525
	.byte	0x38
	.byte	0x2d
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.long	.LASF526
	.byte	0x38
	.byte	0x2e
	.long	0x68
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF528
	.byte	0x38
	.byte	0x2f
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.long	.LASF529
	.byte	0x38
	.byte	0x30
	.long	0x29b0
	.uleb128 0xa
	.long	0x2a21
	.byte	0x4
	.byte	0x38
	.byte	0x35
	.uleb128 0xb
	.long	.LASF530
	.byte	0x38
	.byte	0x33
	.long	0x68
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF366
	.byte	0x38
	.byte	0x34
	.long	0x68
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x2
	.long	.LASF531
	.byte	0x38
	.byte	0x35
	.long	0x29fc
	.uleb128 0xa
	.long	0x2a97
	.byte	0x18
	.byte	0x38
	.byte	0x3f
	.uleb128 0xb
	.long	.LASF532
	.byte	0x38
	.byte	0x38
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF533
	.byte	0x38
	.byte	0x39
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.long	.LASF534
	.byte	0x38
	.byte	0x3a
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF535
	.byte	0x38
	.byte	0x3b
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.long	.LASF536
	.byte	0x38
	.byte	0x3c
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x16
	.string	"lmi"
	.byte	0x38
	.byte	0x3d
	.long	0x68
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x16
	.string	"dce"
	.byte	0x38
	.byte	0x3e
	.long	0x68
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.byte	0x0
	.uleb128 0x2
	.long	.LASF537
	.byte	0x38
	.byte	0x3f
	.long	0x2a2c
	.uleb128 0xa
	.long	0x2ab9
	.byte	0x4
	.byte	0x38
	.byte	0x43
	.uleb128 0xb
	.long	.LASF538
	.byte	0x38
	.byte	0x42
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x2
	.long	.LASF539
	.byte	0x38
	.byte	0x43
	.long	0x2aa2
	.uleb128 0xa
	.long	0x2ae9
	.byte	0x14
	.byte	0x38
	.byte	0x48
	.uleb128 0xb
	.long	.LASF538
	.byte	0x38
	.byte	0x46
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF540
	.byte	0x38
	.byte	0x47
	.long	0x2ae9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x7
	.long	0x2af9
	.long	0x7a
	.uleb128 0x8
	.long	0x61
	.byte	0xf
	.byte	0x0
	.uleb128 0x2
	.long	.LASF541
	.byte	0x38
	.byte	0x48
	.long	0x2ac4
	.uleb128 0xa
	.long	0x2b29
	.byte	0x8
	.byte	0x38
	.byte	0x4d
	.uleb128 0xb
	.long	.LASF542
	.byte	0x38
	.byte	0x4b
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF543
	.byte	0x38
	.byte	0x4c
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.long	.LASF544
	.byte	0x38
	.byte	0x4d
	.long	0x2b04
	.uleb128 0xc
	.long	0x2b95
	.long	.LASF545
	.byte	0x18
	.byte	0x37
	.byte	0x81
	.uleb128 0xb
	.long	.LASF546
	.byte	0x37
	.byte	0x82
	.long	0x38
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF547
	.byte	0x37
	.byte	0x83
	.long	0x38
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF548
	.byte	0x37
	.byte	0x84
	.long	0x68
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x16
	.string	"irq"
	.byte	0x37
	.byte	0x85
	.long	0x81
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0x16
	.string	"dma"
	.byte	0x37
	.byte	0x86
	.long	0x81
	.byte	0x2
	.byte	0x23
	.uleb128 0x13
	.uleb128 0xb
	.long	.LASF549
	.byte	0x37
	.byte	0x87
	.long	0x81
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x20
	.long	0x2bea
	.byte	0x8
	.byte	0x37
	.byte	0x9a
	.uleb128 0x21
	.long	.LASF550
	.byte	0x37
	.byte	0x91
	.long	0x2bea
	.uleb128 0x21
	.long	.LASF551
	.byte	0x37
	.byte	0x92
	.long	0x2bf0
	.uleb128 0x23
	.string	"fr"
	.byte	0x37
	.byte	0x93
	.long	0x2bf6
	.uleb128 0x21
	.long	.LASF552
	.byte	0x37
	.byte	0x94
	.long	0x2bfc
	.uleb128 0x21
	.long	.LASF553
	.byte	0x37
	.byte	0x95
	.long	0x2c02
	.uleb128 0x21
	.long	.LASF554
	.byte	0x37
	.byte	0x98
	.long	0x2c08
	.uleb128 0x23
	.string	"te1"
	.byte	0x37
	.byte	0x99
	.long	0x2c0e
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x2a21
	.uleb128 0x5
	.byte	0x8
	.long	0x2b29
	.uleb128 0x5
	.byte	0x8
	.long	0x2a97
	.uleb128 0x5
	.byte	0x8
	.long	0x2ab9
	.uleb128 0x5
	.byte	0x8
	.long	0x2af9
	.uleb128 0x5
	.byte	0x8
	.long	0x29a5
	.uleb128 0x5
	.byte	0x8
	.long	0x29f1
	.uleb128 0xc
	.long	0x2c4b
	.long	.LASF555
	.byte	0x10
	.byte	0x37
	.byte	0x8c
	.uleb128 0xb
	.long	.LASF393
	.byte	0x37
	.byte	0x8d
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF245
	.byte	0x37
	.byte	0x8e
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.long	.LASF556
	.byte	0x37
	.byte	0x9a
	.long	0x2b95
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x20
	.long	0x2c5f
	.byte	0x10
	.byte	0x37
	.byte	0xaa
	.uleb128 0x21
	.long	.LASF557
	.byte	0x37
	.byte	0xa9
	.long	0x2ae9
	.byte	0x0
	.uleb128 0x20
	.long	0x2cf7
	.byte	0x18
	.byte	0x37
	.byte	0xba
	.uleb128 0x21
	.long	.LASF558
	.byte	0x37
	.byte	0xad
	.long	0x2790
	.uleb128 0x21
	.long	.LASF559
	.byte	0x37
	.byte	0xae
	.long	0x2790
	.uleb128 0x21
	.long	.LASF560
	.byte	0x37
	.byte	0xaf
	.long	0x2790
	.uleb128 0x21
	.long	.LASF561
	.byte	0x37
	.byte	0xb0
	.long	0x2790
	.uleb128 0x21
	.long	.LASF562
	.byte	0x37
	.byte	0xb1
	.long	0x2790
	.uleb128 0x21
	.long	.LASF563
	.byte	0x37
	.byte	0xb2
	.long	0x8f
	.uleb128 0x21
	.long	.LASF564
	.byte	0x37
	.byte	0xb3
	.long	0x3f
	.uleb128 0x21
	.long	.LASF565
	.byte	0x37
	.byte	0xb4
	.long	0x3f
	.uleb128 0x21
	.long	.LASF566
	.byte	0x37
	.byte	0xb5
	.long	0x2b34
	.uleb128 0x21
	.long	.LASF567
	.byte	0x37
	.byte	0xb6
	.long	0x2ae9
	.uleb128 0x21
	.long	.LASF568
	.byte	0x37
	.byte	0xb7
	.long	0x2ae9
	.uleb128 0x21
	.long	.LASF569
	.byte	0x37
	.byte	0xb8
	.long	0x109
	.uleb128 0x21
	.long	.LASF570
	.byte	0x37
	.byte	0xb9
	.long	0x2c14
	.byte	0x0
	.uleb128 0xc
	.long	0x2d20
	.long	.LASF571
	.byte	0x28
	.byte	0x37
	.byte	0xa5
	.uleb128 0xb
	.long	.LASF572
	.byte	0x37
	.byte	0xaa
	.long	0x2c4b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF573
	.byte	0x37
	.byte	0xba
	.long	0x2c5f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0xc
	.long	0x2d65
	.long	.LASF574
	.byte	0x18
	.byte	0x25
	.byte	0x6
	.uleb128 0xb
	.long	.LASF575
	.byte	0x25
	.byte	0x7
	.long	0x38
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF576
	.byte	0x25
	.byte	0x8
	.long	0x38
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF577
	.byte	0x25
	.byte	0x9
	.long	0x68
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.long	.LASF578
	.byte	0x25
	.byte	0xa
	.long	0x68
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.byte	0x0
	.uleb128 0x7
	.long	0x2d75
	.long	0x120f
	.uleb128 0x8
	.long	0x61
	.byte	0x1
	.byte	0x0
	.uleb128 0x7
	.long	0x2d85
	.long	0x66b
	.uleb128 0x8
	.long	0x61
	.byte	0x1
	.byte	0x0
	.uleb128 0x7
	.long	0x2d95
	.long	0x50e
	.uleb128 0x8
	.long	0x61
	.byte	0x1
	.byte	0x0
	.uleb128 0x13
	.long	0x2ddd
	.long	.LASF579
	.byte	0x18
	.byte	0x1
	.value	0x112
	.uleb128 0xd
	.long	.LASF580
	.byte	0x1
	.value	0x113
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x19
	.string	"sd"
	.byte	0x1
	.value	0x113
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.long	.LASF581
	.byte	0x1
	.value	0x113
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x19
	.string	"fp"
	.byte	0x1
	.value	0x114
	.long	0xa9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x208b
	.uleb128 0x5
	.byte	0x8
	.long	0x20b2
	.uleb128 0x13
	.long	0x2e51
	.long	.LASF582
	.byte	0x30
	.byte	0x1
	.value	0x47c
	.uleb128 0xd
	.long	.LASF257
	.byte	0x1
	.value	0x47d
	.long	0x6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF126
	.byte	0x1
	.value	0x47e
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF583
	.byte	0x1
	.value	0x480
	.long	0x2e67
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.long	.LASF584
	.byte	0x1
	.value	0x481
	.long	0x2e79
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.long	.LASF585
	.byte	0x1
	.value	0x482
	.long	0x2e79
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.long	.LASF586
	.byte	0x1
	.value	0x483
	.long	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0xf
	.long	0x2e61
	.byte	0x1
	.long	0x3f
	.uleb128 0x10
	.long	0x2e61
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x2de9
	.uleb128 0x5
	.byte	0x8
	.long	0x2e51
	.uleb128 0x1c
	.long	0x2e79
	.byte	0x1
	.uleb128 0x10
	.long	0x2e61
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x2e6d
	.uleb128 0x17
	.long	0x2f35
	.byte	0xc0
	.byte	0x1
	.value	0x7de
	.uleb128 0xd
	.long	.LASF295
	.byte	0x1
	.value	0x7d3
	.long	0x2f35
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF296
	.byte	0x1
	.value	0x7d4
	.long	0x2f45
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.long	.LASF294
	.byte	0x1
	.value	0x7d5
	.long	0x2f55
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.long	.LASF587
	.byte	0x1
	.value	0x7d6
	.long	0x2f65
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x19
	.string	"drv"
	.byte	0x1
	.value	0x7d7
	.long	0x2f75
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xd
	.long	.LASF267
	.byte	0x1
	.value	0x7d8
	.long	0x2f7b
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xd
	.long	.LASF588
	.byte	0x1
	.value	0x7d9
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xd
	.long	.LASF589
	.byte	0x1
	.value	0x7da
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0xd
	.long	.LASF590
	.byte	0x1
	.value	0x7db
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xd
	.long	.LASF591
	.byte	0x1
	.value	0x7dc
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0xd
	.long	.LASF592
	.byte	0x1
	.value	0x7dd
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.byte	0x0
	.uleb128 0x7
	.long	0x2f45
	.long	0x1c10
	.uleb128 0x8
	.long	0x61
	.byte	0x3
	.byte	0x0
	.uleb128 0x7
	.long	0x2f55
	.long	0x1c0a
	.uleb128 0x8
	.long	0x61
	.byte	0x3
	.byte	0x0
	.uleb128 0x7
	.long	0x2f65
	.long	0x1d0e
	.uleb128 0x8
	.long	0x61
	.byte	0x3
	.byte	0x0
	.uleb128 0x7
	.long	0x2f75
	.long	0x109
	.uleb128 0x8
	.long	0x61
	.byte	0x3
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x14fa
	.uleb128 0x7
	.long	0x2f8b
	.long	0x81
	.uleb128 0x8
	.long	0x61
	.byte	0x1f
	.byte	0x0
	.uleb128 0x12
	.long	.LASF593
	.byte	0x1
	.value	0x7de
	.long	0x2e7f
	.uleb128 0x17
	.long	0x2fce
	.byte	0xc
	.byte	0x1
	.value	0x922
	.uleb128 0xd
	.long	.LASF594
	.byte	0x1
	.value	0x920
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF595
	.byte	0x1
	.value	0x920
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.long	.LASF592
	.byte	0x1
	.value	0x921
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x12
	.long	.LASF596
	.byte	0x1
	.value	0x922
	.long	0x2f97
	.uleb128 0x17
	.long	0x3001
	.byte	0x8
	.byte	0x1
	.value	0xa9d
	.uleb128 0x19
	.string	"fd"
	.byte	0x1
	.value	0xa9b
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF597
	.byte	0x1
	.value	0xa9c
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x12
	.long	.LASF598
	.byte	0x1
	.value	0xa9d
	.long	0x2fda
	.uleb128 0x27
	.long	0x3074
	.value	0x420
	.byte	0x1
	.value	0xca5
	.uleb128 0x19
	.string	"fd"
	.byte	0x1
	.value	0xc9f
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF599
	.byte	0x1
	.value	0xca0
	.long	0x27cf
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x19
	.string	"buf"
	.byte	0x1
	.value	0xca1
	.long	0x1ae0
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.long	.LASF600
	.byte	0x1
	.value	0xca2
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x414
	.uleb128 0xd
	.long	.LASF601
	.byte	0x1
	.value	0xca3
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x418
	.uleb128 0xd
	.long	.LASF592
	.byte	0x1
	.value	0xca4
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x41c
	.byte	0x0
	.uleb128 0x12
	.long	.LASF602
	.byte	0x1
	.value	0xca5
	.long	0x300d
	.uleb128 0x17
	.long	0x30f2
	.byte	0x1c
	.byte	0x1
	.value	0xd22
	.uleb128 0x19
	.string	"fd"
	.byte	0x1
	.value	0xd1c
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF603
	.byte	0x1
	.value	0xd1c
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.long	.LASF581
	.byte	0x1
	.value	0xd1d
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF592
	.byte	0x1
	.value	0xd1e
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.long	.LASF604
	.byte	0x1
	.value	0xd1f
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.long	.LASF605
	.byte	0x1
	.value	0xd20
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.long	.LASF606
	.byte	0x1
	.value	0xd21
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x12
	.long	.LASF607
	.byte	0x1
	.value	0xd22
	.long	0x3080
	.uleb128 0x18
	.long	0x3138
	.long	.LASF608
	.value	0x410
	.byte	0x1
	.value	0x106f
	.uleb128 0x19
	.string	"vc"
	.byte	0x1
	.value	0x1070
	.long	0x1c32
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x19
	.string	"fd"
	.byte	0x1
	.value	0x1071
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF609
	.byte	0x1
	.value	0x1072
	.long	0x3138
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x7
	.long	0x3149
	.long	0x7a
	.uleb128 0x1a
	.long	0x61
	.value	0x3ff
	.byte	0x0
	.uleb128 0x12
	.long	.LASF608
	.byte	0x1
	.value	0x1073
	.long	0x30fe
	.uleb128 0x18
	.long	0x31cc
	.long	.LASF610
	.value	0x1028
	.byte	0x1
	.value	0x11a4
	.uleb128 0x19
	.string	"vc"
	.byte	0x1
	.value	0x11a5
	.long	0x1c32
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x19
	.string	"fd"
	.byte	0x1
	.value	0x11a6
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF341
	.byte	0x1
	.value	0x11a7
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.long	.LASF331
	.byte	0x1
	.value	0x11a8
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.long	.LASF611
	.byte	0x1
	.value	0x11a9
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x19
	.string	"buf"
	.byte	0x1
	.value	0x11aa
	.long	0x31cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.long	.LASF612
	.byte	0x1
	.value	0x11ab
	.long	0x27cf
	.byte	0x3
	.byte	0x23
	.uleb128 0x1018
	.byte	0x0
	.uleb128 0x7
	.long	0x31dd
	.long	0x4f8
	.uleb128 0x1a
	.long	0x61
	.value	0xfff
	.byte	0x0
	.uleb128 0x12
	.long	.LASF610
	.byte	0x1
	.value	0x11ac
	.long	0x3155
	.uleb128 0x13
	.long	0x3214
	.long	.LASF613
	.byte	0x10
	.byte	0x1
	.value	0x11ae
	.uleb128 0xd
	.long	.LASF272
	.byte	0x1
	.value	0x11af
	.long	0x1c48
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x19
	.string	"fd"
	.byte	0x1
	.value	0x11b0
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x12
	.long	.LASF613
	.byte	0x1
	.value	0x11b1
	.long	0x31e9
	.uleb128 0x13
	.long	0x324c
	.long	.LASF614
	.byte	0x10
	.byte	0x1
	.value	0x1817
	.uleb128 0xd
	.long	.LASF615
	.byte	0x1
	.value	0x1818
	.long	0x1b86
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF261
	.byte	0x1
	.value	0x1819
	.long	0x324c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x3220
	.uleb128 0x13
	.long	0x32d7
	.long	.LASF616
	.byte	0x40
	.byte	0x1
	.value	0x185f
	.uleb128 0x19
	.string	"fd"
	.byte	0x1
	.value	0x1860
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF617
	.byte	0x1
	.value	0x1861
	.long	0x1c10
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF363
	.byte	0x1
	.value	0x1862
	.long	0x32d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.long	.LASF618
	.byte	0x1
	.value	0x1863
	.long	0x32d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.long	.LASF619
	.byte	0x1
	.value	0x1864
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.long	.LASF227
	.byte	0x1
	.value	0x1865
	.long	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x19
	.string	"ufd"
	.byte	0x1
	.value	0x1867
	.long	0x32dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.long	.LASF261
	.byte	0x1
	.value	0x1868
	.long	0x32e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x1378
	.uleb128 0x5
	.byte	0x8
	.long	0x273f
	.uleb128 0x5
	.byte	0x8
	.long	0x3252
	.uleb128 0x12
	.long	.LASF616
	.byte	0x1
	.value	0x1869
	.long	0x3252
	.uleb128 0x13
	.long	0x3330
	.long	.LASF620
	.byte	0x18
	.byte	0x1
	.value	0x18a3
	.uleb128 0xd
	.long	.LASF621
	.byte	0x1
	.value	0x18a4
	.long	0x3330
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF227
	.byte	0x1
	.value	0x18a5
	.long	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF261
	.byte	0x1
	.value	0x18a6
	.long	0x3336
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x1f32
	.uleb128 0x5
	.byte	0x8
	.long	0x32f5
	.uleb128 0x12
	.long	.LASF620
	.byte	0x1
	.value	0x18a7
	.long	0x32f5
	.uleb128 0x7
	.long	0x3359
	.long	0x4f8
	.uleb128 0x1a
	.long	0x61
	.value	0x7fff
	.byte	0x0
	.uleb128 0x18
	.long	0x33d7
	.long	.LASF622
	.value	0x128
	.byte	0x1
	.value	0x19dd
	.uleb128 0xd
	.long	.LASF623
	.byte	0x1
	.value	0x19de
	.long	0x1c22
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF624
	.byte	0x1
	.value	0x19df
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0xd
	.long	.LASF625
	.byte	0x1
	.value	0x19e0
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.uleb128 0xd
	.long	.LASF626
	.byte	0x1
	.value	0x19e1
	.long	0x33d7
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.uleb128 0xd
	.long	.LASF627
	.byte	0x1
	.value	0x19e2
	.long	0x33dd
	.byte	0x3
	.byte	0x23
	.uleb128 0x110
	.uleb128 0xd
	.long	.LASF227
	.byte	0x1
	.value	0x19e3
	.long	0x109
	.byte	0x3
	.byte	0x23
	.uleb128 0x118
	.uleb128 0xd
	.long	.LASF261
	.byte	0x1
	.value	0x19e4
	.long	0x33e3
	.byte	0x3
	.byte	0x23
	.uleb128 0x120
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x174d
	.uleb128 0x5
	.byte	0x8
	.long	0x176f
	.uleb128 0x5
	.byte	0x8
	.long	0x3359
	.uleb128 0x12
	.long	.LASF622
	.byte	0x1
	.value	0x19e5
	.long	0x3359
	.uleb128 0x28
	.long	0x341b
	.long	.LASF629
	.byte	0x8
	.byte	0x1
	.value	0x1c05
	.uleb128 0x24
	.long	.LASF630
	.byte	0x1
	.value	0x1c06
	.long	0x519
	.uleb128 0x15
	.string	"exp"
	.byte	0x1
	.value	0x1c07
	.long	0x503
	.byte	0x0
	.uleb128 0x18
	.long	0x3455
	.long	.LASF631
	.value	0x1078
	.byte	0x1
	.value	0x1de1
	.uleb128 0xd
	.long	.LASF632
	.byte	0x1
	.value	0x1de2
	.long	0x2686
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x19
	.string	"f"
	.byte	0x1
	.value	0x1de3
	.long	0x1769
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x19
	.string	"buf"
	.byte	0x1
	.value	0x1de4
	.long	0x31cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.byte	0x0
	.uleb128 0x12
	.long	.LASF631
	.byte	0x1
	.value	0x1de5
	.long	0x341b
	.uleb128 0x18
	.long	0x349b
	.long	.LASF633
	.value	0x1078
	.byte	0x1
	.value	0x1e28
	.uleb128 0xd
	.long	.LASF632
	.byte	0x1
	.value	0x1e29
	.long	0x2686
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x19
	.string	"f"
	.byte	0x1
	.value	0x1e2a
	.long	0x1769
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x19
	.string	"buf"
	.byte	0x1
	.value	0x1e2b
	.long	0x31cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.byte	0x0
	.uleb128 0x12
	.long	.LASF633
	.byte	0x1
	.value	0x1e2c
	.long	0x3461
	.uleb128 0x5
	.byte	0x8
	.long	0x132a
	.uleb128 0x17
	.long	0x34d5
	.byte	0x10
	.byte	0x1
	.value	0x1f2d
	.uleb128 0xd
	.long	.LASF634
	.byte	0x1
	.value	0x1f2d
	.long	0x34d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF635
	.byte	0x1
	.value	0x1f2d
	.long	0x34db
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x1ee3
	.uleb128 0x5
	.byte	0x8
	.long	0x34d5
	.uleb128 0x5
	.byte	0x8
	.long	0x1f1c
	.uleb128 0x13
	.long	0x3504
	.long	.LASF636
	.byte	0x8
	.byte	0x1
	.value	0x1f30
	.uleb128 0xd
	.long	.LASF637
	.byte	0x1
	.value	0x1f30
	.long	0x34d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x13
	.long	0x353f
	.long	.LASF638
	.byte	0x18
	.byte	0x1
	.value	0x1f7a
	.uleb128 0xd
	.long	.LASF621
	.byte	0x1
	.value	0x1f7b
	.long	0x353f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF227
	.byte	0x1
	.value	0x1f7c
	.long	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF261
	.byte	0x1
	.value	0x1f7d
	.long	0x3545
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x1794
	.uleb128 0x5
	.byte	0x8
	.long	0x3504
	.uleb128 0x12
	.long	.LASF638
	.byte	0x1
	.value	0x1f7e
	.long	0x3504
	.uleb128 0x13
	.long	0x3592
	.long	.LASF639
	.byte	0x10
	.byte	0x1
	.value	0x2280
	.uleb128 0xd
	.long	.LASF257
	.byte	0x1
	.value	0x2281
	.long	0x6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF126
	.byte	0x1
	.value	0x2282
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF331
	.byte	0x1
	.value	0x2283
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x12
	.long	.LASF639
	.byte	0x1
	.value	0x2284
	.long	0x3557
	.uleb128 0x29
	.long	0x3634
	.byte	0x1
	.long	.LASF641
	.byte	0x1
	.value	0x1874
	.byte	0x1
	.long	0x3f
	.quad	.LFB448
	.quad	.LFE448
	.byte	0x1
	.byte	0x57
	.uleb128 0x2a
	.string	"fd"
	.byte	0x1
	.value	0x186f
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.uleb128 0x2b
	.long	.LASF617
	.byte	0x1
	.value	0x1870
	.long	0x1c10
	.byte	0x1
	.byte	0x5d
	.uleb128 0x2b
	.long	.LASF363
	.byte	0x1
	.value	0x1871
	.long	0x32d7
	.byte	0x1
	.byte	0x56
	.uleb128 0x2b
	.long	.LASF618
	.byte	0x1
	.value	0x1872
	.long	0x32d7
	.byte	0x1
	.byte	0x5c
	.uleb128 0x2b
	.long	.LASF227
	.byte	0x1
	.value	0x1873
	.long	0x109
	.byte	0x1
	.byte	0x5e
	.uleb128 0x2c
	.long	.LASF640
	.byte	0x1
	.value	0x1875
	.long	0x3634
	.byte	0x1
	.byte	0x50
	.uleb128 0x2d
	.string	"ioh"
	.byte	0x1
	.value	0x1875
	.long	0x363a
	.byte	0x1
	.byte	0x51
	.uleb128 0x2e
	.long	.LASF718
	.byte	0x1
	.value	0x188d
	.quad	.L12
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x363a
	.uleb128 0x5
	.byte	0x8
	.long	0x32e9
	.uleb128 0x29
	.long	0x369c
	.byte	0x1
	.long	.LASF642
	.byte	0x1
	.value	0x189c
	.byte	0x1
	.long	0x3f
	.quad	.LFB449
	.quad	.LFE449
	.byte	0x1
	.byte	0x57
	.uleb128 0x2a
	.string	"fd"
	.byte	0x1
	.value	0x1898
	.long	0x3f
	.byte	0x1
	.byte	0x55
	.uleb128 0x2b
	.long	.LASF363
	.byte	0x1
	.value	0x1899
	.long	0x32d7
	.byte	0x1
	.byte	0x54
	.uleb128 0x2b
	.long	.LASF618
	.byte	0x1
	.value	0x189a
	.long	0x32d7
	.byte	0x1
	.byte	0x50
	.uleb128 0x2b
	.long	.LASF227
	.byte	0x1
	.value	0x189b
	.long	0x109
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.uleb128 0x2f
	.long	0x36ea
	.long	.LASF644
	.byte	0x1
	.value	0x242
	.byte	0x1
	.long	0x50e
	.quad	.LFB257
	.quad	.LFE257
	.byte	0x1
	.byte	0x57
	.uleb128 0x2b
	.long	.LASF227
	.byte	0x1
	.value	0x240
	.long	0x109
	.byte	0x1
	.byte	0x55
	.uleb128 0x2b
	.long	.LASF643
	.byte	0x1
	.value	0x240
	.long	0x50e
	.byte	0x1
	.byte	0x54
	.uleb128 0x2a
	.string	"tag"
	.byte	0x1
	.value	0x241
	.long	0x12d1
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x30
	.long	0x3734
	.long	.LASF645
	.byte	0x1
	.value	0x24a
	.byte	0x1
	.quad	.LFB258
	.quad	.LFE258
	.byte	0x1
	.byte	0x57
	.uleb128 0x2b
	.long	.LASF227
	.byte	0x1
	.value	0x249
	.long	0x109
	.byte	0x1
	.byte	0x55
	.uleb128 0x2b
	.long	.LASF643
	.byte	0x1
	.value	0x249
	.long	0x50e
	.byte	0x1
	.byte	0x54
	.uleb128 0x2b
	.long	.LASF277
	.byte	0x1
	.value	0x249
	.long	0x50e
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x2f
	.long	0x379f
	.long	.LASF646
	.byte	0x1
	.value	0x253
	.byte	0x1
	.long	0x50e
	.quad	.LFB259
	.quad	.LFE259
	.byte	0x1
	.byte	0x57
	.uleb128 0x2b
	.long	.LASF227
	.byte	0x1
	.value	0x251
	.long	0x109
	.byte	0x1
	.byte	0x55
	.uleb128 0x2b
	.long	.LASF643
	.byte	0x1
	.value	0x251
	.long	0x50e
	.byte	0x1
	.byte	0x56
	.uleb128 0x2a
	.string	"tag"
	.byte	0x1
	.value	0x252
	.long	0x12d1
	.byte	0x1
	.byte	0x51
	.uleb128 0x2c
	.long	.LASF277
	.byte	0x1
	.value	0x254
	.long	0x50e
	.byte	0x1
	.byte	0x53
	.uleb128 0x2c
	.long	.LASF647
	.byte	0x1
	.value	0x255
	.long	0x91b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x30
	.long	0x37e9
	.long	.LASF648
	.byte	0x1
	.value	0x25f
	.byte	0x1
	.quad	.LFB260
	.quad	.LFE260
	.byte	0x1
	.byte	0x57
	.uleb128 0x2b
	.long	.LASF227
	.byte	0x1
	.value	0x25e
	.long	0x109
	.byte	0x1
	.byte	0x55
	.uleb128 0x2b
	.long	.LASF643
	.byte	0x1
	.value	0x25e
	.long	0x50e
	.byte	0x1
	.byte	0x56
	.uleb128 0x2b
	.long	.LASF277
	.byte	0x1
	.value	0x25e
	.long	0x50e
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x2f
	.long	0x3837
	.long	.LASF649
	.byte	0x1
	.value	0x267
	.byte	0x1
	.long	0x50e
	.quad	.LFB261
	.quad	.LFE261
	.byte	0x1
	.byte	0x57
	.uleb128 0x2b
	.long	.LASF227
	.byte	0x1
	.value	0x265
	.long	0x109
	.byte	0x1
	.byte	0x55
	.uleb128 0x2b
	.long	.LASF643
	.byte	0x1
	.value	0x265
	.long	0x50e
	.byte	0x1
	.byte	0x54
	.uleb128 0x2a
	.string	"tag"
	.byte	0x1
	.value	0x266
	.long	0x12d1
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x31
	.long	0x3882
	.byte	0x1
	.long	.LASF650
	.byte	0x1
	.value	0x26f
	.byte	0x1
	.quad	.LFB262
	.quad	.LFE262
	.byte	0x1
	.byte	0x57
	.uleb128 0x2b
	.long	.LASF227
	.byte	0x1
	.value	0x26e
	.long	0x109
	.byte	0x1
	.byte	0x55
	.uleb128 0x2b
	.long	.LASF643
	.byte	0x1
	.value	0x26e
	.long	0x50e
	.byte	0x1
	.byte	0x54
	.uleb128 0x2b
	.long	.LASF277
	.byte	0x1
	.value	0x26e
	.long	0x50e
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x31
	.long	0x38cb
	.byte	0x1
	.long	.LASF651
	.byte	0x1
	.value	0x2b6
	.byte	0x1
	.quad	.LFB266
	.quad	.LFE266
	.byte	0x1
	.byte	0x57
	.uleb128 0x2b
	.long	.LASF583
	.byte	0x1
	.value	0x2b5
	.long	0x3f
	.byte	0x1
	.byte	0x55
	.uleb128 0x2b
	.long	.LASF652
	.byte	0x1
	.value	0x2b5
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x2d
	.string	"i"
	.byte	0x1
	.value	0x2b7
	.long	0x3f
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x31
	.long	0x3916
	.byte	0x1
	.long	.LASF653
	.byte	0x1
	.value	0x2c7
	.byte	0x1
	.quad	.LFB267
	.quad	.LFE267
	.byte	0x1
	.byte	0x57
	.uleb128 0x2a
	.string	"env"
	.byte	0x1
	.value	0x2c6
	.long	0x2085
	.byte	0x1
	.byte	0x55
	.uleb128 0x2b
	.long	.LASF339
	.byte	0x1
	.value	0x2c6
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x2a
	.string	"val"
	.byte	0x1
	.value	0x2c6
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x31
	.long	0x3961
	.byte	0x1
	.long	.LASF654
	.byte	0x1
	.value	0x2d4
	.byte	0x1
	.quad	.LFB268
	.quad	.LFE268
	.byte	0x1
	.byte	0x57
	.uleb128 0x2a
	.string	"env"
	.byte	0x1
	.value	0x2d3
	.long	0x2085
	.byte	0x1
	.byte	0x55
	.uleb128 0x2b
	.long	.LASF339
	.byte	0x1
	.value	0x2d3
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x2a
	.string	"val"
	.byte	0x1
	.value	0x2d3
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x31
	.long	0x39ac
	.byte	0x1
	.long	.LASF655
	.byte	0x1
	.value	0x2e1
	.byte	0x1
	.quad	.LFB269
	.quad	.LFE269
	.byte	0x1
	.byte	0x57
	.uleb128 0x2a
	.string	"env"
	.byte	0x1
	.value	0x2e0
	.long	0x2085
	.byte	0x1
	.byte	0x55
	.uleb128 0x2b
	.long	.LASF339
	.byte	0x1
	.value	0x2e0
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x2a
	.string	"val"
	.byte	0x1
	.value	0x2e0
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x29
	.long	0x3a07
	.byte	0x1
	.long	.LASF656
	.byte	0x1
	.value	0x2ee
	.byte	0x1
	.long	0x3f
	.quad	.LFB270
	.quad	.LFE270
	.byte	0x1
	.byte	0x57
	.uleb128 0x2a
	.string	"env"
	.byte	0x1
	.value	0x2ed
	.long	0x2085
	.byte	0x1
	.byte	0x55
	.uleb128 0x2b
	.long	.LASF339
	.byte	0x1
	.value	0x2ed
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x2a
	.string	"tag"
	.byte	0x1
	.value	0x2ed
	.long	0x12d1
	.byte	0x1
	.byte	0x51
	.uleb128 0x32
	.string	"val"
	.byte	0x1
	.value	0x2ef
	.long	0x3f
	.byte	0x0
	.uleb128 0x29
	.long	0x3a62
	.byte	0x1
	.long	.LASF657
	.byte	0x1
	.value	0x2fd
	.byte	0x1
	.long	0x3f
	.quad	.LFB271
	.quad	.LFE271
	.byte	0x1
	.byte	0x57
	.uleb128 0x2a
	.string	"env"
	.byte	0x1
	.value	0x2fc
	.long	0x2085
	.byte	0x1
	.byte	0x55
	.uleb128 0x2b
	.long	.LASF339
	.byte	0x1
	.value	0x2fc
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x2a
	.string	"tag"
	.byte	0x1
	.value	0x2fc
	.long	0x12d1
	.byte	0x1
	.byte	0x51
	.uleb128 0x32
	.string	"val"
	.byte	0x1
	.value	0x2fe
	.long	0x3f
	.byte	0x0
	.uleb128 0x29
	.long	0x3abd
	.byte	0x1
	.long	.LASF658
	.byte	0x1
	.value	0x30c
	.byte	0x1
	.long	0x3f
	.quad	.LFB272
	.quad	.LFE272
	.byte	0x1
	.byte	0x57
	.uleb128 0x2a
	.string	"env"
	.byte	0x1
	.value	0x30b
	.long	0x2085
	.byte	0x1
	.byte	0x55
	.uleb128 0x2b
	.long	.LASF339
	.byte	0x1
	.value	0x30b
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x2a
	.string	"tag"
	.byte	0x1
	.value	0x30b
	.long	0x12d1
	.byte	0x1
	.byte	0x51
	.uleb128 0x32
	.string	"val"
	.byte	0x1
	.value	0x30d
	.long	0x3f
	.byte	0x0
	.uleb128 0x31
	.long	0x3b09
	.byte	0x1
	.long	.LASF659
	.byte	0x1
	.value	0x31c
	.byte	0x1
	.quad	.LFB273
	.quad	.LFE273
	.byte	0x1
	.byte	0x57
	.uleb128 0x2a
	.string	"fmt"
	.byte	0x1
	.value	0x31b
	.long	0x6f
	.byte	0x1
	.byte	0x53
	.uleb128 0x33
	.uleb128 0x2d
	.string	"ap"
	.byte	0x1
	.value	0x31d
	.long	0x4ed
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.string	"env"
	.byte	0x1
	.value	0x31e
	.long	0x2085
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x29
	.long	0x3b8e
	.byte	0x1
	.long	.LASF660
	.byte	0x1
	.value	0x29f
	.byte	0x1
	.long	0x3f
	.quad	.LFB265
	.quad	.LFE265
	.byte	0x1
	.byte	0x57
	.uleb128 0x2b
	.long	.LASF583
	.byte	0x1
	.value	0x29d
	.long	0x3f
	.byte	0x1
	.byte	0x55
	.uleb128 0x2b
	.long	.LASF652
	.byte	0x1
	.value	0x29d
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x2b
	.long	.LASF245
	.byte	0x1
	.value	0x29d
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x2b
	.long	.LASF621
	.byte	0x1
	.value	0x29e
	.long	0x3b8e
	.byte	0x1
	.byte	0x52
	.uleb128 0x2b
	.long	.LASF227
	.byte	0x1
	.value	0x29e
	.long	0x109
	.byte	0x1
	.byte	0x58
	.uleb128 0x2d
	.string	"i"
	.byte	0x1
	.value	0x2a0
	.long	0x3f
	.byte	0x1
	.byte	0x55
	.uleb128 0x2c
	.long	.LASF661
	.byte	0x1
	.value	0x2a0
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x179f
	.uleb128 0x29
	.long	0x3c19
	.byte	0x1
	.long	.LASF662
	.byte	0x1
	.value	0x286
	.byte	0x1
	.long	0x3f
	.quad	.LFB264
	.quad	.LFE264
	.byte	0x1
	.byte	0x57
	.uleb128 0x2b
	.long	.LASF583
	.byte	0x1
	.value	0x284
	.long	0x3f
	.byte	0x1
	.byte	0x55
	.uleb128 0x2b
	.long	.LASF652
	.byte	0x1
	.value	0x284
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x2b
	.long	.LASF245
	.byte	0x1
	.value	0x284
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x2b
	.long	.LASF621
	.byte	0x1
	.value	0x285
	.long	0x3c19
	.byte	0x1
	.byte	0x52
	.uleb128 0x2b
	.long	.LASF227
	.byte	0x1
	.value	0x285
	.long	0x109
	.byte	0x1
	.byte	0x58
	.uleb128 0x2d
	.string	"i"
	.byte	0x1
	.value	0x287
	.long	0x3f
	.byte	0x1
	.byte	0x55
	.uleb128 0x2c
	.long	.LASF661
	.byte	0x1
	.value	0x287
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x17c0
	.uleb128 0x31
	.long	0x3c5c
	.byte	0x1
	.long	.LASF663
	.byte	0x1
	.value	0x339
	.byte	0x1
	.quad	.LFB274
	.quad	.LFE274
	.byte	0x1
	.byte	0x57
	.uleb128 0x2b
	.long	.LASF621
	.byte	0x1
	.value	0x338
	.long	0x3c5c
	.byte	0x1
	.byte	0x55
	.uleb128 0x2b
	.long	.LASF227
	.byte	0x1
	.value	0x338
	.long	0x109
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x1d31
	.uleb128 0x29
	.long	0x3cd9
	.byte	0x1
	.long	.LASF664
	.byte	0x1
	.value	0x341
	.byte	0x1
	.long	0x3cd9
	.quad	.LFB275
	.quad	.LFE275
	.byte	0x1
	.byte	0x57
	.uleb128 0x2b
	.long	.LASF621
	.byte	0x1
	.value	0x33e
	.long	0x1dba
	.byte	0x1
	.byte	0x56
	.uleb128 0x2b
	.long	.LASF227
	.byte	0x1
	.value	0x33f
	.long	0x109
	.byte	0x1
	.byte	0x5c
	.uleb128 0x2b
	.long	.LASF665
	.byte	0x1
	.value	0x33f
	.long	0x3f
	.byte	0x1
	.byte	0x5d
	.uleb128 0x2b
	.long	.LASF257
	.byte	0x1
	.value	0x340
	.long	0x6f
	.byte	0x1
	.byte	0x5e
	.uleb128 0x2d
	.string	"s"
	.byte	0x1
	.value	0x342
	.long	0x3cd9
	.byte	0x1
	.byte	0x53
	.uleb128 0x2c
	.long	.LASF666
	.byte	0x1
	.value	0x342
	.long	0x3cd9
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x1dc6
	.uleb128 0x31
	.long	0x3d2a
	.byte	0x1
	.long	.LASF667
	.byte	0x1
	.value	0x35e
	.byte	0x1
	.quad	.LFB276
	.quad	.LFE276
	.byte	0x1
	.byte	0x57
	.uleb128 0x2b
	.long	.LASF668
	.byte	0x1
	.value	0x35d
	.long	0x3cd9
	.byte	0x1
	.byte	0x53
	.uleb128 0x2c
	.long	.LASF669
	.byte	0x1
	.value	0x35f
	.long	0x3cd9
	.byte	0x1
	.byte	0x54
	.uleb128 0x2c
	.long	.LASF666
	.byte	0x1
	.value	0x35f
	.long	0x3cd9
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.uleb128 0x31
	.long	0x3d59
	.byte	0x1
	.long	.LASF670
	.byte	0x1
	.value	0x37f
	.byte	0x1
	.quad	.LFB277
	.quad	.LFE277
	.byte	0x1
	.byte	0x57
	.uleb128 0x2b
	.long	.LASF671
	.byte	0x1
	.value	0x37e
	.long	0x3f
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x31
	.long	0x3dd7
	.byte	0x1
	.long	.LASF672
	.byte	0x1
	.value	0x386
	.byte	0x1
	.quad	.LFB278
	.quad	.LFE278
	.byte	0x1
	.byte	0x57
	.uleb128 0x2a
	.string	"dx"
	.byte	0x1
	.value	0x385
	.long	0x3f
	.byte	0x1
	.byte	0x55
	.uleb128 0x2a
	.string	"dy"
	.byte	0x1
	.value	0x385
	.long	0x3f
	.byte	0x1
	.byte	0x59
	.uleb128 0x2a
	.string	"dz"
	.byte	0x1
	.value	0x385
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x2b
	.long	.LASF673
	.byte	0x1
	.value	0x385
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x2c
	.long	.LASF674
	.byte	0x1
	.value	0x387
	.long	0x1dba
	.byte	0x1
	.byte	0x5b
	.uleb128 0x2c
	.long	.LASF675
	.byte	0x1
	.value	0x388
	.long	0x109
	.byte	0x1
	.byte	0x5a
	.uleb128 0x34
	.long	.LASF280
	.byte	0x1
	.value	0x389
	.long	0x3f
	.byte	0x0
	.uleb128 0x35
	.byte	0x1
	.long	.LASF686
	.byte	0x1
	.value	0x3a3
	.byte	0x1
	.long	0x3f
	.quad	.LFB279
	.quad	.LFE279
	.byte	0x1
	.byte	0x57
	.uleb128 0x31
	.long	0x3e34
	.byte	0x1
	.long	.LASF676
	.byte	0x1
	.value	0x3ab
	.byte	0x1
	.quad	.LFB280
	.quad	.LFE280
	.byte	0x1
	.byte	0x57
	.uleb128 0x2c
	.long	.LASF666
	.byte	0x1
	.value	0x3ac
	.long	0x3cd9
	.byte	0x1
	.byte	0x53
	.uleb128 0x2c
	.long	.LASF331
	.byte	0x1
	.value	0x3ad
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.byte	0x0
	.uleb128 0x31
	.long	0x3e7d
	.byte	0x1
	.long	.LASF677
	.byte	0x1
	.value	0x3c0
	.byte	0x1
	.quad	.LFB281
	.quad	.LFE281
	.byte	0x1
	.byte	0x57
	.uleb128 0x2b
	.long	.LASF331
	.byte	0x1
	.value	0x3bf
	.long	0x3f
	.byte	0x1
	.byte	0x55
	.uleb128 0x2c
	.long	.LASF666
	.byte	0x1
	.value	0x3c1
	.long	0x3cd9
	.byte	0x1
	.byte	0x52
	.uleb128 0x2d
	.string	"i"
	.byte	0x1
	.value	0x3c2
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0x29
	.long	0x3f3f
	.byte	0x1
	.long	.LASF678
	.byte	0x1
	.value	0x3d7
	.byte	0x1
	.long	0x519
	.quad	.LFB282
	.quad	.LFE282
	.byte	0x1
	.byte	0x57
	.uleb128 0x2a
	.string	"a"
	.byte	0x1
	.value	0x3d6
	.long	0x519
	.byte	0x1
	.byte	0x55
	.uleb128 0x2a
	.string	"b"
	.byte	0x1
	.value	0x3d6
	.long	0x50e
	.byte	0x1
	.byte	0x54
	.uleb128 0x2a
	.string	"c"
	.byte	0x1
	.value	0x3d6
	.long	0x50e
	.byte	0x1
	.byte	0x51
	.uleb128 0x17
	.long	0x3eed
	.byte	0x8
	.byte	0x1
	.value	0x3e0
	.uleb128 0x19
	.string	"low"
	.byte	0x1
	.value	0x3de
	.long	0x50e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF679
	.byte	0x1
	.value	0x3de
	.long	0x50e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x14
	.long	0x3f0c
	.byte	0x8
	.byte	0x1
	.value	0x3e1
	.uleb128 0x15
	.string	"ll"
	.byte	0x1
	.value	0x3d9
	.long	0x519
	.uleb128 0x15
	.string	"l"
	.byte	0x1
	.value	0x3e0
	.long	0x3ec5
	.byte	0x0
	.uleb128 0x32
	.string	"u"
	.byte	0x1
	.value	0x3e1
	.long	0x3eed
	.uleb128 0x2d
	.string	"res"
	.byte	0x1
	.value	0x3e1
	.long	0x3eed
	.byte	0x1
	.byte	0x58
	.uleb128 0x2d
	.string	"rl"
	.byte	0x1
	.value	0x3e2
	.long	0x519
	.byte	0x1
	.byte	0x59
	.uleb128 0x2d
	.string	"rh"
	.byte	0x1
	.value	0x3e2
	.long	0x519
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x2f
	.long	0x3f9b
	.long	.LASF680
	.byte	0x1
	.value	0x41b
	.byte	0x1
	.long	0x153
	.quad	.LFB284
	.quad	.LFE284
	.byte	0x1
	.byte	0x57
	.uleb128 0x36
	.long	0x3f86
	.quad	.LBB2
	.quad	.LBE2
	.uleb128 0x2d
	.string	"ts"
	.byte	0x1
	.value	0x41e
	.long	0x190
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.byte	0x0
	.uleb128 0x37
	.long	.Ldebug_ranges0+0x0
	.uleb128 0x2d
	.string	"tv"
	.byte	0x1
	.value	0x426
	.long	0x1b9
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.long	0x4024
	.byte	0x1
	.long	.LASF681
	.byte	0x1
	.value	0x438
	.byte	0x1
	.long	0x153
	.quad	.LFB285
	.quad	.LFE285
	.byte	0x1
	.byte	0x57
	.uleb128 0x37
	.long	.Ldebug_ranges0+0x30
	.uleb128 0x34
	.long	.LASF682
	.byte	0x1
	.value	0x43c
	.long	0x153
	.uleb128 0x38
	.long	0x4024
	.quad	.LBB6
	.quad	.LBE6
	.uleb128 0x39
	.long	0x4036
	.byte	0x1
	.byte	0x50
	.uleb128 0x39
	.long	0x4042
	.byte	0x1
	.byte	0x51
	.uleb128 0x39
	.long	0x404e
	.byte	0x1
	.byte	0x51
	.uleb128 0x3a
	.quad	.LBB7
	.quad	.LBE7
	.uleb128 0x39
	.long	0x4036
	.byte	0x1
	.byte	0x50
	.uleb128 0x39
	.long	0x4042
	.byte	0x1
	.byte	0x51
	.uleb128 0x39
	.long	0x404e
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3b
	.long	0x405b
	.long	.LASF683
	.byte	0x2
	.value	0x401
	.byte	0x1
	.long	0x153
	.byte	0x3
	.uleb128 0x32
	.string	"low"
	.byte	0x2
	.value	0x402
	.long	0x50e
	.uleb128 0x34
	.long	.LASF679
	.byte	0x2
	.value	0x402
	.long	0x50e
	.uleb128 0x32
	.string	"val"
	.byte	0x2
	.value	0x403
	.long	0x153
	.byte	0x0
	.uleb128 0x2f
	.long	0x408a
	.long	.LASF684
	.byte	0x1
	.value	0x44a
	.byte	0x1
	.long	0x153
	.quad	.LFB286
	.quad	.LFE286
	.byte	0x1
	.byte	0x57
	.uleb128 0x32
	.string	"ti"
	.byte	0x1
	.value	0x44b
	.long	0x153
	.byte	0x0
	.uleb128 0x31
	.long	0x40fd
	.byte	0x1
	.long	.LASF685
	.byte	0x1
	.value	0x456
	.byte	0x1
	.quad	.LFB287
	.quad	.LFE287
	.byte	0x1
	.byte	0x57
	.uleb128 0x38
	.long	0x4024
	.quad	.LBB9
	.quad	.LBE9
	.uleb128 0x39
	.long	0x4036
	.byte	0x1
	.byte	0x50
	.uleb128 0x39
	.long	0x4042
	.byte	0x1
	.byte	0x51
	.uleb128 0x39
	.long	0x404e
	.byte	0x1
	.byte	0x51
	.uleb128 0x3a
	.quad	.LBB10
	.quad	.LBE10
	.uleb128 0x39
	.long	0x4036
	.byte	0x1
	.byte	0x50
	.uleb128 0x39
	.long	0x4042
	.byte	0x1
	.byte	0x51
	.uleb128 0x39
	.long	0x404e
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3c
	.byte	0x1
	.long	.LASF687
	.byte	0x1
	.value	0x461
	.byte	0x1
	.quad	.LFB288
	.quad	.LFE288
	.byte	0x1
	.byte	0x57
	.uleb128 0x30
	.long	0x4145
	.long	.LASF688
	.byte	0x1
	.value	0x48f
	.byte	0x1
	.quad	.LFB290
	.quad	.LFE290
	.byte	0x1
	.byte	0x57
	.uleb128 0x2a
	.string	"t"
	.byte	0x1
	.value	0x48e
	.long	0x2e61
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x3d
	.long	0x4170
	.long	.LASF689
	.byte	0x1
	.value	0x4d1
	.quad	.LFB291
	.quad	.LFE291
	.byte	0x1
	.byte	0x57
	.uleb128 0x2d
	.string	"i"
	.byte	0x1
	.value	0x4d2
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x2f
	.long	0x41b0
	.long	.LASF690
	.byte	0x1
	.value	0x517
	.byte	0x1
	.long	0x2ddd
	.quad	.LFB293
	.quad	.LFE293
	.byte	0x1
	.byte	0x57
	.uleb128 0x2b
	.long	.LASF393
	.byte	0x1
	.value	0x516
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.uleb128 0x2c
	.long	.LASF315
	.byte	0x1
	.value	0x518
	.long	0x2ddd
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x29
	.long	0x420b
	.byte	0x1
	.long	.LASF691
	.byte	0x1
	.value	0x521
	.byte	0x1
	.long	0x420b
	.quad	.LFB294
	.quad	.LFE294
	.byte	0x1
	.byte	0x57
	.uleb128 0x2b
	.long	.LASF315
	.byte	0x1
	.value	0x520
	.long	0x2ddd
	.byte	0x1
	.byte	0x53
	.uleb128 0x2a
	.string	"cb"
	.byte	0x1
	.value	0x520
	.long	0x2de3
	.byte	0x1
	.byte	0x5c
	.uleb128 0x2b
	.long	.LASF227
	.byte	0x1
	.value	0x520
	.long	0x109
	.byte	0x1
	.byte	0x5d
	.uleb128 0x2d
	.string	"ts"
	.byte	0x1
	.value	0x522
	.long	0x420b
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x16c3
	.uleb128 0x31
	.long	0x423f
	.byte	0x1
	.long	.LASF692
	.byte	0x1
	.value	0x52c
	.byte	0x1
	.quad	.LFB295
	.quad	.LFE295
	.byte	0x1
	.byte	0x57
	.uleb128 0x2a
	.string	"ts"
	.byte	0x1
	.value	0x52b
	.long	0x420b
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x31
	.long	0x4286
	.byte	0x1
	.long	.LASF693
	.byte	0x1
	.value	0x532
	.byte	0x1
	.quad	.LFB296
	.quad	.LFE296
	.byte	0x1
	.byte	0x57
	.uleb128 0x2a
	.string	"ts"
	.byte	0x1
	.value	0x531
	.long	0x420b
	.byte	0x1
	.byte	0x55
	.uleb128 0x2d
	.string	"pt"
	.byte	0x1
	.value	0x533
	.long	0x4286
	.byte	0x1
	.byte	0x51
	.uleb128 0x2d
	.string	"t"
	.byte	0x1
	.value	0x533
	.long	0x420b
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x420b
	.uleb128 0x31
	.long	0x42e1
	.byte	0x1
	.long	.LASF694
	.byte	0x1
	.value	0x547
	.byte	0x1
	.quad	.LFB297
	.quad	.LFE297
	.byte	0x1
	.byte	0x57
	.uleb128 0x2a
	.string	"ts"
	.byte	0x1
	.value	0x546
	.long	0x420b
	.byte	0x1
	.byte	0x56
	.uleb128 0x2b
	.long	.LASF316
	.byte	0x1
	.value	0x546
	.long	0x153
	.byte	0x1
	.byte	0x53
	.uleb128 0x2d
	.string	"pt"
	.byte	0x1
	.value	0x548
	.long	0x4286
	.byte	0x1
	.byte	0x51
	.uleb128 0x2d
	.string	"t"
	.byte	0x1
	.value	0x548
	.long	0x420b
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x29
	.long	0x431f
	.byte	0x1
	.long	.LASF695
	.byte	0x1
	.value	0x563
	.byte	0x1
	.long	0x3f
	.quad	.LFB298
	.quad	.LFE298
	.byte	0x1
	.byte	0x57
	.uleb128 0x2a
	.string	"ts"
	.byte	0x1
	.value	0x562
	.long	0x420b
	.byte	0x1
	.byte	0x55
	.uleb128 0x2d
	.string	"t"
	.byte	0x1
	.value	0x564
	.long	0x420b
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x30
	.long	0x4368
	.long	.LASF696
	.byte	0x1
	.value	0x574
	.byte	0x1
	.quad	.LFB300
	.quad	.LFE300
	.byte	0x1
	.byte	0x57
	.uleb128 0x2b
	.long	.LASF697
	.byte	0x1
	.value	0x573
	.long	0x4286
	.byte	0x1
	.byte	0x53
	.uleb128 0x2b
	.long	.LASF698
	.byte	0x1
	.value	0x573
	.long	0x153
	.byte	0x1
	.byte	0x56
	.uleb128 0x2d
	.string	"ts"
	.byte	0x1
	.value	0x575
	.long	0x420b
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x29
	.long	0x439b
	.byte	0x1
	.long	.LASF699
	.byte	0x1
	.value	0x585
	.byte	0x1
	.long	0x153
	.quad	.LFB301
	.quad	.LFE301
	.byte	0x1
	.byte	0x57
	.uleb128 0x2b
	.long	.LASF315
	.byte	0x1
	.value	0x584
	.long	0x2ddd
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x3c
	.byte	0x1
	.long	.LASF700
	.byte	0x1
	.value	0x1fb3
	.byte	0x1
	.quad	.LFB515
	.quad	.LFE515
	.byte	0x1
	.byte	0x57
	.uleb128 0x3c
	.byte	0x1
	.long	.LASF701
	.byte	0x1
	.value	0x1fa8
	.byte	0x1
	.quad	.LFB514
	.quad	.LFE514
	.byte	0x1
	.byte	0x57
	.uleb128 0x30
	.long	0x4490
	.long	.LASF702
	.byte	0x1
	.value	0x5cf
	.byte	0x1
	.quad	.LFB307
	.quad	.LFE307
	.byte	0x1
	.byte	0x57
	.uleb128 0x2b
	.long	.LASF703
	.byte	0x1
	.value	0x5cd
	.long	0x3f
	.byte	0x1
	.byte	0x55
	.uleb128 0x3e
	.long	0x441f
	.long	0x4490
	.quad	.LBB11
	.quad	.LBE11
	.uleb128 0x3f
	.long	0x44a2
	.byte	0x0
	.uleb128 0x36
	.long	0x4443
	.quad	.LBB12
	.quad	.LBE12
	.uleb128 0x2d
	.string	"env"
	.byte	0x1
	.value	0x5f6
	.long	0x2085
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x3e
	.long	0x446b
	.long	0x44ad
	.quad	.LBB13
	.quad	.LBE13
	.uleb128 0x40
	.long	0x44bf
	.byte	0x1
	.byte	0x53
	.uleb128 0x40
	.long	0x44cb
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x38
	.long	0x44ad
	.quad	.LBB15
	.quad	.LBE15
	.uleb128 0x40
	.long	0x44bf
	.byte	0x1
	.byte	0x53
	.uleb128 0x40
	.long	0x44cb
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.uleb128 0x3b
	.long	0x44ad
	.long	.LASF704
	.byte	0x1
	.value	0x48a
	.byte	0x1
	.long	0x3f
	.byte	0x3
	.uleb128 0x41
	.string	"t"
	.byte	0x1
	.value	0x489
	.long	0x2e61
	.byte	0x0
	.uleb128 0x3b
	.long	0x44d8
	.long	.LASF705
	.byte	0x1
	.value	0x56d
	.byte	0x1
	.long	0x3f
	.byte	0x3
	.uleb128 0x42
	.long	.LASF706
	.byte	0x1
	.value	0x56c
	.long	0x420b
	.uleb128 0x42
	.long	.LASF698
	.byte	0x1
	.value	0x56c
	.long	0x153
	.byte	0x0
	.uleb128 0x31
	.long	0x4506
	.byte	0x1
	.long	.LASF707
	.byte	0x1
	.value	0x918
	.byte	0x1
	.quad	.LFB346
	.quad	.LFE346
	.byte	0x1
	.byte	0x57
	.uleb128 0x2a
	.string	"fd"
	.byte	0x1
	.value	0x917
	.long	0x3f
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x31
	.long	0x4534
	.byte	0x1
	.long	.LASF708
	.byte	0x1
	.value	0x914
	.byte	0x1
	.quad	.LFB345
	.quad	.LFE345
	.byte	0x1
	.byte	0x57
	.uleb128 0x2a
	.string	"fd"
	.byte	0x1
	.value	0x913
	.long	0x3f
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x30
	.long	0x45a9
	.long	.LASF709
	.byte	0x1
	.value	0x1dc
	.byte	0x1
	.quad	.LFB255
	.quad	.LFE255
	.byte	0x1
	.byte	0x57
	.uleb128 0x2b
	.long	.LASF227
	.byte	0x1
	.value	0x1db
	.long	0x109
	.byte	0x1
	.byte	0x55
	.uleb128 0x2d
	.string	"s"
	.byte	0x1
	.value	0x1dd
	.long	0x45a9
	.byte	0x1
	.byte	0x53
	.uleb128 0x2c
	.long	.LASF710
	.byte	0x1
	.value	0x1de
	.long	0x27cf
	.byte	0x3
	.byte	0x91
	.sleb128 1040
	.uleb128 0x2d
	.string	"len"
	.byte	0x1
	.value	0x1df
	.long	0x5f3
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2d
	.string	"sd"
	.byte	0x1
	.value	0x1e0
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.uleb128 0x2d
	.string	"buf"
	.byte	0x1
	.value	0x1e1
	.long	0x3138
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x2d95
	.uleb128 0x29
	.long	0x461f
	.byte	0x1
	.long	.LASF711
	.byte	0x1
	.value	0x1c6
	.byte	0x1
	.long	0x3f
	.quad	.LFB254
	.quad	.LFE254
	.byte	0x1
	.byte	0x57
	.uleb128 0x2a
	.string	"fmt"
	.byte	0x1
	.value	0x1c5
	.long	0x6f
	.byte	0x1
	.byte	0x53
	.uleb128 0x33
	.uleb128 0x2d
	.string	"ap"
	.byte	0x1
	.value	0x1c7
	.long	0x4ed
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.string	"n"
	.byte	0x1
	.value	0x1c8
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.uleb128 0x38
	.long	0x461f
	.quad	.LBB17
	.quad	.LBE17
	.uleb128 0x3f
	.long	0x4631
	.uleb128 0x40
	.long	0x463c
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.byte	0x0
	.uleb128 0x43
	.long	0x4648
	.byte	0x1
	.long	.LASF712
	.byte	0x3
	.byte	0x26
	.byte	0x1
	.long	0x3f
	.byte	0x3
	.uleb128 0x44
	.long	.LASF713
	.byte	0x3
	.byte	0x25
	.long	0x6f
	.uleb128 0x44
	.long	.LASF714
	.byte	0x3
	.byte	0x25
	.long	0x4648
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x428
	.uleb128 0x30
	.long	0x468a
	.long	.LASF715
	.byte	0x1
	.value	0x626
	.byte	0x1
	.quad	.LFB309
	.quad	.LFE309
	.byte	0x1
	.byte	0x57
	.uleb128 0x2a
	.string	"fd"
	.byte	0x1
	.value	0x625
	.long	0x3f
	.byte	0x1
	.byte	0x5c
	.uleb128 0x2d
	.string	"act"
	.byte	0x1
	.value	0x627
	.long	0x248c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x2f
	.long	0x46f2
	.long	.LASF716
	.byte	0x1
	.value	0x634
	.byte	0x1
	.long	0x3f
	.quad	.LFB310
	.quad	.LFE310
	.byte	0x1
	.byte	0x57
	.uleb128 0x2a
	.string	"t"
	.byte	0x1
	.value	0x633
	.long	0x2e61
	.byte	0x1
	.byte	0x56
	.uleb128 0x2c
	.long	.LASF717
	.byte	0x1
	.value	0x635
	.long	0x2d20
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.string	"r"
	.byte	0x1
	.value	0x636
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x2d
	.string	"fd"
	.byte	0x1
	.value	0x636
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.uleb128 0x2e
	.long	.LASF719
	.byte	0x1
	.value	0x658
	.quad	.L267
	.byte	0x0
	.uleb128 0x30
	.long	0x4729
	.long	.LASF720
	.byte	0x1
	.value	0x65e
	.byte	0x1
	.quad	.LFB311
	.quad	.LFE311
	.byte	0x1
	.byte	0x57
	.uleb128 0x2a
	.string	"t"
	.byte	0x1
	.value	0x65d
	.long	0x2e61
	.byte	0x1
	.byte	0x55
	.uleb128 0x32
	.string	"fd"
	.byte	0x1
	.value	0x65f
	.long	0x3f
	.byte	0x0
	.uleb128 0x2f
	.long	0x4777
	.long	.LASF721
	.byte	0x1
	.value	0x665
	.byte	0x1
	.long	0x3f
	.quad	.LFB312
	.quad	.LFE312
	.byte	0x1
	.byte	0x57
	.uleb128 0x2a
	.string	"t"
	.byte	0x1
	.value	0x664
	.long	0x2e61
	.byte	0x1
	.byte	0x56
	.uleb128 0x2c
	.long	.LASF722
	.byte	0x1
	.value	0x666
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.uleb128 0x2e
	.long	.LASF719
	.byte	0x1
	.value	0x672
	.quad	.L280
	.byte	0x0
	.uleb128 0x30
	.long	0x47af
	.long	.LASF723
	.byte	0x1
	.value	0x67f
	.byte	0x1
	.quad	.LFB313
	.quad	.LFE313
	.byte	0x1
	.byte	0x57
	.uleb128 0x2a
	.string	"t"
	.byte	0x1
	.value	0x67e
	.long	0x2e61
	.byte	0x1
	.byte	0x55
	.uleb128 0x34
	.long	.LASF722
	.byte	0x1
	.value	0x680
	.long	0x3f
	.byte	0x0
	.uleb128 0x2f
	.long	0x480c
	.long	.LASF724
	.byte	0x1
	.value	0x686
	.byte	0x1
	.long	0x3f
	.quad	.LFB314
	.quad	.LFE314
	.byte	0x1
	.byte	0x57
	.uleb128 0x2a
	.string	"t"
	.byte	0x1
	.value	0x685
	.long	0x2e61
	.byte	0x1
	.byte	0x56
	.uleb128 0x2d
	.string	"ev"
	.byte	0x1
	.value	0x687
	.long	0x23e5
	.byte	0x3
	.byte	0x91
	.sleb128 176
	.uleb128 0x2c
	.long	.LASF725
	.byte	0x1
	.value	0x688
	.long	0x13d
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2d
	.string	"act"
	.byte	0x1
	.value	0x689
	.long	0x248c
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.byte	0x0
	.uleb128 0x30
	.long	0x4846
	.long	.LASF726
	.byte	0x1
	.value	0x6a4
	.byte	0x1
	.quad	.LFB315
	.quad	.LFE315
	.byte	0x1
	.byte	0x57
	.uleb128 0x2a
	.string	"t"
	.byte	0x1
	.value	0x6a3
	.long	0x2e61
	.byte	0x1
	.byte	0x55
	.uleb128 0x2c
	.long	.LASF725
	.byte	0x1
	.value	0x6a5
	.long	0x13d
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x30
	.long	0x48e1
	.long	.LASF727
	.byte	0x1
	.value	0x6ab
	.byte	0x1
	.quad	.LFB316
	.quad	.LFE316
	.byte	0x1
	.byte	0x57
	.uleb128 0x2a
	.string	"t"
	.byte	0x1
	.value	0x6aa
	.long	0x2e61
	.byte	0x1
	.byte	0x55
	.uleb128 0x2c
	.long	.LASF725
	.byte	0x1
	.value	0x6ac
	.long	0x13d
	.byte	0x1
	.byte	0x5c
	.uleb128 0x2c
	.long	.LASF543
	.byte	0x1
	.value	0x6ad
	.long	0x5ca
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.long	.LASF728
	.byte	0x1
	.value	0x6ae
	.long	0x153
	.uleb128 0x2c
	.long	.LASF729
	.byte	0x1
	.value	0x6af
	.long	0x153
	.byte	0x1
	.byte	0x52
	.uleb128 0x38
	.long	0x48e1
	.quad	.LBB22
	.quad	.LBE22
	.uleb128 0x39
	.long	0x48f3
	.byte	0x1
	.byte	0x56
	.uleb128 0x39
	.long	0x48ff
	.byte	0x1
	.byte	0x51
	.uleb128 0x37
	.long	.Ldebug_ranges0+0x60
	.uleb128 0x39
	.long	0x48f3
	.byte	0x1
	.byte	0x56
	.uleb128 0x39
	.long	0x48ff
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3b
	.long	0x490c
	.long	.LASF730
	.byte	0x1
	.value	0x608
	.byte	0x1
	.long	0x519
	.byte	0x1
	.uleb128 0x34
	.long	.LASF728
	.byte	0x1
	.value	0x609
	.long	0x153
	.uleb128 0x34
	.long	.LASF731
	.byte	0x1
	.value	0x60a
	.long	0x153
	.byte	0x0
	.uleb128 0x2f
	.long	0x4968
	.long	.LASF732
	.byte	0x1
	.value	0x6cf
	.byte	0x1
	.long	0x3f
	.quad	.LFB317
	.quad	.LFE317
	.byte	0x1
	.byte	0x57
	.uleb128 0x2a
	.string	"t"
	.byte	0x1
	.value	0x6ce
	.long	0x2e61
	.byte	0x1
	.byte	0x55
	.uleb128 0x2d
	.string	"act"
	.byte	0x1
	.value	0x6d0
	.long	0x248c
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x2d
	.string	"itv"
	.byte	0x1
	.value	0x6d1
	.long	0x24db
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.string	"err"
	.byte	0x1
	.value	0x6d2
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x30
	.long	0x49a3
	.long	.LASF733
	.byte	0x1
	.value	0x6e9
	.byte	0x1
	.quad	.LFB318
	.quad	.LFE318
	.byte	0x1
	.byte	0x57
	.uleb128 0x2a
	.string	"t"
	.byte	0x1
	.value	0x6e8
	.long	0x2e61
	.byte	0x1
	.byte	0x55
	.uleb128 0x2d
	.string	"itv"
	.byte	0x1
	.value	0x6ea
	.long	0x24db
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x30
	.long	0x49dd
	.long	.LASF734
	.byte	0x1
	.value	0x76a
	.byte	0x1
	.quad	.LFB321
	.quad	.LFE321
	.byte	0x1
	.byte	0x57
	.uleb128 0x2a
	.string	"s"
	.byte	0x1
	.value	0x769
	.long	0x2f75
	.byte	0x1
	.byte	0x55
	.uleb128 0x2b
	.long	.LASF735
	.byte	0x1
	.value	0x769
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0x29
	.long	0x4a2a
	.byte	0x1
	.long	.LASF736
	.byte	0x1
	.value	0x1ec7
	.byte	0x1
	.long	0x1d2b
	.quad	.LFB497
	.quad	.LFE497
	.byte	0x1
	.byte	0x57
	.uleb128 0x2a
	.string	"cb"
	.byte	0x1
	.value	0x1ec6
	.long	0x34a7
	.byte	0x1
	.byte	0x53
	.uleb128 0x2b
	.long	.LASF227
	.byte	0x1
	.value	0x1ec6
	.long	0x109
	.byte	0x1
	.byte	0x56
	.uleb128 0x2d
	.string	"bh"
	.byte	0x1
	.value	0x1ec8
	.long	0x1d2b
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x31
	.long	0x4a66
	.byte	0x1
	.long	.LASF737
	.byte	0x1
	.value	0x1ee5
	.byte	0x1
	.quad	.LFB499
	.quad	.LFE499
	.byte	0x1
	.byte	0x57
	.uleb128 0x2a
	.string	"bh"
	.byte	0x1
	.value	0x1ee4
	.long	0x1d2b
	.byte	0x1
	.byte	0x55
	.uleb128 0x2d
	.string	"env"
	.byte	0x1
	.value	0x1ee6
	.long	0x2085
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x31
	.long	0x4a93
	.byte	0x1
	.long	.LASF738
	.byte	0x1
	.value	0x779
	.byte	0x1
	.quad	.LFB323
	.quad	.LFE323
	.byte	0x1
	.byte	0x57
	.uleb128 0x2a
	.string	"s"
	.byte	0x1
	.value	0x778
	.long	0x2f75
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x29
	.long	0x4ae0
	.byte	0x1
	.long	.LASF739
	.byte	0x1
	.value	0x781
	.byte	0x1
	.long	0x3f
	.quad	.LFB324
	.quad	.LFE324
	.byte	0x1
	.byte	0x57
	.uleb128 0x2a
	.string	"s"
	.byte	0x1
	.value	0x780
	.long	0x2f75
	.byte	0x1
	.byte	0x50
	.uleb128 0x2a
	.string	"buf"
	.byte	0x1
	.value	0x780
	.long	0x1362
	.byte	0x1
	.byte	0x54
	.uleb128 0x2a
	.string	"len"
	.byte	0x1
	.value	0x780
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x29
	.long	0x4b2d
	.byte	0x1
	.long	.LASF740
	.byte	0x1
	.value	0x786
	.byte	0x1
	.long	0x3f
	.quad	.LFB325
	.quad	.LFE325
	.byte	0x1
	.byte	0x57
	.uleb128 0x2a
	.string	"s"
	.byte	0x1
	.value	0x785
	.long	0x2f75
	.byte	0x1
	.byte	0x55
	.uleb128 0x2a
	.string	"cmd"
	.byte	0x1
	.value	0x785
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x2a
	.string	"arg"
	.byte	0x1
	.value	0x785
	.long	0x109
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x29
	.long	0x4b5e
	.byte	0x1
	.long	.LASF741
	.byte	0x1
	.value	0x78d
	.byte	0x1
	.long	0x3f
	.quad	.LFB326
	.quad	.LFE326
	.byte	0x1
	.byte	0x57
	.uleb128 0x2a
	.string	"s"
	.byte	0x1
	.value	0x78c
	.long	0x2f75
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x31
	.long	0x4ba7
	.byte	0x1
	.long	.LASF742
	.byte	0x1
	.value	0x794
	.byte	0x1
	.quad	.LFB327
	.quad	.LFE327
	.byte	0x1
	.byte	0x57
	.uleb128 0x2a
	.string	"s"
	.byte	0x1
	.value	0x793
	.long	0x2f75
	.byte	0x1
	.byte	0x50
	.uleb128 0x2a
	.string	"buf"
	.byte	0x1
	.value	0x793
	.long	0x1ad4
	.byte	0x1
	.byte	0x54
	.uleb128 0x2a
	.string	"len"
	.byte	0x1
	.value	0x793
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x31
	.long	0x4bd4
	.byte	0x1
	.long	.LASF743
	.byte	0x1
	.value	0x799
	.byte	0x1
	.quad	.LFB328
	.quad	.LFE328
	.byte	0x1
	.byte	0x57
	.uleb128 0x2a
	.string	"s"
	.byte	0x1
	.value	0x798
	.long	0x2f75
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x31
	.long	0x4c2d
	.byte	0x1
	.long	.LASF744
	.byte	0x1
	.value	0x79f
	.byte	0x1
	.quad	.LFB329
	.quad	.LFE329
	.byte	0x1
	.byte	0x57
	.uleb128 0x2a
	.string	"s"
	.byte	0x1
	.value	0x79e
	.long	0x2f75
	.byte	0x1
	.byte	0x56
	.uleb128 0x2a
	.string	"fmt"
	.byte	0x1
	.value	0x79e
	.long	0x6f
	.byte	0x1
	.byte	0x54
	.uleb128 0x33
	.uleb128 0x2d
	.string	"buf"
	.byte	0x1
	.value	0x7a0
	.long	0x4c2d
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x2d
	.string	"ap"
	.byte	0x1
	.value	0x7a1
	.long	0x4ed
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x7
	.long	0x4c3e
	.long	0x7a
	.uleb128 0x1a
	.long	0x61
	.value	0xfff
	.byte	0x0
	.uleb128 0x31
	.long	0x4c79
	.byte	0x1
	.long	.LASF745
	.byte	0x1
	.value	0x7a9
	.byte	0x1
	.quad	.LFB330
	.quad	.LFE330
	.byte	0x1
	.byte	0x57
	.uleb128 0x2a
	.string	"s"
	.byte	0x1
	.value	0x7a8
	.long	0x2f75
	.byte	0x1
	.byte	0x55
	.uleb128 0x2b
	.long	.LASF735
	.byte	0x1
	.value	0x7a8
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0x31
	.long	0x4cde
	.byte	0x1
	.long	.LASF746
	.byte	0x1
	.value	0x7b3
	.byte	0x1
	.quad	.LFB331
	.quad	.LFE331
	.byte	0x1
	.byte	0x57
	.uleb128 0x2a
	.string	"s"
	.byte	0x1
	.value	0x7ae
	.long	0x2f75
	.byte	0x1
	.byte	0x55
	.uleb128 0x2b
	.long	.LASF364
	.byte	0x1
	.value	0x7af
	.long	0x1c10
	.byte	0x1
	.byte	0x54
	.uleb128 0x2b
	.long	.LASF363
	.byte	0x1
	.value	0x7b0
	.long	0x1c0a
	.byte	0x1
	.byte	0x51
	.uleb128 0x2b
	.long	.LASF747
	.byte	0x1
	.value	0x7b1
	.long	0x1d0e
	.byte	0x1
	.byte	0x52
	.uleb128 0x2b
	.long	.LASF227
	.byte	0x1
	.value	0x7b2
	.long	0x109
	.byte	0x1
	.byte	0x58
	.byte	0x0
	.uleb128 0x2f
	.long	0x4d2c
	.long	.LASF748
	.byte	0x1
	.value	0x7bd
	.byte	0x1
	.long	0x3f
	.quad	.LFB332
	.quad	.LFE332
	.byte	0x1
	.byte	0x57
	.uleb128 0x2a
	.string	"chr"
	.byte	0x1
	.value	0x7bc
	.long	0x2f75
	.byte	0x1
	.byte	0x55
	.uleb128 0x2a
	.string	"buf"
	.byte	0x1
	.value	0x7bc
	.long	0x1362
	.byte	0x1
	.byte	0x54
	.uleb128 0x2a
	.string	"len"
	.byte	0x1
	.value	0x7bc
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x2f
	.long	0x4dd6
	.long	.LASF749
	.byte	0x1
	.value	0x7e2
	.byte	0x1
	.long	0x3f
	.quad	.LFB334
	.quad	.LFE334
	.byte	0x1
	.byte	0x57
	.uleb128 0x2a
	.string	"chr"
	.byte	0x1
	.value	0x7e1
	.long	0x2f75
	.byte	0x1
	.byte	0x55
	.uleb128 0x2a
	.string	"buf"
	.byte	0x1
	.value	0x7e1
	.long	0x1362
	.byte	0x1
	.byte	0x54
	.uleb128 0x2a
	.string	"len"
	.byte	0x1
	.value	0x7e1
	.long	0x3f
	.byte	0x1
	.byte	0x5e
	.uleb128 0x2d
	.string	"d"
	.byte	0x1
	.value	0x7e3
	.long	0x4dd6
	.byte	0x1
	.byte	0x5d
	.uleb128 0x2d
	.string	"ret"
	.byte	0x1
	.value	0x7e4
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.uleb128 0x37
	.long	.Ldebug_ranges0+0xa0
	.uleb128 0x2d
	.string	"i"
	.byte	0x1
	.value	0x7e8
	.long	0x3f
	.byte	0x1
	.byte	0x5c
	.uleb128 0x37
	.long	.Ldebug_ranges0+0xd0
	.uleb128 0x2c
	.long	.LASF750
	.byte	0x1
	.value	0x7ee
	.long	0x4ddc
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2d
	.string	"ti"
	.byte	0x1
	.value	0x7ef
	.long	0x153
	.byte	0x1
	.byte	0x5a
	.uleb128 0x2c
	.long	.LASF751
	.byte	0x1
	.value	0x7f0
	.long	0x3f
	.byte	0x1
	.byte	0x5b
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x2f8b
	.uleb128 0x7
	.long	0x4dec
	.long	0x7a
	.uleb128 0x8
	.long	0x61
	.byte	0x3f
	.byte	0x0
	.uleb128 0x30
	.long	0x4e30
	.long	.LASF752
	.byte	0x1
	.value	0x85a
	.byte	0x1
	.quad	.LFB337
	.quad	.LFE337
	.byte	0x1
	.byte	0x57
	.uleb128 0x2a
	.string	"chr"
	.byte	0x1
	.value	0x859
	.long	0x2f75
	.byte	0x1
	.byte	0x55
	.uleb128 0x32
	.string	"m"
	.byte	0x1
	.value	0x85b
	.long	0x3f
	.uleb128 0x2d
	.string	"d"
	.byte	0x1
	.value	0x85c
	.long	0x4dd6
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x2f
	.long	0x4e7c
	.long	.LASF753
	.byte	0x1
	.value	0x867
	.byte	0x1
	.long	0x3f
	.quad	.LFB338
	.quad	.LFE338
	.byte	0x1
	.byte	0x57
	.uleb128 0x2b
	.long	.LASF227
	.byte	0x1
	.value	0x866
	.long	0x109
	.byte	0x1
	.byte	0x55
	.uleb128 0x2d
	.string	"chr"
	.byte	0x1
	.value	0x868
	.long	0x2f75
	.byte	0x1
	.byte	0x55
	.uleb128 0x2d
	.string	"d"
	.byte	0x1
	.value	0x869
	.long	0x4dd6
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x30
	.long	0x4fb0
	.long	.LASF754
	.byte	0x1
	.value	0x873
	.byte	0x1
	.quad	.LFB339
	.quad	.LFE339
	.byte	0x1
	.byte	0x57
	.uleb128 0x2b
	.long	.LASF227
	.byte	0x1
	.value	0x872
	.long	0x109
	.byte	0x1
	.byte	0x56
	.uleb128 0x2a
	.string	"buf"
	.byte	0x1
	.value	0x872
	.long	0x1362
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x2b
	.long	.LASF245
	.byte	0x1
	.value	0x872
	.long	0x3f
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x32
	.string	"chr"
	.byte	0x1
	.value	0x874
	.long	0x2f75
	.uleb128 0x2d
	.string	"d"
	.byte	0x1
	.value	0x875
	.long	0x4dd6
	.byte	0x1
	.byte	0x5c
	.uleb128 0x2d
	.string	"m"
	.byte	0x1
	.value	0x876
	.long	0x3f
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2d
	.string	"i"
	.byte	0x1
	.value	0x877
	.long	0x3f
	.byte	0x1
	.byte	0x5f
	.uleb128 0x3e
	.long	0x4f36
	.long	0x4fb0
	.quad	.LBB33
	.quad	.LBE33
	.uleb128 0x3f
	.long	0x4fc2
	.uleb128 0x3f
	.long	0x4fce
	.uleb128 0x40
	.long	0x4fd8
	.byte	0x1
	.byte	0x50
	.uleb128 0x37
	.long	.Ldebug_ranges0+0x110
	.uleb128 0x45
	.long	0x4fe3
	.quad	.L375
	.byte	0x0
	.byte	0x0
	.uleb128 0x3e
	.long	0x4f7b
	.long	0x500a
	.quad	.LBB45
	.quad	.LBE45
	.uleb128 0x3f
	.long	0x5018
	.uleb128 0x37
	.long	.Ldebug_ranges0+0x1a0
	.uleb128 0x39
	.long	0x5024
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x39
	.long	0x502e
	.byte	0x1
	.byte	0x53
	.uleb128 0x39
	.long	0x5038
	.byte	0x3
	.byte	0x91
	.sleb128 96
	.uleb128 0x39
	.long	0x5044
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
	.long	0x4f98
	.quad	.LBB49
	.quad	.LBE49
	.uleb128 0x39
	.long	0x4ffe
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x3a
	.quad	.LBB52
	.quad	.LBE52
	.uleb128 0x46
	.long	0x4ff0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3b
	.long	0x500a
	.long	.LASF755
	.byte	0x1
	.value	0x829
	.byte	0x1
	.long	0x3f
	.byte	0x1
	.uleb128 0x41
	.string	"chr"
	.byte	0x1
	.value	0x828
	.long	0x2f75
	.uleb128 0x41
	.string	"d"
	.byte	0x1
	.value	0x828
	.long	0x4dd6
	.uleb128 0x41
	.string	"ch"
	.byte	0x1
	.value	0x828
	.long	0x3f
	.uleb128 0x47
	.long	.LASF756
	.byte	0x1
	.value	0x853
	.uleb128 0x48
	.long	0x4ffd
	.uleb128 0x34
	.long	.LASF757
	.byte	0x1
	.value	0x835
	.long	0x116
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x32
	.string	"i"
	.byte	0x1
	.value	0x83c
	.long	0x3f
	.byte	0x0
	.byte	0x0
	.uleb128 0x4a
	.long	0x5051
	.long	.LASF758
	.byte	0x1
	.value	0x811
	.byte	0x1
	.byte	0x1
	.uleb128 0x41
	.string	"chr"
	.byte	0x1
	.value	0x810
	.long	0x2f75
	.uleb128 0x32
	.string	"i"
	.byte	0x1
	.value	0x812
	.long	0x3f
	.uleb128 0x32
	.string	"j"
	.byte	0x1
	.value	0x812
	.long	0x3f
	.uleb128 0x34
	.long	.LASF759
	.byte	0x1
	.value	0x813
	.long	0x5051
	.uleb128 0x34
	.long	.LASF760
	.byte	0x1
	.value	0x814
	.long	0x5061
	.byte	0x0
	.uleb128 0x7
	.long	0x5061
	.long	0x7a
	.uleb128 0x8
	.long	0x61
	.byte	0xe
	.byte	0x0
	.uleb128 0x7
	.long	0x5071
	.long	0x7a
	.uleb128 0x8
	.long	0x61
	.byte	0x31
	.byte	0x0
	.uleb128 0x30
	.long	0x50d1
	.long	.LASF761
	.byte	0x1
	.value	0x887
	.byte	0x1
	.quad	.LFB340
	.quad	.LFE340
	.byte	0x1
	.byte	0x57
	.uleb128 0x2b
	.long	.LASF227
	.byte	0x1
	.value	0x886
	.long	0x109
	.byte	0x1
	.byte	0x55
	.uleb128 0x2b
	.long	.LASF735
	.byte	0x1
	.value	0x886
	.long	0x3f
	.byte	0x1
	.byte	0x5c
	.uleb128 0x32
	.string	"chr"
	.byte	0x1
	.value	0x888
	.long	0x2f75
	.uleb128 0x2d
	.string	"d"
	.byte	0x1
	.value	0x889
	.long	0x4dd6
	.byte	0x1
	.byte	0x56
	.uleb128 0x2d
	.string	"i"
	.byte	0x1
	.value	0x88a
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x30
	.long	0x510b
	.long	.LASF762
	.byte	0x1
	.value	0x893
	.byte	0x1
	.quad	.LFB341
	.quad	.LFE341
	.byte	0x1
	.byte	0x57
	.uleb128 0x2a
	.string	"chr"
	.byte	0x1
	.value	0x892
	.long	0x2f75
	.byte	0x1
	.byte	0x56
	.uleb128 0x2d
	.string	"d"
	.byte	0x1
	.value	0x894
	.long	0x4dd6
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x2f
	.long	0x5174
	.long	.LASF763
	.byte	0x1
	.value	0x8fb
	.byte	0x1
	.long	0x3f
	.quad	.LFB343
	.quad	.LFE343
	.byte	0x1
	.byte	0x57
	.uleb128 0x2a
	.string	"fd"
	.byte	0x1
	.value	0x8fa
	.long	0x3f
	.byte	0x1
	.byte	0x5d
	.uleb128 0x2a
	.string	"buf"
	.byte	0x1
	.value	0x8fa
	.long	0x1362
	.byte	0x1
	.byte	0x56
	.uleb128 0x2b
	.long	.LASF764
	.byte	0x1
	.value	0x8fa
	.long	0x3f
	.byte	0x1
	.byte	0x5c
	.uleb128 0x2d
	.string	"ret"
	.byte	0x1
	.value	0x8fc
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x2d
	.string	"len"
	.byte	0x1
	.value	0x8fc
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x2f
	.long	0x51ce
	.long	.LASF765
	.byte	0x1
	.value	0x928
	.byte	0x1
	.long	0x3f
	.quad	.LFB347
	.quad	.LFE347
	.byte	0x1
	.byte	0x57
	.uleb128 0x2a
	.string	"chr"
	.byte	0x1
	.value	0x927
	.long	0x2f75
	.byte	0x1
	.byte	0x55
	.uleb128 0x2a
	.string	"buf"
	.byte	0x1
	.value	0x927
	.long	0x1362
	.byte	0x1
	.byte	0x54
	.uleb128 0x2a
	.string	"len"
	.byte	0x1
	.value	0x927
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x2d
	.string	"s"
	.byte	0x1
	.value	0x929
	.long	0x51ce
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x2fce
	.uleb128 0x2f
	.long	0x521e
	.long	.LASF766
	.byte	0x1
	.value	0x92e
	.byte	0x1
	.long	0x3f
	.quad	.LFB348
	.quad	.LFE348
	.byte	0x1
	.byte	0x57
	.uleb128 0x2b
	.long	.LASF227
	.byte	0x1
	.value	0x92d
	.long	0x109
	.byte	0x1
	.byte	0x55
	.uleb128 0x32
	.string	"chr"
	.byte	0x1
	.value	0x92f
	.long	0x2f75
	.uleb128 0x2d
	.string	"s"
	.byte	0x1
	.value	0x930
	.long	0x51ce
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x30
	.long	0x528f
	.long	.LASF767
	.byte	0x1
	.value	0x937
	.byte	0x1
	.quad	.LFB349
	.quad	.LFE349
	.byte	0x1
	.byte	0x57
	.uleb128 0x2b
	.long	.LASF227
	.byte	0x1
	.value	0x936
	.long	0x109
	.byte	0x1
	.byte	0x55
	.uleb128 0x2d
	.string	"chr"
	.byte	0x1
	.value	0x938
	.long	0x2f75
	.byte	0x1
	.byte	0x56
	.uleb128 0x2d
	.string	"s"
	.byte	0x1
	.value	0x939
	.long	0x51ce
	.byte	0x1
	.byte	0x53
	.uleb128 0x34
	.long	.LASF245
	.byte	0x1
	.value	0x93a
	.long	0x3f
	.uleb128 0x2d
	.string	"len"
	.byte	0x1
	.value	0x93a
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x2d
	.string	"buf"
	.byte	0x1
	.value	0x93b
	.long	0x1ae0
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x30
	.long	0x52c9
	.long	.LASF768
	.byte	0x1
	.value	0x94e
	.byte	0x1
	.quad	.LFB350
	.quad	.LFE350
	.byte	0x1
	.byte	0x57
	.uleb128 0x2a
	.string	"chr"
	.byte	0x1
	.value	0x94d
	.long	0x2f75
	.byte	0x1
	.byte	0x51
	.uleb128 0x2d
	.string	"s"
	.byte	0x1
	.value	0x94f
	.long	0x51ce
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x2f
	.long	0x5323
	.long	.LASF769
	.byte	0x1
	.value	0x95c
	.byte	0x1
	.long	0x2f75
	.quad	.LFB351
	.quad	.LFE351
	.byte	0x1
	.byte	0x57
	.uleb128 0x2b
	.long	.LASF594
	.byte	0x1
	.value	0x95b
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.uleb128 0x2b
	.long	.LASF595
	.byte	0x1
	.value	0x95b
	.long	0x3f
	.byte	0x1
	.byte	0x5c
	.uleb128 0x2d
	.string	"chr"
	.byte	0x1
	.value	0x95d
	.long	0x2f75
	.byte	0x1
	.byte	0x53
	.uleb128 0x2d
	.string	"s"
	.byte	0x1
	.value	0x95e
	.long	0x51ce
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x2f
	.long	0x5361
	.long	.LASF770
	.byte	0x1
	.value	0x99c
	.byte	0x1
	.long	0x3f
	.quad	.LFB354
	.quad	.LFE354
	.byte	0x1
	.byte	0x57
	.uleb128 0x2b
	.long	.LASF227
	.byte	0x1
	.value	0x99b
	.long	0x109
	.byte	0x1
	.byte	0x53
	.uleb128 0x32
	.string	"chr"
	.byte	0x1
	.value	0x99d
	.long	0x2f75
	.byte	0x0
	.uleb128 0x30
	.long	0x53b8
	.long	.LASF771
	.byte	0x1
	.value	0x9ac
	.byte	0x1
	.quad	.LFB355
	.quad	.LFE355
	.byte	0x1
	.byte	0x57
	.uleb128 0x2b
	.long	.LASF227
	.byte	0x1
	.value	0x9ab
	.long	0x109
	.byte	0x1
	.byte	0x55
	.uleb128 0x34
	.long	.LASF245
	.byte	0x1
	.value	0x9ad
	.long	0x3f
	.uleb128 0x2d
	.string	"buf"
	.byte	0x1
	.value	0x9ae
	.long	0x53b8
	.byte	0x2
	.byte	0x91
	.sleb128 15
	.uleb128 0x2d
	.string	"chr"
	.byte	0x1
	.value	0x9af
	.long	0x2f75
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x7
	.long	0x53c8
	.long	0x4f8
	.uleb128 0x8
	.long	0x61
	.byte	0x0
	.byte	0x0
	.uleb128 0x4b
	.long	.LASF1066
	.byte	0x1
	.value	0x9c5
	.byte	0x1
	.quad	.LFB356
	.quad	.LFE356
	.byte	0x1
	.byte	0x57
	.uleb128 0x30
	.long	0x5466
	.long	.LASF772
	.byte	0x1
	.value	0xa0e
	.byte	0x1
	.quad	.LFB360
	.quad	.LFE360
	.byte	0x1
	.byte	0x57
	.uleb128 0x2a
	.string	"fd"
	.byte	0x1
	.value	0xa0c
	.long	0x3f
	.byte	0x1
	.byte	0x5f
	.uleb128 0x2b
	.long	.LASF335
	.byte	0x1
	.value	0xa0c
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.uleb128 0x2b
	.long	.LASF366
	.byte	0x1
	.value	0xa0d
	.long	0x3f
	.byte	0x1
	.byte	0x5e
	.uleb128 0x2b
	.long	.LASF367
	.byte	0x1
	.value	0xa0d
	.long	0x3f
	.byte	0x1
	.byte	0x5c
	.uleb128 0x2b
	.long	.LASF368
	.byte	0x1
	.value	0xa0d
	.long	0x3f
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2d
	.string	"tty"
	.byte	0x1
	.value	0xa0f
	.long	0x26b2
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2d
	.string	"spd"
	.byte	0x1
	.value	0xa10
	.long	0x269c
	.byte	0x1
	.byte	0x56
	.byte	0x0
	.uleb128 0x2f
	.long	0x54f4
	.long	.LASF773
	.byte	0x1
	.value	0xa69
	.byte	0x1
	.long	0x3f
	.quad	.LFB361
	.quad	.LFE361
	.byte	0x1
	.byte	0x57
	.uleb128 0x2a
	.string	"chr"
	.byte	0x1
	.value	0xa68
	.long	0x2f75
	.byte	0x1
	.byte	0x55
	.uleb128 0x2a
	.string	"cmd"
	.byte	0x1
	.value	0xa68
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x2a
	.string	"arg"
	.byte	0x1
	.value	0xa68
	.long	0x109
	.byte	0x1
	.byte	0x50
	.uleb128 0x2d
	.string	"s"
	.byte	0x1
	.value	0xa6a
	.long	0x51ce
	.byte	0x1
	.byte	0x55
	.uleb128 0x4c
	.long	0x54d5
	.long	.Ldebug_ranges0+0x1d0
	.uleb128 0x34
	.long	.LASF774
	.byte	0x1
	.value	0xa76
	.long	0x3f
	.byte	0x0
	.uleb128 0x3a
	.quad	.LBB57
	.quad	.LBE57
	.uleb128 0x32
	.string	"ssp"
	.byte	0x1
	.value	0xa6f
	.long	0x54f4
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x1c8f
	.uleb128 0x2f
	.long	0x5557
	.long	.LASF775
	.byte	0x1
	.value	0xaa0
	.byte	0x1
	.long	0x3f
	.quad	.LFB363
	.quad	.LFE363
	.byte	0x1
	.byte	0x57
	.uleb128 0x2a
	.string	"s"
	.byte	0x1
	.value	0xa9f
	.long	0x5557
	.byte	0x1
	.byte	0x56
	.uleb128 0x2b
	.long	.LASF597
	.byte	0x1
	.value	0xa9f
	.long	0x503
	.byte	0x1
	.byte	0x54
	.uleb128 0x3a
	.quad	.LBB58
	.quad	.LBE58
	.uleb128 0x2d
	.string	"m"
	.byte	0x1
	.value	0xaa2
	.long	0x3f
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x3001
	.uleb128 0x2f
	.long	0x561b
	.long	.LASF776
	.byte	0x1
	.value	0xaab
	.byte	0x1
	.long	0x3f
	.quad	.LFB364
	.quad	.LFE364
	.byte	0x1
	.byte	0x57
	.uleb128 0x2a
	.string	"chr"
	.byte	0x1
	.value	0xaaa
	.long	0x2f75
	.byte	0x1
	.byte	0x55
	.uleb128 0x2a
	.string	"cmd"
	.byte	0x1
	.value	0xaaa
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x2a
	.string	"arg"
	.byte	0x1
	.value	0xaaa
	.long	0x109
	.byte	0x1
	.byte	0x53
	.uleb128 0x2d
	.string	"drv"
	.byte	0x1
	.value	0xaac
	.long	0x5557
	.byte	0x1
	.byte	0x55
	.uleb128 0x2d
	.string	"fd"
	.byte	0x1
	.value	0xaad
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.uleb128 0x2d
	.string	"b"
	.byte	0x1
	.value	0xaae
	.long	0x4f8
	.byte	0x2
	.byte	0x91
	.sleb128 7
	.uleb128 0x4c
	.long	0x55f2
	.long	.Ldebug_ranges0+0x200
	.uleb128 0x34
	.long	.LASF777
	.byte	0x1
	.value	0xaea
	.long	0x561b
	.uleb128 0x32
	.string	"n"
	.byte	0x1
	.value	0xaeb
	.long	0x3f
	.byte	0x0
	.uleb128 0x3a
	.quad	.LBB60
	.quad	.LBE60
	.uleb128 0x34
	.long	.LASF777
	.byte	0x1
	.value	0xad8
	.long	0x561b
	.uleb128 0x32
	.string	"n"
	.byte	0x1
	.value	0xad9
	.long	0x3f
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x1383
	.uleb128 0x30
	.long	0x566a
	.long	.LASF778
	.byte	0x1
	.value	0xaf8
	.byte	0x1
	.quad	.LFB365
	.quad	.LFE365
	.byte	0x1
	.byte	0x57
	.uleb128 0x2a
	.string	"chr"
	.byte	0x1
	.value	0xaf7
	.long	0x2f75
	.byte	0x1
	.byte	0x55
	.uleb128 0x2d
	.string	"drv"
	.byte	0x1
	.value	0xaf9
	.long	0x5557
	.byte	0x1
	.byte	0x53
	.uleb128 0x2d
	.string	"fd"
	.byte	0x1
	.value	0xafa
	.long	0x3f
	.byte	0x1
	.byte	0x5c
	.byte	0x0
	.uleb128 0x2f
	.long	0x56c4
	.long	.LASF779
	.byte	0x1
	.value	0xca8
	.byte	0x1
	.long	0x3f
	.quad	.LFB367
	.quad	.LFE367
	.byte	0x1
	.byte	0x57
	.uleb128 0x2a
	.string	"chr"
	.byte	0x1
	.value	0xca7
	.long	0x2f75
	.byte	0x1
	.byte	0x55
	.uleb128 0x2a
	.string	"buf"
	.byte	0x1
	.value	0xca7
	.long	0x1362
	.byte	0x1
	.byte	0x54
	.uleb128 0x2a
	.string	"len"
	.byte	0x1
	.value	0xca7
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x2d
	.string	"s"
	.byte	0x1
	.value	0xca9
	.long	0x56c4
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x3074
	.uleb128 0x2f
	.long	0x5716
	.long	.LASF780
	.byte	0x1
	.value	0xcb0
	.byte	0x1
	.long	0x3f
	.quad	.LFB368
	.quad	.LFE368
	.byte	0x1
	.byte	0x57
	.uleb128 0x2b
	.long	.LASF227
	.byte	0x1
	.value	0xcaf
	.long	0x109
	.byte	0x1
	.byte	0x55
	.uleb128 0x2d
	.string	"chr"
	.byte	0x1
	.value	0xcb1
	.long	0x2f75
	.byte	0x1
	.byte	0x56
	.uleb128 0x2d
	.string	"s"
	.byte	0x1
	.value	0xcb2
	.long	0x56c4
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x30
	.long	0x575e
	.long	.LASF781
	.byte	0x1
	.value	0xcc2
	.byte	0x1
	.quad	.LFB369
	.quad	.LFE369
	.byte	0x1
	.byte	0x57
	.uleb128 0x2b
	.long	.LASF227
	.byte	0x1
	.value	0xcc1
	.long	0x109
	.byte	0x1
	.byte	0x55
	.uleb128 0x2d
	.string	"chr"
	.byte	0x1
	.value	0xcc3
	.long	0x2f75
	.byte	0x1
	.byte	0x56
	.uleb128 0x2d
	.string	"s"
	.byte	0x1
	.value	0xcc4
	.long	0x56c4
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x30
	.long	0x5798
	.long	.LASF782
	.byte	0x1
	.value	0xcd6
	.byte	0x1
	.quad	.LFB370
	.quad	.LFE370
	.byte	0x1
	.byte	0x57
	.uleb128 0x2a
	.string	"chr"
	.byte	0x1
	.value	0xcd5
	.long	0x2f75
	.byte	0x1
	.byte	0x55
	.uleb128 0x2d
	.string	"s"
	.byte	0x1
	.value	0xcd7
	.long	0x56c4
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x2f
	.long	0x5819
	.long	.LASF783
	.byte	0x1
	.value	0xd27
	.byte	0x1
	.long	0x3f
	.quad	.LFB372
	.quad	.LFE372
	.byte	0x1
	.byte	0x57
	.uleb128 0x2a
	.string	"chr"
	.byte	0x1
	.value	0xd26
	.long	0x2f75
	.byte	0x1
	.byte	0x55
	.uleb128 0x2a
	.string	"buf"
	.byte	0x1
	.value	0xd26
	.long	0x1362
	.byte	0x1
	.byte	0x54
	.uleb128 0x2a
	.string	"len"
	.byte	0x1
	.value	0xd26
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x2d
	.string	"s"
	.byte	0x1
	.value	0xd28
	.long	0x5819
	.byte	0x1
	.byte	0x50
	.uleb128 0x38
	.long	0x581f
	.quad	.LBB62
	.quad	.LBE62
	.uleb128 0x40
	.long	0x5831
	.byte	0x1
	.byte	0x55
	.uleb128 0x3f
	.long	0x583c
	.uleb128 0x3f
	.long	0x5848
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x30f2
	.uleb128 0x3b
	.long	0x5855
	.long	.LASF784
	.byte	0x1
	.value	0x90f
	.byte	0x1
	.long	0x3f
	.byte	0x3
	.uleb128 0x41
	.string	"fd"
	.byte	0x1
	.value	0x90e
	.long	0x3f
	.uleb128 0x41
	.string	"buf"
	.byte	0x1
	.value	0x90e
	.long	0x1362
	.uleb128 0x42
	.long	.LASF764
	.byte	0x1
	.value	0x90e
	.long	0x3f
	.byte	0x0
	.uleb128 0x2f
	.long	0x58a1
	.long	.LASF785
	.byte	0x1
	.value	0xd32
	.byte	0x1
	.long	0x3f
	.quad	.LFB373
	.quad	.LFE373
	.byte	0x1
	.byte	0x57
	.uleb128 0x2b
	.long	.LASF227
	.byte	0x1
	.value	0xd31
	.long	0x109
	.byte	0x1
	.byte	0x55
	.uleb128 0x2d
	.string	"chr"
	.byte	0x1
	.value	0xd33
	.long	0x2f75
	.byte	0x1
	.byte	0x55
	.uleb128 0x2d
	.string	"s"
	.byte	0x1
	.value	0xd34
	.long	0x5819
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x30
	.long	0x5955
	.long	.LASF786
	.byte	0x1
	.value	0xd6e
	.byte	0x1
	.quad	.LFB375
	.quad	.LFE375
	.byte	0x1
	.byte	0x57
	.uleb128 0x2b
	.long	.LASF227
	.byte	0x1
	.value	0xd6d
	.long	0x109
	.byte	0x1
	.byte	0x55
	.uleb128 0x2d
	.string	"chr"
	.byte	0x1
	.value	0xd6f
	.long	0x2f75
	.byte	0x1
	.byte	0x5c
	.uleb128 0x2d
	.string	"s"
	.byte	0x1
	.value	0xd70
	.long	0x5819
	.byte	0x1
	.byte	0x53
	.uleb128 0x2d
	.string	"buf"
	.byte	0x1
	.value	0xd71
	.long	0x1ae0
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2d
	.string	"len"
	.byte	0x1
	.value	0xd72
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x2c
	.long	.LASF245
	.byte	0x1
	.value	0xd72
	.long	0x3f
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x38
	.long	0x5955
	.quad	.LBB64
	.quad	.LBE64
	.uleb128 0x3f
	.long	0x5963
	.uleb128 0x3f
	.long	0x596f
	.uleb128 0x3f
	.long	0x5979
	.uleb128 0x40
	.long	0x5985
	.byte	0x1
	.byte	0x5f
	.uleb128 0x37
	.long	.Ldebug_ranges0+0x230
	.uleb128 0x39
	.long	0x5991
	.byte	0x1
	.byte	0x56
	.uleb128 0x39
	.long	0x599b
	.byte	0x1
	.byte	0x5e
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x4a
	.long	0x59a6
	.long	.LASF787
	.byte	0x1
	.value	0xd40
	.byte	0x1
	.byte	0x1
	.uleb128 0x41
	.string	"chr"
	.byte	0x1
	.value	0xd3d
	.long	0x2f75
	.uleb128 0x41
	.string	"s"
	.byte	0x1
	.value	0xd3e
	.long	0x5819
	.uleb128 0x41
	.string	"buf"
	.byte	0x1
	.value	0xd3f
	.long	0x1ad4
	.uleb128 0x42
	.long	.LASF245
	.byte	0x1
	.value	0xd3f
	.long	0x4d
	.uleb128 0x32
	.string	"i"
	.byte	0x1
	.value	0xd4a
	.long	0x3f
	.uleb128 0x32
	.string	"j"
	.byte	0x1
	.value	0xd4b
	.long	0x3f
	.byte	0x0
	.uleb128 0x30
	.long	0x59ec
	.long	.LASF788
	.byte	0x1
	.value	0xd8c
	.byte	0x1
	.quad	.LFB376
	.quad	.LFE376
	.byte	0x1
	.byte	0x57
	.uleb128 0x2b
	.long	.LASF227
	.byte	0x1
	.value	0xd8b
	.long	0x109
	.byte	0x1
	.byte	0x53
	.uleb128 0x32
	.string	"chr"
	.byte	0x1
	.value	0xd8d
	.long	0x2f75
	.uleb128 0x2d
	.string	"s"
	.byte	0x1
	.value	0xd8e
	.long	0x5819
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x30
	.long	0x5a28
	.long	.LASF789
	.byte	0x1
	.value	0xda6
	.byte	0x1
	.quad	.LFB378
	.quad	.LFE378
	.byte	0x1
	.byte	0x57
	.uleb128 0x2a
	.string	"fd"
	.byte	0x1
	.value	0xda5
	.long	0x3f
	.byte	0x1
	.byte	0x55
	.uleb128 0x2d
	.string	"val"
	.byte	0x1
	.value	0xda7
	.long	0x3f
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x30
	.long	0x5aee
	.long	.LASF790
	.byte	0x1
	.value	0xdac
	.byte	0x1
	.quad	.LFB379
	.quad	.LFE379
	.byte	0x1
	.byte	0x57
	.uleb128 0x2b
	.long	.LASF227
	.byte	0x1
	.value	0xdab
	.long	0x109
	.byte	0x1
	.byte	0x55
	.uleb128 0x2d
	.string	"chr"
	.byte	0x1
	.value	0xdad
	.long	0x2f75
	.byte	0x1
	.byte	0x5c
	.uleb128 0x2d
	.string	"s"
	.byte	0x1
	.value	0xdae
	.long	0x5819
	.byte	0x1
	.byte	0x56
	.uleb128 0x2c
	.long	.LASF710
	.byte	0x1
	.value	0xdaf
	.long	0x27cf
	.byte	0x3
	.byte	0x91
	.sleb128 144
	.uleb128 0x2c
	.long	.LASF791
	.byte	0x1
	.value	0xdb1
	.long	0x281a
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x2c
	.long	.LASF339
	.byte	0x1
	.value	0xdb3
	.long	0x27c9
	.byte	0x1
	.byte	0x54
	.uleb128 0x2d
	.string	"len"
	.byte	0x1
	.value	0xdb4
	.long	0x5f3
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2d
	.string	"fd"
	.byte	0x1
	.value	0xdb5
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.uleb128 0x38
	.long	0x5aee
	.quad	.LBB71
	.quad	.LBE71
	.uleb128 0x3f
	.long	0x5afc
	.uleb128 0x3a
	.quad	.LBB72
	.quad	.LBE72
	.uleb128 0x39
	.long	0x5b07
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x4a
	.long	0x5b14
	.long	.LASF792
	.byte	0x1
	.value	0xd98
	.byte	0x1
	.byte	0x1
	.uleb128 0x41
	.string	"fd"
	.byte	0x1
	.value	0xd97
	.long	0x3f
	.uleb128 0x32
	.string	"buf"
	.byte	0x1
	.value	0xd99
	.long	0x5b14
	.byte	0x0
	.uleb128 0x7
	.long	0x5b24
	.long	0x7a
	.uleb128 0x8
	.long	0x61
	.byte	0x2
	.byte	0x0
	.uleb128 0x30
	.long	0x5b5e
	.long	.LASF793
	.byte	0x1
	.value	0xdd4
	.byte	0x1
	.quad	.LFB380
	.quad	.LFE380
	.byte	0x1
	.byte	0x57
	.uleb128 0x2a
	.string	"chr"
	.byte	0x1
	.value	0xdd3
	.long	0x2f75
	.byte	0x1
	.byte	0x55
	.uleb128 0x2d
	.string	"s"
	.byte	0x1
	.value	0xdd5
	.long	0x5819
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x31
	.long	0x5b8d
	.byte	0x1
	.long	.LASF794
	.byte	0x1
	.value	0xebb
	.byte	0x1
	.quad	.LFB383
	.quad	.LFE383
	.byte	0x1
	.byte	0x57
	.uleb128 0x2a
	.string	"chr"
	.byte	0x1
	.value	0xeba
	.long	0x2f75
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x2f
	.long	0x5c0f
	.long	.LASF795
	.byte	0x1
	.value	0xeff
	.byte	0x1
	.long	0x3f
	.quad	.LFB386
	.quad	.LFE386
	.byte	0x1
	.byte	0x57
	.uleb128 0x2a
	.string	"buf"
	.byte	0x1
	.value	0xefe
	.long	0x116
	.byte	0x1
	.byte	0x5e
	.uleb128 0x2b
	.long	.LASF313
	.byte	0x1
	.value	0xefe
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.uleb128 0x2a
	.string	"pp"
	.byte	0x1
	.value	0xefe
	.long	0x5c0f
	.byte	0x1
	.byte	0x5d
	.uleb128 0x2a
	.string	"sep"
	.byte	0x1
	.value	0xefe
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x2d
	.string	"p"
	.byte	0x1
	.value	0xf00
	.long	0x6f
	.byte	0x1
	.byte	0x5c
	.uleb128 0x2d
	.string	"p1"
	.byte	0x1
	.value	0xf00
	.long	0x6f
	.byte	0x1
	.byte	0x56
	.uleb128 0x2d
	.string	"len"
	.byte	0x1
	.value	0xf01
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x6f
	.uleb128 0x29
	.long	0x5cc6
	.byte	0x1
	.long	.LASF796
	.byte	0x1
	.value	0xf3a
	.byte	0x1
	.long	0x3f
	.quad	.LFB388
	.quad	.LFE388
	.byte	0x1
	.byte	0x57
	.uleb128 0x2b
	.long	.LASF710
	.byte	0x1
	.value	0xf39
	.long	0x2814
	.byte	0x1
	.byte	0x56
	.uleb128 0x2a
	.string	"str"
	.byte	0x1
	.value	0xf39
	.long	0x6f
	.byte	0x1
	.byte	0x54
	.uleb128 0x2d
	.string	"buf"
	.byte	0x1
	.value	0xf3b
	.long	0x5cc6
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2d
	.string	"he"
	.byte	0x1
	.value	0xf3c
	.long	0x5cd7
	.byte	0x1
	.byte	0x50
	.uleb128 0x2d
	.string	"p"
	.byte	0x1
	.value	0xf3d
	.long	0x6f
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2d
	.string	"r"
	.byte	0x1
	.value	0xf3d
	.long	0x6f
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.long	.LASF549
	.byte	0x1
	.value	0xf3e
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.uleb128 0x3a
	.quad	.LBB73
	.quad	.LBE73
	.uleb128 0x2d
	.string	"__v"
	.byte	0x1
	.value	0xf53
	.long	0x68
	.byte	0x1
	.byte	0x50
	.uleb128 0x32
	.string	"__x"
	.byte	0x1
	.value	0xf53
	.long	0x68
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
	.long	0x5cd7
	.long	0x7a
	.uleb128 0x1a
	.long	0x61
	.value	0x1ff
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x291f
	.uleb128 0x29
	.long	0x5d70
	.byte	0x1
	.long	.LASF797
	.byte	0x1
	.value	0xf15
	.byte	0x1
	.long	0x3f
	.quad	.LFB387
	.quad	.LFE387
	.byte	0x1
	.byte	0x57
	.uleb128 0x2b
	.long	.LASF798
	.byte	0x1
	.value	0xf12
	.long	0x2814
	.byte	0x1
	.byte	0x5c
	.uleb128 0x2b
	.long	.LASF710
	.byte	0x1
	.value	0xf13
	.long	0x2814
	.byte	0x1
	.byte	0x5d
	.uleb128 0x2b
	.long	.LASF799
	.byte	0x1
	.value	0xf14
	.long	0x6f
	.byte	0x1
	.byte	0x53
	.uleb128 0x2d
	.string	"str"
	.byte	0x1
	.value	0xf16
	.long	0x116
	.byte	0x1
	.byte	0x56
	.uleb128 0x34
	.long	.LASF800
	.byte	0x1
	.value	0xf17
	.long	0x116
	.uleb128 0x2c
	.long	.LASF801
	.byte	0x1
	.value	0xf18
	.long	0x116
	.byte	0x1
	.byte	0x53
	.uleb128 0x32
	.string	"ptr"
	.byte	0x1
	.value	0xf19
	.long	0x116
	.uleb128 0x2e
	.long	.LASF719
	.byte	0x1
	.value	0xf34
	.quad	.L692
	.byte	0x0
	.uleb128 0x2f
	.long	0x5ef1
	.long	.LASF802
	.byte	0x1
	.value	0xde0
	.byte	0x1
	.long	0x2f75
	.quad	.LFB381
	.quad	.LFE381
	.byte	0x1
	.byte	0x57
	.uleb128 0x2b
	.long	.LASF800
	.byte	0x1
	.value	0xddd
	.long	0x6f
	.byte	0x1
	.byte	0x5c
	.uleb128 0x2b
	.long	.LASF803
	.byte	0x1
	.value	0xdde
	.long	0x3f
	.byte	0x2
	.byte	0x91
	.sleb128 40
	.uleb128 0x2b
	.long	.LASF606
	.byte	0x1
	.value	0xddf
	.long	0x3f
	.byte	0x1
	.byte	0x5e
	.uleb128 0x2d
	.string	"chr"
	.byte	0x1
	.value	0xde1
	.long	0x2f75
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x2d
	.string	"s"
	.byte	0x1
	.value	0xde2
	.long	0x5819
	.byte	0x1
	.byte	0x5d
	.uleb128 0x2d
	.string	"fd"
	.byte	0x1
	.value	0xde3
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.uleb128 0x2d
	.string	"ret"
	.byte	0x1
	.value	0xde3
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.uleb128 0x2d
	.string	"err"
	.byte	0x1
	.value	0xde3
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x2d
	.string	"val"
	.byte	0x1
	.value	0xde3
	.long	0x3f
	.byte	0x2
	.byte	0x91
	.sleb128 44
	.uleb128 0x2c
	.long	.LASF804
	.byte	0x1
	.value	0xde4
	.long	0x3f
	.byte	0x1
	.byte	0x5f
	.uleb128 0x2c
	.long	.LASF805
	.byte	0x1
	.value	0xde5
	.long	0x3f
	.byte	0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0x2c
	.long	.LASF605
	.byte	0x1
	.value	0xde6
	.long	0x3f
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x2d
	.string	"ptr"
	.byte	0x1
	.value	0xde7
	.long	0x6f
	.byte	0x1
	.byte	0x58
	.uleb128 0x2c
	.long	.LASF710
	.byte	0x1
	.value	0xde8
	.long	0x27cf
	.byte	0x3
	.byte	0x91
	.sleb128 272
	.uleb128 0x2c
	.long	.LASF791
	.byte	0x1
	.value	0xdea
	.long	0x281a
	.byte	0x3
	.byte	0x91
	.sleb128 160
	.uleb128 0x2c
	.long	.LASF339
	.byte	0x1
	.value	0xdec
	.long	0x27c9
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2c
	.long	.LASF806
	.byte	0x1
	.value	0xded
	.long	0x5f3
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2e
	.long	.LASF719
	.byte	0x1
	.value	0xe6b
	.quad	.L705
	.uleb128 0x3e
	.long	0x5ecf
	.long	0x5ef1
	.quad	.LBB74
	.quad	.LBE74
	.uleb128 0x3f
	.long	0x5f03
	.uleb128 0x3f
	.long	0x5f0f
	.uleb128 0x37
	.long	.Ldebug_ranges0+0x280
	.uleb128 0x46
	.long	0x5f1b
	.uleb128 0x39
	.long	0x5f25
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.byte	0x0
	.uleb128 0x3a
	.quad	.LBB78
	.quad	.LBE78
	.uleb128 0x2c
	.long	.LASF807
	.byte	0x1
	.value	0xe31
	.long	0x5f32
	.byte	0x2
	.byte	0x91
	.sleb128 48
	.byte	0x0
	.byte	0x0
	.uleb128 0x3b
	.long	0x5f32
	.long	.LASF808
	.byte	0x1
	.value	0xf59
	.byte	0x1
	.long	0x3f
	.byte	0x1
	.uleb128 0x42
	.long	.LASF791
	.byte	0x1
	.value	0xf58
	.long	0x2843
	.uleb128 0x41
	.string	"str"
	.byte	0x1
	.value	0xf58
	.long	0x6f
	.uleb128 0x32
	.string	"p"
	.byte	0x1
	.value	0xf5a
	.long	0x6f
	.uleb128 0x32
	.string	"len"
	.byte	0x1
	.value	0xf5b
	.long	0x3f
	.byte	0x0
	.uleb128 0x7
	.long	0x5f42
	.long	0x7a
	.uleb128 0x8
	.long	0x61
	.byte	0x6c
	.byte	0x0
	.uleb128 0x29
	.long	0x62ff
	.byte	0x1
	.long	.LASF809
	.byte	0x1
	.value	0xe74
	.byte	0x1
	.long	0x2f75
	.quad	.LFB382
	.quad	.LFE382
	.byte	0x1
	.byte	0x57
	.uleb128 0x2b
	.long	.LASF810
	.byte	0x1
	.value	0xe73
	.long	0x6f
	.byte	0x1
	.byte	0x53
	.uleb128 0x2d
	.string	"p"
	.byte	0x1
	.value	0xe75
	.long	0x6f
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x4c
	.long	0x5fc3
	.long	.Ldebug_ranges0+0x2b0
	.uleb128 0x34
	.long	.LASF811
	.byte	0x1
	.value	0xe77
	.long	0x2d
	.uleb128 0x34
	.long	.LASF812
	.byte	0x1
	.value	0xe77
	.long	0x2d
	.uleb128 0x37
	.long	.Ldebug_ranges0+0x2e0
	.uleb128 0x34
	.long	.LASF813
	.byte	0x1
	.value	0xe77
	.long	0x62ff
	.uleb128 0x2c
	.long	.LASF814
	.byte	0x1
	.value	0xe77
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
	.long	0x5ff1
	.quad	.LBB81
	.quad	.LBE81
	.uleb128 0x34
	.long	.LASF811
	.byte	0x1
	.value	0xe7b
	.long	0x2d
	.uleb128 0x34
	.long	.LASF812
	.byte	0x1
	.value	0xe7b
	.long	0x2d
	.byte	0x0
	.uleb128 0x3e
	.long	0x602b
	.long	0x630a
	.quad	.LBB82
	.quad	.LBE82
	.uleb128 0x39
	.long	0x631c
	.byte	0x1
	.byte	0x50
	.uleb128 0x3a
	.quad	.LBB83
	.quad	.LBE83
	.uleb128 0x39
	.long	0x631c
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.uleb128 0x3e
	.long	0x607d
	.long	0x6329
	.quad	.LBB86
	.quad	.LBE86
	.uleb128 0x40
	.long	0x633b
	.byte	0x1
	.byte	0x5e
	.uleb128 0x37
	.long	.Ldebug_ranges0+0x310
	.uleb128 0x39
	.long	0x6347
	.byte	0x1
	.byte	0x56
	.uleb128 0x39
	.long	0x6353
	.byte	0x1
	.byte	0x53
	.uleb128 0x39
	.long	0x635d
	.byte	0x1
	.byte	0x5c
	.uleb128 0x39
	.long	0x6368
	.byte	0x3
	.byte	0x91
	.sleb128 1552
	.uleb128 0x45
	.long	0x6374
	.quad	.L781
	.byte	0x0
	.byte	0x0
	.uleb128 0x4c
	.long	0x60c4
	.long	.Ldebug_ranges0+0x360
	.uleb128 0x2d
	.string	"drv"
	.byte	0x1
	.value	0xe88
	.long	0x2f75
	.byte	0x1
	.byte	0x56
	.uleb128 0x38
	.long	0x637d
	.quad	.LBB90
	.quad	.LBE90
	.uleb128 0x3f
	.long	0x638f
	.uleb128 0x37
	.long	.Ldebug_ranges0+0x3a0
	.uleb128 0x39
	.long	0x639b
	.byte	0x1
	.byte	0x53
	.uleb128 0x39
	.long	0x63a7
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3e
	.long	0x60fe
	.long	0x63b2
	.quad	.LBB92
	.quad	.LBE92
	.uleb128 0x3f
	.long	0x63c4
	.uleb128 0x37
	.long	.Ldebug_ranges0+0x3d0
	.uleb128 0x39
	.long	0x63d0
	.byte	0x1
	.byte	0x53
	.uleb128 0x39
	.long	0x63dc
	.byte	0x1
	.byte	0x56
	.uleb128 0x39
	.long	0x63e8
	.byte	0x1
	.byte	0x5c
	.byte	0x0
	.byte	0x0
	.uleb128 0x3e
	.long	0x612c
	.long	0x63f4
	.quad	.LBB98
	.quad	.LBE98
	.uleb128 0x40
	.long	0x6406
	.byte	0x1
	.byte	0x53
	.uleb128 0x37
	.long	.Ldebug_ranges0+0x440
	.uleb128 0x39
	.long	0x6412
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
	.long	0x6186
	.quad	.LBB102
	.quad	.LBE102
	.uleb128 0x34
	.long	.LASF811
	.byte	0x1
	.value	0xe98
	.long	0x2d
	.uleb128 0x34
	.long	.LASF812
	.byte	0x1
	.value	0xe98
	.long	0x2d
	.uleb128 0x3a
	.quad	.LBB103
	.quad	.LBE103
	.uleb128 0x34
	.long	.LASF813
	.byte	0x1
	.value	0xe98
	.long	0x62ff
	.uleb128 0x2c
	.long	.LASF814
	.byte	0x1
	.value	0xe98
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
	.long	0x61b4
	.quad	.LBB104
	.quad	.LBE104
	.uleb128 0x34
	.long	.LASF811
	.byte	0x1
	.value	0xe9a
	.long	0x2d
	.uleb128 0x34
	.long	.LASF812
	.byte	0x1
	.value	0xe9a
	.long	0x2d
	.byte	0x0
	.uleb128 0x3e
	.long	0x621a
	.long	0x641f
	.quad	.LBB105
	.quad	.LBE105
	.uleb128 0x39
	.long	0x6431
	.byte	0x1
	.byte	0x53
	.uleb128 0x3a
	.quad	.LBB106
	.quad	.LBE106
	.uleb128 0x39
	.long	0x6431
	.byte	0x1
	.byte	0x53
	.uleb128 0x38
	.long	0x643e
	.quad	.LBB107
	.quad	.LBE107
	.uleb128 0x39
	.long	0x644c
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x37
	.long	.Ldebug_ranges0+0x470
	.uleb128 0x39
	.long	0x644c
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3e
	.long	0x624d
	.long	0x6459
	.quad	.LBB113
	.quad	.LBE113
	.uleb128 0x3f
	.long	0x646b
	.uleb128 0x37
	.long	.Ldebug_ranges0+0x4b0
	.uleb128 0x39
	.long	0x6477
	.byte	0x1
	.byte	0x53
	.uleb128 0x39
	.long	0x6483
	.byte	0x1
	.byte	0x56
	.byte	0x0
	.byte	0x0
	.uleb128 0x3e
	.long	0x6294
	.long	0x648f
	.quad	.LBB119
	.quad	.LBE119
	.uleb128 0x40
	.long	0x64a1
	.byte	0x1
	.byte	0x5c
	.uleb128 0x37
	.long	.Ldebug_ranges0+0x4e0
	.uleb128 0x39
	.long	0x64ad
	.byte	0x1
	.byte	0x53
	.uleb128 0x39
	.long	0x64b9
	.byte	0x1
	.byte	0x56
	.uleb128 0x39
	.long	0x64c5
	.byte	0x3
	.byte	0x91
	.sleb128 1296
	.uleb128 0x39
	.long	0x64d1
	.byte	0x3
	.byte	0x91
	.sleb128 1040
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
	.long	0x64de
	.quad	.LBB129
	.quad	.LBE129
	.uleb128 0x39
	.long	0x64f0
	.byte	0x3
	.byte	0x91
	.sleb128 1040
	.uleb128 0x39
	.long	0x64fc
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x39
	.long	0x6508
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x39
	.long	0x6514
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3a
	.quad	.LBB130
	.quad	.LBE130
	.uleb128 0x39
	.long	0x64f0
	.byte	0x3
	.byte	0x91
	.sleb128 1040
	.uleb128 0x39
	.long	0x64fc
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x39
	.long	0x6508
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x39
	.long	0x6514
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x6305
	.uleb128 0x6
	.long	0x81
	.uleb128 0x3b
	.long	0x6329
	.long	.LASF815
	.byte	0x1
	.value	0x7c2
	.byte	0x1
	.long	0x2f75
	.byte	0x1
	.uleb128 0x32
	.string	"chr"
	.byte	0x1
	.value	0x7c3
	.long	0x2f75
	.byte	0x0
	.uleb128 0x3b
	.long	0x637d
	.long	.LASF816
	.byte	0x1
	.value	0xce8
	.byte	0x1
	.long	0x2f75
	.byte	0x1
	.uleb128 0x41
	.string	"def"
	.byte	0x1
	.value	0xce7
	.long	0x6f
	.uleb128 0x32
	.string	"chr"
	.byte	0x1
	.value	0xce9
	.long	0x2f75
	.uleb128 0x32
	.string	"s"
	.byte	0x1
	.value	0xcea
	.long	0x56c4
	.uleb128 0x32
	.string	"fd"
	.byte	0x1
	.value	0xceb
	.long	0x3f
	.uleb128 0x34
	.long	.LASF710
	.byte	0x1
	.value	0xcec
	.long	0x27cf
	.uleb128 0x47
	.long	.LASF817
	.byte	0x1
	.value	0xd0e
	.byte	0x0
	.uleb128 0x3b
	.long	0x63b2
	.long	.LASF818
	.byte	0x1
	.value	0x8a8
	.byte	0x1
	.long	0x2f75
	.byte	0x1
	.uleb128 0x41
	.string	"drv"
	.byte	0x1
	.value	0x8a7
	.long	0x2f75
	.uleb128 0x32
	.string	"chr"
	.byte	0x1
	.value	0x8a9
	.long	0x2f75
	.uleb128 0x32
	.string	"d"
	.byte	0x1
	.value	0x8aa
	.long	0x4dd6
	.byte	0x0
	.uleb128 0x3b
	.long	0x63f4
	.long	.LASF819
	.byte	0x1
	.value	0xb03
	.byte	0x1
	.long	0x2f75
	.byte	0x1
	.uleb128 0x42
	.long	.LASF810
	.byte	0x1
	.value	0xb02
	.long	0x6f
	.uleb128 0x32
	.string	"chr"
	.byte	0x1
	.value	0xb04
	.long	0x2f75
	.uleb128 0x32
	.string	"drv"
	.byte	0x1
	.value	0xb05
	.long	0x5557
	.uleb128 0x32
	.string	"fd"
	.byte	0x1
	.value	0xb06
	.long	0x3f
	.byte	0x0
	.uleb128 0x3b
	.long	0x641f
	.long	.LASF820
	.byte	0x1
	.value	0x974
	.byte	0x1
	.long	0x2f75
	.byte	0x1
	.uleb128 0x42
	.long	.LASF821
	.byte	0x1
	.value	0x973
	.long	0x6f
	.uleb128 0x34
	.long	.LASF595
	.byte	0x1
	.value	0x975
	.long	0x3f
	.byte	0x0
	.uleb128 0x3b
	.long	0x643e
	.long	.LASF822
	.byte	0x1
	.value	0x9e6
	.byte	0x1
	.long	0x2f75
	.byte	0x1
	.uleb128 0x32
	.string	"chr"
	.byte	0x1
	.value	0x9e7
	.long	0x2f75
	.byte	0x0
	.uleb128 0x4a
	.long	0x6459
	.long	.LASF823
	.byte	0x1
	.value	0x9cb
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.string	"tty"
	.byte	0x1
	.value	0x9cc
	.long	0x26b2
	.byte	0x0
	.uleb128 0x3b
	.long	0x648f
	.long	.LASF824
	.byte	0x1
	.value	0xa82
	.byte	0x1
	.long	0x2f75
	.byte	0x1
	.uleb128 0x42
	.long	.LASF810
	.byte	0x1
	.value	0xa81
	.long	0x6f
	.uleb128 0x32
	.string	"chr"
	.byte	0x1
	.value	0xa83
	.long	0x2f75
	.uleb128 0x32
	.string	"fd"
	.byte	0x1
	.value	0xa84
	.long	0x3f
	.byte	0x0
	.uleb128 0x3b
	.long	0x64de
	.long	.LASF825
	.byte	0x1
	.value	0x97e
	.byte	0x1
	.long	0x2f75
	.byte	0x1
	.uleb128 0x42
	.long	.LASF810
	.byte	0x1
	.value	0x97d
	.long	0x6f
	.uleb128 0x34
	.long	.LASF594
	.byte	0x1
	.value	0x97f
	.long	0x3f
	.uleb128 0x34
	.long	.LASF595
	.byte	0x1
	.value	0x97f
	.long	0x3f
	.uleb128 0x34
	.long	.LASF826
	.byte	0x1
	.value	0x980
	.long	0x1c22
	.uleb128 0x34
	.long	.LASF827
	.byte	0x1
	.value	0x980
	.long	0x1c22
	.byte	0x0
	.uleb128 0x3b
	.long	0x6521
	.long	.LASF828
	.byte	0x1
	.value	0x9f5
	.byte	0x1
	.long	0x2f75
	.byte	0x1
	.uleb128 0x32
	.string	"tty"
	.byte	0x1
	.value	0x9f6
	.long	0x26b2
	.uleb128 0x34
	.long	.LASF829
	.byte	0x1
	.value	0x9f7
	.long	0x3138
	.uleb128 0x34
	.long	.LASF830
	.byte	0x1
	.value	0x9f8
	.long	0x3f
	.uleb128 0x34
	.long	.LASF831
	.byte	0x1
	.value	0x9f8
	.long	0x3f
	.byte	0x0
	.uleb128 0x29
	.long	0x656f
	.byte	0x1
	.long	.LASF832
	.byte	0x1
	.value	0xf6d
	.byte	0x1
	.long	0x1c48
	.quad	.LFB390
	.quad	.LFE390
	.byte	0x1
	.byte	0x57
	.uleb128 0x2a
	.string	"id"
	.byte	0x1
	.value	0xf6c
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.uleb128 0x2c
	.long	.LASF833
	.byte	0x1
	.value	0xf6e
	.long	0x656f
	.byte	0x1
	.byte	0x52
	.uleb128 0x2c
	.long	.LASF272
	.byte	0x1
	.value	0xf6e
	.long	0x1c48
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x1c48
	.uleb128 0x29
	.long	0x65ed
	.byte	0x1
	.long	.LASF834
	.byte	0x1
	.value	0xf83
	.byte	0x1
	.long	0x1c32
	.quad	.LFB391
	.quad	.LFE391
	.byte	0x1
	.byte	0x57
	.uleb128 0x2b
	.long	.LASF272
	.byte	0x1
	.value	0xf7f
	.long	0x1c48
	.byte	0x1
	.byte	0x53
	.uleb128 0x2b
	.long	.LASF363
	.byte	0x1
	.value	0xf80
	.long	0x1c0a
	.byte	0x1
	.byte	0x56
	.uleb128 0x2b
	.long	.LASF364
	.byte	0x1
	.value	0xf81
	.long	0x1c10
	.byte	0x1
	.byte	0x5c
	.uleb128 0x2b
	.long	.LASF227
	.byte	0x1
	.value	0xf82
	.long	0x109
	.byte	0x1
	.byte	0x5d
	.uleb128 0x2d
	.string	"vc"
	.byte	0x1
	.value	0xf84
	.long	0x1c32
	.byte	0x1
	.byte	0x52
	.uleb128 0x2d
	.string	"pvc"
	.byte	0x1
	.value	0xf84
	.long	0x65ed
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x1c32
	.uleb128 0x29
	.long	0x6641
	.byte	0x1
	.long	.LASF835
	.byte	0x1
	.value	0xf96
	.byte	0x1
	.long	0x3f
	.quad	.LFB392
	.quad	.LFE392
	.byte	0x1
	.byte	0x57
	.uleb128 0x2a
	.string	"vc1"
	.byte	0x1
	.value	0xf95
	.long	0x1c32
	.byte	0x1
	.byte	0x56
	.uleb128 0x2c
	.long	.LASF272
	.byte	0x1
	.value	0xf97
	.long	0x1c48
	.byte	0x1
	.byte	0x50
	.uleb128 0x2d
	.string	"vc"
	.byte	0x1
	.value	0xf98
	.long	0x1c32
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x31
	.long	0x66a7
	.byte	0x1
	.long	.LASF836
	.byte	0x1
	.value	0xfa4
	.byte	0x1
	.quad	.LFB393
	.quad	.LFE393
	.byte	0x1
	.byte	0x57
	.uleb128 0x2a
	.string	"vc1"
	.byte	0x1
	.value	0xfa3
	.long	0x1c32
	.byte	0x1
	.byte	0x56
	.uleb128 0x2a
	.string	"buf"
	.byte	0x1
	.value	0xfa3
	.long	0x1362
	.byte	0x1
	.byte	0x5d
	.uleb128 0x2b
	.long	.LASF245
	.byte	0x1
	.value	0xfa3
	.long	0x3f
	.byte	0x1
	.byte	0x5c
	.uleb128 0x2c
	.long	.LASF272
	.byte	0x1
	.value	0xfa5
	.long	0x1c48
	.byte	0x1
	.byte	0x50
	.uleb128 0x2d
	.string	"vc"
	.byte	0x1
	.value	0xfa6
	.long	0x1c32
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x35
	.byte	0x1
	.long	.LASF837
	.byte	0x1
	.value	0xfbb
	.byte	0x1
	.long	0x3f
	.quad	.LFB394
	.quad	.LFE394
	.byte	0x1
	.byte	0x57
	.uleb128 0x31
	.long	0x6704
	.byte	0x1
	.long	.LASF838
	.byte	0x1
	.value	0xfc0
	.byte	0x1
	.quad	.LFB395
	.quad	.LFE395
	.byte	0x1
	.byte	0x57
	.uleb128 0x2a
	.string	"pkt"
	.byte	0x1
	.value	0xfbf
	.long	0x1362
	.byte	0x1
	.byte	0x50
	.uleb128 0x2b
	.long	.LASF839
	.byte	0x1
	.value	0xfbf
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0x30
	.long	0x674e
	.long	.LASF840
	.byte	0x1
	.value	0xfcb
	.byte	0x1
	.quad	.LFB396
	.quad	.LFE396
	.byte	0x1
	.byte	0x57
	.uleb128 0x2b
	.long	.LASF227
	.byte	0x1
	.value	0xfca
	.long	0x109
	.byte	0x1
	.byte	0x55
	.uleb128 0x2a
	.string	"buf"
	.byte	0x1
	.value	0xfca
	.long	0x1362
	.byte	0x1
	.byte	0x55
	.uleb128 0x2b
	.long	.LASF245
	.byte	0x1
	.value	0xfca
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0x30
	.long	0x6846
	.long	.LASF841
	.byte	0x1
	.value	0x1018
	.byte	0x1
	.quad	.LFB399
	.quad	.LFE399
	.byte	0x1
	.byte	0x57
	.uleb128 0x2d
	.string	"d"
	.byte	0x1
	.value	0x1019
	.long	0x6846
	.byte	0x1
	.byte	0x53
	.uleb128 0x2d
	.string	"de"
	.byte	0x1
	.value	0x101a
	.long	0x684c
	.byte	0x1
	.byte	0x50
	.uleb128 0x2c
	.long	.LASF810
	.byte	0x1
	.value	0x101b
	.long	0x3138
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.long	0x67ef
	.quad	.LBB139
	.quad	.LBE139
	.uleb128 0x34
	.long	.LASF811
	.byte	0x1
	.value	0x1023
	.long	0x2d
	.uleb128 0x34
	.long	.LASF812
	.byte	0x1
	.value	0x1023
	.long	0x2d
	.uleb128 0x3a
	.quad	.LBB140
	.quad	.LBE140
	.uleb128 0x34
	.long	.LASF813
	.byte	0x1
	.value	0x1023
	.long	0x62ff
	.uleb128 0x2c
	.long	.LASF814
	.byte	0x1
	.value	0x1023
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.byte	0x0
	.uleb128 0x3a
	.quad	.LBB141
	.quad	.LBE141
	.uleb128 0x34
	.long	.LASF811
	.byte	0x1
	.value	0x1024
	.long	0x2d
	.uleb128 0x34
	.long	.LASF812
	.byte	0x1
	.value	0x1024
	.long	0x2d
	.uleb128 0x3a
	.quad	.LBB142
	.quad	.LBE142
	.uleb128 0x34
	.long	.LASF813
	.byte	0x1
	.value	0x1024
	.long	0x62ff
	.uleb128 0x2c
	.long	.LASF814
	.byte	0x1
	.value	0x1024
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x2908
	.uleb128 0x5
	.byte	0x8
	.long	0x28b4
	.uleb128 0x3c
	.byte	0x1
	.long	.LASF842
	.byte	0x1
	.value	0x1067
	.byte	0x1
	.quad	.LFB401
	.quad	.LFE401
	.byte	0x1
	.byte	0x57
	.uleb128 0x30
	.long	0x68ce
	.long	.LASF843
	.byte	0x1
	.value	0x1076
	.byte	0x1
	.quad	.LFB402
	.quad	.LFE402
	.byte	0x1
	.byte	0x57
	.uleb128 0x2b
	.long	.LASF227
	.byte	0x1
	.value	0x1075
	.long	0x109
	.byte	0x1
	.byte	0x5c
	.uleb128 0x2a
	.string	"buf"
	.byte	0x1
	.value	0x1075
	.long	0x1362
	.byte	0x1
	.byte	0x56
	.uleb128 0x2b
	.long	.LASF245
	.byte	0x1
	.value	0x1075
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x32
	.string	"s"
	.byte	0x1
	.value	0x1077
	.long	0x68ce
	.uleb128 0x32
	.string	"ret"
	.byte	0x1
	.value	0x1078
	.long	0x3f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x3149
	.uleb128 0x30
	.long	0x6927
	.long	.LASF844
	.byte	0x1
	.value	0x1083
	.byte	0x1
	.quad	.LFB403
	.quad	.LFE403
	.byte	0x1
	.byte	0x57
	.uleb128 0x2b
	.long	.LASF227
	.byte	0x1
	.value	0x1082
	.long	0x109
	.byte	0x1
	.byte	0x53
	.uleb128 0x32
	.string	"s"
	.byte	0x1
	.value	0x1084
	.long	0x68ce
	.uleb128 0x2d
	.string	"buf"
	.byte	0x1
	.value	0x1085
	.long	0x31cc
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.long	.LASF245
	.byte	0x1
	.value	0x1086
	.long	0x3f
	.byte	0x0
	.uleb128 0x2f
	.long	0x6972
	.long	.LASF845
	.byte	0x1
	.value	0x1099
	.byte	0x1
	.long	0x68ce
	.quad	.LFB404
	.quad	.LFE404
	.byte	0x1
	.byte	0x57
	.uleb128 0x2b
	.long	.LASF272
	.byte	0x1
	.value	0x1098
	.long	0x1c48
	.byte	0x1
	.byte	0x56
	.uleb128 0x2a
	.string	"fd"
	.byte	0x1
	.value	0x1098
	.long	0x3f
	.byte	0x1
	.byte	0x5c
	.uleb128 0x2d
	.string	"s"
	.byte	0x1
	.value	0x109a
	.long	0x68ce
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x2f
	.long	0x6a2a
	.long	.LASF846
	.byte	0x1
	.value	0x115f
	.byte	0x1
	.long	0x3f
	.quad	.LFB406
	.quad	.LFE406
	.byte	0x1
	.byte	0x57
	.uleb128 0x2b
	.long	.LASF847
	.byte	0x1
	.value	0x115e
	.long	0x6f
	.byte	0x1
	.byte	0x56
	.uleb128 0x2b
	.long	.LASF848
	.byte	0x1
	.value	0x115e
	.long	0x6f
	.byte	0x1
	.byte	0x5d
	.uleb128 0x2a
	.string	"fd"
	.byte	0x1
	.value	0x115e
	.long	0x3f
	.byte	0x1
	.byte	0x5c
	.uleb128 0x2d
	.string	"pid"
	.byte	0x1
	.value	0x1160
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.uleb128 0x2c
	.long	.LASF849
	.byte	0x1
	.value	0x1160
	.long	0x3f
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2c
	.long	.LASF850
	.byte	0x1
	.value	0x1161
	.long	0x6a2a
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2c
	.long	.LASF777
	.byte	0x1
	.value	0x1162
	.long	0x2919
	.byte	0x1
	.byte	0x50
	.uleb128 0x4d
	.long	.Ldebug_ranges0+0x520
	.uleb128 0x3a
	.quad	.LBB145
	.quad	.LBE145
	.uleb128 0x2c
	.long	.LASF851
	.byte	0x1
	.value	0x1168
	.long	0x3f
	.byte	0x1
	.byte	0x5f
	.uleb128 0x2d
	.string	"i"
	.byte	0x1
	.value	0x1168
	.long	0x3f
	.byte	0x1
	.byte	0x5e
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
	.long	0x6a3a
	.long	0x116
	.uleb128 0x8
	.long	0x61
	.byte	0x2
	.byte	0x0
	.uleb128 0x30
	.long	0x6b13
	.long	.LASF852
	.byte	0x1
	.value	0x11b5
	.byte	0x1
	.quad	.LFB408
	.quad	.LFE408
	.byte	0x1
	.byte	0x57
	.uleb128 0x2b
	.long	.LASF227
	.byte	0x1
	.value	0x11b4
	.long	0x109
	.byte	0x1
	.byte	0x5c
	.uleb128 0x2a
	.string	"buf"
	.byte	0x1
	.value	0x11b4
	.long	0x1362
	.byte	0x1
	.byte	0x5d
	.uleb128 0x2b
	.long	.LASF245
	.byte	0x1
	.value	0x11b4
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.uleb128 0x32
	.string	"s"
	.byte	0x1
	.value	0x11b6
	.long	0x6b13
	.uleb128 0x2d
	.string	"len"
	.byte	0x1
	.value	0x11b7
	.long	0x50e
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x4c
	.long	0x6ac0
	.long	.Ldebug_ranges0+0x550
	.uleb128 0x2d
	.string	"__v"
	.byte	0x1
	.value	0x11b8
	.long	0x46
	.byte	0x1
	.byte	0x50
	.uleb128 0x32
	.string	"__x"
	.byte	0x1
	.value	0x11b8
	.long	0x46
	.byte	0x0
	.uleb128 0x3e
	.long	0x6aeb
	.long	0x581f
	.quad	.LBB148
	.quad	.LBE148
	.uleb128 0x40
	.long	0x5831
	.byte	0x1
	.byte	0x55
	.uleb128 0x3f
	.long	0x583c
	.uleb128 0x3f
	.long	0x5848
	.byte	0x0
	.uleb128 0x38
	.long	0x581f
	.quad	.LBB153
	.quad	.LBE153
	.uleb128 0x40
	.long	0x5831
	.byte	0x1
	.byte	0x55
	.uleb128 0x3f
	.long	0x583c
	.uleb128 0x3f
	.long	0x5848
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x31dd
	.uleb128 0x30
	.long	0x6b79
	.long	.LASF853
	.byte	0x1
	.value	0x11c3
	.byte	0x1
	.quad	.LFB409
	.quad	.LFE409
	.byte	0x1
	.byte	0x57
	.uleb128 0x2b
	.long	.LASF227
	.byte	0x1
	.value	0x11c2
	.long	0x109
	.byte	0x1
	.byte	0x5c
	.uleb128 0x2a
	.string	"buf"
	.byte	0x1
	.value	0x11c2
	.long	0x1362
	.byte	0x1
	.byte	0x56
	.uleb128 0x2b
	.long	.LASF245
	.byte	0x1
	.value	0x11c2
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x32
	.string	"s"
	.byte	0x1
	.value	0x11c4
	.long	0x6b13
	.uleb128 0x32
	.string	"ret"
	.byte	0x1
	.value	0x11c5
	.long	0x3f
	.byte	0x0
	.uleb128 0x30
	.long	0x6bcd
	.long	.LASF854
	.byte	0x1
	.value	0x11d6
	.byte	0x1
	.quad	.LFB410
	.quad	.LFE410
	.byte	0x1
	.byte	0x57
	.uleb128 0x2b
	.long	.LASF227
	.byte	0x1
	.value	0x11d5
	.long	0x109
	.byte	0x1
	.byte	0x50
	.uleb128 0x2a
	.string	"buf"
	.byte	0x1
	.value	0x11d5
	.long	0x1362
	.byte	0x1
	.byte	0x54
	.uleb128 0x2b
	.long	.LASF245
	.byte	0x1
	.value	0x11d5
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x32
	.string	"s"
	.byte	0x1
	.value	0x11d7
	.long	0x6b13
	.byte	0x0
	.uleb128 0x30
	.long	0x6c7a
	.long	.LASF855
	.byte	0x1
	.value	0x11dd
	.byte	0x1
	.quad	.LFB411
	.quad	.LFE411
	.byte	0x1
	.byte	0x57
	.uleb128 0x2b
	.long	.LASF227
	.byte	0x1
	.value	0x11dc
	.long	0x109
	.byte	0x1
	.byte	0x55
	.uleb128 0x2d
	.string	"s"
	.byte	0x1
	.value	0x11de
	.long	0x6b13
	.byte	0x1
	.byte	0x5c
	.uleb128 0x2d
	.string	"l"
	.byte	0x1
	.value	0x11df
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.uleb128 0x2c
	.long	.LASF245
	.byte	0x1
	.value	0x11df
	.long	0x3f
	.byte	0x1
	.byte	0x5d
	.uleb128 0x32
	.string	"err"
	.byte	0x1
	.value	0x11df
	.long	0x3f
	.uleb128 0x2c
	.long	.LASF750
	.byte	0x1
	.value	0x11e0
	.long	0x31cc
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.string	"buf"
	.byte	0x1
	.value	0x11e1
	.long	0x1362
	.byte	0x1
	.byte	0x5e
	.uleb128 0x4e
	.string	"eoc"
	.byte	0x1
	.value	0x11ea
	.quad	.L1018
	.uleb128 0x37
	.long	.Ldebug_ranges0+0x580
	.uleb128 0x32
	.string	"__v"
	.byte	0x1
	.value	0x11fd
	.long	0x46
	.uleb128 0x2d
	.string	"__x"
	.byte	0x1
	.value	0x11fd
	.long	0x46
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.long	0x6ccd
	.long	.LASF856
	.byte	0x1
	.value	0x1215
	.byte	0x1
	.quad	.LFB412
	.quad	.LFE412
	.byte	0x1
	.byte	0x57
	.uleb128 0x2b
	.long	.LASF227
	.byte	0x1
	.value	0x1214
	.long	0x109
	.byte	0x1
	.byte	0x53
	.uleb128 0x32
	.string	"s"
	.byte	0x1
	.value	0x1216
	.long	0x6b13
	.uleb128 0x2d
	.string	"buf"
	.byte	0x1
	.value	0x1217
	.long	0x31cc
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.long	.LASF245
	.byte	0x1
	.value	0x1218
	.long	0x3f
	.byte	0x0
	.uleb128 0x30
	.long	0x6d13
	.long	.LASF857
	.byte	0x1
	.value	0x122a
	.byte	0x1
	.quad	.LFB413
	.quad	.LFE413
	.byte	0x1
	.byte	0x57
	.uleb128 0x2b
	.long	.LASF227
	.byte	0x1
	.value	0x1229
	.long	0x109
	.byte	0x1
	.byte	0x55
	.uleb128 0x2d
	.string	"s"
	.byte	0x1
	.value	0x122b
	.long	0x6b13
	.byte	0x1
	.byte	0x53
	.uleb128 0x34
	.long	.LASF245
	.byte	0x1
	.value	0x122c
	.long	0x3f
	.byte	0x0
	.uleb128 0x2f
	.long	0x6dba
	.long	.LASF858
	.byte	0x1
	.value	0x123a
	.byte	0x1
	.long	0x3f
	.quad	.LFB414
	.quad	.LFE414
	.byte	0x1
	.byte	0x57
	.uleb128 0x2b
	.long	.LASF859
	.byte	0x1
	.value	0x1239
	.long	0x2814
	.byte	0x1
	.byte	0x56
	.uleb128 0x2d
	.string	"imr"
	.byte	0x1
	.value	0x123b
	.long	0x288a
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2d
	.string	"fd"
	.byte	0x1
	.value	0x123c
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.uleb128 0x2d
	.string	"val"
	.byte	0x1
	.value	0x123d
	.long	0x3f
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x2d
	.string	"ret"
	.byte	0x1
	.value	0x123d
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.uleb128 0x2e
	.long	.LASF719
	.byte	0x1
	.value	0x126f
	.quad	.L1052
	.uleb128 0x3a
	.quad	.LBB157
	.quad	.LBE157
	.uleb128 0x2d
	.string	"__v"
	.byte	0x1
	.value	0x123e
	.long	0x46
	.byte	0x1
	.byte	0x53
	.uleb128 0x32
	.string	"__x"
	.byte	0x1
	.value	0x123e
	.long	0x46
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.long	0x6df2
	.long	.LASF860
	.byte	0x1
	.value	0x12c0
	.byte	0x1
	.quad	.LFB417
	.quad	.LFE417
	.byte	0x1
	.byte	0x57
	.uleb128 0x2b
	.long	.LASF227
	.byte	0x1
	.value	0x12bf
	.long	0x109
	.byte	0x1
	.byte	0x50
	.uleb128 0x32
	.string	"s"
	.byte	0x1
	.value	0x12c1
	.long	0x6b13
	.byte	0x0
	.uleb128 0x2f
	.long	0x6e4b
	.long	.LASF861
	.byte	0x1
	.value	0x12c7
	.byte	0x1
	.long	0x6b13
	.quad	.LFB418
	.quad	.LFE418
	.byte	0x1
	.byte	0x57
	.uleb128 0x2b
	.long	.LASF272
	.byte	0x1
	.value	0x12c5
	.long	0x1c48
	.byte	0x1
	.byte	0x5c
	.uleb128 0x2a
	.string	"fd"
	.byte	0x1
	.value	0x12c5
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.uleb128 0x2b
	.long	.LASF862
	.byte	0x1
	.value	0x12c6
	.long	0x3f
	.byte	0x1
	.byte	0x5d
	.uleb128 0x2d
	.string	"s"
	.byte	0x1
	.value	0x12c8
	.long	0x6b13
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x2f
	.long	0x6f1d
	.long	.LASF863
	.byte	0x1
	.value	0x12db
	.byte	0x1
	.long	0x6b13
	.quad	.LFB419
	.quad	.LFE419
	.byte	0x1
	.byte	0x57
	.uleb128 0x2b
	.long	.LASF272
	.byte	0x1
	.value	0x12d9
	.long	0x1c48
	.byte	0x1
	.byte	0x5e
	.uleb128 0x2a
	.string	"fd"
	.byte	0x1
	.value	0x12d9
	.long	0x3f
	.byte	0x1
	.byte	0x5c
	.uleb128 0x2b
	.long	.LASF862
	.byte	0x1
	.value	0x12da
	.long	0x3f
	.byte	0x1
	.byte	0x5d
	.uleb128 0x2c
	.long	.LASF864
	.byte	0x1
	.value	0x12dc
	.long	0x3f
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x2c
	.long	.LASF865
	.byte	0x1
	.value	0x12dc
	.long	0x3f
	.byte	0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0x38
	.long	0x6f1d
	.quad	.LBB158
	.quad	.LBE158
	.uleb128 0x3f
	.long	0x6f2f
	.uleb128 0x3f
	.long	0x6f3b
	.uleb128 0x3f
	.long	0x6f46
	.uleb128 0x37
	.long	.Ldebug_ranges0+0x5b0
	.uleb128 0x39
	.long	0x6f52
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x39
	.long	0x6f5e
	.byte	0x1
	.byte	0x53
	.uleb128 0x39
	.long	0x6f6a
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x39
	.long	0x6f76
	.byte	0x1
	.byte	0x56
	.uleb128 0x3a
	.quad	.LBB160
	.quad	.LBE160
	.uleb128 0x46
	.long	0x6f81
	.uleb128 0x39
	.long	0x6f8d
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3b
	.long	0x6f9b
	.long	.LASF866
	.byte	0x1
	.value	0x1277
	.byte	0x1
	.long	0x6b13
	.byte	0x1
	.uleb128 0x42
	.long	.LASF272
	.byte	0x1
	.value	0x1275
	.long	0x1c48
	.uleb128 0x41
	.string	"fd"
	.byte	0x1
	.value	0x1275
	.long	0x3f
	.uleb128 0x42
	.long	.LASF862
	.byte	0x1
	.value	0x1276
	.long	0x3f
	.uleb128 0x34
	.long	.LASF710
	.byte	0x1
	.value	0x1278
	.long	0x27cf
	.uleb128 0x34
	.long	.LASF867
	.byte	0x1
	.value	0x1279
	.long	0x3f
	.uleb128 0x34
	.long	.LASF868
	.byte	0x1
	.value	0x127a
	.long	0x5f3
	.uleb128 0x32
	.string	"s"
	.byte	0x1
	.value	0x127b
	.long	0x6b13
	.uleb128 0x49
	.uleb128 0x32
	.string	"__v"
	.byte	0x1
	.value	0x12aa
	.long	0x68
	.uleb128 0x32
	.string	"__x"
	.byte	0x1
	.value	0x12aa
	.long	0x68
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.long	0x7039
	.long	.LASF869
	.byte	0x1
	.value	0x12f1
	.byte	0x1
	.quad	.LFB420
	.quad	.LFE420
	.byte	0x1
	.byte	0x57
	.uleb128 0x2b
	.long	.LASF227
	.byte	0x1
	.value	0x12f0
	.long	0x109
	.byte	0x1
	.byte	0x55
	.uleb128 0x2d
	.string	"s"
	.byte	0x1
	.value	0x12f2
	.long	0x7039
	.byte	0x1
	.byte	0x56
	.uleb128 0x2d
	.string	"s1"
	.byte	0x1
	.value	0x12f3
	.long	0x6b13
	.byte	0x1
	.byte	0x56
	.uleb128 0x2c
	.long	.LASF710
	.byte	0x1
	.value	0x12f4
	.long	0x27cf
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2d
	.string	"len"
	.byte	0x1
	.value	0x12f5
	.long	0x5f3
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2d
	.string	"fd"
	.byte	0x1
	.value	0x12f6
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.uleb128 0x3a
	.quad	.LBB163
	.quad	.LBE163
	.uleb128 0x32
	.string	"__v"
	.byte	0x1
	.value	0x1307
	.long	0x68
	.uleb128 0x2d
	.string	"__x"
	.byte	0x1
	.value	0x1307
	.long	0x68
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x3214
	.uleb128 0x30
	.long	0x70de
	.long	.LASF870
	.byte	0x1
	.value	0x137e
	.byte	0x1
	.quad	.LFB424
	.quad	.LFE424
	.byte	0x1
	.byte	0x57
	.uleb128 0x2b
	.long	.LASF227
	.byte	0x1
	.value	0x137d
	.long	0x109
	.byte	0x1
	.byte	0x55
	.uleb128 0x2d
	.string	"s"
	.byte	0x1
	.value	0x137f
	.long	0x7039
	.byte	0x1
	.byte	0x56
	.uleb128 0x32
	.string	"s1"
	.byte	0x1
	.value	0x1380
	.long	0x6b13
	.uleb128 0x2c
	.long	.LASF710
	.byte	0x1
	.value	0x1381
	.long	0x281a
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2d
	.string	"len"
	.byte	0x1
	.value	0x1382
	.long	0x5f3
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2d
	.string	"fd"
	.byte	0x1
	.value	0x1383
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.uleb128 0x38
	.long	0x70de
	.quad	.LBB164
	.quad	.LBE164
	.uleb128 0x40
	.long	0x70f0
	.byte	0x1
	.byte	0x5c
	.uleb128 0x3f
	.long	0x70fc
	.uleb128 0x37
	.long	.Ldebug_ranges0+0x5e0
	.uleb128 0x39
	.long	0x7107
	.byte	0x1
	.byte	0x56
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3b
	.long	0x7112
	.long	.LASF871
	.byte	0x1
	.value	0x12af
	.byte	0x1
	.long	0x6b13
	.byte	0x1
	.uleb128 0x42
	.long	.LASF272
	.byte	0x1
	.value	0x12ae
	.long	0x1c48
	.uleb128 0x41
	.string	"fd"
	.byte	0x1
	.value	0x12ae
	.long	0x3f
	.uleb128 0x32
	.string	"s"
	.byte	0x1
	.value	0x12b0
	.long	0x6b13
	.byte	0x0
	.uleb128 0x2f
	.long	0x7178
	.long	.LASF872
	.byte	0x1
	.value	0x1523
	.byte	0x1
	.long	0x6f
	.quad	.LFB426
	.quad	.LFE426
	.byte	0x1
	.byte	0x57
	.uleb128 0x2a
	.string	"buf"
	.byte	0x1
	.value	0x1522
	.long	0x116
	.byte	0x1
	.byte	0x55
	.uleb128 0x2b
	.long	.LASF313
	.byte	0x1
	.value	0x1522
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x2a
	.string	"p"
	.byte	0x1
	.value	0x1522
	.long	0x6f
	.byte	0x1
	.byte	0x58
	.uleb128 0x2d
	.string	"q"
	.byte	0x1
	.value	0x1524
	.long	0x116
	.byte	0x1
	.byte	0x59
	.uleb128 0x2c
	.long	.LASF873
	.byte	0x1
	.value	0x1525
	.long	0x3f
	.byte	0x1
	.byte	0x5a
	.byte	0x0
	.uleb128 0x2f
	.long	0x720d
	.long	.LASF874
	.byte	0x1
	.value	0x1540
	.byte	0x1
	.long	0x3f
	.quad	.LFB427
	.quad	.LFE427
	.byte	0x1
	.byte	0x57
	.uleb128 0x2a
	.string	"buf"
	.byte	0x1
	.value	0x153e
	.long	0x116
	.byte	0x1
	.byte	0x5d
	.uleb128 0x2b
	.long	.LASF313
	.byte	0x1
	.value	0x153e
	.long	0x3f
	.byte	0x1
	.byte	0x5e
	.uleb128 0x2a
	.string	"tag"
	.byte	0x1
	.value	0x153f
	.long	0x6f
	.byte	0x1
	.byte	0x5c
	.uleb128 0x2a
	.string	"str"
	.byte	0x1
	.value	0x153f
	.long	0x6f
	.byte	0x1
	.byte	0x52
	.uleb128 0x2d
	.string	"p"
	.byte	0x1
	.value	0x1541
	.long	0x6f
	.byte	0x1
	.byte	0x53
	.uleb128 0x2c
	.long	.LASF875
	.byte	0x1
	.value	0x1542
	.long	0x2158
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.Ldebug_ranges0+0x610
	.uleb128 0x34
	.long	.LASF811
	.byte	0x1
	.value	0x154a
	.long	0x2d
	.uleb128 0x34
	.long	.LASF812
	.byte	0x1
	.value	0x154a
	.long	0x2d
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.long	0x7249
	.byte	0x1
	.long	.LASF876
	.byte	0x1
	.value	0x1613
	.byte	0x1
	.quad	.LFB430
	.quad	.LFE430
	.byte	0x1
	.byte	0x57
	.uleb128 0x2c
	.long	.LASF272
	.byte	0x1
	.value	0x1614
	.long	0x1c48
	.byte	0x1
	.byte	0x56
	.uleb128 0x2d
	.string	"vc"
	.byte	0x1
	.value	0x1615
	.long	0x1c32
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x2f
	.long	0x728a
	.long	.LASF877
	.byte	0x1
	.value	0x162a
	.byte	0x1
	.long	0x3f
	.quad	.LFB431
	.quad	.LFE431
	.byte	0x1
	.byte	0x57
	.uleb128 0x2a
	.string	"fmt"
	.byte	0x1
	.value	0x1629
	.long	0x6f
	.byte	0x1
	.byte	0x51
	.uleb128 0x33
	.uleb128 0x2d
	.string	"ap"
	.byte	0x1
	.value	0x162b
	.long	0x4ed
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x29
	.long	0x72e7
	.byte	0x1
	.long	.LASF878
	.byte	0x1
	.value	0x163a
	.byte	0x1
	.long	0x3f
	.quad	.LFB432
	.quad	.LFE432
	.byte	0x1
	.byte	0x57
	.uleb128 0x2b
	.long	.LASF393
	.byte	0x1
	.value	0x1639
	.long	0x1f6a
	.byte	0x1
	.byte	0x55
	.uleb128 0x2a
	.string	"bus"
	.byte	0x1
	.value	0x1639
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x2b
	.long	.LASF394
	.byte	0x1
	.value	0x1639
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x2c
	.long	.LASF331
	.byte	0x1
	.value	0x163b
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x29
	.long	0x7336
	.byte	0x1
	.long	.LASF879
	.byte	0x1
	.value	0x1649
	.byte	0x1
	.long	0x3f
	.quad	.LFB433
	.quad	.LFE433
	.byte	0x1
	.byte	0x57
	.uleb128 0x2b
	.long	.LASF393
	.byte	0x1
	.value	0x1648
	.long	0x1f6a
	.byte	0x1
	.byte	0x55
	.uleb128 0x2c
	.long	.LASF880
	.byte	0x1
	.value	0x164a
	.long	0x3f
	.byte	0x1
	.byte	0x58
	.uleb128 0x2c
	.long	.LASF331
	.byte	0x1
	.value	0x164b
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.uleb128 0x31
	.long	0x738f
	.byte	0x1
	.long	.LASF881
	.byte	0x1
	.value	0x1783
	.byte	0x1
	.quad	.LFB435
	.quad	.LFE435
	.byte	0x1
	.byte	0x57
	.uleb128 0x2b
	.long	.LASF549
	.byte	0x1
	.value	0x1781
	.long	0x1b13
	.byte	0x1
	.byte	0x55
	.uleb128 0x2b
	.long	.LASF227
	.byte	0x1
	.value	0x1781
	.long	0x109
	.byte	0x1
	.byte	0x54
	.uleb128 0x2b
	.long	.LASF331
	.byte	0x1
	.value	0x1781
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x2b
	.long	.LASF330
	.byte	0x1
	.value	0x1782
	.long	0x1af1
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.uleb128 0x2f
	.long	0x74b6
	.long	.LASF882
	.byte	0x1
	.value	0x178c
	.byte	0x1
	.long	0x3f
	.quad	.LFB436
	.quad	.LFE436
	.byte	0x1
	.byte	0x57
	.uleb128 0x2b
	.long	.LASF340
	.byte	0x1
	.value	0x178b
	.long	0x6f
	.byte	0x1
	.byte	0x53
	.uleb128 0x2d
	.string	"p"
	.byte	0x1
	.value	0x178d
	.long	0x6f
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.string	"dev"
	.byte	0x1
	.value	0x178e
	.long	0x1a87
	.byte	0x1
	.byte	0x56
	.uleb128 0x2c
	.long	.LASF549
	.byte	0x1
	.value	0x178f
	.long	0x1b13
	.byte	0x1
	.byte	0x53
	.uleb128 0x36
	.long	0x7417
	.quad	.LBB169
	.quad	.LBE169
	.uleb128 0x34
	.long	.LASF811
	.byte	0x1
	.value	0x1796
	.long	0x2d
	.uleb128 0x34
	.long	.LASF812
	.byte	0x1
	.value	0x1796
	.long	0x2d
	.byte	0x0
	.uleb128 0x36
	.long	0x7445
	.quad	.LBB170
	.quad	.LBE170
	.uleb128 0x34
	.long	.LASF811
	.byte	0x1
	.value	0x1798
	.long	0x2d
	.uleb128 0x34
	.long	.LASF812
	.byte	0x1
	.value	0x1798
	.long	0x2d
	.byte	0x0
	.uleb128 0x36
	.long	0x7473
	.quad	.LBB171
	.quad	.LBE171
	.uleb128 0x34
	.long	.LASF811
	.byte	0x1
	.value	0x179a
	.long	0x2d
	.uleb128 0x34
	.long	.LASF812
	.byte	0x1
	.value	0x179a
	.long	0x2d
	.byte	0x0
	.uleb128 0x4c
	.long	0x7495
	.long	.Ldebug_ranges0+0x640
	.uleb128 0x34
	.long	.LASF811
	.byte	0x1
	.value	0x179e
	.long	0x2d
	.uleb128 0x34
	.long	.LASF812
	.byte	0x1
	.value	0x179e
	.long	0x2d
	.byte	0x0
	.uleb128 0x3a
	.quad	.LBB174
	.quad	.LBE174
	.uleb128 0x2d
	.string	"hub"
	.byte	0x1
	.value	0x17a9
	.long	0x1a87
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.long	0x74f3
	.byte	0x1
	.long	.LASF883
	.byte	0x1
	.value	0x17e3
	.byte	0x1
	.quad	.LFB438
	.quad	.LFE438
	.byte	0x1
	.byte	0x57
	.uleb128 0x2b
	.long	.LASF340
	.byte	0x1
	.value	0x17e2
	.long	0x6f
	.byte	0x1
	.byte	0x53
	.uleb128 0x2d
	.string	"ret"
	.byte	0x1
	.value	0x17e4
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x31
	.long	0x7583
	.byte	0x1
	.long	.LASF884
	.byte	0x1
	.value	0x17eb
	.byte	0x1
	.quad	.LFB439
	.quad	.LFE439
	.byte	0x1
	.byte	0x57
	.uleb128 0x2b
	.long	.LASF340
	.byte	0x1
	.value	0x17ea
	.long	0x6f
	.byte	0x1
	.byte	0x5c
	.uleb128 0x32
	.string	"ret"
	.byte	0x1
	.value	0x17ec
	.long	0x3f
	.uleb128 0x38
	.long	0x7583
	.quad	.LBB175
	.quad	.LBE175
	.uleb128 0x3f
	.long	0x7595
	.uleb128 0x3a
	.quad	.LBB176
	.quad	.LBE176
	.uleb128 0x39
	.long	0x75a1
	.byte	0x1
	.byte	0x56
	.uleb128 0x39
	.long	0x75ad
	.byte	0x1
	.byte	0x52
	.uleb128 0x39
	.long	0x75b9
	.byte	0x1
	.byte	0x53
	.uleb128 0x39
	.long	0x75c5
	.byte	0x1
	.byte	0x56
	.uleb128 0x39
	.long	0x75d1
	.byte	0x1
	.byte	0x51
	.uleb128 0x46
	.long	0x75dd
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3b
	.long	0x75e8
	.long	.LASF885
	.byte	0x1
	.value	0x17bd
	.byte	0x1
	.long	0x3f
	.byte	0x1
	.uleb128 0x42
	.long	.LASF340
	.byte	0x1
	.value	0x17bc
	.long	0x6f
	.uleb128 0x34
	.long	.LASF549
	.byte	0x1
	.value	0x17be
	.long	0x1b13
	.uleb128 0x34
	.long	.LASF886
	.byte	0x1
	.value	0x17bf
	.long	0x75e8
	.uleb128 0x32
	.string	"dev"
	.byte	0x1
	.value	0x17c0
	.long	0x1a87
	.uleb128 0x34
	.long	.LASF887
	.byte	0x1
	.value	0x17c1
	.long	0x3f
	.uleb128 0x34
	.long	.LASF339
	.byte	0x1
	.value	0x17c1
	.long	0x3f
	.uleb128 0x32
	.string	"p"
	.byte	0x1
	.value	0x17c2
	.long	0x6f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x1b13
	.uleb128 0x31
	.long	0x7639
	.byte	0x1
	.long	.LASF888
	.byte	0x1
	.value	0x17f3
	.byte	0x1
	.quad	.LFB440
	.quad	.LFE440
	.byte	0x1
	.byte	0x57
	.uleb128 0x2d
	.string	"dev"
	.byte	0x1
	.value	0x17f4
	.long	0x1a87
	.byte	0x1
	.byte	0x50
	.uleb128 0x2c
	.long	.LASF549
	.byte	0x1
	.value	0x17f5
	.long	0x1b13
	.byte	0x1
	.byte	0x53
	.uleb128 0x2c
	.long	.LASF889
	.byte	0x1
	.value	0x17f6
	.long	0x6f
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.uleb128 0x31
	.long	0x7676
	.byte	0x1
	.long	.LASF890
	.byte	0x1
	.value	0x181d
	.byte	0x1
	.quad	.LFB441
	.quad	.LFE441
	.byte	0x1
	.byte	0x57
	.uleb128 0x2b
	.long	.LASF615
	.byte	0x1
	.value	0x181c
	.long	0x1b86
	.byte	0x1
	.byte	0x53
	.uleb128 0x2c
	.long	.LASF668
	.byte	0x1
	.value	0x181e
	.long	0x324c
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x31
	.long	0x76c1
	.byte	0x1
	.long	.LASF891
	.byte	0x1
	.value	0x1827
	.byte	0x1
	.quad	.LFB442
	.quad	.LFE442
	.byte	0x1
	.byte	0x57
	.uleb128 0x2b
	.long	.LASF615
	.byte	0x1
	.value	0x1826
	.long	0x1b86
	.byte	0x1
	.byte	0x56
	.uleb128 0x2c
	.long	.LASF668
	.byte	0x1
	.value	0x1828
	.long	0x324c
	.byte	0x1
	.byte	0x53
	.uleb128 0x2d
	.string	"ptr"
	.byte	0x1
	.value	0x1828
	.long	0x76c1
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x324c
	.uleb128 0x31
	.long	0x76f6
	.byte	0x1
	.long	.LASF892
	.byte	0x1
	.value	0x1833
	.byte	0x1
	.quad	.LFB443
	.quad	.LFE443
	.byte	0x1
	.byte	0x57
	.uleb128 0x2c
	.long	.LASF893
	.byte	0x1
	.value	0x1834
	.long	0x324c
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x30
	.long	0x7753
	.long	.LASF894
	.byte	0x1
	.value	0x1842
	.byte	0x1
	.quad	.LFB444
	.quad	.LFE444
	.byte	0x1
	.byte	0x57
	.uleb128 0x2a
	.string	"ds"
	.byte	0x1
	.value	0x1841
	.long	0x181f
	.byte	0x1
	.byte	0x55
	.uleb128 0x2a
	.string	"x"
	.byte	0x1
	.value	0x1841
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x2a
	.string	"y"
	.byte	0x1
	.value	0x1841
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x2a
	.string	"w"
	.byte	0x1
	.value	0x1841
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x2a
	.string	"h"
	.byte	0x1
	.value	0x1841
	.long	0x3f
	.byte	0x1
	.byte	0x58
	.byte	0x0
	.uleb128 0x30
	.long	0x7798
	.long	.LASF895
	.byte	0x1
	.value	0x1846
	.byte	0x1
	.quad	.LFB445
	.quad	.LFE445
	.byte	0x1
	.byte	0x57
	.uleb128 0x2a
	.string	"ds"
	.byte	0x1
	.value	0x1845
	.long	0x181f
	.byte	0x1
	.byte	0x55
	.uleb128 0x2a
	.string	"w"
	.byte	0x1
	.value	0x1845
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x2a
	.string	"h"
	.byte	0x1
	.value	0x1845
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x30
	.long	0x77c5
	.long	.LASF896
	.byte	0x1
	.value	0x184a
	.byte	0x1
	.quad	.LFB446
	.quad	.LFE446
	.byte	0x1
	.byte	0x57
	.uleb128 0x2a
	.string	"ds"
	.byte	0x1
	.value	0x1849
	.long	0x181f
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x29
	.long	0x7821
	.byte	0x1
	.long	.LASF897
	.byte	0x1
	.value	0x18ac
	.byte	0x1
	.long	0x3f
	.quad	.LFB450
	.quad	.LFE450
	.byte	0x1
	.byte	0x57
	.uleb128 0x2b
	.long	.LASF621
	.byte	0x1
	.value	0x18ab
	.long	0x3330
	.byte	0x1
	.byte	0x53
	.uleb128 0x2b
	.long	.LASF227
	.byte	0x1
	.value	0x18ab
	.long	0x109
	.byte	0x1
	.byte	0x56
	.uleb128 0x2d
	.string	"ppe"
	.byte	0x1
	.value	0x18ad
	.long	0x7821
	.byte	0x1
	.byte	0x51
	.uleb128 0x2d
	.string	"pe"
	.byte	0x1
	.value	0x18ad
	.long	0x7827
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x7827
	.uleb128 0x5
	.byte	0x8
	.long	0x333c
	.uleb128 0x31
	.long	0x7885
	.byte	0x1
	.long	.LASF898
	.byte	0x1
	.value	0x18b9
	.byte	0x1
	.quad	.LFB451
	.quad	.LFE451
	.byte	0x1
	.byte	0x57
	.uleb128 0x2b
	.long	.LASF621
	.byte	0x1
	.value	0x18b8
	.long	0x3330
	.byte	0x1
	.byte	0x52
	.uleb128 0x2b
	.long	.LASF227
	.byte	0x1
	.value	0x18b8
	.long	0x109
	.byte	0x1
	.byte	0x54
	.uleb128 0x2d
	.string	"ppe"
	.byte	0x1
	.value	0x18ba
	.long	0x7821
	.byte	0x1
	.byte	0x51
	.uleb128 0x2d
	.string	"pe"
	.byte	0x1
	.value	0x18ba
	.long	0x7827
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x29
	.long	0x7962
	.byte	0x1
	.long	.LASF899
	.byte	0x1
	.value	0x1905
	.byte	0x1
	.long	0x1769
	.quad	.LFB452
	.quad	.LFE452
	.byte	0x1
	.byte	0x57
	.uleb128 0x2b
	.long	.LASF810
	.byte	0x1
	.value	0x1904
	.long	0x6f
	.byte	0x1
	.byte	0x5c
	.uleb128 0x2b
	.long	.LASF597
	.byte	0x1
	.value	0x1904
	.long	0x6f
	.byte	0x1
	.byte	0x56
	.uleb128 0x2d
	.string	"f"
	.byte	0x1
	.value	0x1906
	.long	0x1769
	.byte	0x1
	.byte	0x53
	.uleb128 0x2e
	.long	.LASF719
	.byte	0x1
	.value	0x1917
	.quad	.L1331
	.uleb128 0x4c
	.long	0x7923
	.long	.Ldebug_ranges0+0x670
	.uleb128 0x34
	.long	.LASF811
	.byte	0x1
	.value	0x190b
	.long	0x2d
	.uleb128 0x34
	.long	.LASF812
	.byte	0x1
	.value	0x190b
	.long	0x2d
	.uleb128 0x37
	.long	.Ldebug_ranges0+0x6a0
	.uleb128 0x34
	.long	.LASF813
	.byte	0x1
	.value	0x190b
	.long	0x62ff
	.uleb128 0x2c
	.long	.LASF814
	.byte	0x1
	.value	0x190b
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.long	.Ldebug_ranges0+0x6d0
	.uleb128 0x34
	.long	.LASF811
	.byte	0x1
	.value	0x190d
	.long	0x2d
	.uleb128 0x34
	.long	.LASF812
	.byte	0x1
	.value	0x190d
	.long	0x2d
	.uleb128 0x37
	.long	.Ldebug_ranges0+0x700
	.uleb128 0x34
	.long	.LASF813
	.byte	0x1
	.value	0x190d
	.long	0x62ff
	.uleb128 0x2c
	.long	.LASF814
	.byte	0x1
	.value	0x190d
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.long	0x79bb
	.long	.LASF900
	.byte	0x1
	.value	0x191f
	.byte	0x1
	.long	0x1769
	.quad	.LFB453
	.quad	.LFE453
	.byte	0x1
	.byte	0x57
	.uleb128 0x2a
	.string	"bs"
	.byte	0x1
	.value	0x191e
	.long	0x1fba
	.byte	0x1
	.byte	0x56
	.uleb128 0x2b
	.long	.LASF901
	.byte	0x1
	.value	0x191e
	.long	0x153
	.byte	0x1
	.byte	0x5c
	.uleb128 0x2b
	.long	.LASF309
	.byte	0x1
	.value	0x191e
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.uleb128 0x2d
	.string	"f"
	.byte	0x1
	.value	0x1920
	.long	0x1769
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x31
	.long	0x79e8
	.byte	0x1
	.long	.LASF902
	.byte	0x1
	.value	0x192d
	.byte	0x1
	.quad	.LFB454
	.quad	.LFE454
	.byte	0x1
	.byte	0x57
	.uleb128 0x2a
	.string	"f"
	.byte	0x1
	.value	0x192c
	.long	0x1769
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x31
	.long	0x7a21
	.byte	0x1
	.long	.LASF903
	.byte	0x1
	.value	0x196e
	.byte	0x1
	.quad	.LFB458
	.quad	.LFE458
	.byte	0x1
	.byte	0x57
	.uleb128 0x2a
	.string	"f"
	.byte	0x1
	.value	0x196d
	.long	0x1769
	.byte	0x1
	.byte	0x55
	.uleb128 0x2a
	.string	"v"
	.byte	0x1
	.value	0x196d
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0x31
	.long	0x7a5a
	.byte	0x1
	.long	.LASF904
	.byte	0x1
	.value	0x19b6
	.byte	0x1
	.quad	.LFB464
	.quad	.LFE464
	.byte	0x1
	.byte	0x57
	.uleb128 0x2a
	.string	"f"
	.byte	0x1
	.value	0x19b5
	.long	0x1769
	.byte	0x1
	.byte	0x5c
	.uleb128 0x2a
	.string	"v"
	.byte	0x1
	.value	0x19b5
	.long	0x46
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x31
	.long	0x7a93
	.byte	0x1
	.long	.LASF905
	.byte	0x1
	.value	0x19be
	.byte	0x1
	.quad	.LFB465
	.quad	.LFE465
	.byte	0x1
	.byte	0x57
	.uleb128 0x2a
	.string	"f"
	.byte	0x1
	.value	0x19bd
	.long	0x1769
	.byte	0x1
	.byte	0x5c
	.uleb128 0x2a
	.string	"v"
	.byte	0x1
	.value	0x19bd
	.long	0x519
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x30
	.long	0x7acd
	.long	.LASF906
	.byte	0x1
	.value	0x5b1
	.byte	0x1
	.quad	.LFB305
	.quad	.LFE305
	.byte	0x1
	.byte	0x57
	.uleb128 0x2a
	.string	"f"
	.byte	0x1
	.value	0x5b0
	.long	0x1769
	.byte	0x1
	.byte	0x53
	.uleb128 0x2b
	.long	.LASF227
	.byte	0x1
	.value	0x5b0
	.long	0x109
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0x31
	.long	0x7b15
	.byte	0x1
	.long	.LASF907
	.byte	0x1
	.value	0x599
	.byte	0x1
	.quad	.LFB303
	.quad	.LFE303
	.byte	0x1
	.byte	0x57
	.uleb128 0x2a
	.string	"f"
	.byte	0x1
	.value	0x598
	.long	0x1769
	.byte	0x1
	.byte	0x56
	.uleb128 0x2a
	.string	"ts"
	.byte	0x1
	.value	0x598
	.long	0x420b
	.byte	0x1
	.byte	0x53
	.uleb128 0x2c
	.long	.LASF316
	.byte	0x1
	.value	0x59a
	.long	0x519
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0x31
	.long	0x7b4e
	.byte	0x1
	.long	.LASF908
	.byte	0x1
	.value	0x19b0
	.byte	0x1
	.quad	.LFB463
	.quad	.LFE463
	.byte	0x1
	.byte	0x57
	.uleb128 0x2a
	.string	"f"
	.byte	0x1
	.value	0x19af
	.long	0x1769
	.byte	0x1
	.byte	0x5c
	.uleb128 0x2a
	.string	"v"
	.byte	0x1
	.value	0x19af
	.long	0x46
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x30
	.long	0x7b88
	.long	.LASF909
	.byte	0x1
	.value	0x193e
	.byte	0x1
	.quad	.LFB455
	.quad	.LFE455
	.byte	0x1
	.byte	0x57
	.uleb128 0x2a
	.string	"f"
	.byte	0x1
	.value	0x193d
	.long	0x1769
	.byte	0x1
	.byte	0x53
	.uleb128 0x2d
	.string	"len"
	.byte	0x1
	.value	0x193f
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x29
	.long	0x7bb9
	.byte	0x1
	.long	.LASF910
	.byte	0x1
	.value	0x198c
	.byte	0x1
	.long	0x3f
	.quad	.LFB460
	.quad	.LFE460
	.byte	0x1
	.byte	0x57
	.uleb128 0x2a
	.string	"f"
	.byte	0x1
	.value	0x198b
	.long	0x1769
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x29
	.long	0x7bf6
	.byte	0x1
	.long	.LASF911
	.byte	0x1
	.value	0x19cc
	.byte	0x1
	.long	0x46
	.quad	.LFB467
	.quad	.LFE467
	.byte	0x1
	.byte	0x57
	.uleb128 0x2a
	.string	"f"
	.byte	0x1
	.value	0x19cb
	.long	0x1769
	.byte	0x1
	.byte	0x5c
	.uleb128 0x2d
	.string	"v"
	.byte	0x1
	.value	0x19cd
	.long	0x46
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x29
	.long	0x7c33
	.byte	0x1
	.long	.LASF912
	.byte	0x1
	.value	0x19d6
	.byte	0x1
	.long	0x519
	.quad	.LFB468
	.quad	.LFE468
	.byte	0x1
	.byte	0x57
	.uleb128 0x2a
	.string	"f"
	.byte	0x1
	.value	0x19d5
	.long	0x1769
	.byte	0x1
	.byte	0x5c
	.uleb128 0x2d
	.string	"v"
	.byte	0x1
	.value	0x19d7
	.long	0x519
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x2f
	.long	0x7c7f
	.long	.LASF913
	.byte	0x1
	.value	0x5bb
	.byte	0x1
	.long	0x3f
	.quad	.LFB306
	.quad	.LFE306
	.byte	0x1
	.byte	0x57
	.uleb128 0x2a
	.string	"f"
	.byte	0x1
	.value	0x5ba
	.long	0x1769
	.byte	0x1
	.byte	0x53
	.uleb128 0x2b
	.long	.LASF227
	.byte	0x1
	.value	0x5ba
	.long	0x109
	.byte	0x1
	.byte	0x54
	.uleb128 0x2b
	.long	.LASF625
	.byte	0x1
	.value	0x5ba
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.byte	0x0
	.uleb128 0x31
	.long	0x7cc7
	.byte	0x1
	.long	.LASF914
	.byte	0x1
	.value	0x5a5
	.byte	0x1
	.quad	.LFB304
	.quad	.LFE304
	.byte	0x1
	.byte	0x57
	.uleb128 0x2a
	.string	"f"
	.byte	0x1
	.value	0x5a4
	.long	0x1769
	.byte	0x1
	.byte	0x55
	.uleb128 0x2a
	.string	"ts"
	.byte	0x1
	.value	0x5a4
	.long	0x420b
	.byte	0x1
	.byte	0x53
	.uleb128 0x2c
	.long	.LASF316
	.byte	0x1
	.value	0x5a6
	.long	0x519
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x29
	.long	0x7d04
	.byte	0x1
	.long	.LASF915
	.byte	0x1
	.value	0x19c4
	.byte	0x1
	.long	0x46
	.quad	.LFB466
	.quad	.LFE466
	.byte	0x1
	.byte	0x57
	.uleb128 0x2a
	.string	"f"
	.byte	0x1
	.value	0x19c3
	.long	0x1769
	.byte	0x1
	.byte	0x53
	.uleb128 0x2d
	.string	"v"
	.byte	0x1
	.value	0x19c5
	.long	0x46
	.byte	0x1
	.byte	0x5c
	.byte	0x0
	.uleb128 0x31
	.long	0x7d31
	.byte	0x1
	.long	.LASF916
	.byte	0x1
	.value	0x1954
	.byte	0x1
	.quad	.LFB456
	.quad	.LFE456
	.byte	0x1
	.byte	0x57
	.uleb128 0x2a
	.string	"f"
	.byte	0x1
	.value	0x1953
	.long	0x1769
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x31
	.long	0x7d86
	.byte	0x1
	.long	.LASF917
	.byte	0x1
	.value	0x195e
	.byte	0x1
	.quad	.LFB457
	.quad	.LFE457
	.byte	0x1
	.byte	0x57
	.uleb128 0x2a
	.string	"f"
	.byte	0x1
	.value	0x195d
	.long	0x1769
	.byte	0x1
	.byte	0x5d
	.uleb128 0x2a
	.string	"buf"
	.byte	0x1
	.value	0x195d
	.long	0x1362
	.byte	0x1
	.byte	0x5e
	.uleb128 0x2b
	.long	.LASF245
	.byte	0x1
	.value	0x195d
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.uleb128 0x2d
	.string	"l"
	.byte	0x1
	.value	0x195f
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x29
	.long	0x7ded
	.byte	0x1
	.long	.LASF918
	.byte	0x1
	.value	0x1975
	.byte	0x1
	.long	0x3f
	.quad	.LFB459
	.quad	.LFE459
	.byte	0x1
	.byte	0x57
	.uleb128 0x2a
	.string	"f"
	.byte	0x1
	.value	0x1974
	.long	0x1769
	.byte	0x1
	.byte	0x5c
	.uleb128 0x2a
	.string	"buf"
	.byte	0x1
	.value	0x1974
	.long	0x1ad4
	.byte	0x1
	.byte	0x5e
	.uleb128 0x2b
	.long	.LASF919
	.byte	0x1
	.value	0x1974
	.long	0x3f
	.byte	0x1
	.byte	0x5f
	.uleb128 0x2c
	.long	.LASF245
	.byte	0x1
	.value	0x1976
	.long	0x3f
	.byte	0x1
	.byte	0x5d
	.uleb128 0x2d
	.string	"l"
	.byte	0x1
	.value	0x1976
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.byte	0x0
	.uleb128 0x29
	.long	0x7e1e
	.byte	0x1
	.long	.LASF920
	.byte	0x1
	.value	0x1996
	.byte	0x1
	.long	0x153
	.quad	.LFB461
	.quad	.LFE461
	.byte	0x1
	.byte	0x57
	.uleb128 0x2a
	.string	"f"
	.byte	0x1
	.value	0x1995
	.long	0x1769
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x29
	.long	0x7e6b
	.byte	0x1
	.long	.LASF921
	.byte	0x1
	.value	0x199b
	.byte	0x1
	.long	0x153
	.quad	.LFB462
	.quad	.LFE462
	.byte	0x1
	.byte	0x57
	.uleb128 0x2a
	.string	"f"
	.byte	0x1
	.value	0x199a
	.long	0x1769
	.byte	0x1
	.byte	0x53
	.uleb128 0x2a
	.string	"pos"
	.byte	0x1
	.value	0x199a
	.long	0x153
	.byte	0x1
	.byte	0x56
	.uleb128 0x2b
	.long	.LASF922
	.byte	0x1
	.value	0x199a
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x29
	.long	0x7f00
	.byte	0x1
	.long	.LASF923
	.byte	0x1
	.value	0x19ef
	.byte	0x1
	.long	0x3f
	.quad	.LFB469
	.quad	.LFE469
	.byte	0x1
	.byte	0x57
	.uleb128 0x2b
	.long	.LASF623
	.byte	0x1
	.value	0x19e9
	.long	0x6f
	.byte	0x1
	.byte	0x56
	.uleb128 0x2b
	.long	.LASF624
	.byte	0x1
	.value	0x19ea
	.long	0x3f
	.byte	0x1
	.byte	0x5c
	.uleb128 0x2b
	.long	.LASF625
	.byte	0x1
	.value	0x19eb
	.long	0x3f
	.byte	0x1
	.byte	0x5d
	.uleb128 0x2b
	.long	.LASF626
	.byte	0x1
	.value	0x19ec
	.long	0x33d7
	.byte	0x1
	.byte	0x5e
	.uleb128 0x2b
	.long	.LASF627
	.byte	0x1
	.value	0x19ed
	.long	0x33dd
	.byte	0x1
	.byte	0x5f
	.uleb128 0x2b
	.long	.LASF227
	.byte	0x1
	.value	0x19ee
	.long	0x109
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.string	"se"
	.byte	0x1
	.value	0x19f0
	.long	0x7f00
	.byte	0x1
	.byte	0x53
	.uleb128 0x2d
	.string	"pse"
	.byte	0x1
	.value	0x19f0
	.long	0x7f06
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x33e9
	.uleb128 0x5
	.byte	0x8
	.long	0x7f00
	.uleb128 0x2f
	.long	0x7f3d
	.long	.LASF924
	.byte	0x1
	.value	0x1a7b
	.byte	0x1
	.long	0x3f
	.quad	.LFB474
	.quad	.LFE474
	.byte	0x1
	.byte	0x57
	.uleb128 0x2a
	.string	"bs"
	.byte	0x1
	.value	0x1a7a
	.long	0x1fba
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x2f
	.long	0x7fa4
	.long	.LASF925
	.byte	0x1
	.value	0x1a82
	.byte	0x1
	.long	0x1fba
	.quad	.LFB475
	.quad	.LFE475
	.byte	0x1
	.byte	0x57
	.uleb128 0x2d
	.string	"bs"
	.byte	0x1
	.value	0x1a83
	.long	0x1fba
	.byte	0x1
	.byte	0x53
	.uleb128 0x2d
	.string	"i"
	.byte	0x1
	.value	0x1a84
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.uleb128 0x4e
	.string	"ok"
	.byte	0x1
	.value	0x1a8e
	.quad	.L1433
	.uleb128 0x38
	.long	0x7fa4
	.quad	.LBB185
	.quad	.LBE185
	.uleb128 0x3f
	.long	0x7fb6
	.byte	0x0
	.byte	0x0
	.uleb128 0x3b
	.long	0x7fc2
	.long	.LASF926
	.byte	0x1
	.value	0x1a73
	.byte	0x1
	.long	0x3f
	.byte	0x1
	.uleb128 0x41
	.string	"bs"
	.byte	0x1
	.value	0x1a72
	.long	0x1fba
	.byte	0x0
	.uleb128 0x31
	.long	0x8026
	.byte	0x1
	.long	.LASF927
	.byte	0x1
	.value	0x1b53
	.byte	0x1
	.quad	.LFB479
	.quad	.LFE479
	.byte	0x1
	.byte	0x57
	.uleb128 0x2b
	.long	.LASF257
	.byte	0x1
	.value	0x1b52
	.long	0x6f
	.byte	0x1
	.byte	0x5d
	.uleb128 0x2d
	.string	"bs"
	.byte	0x1
	.value	0x1b54
	.long	0x1fba
	.byte	0x1
	.byte	0x50
	.uleb128 0x2d
	.string	"bs1"
	.byte	0x1
	.value	0x1b54
	.long	0x1fba
	.byte	0x1
	.byte	0x53
	.uleb128 0x2d
	.string	"i"
	.byte	0x1
	.value	0x1b55
	.long	0x3f
	.byte	0x1
	.byte	0x5c
	.uleb128 0x2d
	.string	"ret"
	.byte	0x1
	.value	0x1b55
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.byte	0x0
	.uleb128 0x31
	.long	0x80a7
	.byte	0x1
	.long	.LASF928
	.byte	0x1
	.value	0x1b6e
	.byte	0x1
	.quad	.LFB480
	.quad	.LFE480
	.byte	0x1
	.byte	0x57
	.uleb128 0x2d
	.string	"bs"
	.byte	0x1
	.value	0x1b6f
	.long	0x1fba
	.byte	0x1
	.byte	0x5d
	.uleb128 0x2d
	.string	"bs1"
	.byte	0x1
	.value	0x1b6f
	.long	0x1fba
	.byte	0x1
	.byte	0x53
	.uleb128 0x2c
	.long	.LASF929
	.byte	0x1
	.value	0x1b70
	.long	0x80a7
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2d
	.string	"sn"
	.byte	0x1
	.value	0x1b70
	.long	0x80a7
	.byte	0x1
	.byte	0x51
	.uleb128 0x2c
	.long	.LASF930
	.byte	0x1
	.value	0x1b71
	.long	0x3f
	.byte	0x1
	.byte	0x5c
	.uleb128 0x2d
	.string	"i"
	.byte	0x1
	.value	0x1b71
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.uleb128 0x2d
	.string	"buf"
	.byte	0x1
	.value	0x1b72
	.long	0x1c22
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x2168
	.uleb128 0x30
	.long	0x80e6
	.long	.LASF931
	.byte	0x1
	.value	0x1b97
	.byte	0x1
	.quad	.LFB481
	.quad	.LFE481
	.byte	0x1
	.byte	0x57
	.uleb128 0x2a
	.string	"f"
	.byte	0x1
	.value	0x1b96
	.long	0x1769
	.byte	0x1
	.byte	0x5c
	.uleb128 0x2a
	.string	"dt"
	.byte	0x1
	.value	0x1b96
	.long	0x80e6
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x791
	.uleb128 0x30
	.long	0x8125
	.long	.LASF932
	.byte	0x1
	.value	0x1b9f
	.byte	0x1
	.quad	.LFB482
	.quad	.LFE482
	.byte	0x1
	.byte	0x57
	.uleb128 0x2a
	.string	"f"
	.byte	0x1
	.value	0x1b9e
	.long	0x1769
	.byte	0x1
	.byte	0x53
	.uleb128 0x2a
	.string	"dt"
	.byte	0x1
	.value	0x1b9e
	.long	0x80e6
	.byte	0x1
	.byte	0x5c
	.byte	0x0
	.uleb128 0x31
	.long	0x84de
	.byte	0x1
	.long	.LASF933
	.byte	0x1
	.value	0x1ba7
	.byte	0x1
	.quad	.LFB483
	.quad	.LFE483
	.byte	0x1
	.byte	0x57
	.uleb128 0x2a
	.string	"f"
	.byte	0x1
	.value	0x1ba6
	.long	0x1769
	.byte	0x1
	.byte	0x5c
	.uleb128 0x2b
	.long	.LASF227
	.byte	0x1
	.value	0x1ba6
	.long	0x109
	.byte	0x1
	.byte	0x54
	.uleb128 0x2d
	.string	"env"
	.byte	0x1
	.value	0x1ba8
	.long	0x2085
	.byte	0x1
	.byte	0x5d
	.uleb128 0x2c
	.long	.LASF934
	.byte	0x1
	.value	0x1ba9
	.long	0x503
	.byte	0x1
	.byte	0x53
	.uleb128 0x34
	.long	.LASF181
	.byte	0x1
	.value	0x1ba9
	.long	0x503
	.uleb128 0x2c
	.long	.LASF182
	.byte	0x1
	.value	0x1ba9
	.long	0x503
	.byte	0x1
	.byte	0x54
	.uleb128 0x34
	.long	.LASF935
	.byte	0x1
	.value	0x1ba9
	.long	0x503
	.uleb128 0x34
	.long	.LASF175
	.byte	0x1
	.value	0x1baa
	.long	0x50e
	.uleb128 0x2d
	.string	"i"
	.byte	0x1
	.value	0x1bab
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.uleb128 0x3e
	.long	0x81dd
	.long	0x84de
	.quad	.LBB189
	.quad	.LBE189
	.uleb128 0x3f
	.long	0x84eb
	.uleb128 0x3f
	.long	0x84f4
	.byte	0x0
	.uleb128 0x3e
	.long	0x8201
	.long	0x84de
	.quad	.LBB191
	.quad	.LBE191
	.uleb128 0x3f
	.long	0x84eb
	.uleb128 0x3f
	.long	0x84f4
	.byte	0x0
	.uleb128 0x3e
	.long	0x8225
	.long	0x84de
	.quad	.LBB195
	.quad	.LBE195
	.uleb128 0x3f
	.long	0x84eb
	.uleb128 0x3f
	.long	0x84f4
	.byte	0x0
	.uleb128 0x3e
	.long	0x8249
	.long	0x84de
	.quad	.LBB197
	.quad	.LBE197
	.uleb128 0x3f
	.long	0x84eb
	.uleb128 0x3f
	.long	0x84f4
	.byte	0x0
	.uleb128 0x3e
	.long	0x826d
	.long	0x850a
	.quad	.LBB199
	.quad	.LBE199
	.uleb128 0x3f
	.long	0x8517
	.uleb128 0x3f
	.long	0x8520
	.byte	0x0
	.uleb128 0x3e
	.long	0x8291
	.long	0x850a
	.quad	.LBB201
	.quad	.LBE201
	.uleb128 0x3f
	.long	0x8517
	.uleb128 0x3f
	.long	0x8520
	.byte	0x0
	.uleb128 0x3e
	.long	0x82b5
	.long	0x850a
	.quad	.LBB203
	.quad	.LBE203
	.uleb128 0x3f
	.long	0x8517
	.uleb128 0x3f
	.long	0x8520
	.byte	0x0
	.uleb128 0x3e
	.long	0x82d9
	.long	0x850a
	.quad	.LBB205
	.quad	.LBE205
	.uleb128 0x3f
	.long	0x8517
	.uleb128 0x3f
	.long	0x8520
	.byte	0x0
	.uleb128 0x36
	.long	0x830d
	.quad	.LBB207
	.quad	.LBE207
	.uleb128 0x2c
	.long	.LASF630
	.byte	0x1
	.value	0x1bca
	.long	0x519
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2d
	.string	"exp"
	.byte	0x1
	.value	0x1bcb
	.long	0x503
	.byte	0x2
	.byte	0x91
	.sleb128 30
	.byte	0x0
	.uleb128 0x3e
	.long	0x8331
	.long	0x84de
	.quad	.LBB208
	.quad	.LBE208
	.uleb128 0x3f
	.long	0x84eb
	.uleb128 0x3f
	.long	0x84f4
	.byte	0x0
	.uleb128 0x3e
	.long	0x8355
	.long	0x84de
	.quad	.LBB210
	.quad	.LBE210
	.uleb128 0x3f
	.long	0x84eb
	.uleb128 0x3f
	.long	0x84f4
	.byte	0x0
	.uleb128 0x3e
	.long	0x8379
	.long	0x84de
	.quad	.LBB212
	.quad	.LBE212
	.uleb128 0x3f
	.long	0x84eb
	.uleb128 0x3f
	.long	0x84f4
	.byte	0x0
	.uleb128 0x3e
	.long	0x839d
	.long	0x84de
	.quad	.LBB214
	.quad	.LBE214
	.uleb128 0x3f
	.long	0x84eb
	.uleb128 0x3f
	.long	0x84f4
	.byte	0x0
	.uleb128 0x3e
	.long	0x83c1
	.long	0x84de
	.quad	.LBB216
	.quad	.LBE216
	.uleb128 0x3f
	.long	0x84eb
	.uleb128 0x3f
	.long	0x84f4
	.byte	0x0
	.uleb128 0x3e
	.long	0x83e5
	.long	0x84de
	.quad	.LBB218
	.quad	.LBE218
	.uleb128 0x3f
	.long	0x84eb
	.uleb128 0x3f
	.long	0x84f4
	.byte	0x0
	.uleb128 0x3e
	.long	0x8409
	.long	0x84de
	.quad	.LBB220
	.quad	.LBE220
	.uleb128 0x3f
	.long	0x84eb
	.uleb128 0x3f
	.long	0x84f4
	.byte	0x0
	.uleb128 0x3e
	.long	0x842d
	.long	0x84de
	.quad	.LBB222
	.quad	.LBE222
	.uleb128 0x3f
	.long	0x84eb
	.uleb128 0x3f
	.long	0x84f4
	.byte	0x0
	.uleb128 0x3e
	.long	0x8451
	.long	0x84de
	.quad	.LBB224
	.quad	.LBE224
	.uleb128 0x3f
	.long	0x84eb
	.uleb128 0x3f
	.long	0x84f4
	.byte	0x0
	.uleb128 0x3e
	.long	0x8475
	.long	0x84de
	.quad	.LBB226
	.quad	.LBE226
	.uleb128 0x3f
	.long	0x84eb
	.uleb128 0x3f
	.long	0x84f4
	.byte	0x0
	.uleb128 0x3e
	.long	0x8499
	.long	0x8536
	.quad	.LBB228
	.quad	.LBE228
	.uleb128 0x3f
	.long	0x8543
	.uleb128 0x3f
	.long	0x854c
	.byte	0x0
	.uleb128 0x3e
	.long	0x84bd
	.long	0x8536
	.quad	.LBB230
	.quad	.LBE230
	.uleb128 0x3f
	.long	0x8543
	.uleb128 0x3f
	.long	0x854c
	.byte	0x0
	.uleb128 0x38
	.long	0x84de
	.quad	.LBB232
	.quad	.LBE232
	.uleb128 0x3f
	.long	0x84eb
	.uleb128 0x3f
	.long	0x84f4
	.byte	0x0
	.byte	0x0
	.uleb128 0x4f
	.long	0x84ff
	.long	.LASF936
	.byte	0x4
	.byte	0x1f
	.byte	0x1
	.byte	0x3
	.uleb128 0x50
	.string	"f"
	.byte	0x4
	.byte	0x1e
	.long	0x1769
	.uleb128 0x50
	.string	"pv"
	.byte	0x4
	.byte	0x1e
	.long	0x84ff
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x8505
	.uleb128 0x6
	.long	0x50e
	.uleb128 0x4f
	.long	0x852b
	.long	.LASF937
	.byte	0x4
	.byte	0x24
	.byte	0x1
	.byte	0x3
	.uleb128 0x50
	.string	"f"
	.byte	0x4
	.byte	0x23
	.long	0x1769
	.uleb128 0x50
	.string	"pv"
	.byte	0x4
	.byte	0x23
	.long	0x852b
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x8531
	.uleb128 0x6
	.long	0x503
	.uleb128 0x4f
	.long	0x8557
	.long	.LASF938
	.byte	0x4
	.byte	0x1a
	.byte	0x1
	.byte	0x3
	.uleb128 0x50
	.string	"f"
	.byte	0x4
	.byte	0x19
	.long	0x1769
	.uleb128 0x50
	.string	"pv"
	.byte	0x4
	.byte	0x19
	.long	0x8557
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x855d
	.uleb128 0x6
	.long	0x519
	.uleb128 0x29
	.long	0x896f
	.byte	0x1
	.long	.LASF939
	.byte	0x1
	.value	0x1c1c
	.byte	0x1
	.long	0x3f
	.quad	.LFB485
	.quad	.LFE485
	.byte	0x1
	.byte	0x57
	.uleb128 0x2a
	.string	"f"
	.byte	0x1
	.value	0x1c1b
	.long	0x1769
	.byte	0x1
	.byte	0x5d
	.uleb128 0x2b
	.long	.LASF227
	.byte	0x1
	.value	0x1c1b
	.long	0x109
	.byte	0x1
	.byte	0x5e
	.uleb128 0x2b
	.long	.LASF625
	.byte	0x1
	.value	0x1c1b
	.long	0x3f
	.byte	0x2
	.byte	0x91
	.sleb128 44
	.uleb128 0x32
	.string	"env"
	.byte	0x1
	.value	0x1c1d
	.long	0x2085
	.uleb128 0x2d
	.string	"i"
	.byte	0x1
	.value	0x1c1e
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.uleb128 0x2c
	.long	.LASF940
	.byte	0x1
	.value	0x1c1e
	.long	0x3f
	.byte	0x2
	.byte	0x91
	.sleb128 40
	.uleb128 0x34
	.long	.LASF175
	.byte	0x1
	.value	0x1c1f
	.long	0x50e
	.uleb128 0x2c
	.long	.LASF181
	.byte	0x1
	.value	0x1c20
	.long	0x503
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2c
	.long	.LASF182
	.byte	0x1
	.value	0x1c20
	.long	0x503
	.byte	0x2
	.byte	0x91
	.sleb128 14
	.uleb128 0x2c
	.long	.LASF934
	.byte	0x1
	.value	0x1c20
	.long	0x503
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2c
	.long	.LASF935
	.byte	0x1
	.value	0x1c20
	.long	0x503
	.byte	0x1
	.byte	0x51
	.uleb128 0x3e
	.long	0x8641
	.long	0x896f
	.quad	.LBB234
	.quad	.LBE234
	.uleb128 0x3f
	.long	0x897c
	.uleb128 0x3f
	.long	0x8985
	.byte	0x0
	.uleb128 0x3e
	.long	0x8665
	.long	0x896f
	.quad	.LBB236
	.quad	.LBE236
	.uleb128 0x3f
	.long	0x897c
	.uleb128 0x3f
	.long	0x8985
	.byte	0x0
	.uleb128 0x3e
	.long	0x8689
	.long	0x896f
	.quad	.LBB238
	.quad	.LBE238
	.uleb128 0x3f
	.long	0x897c
	.uleb128 0x3f
	.long	0x8985
	.byte	0x0
	.uleb128 0x3e
	.long	0x86ad
	.long	0x896f
	.quad	.LBB244
	.quad	.LBE244
	.uleb128 0x3f
	.long	0x897c
	.uleb128 0x3f
	.long	0x8985
	.byte	0x0
	.uleb128 0x3e
	.long	0x86d1
	.long	0x8996
	.quad	.LBB250
	.quad	.LBE250
	.uleb128 0x3f
	.long	0x89a3
	.uleb128 0x3f
	.long	0x89ac
	.byte	0x0
	.uleb128 0x3e
	.long	0x86f5
	.long	0x8996
	.quad	.LBB256
	.quad	.LBE256
	.uleb128 0x3f
	.long	0x89a3
	.uleb128 0x3f
	.long	0x89ac
	.byte	0x0
	.uleb128 0x3e
	.long	0x8719
	.long	0x8996
	.quad	.LBB262
	.quad	.LBE262
	.uleb128 0x3f
	.long	0x89a3
	.uleb128 0x3f
	.long	0x89ac
	.byte	0x0
	.uleb128 0x3e
	.long	0x873d
	.long	0x8996
	.quad	.LBB268
	.quad	.LBE268
	.uleb128 0x3f
	.long	0x89a3
	.uleb128 0x3f
	.long	0x89ac
	.byte	0x0
	.uleb128 0x4c
	.long	0x879e
	.long	.Ldebug_ranges0+0x730
	.uleb128 0x2c
	.long	.LASF630
	.byte	0x1
	.value	0x1c34
	.long	0x519
	.byte	0x1
	.byte	0x53
	.uleb128 0x32
	.string	"exp"
	.byte	0x1
	.value	0x1c35
	.long	0x503
	.uleb128 0x37
	.long	.Ldebug_ranges0+0x790
	.uleb128 0x32
	.string	"p"
	.byte	0x1
	.value	0x1c49
	.long	0x89bd
	.uleb128 0x38
	.long	0x89c3
	.quad	.LBB278
	.quad	.LBE278
	.uleb128 0x3f
	.long	0x89d1
	.uleb128 0x3f
	.long	0x89db
	.uleb128 0x37
	.long	.Ldebug_ranges0+0x7e0
	.uleb128 0x39
	.long	0x89e7
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3e
	.long	0x87c2
	.long	0x896f
	.quad	.LBB287
	.quad	.LBE287
	.uleb128 0x3f
	.long	0x897c
	.uleb128 0x3f
	.long	0x8985
	.byte	0x0
	.uleb128 0x3e
	.long	0x87e6
	.long	0x896f
	.quad	.LBB289
	.quad	.LBE289
	.uleb128 0x3f
	.long	0x897c
	.uleb128 0x3f
	.long	0x8985
	.byte	0x0
	.uleb128 0x3e
	.long	0x880a
	.long	0x896f
	.quad	.LBB295
	.quad	.LBE295
	.uleb128 0x3f
	.long	0x897c
	.uleb128 0x3f
	.long	0x8985
	.byte	0x0
	.uleb128 0x3e
	.long	0x882e
	.long	0x896f
	.quad	.LBB301
	.quad	.LBE301
	.uleb128 0x3f
	.long	0x897c
	.uleb128 0x3f
	.long	0x8985
	.byte	0x0
	.uleb128 0x3e
	.long	0x8852
	.long	0x896f
	.quad	.LBB307
	.quad	.LBE307
	.uleb128 0x3f
	.long	0x897c
	.uleb128 0x3f
	.long	0x8985
	.byte	0x0
	.uleb128 0x3e
	.long	0x8876
	.long	0x896f
	.quad	.LBB313
	.quad	.LBE313
	.uleb128 0x3f
	.long	0x897c
	.uleb128 0x3f
	.long	0x8985
	.byte	0x0
	.uleb128 0x3e
	.long	0x889a
	.long	0x896f
	.quad	.LBB319
	.quad	.LBE319
	.uleb128 0x3f
	.long	0x897c
	.uleb128 0x3f
	.long	0x8985
	.byte	0x0
	.uleb128 0x3e
	.long	0x88be
	.long	0x896f
	.quad	.LBB325
	.quad	.LBE325
	.uleb128 0x3f
	.long	0x897c
	.uleb128 0x3f
	.long	0x8985
	.byte	0x0
	.uleb128 0x3e
	.long	0x88e2
	.long	0x896f
	.quad	.LBB327
	.quad	.LBE327
	.uleb128 0x3f
	.long	0x897c
	.uleb128 0x3f
	.long	0x8985
	.byte	0x0
	.uleb128 0x3e
	.long	0x8906
	.long	0x896f
	.quad	.LBB329
	.quad	.LBE329
	.uleb128 0x3f
	.long	0x897c
	.uleb128 0x3f
	.long	0x8985
	.byte	0x0
	.uleb128 0x3e
	.long	0x892a
	.long	0x89f2
	.quad	.LBB335
	.quad	.LBE335
	.uleb128 0x3f
	.long	0x89ff
	.uleb128 0x3f
	.long	0x8a08
	.byte	0x0
	.uleb128 0x3e
	.long	0x894e
	.long	0x89f2
	.quad	.LBB337
	.quad	.LBE337
	.uleb128 0x3f
	.long	0x89ff
	.uleb128 0x3f
	.long	0x8a08
	.byte	0x0
	.uleb128 0x38
	.long	0x896f
	.quad	.LBB344
	.quad	.LBE344
	.uleb128 0x3f
	.long	0x897c
	.uleb128 0x3f
	.long	0x8985
	.byte	0x0
	.byte	0x0
	.uleb128 0x4f
	.long	0x8990
	.long	.LASF941
	.byte	0x4
	.byte	0x33
	.byte	0x1
	.byte	0x3
	.uleb128 0x50
	.string	"f"
	.byte	0x4
	.byte	0x32
	.long	0x1769
	.uleb128 0x50
	.string	"pv"
	.byte	0x4
	.byte	0x32
	.long	0x8990
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x50e
	.uleb128 0x4f
	.long	0x89b7
	.long	.LASF942
	.byte	0x4
	.byte	0x38
	.byte	0x1
	.byte	0x3
	.uleb128 0x50
	.string	"f"
	.byte	0x4
	.byte	0x37
	.long	0x1769
	.uleb128 0x50
	.string	"pv"
	.byte	0x4
	.byte	0x37
	.long	0x89b7
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x503
	.uleb128 0x5
	.byte	0x8
	.long	0x33f5
	.uleb128 0x4a
	.long	0x89f2
	.long	.LASF943
	.byte	0x1
	.value	0x1c10
	.byte	0x1
	.byte	0x1
	.uleb128 0x41
	.string	"p"
	.byte	0x1
	.value	0x1c0f
	.long	0x89bd
	.uleb128 0x42
	.long	.LASF944
	.byte	0x1
	.value	0x1c0f
	.long	0x519
	.uleb128 0x32
	.string	"e"
	.byte	0x1
	.value	0x1c11
	.long	0x3f
	.byte	0x0
	.uleb128 0x4f
	.long	0x8a13
	.long	.LASF945
	.byte	0x4
	.byte	0x2e
	.byte	0x1
	.byte	0x3
	.uleb128 0x50
	.string	"f"
	.byte	0x4
	.byte	0x2d
	.long	0x1769
	.uleb128 0x50
	.string	"pv"
	.byte	0x4
	.byte	0x2d
	.long	0x8a13
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x519
	.uleb128 0x30
	.long	0x8a61
	.long	.LASF946
	.byte	0x1
	.value	0x1df7
	.byte	0x1
	.quad	.LFB489
	.quad	.LFE489
	.byte	0x1
	.byte	0x57
	.uleb128 0x2a
	.string	"s"
	.byte	0x1
	.value	0x1df6
	.long	0x8a61
	.byte	0x1
	.byte	0x53
	.uleb128 0x2a
	.string	"buf"
	.byte	0x1
	.value	0x1df6
	.long	0x1362
	.byte	0x1
	.byte	0x5d
	.uleb128 0x2a
	.string	"len"
	.byte	0x1
	.value	0x1df6
	.long	0x3f
	.byte	0x1
	.byte	0x5c
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x3455
	.uleb128 0x2f
	.long	0x8ac1
	.long	.LASF947
	.byte	0x1
	.value	0x1dfe
	.byte	0x1
	.long	0x3f
	.quad	.LFB490
	.quad	.LFE490
	.byte	0x1
	.byte	0x57
	.uleb128 0x2a
	.string	"s"
	.byte	0x1
	.value	0x1dfd
	.long	0x8a61
	.byte	0x1
	.byte	0x53
	.uleb128 0x2a
	.string	"buf"
	.byte	0x1
	.value	0x1dfd
	.long	0x1362
	.byte	0x1
	.byte	0x54
	.uleb128 0x2a
	.string	"len"
	.byte	0x1
	.value	0x1dfd
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x2d
	.string	"ret"
	.byte	0x1
	.value	0x1dff
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x2f
	.long	0x8b29
	.long	.LASF948
	.byte	0x1
	.value	0x1e3a
	.byte	0x1
	.long	0x3f
	.quad	.LFB493
	.quad	.LFE493
	.byte	0x1
	.byte	0x57
	.uleb128 0x2a
	.string	"s"
	.byte	0x1
	.value	0x1e39
	.long	0x8b29
	.byte	0x1
	.byte	0x53
	.uleb128 0x2a
	.string	"buf"
	.byte	0x1
	.value	0x1e39
	.long	0x1ad4
	.byte	0x1
	.byte	0x54
	.uleb128 0x2a
	.string	"len"
	.byte	0x1
	.value	0x1e39
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x2d
	.string	"ret"
	.byte	0x1
	.value	0x1e3b
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.uleb128 0x2c
	.long	.LASF949
	.byte	0x1
	.value	0x1e3b
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x349b
	.uleb128 0x30
	.long	0x8c23
	.long	.LASF950
	.byte	0x1
	.value	0x1e58
	.byte	0x1
	.quad	.LFB495
	.quad	.LFE495
	.byte	0x1
	.byte	0x57
	.uleb128 0x2a
	.string	"f"
	.byte	0x1
	.value	0x1e57
	.long	0x1769
	.byte	0x1
	.byte	0x53
	.uleb128 0x2b
	.long	.LASF227
	.byte	0x1
	.value	0x1e57
	.long	0x109
	.byte	0x1
	.byte	0x54
	.uleb128 0x2d
	.string	"i"
	.byte	0x1
	.value	0x1e59
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.uleb128 0x2d
	.string	"s1"
	.byte	0x1
	.value	0x1e5a
	.long	0x3455
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x2d
	.string	"s"
	.byte	0x1
	.value	0x1e5a
	.long	0x8a61
	.byte	0x1
	.byte	0x56
	.uleb128 0x2d
	.string	"buf"
	.byte	0x1
	.value	0x1e5b
	.long	0x8c23
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x3e
	.long	0x8bda
	.long	0x8c33
	.quad	.LBB347
	.quad	.LBE347
	.uleb128 0x3f
	.long	0x8c45
	.uleb128 0x3f
	.long	0x8c4f
	.uleb128 0x3a
	.quad	.LBB348
	.quad	.LBE348
	.uleb128 0x39
	.long	0x8c59
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
	.long	0x8c66
	.quad	.LBB349
	.quad	.LBE349
	.uleb128 0x3f
	.long	0x8c74
	.uleb128 0x3a
	.quad	.LBB350
	.quad	.LBE350
	.uleb128 0x39
	.long	0x8c7e
	.byte	0x1
	.byte	0x51
	.uleb128 0x39
	.long	0x8c8a
	.byte	0x1
	.byte	0x5c
	.uleb128 0x45
	.long	0x8c96
	.quad	.L1658
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
	.long	0x8c33
	.long	0x4f8
	.uleb128 0x8
	.long	0x61
	.byte	0x9
	.byte	0x0
	.uleb128 0x3b
	.long	0x8c66
	.long	.LASF951
	.byte	0x1
	.value	0x1de8
	.byte	0x1
	.long	0x3f
	.byte	0x1
	.uleb128 0x41
	.string	"s"
	.byte	0x1
	.value	0x1de7
	.long	0x8a61
	.uleb128 0x41
	.string	"f"
	.byte	0x1
	.value	0x1de7
	.long	0x1769
	.uleb128 0x32
	.string	"ret"
	.byte	0x1
	.value	0x1de9
	.long	0x3f
	.byte	0x0
	.uleb128 0x4a
	.long	0x8c9f
	.long	.LASF952
	.byte	0x1
	.value	0x1e11
	.byte	0x1
	.byte	0x1
	.uleb128 0x41
	.string	"s"
	.byte	0x1
	.value	0x1e10
	.long	0x8a61
	.uleb128 0x32
	.string	"len"
	.byte	0x1
	.value	0x1e12
	.long	0x3f
	.uleb128 0x32
	.string	"ret"
	.byte	0x1
	.value	0x1e12
	.long	0x3f
	.uleb128 0x47
	.long	.LASF719
	.byte	0x1
	.value	0x1e24
	.byte	0x0
	.uleb128 0x2f
	.long	0x8dea
	.long	.LASF953
	.byte	0x1
	.value	0x1e83
	.byte	0x1
	.long	0x3f
	.quad	.LFB496
	.quad	.LFE496
	.byte	0x1
	.byte	0x57
	.uleb128 0x2a
	.string	"f"
	.byte	0x1
	.value	0x1e82
	.long	0x1769
	.byte	0x1
	.byte	0x53
	.uleb128 0x2b
	.long	.LASF227
	.byte	0x1
	.value	0x1e82
	.long	0x109
	.byte	0x1
	.byte	0x54
	.uleb128 0x2b
	.long	.LASF625
	.byte	0x1
	.value	0x1e82
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x2d
	.string	"s1"
	.byte	0x1
	.value	0x1e84
	.long	0x349b
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2d
	.string	"s"
	.byte	0x1
	.value	0x1e84
	.long	0x8b29
	.byte	0x1
	.byte	0x56
	.uleb128 0x2d
	.string	"buf"
	.byte	0x1
	.value	0x1e85
	.long	0x8c23
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.string	"i"
	.byte	0x1
	.value	0x1e86
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.uleb128 0x2e
	.long	.LASF954
	.byte	0x1
	.value	0x1eb1
	.quad	.L1688
	.uleb128 0x3e
	.long	0x8d60
	.long	0x8dea
	.quad	.LBB351
	.quad	.LBE351
	.uleb128 0x3f
	.long	0x8dfc
	.uleb128 0x3f
	.long	0x8e06
	.uleb128 0x37
	.long	.Ldebug_ranges0+0x810
	.uleb128 0x39
	.long	0x8e10
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.uleb128 0x3e
	.long	0x8d7f
	.long	0x8e1d
	.quad	.LBB355
	.quad	.LBE355
	.uleb128 0x3f
	.long	0x8e2b
	.byte	0x0
	.uleb128 0x3e
	.long	0x8db5
	.long	0x8e36
	.quad	.LBB357
	.quad	.LBE357
	.uleb128 0x3f
	.long	0x8e48
	.uleb128 0x3f
	.long	0x8e52
	.uleb128 0x37
	.long	.Ldebug_ranges0+0x840
	.uleb128 0x39
	.long	0x8e5e
	.byte	0x1
	.byte	0x5c
	.uleb128 0x46
	.long	0x8e68
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
	.long	0x8e75
	.quad	.LBB361
	.quad	.LBE361
	.uleb128 0x3f
	.long	0x8e87
	.uleb128 0x40
	.long	0x8e91
	.byte	0x1
	.byte	0x56
	.uleb128 0x3f
	.long	0x8e9d
	.uleb128 0x37
	.long	.Ldebug_ranges0+0x890
	.uleb128 0x39
	.long	0x8ea9
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3b
	.long	0x8e1d
	.long	.LASF955
	.byte	0x1
	.value	0x1e2f
	.byte	0x1
	.long	0x3f
	.byte	0x1
	.uleb128 0x41
	.string	"s"
	.byte	0x1
	.value	0x1e2e
	.long	0x8b29
	.uleb128 0x41
	.string	"f"
	.byte	0x1
	.value	0x1e2e
	.long	0x1769
	.uleb128 0x32
	.string	"ret"
	.byte	0x1
	.value	0x1e30
	.long	0x3f
	.byte	0x0
	.uleb128 0x4a
	.long	0x8e36
	.long	.LASF956
	.byte	0x1
	.value	0x1e53
	.byte	0x1
	.byte	0x1
	.uleb128 0x41
	.string	"s"
	.byte	0x1
	.value	0x1e52
	.long	0x8b29
	.byte	0x0
	.uleb128 0x3b
	.long	0x8e75
	.long	.LASF957
	.byte	0x1
	.value	0x1dd0
	.byte	0x1
	.long	0x3f
	.byte	0x1
	.uleb128 0x41
	.string	"f"
	.byte	0x1
	.value	0x1dcf
	.long	0x1769
	.uleb128 0x42
	.long	.LASF227
	.byte	0x1
	.value	0x1dcf
	.long	0x109
	.uleb128 0x32
	.string	"i"
	.byte	0x1
	.value	0x1dd1
	.long	0x3f
	.uleb128 0x32
	.string	"ret"
	.byte	0x1
	.value	0x1dd1
	.long	0x3f
	.byte	0x0
	.uleb128 0x3b
	.long	0x8eb4
	.long	.LASF958
	.byte	0x1
	.value	0x1dbc
	.byte	0x1
	.long	0x3f
	.byte	0x1
	.uleb128 0x41
	.string	"f"
	.byte	0x1
	.value	0x1dbb
	.long	0x1769
	.uleb128 0x41
	.string	"buf"
	.byte	0x1
	.value	0x1dbb
	.long	0x1ad4
	.uleb128 0x41
	.string	"len"
	.byte	0x1
	.value	0x1dbb
	.long	0x3f
	.uleb128 0x32
	.string	"v"
	.byte	0x1
	.value	0x1dbd
	.long	0x3f
	.byte	0x0
	.uleb128 0x29
	.long	0x8f00
	.byte	0x1
	.long	.LASF959
	.byte	0x1
	.value	0x1ed2
	.byte	0x1
	.long	0x3f
	.quad	.LFB498
	.quad	.LFE498
	.byte	0x1
	.byte	0x57
	.uleb128 0x2d
	.string	"bh"
	.byte	0x1
	.value	0x1ed3
	.long	0x1d2b
	.byte	0x1
	.byte	0x51
	.uleb128 0x32
	.string	"pbh"
	.byte	0x1
	.value	0x1ed3
	.long	0x8f00
	.uleb128 0x2d
	.string	"ret"
	.byte	0x1
	.value	0x1ed4
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x1d2b
	.uleb128 0x31
	.long	0x8f42
	.byte	0x1
	.long	.LASF960
	.byte	0x1
	.value	0x1ef4
	.byte	0x1
	.quad	.LFB500
	.quad	.LFE500
	.byte	0x1
	.byte	0x57
	.uleb128 0x2a
	.string	"bh"
	.byte	0x1
	.value	0x1ef3
	.long	0x1d2b
	.byte	0x1
	.byte	0x55
	.uleb128 0x2d
	.string	"pbh"
	.byte	0x1
	.value	0x1ef5
	.long	0x8f00
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x31
	.long	0x8f70
	.byte	0x1
	.long	.LASF961
	.byte	0x1
	.value	0x1f00
	.byte	0x1
	.quad	.LFB501
	.quad	.LFE501
	.byte	0x1
	.byte	0x57
	.uleb128 0x2a
	.string	"bh"
	.byte	0x1
	.value	0x1eff
	.long	0x1d2b
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x30
	.long	0x8fa8
	.long	.LASF962
	.byte	0x1
	.value	0x771
	.byte	0x1
	.quad	.LFB322
	.quad	.LFE322
	.byte	0x1
	.byte	0x57
	.uleb128 0x2b
	.long	.LASF227
	.byte	0x1
	.value	0x770
	.long	0x109
	.byte	0x1
	.byte	0x53
	.uleb128 0x32
	.string	"s"
	.byte	0x1
	.value	0x772
	.long	0x2f75
	.byte	0x0
	.uleb128 0x29
	.long	0x8fe6
	.byte	0x1
	.long	.LASF963
	.byte	0x1
	.value	0x1f0b
	.byte	0x1
	.long	0x3f
	.quad	.LFB502
	.quad	.LFE502
	.byte	0x1
	.byte	0x57
	.uleb128 0x2a
	.string	"m"
	.byte	0x1
	.value	0x1f0a
	.long	0x8fe6
	.byte	0x1
	.byte	0x55
	.uleb128 0x2d
	.string	"pm"
	.byte	0x1
	.value	0x1f0c
	.long	0x8fec
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x1876
	.uleb128 0x5
	.byte	0x8
	.long	0x8fe6
	.uleb128 0x30
	.long	0x902b
	.long	.LASF964
	.byte	0x1
	.value	0x1f24
	.byte	0x1
	.quad	.LFB504
	.quad	.LFE504
	.byte	0x1
	.byte	0x57
	.uleb128 0x2b
	.long	.LASF227
	.byte	0x1
	.value	0x1f23
	.long	0x109
	.byte	0x1
	.byte	0x53
	.uleb128 0x32
	.string	"ds"
	.byte	0x1
	.value	0x1f25
	.long	0x181f
	.byte	0x0
	.uleb128 0x29
	.long	0x9077
	.byte	0x1
	.long	.LASF965
	.byte	0x1
	.value	0x1f34
	.byte	0x1
	.long	0x9077
	.quad	.LFB505
	.quad	.LFE505
	.byte	0x1
	.byte	0x57
	.uleb128 0x2a
	.string	"cb"
	.byte	0x1
	.value	0x1f32
	.long	0x34e1
	.byte	0x1
	.byte	0x53
	.uleb128 0x2b
	.long	.LASF227
	.byte	0x1
	.value	0x1f33
	.long	0x109
	.byte	0x1
	.byte	0x56
	.uleb128 0x2d
	.string	"e"
	.byte	0x1
	.value	0x1f35
	.long	0x9077
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x1ed8
	.uleb128 0x31
	.long	0x90aa
	.byte	0x1
	.long	.LASF966
	.byte	0x1
	.value	0x1f42
	.byte	0x1
	.quad	.LFB506
	.quad	.LFE506
	.byte	0x1
	.byte	0x57
	.uleb128 0x2a
	.string	"e"
	.byte	0x1
	.value	0x1f41
	.long	0x9077
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x30
	.long	0x90e4
	.long	.LASF967
	.byte	0x1
	.value	0x1f48
	.byte	0x1
	.quad	.LFB507
	.quad	.LFE507
	.byte	0x1
	.byte	0x57
	.uleb128 0x2b
	.long	.LASF138
	.byte	0x1
	.value	0x1f47
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.uleb128 0x2d
	.string	"e"
	.byte	0x1
	.value	0x1f49
	.long	0x9077
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x31
	.long	0x9113
	.byte	0x1
	.long	.LASF968
	.byte	0x1
	.value	0x1f6b
	.byte	0x1
	.quad	.LFB511
	.quad	.LFE511
	.byte	0x1
	.byte	0x57
	.uleb128 0x2b
	.long	.LASF969
	.byte	0x1
	.value	0x1f6a
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x3c
	.byte	0x1
	.long	.LASF970
	.byte	0x1
	.value	0x1f61
	.byte	0x1
	.quad	.LFB510
	.quad	.LFE510
	.byte	0x1
	.byte	0x57
	.uleb128 0x30
	.long	0x91d9
	.long	.LASF971
	.byte	0x1
	.value	0x16c
	.byte	0x1
	.quad	.LFB252
	.quad	.LFE252
	.byte	0x1
	.byte	0x57
	.uleb128 0x2b
	.long	.LASF227
	.byte	0x1
	.value	0x16b
	.long	0x109
	.byte	0x1
	.byte	0x55
	.uleb128 0x2d
	.string	"buf"
	.byte	0x1
	.value	0x16d
	.long	0x3138
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.string	"cmd"
	.byte	0x1
	.value	0x16e
	.long	0x3f
	.uleb128 0x2d
	.string	"s"
	.byte	0x1
	.value	0x16f
	.long	0x45a9
	.byte	0x1
	.byte	0x53
	.uleb128 0x4e
	.string	"err"
	.byte	0x1
	.value	0x17f
	.quad	.L1764
	.uleb128 0x3e
	.long	0x91bd
	.long	0x91d9
	.quad	.LBB372
	.quad	.LBE372
	.uleb128 0x3f
	.long	0x91eb
	.uleb128 0x37
	.long	.Ldebug_ranges0+0x8e0
	.uleb128 0x46
	.long	0x91f7
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
	.long	0x9204
	.quad	.LBB374
	.quad	.LBE374
	.uleb128 0x3f
	.long	0x9212
	.byte	0x0
	.byte	0x0
	.uleb128 0x3b
	.long	0x9204
	.long	.LASF972
	.byte	0x1
	.value	0x125
	.byte	0x1
	.long	0x3f
	.byte	0x1
	.uleb128 0x42
	.long	.LASF973
	.byte	0x1
	.value	0x124
	.long	0x6f
	.uleb128 0x32
	.string	"cmd"
	.byte	0x1
	.value	0x126
	.long	0x3f
	.byte	0x0
	.uleb128 0x4a
	.long	0x921f
	.long	.LASF974
	.byte	0x1
	.value	0x145
	.byte	0x1
	.byte	0x1
	.uleb128 0x41
	.string	"cmd"
	.byte	0x1
	.value	0x144
	.long	0x3f
	.byte	0x0
	.uleb128 0x31
	.long	0x93a6
	.byte	0x1
	.long	.LASF975
	.byte	0x1
	.value	0x1b0d
	.byte	0x1
	.quad	.LFB478
	.quad	.LFE478
	.byte	0x1
	.byte	0x57
	.uleb128 0x2b
	.long	.LASF257
	.byte	0x1
	.value	0x1b0c
	.long	0x6f
	.byte	0x1
	.byte	0x5e
	.uleb128 0x2d
	.string	"bs"
	.byte	0x1
	.value	0x1b0e
	.long	0x1fba
	.byte	0x1
	.byte	0x5d
	.uleb128 0x2d
	.string	"bs1"
	.byte	0x1
	.value	0x1b0e
	.long	0x1fba
	.byte	0x1
	.byte	0x53
	.uleb128 0x2c
	.long	.LASF976
	.byte	0x1
	.value	0x1b0f
	.long	0x20e6
	.byte	0x3
	.byte	0x91
	.sleb128 272
	.uleb128 0x2d
	.string	"bdi"
	.byte	0x1
	.value	0x1b0f
	.long	0x93a6
	.byte	0x1
	.byte	0x5f
	.uleb128 0x2d
	.string	"f"
	.byte	0x1
	.value	0x1b10
	.long	0x1769
	.byte	0x1
	.byte	0x56
	.uleb128 0x2d
	.string	"i"
	.byte	0x1
	.value	0x1b11
	.long	0x3f
	.byte	0x1
	.byte	0x5c
	.uleb128 0x2d
	.string	"ret"
	.byte	0x1
	.value	0x1b11
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.uleb128 0x2c
	.long	.LASF977
	.byte	0x1
	.value	0x1b12
	.long	0x3f
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2e
	.long	.LASF978
	.byte	0x1
	.value	0x1b4d
	.quad	.L1804
	.uleb128 0x3e
	.long	0x9358
	.long	0x93ac
	.quad	.LBB386
	.quad	.LBE386
	.uleb128 0x3f
	.long	0x93be
	.uleb128 0x37
	.long	.Ldebug_ranges0+0x910
	.uleb128 0x46
	.long	0x93c8
	.uleb128 0x39
	.long	0x93d3
	.byte	0x1
	.byte	0x53
	.uleb128 0x39
	.long	0x93df
	.byte	0x1
	.byte	0x53
	.uleb128 0x39
	.long	0x93eb
	.byte	0x1
	.byte	0x5c
	.uleb128 0x39
	.long	0x93f7
	.byte	0x1
	.byte	0x5f
	.uleb128 0x39
	.long	0x9403
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x39
	.long	0x940f
	.byte	0x1
	.byte	0x53
	.uleb128 0x39
	.long	0x941b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x39
	.long	0x9427
	.byte	0x1
	.byte	0x5e
	.uleb128 0x39
	.long	0x9433
	.byte	0x1
	.byte	0x50
	.uleb128 0x39
	.long	0x943d
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x45
	.long	0x9449
	.quad	.L1810
	.uleb128 0x45
	.long	0x9451
	.quad	.L1812
	.byte	0x0
	.byte	0x0
	.uleb128 0x3e
	.long	0x9389
	.long	0x945a
	.quad	.LBB390
	.quad	.LBE390
	.uleb128 0x3f
	.long	0x946c
	.uleb128 0x3f
	.long	0x9478
	.uleb128 0x37
	.long	.Ldebug_ranges0+0x960
	.uleb128 0x39
	.long	0x9484
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.byte	0x0
	.uleb128 0x3a
	.quad	.LBB394
	.quad	.LBE394
	.uleb128 0x46
	.long	0x9490
	.uleb128 0x46
	.long	0x949c
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x20e6
	.uleb128 0x3b
	.long	0x945a
	.long	.LASF979
	.byte	0x1
	.value	0x1a3e
	.byte	0x1
	.long	0x3f
	.byte	0x1
	.uleb128 0x41
	.string	"f"
	.byte	0x1
	.value	0x1a3d
	.long	0x1769
	.uleb128 0x32
	.string	"se"
	.byte	0x1
	.value	0x1a3f
	.long	0x7f00
	.uleb128 0x32
	.string	"len"
	.byte	0x1
	.value	0x1a40
	.long	0x3f
	.uleb128 0x32
	.string	"ret"
	.byte	0x1
	.value	0x1a40
	.long	0x3f
	.uleb128 0x34
	.long	.LASF624
	.byte	0x1
	.value	0x1a40
	.long	0x3f
	.uleb128 0x34
	.long	.LASF980
	.byte	0x1
	.value	0x1a40
	.long	0x3f
	.uleb128 0x34
	.long	.LASF625
	.byte	0x1
	.value	0x1a40
	.long	0x3f
	.uleb128 0x34
	.long	.LASF981
	.byte	0x1
	.value	0x1a41
	.long	0x153
	.uleb128 0x34
	.long	.LASF982
	.byte	0x1
	.value	0x1a41
	.long	0x153
	.uleb128 0x34
	.long	.LASF983
	.byte	0x1
	.value	0x1a41
	.long	0x153
	.uleb128 0x32
	.string	"v"
	.byte	0x1
	.value	0x1a42
	.long	0x46
	.uleb128 0x34
	.long	.LASF623
	.byte	0x1
	.value	0x1a43
	.long	0x1c22
	.uleb128 0x47
	.long	.LASF719
	.byte	0x1
	.value	0x1a4a
	.uleb128 0x47
	.long	.LASF978
	.byte	0x1
	.value	0x1a6d
	.byte	0x0
	.uleb128 0x3b
	.long	0x94e2
	.long	.LASF984
	.byte	0x1
	.value	0x1a32
	.byte	0x1
	.long	0x7f00
	.byte	0x1
	.uleb128 0x42
	.long	.LASF623
	.byte	0x1
	.value	0x1a31
	.long	0x6f
	.uleb128 0x42
	.long	.LASF624
	.byte	0x1
	.value	0x1a31
	.long	0x3f
	.uleb128 0x32
	.string	"se"
	.byte	0x1
	.value	0x1a33
	.long	0x7f00
	.uleb128 0x49
	.uleb128 0x34
	.long	.LASF811
	.byte	0x1
	.value	0x1a36
	.long	0x2d
	.uleb128 0x34
	.long	.LASF812
	.byte	0x1
	.value	0x1a36
	.long	0x2d
	.uleb128 0x48
	.long	0x94c6
	.uleb128 0x34
	.long	.LASF985
	.byte	0x1
	.value	0x1a36
	.long	0x62ff
	.uleb128 0x34
	.long	.LASF814
	.byte	0x1
	.value	0x1a36
	.long	0x3f
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x34
	.long	.LASF813
	.byte	0x1
	.value	0x1a36
	.long	0x62ff
	.uleb128 0x34
	.long	.LASF814
	.byte	0x1
	.value	0x1a36
	.long	0x3f
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.long	0x96b7
	.byte	0x1
	.long	.LASF986
	.byte	0x1
	.value	0x1aaa
	.byte	0x1
	.quad	.LFB477
	.quad	.LFE477
	.byte	0x1
	.byte	0x57
	.uleb128 0x2b
	.long	.LASF257
	.byte	0x1
	.value	0x1aa9
	.long	0x6f
	.byte	0x1
	.byte	0x5e
	.uleb128 0x2d
	.string	"bs"
	.byte	0x1
	.value	0x1aab
	.long	0x1fba
	.byte	0x1
	.byte	0x5f
	.uleb128 0x2d
	.string	"bs1"
	.byte	0x1
	.value	0x1aab
	.long	0x1fba
	.byte	0x1
	.byte	0x53
	.uleb128 0x2d
	.string	"sn1"
	.byte	0x1
	.value	0x1aac
	.long	0x2168
	.byte	0x3
	.byte	0x91
	.sleb128 480
	.uleb128 0x32
	.string	"sn"
	.byte	0x1
	.value	0x1aac
	.long	0x80a7
	.uleb128 0x2c
	.long	.LASF987
	.byte	0x1
	.value	0x1aac
	.long	0x2168
	.byte	0x3
	.byte	0x91
	.sleb128 64
	.uleb128 0x34
	.long	.LASF988
	.byte	0x1
	.value	0x1aac
	.long	0x80a7
	.uleb128 0x2c
	.long	.LASF989
	.byte	0x1
	.value	0x1aad
	.long	0x3f
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x2d
	.string	"ret"
	.byte	0x1
	.value	0x1aad
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.uleb128 0x2d
	.string	"i"
	.byte	0x1
	.value	0x1aad
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.uleb128 0x2c
	.long	.LASF976
	.byte	0x1
	.value	0x1aae
	.long	0x20e6
	.byte	0x2
	.byte	0x91
	.sleb128 48
	.uleb128 0x32
	.string	"bdi"
	.byte	0x1
	.value	0x1aae
	.long	0x93a6
	.uleb128 0x2d
	.string	"f"
	.byte	0x1
	.value	0x1aaf
	.long	0x1769
	.byte	0x1
	.byte	0x56
	.uleb128 0x2c
	.long	.LASF977
	.byte	0x1
	.value	0x1ab0
	.long	0x3f
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2d
	.string	"tv"
	.byte	0x1
	.value	0x1ab4
	.long	0x1b9
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x2e
	.long	.LASF978
	.byte	0x1
	.value	0x1b07
	.quad	.L1863
	.uleb128 0x3e
	.long	0x9663
	.long	0x96b7
	.quad	.LBB399
	.quad	.LBE399
	.uleb128 0x3f
	.long	0x96c9
	.uleb128 0x3f
	.long	0x96d4
	.uleb128 0x3f
	.long	0x96e0
	.uleb128 0x37
	.long	.Ldebug_ranges0+0x990
	.uleb128 0x39
	.long	0x96ec
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x39
	.long	0x96f8
	.byte	0x1
	.byte	0x53
	.uleb128 0x39
	.long	0x9703
	.byte	0x1
	.byte	0x5c
	.uleb128 0x39
	.long	0x970f
	.byte	0x1
	.byte	0x56
	.uleb128 0x39
	.long	0x9719
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x4c
	.long	0x9645
	.long	.Ldebug_ranges0+0x9c0
	.uleb128 0x46
	.long	0x972a
	.uleb128 0x46
	.long	0x9736
	.byte	0x0
	.uleb128 0x3a
	.quad	.LBB403
	.quad	.LBE403
	.uleb128 0x46
	.long	0x977c
	.uleb128 0x46
	.long	0x9788
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
	.long	0x97ce
	.quad	.LBB404
	.quad	.LBE404
	.uleb128 0x3f
	.long	0x97e0
	.uleb128 0x3a
	.quad	.LBB405
	.quad	.LBE405
	.uleb128 0x39
	.long	0x97ea
	.byte	0x1
	.byte	0x5c
	.uleb128 0x39
	.long	0x97f5
	.byte	0x1
	.byte	0x5d
	.uleb128 0x46
	.long	0x9801
	.uleb128 0x39
	.long	0x980d
	.byte	0x1
	.byte	0x5e
	.uleb128 0x46
	.long	0x9819
	.uleb128 0x39
	.long	0x9825
	.byte	0x1
	.byte	0x5f
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3b
	.long	0x97ce
	.long	.LASF990
	.byte	0x1
	.value	0x1a95
	.byte	0x1
	.long	0x3f
	.byte	0x1
	.uleb128 0x41
	.string	"bs"
	.byte	0x1
	.value	0x1a93
	.long	0x1fba
	.uleb128 0x42
	.long	.LASF991
	.byte	0x1
	.value	0x1a93
	.long	0x80a7
	.uleb128 0x42
	.long	.LASF257
	.byte	0x1
	.value	0x1a94
	.long	0x6f
	.uleb128 0x34
	.long	.LASF929
	.byte	0x1
	.value	0x1a96
	.long	0x80a7
	.uleb128 0x32
	.string	"sn"
	.byte	0x1
	.value	0x1a96
	.long	0x80a7
	.uleb128 0x34
	.long	.LASF930
	.byte	0x1
	.value	0x1a97
	.long	0x3f
	.uleb128 0x32
	.string	"i"
	.byte	0x1
	.value	0x1a97
	.long	0x3f
	.uleb128 0x32
	.string	"ret"
	.byte	0x1
	.value	0x1a97
	.long	0x3f
	.uleb128 0x48
	.long	0x977b
	.uleb128 0x34
	.long	.LASF811
	.byte	0x1
	.value	0x1a9f
	.long	0x2d
	.uleb128 0x34
	.long	.LASF812
	.byte	0x1
	.value	0x1a9f
	.long	0x2d
	.uleb128 0x48
	.long	0x9760
	.uleb128 0x34
	.long	.LASF985
	.byte	0x1
	.value	0x1a9f
	.long	0x62ff
	.uleb128 0x34
	.long	.LASF814
	.byte	0x1
	.value	0x1a9f
	.long	0x3f
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x34
	.long	.LASF813
	.byte	0x1
	.value	0x1a9f
	.long	0x62ff
	.uleb128 0x34
	.long	.LASF814
	.byte	0x1
	.value	0x1a9f
	.long	0x3f
	.byte	0x0
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x34
	.long	.LASF811
	.byte	0x1
	.value	0x1a9f
	.long	0x2d
	.uleb128 0x34
	.long	.LASF812
	.byte	0x1
	.value	0x1a9f
	.long	0x2d
	.uleb128 0x48
	.long	0x97b2
	.uleb128 0x34
	.long	.LASF985
	.byte	0x1
	.value	0x1a9f
	.long	0x62ff
	.uleb128 0x34
	.long	.LASF814
	.byte	0x1
	.value	0x1a9f
	.long	0x3f
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x34
	.long	.LASF813
	.byte	0x1
	.value	0x1a9f
	.long	0x62ff
	.uleb128 0x34
	.long	.LASF814
	.byte	0x1
	.value	0x1a9f
	.long	0x3f
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3b
	.long	0x9832
	.long	.LASF992
	.byte	0x1
	.value	0x1a09
	.byte	0x1
	.long	0x3f
	.byte	0x1
	.uleb128 0x41
	.string	"f"
	.byte	0x1
	.value	0x1a08
	.long	0x1769
	.uleb128 0x32
	.string	"se"
	.byte	0x1
	.value	0x1a0a
	.long	0x7f00
	.uleb128 0x32
	.string	"len"
	.byte	0x1
	.value	0x1a0b
	.long	0x3f
	.uleb128 0x32
	.string	"ret"
	.byte	0x1
	.value	0x1a0b
	.long	0x3f
	.uleb128 0x34
	.long	.LASF983
	.byte	0x1
	.value	0x1a0c
	.long	0x153
	.uleb128 0x34
	.long	.LASF993
	.byte	0x1
	.value	0x1a0c
	.long	0x153
	.uleb128 0x34
	.long	.LASF994
	.byte	0x1
	.value	0x1a0c
	.long	0x153
	.byte	0x0
	.uleb128 0x29
	.long	0x9872
	.byte	0x1
	.long	.LASF995
	.byte	0x1
	.value	0x1f55
	.byte	0x1
	.long	0x3f
	.quad	.LFB508
	.quad	.LFE508
	.byte	0x1
	.byte	0x57
	.uleb128 0x2a
	.string	"cb"
	.byte	0x1
	.value	0x1f54
	.long	0x9872
	.byte	0x1
	.byte	0x55
	.uleb128 0x2b
	.long	.LASF227
	.byte	0x1
	.value	0x1f54
	.long	0x109
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x1f27
	.uleb128 0x31
	.long	0x98b4
	.byte	0x1
	.long	.LASF996
	.byte	0x1
	.value	0x1f5c
	.byte	0x1
	.quad	.LFB509
	.quad	.LFE509
	.byte	0x1
	.byte	0x57
	.uleb128 0x2a
	.string	"cb"
	.byte	0x1
	.value	0x1f5b
	.long	0x9872
	.byte	0x1
	.byte	0x55
	.uleb128 0x2b
	.long	.LASF227
	.byte	0x1
	.value	0x1f5b
	.long	0x109
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0x31
	.long	0x990c
	.byte	0x1
	.long	.LASF997
	.byte	0x1
	.value	0x1f86
	.byte	0x1
	.quad	.LFB512
	.quad	.LFE512
	.byte	0x1
	.byte	0x57
	.uleb128 0x2b
	.long	.LASF621
	.byte	0x1
	.value	0x1f85
	.long	0x353f
	.byte	0x1
	.byte	0x56
	.uleb128 0x2b
	.long	.LASF227
	.byte	0x1
	.value	0x1f85
	.long	0x109
	.byte	0x1
	.byte	0x5c
	.uleb128 0x2d
	.string	"pre"
	.byte	0x1
	.value	0x1f87
	.long	0x990c
	.byte	0x1
	.byte	0x53
	.uleb128 0x2d
	.string	"re"
	.byte	0x1
	.value	0x1f87
	.long	0x9912
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x9912
	.uleb128 0x5
	.byte	0x8
	.long	0x354b
	.uleb128 0x3c
	.byte	0x1
	.long	.LASF998
	.byte	0x1
	.value	0x1fba
	.byte	0x1
	.quad	.LFB516
	.quad	.LFE516
	.byte	0x1
	.byte	0x57
	.uleb128 0x31
	.long	0x9b50
	.byte	0x1
	.long	.LASF999
	.byte	0x1
	.value	0x1fc1
	.byte	0x1
	.quad	.LFB517
	.quad	.LFE517
	.byte	0x1
	.byte	0x57
	.uleb128 0x2b
	.long	.LASF543
	.byte	0x1
	.value	0x1fc0
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.uleb128 0x2d
	.string	"ioh"
	.byte	0x1
	.value	0x1fc2
	.long	0x363a
	.byte	0x1
	.byte	0x53
	.uleb128 0x2c
	.long	.LASF1000
	.byte	0x1
	.value	0x1fc3
	.long	0x214
	.byte	0x3
	.byte	0x91
	.sleb128 288
	.uleb128 0x2c
	.long	.LASF1001
	.byte	0x1
	.value	0x1fc3
	.long	0x214
	.byte	0x3
	.byte	0x91
	.sleb128 160
	.uleb128 0x2c
	.long	.LASF1002
	.byte	0x1
	.value	0x1fc3
	.long	0x214
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x2d
	.string	"ret"
	.byte	0x1
	.value	0x1fc4
	.long	0x3f
	.byte	0x1
	.byte	0x5f
	.uleb128 0x2c
	.long	.LASF1003
	.byte	0x1
	.value	0x1fc4
	.long	0x3f
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2d
	.string	"tv"
	.byte	0x1
	.value	0x1fc8
	.long	0x1b9
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2d
	.string	"pe"
	.byte	0x1
	.value	0x1fc9
	.long	0x7827
	.byte	0x1
	.byte	0x53
	.uleb128 0x4c
	.long	0x99fd
	.long	.Ldebug_ranges0+0x9f0
	.uleb128 0x2c
	.long	.LASF1004
	.byte	0x1
	.value	0x1ff3
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x2c
	.long	.LASF1005
	.byte	0x1
	.value	0x1ff3
	.long	0x3f
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x36
	.long	0x9a2f
	.quad	.LBB410
	.quad	.LBE410
	.uleb128 0x2c
	.long	.LASF1004
	.byte	0x1
	.value	0x1ff4
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x2c
	.long	.LASF1005
	.byte	0x1
	.value	0x1ff4
	.long	0x3f
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x36
	.long	0x9a61
	.quad	.LBB411
	.quad	.LBE411
	.uleb128 0x2c
	.long	.LASF1004
	.byte	0x1
	.value	0x1ff5
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x2c
	.long	.LASF1005
	.byte	0x1
	.value	0x1ff5
	.long	0x3f
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x4c
	.long	0x9abd
	.long	.Ldebug_ranges0+0xa20
	.uleb128 0x2c
	.long	.LASF640
	.byte	0x1
	.value	0x2014
	.long	0x3634
	.byte	0x1
	.byte	0x56
	.uleb128 0x36
	.long	0x9a9c
	.quad	.LBB413
	.quad	.LBE413
	.uleb128 0x2c
	.long	.LASF814
	.byte	0x1
	.value	0x2017
	.long	0x7a
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x3a
	.quad	.LBB414
	.quad	.LBE414
	.uleb128 0x2c
	.long	.LASF814
	.byte	0x1
	.value	0x201a
	.long	0x7a
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
	.long	0x9aef
	.quad	.LBB416
	.quad	.LBE416
	.uleb128 0x2c
	.long	.LASF1004
	.byte	0x1
	.value	0x202d
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x2c
	.long	.LASF1005
	.byte	0x1
	.value	0x202d
	.long	0x3f
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x36
	.long	0x9b21
	.quad	.LBB417
	.quad	.LBE417
	.uleb128 0x2c
	.long	.LASF1004
	.byte	0x1
	.value	0x202e
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x2c
	.long	.LASF1005
	.byte	0x1
	.value	0x202e
	.long	0x3f
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x3a
	.quad	.LBB418
	.quad	.LBE418
	.uleb128 0x2c
	.long	.LASF1004
	.byte	0x1
	.value	0x202f
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x2c
	.long	.LASF1005
	.byte	0x1
	.value	0x202f
	.long	0x3f
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.long	0x9b7e
	.long	.LASF258
	.byte	0x1
	.value	0x2173
	.byte	0x1
	.quad	.LFB519
	.quad	.LFE519
	.byte	0x1
	.byte	0x57
	.uleb128 0x2b
	.long	.LASF1006
	.byte	0x1
	.value	0x2172
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x29
	.long	0x9bd9
	.byte	0x1
	.long	.LASF1007
	.byte	0x1
	.value	0x22fc
	.byte	0x1
	.long	0x3f
	.quad	.LFB520
	.quad	.LFE520
	.byte	0x1
	.byte	0x57
	.uleb128 0x2a
	.string	"bs"
	.byte	0x1
	.value	0x22fb
	.long	0x1fba
	.byte	0x1
	.byte	0x56
	.uleb128 0x2b
	.long	.LASF257
	.byte	0x1
	.value	0x22fb
	.long	0x6f
	.byte	0x1
	.byte	0x53
	.uleb128 0x2c
	.long	.LASF1008
	.byte	0x1
	.value	0x22fd
	.long	0x1c22
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.string	"i"
	.byte	0x1
	.value	0x22fe
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x2f
	.long	0xa21f
	.long	.LASF1009
	.byte	0x1
	.value	0x1657
	.byte	0x1
	.long	0x3f
	.quad	.LFB434
	.quad	.LFE434
	.byte	0x1
	.byte	0x57
	.uleb128 0x2a
	.string	"str"
	.byte	0x1
	.value	0x1656
	.long	0x6f
	.byte	0x1
	.byte	0x5f
	.uleb128 0x2b
	.long	.LASF1010
	.byte	0x1
	.value	0x1656
	.long	0x3f
	.byte	0x3
	.byte	0x91
	.sleb128 76
	.uleb128 0x2b
	.long	.LASF1011
	.byte	0x1
	.value	0x1656
	.long	0x8fe6
	.byte	0x3
	.byte	0x91
	.sleb128 64
	.uleb128 0x2d
	.string	"buf"
	.byte	0x1
	.value	0x1658
	.long	0x2158
	.byte	0x3
	.byte	0x91
	.sleb128 1344
	.uleb128 0x2c
	.long	.LASF1012
	.byte	0x1
	.value	0x1659
	.long	0x3138
	.byte	0x3
	.byte	0x91
	.sleb128 320
	.uleb128 0x2c
	.long	.LASF340
	.byte	0x1
	.value	0x165a
	.long	0x2158
	.byte	0x3
	.byte	0x91
	.sleb128 192
	.uleb128 0x2c
	.long	.LASF1013
	.byte	0x1
	.value	0x165b
	.long	0x6f
	.byte	0x2
	.byte	0x91
	.sleb128 56
	.uleb128 0x2c
	.long	.LASF393
	.byte	0x1
	.value	0x165c
	.long	0x1f6a
	.byte	0x1
	.byte	0x5d
	.uleb128 0x51
	.long	0x9c8d
	.byte	0x4
	.byte	0x1
	.value	0x165d
	.uleb128 0x1f
	.long	.LASF1014
	.sleb128 0
	.uleb128 0x1f
	.long	.LASF1015
	.sleb128 1
	.byte	0x0
	.uleb128 0x2c
	.long	.LASF1016
	.byte	0x1
	.value	0x165d
	.long	0x9c77
	.byte	0x2
	.byte	0x91
	.sleb128 52
	.uleb128 0x2c
	.long	.LASF1017
	.byte	0x1
	.value	0x165e
	.long	0x3f
	.byte	0x1
	.byte	0x5c
	.uleb128 0x2c
	.long	.LASF1018
	.byte	0x1
	.value	0x165e
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.uleb128 0x2c
	.long	.LASF1019
	.byte	0x1
	.value	0x165f
	.long	0x3f
	.byte	0x2
	.byte	0x91
	.sleb128 48
	.uleb128 0x2c
	.long	.LASF1020
	.byte	0x1
	.value	0x165f
	.long	0x3f
	.byte	0x2
	.byte	0x91
	.sleb128 44
	.uleb128 0x2c
	.long	.LASF751
	.byte	0x1
	.value	0x165f
	.long	0x3f
	.byte	0x2
	.byte	0x91
	.sleb128 40
	.uleb128 0x2c
	.long	.LASF1021
	.byte	0x1
	.value	0x165f
	.long	0x3f
	.byte	0x2
	.byte	0x91
	.sleb128 36
	.uleb128 0x2c
	.long	.LASF392
	.byte	0x1
	.value	0x1660
	.long	0x1fba
	.byte	0x1
	.byte	0x56
	.uleb128 0x2c
	.long	.LASF1022
	.byte	0x1
	.value	0x1661
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.uleb128 0x2c
	.long	.LASF331
	.byte	0x1
	.value	0x1662
	.long	0x3f
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x2c
	.long	.LASF1023
	.byte	0x1
	.value	0x1663
	.long	0x3f
	.byte	0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0x2c
	.long	.LASF1024
	.byte	0x1
	.value	0x1664
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x2c
	.long	.LASF1025
	.byte	0x1
	.value	0x1665
	.long	0xa21f
	.byte	0x3
	.byte	0x91
	.sleb128 80
	.uleb128 0x3e
	.long	0x9d90
	.long	0xa22f
	.quad	.LBB419
	.quad	.LBE419
	.uleb128 0x3f
	.long	0xa241
	.uleb128 0x3f
	.long	0xa24d
	.uleb128 0x40
	.long	0xa259
	.byte	0x1
	.byte	0x5d
	.uleb128 0x3f
	.long	0xa265
	.uleb128 0x37
	.long	.Ldebug_ranges0+0xa50
	.uleb128 0x39
	.long	0xa271
	.byte	0x1
	.byte	0x56
	.uleb128 0x39
	.long	0xa27b
	.byte	0x1
	.byte	0x5c
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
	.long	0x9db0
	.quad	.LBB424
	.quad	.LBE424
	.uleb128 0x46
	.long	0xa286
	.uleb128 0x46
	.long	0xa292
	.byte	0x0
	.uleb128 0x4c
	.long	0x9dd2
	.long	.Ldebug_ranges0+0xa90
	.uleb128 0x34
	.long	.LASF811
	.byte	0x1
	.value	0x1677
	.long	0x2d
	.uleb128 0x34
	.long	.LASF812
	.byte	0x1
	.value	0x1677
	.long	0x2d
	.byte	0x0
	.uleb128 0x36
	.long	0x9e00
	.quad	.LBB431
	.quad	.LBE431
	.uleb128 0x34
	.long	.LASF811
	.byte	0x1
	.value	0x1678
	.long	0x2d
	.uleb128 0x34
	.long	.LASF812
	.byte	0x1
	.value	0x1678
	.long	0x2d
	.byte	0x0
	.uleb128 0x36
	.long	0x9e2e
	.quad	.LBB432
	.quad	.LBE432
	.uleb128 0x34
	.long	.LASF811
	.byte	0x1
	.value	0x1679
	.long	0x2d
	.uleb128 0x34
	.long	.LASF812
	.byte	0x1
	.value	0x1679
	.long	0x2d
	.byte	0x0
	.uleb128 0x36
	.long	0x9e88
	.quad	.LBB433
	.quad	.LBE433
	.uleb128 0x34
	.long	.LASF811
	.byte	0x1
	.value	0x169b
	.long	0x2d
	.uleb128 0x34
	.long	.LASF812
	.byte	0x1
	.value	0x169b
	.long	0x2d
	.uleb128 0x3a
	.quad	.LBB434
	.quad	.LBE434
	.uleb128 0x34
	.long	.LASF813
	.byte	0x1
	.value	0x169b
	.long	0x62ff
	.uleb128 0x2c
	.long	.LASF814
	.byte	0x1
	.value	0x169b
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.uleb128 0x4c
	.long	0x9eaa
	.long	.Ldebug_ranges0+0xae0
	.uleb128 0x34
	.long	.LASF811
	.byte	0x1
	.value	0x169e
	.long	0x2d
	.uleb128 0x34
	.long	.LASF812
	.byte	0x1
	.value	0x169e
	.long	0x2d
	.byte	0x0
	.uleb128 0x4c
	.long	0x9ecc
	.long	.Ldebug_ranges0+0xb10
	.uleb128 0x34
	.long	.LASF811
	.byte	0x1
	.value	0x16dd
	.long	0x2d
	.uleb128 0x34
	.long	.LASF812
	.byte	0x1
	.value	0x16dd
	.long	0x2d
	.byte	0x0
	.uleb128 0x4c
	.long	0x9f0e
	.long	.Ldebug_ranges0+0xb40
	.uleb128 0x34
	.long	.LASF811
	.byte	0x1
	.value	0x16df
	.long	0x2d
	.uleb128 0x34
	.long	.LASF812
	.byte	0x1
	.value	0x16df
	.long	0x2d
	.uleb128 0x37
	.long	.Ldebug_ranges0+0xb70
	.uleb128 0x34
	.long	.LASF813
	.byte	0x1
	.value	0x16df
	.long	0x62ff
	.uleb128 0x2c
	.long	.LASF814
	.byte	0x1
	.value	0x16df
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.uleb128 0x4c
	.long	0x9f30
	.long	.Ldebug_ranges0+0xba0
	.uleb128 0x34
	.long	.LASF811
	.byte	0x1
	.value	0x16e1
	.long	0x2d
	.uleb128 0x34
	.long	.LASF812
	.byte	0x1
	.value	0x16e1
	.long	0x2d
	.byte	0x0
	.uleb128 0x4c
	.long	0x9f52
	.long	.Ldebug_ranges0+0xbd0
	.uleb128 0x34
	.long	.LASF811
	.byte	0x1
	.value	0x16ea
	.long	0x2d
	.uleb128 0x34
	.long	.LASF812
	.byte	0x1
	.value	0x16ea
	.long	0x2d
	.byte	0x0
	.uleb128 0x36
	.long	0x9f80
	.quad	.LBB445
	.quad	.LBE445
	.uleb128 0x34
	.long	.LASF811
	.byte	0x1
	.value	0x16ec
	.long	0x2d
	.uleb128 0x34
	.long	.LASF812
	.byte	0x1
	.value	0x16ec
	.long	0x2d
	.byte	0x0
	.uleb128 0x36
	.long	0x9fda
	.quad	.LBB446
	.quad	.LBE446
	.uleb128 0x34
	.long	.LASF811
	.byte	0x1
	.value	0x16fa
	.long	0x2d
	.uleb128 0x34
	.long	.LASF812
	.byte	0x1
	.value	0x16fa
	.long	0x2d
	.uleb128 0x3a
	.quad	.LBB447
	.quad	.LBE447
	.uleb128 0x34
	.long	.LASF813
	.byte	0x1
	.value	0x16fa
	.long	0x62ff
	.uleb128 0x2c
	.long	.LASF814
	.byte	0x1
	.value	0x16fa
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.uleb128 0x4c
	.long	0xa01c
	.long	.Ldebug_ranges0+0xc00
	.uleb128 0x34
	.long	.LASF811
	.byte	0x1
	.value	0x16fc
	.long	0x2d
	.uleb128 0x34
	.long	.LASF812
	.byte	0x1
	.value	0x16fc
	.long	0x2d
	.uleb128 0x37
	.long	.Ldebug_ranges0+0xc30
	.uleb128 0x34
	.long	.LASF813
	.byte	0x1
	.value	0x16fc
	.long	0x62ff
	.uleb128 0x2c
	.long	.LASF814
	.byte	0x1
	.value	0x16fc
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.uleb128 0x4c
	.long	0xa05e
	.long	.Ldebug_ranges0+0xc60
	.uleb128 0x34
	.long	.LASF811
	.byte	0x1
	.value	0x1705
	.long	0x2d
	.uleb128 0x34
	.long	.LASF812
	.byte	0x1
	.value	0x1705
	.long	0x2d
	.uleb128 0x37
	.long	.Ldebug_ranges0+0xc90
	.uleb128 0x34
	.long	.LASF813
	.byte	0x1
	.value	0x1705
	.long	0x62ff
	.uleb128 0x2c
	.long	.LASF814
	.byte	0x1
	.value	0x1705
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.uleb128 0x4c
	.long	0xa0a0
	.long	.Ldebug_ranges0+0xcc0
	.uleb128 0x34
	.long	.LASF811
	.byte	0x1
	.value	0x1707
	.long	0x2d
	.uleb128 0x34
	.long	.LASF812
	.byte	0x1
	.value	0x1707
	.long	0x2d
	.uleb128 0x37
	.long	.Ldebug_ranges0+0xcf0
	.uleb128 0x34
	.long	.LASF813
	.byte	0x1
	.value	0x1707
	.long	0x62ff
	.uleb128 0x2c
	.long	.LASF814
	.byte	0x1
	.value	0x1707
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.uleb128 0x4c
	.long	0xa0c2
	.long	.Ldebug_ranges0+0xd20
	.uleb128 0x34
	.long	.LASF811
	.byte	0x1
	.value	0x16a1
	.long	0x2d
	.uleb128 0x34
	.long	.LASF812
	.byte	0x1
	.value	0x16a1
	.long	0x2d
	.byte	0x0
	.uleb128 0x4c
	.long	0xa0e4
	.long	.Ldebug_ranges0+0xd50
	.uleb128 0x34
	.long	.LASF811
	.byte	0x1
	.value	0x16a4
	.long	0x2d
	.uleb128 0x34
	.long	.LASF812
	.byte	0x1
	.value	0x16a4
	.long	0x2d
	.byte	0x0
	.uleb128 0x36
	.long	0xa13e
	.quad	.LBB458
	.quad	.LBE458
	.uleb128 0x34
	.long	.LASF811
	.byte	0x1
	.value	0x16a7
	.long	0x2d
	.uleb128 0x34
	.long	.LASF812
	.byte	0x1
	.value	0x16a7
	.long	0x2d
	.uleb128 0x3a
	.quad	.LBB459
	.quad	.LBE459
	.uleb128 0x34
	.long	.LASF813
	.byte	0x1
	.value	0x16a7
	.long	0x62ff
	.uleb128 0x2c
	.long	.LASF814
	.byte	0x1
	.value	0x16a7
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
	.long	0xa198
	.quad	.LBB460
	.quad	.LBE460
	.uleb128 0x34
	.long	.LASF811
	.byte	0x1
	.value	0x16aa
	.long	0x2d
	.uleb128 0x34
	.long	.LASF812
	.byte	0x1
	.value	0x16aa
	.long	0x2d
	.uleb128 0x3a
	.quad	.LBB461
	.quad	.LBE461
	.uleb128 0x34
	.long	.LASF813
	.byte	0x1
	.value	0x16aa
	.long	0x62ff
	.uleb128 0x2c
	.long	.LASF814
	.byte	0x1
	.value	0x16aa
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
	.long	0xa1c6
	.quad	.LBB462
	.quad	.LBE462
	.uleb128 0x34
	.long	.LASF811
	.byte	0x1
	.value	0x167a
	.long	0x2d
	.uleb128 0x34
	.long	.LASF812
	.byte	0x1
	.value	0x167a
	.long	0x2d
	.byte	0x0
	.uleb128 0x36
	.long	0xa1f4
	.quad	.LBB463
	.quad	.LBE463
	.uleb128 0x34
	.long	.LASF811
	.byte	0x1
	.value	0x167b
	.long	0x2d
	.uleb128 0x34
	.long	.LASF812
	.byte	0x1
	.value	0x167b
	.long	0x2d
	.byte	0x0
	.uleb128 0x3a
	.quad	.LBB464
	.quad	.LBE464
	.uleb128 0x34
	.long	.LASF811
	.byte	0x1
	.value	0x167c
	.long	0x2d
	.uleb128 0x34
	.long	.LASF812
	.byte	0x1
	.value	0x167c
	.long	0x2d
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
	.long	0xa22f
	.long	0x116
	.uleb128 0x8
	.long	0x61
	.byte	0xc
	.byte	0x0
	.uleb128 0x3b
	.long	0xa2d8
	.long	.LASF1026
	.byte	0x1
	.value	0x1559
	.byte	0x1
	.long	0x3f
	.byte	0x1
	.uleb128 0x41
	.string	"buf"
	.byte	0x1
	.value	0x1557
	.long	0x116
	.uleb128 0x42
	.long	.LASF313
	.byte	0x1
	.value	0x1557
	.long	0x3f
	.uleb128 0x42
	.long	.LASF1025
	.byte	0x1
	.value	0x1558
	.long	0x2919
	.uleb128 0x41
	.string	"str"
	.byte	0x1
	.value	0x1558
	.long	0x6f
	.uleb128 0x32
	.string	"p"
	.byte	0x1
	.value	0x155a
	.long	0x6f
	.uleb128 0x32
	.string	"i"
	.byte	0x1
	.value	0x155b
	.long	0x3f
	.uleb128 0x49
	.uleb128 0x34
	.long	.LASF811
	.byte	0x1
	.value	0x1564
	.long	0x2d
	.uleb128 0x34
	.long	.LASF812
	.byte	0x1
	.value	0x1564
	.long	0x2d
	.uleb128 0x48
	.long	0xa2bc
	.uleb128 0x34
	.long	.LASF985
	.byte	0x1
	.value	0x1564
	.long	0x62ff
	.uleb128 0x34
	.long	.LASF814
	.byte	0x1
	.value	0x1564
	.long	0x3f
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x34
	.long	.LASF813
	.byte	0x1
	.value	0x1564
	.long	0x62ff
	.uleb128 0x34
	.long	.LASF814
	.byte	0x1
	.value	0x1564
	.long	0x3f
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.long	0xa396
	.long	.LASF1027
	.byte	0x1
	.value	0x2395
	.byte	0x1
	.quad	.LFB524
	.quad	.LFE524
	.byte	0x1
	.byte	0x57
	.uleb128 0x2b
	.long	.LASF1028
	.byte	0x1
	.value	0x2394
	.long	0x6f
	.byte	0x1
	.byte	0x5e
	.uleb128 0x2d
	.string	"c"
	.byte	0x1
	.value	0x2396
	.long	0xa396
	.byte	0x1
	.byte	0x53
	.uleb128 0x2e
	.long	.LASF1029
	.byte	0x1
	.value	0x23ca
	.quad	.L2215
	.uleb128 0x37
	.long	.Ldebug_ranges0+0xd80
	.uleb128 0x2d
	.string	"l"
	.byte	0x1
	.value	0x23a3
	.long	0x2d
	.byte	0x1
	.byte	0x5c
	.uleb128 0x2d
	.string	"p"
	.byte	0x1
	.value	0x23a4
	.long	0x6f
	.byte	0x1
	.byte	0x56
	.uleb128 0x32
	.string	"e"
	.byte	0x1
	.value	0x23a5
	.long	0x116
	.uleb128 0x2c
	.long	.LASF1030
	.byte	0x1
	.value	0x23a6
	.long	0x3f
	.byte	0x1
	.byte	0x5f
	.uleb128 0x37
	.long	.Ldebug_ranges0+0xdc0
	.uleb128 0x34
	.long	.LASF811
	.byte	0x1
	.value	0x23a8
	.long	0x2d
	.uleb128 0x34
	.long	.LASF812
	.byte	0x1
	.value	0x23a8
	.long	0x2d
	.uleb128 0x37
	.long	.Ldebug_ranges0+0xe00
	.uleb128 0x34
	.long	.LASF813
	.byte	0x1
	.value	0x23a8
	.long	0x62ff
	.uleb128 0x2c
	.long	.LASF814
	.byte	0x1
	.value	0x23a8
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x2032
	.uleb128 0x29
	.long	0xb410
	.byte	0x1
	.long	.LASF1031
	.byte	0x1
	.value	0x23da
	.byte	0x1
	.long	0x3f
	.quad	.LFB525
	.quad	.LFE525
	.byte	0x1
	.byte	0x57
	.uleb128 0x2b
	.long	.LASF1032
	.byte	0x1
	.value	0x23d9
	.long	0x3f
	.byte	0x1
	.byte	0x5f
	.uleb128 0x2b
	.long	.LASF1033
	.byte	0x1
	.value	0x23d9
	.long	0x2919
	.byte	0x1
	.byte	0x5e
	.uleb128 0x2c
	.long	.LASF1034
	.byte	0x1
	.value	0x23dc
	.long	0x3f
	.byte	0x3
	.byte	0x91
	.sleb128 160
	.uleb128 0x2c
	.long	.LASF1035
	.byte	0x1
	.value	0x23dd
	.long	0x6f
	.byte	0x3
	.byte	0x91
	.sleb128 152
	.uleb128 0x2c
	.long	.LASF1036
	.byte	0x1
	.value	0x23df
	.long	0x50e
	.byte	0x3
	.byte	0x91
	.sleb128 148
	.uleb128 0x2d
	.string	"i"
	.byte	0x1
	.value	0x23e0
	.long	0x3f
	.byte	0x1
	.byte	0x5c
	.uleb128 0x2c
	.long	.LASF1010
	.byte	0x1
	.value	0x23e1
	.long	0x3f
	.byte	0x3
	.byte	0x91
	.sleb128 144
	.uleb128 0x2c
	.long	.LASF1037
	.byte	0x1
	.value	0x23e1
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.uleb128 0x2c
	.long	.LASF1038
	.byte	0x1
	.value	0x23e1
	.long	0x3f
	.byte	0x1
	.byte	0x5f
	.uleb128 0x2c
	.long	.LASF1039
	.byte	0x1
	.value	0x23e2
	.long	0x6f
	.byte	0x3
	.byte	0x91
	.sleb128 136
	.uleb128 0x2c
	.long	.LASF1040
	.byte	0x1
	.value	0x23e3
	.long	0x6f
	.byte	0x3
	.byte	0x91
	.sleb128 128
	.uleb128 0x2c
	.long	.LASF1041
	.byte	0x1
	.value	0x23e3
	.long	0x6f
	.byte	0x3
	.byte	0x91
	.sleb128 120
	.uleb128 0x2c
	.long	.LASF1042
	.byte	0x1
	.value	0x23e4
	.long	0x6f
	.byte	0x3
	.byte	0x91
	.sleb128 112
	.uleb128 0x32
	.string	"ds"
	.byte	0x1
	.value	0x23e5
	.long	0x181f
	.uleb128 0x2c
	.long	.LASF1019
	.byte	0x1
	.value	0x23e6
	.long	0x3f
	.byte	0x3
	.byte	0x91
	.sleb128 108
	.uleb128 0x2c
	.long	.LASF1020
	.byte	0x1
	.value	0x23e6
	.long	0x3f
	.byte	0x3
	.byte	0x91
	.sleb128 104
	.uleb128 0x2c
	.long	.LASF751
	.byte	0x1
	.value	0x23e6
	.long	0x3f
	.byte	0x3
	.byte	0x91
	.sleb128 100
	.uleb128 0x2c
	.long	.LASF1021
	.byte	0x1
	.value	0x23e6
	.long	0x3f
	.byte	0x3
	.byte	0x91
	.sleb128 96
	.uleb128 0x2c
	.long	.LASF1043
	.byte	0x1
	.value	0x23e7
	.long	0xb410
	.byte	0x3
	.byte	0x91
	.sleb128 5904
	.uleb128 0x2c
	.long	.LASF1044
	.byte	0x1
	.value	0x23e8
	.long	0x3f
	.byte	0x3
	.byte	0x91
	.sleb128 92
	.uleb128 0x2c
	.long	.LASF1045
	.byte	0x1
	.value	0x23e9
	.long	0x3f
	.byte	0x3
	.byte	0x91
	.sleb128 88
	.uleb128 0x2c
	.long	.LASF1046
	.byte	0x1
	.value	0x23ea
	.long	0x3f
	.byte	0x1
	.byte	0x5d
	.uleb128 0x2d
	.string	"r"
	.byte	0x1
	.value	0x23eb
	.long	0x6f
	.byte	0x1
	.byte	0x5c
	.uleb128 0x2c
	.long	.LASF1028
	.byte	0x1
	.value	0x23eb
	.long	0x6f
	.byte	0x1
	.byte	0x56
	.uleb128 0x2c
	.long	.LASF1047
	.byte	0x1
	.value	0x23ec
	.long	0x2f75
	.byte	0x1
	.byte	0x55
	.uleb128 0x2c
	.long	.LASF1048
	.byte	0x1
	.value	0x23ed
	.long	0x2158
	.byte	0x3
	.byte	0x91
	.sleb128 5776
	.uleb128 0x2c
	.long	.LASF1049
	.byte	0x1
	.value	0x23ee
	.long	0xb426
	.byte	0x3
	.byte	0x91
	.sleb128 5264
	.uleb128 0x2c
	.long	.LASF1050
	.byte	0x1
	.value	0x23ef
	.long	0x3f
	.byte	0x3
	.byte	0x91
	.sleb128 84
	.uleb128 0x2c
	.long	.LASF1051
	.byte	0x1
	.value	0x23f0
	.long	0xb43c
	.byte	0x3
	.byte	0x91
	.sleb128 4880
	.uleb128 0x2c
	.long	.LASF1052
	.byte	0x1
	.value	0x23f1
	.long	0x3f
	.byte	0x3
	.byte	0x91
	.sleb128 80
	.uleb128 0x2c
	.long	.LASF1053
	.byte	0x1
	.value	0x23f2
	.long	0x6f
	.byte	0x3
	.byte	0x91
	.sleb128 72
	.uleb128 0x2c
	.long	.LASF1011
	.byte	0x1
	.value	0x23f3
	.long	0x8fe6
	.byte	0x3
	.byte	0x91
	.sleb128 64
	.uleb128 0x2c
	.long	.LASF1054
	.byte	0x1
	.value	0x23f4
	.long	0x6f
	.byte	0x2
	.byte	0x91
	.sleb128 56
	.uleb128 0x2c
	.long	.LASF1055
	.byte	0x1
	.value	0x23f5
	.long	0xb452
	.byte	0x3
	.byte	0x91
	.sleb128 3856
	.uleb128 0x34
	.long	.LASF1056
	.byte	0x1
	.value	0x23f6
	.long	0x3f
	.uleb128 0x2d
	.string	"fds"
	.byte	0x1
	.value	0x23f7
	.long	0xcd
	.byte	0x3
	.byte	0x91
	.sleb128 200
	.uleb128 0x2c
	.long	.LASF1057
	.byte	0x1
	.value	0x23f8
	.long	0x6f
	.byte	0x2
	.byte	0x91
	.sleb128 48
	.uleb128 0x2c
	.long	.LASF272
	.byte	0x1
	.value	0x23f9
	.long	0x1c48
	.byte	0x1
	.byte	0x56
	.uleb128 0x2e
	.long	.LASF1058
	.byte	0x1
	.value	0x24bf
	.quad	.L2327
	.uleb128 0x2e
	.long	.LASF1059
	.byte	0x1
	.value	0x257e
	.quad	.L2437
	.uleb128 0x2e
	.long	.LASF1060
	.byte	0x1
	.value	0x2633
	.quad	.L2507
	.uleb128 0x2e
	.long	.LASF1061
	.byte	0x1
	.value	0x2682
	.quad	.L2530
	.uleb128 0x2e
	.long	.LASF1062
	.byte	0x1
	.value	0x27b3
	.quad	.L2831
	.uleb128 0x4c
	.long	0xa667
	.long	.Ldebug_ranges0+0xe40
	.uleb128 0x2d
	.string	"act"
	.byte	0x1
	.value	0x23fe
	.long	0x248c
	.byte	0x3
	.byte	0x91
	.sleb128 3696
	.byte	0x0
	.uleb128 0x52
	.long	0xb468
	.quad	.LBB484
	.quad	.LBE484
	.uleb128 0x4c
	.long	0xa6be
	.long	.Ldebug_ranges0+0xe70
	.uleb128 0x2c
	.long	.LASF1063
	.byte	0x1
	.value	0x2448
	.long	0xb472
	.byte	0x1
	.byte	0x53
	.uleb128 0x3a
	.quad	.LBB487
	.quad	.LBE487
	.uleb128 0x34
	.long	.LASF811
	.byte	0x1
	.value	0x2455
	.long	0x2d
	.uleb128 0x34
	.long	.LASF812
	.byte	0x1
	.value	0x2455
	.long	0x2d
	.byte	0x0
	.byte	0x0
	.uleb128 0x3e
	.long	0xa732
	.long	0xb47d
	.quad	.LBB488
	.quad	.LBE488
	.uleb128 0x39
	.long	0xb48f
	.byte	0x1
	.byte	0x5c
	.uleb128 0x39
	.long	0xb49b
	.byte	0x1
	.byte	0x55
	.uleb128 0x39
	.long	0xb4a7
	.byte	0x1
	.byte	0x53
	.uleb128 0x37
	.long	.Ldebug_ranges0+0xf90
	.uleb128 0x39
	.long	0xb48f
	.byte	0x1
	.byte	0x5c
	.uleb128 0x39
	.long	0xb49b
	.byte	0x1
	.byte	0x55
	.uleb128 0x39
	.long	0xb4a7
	.byte	0x1
	.byte	0x53
	.uleb128 0x38
	.long	0xb4e0
	.quad	.LBB490
	.quad	.LBE490
	.uleb128 0x39
	.long	0xb4ee
	.byte	0x1
	.byte	0x53
	.uleb128 0x37
	.long	.Ldebug_ranges0+0x10a0
	.uleb128 0x39
	.long	0xb4ee
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3e
	.long	0xa751
	.long	0xb4fa
	.quad	.LBB493
	.quad	.LBE493
	.uleb128 0x3f
	.long	0xb50d
	.byte	0x0
	.uleb128 0x4c
	.long	0xa7c0
	.long	.Ldebug_ranges0+0x11d0
	.uleb128 0x2d
	.string	"tm"
	.byte	0x1
	.value	0x2619
	.long	0x524
	.byte	0x3
	.byte	0x91
	.sleb128 1280
	.uleb128 0x3a
	.quad	.LBB496
	.quad	.LBE496
	.uleb128 0x34
	.long	.LASF811
	.byte	0x1
	.value	0x261a
	.long	0x2d
	.uleb128 0x34
	.long	.LASF812
	.byte	0x1
	.value	0x261a
	.long	0x2d
	.uleb128 0x3a
	.quad	.LBB497
	.quad	.LBE497
	.uleb128 0x34
	.long	.LASF813
	.byte	0x1
	.value	0x261a
	.long	0x62ff
	.uleb128 0x2c
	.long	.LASF814
	.byte	0x1
	.value	0x261a
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3e
	.long	0xa85f
	.long	0xb51a
	.quad	.LBB498
	.quad	.LBE498
	.uleb128 0x3f
	.long	0xb528
	.uleb128 0x37
	.long	.Ldebug_ranges0+0x1200
	.uleb128 0x39
	.long	0xb534
	.byte	0x1
	.byte	0x53
	.uleb128 0x39
	.long	0xb53e
	.byte	0x1
	.byte	0x5c
	.uleb128 0x46
	.long	0xb54a
	.uleb128 0x39
	.long	0xb556
	.byte	0x2
	.byte	0x91
	.sleb128 40
	.uleb128 0x39
	.long	0xb562
	.byte	0x1
	.byte	0x56
	.uleb128 0x45
	.long	0xb56e
	.quad	.L2486
	.uleb128 0x36
	.long	0xa832
	.quad	.LBB500
	.quad	.LBE500
	.uleb128 0x46
	.long	0xb57b
	.uleb128 0x46
	.long	0xb587
	.byte	0x0
	.uleb128 0x37
	.long	.Ldebug_ranges0+0x1250
	.uleb128 0x39
	.long	0xb5eb
	.byte	0x3
	.byte	0x91
	.sleb128 1344
	.uleb128 0x3a
	.quad	.LBB502
	.quad	.LBE502
	.uleb128 0x46
	.long	0xb5f8
	.uleb128 0x46
	.long	0xb604
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3e
	.long	0xa93e
	.long	0xb64b
	.quad	.LBB503
	.quad	.LBE503
	.uleb128 0x3f
	.long	0xb659
	.uleb128 0x37
	.long	.Ldebug_ranges0+0x1280
	.uleb128 0x39
	.long	0xb665
	.byte	0x1
	.byte	0x56
	.uleb128 0x39
	.long	0xb671
	.byte	0x3
	.byte	0x91
	.sleb128 1392
	.uleb128 0x39
	.long	0xb67d
	.byte	0x3
	.byte	0x91
	.sleb128 232
	.uleb128 0x39
	.long	0xb687
	.byte	0x3
	.byte	0x91
	.sleb128 240
	.uleb128 0x39
	.long	0xb691
	.byte	0x3
	.byte	0x91
	.sleb128 228
	.uleb128 0x46
	.long	0xb69d
	.uleb128 0x46
	.long	0xb6a9
	.uleb128 0x45
	.long	0xb6b5
	.quad	.L2389
	.uleb128 0x36
	.long	0xa902
	.quad	.LBB505
	.quad	.LBE505
	.uleb128 0x46
	.long	0xb6c2
	.uleb128 0x46
	.long	0xb6ce
	.uleb128 0x3a
	.quad	.LBB506
	.quad	.LBE506
	.uleb128 0x46
	.long	0xb6f9
	.uleb128 0x39
	.long	0xb705
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.uleb128 0x3a
	.quad	.LBB507
	.quad	.LBE507
	.uleb128 0x46
	.long	0xb714
	.uleb128 0x46
	.long	0xb720
	.uleb128 0x3a
	.quad	.LBB508
	.quad	.LBE508
	.uleb128 0x46
	.long	0xb74b
	.uleb128 0x39
	.long	0xb757
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3e
	.long	0xa97c
	.long	0xb766
	.quad	.LBB514
	.quad	.LBE514
	.uleb128 0x3f
	.long	0xb774
	.uleb128 0x37
	.long	.Ldebug_ranges0+0x12b0
	.uleb128 0x39
	.long	0xb780
	.byte	0x3
	.byte	0x91
	.sleb128 2672
	.uleb128 0x39
	.long	0xb78c
	.byte	0x3
	.byte	0x91
	.sleb128 1648
	.uleb128 0x39
	.long	0xb798
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.byte	0x0
	.uleb128 0x3e
	.long	0xa99b
	.long	0xb4fa
	.quad	.LBB521
	.quad	.LBE521
	.uleb128 0x3f
	.long	0xb50d
	.byte	0x0
	.uleb128 0x4c
	.long	0xa9b1
	.long	.Ldebug_ranges0+0x12e0
	.uleb128 0x2d
	.string	"p"
	.byte	0x1
	.value	0x24e7
	.long	0x6f
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0x3e
	.long	0xa9f9
	.long	0xb7a3
	.quad	.LBB529
	.quad	.LBE529
	.uleb128 0x3f
	.long	0xb7b5
	.uleb128 0x37
	.long	.Ldebug_ranges0+0x1310
	.uleb128 0x39
	.long	0xb7c1
	.byte	0x1
	.byte	0x53
	.uleb128 0x3a
	.quad	.LBB531
	.quad	.LBE531
	.uleb128 0x46
	.long	0xb7cc
	.uleb128 0x46
	.long	0xb7d8
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x4c
	.long	0xaa0f
	.long	.Ldebug_ranges0+0x1340
	.uleb128 0x2d
	.string	"m"
	.byte	0x1
	.value	0x2468
	.long	0x8fe6
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x4c
	.long	0xaa27
	.long	.Ldebug_ranges0+0x1370
	.uleb128 0x2d
	.string	"p"
	.byte	0x1
	.value	0x24a3
	.long	0x6f
	.byte	0x3
	.byte	0x91
	.sleb128 248
	.byte	0x0
	.uleb128 0x4c
	.long	0xaa4d
	.long	.Ldebug_ranges0+0x13b0
	.uleb128 0x2c
	.long	.LASF256
	.byte	0x1
	.value	0x2541
	.long	0x3f
	.byte	0x1
	.byte	0x55
	.uleb128 0x2c
	.long	.LASF1064
	.byte	0x1
	.value	0x2542
	.long	0xb81e
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x36
	.long	0xaa71
	.quad	.LBB535
	.quad	.LBE535
	.uleb128 0x2d
	.string	"r"
	.byte	0x1
	.value	0x2596
	.long	0x116
	.byte	0x3
	.byte	0x91
	.sleb128 208
	.byte	0x0
	.uleb128 0x4c
	.long	0xaaaf
	.long	.Ldebug_ranges0+0x13e0
	.uleb128 0x2d
	.string	"p"
	.byte	0x1
	.value	0x2574
	.long	0x6f
	.byte	0x3
	.byte	0x91
	.sleb128 216
	.uleb128 0x2d
	.string	"w"
	.byte	0x1
	.value	0x2575
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.uleb128 0x2d
	.string	"h"
	.byte	0x1
	.value	0x2575
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.uleb128 0x2c
	.long	.LASF279
	.byte	0x1
	.value	0x2575
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.uleb128 0x3e
	.long	0xaace
	.long	0xb4fa
	.quad	.LBB537
	.quad	.LBE537
	.uleb128 0x3f
	.long	0xb50d
	.byte	0x0
	.uleb128 0x3e
	.long	0xab0d
	.long	0xb824
	.quad	.LBB543
	.quad	.LBE543
	.uleb128 0x38
	.long	0xb82e
	.quad	.LBB545
	.quad	.LBE545
	.uleb128 0x37
	.long	.Ldebug_ranges0+0x1410
	.uleb128 0x39
	.long	0xb83d
	.byte	0x3
	.byte	0x91
	.sleb128 1280
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3e
	.long	0xab57
	.long	0xb84a
	.quad	.LBB554
	.quad	.LBE554
	.uleb128 0x39
	.long	0xb858
	.byte	0x1
	.byte	0x53
	.uleb128 0x39
	.long	0xb862
	.byte	0x1
	.byte	0x56
	.uleb128 0x39
	.long	0xb86c
	.byte	0x1
	.byte	0x50
	.uleb128 0x37
	.long	.Ldebug_ranges0+0x1460
	.uleb128 0x39
	.long	0xb858
	.byte	0x1
	.byte	0x53
	.uleb128 0x39
	.long	0xb862
	.byte	0x1
	.byte	0x56
	.uleb128 0x39
	.long	0xb86c
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.uleb128 0x3e
	.long	0xac47
	.long	0xb879
	.quad	.LBB567
	.quad	.LBE567
	.uleb128 0x3f
	.long	0xb88b
	.uleb128 0x4c
	.long	0xabb4
	.long	.Ldebug_ranges0+0x14b0
	.uleb128 0x39
	.long	0xb897
	.byte	0x1
	.byte	0x5d
	.uleb128 0x39
	.long	0xb8a1
	.byte	0x1
	.byte	0x54
	.uleb128 0x39
	.long	0xb8ab
	.byte	0x3
	.byte	0x91
	.sleb128 1296
	.uleb128 0x39
	.long	0xb8b7
	.byte	0x3
	.byte	0x91
	.sleb128 1360
	.uleb128 0x39
	.long	0xb8c3
	.byte	0x1
	.byte	0x53
	.uleb128 0x39
	.long	0xb8cf
	.byte	0x1
	.byte	0x53
	.uleb128 0x39
	.long	0xb8db
	.byte	0x1
	.byte	0x5e
	.byte	0x0
	.uleb128 0x36
	.long	0xabf2
	.quad	.LBB570
	.quad	.LBE570
	.uleb128 0x46
	.long	0xb8ec
	.uleb128 0x46
	.long	0xb8f8
	.uleb128 0x3a
	.quad	.LBB571
	.quad	.LBE571
	.uleb128 0x46
	.long	0xb923
	.uleb128 0x39
	.long	0xb92f
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.long	.Ldebug_ranges0+0x1590
	.uleb128 0x39
	.long	0xb942
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x46
	.long	0xb94d
	.uleb128 0x38
	.long	0xbb15
	.quad	.LBB573
	.quad	.LBE573
	.uleb128 0x3f
	.long	0xbb27
	.uleb128 0x40
	.long	0xbb33
	.byte	0x3
	.byte	0x91
	.sleb128 176
	.uleb128 0x37
	.long	.Ldebug_ranges0+0x15d0
	.uleb128 0x39
	.long	0xbb3d
	.byte	0x1
	.byte	0x56
	.uleb128 0x39
	.long	0xbb47
	.byte	0x3
	.byte	0x91
	.sleb128 184
	.uleb128 0x39
	.long	0xbb53
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
	.long	0xac67
	.quad	.LBB580
	.quad	.LBE580
	.uleb128 0x46
	.long	0xb979
	.uleb128 0x46
	.long	0xb985
	.byte	0x0
	.uleb128 0x36
	.long	0xac87
	.quad	.LBB581
	.quad	.LBE581
	.uleb128 0x46
	.long	0xb9cf
	.uleb128 0x46
	.long	0xb9db
	.byte	0x0
	.uleb128 0x36
	.long	0xacc5
	.quad	.LBB582
	.quad	.LBE582
	.uleb128 0x46
	.long	0xba25
	.uleb128 0x46
	.long	0xba31
	.uleb128 0x3a
	.quad	.LBB583
	.quad	.LBE583
	.uleb128 0x46
	.long	0xba5c
	.uleb128 0x39
	.long	0xba68
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
	.long	0xace5
	.quad	.LBB584
	.quad	.LBE584
	.uleb128 0x46
	.long	0xbab0
	.uleb128 0x46
	.long	0xbabc
	.byte	0x0
	.uleb128 0x36
	.long	0xad00
	.quad	.LBB585
	.quad	.LBE585
	.uleb128 0x46
	.long	0xbb02
	.byte	0x0
	.uleb128 0x4c
	.long	0xad3c
	.long	.Ldebug_ranges0+0x1600
	.uleb128 0x2c
	.long	.LASF1065
	.byte	0x1
	.value	0x26e5
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.uleb128 0x37
	.long	.Ldebug_ranges0+0x1640
	.uleb128 0x2c
	.long	.LASF271
	.byte	0x1
	.value	0x26e7
	.long	0x6f
	.byte	0x1
	.byte	0x51
	.uleb128 0x2d
	.string	"buf"
	.byte	0x1
	.value	0x26e8
	.long	0x3138
	.byte	0x3
	.byte	0x91
	.sleb128 256
	.byte	0x0
	.byte	0x0
	.uleb128 0x3e
	.long	0xad76
	.long	0xbb60
	.quad	.LBB609
	.quad	.LBE609
	.uleb128 0x39
	.long	0xbb6e
	.byte	0x1
	.byte	0x51
	.uleb128 0x3a
	.quad	.LBB610
	.quad	.LBE610
	.uleb128 0x39
	.long	0xbb6e
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.byte	0x0
	.uleb128 0x3e
	.long	0xad95
	.long	0xbb79
	.quad	.LBB611
	.quad	.LBE611
	.uleb128 0x3f
	.long	0xbb87
	.byte	0x0
	.uleb128 0x36
	.long	0xadc3
	.quad	.LBB613
	.quad	.LBE613
	.uleb128 0x34
	.long	.LASF811
	.byte	0x1
	.value	0x2751
	.long	0x2d
	.uleb128 0x34
	.long	.LASF812
	.byte	0x1
	.value	0x2751
	.long	0x2d
	.byte	0x0
	.uleb128 0x36
	.long	0xadf1
	.quad	.LBB614
	.quad	.LBE614
	.uleb128 0x34
	.long	.LASF811
	.byte	0x1
	.value	0x2756
	.long	0x2d
	.uleb128 0x34
	.long	.LASF812
	.byte	0x1
	.value	0x2756
	.long	0x2d
	.byte	0x0
	.uleb128 0x36
	.long	0xae1f
	.quad	.LBB615
	.quad	.LBE615
	.uleb128 0x34
	.long	.LASF811
	.byte	0x1
	.value	0x2753
	.long	0x2d
	.uleb128 0x34
	.long	.LASF812
	.byte	0x1
	.value	0x2753
	.long	0x2d
	.byte	0x0
	.uleb128 0x4c
	.long	0xae5f
	.long	.Ldebug_ranges0+0x1670
	.uleb128 0x34
	.long	.LASF340
	.byte	0x1
	.value	0x2767
	.long	0x6f
	.uleb128 0x3a
	.quad	.LBB617
	.quad	.LBE617
	.uleb128 0x34
	.long	.LASF811
	.byte	0x1
	.value	0x2768
	.long	0x2d
	.uleb128 0x34
	.long	.LASF812
	.byte	0x1
	.value	0x2768
	.long	0x2d
	.byte	0x0
	.byte	0x0
	.uleb128 0x4c
	.long	0xae9f
	.long	.Ldebug_ranges0+0x16b0
	.uleb128 0x34
	.long	.LASF340
	.byte	0x1
	.value	0x2775
	.long	0x6f
	.uleb128 0x3a
	.quad	.LBB619
	.quad	.LBE619
	.uleb128 0x34
	.long	.LASF811
	.byte	0x1
	.value	0x2776
	.long	0x2d
	.uleb128 0x34
	.long	.LASF812
	.byte	0x1
	.value	0x2776
	.long	0x2d
	.byte	0x0
	.byte	0x0
	.uleb128 0x3e
	.long	0xaefe
	.long	0xbb93
	.quad	.LBB620
	.quad	.LBE620
	.uleb128 0x46
	.long	0xbba1
	.uleb128 0x39
	.long	0xbbac
	.byte	0x1
	.byte	0x56
	.uleb128 0x3a
	.quad	.LBB621
	.quad	.LBE621
	.uleb128 0x46
	.long	0xbba1
	.uleb128 0x39
	.long	0xbbac
	.byte	0x1
	.byte	0x56
	.uleb128 0x38
	.long	0xbbb7
	.quad	.LBB622
	.quad	.LBE622
	.uleb128 0x3f
	.long	0xbbc9
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x4c
	.long	0xaf33
	.long	.Ldebug_ranges0+0x1700
	.uleb128 0x2c
	.long	.LASF849
	.byte	0x1
	.value	0x27ac
	.long	0x4f8
	.byte	0x3
	.byte	0x91
	.sleb128 167
	.uleb128 0x2d
	.string	"len"
	.byte	0x1
	.value	0x27ad
	.long	0x132
	.byte	0x1
	.byte	0x50
	.uleb128 0x2d
	.string	"fd"
	.byte	0x1
	.value	0x27ae
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x3e
	.long	0xafa5
	.long	0xbbd6
	.quad	.LBB629
	.quad	.LBE629
	.uleb128 0x3f
	.long	0xbbe8
	.uleb128 0x40
	.long	0xbbf4
	.byte	0x1
	.byte	0x56
	.uleb128 0x37
	.long	.Ldebug_ranges0+0x1730
	.uleb128 0x39
	.long	0xbc00
	.byte	0x3
	.byte	0x91
	.sleb128 1280
	.uleb128 0x39
	.long	0xbc0c
	.byte	0x1
	.byte	0x5c
	.uleb128 0x39
	.long	0xbc16
	.byte	0x1
	.byte	0x53
	.uleb128 0x39
	.long	0xbc21
	.byte	0x1
	.byte	0x50
	.uleb128 0x39
	.long	0xbc2b
	.byte	0x3
	.byte	0x91
	.sleb128 192
	.uleb128 0x45
	.long	0xbc37
	.quad	.L2562
	.uleb128 0x37
	.long	.Ldebug_ranges0+0x1770
	.uleb128 0x39
	.long	0xbc5e
	.byte	0x1
	.byte	0x50
	.uleb128 0x46
	.long	0xbc6a
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x4c
	.long	0xafc7
	.long	.Ldebug_ranges0+0x17a0
	.uleb128 0x34
	.long	.LASF811
	.byte	0x1
	.value	0x24b6
	.long	0x2d
	.uleb128 0x34
	.long	.LASF812
	.byte	0x1
	.value	0x24b6
	.long	0x2d
	.byte	0x0
	.uleb128 0x36
	.long	0xb021
	.quad	.LBB647
	.quad	.LBE647
	.uleb128 0x34
	.long	.LASF811
	.byte	0x1
	.value	0x24b8
	.long	0x2d
	.uleb128 0x34
	.long	.LASF812
	.byte	0x1
	.value	0x24b8
	.long	0x2d
	.uleb128 0x3a
	.quad	.LBB648
	.quad	.LBE648
	.uleb128 0x34
	.long	.LASF813
	.byte	0x1
	.value	0x24b8
	.long	0x62ff
	.uleb128 0x2c
	.long	.LASF814
	.byte	0x1
	.value	0x24b8
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
	.long	0xb04f
	.quad	.LBB649
	.quad	.LBE649
	.uleb128 0x34
	.long	.LASF811
	.byte	0x1
	.value	0x24ba
	.long	0x2d
	.uleb128 0x34
	.long	.LASF812
	.byte	0x1
	.value	0x24ba
	.long	0x2d
	.byte	0x0
	.uleb128 0x52
	.long	0xbc78
	.quad	.LBB666
	.quad	.LBE666
	.uleb128 0x52
	.long	0xbc82
	.quad	.LBB670
	.quad	.LBE670
	.uleb128 0x36
	.long	0xb0ca
	.quad	.LBB672
	.quad	.LBE672
	.uleb128 0x2d
	.string	"vc"
	.byte	0x1
	.value	0x27cc
	.long	0x1c32
	.byte	0x1
	.byte	0x53
	.uleb128 0x3a
	.quad	.LBB673
	.quad	.LBE673
	.uleb128 0x2c
	.long	.LASF848
	.byte	0x1
	.value	0x27d0
	.long	0x4ddc
	.byte	0x3
	.byte	0x91
	.sleb128 256
	.uleb128 0x2d
	.string	"s"
	.byte	0x1
	.value	0x27d1
	.long	0x68ce
	.byte	0x1
	.byte	0x5c
	.byte	0x0
	.byte	0x0
	.uleb128 0x4c
	.long	0xb112
	.long	.Ldebug_ranges0+0x17e0
	.uleb128 0x2d
	.string	"pid"
	.byte	0x1
	.value	0x2673
	.long	0x127
	.byte	0x1
	.byte	0x50
	.uleb128 0x3a
	.quad	.LBB696
	.quad	.LBE696
	.uleb128 0x2c
	.long	.LASF849
	.byte	0x1
	.value	0x267a
	.long	0x4f8
	.byte	0x3
	.byte	0x91
	.sleb128 199
	.uleb128 0x2d
	.string	"len"
	.byte	0x1
	.value	0x267b
	.long	0x132
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.uleb128 0x3e
	.long	0xb163
	.long	0xbc8c
	.quad	.LBB702
	.quad	.LBE702
	.uleb128 0x3f
	.long	0xbc9e
	.uleb128 0x3f
	.long	0xbcaa
	.uleb128 0x37
	.long	.Ldebug_ranges0+0x1810
	.uleb128 0x39
	.long	0xbcb6
	.byte	0x1
	.byte	0x56
	.uleb128 0x39
	.long	0xbcc0
	.byte	0x1
	.byte	0x53
	.uleb128 0x39
	.long	0xbccb
	.byte	0x3
	.byte	0x91
	.sleb128 172
	.uleb128 0x39
	.long	0xbcd7
	.byte	0x1
	.byte	0x50
	.uleb128 0x39
	.long	0xbce3
	.byte	0x3
	.byte	0x91
	.sleb128 256
	.byte	0x0
	.byte	0x0
	.uleb128 0x3e
	.long	0xb1a4
	.long	0xbcf0
	.quad	.LBB704
	.quad	.LBE704
	.uleb128 0x3f
	.long	0xbd02
	.uleb128 0x3f
	.long	0xbd0e
	.uleb128 0x37
	.long	.Ldebug_ranges0+0x1840
	.uleb128 0x39
	.long	0xbd1a
	.byte	0x1
	.byte	0x56
	.uleb128 0x39
	.long	0xbd24
	.byte	0x1
	.byte	0x54
	.uleb128 0x39
	.long	0xbd2f
	.byte	0x3
	.byte	0x91
	.sleb128 288
	.byte	0x0
	.byte	0x0
	.uleb128 0x3e
	.long	0xb1fa
	.long	0xbd56
	.quad	.LBB706
	.quad	.LBE706
	.uleb128 0x3f
	.long	0xbd68
	.uleb128 0x3f
	.long	0xbd74
	.uleb128 0x37
	.long	.Ldebug_ranges0+0x1880
	.uleb128 0x39
	.long	0xbd80
	.byte	0x1
	.byte	0x56
	.uleb128 0x39
	.long	0xbd8a
	.byte	0x1
	.byte	0x53
	.uleb128 0x39
	.long	0xbd95
	.byte	0x1
	.byte	0x56
	.uleb128 0x39
	.long	0xbda1
	.byte	0x1
	.byte	0x50
	.uleb128 0x39
	.long	0xbdad
	.byte	0x1
	.byte	0x52
	.uleb128 0x39
	.long	0xbdb9
	.byte	0x3
	.byte	0x91
	.sleb128 272
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
	.long	0xb21c
	.quad	.LBB712
	.quad	.LBE712
	.uleb128 0x46
	.long	0xbdc6
	.uleb128 0x39
	.long	0xbdd2
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x36
	.long	0xb23e
	.quad	.LBB717
	.quad	.LBE717
	.uleb128 0x46
	.long	0xbd3c
	.uleb128 0x39
	.long	0xbd48
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x3e
	.long	0xb29c
	.long	0xbde0
	.quad	.LBB720
	.quad	.LBE720
	.uleb128 0x3f
	.long	0xbdf2
	.uleb128 0x3f
	.long	0xbdfe
	.uleb128 0x37
	.long	.Ldebug_ranges0+0x18c0
	.uleb128 0x39
	.long	0xbe0a
	.byte	0x1
	.byte	0x5d
	.uleb128 0x39
	.long	0xbe14
	.byte	0x1
	.byte	0x56
	.uleb128 0x39
	.long	0xbe1f
	.byte	0x3
	.byte	0x91
	.sleb128 168
	.uleb128 0x39
	.long	0xbe2b
	.byte	0x1
	.byte	0x50
	.uleb128 0x39
	.long	0xbe37
	.byte	0x3
	.byte	0x91
	.sleb128 304
	.uleb128 0x45
	.long	0xbe43
	.quad	.L2712
	.byte	0x0
	.byte	0x0
	.uleb128 0x4c
	.long	0xb2c6
	.long	.Ldebug_ranges0+0x18f0
	.uleb128 0x39
	.long	0xba7b
	.byte	0x3
	.byte	0x91
	.sleb128 2384
	.uleb128 0x39
	.long	0xba87
	.byte	0x3
	.byte	0x91
	.sleb128 2448
	.uleb128 0x39
	.long	0xba93
	.byte	0x3
	.byte	0x91
	.sleb128 256
	.uleb128 0x46
	.long	0xba9f
	.byte	0x0
	.uleb128 0x3e
	.long	0xb352
	.long	0xbe4c
	.quad	.LBB731
	.quad	.LBE731
	.uleb128 0x3f
	.long	0xbe5e
	.uleb128 0x3f
	.long	0xbe6a
	.uleb128 0x40
	.long	0xbe76
	.byte	0x1
	.byte	0x56
	.uleb128 0x3f
	.long	0xbe82
	.uleb128 0x4c
	.long	0xb314
	.long	.Ldebug_ranges0+0x1920
	.uleb128 0x39
	.long	0xbe8e
	.byte	0x1
	.byte	0x53
	.uleb128 0x46
	.long	0xbe98
	.uleb128 0x39
	.long	0xbea3
	.byte	0x3
	.byte	0x91
	.sleb128 3472
	.byte	0x0
	.uleb128 0x38
	.long	0xbf58
	.quad	.LBB734
	.quad	.LBE734
	.uleb128 0x3f
	.long	0xbf6a
	.uleb128 0x3f
	.long	0xbf76
	.uleb128 0x37
	.long	.Ldebug_ranges0+0x1960
	.uleb128 0x39
	.long	0xbf82
	.byte	0x3
	.byte	0x91
	.sleb128 3600
	.uleb128 0x39
	.long	0xbf8e
	.byte	0x1
	.byte	0x53
	.uleb128 0x39
	.long	0xbf99
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
	.long	0xb390
	.quad	.LBB742
	.quad	.LBE742
	.uleb128 0x46
	.long	0xbeb4
	.uleb128 0x46
	.long	0xbec0
	.uleb128 0x3a
	.quad	.LBB743
	.quad	.LBE743
	.uleb128 0x46
	.long	0xbeeb
	.uleb128 0x39
	.long	0xbef7
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
	.long	0xb3ce
	.quad	.LBB744
	.quad	.LBE744
	.uleb128 0x46
	.long	0xbf06
	.uleb128 0x46
	.long	0xbf12
	.uleb128 0x3a
	.quad	.LBB745
	.quad	.LBE745
	.uleb128 0x46
	.long	0xbf3d
	.uleb128 0x39
	.long	0xbf49
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
	.long	0xb3f4
	.quad	.LBB764
	.quad	.LBE764
	.uleb128 0x2c
	.long	.LASF849
	.byte	0x1
	.value	0x26a1
	.long	0x4f8
	.byte	0x3
	.byte	0x91
	.sleb128 198
	.byte	0x0
	.uleb128 0x38
	.long	0xbfa6
	.quad	.LBB780
	.quad	.LBE780
	.uleb128 0x3f
	.long	0xbfb8
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
	.long	0xb426
	.long	0x7a
	.uleb128 0x8
	.long	0x61
	.byte	0x1f
	.uleb128 0x8
	.long	0x61
	.byte	0xff
	.byte	0x0
	.uleb128 0x7
	.long	0xb43c
	.long	0x7a
	.uleb128 0x8
	.long	0x61
	.byte	0x3
	.uleb128 0x8
	.long	0x61
	.byte	0x7f
	.byte	0x0
	.uleb128 0x7
	.long	0xb452
	.long	0x7a
	.uleb128 0x8
	.long	0x61
	.byte	0x2
	.uleb128 0x8
	.long	0x61
	.byte	0x7f
	.byte	0x0
	.uleb128 0x7
	.long	0xb468
	.long	0x7a
	.uleb128 0x8
	.long	0x61
	.byte	0x7
	.uleb128 0x8
	.long	0x61
	.byte	0x7f
	.byte	0x0
	.uleb128 0x53
	.long	.LASF1067
	.byte	0x1
	.value	0x2322
	.byte	0x1
	.byte	0x1
	.uleb128 0x5
	.byte	0x8
	.long	0xb478
	.uleb128 0x6
	.long	0x3592
	.uleb128 0x3b
	.long	0xb4e0
	.long	.LASF1068
	.byte	0x1
	.value	0x204d
	.byte	0x1
	.long	0x3f
	.byte	0x1
	.uleb128 0x32
	.string	"ret"
	.byte	0x1
	.value	0x204e
	.long	0x3f
	.uleb128 0x34
	.long	.LASF543
	.byte	0x1
	.value	0x204e
	.long	0x3f
	.uleb128 0x32
	.string	"env"
	.byte	0x1
	.value	0x2052
	.long	0x2085
	.uleb128 0x49
	.uleb128 0x32
	.string	"i"
	.byte	0x1
	.value	0x20a3
	.long	0x46
	.uleb128 0x48
	.long	0xb4d0
	.uleb128 0x34
	.long	.LASF135
	.byte	0x1
	.value	0x20e2
	.long	0xac1
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x34
	.long	.LASF135
	.byte	0x1
	.value	0x211b
	.long	0xac1
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x4a
	.long	0xb4fa
	.long	.LASF1069
	.byte	0x1
	.value	0x1f94
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.string	"re"
	.byte	0x1
	.value	0x1f95
	.long	0x9912
	.byte	0x0
	.uleb128 0x54
	.long	0xb51a
	.byte	0x1
	.long	.LASF1070
	.byte	0x5
	.value	0x11d
	.byte	0x1
	.long	0x3f
	.byte	0x3
	.uleb128 0x42
	.long	.LASF1071
	.byte	0x5
	.value	0x11c
	.long	0x6f
	.byte	0x0
	.uleb128 0x4a
	.long	0xb64b
	.long	.LASF1072
	.byte	0x1
	.value	0x4da
	.byte	0x1
	.byte	0x1
	.uleb128 0x41
	.string	"opt"
	.byte	0x1
	.value	0x4d9
	.long	0x6f
	.uleb128 0x32
	.string	"i"
	.byte	0x1
	.value	0x4db
	.long	0x3f
	.uleb128 0x32
	.string	"cur"
	.byte	0x1
	.value	0x4dc
	.long	0x3f
	.uleb128 0x34
	.long	.LASF268
	.byte	0x1
	.value	0x4dd
	.long	0x3f
	.uleb128 0x32
	.string	"arg"
	.byte	0x1
	.value	0x4de
	.long	0x116
	.uleb128 0x34
	.long	.LASF257
	.byte	0x1
	.value	0x4df
	.long	0x116
	.uleb128 0x47
	.long	.LASF261
	.byte	0x1
	.value	0x501
	.uleb128 0x48
	.long	0xb5cc
	.uleb128 0x34
	.long	.LASF811
	.byte	0x1
	.value	0x4e1
	.long	0x2d
	.uleb128 0x34
	.long	.LASF812
	.byte	0x1
	.value	0x4e1
	.long	0x2d
	.uleb128 0x48
	.long	0xb5b1
	.uleb128 0x34
	.long	.LASF985
	.byte	0x1
	.value	0x4e1
	.long	0x62ff
	.uleb128 0x34
	.long	.LASF814
	.byte	0x1
	.value	0x4e1
	.long	0x3f
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x34
	.long	.LASF813
	.byte	0x1
	.value	0x4e1
	.long	0x62ff
	.uleb128 0x34
	.long	.LASF814
	.byte	0x1
	.value	0x4e1
	.long	0x3f
	.byte	0x0
	.byte	0x0
	.uleb128 0x48
	.long	0xb5ea
	.uleb128 0x34
	.long	.LASF1073
	.byte	0x1
	.value	0x4e6
	.long	0x2d
	.uleb128 0x34
	.long	.LASF1074
	.byte	0x1
	.value	0x4e6
	.long	0x116
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x32
	.string	"tmp"
	.byte	0x1
	.value	0x4eb
	.long	0x2de9
	.uleb128 0x49
	.uleb128 0x34
	.long	.LASF811
	.byte	0x1
	.value	0x4ee
	.long	0x2d
	.uleb128 0x34
	.long	.LASF812
	.byte	0x1
	.value	0x4ee
	.long	0x2d
	.uleb128 0x48
	.long	0xb62e
	.uleb128 0x34
	.long	.LASF985
	.byte	0x1
	.value	0x4ee
	.long	0x62ff
	.uleb128 0x34
	.long	.LASF814
	.byte	0x1
	.value	0x4ee
	.long	0x3f
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x34
	.long	.LASF813
	.byte	0x1
	.value	0x4ee
	.long	0x62ff
	.uleb128 0x34
	.long	.LASF814
	.byte	0x1
	.value	0x4ee
	.long	0x3f
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x4a
	.long	0xb766
	.long	.LASF1075
	.byte	0x1
	.value	0xfe0
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.long	.LASF1076
	.byte	0x1
	.value	0xfdf
	.long	0x6f
	.uleb128 0x34
	.long	.LASF1077
	.byte	0x1
	.value	0xfe1
	.long	0x3f
	.uleb128 0x32
	.string	"buf"
	.byte	0x1
	.value	0xfe2
	.long	0x1c22
	.uleb128 0x32
	.string	"r"
	.byte	0x1
	.value	0xfe2
	.long	0x116
	.uleb128 0x32
	.string	"p"
	.byte	0x1
	.value	0xfe3
	.long	0x6f
	.uleb128 0x34
	.long	.LASF1078
	.byte	0x1
	.value	0xfe4
	.long	0x286f
	.uleb128 0x34
	.long	.LASF1079
	.byte	0x1
	.value	0xfe5
	.long	0x3f
	.uleb128 0x34
	.long	.LASF1080
	.byte	0x1
	.value	0xfe5
	.long	0x3f
	.uleb128 0x47
	.long	.LASF719
	.byte	0x1
	.value	0x100e
	.uleb128 0x48
	.long	0xb713
	.uleb128 0x34
	.long	.LASF811
	.byte	0x1
	.value	0xfef
	.long	0x2d
	.uleb128 0x34
	.long	.LASF812
	.byte	0x1
	.value	0xfef
	.long	0x2d
	.uleb128 0x48
	.long	0xb6f8
	.uleb128 0x34
	.long	.LASF985
	.byte	0x1
	.value	0xfef
	.long	0x62ff
	.uleb128 0x34
	.long	.LASF814
	.byte	0x1
	.value	0xfef
	.long	0x3f
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x34
	.long	.LASF813
	.byte	0x1
	.value	0xfef
	.long	0x62ff
	.uleb128 0x34
	.long	.LASF814
	.byte	0x1
	.value	0xfef
	.long	0x3f
	.byte	0x0
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x34
	.long	.LASF811
	.byte	0x1
	.value	0xff1
	.long	0x2d
	.uleb128 0x34
	.long	.LASF812
	.byte	0x1
	.value	0xff1
	.long	0x2d
	.uleb128 0x48
	.long	0xb74a
	.uleb128 0x34
	.long	.LASF985
	.byte	0x1
	.value	0xff1
	.long	0x62ff
	.uleb128 0x34
	.long	.LASF814
	.byte	0x1
	.value	0xff1
	.long	0x3f
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x34
	.long	.LASF813
	.byte	0x1
	.value	0xff1
	.long	0x62ff
	.uleb128 0x34
	.long	.LASF814
	.byte	0x1
	.value	0xff1
	.long	0x3f
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x4a
	.long	0xb7a3
	.long	.LASF1081
	.byte	0x1
	.value	0x1030
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.long	.LASF1082
	.byte	0x1
	.value	0x102f
	.long	0x6f
	.uleb128 0x34
	.long	.LASF1083
	.byte	0x1
	.value	0x1031
	.long	0x3138
	.uleb128 0x34
	.long	.LASF1084
	.byte	0x1
	.value	0x1032
	.long	0x3138
	.uleb128 0x32
	.string	"f"
	.byte	0x1
	.value	0x1033
	.long	0xa9b
	.byte	0x0
	.uleb128 0x3b
	.long	0xb81e
	.long	.LASF1085
	.byte	0x1
	.value	0x1f16
	.byte	0x1
	.long	0x8fe6
	.byte	0x1
	.uleb128 0x42
	.long	.LASF257
	.byte	0x1
	.value	0x1f15
	.long	0x6f
	.uleb128 0x32
	.string	"m"
	.byte	0x1
	.value	0x1f17
	.long	0x8fe6
	.uleb128 0x49
	.uleb128 0x34
	.long	.LASF811
	.byte	0x1
	.value	0x1f1a
	.long	0x2d
	.uleb128 0x34
	.long	.LASF812
	.byte	0x1
	.value	0x1f1a
	.long	0x2d
	.uleb128 0x48
	.long	0xb802
	.uleb128 0x34
	.long	.LASF985
	.byte	0x1
	.value	0x1f1a
	.long	0x62ff
	.uleb128 0x34
	.long	.LASF814
	.byte	0x1
	.value	0x1f1a
	.long	0x3f
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x34
	.long	.LASF813
	.byte	0x1
	.value	0x1f1a
	.long	0x62ff
	.uleb128 0x34
	.long	.LASF814
	.byte	0x1
	.value	0x1f1a
	.long	0x3f
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x12c5
	.uleb128 0x53
	.long	.LASF1086
	.byte	0x1
	.value	0x590
	.byte	0x1
	.byte	0x1
	.uleb128 0x4a
	.long	0xb84a
	.long	.LASF1087
	.byte	0x1
	.value	0x40e
	.byte	0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x32
	.string	"ts"
	.byte	0x1
	.value	0x412
	.long	0x190
	.byte	0x0
	.byte	0x0
	.uleb128 0x4a
	.long	0xb879
	.long	.LASF1088
	.byte	0x1
	.value	0x74b
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.string	"t"
	.byte	0x1
	.value	0x74c
	.long	0x2e61
	.uleb128 0x32
	.string	"i"
	.byte	0x1
	.value	0x74d
	.long	0x3f
	.uleb128 0x32
	.string	"err"
	.byte	0x1
	.value	0x74d
	.long	0x3f
	.byte	0x0
	.uleb128 0x3b
	.long	0xbb0f
	.long	.LASF1089
	.byte	0x1
	.value	0x1572
	.byte	0x1
	.long	0x3f
	.byte	0x1
	.uleb128 0x41
	.string	"str"
	.byte	0x1
	.value	0x1571
	.long	0x6f
	.uleb128 0x32
	.string	"p"
	.byte	0x1
	.value	0x1573
	.long	0x6f
	.uleb128 0x32
	.string	"q"
	.byte	0x1
	.value	0x1574
	.long	0x116
	.uleb128 0x34
	.long	.LASF1090
	.byte	0x1
	.value	0x1575
	.long	0x4ddc
	.uleb128 0x32
	.string	"buf"
	.byte	0x1
	.value	0x1576
	.long	0x3138
	.uleb128 0x34
	.long	.LASF1091
	.byte	0x1
	.value	0x1577
	.long	0x3f
	.uleb128 0x32
	.string	"ret"
	.byte	0x1
	.value	0x1577
	.long	0x3f
	.uleb128 0x34
	.long	.LASF272
	.byte	0x1
	.value	0x1578
	.long	0x1c48
	.uleb128 0x48
	.long	0xb93d
	.uleb128 0x34
	.long	.LASF811
	.byte	0x1
	.value	0x158d
	.long	0x2d
	.uleb128 0x34
	.long	.LASF812
	.byte	0x1
	.value	0x158d
	.long	0x2d
	.uleb128 0x48
	.long	0xb922
	.uleb128 0x34
	.long	.LASF985
	.byte	0x1
	.value	0x158d
	.long	0x62ff
	.uleb128 0x34
	.long	.LASF814
	.byte	0x1
	.value	0x158d
	.long	0x3f
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x34
	.long	.LASF813
	.byte	0x1
	.value	0x158d
	.long	0x62ff
	.uleb128 0x34
	.long	.LASF814
	.byte	0x1
	.value	0x158d
	.long	0x3f
	.byte	0x0
	.byte	0x0
	.uleb128 0x48
	.long	0xb974
	.uleb128 0x32
	.string	"nd"
	.byte	0x1
	.value	0x158e
	.long	0xbb0f
	.uleb128 0x34
	.long	.LASF270
	.byte	0x1
	.value	0x158f
	.long	0x1ad4
	.uleb128 0x49
	.uleb128 0x34
	.long	.LASF1073
	.byte	0x1
	.value	0x15a5
	.long	0x2d
	.uleb128 0x34
	.long	.LASF1074
	.byte	0x1
	.value	0x15a5
	.long	0x116
	.byte	0x0
	.byte	0x0
	.uleb128 0x48
	.long	0xb9ca
	.uleb128 0x34
	.long	.LASF811
	.byte	0x1
	.value	0x15ac
	.long	0x2d
	.uleb128 0x34
	.long	.LASF812
	.byte	0x1
	.value	0x15ac
	.long	0x2d
	.uleb128 0x48
	.long	0xb9af
	.uleb128 0x34
	.long	.LASF985
	.byte	0x1
	.value	0x15ac
	.long	0x62ff
	.uleb128 0x34
	.long	.LASF814
	.byte	0x1
	.value	0x15ac
	.long	0x3f
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x34
	.long	.LASF813
	.byte	0x1
	.value	0x15ac
	.long	0x62ff
	.uleb128 0x34
	.long	.LASF814
	.byte	0x1
	.value	0x15ac
	.long	0x3f
	.byte	0x0
	.byte	0x0
	.uleb128 0x48
	.long	0xba20
	.uleb128 0x34
	.long	.LASF811
	.byte	0x1
	.value	0x15b2
	.long	0x2d
	.uleb128 0x34
	.long	.LASF812
	.byte	0x1
	.value	0x15b2
	.long	0x2d
	.uleb128 0x48
	.long	0xba05
	.uleb128 0x34
	.long	.LASF985
	.byte	0x1
	.value	0x15b2
	.long	0x62ff
	.uleb128 0x34
	.long	.LASF814
	.byte	0x1
	.value	0x15b2
	.long	0x3f
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x34
	.long	.LASF813
	.byte	0x1
	.value	0x15b2
	.long	0x62ff
	.uleb128 0x34
	.long	.LASF814
	.byte	0x1
	.value	0x15b2
	.long	0x3f
	.byte	0x0
	.byte	0x0
	.uleb128 0x48
	.long	0xba76
	.uleb128 0x34
	.long	.LASF811
	.byte	0x1
	.value	0x15c5
	.long	0x2d
	.uleb128 0x34
	.long	.LASF812
	.byte	0x1
	.value	0x15c5
	.long	0x2d
	.uleb128 0x48
	.long	0xba5b
	.uleb128 0x34
	.long	.LASF985
	.byte	0x1
	.value	0x15c5
	.long	0x62ff
	.uleb128 0x34
	.long	.LASF814
	.byte	0x1
	.value	0x15c5
	.long	0x3f
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x34
	.long	.LASF813
	.byte	0x1
	.value	0x15c5
	.long	0x62ff
	.uleb128 0x34
	.long	.LASF814
	.byte	0x1
	.value	0x15c5
	.long	0x3f
	.byte	0x0
	.byte	0x0
	.uleb128 0x48
	.long	0xbaab
	.uleb128 0x34
	.long	.LASF848
	.byte	0x1
	.value	0x15c6
	.long	0x4ddc
	.uleb128 0x34
	.long	.LASF847
	.byte	0x1
	.value	0x15c7
	.long	0x3138
	.uleb128 0x34
	.long	.LASF609
	.byte	0x1
	.value	0x15c7
	.long	0x3138
	.uleb128 0x32
	.string	"fd"
	.byte	0x1
	.value	0x15c8
	.long	0x3f
	.byte	0x0
	.uleb128 0x48
	.long	0xbb01
	.uleb128 0x34
	.long	.LASF811
	.byte	0x1
	.value	0x15dd
	.long	0x2d
	.uleb128 0x34
	.long	.LASF812
	.byte	0x1
	.value	0x15dd
	.long	0x2d
	.uleb128 0x48
	.long	0xbae6
	.uleb128 0x34
	.long	.LASF985
	.byte	0x1
	.value	0x15dd
	.long	0x62ff
	.uleb128 0x34
	.long	.LASF814
	.byte	0x1
	.value	0x15dd
	.long	0x3f
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x34
	.long	.LASF813
	.byte	0x1
	.value	0x15dd
	.long	0x62ff
	.uleb128 0x34
	.long	.LASF814
	.byte	0x1
	.value	0x15dd
	.long	0x3f
	.byte	0x0
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x32
	.string	"fd"
	.byte	0x1
	.value	0x15df
	.long	0x3f
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x13ac
	.uleb128 0x3b
	.long	0xbb60
	.long	.LASF1092
	.byte	0x1
	.value	0xedf
	.byte	0x1
	.long	0x3f
	.byte	0x1
	.uleb128 0x42
	.long	.LASF270
	.byte	0x1
	.value	0xede
	.long	0x1ad4
	.uleb128 0x41
	.string	"p"
	.byte	0x1
	.value	0xede
	.long	0x6f
	.uleb128 0x32
	.string	"i"
	.byte	0x1
	.value	0xee0
	.long	0x3f
	.uleb128 0x34
	.long	.LASF1093
	.byte	0x1
	.value	0xee1
	.long	0x116
	.uleb128 0x34
	.long	.LASF901
	.byte	0x1
	.value	0xee2
	.long	0x53
	.byte	0x0
	.uleb128 0x4a
	.long	0xbb79
	.long	.LASF1094
	.byte	0x1
	.value	0x276
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.string	"i"
	.byte	0x1
	.value	0x277
	.long	0x3f
	.byte	0x0
	.uleb128 0x4a
	.long	0xbb93
	.long	.LASF1095
	.byte	0x1
	.value	0x1851
	.byte	0x1
	.byte	0x1
	.uleb128 0x41
	.string	"ds"
	.byte	0x1
	.value	0x1850
	.long	0x181f
	.byte	0x0
	.uleb128 0x4a
	.long	0xbbb7
	.long	.LASF1096
	.byte	0x1
	.value	0x2315
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.string	"bs"
	.byte	0x1
	.value	0x2316
	.long	0x1fba
	.uleb128 0x32
	.string	"i"
	.byte	0x1
	.value	0x2317
	.long	0x3f
	.byte	0x0
	.uleb128 0x3b
	.long	0xbbd6
	.long	.LASF1097
	.byte	0x1
	.value	0x230e
	.byte	0x1
	.long	0x1fba
	.byte	0x1
	.uleb128 0x42
	.long	.LASF331
	.byte	0x1
	.value	0x230d
	.long	0x3f
	.byte	0x0
	.uleb128 0x3b
	.long	0xbc78
	.long	.LASF1098
	.byte	0x1
	.value	0x207
	.byte	0x1
	.long	0x3f
	.byte	0x1
	.uleb128 0x42
	.long	.LASF1099
	.byte	0x1
	.value	0x206
	.long	0x6f
	.uleb128 0x42
	.long	.LASF549
	.byte	0x1
	.value	0x206
	.long	0x3f
	.uleb128 0x34
	.long	.LASF710
	.byte	0x1
	.value	0x208
	.long	0x27cf
	.uleb128 0x32
	.string	"s"
	.byte	0x1
	.value	0x20a
	.long	0x45a9
	.uleb128 0x32
	.string	"sd"
	.byte	0x1
	.value	0x20b
	.long	0x3f
	.uleb128 0x32
	.string	"e"
	.byte	0x1
	.value	0x20b
	.long	0x3f
	.uleb128 0x34
	.long	.LASF1100
	.byte	0x1
	.value	0x20b
	.long	0x3f
	.uleb128 0x55
	.string	"err"
	.byte	0x1
	.value	0x234
	.uleb128 0x48
	.long	0xbc5d
	.uleb128 0x32
	.string	"__v"
	.byte	0x1
	.value	0x224
	.long	0x68
	.uleb128 0x32
	.string	"__x"
	.byte	0x1
	.value	0x224
	.long	0x68
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x32
	.string	"__v"
	.byte	0x1
	.value	0x225
	.long	0x68
	.uleb128 0x32
	.string	"__x"
	.byte	0x1
	.value	0x225
	.long	0x68
	.byte	0x0
	.byte	0x0
	.uleb128 0x53
	.long	.LASF1101
	.byte	0x1
	.value	0x761
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.long	.LASF1102
	.byte	0x1
	.value	0x1ba
	.byte	0x1
	.byte	0x1
	.uleb128 0x3b
	.long	0xbcf0
	.long	.LASF1103
	.byte	0x1
	.value	0x130c
	.byte	0x1
	.long	0x3f
	.byte	0x1
	.uleb128 0x42
	.long	.LASF272
	.byte	0x1
	.value	0x130b
	.long	0x1c48
	.uleb128 0x42
	.long	.LASF800
	.byte	0x1
	.value	0x130b
	.long	0x6f
	.uleb128 0x32
	.string	"s"
	.byte	0x1
	.value	0x130d
	.long	0x7039
	.uleb128 0x32
	.string	"fd"
	.byte	0x1
	.value	0x130e
	.long	0x3f
	.uleb128 0x32
	.string	"val"
	.byte	0x1
	.value	0x130e
	.long	0x3f
	.uleb128 0x32
	.string	"ret"
	.byte	0x1
	.value	0x130e
	.long	0x3f
	.uleb128 0x34
	.long	.LASF710
	.byte	0x1
	.value	0x130f
	.long	0x27cf
	.byte	0x0
	.uleb128 0x3b
	.long	0xbd56
	.long	.LASF1104
	.byte	0x1
	.value	0x1363
	.byte	0x1
	.long	0x3f
	.byte	0x1
	.uleb128 0x42
	.long	.LASF272
	.byte	0x1
	.value	0x1362
	.long	0x1c48
	.uleb128 0x42
	.long	.LASF800
	.byte	0x1
	.value	0x1362
	.long	0x6f
	.uleb128 0x32
	.string	"s"
	.byte	0x1
	.value	0x1364
	.long	0x6b13
	.uleb128 0x32
	.string	"fd"
	.byte	0x1
	.value	0x1365
	.long	0x3f
	.uleb128 0x34
	.long	.LASF710
	.byte	0x1
	.value	0x1366
	.long	0x27cf
	.uleb128 0x49
	.uleb128 0x32
	.string	"__v"
	.byte	0x1
	.value	0x1378
	.long	0x68
	.uleb128 0x32
	.string	"__x"
	.byte	0x1
	.value	0x1378
	.long	0x68
	.byte	0x0
	.byte	0x0
	.uleb128 0x3b
	.long	0xbde0
	.long	.LASF1105
	.byte	0x1
	.value	0x1334
	.byte	0x1
	.long	0x3f
	.byte	0x1
	.uleb128 0x42
	.long	.LASF272
	.byte	0x1
	.value	0x1333
	.long	0x1c48
	.uleb128 0x42
	.long	.LASF800
	.byte	0x1
	.value	0x1333
	.long	0x6f
	.uleb128 0x32
	.string	"s"
	.byte	0x1
	.value	0x1335
	.long	0x6b13
	.uleb128 0x32
	.string	"fd"
	.byte	0x1
	.value	0x1336
	.long	0x3f
	.uleb128 0x34
	.long	.LASF581
	.byte	0x1
	.value	0x1336
	.long	0x3f
	.uleb128 0x32
	.string	"ret"
	.byte	0x1
	.value	0x1336
	.long	0x3f
	.uleb128 0x32
	.string	"err"
	.byte	0x1
	.value	0x1336
	.long	0x3f
	.uleb128 0x34
	.long	.LASF710
	.byte	0x1
	.value	0x1337
	.long	0x27cf
	.uleb128 0x49
	.uleb128 0x32
	.string	"__v"
	.byte	0x1
	.value	0x135e
	.long	0x68
	.uleb128 0x32
	.string	"__x"
	.byte	0x1
	.value	0x135e
	.long	0x68
	.byte	0x0
	.byte	0x0
	.uleb128 0x3b
	.long	0xbe4c
	.long	.LASF1106
	.byte	0x1
	.value	0x1399
	.byte	0x1
	.long	0x3f
	.byte	0x1
	.uleb128 0x42
	.long	.LASF272
	.byte	0x1
	.value	0x1398
	.long	0x1c48
	.uleb128 0x42
	.long	.LASF807
	.byte	0x1
	.value	0x1398
	.long	0x6f
	.uleb128 0x32
	.string	"s"
	.byte	0x1
	.value	0x139a
	.long	0x7039
	.uleb128 0x32
	.string	"fd"
	.byte	0x1
	.value	0x139b
	.long	0x3f
	.uleb128 0x32
	.string	"val"
	.byte	0x1
	.value	0x139b
	.long	0x3f
	.uleb128 0x32
	.string	"ret"
	.byte	0x1
	.value	0x139b
	.long	0x3f
	.uleb128 0x34
	.long	.LASF710
	.byte	0x1
	.value	0x139c
	.long	0x281a
	.uleb128 0x47
	.long	.LASF1107
	.byte	0x1
	.value	0x13c2
	.byte	0x0
	.uleb128 0x3b
	.long	0xbf58
	.long	.LASF1108
	.byte	0x1
	.value	0x1184
	.byte	0x1
	.long	0x3f
	.byte	0x1
	.uleb128 0x42
	.long	.LASF272
	.byte	0x1
	.value	0x1182
	.long	0x1c48
	.uleb128 0x42
	.long	.LASF1109
	.byte	0x1
	.value	0x1182
	.long	0x6f
	.uleb128 0x42
	.long	.LASF847
	.byte	0x1
	.value	0x1183
	.long	0x6f
	.uleb128 0x42
	.long	.LASF609
	.byte	0x1
	.value	0x1183
	.long	0x6f
	.uleb128 0x32
	.string	"s"
	.byte	0x1
	.value	0x1185
	.long	0x68ce
	.uleb128 0x32
	.string	"fd"
	.byte	0x1
	.value	0x1186
	.long	0x3f
	.uleb128 0x34
	.long	.LASF848
	.byte	0x1
	.value	0x1187
	.long	0x2158
	.uleb128 0x48
	.long	0xbf05
	.uleb128 0x34
	.long	.LASF811
	.byte	0x1
	.value	0x1191
	.long	0x2d
	.uleb128 0x34
	.long	.LASF812
	.byte	0x1
	.value	0x1191
	.long	0x2d
	.uleb128 0x48
	.long	0xbeea
	.uleb128 0x34
	.long	.LASF985
	.byte	0x1
	.value	0x1191
	.long	0x62ff
	.uleb128 0x34
	.long	.LASF814
	.byte	0x1
	.value	0x1191
	.long	0x3f
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x34
	.long	.LASF813
	.byte	0x1
	.value	0x1191
	.long	0x62ff
	.uleb128 0x34
	.long	.LASF814
	.byte	0x1
	.value	0x1191
	.long	0x3f
	.byte	0x0
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x34
	.long	.LASF811
	.byte	0x1
	.value	0x119c
	.long	0x2d
	.uleb128 0x34
	.long	.LASF812
	.byte	0x1
	.value	0x119c
	.long	0x2d
	.uleb128 0x48
	.long	0xbf3c
	.uleb128 0x34
	.long	.LASF985
	.byte	0x1
	.value	0x119c
	.long	0x62ff
	.uleb128 0x34
	.long	.LASF814
	.byte	0x1
	.value	0x119c
	.long	0x3f
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x34
	.long	.LASF813
	.byte	0x1
	.value	0x119c
	.long	0x62ff
	.uleb128 0x34
	.long	.LASF814
	.byte	0x1
	.value	0x119c
	.long	0x3f
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3b
	.long	0xbfa6
	.long	.LASF1110
	.byte	0x1
	.value	0x1143
	.byte	0x1
	.long	0x3f
	.byte	0x1
	.uleb128 0x42
	.long	.LASF848
	.byte	0x1
	.value	0x1142
	.long	0x116
	.uleb128 0x42
	.long	.LASF1111
	.byte	0x1
	.value	0x1142
	.long	0x3f
	.uleb128 0x32
	.string	"ifr"
	.byte	0x1
	.value	0x1144
	.long	0x2cf7
	.uleb128 0x32
	.string	"fd"
	.byte	0x1
	.value	0x1145
	.long	0x3f
	.uleb128 0x32
	.string	"ret"
	.byte	0x1
	.value	0x1145
	.long	0x3f
	.byte	0x0
	.uleb128 0x3b
	.long	0xbfc5
	.long	.LASF1112
	.byte	0x1
	.value	0xfd4
	.byte	0x1
	.long	0x3f
	.byte	0x1
	.uleb128 0x42
	.long	.LASF272
	.byte	0x1
	.value	0xfd3
	.long	0x1c48
	.byte	0x0
	.uleb128 0x56
	.long	.LASF1113
	.byte	0xe
	.byte	0x91
	.long	0x4b1
	.byte	0x1
	.byte	0x1
	.uleb128 0x56
	.long	.LASF1114
	.byte	0xe
	.byte	0x92
	.long	0x4b1
	.byte	0x1
	.byte	0x1
	.uleb128 0x56
	.long	.LASF1115
	.byte	0xe
	.byte	0x93
	.long	0x4b1
	.byte	0x1
	.byte	0x1
	.uleb128 0x57
	.long	.LASF1116
	.byte	0x1
	.value	0x104
	.long	0x3f
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	argos_csilog
	.uleb128 0x57
	.long	.LASF1117
	.byte	0x1
	.value	0x105
	.long	0x3f
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	argos_fsc
	.uleb128 0x57
	.long	.LASF1118
	.byte	0x1
	.value	0x109
	.long	0x3f
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	argos_tracksc
	.uleb128 0x57
	.long	.LASF1119
	.byte	0x1
	.value	0x107
	.long	0x3f
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	argos_instance_id
	.uleb128 0x57
	.long	.LASF1120
	.byte	0x1
	.value	0x103
	.long	0x3f
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	argos_os_hint
	.uleb128 0x57
	.long	.LASF1121
	.byte	0x1
	.value	0x10b
	.long	0xa9b
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	argos_nt_fl
	.uleb128 0x58
	.long	.LASF1122
	.byte	0x2
	.value	0x24d
	.long	0xc084
	.byte	0x1
	.byte	0x1
	.uleb128 0x5
	.byte	0x8
	.long	0x8e7
	.uleb128 0x58
	.long	.LASF1123
	.byte	0x2
	.value	0x32b
	.long	0x2085
	.byte	0x1
	.byte	0x1
	.uleb128 0x58
	.long	.LASF1124
	.byte	0x2
	.value	0x32c
	.long	0x2085
	.byte	0x1
	.byte	0x1
	.uleb128 0x58
	.long	.LASF1125
	.byte	0x2
	.value	0x32d
	.long	0x3f
	.byte	0x1
	.byte	0x1
	.uleb128 0x7
	.long	0xc0bf
	.long	0x12c5
	.uleb128 0x59
	.byte	0x0
	.uleb128 0x58
	.long	.LASF1126
	.byte	0x2
	.value	0x359
	.long	0xc0b4
	.byte	0x1
	.byte	0x1
	.uleb128 0x58
	.long	.LASF1127
	.byte	0x2
	.value	0x373
	.long	0x3f
	.byte	0x1
	.byte	0x1
	.uleb128 0x56
	.long	.LASF1128
	.byte	0x39
	.byte	0x26
	.long	0x1ad4
	.byte	0x1
	.byte	0x1
	.uleb128 0x58
	.long	.LASF1129
	.byte	0x2
	.value	0x376
	.long	0x1ad4
	.byte	0x1
	.byte	0x1
	.uleb128 0x56
	.long	.LASF1130
	.byte	0x35
	.byte	0x1a
	.long	0x1876
	.byte	0x1
	.byte	0x1
	.uleb128 0x56
	.long	.LASF1131
	.byte	0x35
	.byte	0x1b
	.long	0x1876
	.byte	0x1
	.byte	0x1
	.uleb128 0x57
	.long	.LASF1132
	.byte	0x1
	.value	0x23e
	.long	0xc127
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	isa_pic
	.uleb128 0x5
	.byte	0x8
	.long	0x1b8c
	.uleb128 0x5a
	.long	.LASF1133
	.byte	0x1
	.byte	0xe8
	.long	0x3f
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	fd_bootchk
	.uleb128 0x5a
	.long	.LASF1134
	.byte	0x1
	.byte	0xe7
	.long	0x3f
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	acpi_enabled
	.uleb128 0x57
	.long	.LASF1135
	.byte	0x1
	.value	0x23d
	.long	0x676
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	isa_mem_base
	.uleb128 0x5a
	.long	.LASF1136
	.byte	0x1
	.byte	0xc4
	.long	0x3f
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	nb_nics
	.uleb128 0x7
	.long	0xc196
	.long	0x13ac
	.uleb128 0x8
	.long	0x61
	.byte	0x7
	.byte	0x0
	.uleb128 0x5a
	.long	.LASF1137
	.byte	0x1
	.byte	0xc5
	.long	0xc186
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	nd_table
	.uleb128 0x5a
	.long	.LASF1138
	.byte	0x1
	.byte	0xb3
	.long	0x6f
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	bios_name
	.uleb128 0x5a
	.long	.LASF1139
	.byte	0x1
	.byte	0xb2
	.long	0x6f
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	bios_dir
	.uleb128 0x5a
	.long	.LASF1140
	.byte	0x1
	.byte	0xc6
	.long	0x3f
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	vm_running
	.uleb128 0x5a
	.long	.LASF1141
	.byte	0x1
	.byte	0xf4
	.long	0x6f
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	qemu_name
	.uleb128 0x5a
	.long	.LASF1142
	.byte	0x1
	.byte	0xc2
	.long	0x3f
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	ram_size
	.uleb128 0x5a
	.long	.LASF1143
	.byte	0x1
	.byte	0xc7
	.long	0x3f
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	rtc_utc
	.uleb128 0x5a
	.long	.LASF1144
	.byte	0x1
	.byte	0xc8
	.long	0x3f
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	rtc_start_date
	.uleb128 0x5a
	.long	.LASF1145
	.byte	0x1
	.byte	0xc9
	.long	0x3f
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	cirrus_vga_enabled
	.uleb128 0x5a
	.long	.LASF1146
	.byte	0x1
	.byte	0xca
	.long	0x3f
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	vmsvga_enabled
	.uleb128 0x5a
	.long	.LASF1147
	.byte	0x1
	.byte	0xd0
	.long	0x3f
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	graphic_width
	.uleb128 0x5a
	.long	.LASF1148
	.byte	0x1
	.byte	0xd1
	.long	0x3f
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	graphic_height
	.uleb128 0x5a
	.long	.LASF1149
	.byte	0x1
	.byte	0xd2
	.long	0x3f
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	graphic_depth
	.uleb128 0x5a
	.long	.LASF1150
	.byte	0x1
	.byte	0xc0
	.long	0x6f
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	keyboard_layout
	.uleb128 0x5a
	.long	.LASF1151
	.byte	0x1
	.byte	0xda
	.long	0x3f
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	win2k_install_hack
	.uleb128 0x5a
	.long	.LASF1152
	.byte	0x1
	.byte	0xf5
	.long	0x3f
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	alt_grab
	.uleb128 0x5a
	.long	.LASF1153
	.byte	0x1
	.byte	0xdc
	.long	0x3f
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	usb_enabled
	.uleb128 0x5a
	.long	.LASF1154
	.byte	0x1
	.byte	0xde
	.long	0x3f
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	smp_cpus
	.uleb128 0x5a
	.long	.LASF1155
	.byte	0x1
	.byte	0xea
	.long	0x3f
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	cursor_hide
	.uleb128 0x5a
	.long	.LASF1156
	.byte	0x1
	.byte	0xeb
	.long	0x3f
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	graphic_rotate
	.uleb128 0x5a
	.long	.LASF1157
	.byte	0x1
	.byte	0xd6
	.long	0x3f
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	no_quit
	.uleb128 0x5a
	.long	.LASF1158
	.byte	0x1
	.byte	0xef
	.long	0x3f
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	semihosting_enabled
	.uleb128 0x5a
	.long	.LASF1159
	.byte	0x1
	.byte	0xf0
	.long	0x3f
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	autostart
	.uleb128 0x56
	.long	.LASF1160
	.byte	0x2f
	.byte	0x5c
	.long	0x6f
	.byte	0x1
	.byte	0x1
	.uleb128 0x7
	.long	0xc3ad
	.long	0x6f
	.uleb128 0x8
	.long	0x61
	.byte	0xf
	.byte	0x0
	.uleb128 0x5a
	.long	.LASF1161
	.byte	0x1
	.byte	0xed
	.long	0xc39d
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	option_rom
	.uleb128 0x5a
	.long	.LASF1162
	.byte	0x1
	.byte	0xee
	.long	0x3f
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	nb_option_roms
	.uleb128 0x5a
	.long	.LASF1163
	.byte	0x1
	.byte	0xba
	.long	0x3f
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	nb_drives
	.uleb128 0x7
	.long	0xc3ff
	.long	0x1fc0
	.uleb128 0x8
	.long	0x61
	.byte	0x20
	.byte	0x0
	.uleb128 0x5a
	.long	.LASF1164
	.byte	0x1
	.byte	0xb9
	.long	0xc3ef
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	drives_table
	.uleb128 0x7
	.long	0xc425
	.long	0x2f75
	.uleb128 0x8
	.long	0x61
	.byte	0x3
	.byte	0x0
	.uleb128 0x5a
	.long	.LASF1165
	.byte	0x1
	.byte	0xd7
	.long	0xc415
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	serial_hds
	.uleb128 0x7
	.long	0xc44b
	.long	0x2f75
	.uleb128 0x8
	.long	0x61
	.byte	0x2
	.byte	0x0
	.uleb128 0x5a
	.long	.LASF1166
	.byte	0x1
	.byte	0xd8
	.long	0xc43b
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	parallel_hds
	.uleb128 0x7
	.long	0xc471
	.long	0x2032
	.uleb128 0x8
	.long	0x61
	.byte	0x3
	.byte	0x0
	.uleb128 0x57
	.long	.LASF397
	.byte	0x1
	.value	0x235d
	.long	0xc461
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	soundhw
	.uleb128 0x57
	.long	.LASF1167
	.byte	0x1
	.value	0x511
	.long	0x2ddd
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	rt_clock
	.uleb128 0x57
	.long	.LASF1168
	.byte	0x1
	.value	0x512
	.long	0x2ddd
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	vm_clock
	.uleb128 0x5a
	.long	.LASF1169
	.byte	0x1
	.byte	0xc1
	.long	0x153
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	ticks_per_sec
	.uleb128 0x56
	.long	.LASF1170
	.byte	0x3b
	.byte	0x1a
	.long	0x6f
	.byte	0x1
	.byte	0x1
	.uleb128 0x7
	.long	0xc4e9
	.long	0x7a
	.uleb128 0x8
	.long	0x61
	.byte	0x20
	.byte	0x0
	.uleb128 0x56
	.long	.LASF1171
	.byte	0x3b
	.byte	0x1b
	.long	0xc4d9
	.byte	0x1
	.byte	0x1
	.uleb128 0x7
	.long	0xc507
	.long	0x109
	.uleb128 0x1a
	.long	0x61
	.value	0xffff
	.byte	0x0
	.uleb128 0x5a
	.long	.LASF1172
	.byte	0x1
	.byte	0xb4
	.long	0xc4f6
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	ioport_opaque
	.uleb128 0x7
	.long	0xc534
	.long	0x3c19
	.uleb128 0x8
	.long	0x61
	.byte	0x2
	.uleb128 0x1a
	.long	0x61
	.value	0xffff
	.byte	0x0
	.uleb128 0x5a
	.long	.LASF1173
	.byte	0x1
	.byte	0xb5
	.long	0xc51d
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	ioport_read_table
	.uleb128 0x7
	.long	0xc561
	.long	0x3b8e
	.uleb128 0x8
	.long	0x61
	.byte	0x2
	.uleb128 0x1a
	.long	0x61
	.value	0xffff
	.byte	0x0
	.uleb128 0x5a
	.long	.LASF1174
	.byte	0x1
	.byte	0xb6
	.long	0xc54a
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	ioport_write_table
	.uleb128 0x5a
	.long	.LASF1175
	.byte	0x1
	.byte	0xbc
	.long	0x1fba
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	bs_snapshots
	.uleb128 0x5a
	.long	.LASF1176
	.byte	0x1
	.byte	0xbd
	.long	0x3f
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	vga_ram_size
	.uleb128 0x5b
	.long	.LASF1177
	.byte	0x1
	.byte	0xbe
	.long	0x1410
	.byte	0x9
	.byte	0x3
	.quad	display_state
	.uleb128 0x5a
	.long	.LASF1178
	.byte	0x1
	.byte	0xbf
	.long	0x3f
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	nographic
	.uleb128 0x5a
	.long	.LASF1179
	.byte	0x1
	.byte	0xc3
	.long	0x3f
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	pit_min_timer_count
	.uleb128 0x5a
	.long	.LASF1180
	.byte	0x1
	.byte	0xd4
	.long	0x3f
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	full_screen
	.uleb128 0x5a
	.long	.LASF1181
	.byte	0x1
	.byte	0xd5
	.long	0x3f
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	no_frame
	.uleb128 0x5b
	.long	.LASF1182
	.byte	0x1
	.byte	0xdd
	.long	0x1c48
	.byte	0x9
	.byte	0x3
	.quad	first_vlan
	.uleb128 0x5a
	.long	.LASF1183
	.byte	0x1
	.byte	0xdf
	.long	0x6f
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	vnc_display
	.uleb128 0x5a
	.long	.LASF1184
	.byte	0x1
	.byte	0xe9
	.long	0x3f
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	no_reboot
	.uleb128 0x5a
	.long	.LASF1185
	.byte	0x1
	.byte	0xec
	.long	0x3f
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	daemonize
	.uleb128 0x5a
	.long	.LASF1186
	.byte	0x1
	.byte	0xfa
	.long	0x3f
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	nb_drives_opt
	.uleb128 0x7
	.long	0xc694
	.long	0x7a
	.uleb128 0x8
	.long	0x61
	.byte	0x1f
	.uleb128 0x1a
	.long	0x61
	.value	0x3ff
	.byte	0x0
	.uleb128 0x5a
	.long	.LASF1187
	.byte	0x1
	.byte	0xfb
	.long	0xc67d
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	drives_opt
	.uleb128 0x5b
	.long	.LASF1188
	.byte	0x1
	.byte	0xfd
	.long	0x2085
	.byte	0x9
	.byte	0x3
	.quad	cur_cpu
	.uleb128 0x5b
	.long	.LASF225
	.byte	0x1
	.byte	0xfe
	.long	0x2085
	.byte	0x9
	.byte	0x3
	.quad	next_cpu
	.uleb128 0x5b
	.long	.LASF1189
	.byte	0x1
	.byte	0xff
	.long	0x3f
	.byte	0x9
	.byte	0x3
	.quad	event_pending
	.uleb128 0x57
	.long	.LASF1190
	.byte	0x1
	.value	0x108
	.long	0x116
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	argos_wprofile
	.uleb128 0x2c
	.long	.LASF1191
	.byte	0x1
	.value	0x11a
	.long	0x6f
	.byte	0x9
	.byte	0x3
	.quad	ctrlsock_laddr
	.uleb128 0x2c
	.long	.LASF1192
	.byte	0x1
	.value	0x11b
	.long	0x3f
	.byte	0x9
	.byte	0x3
	.quad	ctrlsock_lport
	.uleb128 0x2c
	.long	.LASF1193
	.byte	0x1
	.value	0x11c
	.long	0x45a9
	.byte	0x9
	.byte	0x3
	.quad	ctrlsock
	.uleb128 0x2c
	.long	.LASF1194
	.byte	0x1
	.value	0x333
	.long	0x3c5c
	.byte	0x9
	.byte	0x3
	.quad	qemu_put_kbd_event
	.uleb128 0x2c
	.long	.LASF1195
	.byte	0x1
	.value	0x334
	.long	0x109
	.byte	0x9
	.byte	0x3
	.quad	qemu_put_kbd_event_opaque
	.uleb128 0x2c
	.long	.LASF1196
	.byte	0x1
	.value	0x335
	.long	0x3cd9
	.byte	0x9
	.byte	0x3
	.quad	qemu_put_mouse_event_head
	.uleb128 0x2c
	.long	.LASF1197
	.byte	0x1
	.value	0x336
	.long	0x3cd9
	.byte	0x9
	.byte	0x3
	.quad	qemu_put_mouse_event_current
	.uleb128 0x2c
	.long	.LASF1198
	.byte	0x1
	.value	0x40b
	.long	0x3f
	.byte	0x9
	.byte	0x3
	.quad	use_rt_clock
	.uleb128 0x2c
	.long	.LASF1199
	.byte	0x1
	.value	0x431
	.long	0x153
	.byte	0x9
	.byte	0x3
	.quad	cpu_ticks_prev
	.uleb128 0x2c
	.long	.LASF1200
	.byte	0x1
	.value	0x432
	.long	0x153
	.byte	0x9
	.byte	0x3
	.quad	cpu_ticks_offset
	.uleb128 0x2c
	.long	.LASF1201
	.byte	0x1
	.value	0x433
	.long	0x153
	.byte	0x9
	.byte	0x3
	.quad	cpu_clock_offset
	.uleb128 0x2c
	.long	.LASF1202
	.byte	0x1
	.value	0x434
	.long	0x3f
	.byte	0x9
	.byte	0x3
	.quad	cpu_ticks_enabled
	.uleb128 0x2c
	.long	.LASF1203
	.byte	0x1
	.value	0x499
	.long	0x2e61
	.byte	0x9
	.byte	0x3
	.quad	alarm_timer
	.uleb128 0x7
	.long	0xc82e
	.long	0x2de9
	.uleb128 0x8
	.long	0x61
	.byte	0x4
	.byte	0x0
	.uleb128 0x2c
	.long	.LASF1204
	.byte	0x1
	.value	0x4bc
	.long	0xc81e
	.byte	0x9
	.byte	0x3
	.quad	alarm_timers
	.uleb128 0x7
	.long	0xc854
	.long	0x420b
	.uleb128 0x8
	.long	0x61
	.byte	0x1
	.byte	0x0
	.uleb128 0x2c
	.long	.LASF1205
	.byte	0x1
	.value	0x514
	.long	0xc844
	.byte	0x9
	.byte	0x3
	.quad	active_timers
	.uleb128 0x2c
	.long	.LASF1206
	.byte	0x1
	.value	0x7cd
	.long	0x3f
	.byte	0x9
	.byte	0x3
	.quad	term_timestamps
	.uleb128 0x2c
	.long	.LASF1207
	.byte	0x1
	.value	0x7ce
	.long	0x153
	.byte	0x9
	.byte	0x3
	.quad	term_timestamps_start
	.uleb128 0x7
	.long	0xc8a6
	.long	0x116
	.uleb128 0x8
	.long	0x61
	.byte	0x6
	.byte	0x0
	.uleb128 0x2c
	.long	.LASF1208
	.byte	0x1
	.value	0x804
	.long	0xc896
	.byte	0x9
	.byte	0x3
	.quad	mux_help
	.uleb128 0x2c
	.long	.LASF1209
	.byte	0x1
	.value	0x80f
	.long	0x3f
	.byte	0x9
	.byte	0x3
	.quad	term_escape_char
	.uleb128 0x2c
	.long	.LASF1210
	.byte	0x1
	.value	0x925
	.long	0x3f
	.byte	0x9
	.byte	0x3
	.quad	stdio_nb_clients
	.uleb128 0x2c
	.long	.LASF1211
	.byte	0x1
	.value	0x998
	.long	0x53b8
	.byte	0x9
	.byte	0x3
	.quad	term_fifo
	.uleb128 0x2c
	.long	.LASF1212
	.byte	0x1
	.value	0x999
	.long	0x3f
	.byte	0x9
	.byte	0x3
	.quad	term_fifo_size
	.uleb128 0x2c
	.long	.LASF1213
	.byte	0x1
	.value	0x9c1
	.long	0x26b2
	.byte	0x9
	.byte	0x3
	.quad	oldtty
	.uleb128 0x2c
	.long	.LASF1214
	.byte	0x1
	.value	0x9c2
	.long	0x3f
	.byte	0x9
	.byte	0x3
	.quad	old_fd0_flags
	.uleb128 0x2c
	.long	.LASF1215
	.byte	0x1
	.value	0xfb7
	.long	0x3f
	.byte	0x9
	.byte	0x3
	.quad	slirp_inited
	.uleb128 0x2c
	.long	.LASF1216
	.byte	0x1
	.value	0xfb8
	.long	0x1c32
	.byte	0x9
	.byte	0x3
	.quad	slirp_vc
	.uleb128 0x57
	.long	.LASF1217
	.byte	0x1
	.value	0x1015
	.long	0x3138
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	smb_dir
	.uleb128 0x2c
	.long	.LASF1218
	.byte	0x1
	.value	0x177d
	.long	0x1b13
	.byte	0x9
	.byte	0x3
	.quad	used_usb_ports
	.uleb128 0x2c
	.long	.LASF1219
	.byte	0x1
	.value	0x177e
	.long	0x1b13
	.byte	0x9
	.byte	0x3
	.quad	free_usb_ports
	.uleb128 0x2c
	.long	.LASF1220
	.byte	0x1
	.value	0x181a
	.long	0x324c
	.byte	0x9
	.byte	0x3
	.quad	pcmcia_sockets
	.uleb128 0x2c
	.long	.LASF1221
	.byte	0x1
	.value	0x186b
	.long	0x363a
	.byte	0x9
	.byte	0x3
	.quad	first_io_handler
	.uleb128 0x2c
	.long	.LASF1222
	.byte	0x1
	.value	0x18a9
	.long	0x7827
	.byte	0x9
	.byte	0x3
	.quad	first_polling_entry
	.uleb128 0x2c
	.long	.LASF1223
	.byte	0x1
	.value	0x19e7
	.long	0x7f00
	.byte	0x9
	.byte	0x3
	.quad	first_se
	.uleb128 0x2c
	.long	.LASF1224
	.byte	0x1
	.value	0x1ec4
	.long	0x1d2b
	.byte	0x9
	.byte	0x3
	.quad	first_bh
	.uleb128 0x57
	.long	.LASF1225
	.byte	0x1
	.value	0x1f08
	.long	0x8fe6
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	first_machine
	.uleb128 0x2c
	.long	.LASF636
	.byte	0x1
	.value	0x1f30
	.long	0x34e7
	.byte	0x9
	.byte	0x3
	.quad	vm_change_state_head
	.uleb128 0x2c
	.long	.LASF1226
	.byte	0x1
	.value	0x1f51
	.long	0x9872
	.byte	0x9
	.byte	0x3
	.quad	vm_stop_cb
	.uleb128 0x2c
	.long	.LASF1227
	.byte	0x1
	.value	0x1f52
	.long	0x109
	.byte	0x9
	.byte	0x3
	.quad	vm_stop_opaque
	.uleb128 0x2c
	.long	.LASF1228
	.byte	0x1
	.value	0x1f80
	.long	0x9912
	.byte	0x9
	.byte	0x3
	.quad	first_reset_entry
	.uleb128 0x2c
	.long	.LASF1229
	.byte	0x1
	.value	0x1f81
	.long	0x3f
	.byte	0x9
	.byte	0x3
	.quad	reset_requested
	.uleb128 0x2c
	.long	.LASF1230
	.byte	0x1
	.value	0x1f82
	.long	0x3f
	.byte	0x9
	.byte	0x3
	.quad	shutdown_requested
	.uleb128 0x2c
	.long	.LASF1231
	.byte	0x1
	.value	0x1f83
	.long	0x3f
	.byte	0x9
	.byte	0x3
	.quad	powerdown_requested
	.uleb128 0x7
	.long	0xcade
	.long	0xb478
	.uleb128 0x8
	.long	0x61
	.byte	0x4c
	.byte	0x0
	.uleb128 0x57
	.long	.LASF1232
	.byte	0x1
	.value	0x2286
	.long	0xcaf5
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	qemu_options
	.uleb128 0x6
	.long	0xcace
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
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
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
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x27
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
	.uleb128 0x15
	.byte	0x0
	.uleb128 0x27
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.uleb128 0x16
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x5
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
	.uleb128 0x2
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x32
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
	.uleb128 0x33
	.uleb128 0x18
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
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
	.uleb128 0x39
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x3a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x3e
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
	.uleb128 0x3f
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x40
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x41
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
	.uleb128 0x42
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
	.uleb128 0x43
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x44
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
	.uleb128 0x45
	.uleb128 0xa
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x46
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x47
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
	.uleb128 0x48
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x49
	.uleb128 0xb
	.byte	0x1
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x4b
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x4c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x4d
	.uleb128 0xb
	.byte	0x0
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x4e
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
	.uleb128 0x4f
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
	.uleb128 0x50
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
	.uleb128 0x51
	.uleb128 0x4
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
	.uleb128 0x52
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
	.uleb128 0x53
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
	.uleb128 0x54
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x55
	.uleb128 0xa
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x56
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
	.uleb128 0x57
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
	.uleb128 0x58
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
	.uleb128 0x59
	.uleb128 0x21
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x5a
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
	.uleb128 0x5b
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
	.long	0xcc0
	.value	0x2
	.long	.Ldebug_info0
	.long	0xcafb
	.long	0x359e
	.string	"qemu_set_fd_handler2"
	.long	0x3640
	.string	"qemu_set_fd_handler"
	.long	0x3837
	.string	"default_ioport_writel"
	.long	0x3882
	.string	"isa_unassign_ioport"
	.long	0x38cb
	.string	"cpu_outb"
	.long	0x3916
	.string	"cpu_outw"
	.long	0x3961
	.string	"cpu_outl"
	.long	0x39ac
	.string	"argos_cpu_inb"
	.long	0x3a07
	.string	"argos_cpu_inw"
	.long	0x3a62
	.string	"argos_cpu_inl"
	.long	0x3abd
	.string	"hw_error"
	.long	0x3b09
	.string	"register_ioport_write"
	.long	0x3b94
	.string	"register_ioport_read"
	.long	0x3c1f
	.string	"qemu_add_kbd_event_handler"
	.long	0x3c62
	.string	"qemu_add_mouse_event_handler"
	.long	0x3cdf
	.string	"qemu_remove_mouse_event_handler"
	.long	0x3d2a
	.string	"kbd_put_keycode"
	.long	0x3d59
	.string	"kbd_mouse_event"
	.long	0x3dd7
	.string	"kbd_mouse_is_absolute"
	.long	0x3df7
	.string	"do_info_mice"
	.long	0x3e34
	.string	"do_mouse_set"
	.long	0x3e7d
	.string	"muldiv64"
	.long	0x3f9b
	.string	"cpu_get_ticks"
	.long	0x408a
	.string	"cpu_enable_ticks"
	.long	0x40fd
	.string	"cpu_disable_ticks"
	.long	0x41b0
	.string	"qemu_new_timer"
	.long	0x4211
	.string	"qemu_free_timer"
	.long	0x423f
	.string	"qemu_del_timer"
	.long	0x428c
	.string	"qemu_mod_timer"
	.long	0x42e1
	.string	"qemu_timer_pending"
	.long	0x4368
	.string	"qemu_get_clock"
	.long	0x439b
	.string	"qemu_system_shutdown_request"
	.long	0x43b7
	.string	"qemu_system_reset_request"
	.long	0x44d8
	.string	"socket_set_block"
	.long	0x4506
	.string	"socket_set_nonblock"
	.long	0x45af
	.string	"argos_logf"
	.long	0x49dd
	.string	"qemu_bh_new"
	.long	0x4a2a
	.string	"qemu_bh_schedule"
	.long	0x4a66
	.string	"qemu_chr_reset"
	.long	0x4a93
	.string	"qemu_chr_write"
	.long	0x4ae0
	.string	"qemu_chr_ioctl"
	.long	0x4b2d
	.string	"qemu_chr_can_read"
	.long	0x4b5e
	.string	"qemu_chr_read"
	.long	0x4ba7
	.string	"qemu_chr_accept_input"
	.long	0x4bd4
	.string	"qemu_chr_printf"
	.long	0x4c3e
	.string	"qemu_chr_send_event"
	.long	0x4c79
	.string	"qemu_chr_add_handlers"
	.long	0x5b5e
	.string	"qemu_chr_close"
	.long	0x5c15
	.string	"parse_host_port"
	.long	0x5cdd
	.string	"parse_host_src_port"
	.long	0x5f42
	.string	"qemu_chr_open"
	.long	0x6521
	.string	"qemu_find_vlan"
	.long	0x6575
	.string	"qemu_new_vlan_client"
	.long	0x65f3
	.string	"qemu_can_send_packet"
	.long	0x6641
	.string	"qemu_send_packet"
	.long	0x66a7
	.string	"slirp_can_output"
	.long	0x66c7
	.string	"slirp_output"
	.long	0x6852
	.string	"do_info_slirp"
	.long	0x720d
	.string	"do_info_network"
	.long	0x728a
	.string	"drive_get_index"
	.long	0x72e7
	.string	"drive_get_max_bus"
	.long	0x7336
	.string	"qemu_register_usb_port"
	.long	0x74b6
	.string	"do_usb_add"
	.long	0x74f3
	.string	"do_usb_del"
	.long	0x75ee
	.string	"usb_info"
	.long	0x7639
	.string	"pcmcia_socket_register"
	.long	0x7676
	.string	"pcmcia_socket_unregister"
	.long	0x76c7
	.string	"pcmcia_info"
	.long	0x77c5
	.string	"qemu_add_polling_cb"
	.long	0x782d
	.string	"qemu_del_polling_cb"
	.long	0x7885
	.string	"qemu_fopen"
	.long	0x79bb
	.string	"qemu_fflush"
	.long	0x79e8
	.string	"qemu_put_byte"
	.long	0x7a21
	.string	"qemu_put_be32"
	.long	0x7a5a
	.string	"qemu_put_be64"
	.long	0x7acd
	.string	"qemu_put_timer"
	.long	0x7b15
	.string	"qemu_put_be16"
	.long	0x7b88
	.string	"qemu_get_byte"
	.long	0x7bb9
	.string	"qemu_get_be32"
	.long	0x7bf6
	.string	"qemu_get_be64"
	.long	0x7c7f
	.string	"qemu_get_timer"
	.long	0x7cc7
	.string	"qemu_get_be16"
	.long	0x7d04
	.string	"qemu_fclose"
	.long	0x7d31
	.string	"qemu_put_buffer"
	.long	0x7d86
	.string	"qemu_get_buffer"
	.long	0x7ded
	.string	"qemu_ftell"
	.long	0x7e1e
	.string	"qemu_fseek"
	.long	0x7e6b
	.string	"register_savevm"
	.long	0x7fc2
	.string	"do_delvm"
	.long	0x8026
	.string	"do_info_snapshots"
	.long	0x8125
	.string	"cpu_save"
	.long	0x8562
	.string	"cpu_load"
	.long	0x8eb4
	.string	"qemu_bh_poll"
	.long	0x8f06
	.string	"qemu_bh_cancel"
	.long	0x8f42
	.string	"qemu_bh_delete"
	.long	0x8fa8
	.string	"qemu_register_machine"
	.long	0x902b
	.string	"qemu_add_vm_change_state_handler"
	.long	0x907d
	.string	"qemu_del_vm_change_state_handler"
	.long	0x90e4
	.string	"vm_stop"
	.long	0x9113
	.string	"vm_start"
	.long	0x921f
	.string	"do_loadvm"
	.long	0x94e2
	.string	"do_savevm"
	.long	0x9832
	.string	"qemu_add_vm_stop_handler"
	.long	0x9878
	.string	"qemu_del_vm_stop_handler"
	.long	0x98b4
	.string	"qemu_register_reset"
	.long	0x9918
	.string	"qemu_system_powerdown_request"
	.long	0x9934
	.string	"main_loop_wait"
	.long	0x9b7e
	.string	"qemu_key_check"
	.long	0xa39c
	.string	"main"
	.long	0xbfec
	.string	"argos_csilog"
	.long	0xc003
	.string	"argos_fsc"
	.long	0xc01a
	.string	"argos_tracksc"
	.long	0xc031
	.string	"argos_instance_id"
	.long	0xc048
	.string	"argos_os_hint"
	.long	0xc05f
	.string	"argos_nt_fl"
	.long	0xc110
	.string	"isa_pic"
	.long	0xc12d
	.string	"fd_bootchk"
	.long	0xc143
	.string	"acpi_enabled"
	.long	0xc159
	.string	"isa_mem_base"
	.long	0xc170
	.string	"nb_nics"
	.long	0xc196
	.string	"nd_table"
	.long	0xc1ac
	.string	"bios_name"
	.long	0xc1c2
	.string	"bios_dir"
	.long	0xc1d8
	.string	"vm_running"
	.long	0xc1ee
	.string	"qemu_name"
	.long	0xc204
	.string	"ram_size"
	.long	0xc21a
	.string	"rtc_utc"
	.long	0xc230
	.string	"rtc_start_date"
	.long	0xc246
	.string	"cirrus_vga_enabled"
	.long	0xc25c
	.string	"vmsvga_enabled"
	.long	0xc272
	.string	"graphic_width"
	.long	0xc288
	.string	"graphic_height"
	.long	0xc29e
	.string	"graphic_depth"
	.long	0xc2b4
	.string	"keyboard_layout"
	.long	0xc2ca
	.string	"win2k_install_hack"
	.long	0xc2e0
	.string	"alt_grab"
	.long	0xc2f6
	.string	"usb_enabled"
	.long	0xc30c
	.string	"smp_cpus"
	.long	0xc322
	.string	"cursor_hide"
	.long	0xc338
	.string	"graphic_rotate"
	.long	0xc34e
	.string	"no_quit"
	.long	0xc364
	.string	"semihosting_enabled"
	.long	0xc37a
	.string	"autostart"
	.long	0xc3ad
	.string	"option_rom"
	.long	0xc3c3
	.string	"nb_option_roms"
	.long	0xc3d9
	.string	"nb_drives"
	.long	0xc3ff
	.string	"drives_table"
	.long	0xc425
	.string	"serial_hds"
	.long	0xc44b
	.string	"parallel_hds"
	.long	0xc471
	.string	"soundhw"
	.long	0xc488
	.string	"rt_clock"
	.long	0xc49f
	.string	"vm_clock"
	.long	0xc4b6
	.string	"ticks_per_sec"
	.long	0xc507
	.string	"ioport_opaque"
	.long	0xc534
	.string	"ioport_read_table"
	.long	0xc561
	.string	"ioport_write_table"
	.long	0xc577
	.string	"bs_snapshots"
	.long	0xc58d
	.string	"vga_ram_size"
	.long	0xc5b8
	.string	"nographic"
	.long	0xc5ce
	.string	"pit_min_timer_count"
	.long	0xc5e4
	.string	"full_screen"
	.long	0xc5fa
	.string	"no_frame"
	.long	0xc625
	.string	"vnc_display"
	.long	0xc63b
	.string	"no_reboot"
	.long	0xc651
	.string	"daemonize"
	.long	0xc667
	.string	"nb_drives_opt"
	.long	0xc694
	.string	"drives_opt"
	.long	0xc6e9
	.string	"argos_wprofile"
	.long	0xc96c
	.string	"smb_dir"
	.long	0xca1d
	.string	"first_machine"
	.long	0xcade
	.string	"qemu_options"
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
	.quad	.LBB4-.Ltext0
	.quad	.LBE4-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB5-.Ltext0
	.quad	.LBE5-.Ltext0
	.quad	.LBB8-.Ltext0
	.quad	.LBE8-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB23-.Ltext0
	.quad	.LBE23-.Ltext0
	.quad	.LBB27-.Ltext0
	.quad	.LBE27-.Ltext0
	.quad	.LBB25-.Ltext0
	.quad	.LBE25-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB28-.Ltext0
	.quad	.LBE28-.Ltext0
	.quad	.LBB31-.Ltext0
	.quad	.LBE31-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB29-.Ltext0
	.quad	.LBE29-.Ltext0
	.quad	.LBB32-.Ltext0
	.quad	.LBE32-.Ltext0
	.quad	.LBB30-.Ltext0
	.quad	.LBE30-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB34-.Ltext0
	.quad	.LBE34-.Ltext0
	.quad	.LBB51-.Ltext0
	.quad	.LBE51-.Ltext0
	.quad	.LBB48-.Ltext0
	.quad	.LBE48-.Ltext0
	.quad	.LBB44-.Ltext0
	.quad	.LBE44-.Ltext0
	.quad	.LBB42-.Ltext0
	.quad	.LBE42-.Ltext0
	.quad	.LBB40-.Ltext0
	.quad	.LBE40-.Ltext0
	.quad	.LBB38-.Ltext0
	.quad	.LBE38-.Ltext0
	.quad	.LBB36-.Ltext0
	.quad	.LBE36-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB46-.Ltext0
	.quad	.LBE46-.Ltext0
	.quad	.LBB54-.Ltext0
	.quad	.LBE54-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB55-.Ltext0
	.quad	.LBE55-.Ltext0
	.quad	.LBB56-.Ltext0
	.quad	.LBE56-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB59-.Ltext0
	.quad	.LBE59-.Ltext0
	.quad	.LBB61-.Ltext0
	.quad	.LBE61-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB65-.Ltext0
	.quad	.LBE65-.Ltext0
	.quad	.LBB70-.Ltext0
	.quad	.LBE70-.Ltext0
	.quad	.LBB68-.Ltext0
	.quad	.LBE68-.Ltext0
	.quad	.LBB66-.Ltext0
	.quad	.LBE66-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB75-.Ltext0
	.quad	.LBE75-.Ltext0
	.quad	.LBB77-.Ltext0
	.quad	.LBE77-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB79-.Ltext0
	.quad	.LBE79-.Ltext0
	.quad	.LBB84-.Ltext0
	.quad	.LBE84-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB80-.Ltext0
	.quad	.LBE80-.Ltext0
	.quad	.LBB85-.Ltext0
	.quad	.LBE85-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB87-.Ltext0
	.quad	.LBE87-.Ltext0
	.quad	.LBB116-.Ltext0
	.quad	.LBE116-.Ltext0
	.quad	.LBB95-.Ltext0
	.quad	.LBE95-.Ltext0
	.quad	.LBB88-.Ltext0
	.quad	.LBE88-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB89-.Ltext0
	.quad	.LBE89-.Ltext0
	.quad	.LBB128-.Ltext0
	.quad	.LBE128-.Ltext0
	.quad	.LBB121-.Ltext0
	.quad	.LBE121-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB91-.Ltext0
	.quad	.LBE91-.Ltext0
	.quad	.LBB123-.Ltext0
	.quad	.LBE123-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB93-.Ltext0
	.quad	.LBE93-.Ltext0
	.quad	.LBB138-.Ltext0
	.quad	.LBE138-.Ltext0
	.quad	.LBB134-.Ltext0
	.quad	.LBE134-.Ltext0
	.quad	.LBB127-.Ltext0
	.quad	.LBE127-.Ltext0
	.quad	.LBB101-.Ltext0
	.quad	.LBE101-.Ltext0
	.quad	.LBB97-.Ltext0
	.quad	.LBE97-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB99-.Ltext0
	.quad	.LBE99-.Ltext0
	.quad	.LBB118-.Ltext0
	.quad	.LBE118-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB108-.Ltext0
	.quad	.LBE108-.Ltext0
	.quad	.LBB112-.Ltext0
	.quad	.LBE112-.Ltext0
	.quad	.LBB110-.Ltext0
	.quad	.LBE110-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB114-.Ltext0
	.quad	.LBE114-.Ltext0
	.quad	.LBB136-.Ltext0
	.quad	.LBE136-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB120-.Ltext0
	.quad	.LBE120-.Ltext0
	.quad	.LBB132-.Ltext0
	.quad	.LBE132-.Ltext0
	.quad	.LBB125-.Ltext0
	.quad	.LBE125-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB143-.Ltext0
	.quad	.LBE143-.Ltext0
	.quad	.LBB144-.Ltext0
	.quad	.LBE144-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB146-.Ltext0
	.quad	.LBE146-.Ltext0
	.quad	.LBB147-.Ltext0
	.quad	.LBE147-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB155-.Ltext0
	.quad	.LBE155-.Ltext0
	.quad	.LBB156-.Ltext0
	.quad	.LBE156-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB159-.Ltext0
	.quad	.LBE159-.Ltext0
	.quad	.LBB162-.Ltext0
	.quad	.LBE162-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB165-.Ltext0
	.quad	.LBE165-.Ltext0
	.quad	.LBB166-.Ltext0
	.quad	.LBE166-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB167-.Ltext0
	.quad	.LBE167-.Ltext0
	.quad	.LBB168-.Ltext0
	.quad	.LBE168-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB172-.Ltext0
	.quad	.LBE172-.Ltext0
	.quad	.LBB173-.Ltext0
	.quad	.LBE173-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB177-.Ltext0
	.quad	.LBE177-.Ltext0
	.quad	.LBB179-.Ltext0
	.quad	.LBE179-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB178-.Ltext0
	.quad	.LBE178-.Ltext0
	.quad	.LBB180-.Ltext0
	.quad	.LBE180-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB181-.Ltext0
	.quad	.LBE181-.Ltext0
	.quad	.LBB183-.Ltext0
	.quad	.LBE183-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB182-.Ltext0
	.quad	.LBE182-.Ltext0
	.quad	.LBB184-.Ltext0
	.quad	.LBE184-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB276-.Ltext0
	.quad	.LBE276-.Ltext0
	.quad	.LBB346-.Ltext0
	.quad	.LBE346-.Ltext0
	.quad	.LBB343-.Ltext0
	.quad	.LBE343-.Ltext0
	.quad	.LBB284-.Ltext0
	.quad	.LBE284-.Ltext0
	.quad	.LBB280-.Ltext0
	.quad	.LBE280-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB277-.Ltext0
	.quad	.LBE277-.Ltext0
	.quad	.LBB286-.Ltext0
	.quad	.LBE286-.Ltext0
	.quad	.LBB285-.Ltext0
	.quad	.LBE285-.Ltext0
	.quad	.LBB281-.Ltext0
	.quad	.LBE281-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB279-.Ltext0
	.quad	.LBE279-.Ltext0
	.quad	.LBB283-.Ltext0
	.quad	.LBE283-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB352-.Ltext0
	.quad	.LBE352-.Ltext0
	.quad	.LBB354-.Ltext0
	.quad	.LBE354-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB358-.Ltext0
	.quad	.LBE358-.Ltext0
	.quad	.LBB369-.Ltext0
	.quad	.LBE369-.Ltext0
	.quad	.LBB365-.Ltext0
	.quad	.LBE365-.Ltext0
	.quad	.LBB360-.Ltext0
	.quad	.LBE360-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB362-.Ltext0
	.quad	.LBE362-.Ltext0
	.quad	.LBB371-.Ltext0
	.quad	.LBE371-.Ltext0
	.quad	.LBB367-.Ltext0
	.quad	.LBE367-.Ltext0
	.quad	.LBB363-.Ltext0
	.quad	.LBE363-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB373-.Ltext0
	.quad	.LBE373-.Ltext0
	.quad	.LBB381-.Ltext0
	.quad	.LBE381-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB387-.Ltext0
	.quad	.LBE387-.Ltext0
	.quad	.LBB398-.Ltext0
	.quad	.LBE398-.Ltext0
	.quad	.LBB396-.Ltext0
	.quad	.LBE396-.Ltext0
	.quad	.LBB389-.Ltext0
	.quad	.LBE389-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB391-.Ltext0
	.quad	.LBE391-.Ltext0
	.quad	.LBB393-.Ltext0
	.quad	.LBE393-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB400-.Ltext0
	.quad	.LBE400-.Ltext0
	.quad	.LBB407-.Ltext0
	.quad	.LBE407-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB401-.Ltext0
	.quad	.LBE401-.Ltext0
	.quad	.LBB402-.Ltext0
	.quad	.LBE402-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB408-.Ltext0
	.quad	.LBE408-.Ltext0
	.quad	.LBB409-.Ltext0
	.quad	.LBE409-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB412-.Ltext0
	.quad	.LBE412-.Ltext0
	.quad	.LBB415-.Ltext0
	.quad	.LBE415-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB420-.Ltext0
	.quad	.LBE420-.Ltext0
	.quad	.LBB426-.Ltext0
	.quad	.LBE426-.Ltext0
	.quad	.LBB423-.Ltext0
	.quad	.LBE423-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB427-.Ltext0
	.quad	.LBE427-.Ltext0
	.quad	.LBB430-.Ltext0
	.quad	.LBE430-.Ltext0
	.quad	.LBB429-.Ltext0
	.quad	.LBE429-.Ltext0
	.quad	.LBB428-.Ltext0
	.quad	.LBE428-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB435-.Ltext0
	.quad	.LBE435-.Ltext0
	.quad	.LBB436-.Ltext0
	.quad	.LBE436-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB437-.Ltext0
	.quad	.LBE437-.Ltext0
	.quad	.LBB438-.Ltext0
	.quad	.LBE438-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB439-.Ltext0
	.quad	.LBE439-.Ltext0
	.quad	.LBB465-.Ltext0
	.quad	.LBE465-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB440-.Ltext0
	.quad	.LBE440-.Ltext0
	.quad	.LBB466-.Ltext0
	.quad	.LBE466-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB441-.Ltext0
	.quad	.LBE441-.Ltext0
	.quad	.LBB442-.Ltext0
	.quad	.LBE442-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB443-.Ltext0
	.quad	.LBE443-.Ltext0
	.quad	.LBB444-.Ltext0
	.quad	.LBE444-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB448-.Ltext0
	.quad	.LBE448-.Ltext0
	.quad	.LBB471-.Ltext0
	.quad	.LBE471-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB449-.Ltext0
	.quad	.LBE449-.Ltext0
	.quad	.LBB472-.Ltext0
	.quad	.LBE472-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB450-.Ltext0
	.quad	.LBE450-.Ltext0
	.quad	.LBB469-.Ltext0
	.quad	.LBE469-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB451-.Ltext0
	.quad	.LBE451-.Ltext0
	.quad	.LBB470-.Ltext0
	.quad	.LBE470-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB452-.Ltext0
	.quad	.LBE452-.Ltext0
	.quad	.LBB467-.Ltext0
	.quad	.LBE467-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB453-.Ltext0
	.quad	.LBE453-.Ltext0
	.quad	.LBB468-.Ltext0
	.quad	.LBE468-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB454-.Ltext0
	.quad	.LBE454-.Ltext0
	.quad	.LBB455-.Ltext0
	.quad	.LBE455-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB456-.Ltext0
	.quad	.LBE456-.Ltext0
	.quad	.LBB457-.Ltext0
	.quad	.LBE457-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB473-.Ltext0
	.quad	.LBE473-.Ltext0
	.quad	.LBB481-.Ltext0
	.quad	.LBE481-.Ltext0
	.quad	.LBB478-.Ltext0
	.quad	.LBE478-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB474-.Ltext0
	.quad	.LBE474-.Ltext0
	.quad	.LBB479-.Ltext0
	.quad	.LBE479-.Ltext0
	.quad	.LBB476-.Ltext0
	.quad	.LBE476-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB475-.Ltext0
	.quad	.LBE475-.Ltext0
	.quad	.LBB480-.Ltext0
	.quad	.LBE480-.Ltext0
	.quad	.LBB477-.Ltext0
	.quad	.LBE477-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB482-.Ltext0
	.quad	.LBE482-.Ltext0
	.quad	.LBB483-.Ltext0
	.quad	.LBE483-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB486-.Ltext0
	.quad	.LBE486-.Ltext0
	.quad	.LBB777-.Ltext0
	.quad	.LBE777-.Ltext0
	.quad	.LBB769-.Ltext0
	.quad	.LBE769-.Ltext0
	.quad	.LBB746-.Ltext0
	.quad	.LBE746-.Ltext0
	.quad	.LBB722-.Ltext0
	.quad	.LBE722-.Ltext0
	.quad	.LBB697-.Ltext0
	.quad	.LBE697-.Ltext0
	.quad	.LBB694-.Ltext0
	.quad	.LBE694-.Ltext0
	.quad	.LBB692-.Ltext0
	.quad	.LBE692-.Ltext0
	.quad	.LBB682-.Ltext0
	.quad	.LBE682-.Ltext0
	.quad	.LBB639-.Ltext0
	.quad	.LBE639-.Ltext0
	.quad	.LBB606-.Ltext0
	.quad	.LBE606-.Ltext0
	.quad	.LBB586-.Ltext0
	.quad	.LBE586-.Ltext0
	.quad	.LBB575-.Ltext0
	.quad	.LBE575-.Ltext0
	.quad	.LBB527-.Ltext0
	.quad	.LBE527-.Ltext0
	.quad	.LBB520-.Ltext0
	.quad	.LBE520-.Ltext0
	.quad	.LBB513-.Ltext0
	.quad	.LBE513-.Ltext0
	.quad	.LBB492-.Ltext0
	.quad	.LBE492-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB489-.Ltext0
	.quad	.LBE489-.Ltext0
	.quad	.LBB772-.Ltext0
	.quad	.LBE772-.Ltext0
	.quad	.LBB766-.Ltext0
	.quad	.LBE766-.Ltext0
	.quad	.LBB761-.Ltext0
	.quad	.LBE761-.Ltext0
	.quad	.LBB755-.Ltext0
	.quad	.LBE755-.Ltext0
	.quad	.LBB675-.Ltext0
	.quad	.LBE675-.Ltext0
	.quad	.LBB659-.Ltext0
	.quad	.LBE659-.Ltext0
	.quad	.LBB654-.Ltext0
	.quad	.LBE654-.Ltext0
	.quad	.LBB636-.Ltext0
	.quad	.LBE636-.Ltext0
	.quad	.LBB626-.Ltext0
	.quad	.LBE626-.Ltext0
	.quad	.LBB603-.Ltext0
	.quad	.LBE603-.Ltext0
	.quad	.LBB593-.Ltext0
	.quad	.LBE593-.Ltext0
	.quad	.LBB540-.Ltext0
	.quad	.LBE540-.Ltext0
	.quad	.LBB524-.Ltext0
	.quad	.LBE524-.Ltext0
	.quad	.LBB517-.Ltext0
	.quad	.LBE517-.Ltext0
	.quad	.LBB510-.Ltext0
	.quad	.LBE510-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB491-.Ltext0
	.quad	.LBE491-.Ltext0
	.quad	.LBB774-.Ltext0
	.quad	.LBE774-.Ltext0
	.quad	.LBB768-.Ltext0
	.quad	.LBE768-.Ltext0
	.quad	.LBB763-.Ltext0
	.quad	.LBE763-.Ltext0
	.quad	.LBB757-.Ltext0
	.quad	.LBE757-.Ltext0
	.quad	.LBB677-.Ltext0
	.quad	.LBE677-.Ltext0
	.quad	.LBB665-.Ltext0
	.quad	.LBE665-.Ltext0
	.quad	.LBB663-.Ltext0
	.quad	.LBE663-.Ltext0
	.quad	.LBB661-.Ltext0
	.quad	.LBE661-.Ltext0
	.quad	.LBB656-.Ltext0
	.quad	.LBE656-.Ltext0
	.quad	.LBB638-.Ltext0
	.quad	.LBE638-.Ltext0
	.quad	.LBB628-.Ltext0
	.quad	.LBE628-.Ltext0
	.quad	.LBB605-.Ltext0
	.quad	.LBE605-.Ltext0
	.quad	.LBB595-.Ltext0
	.quad	.LBE595-.Ltext0
	.quad	.LBB542-.Ltext0
	.quad	.LBE542-.Ltext0
	.quad	.LBB526-.Ltext0
	.quad	.LBE526-.Ltext0
	.quad	.LBB519-.Ltext0
	.quad	.LBE519-.Ltext0
	.quad	.LBB512-.Ltext0
	.quad	.LBE512-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB495-.Ltext0
	.quad	.LBE495-.Ltext0
	.quad	.LBB650-.Ltext0
	.quad	.LBE650-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB499-.Ltext0
	.quad	.LBE499-.Ltext0
	.quad	.LBB687-.Ltext0
	.quad	.LBE687-.Ltext0
	.quad	.LBB641-.Ltext0
	.quad	.LBE641-.Ltext0
	.quad	.LBB577-.Ltext0
	.quad	.LBE577-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB501-.Ltext0
	.quad	.LBE501-.Ltext0
	.quad	.LBB642-.Ltext0
	.quad	.LBE642-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB504-.Ltext0
	.quad	.LBE504-.Ltext0
	.quad	.LBB699-.Ltext0
	.quad	.LBE699-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB515-.Ltext0
	.quad	.LBE515-.Ltext0
	.quad	.LBB685-.Ltext0
	.quad	.LBE685-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB528-.Ltext0
	.quad	.LBE528-.Ltext0
	.quad	.LBB683-.Ltext0
	.quad	.LBE683-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB530-.Ltext0
	.quad	.LBE530-.Ltext0
	.quad	.LBB608-.Ltext0
	.quad	.LBE608-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB532-.Ltext0
	.quad	.LBE532-.Ltext0
	.quad	.LBB770-.Ltext0
	.quad	.LBE770-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB533-.Ltext0
	.quad	.LBE533-.Ltext0
	.quad	.LBB693-.Ltext0
	.quad	.LBE693-.Ltext0
	.quad	.LBB643-.Ltext0
	.quad	.LBE643-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB534-.Ltext0
	.quad	.LBE534-.Ltext0
	.quad	.LBB723-.Ltext0
	.quad	.LBE723-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB536-.Ltext0
	.quad	.LBE536-.Ltext0
	.quad	.LBB747-.Ltext0
	.quad	.LBE747-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB547-.Ltext0
	.quad	.LBE547-.Ltext0
	.quad	.LBB560-.Ltext0
	.quad	.LBE560-.Ltext0
	.quad	.LBB553-.Ltext0
	.quad	.LBE553-.Ltext0
	.quad	.LBB552-.Ltext0
	.quad	.LBE552-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB555-.Ltext0
	.quad	.LBE555-.Ltext0
	.quad	.LBB634-.Ltext0
	.quad	.LBE634-.Ltext0
	.quad	.LBB566-.Ltext0
	.quad	.LBE566-.Ltext0
	.quad	.LBB562-.Ltext0
	.quad	.LBE562-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB568-.Ltext0
	.quad	.LBE568-.Ltext0
	.quad	.LBB779-.Ltext0
	.quad	.LBE779-.Ltext0
	.quad	.LBB776-.Ltext0
	.quad	.LBE776-.Ltext0
	.quad	.LBB749-.Ltext0
	.quad	.LBE749-.Ltext0
	.quad	.LBB729-.Ltext0
	.quad	.LBE729-.Ltext0
	.quad	.LBB725-.Ltext0
	.quad	.LBE725-.Ltext0
	.quad	.LBB701-.Ltext0
	.quad	.LBE701-.Ltext0
	.quad	.LBB690-.Ltext0
	.quad	.LBE690-.Ltext0
	.quad	.LBB652-.Ltext0
	.quad	.LBE652-.Ltext0
	.quad	.LBB598-.Ltext0
	.quad	.LBE598-.Ltext0
	.quad	.LBB588-.Ltext0
	.quad	.LBE588-.Ltext0
	.quad	.LBB579-.Ltext0
	.quad	.LBE579-.Ltext0
	.quad	.LBB569-.Ltext0
	.quad	.LBE569-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB572-.Ltext0
	.quad	.LBE572-.Ltext0
	.quad	.LBB691-.Ltext0
	.quad	.LBE691-.Ltext0
	.quad	.LBB599-.Ltext0
	.quad	.LBE599-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB574-.Ltext0
	.quad	.LBE574-.Ltext0
	.quad	.LBB601-.Ltext0
	.quad	.LBE601-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB589-.Ltext0
	.quad	.LBE589-.Ltext0
	.quad	.LBB782-.Ltext0
	.quad	.LBE782-.Ltext0
	.quad	.LBB596-.Ltext0
	.quad	.LBE596-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB590-.Ltext0
	.quad	.LBE590-.Ltext0
	.quad	.LBB591-.Ltext0
	.quad	.LBE591-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB616-.Ltext0
	.quad	.LBE616-.Ltext0
	.quad	.LBB679-.Ltext0
	.quad	.LBE679-.Ltext0
	.quad	.LBB678-.Ltext0
	.quad	.LBE678-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB618-.Ltext0
	.quad	.LBE618-.Ltext0
	.quad	.LBB688-.Ltext0
	.quad	.LBE688-.Ltext0
	.quad	.LBB681-.Ltext0
	.quad	.LBE681-.Ltext0
	.quad	.LBB680-.Ltext0
	.quad	.LBE680-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB624-.Ltext0
	.quad	.LBE624-.Ltext0
	.quad	.LBB657-.Ltext0
	.quad	.LBE657-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB630-.Ltext0
	.quad	.LBE630-.Ltext0
	.quad	.LBB759-.Ltext0
	.quad	.LBE759-.Ltext0
	.quad	.LBB753-.Ltext0
	.quad	.LBE753-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB631-.Ltext0
	.quad	.LBE631-.Ltext0
	.quad	.LBB632-.Ltext0
	.quad	.LBE632-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB644-.Ltext0
	.quad	.LBE644-.Ltext0
	.quad	.LBB646-.Ltext0
	.quad	.LBE646-.Ltext0
	.quad	.LBB645-.Ltext0
	.quad	.LBE645-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB695-.Ltext0
	.quad	.LBE695-.Ltext0
	.quad	.LBB727-.Ltext0
	.quad	.LBE727-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB703-.Ltext0
	.quad	.LBE703-.Ltext0
	.quad	.LBB709-.Ltext0
	.quad	.LBE709-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB705-.Ltext0
	.quad	.LBE705-.Ltext0
	.quad	.LBB716-.Ltext0
	.quad	.LBE716-.Ltext0
	.quad	.LBB714-.Ltext0
	.quad	.LBE714-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB707-.Ltext0
	.quad	.LBE707-.Ltext0
	.quad	.LBB719-.Ltext0
	.quad	.LBE719-.Ltext0
	.quad	.LBB711-.Ltext0
	.quad	.LBE711-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB721-.Ltext0
	.quad	.LBE721-.Ltext0
	.quad	.LBB751-.Ltext0
	.quad	.LBE751-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB726-.Ltext0
	.quad	.LBE726-.Ltext0
	.quad	.LBB730-.Ltext0
	.quad	.LBE730-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB732-.Ltext0
	.quad	.LBE732-.Ltext0
	.quad	.LBB739-.Ltext0
	.quad	.LBE739-.Ltext0
	.quad	.LBB733-.Ltext0
	.quad	.LBE733-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB735-.Ltext0
	.quad	.LBE735-.Ltext0
	.quad	.LBB741-.Ltext0
	.quad	.LBE741-.Ltext0
	.quad	.LBB737-.Ltext0
	.quad	.LBE737-.Ltext0
	.quad	0x0
	.quad	0x0
	.section	.debug_str,"MS",@progbits,1
.LASF228:
	.string	"cpu_model_str"
.LASF284:
	.string	"dpy_resize"
.LASF1:
	.string	"unsigned int"
.LASF1184:
	.string	"no_reboot"
.LASF473:
	.string	"reserved"
.LASF1026:
	.string	"check_params"
.LASF239:
	.string	"cpuid_ext3_features"
.LASF875:
	.string	"option"
.LASF1201:
	.string	"cpu_clock_offset"
.LASF53:
	.string	"_fileno"
.LASF456:
	.string	"uInt"
.LASF1092:
	.string	"parse_macaddr"
.LASF681:
	.string	"cpu_get_ticks"
.LASF1199:
	.string	"cpu_ticks_prev"
.LASF425:
	.string	"_pad"
.LASF139:
	.string	"stop_condition"
.LASF84:
	.string	"tm_sec"
.LASF1103:
	.string	"net_socket_listen_init"
.LASF732:
	.string	"unix_start_timer"
.LASF103:
	.string	"__saved_mask"
.LASF209:
	.string	"exception_next_eip"
.LASF259:
	.string	"QEMUBH"
.LASF334:
	.string	"handle_destroy"
.LASF114:
	.string	"float32"
.LASF786:
	.string	"tcp_chr_read"
.LASF226:
	.string	"cpu_index"
.LASF975:
	.string	"do_loadvm"
.LASF675:
	.string	"mouse_event_opaque"
.LASF204:
	.string	"intercept_exceptions"
.LASF698:
	.string	"current_time"
.LASF696:
	.string	"qemu_run_timers"
.LASF1104:
	.string	"net_socket_mcast_init"
.LASF877:
	.string	"drive_add"
.LASF178:
	.string	"fpip"
.LASF887:
	.string	"bus_num"
.LASF1203:
	.string	"alarm_timer"
.LASF1011:
	.string	"machine"
.LASF711:
	.string	"argos_logf"
.LASF129:
	.string	"argos_paddr_t"
.LASF1187:
	.string	"drives_opt"
.LASF415:
	.string	"si_uid"
.LASF630:
	.string	"mant"
.LASF439:
	.string	"_tid"
.LASF1081:
	.string	"net_slirp_smb"
.LASF399:
	.string	"enabled"
.LASF237:
	.string	"cpuid_model"
.LASF569:
	.string	"ifru_data"
.LASF47:
	.string	"_IO_buf_end"
.LASF391:
	.string	"DriveInfo"
.LASF820:
	.string	"qemu_chr_open_file_out"
.LASF58:
	.string	"_shortbuf"
.LASF1069:
	.string	"qemu_system_reset"
.LASF572:
	.string	"ifr_ifrn"
.LASF338:
	.string	"handle_data"
.LASF496:
	.string	"sockaddr_in"
.LASF573:
	.string	"ifr_ifru"
.LASF485:
	.string	"c_line"
.LASF835:
	.string	"qemu_can_send_packet"
.LASF1063:
	.string	"popt"
.LASF923:
	.string	"register_savevm"
.LASF389:
	.string	"IF_SD"
.LASF964:
	.string	"gui_update"
.LASF111:
	.string	"addend"
.LASF553:
	.string	"fr_pvc_info"
.LASF847:
	.string	"setup_script"
.LASF546:
	.string	"mem_start"
.LASF667:
	.string	"qemu_remove_mouse_event_handler"
.LASF354:
	.string	"cancel_opaque"
.LASF383:
	.string	"PollingFunc"
.LASF890:
	.string	"pcmcia_socket_register"
.LASF988:
	.string	"old_sn"
.LASF603:
	.string	"listen_fd"
.LASF1100:
	.string	"sopt"
.LASF1086:
	.string	"init_timers"
.LASF430:
	.string	"_sigpoll"
.LASF260:
	.string	"scheduled"
.LASF495:
	.string	"sa_data"
.LASF395:
	.string	"init_isa"
.LASF586:
	.string	"priv"
.LASF207:
	.string	"error_code"
.LASF749:
	.string	"mux_chr_write"
.LASF891:
	.string	"pcmcia_socket_unregister"
.LASF659:
	.string	"hw_error"
.LASF836:
	.string	"qemu_send_packet"
.LASF380:
	.string	"entries"
.LASF991:
	.string	"sn_info"
.LASF364:
	.string	"fd_can_read"
.LASF500:
	.string	"sin_zero"
.LASF855:
	.string	"net_socket_send"
.LASF504:
	.string	"in_port_t"
.LASF39:
	.string	"_flags"
.LASF261:
	.string	"next"
.LASF652:
	.string	"length"
.LASF216:
	.string	"mem_write_vaddr"
.LASF622:
	.string	"SaveStateEntry"
.LASF831:
	.string	"slave_fd"
.LASF73:
	.string	"reg_save_area"
.LASF968:
	.string	"vm_stop"
.LASF1226:
	.string	"vm_stop_cb"
.LASF509:
	.string	"imr_multiaddr"
.LASF12:
	.string	"__off_t"
.LASF319:
	.string	"IRQState"
.LASF873:
	.string	"substring"
.LASF363:
	.string	"fd_read"
.LASF487:
	.string	"c_ispeed"
.LASF673:
	.string	"buttons_state"
.LASF656:
	.string	"argos_cpu_inb"
.LASF844:
	.string	"tap_send"
.LASF980:
	.string	"record_len"
.LASF464:
	.string	"avail_in"
.LASF92:
	.string	"tm_isdst"
.LASF657:
	.string	"argos_cpu_inw"
.LASF281:
	.string	"height"
.LASF1120:
	.string	"argos_os_hint"
.LASF392:
	.string	"bdrv"
.LASF59:
	.string	"_lock"
.LASF467:
	.string	"avail_out"
.LASF993:
	.string	"len_pos"
.LASF1125:
	.string	"code_copy_enabled"
.LASF1148:
	.string	"graphic_height"
.LASF1177:
	.string	"display_state"
.LASF1114:
	.string	"stdout"
.LASF559:
	.string	"ifru_dstaddr"
.LASF433:
	.string	"si_errno"
.LASF168:
	.string	"t1tag"
.LASF868:
	.string	"saddr_len"
.LASF518:
	.string	"hostent"
.LASF564:
	.string	"ifru_ivalue"
.LASF1070:
	.string	"atoi"
.LASF1204:
	.string	"alarm_timers"
.LASF1014:
	.string	"MEDIA_DISK"
.LASF921:
	.string	"qemu_fseek"
.LASF384:
	.string	"IF_IDE"
.LASF610:
	.string	"NetSocketState"
.LASF878:
	.string	"drive_get_index"
.LASF428:
	.string	"_sigchld"
.LASF1096:
	.string	"read_passwords"
.LASF816:
	.string	"qemu_chr_open_udp"
.LASF337:
	.string	"handle_control"
.LASF24:
	.string	"int32_t"
.LASF101:
	.string	"__jmpbuf"
.LASF256:
	.string	"mask"
.LASF519:
	.string	"h_name"
.LASF974:
	.string	"control_cmd_run"
.LASF694:
	.string	"qemu_mod_timer"
.LASF1060:
	.string	"date_fail"
.LASF449:
	.string	"sigaction"
.LASF1202:
	.string	"cpu_ticks_enabled"
.LASF169:
	.string	"t2tag"
.LASF155:
	.string	"load_addr_type"
.LASF717:
	.string	"info"
.LASF13:
	.string	"__off64_t"
.LASF336:
	.string	"handle_reset"
.LASF736:
	.string	"qemu_bh_new"
.LASF247:
	.string	"tc_ptr"
.LASF369:
	.string	"QEMUSerialSetParams"
.LASF1195:
	.string	"qemu_put_kbd_event_opaque"
.LASF1043:
	.string	"net_clients"
.LASF686:
	.string	"kbd_mouse_is_absolute"
.LASF14:
	.string	"__pid_t"
.LASF587:
	.string	"ext_opaque"
.LASF1002:
	.string	"xfds"
.LASF211:
	.string	"interrupt_request"
.LASF410:
	.string	"vm_clock_nsec"
.LASF756:
	.string	"send_char"
.LASF938:
	.string	"qemu_put_be64s"
.LASF660:
	.string	"register_ioport_write"
.LASF453:
	.string	"sa_restorer"
.LASF588:
	.string	"prod"
.LASF45:
	.string	"_IO_write_end"
.LASF1151:
	.string	"win2k_install_hack"
.LASF295:
	.string	"chr_can_read"
.LASF1173:
	.string	"ioport_read_table"
.LASF507:
	.string	"s_addr"
.LASF969:
	.string	"reason"
.LASF565:
	.string	"ifru_mtu"
.LASF1229:
	.string	"reset_requested"
.LASF987:
	.string	"old_sn1"
.LASF217:
	.string	"tlb_table"
.LASF920:
	.string	"qemu_ftell"
.LASF1158:
	.string	"semihosting_enabled"
.LASF152:
	.string	"load_value"
.LASF26:
	.string	"__sigset_t"
.LASF172:
	.string	"cc_src"
.LASF331:
	.string	"index"
.LASF165:
	.string	"regs"
.LASF963:
	.string	"qemu_register_machine"
.LASF871:
	.string	"net_unixsocket_fd_init"
.LASF522:
	.string	"h_length"
.LASF244:
	.string	"cs_base"
.LASF327:
	.string	"desc"
.LASF605:
	.string	"do_nodelay"
.LASF1152:
	.string	"alt_grab"
.LASF457:
	.string	"uLong"
.LASF684:
	.string	"cpu_get_clock"
.LASF362:
	.string	"VLANClientState"
.LASF322:
	.string	"QEMUResetHandler"
.LASF1138:
	.string	"bios_name"
.LASF636:
	.string	"vm_change_state_head"
.LASF146:
	.string	"storedby_eip"
.LASF601:
	.string	"bufptr"
.LASF810:
	.string	"filename"
.LASF1004:
	.string	"__d0"
.LASF985:
	.string	"__s2"
.LASF882:
	.string	"usb_device_add"
.LASF897:
	.string	"qemu_add_polling_cb"
.LASF405:
	.string	"QEMUSnapshotInfo"
.LASF625:
	.string	"version_id"
.LASF813:
	.string	"__s1"
.LASF1235:
	.string	"/home/remco/Projects/Argos/src/i386-softmmu"
.LASF491:
	.string	"revents"
.LASF512:
	.string	"d_ino"
.LASF591:
	.string	"term_got_escape"
.LASF497:
	.string	"sin_family"
.LASF1084:
	.string	"smb_cmdline"
.LASF577:
	.string	"hi_hpet"
.LASF441:
	.string	"sigevent"
.LASF344:
	.string	"remote_wakeup"
.LASF947:
	.string	"ram_compress_buf"
.LASF270:
	.string	"macaddr"
.LASF164:
	.string	"CPUX86State"
.LASF194:
	.string	"sysenter_eip"
.LASF534:
	.string	"n391"
.LASF535:
	.string	"n392"
.LASF536:
	.string	"n393"
.LASF632:
	.string	"zstream"
.LASF1097:
	.string	"get_bdrv"
.LASF537:
	.string	"fr_proto"
.LASF979:
	.string	"qemu_loadvm_state"
.LASF306:
	.string	"QEMUFile"
.LASF528:
	.string	"slot_map"
.LASF828:
	.string	"qemu_chr_open_pty"
.LASF1045:
	.string	"hda_index"
.LASF773:
	.string	"tty_serial_ioctl"
.LASF812:
	.string	"__s2_len"
.LASF15:
	.string	"__clock_t"
.LASF661:
	.string	"bsize"
.LASF393:
	.string	"type"
.LASF858:
	.string	"net_socket_mcast_create"
.LASF683:
	.string	"cpu_get_real_ticks"
.LASF424:
	.string	"si_fd"
.LASF412:
	.string	"sival_ptr"
.LASF1165:
	.string	"serial_hds"
.LASF23:
	.string	"timer_t"
.LASF251:
	.string	"tb_next_offset"
.LASF10:
	.string	"__uid_t"
.LASF421:
	.string	"si_stime"
.LASF502:
	.string	"sun_family"
.LASF892:
	.string	"pcmcia_info"
.LASF498:
	.string	"sin_port"
.LASF390:
	.string	"BlockInterfaceType"
.LASF529:
	.string	"te1_settings"
.LASF525:
	.string	"clock_type"
.LASF918:
	.string	"qemu_get_buffer"
.LASF1006:
	.string	"exitcode"
.LASF330:
	.string	"attach"
.LASF950:
	.string	"ram_save"
.LASF726:
	.string	"dynticks_stop_timer"
.LASF1083:
	.string	"smb_conf"
.LASF179:
	.string	"prev_fpip"
.LASF161:
	.string	"store_size"
.LASF22:
	.string	"ssize_t"
.LASF182:
	.string	"fpuc"
.LASF567:
	.string	"ifru_slave"
.LASF472:
	.string	"adler"
.LASF1110:
	.string	"tap_open"
.LASF727:
	.string	"dynticks_rearm_timer"
.LASF181:
	.string	"fpus"
.LASF618:
	.string	"fd_write"
.LASF738:
	.string	"qemu_chr_reset"
.LASF68:
	.string	"__gnuc_va_list"
.LASF140:
	.string	"logfile"
.LASF540:
	.string	"master"
.LASF52:
	.string	"_chain"
.LASF1139:
	.string	"bios_dir"
.LASF793:
	.string	"tcp_chr_close"
.LASF100:
	.string	"__jmp_buf_tag"
.LASF990:
	.string	"bdrv_snapshot_find"
.LASF772:
	.string	"tty_serial_init"
.LASF361:
	.string	"PicState2"
.LASF881:
	.string	"qemu_register_usb_port"
.LASF781:
	.string	"udp_chr_read"
.LASF747:
	.string	"fd_event"
.LASF170:
	.string	"regtags"
.LASF6:
	.string	"unsigned char"
.LASF822:
	.string	"qemu_chr_open_stdio"
.LASF595:
	.string	"fd_out"
.LASF307:
	.string	"outfile"
.LASF774:
	.string	"enable"
.LASF663:
	.string	"qemu_add_kbd_event_handler"
.LASF1213:
	.string	"oldtty"
.LASF33:
	.string	"__fd_mask"
.LASF180:
	.string	"fpstt"
.LASF722:
	.string	"rtc_fd"
.LASF74:
	.string	"_IO_lock_t"
.LASF175:
	.string	"hflags"
.LASF915:
	.string	"qemu_get_be16"
.LASF112:
	.string	"float"
.LASF360:
	.string	"card_string"
.LASF3:
	.string	"long long int"
.LASF713:
	.string	"__fmt"
.LASF184:
	.string	"fpregs"
.LASF704:
	.string	"alarm_has_dynticks"
.LASF651:
	.string	"isa_unassign_ioport"
.LASF1147:
	.string	"graphic_width"
.LASF294:
	.string	"chr_event"
.LASF297:
	.string	"handler_opaque"
.LASF869:
	.string	"net_socket_accept"
.LASF305:
	.string	"nb_host_devs"
.LASF807:
	.string	"path"
.LASF503:
	.string	"sun_path"
.LASF1141:
	.string	"qemu_name"
.LASF676:
	.string	"do_info_mice"
.LASF365:
	.string	"info_str"
.LASF1090:
	.string	"device"
.LASF523:
	.string	"h_addr_list"
.LASF956:
	.string	"ram_decompress_close"
.LASF177:
	.string	"a20_mask"
.LASF640:
	.string	"pioh"
.LASF580:
	.string	"listen_sd"
.LASF619:
	.string	"deleted"
.LASF154:
	.string	"load_addr"
.LASF784:
	.string	"send_all"
.LASF46:
	.string	"_IO_buf_base"
.LASF208:
	.string	"exception_is_int"
.LASF109:
	.string	"addr_write"
.LASF442:
	.string	"sigev_value"
.LASF575:
	.string	"hi_ireqfreq"
.LASF796:
	.string	"parse_host_port"
.LASF121:
	.string	"CPU86_LDouble"
.LASF94:
	.string	"tm_zone"
.LASF1181:
	.string	"no_frame"
.LASF824:
	.string	"qemu_chr_open_tty"
.LASF328:
	.string	"init"
.LASF83:
	.string	"uint64_t"
.LASF106:
	.string	"target_phys_addr_t"
.LASF981:
	.string	"total_len"
.LASF679:
	.string	"high"
.LASF885:
	.string	"usb_device_del"
.LASF551:
	.string	"cisco"
.LASF371:
	.string	"QEMUPutKBDEvent"
.LASF1117:
	.string	"argos_fsc"
.LASF151:
	.string	"instruction_netidx"
.LASF533:
	.string	"t392"
.LASF817:
	.string	"return_err"
.LASF576:
	.string	"hi_flags"
.LASF1198:
	.string	"use_rt_clock"
.LASF672:
	.string	"kbd_mouse_event"
.LASF32:
	.string	"tv_usec"
.LASF1209:
	.string	"term_escape_char"
.LASF526:
	.string	"loopback"
.LASF606:
	.string	"is_unix"
.LASF1020:
	.string	"heads"
.LASF406:
	.string	"id_str"
.LASF1024:
	.string	"bdrv_flags"
.LASF848:
	.string	"ifname"
.LASF1219:
	.string	"free_usb_ports"
.LASF296:
	.string	"chr_read"
.LASF814:
	.string	"__result"
.LASF321:
	.string	"LoadStateHandler"
.LASF627:
	.string	"load_state"
.LASF343:
	.string	"data_buf"
.LASF516:
	.string	"d_name"
.LASF757:
	.string	"term"
.LASF1197:
	.string	"qemu_put_mouse_event_current"
.LASF702:
	.string	"host_alarm_handler"
.LASF221:
	.string	"singlestep_enabled"
.LASF599:
	.string	"daddr"
.LASF597:
	.string	"mode"
.LASF1040:
	.string	"kernel_filename"
.LASF303:
	.string	"first_client"
.LASF902:
	.string	"qemu_fflush"
.LASF135:
	.string	"netidx"
.LASF857:
	.string	"net_socket_send_dgram"
.LASF241:
	.string	"envmap"
.LASF1175:
	.string	"bs_snapshots"
.LASF1105:
	.string	"net_socket_connect_init"
.LASF478:
	.string	"speed_t"
.LASF611:
	.string	"packet_len"
.LASF133:
	.string	"argos_rtag"
.LASF908:
	.string	"qemu_put_be16"
.LASF1023:
	.string	"cache"
.LASF1131:
	.string	"isapc_machine"
.LASF592:
	.string	"max_size"
.LASF1182:
	.string	"first_vlan"
.LASF514:
	.string	"d_reclen"
.LASF731:
	.string	"vmdelta_us"
.LASF1107:
	.string	"bind_unixsocket"
.LASF79:
	.string	"va_list"
.LASF680:
	.string	"get_clock"
.LASF654:
	.string	"cpu_outw"
.LASF825:
	.string	"qemu_chr_open_pipe"
.LASF401:
	.string	"QEMUTimerCB"
.LASF288:
	.string	"mouse_set"
.LASF438:
	.string	"_attribute"
.LASF841:
	.string	"smb_exit"
.LASF147:
	.string	"executed_eip"
.LASF853:
	.string	"net_unixsocket_receive"
.LASF788:
	.string	"tcp_chr_connect"
.LASF674:
	.string	"mouse_event"
.LASF642:
	.string	"qemu_set_fd_handler"
.LASF837:
	.string	"slirp_can_output"
.LASF1015:
	.string	"MEDIA_CDROM"
.LASF795:
	.string	"get_str_sep"
.LASF245:
	.string	"size"
.LASF1124:
	.string	"cpu_single_env"
.LASF35:
	.string	"fd_set"
.LASF476:
	.string	"z_stream"
.LASF252:
	.string	"tb_next"
.LASF989:
	.string	"must_delete"
.LASF935:
	.string	"fpregs_format"
.LASF37:
	.string	"FILE"
.LASF1078:
	.string	"guest_addr"
.LASF1047:
	.string	"monitor_hd"
.LASF623:
	.string	"idstr"
.LASF1074:
	.string	"__retval"
.LASF930:
	.string	"nb_sns"
.LASF1079:
	.string	"host_port"
.LASF745:
	.string	"qemu_chr_send_event"
.LASF188:
	.string	"mxcsr"
.LASF193:
	.string	"sysenter_esp"
.LASF272:
	.string	"vlan"
.LASF9:
	.string	"size_t"
.LASF517:
	.string	"__dirstream"
.LASF332:
	.string	"USBDevice"
.LASF234:
	.string	"cpuid_features"
.LASF299:
	.string	"chr_close"
.LASF508:
	.string	"ip_mreq"
.LASF1170:
	.string	"tftp_prefix"
.LASF1172:
	.string	"ioport_opaque"
.LASF282:
	.string	"gui_timer"
.LASF1095:
	.string	"dumb_display_init"
.LASF484:
	.string	"c_lflag"
.LASF556:
	.string	"ifs_ifsu"
.LASF199:
	.string	"intercept"
.LASF954:
	.string	"error"
.LASF624:
	.string	"instance_id"
.LASF402:
	.string	"BlockDriverInfo"
.LASF1059:
	.string	"graphic_error"
.LASF1208:
	.string	"mux_help"
.LASF201:
	.string	"intercept_cr_write"
.LASF626:
	.string	"save_state"
.LASF678:
	.string	"muldiv64"
.LASF752:
	.string	"mux_chr_accept_input"
.LASF815:
	.string	"qemu_chr_open_null"
.LASF830:
	.string	"master_fd"
.LASF48:
	.string	"_IO_save_base"
.LASF720:
	.string	"hpet_stop_timer"
.LASF339:
	.string	"addr"
.LASF872:
	.string	"get_word"
.LASF481:
	.string	"c_iflag"
.LASF98:
	.string	"socklen_t"
.LASF1149:
	.string	"graphic_depth"
.LASF163:
	.string	"vaddr"
.LASF562:
	.string	"ifru_hwaddr"
.LASF138:
	.string	"running"
.LASF104:
	.string	"jmp_buf"
.LASF739:
	.string	"qemu_chr_write"
.LASF741:
	.string	"qemu_chr_can_read"
.LASF115:
	.string	"float64"
.LASF1228:
	.string	"first_reset_entry"
.LASF1000:
	.string	"rfds"
.LASF273:
	.string	"AudioState"
.LASF574:
	.string	"hpet_info"
.LASF759:
	.string	"ebuf"
.LASF451:
	.string	"sa_mask"
.LASF966:
	.string	"qemu_del_vm_change_state_handler"
.LASF44:
	.string	"_IO_write_ptr"
.LASF1232:
	.string	"qemu_options"
.LASF501:
	.string	"sockaddr_un"
.LASF547:
	.string	"mem_end"
.LASF130:
	.string	"argos_netidx_t"
.LASF780:
	.string	"udp_chr_read_poll"
.LASF269:
	.string	"NICInfo"
.LASF602:
	.string	"NetCharDriver"
.LASF1185:
	.string	"daemonize"
.LASF293:
	.string	"chr_ioctl"
.LASF997:
	.string	"qemu_register_reset"
.LASF768:
	.string	"fd_chr_update_read_handler"
.LASF214:
	.string	"current_tb"
.LASF149:
	.string	"instruction_size"
.LASF62:
	.string	"__pad2"
.LASF840:
	.string	"slirp_receive"
.LASF63:
	.string	"__pad3"
.LASF65:
	.string	"__pad5"
.LASF308:
	.string	"is_file"
.LASF198:
	.string	"vm_vmcb"
.LASF1205:
	.string	"active_timers"
.LASF222:
	.string	"watchpoint"
.LASF867:
	.string	"newfd"
.LASF310:
	.string	"base_offset"
.LASF422:
	.string	"si_addr"
.LASF1012:
	.string	"file"
.LASF1193:
	.string	"ctrlsock"
.LASF470:
	.string	"zfree"
.LASF460:
	.string	"alloc_func"
.LASF145:
	.string	"loadedby_eip"
.LASF1022:
	.string	"max_devs"
.LASF689:
	.string	"show_available_alarms"
.LASF1013:
	.string	"mediastr"
.LASF746:
	.string	"qemu_chr_add_handlers"
.LASF397:
	.string	"soundhw"
.LASF770:
	.string	"stdio_read_poll"
.LASF779:
	.string	"udp_chr_write"
.LASF859:
	.string	"mcastaddr"
.LASF691:
	.string	"qemu_new_timer"
.LASF760:
	.string	"cbuf"
.LASF693:
	.string	"qemu_del_timer"
.LASF1112:
	.string	"net_slirp_init"
.LASF413:
	.string	"sigval_t"
.LASF432:
	.string	"si_signo"
.LASF119:
	.string	"float_rounding_mode"
.LASF919:
	.string	"size1"
.LASF876:
	.string	"do_info_network"
.LASF905:
	.string	"qemu_put_be64"
.LASF370:
	.string	"IOEventHandler"
.LASF411:
	.string	"sival_int"
.LASF637:
	.string	"lh_first"
.LASF945:
	.string	"qemu_get_be64s"
.LASF434:
	.string	"si_code"
.LASF785:
	.string	"tcp_chr_read_poll"
.LASF76:
	.string	"_next"
.LASF541:
	.string	"fr_proto_pvc_info"
.LASF1048:
	.string	"monitor_device"
.LASF1028:
	.string	"optarg"
.LASF173:
	.string	"cc_dst"
.LASF20:
	.string	"__socklen_t"
.LASF864:
	.string	"so_type"
.LASF212:
	.string	"user_mode_only"
.LASF643:
	.string	"address"
.LASF943:
	.string	"fp64_to_fp80"
.LASF333:
	.string	"handle_packet"
.LASF1102:
	.string	"control_socket_cleanup"
.LASF318:
	.string	"qemu_irq"
.LASF778:
	.string	"pp_close"
.LASF714:
	.string	"__arg"
.LASF1082:
	.string	"exported_dir"
.LASF929:
	.string	"sn_tab"
.LASF889:
	.string	"speed_str"
.LASF1154:
	.string	"smp_cpus"
.LASF189:
	.string	"xmm_regs"
.LASF246:
	.string	"cflags"
.LASF158:
	.string	"store_value_netidx"
.LASF19:
	.string	"__ssize_t"
.LASF650:
	.string	"default_ioport_writel"
.LASF1109:
	.string	"ifname1"
.LASF1171:
	.string	"slirp_hostname"
.LASF583:
	.string	"start"
.LASF578:
	.string	"hi_timer"
.LASF30:
	.string	"timespec"
.LASF1121:
	.string	"argos_nt_fl"
.LASF1030:
	.string	"bad_card"
.LASF806:
	.string	"addrlen"
.LASF492:
	.string	"sa_family_t"
.LASF1206:
	.string	"term_timestamps"
.LASF687:
	.string	"cpu_disable_ticks"
.LASF1016:
	.string	"media"
.LASF1186:
	.string	"nb_drives_opt"
.LASF984:
	.string	"find_se"
.LASF1116:
	.string	"argos_csilog"
.LASF27:
	.string	"__val"
.LASF700:
	.string	"qemu_system_shutdown_request"
.LASF532:
	.string	"t391"
.LASF1035:
	.string	"gdbstub_port"
.LASF973:
	.string	"line"
.LASF454:
	.string	"itimerval"
.LASF939:
	.string	"cpu_load"
.LASF856:
	.string	"net_unixsocket_send"
.LASF766:
	.string	"fd_chr_read_poll"
.LASF262:
	.string	"QEMUBHFunc"
.LASF671:
	.string	"keycode"
.LASF1057:
	.string	"pid_file"
.LASF407:
	.string	"vm_state_size"
.LASF913:
	.string	"timer_load"
.LASF471:
	.string	"data_type"
.LASF396:
	.string	"init_pci"
.LASF616:
	.string	"IOHandlerRecord"
.LASF160:
	.string	"store_addr_type"
.LASF1072:
	.string	"configure_alarms"
.LASF55:
	.string	"_old_offset"
.LASF1093:
	.string	"last_char"
.LASF865:
	.string	"optlen"
.LASF317:
	.string	"PCIBus"
.LASF718:
	.string	"found"
.LASF750:
	.string	"buf1"
.LASF205:
	.string	"jmp_env"
.LASF427:
	.string	"_timer"
.LASF249:
	.string	"page_next"
.LASF240:
	.string	"cpuid_apic_id"
.LASF278:
	.string	"linesize"
.LASF883:
	.string	"do_usb_add"
.LASF958:
	.string	"ram_get_page"
.LASF608:
	.string	"TAPState"
.LASF596:
	.string	"FDCharDriver"
.LASF633:
	.string	"RamDecompressState"
.LASF366:
	.string	"parity"
.LASF1037:
	.string	"linux_boot"
.LASF128:
	.string	"MMXReg"
.LASF854:
	.string	"net_socket_receive_dgram"
.LASF257:
	.string	"name"
.LASF254:
	.string	"jmp_first"
.LASF187:
	.string	"sse_status"
.LASF215:
	.string	"mem_write_pc"
.LASF77:
	.string	"_sbuf"
.LASF804:
	.string	"is_listen"
.LASF255:
	.string	"CPULogItem"
.LASF50:
	.string	"_IO_save_end"
.LASF85:
	.string	"tm_min"
.LASF95:
	.string	"itimerspec"
.LASF122:
	.string	"SegmentCache"
.LASF1071:
	.string	"__nptr"
.LASF944:
	.string	"temp"
.LASF1129:
	.string	"phys_ram_dirty"
.LASF329:
	.string	"USBPort"
.LASF376:
	.string	"qemu_put_mouse_event_absolute"
.LASF941:
	.string	"qemu_get_be32s"
.LASF394:
	.string	"unit"
.LASF566:
	.string	"ifru_map"
.LASF1058:
	.string	"chs_fail"
.LASF690:
	.string	"qemu_new_clock"
.LASF1200:
	.string	"cpu_ticks_offset"
.LASF791:
	.string	"uaddr"
.LASF561:
	.string	"ifru_netmask"
.LASF563:
	.string	"ifru_flags"
.LASF195:
	.string	"efer"
.LASF419:
	.string	"si_status"
.LASF16:
	.string	"__time_t"
.LASF515:
	.string	"d_type"
.LASF584:
	.string	"stop"
.LASF70:
	.string	"gp_offset"
.LASF977:
	.string	"saved_vm_running"
.LASF355:
	.string	"usb_attachfn"
.LASF1053:
	.string	"loadvm"
.LASF1223:
	.string	"first_se"
.LASF1007:
	.string	"qemu_key_check"
.LASF886:
	.string	"lastp"
.LASF1018:
	.string	"unit_id"
.LASF375:
	.string	"qemu_put_mouse_event_opaque"
.LASF1130:
	.string	"pc_machine"
.LASF709:
	.string	"control_socket_accept"
.LASF69:
	.string	"__va_list_tag"
.LASF1122:
	.string	"argos_memmap"
.LASF924:
	.string	"bdrv_has_snapshot"
.LASF670:
	.string	"kbd_put_keycode"
.LASF962:
	.string	"qemu_chr_reset_bh"
.LASF614:
	.string	"pcmcia_socket_entry_s"
.LASF631:
	.string	"RamCompressState"
.LASF846:
	.string	"launch_script"
.LASF446:
	.string	"__sighandler_t"
.LASF440:
	.string	"_sigev_thread"
.LASF916:
	.string	"qemu_fclose"
.LASF648:
	.string	"default_ioport_writew"
.LASF1143:
	.string	"rtc_utc"
.LASF482:
	.string	"c_oflag"
.LASF4:
	.string	"short unsigned int"
.LASF289:
	.string	"cursor_define"
.LASF174:
	.string	"cc_op"
.LASF7:
	.string	"signed char"
.LASF1178:
	.string	"nographic"
.LASF218:
	.string	"tb_jmp_cache"
.LASF866:
	.string	"net_socket_fd_init_dgram"
.LASF437:
	.string	"_function"
.LASF665:
	.string	"absolute"
.LASF141:
	.string	"instruction_cnt"
.LASF767:
	.string	"fd_chr_read"
.LASF617:
	.string	"fd_read_poll"
.LASF235:
	.string	"cpuid_ext_features"
.LASF463:
	.string	"next_in"
.LASF268:
	.string	"count"
.LASF983:
	.string	"cur_pos"
.LASF777:
	.string	"parg"
.LASF545:
	.string	"ifmap"
.LASF41:
	.string	"_IO_read_end"
.LASF120:
	.string	"floatx80_rounding_precision"
.LASF1019:
	.string	"cyls"
.LASF200:
	.string	"intercept_cr_read"
.LASF1075:
	.string	"net_slirp_redir"
.LASF737:
	.string	"qemu_bh_schedule"
.LASF530:
	.string	"encoding"
.LASF1036:
	.string	"boot_devices_bitmap"
.LASF90:
	.string	"tm_wday"
.LASF224:
	.string	"watchpoint_hit"
.LASF1073:
	.string	"__len"
.LASF879:
	.string	"drive_get_max_bus"
.LASF940:
	.string	"guess_mmx"
.LASF42:
	.string	"_IO_read_base"
.LASF1145:
	.string	"cirrus_vga_enabled"
.LASF82:
	.string	"uint32_t"
.LASF527:
	.string	"sync_serial_settings"
.LASF60:
	.string	"_offset"
.LASF862:
	.string	"is_connected"
.LASF1126:
	.string	"cpu_log_items"
.LASF116:
	.string	"floatx80"
.LASF341:
	.string	"state"
.LASF914:
	.string	"qemu_get_timer"
.LASF352:
	.string	"complete_opaque"
.LASF197:
	.string	"vm_hsave"
.LASF253:
	.string	"jmp_next"
.LASF751:
	.string	"secs"
.LASF600:
	.string	"bufcnt"
.LASF598:
	.string	"ParallelCharDriver"
.LASF1227:
	.string	"vm_stop_opaque"
.LASF719:
	.string	"fail"
.LASF220:
	.string	"nb_breakpoints"
.LASF706:
	.string	"timer_head"
.LASF287:
	.string	"dpy_fill"
.LASF888:
	.string	"usb_info"
.LASF917:
	.string	"qemu_put_buffer"
.LASF1218:
	.string	"used_usb_ports"
.LASF1067:
	.string	"register_machines"
.LASF150:
	.string	"logged"
.LASF568:
	.string	"ifru_newname"
.LASF314:
	.string	"QEMUTimer"
.LASF733:
	.string	"unix_stop_timer"
.LASF213:
	.string	"old_exception"
.LASF960:
	.string	"qemu_bh_cancel"
.LASF776:
	.string	"pp_ioctl"
.LASF801:
	.string	"src_str"
.LASF43:
	.string	"_IO_write_base"
.LASF127:
	.string	"XMMReg"
.LASF560:
	.string	"ifru_broadaddr"
.LASF1164:
	.string	"drives_table"
.LASF97:
	.string	"it_value"
.LASF743:
	.string	"qemu_chr_accept_input"
.LASF1169:
	.string	"ticks_per_sec"
.LASF557:
	.string	"ifrn_name"
.LASF621:
	.string	"func"
.LASF1076:
	.string	"redir_str"
.LASF705:
	.string	"qemu_timer_expired"
.LASF895:
	.string	"dumb_resize"
.LASF639:
	.string	"QEMUOption"
.LASF531:
	.string	"raw_hdlc_proto"
.LASF349:
	.string	"devaddr"
.LASF356:
	.string	"USBCallback"
.LASF191:
	.string	"mmx_t0"
.LASF443:
	.string	"sigev_signo"
.LASF225:
	.string	"next_cpu"
.LASF219:
	.string	"breakpoints"
.LASF88:
	.string	"tm_mon"
.LASF459:
	.string	"voidpf"
.LASF860:
	.string	"net_socket_connect"
.LASF880:
	.string	"max_bus"
.LASF948:
	.string	"ram_decompress_buf"
.LASF629:
	.string	"x86_longdouble"
.LASF292:
	.string	"chr_update_read_handler"
.LASF474:
	.string	"internal_state"
.LASF385:
	.string	"IF_SCSI"
.LASF2:
	.string	"long int"
.LASF264:
	.string	"IOCanRWHandler"
.LASF506:
	.string	"in_addr"
.LASF448:
	.string	"sa_sigaction"
.LASF839:
	.string	"pkt_len"
.LASF649:
	.string	"default_ioport_readl"
.LASF142:
	.string	"instruction_stage"
.LASF754:
	.string	"mux_chr_read"
.LASF765:
	.string	"fd_chr_write"
.LASF285:
	.string	"dpy_refresh"
.LASF167:
	.string	"t0tag"
.LASF1001:
	.string	"wfds"
.LASF266:
	.string	"ParallelIOArg"
.LASF302:
	.string	"VLANState"
.LASF102:
	.string	"__mask_was_saved"
.LASF75:
	.string	"_IO_marker"
.LASF89:
	.string	"tm_year"
.LASF125:
	.string	"limit"
.LASF263:
	.string	"IOReadHandler"
.LASF190:
	.string	"xmm_t0"
.LASF1136:
	.string	"nb_nics"
.LASF842:
	.string	"do_info_slirp"
.LASF444:
	.string	"sigev_notify"
.LASF723:
	.string	"rtc_stop_timer"
.LASF658:
	.string	"argos_cpu_inl"
.LASF227:
	.string	"opaque"
.LASF558:
	.string	"ifru_addr"
.LASF1091:
	.string	"vlan_id"
.LASF368:
	.string	"stop_bits"
.LASF1101:
	.string	"quit_timers"
.LASF132:
	.string	"argos_memmap_t"
.LASF311:
	.string	"buf_offset"
.LASF952:
	.string	"ram_compress_close"
.LASF725:
	.string	"host_timer"
.LASF265:
	.string	"IOHandler"
.LASF931:
	.string	"cpu_put_seg"
.LASF298:
	.string	"chr_send_event"
.LASF800:
	.string	"host_str"
.LASF590:
	.string	"mux_cnt"
.LASF555:
	.string	"if_settings"
.LASF80:
	.string	"uint8_t"
.LASF845:
	.string	"net_tap_fd_init"
.LASF861:
	.string	"net_socket_fd_init_stream"
.LASF450:
	.string	"__sigaction_handler"
.LASF1111:
	.string	"ifname_size"
.LASF274:
	.string	"APICState"
.LASF176:
	.string	"segs"
.LASF1221:
	.string	"first_io_handler"
.LASF480:
	.string	"termios"
.LASF346:
	.string	"setup_len"
.LASF91:
	.string	"tm_yday"
.LASF229:
	.string	"cpuid_level"
.LASF1017:
	.string	"bus_id"
.LASF542:
	.string	"interval"
.LASF818:
	.string	"qemu_chr_open_mux"
.LASF521:
	.string	"h_addrtype"
.LASF1021:
	.string	"translation"
.LASF243:
	.string	"TranslationBlock"
.LASF808:
	.string	"parse_unix_path"
.LASF462:
	.string	"z_stream_s"
.LASF118:
	.string	"float_status"
.LASF729:
	.string	"current_us"
.LASF117:
	.string	"long double"
.LASF275:
	.string	"BlockDriverState"
.LASF304:
	.string	"nb_guest_devs"
.LASF386:
	.string	"IF_FLOPPY"
.LASF803:
	.string	"is_telnet"
.LASF279:
	.string	"depth"
.LASF324:
	.string	"IOPortReadFunc"
.LASF153:
	.string	"load_value_netidx"
.LASF571:
	.string	"ifreq"
.LASF1183:
	.string	"vnc_display"
.LASF1044:
	.string	"nb_net_clients"
.LASF797:
	.string	"parse_host_src_port"
.LASF1055:
	.string	"usb_devices"
.LASF0:
	.string	"long unsigned int"
.LASF934:
	.string	"fptag"
.LASF186:
	.string	"fp_convert"
.LASF445:
	.string	"_sigev_un"
.LASF926:
	.string	"bdrv_can_snapshot"
.LASF668:
	.string	"entry"
.LASF744:
	.string	"qemu_chr_printf"
.LASF1080:
	.string	"guest_port"
.LASF398:
	.string	"descr"
.LASF792:
	.string	"tcp_chr_telnet_init"
.LASF1233:
	.string	"GNU C 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
.LASF248:
	.string	"phys_hash_next"
.LASF1194:
	.string	"qemu_put_kbd_event"
.LASF1050:
	.string	"serial_device_index"
.LASF748:
	.string	"null_chr_write"
.LASF387:
	.string	"IF_PFLASH"
.LASF5:
	.string	"char"
.LASF1106:
	.string	"net_unixsocket_listen_init"
.LASF1005:
	.string	"__d1"
.LASF1137:
	.string	"nd_table"
.LASF325:
	.string	"QEMUMachineInitFunc"
.LASF976:
	.string	"bdi1"
.LASF554:
	.string	"sync"
.LASF1153:
	.string	"usb_enabled"
.LASF937:
	.string	"qemu_put_be16s"
.LASF345:
	.string	"setup_state"
.LASF1163:
	.string	"nb_drives"
.LASF510:
	.string	"imr_interface"
.LASF1179:
	.string	"pit_min_timer_count"
.LASF692:
	.string	"qemu_free_timer"
.LASF644:
	.string	"default_ioport_readb"
.LASF192:
	.string	"sysenter_cs"
.LASF67:
	.string	"_unused2"
.LASF1098:
	.string	"control_socket_listen"
.LASF646:
	.string	"default_ioport_readw"
.LASF159:
	.string	"store_addr"
.LASF790:
	.string	"tcp_chr_accept"
.LASF137:
	.string	"argos_shellcode_context_s"
.LASF162:
	.string	"argos_shellcode_context_t"
.LASF379:
	.string	"vm_change_state_entry"
.LASF505:
	.string	"in_addr_t"
.LASF635:
	.string	"le_prev"
.LASF409:
	.string	"date_nsec"
.LASF1155:
	.string	"cursor_hide"
.LASF66:
	.string	"_mode"
.LASF1052:
	.string	"parallel_device_index"
.LASF604:
	.string	"do_telnetopt"
.LASF1150:
	.string	"keyboard_layout"
.LASF38:
	.string	"_IO_FILE"
.LASF136:
	.string	"argos_rtag_t"
.LASF1029:
	.string	"show_valid_cards"
.LASF1176:
	.string	"vga_ram_size"
.LASF203:
	.string	"intercept_dr_write"
.LASF1042:
	.string	"boot_devices"
.LASF1207:
	.string	"term_timestamps_start"
.LASF143:
	.string	"trace_stage"
.LASF645:
	.string	"default_ioport_writeb"
.LASF435:
	.string	"_sifields"
.LASF347:
	.string	"setup_index"
.LASF827:
	.string	"filename_out"
.LASF455:
	.string	"Byte"
.LASF86:
	.string	"tm_hour"
.LASF922:
	.string	"whence"
.LASF849:
	.string	"status"
.LASF267:
	.string	"buffer"
.LASF1133:
	.string	"fd_bootchk"
.LASF1123:
	.string	"first_cpu"
.LASF31:
	.string	"timeval"
.LASF340:
	.string	"devname"
.LASF782:
	.string	"udp_chr_update_read_handler"
.LASF351:
	.string	"complete_cb"
.LASF1132:
	.string	"isa_pic"
.LASF242:
	.string	"apic_state"
.LASF290:
	.string	"CharDriverState"
.LASF96:
	.string	"it_interval"
.LASF414:
	.string	"si_pid"
.LASF374:
	.string	"qemu_put_mouse_event"
.LASF771:
	.string	"stdio_read"
.LASF740:
	.string	"qemu_chr_ioctl"
.LASF1008:
	.string	"password"
.LASF1160:
	.string	"bootp_filename"
.LASF863:
	.string	"net_socket_fd_init"
.LASF1108:
	.string	"net_tap_init"
.LASF961:
	.string	"qemu_bh_delete"
.LASF469:
	.string	"zalloc"
.LASF1212:
	.string	"term_fifo_size"
.LASF1010:
	.string	"snapshot"
.LASF666:
	.string	"cursor"
.LASF87:
	.string	"tm_mday"
.LASF465:
	.string	"total_in"
.LASF61:
	.string	"__pad1"
.LASF64:
	.string	"__pad4"
.LASF348:
	.string	"USBPacket"
.LASF1034:
	.string	"use_gdbstub"
.LASF1142:
	.string	"ram_size"
.LASF794:
	.string	"qemu_chr_close"
.LASF1162:
	.string	"nb_option_roms"
.LASF1056:
	.string	"usb_devices_index"
.LASF998:
	.string	"qemu_system_powerdown_request"
.LASF1003:
	.string	"nfds"
.LASF313:
	.string	"buf_size"
.LASF1196:
	.string	"qemu_put_mouse_event_head"
.LASF494:
	.string	"sa_family"
.LASF959:
	.string	"qemu_bh_poll"
.LASF548:
	.string	"base_addr"
.LASF51:
	.string	"_markers"
.LASF78:
	.string	"_pos"
.LASF1220:
	.string	"pcmcia_sockets"
.LASF25:
	.string	"int64_t"
.LASF949:
	.string	"clen"
.LASF1054:
	.string	"cpu_model"
.LASF593:
	.string	"MuxDriver"
.LASF323:
	.string	"IOPortWriteFunc"
.LASF809:
	.string	"qemu_chr_open"
.LASF423:
	.string	"si_band"
.LASF753:
	.string	"mux_chr_can_read"
.LASF316:
	.string	"expire_time"
.LASF821:
	.string	"file_out"
.LASF1225:
	.string	"first_machine"
.LASF1189:
	.string	"event_pending"
.LASF543:
	.string	"timeout"
.LASF761:
	.string	"mux_chr_event"
.LASF992:
	.string	"qemu_savevm_state"
.LASF911:
	.string	"qemu_get_be32"
.LASF113:
	.string	"double"
.LASF431:
	.string	"siginfo"
.LASF511:
	.string	"dirent"
.LASF928:
	.string	"do_info_snapshots"
.LASF202:
	.string	"intercept_dr_read"
.LASF110:
	.string	"addr_code"
.LASF1087:
	.string	"init_get_clock"
.LASF72:
	.string	"overflow_arg_area"
.LASF972:
	.string	"control_socket_process"
.LASF300:
	.string	"chr_accept_input"
.LASF695:
	.string	"qemu_timer_pending"
.LASF995:
	.string	"qemu_add_vm_stop_handler"
.LASF1032:
	.string	"argc"
.LASF359:
	.string	"slot_string"
.LASF1157:
	.string	"no_quit"
.LASF483:
	.string	"c_cflag"
.LASF903:
	.string	"qemu_put_byte"
.LASF286:
	.string	"dpy_copy"
.LASF710:
	.string	"saddr"
.LASF335:
	.string	"speed"
.LASF418:
	.string	"si_sigval"
.LASF404:
	.string	"vm_state_offset"
.LASF896:
	.string	"dumb_refresh"
.LASF1009:
	.string	"drive_init"
.LASF309:
	.string	"is_writable"
.LASF381:
	.string	"VMChangeStateHandler"
.LASF699:
	.string	"qemu_get_clock"
.LASF900:
	.string	"qemu_fopen_bdrv"
.LASF1167:
	.string	"rt_clock"
.LASF277:
	.string	"data"
.LASF458:
	.string	"Bytef"
.LASF634:
	.string	"le_next"
.LASF755:
	.string	"mux_proc_byte"
.LASF475:
	.string	"dummy"
.LASF999:
	.string	"main_loop_wait"
.LASF1085:
	.string	"find_machine"
.LASF570:
	.string	"ifru_settings"
.LASF326:
	.string	"QEMUMachine"
.LASF156:
	.string	"load_size"
.LASF185:
	.string	"fp_status"
.LASF1156:
	.string	"graphic_rotate"
.LASF909:
	.string	"qemu_fill_buffer"
.LASF734:
	.string	"qemu_chr_event"
.LASF1064:
	.string	"item"
.LASF1038:
	.string	"net_boot"
.LASF538:
	.string	"dlci"
.LASF1211:
	.string	"term_fifo"
.LASF884:
	.string	"do_usb_del"
.LASF910:
	.string	"qemu_get_byte"
.LASF957:
	.string	"ram_load_v1"
.LASF1115:
	.string	"stderr"
.LASF1128:
	.string	"phys_ram_base"
.LASF544:
	.string	"cisco_proto"
.LASF378:
	.string	"VMChangeStateEntry"
.LASF426:
	.string	"_kill"
.LASF1166:
	.string	"parallel_hds"
.LASF291:
	.string	"chr_write"
.LASF653:
	.string	"cpu_outb"
.LASF71:
	.string	"fp_offset"
.LASF697:
	.string	"ptimer_head"
.LASF315:
	.string	"clock"
.LASF357:
	.string	"pcmcia_socket_s"
.LASF932:
	.string	"cpu_get_seg"
.LASF280:
	.string	"width"
.LASF124:
	.string	"base"
.LASF925:
	.string	"get_bs_snapshots"
.LASF609:
	.string	"down_script"
.LASF461:
	.string	"free_func"
.LASF477:
	.string	"cc_t"
.LASF615:
	.string	"socket"
.LASF936:
	.string	"qemu_put_be32s"
.LASF367:
	.string	"data_bits"
.LASF1066:
	.string	"term_exit"
.LASF1168:
	.string	"vm_clock"
.LASF662:
	.string	"register_ioport_read"
.LASF688:
	.string	"qemu_rearm_alarm_timer"
.LASF524:
	.string	"clock_rate"
.LASF655:
	.string	"cpu_outl"
.LASF520:
	.string	"h_aliases"
.LASF283:
	.string	"dpy_update"
.LASF730:
	.string	"qemu_next_deadline"
.LASF893:
	.string	"iter"
.LASF783:
	.string	"tcp_chr_write"
.LASF238:
	.string	"cpuid_ext2_features"
.LASF870:
	.string	"net_unixsocket_accept"
.LASF805:
	.string	"is_waitconnect"
.LASF1215:
	.string	"slirp_inited"
.LASF1118:
	.string	"argos_tracksc"
.LASF429:
	.string	"_sigfault"
.LASF183:
	.string	"fptags"
.LASF970:
	.string	"vm_start"
.LASF1135:
	.string	"isa_mem_base"
.LASF589:
	.string	"cons"
.LASF420:
	.string	"si_utime"
.LASF933:
	.string	"cpu_save"
.LASF28:
	.string	"tv_sec"
.LASF799:
	.string	"input_str"
.LASF468:
	.string	"total_out"
.LASF486:
	.string	"c_cc"
.LASF36:
	.string	"long long unsigned int"
.LASF447:
	.string	"sa_handler"
.LASF499:
	.string	"sin_addr"
.LASF56:
	.string	"_cur_column"
.LASF899:
	.string	"qemu_fopen"
.LASF906:
	.string	"timer_save"
.LASF1217:
	.string	"smb_dir"
.LASF1190:
	.string	"argos_wprofile"
.LASF171:
	.string	"shellcode_context"
.LASF466:
	.string	"next_out"
.LASF971:
	.string	"control_socket_read"
.LASF685:
	.string	"cpu_enable_ticks"
.LASF728:
	.string	"nearest_delta_us"
.LASF682:
	.string	"ticks"
.LASF1234:
	.string	"/home/remco/Projects/Argos/src/vl.c"
.LASF994:
	.string	"total_len_pos"
.LASF901:
	.string	"offset"
.LASF953:
	.string	"ram_load"
.LASF233:
	.string	"cpuid_version"
.LASF1146:
	.string	"vmsvga_enabled"
.LASF826:
	.string	"filename_in"
.LASF712:
	.string	"vprintf"
.LASF843:
	.string	"tap_receive"
.LASF320:
	.string	"SaveStateHandler"
.LASF1094:
	.string	"init_ioports"
.LASF493:
	.string	"sockaddr"
.LASF763:
	.string	"unix_write"
.LASF996:
	.string	"qemu_del_vm_stop_handler"
.LASF93:
	.string	"tm_gmtoff"
.LASF724:
	.string	"dynticks_start_timer"
.LASF11:
	.string	"__ino64_t"
.LASF377:
	.string	"qemu_put_mouse_event_name"
.LASF1039:
	.string	"initrd_filename"
.LASF628:
	.string	"sigval"
.LASF49:
	.string	"_IO_backup_base"
.LASF403:
	.string	"cluster_size"
.LASF301:
	.string	"focus"
.LASF40:
	.string	"_IO_read_ptr"
.LASF1230:
	.string	"shutdown_requested"
.LASF701:
	.string	"qemu_system_reset_request"
.LASF787:
	.string	"tcp_chr_process_IAC_bytes"
.LASF1224:
	.string	"first_bh"
.LASF223:
	.string	"nb_watchpoints"
.LASF967:
	.string	"vm_state_notify"
.LASF904:
	.string	"qemu_put_be32"
.LASF798:
	.string	"haddr"
.LASF852:
	.string	"net_socket_receive"
.LASF489:
	.string	"pollfd"
.LASF144:
	.string	"is_system_call"
.LASF107:
	.string	"CPUTLBEntry"
.LASF927:
	.string	"do_delvm"
.LASF811:
	.string	"__s1_len"
.LASF581:
	.string	"connected"
.LASF669:
	.string	"prev"
.LASF81:
	.string	"uint16_t"
.LASF18:
	.string	"__timer_t"
.LASF1191:
	.string	"ctrlsock_laddr"
.LASF1113:
	.string	"stdin"
.LASF250:
	.string	"page_addr"
.LASF677:
	.string	"do_mouse_set"
.LASF641:
	.string	"qemu_set_fd_handler2"
.LASF417:
	.string	"si_overrun"
.LASF851:
	.string	"open_max"
.LASF613:
	.string	"NetSocketListenState"
.LASF1088:
	.string	"init_timer_alarm"
.LASF1144:
	.string	"rtc_start_date"
.LASF955:
	.string	"ram_decompress_open"
.LASF1210:
	.string	"stdio_nb_clients"
.LASF1222:
	.string	"first_polling_entry"
.LASF764:
	.string	"len1"
.LASF271:
	.string	"model"
.LASF1127:
	.string	"phys_ram_size"
.LASF1025:
	.string	"params"
.LASF942:
	.string	"qemu_get_be16s"
.LASF436:
	.string	"siginfo_t"
.LASF620:
	.string	"PollingEntry"
.LASF1041:
	.string	"kernel_cmdline"
.LASF1089:
	.string	"net_client_init"
.LASF762:
	.string	"mux_chr_update_read_handler"
.LASF716:
	.string	"hpet_start_timer"
.LASF735:
	.string	"event"
.LASF829:
	.string	"slave_name"
.LASF874:
	.string	"get_param_value"
.LASF715:
	.string	"enable_sigio_timer"
.LASF549:
	.string	"port"
.LASF54:
	.string	"_flags2"
.LASF1159:
	.string	"autostart"
.LASF34:
	.string	"fds_bits"
.LASF166:
	.string	"eflags"
.LASF1061:
	.string	"again"
.LASF539:
	.string	"fr_proto_pvc"
.LASF708:
	.string	"socket_set_nonblock"
.LASF29:
	.string	"tv_nsec"
.LASF823:
	.string	"term_init"
.LASF585:
	.string	"rearm"
.LASF965:
	.string	"qemu_add_vm_change_state_handler"
.LASF582:
	.string	"qemu_alarm_timer"
.LASF1188:
	.string	"cur_cpu"
.LASF550:
	.string	"raw_hdlc"
.LASF388:
	.string	"IF_MTD"
.LASF1077:
	.string	"is_udp"
.LASF1134:
	.string	"acpi_enabled"
.LASF907:
	.string	"qemu_put_timer"
.LASF1062:
	.string	"again1"
.LASF769:
	.string	"qemu_chr_open_fd"
.LASF819:
	.string	"qemu_chr_open_pp"
.LASF236:
	.string	"cpuid_xlevel"
.LASF832:
	.string	"qemu_find_vlan"
.LASF552:
	.string	"fr_pvc"
.LASF721:
	.string	"rtc_start_timer"
.LASF131:
	.string	"argos_bytemap_t"
.LASF513:
	.string	"d_off"
.LASF276:
	.string	"DisplayState"
.LASF789:
	.string	"socket_set_nodelay"
.LASF912:
	.string	"qemu_get_be64"
.LASF488:
	.string	"c_ospeed"
.LASF342:
	.string	"setup_buf"
.LASF1192:
	.string	"ctrlsock_lport"
.LASF408:
	.string	"date_sec"
.LASF607:
	.string	"TCPCharDriver"
.LASF312:
	.string	"buf_index"
.LASF986:
	.string	"do_savevm"
.LASF416:
	.string	"si_tid"
.LASF664:
	.string	"qemu_add_mouse_event_handler"
.LASF951:
	.string	"ram_compress_open"
.LASF638:
	.string	"QEMUResetEntry"
.LASF17:
	.string	"__suseconds_t"
.LASF134:
	.string	"origin"
.LASF978:
	.string	"the_end"
.LASF707:
	.string	"socket_set_block"
.LASF1065:
	.string	"netroms"
.LASF157:
	.string	"store_value"
.LASF479:
	.string	"tcflag_t"
.LASF105:
	.string	"target_ulong"
.LASF579:
	.string	"ctrlsock_state"
.LASF382:
	.string	"VMStopHandler"
.LASF1031:
	.string	"main"
.LASF1216:
	.string	"slirp_vc"
.LASF1140:
	.string	"vm_running"
.LASF742:
	.string	"qemu_chr_read"
.LASF372:
	.string	"QEMUPutMouseEvent"
.LASF1049:
	.string	"serial_devices"
.LASF1051:
	.string	"parallel_devices"
.LASF353:
	.string	"cancel_cb"
.LASF490:
	.string	"events"
.LASF703:
	.string	"host_signum"
.LASF358:
	.string	"attached"
.LASF210:
	.string	"smbase"
.LASF612:
	.string	"dgram_dst"
.LASF1068:
	.string	"main_loop"
.LASF1214:
	.string	"old_fd0_flags"
.LASF1180:
	.string	"full_screen"
.LASF1027:
	.string	"select_soundhw"
.LASF834:
	.string	"qemu_new_vlan_client"
.LASF148:
	.string	"instruction"
.LASF982:
	.string	"end_pos"
.LASF1046:
	.string	"optind"
.LASF833:
	.string	"pvlan"
.LASF838:
	.string	"slirp_output"
.LASF594:
	.string	"fd_in"
.LASF1231:
	.string	"powerdown_requested"
.LASF1099:
	.string	"target"
.LASF8:
	.string	"short int"
.LASF258:
	.string	"help"
.LASF21:
	.string	"pid_t"
.LASF230:
	.string	"cpuid_vendor1"
.LASF231:
	.string	"cpuid_vendor2"
.LASF232:
	.string	"cpuid_vendor3"
.LASF99:
	.string	"__jmp_buf"
.LASF57:
	.string	"_vtable_offset"
.LASF894:
	.string	"dumb_update"
.LASF373:
	.string	"QEMUPutMouseEntry"
.LASF400:
	.string	"QEMUClock"
.LASF1174:
	.string	"ioport_write_table"
.LASF206:
	.string	"exception_index"
.LASF758:
	.string	"mux_print_help"
.LASF850:
	.string	"args"
.LASF108:
	.string	"addr_read"
.LASF898:
	.string	"qemu_del_polling_cb"
.LASF1033:
	.string	"argv"
.LASF1119:
	.string	"argos_instance_id"
.LASF350:
	.string	"devep"
.LASF1161:
	.string	"option_rom"
.LASF647:
	.string	"tmptag"
.LASF452:
	.string	"sa_flags"
.LASF196:
	.string	"star"
.LASF126:
	.string	"flags"
.LASF775:
	.string	"pp_hw_mode"
.LASF946:
	.string	"ram_put_cblock"
.LASF123:
	.string	"selector"
.LASF802:
	.string	"qemu_chr_open_tcp"
	.section	.note.GNU-stack,"",@progbits
	.ident	"GCC: (GNU) 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
