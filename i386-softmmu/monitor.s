	.file	"monitor.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
.globl mon_cpu
	.bss
	.align 8
	.type	mon_cpu, @object
	.size	mon_cpu, 8
mon_cpu:
	.zero	8
	.data
	.align 4
	.type	is_first_init, @object
	.size	is_first_init, 4
is_first_init:
	.long	1
	.align 4
	.type	default_fmt_size, @object
	.size	default_fmt_size, 4
default_fmt_size:
	.long	4
	.align 4
	.type	default_fmt_format, @object
	.size	default_fmt_format, 4
default_fmt_format:
	.long	120
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"help|?"
.LC1:
	.string	"s?"
.LC2:
	.string	"[cmd]"
.LC3:
	.string	"show the help"
.LC4:
	.string	"commit"
.LC5:
	.string	"s"
.LC6:
	.string	"device|all"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC7:
	.string	"commit changes to the disk images (if -snapshot is used) or backing files"
	.section	.rodata.str1.1
.LC8:
	.string	"info"
.LC9:
	.string	"subcommand"
	.section	.rodata.str1.8
	.align 8
.LC10:
	.string	"show various information about the system state"
	.section	.rodata.str1.1
.LC11:
	.string	"q|quit"
.LC12:
	.string	""
.LC13:
	.string	"quit the emulator"
.LC14:
	.string	"eject"
.LC15:
	.string	"-fB"
.LC16:
	.string	"[-f] device"
	.section	.rodata.str1.8
	.align 8
.LC17:
	.string	"eject a removable medium (use -f to force it)"
	.section	.rodata.str1.1
.LC18:
	.string	"change"
.LC19:
	.string	"BF"
.LC20:
	.string	"device filename"
.LC21:
	.string	"change a removable medium"
.LC22:
	.string	"screendump"
.LC23:
	.string	"F"
.LC24:
	.string	"filename"
	.section	.rodata.str1.8
	.align 8
.LC25:
	.string	"save screen into PPM image 'filename'"
	.section	.rodata.str1.1
.LC26:
	.string	"logfile"
.LC27:
	.string	"output logs to 'filename'"
.LC28:
	.string	"log"
.LC29:
	.string	"item1[,...]"
	.section	.rodata.str1.8
	.align 8
.LC30:
	.string	"activate logging of the specified items to '/tmp/argos.log'"
	.section	.rodata.str1.1
.LC31:
	.string	"savevm"
.LC32:
	.string	"tag|id"
	.section	.rodata.str1.8
	.align 8
.LC33:
	.string	"save a VM snapshot. If no tag or id are provided, a new snapshot is created"
	.section	.rodata.str1.1
.LC34:
	.string	"loadvm"
	.section	.rodata.str1.8
	.align 8
.LC35:
	.string	"restore a VM snapshot from its tag or id"
	.section	.rodata.str1.1
.LC36:
	.string	"delvm"
	.section	.rodata.str1.8
	.align 8
.LC37:
	.string	"delete a VM snapshot from its tag or id"
	.section	.rodata.str1.1
.LC38:
	.string	"stop"
.LC39:
	.string	"stop emulation"
.LC40:
	.string	"c|cont"
.LC41:
	.string	"resume emulation"
.LC42:
	.string	"gdbserver"
.LC43:
	.string	"[port]"
	.section	.rodata.str1.8
	.align 8
.LC44:
	.string	"start gdbserver session (default port=1234)"
	.section	.rodata.str1.1
.LC45:
	.string	"x"
.LC46:
	.string	"/l"
.LC47:
	.string	"/fmt addr"
	.section	.rodata.str1.8
	.align 8
.LC48:
	.string	"virtual memory dump starting at 'addr'"
	.section	.rodata.str1.1
.LC49:
	.string	"xp"
	.section	.rodata.str1.8
	.align 8
.LC50:
	.string	"physical memory dump starting at 'addr'"
	.section	.rodata.str1.1
.LC51:
	.string	"p|print"
.LC52:
	.string	"/fmt expr"
	.section	.rodata.str1.8
	.align 8
.LC53:
	.string	"print expression value (use $reg for CPU register access)"
	.section	.rodata.str1.1
.LC54:
	.string	"i"
.LC55:
	.string	"/ii."
.LC56:
	.string	"I/O port read"
.LC57:
	.string	"sendkey"
.LC58:
	.string	"keys"
	.section	.rodata.str1.8
	.align 8
.LC59:
	.string	"send keys to the VM (e.g. 'sendkey ctrl-alt-f1')"
	.section	.rodata.str1.1
.LC60:
	.string	"system_reset"
.LC61:
	.string	"reset the system"
.LC62:
	.string	"system_powerdown"
.LC63:
	.string	"send system power down event"
.LC64:
	.string	"sum"
.LC65:
	.string	"ii"
.LC66:
	.string	"addr size"
	.section	.rodata.str1.8
	.align 8
.LC67:
	.string	"compute the checksum of a memory region"
	.section	.rodata.str1.1
.LC68:
	.string	"usb_add"
.LC69:
	.string	"device"
	.section	.rodata.str1.8
	.align 8
.LC70:
	.string	"add USB device (e.g. 'host:bus.addr' or 'host:vendor_id:product_id')"
	.section	.rodata.str1.1
.LC71:
	.string	"usb_del"
.LC72:
	.string	"remove USB device 'bus.addr'"
.LC73:
	.string	"cpu"
.LC74:
	.string	"index"
.LC75:
	.string	"set the default CPU"
.LC76:
	.string	"mouse_move"
.LC77:
	.string	"sss?"
.LC78:
	.string	"dx dy [dz]"
.LC79:
	.string	"send mouse move events"
.LC80:
	.string	"mouse_button"
.LC81:
	.string	"state"
	.section	.rodata.str1.8
	.align 8
.LC82:
	.string	"change mouse button state (1=L, 2=M, 4=R)"
	.section	.rodata.str1.1
.LC83:
	.string	"mouse_set"
	.section	.rodata.str1.8
	.align 8
.LC84:
	.string	"set which mouse device receives events"
	.section	.rodata.str1.1
.LC85:
	.string	"wavcapture"
.LC86:
	.string	"si?i?i?"
	.section	.rodata.str1.8
	.align 8
.LC87:
	.string	"path [frequency bits channels]"
	.align 8
.LC88:
	.string	"capture audio to a wave file (default frequency=44100 bits=16 channels=2)"
	.section	.rodata.str1.1
.LC89:
	.string	"stopcapture"
.LC90:
	.string	"capture index"
.LC91:
	.string	"stop capture"
.LC92:
	.string	"memsave"
.LC93:
	.string	"lis"
.LC94:
	.string	"addr size file"
	.section	.rodata.str1.8
	.align 8
.LC95:
	.string	"save to disk virtual memory dump starting at 'addr' of size 'size'"
	.data
	.align 32
	.type	term_cmds, @object
	.size	term_cmds, 1320
term_cmds:
	.quad	.LC0
	.quad	.LC1
	.quad	do_help
	.quad	.LC2
	.quad	.LC3
	.quad	.LC4
	.quad	.LC5
	.quad	do_commit
	.quad	.LC6
	.quad	.LC7
	.quad	.LC8
	.quad	.LC1
	.quad	do_info
	.quad	.LC9
	.quad	.LC10
	.quad	.LC11
	.quad	.LC12
	.quad	do_quit
	.quad	.LC12
	.quad	.LC13
	.quad	.LC14
	.quad	.LC15
	.quad	do_eject
	.quad	.LC16
	.quad	.LC17
	.quad	.LC18
	.quad	.LC19
	.quad	do_change
	.quad	.LC20
	.quad	.LC21
	.quad	.LC22
	.quad	.LC23
	.quad	do_screen_dump
	.quad	.LC24
	.quad	.LC25
	.quad	.LC26
	.quad	.LC5
	.quad	do_logfile
	.quad	.LC24
	.quad	.LC27
	.quad	.LC28
	.quad	.LC5
	.quad	do_log
	.quad	.LC29
	.quad	.LC30
	.quad	.LC31
	.quad	.LC1
	.quad	do_savevm
	.quad	.LC32
	.quad	.LC33
	.quad	.LC34
	.quad	.LC5
	.quad	do_loadvm
	.quad	.LC32
	.quad	.LC35
	.quad	.LC36
	.quad	.LC5
	.quad	do_delvm
	.quad	.LC32
	.quad	.LC37
	.quad	.LC38
	.quad	.LC12
	.quad	do_stop
	.quad	.LC12
	.quad	.LC39
	.quad	.LC40
	.quad	.LC12
	.quad	do_cont
	.quad	.LC12
	.quad	.LC41
	.quad	.LC42
	.quad	.LC1
	.quad	do_gdbserver
	.quad	.LC43
	.quad	.LC44
	.quad	.LC45
	.quad	.LC46
	.quad	do_memory_dump
	.quad	.LC47
	.quad	.LC48
	.quad	.LC49
	.quad	.LC46
	.quad	do_physical_memory_dump
	.quad	.LC47
	.quad	.LC50
	.quad	.LC51
	.quad	.LC46
	.quad	do_print
	.quad	.LC52
	.quad	.LC53
	.quad	.LC54
	.quad	.LC55
	.quad	do_ioport_read
	.quad	.LC47
	.quad	.LC56
	.quad	.LC57
	.quad	.LC5
	.quad	do_send_key
	.quad	.LC58
	.quad	.LC59
	.quad	.LC60
	.quad	.LC12
	.quad	do_system_reset
	.quad	.LC12
	.quad	.LC61
	.quad	.LC62
	.quad	.LC12
	.quad	do_system_powerdown
	.quad	.LC12
	.quad	.LC63
	.quad	.LC64
	.quad	.LC65
	.quad	do_sum
	.quad	.LC66
	.quad	.LC67
	.quad	.LC68
	.quad	.LC5
	.quad	do_usb_add
	.quad	.LC69
	.quad	.LC70
	.quad	.LC71
	.quad	.LC5
	.quad	do_usb_del
	.quad	.LC69
	.quad	.LC72
	.quad	.LC73
	.quad	.LC54
	.quad	do_cpu_set
	.quad	.LC74
	.quad	.LC75
	.quad	.LC76
	.quad	.LC77
	.quad	do_mouse_move
	.quad	.LC78
	.quad	.LC79
	.quad	.LC80
	.quad	.LC54
	.quad	do_mouse_button
	.quad	.LC81
	.quad	.LC82
	.quad	.LC83
	.quad	.LC54
	.quad	do_mouse_set
	.quad	.LC74
	.quad	.LC84
	.quad	.LC85
	.quad	.LC86
	.quad	do_wav_capture
	.quad	.LC87
	.quad	.LC88
	.quad	.LC89
	.quad	.LC54
	.quad	do_stop_capture
	.quad	.LC90
	.quad	.LC91
	.quad	.LC92
	.quad	.LC93
	.quad	do_memory_save
	.quad	.LC94
	.quad	.LC95
	.quad	0
	.quad	0
	.zero	24
	.section	.rodata.str1.1
.LC96:
	.string	"shift"
.LC97:
	.string	"shift_r"
.LC98:
	.string	"alt"
.LC99:
	.string	"alt_r"
.LC100:
	.string	"ctrl"
.LC101:
	.string	"ctrl_r"
.LC102:
	.string	"menu"
.LC103:
	.string	"esc"
.LC104:
	.string	"1"
.LC105:
	.string	"2"
.LC106:
	.string	"3"
.LC107:
	.string	"4"
.LC108:
	.string	"5"
.LC109:
	.string	"6"
.LC110:
	.string	"7"
.LC111:
	.string	"8"
.LC112:
	.string	"9"
.LC113:
	.string	"0"
.LC114:
	.string	"minus"
.LC115:
	.string	"equal"
.LC116:
	.string	"backspace"
.LC117:
	.string	"tab"
.LC118:
	.string	"q"
.LC119:
	.string	"w"
.LC120:
	.string	"e"
.LC121:
	.string	"r"
.LC122:
	.string	"t"
.LC123:
	.string	"y"
.LC124:
	.string	"u"
.LC125:
	.string	"o"
.LC126:
	.string	"p"
.LC127:
	.string	"ret"
.LC128:
	.string	"a"
.LC129:
	.string	"d"
.LC130:
	.string	"f"
.LC131:
	.string	"g"
.LC132:
	.string	"h"
.LC133:
	.string	"j"
.LC134:
	.string	"k"
.LC135:
	.string	"l"
.LC136:
	.string	"z"
.LC137:
	.string	"c"
.LC138:
	.string	"v"
.LC139:
	.string	"b"
.LC140:
	.string	"n"
.LC141:
	.string	"m"
.LC142:
	.string	"spc"
.LC143:
	.string	"caps_lock"
.LC144:
	.string	"f1"
.LC145:
	.string	"f2"
.LC146:
	.string	"f3"
.LC147:
	.string	"f4"
.LC148:
	.string	"f5"
.LC149:
	.string	"f6"
.LC150:
	.string	"f7"
.LC151:
	.string	"f8"
.LC152:
	.string	"f9"
.LC153:
	.string	"f10"
.LC154:
	.string	"num_lock"
.LC155:
	.string	"scroll_lock"
.LC156:
	.string	"kp_divide"
.LC157:
	.string	"kp_multiply"
.LC158:
	.string	"kp_subtract"
.LC159:
	.string	"kp_add"
.LC160:
	.string	"kp_enter"
.LC161:
	.string	"kp_decimal"
.LC162:
	.string	"kp_0"
.LC163:
	.string	"kp_1"
.LC164:
	.string	"kp_2"
.LC165:
	.string	"kp_3"
.LC166:
	.string	"kp_4"
.LC167:
	.string	"kp_5"
.LC168:
	.string	"kp_6"
.LC169:
	.string	"kp_7"
.LC170:
	.string	"kp_8"
.LC171:
	.string	"kp_9"
.LC172:
	.string	"<"
.LC173:
	.string	"f11"
.LC174:
	.string	"f12"
.LC175:
	.string	"print"
.LC176:
	.string	"home"
.LC177:
	.string	"pgup"
.LC178:
	.string	"pgdn"
.LC179:
	.string	"end"
.LC180:
	.string	"left"
.LC181:
	.string	"up"
.LC182:
	.string	"down"
.LC183:
	.string	"right"
.LC184:
	.string	"insert"
.LC185:
	.string	"delete"
	.section	.rodata
	.align 32
	.type	key_defs, @object
	.size	key_defs, 1504
key_defs:
	.long	42
	.zero	4
	.quad	.LC96
	.long	54
	.zero	4
	.quad	.LC97
	.long	56
	.zero	4
	.quad	.LC98
	.long	184
	.zero	4
	.quad	.LC99
	.long	29
	.zero	4
	.quad	.LC100
	.long	157
	.zero	4
	.quad	.LC101
	.long	221
	.zero	4
	.quad	.LC102
	.long	1
	.zero	4
	.quad	.LC103
	.long	2
	.zero	4
	.quad	.LC104
	.long	3
	.zero	4
	.quad	.LC105
	.long	4
	.zero	4
	.quad	.LC106
	.long	5
	.zero	4
	.quad	.LC107
	.long	6
	.zero	4
	.quad	.LC108
	.long	7
	.zero	4
	.quad	.LC109
	.long	8
	.zero	4
	.quad	.LC110
	.long	9
	.zero	4
	.quad	.LC111
	.long	10
	.zero	4
	.quad	.LC112
	.long	11
	.zero	4
	.quad	.LC113
	.long	12
	.zero	4
	.quad	.LC114
	.long	13
	.zero	4
	.quad	.LC115
	.long	14
	.zero	4
	.quad	.LC116
	.long	15
	.zero	4
	.quad	.LC117
	.long	16
	.zero	4
	.quad	.LC118
	.long	17
	.zero	4
	.quad	.LC119
	.long	18
	.zero	4
	.quad	.LC120
	.long	19
	.zero	4
	.quad	.LC121
	.long	20
	.zero	4
	.quad	.LC122
	.long	21
	.zero	4
	.quad	.LC123
	.long	22
	.zero	4
	.quad	.LC124
	.long	23
	.zero	4
	.quad	.LC54
	.long	24
	.zero	4
	.quad	.LC125
	.long	25
	.zero	4
	.quad	.LC126
	.long	28
	.zero	4
	.quad	.LC127
	.long	30
	.zero	4
	.quad	.LC128
	.long	31
	.zero	4
	.quad	.LC5
	.long	32
	.zero	4
	.quad	.LC129
	.long	33
	.zero	4
	.quad	.LC130
	.long	34
	.zero	4
	.quad	.LC131
	.long	35
	.zero	4
	.quad	.LC132
	.long	36
	.zero	4
	.quad	.LC133
	.long	37
	.zero	4
	.quad	.LC134
	.long	38
	.zero	4
	.quad	.LC135
	.long	44
	.zero	4
	.quad	.LC136
	.long	45
	.zero	4
	.quad	.LC45
	.long	46
	.zero	4
	.quad	.LC137
	.long	47
	.zero	4
	.quad	.LC138
	.long	48
	.zero	4
	.quad	.LC139
	.long	49
	.zero	4
	.quad	.LC140
	.long	50
	.zero	4
	.quad	.LC141
	.long	57
	.zero	4
	.quad	.LC142
	.long	58
	.zero	4
	.quad	.LC143
	.long	59
	.zero	4
	.quad	.LC144
	.long	60
	.zero	4
	.quad	.LC145
	.long	61
	.zero	4
	.quad	.LC146
	.long	62
	.zero	4
	.quad	.LC147
	.long	63
	.zero	4
	.quad	.LC148
	.long	64
	.zero	4
	.quad	.LC149
	.long	65
	.zero	4
	.quad	.LC150
	.long	66
	.zero	4
	.quad	.LC151
	.long	67
	.zero	4
	.quad	.LC152
	.long	68
	.zero	4
	.quad	.LC153
	.long	69
	.zero	4
	.quad	.LC154
	.long	70
	.zero	4
	.quad	.LC155
	.long	181
	.zero	4
	.quad	.LC156
	.long	55
	.zero	4
	.quad	.LC157
	.long	74
	.zero	4
	.quad	.LC158
	.long	78
	.zero	4
	.quad	.LC159
	.long	156
	.zero	4
	.quad	.LC160
	.long	83
	.zero	4
	.quad	.LC161
	.long	82
	.zero	4
	.quad	.LC162
	.long	79
	.zero	4
	.quad	.LC163
	.long	80
	.zero	4
	.quad	.LC164
	.long	81
	.zero	4
	.quad	.LC165
	.long	75
	.zero	4
	.quad	.LC166
	.long	76
	.zero	4
	.quad	.LC167
	.long	77
	.zero	4
	.quad	.LC168
	.long	71
	.zero	4
	.quad	.LC169
	.long	72
	.zero	4
	.quad	.LC170
	.long	73
	.zero	4
	.quad	.LC171
	.long	86
	.zero	4
	.quad	.LC172
	.long	87
	.zero	4
	.quad	.LC173
	.long	88
	.zero	4
	.quad	.LC174
	.long	183
	.zero	4
	.quad	.LC175
	.long	199
	.zero	4
	.quad	.LC176
	.long	201
	.zero	4
	.quad	.LC177
	.long	209
	.zero	4
	.quad	.LC178
	.long	207
	.zero	4
	.quad	.LC179
	.long	203
	.zero	4
	.quad	.LC180
	.long	200
	.zero	4
	.quad	.LC181
	.long	208
	.zero	4
	.quad	.LC182
	.long	205
	.zero	4
	.quad	.LC183
	.long	210
	.zero	4
	.quad	.LC184
	.long	211
	.zero	4
	.quad	.LC185
	.long	0
	.zero	4
	.quad	0
	.section	.rodata.str1.1
.LC186:
	.string	"version"
.LC187:
	.string	"show the version of argos"
.LC188:
	.string	"network"
.LC189:
	.string	"show the network state"
.LC190:
	.string	"block"
.LC191:
	.string	"show the block devices"
.LC192:
	.string	"blockstats"
.LC193:
	.string	"show block device statistics"
.LC194:
	.string	"registers"
.LC195:
	.string	"show the cpu registers"
.LC196:
	.string	"cpus"
.LC197:
	.string	"show infos for each CPU"
.LC198:
	.string	"history"
.LC199:
	.string	"show the command line history"
.LC200:
	.string	"irq"
	.section	.rodata.str1.8
	.align 8
.LC201:
	.string	"show the interrupts statistics (if available)"
	.section	.rodata.str1.1
.LC202:
	.string	"pic"
.LC203:
	.string	"show i8259 (PIC) state"
.LC204:
	.string	"pci"
.LC205:
	.string	"show PCI info"
.LC206:
	.string	"tlb"
	.section	.rodata.str1.8
	.align 8
.LC207:
	.string	"show virtual to physical memory mappings"
	.section	.rodata.str1.1
.LC208:
	.string	"mem"
	.section	.rodata.str1.8
	.align 8
.LC209:
	.string	"show the active virtual memory mappings"
	.section	.rodata.str1.1
.LC210:
	.string	"jit"
.LC211:
	.string	"show dynamic compiler info"
.LC212:
	.string	"usb"
.LC213:
	.string	"show guest USB devices"
.LC214:
	.string	"usbhost"
.LC215:
	.string	"show host USB devices"
.LC216:
	.string	"profile"
.LC217:
	.string	"show profiling information"
.LC218:
	.string	"capture"
.LC219:
	.string	"show capture information"
.LC220:
	.string	"snapshots"
	.section	.rodata.str1.8
	.align 8
.LC221:
	.string	"show the currently saved VM snapshots"
	.section	.rodata.str1.1
.LC222:
	.string	"pcmcia"
.LC223:
	.string	"show guest PCMCIA status"
.LC224:
	.string	"mice"
	.section	.rodata.str1.8
	.align 8
.LC225:
	.string	"show which guest mouse is receiving events"
	.section	.rodata.str1.1
.LC226:
	.string	"vnc"
.LC227:
	.string	"show the vnc server status"
.LC228:
	.string	"name"
.LC229:
	.string	"show the current VM name"
.LC230:
	.string	"slirp"
.LC231:
	.string	"show SLIRP statistics"
	.data
	.align 32
	.type	info_cmds, @object
	.size	info_cmds, 960
info_cmds:
	.quad	.LC186
	.quad	.LC12
	.quad	do_info_version
	.quad	.LC12
	.quad	.LC187
	.quad	.LC188
	.quad	.LC12
	.quad	do_info_network
	.quad	.LC12
	.quad	.LC189
	.quad	.LC190
	.quad	.LC12
	.quad	do_info_block
	.quad	.LC12
	.quad	.LC191
	.quad	.LC192
	.quad	.LC12
	.quad	do_info_blockstats
	.quad	.LC12
	.quad	.LC193
	.quad	.LC194
	.quad	.LC12
	.quad	do_info_registers
	.quad	.LC12
	.quad	.LC195
	.quad	.LC196
	.quad	.LC12
	.quad	do_info_cpus
	.quad	.LC12
	.quad	.LC197
	.quad	.LC198
	.quad	.LC12
	.quad	do_info_history
	.quad	.LC12
	.quad	.LC199
	.quad	.LC200
	.quad	.LC12
	.quad	irq_info
	.quad	.LC12
	.quad	.LC201
	.quad	.LC202
	.quad	.LC12
	.quad	pic_info
	.quad	.LC12
	.quad	.LC203
	.quad	.LC204
	.quad	.LC12
	.quad	pci_info
	.quad	.LC12
	.quad	.LC205
	.quad	.LC206
	.quad	.LC12
	.quad	tlb_info
	.quad	.LC12
	.quad	.LC207
	.quad	.LC208
	.quad	.LC12
	.quad	mem_info
	.quad	.LC12
	.quad	.LC209
	.quad	.LC210
	.quad	.LC12
	.quad	do_info_jit
	.quad	.LC12
	.quad	.LC211
	.quad	.LC212
	.quad	.LC12
	.quad	usb_info
	.quad	.LC12
	.quad	.LC213
	.quad	.LC214
	.quad	.LC12
	.quad	usb_host_info
	.quad	.LC12
	.quad	.LC215
	.quad	.LC216
	.quad	.LC12
	.quad	do_info_profile
	.quad	.LC12
	.quad	.LC217
	.quad	.LC218
	.quad	.LC12
	.quad	do_info_capture
	.quad	.LC12
	.quad	.LC219
	.quad	.LC220
	.quad	.LC12
	.quad	do_info_snapshots
	.quad	.LC12
	.quad	.LC221
	.quad	.LC222
	.quad	.LC12
	.quad	pcmcia_info
	.quad	.LC12
	.quad	.LC223
	.quad	.LC224
	.quad	.LC12
	.quad	do_info_mice
	.quad	.LC12
	.quad	.LC225
	.quad	.LC226
	.quad	.LC12
	.quad	do_info_vnc
	.quad	.LC12
	.quad	.LC227
	.quad	.LC228
	.quad	.LC12
	.quad	do_info_name
	.quad	.LC12
	.quad	.LC229
	.quad	.LC230
	.quad	.LC12
	.quad	do_info_slirp
	.quad	.LC12
	.quad	.LC231
	.quad	0
	.quad	0
	.zero	24
	.section	.rodata.str1.1
.LC232:
	.string	"eax"
.LC233:
	.string	"ecx"
.LC234:
	.string	"edx"
.LC235:
	.string	"ebx"
.LC236:
	.string	"esp|sp"
.LC237:
	.string	"ebp|fp"
.LC238:
	.string	"esi"
.LC239:
	.string	"edi"
.LC240:
	.string	"eflags"
.LC241:
	.string	"eip"
.LC242:
	.string	"cs"
.LC243:
	.string	"cs.base"
.LC244:
	.string	"cs.limit"
.LC245:
	.string	"ds"
.LC246:
	.string	"ds.base"
.LC247:
	.string	"ds.limit"
.LC248:
	.string	"es"
.LC249:
	.string	"es.base"
.LC250:
	.string	"es.limit"
.LC251:
	.string	"ss"
.LC252:
	.string	"ss.base"
.LC253:
	.string	"ss.limit"
.LC254:
	.string	"fs"
.LC255:
	.string	"fs.base"
.LC256:
	.string	"fs.limit"
.LC257:
	.string	"gs"
.LC258:
	.string	"gs.base"
.LC259:
	.string	"gs.limit"
.LC260:
	.string	"pc"
	.data
	.align 32
	.type	monitor_defs, @object
	.size	monitor_defs, 960
monitor_defs:
	.quad	.LC232
	.long	0
	.zero	20
	.quad	.LC233
	.long	4
	.zero	20
	.quad	.LC234
	.long	8
	.zero	20
	.quad	.LC235
	.long	12
	.zero	20
	.quad	.LC236
	.long	16
	.zero	20
	.quad	.LC237
	.long	20
	.zero	20
	.quad	.LC238
	.long	24
	.zero	20
	.quad	.LC239
	.long	28
	.zero	20
	.quad	.LC240
	.long	36
	.zero	20
	.quad	.LC241
	.long	32
	.zero	20
	.quad	.LC242
	.long	372
	.zero	4
	.quad	0
	.long	1
	.zero	4
	.quad	.LC243
	.long	376
	.zero	20
	.quad	.LC244
	.long	380
	.zero	4
	.quad	0
	.long	1
	.zero	4
	.quad	.LC245
	.long	404
	.zero	4
	.quad	0
	.long	1
	.zero	4
	.quad	.LC246
	.long	408
	.zero	20
	.quad	.LC247
	.long	412
	.zero	4
	.quad	0
	.long	1
	.zero	4
	.quad	.LC248
	.long	356
	.zero	4
	.quad	0
	.long	1
	.zero	4
	.quad	.LC249
	.long	360
	.zero	20
	.quad	.LC250
	.long	364
	.zero	4
	.quad	0
	.long	1
	.zero	4
	.quad	.LC251
	.long	388
	.zero	4
	.quad	0
	.long	1
	.zero	4
	.quad	.LC252
	.long	392
	.zero	20
	.quad	.LC253
	.long	396
	.zero	4
	.quad	0
	.long	1
	.zero	4
	.quad	.LC254
	.long	420
	.zero	4
	.quad	0
	.long	1
	.zero	4
	.quad	.LC255
	.long	424
	.zero	20
	.quad	.LC256
	.long	428
	.zero	4
	.quad	0
	.long	1
	.zero	4
	.quad	.LC257
	.long	436
	.zero	4
	.quad	0
	.long	1
	.zero	4
	.quad	.LC258
	.long	440
	.zero	20
	.quad	.LC259
	.long	444
	.zero	4
	.quad	0
	.long	1
	.zero	4
	.quad	.LC260
	.long	0
	.zero	4
	.quad	monitor_get_pc
	.zero	8
	.quad	0
	.zero	24
	.text
	.p2align 4,,15
.globl term_flush
	.type	term_flush, @function
term_flush:
.LFB200:
	.file 1 "/home/remco/Projects/Argos/src/monitor.c"
	.loc 1 87 0
	.loc 1 89 0
	movl	term_outbuf_index(%rip), %edx
	.loc 1 87 0
	pushq	%rbx
.LCFI0:
	.loc 1 89 0
	testl	%edx, %edx
	jle	.L1
	.loc 1 90 0
	xorl	%ebx, %ebx
	.p2align 4,,7
.L7:
	.loc 1 91 0
	movslq	%ebx,%rax
	movq	monitor_hd(,%rax,8), %rdi
	testq	%rdi, %rdi
	je	.L5
	movl	88(%rdi), %eax
	testl	%eax, %eax
	je	.L11
.L5:
	.loc 1 90 0
	incl	%ebx
	cmpl	$3, %ebx
	jle	.L7
	.loc 1 93 0
	movl	$0, term_outbuf_index(%rip)
.L1:
	.loc 1 95 0
	popq	%rbx
	ret
	.p2align 4,,7
.L11:
	.loc 1 92 0
	movl	term_outbuf_index(%rip), %edx
	movl	$term_outbuf, %esi
	call	qemu_chr_write
	jmp	.L5
.LFE200:
	.size	term_flush, .-term_flush
	.p2align 4,,15
.globl term_puts
	.type	term_puts, @function
term_puts:
.LFB201:
	.loc 1 99 0
	pushq	%rbx
.LCFI1:
	movq	%rdi, %rbx
	.p2align 4,,7
.L22:
	.loc 1 102 0
	movzbl	(%rbx), %ecx
	incq	%rbx
	.loc 1 103 0
	testb	%cl, %cl
	je	.L14
.L24:
	.loc 1 105 0
	cmpb	$10, %cl
	je	.L23
	movl	term_outbuf_index(%rip), %edx
.L16:
	.loc 1 107 0
	movslq	%edx,%rax
	movb	%cl, term_outbuf(%rax)
	leal	1(%rdx), %eax
	.loc 1 108 0
	cmpl	$1022, %eax
	.loc 1 107 0
	movl	%eax, term_outbuf_index(%rip)
	.loc 1 108 0
	seta	%dl
	cmpb	$10, %cl
	sete	%al
	orl	%edx, %eax
	testb	$1, %al
	je	.L22
	.loc 1 110 0
	call	term_flush
	.loc 1 102 0
	movzbl	(%rbx), %ecx
	incq	%rbx
	.loc 1 103 0
	testb	%cl, %cl
	jne	.L24
.L14:
	.loc 1 101 0
	popq	%rbx
	.p2align 4,,1
	ret
	.p2align 4,,7
.L23:
	.loc 1 106 0
	movl	term_outbuf_index(%rip), %edx
	movslq	%edx,%rax
	incl	%edx
	movb	$13, term_outbuf(%rax)
	jmp	.L16
.LFE201:
	.size	term_puts, .-term_puts
	.p2align 4,,15
.globl term_vprintf
	.type	term_vprintf, @function
term_vprintf:
.LFB202:
	.loc 1 115 0
	pushq	%rbx
.LCFI2:
	.loc 1 117 0
	movq	%rsi, %rcx
	movq	%rdi, %rdx
	movl	$4096, %esi
	.loc 1 115 0
	subq	$4096, %rsp
.LCFI3:
	.loc 1 117 0
	movq	%rsp, %rdi
	call	vsnprintf
	.loc 1 118 0
	movq	%rsp, %rdi
	call	term_puts
	addq	$4096, %rsp
	popq	%rbx
	ret
.LFE202:
	.size	term_vprintf, .-term_vprintf
	.p2align 4,,15
.globl term_printf
	.type	term_printf, @function
term_printf:
.LFB203:
	.loc 1 122 0
	subq	$216, %rsp
.LCFI4:
	.loc 1 122 0
	movq	%rdx, 48(%rsp)
	movzbl	%al, %edx 
	movq	%rsi, 40(%rsp)
	leaq	0(,%rdx,4), %rax
	movl	$.L27, %edx
	movq	%rcx, 56(%rsp)
	movq	%r8, 64(%rsp)
	movq	%r9, 72(%rsp)
	.loc 1 125 0
	movq	%rsp, %rsi
	.loc 1 122 0
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
.L27:
	.loc 1 124 0
	leaq	224(%rsp), %rax
	movl	$8, (%rsp)
	movl	$48, 4(%rsp)
	movq	%rax, 8(%rsp)
	leaq	32(%rsp), %rax
	movq	%rax, 16(%rsp)
	.loc 1 125 0
	call	term_vprintf
	.loc 1 126 0
	addq	$216, %rsp
	ret
.LFE203:
	.size	term_printf, .-term_printf
	.section	.rodata.str1.1
.LC265:
	.string	"%c"
.LC261:
	.string	"\\%c"
.LC263:
	.string	"\\r"
.LC262:
	.string	"\\t"
.LC264:
	.string	"\\n"
	.text
	.p2align 4,,15
.globl term_print_filename
	.type	term_print_filename, @function
term_print_filename:
.LFB204:
	.loc 1 130 0
	pushq	%rbp
.LCFI5:
	.loc 1 133 0
	xorl	%ebp, %ebp
	.loc 1 130 0
	pushq	%rbx
.LCFI6:
	movq	%rdi, %rbx
	subq	$8, %rsp
.LCFI7:
	.loc 1 133 0
	cmpb	$0, (%rdi)
	je	.L44
	xorl	%edx, %edx
	jmp	.L42
	.p2align 4,,7
.L48:
	.loc 1 134 0
	cmpl	$9, %eax
	je	.L36
	cmpl	$10, %eax
	.p2align 4,,5
	je	.L38
.L39:
	.loc 1 150 0
	movsbl	(%rdx,%rbx),%esi
	movl	$.LC265, %edi
.L47:
	xorl	%eax, %eax
	call	term_printf
.L31:
	.loc 1 133 0
	incl	%ebp
	movslq	%ebp,%rdx
	cmpb	$0, (%rdx,%rbx)
	je	.L44
.L42:
	.loc 1 134 0
	movsbl	(%rdx,%rbx),%eax
	cmpl	$13, %eax
	je	.L37
	.p2align 4,,2
	jle	.L48
	cmpl	$34, %eax
	.p2align 4,,5
	je	.L35
	.p2align 4,,9
	jg	.L41
	cmpl	$32, %eax
.L45:
	.p2align 4,,7
	jne	.L39
.L35:
	.loc 1 138 0
	movsbl	(%rdx,%rbx),%esi
	movl	$.LC261, %edi
	.p2align 4,,2
	jmp	.L47
	.p2align 4,,7
.L41:
	.loc 1 134 0
	cmpl	$92, %eax
	jmp	.L45
	.p2align 4,,7
.L44:
	.loc 1 133 0
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.p2align 4,,7
.L37:
	.loc 1 144 0
	movl	$.LC263, %edi
.L46:
	.loc 1 147 0
	xorl	%eax, %eax
	call	term_printf
	jmp	.L31
.L36:
	.loc 1 141 0
	movl	$.LC262, %edi
	jmp	.L46
.L38:
	.loc 1 147 0
	movl	$.LC264, %edi
	jmp	.L46
.LFE204:
	.size	term_print_filename, .-term_print_filename
	.p2align 4,,15
	.type	monitor_fprintf, @function
monitor_fprintf:
.LFB205:
	.loc 1 157 0
	subq	$216, %rsp
.LCFI8:
	.loc 1 157 0
	movq	%rsi, %rdi
	movq	%rdx, 48(%rsp)
	movzbl	%al, %edx 
	movq	%rcx, 56(%rsp)
	leaq	0(,%rdx,4), %rax
	movl	$.L50, %edx
	movq	%r8, 64(%rsp)
	movq	%r9, 72(%rsp)
	.loc 1 160 0
	movq	%rsp, %rsi
	.loc 1 157 0
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
.L50:
	.loc 1 159 0
	leaq	224(%rsp), %rax
	movl	$16, (%rsp)
	movl	$48, 4(%rsp)
	movq	%rax, 8(%rsp)
	leaq	32(%rsp), %rax
	movq	%rax, 16(%rsp)
	.loc 1 160 0
	call	term_vprintf
	.loc 1 163 0
	xorl	%eax, %eax
	addq	$216, %rsp
	ret
.LFE205:
	.size	monitor_fprintf, .-monitor_fprintf
	.p2align 4,,15
	.type	compare_cmd, @function
compare_cmd:
.LFB206:
	.loc 1 166 0
	pushq	%r12
.LCFI9:
	movq	%rdi, %r12
	pushq	%rbp
.LCFI10:
	pushq	%rbx
.LCFI11:
	.loc 1 166 0
	movq	%rsi, %rbx
	.loc 1 169 0
	call	strlen
	.loc 1 170 0
	movq	%rbx, %r8
	movslq	%eax,%rbp
	jmp	.L52
	.p2align 4,,7
.L55:
	.loc 1 178 0
	cmpb	$0, (%r8)
	je	.L53
	.loc 1 180 0
	incq	%r8
.L52:
	.loc 1 173 0
	movq	%r8, %rdi
	movl	$124, %esi
	.loc 1 172 0
	movq	%r8, %rbx
	.loc 1 173 0
	call	strchr
	.loc 1 174 0
	testq	%rax, %rax
	.loc 1 173 0
	movq	%rax, %r8
	.loc 1 174 0
	je	.L57
.L54:
	.loc 1 176 0
	movq	%r8, %rcx
	subq	%rbx, %rcx
	cmpq	%rbp, %rcx
	jne	.L55
	cld
	cmpq	%rcx, %rcx
	movq	%rbx, %rsi
	movq	%r12, %rdi
	repz
	cmpsb
	jne	.L55
	.loc 1 183 0
	popq	%rbx
	popq	%rbp
	popq	%r12
	.loc 1 177 0
	movl	$1, %eax
	.loc 1 183 0
	ret
	.p2align 4,,7
.L57:
	.loc 1 175 0
	movq	%rbx, %rdi
	call	strlen
	leaq	(%rax,%rbx), %r8
	jmp	.L54
.L53:
	.loc 1 183 0
	popq	%rbx
	popq	%rbp
	popq	%r12
	.loc 1 182 0
	xorl	%eax, %eax
	.loc 1 183 0
	ret
.LFE206:
	.size	compare_cmd, .-compare_cmd
	.section	.rodata.str1.1
.LC266:
	.string	"%s%s %s -- %s\n"
	.text
	.p2align 4,,15
	.type	help_cmd1, @function
help_cmd1:
.LFB207:
	.loc 1 186 0
	pushq	%r12
.LCFI12:
	movq	%rsi, %r12
	pushq	%rbp
.LCFI13:
	movq	%rdx, %rbp
	pushq	%rbx
.LCFI14:
	.loc 1 189 0
	movq	%rdi, %rbx
	cmpq	$0, (%rbx)
	je	.L66
	.p2align 4,,7
.L68:
	.loc 1 190 0
	testq	%rbp, %rbp
	je	.L63
.LBB2:
	movq	(%rbx), %rsi
	movq	%rbp, %rdi
	call	strcmp
.LBE2:
	testl	%eax, %eax
	jne	.L61
.L63:
	.loc 1 191 0
	movq	24(%rbx), %rcx
	movq	32(%rbx), %r8
	movq	%r12, %rsi
	movq	(%rbx), %rdx
	movl	$.LC266, %edi
	xorl	%eax, %eax
	call	term_printf
.L61:
	.loc 1 189 0
	addq	$40, %rbx
	cmpq	$0, (%rbx)
	jne	.L68
.L66:
	popq	%rbx
	popq	%rbp
	popq	%r12
	ret
.LFE207:
	.size	help_cmd1, .-help_cmd1
	.section	.rodata.str1.1
.LC267:
	.string	"info "
.LC268:
	.string	"Log items (comma separated):\n"
.LC269:
	.string	"remove all logs"
.LC270:
	.string	"none"
.LC271:
	.string	"%-10s %s\n"
	.text
	.p2align 4,,15
	.type	help_cmd, @function
help_cmd:
.LFB208:
	.loc 1 196 0
	.loc 1 197 0
	testq	%rdi, %rdi
	.loc 1 196 0
	pushq	%rbx
.LCFI15:
	.loc 1 196 0
	movq	%rdi, %rbx
	.loc 1 197 0
	je	.L70
.LBB3:
	cld
	movl	$.LC8, %edi
	movl	$5, %ecx
	movq	%rbx, %rsi
.LBE3:
	repz
	cmpsb
	je	.L90
.L70:
	.loc 1 200 0
	movq	%rbx, %rdx
	movl	$.LC12, %esi
	movl	$term_cmds, %edi
	call	help_cmd1
	.loc 1 201 0
	testq	%rbx, %rbx
	je	.L69
.LBB4:
.LBB5:
	movzbl	(%rbx), %eax
	subl	$108, %eax
	jne	.L80
	movzbl	1(%rbx), %eax
	subl	$111, %eax
	jne	.L80
	movzbl	2(%rbx), %eax
	subl	$103, %eax
	jne	.L80
	movzbl	3(%rbx), %eax
	.p2align 4,,7
.L80:
.LBE5:
.LBE4:
	testl	%eax, %eax
	je	.L91
.L69:
	.loc 1 210 0
	popq	%rbx
	.p2align 4,,2
	ret
	.p2align 4,,7
.L90:
	popq	%rbx
	.loc 1 198 0
	xorl	%edx, %edx
	movl	$.LC267, %esi
	movl	$info_cmds, %edi
	jmp	help_cmd1
	.p2align 4,,7
.L91:
.LBB6:
	.loc 1 203 0
	movl	$.LC268, %edi
	.loc 1 205 0
	movl	$cpu_log_items, %ebx
	.loc 1 203 0
	call	term_printf
	.loc 1 204 0
	xorl	%eax, %eax
	movl	$.LC269, %edx
	movl	$.LC270, %esi
	movl	$.LC271, %edi
	call	term_printf
	.loc 1 205 0
	cmpl	$0, cpu_log_items(%rip)
	je	.L69
	.p2align 4,,7
.L92:
	.loc 1 206 0
	movq	16(%rbx), %rdx
	movq	8(%rbx), %rsi
	xorl	%eax, %eax
	.loc 1 205 0
	addq	$24, %rbx
	.loc 1 206 0
	movl	$.LC271, %edi
	call	term_printf
	.loc 1 205 0
	movl	(%rbx), %ecx
	testl	%ecx, %ecx
	jne	.L92
.LBE6:
	.loc 1 210 0
	popq	%rbx
	ret
.LFE208:
	.size	help_cmd, .-help_cmd
	.p2align 4,,15
	.type	do_help, @function
do_help:
.LFB209:
	.loc 1 213 0
	.loc 1 214 0
	jmp	help_cmd
.LFE209:
	.size	do_help, .-do_help
	.p2align 4,,15
	.type	do_commit, @function
do_commit:
.LFB210:
	.loc 1 218 0
	pushq	%r13
.LCFI16:
	movq	%rdi, %r13
	pushq	%r12
.LCFI17:
	pushq	%rbp
.LCFI18:
	pushq	%rbx
.LCFI19:
	subq	$8, %rsp
.LCFI20:
.LBB7:
.LBB8:
	.loc 1 221 0
	movzbl	(%rdi), %eax
	subl	$97, %eax
	jne	.L97
	movzbl	1(%rdi), %eax
	subl	$108, %eax
	je	.L111
	.p2align 4,,7
.L97:
.LBE8:
.LBE7:
	xorl	%r12d, %r12d
	testl	%eax, %eax
	sete	%r12b
	.loc 1 222 0
	xorl	%ebp, %ebp
	cmpl	nb_drives(%rip), %ebp
	jge	.L107
	.p2align 4,,7
.L113:
	.loc 1 223 0
	testl	%r12d, %r12d
	movslq	%ebp,%rbx
	je	.L112
.L104:
	.loc 1 225 0
	leaq	(%rbx,%rbx,2), %rax
	.loc 1 222 0
	incl	%ebp
	.loc 1 225 0
	movq	drives_table(,%rax,8), %rdi
	call	bdrv_commit
.L114:
	.loc 1 222 0
	cmpl	nb_drives(%rip), %ebp
	jl	.L113
.L107:
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
.L111:
.LBB9:
.LBB10:
	.loc 1 221 0
	movzbl	2(%rdi), %eax
	subl	$108, %eax
	jne	.L97
	movzbl	3(%rdi), %eax
	jmp	.L97
	.p2align 4,,7
.L112:
.LBE10:
.LBE9:
.LBB11:
	.loc 1 224 0
	leaq	(%rbx,%rbx,2), %rax
	movq	drives_table(,%rax,8), %rdi
	call	bdrv_get_device_name
	movq	%r13, %rsi
	movq	%rax, %rdi
	call	strcmp
.LBE11:
	testl	%eax, %eax
	je	.L104
	.loc 1 222 0
	incl	%ebp
	jmp	.L114
.LFE210:
	.size	do_commit, .-do_commit
	.p2align 4,,15
	.type	do_info, @function
do_info:
.LFB211:
	.loc 1 230 0
	pushq	%rbp
.LCFI21:
	movq	%rdi, %rbp
	pushq	%rbx
.LCFI22:
	subq	$8, %rsp
.LCFI23:
	.loc 1 233 0
	testq	%rdi, %rdi
	je	.L117
	.loc 1 235 0
	cmpq	$0, info_cmds(%rip)
	movl	$info_cmds, %ebx
	jne	.L123
.L117:
	.loc 1 244 0
	addq	$8, %rsp
	.loc 1 240 0
	movl	$.LC8, %edi
	.loc 1 244 0
	popq	%rbx
	popq	%rbp
	.loc 1 240 0
	jmp	help_cmd
	.p2align 4,,7
.L125:
	.loc 1 235 0
	addq	$40, %rbx
	cmpq	$0, (%rbx)
	je	.L117
.L123:
	.loc 1 236 0
	movq	(%rbx), %rsi
	movq	%rbp, %rdi
	call	compare_cmd
	testl	%eax, %eax
	je	.L125
.L122:
	.loc 1 243 0
	movq	16(%rbx), %r11
	.loc 1 244 0
	addq	$8, %rsp
	.loc 1 243 0
	xorl	%eax, %eax
	.loc 1 244 0
	popq	%rbx
	popq	%rbp
	.loc 1 243 0
	jmp	*%r11
.LFE211:
	.size	do_info, .-do_info
	.section	.rodata.str1.1
.LC273:
	.string	"0.4.2-1"
.LC274:
	.string	"%s\n"
	.text
	.p2align 4,,15
	.type	do_info_version, @function
do_info_version:
.LFB212:
	.loc 1 247 0
	.loc 1 248 0
	movl	$.LC273, %esi
	movl	$.LC274, %edi
	xorl	%eax, %eax
	jmp	term_printf
.LFE212:
	.size	do_info_version, .-do_info_version
	.p2align 4,,15
	.type	do_info_name, @function
do_info_name:
.LFB213:
	.loc 1 252 0
	.loc 1 253 0
	movq	qemu_name(%rip), %rsi
	testq	%rsi, %rsi
	jne	.L129
	rep ; ret
	.p2align 4,,7
.L129:
	.loc 1 254 0
	movl	$.LC274, %edi
	xorl	%eax, %eax
	jmp	term_printf
.LFE213:
	.size	do_info_name, .-do_info_name
	.p2align 4,,15
	.type	do_info_block, @function
do_info_block:
.LFB214:
	.loc 1 258 0
	.loc 1 259 0
	jmp	bdrv_info
.LFE214:
	.size	do_info_block, .-do_info_block
	.p2align 4,,15
	.type	do_info_blockstats, @function
do_info_blockstats:
.LFB215:
	.loc 1 263 0
	.loc 1 264 0
	jmp	bdrv_info_stats
.LFE215:
	.size	do_info_blockstats, .-do_info_blockstats
	.p2align 4,,15
	.type	mon_set_cpu, @function
mon_set_cpu:
.LFB216:
	.loc 1 269 0
	.loc 1 272 0
	movq	first_cpu(%rip), %rax
	jmp	.L140
	.p2align 4,,7
.L142:
	.loc 1 273 0
	cmpl	%edi, 46992(%rax)
	je	.L141
	.loc 1 272 0
	movq	46984(%rax), %rax
.L140:
	testq	%rax, %rax
	jne	.L142
	.loc 1 278 0
	movl	$-1, %eax
	.loc 1 279 0
	ret
.L141:
	.loc 1 274 0
	movq	%rax, mon_cpu(%rip)
	.loc 1 275 0
	xorl	%eax, %eax
	ret
.LFE216:
	.size	mon_set_cpu, .-mon_set_cpu
	.p2align 4,,15
	.type	mon_get_cpu, @function
mon_get_cpu:
.LFB217:
	.loc 1 282 0
	.loc 1 283 0
	movq	mon_cpu(%rip), %rax
	testq	%rax, %rax
	je	.L145
	.loc 1 287 0
	rep ; ret
	.p2align 4,,7
.L145:
	.loc 1 284 0
	xorl	%edi, %edi
	call	mon_set_cpu
	movq	mon_cpu(%rip), %rax
	.loc 1 287 0
	ret
.LFE217:
	.size	mon_get_cpu, .-mon_get_cpu
	.p2align 4,,15
	.type	do_info_registers, @function
do_info_registers:
.LFB218:
	.loc 1 290 0
	subq	$8, %rsp
.LCFI24:
	.loc 1 292 0
	call	mon_get_cpu
	.loc 1 293 0
	testq	%rax, %rax
	je	.L146
	.loc 1 296 0
	movl	$1, %ecx
	movl	$monitor_fprintf, %edx
	xorl	%esi, %esi
	movq	%rax, %rdi
	.loc 1 302 0
	addq	$8, %rsp
	.loc 1 296 0
	jmp	cpu_dump_state
	.p2align 4,,7
.L146:
	.loc 1 302 0
	addq	$8, %rsp
	ret
.LFE218:
	.size	do_info_registers, .-do_info_registers
	.section	.rodata.str1.1
.LC278:
	.string	"\n"
.LC275:
	.string	"%c CPU #%d:"
.LC276:
	.string	" pc=0x%08x"
.LC277:
	.string	" (halted)"
	.text
	.p2align 4,,15
	.type	do_info_cpus, @function
do_info_cpus:
.LFB219:
	.loc 1 305 0
	pushq	%rbx
.LCFI25:
	.loc 1 309 0
	call	mon_get_cpu
	.loc 1 311 0
	movq	first_cpu(%rip), %rbx
	jmp	.L160
	.p2align 4,,7
.L156:
	.loc 1 332 0
	movl	$.LC278, %edi
	xorl	%eax, %eax
	call	term_printf
	.loc 1 311 0
	movq	46984(%rbx), %rbx
.L160:
	testq	%rbx, %rbx
	je	.L159
	.loc 1 312 0
	cmpq	mon_cpu(%rip), %rbx
	movl	46992(%rbx), %edx
	movl	$32, %eax
	movl	$42, %esi
	movl	$.LC275, %edi
	cmovne	%eax, %esi
	xorl	%eax, %eax
	call	term_printf
	.loc 1 316 0
	movl	376(%rbx), %esi
	addl	32(%rbx), %esi
	xorl	%eax, %eax
	movl	$.LC276, %edi
	call	term_printf
	.loc 1 317 0
	testb	$4, 354(%rbx)
	je	.L156
	.loc 1 318 0
	movl	$.LC277, %edi
	xorl	%eax, %eax
	call	term_printf
	jmp	.L156
	.p2align 4,,7
.L159:
	.loc 1 311 0
	popq	%rbx
	ret
.LFE219:
	.size	do_info_cpus, .-do_info_cpus
	.section	.rodata.str1.1
.LC279:
	.string	"Invalid CPU index\n"
	.text
	.p2align 4,,15
	.type	do_cpu_set, @function
do_cpu_set:
.LFB220:
	.loc 1 337 0
	subq	$8, %rsp
.LCFI26:
	.loc 1 338 0
	call	mon_set_cpu
	testl	%eax, %eax
	js	.L163
	.loc 1 340 0
	addq	$8, %rsp
	ret
	.p2align 4,,7
.L163:
	.loc 1 339 0
	movl	$.LC279, %edi
	xorl	%eax, %eax
	.loc 1 340 0
	addq	$8, %rsp
	.loc 1 339 0
	jmp	term_printf
.LFE220:
	.size	do_cpu_set, .-do_cpu_set
	.p2align 4,,15
	.type	do_info_jit, @function
do_info_jit:
.LFB221:
	.loc 1 343 0
	.loc 1 344 0
	movl	$monitor_fprintf, %esi
	xorl	%edi, %edi
	jmp	dump_exec_info
.LFE221:
	.size	do_info_jit, .-do_info_jit
	.section	.rodata.str1.1
.LC280:
	.string	"%d: '%s'\n"
	.text
	.p2align 4,,15
	.type	do_info_history, @function
do_info_history:
.LFB222:
	.loc 1 348 0
	pushq	%rbx
.LCFI27:
	.loc 1 352 0
	xorl	%ebx, %ebx
	jmp	.L166
	.p2align 4,,7
.L169:
	.loc 1 357 0
	movq	%rax, %rdx
	movl	%ebx, %esi
	movl	$.LC280, %edi
	xorl	%eax, %eax
	.loc 1 358 0
	incl	%ebx
	.loc 1 357 0
	call	term_printf
.L166:
	.loc 1 354 0
	movl	%ebx, %edi
	call	readline_get_history
	.loc 1 355 0
	testq	%rax, %rax
	jne	.L169
	.loc 1 353 0
	popq	%rbx
	.p2align 4,,3
	ret
.LFE222:
	.size	do_info_history, .-do_info_history
	.p2align 4,,15
	.type	do_quit, @function
do_quit:
.LFB223:
	.loc 1 374 0
	subq	$8, %rsp
.LCFI28:
	.loc 1 375 0
	xorl	%edi, %edi
	call	exit
.LFE223:
	.size	do_quit, .-do_quit
	.section	.rodata.str1.1
.LC281:
	.string	"device is not removable\n"
.LC282:
	.string	"device is locked\n"
	.text
	.p2align 4,,15
	.type	eject_device, @function
eject_device:
.LFB224:
	.loc 1 379 0
	movq	%rbx, -16(%rsp)
.LCFI29:
	movq	%rbp, -8(%rsp)
.LCFI30:
	subq	$24, %rsp
.LCFI31:
	.loc 1 379 0
	movq	%rdi, %rbx
	movl	%esi, %ebp
	.loc 1 380 0
	call	bdrv_is_inserted
	testl	%eax, %eax
	je	.L172
	.loc 1 381 0
	testl	%ebp, %ebp
	jne	.L173
	.loc 1 382 0
	movq	%rbx, %rdi
	.p2align 4,,5
	call	bdrv_is_removable
	testl	%eax, %eax
	.loc 1 383 0
	movl	$.LC281, %edi
	.loc 1 382 0
	je	.L176
	.loc 1 386 0
	movq	%rbx, %rdi
	call	bdrv_is_locked
	testl	%eax, %eax
	jne	.L177
.L173:
	.loc 1 391 0
	movq	%rbx, %rdi
	call	bdrv_close
.L172:
	.loc 1 393 0
	xorl	%eax, %eax
.L171:
	.loc 1 394 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	addq	$24, %rsp
	ret
.L177:
	.loc 1 387 0
	movl	$.LC282, %edi
	xorl	%eax, %eax
.L176:
	call	term_printf
	.loc 1 388 0
	movl	$-1, %eax
	jmp	.L171
.LFE224:
	.size	eject_device, .-eject_device
	.section	.rodata.str1.1
.LC283:
	.string	"device not found\n"
	.text
	.p2align 4,,15
	.type	do_eject, @function
do_eject:
.LFB225:
	.loc 1 397 0
	pushq	%rbx
.LCFI32:
	.loc 1 397 0
	movl	%edi, %ebx
	movq	%rsi, %rdi
	.loc 1 400 0
	call	bdrv_find
	.loc 1 401 0
	testq	%rax, %rax
	je	.L180
	.loc 1 405 0
	movl	%ebx, %esi
	movq	%rax, %rdi
	.loc 1 406 0
	popq	%rbx
	.loc 1 405 0
	jmp	eject_device
	.p2align 4,,7
.L180:
	.loc 1 406 0
	popq	%rbx
	.loc 1 402 0
	movl	$.LC283, %edi
	jmp	term_printf
.LFE225:
	.size	do_eject, .-do_eject
	.p2align 4,,15
	.type	do_screen_dump, @function
do_screen_dump:
.LFB229:
	.loc 1 448 0
	.loc 1 449 0
	jmp	vga_hw_screen_dump
.LFE229:
	.size	do_screen_dump, .-do_screen_dump
	.p2align 4,,15
	.type	do_logfile, @function
do_logfile:
.LFB230:
	.loc 1 453 0
	.loc 1 454 0
	jmp	cpu_set_log_filename
.LFE230:
	.size	do_logfile, .-do_logfile
	.p2align 4,,15
	.type	do_log, @function
do_log:
.LFB231:
	.loc 1 458 0
	movq	%rdi, %r8
	subq	$8, %rsp
.LCFI33:
.LBB12:
	.loc 1 461 0
	movl	$.LC270, %edi
	cld
	movl	$5, %ecx
	movq	%r8, %rsi
	repz
	cmpsb
	seta	%dl
	setb	%al
.LBE12:
	.loc 1 462 0
	xorl	%edi, %edi
	.loc 1 461 0
	cmpb	%al, %dl
	jne	.L192
.L190:
	.loc 1 471 0
	addq	$8, %rsp
	.loc 1 470 0
	jmp	cpu_set_log
	.p2align 4,,7
.L192:
	.loc 1 464 0
	movq	%r8, %rdi
	call	cpu_str_to_log_mask
	.loc 1 465 0
	testl	%eax, %eax
	.loc 1 464 0
	movl	%eax, %edi
	.loc 1 465 0
	jne	.L190
	.loc 1 466 0
	movl	$.LC28, %edi
	.loc 1 471 0
	addq	$8, %rsp
	.loc 1 466 0
	jmp	help_cmd
.LFE231:
	.size	do_log, .-do_log
	.p2align 4,,15
	.type	do_stop, @function
do_stop:
.LFB232:
	.loc 1 474 0
	.loc 1 475 0
	movl	$65536, %edi
	jmp	vm_stop
.LFE232:
	.size	do_stop, .-do_stop
	.p2align 4,,15
	.type	do_cont, @function
do_cont:
.LFB233:
	.loc 1 479 0
	.loc 1 480 0
	jmp	vm_start
.LFE233:
	.size	do_cont, .-do_cont
	.section	.rodata.str1.1
.LC284:
	.string	"1234"
	.section	.rodata.str1.8
	.align 8
.LC285:
	.string	"Could not open gdbserver socket on port '%s'\n"
	.align 8
.LC286:
	.string	"Waiting gdb connection on port '%s'\n"
	.text
	.p2align 4,,15
	.type	do_gdbserver, @function
do_gdbserver:
.LFB234:
	.loc 1 485 0
	.loc 1 487 0
	testq	%rdi, %rdi
	.loc 1 485 0
	pushq	%rbx
.LCFI34:
	.loc 1 487 0
	movl	$.LC284, %eax
	.loc 1 485 0
	movq	%rdi, %rbx
	.loc 1 487 0
	cmove	%rax, %rbx
	.loc 1 488 0
	movq	%rbx, %rdi
	call	gdbserver_start
	testl	%eax, %eax
	.loc 1 489 0
	movq	%rbx, %rsi
	movl	$.LC285, %edi
	.loc 1 488 0
	js	.L199
	.loc 1 491 0
	movq	%rbx, %rsi
	movl	$.LC286, %edi
.L199:
	.loc 1 493 0
	popq	%rbx
	.loc 1 491 0
	xorl	%eax, %eax
	jmp	printf
.LFE234:
	.size	do_gdbserver, .-do_gdbserver
	.section	.rodata.str1.1
.LC287:
	.string	"'"
.LC290:
	.string	"\\x%02x"
.LC288:
	.string	"\\'"
.LC289:
	.string	"\\\\"
	.text
	.p2align 4,,15
	.type	term_printc, @function
term_printc:
.LFB235:
	.loc 1 497 0
	pushq	%rbx
.LCFI35:
	.loc 1 498 0
	xorl	%eax, %eax
	.loc 1 497 0
	movl	%edi, %ebx
	.loc 1 498 0
	movl	$.LC287, %edi
	call	term_printf
	.loc 1 499 0
	cmpl	$13, %ebx
	je	.L205
	jle	.L212
	cmpl	$39, %ebx
	.p2align 4,,7
	je	.L202
	cmpl	$92, %ebx
	.p2align 4,,7
	je	.L203
.L206:
	.loc 1 513 0
	leal	-32(%rbx), %eax
	.loc 1 514 0
	movl	%ebx, %esi
	movl	$.LC265, %edi
	.loc 1 513 0
	cmpl	$94, %eax
	jbe	.L210
	.loc 1 516 0
	movl	%ebx, %esi
	movl	$.LC290, %edi
.L210:
	xorl	%eax, %eax
	call	term_printf
	.loc 1 520 0
	popq	%rbx
	movl	$.LC287, %edi
	xorl	%eax, %eax
	jmp	term_printf
	.p2align 4,,7
.L212:
	.loc 1 499 0
	cmpl	$10, %ebx
	jne	.L206
	.loc 1 507 0
	movl	$.LC264, %edi
	.p2align 4,,7
.L211:
	.loc 1 510 0
	xorl	%eax, %eax
	call	term_printf
	.loc 1 520 0
	popq	%rbx
	movl	$.LC287, %edi
	xorl	%eax, %eax
	jmp	term_printf
	.p2align 4,,7
.L205:
	.loc 1 510 0
	movl	$.LC263, %edi
	jmp	.L211
.L202:
	.loc 1 501 0
	movl	$.LC288, %edi
	jmp	.L211
.L203:
	.loc 1 504 0
	movl	$.LC289, %edi
	jmp	.L211
.LFE235:
	.size	term_printc, .-term_printc
	.section	.rodata.str1.1
.LC291:
	.string	"%016lx:"
.LC293:
	.string	" "
.LC295:
	.string	"0x%0*lx"
.LC292:
	.string	"%08x:"
.LC296:
	.string	"%*lu"
.LC294:
	.string	"%#*lo"
.LC297:
	.string	"%*ld"
	.text
	.p2align 4,,15
	.type	memory_dump, @function
memory_dump:
.LFB236:
	.loc 1 525 0
	pushq	%r15
.LCFI36:
	pushq	%r14
.LCFI37:
	movl	%esi, %r14d
	pushq	%r13
.LCFI38:
	pushq	%r12
.LCFI39:
	movl	%edx, %r12d
	pushq	%rbp
.LCFI40:
	pushq	%rbx
.LCFI41:
	movl	%edi, %ebx
	subq	$56, %rsp
.LCFI42:
	.loc 1 531 0
	cmpl	$105, %esi
	.loc 1 525 0
	movq	%rcx, 24(%rsp)
	movl	%r8d, 20(%rsp)
	.loc 1 531 0
	je	.L269
	.loc 1 561 0
	imull	%edx, %ebx
	.loc 1 563 0
	xorl	%eax, %eax
	cmpl	$1, %edx
	setne	%al
	.loc 1 569 0
	cmpl	$100, %esi
	.loc 1 567 0
	movl	$0, 12(%rsp)
	.loc 1 563 0
	leal	8(,%rax,8), %eax
	.loc 1 561 0
	movl	%ebx, 8(%rsp)
	.loc 1 563 0
	movl	%eax, 16(%rsp)
	.loc 1 569 0
	je	.L229
	jle	.L270
	cmpl	$111, %esi
	je	.L225
	cmpl	$117, %esi
	.p2align 4,,7
	je	.L229
.L227:
	.loc 1 575 0
	leal	(%r12,%r12), %eax
.L265:
	.loc 1 579 0
	movl	%eax, 12(%rsp)
.L224:
	.loc 1 641 0
	movl	8(%rsp), %r8d
	testl	%r8d, %r8d
	jle	.L213
	.p2align 4,,7
.L272:
	.loc 1 587 0
	movl	20(%rsp), %edi
	testl	%edi, %edi
	je	.L234
	.loc 1 588 0
	movq	24(%rsp), %rsi
	movl	$.LC291, %edi
	xorl	%eax, %eax
	call	term_printf
.L235:
	.loc 1 593 0
	movl	16(%rsp), %eax
	.loc 1 594 0
	movl	20(%rsp), %esi
	.loc 1 593 0
	cmpl	%eax, 8(%rsp)
	movl	%eax, %r13d
	cmovle	8(%rsp), %r13d
	.loc 1 594 0
	testl	%esi, %esi
	je	.L237
	.loc 1 595 0
	leaq	32(%rsp), %r15
	movq	24(%rsp), %rdi
	xorl	%ecx, %ecx
	movl	%r13d, %edx
	movq	%r15, %rsi
	call	cpu_physical_memory_rw
.L238:
	.loc 1 602 0
	xorl	%ebp, %ebp
	.loc 1 637 0
	cmpl	%r13d, %ebp
	jge	.L264
	.p2align 4,,7
.L271:
	.loc 1 604 0
	cmpl	$4, %r12d
	je	.L248
	.p2align 4,,5
	jg	.L252
	cmpl	$2, %r12d
	.p2align 4,,7
	je	.L246
.L244:
.LBB13:
	.file 2 "../cpu-all.h"
	.loc 2 204 0
	movslq	%ebp,%rax
.LBE13:
	movzbq	(%r15,%rax), %rbx
.L242:
	.loc 1 619 0
	xorl	%eax, %eax
	movl	$.LC293, %edi
	call	term_printf
	.loc 1 620 0
	leal	-99(%r14), %eax
	cmpl	$21, %eax
	ja	.L253
	mov	%eax, %eax
	jmp	*.L259(,%rax,8)
	.section	.rodata
	.align 8
	.align 4
.L259:
	.quad	.L258
	.quad	.L257
	.quad	.L253
	.quad	.L253
	.quad	.L253
	.quad	.L253
	.quad	.L253
	.quad	.L253
	.quad	.L253
	.quad	.L253
	.quad	.L253
	.quad	.L253
	.quad	.L254
	.quad	.L253
	.quad	.L253
	.quad	.L253
	.quad	.L253
	.quad	.L253
	.quad	.L256
	.quad	.L253
	.quad	.L253
	.quad	.L255
	.text
.L270:
	.loc 1 569 0
	cmpl	$99, %esi
	.p2align 4,,3
	jne	.L227
	.loc 1 582 0
	movl	$1, %r12d
	.p2align 4,,5
	jmp	.L224
.L229:
	.loc 1 579 0
	movl	%r12d, %edx
	movl	$80, %r9d
	imull	%r9d, %edx
	addl	$32, %edx
	movslq	%edx,%rax
	sarl	$31, %edx
	imulq	$1041204193, %rax, %rax
	shrq	$32, %rax
	sarl	$3, %eax
	subl	%edx, %eax
	jmp	.L265
.L255:
	.loc 1 625 0
	movl	12(%rsp), %esi
	movq	%rbx, %rdx
	movl	$.LC295, %edi
	.p2align 4,,7
.L267:
	.loc 1 631 0
	xorl	%eax, %eax
	call	term_printf
.L253:
	.loc 1 637 0
	addl	%r12d, %ebp
.L273:
	cmpl	%r13d, %ebp
	jl	.L271
.L264:
	.loc 1 639 0
	xorl	%eax, %eax
	movl	$.LC278, %edi
	call	term_printf
	.loc 1 641 0
	subl	%r13d, 8(%rsp)
	.loc 1 640 0
	movslq	%r13d,%rax
	addq	%rax, 24(%rsp)
	.loc 1 641 0
	movl	8(%rsp), %r8d
	testl	%r8d, %r8d
	jg	.L272
.L213:
	.loc 1 643 0
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.p2align 4,,7
.L252:
	.loc 1 604 0
	cmpl	$8, %r12d
	jne	.L244
.LBB14:
	.loc 2 356 0
	movslq	%ebp,%rax
.LBB15:
	.loc 2 357 0
	movq	(%r15,%rax), %rbx
	jmp	.L242
	.p2align 4,,7
.L248:
.LBE15:
.LBE14:
.LBB16:
	.loc 2 351 0
	movslq	%ebp,%rax
.LBE16:
	mov	(%r15,%rax), %ebx
	jmp	.L242
	.p2align 4,,7
.L246:
.LBB17:
	.loc 2 341 0
	movslq	%ebp,%rax
.LBE17:
	movzwq	(%r15,%rax), %rbx
	jmp	.L242
.L237:
	.loc 1 597 0
	call	mon_get_cpu
	.loc 1 598 0
	testq	%rax, %rax
	.loc 1 597 0
	movq	%rax, %rdi
	.loc 1 598 0
	je	.L213
	.loc 1 600 0
	leaq	32(%rsp), %r15
	movl	24(%rsp), %esi
	xorl	%r8d, %r8d
	movl	%r13d, %ecx
	movq	%r15, %rdx
	call	cpu_memory_rw_debug
	jmp	.L238
.L234:
	.loc 1 590 0
	movl	24(%rsp), %esi
	movl	$.LC292, %edi
	xorl	%eax, %eax
	call	term_printf
	jmp	.L235
.L256:
	.loc 1 628 0
	movl	12(%rsp), %esi
	movq	%rbx, %rdx
	movl	$.LC296, %edi
	jmp	.L267
.L254:
	.loc 1 622 0
	movl	12(%rsp), %esi
	movq	%rbx, %rdx
	movl	$.LC294, %edi
	jmp	.L267
.L257:
	.loc 1 631 0
	movl	12(%rsp), %esi
	movq	%rbx, %rdx
	movl	$.LC297, %edi
	jmp	.L267
.L258:
	.loc 1 634 0
	movl	%ebx, %edi
	.loc 1 637 0
	addl	%r12d, %ebp
	.loc 1 634 0
	call	term_printc
	jmp	.L273
.L269:
.LBB18:
	.loc 1 534 0
	call	mon_get_cpu
	.loc 1 533 0
	xorl	%ebp, %ebp
	.loc 1 535 0
	testq	%rax, %rax
	.loc 1 534 0
	movq	%rax, %rdi
	.loc 1 535 0
	sete	%dl
	xorl	%eax, %eax
	cmpl	$0, 20(%rsp)
	sete	%al
	testl	%edx, %eax
	jne	.L213
	.loc 1 538 0
	cmpl	$2, %r12d
	je	.L274
	.loc 1 540 0
	cmpl	$4, %r12d
	je	.L217
	.loc 1 545 0
	testq	%rdi, %rdi
	.p2align 4,,5
	je	.L217
	.loc 1 553 0
	testb	$64, 386(%rdi)
	movl	$1, %eax
	cmove	%eax, %ebp
.L217:
	.loc 1 557 0
	movl	20(%rsp), %ecx
	movl	24(%rsp), %esi
	movl	%ebp, %r8d
	movl	%ebx, %edx
	call	monitor_disas
	jmp	.L213
.L225:
.LBE18:
	.loc 1 571 0
	leal	2(,%r12,8), %edx
	movslq	%edx,%rax
	.loc 1 579 0
	sarl	$31, %edx
	.loc 1 571 0
	imulq	$1431655766, %rax, %rax
	shrq	$32, %rax
	.loc 1 579 0
	subl	%edx, %eax
	jmp	.L265
.L274:
.LBB19:
	.loc 1 539 0
	movb	$1, %bpl
	jmp	.L217
.LBE19:
.LFE236:
	.size	memory_dump, .-memory_dump
	.p2align 4,,15
	.type	do_memory_dump, @function
do_memory_dump:
.LFB237:
	.loc 1 653 0
	.loc 1 655 0
	movslq	%r8d,%rcx
	xorl	%r8d, %r8d
	jmp	memory_dump
.LFE237:
	.size	do_memory_dump, .-do_memory_dump
	.p2align 4,,15
	.type	do_physical_memory_dump, @function
do_physical_memory_dump:
.LFB238:
	.loc 1 667 0
	.loc 1 668 0
	mov	%r8d, %r8d
	salq	$32, %rcx
	orq	%r8, %rcx
	.loc 1 669 0
	movl	$1, %r8d
	jmp	memory_dump
.LFE238:
	.size	do_physical_memory_dump, .-do_physical_memory_dump
	.section	.rodata.str1.1
.LC300:
	.string	"%lu"
.LC299:
	.string	"%#lx"
.LC301:
	.string	"%ld"
.LC298:
	.string	"%#lo"
	.text
	.p2align 4,,15
	.type	do_print, @function
do_print:
.LFB239:
	.loc 1 673 0
	movl	%esi, %eax
	.loc 1 674 0
	movq	%rcx, %rsi
	mov	%r8d, %r8d
	salq	$32, %rsi
	.loc 1 673 0
	subq	$8, %rsp
.LCFI43:
	.loc 1 674 0
	orq	%r8, %rsi
	.loc 1 695 0
	cmpl	$111, %eax
	je	.L279
	jle	.L287
	cmpl	$117, %eax
	.loc 1 703 0
	movl	$.LC300, %edi
	.loc 1 695 0
	je	.L286
	cmpl	$120, %eax
	.loc 1 700 0
	movl	$.LC299, %edi
	.loc 1 695 0
	je	.L286
.L283:
	.loc 1 707 0
	movl	$.LC301, %edi
.L286:
	xorl	%eax, %eax
	call	term_printf
.L278:
	.loc 1 714 0
	movl	$.LC278, %edi
	xorl	%eax, %eax
	addq	$8, %rsp
	jmp	term_printf
	.p2align 4,,7
.L287:
	.loc 1 695 0
	cmpl	$99, %eax
	jne	.L283
	.loc 1 710 0
	movl	%esi, %edi
	call	term_printc
	.p2align 4,,4
	jmp	.L278
	.p2align 4,,7
.L279:
	.loc 1 697 0
	movl	$.LC298, %edi
	jmp	.L286
.LFE239:
	.size	do_print, .-do_print
	.section	.rodata.str1.1
.LC302:
	.string	"wb"
.LC303:
	.string	"could not open '%s'\n"
	.text
	.p2align 4,,15
	.type	do_memory_save, @function
do_memory_save:
.LFB240:
	.loc 1 719 0
	movq	%rbx, -48(%rsp)
.LCFI44:
	movq	%rbp, -40(%rsp)
.LCFI45:
	movq	%rcx, %rbx
	movq	%r12, -32(%rsp)
.LCFI46:
	movq	%r15, -8(%rsp)
.LCFI47:
	movl	%edx, %ebp
	movq	%r13, -24(%rsp)
.LCFI48:
	movq	%r14, -16(%rsp)
.LCFI49:
	subq	$1080, %rsp
.LCFI50:
	.loc 1 721 0
	movl	%esi, %r12d
	.loc 1 726 0
	call	mon_get_cpu
	.loc 1 727 0
	testq	%rax, %rax
	.loc 1 726 0
	movq	%rax, %r15
	.loc 1 727 0
	je	.L288
	.loc 1 730 0
	movl	$.LC302, %esi
	movq	%rbx, %rdi
	call	fopen64
	.loc 1 731 0
	testq	%rax, %rax
	.loc 1 730 0
	movq	%rax, %r13
	.loc 1 731 0
	je	.L297
	.loc 1 742 0
	testl	%ebp, %ebp
	je	.L296
	movq	%rsp, %r14
	.p2align 4,,7
.L294:
	.loc 1 736 0
	movl	$1024, %ebx
	.loc 1 739 0
	movl	%r12d, %esi
	movq	%r14, %rdx
	.loc 1 738 0
	cmpl	%ebp, %ebx
	.loc 1 739 0
	movq	%r15, %rdi
	.loc 1 738 0
	cmova	%ebp, %ebx
	.loc 1 739 0
	xorl	%r8d, %r8d
	movl	%ebx, %ecx
	.loc 1 741 0
	addl	%ebx, %r12d
	.loc 1 739 0
	call	cpu_memory_rw_debug
	.loc 1 740 0
	mov	%ebx, %edx
	movq	%r13, %rcx
	movl	$1, %esi
	movq	%r14, %rdi
	call	fwrite
	.loc 1 742 0
	subl	%ebx, %ebp
	jne	.L294
.L296:
	.loc 1 744 0
	movq	%r13, %rdi
	call	fclose
.L288:
	.loc 1 745 0
	movq	1032(%rsp), %rbx
	movq	1040(%rsp), %rbp
	movq	1048(%rsp), %r12
	movq	1056(%rsp), %r13
	movq	1064(%rsp), %r14
	movq	1072(%rsp), %r15
	addq	$1080, %rsp
	ret
.L297:
	.loc 1 732 0
	movq	%rbx, %rsi
	movl	$.LC303, %edi
	xorl	%eax, %eax
	call	term_printf
	jmp	.L288
.LFE240:
	.size	do_memory_save, .-do_memory_save
	.section	.rodata.str1.1
.LC304:
	.string	"%05d\n"
	.text
	.p2align 4,,15
	.type	do_sum, @function
do_sum:
.LFB241:
	.loc 1 748 0
	pushq	%r12
.LCFI51:
	pushq	%rbp
.LCFI52:
	.loc 1 753 0
	xorl	%ebp, %ebp
	.loc 1 748 0
	pushq	%rbx
.LCFI53:
	.loc 1 754 0
	movl	%edi, %ebx
	leal	(%rbx,%rsi), %eax
	.loc 1 748 0
	subq	$16, %rsp
.LCFI54:
	.loc 1 754 0
	cmpl	%edi, %eax
	jbe	.L304
	movl	%eax, %r12d
	.p2align 4,,7
.L302:
	.loc 1 755 0
	leaq	15(%rsp), %rsi
	mov	%ebx, %edi
	xorl	%ecx, %ecx
	movl	$1, %edx
	.loc 1 754 0
	incl	%ebx
	.loc 1 755 0
	call	cpu_physical_memory_rw
	.loc 1 757 0
	movl	%ebp, %edx
	movzwl	%bp, %eax
	shrw	%dx
	sall	$15, %eax
	movl	%edx, %ebp
	orl	%eax, %ebp
	.loc 1 758 0
	movzbw	15(%rsp), %ax
	addl	%eax, %ebp
	.loc 1 754 0
	cmpl	%ebx, %r12d
	ja	.L302
.L304:
	.loc 1 760 0
	movzwl	%bp, %esi
	movl	$.LC304, %edi
	xorl	%eax, %eax
	call	term_printf
	addq	$16, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	ret
.LFE241:
	.size	do_sum, .-do_sum
	.section	.rodata.str1.1
.LC305:
	.string	"0x"
.LC306:
	.string	"unknown key: '%s'\n"
	.text
	.p2align 4,,15
	.type	do_send_key, @function
do_send_key:
.LFB243:
	.loc 1 901 0
	pushq	%r13
.LCFI55:
	.loc 1 907 0
	xorl	%r13d, %r13d
	.loc 1 901 0
	pushq	%r12
.LCFI56:
	pushq	%rbp
.LCFI57:
	.loc 1 908 0
	movq	%rdi, %rbp
	.loc 1 901 0
	pushq	%rbx
.LCFI58:
	subq	$56, %rsp
.LCFI59:
	.loc 1 926 0
	movzbl	(%rdi), %eax
	testb	%al, %al
	je	.L307
	leaq	32(%rsp), %r12
	.p2align 4,,7
.L322:
	.loc 1 910 0
	movq	%r12, %rsi
	.loc 1 915 0
	movl	%eax, %ecx
	jmp	.L342
	.p2align 4,,7
.L347:
	.loc 1 912 0
	movq	%rsi, %rax
	subq	%r12, %rax
	cmpq	$14, %rax
	ja	.L310
	.loc 1 913 0
	movb	%cl, (%rsi)
	incq	%rsi
.L310:
	.loc 1 915 0
	incq	%rbp
	movzbl	(%rbp), %ecx
.L342:
	testb	%cl, %cl
	setne	%dl
	xorl	%eax, %eax
	cmpb	$45, %cl
	setne	%al
	testl	%edx, %eax
	jne	.L347
	.loc 1 917 0
	movb	$0, (%rsi)
.LBB20:
.LBB21:
	.loc 1 888 0
	movq	key_defs+8(%rip), %rsi
	movl	$key_defs, %ebx
	jmp	.L343
	.p2align 4,,7
.L348:
.LBB22:
	.loc 1 889 0
	movq	%r12, %rdi
	call	strcmp
.LBE22:
	testl	%eax, %eax
	je	.L341
	.loc 1 888 0
	addq	$16, %rbx
	movq	8(%rbx), %rsi
.L343:
	testq	%rsi, %rsi
	jne	.L348
	.loc 1 892 0
	xorl	%edx, %edx
	movl	$.LC305, %esi
	movq	%r12, %rdi
	call	strstart
	testl	%eax, %eax
	jne	.L349
.L318:
	.loc 1 896 0
	movl	$-1, %edi
.L316:
.LBE21:
.LBE20:
	.loc 1 919 0
	testl	%edi, %edi
	js	.L350
.L320:
	.loc 1 923 0
	movslq	%r13d,%rax
	incl	%r13d
	movb	%dil, 16(%rsp,%rax)
	.loc 1 924 0
	cmpb	$0, (%rbp)
	je	.L307
	.loc 1 926 0
	incq	%rbp
	movzbl	(%rbp), %eax
	testb	%al, %al
	jne	.L322
.L307:
	.loc 1 929 0
	xorl	%ebp, %ebp
	jmp	.L344
	.p2align 4,,7
.L326:
	.loc 1 933 0
	andl	$127, %ebx
	.loc 1 929 0
	incl	%ebp
	.loc 1 933 0
	movl	%ebx, %edi
	call	kbd_put_keycode
.L344:
	.loc 1 929 0
	cmpl	%r13d, %ebp
	jge	.L339
	.loc 1 930 0
	movslq	%ebp,%rax
	movzbl	16(%rsp,%rax), %ebx
	.loc 1 931 0
	testb	%bl, %bl
	jns	.L326
	.loc 1 932 0
	movl	$224, %edi
	call	kbd_put_keycode
	jmp	.L326
.L339:
	.loc 1 936 0
	movl	%r13d, %ebp
	.p2align 4,,4
	jmp	.L345
	.p2align 4,,7
.L331:
	.loc 1 940 0
	orb	$-128, %bl
	movl	%ebx, %edi
	.p2align 4,,5
	call	kbd_put_keycode
.L345:
	.loc 1 936 0
	decl	%ebp
	js	.L305
	.loc 1 937 0
	movslq	%ebp,%rax
	movzbl	16(%rsp,%rax), %ebx
	.loc 1 938 0
	testb	%bl, %bl
	jns	.L331
	.loc 1 939 0
	movl	$224, %edi
	call	kbd_put_keycode
	jmp	.L331
.L349:
.LBB23:
.LBB24:
	.loc 1 893 0
	leaq	8(%rsp), %rsi
	xorl	%edx, %edx
	movq	%r12, %rdi
	call	strtoul
	movq	%rax, %rsi
	.loc 1 894 0
	movq	8(%rsp), %rax
	cmpb	$0, (%rax)
	sete	%dl
	xorl	%eax, %eax
	testl	%esi, %esi
	setg	%al
	testl	%edx, %eax
	je	.L318
	cmpl	$255, %esi
	movl	%esi, %edi
	jg	.L318
.LBE24:
.LBE23:
	.loc 1 919 0
	testl	%edi, %edi
	jns	.L320
.L350:
	.loc 1 920 0
	movq	%r12, %rsi
	movl	$.LC306, %edi
	xorl	%eax, %eax
	call	term_printf
.L305:
	.loc 1 942 0
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
.L341:
.LBB25:
.LBB26:
	.loc 1 889 0
	movl	(%rbx), %edi
	jmp	.L316
.LBE26:
.LBE25:
.LFE243:
	.size	do_send_key, .-do_send_key
	.p2align 4,,15
	.type	do_mouse_move, @function
do_mouse_move:
.LFB244:
	.loc 1 948 0
	movq	%rbx, -24(%rsp)
.LCFI60:
	movq	%rbp, -16(%rsp)
.LCFI61:
	movq	%rsi, %rbx
	movq	%r12, -8(%rsp)
.LCFI62:
	.loc 1 950 0
	xorl	%esi, %esi
	.loc 1 948 0
	subq	$24, %rsp
.LCFI63:
	.loc 1 948 0
	movq	%rdx, %rbp
	.loc 1 950 0
	xorl	%edx, %edx
	call	strtol
	.loc 1 951 0
	xorl	%edx, %edx
	xorl	%esi, %esi
	movq	%rbx, %rdi
	.loc 1 950 0
	movq	%rax, %r12
	.loc 1 951 0
	call	strtol
	.loc 1 952 0
	xorl	%edx, %edx
	.loc 1 953 0
	testq	%rbp, %rbp
	.loc 1 951 0
	movq	%rax, %rbx
	.loc 1 953 0
	je	.L352
	.loc 1 954 0
	xorl	%esi, %esi
	movq	%rbp, %rdi
	call	strtol
	movl	%eax, %edx
.L352:
	.loc 1 955 0
	movl	mouse_button_state(%rip), %ecx
	movl	%ebx, %esi
	movl	%r12d, %edi
	movq	(%rsp), %rbx
	movq	8(%rsp), %rbp
	movq	16(%rsp), %r12
	addq	$24, %rsp
	jmp	kbd_mouse_event
.LFE244:
	.size	do_mouse_move, .-do_mouse_move
	.p2align 4,,15
	.type	do_mouse_button, @function
do_mouse_button:
.LFB245:
	.loc 1 959 0
	.loc 1 960 0
	movl	%edi, mouse_button_state(%rip)
	.loc 1 961 0
	movl	%edi, %ecx
	xorl	%edx, %edx
	xorl	%esi, %esi
	xorl	%edi, %edi
	jmp	kbd_mouse_event
.LFE245:
	.size	do_mouse_button, .-do_mouse_button
	.section	.rodata.str1.1
.LC307:
	.string	"port%c[0x%04x] = %#0*x\n"
	.text
	.p2align 4,,15
	.type	do_ioport_read, @function
do_ioport_read:
.LFB246:
	.loc 1 965 0
	pushq	%rbp
.LCFI64:
	movl	%edx, %ebp
	pushq	%rbx
.LCFI65:
	movl	%ecx, %ebx
	subq	$8, %rsp
.LCFI66:
	.loc 1 970 0
	testl	%r8d, %r8d
	jne	.L361
	.loc 1 974 0
	andl	$65535, %ebx
	.loc 1 976 0
	cmpl	$2, %ebp
	je	.L359
.L362:
	cmpl	$4, %ebp
	je	.L360
	.loc 1 979 0
	movq	%rsp, %rdx
	movl	%ebx, %esi
	xorl	%edi, %edi
	call	argos_cpu_inb
	.loc 1 991 0
	leal	(%rbp,%rbp), %ecx
	movl	%eax, %r8d
	movl	%ebx, %edx
	.loc 1 980 0
	movl	$98, %esi
	.loc 1 991 0
	movl	$.LC307, %edi
	xorl	%eax, %eax
	call	term_printf
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.p2align 4,,7
.L361:
	.loc 1 971 0
	movzbl	%r9b,%edx
	movzwl	%cx,%esi
	xorl	%edi, %edi
	.loc 1 972 0
	incl	%ebx
	.loc 1 971 0
	call	cpu_outb
	.loc 1 974 0
	andl	$65535, %ebx
	.loc 1 976 0
	cmpl	$2, %ebp
	jne	.L362
	.p2align 4,,7
.L359:
	.loc 1 983 0
	movq	%rsp, %rdx
	movl	%ebx, %esi
	xorl	%edi, %edi
	call	argos_cpu_inw
	.loc 1 991 0
	leal	(%rbp,%rbp), %ecx
	movl	%eax, %r8d
	movl	%ebx, %edx
	.loc 1 984 0
	movl	$119, %esi
	.loc 1 991 0
	movl	$.LC307, %edi
	xorl	%eax, %eax
	call	term_printf
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.p2align 4,,7
.L360:
	.loc 1 987 0
	movq	%rsp, %rdx
	movl	%ebx, %esi
	xorl	%edi, %edi
	call	argos_cpu_inl
	.loc 1 991 0
	leal	(%rbp,%rbp), %ecx
	movl	%eax, %r8d
	movl	%ebx, %edx
	.loc 1 988 0
	movl	$108, %esi
	.loc 1 991 0
	movl	$.LC307, %edi
	xorl	%eax, %eax
	call	term_printf
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
.LFE246:
	.size	do_ioport_read, .-do_ioport_read
	.p2align 4,,15
	.type	do_system_reset, @function
do_system_reset:
.LFB247:
	.loc 1 996 0
	.loc 1 997 0
	jmp	qemu_system_reset_request
.LFE247:
	.size	do_system_reset, .-do_system_reset
	.p2align 4,,15
	.type	do_system_powerdown, @function
do_system_powerdown:
.LFB248:
	.loc 1 1001 0
	.loc 1 1002 0
	jmp	qemu_system_powerdown_request
.LFE248:
	.size	do_system_powerdown, .-do_system_powerdown
	.section	.rodata.str1.1
.LC308:
	.string	"%08x: %08x %c%c%c%c%c%c%c%c\n"
	.text
	.p2align 4,,15
	.type	print_pte, @function
print_pte:
.LFB249:
	.loc 1 1007 0
	.loc 1 1008 0
	movl	%esi, %eax
	.loc 1 1007 0
	subq	$40, %rsp
.LCFI67:
	.loc 1 1008 0
	andl	$64, %eax
	cmpl	$1, %eax
	movl	%esi, %eax
	sbbl	%r9d, %r9d
	andl	$-128, %eax
	andl	$-23, %r9d
	cmpb	$1, %al
	movl	%esi, %eax
	sbbl	%r8d, %r8d
	andl	$256, %eax
	andl	$-35, %r8d
	cmpl	$1, %eax
	movl	%esi, %eax
	sbbl	%ecx, %ecx
	andl	$2, %eax
	andl	%esi, %edx
	andl	$-26, %ecx
	addl	$71, %ecx
	cmpl	$1, %eax
	sbbl	%eax, %eax
	andl	$-42, %eax
	addl	$87, %eax
	movl	%eax, 32(%rsp)
	movl	%esi, %eax
	andl	$4, %eax
	cmpl	$1, %eax
	sbbl	%eax, %eax
	andl	$-40, %eax
	addl	$85, %eax
	movl	%eax, 24(%rsp)
	movl	%esi, %eax
	andl	$8, %eax
	cmpl	$1, %eax
	sbbl	%eax, %eax
	andl	$-39, %eax
	addl	$84, %eax
	movl	%eax, 16(%rsp)
	movl	%esi, %eax
	andl	$16, %eax
	cmpl	$1, %eax
	sbbl	%eax, %eax
	andl	$32, %esi
	andl	$-22, %eax
	addl	$67, %eax
	cmpl	$1, %esi
	movl	%edi, %esi
	movl	%eax, 8(%rsp)
	sbbl	%eax, %eax
	movl	$.LC308, %edi
	andl	$-20, %eax
	addl	$68, %r9d
	addl	$80, %r8d
	addl	$65, %eax
	movl	%eax, (%rsp)
	xorl	%eax, %eax
	call	term_printf
	addq	$40, %rsp
	ret
.LFE249:
	.size	print_pte, .-print_pte
	.section	.rodata.str1.1
.LC309:
	.string	"PG disabled\n"
	.text
	.p2align 4,,15
	.type	tlb_info, @function
tlb_info:
.LFB250:
	.loc 1 1022 0
	pushq	%r15
.LCFI68:
	pushq	%r14
.LCFI69:
	pushq	%r13
.LCFI70:
	pushq	%r12
.LCFI71:
	pushq	%rbp
.LCFI72:
	pushq	%rbx
.LCFI73:
	subq	$8, %rsp
.LCFI74:
	.loc 1 1027 0
	call	mon_get_cpu
	.loc 1 1028 0
	testq	%rax, %rax
	.loc 1 1027 0
	movq	%rax, %r14
	.loc 1 1028 0
	je	.L382
	.loc 1 1031 0
	movl	516(%rax), %r10d
	testl	%r10d, %r10d
	js	.L384
	.loc 1 1032 0
	movl	$.LC309, %edi
	xorl	%eax, %eax
	call	term_printf
.L382:
	.loc 1 1056 0
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L384:
	movl	528(%rax), %r13d
	leaq	4(%rsp), %r15
	.loc 1 1036 0
	xorl	%r12d, %r12d
	movq	%rsp, %rbp
	andl	$-4096, %r13d
.L400:
.LBB27:
.LBB28:
	.loc 2 925 0
	xorl	%ecx, %ecx
	movq	%r15, %rsi
.LBE28:
	.loc 2 924 0
	mov	%r13d, %edi
.LBB29:
	.loc 2 925 0
	movl	$4, %edx
	call	cpu_physical_memory_rw
.LBE29:
.LBE27:
.LBB30:
	.file 3 "../bswap.h"
	.loc 3 124 0
	movl	4(%rsp), %esi
.LBE30:
	.loc 1 1039 0
	testb	$1, %sil
	je	.L387
	.loc 1 1040 0
	testb	%sil, %sil
	jns	.L391
	testb	$16, 532(%r14)
	jne	.L404
.L391:
	.loc 1 1043 0
	xorl	%ebx, %ebx
	.p2align 4,,2
	jmp	.L399
	.p2align 4,,7
.L395:
	incl	%ebx
	cmpl	$1023, %ebx
	jg	.L387
	movl	4(%rsp), %esi
.L399:
.LBB31:
	.loc 2 924 0
	andl	$-4096, %esi
.LBB32:
	.loc 2 925 0
	xorl	%ecx, %ecx
	movl	$4, %edx
.LBE32:
	.loc 2 924 0
	leal	(%rsi,%rbx,4), %edi
.LBB33:
	.loc 2 925 0
	movq	%rbp, %rsi
.LBE33:
	.loc 2 924 0
	mov	%edi, %edi
.LBB34:
	.loc 2 925 0
	call	cpu_physical_memory_rw
.LBE34:
.LBE31:
.LBB35:
	.loc 3 124 0
	movl	(%rsp), %esi
.LBE35:
	.loc 1 1047 0
	testb	$1, %sil
	je	.L395
	.loc 1 1048 0
	movl	%r12d, %edi
	movl	%ebx, %eax
	andb	$127, %sil
	sall	$22, %edi
	sall	$12, %eax
	movl	$-4096, %edx
	addl	%eax, %edi
	call	print_pte
	jmp	.L395
.L404:
	.loc 1 1041 0
	movl	%r12d, %edi
	movl	$-1048576, %edx
	sall	$22, %edi
	call	print_pte
.L387:
	.loc 1 1036 0
	incl	%r12d
	addl	$4, %r13d
	cmpl	$1023, %r12d
	jle	.L400
	jmp	.L382
.LFE250:
	.size	tlb_info, .-tlb_info
	.section	.rodata.str1.1
.LC310:
	.string	"%08x-%08x %08x %c%c%c\n"
	.text
	.p2align 4,,15
	.type	mem_print, @function
mem_print:
.LFB251:
	.loc 1 1060 0
	movq	%rbx, -32(%rsp)
.LCFI75:
	movq	%rbp, -24(%rsp)
.LCFI76:
	movl	%edx, %ebp
	movq	%r12, -16(%rsp)
.LCFI77:
	movq	%r13, -8(%rsp)
.LCFI78:
	subq	$40, %rsp
.LCFI79:
	.loc 1 1062 0
	movl	(%rsi), %edx
	.loc 1 1060 0
	movq	%rdi, %r13
	movq	%rsi, %r12
	movl	%ecx, %ebx
	.loc 1 1063 0
	cmpl	%edx, %ecx
	je	.L405
	.loc 1 1064 0
	movl	(%rdi), %esi
	cmpl	$-1, %esi
	je	.L407
	.loc 1 1065 0
	movl	%edx, %eax
	movl	%ebp, %ecx
	movl	$114, %r9d
	andl	$4, %eax
	movl	$.LC310, %edi
	cmpl	$1, %eax
	sbbl	%r8d, %r8d
	andl	$2, %edx
	subl	%esi, %ecx
	andl	$-72, %r8d
	cmpl	$1, %edx
	movl	%ebp, %edx
	sbbl	%eax, %eax
	addl	$117, %r8d
	andl	$-74, %eax
	addl	$119, %eax
	movl	%eax, (%rsp)
	xorl	%eax, %eax
	call	term_printf
.L407:
	.loc 1 1072 0
	movl	$-1, %eax
	testl	%ebx, %ebx
	cmovne	%ebp, %eax
	movl	%eax, (%r13)
	.loc 1 1075 0
	movl	%ebx, (%r12)
.L405:
	.loc 1 1077 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	movq	24(%rsp), %r12
	movq	32(%rsp), %r13
	addq	$40, %rsp
	ret
.LFE251:
	.size	mem_print, .-mem_print
	.p2align 4,,15
	.type	mem_info, @function
mem_info:
.LFB252:
	.loc 1 1080 0
	pushq	%r15
.LCFI80:
	pushq	%r14
.LCFI81:
	pushq	%r13
.LCFI82:
	pushq	%r12
.LCFI83:
	pushq	%rbp
.LCFI84:
	pushq	%rbx
.LCFI85:
	subq	$24, %rsp
.LCFI86:
	.loc 1 1085 0
	call	mon_get_cpu
	.loc 1 1086 0
	testq	%rax, %rax
	.loc 1 1085 0
	movq	%rax, %r13
	.loc 1 1086 0
	je	.L414
	.loc 1 1089 0
	movl	516(%rax), %r11d
	testl	%r11d, %r11d
	js	.L416
	.loc 1 1090 0
	movl	$.LC309, %edi
	xorl	%eax, %eax
	call	term_printf
.L414:
	.loc 1 1123 0
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L416:
	.loc 1 1093 0
	movl	528(%rax), %eax
	.loc 1 1096 0
	xorl	%ebp, %ebp
	.loc 1 1094 0
	movl	$0, 16(%rsp)
	.loc 1 1095 0
	movl	$-1, 12(%rsp)
	leaq	20(%rsp), %r15
	leaq	8(%rsp), %r12
	.loc 1 1093 0
	andl	$-4096, %eax
	movl	%eax, %r14d
.LBB36:
	.loc 2 924 0
	mov	%r14d, %edi
.LBB37:
	.loc 2 925 0
	xorl	%ecx, %ecx
	movq	%r15, %rsi
	movl	$4, %edx
	call	cpu_physical_memory_rw
.LBE37:
.LBE36:
.LBB38:
	.loc 3 124 0
	movl	20(%rsp), %ecx
.LBE38:
	.loc 1 1099 0
	movl	%ebp, %esi
	sall	$22, %esi
	.loc 1 1100 0
	testb	$1, %cl
	je	.L422
.L442:
	.loc 1 1101 0
	testb	%cl, %cl
	jns	.L423
	testb	$16, 532(%r13)
	jne	.L441
.L423:
	.loc 1 1105 0
	xorl	%ebx, %ebx
	.p2align 4,,2
	jmp	.L432
	.p2align 4,,7
.L438:
	movl	20(%rsp), %ecx
.L432:
.LBB39:
	.loc 2 924 0
	andl	$-4096, %ecx
.LBB40:
	.loc 2 925 0
	movl	$4, %edx
	movq	%r12, %rsi
.LBE40:
	.loc 2 924 0
	leal	(%rcx,%rbx,4), %edi
.LBB41:
	.loc 2 925 0
	xorl	%ecx, %ecx
.LBE41:
	.loc 2 924 0
	mov	%edi, %edi
.LBB42:
	.loc 2 925 0
	call	cpu_physical_memory_rw
.LBE42:
.LBE39:
.LBB43:
	.loc 3 124 0
	movl	8(%rsp), %edx
.LBE43:
	.loc 1 1109 0
	movl	%ebx, %eax
	movl	%ebp, %ecx
	sall	$22, %ecx
	sall	$12, %eax
	.loc 1 1115 0
	leaq	12(%rsp), %rdi
	.loc 1 1109 0
	leal	(%rcx,%rax), %esi
	.loc 1 1111 0
	xorl	%ecx, %ecx
	movl	%edx, %eax
	andl	$7, %eax
	andl	$1, %edx
	.loc 1 1115 0
	movl	%esi, %edx
	leaq	16(%rsp), %rsi
	.loc 1 1111 0
	cmovne	%eax, %ecx
	.loc 1 1105 0
	incl	%ebx
	.loc 1 1115 0
	call	mem_print
	.loc 1 1105 0
	cmpl	$1023, %ebx
	jle	.L438
	jmp	.L419
.L441:
	.loc 1 1102 0
	andl	$7, %ecx
.L439:
	.loc 1 1120 0
	movl	%esi, %edx
	leaq	12(%rsp), %rdi
	leaq	16(%rsp), %rsi
	call	mem_print
.L419:
	.loc 1 1096 0
	incl	%ebp
	addl	$4, %r14d
	cmpl	$1023, %ebp
	jg	.L414
.LBB44:
.LBB45:
	.loc 2 925 0
	xorl	%ecx, %ecx
	movq	%r15, %rsi
.LBE45:
	.loc 2 924 0
	mov	%r14d, %edi
.LBB46:
	.loc 2 925 0
	movl	$4, %edx
	call	cpu_physical_memory_rw
.LBE46:
.LBE44:
.LBB47:
	.loc 3 124 0
	movl	20(%rsp), %ecx
.LBE47:
	.loc 1 1099 0
	movl	%ebp, %esi
	sall	$22, %esi
	.loc 1 1100 0
	testb	$1, %cl
	jne	.L442
.L422:
	.loc 1 1120 0
	xorl	%ecx, %ecx
	jmp	.L439
.LFE252:
	.size	mem_info, .-mem_info
	.section	.rodata.str1.8
	.align 8
.LC311:
	.string	"Internal profiler not compiled\n"
	.text
	.p2align 4,,15
	.type	do_info_profile, @function
do_info_profile:
.LFB254:
	.loc 1 1196 0
	.loc 1 1197 0
	movl	$.LC311, %edi
	xorl	%eax, %eax
	jmp	term_printf
.LFE254:
	.size	do_info_profile, .-do_info_profile
	.section	.rodata.str1.1
.LC312:
	.string	"[%d]: "
	.text
	.p2align 4,,15
	.type	do_info_capture, @function
do_info_capture:
.LFB255:
	.loc 1 1205 0
	pushq	%rbp
.LCFI87:
	.loc 1 1209 0
	xorl	%ebp, %ebp
	.loc 1 1205 0
	pushq	%rbx
.LCFI88:
	subq	$8, %rsp
.LCFI89:
	.loc 1 1209 0
	movq	capture_head(%rip), %rbx
	jmp	.L451
	.p2align 4,,7
.L452:
	.loc 1 1210 0
	movl	%ebp, %esi
	movl	$.LC312, %edi
	xorl	%eax, %eax
	call	term_printf
	.loc 1 1211 0
	movq	(%rbx), %rdi
	.loc 1 1209 0
	incl	%ebp
	.loc 1 1211 0
	call	*8(%rbx)
	.loc 1 1209 0
	movq	24(%rbx), %rbx
.L451:
	testq	%rbx, %rbx
	jne	.L452
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
.LFE255:
	.size	do_info_capture, .-do_info_capture
	.p2align 4,,15
	.type	do_stop_capture, @function
do_stop_capture:
.LFB256:
	.loc 1 1216 0
	pushq	%rbx
.LCFI90:
	.loc 1 1220 0
	movq	capture_head(%rip), %rbx
	xorl	%eax, %eax
	jmp	.L462
	.p2align 4,,7
.L464:
	.loc 1 1221 0
	cmpl	%edi, %eax
	je	.L463
	.loc 1 1220 0
	movq	24(%rbx), %rbx
	incl	%eax
.L462:
	testq	%rbx, %rbx
	jne	.L464
	.loc 1 1228 0
	popq	%rbx
	.p2align 4,,3
	ret
.L463:
	.loc 1 1222 0
	movq	(%rbx), %rdi
	.p2align 4,,4
	call	*16(%rbx)
	.loc 1 1223 0
	movq	24(%rbx), %rdx
	testq	%rdx, %rdx
	.p2align 4,,5
	jne	.L465
.L458:
	movq	32(%rbx), %rax
	.loc 1 1224 0
	movq	%rbx, %rdi
	.loc 1 1223 0
	movq	%rdx, (%rax)
	.loc 1 1228 0
	popq	%rbx
	.loc 1 1224 0
	jmp	qemu_free
.L465:
	.loc 1 1223 0
	movq	32(%rbx), %rax
	movq	%rax, 32(%rdx)
	jmp	.L458
.LFE256:
	.size	do_stop_capture, .-do_stop_capture
	.section	.rodata.str1.1
.LC314:
	.string	"Faied to add wave capture\n"
	.section	.rodata.str1.8
	.align 8
.LC313:
	.string	"Not enough memory to add wave capture\n"
	.text
	.p2align 4,,15
	.type	do_wav_capture, @function
do_wav_capture:
.LFB257:
	.loc 1 1238 0
	movq	%rbx, -48(%rsp)
.LCFI91:
	movq	%rbp, -40(%rsp)
.LCFI92:
	movl	%r8d, %ebp
	movq	%r12, -32(%rsp)
.LCFI93:
	movq	%r13, -24(%rsp)
.LCFI94:
	movl	%edx, %r12d
	movq	%r14, -16(%rsp)
.LCFI95:
	movq	%r15, -8(%rsp)
.LCFI96:
	subq	$72, %rsp
.LCFI97:
	.loc 1 1238 0
	movl	80(%rsp), %eax
	movq	%rdi, 16(%rsp)
	.loc 1 1241 0
	movl	$40, %edi
	.loc 1 1238 0
	movl	%esi, %r13d
	movl	%ecx, %r14d
	movl	%r9d, %r15d
	movl	%eax, 12(%rsp)
	.loc 1 1241 0
	call	qemu_mallocz
	.loc 1 1242 0
	testq	%rax, %rax
	.loc 1 1241 0
	movq	%rax, %rbx
	.loc 1 1242 0
	je	.L476
	.loc 1 1247 0
	testl	%r13d, %r13d
	movl	$44100, %eax
	.loc 1 1251 0
	movl	$2, %r8d
	.loc 1 1247 0
	cmove	%eax, %r12d
	.loc 1 1248 0
	testl	%r14d, %r14d
	movw	$16, %ax
	cmove	%eax, %ebp
	.loc 1 1249 0
	testl	%r15d, %r15d
	.loc 1 1251 0
	cmovne	12(%rsp), %r8d
	movq	16(%rsp), %rsi
	movl	%ebp, %ecx
	movl	%r12d, %edx
	movq	%rbx, %rdi
	call	wav_start_capture
	testl	%eax, %eax
	jne	.L477
.L474:
	.loc 1 1255 0
	movq	capture_head(%rip), %rax
	testq	%rax, %rax
	movq	%rax, 24(%rbx)
	je	.L475
	movq	capture_head(%rip), %rax
	leaq	24(%rbx), %rdx
	movq	%rdx, 32(%rax)
.L475:
	movq	%rbx, capture_head(%rip)
	movq	$capture_head, 32(%rbx)
	.loc 1 1256 0
	movq	24(%rsp), %rbx
	movq	32(%rsp), %rbp
	movq	40(%rsp), %r12
	movq	48(%rsp), %r13
	movq	56(%rsp), %r14
	movq	64(%rsp), %r15
	addq	$72, %rsp
	ret
	.p2align 4,,7
.L477:
	.loc 1 1252 0
	movl	$.LC314, %edi
	xorl	%eax, %eax
	call	term_printf
	.loc 1 1253 0
	movq	%rbx, %rdi
	call	qemu_free
	jmp	.L474
	.p2align 4,,7
.L476:
	.loc 1 1256 0
	movq	24(%rsp), %rbx
	movq	32(%rsp), %rbp
	.loc 1 1243 0
	movl	$.LC313, %edi
	.loc 1 1256 0
	movq	40(%rsp), %r12
	movq	48(%rsp), %r13
	.loc 1 1243 0
	xorl	%eax, %eax
	.loc 1 1256 0
	movq	56(%rsp), %r14
	movq	64(%rsp), %r15
	addq	$72, %rsp
	.loc 1 1243 0
	jmp	term_printf
.LFE257:
	.size	do_wav_capture, .-do_wav_capture
	.p2align 4,,15
	.type	monitor_get_pc, @function
monitor_get_pc:
.LFB258:
	.loc 1 1412 0
	.loc 1 1413 0
	call	mon_get_cpu
	.loc 1 1415 0
	xorl	%edx, %edx
	.loc 1 1414 0
	testq	%rax, %rax
	je	.L478
	.loc 1 1416 0
	movl	376(%rax), %edx
	addl	32(%rax), %edx
.L478:
	.loc 1 1417 0
	movl	%edx, %eax
	ret
.LFE258:
	.size	monitor_get_pc, .-monitor_get_pc
	.p2align 4,,15
	.type	expr_error, @function
expr_error:
.LFB259:
	.loc 1 1740 0
	subq	$8, %rsp
.LCFI98:
	.loc 1 1741 0
	xorl	%eax, %eax
	call	term_printf
	.loc 1 1742 0
	movl	$.LC278, %edi
	xorl	%eax, %eax
	call	term_printf
	.loc 1 1743 0
	movl	$1, %esi
	movl	$expr_env, %edi
	call	longjmp
.LFE259:
	.size	expr_error, .-expr_error
	.p2align 4,,15
	.type	next, @function
next:
.LFB261:
	.loc 1 1780 0
	.loc 1 1781 0
	movq	pch(%rip), %rax
	.loc 1 1780 0
	pushq	%rbx
.LCFI99:
	.loc 1 1781 0
	testq	%rax, %rax
	jne	.L486
	.loc 1 1786 0
	popq	%rbx
	ret
.L486:
	.loc 1 1782 0
	leaq	1(%rax), %rbx
	movq	%rbx, pch(%rip)
	call	__ctype_b_loc
	movq	%rax, %rcx
	jmp	.L483
	.p2align 4,,7
.L485:
	.loc 1 1784 0
	incq	%rbx
	movq	%rbx, pch(%rip)
.L483:
	movsbq	(%rbx),%rdx
	movq	(%rcx), %rax
	testb	$32, 1(%rax,%rdx,2)
	jne	.L485
	.loc 1 1786 0
	popq	%rbx
	ret
.LFE261:
	.size	next, .-next
	.p2align 4,,15
	.type	expr_logic, @function
expr_logic:
.LFB264:
	.loc 1 1907 0
	pushq	%rbp
.LCFI100:
	pushq	%rbx
.LCFI101:
	subq	$8, %rsp
.LCFI102:
	.loc 1 1911 0
	call	expr_prod
	movq	%rax, %rbp
	.p2align 4,,7
.L499:
	.loc 1 1913 0
	movq	pch(%rip), %rax
	movsbl	(%rax),%ebx
	.loc 1 1914 0
	cmpl	$38, %ebx
	setne	%dl
	xorl	%eax, %eax
	cmpl	$124, %ebx
	setne	%al
	testl	%edx, %eax
	je	.L490
	cmpl	$94, %ebx
	jne	.L489
	.p2align 4,,7
.L490:
	.loc 1 1916 0
	call	next
	.loc 1 1917 0
	.p2align 4,,6
	call	expr_prod
	.loc 1 1918 0
	cmpl	$94, %ebx
	.loc 1 1917 0
	movq	%rax, %rdx
	.loc 1 1918 0
	je	.L495
	.loc 1 1921 0
	movq	%rbp, %rax
	andq	%rdx, %rax
	orq	%rbp, %rdx
	cmpl	$124, %ebx
	movq	%rax, %rbp
	.loc 1 1913 0
	movq	pch(%rip), %rax
	.loc 1 1921 0
	cmove	%rdx, %rbp
	.loc 1 1913 0
	movsbl	(%rax),%ebx
	.loc 1 1914 0
	cmpl	$38, %ebx
	setne	%dl
	xorl	%eax, %eax
	cmpl	$124, %ebx
	setne	%al
	testl	%edx, %eax
	je	.L490
	cmpl	$94, %ebx
	je	.L490
.L489:
	.loc 1 1932 0
	addq	$8, %rsp
	movq	%rbp, %rax
	popq	%rbx
	popq	%rbp
	ret
	.p2align 4,,7
.L495:
	.loc 1 1927 0
	xorq	%rax, %rbp 
	.p2align 4,,2
	jmp	.L499
.LFE264:
	.size	expr_logic, .-expr_logic
	.p2align 4,,15
	.type	expr_sum, @function
expr_sum:
.LFB265:
	.loc 1 1935 0
	pushq	%rbp
.LCFI103:
	pushq	%rbx
.LCFI104:
	subq	$8, %rsp
.LCFI105:
	.loc 1 1939 0
	call	expr_logic
	movq	%rax, %rbp
	jmp	.L507
	.p2align 4,,7
.L508:
	.loc 1 1944 0
	call	next
	.loc 1 1945 0
	.p2align 4,,6
	call	expr_logic
	.loc 1 1947 0
	leaq	(%rbp,%rax), %rdx
	subq	%rax, %rbp
	cmpl	$43, %ebx
	movq	%rbp, %rax
	movq	%rdx, %rbp
	cmovne	%rax, %rbp
.L507:
	.loc 1 1941 0
	movq	pch(%rip), %rax
	movsbl	(%rax),%ebx
	.loc 1 1942 0
	cmpl	$43, %ebx
	setne	%dl
	xorl	%eax, %eax
	cmpl	$45, %ebx
	setne	%al
	testl	%edx, %eax
	je	.L508
	.loc 1 1952 0
	addq	$8, %rsp
	movq	%rbp, %rax
	popq	%rbx
	popq	%rbp
	ret
.LFE265:
	.size	expr_sum, .-expr_sum
	.section	.rodata.str1.1
.LC320:
	.string	"unexpected end of expression"
	.section	.rodata.str1.8
	.align 8
.LC317:
	.string	"missing terminating ' character"
	.section	.rodata.str1.1
.LC315:
	.string	"')' expected"
.LC318:
	.string	"unknown register"
.LC321:
	.string	"invalid char in expression"
.LC316:
	.string	"character constant expected"
.LC319:
	.string	"no cpu defined"
	.text
	.p2align 4,,15
	.type	expr_unary, @function
expr_unary:
.LFB262:
	.loc 1 1791 0
	pushq	%r12
.LCFI106:
	pushq	%rbp
.LCFI107:
	pushq	%rbx
.LCFI108:
	subq	$144, %rsp
.LCFI109:
	.loc 1 1796 0
	movq	pch(%rip), %rdx
	movsbl	(%rdx),%eax
	cmpl	$40, %eax
	je	.L515
	jg	.L551
	cmpl	$36, %eax
	je	.L520
	.p2align 4,,9
	jg	.L552
	testl	%eax, %eax
	.p2align 4,,7
	jne	.L546
	.loc 1 1854 0
	movl	$.LC320, %edi
	.loc 1 1855 0
	xorl	%ebp, %ebp
	.loc 1 1854 0
	call	expr_error
.L510:
	.loc 1 1872 0
	addq	$144, %rsp
	movq	%rbp, %rax
	popq	%rbx
	popq	%rbp
	popq	%r12
	ret
.L551:
	.loc 1 1796 0
	cmpl	$45, %eax
	je	.L513
	.p2align 4,,2
	jle	.L564
	cmpl	$126, %eax
	.p2align 4,,7
	je	.L514
.L546:
	.loc 1 1859 0
	movq	pch(%rip), %rdi
	xorl	%edx, %edx
	movq	%rsp, %rsi
	call	strtoull
	movq	%rax, %rbp
	.loc 1 1863 0
	movq	(%rsp), %rax
	cmpq	%rax, pch(%rip)
	je	.L565
.L547:
	.loc 1 1866 0
	movq	%rax, %rbx
	movq	%rax, pch(%rip)
	call	__ctype_b_loc
	movq	%rax, %rcx
	jmp	.L548
	.p2align 4,,7
.L550:
	.loc 1 1868 0
	incq	%rbx
	movq	%rbx, pch(%rip)
.L548:
	movsbq	(%rbx),%rdx
	movq	(%rcx), %rax
	testb	$32, 1(%rax,%rdx,2)
	jne	.L550
	.loc 1 1872 0
	addq	$144, %rsp
	movq	%rbp, %rax
	popq	%rbx
	popq	%rbp
	popq	%r12
	ret
.L564:
	.loc 1 1796 0
	cmpl	$43, %eax
	jne	.L546
	.loc 1 1798 0
	call	next
	.loc 1 1799 0
	.p2align 4,,6
	call	expr_unary
	movq	%rax, %rbp
	.p2align 4,,3
	jmp	.L510
.L552:
	.loc 1 1796 0
	cmpl	$39, %eax
	.p2align 4,,4
	jne	.L546
	.loc 1 1818 0
	leaq	1(%rdx), %rbx
	movq	%rbx, pch(%rip)
	.loc 1 1819 0
	cmpb	$0, 1(%rdx)
	je	.L566
.L518:
	.loc 1 1821 0
	movq	%rbx, %rax
	movsbq	(%rbx),%rbp
	.loc 1 1822 0
	incq	%rbx
	movq	%rbx, pch(%rip)
	.loc 1 1823 0
	cmpb	$39, 1(%rax)
	je	.L519
	.loc 1 1824 0
	movl	$.LC317, %edi
	call	expr_error
.L519:
	.loc 1 1825 0
	call	next
	.loc 1 1872 0
	addq	$144, %rsp
	movq	%rbp, %rax
	popq	%rbx
	popq	%rbp
	popq	%r12
	ret
.L515:
	.loc 1 1810 0
	call	next
	.loc 1 1811 0
	call	expr_sum
	movq	%rax, %rbp
	.loc 1 1812 0
	movq	pch(%rip), %rax
	.loc 1 1813 0
	movl	$.LC315, %edi
	.loc 1 1812 0
	cmpb	$41, (%rax)
	je	.L519
	.loc 1 1824 0
	call	expr_error
	jmp	.L519
.L520:
.LBB48:
	.loc 1 1832 0
	leaq	1(%rdx), %rbx
	.loc 1 1833 0
	leaq	16(%rsp), %r12
	.loc 1 1830 0
	movl	$0, 12(%rsp)
	.loc 1 1832 0
	movq	%rbx, pch(%rip)
	.loc 1 1833 0
	movq	%r12, %rbp
	jmp	.L521
	.p2align 4,,7
.L525:
	.loc 1 1838 0
	movq	%rbp, %rax
	subq	%r12, %rax
	cmpq	$126, %rax
	ja	.L524
	.loc 1 1839 0
	movzbl	(%rbx), %eax
	movb	%al, (%rbp)
	incq	%rbp
.L524:
	.loc 1 1840 0
	incq	%rbx
	movq	%rbx, pch(%rip)
.L521:
	movzbl	(%rbx), %ecx
	leal	-97(%rcx), %eax
	cmpb	$25, %al
	leal	-65(%rcx), %eax
	setbe	%dl
	cmpb	$25, %al
	setbe	%al
	orl	%edx, %eax
	testb	$1, %al
	jne	.L525
	leal	-48(%rcx), %eax
	cmpb	$9, %al
	jbe	.L525
	cmpb	$95, %cl
	je	.L525
	cmpb	$46, %cl
	.p2align 4,,3
	je	.L525
	.p2align 4,,7
	call	__ctype_b_loc
	movq	%rax, %rcx
	.p2align 4,,4
	jmp	.L526
	.p2align 4,,7
.L528:
	.loc 1 1843 0
	incq	%rbx
	movq	%rbx, pch(%rip)
.L526:
	movsbq	(%rbx),%rdx
	movq	(%rcx), %rax
	testb	$32, 1(%rax,%rdx,2)
	jne	.L528
	.loc 1 1844 0
	movb	$0, (%rbp)
.LBB49:
.LBB50:
	.loc 1 1752 0
	cmpq	$0, monitor_defs(%rip)
.LBE50:
	.loc 1 1748 0
	leaq	12(%rsp), %rbp
.LBB51:
	.loc 1 1752 0
	movl	$monitor_defs, %ebx
	je	.L555
.L568:
	.loc 1 1753 0
	movq	(%rbx), %rsi
	movq	%r12, %rdi
	call	compare_cmd
	testl	%eax, %eax
	jne	.L567
	.loc 1 1752 0
	addq	$32, %rbx
	cmpq	$0, (%rbx)
	jne	.L568
.L555:
.LBE51:
.LBE49:
	.loc 1 1847 0
	movl	$.LC318, %edi
	.loc 1 1849 0
	call	expr_error
.L543:
	.loc 1 1850 0
	movslq	12(%rsp),%rbp
.L569:
.LBE48:
	.loc 1 1872 0
	addq	$144, %rsp
	movq	%rbp, %rax
	popq	%rbx
	popq	%rbp
	popq	%r12
	ret
.L565:
	.loc 1 1864 0
	movl	$.LC321, %edi
	call	expr_error
	movq	(%rsp), %rax
	jmp	.L547
.L513:
	.loc 1 1802 0
	call	next
	.loc 1 1803 0
	.p2align 4,,6
	call	expr_unary
	movq	%rax, %rbp
	negq	%rbp
	jmp	.L510
.L514:
	.loc 1 1806 0
	call	next
	.loc 1 1807 0
	call	expr_unary
	movq	%rax, %rbp
	notq	%rbp
	jmp	.L510
.L567:
.LBB52:
.LBB53:
.LBB54:
	.loc 1 1754 0
	movq	16(%rbx), %rax
	testq	%rax, %rax
	je	.L533
	.loc 1 1755 0
	movl	8(%rbx), %esi
	movq	%rbx, %rdi
	call	*%rax
.LBB55:
	.loc 1 1766 0
	movl	%eax, (%rbp)
.L570:
.LBE55:
.LBE54:
.LBE53:
	.loc 1 1850 0
	movslq	12(%rsp),%rbp
	jmp	.L569
.L566:
.LBE52:
	.loc 1 1820 0
	movl	$.LC316, %edi
	call	expr_error
	movq	pch(%rip), %rbx
	jmp	.L518
.L533:
.LBB56:
.LBB57:
.LBB58:
.LBB59:
	.loc 1 1757 0
	call	mon_get_cpu
	.loc 1 1758 0
	testq	%rax, %rax
	.loc 1 1757 0
	movq	%rax, %rdx
	.loc 1 1758 0
	je	.L556
	.loc 1 1760 0
	movslq	8(%rbx),%rax
	addq	%rdx, %rax
	.loc 1 1761 0
	movl	24(%rbx), %edx
	testl	%edx, %edx
	je	.L539
	decl	%edx
	je	.L539
	.loc 1 1769 0
	movl	$0, (%rbp)
.LBE59:
.LBE58:
.LBE57:
	.loc 1 1850 0
	movslq	12(%rsp),%rbp
	jmp	.L569
.L539:
.LBB60:
.LBB61:
.LBB62:
	.loc 1 1766 0
	movl	(%rax), %eax
	movl	%eax, (%rbp)
	jmp	.L570
.L556:
.LBE62:
.LBE61:
.LBE60:
	.loc 1 1849 0
	movl	$.LC319, %edi
	call	expr_error
	jmp	.L543
.LBE56:
.LFE262:
	.size	expr_unary, .-expr_unary
	.section	.rodata.str1.1
.LC322:
	.string	"division by zero"
	.text
	.p2align 4,,15
	.type	expr_prod, @function
expr_prod:
.LFB263:
	.loc 1 1876 0
	pushq	%r12
.LCFI110:
	pushq	%rbp
.LCFI111:
	pushq	%rbx
.LCFI112:
	.loc 1 1880 0
	call	expr_unary
.L586:
	movq	%rax, %r12
.L587:
	.loc 1 1882 0
	movq	pch(%rip), %rax
	movsbl	(%rax),%ebx
	.loc 1 1883 0
	cmpl	$42, %ebx
	setne	%dl
	xorl	%eax, %eax
	cmpl	$47, %ebx
	setne	%al
	testl	%edx, %eax
	je	.L574
	cmpl	$37, %ebx
	jne	.L573
.L574:
	.loc 1 1885 0
	call	next
	.loc 1 1886 0
	.p2align 4,,6
	call	expr_unary
	.loc 1 1887 0
	cmpl	$37, %ebx
	.loc 1 1886 0
	movq	%rax, %rbp
	.loc 1 1887 0
	je	.L579
	cmpl	$47, %ebx
	.p2align 4,,2
	je	.L579
	.loc 1 1890 0
	imulq	%rax, %r12
	.loc 1 1882 0
	movq	pch(%rip), %rax
	movsbl	(%rax),%ebx
	.loc 1 1883 0
	cmpl	$42, %ebx
	setne	%dl
	xorl	%eax, %eax
	cmpl	$47, %ebx
	setne	%al
	testl	%edx, %eax
	je	.L574
	cmpl	$37, %ebx
	je	.L574
.L573:
	.loc 1 1904 0
	popq	%rbx
	popq	%rbp
	movq	%r12, %rax
	popq	%r12
	ret
	.p2align 4,,7
.L579:
	.loc 1 1894 0
	testq	%rbp, %rbp
	.p2align 4,,2
	je	.L588
	.loc 1 1896 0
	cmpl	$47, %ebx
	.p2align 4,,2
	je	.L589
.L581:
	.loc 1 1899 0
	movq	%r12, %rax
	cqto
	idivq	%rbp
	movq	%rdx, %r12
	jmp	.L587
	.p2align 4,,7
.L588:
	.loc 1 1895 0
	movl	$.LC322, %edi
	call	expr_error
	.loc 1 1896 0
	cmpl	$47, %ebx
	jne	.L581
	.p2align 4,,7
.L589:
	.loc 1 1897 0
	movq	%r12, %rax
	cqto
	idivq	%rbp
	jmp	.L586
.LFE263:
	.size	expr_prod, .-expr_prod
	.p2align 4,,15
	.type	get_expr, @function
get_expr:
.LFB266:
	.loc 1 1955 0
	subq	$24, %rsp
.LCFI113:
	.loc 1 1955 0
	movq	%rdi, 16(%rsp)
	movq	%rsi, 8(%rsp)
	.loc 1 1957 0
	movl	$expr_env, %edi
	.loc 1 1956 0
	movq	(%rsi), %rax
	movq	%rax, pch(%rip)
	.loc 1 1957 0
	call	_setjmp
	testl	%eax, %eax
	jne	.L595
	call	__ctype_b_loc
	movq	%rax, %rsi
	.p2align 4,,4
	jmp	.L592
	.p2align 4,,7
.L594:
	.loc 1 1962 0
	leaq	1(%rcx), %rax
	movq	%rax, pch(%rip)
.L592:
	movq	pch(%rip), %rcx
	movq	(%rsi), %rax
	movsbq	(%rcx),%rdx
	testb	$32, 1(%rax,%rdx,2)
	jne	.L594
	.loc 1 1963 0
	call	expr_sum
	movq	16(%rsp), %rdx
	movq	%rax, (%rdx)
	.loc 1 1964 0
	movq	pch(%rip), %rax
	movq	8(%rsp), %rdx
	movq	%rax, (%rdx)
	.loc 1 1965 0
	xorl	%eax, %eax
	.loc 1 1966 0
	addq	$24, %rsp
	ret
.L595:
	.loc 1 1958 0
	movq	pch(%rip), %rax
	movq	8(%rsp), %rdx
	movq	%rax, (%rdx)
	.loc 1 1959 0
	movl	$-1, %eax
	.loc 1 1966 0
	addq	$24, %rsp
	ret
.LFE266:
	.size	get_expr, .-get_expr
	.section	.rodata.str1.1
.LC324:
	.string	"unterminated string"
	.section	.rodata.str1.8
	.align 8
.LC323:
	.string	"unsupported escape code: '\\%c'\n"
	.text
	.p2align 4,,15
	.type	get_str, @function
get_str:
.LFB267:
	.loc 1 1969 0
	pushq	%r15
.LCFI114:
	movq	%rdx, %r15
	pushq	%r14
.LCFI115:
	movq	%rdi, %r14
	pushq	%r13
.LCFI116:
	movl	%esi, %r13d
	pushq	%r12
.LCFI117:
	.loc 1 1974 0
	movq	%rdi, %r12
	.loc 1 1969 0
	pushq	%rbp
.LCFI118:
	pushq	%rbx
.LCFI119:
	subq	$8, %rsp
.LCFI120:
	.loc 1 1975 0
	movq	(%rdx), %rbp
	call	__ctype_b_loc
	movq	(%rax), %rdx
	jmp	.L597
	.p2align 4,,7
.L599:
	.loc 1 1977 0
	incq	%rbp
.L597:
	movzbl	(%rbp), %ebx
	movsbq	%bl,%rax
	testb	$32, 1(%rdx,%rax,2)
	jne	.L599
	.loc 1 1978 0
	testb	%bl, %bl
	je	.L601
	.loc 1 1984 0
	cmpb	$34, %bl
	je	.L628
	leal	-1(%r13), %eax
	movslq	%eax,%r13
	.p2align 4,,3
	jmp	.L621
	.p2align 4,,7
.L629:
	.loc 1 2025 0
	.p2align 4,,5
	call	__ctype_b_loc
	movq	(%rax), %rax
	movsbq	%bl,%rdx
	testb	$32, 1(%rax,%rdx,2)
	jne	.L620
	.loc 1 2022 0
	movq	%r12, %rax
	subq	%r14, %rax
	cmpq	%r13, %rax
	jge	.L623
	.loc 1 2023 0
	movb	%bl, (%r12)
	incq	%r12
.L623:
	.loc 1 2025 0
	incq	%rbp
	movzbl	(%rbp), %ebx
.L621:
	testb	%bl, %bl
	jne	.L629
.L620:
	.loc 1 2028 0
	movb	$0, (%r12)
	.loc 1 2029 0
	movq	%rbp, (%r15)
	.loc 1 2031 0
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	.loc 1 2030 0
	xorl	%eax, %eax
	.loc 1 2031 0
	ret
.L628:
	.loc 1 1985 0
	incq	%rbp
	.loc 1 2012 0
	movzbl	(%rbp), %ebx
	testb	%bl, %bl
	setne	%dl
	xorl	%eax, %eax
	cmpb	$34, %bl
	setne	%al
	testl	%edx, %eax
	je	.L626
	leal	-1(%r13), %eax
	movslq	%eax,%rcx
	.p2align 4,,7
.L618:
	.loc 1 1987 0
	cmpb	$92, %bl
	je	.L630
	.loc 1 2009 0
	movq	%r12, %rax
	subq	%r14, %rax
	cmpq	%rcx, %rax
	jge	.L617
	.loc 1 2010 0
	movb	%bl, (%r12)
	incq	%r12
.L617:
	.loc 1 2012 0
	incq	%rbp
.L603:
	movzbl	(%rbp), %ebx
	testb	%bl, %bl
	setne	%dl
	xorl	%eax, %eax
	cmpb	$34, %bl
	setne	%al
	testl	%edx, %eax
	jne	.L618
.L626:
	.loc 1 2015 0
	cmpb	$34, %bl
	jne	.L631
	.loc 1 2019 0
	incq	%rbp
	jmp	.L620
.L630:
	.loc 1 1988 0
	incq	%rbp
	.loc 1 1989 0
	movsbl	(%rbp),%esi
	incq	%rbp
	.loc 1 1990 0
	cmpl	$110, %esi
	je	.L607
	jg	.L613
	cmpl	$39, %esi
	je	.L606
	.p2align 4,,9
	jg	.L614
	cmpl	$34, %esi
.L627:
	.p2align 4,,7
	jne	.L612
.L606:
	.loc 1 2005 0
	movq	%r12, %rax
	subq	%r14, %rax
	cmpq	%rcx, %rax
	.p2align 4,,3
	jge	.L603
	.loc 1 2006 0
	movb	%sil, (%r12)
	incq	%r12
	jmp	.L603
.L613:
	.loc 1 1990 0
	cmpl	$114, %esi
	jne	.L612
	.loc 1 1995 0
	movl	$13, %esi
	.p2align 4,,3
	jmp	.L606
.L607:
	.loc 1 1992 0
	movl	$10, %esi
	.p2align 4,,5
	jmp	.L606
.L631:
	.loc 1 2016 0
	movl	$.LC324, %edi
	call	puts
.L601:
	.loc 1 1980 0
	movb	$0, (%r12)
	.loc 1 1981 0
	movq	%rbp, (%r15)
	.loc 1 2031 0
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	.loc 1 1982 0
	movl	$-1, %eax
	.loc 1 2031 0
	ret
.L614:
	.loc 1 1990 0
	cmpl	$92, %esi
	jmp	.L627
.L612:
	.loc 1 2002 0
	movl	$.LC323, %edi
	xorl	%eax, %eax
	call	printf
	jmp	.L601
.LFE267:
	.size	get_str, .-get_str
	.p2align 4,,15
	.type	cmd_completion, @function
cmd_completion:
.LFB269:
	.loc 1 2344 0
	pushq	%r14
.LCFI121:
	pushq	%r13
.LCFI122:
	movq	%rdi, %r13
	pushq	%r12
.LCFI123:
	pushq	%rbp
.LCFI124:
	movq	%rsi, %rbp
	pushq	%rbx
.LCFI125:
	addq	$-128, %rsp
.LCFI126:
	movq	%rsp, %r14
	jmp	.L633
	.p2align 4,,7
.L635:
	.loc 1 2355 0
	movl	%ebp, %ebx
	.loc 1 2357 0
	movl	$126, %eax
	.loc 1 2358 0
	movq	%r12, %rsi
	.loc 1 2355 0
	subl	%r12d, %ebx
	.loc 1 2358 0
	movq	%r14, %rdi
	.loc 1 2357 0
	cmpl	$127, %ebx
	cmovae	%eax, %ebx
	.loc 1 2358 0
	movslq	%ebx,%rbx
	movq	%rbx, %rdx
	call	memcpy
	.loc 1 2360 0
	cmpb	$0, (%r13)
	.loc 1 2359 0
	movb	$0, (%rsp,%rbx)
	.loc 1 2360 0
	je	.L638
	movq	%r13, %rdi
	call	strlen
	movq	%r14, %rsi
	movq	%rax, %rdx
	movq	%r13, %rdi
	call	strncmp
	testl	%eax, %eax
	jne	.L637
.L638:
	.loc 1 2361 0
	movq	%r14, %rdi
	call	add_completion
.L637:
	.loc 1 2363 0
	cmpb	$0, (%rbp)
	.p2align 4,,2
	je	.L634
	.loc 1 2365 0
	incq	%rbp
.L633:
	.loc 1 2352 0
	movq	%rbp, %rdi
	movl	$124, %esi
	.loc 1 2351 0
	movq	%rbp, %r12
	.loc 1 2352 0
	call	strchr
	.loc 1 2353 0
	testq	%rax, %rax
	.loc 1 2352 0
	movq	%rax, %rbp
	.loc 1 2353 0
	jne	.L635
	.loc 1 2354 0
	movq	%r12, %rdi
	call	strlen
	leaq	(%rax,%r12), %rbp
	jmp	.L635
.L634:
	.loc 1 2350 0
	subq	$-128, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	ret
.LFE269:
	.size	cmd_completion, .-cmd_completion
	.p2align 4,,15
	.type	block_completion_it, @function
block_completion_it:
.LFB271:
	.loc 1 2418 0
	movq	%rbx, -16(%rsp)
.LCFI127:
	movq	%rbp, -8(%rsp)
.LCFI128:
	subq	$24, %rsp
.LCFI129:
	.loc 1 2421 0
	cmpb	$0, (%rdi)
	.loc 1 2418 0
	movq	%rdi, %rbx
	movq	%rsi, %rbp
	.loc 1 2421 0
	je	.L642
	call	strlen
	movq	%rbx, %rsi
	movq	%rax, %rdx
	movq	%rbp, %rdi
	call	strncmp
	testl	%eax, %eax
	jne	.L640
.L642:
	.loc 1 2423 0
	movq	%rbp, %rdi
	.loc 1 2425 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	addq	$24, %rsp
	.loc 1 2423 0
	jmp	add_completion
	.p2align 4,,7
.L640:
	.loc 1 2425 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	addq	$24, %rsp
	ret
.LFE271:
	.size	block_completion_it, .-block_completion_it
	.p2align 4,,15
.globl readline_find_completion
	.type	readline_find_completion, @function
readline_find_completion:
.LFB273:
	.loc 1 2454 0
	pushq	%r15
.LCFI130:
	pushq	%r14
.LCFI131:
	pushq	%r13
.LCFI132:
	movq	%rdi, %r13
	pushq	%r12
.LCFI133:
	pushq	%rbp
.LCFI134:
.LBB63:
.LBB64:
	.loc 1 2436 0
	xorl	%ebp, %ebp
.LBE64:
.LBE63:
	.loc 1 2454 0
	pushq	%rbx
.LCFI135:
.LBB65:
.LBB66:
	.loc 1 2435 0
	movq	%rdi, %rbx
.LBE66:
.LBE65:
	.loc 1 2454 0
	subq	$4392, %rsp
.LCFI136:
.LBB67:
	.loc 1 2430 0
	leaq	4256(%rsp), %r14
.LBB68:
	.loc 1 2435 0
	movq	%rdi, (%rsp)
.L644:
	call	__ctype_b_loc
	movq	%rax, %rsi
	jmp	.L646
	.p2align 4,,7
.L648:
	.loc 1 2439 0
	incq	%rbx
	movq	%rbx, (%rsp)
.L646:
	movzbl	(%rbx), %ecx
	movq	(%rsi), %rax
	movsbq	%cl,%rdx
	testb	$32, 1(%rax,%rdx,2)
	jne	.L648
	.loc 1 2440 0
	testb	%cl, %cl
	je	.L645
	.loc 1 2442 0
	cmpl	$15, %ebp
	jg	.L645
	.loc 1 2444 0
	leaq	3232(%rsp), %rbx
	movq	%rsp, %rdx
	movl	$1024, %esi
	movq	%rbx, %rdi
	call	get_str
	.loc 1 2445 0
	movq	%rbx, %rdi
	.loc 1 2444 0
	movl	%eax, %r12d
	.loc 1 2445 0
	call	qemu_strdup
	movslq	%ebp,%rdx
	.loc 1 2446 0
	incl	%ebp
	.loc 1 2447 0
	testl	%r12d, %r12d
	.loc 1 2445 0
	movq	%rax, (%r14,%rdx,8)
	.loc 1 2447 0
	js	.L645
	movq	(%rsp), %rbx
	jmp	.L644
.L645:
	.loc 1 2450 0
	movl	%ebp, 12(%rsp)
.LBE68:
.LBE67:
	.loc 1 2471 0
	movq	%r13, %rdi
	call	strlen
	.loc 1 2472 0
	testl	%eax, %eax
	.loc 1 2471 0
	movl	%eax, %ebx
	.loc 1 2472 0
	jle	.L653
	call	__ctype_b_loc
	movslq	%ebx,%rdx
	movq	(%rax), %rax
	movsbq	-1(%rdx,%r13),%rdx
	testb	$32, 1(%rax,%rdx,2)
	je	.L653
	.loc 1 2473 0
	movl	12(%rsp), %eax
	cmpl	$15, %eax
	jle	.L742
.L643:
	.loc 1 2535 0
	addq	$4392, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L742:
	.loc 1 2475 0
	leal	1(%rax), %r12d
	movslq	%eax,%rbx
	movl	$.LC12, %edi
	movl	%r12d, 12(%rsp)
	call	qemu_strdup
	movq	%rax, 4256(%rsp,%rbx,8)
.L653:
	.loc 1 2477 0
	movl	12(%rsp), %r12d
	cmpl	$1, %r12d
	jle	.L743
	.loc 1 2489 0
	cmpq	$0, term_cmds(%rip)
	movl	$term_cmds, %ebx
	je	.L643
.L744:
	.loc 1 2490 0
	movq	4256(%rsp), %rdi
	movq	(%rbx), %rsi
	call	compare_cmd
	testl	%eax, %eax
	jne	.L667
	.loc 1 2489 0
	addq	$40, %rbx
	cmpq	$0, (%rbx)
	jne	.L744
	.loc 1 2535 0
	addq	$4392, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L743:
	.loc 1 2480 0
	testl	%r12d, %r12d
	movl	$.LC12, %ebp
	cmovne	4256(%rsp), %rbp
	.loc 1 2484 0
	movl	$term_cmds, %ebx
	.loc 1 2483 0
	movq	%rbp, %rdi
	call	strlen
	.loc 1 2484 0
	cmpq	$0, term_cmds(%rip)
	.loc 1 2483 0
	movl	%eax, completion_index(%rip)
	.loc 1 2484 0
	jne	.L661
.L662:
	.loc 1 2533 0
	xorl	%ebp, %ebp
	cmpl	%r12d, %ebp
	jge	.L643
.L745:
	.loc 1 2534 0
	movslq	%ebp,%rax
	.loc 1 2533 0
	incl	%ebp
	.loc 1 2534 0
	movq	4256(%rsp,%rax,8), %rdi
	call	qemu_free
	.loc 1 2533 0
	cmpl	12(%rsp), %ebp
	jl	.L745
	.loc 1 2535 0
	addq	$4392, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L661:
	.loc 1 2485 0
	movq	(%rbx), %rsi
	movq	%rbp, %rdi
	.loc 1 2484 0
	addq	$40, %rbx
	.loc 1 2485 0
	call	cmd_completion
	.loc 1 2484 0
	cmpq	$0, (%rbx)
	jne	.L661
.L732:
	movl	12(%rsp), %r12d
	jmp	.L662
.L667:
	.loc 1 2496 0
	movl	12(%rsp), %r12d
	xorl	%ebp, %ebp
	.loc 1 2495 0
	movq	8(%rbx), %rax
	.loc 1 2496 0
	leal	-2(%r12), %edx
	cmpl	$0, %edx
	jle	.L731
	movzbl	(%rax), %ecx
.L676:
	.loc 1 2497 0
	testb	%cl, %cl
	je	.L671
.L737:
	.loc 1 2498 0
	incq	%rax
	.loc 1 2500 0
	movzbl	(%rax), %ecx
	cmpb	$63, %cl
	je	.L737
.L671:
	.loc 1 2496 0
	incl	%ebp
	cmpl	%ebp, %edx
	jg	.L676
.L724:
	.loc 1 2503 0
	movslq	%r12d,%rax
	movq	4248(%rsp,%rax,8), %r13
	.loc 1 2504 0
	movsbl	%cl,%eax
	cmpl	$70, %eax
	je	.L678
	jg	.L714
	cmpl	$66, %eax
	jne	.L662
	.loc 1 2512 0
	movq	%r13, %rdi
	.p2align 4,,7
	call	strlen
	.loc 1 2513 0
	movq	%r13, %rsi
	movl	$block_completion_it, %edi
	.loc 1 2512 0
	movl	%eax, completion_index(%rip)
	.loc 1 2513 0
	call	bdrv_iterate
	movl	12(%rsp), %r12d
	jmp	.L662
.L678:
	.loc 1 2507 0
	movq	%r13, %rdi
	call	strlen
.LBB69:
.LBB70:
	.loc 1 2378 0
	movl	$47, %esi
.LBE70:
.LBE69:
	.loc 1 2507 0
	movl	%eax, completion_index(%rip)
.LBB71:
.LBB72:
	.loc 1 2378 0
	movq	%r13, %rdi
	call	strrchr
	.loc 1 2379 0
	testq	%rax, %rax
	.loc 1 2378 0
	movq	%rax, %rbp
	.loc 1 2379 0
	je	.L746
	.loc 1 2384 0
	subl	%r13d, %eax
	.loc 1 2385 0
	leaq	2208(%rsp), %r14
	movq	%r13, %rsi
	.loc 1 2384 0
	leal	1(%rax), %r12d
	.loc 1 2385 0
	movq	%r14, %rdi
	movslq	%r12d,%rbx
	movq	%rbx, %rdx
	call	memcpy
	.loc 1 2386 0
	cmpl	$1023, %r12d
	jbe	.L681
	.loc 1 2387 0
	movl	$1023, %r12d
	movl	$1023, %ebx
.L681:
	.loc 1 2389 0
	leaq	160(%rsp), %r15
	leaq	1(%rbp), %rdx
	movl	$1024, %esi
	.loc 1 2388 0
	movb	$0, 2208(%rsp,%rbx)
	.loc 1 2389 0
	movq	%r15, %rdi
	call	pstrcpy
.L680:
	.loc 1 2394 0
	movq	%r14, %rdi
	movslq	%r12d,%r14
	leaq	1184(%rsp), %r12
	call	opendir
	.loc 1 2395 0
	testq	%rax, %rax
	.loc 1 2394 0
	movq	%rax, %rbp
	.loc 1 2395 0
	je	.L732
.L739:
.LBB73:
	.loc 1 2399 0
	movq	%rbp, %rdi
	call	readdir64
	.loc 1 2400 0
	testq	%rax, %rax
	je	.L685
	.loc 1 2402 0
	leaq	19(%rax), %rbx
	xorl	%edx, %edx
	movq	%r15, %rsi
	movq	%rbx, %rdi
	call	strstart
	testl	%eax, %eax
	je	.L739
	.loc 1 2403 0
	movq	%r14, %rdx
	movq	%r13, %rsi
	movq	%r12, %rdi
	call	memcpy
	.loc 1 2404 0
	leaq	(%r12,%r14), %rdi
	movq	%rbx, %rsi
	call	strcpy
.LBB74:
.LBB75:
	.file 4 "/usr/include/sys/stat.h"
	.loc 4 455 0
	leaq	16(%rsp), %rdx
	movq	%r12, %rsi
	movl	$1, %edi
	call	__xstat64
.LBE75:
.LBE74:
	.loc 1 2409 0
	movl	40(%rsp), %eax
	andl	$61440, %eax
	cmpl	$16384, %eax
	jne	.L689
	.loc 1 2410 0
	movq	%r12, %rdi
	call	strlen
	movw	$47, 1184(%rsp,%rax)
.L689:
	.loc 1 2411 0
	movq	%r12, %rdi
	call	add_completion
	jmp	.L739
.L714:
.LBE73:
.LBE72:
.LBE71:
	.loc 1 2504 0
	cmpl	$115, %eax
	jne	.L662
.LBB76:
	.loc 1 2517 0
	movq	(%rbx), %r8
	movl	$.LC8, %edi
	movl	$5, %ecx
	cld
	movq	%r8, %rsi
.LBE76:
	repz
	cmpsb
	jne	.L692
	.loc 1 2518 0
	movq	%r13, %rdi
	.loc 1 2519 0
	movl	$info_cmds, %ebx
	.loc 1 2518 0
	call	strlen
	.loc 1 2519 0
	cmpq	$0, info_cmds(%rip)
	.loc 1 2518 0
	movl	%eax, completion_index(%rip)
	.loc 1 2519 0
	je	.L662
.L701:
	.loc 1 2520 0
	movq	(%rbx), %rsi
	movq	%r13, %rdi
	.loc 1 2519 0
	addq	$40, %rbx
	.loc 1 2520 0
	call	cmd_completion
	.loc 1 2519 0
	cmpq	$0, (%rbx)
	jne	.L701
	movl	12(%rsp), %r12d
	jmp	.L662
	.p2align 4,,7
.L685:
.LBB77:
.LBB78:
	.loc 1 2414 0
	movq	%rbp, %rdi
	call	closedir
	movl	12(%rsp), %r12d
	jmp	.L662
.L731:
	movzbl	(%rax), %ecx
	jmp	.L724
.L746:
	.loc 1 2381 0
	leaq	160(%rsp), %r15
	leaq	2208(%rsp), %r14
	movq	%r13, %rdx
	movl	$1024, %esi
	.loc 1 2380 0
	xorl	%r12d, %r12d
	.loc 1 2381 0
	movq	%r15, %rdi
	call	pstrcpy
	.loc 1 2382 0
	movw	$46, 2208(%rsp)
	jmp	.L680
.L692:
.LBE78:
.LBE77:
.LBB79:
	.loc 1 2522 0
	cld
	movl	$.LC57, %edi
	movl	$8, %ecx
	movq	%r8, %rsi
.LBE79:
	repz
	cmpsb
	jne	.L662
	.loc 1 2523 0
	movq	%r13, %rdi
	.loc 1 2524 0
	movl	$key_defs, %ebx
	.loc 1 2523 0
	call	strlen
	.loc 1 2524 0
	movq	key_defs+8(%rip), %rsi
	.loc 1 2523 0
	movl	%eax, completion_index(%rip)
	.loc 1 2524 0
	testq	%rsi, %rsi
	je	.L662
.L712:
	addq	$16, %rbx
	.loc 1 2525 0
	movq	%r13, %rdi
	call	cmd_completion
	.loc 1 2524 0
	movq	8(%rbx), %rsi
	testq	%rsi, %rsi
	jne	.L712
	movl	12(%rsp), %r12d
	jmp	.L662
.LFE273:
	.size	readline_find_completion, .-readline_find_completion
	.p2align 4,,15
	.type	term_can_read, @function
term_can_read:
.LFB274:
	.loc 1 2538 0
	.loc 1 2540 0
	movl	$128, %eax
	ret
.LFE274:
	.size	term_can_read, .-term_can_read
	.p2align 4,,15
	.type	term_read, @function
term_read:
.LFB275:
	.loc 1 2543 0
	pushq	%r12
.LCFI137:
	movl	%edx, %r12d
	pushq	%rbp
.LCFI138:
	.loc 1 2545 0
	xorl	%ebp, %ebp
	cmpl	%edx, %ebp
	.loc 1 2543 0
	pushq	%rbx
.LCFI139:
	.loc 1 2545 0
	jge	.L754
	movq	%rsi, %rbx
	.p2align 4,,7
.L752:
	.loc 1 2546 0
	movzbl	(%rbx), %edi
	.loc 1 2545 0
	incl	%ebp
	incq	%rbx
	.loc 1 2546 0
	call	readline_handle_byte
	.loc 1 2545 0
	cmpl	%r12d, %ebp
	jl	.L752
.L754:
	popq	%rbx
	popq	%rbp
	popq	%r12
	ret
.LFE275:
	.size	term_read, .-term_read
	.section	.rodata.str1.1
.LC325:
	.string	"(argos) "
	.text
	.p2align 4,,15
	.type	monitor_start_input, @function
monitor_start_input:
.LFB277:
	.loc 1 2558 0
	.loc 1 2559 0
	xorl	%ecx, %ecx
	movl	$monitor_handle_command1, %edx
	xorl	%esi, %esi
	movl	$.LC325, %edi
	jmp	readline_start
.LFE277:
	.size	monitor_start_input, .-monitor_start_input
	.section	.rodata.str1.1
.LC326:
	.string	"unknown command: '%s'\n"
.LC333:
	.string	"%s: unknown type '%c'\n"
.LC330:
	.string	"%s: too many arguments\n"
	.section	.rodata.str1.8
	.align 8
.LC328:
	.string	"%s: block device name expected\n"
	.section	.rodata.str1.1
.LC327:
	.string	"%s: filename expected\n"
.LC329:
	.string	"%s: string expected\n"
	.section	.rodata.str1.8
	.align 8
.LC335:
	.string	"unsupported number of arguments: %d\n"
	.align 8
.LC334:
	.string	"%s: extraneous characters at the end of line\n"
	.section	.rodata.str1.1
.LC331:
	.string	"invalid char in format: '%c'\n"
.LC332:
	.string	"%s: unsupported option -%c\n"
	.text
	.p2align 4,,15
	.type	monitor_handle_command1, @function
monitor_handle_command1:
.LFB276:
	.loc 1 2552 0
	pushq	%r15
.LCFI140:
	pushq	%r14
.LCFI141:
	pushq	%r13
.LCFI142:
	pushq	%r12
.LCFI143:
	pushq	%rbp
.LCFI144:
	movq	%rsi, %rbp
	pushq	%rbx
.LCFI145:
	subq	$1608, %rsp
.LCFI146:
.LBB80:
.LBB81:
	.loc 1 2054 0
	movq	%rsi, 56(%rsp)
	call	__ctype_b_loc
	movq	%rax, %rsi
	jmp	.L757
	.p2align 4,,7
.L759:
	.loc 1 2057 0
	incq	%rbp
	movq	%rbp, 56(%rsp)
.L757:
	movzbl	(%rbp), %ecx
	movq	(%rsi), %rax
	movq	%rbp, %r12
	movsbq	%cl,%rdx
	testb	$32, 1(%rax,%rdx,2)
	jne	.L759
	.loc 1 2058 0
	testb	%cl, %cl
	je	.L761
	jmp	.L762
	.p2align 4,,7
.L909:
	.loc 1 2062 0
	.p2align 4,,9
	call	__ctype_b_loc
	movq	(%rax), %rax
	movsbq	%bl,%rdx
	testb	$32, 1(%rax,%rdx,2)
	jne	.L763
	incq	%rbp
	movq	%rbp, 56(%rsp)
.L762:
	movzbl	(%rbp), %ebx
	testb	%bl, %bl
	setne	%dl
	xorl	%eax, %eax
	cmpb	$47, %bl
	setne	%al
	testl	%edx, %eax
	jne	.L909
.L763:
	.loc 1 2063 0
	movl	%ebp, %ebx
	.loc 1 2065 0
	movl	$255, %eax
	.loc 1 2066 0
	leaq	1344(%rsp), %r15
	.loc 1 2063 0
	subl	%r12d, %ebx
	.loc 1 2066 0
	movq	%r12, %rsi
	.loc 1 2070 0
	movl	$term_cmds, %r12d
	.loc 1 2065 0
	cmpl	$256, %ebx
	.loc 1 2066 0
	movq	%r15, %rdi
	.loc 1 2065 0
	cmovae	%eax, %ebx
	.loc 1 2066 0
	movslq	%ebx,%rbx
	movq	%rbx, %rdx
	call	memcpy
	.loc 1 2070 0
	cmpq	$0, term_cmds(%rip)
	.loc 1 2067 0
	movb	$0, 1344(%rsp,%rbx)
	.loc 1 2070 0
	je	.L890
	.p2align 4,,7
.L910:
	.loc 1 2071 0
	movq	(%r12), %rsi
	movq	%r15, %rdi
	call	compare_cmd
	testl	%eax, %eax
	jne	.L770
	.loc 1 2070 0
	addq	$40, %r12
	cmpq	$0, (%r12)
	jne	.L910
.L890:
	.loc 1 2074 0
	movq	%r15, %rsi
	movl	$.LC326, %edi
	xorl	%eax, %eax
	call	term_printf
.L761:
.LBE81:
.LBE80:
	.loc 1 2554 0
	call	monitor_start_input
	addq	$1608, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L770:
.LBB82:
.LBB83:
	.loc 1 2078 0
	xorl	%ebx, %ebx
	.p2align 4,,7
.L775:
	.loc 1 2079 0
	movslq	%ebx,%rax
	.loc 1 2078 0
	incl	%ebx
	cmpl	$15, %ebx
	.loc 1 2079 0
	movq	$0, 192(%rsp,%rax,8)
	.loc 1 2078 0
	jle	.L775
	.loc 1 2082 0
	movq	8(%r12), %r13
	.loc 1 2083 0
	xorl	%r14d, %r14d
.L900:
	.loc 1 2085 0
	movsbl	(%r13),%ebx
	.loc 1 2086 0
	testl	%ebx, %ebx
	je	.L777
	.loc 1 2089 0
	leal	-45(%rbx), %eax
	.loc 1 2088 0
	incq	%r13
	.loc 1 2089 0
	cmpl	$70, %eax
	ja	.L861
	mov	%eax, %eax
	jmp	*.L869(,%rax,8)
	.section	.rodata
	.align 8
	.align 4
.L869:
	.quad	.L859
	.quad	.L861
	.quad	.L801
	.quad	.L861
	.quad	.L861
	.quad	.L861
	.quad	.L861
	.quad	.L861
	.quad	.L861
	.quad	.L861
	.quad	.L861
	.quad	.L861
	.quad	.L861
	.quad	.L861
	.quad	.L861
	.quad	.L861
	.quad	.L861
	.quad	.L861
	.quad	.L861
	.quad	.L861
	.quad	.L861
	.quad	.L782
	.quad	.L861
	.quad	.L861
	.quad	.L861
	.quad	.L782
	.quad	.L861
	.quad	.L861
	.quad	.L861
	.quad	.L861
	.quad	.L861
	.quad	.L861
	.quad	.L861
	.quad	.L861
	.quad	.L861
	.quad	.L861
	.quad	.L861
	.quad	.L861
	.quad	.L861
	.quad	.L861
	.quad	.L861
	.quad	.L861
	.quad	.L861
	.quad	.L861
	.quad	.L861
	.quad	.L861
	.quad	.L861
	.quad	.L861
	.quad	.L861
	.quad	.L861
	.quad	.L861
	.quad	.L861
	.quad	.L861
	.quad	.L861
	.quad	.L861
	.quad	.L861
	.quad	.L861
	.quad	.L861
	.quad	.L861
	.quad	.L861
	.quad	.L836
	.quad	.L861
	.quad	.L861
	.quad	.L836
	.quad	.L861
	.quad	.L861
	.quad	.L861
	.quad	.L861
	.quad	.L861
	.quad	.L861
	.quad	.L782
	.text
.L861:
	.loc 1 2295 0
	movl	%ebx, %edx
	movq	%r15, %rsi
	movl	$.LC333, %edi
.L907:
.LBB84:
	.loc 1 2281 0
	xorl	%eax, %eax
	call	term_printf
.L794:
.LBE84:
	.loc 1 2338 0
	xorl	%ebx, %ebx
	.p2align 4,,7
.L888:
	.loc 1 2339 0
	movslq	%ebx,%rax
	.loc 1 2338 0
	incl	%ebx
	.loc 1 2339 0
	movq	192(%rsp,%rax,8), %rdi
	call	qemu_free
	.loc 1 2338 0
	cmpl	$15, %ebx
	jle	.L888
.LBE83:
.LBE82:
	.loc 1 2554 0
	call	monitor_start_input
	addq	$1608, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L782:
	movq	56(%rsp), %rbp
	call	__ctype_b_loc
	movq	%rax, %rsi
	jmp	.L783
.L785:
.LBB85:
.LBB86:
.LBB87:
	.loc 1 2098 0
	incq	%rbp
	movq	%rbp, 56(%rsp)
.L783:
	movzbl	(%rbp), %ecx
	movq	(%rsi), %rax
	movsbq	%cl,%rdx
	testb	$32, 1(%rax,%rdx,2)
	jne	.L785
	.loc 1 2099 0
	cmpb	$63, (%r13)
	jne	.L786
	.loc 1 2100 0
	incq	%r13
	.loc 1 2103 0
	xorl	%ebp, %ebp
	.loc 1 2101 0
	testb	%cl, %cl
	je	.L788
.L786:
	.loc 1 2107 0
	leaq	56(%rsp), %rdx
	leaq	320(%rsp), %rdi
	movl	$1024, %esi
	call	get_str
	.loc 1 2108 0
	testl	%eax, %eax
	js	.L911
	.loc 1 2122 0
	leaq	320(%rsp), %rcx
.L797:
	movl	(%rcx), %eax
	addq	$4, %rcx
	leal	-16843009(%rax), %edx
	notl	%eax
	andl	%eax, %edx
	andl	$-2139062144, %edx
	je	.L797
	movl	%edx, %eax
	shrl	$16, %eax
	testl	$32896, %edx
	cmove	%eax, %edx
	leaq	2(%rcx), %rax
	cmove	%rax, %rcx
	addb	%dl, %dl
	leaq	320(%rsp), %rax
	sbbq	$3, %rcx
	subq	%rax, %rcx
	leaq	1(%rcx), %rdi
	call	qemu_malloc
	.loc 1 2123 0
	leaq	320(%rsp), %rsi
	movq	%rax, %rdi
	.loc 1 2122 0
	movq	%rax, %rbp
	.loc 1 2123 0
	call	strcpy
	.loc 1 2124 0
	movslq	%r14d,%rax
	movq	%rbp, 192(%rsp,%rax,8)
.L788:
	.loc 1 2126 0
	cmpl	$15, %r14d
	jg	.L800
	.loc 1 2131 0
	movslq	%r14d,%rax
.LBE87:
.LBB88:
	.loc 1 2290 0
	incl	%r14d
.LBE88:
.LBB89:
	.loc 1 2131 0
	movq	%rbp, 64(%rsp,%rax,8)
	jmp	.L900
.L836:
	movq	56(%rsp), %rbp
	call	__ctype_b_loc
	movq	%rax, %rsi
	jmp	.L837
.L839:
.LBE89:
.LBB90:
	.loc 1 2220 0
	incq	%rbp
	movq	%rbp, 56(%rsp)
.L837:
	movzbl	(%rbp), %ecx
	movq	(%rsi), %rax
	movsbq	%cl,%rdx
	testb	$32, 1(%rax,%rdx,2)
	jne	.L839
	.loc 1 2221 0
	movzbl	(%r13), %esi
	cmpb	$63, %sil
	sete	%dl
	cmpb	$46, %sil
	sete	%al
	orl	%edx, %eax
	testb	$1, %al
	je	.L840
	.loc 1 2222 0
	cmpb	$63, %sil
	je	.L912
	.loc 1 2234 0
	xorl	%esi, %esi
	.loc 1 2228 0
	cmpb	$46, %cl
	je	.L913
.L844:
	.loc 1 2237 0
	incq	%r13
	.loc 1 2238 0
	cmpl	$15, %r14d
	jg	.L800
	.loc 1 2240 0
	movslq	%r14d,%rdx
	movslq	%esi,%rax
	incl	%r14d
	.loc 1 2241 0
	testl	%esi, %esi
	.loc 1 2240 0
	movq	%rax, 64(%rsp,%rdx,8)
	.loc 1 2241 0
	jne	.L840
	.loc 1 2242 0
	cmpl	$15, %r14d
	jg	.L800
	.loc 1 2244 0
	movq	$-1, 48(%rsp)
.L853:
	.loc 1 2251 0
	cmpl	$105, %ebx
	je	.L914
	.loc 1 2256 0
	leal	1(%r14), %esi
	cmpl	$15, %esi
	jg	.L800
	.loc 1 2259 0
	mov	52(%rsp), %edx
	movslq	%r14d,%rax
	movl	%esi, %r14d
.LBE90:
.LBB91:
	.loc 1 2290 0
	incl	%r14d
.LBE91:
.LBB92:
	.loc 1 2259 0
	movq	%rdx, 64(%rsp,%rax,8)
	.loc 1 2263 0
	mov	48(%rsp), %ecx
	movslq	%esi,%rax
	movq	%rcx, 64(%rsp,%rax,8)
	jmp	.L900
.L801:
	movq	56(%rsp), %rbp
	call	__ctype_b_loc
	movq	%rax, %rsi
	jmp	.L802
.L804:
.LBE92:
.LBB93:
	.loc 1 2139 0
	incq	%rbp
	movq	%rbp, 56(%rsp)
.L802:
	movzbl	(%rbp), %ecx
	movq	(%rsi), %rax
	movq	%rbp, %rbx
	movsbq	%cl,%rdx
	testb	$32, 1(%rax,%rdx,2)
	jne	.L804
	.loc 1 2140 0
	cmpb	$47, %cl
	je	.L915
	.loc 1 2200 0
	movl	default_fmt_format(%rip), %r8d
	.loc 1 2202 0
	movl	$-1, %ebx
	.loc 1 2199 0
	movl	$1, 44(%rsp)
	.loc 1 2202 0
	cmpl	$105, %r8d
	cmovne	default_fmt_size(%rip), %ebx
.L831:
	.loc 1 2207 0
	leal	3(%r14), %eax
	cmpl	$16, %eax
	jg	.L800
	.loc 1 2209 0
	movslq	44(%rsp),%rax
	movslq	%r14d,%rdx
	incl	%r14d
	movq	%rax, 64(%rsp,%rdx,8)
	.loc 1 2210 0
	movslq	%r14d,%rdx
	movslq	%r8d,%rax
	incl	%r14d
	movq	%rax, 64(%rsp,%rdx,8)
	.loc 1 2211 0
	movslq	%ebx,%rax
	movslq	%r14d,%rdx
.LBE93:
.LBB94:
	.loc 1 2290 0
	movq	%rax, 64(%rsp,%rdx,8)
.L917:
	incl	%r14d
	jmp	.L900
.L859:
	.loc 1 2272 0
	movsbl	(%r13),%ebx
	incq	%r13
	.loc 1 2273 0
	testl	%ebx, %ebx
	je	.L861
	movq	56(%rsp), %rbp
	jmp	.L862
.L864:
	.loc 1 2276 0
	incq	%rbp
	movq	%rbp, 56(%rsp)
.L862:
	call	__ctype_b_loc
	movzbl	(%rbp), %ecx
	movq	(%rax), %rax
	movq	%rbp, %rsi
	movsbq	%cl,%rdx
	testb	$32, 1(%rax,%rdx,2)
	jne	.L864
	.loc 1 2277 0
	xorl	%eax, %eax
	.loc 1 2278 0
	cmpb	$45, %cl
	je	.L916
.L865:
	.loc 1 2288 0
	cmpl	$15, %r14d
	jg	.L800
	.loc 1 2290 0
	movslq	%r14d,%rdx
	cltq
	movq	%rax, 64(%rsp,%rdx,8)
	jmp	.L917
.L840:
.LBE94:
.LBB95:
	.loc 1 2248 0
	leaq	56(%rsp), %rsi
	leaq	48(%rsp), %rdi
	call	get_expr
	testl	%eax, %eax
	je	.L853
	jmp	.L794
	.p2align 4,,7
.L916:
.LBE95:
.LBB96:
	.loc 1 2279 0
	incq	%rbp
	movq	%rbp, 56(%rsp)
	.loc 1 2280 0
	movsbl	1(%rsi),%edx
	cmpl	%ebx, %edx
	jne	.L895
	.loc 1 2285 0
	leaq	2(%rsi), %rbp
	.loc 1 2286 0
	movb	$1, %al
	.loc 1 2285 0
	movq	%rbp, 56(%rsp)
	jmp	.L865
.L914:
.LBE96:
.LBB97:
	.loc 1 2252 0
	cmpl	$15, %r14d
	jg	.L800
	.loc 1 2254 0
	movq	48(%rsp), %rax
	movslq	%r14d,%rdx
.LBE97:
.LBB98:
	.loc 1 2290 0
	movq	%rax, 64(%rsp,%rdx,8)
	jmp	.L917
.L912:
.LBE98:
.LBB99:
	.loc 1 2224 0
	xorl	%esi, %esi
	testb	%cl, %cl
	setne	%sil
	jmp	.L844
.L915:
.LBE99:
.LBB100:
	.loc 1 2142 0
	incq	%rbp
	.loc 1 2143 0
	movl	$1, 44(%rsp)
	.loc 1 2142 0
	movq	%rbp, 56(%rsp)
	.loc 1 2144 0
	call	__ctype_b_loc
	movq	%rax, 32(%rsp)
	movsbq	1(%rbx),%rdx
	movq	(%rax), %rax
	testb	$8, 1(%rax,%rdx,2)
	jne	.L918
.L806:
	.loc 1 2151 0
	movl	$-1, %ebx
	.loc 1 2152 0
	movl	%ebx, %r8d
.L901:
	.loc 1 2154 0
	movsbl	(%rbp),%eax
	subl	$76, %eax
	cmpl	$44, %eax
	ja	.L825
	mov	%eax, %eax
	jmp	*.L826(,%rax,8)
	.section	.rodata
	.align 8
	.align 4
.L826:
	.quad	.L823
	.quad	.L825
	.quad	.L825
	.quad	.L825
	.quad	.L825
	.quad	.L825
	.quad	.L825
	.quad	.L825
	.quad	.L825
	.quad	.L825
	.quad	.L825
	.quad	.L825
	.quad	.L825
	.quad	.L825
	.quad	.L825
	.quad	.L825
	.quad	.L825
	.quad	.L825
	.quad	.L825
	.quad	.L825
	.quad	.L825
	.quad	.L825
	.quad	.L819
	.quad	.L818
	.quad	.L818
	.quad	.L825
	.quad	.L825
	.quad	.L823
	.quad	.L820
	.quad	.L818
	.quad	.L825
	.quad	.L825
	.quad	.L825
	.quad	.L825
	.quad	.L825
	.quad	.L818
	.quad	.L825
	.quad	.L825
	.quad	.L825
	.quad	.L825
	.quad	.L825
	.quad	.L818
	.quad	.L825
	.quad	.L821
	.quad	.L818
	.text
.L825:
	.loc 1 2185 0
	movzbl	(%rbp), %ebp
	testb	%bpl, %bpl
	je	.L827
	movl	%r8d, 24(%rsp)
	call	__ctype_b_loc
	movq	(%rax), %rax
	movsbq	%bpl,%rdx
	movl	24(%rsp), %r8d
	testb	$32, 1(%rax,%rdx,2)
	je	.L894
.L827:
	.loc 1 2190 0
	cmpl	$-1, %r8d
	cmovle	default_fmt_format(%rip), %r8d
	.loc 1 2191 0
	cmpl	$105, %r8d
	je	.L829
	.loc 1 2194 0
	cmpl	$-1, %ebx
	cmovle	default_fmt_size(%rip), %ebx
.L829:
	.loc 1 2196 0
	movl	%ebx, default_fmt_size(%rip)
	.loc 1 2197 0
	movl	%r8d, default_fmt_format(%rip)
	jmp	.L831
.L818:
	.loc 1 2161 0
	movsbl	(%rbp),%r8d
.L904:
	.loc 1 2178 0
	incq	%rbp
	movq	%rbp, 56(%rsp)
	jmp	.L901
.L821:
	.loc 1 2172 0
	movl	$4, %ebx
	jmp	.L904
.L820:
	.loc 1 2168 0
	movl	$2, %ebx
	jmp	.L904
.L823:
	.loc 1 2177 0
	movl	$8, %ebx
	.p2align 4,,5
	jmp	.L904
.L819:
	.loc 1 2164 0
	movl	$1, %ebx
	.p2align 4,,5
	jmp	.L904
.L913:
.LBE100:
.LBB101:
	.loc 1 2229 0
	incq	%rbp
	movq	%rbp, 56(%rsp)
	call	__ctype_b_loc
	movq	%rax, %rcx
	jmp	.L846
.L848:
	.loc 1 2231 0
	incq	%rbp
	movq	%rbp, 56(%rsp)
.L846:
	movsbq	(%rbp),%rdx
	movq	(%rcx), %rax
	testb	$32, 1(%rax,%rdx,2)
	jne	.L848
	.loc 1 2232 0
	movl	$1, %esi
	jmp	.L844
.L918:
.LBE101:
.LBB102:
	.loc 1 2145 0
	movl	$0, 44(%rsp)
	call	__ctype_b_loc
	movq	32(%rsp), %rsi
	jmp	.L807
.L809:
	.loc 1 2147 0
	movl	44(%rsp), %edx
	movl	$10, %ebx
	movsbl	%cl,%eax
	.loc 1 2148 0
	incq	%rbp
	movq	%rbp, 56(%rsp)
	.loc 1 2147 0
	imull	%ebx, %edx
	leal	-48(%rdx,%rax), %edx
	movl	%edx, 44(%rsp)
.L807:
	.loc 1 2148 0
	movzbl	(%rbp), %ecx
	movq	(%rsi), %rax
	movsbq	%cl,%rdx
	testb	$8, 1(%rax,%rdx,2)
	jne	.L809
	jmp	.L806
.L800:
.LBE102:
.LBB103:
	.loc 1 2128 0
	movq	%r15, %rsi
	movl	$.LC330, %edi
.L908:
.LBE103:
	.loc 1 2303 0
	xorl	%eax, %eax
	call	term_printf
	jmp	.L794
.L777:
	movq	56(%rsp), %rbp
	call	__ctype_b_loc
	movq	%rax, %rsi
	.p2align 4,,3
	jmp	.L870
.L872:
	.loc 1 2301 0
	incq	%rbp
	movq	%rbp, 56(%rsp)
.L870:
	movzbl	(%rbp), %ecx
	movq	(%rsi), %rax
	movsbq	%cl,%rdx
	testb	$32, 1(%rax,%rdx,2)
	jne	.L872
	.loc 1 2302 0
	testb	%cl, %cl
	jne	.L919
	.loc 1 2308 0
	cmpl	$7, %r14d
	ja	.L883
	mov	%r14d, %eax
	.p2align 4,,5
	jmp	*.L884(,%rax,8)
	.section	.rodata
	.align 8
	.align 4
.L884:
	.quad	.L875
	.quad	.L876
	.quad	.L877
	.quad	.L878
	.quad	.L879
	.quad	.L880
	.quad	.L881
	.quad	.L882
	.text
.L911:
.LBB104:
	.loc 1 2109 0
	cmpl	$66, %ebx
	.loc 1 2114 0
	movq	%r15, %rsi
	movl	$.LC328, %edi
	.loc 1 2109 0
	je	.L908
	cmpl	$70, %ebx
	.loc 1 2111 0
	movq	%r15, %rsi
	movl	$.LC327, %edi
	.loc 1 2109 0
	je	.L908
	.loc 1 2117 0
	movq	%r15, %rsi
	movl	$.LC329, %edi
	jmp	.L908
.L882:
.LBE104:
	.loc 1 2331 0
	movq	112(%rsp), %rax
	movq	88(%rsp), %rcx
	movq	80(%rsp), %rdx
	movq	72(%rsp), %rsi
	movq	64(%rsp), %rdi
	movq	104(%rsp), %r9
	movq	96(%rsp), %r8
	movq	%rax, (%rsp)
	xorl	%eax, %eax
	call	*16(%r12)
	jmp	.L794
.L881:
	.loc 1 2328 0
	movq	88(%rsp), %rcx
	movq	80(%rsp), %rdx
	xorl	%eax, %eax
	movq	72(%rsp), %rsi
	movq	64(%rsp), %rdi
	movq	104(%rsp), %r9
	movq	96(%rsp), %r8
	call	*16(%r12)
	jmp	.L794
.L880:
	.loc 1 2325 0
	movq	88(%rsp), %rcx
	movq	80(%rsp), %rdx
	xorl	%eax, %eax
	movq	72(%rsp), %rsi
	movq	64(%rsp), %rdi
	movq	96(%rsp), %r8
	call	*16(%r12)
	jmp	.L794
.L879:
	.loc 1 2322 0
	movq	88(%rsp), %rcx
	movq	80(%rsp), %rdx
	xorl	%eax, %eax
	movq	72(%rsp), %rsi
	movq	64(%rsp), %rdi
	call	*16(%r12)
	jmp	.L794
.L878:
	.loc 1 2319 0
	movq	80(%rsp), %rdx
	movq	72(%rsp), %rsi
	xorl	%eax, %eax
	movq	64(%rsp), %rdi
	call	*16(%r12)
	jmp	.L794
.L877:
	.loc 1 2316 0
	movq	72(%rsp), %rsi
	movq	64(%rsp), %rdi
	xorl	%eax, %eax
	call	*16(%r12)
	.p2align 4,,3
	jmp	.L794
.L876:
	.loc 1 2313 0
	movq	64(%rsp), %rdi
	xorl	%eax, %eax
	call	*16(%r12)
	.p2align 4,,6
	jmp	.L794
.L875:
	.loc 1 2310 0
	xorl	%eax, %eax
	.p2align 4,,4
	call	*16(%r12)
	.p2align 4,,9
	jmp	.L794
.L883:
	.loc 1 2334 0
	movl	%r14d, %esi
	movl	$.LC335, %edi
.L906:
	xorl	%eax, %eax
	call	term_printf
	jmp	.L794
.L919:
	.loc 1 2303 0
	movq	%r15, %rsi
	movl	$.LC334, %edi
	jmp	.L908
.L894:
.LBB105:
	.loc 1 2186 0
	movsbl	%bpl,%esi
	movl	$.LC331, %edi
	jmp	.L906
.L895:
.LBE105:
.LBB106:
	.loc 1 2281 0
	movq	%r15, %rsi
	movl	$.LC332, %edi
	jmp	.L907
.LBE106:
.LBE86:
.LBE85:
.LFE276:
	.size	monitor_handle_command1, .-monitor_handle_command1
	.section	.rodata.str1.8
	.align 8
.LC336:
	.string	"ARGOS %s monitor - type 'help' for more information\n"
	.text
	.p2align 4,,15
	.type	term_event, @function
term_event:
.LFB278:
	.loc 1 2563 0
	subq	$8, %rsp
.LCFI147:
	.loc 1 2564 0
	cmpl	$2, %esi
	je	.L923
	.loc 1 2571 0
	addq	$8, %rsp
	ret
	.p2align 4,,7
.L923:
	.loc 1 2567 0
	movl	hide_banner(%rip), %eax
	testl	%eax, %eax
	je	.L924
.L922:
	.loc 1 2571 0
	addq	$8, %rsp
	.loc 1 2570 0
	jmp	monitor_start_input
.L924:
	.loc 1 2568 0
	movl	$.LC273, %esi
	movl	$.LC336, %edi
	xorl	%eax, %eax
	call	term_printf
	jmp	.L922
.LFE278:
	.size	term_event, .-term_event
	.p2align 4,,15
.globl monitor_init
	.type	monitor_init, @function
monitor_init:
.LFB279:
	.loc 1 2576 0
	subq	$8, %rsp
.LCFI148:
	.loc 1 2579 0
	movl	is_first_init(%rip), %eax
	testl	%eax, %eax
	je	.L926
	.loc 1 2580 0
	xorl	%edx, %edx
	.p2align 4,,7
.L930:
	.loc 1 2581 0
	movslq	%edx,%rax
	.loc 1 2580 0
	incl	%edx
	cmpl	$3, %edx
	.loc 1 2581 0
	movq	$0, monitor_hd(,%rax,8)
	.loc 1 2580 0
	jle	.L930
	.loc 1 2583 0
	movl	$0, is_first_init(%rip)
.L926:
	.loc 1 2585 0
	xorl	%edx, %edx
	.p2align 4,,7
.L935:
	.loc 1 2586 0
	movslq	%edx,%rax
	cmpq	$0, monitor_hd(,%rax,8)
	je	.L940
	.loc 1 2585 0
	incl	%edx
	cmpl	$3, %edx
	jle	.L935
.L932:
	.loc 1 2592 0
	xorl	%eax, %eax
	testl	%esi, %esi
	.loc 1 2594 0
	movl	$term_event, %ecx
	.loc 1 2592 0
	sete	%al
	.loc 1 2594 0
	movl	$term_read, %edx
	movl	$term_can_read, %esi
	xorl	%r8d, %r8d
	.loc 1 2592 0
	movl	%eax, hide_banner(%rip)
	.loc 1 2594 0
	call	qemu_chr_add_handlers
	.loc 1 2596 0
	xorl	%ecx, %ecx
	movl	$monitor_handle_command1, %edx
	xorl	%esi, %esi
	movl	$.LC12, %edi
	addq	$8, %rsp
	jmp	readline_start
.L940:
	.loc 1 2587 0
	movq	%rdi, monitor_hd(,%rax,8)
	jmp	.L932
.LFE279:
	.size	monitor_init, .-monitor_init
	.p2align 4,,15
	.type	monitor_readline_cb, @function
monitor_readline_cb:
.LFB280:
	.loc 1 2606 0
	subq	$8, %rsp
.LCFI149:
	.loc 1 2607 0
	movq	%rsi, %rdx
	movq	monitor_readline_buf(%rip), %rdi
	movl	monitor_readline_buf_size(%rip), %esi
	call	pstrcpy
	.loc 1 2608 0
	movl	$0, monitor_readline_started(%rip)
	addq	$8, %rsp
	ret
.LFE280:
	.size	monitor_readline_cb, .-monitor_readline_cb
	.p2align 4,,15
.globl monitor_readline
	.type	monitor_readline, @function
monitor_readline:
.LFB281:
	.loc 1 2613 0
	movq	%rbp, -32(%rsp)
.LCFI150:
	movq	%r12, -24(%rsp)
.LCFI151:
	movl	%esi, %ebp
	movq	%r13, -16(%rsp)
.LCFI152:
	movq	%r14, -8(%rsp)
.LCFI153:
	movq	%rdi, %r12
	movq	%rbx, -40(%rsp)
.LCFI154:
	subq	$40, %rsp
.LCFI155:
	.loc 1 2616 0
	testl	%esi, %esi
	.loc 1 2613 0
	movq	%rdx, %r13
	movl	%ecx, %r14d
	.loc 1 2616 0
	je	.L943
	.loc 1 2617 0
	xorl	%ebx, %ebx
	.p2align 4,,7
.L948:
	.loc 1 2618 0
	movslq	%ebx,%rax
	movq	monitor_hd(,%rax,8), %rdi
	testq	%rdi, %rdi
	je	.L946
	movl	88(%rdi), %eax
	testl	%eax, %eax
	je	.L955
.L946:
	.loc 1 2617 0
	incl	%ebx
	cmpl	$3, %ebx
	jle	.L948
.L943:
	.loc 1 2621 0
	xorl	%ecx, %ecx
	movl	$monitor_readline_cb, %edx
	movl	%ebp, %esi
	movq	%r12, %rdi
	call	readline_start
	.loc 1 2622 0
	movq	%r13, monitor_readline_buf(%rip)
	.loc 1 2623 0
	movl	%r14d, monitor_readline_buf_size(%rip)
	.loc 1 2624 0
	movl	$1, monitor_readline_started(%rip)
	.p2align 4,,7
.L951:
	.loc 1 2626 0
	movl	$10, %edi
	call	main_loop_wait
	movl	monitor_readline_started(%rip), %eax
	testl	%eax, %eax
	jne	.L951
	movq	(%rsp), %rbx
	movq	8(%rsp), %rbp
	movq	16(%rsp), %r12
	movq	24(%rsp), %r13
	movq	32(%rsp), %r14
	addq	$40, %rsp
	ret
.L955:
	.loc 1 2619 0
	movl	$1, %esi
	call	qemu_chr_send_event
	jmp	.L946
.LFE281:
	.size	monitor_readline, .-monitor_readline
	.section	.rodata.str1.1
.LC337:
	.string	"passwd"
.LC338:
	.string	"password"
.LC339:
	.string	"Password: "
	.section	.rodata.str1.8
	.align 8
.LC340:
	.string	"could not set VNC server password\n"
	.align 8
.LC341:
	.string	"could not start VNC server on %s\n"
	.text
	.p2align 4,,15
	.type	do_change, @function
do_change:
.LFB228:
	.loc 1 439 0
	pushq	%rbp
.LCFI156:
	movq	%rsi, %rbp
	pushq	%rbx
.LCFI157:
	subq	$24, %rsp
.LCFI158:
.LBB107:
.LBB108:
	.loc 1 440 0
	movzbl	(%rdi), %eax
	subl	$118, %eax
	jne	.L960
	movzbl	1(%rdi), %eax
	subl	$110, %eax
	je	.L984
	.p2align 4,,7
.L960:
.LBE108:
.LBE107:
	testl	%eax, %eax
	jne	.L957
.L985:
.LBB109:
.LBB110:
.LBB111:
	.loc 1 425 0
	cld
	movl	$.LC337, %edi
	movl	$7, %ecx
	movq	%rbp, %rsi
.LBE111:
	repz
	cmpsb
	je	.L964
.LBB112:
	.loc 1 426 0
	movl	$.LC338, %edi
	movl	$9, %ecx
	movq	%rbp, %rsi
.LBE112:
	repz
	cmpsb
	jne	.L963
.L964:
.LBB113:
	.loc 1 428 0
	movl	$8, %ecx
	movq	%rsp, %rdx
	movl	$1, %esi
	movl	$.LC339, %edi
	call	monitor_readline
	.loc 1 430 0
	xorl	%edi, %edi
	movq	%rsp, %rsi
	.loc 1 429 0
	movb	$0, 8(%rsp)
	.loc 1 430 0
	call	vnc_display_password
	testl	%eax, %eax
	.loc 1 431 0
	movl	$.LC340, %edi
	.loc 1 430 0
	js	.L983
.L956:
.LBE113:
.LBE110:
.LBE109:
	.loc 1 445 0
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.p2align 4,,7
.L984:
.LBB114:
.LBB115:
	.loc 1 440 0
	movzbl	2(%rdi), %eax
	subl	$99, %eax
	jne	.L960
	movzbl	3(%rdi), %eax
.LBE115:
.LBE114:
	testl	%eax, %eax
	je	.L985
	.p2align 4,,7
.L957:
.LBB116:
.LBB117:
	.loc 1 412 0
	call	bdrv_find
	.loc 1 413 0
	testq	%rax, %rax
	.loc 1 412 0
	movq	%rax, %rbx
	.loc 1 413 0
	je	.L986
	.loc 1 417 0
	xorl	%esi, %esi
	movq	%rax, %rdi
	call	eject_device
	testl	%eax, %eax
	js	.L956
	.loc 1 419 0
	movq	%rbp, %rsi
	movq	%rbx, %rdi
	xorl	%edx, %edx
	call	bdrv_open
	.loc 1 420 0
	movq	%rbp, %rsi
	movq	%rbx, %rdi
	call	qemu_key_check
.LBE117:
.LBE116:
	.loc 1 445 0
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.p2align 4,,7
.L963:
.LBB118:
.LBB119:
	.loc 1 433 0
	xorl	%edi, %edi
	movq	%rbp, %rsi
	call	vnc_display_open
	testl	%eax, %eax
	jns	.L956
	.loc 1 434 0
	movq	%rbp, %rsi
	movl	$.LC341, %edi
	xorl	%eax, %eax
	call	term_printf
	jmp	.L956
.L986:
.LBE119:
.LBE118:
.LBB120:
.LBB121:
	.loc 1 414 0
	movl	$.LC283, %edi
.L983:
	xorl	%eax, %eax
	call	term_printf
.LBE121:
.LBE120:
	.loc 1 445 0
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	ret
.LFE228:
	.size	do_change, .-do_change
	.comm	nb_drives,4,4
	.comm	drives_table,792,32
	.local	monitor_hd
	.comm	monitor_hd,32,32
	.local	hide_banner
	.comm	hide_banner,4,4
	.local	term_outbuf
	.comm	term_outbuf,1024,32
	.local	term_outbuf_index
	.comm	term_outbuf_index,4,4
	.local	mouse_button_state
	.comm	mouse_button_state,4,4
	.local	capture_head
	.comm	capture_head,8,8
	.local	pch
	.comm	pch,8,8
	.local	expr_env
	.comm	expr_env,200,32
	.local	monitor_readline_started
	.comm	monitor_readline_started,4,4
	.local	monitor_readline_buf
	.comm	monitor_readline_buf,8,8
	.local	monitor_readline_buf_size
	.comm	monitor_readline_buf_size,4,4
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
	.quad	.LFB200
	.quad	.LFE200-.LFB200
	.byte	0x4
	.long	.LCFI0-.LFB200
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE0:
.LSFDE2:
	.long	.LEFDE2-.LASFDE2
.LASFDE2:
	.long	.Lframe0
	.quad	.LFB201
	.quad	.LFE201-.LFB201
	.byte	0x4
	.long	.LCFI1-.LFB201
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE2:
.LSFDE4:
	.long	.LEFDE4-.LASFDE4
.LASFDE4:
	.long	.Lframe0
	.quad	.LFB202
	.quad	.LFE202-.LFB202
	.byte	0x4
	.long	.LCFI2-.LFB202
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI3-.LCFI2
	.byte	0xe
	.uleb128 0x1010
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.quad	.LFB203
	.quad	.LFE203-.LFB203
	.byte	0x4
	.long	.LCFI4-.LFB203
	.byte	0xe
	.uleb128 0xe0
	.align 8
.LEFDE6:
.LSFDE8:
	.long	.LEFDE8-.LASFDE8
.LASFDE8:
	.long	.Lframe0
	.quad	.LFB204
	.quad	.LFE204-.LFB204
	.byte	0x4
	.long	.LCFI5-.LFB204
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI6-.LCFI5
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI7-.LCFI6
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE8:
.LSFDE10:
	.long	.LEFDE10-.LASFDE10
.LASFDE10:
	.long	.Lframe0
	.quad	.LFB205
	.quad	.LFE205-.LFB205
	.byte	0x4
	.long	.LCFI8-.LFB205
	.byte	0xe
	.uleb128 0xe0
	.align 8
.LEFDE10:
.LSFDE12:
	.long	.LEFDE12-.LASFDE12
.LASFDE12:
	.long	.Lframe0
	.quad	.LFB206
	.quad	.LFE206-.LFB206
	.byte	0x4
	.long	.LCFI9-.LFB206
	.byte	0xe
	.uleb128 0x10
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI10-.LCFI9
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI11-.LCFI10
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 8
.LEFDE12:
.LSFDE14:
	.long	.LEFDE14-.LASFDE14
.LASFDE14:
	.long	.Lframe0
	.quad	.LFB207
	.quad	.LFE207-.LFB207
	.byte	0x4
	.long	.LCFI12-.LFB207
	.byte	0xe
	.uleb128 0x10
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI13-.LCFI12
	.byte	0xe
	.uleb128 0x18
	.byte	0x86
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI14-.LCFI13
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x4
	.align 8
.LEFDE14:
.LSFDE16:
	.long	.LEFDE16-.LASFDE16
.LASFDE16:
	.long	.Lframe0
	.quad	.LFB208
	.quad	.LFE208-.LFB208
	.byte	0x4
	.long	.LCFI15-.LFB208
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE16:
.LSFDE18:
	.long	.LEFDE18-.LASFDE18
.LASFDE18:
	.long	.Lframe0
	.quad	.LFB209
	.quad	.LFE209-.LFB209
	.align 8
.LEFDE18:
.LSFDE20:
	.long	.LEFDE20-.LASFDE20
.LASFDE20:
	.long	.Lframe0
	.quad	.LFB210
	.quad	.LFE210-.LFB210
	.byte	0x4
	.long	.LCFI16-.LFB210
	.byte	0xe
	.uleb128 0x10
	.byte	0x8d
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI17-.LCFI16
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI18-.LCFI17
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI19-.LCFI18
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI20-.LCFI19
	.byte	0xe
	.uleb128 0x30
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x8c
	.uleb128 0x3
	.align 8
.LEFDE20:
.LSFDE22:
	.long	.LEFDE22-.LASFDE22
.LASFDE22:
	.long	.Lframe0
	.quad	.LFB211
	.quad	.LFE211-.LFB211
	.byte	0x4
	.long	.LCFI21-.LFB211
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI22-.LCFI21
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI23-.LCFI22
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE22:
.LSFDE24:
	.long	.LEFDE24-.LASFDE24
.LASFDE24:
	.long	.Lframe0
	.quad	.LFB212
	.quad	.LFE212-.LFB212
	.align 8
.LEFDE24:
.LSFDE26:
	.long	.LEFDE26-.LASFDE26
.LASFDE26:
	.long	.Lframe0
	.quad	.LFB213
	.quad	.LFE213-.LFB213
	.align 8
.LEFDE26:
.LSFDE28:
	.long	.LEFDE28-.LASFDE28
.LASFDE28:
	.long	.Lframe0
	.quad	.LFB214
	.quad	.LFE214-.LFB214
	.align 8
.LEFDE28:
.LSFDE30:
	.long	.LEFDE30-.LASFDE30
.LASFDE30:
	.long	.Lframe0
	.quad	.LFB215
	.quad	.LFE215-.LFB215
	.align 8
.LEFDE30:
.LSFDE32:
	.long	.LEFDE32-.LASFDE32
.LASFDE32:
	.long	.Lframe0
	.quad	.LFB216
	.quad	.LFE216-.LFB216
	.align 8
.LEFDE32:
.LSFDE34:
	.long	.LEFDE34-.LASFDE34
.LASFDE34:
	.long	.Lframe0
	.quad	.LFB217
	.quad	.LFE217-.LFB217
	.align 8
.LEFDE34:
.LSFDE36:
	.long	.LEFDE36-.LASFDE36
.LASFDE36:
	.long	.Lframe0
	.quad	.LFB218
	.quad	.LFE218-.LFB218
	.byte	0x4
	.long	.LCFI24-.LFB218
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE36:
.LSFDE38:
	.long	.LEFDE38-.LASFDE38
.LASFDE38:
	.long	.Lframe0
	.quad	.LFB219
	.quad	.LFE219-.LFB219
	.byte	0x4
	.long	.LCFI25-.LFB219
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE38:
.LSFDE40:
	.long	.LEFDE40-.LASFDE40
.LASFDE40:
	.long	.Lframe0
	.quad	.LFB220
	.quad	.LFE220-.LFB220
	.byte	0x4
	.long	.LCFI26-.LFB220
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE40:
.LSFDE42:
	.long	.LEFDE42-.LASFDE42
.LASFDE42:
	.long	.Lframe0
	.quad	.LFB221
	.quad	.LFE221-.LFB221
	.align 8
.LEFDE42:
.LSFDE44:
	.long	.LEFDE44-.LASFDE44
.LASFDE44:
	.long	.Lframe0
	.quad	.LFB222
	.quad	.LFE222-.LFB222
	.byte	0x4
	.long	.LCFI27-.LFB222
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE44:
.LSFDE46:
	.long	.LEFDE46-.LASFDE46
.LASFDE46:
	.long	.Lframe0
	.quad	.LFB223
	.quad	.LFE223-.LFB223
	.byte	0x4
	.long	.LCFI28-.LFB223
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE46:
.LSFDE48:
	.long	.LEFDE48-.LASFDE48
.LASFDE48:
	.long	.Lframe0
	.quad	.LFB224
	.quad	.LFE224-.LFB224
	.byte	0x4
	.long	.LCFI31-.LFB224
	.byte	0xe
	.uleb128 0x20
	.byte	0x86
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE48:
.LSFDE50:
	.long	.LEFDE50-.LASFDE50
.LASFDE50:
	.long	.Lframe0
	.quad	.LFB225
	.quad	.LFE225-.LFB225
	.byte	0x4
	.long	.LCFI32-.LFB225
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE50:
.LSFDE52:
	.long	.LEFDE52-.LASFDE52
.LASFDE52:
	.long	.Lframe0
	.quad	.LFB229
	.quad	.LFE229-.LFB229
	.align 8
.LEFDE52:
.LSFDE54:
	.long	.LEFDE54-.LASFDE54
.LASFDE54:
	.long	.Lframe0
	.quad	.LFB230
	.quad	.LFE230-.LFB230
	.align 8
.LEFDE54:
.LSFDE56:
	.long	.LEFDE56-.LASFDE56
.LASFDE56:
	.long	.Lframe0
	.quad	.LFB231
	.quad	.LFE231-.LFB231
	.byte	0x4
	.long	.LCFI33-.LFB231
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE56:
.LSFDE58:
	.long	.LEFDE58-.LASFDE58
.LASFDE58:
	.long	.Lframe0
	.quad	.LFB232
	.quad	.LFE232-.LFB232
	.align 8
.LEFDE58:
.LSFDE60:
	.long	.LEFDE60-.LASFDE60
.LASFDE60:
	.long	.Lframe0
	.quad	.LFB233
	.quad	.LFE233-.LFB233
	.align 8
.LEFDE60:
.LSFDE62:
	.long	.LEFDE62-.LASFDE62
.LASFDE62:
	.long	.Lframe0
	.quad	.LFB234
	.quad	.LFE234-.LFB234
	.byte	0x4
	.long	.LCFI34-.LFB234
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE62:
.LSFDE64:
	.long	.LEFDE64-.LASFDE64
.LASFDE64:
	.long	.Lframe0
	.quad	.LFB235
	.quad	.LFE235-.LFB235
	.byte	0x4
	.long	.LCFI35-.LFB235
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE64:
.LSFDE66:
	.long	.LEFDE66-.LASFDE66
.LASFDE66:
	.long	.Lframe0
	.quad	.LFB236
	.quad	.LFE236-.LFB236
	.byte	0x4
	.long	.LCFI36-.LFB236
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI37-.LCFI36
	.byte	0xe
	.uleb128 0x18
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI38-.LCFI37
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI39-.LCFI38
	.byte	0xe
	.uleb128 0x28
	.byte	0x8c
	.uleb128 0x5
	.byte	0x8d
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI40-.LCFI39
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI41-.LCFI40
	.byte	0xe
	.uleb128 0x38
	.byte	0x83
	.uleb128 0x7
	.byte	0x86
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI42-.LCFI41
	.byte	0xe
	.uleb128 0x70
	.align 8
.LEFDE66:
.LSFDE68:
	.long	.LEFDE68-.LASFDE68
.LASFDE68:
	.long	.Lframe0
	.quad	.LFB237
	.quad	.LFE237-.LFB237
	.align 8
.LEFDE68:
.LSFDE70:
	.long	.LEFDE70-.LASFDE70
.LASFDE70:
	.long	.Lframe0
	.quad	.LFB238
	.quad	.LFE238-.LFB238
	.align 8
.LEFDE70:
.LSFDE72:
	.long	.LEFDE72-.LASFDE72
.LASFDE72:
	.long	.Lframe0
	.quad	.LFB239
	.quad	.LFE239-.LFB239
	.byte	0x4
	.long	.LCFI43-.LFB239
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE72:
.LSFDE74:
	.long	.LEFDE74-.LASFDE74
.LASFDE74:
	.long	.Lframe0
	.quad	.LFB240
	.quad	.LFE240-.LFB240
	.byte	0x4
	.long	.LCFI45-.LFB240
	.byte	0x86
	.uleb128 0x6
	.byte	0x83
	.uleb128 0x7
	.byte	0x4
	.long	.LCFI50-.LCFI45
	.byte	0xe
	.uleb128 0x440
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8d
	.uleb128 0x4
	.byte	0x8f
	.uleb128 0x2
	.byte	0x8c
	.uleb128 0x5
	.align 8
.LEFDE74:
.LSFDE76:
	.long	.LEFDE76-.LASFDE76
.LASFDE76:
	.long	.Lframe0
	.quad	.LFB241
	.quad	.LFE241-.LFB241
	.byte	0x4
	.long	.LCFI51-.LFB241
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI52-.LCFI51
	.byte	0xe
	.uleb128 0x18
	.byte	0x86
	.uleb128 0x3
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI53-.LCFI52
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI54-.LCFI53
	.byte	0xe
	.uleb128 0x30
	.align 8
.LEFDE76:
.LSFDE78:
	.long	.LEFDE78-.LASFDE78
.LASFDE78:
	.long	.Lframe0
	.quad	.LFB243
	.quad	.LFE243-.LFB243
	.byte	0x4
	.long	.LCFI55-.LFB243
	.byte	0xe
	.uleb128 0x10
	.byte	0x8d
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI56-.LCFI55
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI57-.LCFI56
	.byte	0xe
	.uleb128 0x20
	.byte	0x86
	.uleb128 0x4
	.byte	0x8c
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI58-.LCFI57
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI59-.LCFI58
	.byte	0xe
	.uleb128 0x60
	.byte	0x83
	.uleb128 0x5
	.align 8
.LEFDE78:
.LSFDE80:
	.long	.LEFDE80-.LASFDE80
.LASFDE80:
	.long	.Lframe0
	.quad	.LFB244
	.quad	.LFE244-.LFB244
	.byte	0x4
	.long	.LCFI61-.LFB244
	.byte	0x86
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI63-.LCFI61
	.byte	0xe
	.uleb128 0x20
	.byte	0x8c
	.uleb128 0x2
	.align 8
.LEFDE80:
.LSFDE82:
	.long	.LEFDE82-.LASFDE82
.LASFDE82:
	.long	.Lframe0
	.quad	.LFB245
	.quad	.LFE245-.LFB245
	.align 8
.LEFDE82:
.LSFDE84:
	.long	.LEFDE84-.LASFDE84
.LASFDE84:
	.long	.Lframe0
	.quad	.LFB246
	.quad	.LFE246-.LFB246
	.byte	0x4
	.long	.LCFI64-.LFB246
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI65-.LCFI64
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI66-.LCFI65
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE84:
.LSFDE86:
	.long	.LEFDE86-.LASFDE86
.LASFDE86:
	.long	.Lframe0
	.quad	.LFB247
	.quad	.LFE247-.LFB247
	.align 8
.LEFDE86:
.LSFDE88:
	.long	.LEFDE88-.LASFDE88
.LASFDE88:
	.long	.Lframe0
	.quad	.LFB248
	.quad	.LFE248-.LFB248
	.align 8
.LEFDE88:
.LSFDE90:
	.long	.LEFDE90-.LASFDE90
.LASFDE90:
	.long	.Lframe0
	.quad	.LFB249
	.quad	.LFE249-.LFB249
	.byte	0x4
	.long	.LCFI67-.LFB249
	.byte	0xe
	.uleb128 0x30
	.align 8
.LEFDE90:
.LSFDE92:
	.long	.LEFDE92-.LASFDE92
.LASFDE92:
	.long	.Lframe0
	.quad	.LFB250
	.quad	.LFE250-.LFB250
	.byte	0x4
	.long	.LCFI68-.LFB250
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI69-.LCFI68
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI70-.LCFI69
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI71-.LCFI70
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI72-.LCFI71
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI73-.LCFI72
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI74-.LCFI73
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
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8f
	.uleb128 0x2
	.align 8
.LEFDE92:
.LSFDE94:
	.long	.LEFDE94-.LASFDE94
.LASFDE94:
	.long	.Lframe0
	.quad	.LFB251
	.quad	.LFE251-.LFB251
	.byte	0x4
	.long	.LCFI76-.LFB251
	.byte	0x86
	.uleb128 0x4
	.byte	0x83
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI79-.LCFI76
	.byte	0xe
	.uleb128 0x30
	.byte	0x8d
	.uleb128 0x2
	.byte	0x8c
	.uleb128 0x3
	.align 8
.LEFDE94:
.LSFDE96:
	.long	.LEFDE96-.LASFDE96
.LASFDE96:
	.long	.Lframe0
	.quad	.LFB252
	.quad	.LFE252-.LFB252
	.byte	0x4
	.long	.LCFI80-.LFB252
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI81-.LCFI80
	.byte	0xe
	.uleb128 0x18
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
	.uleb128 0x50
	.byte	0x83
	.uleb128 0x7
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
	.align 8
.LEFDE96:
.LSFDE98:
	.long	.LEFDE98-.LASFDE98
.LASFDE98:
	.long	.Lframe0
	.quad	.LFB254
	.quad	.LFE254-.LFB254
	.align 8
.LEFDE98:
.LSFDE100:
	.long	.LEFDE100-.LASFDE100
.LASFDE100:
	.long	.Lframe0
	.quad	.LFB255
	.quad	.LFE255-.LFB255
	.byte	0x4
	.long	.LCFI87-.LFB255
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
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
	.align 8
.LEFDE100:
.LSFDE102:
	.long	.LEFDE102-.LASFDE102
.LASFDE102:
	.long	.Lframe0
	.quad	.LFB256
	.quad	.LFE256-.LFB256
	.byte	0x4
	.long	.LCFI90-.LFB256
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE102:
.LSFDE104:
	.long	.LEFDE104-.LASFDE104
.LASFDE104:
	.long	.Lframe0
	.quad	.LFB257
	.quad	.LFE257-.LFB257
	.byte	0x4
	.long	.LCFI92-.LFB257
	.byte	0x86
	.uleb128 0x6
	.byte	0x83
	.uleb128 0x7
	.byte	0x4
	.long	.LCFI94-.LCFI92
	.byte	0x8d
	.uleb128 0x4
	.byte	0x8c
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI97-.LCFI94
	.byte	0xe
	.uleb128 0x50
	.byte	0x8f
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x3
	.align 8
.LEFDE104:
.LSFDE106:
	.long	.LEFDE106-.LASFDE106
.LASFDE106:
	.long	.Lframe0
	.quad	.LFB258
	.quad	.LFE258-.LFB258
	.align 8
.LEFDE106:
.LSFDE108:
	.long	.LEFDE108-.LASFDE108
.LASFDE108:
	.long	.Lframe0
	.quad	.LFB259
	.quad	.LFE259-.LFB259
	.byte	0x4
	.long	.LCFI98-.LFB259
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE108:
.LSFDE110:
	.long	.LEFDE110-.LASFDE110
.LASFDE110:
	.long	.Lframe0
	.quad	.LFB261
	.quad	.LFE261-.LFB261
	.byte	0x4
	.long	.LCFI99-.LFB261
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE110:
.LSFDE112:
	.long	.LEFDE112-.LASFDE112
.LASFDE112:
	.long	.Lframe0
	.quad	.LFB264
	.quad	.LFE264-.LFB264
	.byte	0x4
	.long	.LCFI100-.LFB264
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI101-.LCFI100
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI102-.LCFI101
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x2
	.align 8
.LEFDE112:
.LSFDE114:
	.long	.LEFDE114-.LASFDE114
.LASFDE114:
	.long	.Lframe0
	.quad	.LFB265
	.quad	.LFE265-.LFB265
	.byte	0x4
	.long	.LCFI103-.LFB265
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI104-.LCFI103
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI105-.LCFI104
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x2
	.align 8
.LEFDE114:
.LSFDE116:
	.long	.LEFDE116-.LASFDE116
.LASFDE116:
	.long	.Lframe0
	.quad	.LFB262
	.quad	.LFE262-.LFB262
	.byte	0x4
	.long	.LCFI106-.LFB262
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI107-.LCFI106
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI108-.LCFI107
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI109-.LCFI108
	.byte	0xe
	.uleb128 0xb0
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.byte	0x8c
	.uleb128 0x2
	.align 8
.LEFDE116:
.LSFDE118:
	.long	.LEFDE118-.LASFDE118
.LASFDE118:
	.long	.Lframe0
	.quad	.LFB263
	.quad	.LFE263-.LFB263
	.byte	0x4
	.long	.LCFI110-.LFB263
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI111-.LCFI110
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI112-.LCFI111
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.byte	0x8c
	.uleb128 0x2
	.align 8
.LEFDE118:
.LSFDE120:
	.long	.LEFDE120-.LASFDE120
.LASFDE120:
	.long	.Lframe0
	.quad	.LFB266
	.quad	.LFE266-.LFB266
	.byte	0x4
	.long	.LCFI113-.LFB266
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE120:
.LSFDE122:
	.long	.LEFDE122-.LASFDE122
.LASFDE122:
	.long	.Lframe0
	.quad	.LFB267
	.quad	.LFE267-.LFB267
	.byte	0x4
	.long	.LCFI114-.LFB267
	.byte	0xe
	.uleb128 0x10
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI115-.LCFI114
	.byte	0xe
	.uleb128 0x18
	.byte	0x8e
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI116-.LCFI115
	.byte	0xe
	.uleb128 0x20
	.byte	0x8d
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI117-.LCFI116
	.byte	0xe
	.uleb128 0x28
	.byte	0x8c
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI118-.LCFI117
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI119-.LCFI118
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI120-.LCFI119
	.byte	0xe
	.uleb128 0x40
	.byte	0x83
	.uleb128 0x7
	.byte	0x86
	.uleb128 0x6
	.align 8
.LEFDE122:
.LSFDE124:
	.long	.LEFDE124-.LASFDE124
.LASFDE124:
	.long	.Lframe0
	.quad	.LFB269
	.quad	.LFE269-.LFB269
	.byte	0x4
	.long	.LCFI121-.LFB269
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI122-.LCFI121
	.byte	0xe
	.uleb128 0x18
	.byte	0x8d
	.uleb128 0x3
	.byte	0x8e
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI123-.LCFI122
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI124-.LCFI123
	.byte	0xe
	.uleb128 0x28
	.byte	0x86
	.uleb128 0x5
	.byte	0x8c
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI125-.LCFI124
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI126-.LCFI125
	.byte	0xe
	.uleb128 0xb0
	.byte	0x83
	.uleb128 0x6
	.align 8
.LEFDE124:
.LSFDE126:
	.long	.LEFDE126-.LASFDE126
.LASFDE126:
	.long	.Lframe0
	.quad	.LFB271
	.quad	.LFE271-.LFB271
	.byte	0x4
	.long	.LCFI129-.LFB271
	.byte	0xe
	.uleb128 0x20
	.byte	0x86
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE126:
.LSFDE128:
	.long	.LEFDE128-.LASFDE128
.LASFDE128:
	.long	.Lframe0
	.quad	.LFB273
	.quad	.LFE273-.LFB273
	.byte	0x4
	.long	.LCFI130-.LFB273
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI131-.LCFI130
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI132-.LCFI131
	.byte	0xe
	.uleb128 0x20
	.byte	0x8d
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI133-.LCFI132
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI134-.LCFI133
	.byte	0xe
	.uleb128 0x30
	.byte	0x86
	.uleb128 0x6
	.byte	0x8c
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI135-.LCFI134
	.byte	0xe
	.uleb128 0x38
	.byte	0x83
	.uleb128 0x7
	.byte	0x4
	.long	.LCFI136-.LCFI135
	.byte	0xe
	.uleb128 0x1160
	.align 8
.LEFDE128:
.LSFDE130:
	.long	.LEFDE130-.LASFDE130
.LASFDE130:
	.long	.Lframe0
	.quad	.LFB274
	.quad	.LFE274-.LFB274
	.align 8
.LEFDE130:
.LSFDE132:
	.long	.LEFDE132-.LASFDE132
.LASFDE132:
	.long	.Lframe0
	.quad	.LFB275
	.quad	.LFE275-.LFB275
	.byte	0x4
	.long	.LCFI137-.LFB275
	.byte	0xe
	.uleb128 0x10
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI138-.LCFI137
	.byte	0xe
	.uleb128 0x18
	.byte	0x86
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI139-.LCFI138
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x4
	.align 8
.LEFDE132:
.LSFDE134:
	.long	.LEFDE134-.LASFDE134
.LASFDE134:
	.long	.Lframe0
	.quad	.LFB277
	.quad	.LFE277-.LFB277
	.align 8
.LEFDE134:
.LSFDE136:
	.long	.LEFDE136-.LASFDE136
.LASFDE136:
	.long	.Lframe0
	.quad	.LFB276
	.quad	.LFE276-.LFB276
	.byte	0x4
	.long	.LCFI140-.LFB276
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI141-.LCFI140
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI142-.LCFI141
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI143-.LCFI142
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI144-.LCFI143
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
	.long	.LCFI145-.LCFI144
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI146-.LCFI145
	.byte	0xe
	.uleb128 0x680
	.byte	0x83
	.uleb128 0x7
	.align 8
.LEFDE136:
.LSFDE138:
	.long	.LEFDE138-.LASFDE138
.LASFDE138:
	.long	.Lframe0
	.quad	.LFB278
	.quad	.LFE278-.LFB278
	.byte	0x4
	.long	.LCFI147-.LFB278
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE138:
.LSFDE140:
	.long	.LEFDE140-.LASFDE140
.LASFDE140:
	.long	.Lframe0
	.quad	.LFB279
	.quad	.LFE279-.LFB279
	.byte	0x4
	.long	.LCFI148-.LFB279
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE140:
.LSFDE142:
	.long	.LEFDE142-.LASFDE142
.LASFDE142:
	.long	.Lframe0
	.quad	.LFB280
	.quad	.LFE280-.LFB280
	.byte	0x4
	.long	.LCFI149-.LFB280
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE142:
.LSFDE144:
	.long	.LEFDE144-.LASFDE144
.LASFDE144:
	.long	.Lframe0
	.quad	.LFB281
	.quad	.LFE281-.LFB281
	.byte	0x4
	.long	.LCFI151-.LFB281
	.byte	0x8c
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI155-.LCFI151
	.byte	0xe
	.uleb128 0x30
	.byte	0x83
	.uleb128 0x6
	.byte	0x8e
	.uleb128 0x2
	.byte	0x8d
	.uleb128 0x3
	.align 8
.LEFDE144:
.LSFDE146:
	.long	.LEFDE146-.LASFDE146
.LASFDE146:
	.long	.Lframe0
	.quad	.LFB228
	.quad	.LFE228-.LFB228
	.byte	0x4
	.long	.LCFI156-.LFB228
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI157-.LCFI156
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI158-.LCFI157
	.byte	0xe
	.uleb128 0x30
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE146:
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
	.quad	.LFB200
	.quad	.LFE200-.LFB200
	.byte	0x4
	.long	.LCFI0-.LFB200
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE1:
.LSFDE3:
	.long	.LEFDE3-.LASFDE3
.LASFDE3:
	.long	.LASFDE3-.Lframe1
	.quad	.LFB201
	.quad	.LFE201-.LFB201
	.byte	0x4
	.long	.LCFI1-.LFB201
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE3:
.LSFDE5:
	.long	.LEFDE5-.LASFDE5
.LASFDE5:
	.long	.LASFDE5-.Lframe1
	.quad	.LFB202
	.quad	.LFE202-.LFB202
	.byte	0x4
	.long	.LCFI2-.LFB202
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI3-.LCFI2
	.byte	0xe
	.uleb128 0x1010
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE5:
.LSFDE7:
	.long	.LEFDE7-.LASFDE7
.LASFDE7:
	.long	.LASFDE7-.Lframe1
	.quad	.LFB203
	.quad	.LFE203-.LFB203
	.byte	0x4
	.long	.LCFI4-.LFB203
	.byte	0xe
	.uleb128 0xe0
	.align 8
.LEFDE7:
.LSFDE9:
	.long	.LEFDE9-.LASFDE9
.LASFDE9:
	.long	.LASFDE9-.Lframe1
	.quad	.LFB204
	.quad	.LFE204-.LFB204
	.byte	0x4
	.long	.LCFI5-.LFB204
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI6-.LCFI5
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI7-.LCFI6
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE9:
.LSFDE11:
	.long	.LEFDE11-.LASFDE11
.LASFDE11:
	.long	.LASFDE11-.Lframe1
	.quad	.LFB205
	.quad	.LFE205-.LFB205
	.byte	0x4
	.long	.LCFI8-.LFB205
	.byte	0xe
	.uleb128 0xe0
	.align 8
.LEFDE11:
.LSFDE13:
	.long	.LEFDE13-.LASFDE13
.LASFDE13:
	.long	.LASFDE13-.Lframe1
	.quad	.LFB206
	.quad	.LFE206-.LFB206
	.byte	0x4
	.long	.LCFI9-.LFB206
	.byte	0xe
	.uleb128 0x10
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI10-.LCFI9
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI11-.LCFI10
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 8
.LEFDE13:
.LSFDE15:
	.long	.LEFDE15-.LASFDE15
.LASFDE15:
	.long	.LASFDE15-.Lframe1
	.quad	.LFB207
	.quad	.LFE207-.LFB207
	.byte	0x4
	.long	.LCFI12-.LFB207
	.byte	0xe
	.uleb128 0x10
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI13-.LCFI12
	.byte	0xe
	.uleb128 0x18
	.byte	0x86
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI14-.LCFI13
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x4
	.align 8
.LEFDE15:
.LSFDE17:
	.long	.LEFDE17-.LASFDE17
.LASFDE17:
	.long	.LASFDE17-.Lframe1
	.quad	.LFB208
	.quad	.LFE208-.LFB208
	.byte	0x4
	.long	.LCFI15-.LFB208
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE17:
.LSFDE19:
	.long	.LEFDE19-.LASFDE19
.LASFDE19:
	.long	.LASFDE19-.Lframe1
	.quad	.LFB209
	.quad	.LFE209-.LFB209
	.align 8
.LEFDE19:
.LSFDE21:
	.long	.LEFDE21-.LASFDE21
.LASFDE21:
	.long	.LASFDE21-.Lframe1
	.quad	.LFB210
	.quad	.LFE210-.LFB210
	.byte	0x4
	.long	.LCFI16-.LFB210
	.byte	0xe
	.uleb128 0x10
	.byte	0x8d
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI17-.LCFI16
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI18-.LCFI17
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI19-.LCFI18
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI20-.LCFI19
	.byte	0xe
	.uleb128 0x30
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x8c
	.uleb128 0x3
	.align 8
.LEFDE21:
.LSFDE23:
	.long	.LEFDE23-.LASFDE23
.LASFDE23:
	.long	.LASFDE23-.Lframe1
	.quad	.LFB211
	.quad	.LFE211-.LFB211
	.byte	0x4
	.long	.LCFI21-.LFB211
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI22-.LCFI21
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI23-.LCFI22
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE23:
.LSFDE25:
	.long	.LEFDE25-.LASFDE25
.LASFDE25:
	.long	.LASFDE25-.Lframe1
	.quad	.LFB212
	.quad	.LFE212-.LFB212
	.align 8
.LEFDE25:
.LSFDE27:
	.long	.LEFDE27-.LASFDE27
.LASFDE27:
	.long	.LASFDE27-.Lframe1
	.quad	.LFB213
	.quad	.LFE213-.LFB213
	.align 8
.LEFDE27:
.LSFDE29:
	.long	.LEFDE29-.LASFDE29
.LASFDE29:
	.long	.LASFDE29-.Lframe1
	.quad	.LFB214
	.quad	.LFE214-.LFB214
	.align 8
.LEFDE29:
.LSFDE31:
	.long	.LEFDE31-.LASFDE31
.LASFDE31:
	.long	.LASFDE31-.Lframe1
	.quad	.LFB215
	.quad	.LFE215-.LFB215
	.align 8
.LEFDE31:
.LSFDE33:
	.long	.LEFDE33-.LASFDE33
.LASFDE33:
	.long	.LASFDE33-.Lframe1
	.quad	.LFB216
	.quad	.LFE216-.LFB216
	.align 8
.LEFDE33:
.LSFDE35:
	.long	.LEFDE35-.LASFDE35
.LASFDE35:
	.long	.LASFDE35-.Lframe1
	.quad	.LFB217
	.quad	.LFE217-.LFB217
	.align 8
.LEFDE35:
.LSFDE37:
	.long	.LEFDE37-.LASFDE37
.LASFDE37:
	.long	.LASFDE37-.Lframe1
	.quad	.LFB218
	.quad	.LFE218-.LFB218
	.byte	0x4
	.long	.LCFI24-.LFB218
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE37:
.LSFDE39:
	.long	.LEFDE39-.LASFDE39
.LASFDE39:
	.long	.LASFDE39-.Lframe1
	.quad	.LFB219
	.quad	.LFE219-.LFB219
	.byte	0x4
	.long	.LCFI25-.LFB219
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE39:
.LSFDE41:
	.long	.LEFDE41-.LASFDE41
.LASFDE41:
	.long	.LASFDE41-.Lframe1
	.quad	.LFB220
	.quad	.LFE220-.LFB220
	.byte	0x4
	.long	.LCFI26-.LFB220
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE41:
.LSFDE43:
	.long	.LEFDE43-.LASFDE43
.LASFDE43:
	.long	.LASFDE43-.Lframe1
	.quad	.LFB221
	.quad	.LFE221-.LFB221
	.align 8
.LEFDE43:
.LSFDE45:
	.long	.LEFDE45-.LASFDE45
.LASFDE45:
	.long	.LASFDE45-.Lframe1
	.quad	.LFB222
	.quad	.LFE222-.LFB222
	.byte	0x4
	.long	.LCFI27-.LFB222
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE45:
.LSFDE47:
	.long	.LEFDE47-.LASFDE47
.LASFDE47:
	.long	.LASFDE47-.Lframe1
	.quad	.LFB223
	.quad	.LFE223-.LFB223
	.byte	0x4
	.long	.LCFI28-.LFB223
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE47:
.LSFDE49:
	.long	.LEFDE49-.LASFDE49
.LASFDE49:
	.long	.LASFDE49-.Lframe1
	.quad	.LFB224
	.quad	.LFE224-.LFB224
	.byte	0x4
	.long	.LCFI31-.LFB224
	.byte	0xe
	.uleb128 0x20
	.byte	0x86
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE49:
.LSFDE51:
	.long	.LEFDE51-.LASFDE51
.LASFDE51:
	.long	.LASFDE51-.Lframe1
	.quad	.LFB225
	.quad	.LFE225-.LFB225
	.byte	0x4
	.long	.LCFI32-.LFB225
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE51:
.LSFDE53:
	.long	.LEFDE53-.LASFDE53
.LASFDE53:
	.long	.LASFDE53-.Lframe1
	.quad	.LFB229
	.quad	.LFE229-.LFB229
	.align 8
.LEFDE53:
.LSFDE55:
	.long	.LEFDE55-.LASFDE55
.LASFDE55:
	.long	.LASFDE55-.Lframe1
	.quad	.LFB230
	.quad	.LFE230-.LFB230
	.align 8
.LEFDE55:
.LSFDE57:
	.long	.LEFDE57-.LASFDE57
.LASFDE57:
	.long	.LASFDE57-.Lframe1
	.quad	.LFB231
	.quad	.LFE231-.LFB231
	.byte	0x4
	.long	.LCFI33-.LFB231
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE57:
.LSFDE59:
	.long	.LEFDE59-.LASFDE59
.LASFDE59:
	.long	.LASFDE59-.Lframe1
	.quad	.LFB232
	.quad	.LFE232-.LFB232
	.align 8
.LEFDE59:
.LSFDE61:
	.long	.LEFDE61-.LASFDE61
.LASFDE61:
	.long	.LASFDE61-.Lframe1
	.quad	.LFB233
	.quad	.LFE233-.LFB233
	.align 8
.LEFDE61:
.LSFDE63:
	.long	.LEFDE63-.LASFDE63
.LASFDE63:
	.long	.LASFDE63-.Lframe1
	.quad	.LFB234
	.quad	.LFE234-.LFB234
	.byte	0x4
	.long	.LCFI34-.LFB234
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE63:
.LSFDE65:
	.long	.LEFDE65-.LASFDE65
.LASFDE65:
	.long	.LASFDE65-.Lframe1
	.quad	.LFB235
	.quad	.LFE235-.LFB235
	.byte	0x4
	.long	.LCFI35-.LFB235
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE65:
.LSFDE67:
	.long	.LEFDE67-.LASFDE67
.LASFDE67:
	.long	.LASFDE67-.Lframe1
	.quad	.LFB236
	.quad	.LFE236-.LFB236
	.byte	0x4
	.long	.LCFI36-.LFB236
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI37-.LCFI36
	.byte	0xe
	.uleb128 0x18
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI38-.LCFI37
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI39-.LCFI38
	.byte	0xe
	.uleb128 0x28
	.byte	0x8c
	.uleb128 0x5
	.byte	0x8d
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI40-.LCFI39
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI41-.LCFI40
	.byte	0xe
	.uleb128 0x38
	.byte	0x83
	.uleb128 0x7
	.byte	0x86
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI42-.LCFI41
	.byte	0xe
	.uleb128 0x70
	.align 8
.LEFDE67:
.LSFDE69:
	.long	.LEFDE69-.LASFDE69
.LASFDE69:
	.long	.LASFDE69-.Lframe1
	.quad	.LFB237
	.quad	.LFE237-.LFB237
	.align 8
.LEFDE69:
.LSFDE71:
	.long	.LEFDE71-.LASFDE71
.LASFDE71:
	.long	.LASFDE71-.Lframe1
	.quad	.LFB238
	.quad	.LFE238-.LFB238
	.align 8
.LEFDE71:
.LSFDE73:
	.long	.LEFDE73-.LASFDE73
.LASFDE73:
	.long	.LASFDE73-.Lframe1
	.quad	.LFB239
	.quad	.LFE239-.LFB239
	.byte	0x4
	.long	.LCFI43-.LFB239
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE73:
.LSFDE75:
	.long	.LEFDE75-.LASFDE75
.LASFDE75:
	.long	.LASFDE75-.Lframe1
	.quad	.LFB240
	.quad	.LFE240-.LFB240
	.byte	0x4
	.long	.LCFI45-.LFB240
	.byte	0x86
	.uleb128 0x6
	.byte	0x83
	.uleb128 0x7
	.byte	0x4
	.long	.LCFI50-.LCFI45
	.byte	0xe
	.uleb128 0x440
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8d
	.uleb128 0x4
	.byte	0x8f
	.uleb128 0x2
	.byte	0x8c
	.uleb128 0x5
	.align 8
.LEFDE75:
.LSFDE77:
	.long	.LEFDE77-.LASFDE77
.LASFDE77:
	.long	.LASFDE77-.Lframe1
	.quad	.LFB241
	.quad	.LFE241-.LFB241
	.byte	0x4
	.long	.LCFI51-.LFB241
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI52-.LCFI51
	.byte	0xe
	.uleb128 0x18
	.byte	0x86
	.uleb128 0x3
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI53-.LCFI52
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI54-.LCFI53
	.byte	0xe
	.uleb128 0x30
	.align 8
.LEFDE77:
.LSFDE79:
	.long	.LEFDE79-.LASFDE79
.LASFDE79:
	.long	.LASFDE79-.Lframe1
	.quad	.LFB243
	.quad	.LFE243-.LFB243
	.byte	0x4
	.long	.LCFI55-.LFB243
	.byte	0xe
	.uleb128 0x10
	.byte	0x8d
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI56-.LCFI55
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI57-.LCFI56
	.byte	0xe
	.uleb128 0x20
	.byte	0x86
	.uleb128 0x4
	.byte	0x8c
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI58-.LCFI57
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI59-.LCFI58
	.byte	0xe
	.uleb128 0x60
	.byte	0x83
	.uleb128 0x5
	.align 8
.LEFDE79:
.LSFDE81:
	.long	.LEFDE81-.LASFDE81
.LASFDE81:
	.long	.LASFDE81-.Lframe1
	.quad	.LFB244
	.quad	.LFE244-.LFB244
	.byte	0x4
	.long	.LCFI61-.LFB244
	.byte	0x86
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI63-.LCFI61
	.byte	0xe
	.uleb128 0x20
	.byte	0x8c
	.uleb128 0x2
	.align 8
.LEFDE81:
.LSFDE83:
	.long	.LEFDE83-.LASFDE83
.LASFDE83:
	.long	.LASFDE83-.Lframe1
	.quad	.LFB245
	.quad	.LFE245-.LFB245
	.align 8
.LEFDE83:
.LSFDE85:
	.long	.LEFDE85-.LASFDE85
.LASFDE85:
	.long	.LASFDE85-.Lframe1
	.quad	.LFB246
	.quad	.LFE246-.LFB246
	.byte	0x4
	.long	.LCFI64-.LFB246
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI65-.LCFI64
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI66-.LCFI65
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE85:
.LSFDE87:
	.long	.LEFDE87-.LASFDE87
.LASFDE87:
	.long	.LASFDE87-.Lframe1
	.quad	.LFB247
	.quad	.LFE247-.LFB247
	.align 8
.LEFDE87:
.LSFDE89:
	.long	.LEFDE89-.LASFDE89
.LASFDE89:
	.long	.LASFDE89-.Lframe1
	.quad	.LFB248
	.quad	.LFE248-.LFB248
	.align 8
.LEFDE89:
.LSFDE91:
	.long	.LEFDE91-.LASFDE91
.LASFDE91:
	.long	.LASFDE91-.Lframe1
	.quad	.LFB249
	.quad	.LFE249-.LFB249
	.byte	0x4
	.long	.LCFI67-.LFB249
	.byte	0xe
	.uleb128 0x30
	.align 8
.LEFDE91:
.LSFDE93:
	.long	.LEFDE93-.LASFDE93
.LASFDE93:
	.long	.LASFDE93-.Lframe1
	.quad	.LFB250
	.quad	.LFE250-.LFB250
	.byte	0x4
	.long	.LCFI68-.LFB250
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI69-.LCFI68
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI70-.LCFI69
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI71-.LCFI70
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI72-.LCFI71
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI73-.LCFI72
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI74-.LCFI73
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
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8f
	.uleb128 0x2
	.align 8
.LEFDE93:
.LSFDE95:
	.long	.LEFDE95-.LASFDE95
.LASFDE95:
	.long	.LASFDE95-.Lframe1
	.quad	.LFB251
	.quad	.LFE251-.LFB251
	.byte	0x4
	.long	.LCFI76-.LFB251
	.byte	0x86
	.uleb128 0x4
	.byte	0x83
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI79-.LCFI76
	.byte	0xe
	.uleb128 0x30
	.byte	0x8d
	.uleb128 0x2
	.byte	0x8c
	.uleb128 0x3
	.align 8
.LEFDE95:
.LSFDE97:
	.long	.LEFDE97-.LASFDE97
.LASFDE97:
	.long	.LASFDE97-.Lframe1
	.quad	.LFB252
	.quad	.LFE252-.LFB252
	.byte	0x4
	.long	.LCFI80-.LFB252
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI81-.LCFI80
	.byte	0xe
	.uleb128 0x18
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
	.uleb128 0x50
	.byte	0x83
	.uleb128 0x7
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
	.align 8
.LEFDE97:
.LSFDE99:
	.long	.LEFDE99-.LASFDE99
.LASFDE99:
	.long	.LASFDE99-.Lframe1
	.quad	.LFB254
	.quad	.LFE254-.LFB254
	.align 8
.LEFDE99:
.LSFDE101:
	.long	.LEFDE101-.LASFDE101
.LASFDE101:
	.long	.LASFDE101-.Lframe1
	.quad	.LFB255
	.quad	.LFE255-.LFB255
	.byte	0x4
	.long	.LCFI87-.LFB255
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
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
	.align 8
.LEFDE101:
.LSFDE103:
	.long	.LEFDE103-.LASFDE103
.LASFDE103:
	.long	.LASFDE103-.Lframe1
	.quad	.LFB256
	.quad	.LFE256-.LFB256
	.byte	0x4
	.long	.LCFI90-.LFB256
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE103:
.LSFDE105:
	.long	.LEFDE105-.LASFDE105
.LASFDE105:
	.long	.LASFDE105-.Lframe1
	.quad	.LFB257
	.quad	.LFE257-.LFB257
	.byte	0x4
	.long	.LCFI92-.LFB257
	.byte	0x86
	.uleb128 0x6
	.byte	0x83
	.uleb128 0x7
	.byte	0x4
	.long	.LCFI94-.LCFI92
	.byte	0x8d
	.uleb128 0x4
	.byte	0x8c
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI97-.LCFI94
	.byte	0xe
	.uleb128 0x50
	.byte	0x8f
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x3
	.align 8
.LEFDE105:
.LSFDE107:
	.long	.LEFDE107-.LASFDE107
.LASFDE107:
	.long	.LASFDE107-.Lframe1
	.quad	.LFB258
	.quad	.LFE258-.LFB258
	.align 8
.LEFDE107:
.LSFDE109:
	.long	.LEFDE109-.LASFDE109
.LASFDE109:
	.long	.LASFDE109-.Lframe1
	.quad	.LFB259
	.quad	.LFE259-.LFB259
	.byte	0x4
	.long	.LCFI98-.LFB259
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE109:
.LSFDE111:
	.long	.LEFDE111-.LASFDE111
.LASFDE111:
	.long	.LASFDE111-.Lframe1
	.quad	.LFB261
	.quad	.LFE261-.LFB261
	.byte	0x4
	.long	.LCFI99-.LFB261
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE111:
.LSFDE113:
	.long	.LEFDE113-.LASFDE113
.LASFDE113:
	.long	.LASFDE113-.Lframe1
	.quad	.LFB264
	.quad	.LFE264-.LFB264
	.byte	0x4
	.long	.LCFI100-.LFB264
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI101-.LCFI100
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI102-.LCFI101
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x2
	.align 8
.LEFDE113:
.LSFDE115:
	.long	.LEFDE115-.LASFDE115
.LASFDE115:
	.long	.LASFDE115-.Lframe1
	.quad	.LFB265
	.quad	.LFE265-.LFB265
	.byte	0x4
	.long	.LCFI103-.LFB265
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI104-.LCFI103
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI105-.LCFI104
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x2
	.align 8
.LEFDE115:
.LSFDE117:
	.long	.LEFDE117-.LASFDE117
.LASFDE117:
	.long	.LASFDE117-.Lframe1
	.quad	.LFB262
	.quad	.LFE262-.LFB262
	.byte	0x4
	.long	.LCFI106-.LFB262
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI107-.LCFI106
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI108-.LCFI107
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI109-.LCFI108
	.byte	0xe
	.uleb128 0xb0
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.byte	0x8c
	.uleb128 0x2
	.align 8
.LEFDE117:
.LSFDE119:
	.long	.LEFDE119-.LASFDE119
.LASFDE119:
	.long	.LASFDE119-.Lframe1
	.quad	.LFB263
	.quad	.LFE263-.LFB263
	.byte	0x4
	.long	.LCFI110-.LFB263
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI111-.LCFI110
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI112-.LCFI111
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.byte	0x8c
	.uleb128 0x2
	.align 8
.LEFDE119:
.LSFDE121:
	.long	.LEFDE121-.LASFDE121
.LASFDE121:
	.long	.LASFDE121-.Lframe1
	.quad	.LFB266
	.quad	.LFE266-.LFB266
	.byte	0x4
	.long	.LCFI113-.LFB266
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE121:
.LSFDE123:
	.long	.LEFDE123-.LASFDE123
.LASFDE123:
	.long	.LASFDE123-.Lframe1
	.quad	.LFB267
	.quad	.LFE267-.LFB267
	.byte	0x4
	.long	.LCFI114-.LFB267
	.byte	0xe
	.uleb128 0x10
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI115-.LCFI114
	.byte	0xe
	.uleb128 0x18
	.byte	0x8e
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI116-.LCFI115
	.byte	0xe
	.uleb128 0x20
	.byte	0x8d
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI117-.LCFI116
	.byte	0xe
	.uleb128 0x28
	.byte	0x8c
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI118-.LCFI117
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI119-.LCFI118
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI120-.LCFI119
	.byte	0xe
	.uleb128 0x40
	.byte	0x83
	.uleb128 0x7
	.byte	0x86
	.uleb128 0x6
	.align 8
.LEFDE123:
.LSFDE125:
	.long	.LEFDE125-.LASFDE125
.LASFDE125:
	.long	.LASFDE125-.Lframe1
	.quad	.LFB269
	.quad	.LFE269-.LFB269
	.byte	0x4
	.long	.LCFI121-.LFB269
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI122-.LCFI121
	.byte	0xe
	.uleb128 0x18
	.byte	0x8d
	.uleb128 0x3
	.byte	0x8e
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI123-.LCFI122
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI124-.LCFI123
	.byte	0xe
	.uleb128 0x28
	.byte	0x86
	.uleb128 0x5
	.byte	0x8c
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI125-.LCFI124
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI126-.LCFI125
	.byte	0xe
	.uleb128 0xb0
	.byte	0x83
	.uleb128 0x6
	.align 8
.LEFDE125:
.LSFDE127:
	.long	.LEFDE127-.LASFDE127
.LASFDE127:
	.long	.LASFDE127-.Lframe1
	.quad	.LFB271
	.quad	.LFE271-.LFB271
	.byte	0x4
	.long	.LCFI129-.LFB271
	.byte	0xe
	.uleb128 0x20
	.byte	0x86
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE127:
.LSFDE129:
	.long	.LEFDE129-.LASFDE129
.LASFDE129:
	.long	.LASFDE129-.Lframe1
	.quad	.LFB273
	.quad	.LFE273-.LFB273
	.byte	0x4
	.long	.LCFI130-.LFB273
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI131-.LCFI130
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI132-.LCFI131
	.byte	0xe
	.uleb128 0x20
	.byte	0x8d
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI133-.LCFI132
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI134-.LCFI133
	.byte	0xe
	.uleb128 0x30
	.byte	0x86
	.uleb128 0x6
	.byte	0x8c
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI135-.LCFI134
	.byte	0xe
	.uleb128 0x38
	.byte	0x83
	.uleb128 0x7
	.byte	0x4
	.long	.LCFI136-.LCFI135
	.byte	0xe
	.uleb128 0x1160
	.align 8
.LEFDE129:
.LSFDE131:
	.long	.LEFDE131-.LASFDE131
.LASFDE131:
	.long	.LASFDE131-.Lframe1
	.quad	.LFB274
	.quad	.LFE274-.LFB274
	.align 8
.LEFDE131:
.LSFDE133:
	.long	.LEFDE133-.LASFDE133
.LASFDE133:
	.long	.LASFDE133-.Lframe1
	.quad	.LFB275
	.quad	.LFE275-.LFB275
	.byte	0x4
	.long	.LCFI137-.LFB275
	.byte	0xe
	.uleb128 0x10
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI138-.LCFI137
	.byte	0xe
	.uleb128 0x18
	.byte	0x86
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI139-.LCFI138
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x4
	.align 8
.LEFDE133:
.LSFDE135:
	.long	.LEFDE135-.LASFDE135
.LASFDE135:
	.long	.LASFDE135-.Lframe1
	.quad	.LFB277
	.quad	.LFE277-.LFB277
	.align 8
.LEFDE135:
.LSFDE137:
	.long	.LEFDE137-.LASFDE137
.LASFDE137:
	.long	.LASFDE137-.Lframe1
	.quad	.LFB276
	.quad	.LFE276-.LFB276
	.byte	0x4
	.long	.LCFI140-.LFB276
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI141-.LCFI140
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI142-.LCFI141
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI143-.LCFI142
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI144-.LCFI143
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
	.long	.LCFI145-.LCFI144
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI146-.LCFI145
	.byte	0xe
	.uleb128 0x680
	.byte	0x83
	.uleb128 0x7
	.align 8
.LEFDE137:
.LSFDE139:
	.long	.LEFDE139-.LASFDE139
.LASFDE139:
	.long	.LASFDE139-.Lframe1
	.quad	.LFB278
	.quad	.LFE278-.LFB278
	.byte	0x4
	.long	.LCFI147-.LFB278
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE139:
.LSFDE141:
	.long	.LEFDE141-.LASFDE141
.LASFDE141:
	.long	.LASFDE141-.Lframe1
	.quad	.LFB279
	.quad	.LFE279-.LFB279
	.byte	0x4
	.long	.LCFI148-.LFB279
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE141:
.LSFDE143:
	.long	.LEFDE143-.LASFDE143
.LASFDE143:
	.long	.LASFDE143-.Lframe1
	.quad	.LFB280
	.quad	.LFE280-.LFB280
	.byte	0x4
	.long	.LCFI149-.LFB280
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE143:
.LSFDE145:
	.long	.LEFDE145-.LASFDE145
.LASFDE145:
	.long	.LASFDE145-.Lframe1
	.quad	.LFB281
	.quad	.LFE281-.LFB281
	.byte	0x4
	.long	.LCFI151-.LFB281
	.byte	0x8c
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI155-.LCFI151
	.byte	0xe
	.uleb128 0x30
	.byte	0x83
	.uleb128 0x6
	.byte	0x8e
	.uleb128 0x2
	.byte	0x8d
	.uleb128 0x3
	.align 8
.LEFDE145:
.LSFDE147:
	.long	.LEFDE147-.LASFDE147
.LASFDE147:
	.long	.LASFDE147-.Lframe1
	.quad	.LFB228
	.quad	.LFE228-.LFB228
	.byte	0x4
	.long	.LCFI156-.LFB228
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI157-.LCFI156
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI158-.LCFI157
	.byte	0xe
	.uleb128 0x30
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE147:
	.file 5 "<internal>"
	.file 6 "/usr/include/stdio.h"
	.file 7 "/usr/lib/gcc/x86_64-linux-gnu/3.4.6/include/stdarg.h"
	.file 8 "/usr/include/libio.h"
	.file 9 "/usr/include/bits/types.h"
	.file 10 "/usr/lib/gcc/x86_64-linux-gnu/3.4.6/include/stddef.h"
	.file 11 "/home/remco/Projects/Argos/src/target-i386/cpu.h"
	.file 12 "../cpu-defs.h"
	.file 13 "/usr/include/stdint.h"
	.file 14 "../argos-tag.h"
	.file 15 "../argos.h"
	.file 16 "/home/remco/Projects/Argos/src/target-i386/argos-shellcode.h"
	.file 17 "/usr/include/sys/types.h"
	.file 18 "/home/remco/Projects/Argos/src/fpu/softfloat-native.h"
	.file 19 "/usr/include/setjmp.h"
	.file 20 "/usr/include/bits/setjmp.h"
	.file 21 "/usr/include/bits/sigset.h"
	.file 22 "../qemu-common.h"
	.file 23 "/home/remco/Projects/Argos/src/audio/audio.h"
	.file 24 "/usr/include/dirent.h"
	.file 25 "/usr/include/bits/dirent.h"
	.file 26 "/usr/include/bits/stat.h"
	.file 27 "/usr/include/time.h"
	.file 28 "/home/remco/Projects/Argos/src/qemu-char.h"
	.file 29 "/home/remco/Projects/Argos/src/sysemu.h"
	.file 30 "/home/remco/Projects/Argos/src/console.h"
	.text
.Letext0:
	.section	.debug_info
	.long	0x3b14
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.Ldebug_line0
	.quad	.Letext0
	.quad	.Ltext0
	.long	.LASF495
	.byte	0x1
	.long	.LASF496
	.long	.LASF497
	.uleb128 0x2
	.long	.LASF9
	.byte	0xa
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
	.byte	0x9
	.byte	0x86
	.long	0x38
	.uleb128 0x2
	.long	.LASF11
	.byte	0x9
	.byte	0x87
	.long	0x46
	.uleb128 0x2
	.long	.LASF12
	.byte	0x9
	.byte	0x88
	.long	0x46
	.uleb128 0x2
	.long	.LASF13
	.byte	0x9
	.byte	0x89
	.long	0x38
	.uleb128 0x2
	.long	.LASF14
	.byte	0x9
	.byte	0x8a
	.long	0x38
	.uleb128 0x2
	.long	.LASF15
	.byte	0x9
	.byte	0x8b
	.long	0x46
	.uleb128 0x2
	.long	.LASF16
	.byte	0x9
	.byte	0x8c
	.long	0x38
	.uleb128 0x2
	.long	.LASF17
	.byte	0x9
	.byte	0x8d
	.long	0x53
	.uleb128 0x2
	.long	.LASF18
	.byte	0x9
	.byte	0x8e
	.long	0x53
	.uleb128 0x2
	.long	.LASF19
	.byte	0x9
	.byte	0x95
	.long	0x53
	.uleb128 0x7
	.byte	0x8
	.uleb128 0x2
	.long	.LASF20
	.byte	0x9
	.byte	0xa4
	.long	0x53
	.uleb128 0x2
	.long	.LASF21
	.byte	0x9
	.byte	0xa9
	.long	0x53
	.uleb128 0x5
	.byte	0x8
	.long	0x7a
	.uleb128 0x2
	.long	.LASF22
	.byte	0x11
	.byte	0xc5
	.long	0x3f
	.uleb128 0x2
	.long	.LASF23
	.byte	0x11
	.byte	0xc6
	.long	0x53
	.uleb128 0x8
	.long	0x14f
	.byte	0x80
	.byte	0x15
	.byte	0x20
	.uleb128 0x9
	.long	.LASF25
	.byte	0x15
	.byte	0x1f
	.long	0x14f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xa
	.long	0x15f
	.long	0x38
	.uleb128 0xb
	.long	0x61
	.byte	0xf
	.byte	0x0
	.uleb128 0x2
	.long	.LASF24
	.byte	0x15
	.byte	0x20
	.long	0x138
	.uleb128 0xc
	.long	0x193
	.long	.LASF30
	.byte	0x10
	.byte	0x1b
	.byte	0x79
	.uleb128 0x9
	.long	.LASF26
	.byte	0x1b
	.byte	0x7a
	.long	0xf9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF27
	.byte	0x1b
	.byte	0x7b
	.long	0x53
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.long	.LASF28
	.byte	0x8
	.byte	0x7
	.uleb128 0x2
	.long	.LASF29
	.byte	0x6
	.byte	0x31
	.long	0x1a5
	.uleb128 0xc
	.long	0x371
	.long	.LASF31
	.byte	0xd8
	.byte	0x6
	.byte	0x2d
	.uleb128 0xd
	.long	.LASF32
	.byte	0x8
	.value	0x110
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF33
	.byte	0x8
	.value	0x115
	.long	0x11c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF34
	.byte	0x8
	.value	0x116
	.long	0x11c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.long	.LASF35
	.byte	0x8
	.value	0x117
	.long	0x11c
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.long	.LASF36
	.byte	0x8
	.value	0x118
	.long	0x11c
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.long	.LASF37
	.byte	0x8
	.value	0x119
	.long	0x11c
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.long	.LASF38
	.byte	0x8
	.value	0x11a
	.long	0x11c
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.long	.LASF39
	.byte	0x8
	.value	0x11b
	.long	0x11c
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.long	.LASF40
	.byte	0x8
	.value	0x11c
	.long	0x11c
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.long	.LASF41
	.byte	0x8
	.value	0x11e
	.long	0x11c
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.long	.LASF42
	.byte	0x8
	.value	0x11f
	.long	0x11c
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xd
	.long	.LASF43
	.byte	0x8
	.value	0x120
	.long	0x11c
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xd
	.long	.LASF44
	.byte	0x8
	.value	0x122
	.long	0x40f
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.long	.LASF45
	.byte	0x8
	.value	0x124
	.long	0x415
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.long	.LASF46
	.byte	0x8
	.value	0x126
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xd
	.long	.LASF47
	.byte	0x8
	.value	0x12a
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xd
	.long	.LASF48
	.byte	0x8
	.value	0x12c
	.long	0xe3
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xd
	.long	.LASF49
	.byte	0x8
	.value	0x130
	.long	0x68
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xd
	.long	.LASF50
	.byte	0x8
	.value	0x131
	.long	0x88
	.byte	0x3
	.byte	0x23
	.uleb128 0x82
	.uleb128 0xd
	.long	.LASF51
	.byte	0x8
	.value	0x132
	.long	0x41b
	.byte	0x3
	.byte	0x23
	.uleb128 0x83
	.uleb128 0xd
	.long	.LASF52
	.byte	0x8
	.value	0x136
	.long	0x42b
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xd
	.long	.LASF53
	.byte	0x8
	.value	0x13f
	.long	0xee
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xd
	.long	.LASF54
	.byte	0x8
	.value	0x148
	.long	0x104
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xd
	.long	.LASF55
	.byte	0x8
	.value	0x149
	.long	0x104
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xd
	.long	.LASF56
	.byte	0x8
	.value	0x14a
	.long	0x104
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xd
	.long	.LASF57
	.byte	0x8
	.value	0x14b
	.long	0x104
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xd
	.long	.LASF58
	.byte	0x8
	.value	0x14c
	.long	0x2d
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0xd
	.long	.LASF59
	.byte	0x8
	.value	0x14e
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xd
	.long	.LASF60
	.byte	0x8
	.value	0x150
	.long	0x431
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.byte	0x0
	.uleb128 0x2
	.long	.LASF61
	.byte	0x7
	.byte	0x2b
	.long	0x37c
	.uleb128 0xa
	.long	0x38c
	.long	0x38c
	.uleb128 0xb
	.long	0x61
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.long	0x3d1
	.long	.LASF62
	.byte	0x18
	.byte	0x5
	.byte	0x0
	.uleb128 0x9
	.long	.LASF63
	.byte	0x5
	.byte	0x0
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF64
	.byte	0x5
	.byte	0x0
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.long	.LASF65
	.byte	0x5
	.byte	0x0
	.long	0x104
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF66
	.byte	0x5
	.byte	0x0
	.long	0x104
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0xe
	.long	.LASF67
	.byte	0x8
	.byte	0xb4
	.uleb128 0xc
	.long	0x40f
	.long	.LASF68
	.byte	0x18
	.byte	0x8
	.byte	0xba
	.uleb128 0x9
	.long	.LASF69
	.byte	0x8
	.byte	0xbb
	.long	0x40f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF70
	.byte	0x8
	.byte	0xbc
	.long	0x415
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF71
	.byte	0x8
	.byte	0xc0
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x3d8
	.uleb128 0x5
	.byte	0x8
	.long	0x1a5
	.uleb128 0xa
	.long	0x42b
	.long	0x7a
	.uleb128 0xb
	.long	0x61
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x3d1
	.uleb128 0xa
	.long	0x441
	.long	0x7a
	.uleb128 0xb
	.long	0x61
	.byte	0x13
	.byte	0x0
	.uleb128 0xf
	.long	0x451
	.byte	0x1
	.long	0x3f
	.uleb128 0x10
	.long	0x104
	.byte	0x0
	.uleb128 0x2
	.long	.LASF72
	.byte	0x6
	.byte	0x50
	.long	0x371
	.uleb128 0x2
	.long	.LASF73
	.byte	0xd
	.byte	0x31
	.long	0x81
	.uleb128 0x2
	.long	.LASF74
	.byte	0xd
	.byte	0x32
	.long	0x68
	.uleb128 0x2
	.long	.LASF75
	.byte	0xd
	.byte	0x34
	.long	0x46
	.uleb128 0x2
	.long	.LASF76
	.byte	0xd
	.byte	0x38
	.long	0x38
	.uleb128 0xc
	.long	0x567
	.long	.LASF77
	.byte	0x90
	.byte	0x1a
	.byte	0x2c
	.uleb128 0x9
	.long	.LASF78
	.byte	0x1a
	.byte	0x2d
	.long	0x96
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF79
	.byte	0x1a
	.byte	0x32
	.long	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF80
	.byte	0x1a
	.byte	0x3a
	.long	0xd8
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.long	.LASF81
	.byte	0x1a
	.byte	0x3b
	.long	0xcd
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.long	.LASF82
	.byte	0x1a
	.byte	0x3d
	.long	0xa1
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x9
	.long	.LASF83
	.byte	0x1a
	.byte	0x3e
	.long	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.long	.LASF84
	.byte	0x1a
	.byte	0x40
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.long	.LASF85
	.byte	0x1a
	.byte	0x42
	.long	0x96
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.long	.LASF86
	.byte	0x1a
	.byte	0x47
	.long	0xe3
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.long	.LASF87
	.byte	0x1a
	.byte	0x4b
	.long	0x106
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.long	.LASF88
	.byte	0x1a
	.byte	0x4d
	.long	0x111
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.long	.LASF89
	.byte	0x1a
	.byte	0x58
	.long	0x16a
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x9
	.long	.LASF90
	.byte	0x1a
	.byte	0x59
	.long	0x16a
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x9
	.long	.LASF91
	.byte	0x1a
	.byte	0x5a
	.long	0x16a
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x9
	.long	.LASF92
	.byte	0x1a
	.byte	0x67
	.long	0x567
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.byte	0x0
	.uleb128 0xa
	.long	0x577
	.long	0x53
	.uleb128 0xb
	.long	0x61
	.byte	0x2
	.byte	0x0
	.uleb128 0x2
	.long	.LASF93
	.byte	0x14
	.byte	0x20
	.long	0x582
	.uleb128 0xa
	.long	0x592
	.long	0x53
	.uleb128 0xb
	.long	0x61
	.byte	0x7
	.byte	0x0
	.uleb128 0xc
	.long	0x5c9
	.long	.LASF94
	.byte	0xc8
	.byte	0x13
	.byte	0x24
	.uleb128 0x9
	.long	.LASF95
	.byte	0x13
	.byte	0x29
	.long	0x577
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF96
	.byte	0x13
	.byte	0x2a
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.long	.LASF97
	.byte	0x13
	.byte	0x2b
	.long	0x15f
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.byte	0x0
	.uleb128 0x2
	.long	.LASF98
	.byte	0x13
	.byte	0x31
	.long	0x5d4
	.uleb128 0xa
	.long	0x5e4
	.long	0x592
	.uleb128 0xb
	.long	0x61
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.long	.LASF99
	.byte	0xc
	.byte	0x30
	.long	0x122
	.uleb128 0x2
	.long	.LASF100
	.byte	0xc
	.byte	0x31
	.long	0x472
	.uleb128 0x2
	.long	.LASF101
	.byte	0xc
	.byte	0x49
	.long	0x47d
	.uleb128 0xc
	.long	0x64a
	.long	.LASF102
	.byte	0x18
	.byte	0xc
	.byte	0x69
	.uleb128 0x9
	.long	.LASF103
	.byte	0xc
	.byte	0x70
	.long	0x5ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF104
	.byte	0xc
	.byte	0x71
	.long	0x5ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.long	.LASF105
	.byte	0xc
	.byte	0x72
	.long	0x5ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF106
	.byte	0xc
	.byte	0x74
	.long	0x5fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.long	.LASF102
	.byte	0xc
	.byte	0x75
	.long	0x605
	.uleb128 0x3
	.long	.LASF107
	.byte	0x4
	.byte	0x4
	.uleb128 0x3
	.long	.LASF108
	.byte	0x8
	.byte	0x4
	.uleb128 0x2
	.long	.LASF109
	.byte	0x12
	.byte	0x3b
	.long	0x655
	.uleb128 0x2
	.long	.LASF110
	.byte	0x12
	.byte	0x3c
	.long	0x65c
	.uleb128 0x2
	.long	.LASF111
	.byte	0x12
	.byte	0x3e
	.long	0x684
	.uleb128 0x3
	.long	.LASF112
	.byte	0x10
	.byte	0x4
	.uleb128 0xc
	.long	0x6b4
	.long	.LASF113
	.byte	0x2
	.byte	0x12
	.byte	0x6d
	.uleb128 0x9
	.long	.LASF114
	.byte	0x12
	.byte	0x6e
	.long	0x88
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF115
	.byte	0x12
	.byte	0x70
	.long	0x88
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0x0
	.uleb128 0x2
	.long	.LASF113
	.byte	0x12
	.byte	0x72
	.long	0x68b
	.uleb128 0x11
	.long	.LASF116
	.byte	0xb
	.value	0x198
	.long	0x679
	.uleb128 0x12
	.long	0x715
	.long	.LASF117
	.byte	0x10
	.byte	0xb
	.value	0x19d
	.uleb128 0xd
	.long	.LASF118
	.byte	0xb
	.value	0x19e
	.long	0x472
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF119
	.byte	0xb
	.value	0x19f
	.long	0x5ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.long	.LASF120
	.byte	0xb
	.value	0x1a0
	.long	0x472
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF121
	.byte	0xb
	.value	0x1a1
	.long	0x472
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x11
	.long	.LASF117
	.byte	0xb
	.value	0x1a2
	.long	0x6cb
	.uleb128 0x13
	.long	0x76d
	.byte	0x10
	.byte	0xb
	.value	0x1ab
	.uleb128 0x14
	.string	"_b"
	.byte	0xb
	.value	0x1a5
	.long	0x76d
	.uleb128 0x14
	.string	"_w"
	.byte	0xb
	.value	0x1a6
	.long	0x77d
	.uleb128 0x14
	.string	"_l"
	.byte	0xb
	.value	0x1a7
	.long	0x78d
	.uleb128 0x14
	.string	"_q"
	.byte	0xb
	.value	0x1a8
	.long	0x79d
	.uleb128 0x14
	.string	"_s"
	.byte	0xb
	.value	0x1a9
	.long	0x7ad
	.uleb128 0x14
	.string	"_d"
	.byte	0xb
	.value	0x1aa
	.long	0x7bd
	.byte	0x0
	.uleb128 0xa
	.long	0x77d
	.long	0x45c
	.uleb128 0xb
	.long	0x61
	.byte	0xf
	.byte	0x0
	.uleb128 0xa
	.long	0x78d
	.long	0x467
	.uleb128 0xb
	.long	0x61
	.byte	0x7
	.byte	0x0
	.uleb128 0xa
	.long	0x79d
	.long	0x472
	.uleb128 0xb
	.long	0x61
	.byte	0x3
	.byte	0x0
	.uleb128 0xa
	.long	0x7ad
	.long	0x47d
	.uleb128 0xb
	.long	0x61
	.byte	0x1
	.byte	0x0
	.uleb128 0xa
	.long	0x7bd
	.long	0x663
	.uleb128 0xb
	.long	0x61
	.byte	0x3
	.byte	0x0
	.uleb128 0xa
	.long	0x7cd
	.long	0x66e
	.uleb128 0xb
	.long	0x61
	.byte	0x1
	.byte	0x0
	.uleb128 0x11
	.long	.LASF122
	.byte	0xb
	.value	0x1ab
	.long	0x721
	.uleb128 0x13
	.long	0x80e
	.byte	0x8
	.byte	0xb
	.value	0x1b2
	.uleb128 0x14
	.string	"_b"
	.byte	0xb
	.value	0x1ae
	.long	0x80e
	.uleb128 0x14
	.string	"_w"
	.byte	0xb
	.value	0x1af
	.long	0x81e
	.uleb128 0x14
	.string	"_l"
	.byte	0xb
	.value	0x1b0
	.long	0x82e
	.uleb128 0x14
	.string	"q"
	.byte	0xb
	.value	0x1b1
	.long	0x47d
	.byte	0x0
	.uleb128 0xa
	.long	0x81e
	.long	0x45c
	.uleb128 0xb
	.long	0x61
	.byte	0x7
	.byte	0x0
	.uleb128 0xa
	.long	0x82e
	.long	0x467
	.uleb128 0xb
	.long	0x61
	.byte	0x1
	.byte	0x0
	.uleb128 0xa
	.long	0x83e
	.long	0x472
	.uleb128 0xb
	.long	0x61
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.long	.LASF123
	.byte	0xb
	.value	0x1b2
	.long	0x7d9
	.uleb128 0x2
	.long	.LASF124
	.byte	0xf
	.byte	0x2f
	.long	0x472
	.uleb128 0x2
	.long	.LASF125
	.byte	0xf
	.byte	0x34
	.long	0x472
	.uleb128 0x2
	.long	.LASF126
	.byte	0xf
	.byte	0x35
	.long	0x855
	.uleb128 0xc
	.long	0x894
	.long	.LASF127
	.byte	0x8
	.byte	0xe
	.byte	0x37
	.uleb128 0x9
	.long	.LASF128
	.byte	0xe
	.byte	0x38
	.long	0x84a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF129
	.byte	0xe
	.byte	0x39
	.long	0x855
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.long	.LASF130
	.byte	0xe
	.byte	0x3d
	.long	0x86b
	.uleb128 0xc
	.long	0xa14
	.long	.LASF131
	.byte	0xd0
	.byte	0x10
	.byte	0x36
	.uleb128 0x9
	.long	.LASF132
	.byte	0x10
	.byte	0x38
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF133
	.byte	0x10
	.byte	0x39
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x15
	.string	"cr3"
	.byte	0x10
	.byte	0x3d
	.long	0x5ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF134
	.byte	0x10
	.byte	0x3f
	.long	0xa14
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.long	.LASF135
	.byte	0x10
	.byte	0x41
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.long	.LASF136
	.byte	0x10
	.byte	0x43
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x9
	.long	.LASF137
	.byte	0x10
	.byte	0x45
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.long	.LASF138
	.byte	0x10
	.byte	0x47
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.long	.LASF139
	.byte	0x10
	.byte	0x4a
	.long	0x5ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.long	.LASF140
	.byte	0x10
	.byte	0x4b
	.long	0x5ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.long	.LASF141
	.byte	0x10
	.byte	0x4c
	.long	0x5ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.long	.LASF142
	.byte	0x10
	.byte	0x4e
	.long	0xa1a
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x9
	.long	.LASF143
	.byte	0x10
	.byte	0x50
	.long	0x68
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0x9
	.long	.LASF144
	.byte	0x10
	.byte	0x52
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x9
	.long	.LASF145
	.byte	0x10
	.byte	0x54
	.long	0xa2a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x9
	.long	.LASF146
	.byte	0x10
	.byte	0x56
	.long	0x5ef
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x9
	.long	.LASF147
	.byte	0x10
	.byte	0x58
	.long	0xa3a
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x9
	.long	.LASF148
	.byte	0x10
	.byte	0x5b
	.long	0x38
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x9
	.long	.LASF149
	.byte	0x10
	.byte	0x5c
	.long	0x81
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x9
	.long	.LASF150
	.byte	0x10
	.byte	0x5e
	.long	0x46
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0x9
	.long	.LASF151
	.byte	0x10
	.byte	0x60
	.long	0x5ef
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x9
	.long	.LASF152
	.byte	0x10
	.byte	0x62
	.long	0xa3a
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x9
	.long	.LASF153
	.byte	0x10
	.byte	0x65
	.long	0x38
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x9
	.long	.LASF154
	.byte	0x10
	.byte	0x66
	.long	0x81
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.uleb128 0x9
	.long	.LASF155
	.byte	0x10
	.byte	0x68
	.long	0x46
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x19a
	.uleb128 0xa
	.long	0xa2a
	.long	0x7a
	.uleb128 0xb
	.long	0x61
	.byte	0x10
	.byte	0x0
	.uleb128 0xa
	.long	0xa3a
	.long	0x855
	.uleb128 0xb
	.long	0x61
	.byte	0x10
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x855
	.uleb128 0x2
	.long	.LASF156
	.byte	0x10
	.byte	0x69
	.long	0x89f
	.uleb128 0x13
	.long	0xa6b
	.byte	0x10
	.byte	0xb
	.value	0x20f
	.uleb128 0x14
	.string	"d"
	.byte	0xb
	.value	0x20a
	.long	0x6bf
	.uleb128 0x14
	.string	"mmx"
	.byte	0xb
	.value	0x20e
	.long	0x83e
	.byte	0x0
	.uleb128 0x13
	.long	0xaa1
	.byte	0x8
	.byte	0xb
	.value	0x219
	.uleb128 0x14
	.string	"f"
	.byte	0xb
	.value	0x215
	.long	0x655
	.uleb128 0x14
	.string	"d"
	.byte	0xb
	.value	0x216
	.long	0x65c
	.uleb128 0x14
	.string	"i32"
	.byte	0xb
	.value	0x217
	.long	0x3f
	.uleb128 0x14
	.string	"i64"
	.byte	0xb
	.value	0x218
	.long	0x12d
	.byte	0x0
	.uleb128 0x16
	.long	0xac9
	.byte	0x10
	.byte	0xb
	.value	0x246
	.uleb128 0xd
	.long	.LASF157
	.byte	0xb
	.value	0x246
	.long	0x5ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF106
	.byte	0xb
	.value	0x246
	.long	0x5fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x17
	.long	0x1065
	.long	.LASF158
	.value	0xb820
	.byte	0xb
	.value	0x1d8
	.uleb128 0xd
	.long	.LASF159
	.byte	0xb
	.value	0x1df
	.long	0x1065
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x18
	.string	"eip"
	.byte	0xb
	.value	0x1e0
	.long	0x5ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.long	.LASF160
	.byte	0xb
	.value	0x1e1
	.long	0x5ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.long	.LASF161
	.byte	0xb
	.value	0x1e6
	.long	0x894
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.long	.LASF162
	.byte	0xb
	.value	0x1e6
	.long	0x894
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.long	.LASF163
	.byte	0xb
	.value	0x1e6
	.long	0x894
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.long	.LASF164
	.byte	0xb
	.value	0x1e7
	.long	0x1075
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.long	.LASF165
	.byte	0xb
	.value	0x1e9
	.long	0xa40
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xd
	.long	.LASF166
	.byte	0xb
	.value	0x1ec
	.long	0x5ef
	.byte	0x3
	.byte	0x23
	.uleb128 0x150
	.uleb128 0xd
	.long	.LASF167
	.byte	0xb
	.value	0x1ed
	.long	0x5ef
	.byte	0x3
	.byte	0x23
	.uleb128 0x154
	.uleb128 0xd
	.long	.LASF168
	.byte	0xb
	.value	0x1ee
	.long	0x472
	.byte	0x3
	.byte	0x23
	.uleb128 0x158
	.uleb128 0x18
	.string	"df"
	.byte	0xb
	.value	0x1ef
	.long	0x122
	.byte	0x3
	.byte	0x23
	.uleb128 0x15c
	.uleb128 0xd
	.long	.LASF169
	.byte	0xb
	.value	0x1f0
	.long	0x472
	.byte	0x3
	.byte	0x23
	.uleb128 0x160
	.uleb128 0xd
	.long	.LASF170
	.byte	0xb
	.value	0x1f3
	.long	0x1085
	.byte	0x3
	.byte	0x23
	.uleb128 0x164
	.uleb128 0x18
	.string	"ldt"
	.byte	0xb
	.value	0x1f4
	.long	0x715
	.byte	0x3
	.byte	0x23
	.uleb128 0x1c4
	.uleb128 0x18
	.string	"tr"
	.byte	0xb
	.value	0x1f5
	.long	0x715
	.byte	0x3
	.byte	0x23
	.uleb128 0x1d4
	.uleb128 0x18
	.string	"gdt"
	.byte	0xb
	.value	0x1f6
	.long	0x715
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e4
	.uleb128 0x18
	.string	"idt"
	.byte	0xb
	.value	0x1f7
	.long	0x715
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f4
	.uleb128 0x18
	.string	"cr"
	.byte	0xb
	.value	0x1f9
	.long	0x1095
	.byte	0x3
	.byte	0x23
	.uleb128 0x204
	.uleb128 0xd
	.long	.LASF171
	.byte	0xb
	.value	0x1fa
	.long	0x472
	.byte	0x3
	.byte	0x23
	.uleb128 0x218
	.uleb128 0xd
	.long	.LASF172
	.byte	0xb
	.value	0x201
	.long	0x5ef
	.byte	0x3
	.byte	0x23
	.uleb128 0x21c
	.uleb128 0xd
	.long	.LASF173
	.byte	0xb
	.value	0x202
	.long	0x5ef
	.byte	0x3
	.byte	0x23
	.uleb128 0x220
	.uleb128 0xd
	.long	.LASF174
	.byte	0xb
	.value	0x204
	.long	0x46
	.byte	0x3
	.byte	0x23
	.uleb128 0x224
	.uleb128 0xd
	.long	.LASF175
	.byte	0xb
	.value	0x205
	.long	0x46
	.byte	0x3
	.byte	0x23
	.uleb128 0x228
	.uleb128 0xd
	.long	.LASF176
	.byte	0xb
	.value	0x206
	.long	0x46
	.byte	0x3
	.byte	0x23
	.uleb128 0x22c
	.uleb128 0xd
	.long	.LASF177
	.byte	0xb
	.value	0x207
	.long	0x80e
	.byte	0x3
	.byte	0x23
	.uleb128 0x230
	.uleb128 0xd
	.long	.LASF178
	.byte	0xb
	.value	0x20f
	.long	0x10a5
	.byte	0x3
	.byte	0x23
	.uleb128 0x240
	.uleb128 0xd
	.long	.LASF179
	.byte	0xb
	.value	0x212
	.long	0x6b4
	.byte	0x3
	.byte	0x23
	.uleb128 0x2c0
	.uleb128 0x18
	.string	"ft0"
	.byte	0xb
	.value	0x213
	.long	0x6bf
	.byte	0x3
	.byte	0x23
	.uleb128 0x2d0
	.uleb128 0xd
	.long	.LASF180
	.byte	0xb
	.value	0x219
	.long	0xa6b
	.byte	0x3
	.byte	0x23
	.uleb128 0x2e0
	.uleb128 0xd
	.long	.LASF181
	.byte	0xb
	.value	0x21b
	.long	0x6b4
	.byte	0x3
	.byte	0x23
	.uleb128 0x2e8
	.uleb128 0xd
	.long	.LASF182
	.byte	0xb
	.value	0x21c
	.long	0x472
	.byte	0x3
	.byte	0x23
	.uleb128 0x2ec
	.uleb128 0xd
	.long	.LASF183
	.byte	0xb
	.value	0x21d
	.long	0x10b5
	.byte	0x3
	.byte	0x23
	.uleb128 0x2f0
	.uleb128 0xd
	.long	.LASF184
	.byte	0xb
	.value	0x21e
	.long	0x7cd
	.byte	0x3
	.byte	0x23
	.uleb128 0x370
	.uleb128 0xd
	.long	.LASF185
	.byte	0xb
	.value	0x21f
	.long	0x83e
	.byte	0x3
	.byte	0x23
	.uleb128 0x380
	.uleb128 0xd
	.long	.LASF186
	.byte	0xb
	.value	0x222
	.long	0x472
	.byte	0x3
	.byte	0x23
	.uleb128 0x388
	.uleb128 0xd
	.long	.LASF187
	.byte	0xb
	.value	0x223
	.long	0x472
	.byte	0x3
	.byte	0x23
	.uleb128 0x38c
	.uleb128 0xd
	.long	.LASF188
	.byte	0xb
	.value	0x224
	.long	0x472
	.byte	0x3
	.byte	0x23
	.uleb128 0x390
	.uleb128 0xd
	.long	.LASF189
	.byte	0xb
	.value	0x225
	.long	0x47d
	.byte	0x3
	.byte	0x23
	.uleb128 0x398
	.uleb128 0xd
	.long	.LASF190
	.byte	0xb
	.value	0x226
	.long	0x47d
	.byte	0x3
	.byte	0x23
	.uleb128 0x3a0
	.uleb128 0xd
	.long	.LASF191
	.byte	0xb
	.value	0x228
	.long	0x5fa
	.byte	0x3
	.byte	0x23
	.uleb128 0x3a8
	.uleb128 0xd
	.long	.LASF192
	.byte	0xb
	.value	0x229
	.long	0x5fa
	.byte	0x3
	.byte	0x23
	.uleb128 0x3b0
	.uleb128 0xd
	.long	.LASF193
	.byte	0xb
	.value	0x22a
	.long	0x47d
	.byte	0x3
	.byte	0x23
	.uleb128 0x3b8
	.uleb128 0xd
	.long	.LASF194
	.byte	0xb
	.value	0x22b
	.long	0x467
	.byte	0x3
	.byte	0x23
	.uleb128 0x3c0
	.uleb128 0xd
	.long	.LASF195
	.byte	0xb
	.value	0x22c
	.long	0x467
	.byte	0x3
	.byte	0x23
	.uleb128 0x3c2
	.uleb128 0xd
	.long	.LASF196
	.byte	0xb
	.value	0x22d
	.long	0x467
	.byte	0x3
	.byte	0x23
	.uleb128 0x3c4
	.uleb128 0xd
	.long	.LASF197
	.byte	0xb
	.value	0x22e
	.long	0x467
	.byte	0x3
	.byte	0x23
	.uleb128 0x3c6
	.uleb128 0xd
	.long	.LASF198
	.byte	0xb
	.value	0x22f
	.long	0x472
	.byte	0x3
	.byte	0x23
	.uleb128 0x3c8
	.uleb128 0x18
	.string	"pat"
	.byte	0xb
	.value	0x238
	.long	0x47d
	.byte	0x3
	.byte	0x23
	.uleb128 0x3d0
	.uleb128 0xd
	.long	.LASF199
	.byte	0xb
	.value	0x23b
	.long	0x5c9
	.byte	0x3
	.byte	0x23
	.uleb128 0x3d8
	.uleb128 0xd
	.long	.LASF200
	.byte	0xb
	.value	0x23c
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x4a0
	.uleb128 0xd
	.long	.LASF201
	.byte	0xb
	.value	0x23d
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x4a4
	.uleb128 0xd
	.long	.LASF202
	.byte	0xb
	.value	0x23e
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x4a8
	.uleb128 0xd
	.long	.LASF203
	.byte	0xb
	.value	0x23f
	.long	0x5ef
	.byte	0x3
	.byte	0x23
	.uleb128 0x4ac
	.uleb128 0x18
	.string	"dr"
	.byte	0xb
	.value	0x240
	.long	0x1065
	.byte	0x3
	.byte	0x23
	.uleb128 0x4b0
	.uleb128 0xd
	.long	.LASF204
	.byte	0xb
	.value	0x241
	.long	0x472
	.byte	0x3
	.byte	0x23
	.uleb128 0x4d0
	.uleb128 0xd
	.long	.LASF205
	.byte	0xb
	.value	0x242
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x4d4
	.uleb128 0xd
	.long	.LASF206
	.byte	0xb
	.value	0x243
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x4d8
	.uleb128 0xd
	.long	.LASF207
	.byte	0xb
	.value	0x244
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x4dc
	.uleb128 0xd
	.long	.LASF208
	.byte	0xb
	.value	0x246
	.long	0x10cb
	.byte	0x3
	.byte	0x23
	.uleb128 0x4e0
	.uleb128 0xd
	.long	.LASF209
	.byte	0xb
	.value	0x246
	.long	0x38
	.byte	0x3
	.byte	0x23
	.uleb128 0x4e8
	.uleb128 0xd
	.long	.LASF210
	.byte	0xb
	.value	0x246
	.long	0x5ef
	.byte	0x3
	.byte	0x23
	.uleb128 0x4f0
	.uleb128 0xd
	.long	.LASF211
	.byte	0xb
	.value	0x246
	.long	0x10d1
	.byte	0x3
	.byte	0x23
	.uleb128 0x4f8
	.uleb128 0xd
	.long	.LASF212
	.byte	0xb
	.value	0x246
	.long	0x10e7
	.byte	0x3
	.byte	0x23
	.uleb128 0x34f8
	.uleb128 0xd
	.long	.LASF213
	.byte	0xb
	.value	0x246
	.long	0x10f8
	.byte	0x4
	.byte	0x23
	.uleb128 0xb4f8
	.uleb128 0xd
	.long	.LASF214
	.byte	0xb
	.value	0x246
	.long	0x3f
	.byte	0x4
	.byte	0x23
	.uleb128 0xb578
	.uleb128 0xd
	.long	.LASF215
	.byte	0xb
	.value	0x246
	.long	0x3f
	.byte	0x4
	.byte	0x23
	.uleb128 0xb57c
	.uleb128 0xd
	.long	.LASF216
	.byte	0xb
	.value	0x246
	.long	0x1108
	.byte	0x4
	.byte	0x23
	.uleb128 0xb580
	.uleb128 0xd
	.long	.LASF217
	.byte	0xb
	.value	0x246
	.long	0x3f
	.byte	0x4
	.byte	0x23
	.uleb128 0xb780
	.uleb128 0xd
	.long	.LASF218
	.byte	0xb
	.value	0x246
	.long	0x3f
	.byte	0x4
	.byte	0x23
	.uleb128 0xb784
	.uleb128 0xd
	.long	.LASF219
	.byte	0xb
	.value	0x246
	.long	0x104
	.byte	0x4
	.byte	0x23
	.uleb128 0xb788
	.uleb128 0xd
	.long	.LASF220
	.byte	0xb
	.value	0x246
	.long	0x3f
	.byte	0x4
	.byte	0x23
	.uleb128 0xb790
	.uleb128 0xd
	.long	.LASF221
	.byte	0xb
	.value	0x246
	.long	0x104
	.byte	0x4
	.byte	0x23
	.uleb128 0xb798
	.uleb128 0xd
	.long	.LASF222
	.byte	0xb
	.value	0x246
	.long	0x6f
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7a0
	.uleb128 0xd
	.long	.LASF223
	.byte	0xb
	.value	0x249
	.long	0x472
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7a8
	.uleb128 0xd
	.long	.LASF224
	.byte	0xb
	.value	0x24a
	.long	0x472
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7ac
	.uleb128 0xd
	.long	.LASF225
	.byte	0xb
	.value	0x24b
	.long	0x472
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7b0
	.uleb128 0xd
	.long	.LASF226
	.byte	0xb
	.value	0x24c
	.long	0x472
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7b4
	.uleb128 0xd
	.long	.LASF227
	.byte	0xb
	.value	0x24d
	.long	0x472
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7b8
	.uleb128 0xd
	.long	.LASF228
	.byte	0xb
	.value	0x24e
	.long	0x472
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7bc
	.uleb128 0xd
	.long	.LASF229
	.byte	0xb
	.value	0x24f
	.long	0x472
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7c0
	.uleb128 0xd
	.long	.LASF230
	.byte	0xb
	.value	0x250
	.long	0x472
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7c4
	.uleb128 0xd
	.long	.LASF231
	.byte	0xb
	.value	0x251
	.long	0x1118
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7c8
	.uleb128 0xd
	.long	.LASF232
	.byte	0xb
	.value	0x252
	.long	0x472
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7f8
	.uleb128 0xd
	.long	.LASF233
	.byte	0xb
	.value	0x253
	.long	0x472
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7fc
	.uleb128 0xd
	.long	.LASF234
	.byte	0xb
	.value	0x254
	.long	0x472
	.byte	0x4
	.byte	0x23
	.uleb128 0xb800
	.uleb128 0xd
	.long	.LASF235
	.byte	0xb
	.value	0x25b
	.long	0x1128
	.byte	0x4
	.byte	0x23
	.uleb128 0xb808
	.uleb128 0xd
	.long	.LASF236
	.byte	0xb
	.value	0x25f
	.long	0x1134
	.byte	0x4
	.byte	0x23
	.uleb128 0xb810
	.byte	0x0
	.uleb128 0xa
	.long	0x1075
	.long	0x5ef
	.uleb128 0xb
	.long	0x61
	.byte	0x7
	.byte	0x0
	.uleb128 0xa
	.long	0x1085
	.long	0x894
	.uleb128 0xb
	.long	0x61
	.byte	0x7
	.byte	0x0
	.uleb128 0xa
	.long	0x1095
	.long	0x715
	.uleb128 0xb
	.long	0x61
	.byte	0x5
	.byte	0x0
	.uleb128 0xa
	.long	0x10a5
	.long	0x5ef
	.uleb128 0xb
	.long	0x61
	.byte	0x4
	.byte	0x0
	.uleb128 0xa
	.long	0x10b5
	.long	0xa4b
	.uleb128 0xb
	.long	0x61
	.byte	0x7
	.byte	0x0
	.uleb128 0xa
	.long	0x10c5
	.long	0x7cd
	.uleb128 0xb
	.long	0x61
	.byte	0x7
	.byte	0x0
	.uleb128 0x19
	.long	.LASF237
	.byte	0x1
	.uleb128 0x5
	.byte	0x8
	.long	0x10c5
	.uleb128 0xa
	.long	0x10e7
	.long	0x64a
	.uleb128 0xb
	.long	0x61
	.byte	0x1
	.uleb128 0xb
	.long	0x61
	.byte	0xff
	.byte	0x0
	.uleb128 0xa
	.long	0x10f8
	.long	0x10cb
	.uleb128 0x1a
	.long	0x61
	.value	0xfff
	.byte	0x0
	.uleb128 0xa
	.long	0x1108
	.long	0x5ef
	.uleb128 0xb
	.long	0x61
	.byte	0x1f
	.byte	0x0
	.uleb128 0xa
	.long	0x1118
	.long	0xaa1
	.uleb128 0xb
	.long	0x61
	.byte	0x1f
	.byte	0x0
	.uleb128 0xa
	.long	0x1128
	.long	0x472
	.uleb128 0xb
	.long	0x61
	.byte	0xb
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x860
	.uleb128 0x19
	.long	.LASF238
	.byte	0x1
	.uleb128 0x5
	.byte	0x8
	.long	0x112e
	.uleb128 0x11
	.long	.LASF158
	.byte	0xb
	.value	0x260
	.long	0xac9
	.uleb128 0x12
	.long	0x1181
	.long	.LASF239
	.byte	0x18
	.byte	0x2
	.value	0x353
	.uleb128 0xd
	.long	.LASF240
	.byte	0x2
	.value	0x354
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF241
	.byte	0x2
	.value	0x355
	.long	0x6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF242
	.byte	0x2
	.value	0x356
	.long	0x6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x11
	.long	.LASF239
	.byte	0x2
	.value	0x357
	.long	0x1146
	.uleb128 0x2
	.long	.LASF243
	.byte	0x16
	.byte	0x45
	.long	0x1198
	.uleb128 0x19
	.long	.LASF243
	.byte	0x1
	.uleb128 0x1b
	.long	0x11aa
	.byte	0x1
	.uleb128 0x10
	.long	0x104
	.byte	0x0
	.uleb128 0x2
	.long	.LASF244
	.byte	0x16
	.byte	0x5f
	.long	0x11b5
	.uleb128 0x1b
	.long	0x11cb
	.byte	0x1
	.uleb128 0x10
	.long	0x104
	.uleb128 0x10
	.long	0x11cb
	.uleb128 0x10
	.long	0x3f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x11d1
	.uleb128 0x6
	.long	0x45c
	.uleb128 0x2
	.long	.LASF245
	.byte	0x16
	.byte	0x60
	.long	0x441
	.uleb128 0x2
	.long	.LASF246
	.byte	0x16
	.byte	0x6e
	.long	0x11ec
	.uleb128 0x19
	.long	.LASF246
	.byte	0x1
	.uleb128 0x2
	.long	.LASF247
	.byte	0x16
	.byte	0x71
	.long	0x11fd
	.uleb128 0xc
	.long	0x12bf
	.long	.LASF247
	.byte	0x68
	.byte	0x16
	.byte	0x71
	.uleb128 0x9
	.long	.LASF248
	.byte	0x1c
	.byte	0x22
	.long	0x1334
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF249
	.byte	0x1c
	.byte	0x23
	.long	0x1346
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF250
	.byte	0x1c
	.byte	0x24
	.long	0x1366
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.long	.LASF251
	.byte	0x1c
	.byte	0x25
	.long	0x136c
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.long	.LASF252
	.byte	0x1c
	.byte	0x26
	.long	0x12e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.long	.LASF253
	.byte	0x1c
	.byte	0x27
	.long	0x12dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.long	.LASF254
	.byte	0x1c
	.byte	0x28
	.long	0x104
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.long	.LASF255
	.byte	0x1c
	.byte	0x29
	.long	0x1383
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.long	.LASF256
	.byte	0x1c
	.byte	0x2a
	.long	0x1346
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.long	.LASF257
	.byte	0x1c
	.byte	0x2b
	.long	0x1346
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x9
	.long	.LASF221
	.byte	0x1c
	.byte	0x2c
	.long	0x104
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x9
	.long	.LASF258
	.byte	0x1c
	.byte	0x2d
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x15
	.string	"bh"
	.byte	0x1c
	.byte	0x2e
	.long	0x1389
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x45c
	.uleb128 0xa
	.long	0x12d6
	.long	0x45c
	.uleb128 0x1a
	.long	0x61
	.value	0x3ff
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x113a
	.uleb128 0x5
	.byte	0x8
	.long	0x11aa
	.uleb128 0x5
	.byte	0x8
	.long	0x11d6
	.uleb128 0xa
	.long	0x12f8
	.long	0x7a
	.uleb128 0xb
	.long	0x61
	.byte	0xff
	.byte	0x0
	.uleb128 0x2
	.long	.LASF259
	.byte	0x1c
	.byte	0x1f
	.long	0x1303
	.uleb128 0x1b
	.long	0x1314
	.byte	0x1
	.uleb128 0x10
	.long	0x104
	.uleb128 0x10
	.long	0x3f
	.byte	0x0
	.uleb128 0xf
	.long	0x132e
	.byte	0x1
	.long	0x3f
	.uleb128 0x10
	.long	0x132e
	.uleb128 0x10
	.long	0x11cb
	.uleb128 0x10
	.long	0x3f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x11fd
	.uleb128 0x5
	.byte	0x8
	.long	0x1314
	.uleb128 0x1b
	.long	0x1346
	.byte	0x1
	.uleb128 0x10
	.long	0x132e
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x133a
	.uleb128 0xf
	.long	0x1366
	.byte	0x1
	.long	0x3f
	.uleb128 0x10
	.long	0x132e
	.uleb128 0x10
	.long	0x3f
	.uleb128 0x10
	.long	0x104
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x134c
	.uleb128 0x5
	.byte	0x8
	.long	0x12f8
	.uleb128 0x1b
	.long	0x1383
	.byte	0x1
	.uleb128 0x10
	.long	0x132e
	.uleb128 0x10
	.long	0x3f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x1372
	.uleb128 0x5
	.byte	0x8
	.long	0x118d
	.uleb128 0x1c
	.long	0x13bc
	.byte	0x4
	.byte	0x1d
	.byte	0x77
	.uleb128 0x1d
	.long	.LASF260
	.sleb128 0
	.uleb128 0x1d
	.long	.LASF261
	.sleb128 1
	.uleb128 0x1d
	.long	.LASF262
	.sleb128 2
	.uleb128 0x1d
	.long	.LASF263
	.sleb128 3
	.uleb128 0x1d
	.long	.LASF264
	.sleb128 4
	.uleb128 0x1d
	.long	.LASF265
	.sleb128 5
	.byte	0x0
	.uleb128 0x2
	.long	.LASF266
	.byte	0x1d
	.byte	0x79
	.long	0x138f
	.uleb128 0xc
	.long	0x140c
	.long	.LASF267
	.byte	0x18
	.byte	0x1d
	.byte	0x7b
	.uleb128 0x9
	.long	.LASF268
	.byte	0x1d
	.byte	0x7c
	.long	0x140c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF269
	.byte	0x1d
	.byte	0x7d
	.long	0x13bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x15
	.string	"bus"
	.byte	0x1d
	.byte	0x7e
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.long	.LASF270
	.byte	0x1d
	.byte	0x7f
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x11e1
	.uleb128 0x2
	.long	.LASF267
	.byte	0x1d
	.byte	0x80
	.long	0x13c7
	.uleb128 0x5
	.byte	0x8
	.long	0x119e
	.uleb128 0xa
	.long	0x1433
	.long	0x7a
	.uleb128 0xb
	.long	0x61
	.byte	0x7f
	.byte	0x0
	.uleb128 0xc
	.long	0x145c
	.long	.LASF271
	.byte	0x10
	.byte	0x17
	.byte	0x41
	.uleb128 0x9
	.long	.LASF272
	.byte	0x17
	.byte	0x42
	.long	0x141d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF273
	.byte	0x17
	.byte	0x43
	.long	0x141d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x8
	.long	0x1481
	.byte	0x10
	.byte	0x17
	.byte	0x49
	.uleb128 0x9
	.long	.LASF274
	.byte	0x17
	.byte	0x49
	.long	0x14b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF275
	.byte	0x17
	.byte	0x49
	.long	0x14be
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0xc
	.long	0x14b8
	.long	.LASF276
	.byte	0x28
	.byte	0x17
	.byte	0x46
	.uleb128 0x9
	.long	.LASF221
	.byte	0x17
	.byte	0x47
	.long	0x104
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x15
	.string	"ops"
	.byte	0x17
	.byte	0x48
	.long	0x1433
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF277
	.byte	0x17
	.byte	0x49
	.long	0x145c
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x1481
	.uleb128 0x5
	.byte	0x8
	.long	0x14b8
	.uleb128 0x2
	.long	.LASF276
	.byte	0x17
	.byte	0x4a
	.long	0x1481
	.uleb128 0x1e
	.long	0x1523
	.long	.LASF278
	.value	0x118
	.byte	0x19
	.byte	0x18
	.uleb128 0x9
	.long	.LASF279
	.byte	0x19
	.byte	0x1d
	.long	0xc2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF280
	.byte	0x19
	.byte	0x1e
	.long	0xee
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF281
	.byte	0x19
	.byte	0x20
	.long	0x68
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.long	.LASF282
	.byte	0x19
	.byte	0x21
	.long	0x81
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0x9
	.long	.LASF283
	.byte	0x19
	.byte	0x22
	.long	0x12e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x1f
	.string	"DIR"
	.byte	0x18
	.byte	0x80
	.long	0x152e
	.uleb128 0x19
	.long	.LASF284
	.byte	0x1
	.uleb128 0xc
	.long	0x1587
	.long	.LASF285
	.byte	0x28
	.byte	0x1
	.byte	0x40
	.uleb128 0x9
	.long	.LASF241
	.byte	0x1
	.byte	0x41
	.long	0x6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF286
	.byte	0x1
	.byte	0x42
	.long	0x6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF287
	.byte	0x1
	.byte	0x43
	.long	0x158e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.long	.LASF288
	.byte	0x1
	.byte	0x44
	.long	0x6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.long	.LASF242
	.byte	0x1
	.byte	0x45
	.long	0x6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x20
	.long	0x158e
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x1587
	.uleb128 0x2
	.long	.LASF285
	.byte	0x1
	.byte	0x46
	.long	0x1534
	.uleb128 0x16
	.long	0x15c7
	.byte	0x10
	.byte	0x1
	.value	0x2fe
	.uleb128 0xd
	.long	.LASF289
	.byte	0x1
	.value	0x2fc
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF241
	.byte	0x1
	.value	0x2fd
	.long	0x6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x11
	.long	.LASF290
	.byte	0x1
	.value	0x2fe
	.long	0x159f
	.uleb128 0x12
	.long	0x15f0
	.long	.LASF291
	.byte	0x8
	.byte	0x1
	.value	0x4b2
	.uleb128 0xd
	.long	.LASF292
	.byte	0x1
	.value	0x4b2
	.long	0x14b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x12
	.long	0x163a
	.long	.LASF293
	.byte	0x20
	.byte	0x1
	.value	0x57b
	.uleb128 0xd
	.long	.LASF241
	.byte	0x1
	.value	0x57c
	.long	0x6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF294
	.byte	0x1
	.value	0x57d
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF295
	.byte	0x1
	.value	0x57e
	.long	0x1655
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.long	.LASF269
	.byte	0x1
	.value	0x57f
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0xf
	.long	0x164f
	.byte	0x1
	.long	0x5e4
	.uleb128 0x10
	.long	0x164f
	.uleb128 0x10
	.long	0x3f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x15f0
	.uleb128 0x5
	.byte	0x8
	.long	0x163a
	.uleb128 0x11
	.long	.LASF293
	.byte	0x1
	.value	0x580
	.long	0x15f0
	.uleb128 0x22
	.long	0x1692
	.byte	0x1
	.long	.LASF296
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.quad	.LFB200
	.quad	.LFE200
	.byte	0x1
	.byte	0x57
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.byte	0x58
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x22
	.long	0x16c8
	.byte	0x1
	.long	.LASF297
	.byte	0x1
	.byte	0x63
	.byte	0x1
	.quad	.LFB201
	.quad	.LFE201
	.byte	0x1
	.byte	0x57
	.uleb128 0x24
	.string	"str"
	.byte	0x1
	.byte	0x62
	.long	0x6f
	.byte	0x1
	.byte	0x53
	.uleb128 0x25
	.string	"c"
	.byte	0x1
	.byte	0x64
	.long	0x7a
	.byte	0x0
	.uleb128 0x22
	.long	0x170f
	.byte	0x1
	.long	.LASF298
	.byte	0x1
	.byte	0x73
	.byte	0x1
	.quad	.LFB202
	.quad	.LFE202
	.byte	0x1
	.byte	0x57
	.uleb128 0x24
	.string	"fmt"
	.byte	0x1
	.byte	0x72
	.long	0x6f
	.byte	0x1
	.byte	0x55
	.uleb128 0x24
	.string	"ap"
	.byte	0x1
	.byte	0x72
	.long	0x170f
	.byte	0x1
	.byte	0x54
	.uleb128 0x23
	.string	"buf"
	.byte	0x1
	.byte	0x74
	.long	0x1715
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x38c
	.uleb128 0xa
	.long	0x1726
	.long	0x7a
	.uleb128 0x1a
	.long	0x61
	.value	0xfff
	.byte	0x0
	.uleb128 0x22
	.long	0x1761
	.byte	0x1
	.long	.LASF299
	.byte	0x1
	.byte	0x7a
	.byte	0x1
	.quad	.LFB203
	.quad	.LFE203
	.byte	0x1
	.byte	0x57
	.uleb128 0x24
	.string	"fmt"
	.byte	0x1
	.byte	0x79
	.long	0x6f
	.byte	0x1
	.byte	0x55
	.uleb128 0x21
	.uleb128 0x23
	.string	"ap"
	.byte	0x1
	.byte	0x7b
	.long	0x451
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x22
	.long	0x1799
	.byte	0x1
	.long	.LASF300
	.byte	0x1
	.byte	0x82
	.byte	0x1
	.quad	.LFB204
	.quad	.LFE204
	.byte	0x1
	.byte	0x57
	.uleb128 0x26
	.long	.LASF301
	.byte	0x1
	.byte	0x81
	.long	0x6f
	.byte	0x1
	.byte	0x53
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.byte	0x83
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.byte	0x0
	.uleb128 0x27
	.long	0x17e4
	.long	.LASF303
	.byte	0x1
	.byte	0x9d
	.byte	0x1
	.long	0x3f
	.quad	.LFB205
	.quad	.LFE205
	.byte	0x1
	.byte	0x57
	.uleb128 0x26
	.long	.LASF302
	.byte	0x1
	.byte	0x9c
	.long	0xa14
	.byte	0x1
	.byte	0x55
	.uleb128 0x24
	.string	"fmt"
	.byte	0x1
	.byte	0x9c
	.long	0x6f
	.byte	0x1
	.byte	0x55
	.uleb128 0x21
	.uleb128 0x23
	.string	"ap"
	.byte	0x1
	.byte	0x9e
	.long	0x451
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x27
	.long	0x1844
	.long	.LASF304
	.byte	0x1
	.byte	0xa6
	.byte	0x1
	.long	0x3f
	.quad	.LFB206
	.quad	.LFE206
	.byte	0x1
	.byte	0x57
	.uleb128 0x26
	.long	.LASF241
	.byte	0x1
	.byte	0xa5
	.long	0x6f
	.byte	0x1
	.byte	0x5c
	.uleb128 0x26
	.long	.LASF305
	.byte	0x1
	.byte	0xa5
	.long	0x6f
	.byte	0x1
	.byte	0x53
	.uleb128 0x23
	.string	"p"
	.byte	0x1
	.byte	0xa7
	.long	0x6f
	.byte	0x1
	.byte	0x58
	.uleb128 0x28
	.long	.LASF306
	.byte	0x1
	.byte	0xa7
	.long	0x6f
	.byte	0x1
	.byte	0x53
	.uleb128 0x25
	.string	"len"
	.byte	0x1
	.byte	0xa8
	.long	0x3f
	.byte	0x0
	.uleb128 0x29
	.long	0x18bf
	.long	.LASF307
	.byte	0x1
	.byte	0xba
	.byte	0x1
	.quad	.LFB207
	.quad	.LFE207
	.byte	0x1
	.byte	0x57
	.uleb128 0x26
	.long	.LASF308
	.byte	0x1
	.byte	0xb9
	.long	0x18bf
	.byte	0x1
	.byte	0x55
	.uleb128 0x26
	.long	.LASF309
	.byte	0x1
	.byte	0xb9
	.long	0x6f
	.byte	0x1
	.byte	0x5c
	.uleb128 0x26
	.long	.LASF241
	.byte	0x1
	.byte	0xb9
	.long	0x6f
	.byte	0x1
	.byte	0x56
	.uleb128 0x23
	.string	"cmd"
	.byte	0x1
	.byte	0xbb
	.long	0x18bf
	.byte	0x1
	.byte	0x53
	.uleb128 0x2a
	.quad	.LBB2
	.quad	.LBE2
	.uleb128 0x2b
	.long	.LASF310
	.byte	0x1
	.byte	0xbe
	.long	0x2d
	.uleb128 0x2b
	.long	.LASF311
	.byte	0x1
	.byte	0xbe
	.long	0x2d
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x1594
	.uleb128 0x29
	.long	0x1992
	.long	.LASF312
	.byte	0x1
	.byte	0xc4
	.byte	0x1
	.quad	.LFB208
	.quad	.LFE208
	.byte	0x1
	.byte	0x57
	.uleb128 0x26
	.long	.LASF241
	.byte	0x1
	.byte	0xc3
	.long	0x6f
	.byte	0x1
	.byte	0x53
	.uleb128 0x2c
	.long	0x191c
	.quad	.LBB3
	.quad	.LBE3
	.uleb128 0x2b
	.long	.LASF310
	.byte	0x1
	.byte	0xc5
	.long	0x2d
	.uleb128 0x2b
	.long	.LASF311
	.byte	0x1
	.byte	0xc5
	.long	0x2d
	.byte	0x0
	.uleb128 0x2c
	.long	0x1972
	.quad	.LBB4
	.quad	.LBE4
	.uleb128 0x2b
	.long	.LASF310
	.byte	0x1
	.byte	0xc9
	.long	0x2d
	.uleb128 0x2b
	.long	.LASF311
	.byte	0x1
	.byte	0xc9
	.long	0x2d
	.uleb128 0x2a
	.quad	.LBB5
	.quad	.LBE5
	.uleb128 0x2b
	.long	.LASF313
	.byte	0x1
	.byte	0xc9
	.long	0x1992
	.uleb128 0x28
	.long	.LASF314
	.byte	0x1
	.byte	0xc9
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
	.quad	.LBB6
	.quad	.LBE6
	.uleb128 0x28
	.long	.LASF315
	.byte	0x1
	.byte	0xca
	.long	0x199d
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x1998
	.uleb128 0x6
	.long	0x81
	.uleb128 0x5
	.byte	0x8
	.long	0x1181
	.uleb128 0x29
	.long	0x19cf
	.long	.LASF316
	.byte	0x1
	.byte	0xd5
	.byte	0x1
	.quad	.LFB209
	.quad	.LFE209
	.byte	0x1
	.byte	0x57
	.uleb128 0x26
	.long	.LASF241
	.byte	0x1
	.byte	0xd4
	.long	0x6f
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x29
	.long	0x1a79
	.long	.LASF317
	.byte	0x1
	.byte	0xda
	.byte	0x1
	.quad	.LFB210
	.quad	.LFE210
	.byte	0x1
	.byte	0x57
	.uleb128 0x26
	.long	.LASF318
	.byte	0x1
	.byte	0xd9
	.long	0x6f
	.byte	0x1
	.byte	0x5d
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.byte	0xdb
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.uleb128 0x28
	.long	.LASF319
	.byte	0x1
	.byte	0xdb
	.long	0x3f
	.byte	0x1
	.byte	0x5c
	.uleb128 0x2d
	.long	0x1a50
	.long	.Ldebug_ranges0+0x0
	.uleb128 0x2b
	.long	.LASF310
	.byte	0x1
	.byte	0xdd
	.long	0x2d
	.uleb128 0x2b
	.long	.LASF311
	.byte	0x1
	.byte	0xdd
	.long	0x2d
	.uleb128 0x2e
	.long	.Ldebug_ranges0+0x30
	.uleb128 0x2b
	.long	.LASF313
	.byte	0x1
	.byte	0xdd
	.long	0x1992
	.uleb128 0x28
	.long	.LASF314
	.byte	0x1
	.byte	0xdd
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
	.quad	.LBB11
	.quad	.LBE11
	.uleb128 0x2b
	.long	.LASF310
	.byte	0x1
	.byte	0xe0
	.long	0x2d
	.uleb128 0x2b
	.long	.LASF311
	.byte	0x1
	.byte	0xe0
	.long	0x2d
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.long	0x1ad0
	.long	.LASF320
	.byte	0x1
	.byte	0xe6
	.byte	0x1
	.quad	.LFB211
	.quad	.LFE211
	.byte	0x1
	.byte	0x57
	.uleb128 0x26
	.long	.LASF315
	.byte	0x1
	.byte	0xe5
	.long	0x6f
	.byte	0x1
	.byte	0x56
	.uleb128 0x23
	.string	"cmd"
	.byte	0x1
	.byte	0xe7
	.long	0x18bf
	.byte	0x1
	.byte	0x53
	.uleb128 0x2f
	.long	.LASF242
	.byte	0x1
	.byte	0xef
	.quad	.L117
	.uleb128 0x2f
	.long	.LASF321
	.byte	0x1
	.byte	0xf2
	.quad	.L122
	.byte	0x0
	.uleb128 0x30
	.long	.LASF322
	.byte	0x1
	.byte	0xf7
	.byte	0x1
	.quad	.LFB212
	.quad	.LFE212
	.byte	0x1
	.byte	0x57
	.uleb128 0x30
	.long	.LASF323
	.byte	0x1
	.byte	0xfc
	.byte	0x1
	.quad	.LFB213
	.quad	.LFE213
	.byte	0x1
	.byte	0x57
	.uleb128 0x31
	.long	.LASF324
	.byte	0x1
	.value	0x102
	.byte	0x1
	.quad	.LFB214
	.quad	.LFE214
	.byte	0x1
	.byte	0x57
	.uleb128 0x31
	.long	.LASF325
	.byte	0x1
	.value	0x107
	.byte	0x1
	.quad	.LFB215
	.quad	.LFE215
	.byte	0x1
	.byte	0x57
	.uleb128 0x32
	.long	0x1b7a
	.long	.LASF326
	.byte	0x1
	.value	0x10d
	.byte	0x1
	.long	0x3f
	.quad	.LFB216
	.quad	.LFE216
	.byte	0x1
	.byte	0x57
	.uleb128 0x33
	.long	.LASF220
	.byte	0x1
	.value	0x10c
	.long	0x3f
	.byte	0x1
	.byte	0x55
	.uleb128 0x34
	.string	"env"
	.byte	0x1
	.value	0x10e
	.long	0x12d6
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x35
	.long	.LASF327
	.byte	0x1
	.value	0x11a
	.byte	0x1
	.long	0x12d6
	.quad	.LFB217
	.quad	.LFE217
	.byte	0x1
	.byte	0x57
	.uleb128 0x36
	.long	0x1bc7
	.long	.LASF328
	.byte	0x1
	.value	0x122
	.byte	0x1
	.quad	.LFB218
	.quad	.LFE218
	.byte	0x1
	.byte	0x57
	.uleb128 0x34
	.string	"env"
	.byte	0x1
	.value	0x123
	.long	0x12d6
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x36
	.long	0x1bf5
	.long	.LASF329
	.byte	0x1
	.value	0x131
	.byte	0x1
	.quad	.LFB219
	.quad	.LFE219
	.byte	0x1
	.byte	0x57
	.uleb128 0x34
	.string	"env"
	.byte	0x1
	.value	0x132
	.long	0x12d6
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x36
	.long	0x1c23
	.long	.LASF330
	.byte	0x1
	.value	0x151
	.byte	0x1
	.quad	.LFB220
	.quad	.LFE220
	.byte	0x1
	.byte	0x57
	.uleb128 0x33
	.long	.LASF331
	.byte	0x1
	.value	0x150
	.long	0x3f
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x31
	.long	.LASF332
	.byte	0x1
	.value	0x157
	.byte	0x1
	.quad	.LFB221
	.quad	.LFE221
	.byte	0x1
	.byte	0x57
	.uleb128 0x36
	.long	0x1c78
	.long	.LASF333
	.byte	0x1
	.value	0x15c
	.byte	0x1
	.quad	.LFB222
	.quad	.LFE222
	.byte	0x1
	.byte	0x57
	.uleb128 0x34
	.string	"i"
	.byte	0x1
	.value	0x15d
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.uleb128 0x34
	.string	"str"
	.byte	0x1
	.value	0x15e
	.long	0x6f
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x31
	.long	.LASF334
	.byte	0x1
	.value	0x176
	.byte	0x1
	.quad	.LFB223
	.quad	.LFE223
	.byte	0x1
	.byte	0x57
	.uleb128 0x32
	.long	0x1cd2
	.long	.LASF335
	.byte	0x1
	.value	0x17b
	.byte	0x1
	.long	0x3f
	.quad	.LFB224
	.quad	.LFE224
	.byte	0x1
	.byte	0x57
	.uleb128 0x37
	.string	"bs"
	.byte	0x1
	.value	0x17a
	.long	0x140c
	.byte	0x1
	.byte	0x53
	.uleb128 0x33
	.long	.LASF336
	.byte	0x1
	.value	0x17a
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.byte	0x0
	.uleb128 0x36
	.long	0x1d1b
	.long	.LASF337
	.byte	0x1
	.value	0x18d
	.byte	0x1
	.quad	.LFB225
	.quad	.LFE225
	.byte	0x1
	.byte	0x57
	.uleb128 0x33
	.long	.LASF336
	.byte	0x1
	.value	0x18c
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.uleb128 0x33
	.long	.LASF301
	.byte	0x1
	.value	0x18c
	.long	0x6f
	.byte	0x1
	.byte	0x55
	.uleb128 0x34
	.string	"bs"
	.byte	0x1
	.value	0x18e
	.long	0x140c
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x36
	.long	0x1d49
	.long	.LASF338
	.byte	0x1
	.value	0x1c0
	.byte	0x1
	.quad	.LFB229
	.quad	.LFE229
	.byte	0x1
	.byte	0x57
	.uleb128 0x33
	.long	.LASF301
	.byte	0x1
	.value	0x1bf
	.long	0x6f
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x36
	.long	0x1d77
	.long	.LASF339
	.byte	0x1
	.value	0x1c5
	.byte	0x1
	.quad	.LFB230
	.quad	.LFE230
	.byte	0x1
	.byte	0x57
	.uleb128 0x33
	.long	.LASF301
	.byte	0x1
	.value	0x1c4
	.long	0x6f
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x36
	.long	0x1ddd
	.long	.LASF340
	.byte	0x1
	.value	0x1ca
	.byte	0x1
	.quad	.LFB231
	.quad	.LFE231
	.byte	0x1
	.byte	0x57
	.uleb128 0x33
	.long	.LASF341
	.byte	0x1
	.value	0x1c9
	.long	0x6f
	.byte	0x1
	.byte	0x58
	.uleb128 0x38
	.long	.LASF240
	.byte	0x1
	.value	0x1cb
	.long	0x3f
	.byte	0x1
	.byte	0x55
	.uleb128 0x2a
	.quad	.LBB12
	.quad	.LBE12
	.uleb128 0x39
	.long	.LASF310
	.byte	0x1
	.value	0x1cd
	.long	0x2d
	.uleb128 0x39
	.long	.LASF311
	.byte	0x1
	.value	0x1cd
	.long	0x2d
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.long	.LASF342
	.byte	0x1
	.value	0x1da
	.byte	0x1
	.quad	.LFB232
	.quad	.LFE232
	.byte	0x1
	.byte	0x57
	.uleb128 0x31
	.long	.LASF343
	.byte	0x1
	.value	0x1df
	.byte	0x1
	.quad	.LFB233
	.quad	.LFE233
	.byte	0x1
	.byte	0x57
	.uleb128 0x36
	.long	0x1e41
	.long	.LASF344
	.byte	0x1
	.value	0x1e5
	.byte	0x1
	.quad	.LFB234
	.quad	.LFE234
	.byte	0x1
	.byte	0x57
	.uleb128 0x33
	.long	.LASF345
	.byte	0x1
	.value	0x1e4
	.long	0x6f
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x36
	.long	0x1e6d
	.long	.LASF346
	.byte	0x1
	.value	0x1f1
	.byte	0x1
	.quad	.LFB235
	.quad	.LFE235
	.byte	0x1
	.byte	0x57
	.uleb128 0x37
	.string	"c"
	.byte	0x1
	.value	0x1f0
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x36
	.long	0x1fdf
	.long	.LASF347
	.byte	0x1
	.value	0x20d
	.byte	0x1
	.quad	.LFB236
	.quad	.LFE236
	.byte	0x1
	.byte	0x57
	.uleb128 0x33
	.long	.LASF348
	.byte	0x1
	.value	0x20b
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.uleb128 0x33
	.long	.LASF349
	.byte	0x1
	.value	0x20b
	.long	0x3f
	.byte	0x1
	.byte	0x5e
	.uleb128 0x33
	.long	.LASF350
	.byte	0x1
	.value	0x20b
	.long	0x3f
	.byte	0x1
	.byte	0x5c
	.uleb128 0x33
	.long	.LASF351
	.byte	0x1
	.value	0x20c
	.long	0x5fa
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x33
	.long	.LASF352
	.byte	0x1
	.value	0x20c
	.long	0x3f
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x34
	.string	"env"
	.byte	0x1
	.value	0x20e
	.long	0x12d6
	.byte	0x1
	.byte	0x55
	.uleb128 0x39
	.long	.LASF353
	.byte	0x1
	.value	0x20f
	.long	0x3f
	.uleb128 0x34
	.string	"l"
	.byte	0x1
	.value	0x20f
	.long	0x3f
	.byte	0x1
	.byte	0x5d
	.uleb128 0x38
	.long	.LASF354
	.byte	0x1
	.value	0x20f
	.long	0x3f
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x34
	.string	"i"
	.byte	0x1
	.value	0x20f
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.uleb128 0x38
	.long	.LASF355
	.byte	0x1
	.value	0x20f
	.long	0x3f
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x34
	.string	"len"
	.byte	0x1
	.value	0x20f
	.long	0x3f
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x34
	.string	"buf"
	.byte	0x1
	.value	0x210
	.long	0x76d
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x34
	.string	"v"
	.byte	0x1
	.value	0x211
	.long	0x47d
	.byte	0x1
	.byte	0x53
	.uleb128 0x3a
	.long	0x1f6d
	.long	0x1fdf
	.quad	.LBB13
	.quad	.LBE13
	.uleb128 0x3b
	.long	0x1ff0
	.byte	0x0
	.uleb128 0x3a
	.long	0x1f8c
	.long	0x1ffc
	.quad	.LBB14
	.quad	.LBE14
	.uleb128 0x3b
	.long	0x200e
	.byte	0x0
	.uleb128 0x3a
	.long	0x1fab
	.long	0x201b
	.quad	.LBB16
	.quad	.LBE16
	.uleb128 0x3b
	.long	0x202d
	.byte	0x0
	.uleb128 0x3a
	.long	0x1fca
	.long	0x203a
	.quad	.LBB17
	.quad	.LBE17
	.uleb128 0x3b
	.long	0x204c
	.byte	0x0
	.uleb128 0x2e
	.long	.Ldebug_ranges0+0x60
	.uleb128 0x38
	.long	.LASF121
	.byte	0x1
	.value	0x214
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.byte	0x0
	.byte	0x0
	.uleb128 0x3c
	.long	0x1ffc
	.long	.LASF356
	.byte	0x2
	.byte	0xcc
	.byte	0x1
	.long	0x3f
	.byte	0x3
	.uleb128 0x3d
	.string	"ptr"
	.byte	0x2
	.byte	0xcb
	.long	0x104
	.byte	0x0
	.uleb128 0x3e
	.long	0x201b
	.long	.LASF357
	.byte	0x2
	.value	0x164
	.byte	0x1
	.long	0x47d
	.byte	0x3
	.uleb128 0x3f
	.string	"ptr"
	.byte	0x2
	.value	0x163
	.long	0x104
	.byte	0x0
	.uleb128 0x3e
	.long	0x203a
	.long	.LASF358
	.byte	0x2
	.value	0x15f
	.byte	0x1
	.long	0x3f
	.byte	0x3
	.uleb128 0x3f
	.string	"ptr"
	.byte	0x2
	.value	0x15e
	.long	0x104
	.byte	0x0
	.uleb128 0x3e
	.long	0x2059
	.long	.LASF359
	.byte	0x2
	.value	0x155
	.byte	0x1
	.long	0x3f
	.byte	0x3
	.uleb128 0x3f
	.string	"ptr"
	.byte	0x2
	.value	0x154
	.long	0x104
	.byte	0x0
	.uleb128 0x36
	.long	0x20cb
	.long	.LASF360
	.byte	0x1
	.value	0x28d
	.byte	0x1
	.quad	.LFB237
	.quad	.LFE237
	.byte	0x1
	.byte	0x57
	.uleb128 0x33
	.long	.LASF348
	.byte	0x1
	.value	0x28b
	.long	0x3f
	.byte	0x1
	.byte	0x55
	.uleb128 0x33
	.long	.LASF349
	.byte	0x1
	.value	0x28b
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x33
	.long	.LASF361
	.byte	0x1
	.value	0x28b
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x33
	.long	.LASF362
	.byte	0x1
	.value	0x28c
	.long	0x472
	.byte	0x1
	.byte	0x52
	.uleb128 0x33
	.long	.LASF363
	.byte	0x1
	.value	0x28c
	.long	0x472
	.byte	0x1
	.byte	0x58
	.uleb128 0x39
	.long	.LASF351
	.byte	0x1
	.value	0x28e
	.long	0x5e4
	.byte	0x0
	.uleb128 0x36
	.long	0x213d
	.long	.LASF364
	.byte	0x1
	.value	0x29b
	.byte	0x1
	.quad	.LFB238
	.quad	.LFE238
	.byte	0x1
	.byte	0x57
	.uleb128 0x33
	.long	.LASF348
	.byte	0x1
	.value	0x298
	.long	0x3f
	.byte	0x1
	.byte	0x55
	.uleb128 0x33
	.long	.LASF349
	.byte	0x1
	.value	0x298
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x33
	.long	.LASF361
	.byte	0x1
	.value	0x298
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x33
	.long	.LASF362
	.byte	0x1
	.value	0x299
	.long	0x472
	.byte	0x1
	.byte	0x52
	.uleb128 0x33
	.long	.LASF363
	.byte	0x1
	.value	0x299
	.long	0x472
	.byte	0x1
	.byte	0x58
	.uleb128 0x39
	.long	.LASF351
	.byte	0x1
	.value	0x29c
	.long	0x5fa
	.byte	0x0
	.uleb128 0x36
	.long	0x21b1
	.long	.LASF365
	.byte	0x1
	.value	0x2a1
	.byte	0x1
	.quad	.LFB239
	.quad	.LFE239
	.byte	0x1
	.byte	0x57
	.uleb128 0x33
	.long	.LASF348
	.byte	0x1
	.value	0x2a0
	.long	0x3f
	.byte	0x1
	.byte	0x55
	.uleb128 0x33
	.long	.LASF349
	.byte	0x1
	.value	0x2a0
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.uleb128 0x33
	.long	.LASF361
	.byte	0x1
	.value	0x2a0
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x33
	.long	.LASF366
	.byte	0x1
	.value	0x2a0
	.long	0x46
	.byte	0x1
	.byte	0x52
	.uleb128 0x33
	.long	.LASF367
	.byte	0x1
	.value	0x2a0
	.long	0x46
	.byte	0x1
	.byte	0x58
	.uleb128 0x34
	.string	"val"
	.byte	0x1
	.value	0x2a2
	.long	0x5fa
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0x36
	.long	0x224c
	.long	.LASF368
	.byte	0x1
	.value	0x2cf
	.byte	0x1
	.quad	.LFB240
	.quad	.LFE240
	.byte	0x1
	.byte	0x57
	.uleb128 0x33
	.long	.LASF366
	.byte	0x1
	.value	0x2cd
	.long	0x46
	.byte	0x1
	.byte	0x55
	.uleb128 0x33
	.long	.LASF367
	.byte	0x1
	.value	0x2cd
	.long	0x46
	.byte	0x1
	.byte	0x54
	.uleb128 0x33
	.long	.LASF361
	.byte	0x1
	.value	0x2ce
	.long	0x472
	.byte	0x1
	.byte	0x56
	.uleb128 0x33
	.long	.LASF301
	.byte	0x1
	.value	0x2ce
	.long	0x6f
	.byte	0x1
	.byte	0x53
	.uleb128 0x34
	.string	"f"
	.byte	0x1
	.value	0x2d0
	.long	0xa14
	.byte	0x1
	.byte	0x5d
	.uleb128 0x38
	.long	.LASF351
	.byte	0x1
	.value	0x2d1
	.long	0x5e4
	.byte	0x1
	.byte	0x5c
	.uleb128 0x34
	.string	"l"
	.byte	0x1
	.value	0x2d2
	.long	0x472
	.byte	0x1
	.byte	0x53
	.uleb128 0x34
	.string	"env"
	.byte	0x1
	.value	0x2d3
	.long	0x12d6
	.byte	0x1
	.byte	0x5f
	.uleb128 0x34
	.string	"buf"
	.byte	0x1
	.value	0x2d4
	.long	0x12c5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x36
	.long	0x22b3
	.long	.LASF369
	.byte	0x1
	.value	0x2ec
	.byte	0x1
	.quad	.LFB241
	.quad	.LFE241
	.byte	0x1
	.byte	0x57
	.uleb128 0x33
	.long	.LASF370
	.byte	0x1
	.value	0x2eb
	.long	0x472
	.byte	0x1
	.byte	0x55
	.uleb128 0x33
	.long	.LASF361
	.byte	0x1
	.value	0x2eb
	.long	0x472
	.byte	0x1
	.byte	0x54
	.uleb128 0x38
	.long	.LASF351
	.byte	0x1
	.value	0x2ed
	.long	0x472
	.byte	0x1
	.byte	0x53
	.uleb128 0x34
	.string	"buf"
	.byte	0x1
	.value	0x2ee
	.long	0x22b3
	.byte	0x2
	.byte	0x91
	.sleb128 15
	.uleb128 0x34
	.string	"sum"
	.byte	0x1
	.value	0x2ef
	.long	0x467
	.byte	0x1
	.byte	0x56
	.byte	0x0
	.uleb128 0xa
	.long	0x22c3
	.long	0x45c
	.uleb128 0xb
	.long	0x61
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
	.long	0x23a2
	.long	.LASF371
	.byte	0x1
	.value	0x385
	.byte	0x1
	.quad	.LFB243
	.quad	.LFE243
	.byte	0x1
	.byte	0x57
	.uleb128 0x33
	.long	.LASF372
	.byte	0x1
	.value	0x384
	.long	0x6f
	.byte	0x1
	.byte	0x55
	.uleb128 0x38
	.long	.LASF373
	.byte	0x1
	.value	0x386
	.long	0x23a2
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x34
	.string	"q"
	.byte	0x1
	.value	0x386
	.long	0x11c
	.byte	0x1
	.byte	0x54
	.uleb128 0x38
	.long	.LASF374
	.byte	0x1
	.value	0x387
	.long	0x76d
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x34
	.string	"p"
	.byte	0x1
	.value	0x388
	.long	0x6f
	.byte	0x1
	.byte	0x56
	.uleb128 0x38
	.long	.LASF375
	.byte	0x1
	.value	0x389
	.long	0x3f
	.byte	0x1
	.byte	0x5d
	.uleb128 0x38
	.long	.LASF289
	.byte	0x1
	.value	0x389
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.uleb128 0x34
	.string	"i"
	.byte	0x1
	.value	0x389
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.uleb128 0x40
	.long	0x23b2
	.quad	.LBB20
	.quad	.LBE20
	.uleb128 0x3b
	.long	0x23c4
	.uleb128 0x2e
	.long	.Ldebug_ranges0+0x90
	.uleb128 0x41
	.long	0x23d0
	.byte	0x1
	.byte	0x53
	.uleb128 0x41
	.long	0x23da
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x41
	.long	0x23e6
	.byte	0x1
	.byte	0x52
	.uleb128 0x2a
	.quad	.LBB22
	.quad	.LBE22
	.uleb128 0x42
	.long	0x23f3
	.uleb128 0x42
	.long	0x23ff
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.long	0x23b2
	.long	0x7a
	.uleb128 0xb
	.long	0x61
	.byte	0xf
	.byte	0x0
	.uleb128 0x3e
	.long	0x2445
	.long	.LASF376
	.byte	0x1
	.value	0x373
	.byte	0x1
	.long	0x3f
	.byte	0x1
	.uleb128 0x3f
	.string	"key"
	.byte	0x1
	.value	0x372
	.long	0x6f
	.uleb128 0x43
	.string	"p"
	.byte	0x1
	.value	0x374
	.long	0x2445
	.uleb128 0x39
	.long	.LASF377
	.byte	0x1
	.value	0x375
	.long	0x11c
	.uleb128 0x43
	.string	"ret"
	.byte	0x1
	.value	0x376
	.long	0x3f
	.uleb128 0x44
	.uleb128 0x39
	.long	.LASF310
	.byte	0x1
	.value	0x379
	.long	0x2d
	.uleb128 0x39
	.long	.LASF311
	.byte	0x1
	.value	0x379
	.long	0x2d
	.uleb128 0x45
	.long	0x2429
	.uleb128 0x39
	.long	.LASF378
	.byte	0x1
	.value	0x379
	.long	0x1992
	.uleb128 0x39
	.long	.LASF314
	.byte	0x1
	.value	0x379
	.long	0x3f
	.byte	0x0
	.uleb128 0x44
	.uleb128 0x39
	.long	.LASF313
	.byte	0x1
	.value	0x379
	.long	0x1992
	.uleb128 0x39
	.long	.LASF314
	.byte	0x1
	.value	0x379
	.long	0x3f
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x244b
	.uleb128 0x6
	.long	0x15c7
	.uleb128 0x36
	.long	0x24bd
	.long	.LASF379
	.byte	0x1
	.value	0x3b4
	.byte	0x1
	.quad	.LFB244
	.quad	.LFE244
	.byte	0x1
	.byte	0x57
	.uleb128 0x33
	.long	.LASF380
	.byte	0x1
	.value	0x3b2
	.long	0x6f
	.byte	0x1
	.byte	0x55
	.uleb128 0x33
	.long	.LASF381
	.byte	0x1
	.value	0x3b2
	.long	0x6f
	.byte	0x1
	.byte	0x53
	.uleb128 0x33
	.long	.LASF382
	.byte	0x1
	.value	0x3b3
	.long	0x6f
	.byte	0x1
	.byte	0x56
	.uleb128 0x43
	.string	"dx"
	.byte	0x1
	.value	0x3b5
	.long	0x3f
	.uleb128 0x43
	.string	"dy"
	.byte	0x1
	.value	0x3b5
	.long	0x3f
	.uleb128 0x34
	.string	"dz"
	.byte	0x1
	.value	0x3b5
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x36
	.long	0x24eb
	.long	.LASF383
	.byte	0x1
	.value	0x3bf
	.byte	0x1
	.quad	.LFB245
	.quad	.LFE245
	.byte	0x1
	.byte	0x57
	.uleb128 0x33
	.long	.LASF384
	.byte	0x1
	.value	0x3be
	.long	0x3f
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x36
	.long	0x258a
	.long	.LASF385
	.byte	0x1
	.value	0x3c5
	.byte	0x1
	.quad	.LFB246
	.quad	.LFE246
	.byte	0x1
	.byte	0x57
	.uleb128 0x33
	.long	.LASF348
	.byte	0x1
	.value	0x3c4
	.long	0x3f
	.byte	0x1
	.byte	0x55
	.uleb128 0x33
	.long	.LASF349
	.byte	0x1
	.value	0x3c4
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x33
	.long	.LASF361
	.byte	0x1
	.value	0x3c4
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.uleb128 0x33
	.long	.LASF351
	.byte	0x1
	.value	0x3c4
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.uleb128 0x33
	.long	.LASF386
	.byte	0x1
	.value	0x3c4
	.long	0x3f
	.byte	0x1
	.byte	0x58
	.uleb128 0x33
	.long	.LASF331
	.byte	0x1
	.value	0x3c4
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.uleb128 0x34
	.string	"val"
	.byte	0x1
	.value	0x3c6
	.long	0x472
	.byte	0x1
	.byte	0x50
	.uleb128 0x38
	.long	.LASF387
	.byte	0x1
	.value	0x3c7
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x34
	.string	"tag"
	.byte	0x1
	.value	0x3c8
	.long	0x894
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x31
	.long	.LASF388
	.byte	0x1
	.value	0x3e4
	.byte	0x1
	.quad	.LFB247
	.quad	.LFE247
	.byte	0x1
	.byte	0x57
	.uleb128 0x31
	.long	.LASF389
	.byte	0x1
	.value	0x3e9
	.byte	0x1
	.quad	.LFB248
	.quad	.LFE248
	.byte	0x1
	.byte	0x57
	.uleb128 0x36
	.long	0x260a
	.long	.LASF390
	.byte	0x1
	.value	0x3ef
	.byte	0x1
	.quad	.LFB249
	.quad	.LFE249
	.byte	0x1
	.byte	0x57
	.uleb128 0x33
	.long	.LASF351
	.byte	0x1
	.value	0x3ee
	.long	0x472
	.byte	0x1
	.byte	0x55
	.uleb128 0x37
	.string	"pte"
	.byte	0x1
	.value	0x3ee
	.long	0x472
	.byte	0x1
	.byte	0x54
	.uleb128 0x33
	.long	.LASF240
	.byte	0x1
	.value	0x3ee
	.long	0x472
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x36
	.long	0x270e
	.long	.LASF391
	.byte	0x1
	.value	0x3fe
	.byte	0x1
	.quad	.LFB250
	.quad	.LFE250
	.byte	0x1
	.byte	0x57
	.uleb128 0x34
	.string	"env"
	.byte	0x1
	.value	0x3ff
	.long	0x12d6
	.byte	0x1
	.byte	0x5e
	.uleb128 0x34
	.string	"l1"
	.byte	0x1
	.value	0x400
	.long	0x3f
	.byte	0x1
	.byte	0x5c
	.uleb128 0x34
	.string	"l2"
	.byte	0x1
	.value	0x400
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.uleb128 0x43
	.string	"pgd"
	.byte	0x1
	.value	0x401
	.long	0x472
	.uleb128 0x34
	.string	"pde"
	.byte	0x1
	.value	0x401
	.long	0x472
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x34
	.string	"pte"
	.byte	0x1
	.value	0x401
	.long	0x472
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3a
	.long	0x26a6
	.long	0x270e
	.quad	.LBB27
	.quad	.LBE27
	.uleb128 0x46
	.long	0x271c
	.byte	0x1
	.byte	0x55
	.uleb128 0x3b
	.long	0x2728
	.uleb128 0x3b
	.long	0x2734
	.byte	0x0
	.uleb128 0x3a
	.long	0x26c5
	.long	0x2741
	.quad	.LBB30
	.quad	.LBE30
	.uleb128 0x3b
	.long	0x2752
	.byte	0x0
	.uleb128 0x3a
	.long	0x26f0
	.long	0x270e
	.quad	.LBB31
	.quad	.LBE31
	.uleb128 0x46
	.long	0x271c
	.byte	0x1
	.byte	0x55
	.uleb128 0x3b
	.long	0x2728
	.uleb128 0x3b
	.long	0x2734
	.byte	0x0
	.uleb128 0x40
	.long	0x2741
	.quad	.LBB35
	.quad	.LBE35
	.uleb128 0x46
	.long	0x2752
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.byte	0x0
	.uleb128 0x47
	.long	0x2741
	.long	.LASF392
	.byte	0x2
	.value	0x39c
	.byte	0x1
	.byte	0x3
	.uleb128 0x48
	.long	.LASF351
	.byte	0x2
	.value	0x39a
	.long	0x5fa
	.uleb128 0x3f
	.string	"buf"
	.byte	0x2
	.value	0x39b
	.long	0x12bf
	.uleb128 0x3f
	.string	"len"
	.byte	0x2
	.value	0x39b
	.long	0x3f
	.byte	0x0
	.uleb128 0x3c
	.long	0x275c
	.long	.LASF393
	.byte	0x3
	.byte	0x7c
	.byte	0x1
	.long	0x472
	.byte	0x3
	.uleb128 0x3d
	.string	"v"
	.byte	0x3
	.byte	0x7c
	.long	0x472
	.byte	0x0
	.uleb128 0x36
	.long	0x27c2
	.long	.LASF394
	.byte	0x1
	.value	0x424
	.byte	0x1
	.quad	.LFB251
	.quad	.LFE251
	.byte	0x1
	.byte	0x57
	.uleb128 0x33
	.long	.LASF306
	.byte	0x1
	.value	0x422
	.long	0x27c2
	.byte	0x1
	.byte	0x5d
	.uleb128 0x33
	.long	.LASF395
	.byte	0x1
	.value	0x422
	.long	0x4d
	.byte	0x1
	.byte	0x5c
	.uleb128 0x37
	.string	"end"
	.byte	0x1
	.value	0x423
	.long	0x472
	.byte	0x1
	.byte	0x56
	.uleb128 0x33
	.long	.LASF396
	.byte	0x1
	.value	0x423
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.uleb128 0x38
	.long	.LASF397
	.byte	0x1
	.value	0x425
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x472
	.uleb128 0x36
	.long	0x2906
	.long	.LASF398
	.byte	0x1
	.value	0x438
	.byte	0x1
	.quad	.LFB252
	.quad	.LFE252
	.byte	0x1
	.byte	0x57
	.uleb128 0x34
	.string	"env"
	.byte	0x1
	.value	0x439
	.long	0x12d6
	.byte	0x1
	.byte	0x5d
	.uleb128 0x34
	.string	"l1"
	.byte	0x1
	.value	0x43a
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.uleb128 0x34
	.string	"l2"
	.byte	0x1
	.value	0x43a
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.uleb128 0x39
	.long	.LASF396
	.byte	0x1
	.value	0x43a
	.long	0x3f
	.uleb128 0x38
	.long	.LASF399
	.byte	0x1
	.value	0x43a
	.long	0x3f
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x34
	.string	"pgd"
	.byte	0x1
	.value	0x43b
	.long	0x472
	.byte	0x1
	.byte	0x50
	.uleb128 0x34
	.string	"pde"
	.byte	0x1
	.value	0x43b
	.long	0x472
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x34
	.string	"pte"
	.byte	0x1
	.value	0x43b
	.long	0x472
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x38
	.long	.LASF370
	.byte	0x1
	.value	0x43b
	.long	0x472
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x34
	.string	"end"
	.byte	0x1
	.value	0x43b
	.long	0x472
	.byte	0x1
	.byte	0x54
	.uleb128 0x3a
	.long	0x289e
	.long	0x270e
	.quad	.LBB36
	.quad	.LBE36
	.uleb128 0x46
	.long	0x271c
	.byte	0x1
	.byte	0x55
	.uleb128 0x3b
	.long	0x2728
	.uleb128 0x3b
	.long	0x2734
	.byte	0x0
	.uleb128 0x3a
	.long	0x28bd
	.long	0x2741
	.quad	.LBB38
	.quad	.LBE38
	.uleb128 0x3b
	.long	0x2752
	.byte	0x0
	.uleb128 0x3a
	.long	0x28e8
	.long	0x270e
	.quad	.LBB39
	.quad	.LBE39
	.uleb128 0x46
	.long	0x271c
	.byte	0x1
	.byte	0x55
	.uleb128 0x3b
	.long	0x2728
	.uleb128 0x3b
	.long	0x2734
	.byte	0x0
	.uleb128 0x40
	.long	0x2741
	.quad	.LBB43
	.quad	.LBE43
	.uleb128 0x46
	.long	0x2752
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.long	.LASF400
	.byte	0x1
	.value	0x4ac
	.byte	0x1
	.quad	.LFB254
	.quad	.LFE254
	.byte	0x1
	.byte	0x57
	.uleb128 0x36
	.long	0x2959
	.long	.LASF401
	.byte	0x1
	.value	0x4b5
	.byte	0x1
	.quad	.LFB255
	.quad	.LFE255
	.byte	0x1
	.byte	0x57
	.uleb128 0x34
	.string	"i"
	.byte	0x1
	.value	0x4b6
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.uleb128 0x34
	.string	"s"
	.byte	0x1
	.value	0x4b7
	.long	0x2959
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x14c4
	.uleb128 0x36
	.long	0x29a3
	.long	.LASF402
	.byte	0x1
	.value	0x4c0
	.byte	0x1
	.quad	.LFB256
	.quad	.LFE256
	.byte	0x1
	.byte	0x57
	.uleb128 0x37
	.string	"n"
	.byte	0x1
	.value	0x4bf
	.long	0x3f
	.byte	0x1
	.byte	0x55
	.uleb128 0x34
	.string	"i"
	.byte	0x1
	.value	0x4c1
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.uleb128 0x34
	.string	"s"
	.byte	0x1
	.value	0x4c2
	.long	0x2959
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x36
	.long	0x2a33
	.long	.LASF403
	.byte	0x1
	.value	0x4d6
	.byte	0x1
	.quad	.LFB257
	.quad	.LFE257
	.byte	0x1
	.byte	0x57
	.uleb128 0x33
	.long	.LASF404
	.byte	0x1
	.value	0x4d2
	.long	0x6f
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x33
	.long	.LASF405
	.byte	0x1
	.value	0x4d3
	.long	0x3f
	.byte	0x1
	.byte	0x5d
	.uleb128 0x33
	.long	.LASF406
	.byte	0x1
	.value	0x4d3
	.long	0x3f
	.byte	0x1
	.byte	0x5c
	.uleb128 0x33
	.long	.LASF407
	.byte	0x1
	.value	0x4d4
	.long	0x3f
	.byte	0x1
	.byte	0x5e
	.uleb128 0x33
	.long	.LASF408
	.byte	0x1
	.value	0x4d4
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.uleb128 0x33
	.long	.LASF409
	.byte	0x1
	.value	0x4d5
	.long	0x3f
	.byte	0x1
	.byte	0x5f
	.uleb128 0x33
	.long	.LASF410
	.byte	0x1
	.value	0x4d5
	.long	0x3f
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x34
	.string	"s"
	.byte	0x1
	.value	0x4d7
	.long	0x2959
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x32
	.long	0x2a80
	.long	.LASF411
	.byte	0x1
	.value	0x584
	.byte	0x1
	.long	0x5e4
	.quad	.LFB258
	.quad	.LFE258
	.byte	0x1
	.byte	0x57
	.uleb128 0x37
	.string	"md"
	.byte	0x1
	.value	0x583
	.long	0x164f
	.byte	0x1
	.byte	0x55
	.uleb128 0x37
	.string	"val"
	.byte	0x1
	.value	0x583
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x34
	.string	"env"
	.byte	0x1
	.value	0x585
	.long	0x12d6
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x36
	.long	0x2aae
	.long	.LASF412
	.byte	0x1
	.value	0x6cc
	.byte	0x1
	.quad	.LFB259
	.quad	.LFE259
	.byte	0x1
	.byte	0x57
	.uleb128 0x37
	.string	"fmt"
	.byte	0x1
	.value	0x6cb
	.long	0x6f
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x31
	.long	.LASF413
	.byte	0x1
	.value	0x6f4
	.byte	0x1
	.quad	.LFB261
	.quad	.LFE261
	.byte	0x1
	.byte	0x57
	.uleb128 0x32
	.long	0x2b16
	.long	.LASF414
	.byte	0x1
	.value	0x773
	.byte	0x1
	.long	0x12d
	.quad	.LFB264
	.quad	.LFE264
	.byte	0x1
	.byte	0x57
	.uleb128 0x34
	.string	"val"
	.byte	0x1
	.value	0x774
	.long	0x12d
	.byte	0x1
	.byte	0x56
	.uleb128 0x38
	.long	.LASF415
	.byte	0x1
	.value	0x774
	.long	0x12d
	.byte	0x1
	.byte	0x51
	.uleb128 0x34
	.string	"op"
	.byte	0x1
	.value	0x775
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x32
	.long	0x2b63
	.long	.LASF416
	.byte	0x1
	.value	0x78f
	.byte	0x1
	.long	0x12d
	.quad	.LFB265
	.quad	.LFE265
	.byte	0x1
	.byte	0x57
	.uleb128 0x34
	.string	"val"
	.byte	0x1
	.value	0x790
	.long	0x12d
	.byte	0x1
	.byte	0x56
	.uleb128 0x38
	.long	.LASF415
	.byte	0x1
	.value	0x790
	.long	0x12d
	.byte	0x1
	.byte	0x50
	.uleb128 0x34
	.string	"op"
	.byte	0x1
	.value	0x791
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x32
	.long	0x2c23
	.long	.LASF417
	.byte	0x1
	.value	0x6ff
	.byte	0x1
	.long	0x12d
	.quad	.LFB262
	.quad	.LFE262
	.byte	0x1
	.byte	0x57
	.uleb128 0x34
	.string	"n"
	.byte	0x1
	.value	0x700
	.long	0x12d
	.byte	0x1
	.byte	0x56
	.uleb128 0x34
	.string	"p"
	.byte	0x1
	.value	0x701
	.long	0x11c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x43
	.string	"ret"
	.byte	0x1
	.value	0x702
	.long	0x3f
	.uleb128 0x2d
	.long	0x2c15
	.long	.Ldebug_ranges0+0xd0
	.uleb128 0x34
	.string	"buf"
	.byte	0x1
	.value	0x725
	.long	0x1423
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x34
	.string	"q"
	.byte	0x1
	.value	0x725
	.long	0x11c
	.byte	0x1
	.byte	0x56
	.uleb128 0x34
	.string	"reg"
	.byte	0x1
	.value	0x726
	.long	0x5e4
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x40
	.long	0x2c23
	.quad	.LBB49
	.quad	.LBE49
	.uleb128 0x46
	.long	0x2c35
	.byte	0x1
	.byte	0x56
	.uleb128 0x3b
	.long	0x2c41
	.uleb128 0x2e
	.long	.Ldebug_ranges0+0x110
	.uleb128 0x41
	.long	0x2c4d
	.byte	0x1
	.byte	0x53
	.uleb128 0x41
	.long	0x2c58
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.long	.Ldebug_ranges0+0x170
	.uleb128 0x41
	.long	0x2c65
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.byte	0x0
	.uleb128 0x3e
	.long	0x2c73
	.long	.LASF418
	.byte	0x1
	.value	0x6d4
	.byte	0x1
	.long	0x3f
	.byte	0x1
	.uleb128 0x48
	.long	.LASF419
	.byte	0x1
	.value	0x6d3
	.long	0x2c73
	.uleb128 0x48
	.long	.LASF241
	.byte	0x1
	.value	0x6d3
	.long	0x6f
	.uleb128 0x43
	.string	"md"
	.byte	0x1
	.value	0x6d5
	.long	0x2c79
	.uleb128 0x43
	.string	"ptr"
	.byte	0x1
	.value	0x6d6
	.long	0x104
	.uleb128 0x44
	.uleb128 0x43
	.string	"env"
	.byte	0x1
	.value	0x6dd
	.long	0x12d6
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x5e4
	.uleb128 0x5
	.byte	0x8
	.long	0x165b
	.uleb128 0x32
	.long	0x2ccc
	.long	.LASF420
	.byte	0x1
	.value	0x754
	.byte	0x1
	.long	0x12d
	.quad	.LFB263
	.quad	.LFE263
	.byte	0x1
	.byte	0x57
	.uleb128 0x34
	.string	"val"
	.byte	0x1
	.value	0x755
	.long	0x12d
	.byte	0x1
	.byte	0x5c
	.uleb128 0x38
	.long	.LASF415
	.byte	0x1
	.value	0x755
	.long	0x12d
	.byte	0x1
	.byte	0x56
	.uleb128 0x34
	.string	"op"
	.byte	0x1
	.value	0x756
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x32
	.long	0x2d0d
	.long	.LASF421
	.byte	0x1
	.value	0x7a3
	.byte	0x1
	.long	0x3f
	.quad	.LFB266
	.quad	.LFE266
	.byte	0x1
	.byte	0x57
	.uleb128 0x33
	.long	.LASF419
	.byte	0x1
	.value	0x7a2
	.long	0x2d0d
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x37
	.string	"pp"
	.byte	0x1
	.value	0x7a2
	.long	0x2d13
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x12d
	.uleb128 0x5
	.byte	0x8
	.long	0x6f
	.uleb128 0x32
	.long	0x2d9a
	.long	.LASF422
	.byte	0x1
	.value	0x7b1
	.byte	0x1
	.long	0x3f
	.quad	.LFB267
	.quad	.LFE267
	.byte	0x1
	.byte	0x57
	.uleb128 0x37
	.string	"buf"
	.byte	0x1
	.value	0x7b0
	.long	0x11c
	.byte	0x1
	.byte	0x5e
	.uleb128 0x33
	.long	.LASF423
	.byte	0x1
	.value	0x7b0
	.long	0x3f
	.byte	0x1
	.byte	0x5d
	.uleb128 0x37
	.string	"pp"
	.byte	0x1
	.value	0x7b0
	.long	0x2d13
	.byte	0x1
	.byte	0x5f
	.uleb128 0x34
	.string	"p"
	.byte	0x1
	.value	0x7b2
	.long	0x6f
	.byte	0x1
	.byte	0x56
	.uleb128 0x34
	.string	"q"
	.byte	0x1
	.value	0x7b3
	.long	0x11c
	.byte	0x1
	.byte	0x5c
	.uleb128 0x34
	.string	"c"
	.byte	0x1
	.value	0x7b4
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x49
	.long	.LASF424
	.byte	0x1
	.value	0x7d3
	.quad	.L601
	.byte	0x0
	.uleb128 0x36
	.long	0x2e0d
	.long	.LASF425
	.byte	0x1
	.value	0x928
	.byte	0x1
	.quad	.LFB269
	.quad	.LFE269
	.byte	0x1
	.byte	0x57
	.uleb128 0x33
	.long	.LASF241
	.byte	0x1
	.value	0x927
	.long	0x6f
	.byte	0x1
	.byte	0x5d
	.uleb128 0x33
	.long	.LASF305
	.byte	0x1
	.value	0x927
	.long	0x6f
	.byte	0x1
	.byte	0x54
	.uleb128 0x34
	.string	"p"
	.byte	0x1
	.value	0x929
	.long	0x6f
	.byte	0x1
	.byte	0x56
	.uleb128 0x38
	.long	.LASF306
	.byte	0x1
	.value	0x929
	.long	0x6f
	.byte	0x1
	.byte	0x5c
	.uleb128 0x34
	.string	"cmd"
	.byte	0x1
	.value	0x92a
	.long	0x1423
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.string	"len"
	.byte	0x1
	.value	0x92b
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x36
	.long	0x2e55
	.long	.LASF426
	.byte	0x1
	.value	0x972
	.byte	0x1
	.quad	.LFB271
	.quad	.LFE271
	.byte	0x1
	.byte	0x57
	.uleb128 0x33
	.long	.LASF221
	.byte	0x1
	.value	0x971
	.long	0x104
	.byte	0x1
	.byte	0x53
	.uleb128 0x33
	.long	.LASF241
	.byte	0x1
	.value	0x971
	.long	0x6f
	.byte	0x1
	.byte	0x56
	.uleb128 0x39
	.long	.LASF427
	.byte	0x1
	.value	0x973
	.long	0x6f
	.byte	0x0
	.uleb128 0x4a
	.long	0x3053
	.byte	0x1
	.long	.LASF428
	.byte	0x1
	.value	0x996
	.byte	0x1
	.quad	.LFB273
	.quad	.LFE273
	.byte	0x1
	.byte	0x57
	.uleb128 0x33
	.long	.LASF429
	.byte	0x1
	.value	0x995
	.long	0x6f
	.byte	0x1
	.byte	0x5d
	.uleb128 0x38
	.long	.LASF430
	.byte	0x1
	.value	0x997
	.long	0x6f
	.byte	0x1
	.byte	0x56
	.uleb128 0x38
	.long	.LASF431
	.byte	0x1
	.value	0x998
	.long	0x3053
	.byte	0x3
	.byte	0x91
	.sleb128 4256
	.uleb128 0x38
	.long	.LASF432
	.byte	0x1
	.value	0x999
	.long	0x3f
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x34
	.string	"i"
	.byte	0x1
	.value	0x999
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.uleb128 0x34
	.string	"len"
	.byte	0x1
	.value	0x999
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.uleb128 0x38
	.long	.LASF433
	.byte	0x1
	.value	0x99a
	.long	0x6f
	.byte	0x1
	.byte	0x50
	.uleb128 0x34
	.string	"str"
	.byte	0x1
	.value	0x99a
	.long	0x6f
	.byte	0x1
	.byte	0x5d
	.uleb128 0x34
	.string	"cmd"
	.byte	0x1
	.value	0x99b
	.long	0x18bf
	.byte	0x1
	.byte	0x53
	.uleb128 0x34
	.string	"key"
	.byte	0x1
	.value	0x99c
	.long	0x2445
	.byte	0x1
	.byte	0x53
	.uleb128 0x49
	.long	.LASF321
	.byte	0x1
	.value	0x9be
	.quad	.L667
	.uleb128 0x3a
	.long	0x2f62
	.long	0x3063
	.quad	.LBB63
	.quad	.LBE63
	.uleb128 0x3b
	.long	0x3071
	.uleb128 0x3b
	.long	0x307d
	.uleb128 0x46
	.long	0x3089
	.byte	0x1
	.byte	0x5e
	.uleb128 0x2e
	.long	.Ldebug_ranges0+0x1b0
	.uleb128 0x41
	.long	0x3095
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x41
	.long	0x309f
	.byte	0x1
	.byte	0x56
	.uleb128 0x41
	.long	0x30ab
	.byte	0x1
	.byte	0x5c
	.uleb128 0x41
	.long	0x30b7
	.byte	0x3
	.byte	0x91
	.sleb128 3232
	.byte	0x0
	.byte	0x0
	.uleb128 0x3a
	.long	0x2fbc
	.long	0x30db
	.quad	.LBB69
	.quad	.LBE69
	.uleb128 0x3b
	.long	0x30e9
	.uleb128 0x2e
	.long	.Ldebug_ranges0+0x1f0
	.uleb128 0x41
	.long	0x30f5
	.byte	0x1
	.byte	0x56
	.uleb128 0x41
	.long	0x3101
	.byte	0x1
	.byte	0x50
	.uleb128 0x41
	.long	0x310b
	.byte	0x3
	.byte	0x91
	.sleb128 2208
	.uleb128 0x41
	.long	0x3117
	.byte	0x3
	.byte	0x91
	.sleb128 1184
	.uleb128 0x41
	.long	0x3123
	.byte	0x3
	.byte	0x91
	.sleb128 160
	.uleb128 0x41
	.long	0x312f
	.byte	0x1
	.byte	0x5c
	.uleb128 0x42
	.long	0x313b
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.long	0x2ffa
	.quad	.LBB73
	.quad	.LBE73
	.uleb128 0x41
	.long	0x3146
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x40
	.long	0x315f
	.quad	.LBB74
	.quad	.LBE74
	.uleb128 0x3b
	.long	0x3172
	.uleb128 0x3b
	.long	0x317e
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.long	0x3028
	.quad	.LBB76
	.quad	.LBE76
	.uleb128 0x39
	.long	.LASF310
	.byte	0x1
	.value	0x9d5
	.long	0x2d
	.uleb128 0x39
	.long	.LASF311
	.byte	0x1
	.value	0x9d5
	.long	0x2d
	.byte	0x0
	.uleb128 0x2a
	.quad	.LBB79
	.quad	.LBE79
	.uleb128 0x39
	.long	.LASF310
	.byte	0x1
	.value	0x9da
	.long	0x2d
	.uleb128 0x39
	.long	.LASF311
	.byte	0x1
	.value	0x9da
	.long	0x2d
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.long	0x3063
	.long	0x11c
	.uleb128 0xb
	.long	0x61
	.byte	0xf
	.byte	0x0
	.uleb128 0x47
	.long	0x30c4
	.long	.LASF434
	.byte	0x1
	.value	0x97e
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.long	.LASF429
	.byte	0x1
	.value	0x97c
	.long	0x6f
	.uleb128 0x48
	.long	.LASF435
	.byte	0x1
	.value	0x97d
	.long	0x4d
	.uleb128 0x48
	.long	.LASF431
	.byte	0x1
	.value	0x97d
	.long	0x30c4
	.uleb128 0x43
	.string	"p"
	.byte	0x1
	.value	0x97f
	.long	0x6f
	.uleb128 0x39
	.long	.LASF432
	.byte	0x1
	.value	0x980
	.long	0x3f
	.uleb128 0x43
	.string	"ret"
	.byte	0x1
	.value	0x980
	.long	0x3f
	.uleb128 0x43
	.string	"buf"
	.byte	0x1
	.value	0x981
	.long	0x30ca
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x11c
	.uleb128 0xa
	.long	0x30db
	.long	0x7a
	.uleb128 0x1a
	.long	0x61
	.value	0x3ff
	.byte	0x0
	.uleb128 0x47
	.long	0x3153
	.long	.LASF436
	.byte	0x1
	.value	0x942
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.long	.LASF427
	.byte	0x1
	.value	0x941
	.long	0x6f
	.uleb128 0x43
	.string	"ffs"
	.byte	0x1
	.value	0x943
	.long	0x3153
	.uleb128 0x43
	.string	"d"
	.byte	0x1
	.value	0x944
	.long	0x3159
	.uleb128 0x39
	.long	.LASF404
	.byte	0x1
	.value	0x945
	.long	0x30ca
	.uleb128 0x39
	.long	.LASF437
	.byte	0x1
	.value	0x946
	.long	0x30ca
	.uleb128 0x39
	.long	.LASF438
	.byte	0x1
	.value	0x946
	.long	0x30ca
	.uleb128 0x39
	.long	.LASF439
	.byte	0x1
	.value	0x947
	.long	0x3f
	.uleb128 0x43
	.string	"p"
	.byte	0x1
	.value	0x948
	.long	0x6f
	.uleb128 0x44
	.uleb128 0x43
	.string	"sb"
	.byte	0x1
	.value	0x95e
	.long	0x488
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x1523
	.uleb128 0x5
	.byte	0x8
	.long	0x14cf
	.uleb128 0x4b
	.long	0x318b
	.byte	0x1
	.long	.LASF77
	.byte	0x4
	.value	0x1c6
	.byte	0x1
	.long	0x3f
	.byte	0x3
	.uleb128 0x48
	.long	.LASF440
	.byte	0x4
	.value	0x1c5
	.long	0x6f
	.uleb128 0x48
	.long	.LASF441
	.byte	0x4
	.value	0x1c5
	.long	0x318b
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x488
	.uleb128 0x32
	.long	0x31c3
	.long	.LASF442
	.byte	0x1
	.value	0x9ea
	.byte	0x1
	.long	0x3f
	.quad	.LFB274
	.quad	.LFE274
	.byte	0x1
	.byte	0x57
	.uleb128 0x33
	.long	.LASF221
	.byte	0x1
	.value	0x9e9
	.long	0x104
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x36
	.long	0x3219
	.long	.LASF443
	.byte	0x1
	.value	0x9ef
	.byte	0x1
	.quad	.LFB275
	.quad	.LFE275
	.byte	0x1
	.byte	0x57
	.uleb128 0x33
	.long	.LASF221
	.byte	0x1
	.value	0x9ee
	.long	0x104
	.byte	0x1
	.byte	0x55
	.uleb128 0x37
	.string	"buf"
	.byte	0x1
	.value	0x9ee
	.long	0x11cb
	.byte	0x1
	.byte	0x54
	.uleb128 0x33
	.long	.LASF361
	.byte	0x1
	.value	0x9ee
	.long	0x3f
	.byte	0x1
	.byte	0x5c
	.uleb128 0x34
	.string	"i"
	.byte	0x1
	.value	0x9f0
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.byte	0x0
	.uleb128 0x31
	.long	.LASF444
	.byte	0x1
	.value	0x9fe
	.byte	0x1
	.quad	.LFB277
	.quad	.LFE277
	.byte	0x1
	.byte	0x57
	.uleb128 0x36
	.long	0x33ae
	.long	.LASF445
	.byte	0x1
	.value	0x9f8
	.byte	0x1
	.quad	.LFB276
	.quad	.LFE276
	.byte	0x1
	.byte	0x57
	.uleb128 0x33
	.long	.LASF221
	.byte	0x1
	.value	0x9f7
	.long	0x104
	.byte	0x1
	.byte	0x55
	.uleb128 0x33
	.long	.LASF429
	.byte	0x1
	.value	0x9f7
	.long	0x6f
	.byte	0x1
	.byte	0x54
	.uleb128 0x3a
	.long	0x3356
	.long	0x33ae
	.quad	.LBB80
	.quad	.LBE80
	.uleb128 0x3b
	.long	0x33bc
	.uleb128 0x2e
	.long	.Ldebug_ranges0+0x230
	.uleb128 0x41
	.long	0x33c8
	.byte	0x2
	.byte	0x91
	.sleb128 56
	.uleb128 0x42
	.long	0x33d2
	.uleb128 0x41
	.long	0x33de
	.byte	0x1
	.byte	0x5d
	.uleb128 0x42
	.long	0x33ea
	.uleb128 0x41
	.long	0x33f4
	.byte	0x1
	.byte	0x53
	.uleb128 0x41
	.long	0x33fe
	.byte	0x1
	.byte	0x5e
	.uleb128 0x41
	.long	0x340a
	.byte	0x1
	.byte	0x53
	.uleb128 0x41
	.long	0x3416
	.byte	0x1
	.byte	0x53
	.uleb128 0x41
	.long	0x3420
	.byte	0x1
	.byte	0x54
	.uleb128 0x41
	.long	0x342c
	.byte	0x1
	.byte	0x5c
	.uleb128 0x41
	.long	0x3438
	.byte	0x3
	.byte	0x91
	.sleb128 1344
	.uleb128 0x41
	.long	0x3444
	.byte	0x3
	.byte	0x91
	.sleb128 320
	.uleb128 0x41
	.long	0x3450
	.byte	0x3
	.byte	0x91
	.sleb128 192
	.uleb128 0x41
	.long	0x345c
	.byte	0x3
	.byte	0x91
	.sleb128 64
	.uleb128 0x4c
	.long	0x3468
	.quad	.L770
	.uleb128 0x4c
	.long	0x3470
	.quad	.L788
	.uleb128 0x4c
	.long	0x3478
	.quad	.L794
	.uleb128 0x4c
	.long	0x3480
	.quad	.L800
	.uleb128 0x4c
	.long	0x3488
	.quad	.L825
	.uleb128 0x4c
	.long	0x3490
	.quad	.L853
	.uleb128 0x4c
	.long	0x3498
	.quad	.L861
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.long	0x3367
	.long	.Ldebug_ranges0+0x270
	.uleb128 0x41
	.long	0x34fb
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x2d
	.long	0x337f
	.long	.Ldebug_ranges0+0x2f0
	.uleb128 0x41
	.long	0x34a5
	.byte	0x1
	.byte	0x50
	.uleb128 0x41
	.long	0x34b1
	.byte	0x1
	.byte	0x56
	.byte	0x0
	.uleb128 0x2d
	.long	0x3391
	.long	.Ldebug_ranges0+0x340
	.uleb128 0x41
	.long	0x34ed
	.byte	0x2
	.byte	0x91
	.sleb128 48
	.byte	0x0
	.uleb128 0x2e
	.long	.Ldebug_ranges0+0x3b0
	.uleb128 0x41
	.long	0x34c3
	.byte	0x2
	.byte	0x91
	.sleb128 44
	.uleb128 0x41
	.long	0x34cf
	.byte	0x1
	.byte	0x58
	.uleb128 0x41
	.long	0x34db
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.byte	0x0
	.uleb128 0x47
	.long	0x3509
	.long	.LASF446
	.byte	0x1
	.value	0x7f7
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.long	.LASF429
	.byte	0x1
	.value	0x7f6
	.long	0x6f
	.uleb128 0x43
	.string	"p"
	.byte	0x1
	.value	0x7f8
	.long	0x6f
	.uleb128 0x39
	.long	.LASF306
	.byte	0x1
	.value	0x7f8
	.long	0x6f
	.uleb128 0x39
	.long	.LASF447
	.byte	0x1
	.value	0x7f8
	.long	0x6f
	.uleb128 0x43
	.string	"q"
	.byte	0x1
	.value	0x7f9
	.long	0x11c
	.uleb128 0x43
	.string	"c"
	.byte	0x1
	.value	0x7fa
	.long	0x3f
	.uleb128 0x39
	.long	.LASF432
	.byte	0x1
	.value	0x7fa
	.long	0x3f
	.uleb128 0x43
	.string	"len"
	.byte	0x1
	.value	0x7fa
	.long	0x3f
	.uleb128 0x43
	.string	"i"
	.byte	0x1
	.value	0x7fa
	.long	0x3f
	.uleb128 0x39
	.long	.LASF448
	.byte	0x1
	.value	0x7fa
	.long	0x3f
	.uleb128 0x43
	.string	"cmd"
	.byte	0x1
	.value	0x7fb
	.long	0x18bf
	.uleb128 0x39
	.long	.LASF430
	.byte	0x1
	.value	0x7fc
	.long	0x12e8
	.uleb128 0x43
	.string	"buf"
	.byte	0x1
	.value	0x7fd
	.long	0x30ca
	.uleb128 0x39
	.long	.LASF449
	.byte	0x1
	.value	0x7fe
	.long	0x3509
	.uleb128 0x39
	.long	.LASF431
	.byte	0x1
	.value	0x7ff
	.long	0x3509
	.uleb128 0x4d
	.long	.LASF321
	.byte	0x1
	.value	0x81c
	.uleb128 0x4d
	.long	.LASF450
	.byte	0x1
	.value	0x84d
	.uleb128 0x4d
	.long	.LASF424
	.byte	0x1
	.value	0x921
	.uleb128 0x4d
	.long	.LASF451
	.byte	0x1
	.value	0x8a0
	.uleb128 0x4d
	.long	.LASF413
	.byte	0x1
	.value	0x888
	.uleb128 0x4d
	.long	.LASF452
	.byte	0x1
	.value	0x8ca
	.uleb128 0x4d
	.long	.LASF453
	.byte	0x1
	.value	0x8f6
	.uleb128 0x45
	.long	0x34be
	.uleb128 0x43
	.string	"ret"
	.byte	0x1
	.value	0x82e
	.long	0x3f
	.uleb128 0x43
	.string	"str"
	.byte	0x1
	.value	0x82f
	.long	0x11c
	.byte	0x0
	.uleb128 0x45
	.long	0x34e8
	.uleb128 0x39
	.long	.LASF348
	.byte	0x1
	.value	0x858
	.long	0x3f
	.uleb128 0x39
	.long	.LASF349
	.byte	0x1
	.value	0x858
	.long	0x3f
	.uleb128 0x39
	.long	.LASF361
	.byte	0x1
	.value	0x858
	.long	0x3f
	.byte	0x0
	.uleb128 0x45
	.long	0x34fa
	.uleb128 0x43
	.string	"val"
	.byte	0x1
	.value	0x8a9
	.long	0x12d
	.byte	0x0
	.uleb128 0x44
	.uleb128 0x39
	.long	.LASF454
	.byte	0x1
	.value	0x8dd
	.long	0x3f
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.long	0x3519
	.long	0x104
	.uleb128 0xb
	.long	0x61
	.byte	0xf
	.byte	0x0
	.uleb128 0x36
	.long	0x3555
	.long	.LASF455
	.byte	0x1
	.value	0xa03
	.byte	0x1
	.quad	.LFB278
	.quad	.LFE278
	.byte	0x1
	.byte	0x57
	.uleb128 0x33
	.long	.LASF221
	.byte	0x1
	.value	0xa02
	.long	0x104
	.byte	0x1
	.byte	0x55
	.uleb128 0x33
	.long	.LASF456
	.byte	0x1
	.value	0xa02
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0x4a
	.long	0x359d
	.byte	0x1
	.long	.LASF457
	.byte	0x1
	.value	0xa10
	.byte	0x1
	.quad	.LFB279
	.quad	.LFE279
	.byte	0x1
	.byte	0x57
	.uleb128 0x37
	.string	"hd"
	.byte	0x1
	.value	0xa0f
	.long	0x359d
	.byte	0x1
	.byte	0x55
	.uleb128 0x33
	.long	.LASF458
	.byte	0x1
	.value	0xa0f
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x34
	.string	"i"
	.byte	0x1
	.value	0xa11
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x11f2
	.uleb128 0x36
	.long	0x35df
	.long	.LASF459
	.byte	0x1
	.value	0xa2e
	.byte	0x1
	.quad	.LFB280
	.quad	.LFE280
	.byte	0x1
	.byte	0x57
	.uleb128 0x33
	.long	.LASF221
	.byte	0x1
	.value	0xa2d
	.long	0x104
	.byte	0x1
	.byte	0x55
	.uleb128 0x33
	.long	.LASF427
	.byte	0x1
	.value	0xa2d
	.long	0x6f
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0x4a
	.long	0x3644
	.byte	0x1
	.long	.LASF460
	.byte	0x1
	.value	0xa35
	.byte	0x1
	.quad	.LFB281
	.quad	.LFE281
	.byte	0x1
	.byte	0x57
	.uleb128 0x33
	.long	.LASF461
	.byte	0x1
	.value	0xa33
	.long	0x6f
	.byte	0x1
	.byte	0x5c
	.uleb128 0x33
	.long	.LASF462
	.byte	0x1
	.value	0xa33
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.uleb128 0x37
	.string	"buf"
	.byte	0x1
	.value	0xa34
	.long	0x11c
	.byte	0x1
	.byte	0x5d
	.uleb128 0x33
	.long	.LASF423
	.byte	0x1
	.value	0xa34
	.long	0x3f
	.byte	0x1
	.byte	0x5e
	.uleb128 0x34
	.string	"i"
	.byte	0x1
	.value	0xa36
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x36
	.long	0x3768
	.long	.LASF463
	.byte	0x1
	.value	0x1b7
	.byte	0x1
	.quad	.LFB228
	.quad	.LFE228
	.byte	0x1
	.byte	0x57
	.uleb128 0x33
	.long	.LASF318
	.byte	0x1
	.value	0x1b6
	.long	0x6f
	.byte	0x1
	.byte	0x55
	.uleb128 0x33
	.long	.LASF464
	.byte	0x1
	.value	0x1b6
	.long	0x6f
	.byte	0x1
	.byte	0x56
	.uleb128 0x2d
	.long	0x36c1
	.long	.Ldebug_ranges0+0x400
	.uleb128 0x39
	.long	.LASF310
	.byte	0x1
	.value	0x1b8
	.long	0x2d
	.uleb128 0x39
	.long	.LASF311
	.byte	0x1
	.value	0x1b8
	.long	0x2d
	.uleb128 0x2e
	.long	.Ldebug_ranges0+0x430
	.uleb128 0x39
	.long	.LASF313
	.byte	0x1
	.value	0x1b8
	.long	0x1992
	.uleb128 0x38
	.long	.LASF314
	.byte	0x1
	.value	0x1b8
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.uleb128 0x3a
	.long	0x373a
	.long	0x3768
	.quad	.LBB109
	.quad	.LBE109
	.uleb128 0x3b
	.long	0x3776
	.uleb128 0x2c
	.long	0x36ff
	.quad	.LBB111
	.quad	.LBE111
	.uleb128 0x42
	.long	0x3787
	.uleb128 0x42
	.long	0x3793
	.byte	0x0
	.uleb128 0x2c
	.long	0x371f
	.quad	.LBB112
	.quad	.LBE112
	.uleb128 0x42
	.long	0x37dd
	.uleb128 0x42
	.long	0x37e9
	.byte	0x0
	.uleb128 0x2a
	.quad	.LBB113
	.quad	.LBE113
	.uleb128 0x41
	.long	0x382f
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.byte	0x0
	.uleb128 0x40
	.long	0x384d
	.quad	.LBB116
	.quad	.LBE116
	.uleb128 0x3b
	.long	0x385b
	.uleb128 0x3b
	.long	0x3867
	.uleb128 0x2e
	.long	.Ldebug_ranges0+0x460
	.uleb128 0x41
	.long	0x3873
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x47
	.long	0x383d
	.long	.LASF465
	.byte	0x1
	.value	0x1a8
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.long	.LASF464
	.byte	0x1
	.value	0x1a7
	.long	0x6f
	.uleb128 0x45
	.long	0x37d8
	.uleb128 0x39
	.long	.LASF310
	.byte	0x1
	.value	0x1a9
	.long	0x2d
	.uleb128 0x39
	.long	.LASF311
	.byte	0x1
	.value	0x1a9
	.long	0x2d
	.uleb128 0x45
	.long	0x37bd
	.uleb128 0x39
	.long	.LASF378
	.byte	0x1
	.value	0x1a9
	.long	0x1992
	.uleb128 0x39
	.long	.LASF314
	.byte	0x1
	.value	0x1a9
	.long	0x3f
	.byte	0x0
	.uleb128 0x44
	.uleb128 0x39
	.long	.LASF313
	.byte	0x1
	.value	0x1a9
	.long	0x1992
	.uleb128 0x39
	.long	.LASF314
	.byte	0x1
	.value	0x1a9
	.long	0x3f
	.byte	0x0
	.byte	0x0
	.uleb128 0x45
	.long	0x382e
	.uleb128 0x39
	.long	.LASF310
	.byte	0x1
	.value	0x1aa
	.long	0x2d
	.uleb128 0x39
	.long	.LASF311
	.byte	0x1
	.value	0x1aa
	.long	0x2d
	.uleb128 0x45
	.long	0x3813
	.uleb128 0x39
	.long	.LASF378
	.byte	0x1
	.value	0x1aa
	.long	0x1992
	.uleb128 0x39
	.long	.LASF314
	.byte	0x1
	.value	0x1aa
	.long	0x3f
	.byte	0x0
	.uleb128 0x44
	.uleb128 0x39
	.long	.LASF313
	.byte	0x1
	.value	0x1aa
	.long	0x1992
	.uleb128 0x39
	.long	.LASF314
	.byte	0x1
	.value	0x1aa
	.long	0x3f
	.byte	0x0
	.byte	0x0
	.uleb128 0x44
	.uleb128 0x39
	.long	.LASF466
	.byte	0x1
	.value	0x1ab
	.long	0x383d
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.long	0x384d
	.long	0x7a
	.uleb128 0xb
	.long	0x61
	.byte	0x8
	.byte	0x0
	.uleb128 0x47
	.long	0x387f
	.long	.LASF467
	.byte	0x1
	.value	0x199
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.long	.LASF318
	.byte	0x1
	.value	0x198
	.long	0x6f
	.uleb128 0x48
	.long	.LASF301
	.byte	0x1
	.value	0x198
	.long	0x6f
	.uleb128 0x43
	.string	"bs"
	.byte	0x1
	.value	0x19a
	.long	0x140c
	.byte	0x0
	.uleb128 0x4e
	.long	.LASF468
	.byte	0x6
	.byte	0x91
	.long	0x415
	.byte	0x1
	.byte	0x1
	.uleb128 0x4e
	.long	.LASF469
	.byte	0x6
	.byte	0x92
	.long	0x415
	.byte	0x1
	.byte	0x1
	.uleb128 0x4f
	.long	.LASF470
	.byte	0x2
	.value	0x32b
	.long	0x12d6
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.long	0x38b2
	.long	0x1181
	.uleb128 0x50
	.byte	0x0
	.uleb128 0x4f
	.long	.LASF471
	.byte	0x2
	.value	0x359
	.long	0x38a7
	.byte	0x1
	.byte	0x1
	.uleb128 0x4f
	.long	.LASF472
	.byte	0x2
	.value	0x376
	.long	0x12bf
	.byte	0x1
	.byte	0x1
	.uleb128 0x4e
	.long	.LASF473
	.byte	0x1d
	.byte	0xa
	.long	0x6f
	.byte	0x1
	.byte	0x1
	.uleb128 0x51
	.long	.LASF474
	.byte	0x1d
	.byte	0x86
	.long	0x3f
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	nb_drives
	.uleb128 0xa
	.long	0x3901
	.long	0x1412
	.uleb128 0xb
	.long	0x61
	.byte	0x20
	.byte	0x0
	.uleb128 0x51
	.long	.LASF475
	.byte	0x1d
	.byte	0x87
	.long	0x38f1
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	drives_table
	.uleb128 0x4e
	.long	.LASF476
	.byte	0x1e
	.byte	0x92
	.long	0x3f
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.long	0x3934
	.long	0x359d
	.uleb128 0xb
	.long	0x61
	.byte	0x3
	.byte	0x0
	.uleb128 0x28
	.long	.LASF477
	.byte	0x1
	.byte	0x49
	.long	0x3924
	.byte	0x9
	.byte	0x3
	.quad	monitor_hd
	.uleb128 0x28
	.long	.LASF478
	.byte	0x1
	.byte	0x4a
	.long	0x3f
	.byte	0x9
	.byte	0x3
	.quad	hide_banner
	.uleb128 0xa
	.long	0x396e
	.long	0x1594
	.uleb128 0xb
	.long	0x61
	.byte	0x20
	.byte	0x0
	.uleb128 0x38
	.long	.LASF479
	.byte	0x1
	.value	0x4eb
	.long	0x395e
	.byte	0x9
	.byte	0x3
	.quad	term_cmds
	.uleb128 0xa
	.long	0x3994
	.long	0x1594
	.uleb128 0xb
	.long	0x61
	.byte	0x17
	.byte	0x0
	.uleb128 0x38
	.long	.LASF480
	.byte	0x1
	.value	0x535
	.long	0x3984
	.byte	0x9
	.byte	0x3
	.quad	info_cmds
	.uleb128 0x28
	.long	.LASF481
	.byte	0x1
	.byte	0x4f
	.long	0x12c5
	.byte	0x9
	.byte	0x3
	.quad	term_outbuf
	.uleb128 0x28
	.long	.LASF482
	.byte	0x1
	.byte	0x50
	.long	0x3f
	.byte	0x9
	.byte	0x3
	.quad	term_outbuf_index
	.uleb128 0x51
	.long	.LASF483
	.byte	0x1
	.byte	0x54
	.long	0x12d6
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	mon_cpu
	.uleb128 0xa
	.long	0x39fa
	.long	0x244b
	.uleb128 0xb
	.long	0x61
	.byte	0x5d
	.byte	0x0
	.uleb128 0x38
	.long	.LASF484
	.byte	0x1
	.value	0x300
	.long	0x3a10
	.byte	0x9
	.byte	0x3
	.quad	key_defs
	.uleb128 0x6
	.long	0x39ea
	.uleb128 0x38
	.long	.LASF485
	.byte	0x1
	.value	0x3b0
	.long	0x3f
	.byte	0x9
	.byte	0x3
	.quad	mouse_button_state
	.uleb128 0x38
	.long	.LASF486
	.byte	0x1
	.value	0x4b2
	.long	0x15d3
	.byte	0x9
	.byte	0x3
	.quad	capture_head
	.uleb128 0x34
	.string	"pch"
	.byte	0x1
	.value	0x575
	.long	0x6f
	.byte	0x9
	.byte	0x3
	.quad	pch
	.uleb128 0x38
	.long	.LASF487
	.byte	0x1
	.value	0x576
	.long	0x5c9
	.byte	0x9
	.byte	0x3
	.quad	expr_env
	.uleb128 0xa
	.long	0x3a7d
	.long	0x165b
	.uleb128 0xb
	.long	0x61
	.byte	0x1d
	.byte	0x0
	.uleb128 0x38
	.long	.LASF488
	.byte	0x1
	.value	0x5da
	.long	0x3a6d
	.byte	0x9
	.byte	0x3
	.quad	monitor_defs
	.uleb128 0x38
	.long	.LASF489
	.byte	0x1
	.value	0x7f1
	.long	0x3f
	.byte	0x9
	.byte	0x3
	.quad	default_fmt_format
	.uleb128 0x38
	.long	.LASF490
	.byte	0x1
	.value	0x7f2
	.long	0x3f
	.byte	0x9
	.byte	0x3
	.quad	default_fmt_size
	.uleb128 0x38
	.long	.LASF491
	.byte	0x1
	.value	0xa0d
	.long	0x3f
	.byte	0x9
	.byte	0x3
	.quad	is_first_init
	.uleb128 0x38
	.long	.LASF492
	.byte	0x1
	.value	0xa29
	.long	0x3f
	.byte	0x9
	.byte	0x3
	.quad	monitor_readline_started
	.uleb128 0x38
	.long	.LASF493
	.byte	0x1
	.value	0xa2a
	.long	0x11c
	.byte	0x9
	.byte	0x3
	.quad	monitor_readline_buf
	.uleb128 0x38
	.long	.LASF494
	.byte	0x1
	.value	0xa2b
	.long	0x3f
	.byte	0x9
	.byte	0x3
	.quad	monitor_readline_buf_size
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
	.uleb128 0x18
	.byte	0x0
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
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
	.uleb128 0x30
	.uleb128 0x2e
	.byte	0x0
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
	.uleb128 0x31
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x3e
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
	.uleb128 0x3f
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
	.uleb128 0x40
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
	.uleb128 0x41
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x42
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x43
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
	.uleb128 0x44
	.uleb128 0xb
	.byte	0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x45
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x46
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x47
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
	.uleb128 0x48
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
	.uleb128 0x49
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
	.uleb128 0x4a
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
	.uleb128 0x4b
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
	.uleb128 0x4c
	.uleb128 0xa
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x4d
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
	.uleb128 0x4e
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x50
	.uleb128 0x21
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x51
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
	.long	0xd2
	.value	0x2
	.long	.Ldebug_info0
	.long	0x3b18
	.long	0x1667
	.string	"term_flush"
	.long	0x1692
	.string	"term_puts"
	.long	0x16c8
	.string	"term_vprintf"
	.long	0x1726
	.string	"term_printf"
	.long	0x1761
	.string	"term_print_filename"
	.long	0x2e55
	.string	"readline_find_completion"
	.long	0x3555
	.string	"monitor_init"
	.long	0x35df
	.string	"monitor_readline"
	.long	0x38db
	.string	"nb_drives"
	.long	0x3901
	.string	"drives_table"
	.long	0x39d4
	.string	"mon_cpu"
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
	.quad	.LBB9-.Ltext0
	.quad	.LBE9-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB8-.Ltext0
	.quad	.LBE8-.Ltext0
	.quad	.LBB10-.Ltext0
	.quad	.LBE10-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB18-.Ltext0
	.quad	.LBE18-.Ltext0
	.quad	.LBB19-.Ltext0
	.quad	.LBE19-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB21-.Ltext0
	.quad	.LBE21-.Ltext0
	.quad	.LBB26-.Ltext0
	.quad	.LBE26-.Ltext0
	.quad	.LBB24-.Ltext0
	.quad	.LBE24-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB48-.Ltext0
	.quad	.LBE48-.Ltext0
	.quad	.LBB56-.Ltext0
	.quad	.LBE56-.Ltext0
	.quad	.LBB52-.Ltext0
	.quad	.LBE52-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB50-.Ltext0
	.quad	.LBE50-.Ltext0
	.quad	.LBB61-.Ltext0
	.quad	.LBE61-.Ltext0
	.quad	.LBB58-.Ltext0
	.quad	.LBE58-.Ltext0
	.quad	.LBB54-.Ltext0
	.quad	.LBE54-.Ltext0
	.quad	.LBB51-.Ltext0
	.quad	.LBE51-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB55-.Ltext0
	.quad	.LBE55-.Ltext0
	.quad	.LBB62-.Ltext0
	.quad	.LBE62-.Ltext0
	.quad	.LBB59-.Ltext0
	.quad	.LBE59-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB64-.Ltext0
	.quad	.LBE64-.Ltext0
	.quad	.LBB68-.Ltext0
	.quad	.LBE68-.Ltext0
	.quad	.LBB66-.Ltext0
	.quad	.LBE66-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB70-.Ltext0
	.quad	.LBE70-.Ltext0
	.quad	.LBB78-.Ltext0
	.quad	.LBE78-.Ltext0
	.quad	.LBB72-.Ltext0
	.quad	.LBE72-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB81-.Ltext0
	.quad	.LBE81-.Ltext0
	.quad	.LBB86-.Ltext0
	.quad	.LBE86-.Ltext0
	.quad	.LBB83-.Ltext0
	.quad	.LBE83-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB84-.Ltext0
	.quad	.LBE84-.Ltext0
	.quad	.LBB106-.Ltext0
	.quad	.LBE106-.Ltext0
	.quad	.LBB98-.Ltext0
	.quad	.LBE98-.Ltext0
	.quad	.LBB96-.Ltext0
	.quad	.LBE96-.Ltext0
	.quad	.LBB94-.Ltext0
	.quad	.LBE94-.Ltext0
	.quad	.LBB91-.Ltext0
	.quad	.LBE91-.Ltext0
	.quad	.LBB88-.Ltext0
	.quad	.LBE88-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB87-.Ltext0
	.quad	.LBE87-.Ltext0
	.quad	.LBB104-.Ltext0
	.quad	.LBE104-.Ltext0
	.quad	.LBB103-.Ltext0
	.quad	.LBE103-.Ltext0
	.quad	.LBB89-.Ltext0
	.quad	.LBE89-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB90-.Ltext0
	.quad	.LBE90-.Ltext0
	.quad	.LBB101-.Ltext0
	.quad	.LBE101-.Ltext0
	.quad	.LBB99-.Ltext0
	.quad	.LBE99-.Ltext0
	.quad	.LBB97-.Ltext0
	.quad	.LBE97-.Ltext0
	.quad	.LBB95-.Ltext0
	.quad	.LBE95-.Ltext0
	.quad	.LBB92-.Ltext0
	.quad	.LBE92-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB93-.Ltext0
	.quad	.LBE93-.Ltext0
	.quad	.LBB105-.Ltext0
	.quad	.LBE105-.Ltext0
	.quad	.LBB102-.Ltext0
	.quad	.LBE102-.Ltext0
	.quad	.LBB100-.Ltext0
	.quad	.LBE100-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB107-.Ltext0
	.quad	.LBE107-.Ltext0
	.quad	.LBB114-.Ltext0
	.quad	.LBE114-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB108-.Ltext0
	.quad	.LBE108-.Ltext0
	.quad	.LBB115-.Ltext0
	.quad	.LBE115-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB117-.Ltext0
	.quad	.LBE117-.Ltext0
	.quad	.LBB121-.Ltext0
	.quad	.LBE121-.Ltext0
	.quad	0x0
	.quad	0x0
	.section	.debug_str,"MS",@progbits,1
.LASF222:
	.string	"cpu_model_str"
.LASF334:
	.string	"do_quit"
.LASF1:
	.string	"unsigned int"
.LASF456:
	.string	"event"
.LASF60:
	.string	"_unused2"
.LASF233:
	.string	"cpuid_ext3_features"
.LASF46:
	.string	"_fileno"
.LASF297:
	.string	"term_puts"
.LASF440:
	.string	"__path"
.LASF133:
	.string	"stop_condition"
.LASF336:
	.string	"force"
.LASF298:
	.string	"term_vprintf"
.LASF353:
	.string	"nb_per_line"
.LASF97:
	.string	"__saved_mask"
.LASF203:
	.string	"exception_next_eip"
.LASF243:
	.string	"QEMUBH"
.LASF109:
	.string	"float32"
.LASF418:
	.string	"get_monitor_def"
.LASF459:
	.string	"monitor_readline_cb"
.LASF220:
	.string	"cpu_index"
.LASF426:
	.string	"block_completion_it"
.LASF172:
	.string	"fpip"
.LASF124:
	.string	"argos_paddr_t"
.LASF362:
	.string	"addrh"
.LASF231:
	.string	"cpuid_model"
.LASF363:
	.string	"addrl"
.LASF40:
	.string	"_IO_buf_end"
.LASF267:
	.string	"DriveInfo"
.LASF51:
	.string	"_shortbuf"
.LASF388:
	.string	"do_system_reset"
.LASF265:
	.string	"IF_SD"
.LASF106:
	.string	"addend"
.LASF201:
	.string	"error_code"
.LASF277:
	.string	"entries"
.LASF446:
	.string	"monitor_handle_command"
.LASF391:
	.string	"tlb_info"
.LASF32:
	.string	"_flags"
.LASF381:
	.string	"dy_str"
.LASF413:
	.string	"next"
.LASF210:
	.string	"mem_write_vaddr"
.LASF434:
	.string	"parse_cmdline"
.LASF66:
	.string	"reg_save_area"
.LASF17:
	.string	"__off_t"
.LASF86:
	.string	"st_size"
.LASF325:
	.string	"do_info_blockstats"
.LASF268:
	.string	"bdrv"
.LASF52:
	.string	"_lock"
.LASF469:
	.string	"stdout"
.LASF162:
	.string	"t1tag"
.LASF448:
	.string	"has_arg"
.LASF411:
	.string	"monitor_get_pc"
.LASF87:
	.string	"st_blksize"
.LASF22:
	.string	"int32_t"
.LASF95:
	.string	"__jmpbuf"
.LASF240:
	.string	"mask"
.LASF316:
	.string	"do_help"
.LASF306:
	.string	"pstart"
.LASF163:
	.string	"t2tag"
.LASF482:
	.string	"term_outbuf_index"
.LASF149:
	.string	"load_addr_type"
.LASF18:
	.string	"__off64_t"
.LASF260:
	.string	"IF_IDE"
.LASF83:
	.string	"st_gid"
.LASF101:
	.string	"target_phys_addr_t"
.LASF323:
	.string	"do_info_name"
.LASF205:
	.string	"interrupt_request"
.LASF398:
	.string	"mem_info"
.LASF332:
	.string	"do_info_jit"
.LASF38:
	.string	"_IO_write_end"
.LASF252:
	.string	"chr_can_read"
.LASF80:
	.string	"st_nlink"
.LASF312:
	.string	"help_cmd"
.LASF13:
	.string	"__ino_t"
.LASF211:
	.string	"tlb_table"
.LASF91:
	.string	"st_ctim"
.LASF146:
	.string	"load_value"
.LASF24:
	.string	"__sigset_t"
.LASF166:
	.string	"cc_src"
.LASF313:
	.string	"__s1"
.LASF331:
	.string	"index"
.LASF159:
	.string	"regs"
.LASF322:
	.string	"do_info_version"
.LASF378:
	.string	"__s2"
.LASF344:
	.string	"do_gdbserver"
.LASF457:
	.string	"monitor_init"
.LASF140:
	.string	"storedby_eip"
.LASF497:
	.string	"/home/remco/Projects/Argos/src/i386-softmmu"
.LASF444:
	.string	"monitor_start_input"
.LASF340:
	.string	"do_log"
.LASF272:
	.string	"info"
.LASF158:
	.string	"CPUX86State"
.LASF188:
	.string	"sysenter_eip"
.LASF89:
	.string	"st_atim"
.LASF360:
	.string	"do_memory_dump"
.LASF454:
	.string	"has_option"
.LASF269:
	.string	"type"
.LASF11:
	.string	"__uid_t"
.LASF308:
	.string	"cmds"
.LASF266:
	.string	"BlockInterfaceType"
.LASF350:
	.string	"wsize"
.LASF173:
	.string	"prev_fpip"
.LASF155:
	.string	"store_size"
.LASF176:
	.string	"fpuc"
.LASF175:
	.string	"fpus"
.LASF61:
	.string	"__gnuc_va_list"
.LASF134:
	.string	"logfile"
.LASF45:
	.string	"_chain"
.LASF94:
	.string	"__jmp_buf_tag"
.LASF164:
	.string	"regtags"
.LASF6:
	.string	"unsigned char"
.LASF21:
	.string	"__blkcnt_t"
.LASF174:
	.string	"fpstt"
.LASF67:
	.string	"_IO_lock_t"
.LASF107:
	.string	"float"
.LASF416:
	.string	"expr_sum"
.LASF3:
	.string	"long long int"
.LASF178:
	.string	"fpregs"
.LASF396:
	.string	"prot"
.LASF251:
	.string	"chr_event"
.LASF254:
	.string	"handler_opaque"
.LASF464:
	.string	"target"
.LASF171:
	.string	"a20_mask"
.LASF377:
	.string	"endp"
.LASF148:
	.string	"load_addr"
.LASF39:
	.string	"_IO_buf_base"
.LASF202:
	.string	"exception_is_int"
.LASF420:
	.string	"expr_prod"
.LASF104:
	.string	"addr_write"
.LASF458:
	.string	"show_banner"
.LASF341:
	.string	"items"
.LASF494:
	.string	"monitor_readline_buf_size"
.LASF116:
	.string	"CPU86_LDouble"
.LASF76:
	.string	"uint64_t"
.LASF15:
	.string	"__mode_t"
.LASF468:
	.string	"stdin"
.LASF145:
	.string	"instruction_netidx"
.LASF253:
	.string	"chr_read"
.LASF314:
	.string	"__result"
.LASF283:
	.string	"d_name"
.LASF419:
	.string	"pval"
.LASF215:
	.string	"singlestep_enabled"
.LASF438:
	.string	"file_prefix"
.LASF356:
	.string	"ldub_p"
.LASF129:
	.string	"netidx"
.LASF235:
	.string	"envmap"
.LASF293:
	.string	"MonitorDef"
.LASF127:
	.string	"argos_rtag"
.LASF286:
	.string	"args_type"
.LASF281:
	.string	"d_reclen"
.LASF72:
	.string	"va_list"
.LASF455:
	.string	"term_event"
.LASF311:
	.string	"__s2_len"
.LASF141:
	.string	"executed_eip"
.LASF376:
	.string	"get_keycode"
.LASF375:
	.string	"nb_keycodes"
.LASF361:
	.string	"size"
.LASF395:
	.string	"plast_prot"
.LASF29:
	.string	"FILE"
.LASF307:
	.string	"help_cmd1"
.LASF477:
	.string	"monitor_hd"
.LASF476:
	.string	"completion_index"
.LASF300:
	.string	"term_print_filename"
.LASF478:
	.string	"hide_banner"
.LASF182:
	.string	"mxcsr"
.LASF187:
	.string	"sysenter_esp"
.LASF445:
	.string	"monitor_handle_command1"
.LASF338:
	.string	"do_screen_dump"
.LASF9:
	.string	"size_t"
.LASF228:
	.string	"cpuid_features"
.LASF256:
	.string	"chr_close"
.LASF273:
	.string	"destroy"
.LASF422:
	.string	"get_str"
.LASF193:
	.string	"intercept"
.LASF452:
	.string	"add_num"
.LASF291:
	.string	"capture_list_head"
.LASF401:
	.string	"do_info_capture"
.LASF486:
	.string	"capture_head"
.LASF195:
	.string	"intercept_cr_write"
.LASF475:
	.string	"drives_table"
.LASF41:
	.string	"_IO_save_base"
.LASF92:
	.string	"__unused"
.LASF394:
	.string	"mem_print"
.LASF351:
	.string	"addr"
.LASF157:
	.string	"vaddr"
.LASF328:
	.string	"do_info_registers"
.LASF132:
	.string	"running"
.LASF98:
	.string	"jmp_buf"
.LASF382:
	.string	"dz_str"
.LASF110:
	.string	"float64"
.LASF490:
	.string	"default_fmt_size"
.LASF37:
	.string	"_IO_write_ptr"
.LASF374:
	.string	"keycodes"
.LASF365:
	.string	"do_print"
.LASF125:
	.string	"argos_netidx_t"
.LASF250:
	.string	"chr_ioctl"
.LASF208:
	.string	"current_tb"
.LASF417:
	.string	"expr_unary"
.LASF143:
	.string	"instruction_size"
.LASF437:
	.string	"file"
.LASF56:
	.string	"__pad3"
.LASF58:
	.string	"__pad5"
.LASF347:
	.string	"memory_dump"
.LASF192:
	.string	"vm_vmcb"
.LASF216:
	.string	"watchpoint"
.LASF81:
	.string	"st_mode"
.LASF305:
	.string	"list"
.LASF290:
	.string	"KeyDef"
.LASF139:
	.string	"loadedby_eip"
.LASF329:
	.string	"do_info_cpus"
.LASF320:
	.string	"do_info"
.LASF114:
	.string	"float_rounding_mode"
.LASF69:
	.string	"_next"
.LASF259:
	.string	"IOEventHandler"
.LASF436:
	.string	"file_completion"
.LASF280:
	.string	"d_off"
.LASF288:
	.string	"params"
.LASF352:
	.string	"is_physical"
.LASF167:
	.string	"cc_dst"
.LASF296:
	.string	"term_flush"
.LASF451:
	.string	"error_args"
.LASF389:
	.string	"do_system_powerdown"
.LASF466:
	.string	"password"
.LASF386:
	.string	"has_index"
.LASF405:
	.string	"has_freq"
.LASF310:
	.string	"__s1_len"
.LASF183:
	.string	"xmm_regs"
.LASF152:
	.string	"store_value_netidx"
.LASF406:
	.string	"freq"
.LASF429:
	.string	"cmdline"
.LASF30:
	.string	"timespec"
.LASF400:
	.string	"do_info_profile"
.LASF25:
	.string	"__val"
.LASF346:
	.string	"term_printc"
.LASF425:
	.string	"cmd_completion"
.LASF299:
	.string	"term_printf"
.LASF289:
	.string	"keycode"
.LASF442:
	.string	"term_can_read"
.LASF154:
	.string	"store_addr_type"
.LASF48:
	.string	"_old_offset"
.LASF169:
	.string	"hflags"
.LASF82:
	.string	"st_uid"
.LASF481:
	.string	"term_outbuf"
.LASF321:
	.string	"found"
.LASF199:
	.string	"jmp_env"
.LASF414:
	.string	"expr_logic"
.LASF234:
	.string	"cpuid_apic_id"
.LASF432:
	.string	"nb_args"
.LASF123:
	.string	"MMXReg"
.LASF241:
	.string	"name"
.LASF181:
	.string	"sse_status"
.LASF209:
	.string	"mem_write_pc"
.LASF70:
	.string	"_sbuf"
.LASF239:
	.string	"CPULogItem"
.LASF43:
	.string	"_IO_save_end"
.LASF117:
	.string	"SegmentCache"
.LASF270:
	.string	"unit"
.LASF435:
	.string	"pnb_args"
.LASF304:
	.string	"compare_cmd"
.LASF189:
	.string	"efer"
.LASF19:
	.string	"__time_t"
.LASF282:
	.string	"d_type"
.LASF399:
	.string	"last_prot"
.LASF63:
	.string	"gp_offset"
.LASF439:
	.string	"input_path_len"
.LASF337:
	.string	"do_eject"
.LASF461:
	.string	"prompt"
.LASF384:
	.string	"button_state"
.LASF421:
	.string	"get_expr"
.LASF4:
	.string	"short unsigned int"
.LASF168:
	.string	"cc_op"
.LASF7:
	.string	"signed char"
.LASF330:
	.string	"do_cpu_set"
.LASF447:
	.string	"typestr"
.LASF212:
	.string	"tb_jmp_cache"
.LASF370:
	.string	"start"
.LASF135:
	.string	"instruction_cnt"
.LASF229:
	.string	"cpuid_ext_features"
.LASF301:
	.string	"filename"
.LASF371:
	.string	"do_send_key"
.LASF348:
	.string	"count"
.LASF443:
	.string	"term_read"
.LASF115:
	.string	"floatx80_rounding_precision"
.LASF194:
	.string	"intercept_cr_read"
.LASF393:
	.string	"le32_to_cpu"
.LASF218:
	.string	"watchpoint_hit"
.LASF385:
	.string	"do_ioport_read"
.LASF35:
	.string	"_IO_read_base"
.LASF75:
	.string	"uint32_t"
.LASF53:
	.string	"_offset"
.LASF372:
	.string	"string"
.LASF471:
	.string	"cpu_log_items"
.LASF111:
	.string	"floatx80"
.LASF489:
	.string	"default_fmt_format"
.LASF397:
	.string	"prot1"
.LASF191:
	.string	"vm_hsave"
.LASF424:
	.string	"fail"
.LASF214:
	.string	"nb_breakpoints"
.LASF404:
	.string	"path"
.LASF427:
	.string	"input"
.LASF144:
	.string	"logged"
.LASF276:
	.string	"CaptureState"
.LASF207:
	.string	"old_exception"
.LASF59:
	.string	"_mode"
.LASF36:
	.string	"_IO_write_base"
.LASF284:
	.string	"__dirstream"
.LASF122:
	.string	"XMMReg"
.LASF317:
	.string	"do_commit"
.LASF465:
	.string	"do_change_vnc"
.LASF185:
	.string	"mmx_t0"
.LASF219:
	.string	"next_cpu"
.LASF213:
	.string	"breakpoints"
.LASF408:
	.string	"bits"
.LASF339:
	.string	"do_logfile"
.LASF249:
	.string	"chr_update_read_handler"
.LASF206:
	.string	"user_mode_only"
.LASF261:
	.string	"IF_SCSI"
.LASF2:
	.string	"long int"
.LASF245:
	.string	"IOCanRWHandler"
.LASF136:
	.string	"instruction_stage"
.LASF198:
	.string	"intercept_exceptions"
.LASF161:
	.string	"t0tag"
.LASF349:
	.string	"format"
.LASF96:
	.string	"__mask_was_saved"
.LASF68:
	.string	"_IO_marker"
.LASF120:
	.string	"limit"
.LASF244:
	.string	"IOReadHandler"
.LASF324:
	.string	"do_info_block"
.LASF221:
	.string	"opaque"
.LASF355:
	.string	"max_digits"
.LASF430:
	.string	"cmdname"
.LASF392:
	.string	"cpu_physical_memory_read"
.LASF255:
	.string	"chr_send_event"
.LASF303:
	.string	"monitor_fprintf"
.LASF73:
	.string	"uint8_t"
.LASF368:
	.string	"do_memory_save"
.LASF238:
	.string	"APICState"
.LASF170:
	.string	"segs"
.LASF485:
	.string	"mouse_button_state"
.LASF223:
	.string	"cpuid_level"
.LASF450:
	.string	"add_str"
.LASF237:
	.string	"TranslationBlock"
.LASF318:
	.string	"device"
.LASF113:
	.string	"float_status"
.LASF112:
	.string	"long double"
.LASF246:
	.string	"BlockDriverState"
.LASF147:
	.string	"load_value_netidx"
.LASF285:
	.string	"term_cmd_t"
.LASF0:
	.string	"long unsigned int"
.LASF180:
	.string	"fp_convert"
.LASF463:
	.string	"do_change"
.LASF495:
	.string	"GNU C 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
.LASF373:
	.string	"keybuf"
.LASF263:
	.string	"IF_PFLASH"
.LASF5:
	.string	"char"
.LASF200:
	.string	"exception_index"
.LASF470:
	.string	"first_cpu"
.LASF492:
	.string	"monitor_readline_started"
.LASF474:
	.string	"nb_drives"
.LASF390:
	.string	"print_pte"
.LASF186:
	.string	"sysenter_cs"
.LASF10:
	.string	"__dev_t"
.LASF479:
	.string	"term_cmds"
.LASF153:
	.string	"store_addr"
.LASF131:
	.string	"argos_shellcode_context_s"
.LASF156:
	.string	"argos_shellcode_context_t"
.LASF34:
	.string	"_IO_read_end"
.LASF275:
	.string	"le_prev"
.LASF31:
	.string	"_IO_FILE"
.LASF130:
	.string	"argos_rtag_t"
.LASF197:
	.string	"intercept_dr_write"
.LASF137:
	.string	"trace_stage"
.LASF262:
	.string	"IF_FLOPPY"
.LASF55:
	.string	"__pad2"
.LASF491:
	.string	"is_first_init"
.LASF236:
	.string	"apic_state"
.LASF387:
	.string	"suffix"
.LASF247:
	.string	"CharDriverState"
.LASF467:
	.string	"do_change_block"
.LASF335:
	.string	"eject_device"
.LASF480:
	.string	"info_cmds"
.LASF357:
	.string	"ldq_le_p"
.LASF84:
	.string	"__pad0"
.LASF54:
	.string	"__pad1"
.LASF57:
	.string	"__pad4"
.LASF423:
	.string	"buf_size"
.LASF483:
	.string	"mon_cpu"
.LASF44:
	.string	"_markers"
.LASF71:
	.string	"_pos"
.LASF343:
	.string	"do_cont"
.LASF493:
	.string	"monitor_readline_buf"
.LASF23:
	.string	"int64_t"
.LASF380:
	.string	"dx_str"
.LASF99:
	.string	"target_long"
.LASF415:
	.string	"val2"
.LASF403:
	.string	"do_wav_capture"
.LASF433:
	.string	"ptype"
.LASF108:
	.string	"double"
.LASF278:
	.string	"dirent"
.LASF196:
	.string	"intercept_dr_read"
.LASF105:
	.string	"addr_code"
.LASF65:
	.string	"overflow_arg_area"
.LASF257:
	.string	"chr_accept_input"
.LASF85:
	.string	"st_rdev"
.LASF264:
	.string	"IF_MTD"
.LASF78:
	.string	"st_dev"
.LASF366:
	.string	"valh"
.LASF431:
	.string	"args"
.LASF367:
	.string	"vall"
.LASF487:
	.string	"expr_env"
.LASF496:
	.string	"/home/remco/Projects/Argos/src/monitor.c"
.LASF274:
	.string	"le_next"
.LASF150:
	.string	"load_size"
.LASF179:
	.string	"fp_status"
.LASF315:
	.string	"item"
.LASF287:
	.string	"handler"
.LASF248:
	.string	"chr_write"
.LASF64:
	.string	"fp_offset"
.LASF119:
	.string	"base"
.LASF16:
	.string	"__nlink_t"
.LASF12:
	.string	"__gid_t"
.LASF232:
	.string	"cpuid_ext2_features"
.LASF177:
	.string	"fptags"
.LASF488:
	.string	"monitor_defs"
.LASF26:
	.string	"tv_sec"
.LASF460:
	.string	"monitor_readline"
.LASF28:
	.string	"long long unsigned int"
.LASF294:
	.string	"offset"
.LASF49:
	.string	"_cur_column"
.LASF165:
	.string	"shellcode_context"
.LASF88:
	.string	"st_blocks"
.LASF354:
	.string	"line_size"
.LASF227:
	.string	"cpuid_version"
.LASF379:
	.string	"do_mouse_move"
.LASF160:
	.string	"eflags"
.LASF14:
	.string	"__ino64_t"
.LASF319:
	.string	"all_devices"
.LASF42:
	.string	"_IO_backup_base"
.LASF258:
	.string	"focus"
.LASF410:
	.string	"nchannels"
.LASF33:
	.string	"_IO_read_ptr"
.LASF383:
	.string	"do_mouse_button"
.LASF217:
	.string	"nb_watchpoints"
.LASF138:
	.string	"is_system_call"
.LASF102:
	.string	"CPUTLBEntry"
.LASF271:
	.string	"capture_ops"
.LASF74:
	.string	"uint16_t"
.LASF473:
	.string	"qemu_name"
.LASF184:
	.string	"xmm_t0"
.LASF326:
	.string	"mon_set_cpu"
.LASF407:
	.string	"has_bits"
.LASF327:
	.string	"mon_get_cpu"
.LASF449:
	.string	"str_allocated"
.LASF364:
	.string	"do_physical_memory_dump"
.LASF62:
	.string	"__va_list_tag"
.LASF345:
	.string	"port"
.LASF47:
	.string	"_flags2"
.LASF79:
	.string	"st_ino"
.LASF472:
	.string	"phys_ram_dirty"
.LASF462:
	.string	"is_password"
.LASF309:
	.string	"prefix"
.LASF412:
	.string	"expr_error"
.LASF27:
	.string	"tv_nsec"
.LASF230:
	.string	"cpuid_xlevel"
.LASF126:
	.string	"argos_bytemap_t"
.LASF20:
	.string	"__blksize_t"
.LASF428:
	.string	"readline_find_completion"
.LASF358:
	.string	"ldl_le_p"
.LASF484:
	.string	"key_defs"
.LASF453:
	.string	"bad_type"
.LASF402:
	.string	"do_stop_capture"
.LASF128:
	.string	"origin"
.LASF151:
	.string	"store_value"
.LASF369:
	.string	"do_sum"
.LASF100:
	.string	"target_ulong"
.LASF359:
	.string	"lduw_le_p"
.LASF204:
	.string	"smbase"
.LASF342:
	.string	"do_stop"
.LASF302:
	.string	"stream"
.LASF295:
	.string	"get_value"
.LASF142:
	.string	"instruction"
.LASF90:
	.string	"st_mtim"
.LASF441:
	.string	"__statbuf"
.LASF8:
	.string	"short int"
.LASF242:
	.string	"help"
.LASF224:
	.string	"cpuid_vendor1"
.LASF225:
	.string	"cpuid_vendor2"
.LASF226:
	.string	"cpuid_vendor3"
.LASF93:
	.string	"__jmp_buf"
.LASF50:
	.string	"_vtable_offset"
.LASF279:
	.string	"d_ino"
.LASF333:
	.string	"do_info_history"
.LASF103:
	.string	"addr_read"
.LASF190:
	.string	"star"
.LASF77:
	.string	"stat"
.LASF121:
	.string	"flags"
.LASF118:
	.string	"selector"
.LASF292:
	.string	"lh_first"
.LASF409:
	.string	"has_channels"
	.section	.note.GNU-stack,"",@progbits
	.ident	"GCC: (GNU) 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
