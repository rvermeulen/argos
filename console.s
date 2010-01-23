	.file	"console.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.local	nb_consoles
	.comm	nb_consoles,4,4
	.section	.rodata
	.align 16
	.type	dmask4, @object
	.size	dmask4, 16
dmask4:
	.long	0
	.long	-65536
	.long	65535
	.long	-1
	.align 32
	.type	dmask16, @object
	.size	dmask16, 64
dmask16:
	.long	0
	.long	-16777216
	.long	16711680
	.long	-65536
	.long	65280
	.long	-16711936
	.long	16776960
	.long	-256
	.long	255
	.long	-16776961
	.long	16711935
	.long	-65281
	.long	65535
	.long	-16711681
	.long	16777215
	.long	-1
	.data
	.align 32
	.type	vgafont16, @object
	.size	vgafont16, 4096
vgafont16:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	126
	.byte	-127
	.byte	-91
	.byte	-127
	.byte	-127
	.byte	-67
	.byte	-103
	.byte	-127
	.byte	-127
	.byte	126
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	126
	.byte	-1
	.byte	-37
	.byte	-1
	.byte	-1
	.byte	-61
	.byte	-25
	.byte	-1
	.byte	-1
	.byte	126
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	108
	.byte	-2
	.byte	-2
	.byte	-2
	.byte	-2
	.byte	124
	.byte	56
	.byte	16
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	16
	.byte	56
	.byte	124
	.byte	-2
	.byte	124
	.byte	56
	.byte	16
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	24
	.byte	60
	.byte	60
	.byte	-25
	.byte	-25
	.byte	-25
	.byte	24
	.byte	24
	.byte	60
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	24
	.byte	60
	.byte	126
	.byte	-1
	.byte	-1
	.byte	126
	.byte	24
	.byte	24
	.byte	60
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	24
	.byte	60
	.byte	60
	.byte	24
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-25
	.byte	-61
	.byte	-61
	.byte	-25
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	60
	.byte	102
	.byte	66
	.byte	66
	.byte	102
	.byte	60
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-61
	.byte	-103
	.byte	-67
	.byte	-67
	.byte	-103
	.byte	-61
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	0
	.byte	0
	.byte	30
	.byte	14
	.byte	26
	.byte	50
	.byte	120
	.byte	-52
	.byte	-52
	.byte	-52
	.byte	-52
	.byte	120
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	60
	.byte	102
	.byte	102
	.byte	102
	.byte	102
	.byte	60
	.byte	24
	.byte	126
	.byte	24
	.byte	24
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	63
	.byte	51
	.byte	63
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	112
	.byte	-16
	.byte	-32
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	127
	.byte	99
	.byte	127
	.byte	99
	.byte	99
	.byte	99
	.byte	99
	.byte	103
	.byte	-25
	.byte	-26
	.byte	-64
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	24
	.byte	24
	.byte	-37
	.byte	60
	.byte	-25
	.byte	60
	.byte	-37
	.byte	24
	.byte	24
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	-64
	.byte	-32
	.byte	-16
	.byte	-8
	.byte	-2
	.byte	-8
	.byte	-16
	.byte	-32
	.byte	-64
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	2
	.byte	6
	.byte	14
	.byte	30
	.byte	62
	.byte	-2
	.byte	62
	.byte	30
	.byte	14
	.byte	6
	.byte	2
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	24
	.byte	60
	.byte	126
	.byte	24
	.byte	24
	.byte	24
	.byte	126
	.byte	60
	.byte	24
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	102
	.byte	102
	.byte	102
	.byte	102
	.byte	102
	.byte	102
	.byte	102
	.byte	0
	.byte	102
	.byte	102
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	127
	.byte	-37
	.byte	-37
	.byte	-37
	.byte	123
	.byte	27
	.byte	27
	.byte	27
	.byte	27
	.byte	27
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	124
	.byte	-58
	.byte	96
	.byte	56
	.byte	108
	.byte	-58
	.byte	-58
	.byte	108
	.byte	56
	.byte	12
	.byte	-58
	.byte	124
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-2
	.byte	-2
	.byte	-2
	.byte	-2
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	24
	.byte	60
	.byte	126
	.byte	24
	.byte	24
	.byte	24
	.byte	126
	.byte	60
	.byte	24
	.byte	126
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	24
	.byte	60
	.byte	126
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	126
	.byte	60
	.byte	24
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	24
	.byte	12
	.byte	-2
	.byte	12
	.byte	24
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	48
	.byte	96
	.byte	-2
	.byte	96
	.byte	48
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-64
	.byte	-64
	.byte	-64
	.byte	-2
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	40
	.byte	108
	.byte	-2
	.byte	108
	.byte	40
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	16
	.byte	56
	.byte	56
	.byte	124
	.byte	124
	.byte	-2
	.byte	-2
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-2
	.byte	-2
	.byte	124
	.byte	124
	.byte	56
	.byte	56
	.byte	16
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	24
	.byte	60
	.byte	60
	.byte	60
	.byte	24
	.byte	24
	.byte	24
	.byte	0
	.byte	24
	.byte	24
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	102
	.byte	102
	.byte	102
	.byte	36
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	108
	.byte	108
	.byte	-2
	.byte	108
	.byte	108
	.byte	108
	.byte	-2
	.byte	108
	.byte	108
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	24
	.byte	24
	.byte	124
	.byte	-58
	.byte	-62
	.byte	-64
	.byte	124
	.byte	6
	.byte	6
	.byte	-122
	.byte	-58
	.byte	124
	.byte	24
	.byte	24
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-62
	.byte	-58
	.byte	12
	.byte	24
	.byte	48
	.byte	96
	.byte	-58
	.byte	-122
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	56
	.byte	108
	.byte	108
	.byte	56
	.byte	118
	.byte	-36
	.byte	-52
	.byte	-52
	.byte	-52
	.byte	118
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	48
	.byte	48
	.byte	48
	.byte	96
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	12
	.byte	24
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	24
	.byte	12
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	48
	.byte	24
	.byte	12
	.byte	12
	.byte	12
	.byte	12
	.byte	12
	.byte	12
	.byte	24
	.byte	48
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	102
	.byte	60
	.byte	-1
	.byte	60
	.byte	102
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	24
	.byte	24
	.byte	126
	.byte	24
	.byte	24
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	24
	.byte	24
	.byte	24
	.byte	48
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-2
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	24
	.byte	24
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	2
	.byte	6
	.byte	12
	.byte	24
	.byte	48
	.byte	96
	.byte	-64
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	56
	.byte	108
	.byte	-58
	.byte	-58
	.byte	-42
	.byte	-42
	.byte	-58
	.byte	-58
	.byte	108
	.byte	56
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	24
	.byte	56
	.byte	120
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	126
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	124
	.byte	-58
	.byte	6
	.byte	12
	.byte	24
	.byte	48
	.byte	96
	.byte	-64
	.byte	-58
	.byte	-2
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	124
	.byte	-58
	.byte	6
	.byte	6
	.byte	60
	.byte	6
	.byte	6
	.byte	6
	.byte	-58
	.byte	124
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	12
	.byte	28
	.byte	60
	.byte	108
	.byte	-52
	.byte	-2
	.byte	12
	.byte	12
	.byte	12
	.byte	30
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-2
	.byte	-64
	.byte	-64
	.byte	-64
	.byte	-4
	.byte	6
	.byte	6
	.byte	6
	.byte	-58
	.byte	124
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	56
	.byte	96
	.byte	-64
	.byte	-64
	.byte	-4
	.byte	-58
	.byte	-58
	.byte	-58
	.byte	-58
	.byte	124
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-2
	.byte	-58
	.byte	6
	.byte	6
	.byte	12
	.byte	24
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	124
	.byte	-58
	.byte	-58
	.byte	-58
	.byte	124
	.byte	-58
	.byte	-58
	.byte	-58
	.byte	-58
	.byte	124
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	124
	.byte	-58
	.byte	-58
	.byte	-58
	.byte	126
	.byte	6
	.byte	6
	.byte	6
	.byte	12
	.byte	120
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	24
	.byte	24
	.byte	0
	.byte	0
	.byte	0
	.byte	24
	.byte	24
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	24
	.byte	24
	.byte	0
	.byte	0
	.byte	0
	.byte	24
	.byte	24
	.byte	48
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	6
	.byte	12
	.byte	24
	.byte	48
	.byte	96
	.byte	48
	.byte	24
	.byte	12
	.byte	6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	126
	.byte	0
	.byte	0
	.byte	126
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	96
	.byte	48
	.byte	24
	.byte	12
	.byte	6
	.byte	12
	.byte	24
	.byte	48
	.byte	96
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	124
	.byte	-58
	.byte	-58
	.byte	12
	.byte	24
	.byte	24
	.byte	24
	.byte	0
	.byte	24
	.byte	24
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	124
	.byte	-58
	.byte	-58
	.byte	-34
	.byte	-34
	.byte	-34
	.byte	-36
	.byte	-64
	.byte	124
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	16
	.byte	56
	.byte	108
	.byte	-58
	.byte	-58
	.byte	-2
	.byte	-58
	.byte	-58
	.byte	-58
	.byte	-58
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-4
	.byte	102
	.byte	102
	.byte	102
	.byte	124
	.byte	102
	.byte	102
	.byte	102
	.byte	102
	.byte	-4
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	60
	.byte	102
	.byte	-62
	.byte	-64
	.byte	-64
	.byte	-64
	.byte	-64
	.byte	-62
	.byte	102
	.byte	60
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-8
	.byte	108
	.byte	102
	.byte	102
	.byte	102
	.byte	102
	.byte	102
	.byte	102
	.byte	108
	.byte	-8
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-2
	.byte	102
	.byte	98
	.byte	104
	.byte	120
	.byte	104
	.byte	96
	.byte	98
	.byte	102
	.byte	-2
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-2
	.byte	102
	.byte	98
	.byte	104
	.byte	120
	.byte	104
	.byte	96
	.byte	96
	.byte	96
	.byte	-16
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	60
	.byte	102
	.byte	-62
	.byte	-64
	.byte	-64
	.byte	-34
	.byte	-58
	.byte	-58
	.byte	102
	.byte	58
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-58
	.byte	-58
	.byte	-58
	.byte	-58
	.byte	-2
	.byte	-58
	.byte	-58
	.byte	-58
	.byte	-58
	.byte	-58
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	60
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	60
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	30
	.byte	12
	.byte	12
	.byte	12
	.byte	12
	.byte	12
	.byte	-52
	.byte	-52
	.byte	-52
	.byte	120
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-26
	.byte	102
	.byte	102
	.byte	108
	.byte	120
	.byte	120
	.byte	108
	.byte	102
	.byte	102
	.byte	-26
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-16
	.byte	96
	.byte	96
	.byte	96
	.byte	96
	.byte	96
	.byte	96
	.byte	98
	.byte	102
	.byte	-2
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-58
	.byte	-18
	.byte	-2
	.byte	-2
	.byte	-42
	.byte	-58
	.byte	-58
	.byte	-58
	.byte	-58
	.byte	-58
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-58
	.byte	-26
	.byte	-10
	.byte	-2
	.byte	-34
	.byte	-50
	.byte	-58
	.byte	-58
	.byte	-58
	.byte	-58
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	124
	.byte	-58
	.byte	-58
	.byte	-58
	.byte	-58
	.byte	-58
	.byte	-58
	.byte	-58
	.byte	-58
	.byte	124
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-4
	.byte	102
	.byte	102
	.byte	102
	.byte	124
	.byte	96
	.byte	96
	.byte	96
	.byte	96
	.byte	-16
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	124
	.byte	-58
	.byte	-58
	.byte	-58
	.byte	-58
	.byte	-58
	.byte	-58
	.byte	-42
	.byte	-34
	.byte	124
	.byte	12
	.byte	14
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-4
	.byte	102
	.byte	102
	.byte	102
	.byte	124
	.byte	108
	.byte	102
	.byte	102
	.byte	102
	.byte	-26
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	124
	.byte	-58
	.byte	-58
	.byte	96
	.byte	56
	.byte	12
	.byte	6
	.byte	-58
	.byte	-58
	.byte	124
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	126
	.byte	126
	.byte	90
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	60
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-58
	.byte	-58
	.byte	-58
	.byte	-58
	.byte	-58
	.byte	-58
	.byte	-58
	.byte	-58
	.byte	-58
	.byte	124
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-58
	.byte	-58
	.byte	-58
	.byte	-58
	.byte	-58
	.byte	-58
	.byte	-58
	.byte	108
	.byte	56
	.byte	16
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-58
	.byte	-58
	.byte	-58
	.byte	-58
	.byte	-42
	.byte	-42
	.byte	-42
	.byte	-2
	.byte	-18
	.byte	108
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-58
	.byte	-58
	.byte	108
	.byte	124
	.byte	56
	.byte	56
	.byte	124
	.byte	108
	.byte	-58
	.byte	-58
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	102
	.byte	102
	.byte	102
	.byte	102
	.byte	60
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	60
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-2
	.byte	-58
	.byte	-122
	.byte	12
	.byte	24
	.byte	48
	.byte	96
	.byte	-62
	.byte	-58
	.byte	-2
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	60
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	60
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	-64
	.byte	-32
	.byte	112
	.byte	56
	.byte	28
	.byte	14
	.byte	6
	.byte	2
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	60
	.byte	12
	.byte	12
	.byte	12
	.byte	12
	.byte	12
	.byte	12
	.byte	12
	.byte	12
	.byte	60
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	16
	.byte	56
	.byte	108
	.byte	-58
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-1
	.byte	0
	.byte	0
	.byte	0
	.byte	48
	.byte	24
	.byte	12
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	120
	.byte	12
	.byte	124
	.byte	-52
	.byte	-52
	.byte	-52
	.byte	118
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-32
	.byte	96
	.byte	96
	.byte	120
	.byte	108
	.byte	102
	.byte	102
	.byte	102
	.byte	102
	.byte	124
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	124
	.byte	-58
	.byte	-64
	.byte	-64
	.byte	-64
	.byte	-58
	.byte	124
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	28
	.byte	12
	.byte	12
	.byte	60
	.byte	108
	.byte	-52
	.byte	-52
	.byte	-52
	.byte	-52
	.byte	118
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	124
	.byte	-58
	.byte	-2
	.byte	-64
	.byte	-64
	.byte	-58
	.byte	124
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	28
	.byte	54
	.byte	50
	.byte	48
	.byte	120
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	120
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	118
	.byte	-52
	.byte	-52
	.byte	-52
	.byte	-52
	.byte	-52
	.byte	124
	.byte	12
	.byte	-52
	.byte	120
	.byte	0
	.byte	0
	.byte	0
	.byte	-32
	.byte	96
	.byte	96
	.byte	108
	.byte	118
	.byte	102
	.byte	102
	.byte	102
	.byte	102
	.byte	-26
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	24
	.byte	24
	.byte	0
	.byte	56
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	60
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	6
	.byte	6
	.byte	0
	.byte	14
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	102
	.byte	102
	.byte	60
	.byte	0
	.byte	0
	.byte	0
	.byte	-32
	.byte	96
	.byte	96
	.byte	102
	.byte	108
	.byte	120
	.byte	120
	.byte	108
	.byte	102
	.byte	-26
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	56
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	60
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-20
	.byte	-2
	.byte	-42
	.byte	-42
	.byte	-42
	.byte	-42
	.byte	-58
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-36
	.byte	102
	.byte	102
	.byte	102
	.byte	102
	.byte	102
	.byte	102
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	124
	.byte	-58
	.byte	-58
	.byte	-58
	.byte	-58
	.byte	-58
	.byte	124
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-36
	.byte	102
	.byte	102
	.byte	102
	.byte	102
	.byte	102
	.byte	124
	.byte	96
	.byte	96
	.byte	-16
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	118
	.byte	-52
	.byte	-52
	.byte	-52
	.byte	-52
	.byte	-52
	.byte	124
	.byte	12
	.byte	12
	.byte	30
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-36
	.byte	118
	.byte	102
	.byte	96
	.byte	96
	.byte	96
	.byte	-16
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	124
	.byte	-58
	.byte	96
	.byte	56
	.byte	12
	.byte	-58
	.byte	124
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	16
	.byte	48
	.byte	48
	.byte	-4
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	54
	.byte	28
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-52
	.byte	-52
	.byte	-52
	.byte	-52
	.byte	-52
	.byte	-52
	.byte	118
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-58
	.byte	-58
	.byte	-58
	.byte	-58
	.byte	-58
	.byte	108
	.byte	56
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-58
	.byte	-58
	.byte	-42
	.byte	-42
	.byte	-42
	.byte	-2
	.byte	108
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-58
	.byte	108
	.byte	56
	.byte	56
	.byte	56
	.byte	108
	.byte	-58
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-58
	.byte	-58
	.byte	-58
	.byte	-58
	.byte	-58
	.byte	-58
	.byte	126
	.byte	6
	.byte	12
	.byte	-8
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-2
	.byte	-52
	.byte	24
	.byte	48
	.byte	96
	.byte	-58
	.byte	-2
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	14
	.byte	24
	.byte	24
	.byte	24
	.byte	112
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	14
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	112
	.byte	24
	.byte	24
	.byte	24
	.byte	14
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	112
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	118
	.byte	-36
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	16
	.byte	56
	.byte	108
	.byte	-58
	.byte	-58
	.byte	-58
	.byte	-2
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	60
	.byte	102
	.byte	-62
	.byte	-64
	.byte	-64
	.byte	-64
	.byte	-64
	.byte	-62
	.byte	102
	.byte	60
	.byte	24
	.byte	112
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-52
	.byte	0
	.byte	0
	.byte	-52
	.byte	-52
	.byte	-52
	.byte	-52
	.byte	-52
	.byte	-52
	.byte	118
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	12
	.byte	24
	.byte	48
	.byte	0
	.byte	124
	.byte	-58
	.byte	-2
	.byte	-64
	.byte	-64
	.byte	-58
	.byte	124
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	16
	.byte	56
	.byte	108
	.byte	0
	.byte	120
	.byte	12
	.byte	124
	.byte	-52
	.byte	-52
	.byte	-52
	.byte	118
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-52
	.byte	0
	.byte	0
	.byte	120
	.byte	12
	.byte	124
	.byte	-52
	.byte	-52
	.byte	-52
	.byte	118
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	96
	.byte	48
	.byte	24
	.byte	0
	.byte	120
	.byte	12
	.byte	124
	.byte	-52
	.byte	-52
	.byte	-52
	.byte	118
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	56
	.byte	108
	.byte	56
	.byte	0
	.byte	120
	.byte	12
	.byte	124
	.byte	-52
	.byte	-52
	.byte	-52
	.byte	118
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	124
	.byte	-58
	.byte	-64
	.byte	-64
	.byte	-64
	.byte	-58
	.byte	124
	.byte	24
	.byte	112
	.byte	0
	.byte	0
	.byte	0
	.byte	16
	.byte	56
	.byte	108
	.byte	0
	.byte	124
	.byte	-58
	.byte	-2
	.byte	-64
	.byte	-64
	.byte	-58
	.byte	124
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-58
	.byte	0
	.byte	0
	.byte	124
	.byte	-58
	.byte	-2
	.byte	-64
	.byte	-64
	.byte	-58
	.byte	124
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	96
	.byte	48
	.byte	24
	.byte	0
	.byte	124
	.byte	-58
	.byte	-2
	.byte	-64
	.byte	-64
	.byte	-58
	.byte	124
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	102
	.byte	0
	.byte	0
	.byte	56
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	60
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	24
	.byte	60
	.byte	102
	.byte	0
	.byte	56
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	60
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	96
	.byte	48
	.byte	24
	.byte	0
	.byte	56
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	60
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-58
	.byte	0
	.byte	16
	.byte	56
	.byte	108
	.byte	-58
	.byte	-58
	.byte	-2
	.byte	-58
	.byte	-58
	.byte	-58
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	56
	.byte	108
	.byte	56
	.byte	16
	.byte	56
	.byte	108
	.byte	-58
	.byte	-2
	.byte	-58
	.byte	-58
	.byte	-58
	.byte	-58
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	12
	.byte	24
	.byte	0
	.byte	-2
	.byte	102
	.byte	98
	.byte	104
	.byte	120
	.byte	104
	.byte	98
	.byte	102
	.byte	-2
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-20
	.byte	54
	.byte	54
	.byte	126
	.byte	-40
	.byte	-40
	.byte	110
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	62
	.byte	108
	.byte	-52
	.byte	-52
	.byte	-2
	.byte	-52
	.byte	-52
	.byte	-52
	.byte	-52
	.byte	-50
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	16
	.byte	56
	.byte	108
	.byte	0
	.byte	124
	.byte	-58
	.byte	-58
	.byte	-58
	.byte	-58
	.byte	-58
	.byte	124
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-58
	.byte	0
	.byte	0
	.byte	124
	.byte	-58
	.byte	-58
	.byte	-58
	.byte	-58
	.byte	-58
	.byte	124
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	96
	.byte	48
	.byte	24
	.byte	0
	.byte	124
	.byte	-58
	.byte	-58
	.byte	-58
	.byte	-58
	.byte	-58
	.byte	124
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	48
	.byte	120
	.byte	-52
	.byte	0
	.byte	-52
	.byte	-52
	.byte	-52
	.byte	-52
	.byte	-52
	.byte	-52
	.byte	118
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	96
	.byte	48
	.byte	24
	.byte	0
	.byte	-52
	.byte	-52
	.byte	-52
	.byte	-52
	.byte	-52
	.byte	-52
	.byte	118
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-58
	.byte	0
	.byte	0
	.byte	-58
	.byte	-58
	.byte	-58
	.byte	-58
	.byte	-58
	.byte	-58
	.byte	126
	.byte	6
	.byte	12
	.byte	120
	.byte	0
	.byte	0
	.byte	-58
	.byte	0
	.byte	124
	.byte	-58
	.byte	-58
	.byte	-58
	.byte	-58
	.byte	-58
	.byte	-58
	.byte	-58
	.byte	124
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-58
	.byte	0
	.byte	-58
	.byte	-58
	.byte	-58
	.byte	-58
	.byte	-58
	.byte	-58
	.byte	-58
	.byte	-58
	.byte	124
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	24
	.byte	24
	.byte	124
	.byte	-58
	.byte	-64
	.byte	-64
	.byte	-64
	.byte	-58
	.byte	124
	.byte	24
	.byte	24
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	56
	.byte	108
	.byte	100
	.byte	96
	.byte	-16
	.byte	96
	.byte	96
	.byte	96
	.byte	96
	.byte	-26
	.byte	-4
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	102
	.byte	102
	.byte	60
	.byte	24
	.byte	126
	.byte	24
	.byte	126
	.byte	24
	.byte	24
	.byte	24
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-8
	.byte	-52
	.byte	-52
	.byte	-8
	.byte	-60
	.byte	-52
	.byte	-34
	.byte	-52
	.byte	-52
	.byte	-52
	.byte	-58
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	14
	.byte	27
	.byte	24
	.byte	24
	.byte	24
	.byte	126
	.byte	24
	.byte	24
	.byte	24
	.byte	-40
	.byte	112
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	24
	.byte	48
	.byte	96
	.byte	0
	.byte	120
	.byte	12
	.byte	124
	.byte	-52
	.byte	-52
	.byte	-52
	.byte	118
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	12
	.byte	24
	.byte	48
	.byte	0
	.byte	56
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	60
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	24
	.byte	48
	.byte	96
	.byte	0
	.byte	124
	.byte	-58
	.byte	-58
	.byte	-58
	.byte	-58
	.byte	-58
	.byte	124
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	24
	.byte	48
	.byte	96
	.byte	0
	.byte	-52
	.byte	-52
	.byte	-52
	.byte	-52
	.byte	-52
	.byte	-52
	.byte	118
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	118
	.byte	-36
	.byte	0
	.byte	-36
	.byte	102
	.byte	102
	.byte	102
	.byte	102
	.byte	102
	.byte	102
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	118
	.byte	-36
	.byte	0
	.byte	-58
	.byte	-26
	.byte	-10
	.byte	-2
	.byte	-34
	.byte	-50
	.byte	-58
	.byte	-58
	.byte	-58
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	60
	.byte	108
	.byte	108
	.byte	62
	.byte	0
	.byte	126
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	56
	.byte	108
	.byte	108
	.byte	56
	.byte	0
	.byte	124
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	48
	.byte	48
	.byte	0
	.byte	48
	.byte	48
	.byte	96
	.byte	-64
	.byte	-58
	.byte	-58
	.byte	124
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-2
	.byte	-64
	.byte	-64
	.byte	-64
	.byte	-64
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-2
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	96
	.byte	-32
	.byte	98
	.byte	102
	.byte	108
	.byte	24
	.byte	48
	.byte	96
	.byte	-36
	.byte	-122
	.byte	12
	.byte	24
	.byte	62
	.byte	0
	.byte	0
	.byte	0
	.byte	96
	.byte	-32
	.byte	98
	.byte	102
	.byte	108
	.byte	24
	.byte	48
	.byte	102
	.byte	-50
	.byte	-102
	.byte	63
	.byte	6
	.byte	6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	24
	.byte	24
	.byte	0
	.byte	24
	.byte	24
	.byte	24
	.byte	60
	.byte	60
	.byte	60
	.byte	24
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	54
	.byte	108
	.byte	-40
	.byte	108
	.byte	54
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-40
	.byte	108
	.byte	54
	.byte	108
	.byte	-40
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	17
	.byte	68
	.byte	17
	.byte	68
	.byte	17
	.byte	68
	.byte	17
	.byte	68
	.byte	17
	.byte	68
	.byte	17
	.byte	68
	.byte	17
	.byte	68
	.byte	17
	.byte	68
	.byte	85
	.byte	-86
	.byte	85
	.byte	-86
	.byte	85
	.byte	-86
	.byte	85
	.byte	-86
	.byte	85
	.byte	-86
	.byte	85
	.byte	-86
	.byte	85
	.byte	-86
	.byte	85
	.byte	-86
	.byte	-35
	.byte	119
	.byte	-35
	.byte	119
	.byte	-35
	.byte	119
	.byte	-35
	.byte	119
	.byte	-35
	.byte	119
	.byte	-35
	.byte	119
	.byte	-35
	.byte	119
	.byte	-35
	.byte	119
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	-8
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	-8
	.byte	24
	.byte	-8
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	-10
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-2
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-8
	.byte	24
	.byte	-8
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	-10
	.byte	6
	.byte	-10
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-2
	.byte	6
	.byte	-10
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	-10
	.byte	6
	.byte	-2
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	-2
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	-8
	.byte	24
	.byte	-8
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-8
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	31
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	-1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-1
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	31
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	-1
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	31
	.byte	24
	.byte	31
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	55
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	55
	.byte	48
	.byte	63
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	63
	.byte	48
	.byte	55
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	-9
	.byte	0
	.byte	-1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-1
	.byte	0
	.byte	-9
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	55
	.byte	48
	.byte	55
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-1
	.byte	0
	.byte	-1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	-9
	.byte	0
	.byte	-9
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	-1
	.byte	0
	.byte	-1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	-1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-1
	.byte	0
	.byte	-1
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-1
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	63
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	31
	.byte	24
	.byte	31
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	31
	.byte	24
	.byte	31
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	63
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	-1
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	-1
	.byte	24
	.byte	-1
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	-8
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	31
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-16
	.byte	-16
	.byte	-16
	.byte	-16
	.byte	-16
	.byte	-16
	.byte	-16
	.byte	-16
	.byte	-16
	.byte	-16
	.byte	-16
	.byte	-16
	.byte	-16
	.byte	-16
	.byte	-16
	.byte	-16
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	118
	.byte	-36
	.byte	-40
	.byte	-40
	.byte	-40
	.byte	-36
	.byte	118
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	120
	.byte	-52
	.byte	-52
	.byte	-52
	.byte	-40
	.byte	-52
	.byte	-58
	.byte	-58
	.byte	-58
	.byte	-52
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-2
	.byte	-58
	.byte	-58
	.byte	-64
	.byte	-64
	.byte	-64
	.byte	-64
	.byte	-64
	.byte	-64
	.byte	-64
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-2
	.byte	108
	.byte	108
	.byte	108
	.byte	108
	.byte	108
	.byte	108
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-2
	.byte	-58
	.byte	96
	.byte	48
	.byte	24
	.byte	24
	.byte	48
	.byte	96
	.byte	-58
	.byte	-2
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	126
	.byte	-40
	.byte	-40
	.byte	-40
	.byte	-40
	.byte	-40
	.byte	112
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	102
	.byte	102
	.byte	102
	.byte	102
	.byte	102
	.byte	102
	.byte	124
	.byte	96
	.byte	96
	.byte	-64
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	118
	.byte	-36
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	126
	.byte	24
	.byte	60
	.byte	102
	.byte	102
	.byte	102
	.byte	102
	.byte	60
	.byte	24
	.byte	126
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	56
	.byte	108
	.byte	-58
	.byte	-58
	.byte	-2
	.byte	-58
	.byte	-58
	.byte	-58
	.byte	108
	.byte	56
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	56
	.byte	108
	.byte	-58
	.byte	-58
	.byte	-58
	.byte	108
	.byte	108
	.byte	108
	.byte	108
	.byte	-18
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	30
	.byte	48
	.byte	24
	.byte	12
	.byte	62
	.byte	102
	.byte	102
	.byte	102
	.byte	102
	.byte	60
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	126
	.byte	-37
	.byte	-37
	.byte	-37
	.byte	126
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	3
	.byte	6
	.byte	126
	.byte	-37
	.byte	-37
	.byte	-13
	.byte	126
	.byte	96
	.byte	-64
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	28
	.byte	48
	.byte	96
	.byte	96
	.byte	124
	.byte	96
	.byte	96
	.byte	96
	.byte	48
	.byte	28
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	124
	.byte	-58
	.byte	-58
	.byte	-58
	.byte	-58
	.byte	-58
	.byte	-58
	.byte	-58
	.byte	-58
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-2
	.byte	0
	.byte	0
	.byte	-2
	.byte	0
	.byte	0
	.byte	-2
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	24
	.byte	24
	.byte	126
	.byte	24
	.byte	24
	.byte	0
	.byte	0
	.byte	126
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	48
	.byte	24
	.byte	12
	.byte	6
	.byte	12
	.byte	24
	.byte	48
	.byte	0
	.byte	126
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	12
	.byte	24
	.byte	48
	.byte	96
	.byte	48
	.byte	24
	.byte	12
	.byte	0
	.byte	126
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	14
	.byte	27
	.byte	27
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	-40
	.byte	-40
	.byte	-40
	.byte	112
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	24
	.byte	0
	.byte	126
	.byte	0
	.byte	24
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	118
	.byte	-36
	.byte	0
	.byte	118
	.byte	-36
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	56
	.byte	108
	.byte	108
	.byte	56
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	24
	.byte	24
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	24
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	15
	.byte	12
	.byte	12
	.byte	12
	.byte	12
	.byte	12
	.byte	-20
	.byte	108
	.byte	108
	.byte	60
	.byte	28
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	108
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	60
	.byte	102
	.byte	12
	.byte	24
	.byte	50
	.byte	126
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	126
	.byte	126
	.byte	126
	.byte	126
	.byte	126
	.byte	126
	.byte	126
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.rodata
	.align 32
	.type	color_table_rgb, @object
	.size	color_table_rgb, 64
color_table_rgb:
	.long	-16777216
	.long	-5636096
	.long	-16733696
	.long	-5592576
	.long	-16777046
	.long	-5635926
	.long	-16733526
	.long	-5592406
	.long	-16777216
	.long	-65536
	.long	-16711936
	.long	-256
	.long	-16776961
	.long	-65281
	.long	-16711681
	.long	-1
	.text
	.p2align 4,,15
.globl vga_hw_update
	.type	vga_hw_update, @function
vga_hw_update:
.LFB101:
	.file 1 "console.c"
	.loc 1 155 0
	.loc 1 156 0
	movq	active_console(%rip), %rax
	testq	%rax, %rax
	je	.L1
	movq	16(%rax), %rdx
	testq	%rdx, %rdx
	jne	.L4
.L1:
	rep ; ret
	.p2align 4,,7
.L4:
	.loc 1 157 0
	movq	40(%rax), %rdi
	movq	%rdx, %r11
	jmp	*%r11
.LFE101:
	.size	vga_hw_update, .-vga_hw_update
	.p2align 4,,15
.globl vga_hw_invalidate
	.type	vga_hw_invalidate, @function
vga_hw_invalidate:
.LFB102:
	.loc 1 161 0
	.loc 1 162 0
	movq	active_console(%rip), %rax
	movq	24(%rax), %rdx
	testq	%rdx, %rdx
	jne	.L7
	rep ; ret
	.p2align 4,,7
.L7:
	.loc 1 163 0
	movq	40(%rax), %rdi
	movq	%rdx, %r11
	jmp	*%r11
.LFE102:
	.size	vga_hw_invalidate, .-vga_hw_invalidate
	.p2align 4,,15
.globl vga_hw_screen_dump
	.type	vga_hw_screen_dump, @function
vga_hw_screen_dump:
.LFB103:
	.loc 1 167 0
	.loc 1 170 0
	movq	consoles(%rip), %rax
	.loc 1 167 0
	movq	%rdi, %rcx
	.loc 1 170 0
	movq	32(%rax), %rdx
	testq	%rdx, %rdx
	jne	.L10
	rep ; ret
	.p2align 4,,7
.L10:
	.loc 1 171 0
	movq	40(%rax), %rdi
	movq	%rcx, %rsi
	movq	%rdx, %r11
	jmp	*%r11
.LFE103:
	.size	vga_hw_screen_dump, .-vga_hw_screen_dump
	.p2align 4,,15
	.type	vga_fill_rect, @function
vga_fill_rect:
.LFB105:
	.loc 1 212 0
	pushq	%rbx
.LCFI0:
	.loc 1 217 0
	movl	8(%rdi), %r10d
	.loc 1 212 0
	movq	%rdi, %rbx
	.loc 1 216 0
	movl	12(%rdi), %r11d
	.loc 1 217 0
	imull	%r10d, %edx
	.loc 1 216 0
	addl	$7, %r11d
	sarl	$3, %r11d
	.loc 1 217 0
	movslq	%edx,%rdx
	addq	(%rdi), %rdx
	.loc 1 219 0
	xorl	%edi, %edi
	.loc 1 217 0
	imull	%r11d, %esi
	movslq	%esi,%rsi
	addq	%rsi, %rdx
	jmp	.L40
	.p2align 4,,7
.L42:
	.loc 1 221 0
	cmpl	$1, %r11d
	je	.L16
	.p2align 4,,7
.L15:
	.loc 1 241 0
	movslq	%r10d,%rax
	.loc 1 219 0
	incl	%edi
	.loc 1 241 0
	addq	%rax, %rdx
.L40:
	.loc 1 219 0
	cmpl	%r8d, %edi
	jge	.L34
	.loc 1 221 0
	cmpl	$2, %r11d
	.loc 1 220 0
	movq	%rdx, %rax
	.loc 1 221 0
	je	.L21
	jle	.L42
	cmpl	$4, %r11d
	.p2align 4,,5
	jne	.L15
	.loc 1 235 0
	xorl	%esi, %esi
	cmpl	%ecx, %esi
	.p2align 4,,5
	jge	.L15
	.p2align 4,,7
.L30:
	incl	%esi
	.loc 1 236 0
	movl	%r9d, (%rax)
	.loc 1 237 0
	addq	$4, %rax
	.loc 1 235 0
	cmpl	%ecx, %esi
	jl	.L30
	movl	8(%rbx), %r10d
	jmp	.L15
	.p2align 4,,7
.L21:
	.loc 1 229 0
	xorl	%esi, %esi
	cmpl	%ecx, %esi
	jge	.L15
	.p2align 4,,7
.L25:
	incl	%esi
	.loc 1 230 0
	movw	%r9w, (%rax)
	.loc 1 231 0
	addq	$2, %rax
	.loc 1 229 0
	cmpl	%ecx, %esi
	jl	.L25
	movl	8(%rbx), %r10d
	jmp	.L15
	.p2align 4,,7
.L34:
	.loc 1 219 0
	popq	%rbx
	.p2align 4,,1
	ret
.L16:
	.loc 1 223 0
	xorl	%esi, %esi
	cmpl	%ecx, %esi
	.p2align 4,,5
	jge	.L15
	.p2align 4,,7
.L20:
	incl	%esi
	.loc 1 224 0
	movb	%r9b, (%rax)
	.loc 1 225 0
	incq	%rax
	.loc 1 223 0
	cmpl	%ecx, %esi
	jl	.L20
	movl	8(%rbx), %r10d
	jmp	.L15
.LFE105:
	.size	vga_fill_rect, .-vga_fill_rect
	.p2align 4,,15
	.type	vga_putcharxy, @function
vga_putcharxy:
.LFB108:
	.loc 1 412 0
	pushq	%r13
.LCFI1:
	movl	%esi, %r13d
	pushq	%r12
.LCFI2:
	movl	%edx, %r12d
	pushq	%rbp
.LCFI3:
	movq	%r8, %rbp
	pushq	%rbx
.LCFI4:
	.loc 1 424 0
	movzbl	1(%r8), %r10d
	.loc 1 412 0
	movl	%ecx, %ebx
	.loc 1 424 0
	testb	$8, %r10b
	je	.L44
	.loc 1 425 0
	movzbl	(%r8), %ecx
	movl	%r10d, %eax
	andl	$1, %eax
	movzbl	%al, %eax 
	salq	$3, %rax
	movq	%rcx, %rdx
	.loc 1 426 0
	shrb	$4, %cl
	.loc 1 425 0
	andl	$15, %edx
	.loc 1 426 0
	movzbl	%cl, %ecx 
	.loc 1 425 0
	leaq	(%rax,%rdx), %rdx
	.loc 1 426 0
	addq	%rcx, %rax
	movl	color_table(,%rax,4), %r8d
	.loc 1 425 0
	movl	color_table(,%rdx,4), %r9d
.L45:
	.loc 1 433 0
	movl	8(%rdi), %esi
	.loc 1 432 0
	movl	12(%rdi), %r11d
	.loc 1 436 0
	sall	$4, %ebx
	.loc 1 433 0
	movl	%esi, %edx
	.loc 1 432 0
	leal	7(%r11), %eax
	.loc 1 433 0
	imull	%r12d, %edx
	.loc 1 432 0
	sarl	$3, %eax
	.loc 1 433 0
	sall	$4, %edx
	imull	%r13d, %eax
	movslq	%edx,%rdx
	addq	(%rdi), %rdx
	.loc 1 437 0
	movl	%r9d, %edi
	xorl	%r8d, %edi
	.loc 1 433 0
	sall	$3, %eax
	mov	%eax, %eax
	addq	%rax, %rdx
	.loc 1 436 0
	movslq	%ebx,%rax
	.loc 1 438 0
	cmpl	$16, %r11d
	.loc 1 436 0
	leaq	vgafont16(%rax), %rcx
	.loc 1 438 0
	jg	.L66
	.loc 1 453 0
	xorl	%ebx, %ebx
	.loc 1 438 0
	cmpl	$15, %r11d
	mov	%esi, %r8d
	jge	.L59
	cmpl	$8, %r11d
	je	.L47
	.p2align 4,,7
.L43:
	.loc 1 484 0
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	.p2align 4,,7
.L44:
	.loc 1 428 0
	movzbl	(%r8), %ecx
	movl	%r10d, %eax
	andl	$1, %eax
	movzbl	%al, %eax 
	salq	$3, %rax
	movq	%rcx, %rdx
	.loc 1 429 0
	shrb	$4, %cl
	.loc 1 428 0
	andl	$15, %edx
	.loc 1 429 0
	movzbl	%cl, %ecx 
	.loc 1 428 0
	leaq	(%rax,%rdx), %rdx
	.loc 1 429 0
	addq	%rcx, %rax
	movl	color_table(,%rax,4), %r9d
	.loc 1 428 0
	movl	color_table(,%rdx,4), %r8d
	jmp	.L45
	.p2align 4,,7
.L66:
	.loc 1 438 0
	cmpl	$32, %r11d
	jne	.L43
	.loc 1 467 0
	xorl	%ebx, %ebx
	mov	%esi, %r8d
	jmp	.L65
	.p2align 4,,7
.L74:
	movzbl	1(%rbp), %r10d
.L65:
	.loc 1 468 0
	movzbl	(%rcx), %esi
	incq	%rcx
	.loc 1 469 0
	andl	$2, %r10d
	je	.L64
	leal	-13(%rbx), %eax
	.loc 1 470 0
	cmpl	$1, %eax
	movl	$65535, %eax
	cmovbe	%eax, %esi
.L64:
	.loc 1 472 0
	movl	%esi, %eax
	shrl	$7, %eax
	negl	%eax
	andl	%edi, %eax
	xorl	%r9d, %eax
	movl	%eax, (%rdx)
	.loc 1 473 0
	movl	%esi, %eax
	shrl	$6, %eax
	andl	$1, %eax
	negl	%eax
	andl	%edi, %eax
	xorl	%r9d, %eax
	movl	%eax, 4(%rdx)
	.loc 1 474 0
	movl	%esi, %eax
	shrl	$5, %eax
	andl	$1, %eax
	negl	%eax
	andl	%edi, %eax
	xorl	%r9d, %eax
	movl	%eax, 8(%rdx)
	.loc 1 475 0
	movl	%esi, %eax
	shrl	$4, %eax
	andl	$1, %eax
	negl	%eax
	andl	%edi, %eax
	xorl	%r9d, %eax
	movl	%eax, 12(%rdx)
	.loc 1 476 0
	movl	%esi, %eax
	shrl	$3, %eax
	andl	$1, %eax
	negl	%eax
	andl	%edi, %eax
	xorl	%r9d, %eax
	movl	%eax, 16(%rdx)
	.loc 1 477 0
	movl	%esi, %eax
	shrl	$2, %eax
	andl	$1, %eax
	negl	%eax
	andl	%edi, %eax
	xorl	%r9d, %eax
	movl	%eax, 20(%rdx)
	.loc 1 478 0
	movl	%esi, %eax
	shrl	%eax
	andl	$1, %eax
	negl	%eax
	andl	%edi, %eax
	xorl	%r9d, %eax
	.loc 1 479 0
	andl	$1, %esi
	.loc 1 467 0
	incl	%ebx
	.loc 1 479 0
	negl	%esi
	.loc 1 478 0
	movl	%eax, 24(%rdx)
	.loc 1 479 0
	andl	%edi, %esi
	xorl	%r9d, %esi
	movl	%esi, 28(%rdx)
	.loc 1 480 0
	addq	%r8, %rdx
	.loc 1 467 0
	cmpl	$15, %ebx
	jle	.L74
	.loc 1 484 0
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	.p2align 4,,7
.L73:
	movzbl	1(%rbp), %r10d
.L59:
	.loc 1 454 0
	movzbl	(%rcx), %esi
	incq	%rcx
	.loc 1 455 0
	andl	$2, %r10d
	je	.L58
	leal	-13(%rbx), %eax
	.loc 1 457 0
	cmpl	$1, %eax
	movl	$65535, %eax
	cmovbe	%eax, %esi
.L58:
	.loc 1 459 0
	movl	%esi, %eax
	.loc 1 453 0
	incl	%ebx
	.loc 1 459 0
	shrl	$6, %eax
	mov	%eax, %eax
	movl	dmask4(,%rax,4), %eax
	andl	%edi, %eax
	xorl	%r9d, %eax
	movl	%eax, (%rdx)
	.loc 1 460 0
	movl	%esi, %eax
	shrl	$4, %eax
	andl	$3, %eax
	movl	dmask4(,%rax,4), %eax
	andl	%edi, %eax
	xorl	%r9d, %eax
	movl	%eax, 4(%rdx)
	.loc 1 461 0
	movl	%esi, %eax
	shrl	$2, %eax
	andl	$3, %eax
	movl	dmask4(,%rax,4), %eax
	andl	%edi, %eax
	xorl	%r9d, %eax
	movl	%eax, 8(%rdx)
	.loc 1 462 0
	movq	%rsi, %rax
	andl	$3, %eax
	movl	dmask4(,%rax,4), %eax
	andl	%edi, %eax
	xorl	%r9d, %eax
	movl	%eax, 12(%rdx)
	.loc 1 463 0
	addq	%r8, %rdx
	.loc 1 453 0
	cmpl	$15, %ebx
	jle	.L73
	.loc 1 484 0
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
.L47:
	.loc 1 440 0
	xorl	%ebx, %ebx
	mov	%esi, %r8d
	jmp	.L52
	.p2align 4,,7
.L72:
	movzbl	1(%rbp), %r10d
.L52:
	.loc 1 441 0
	movzbl	(%rcx), %esi
	incq	%rcx
	.loc 1 442 0
	andl	$2, %r10d
	je	.L51
	leal	-13(%rbx), %eax
	.loc 1 444 0
	cmpl	$1, %eax
	movl	$65535, %eax
	cmovbe	%eax, %esi
.L51:
	.loc 1 446 0
	movl	%esi, %eax
	.loc 1 440 0
	incl	%ebx
	.loc 1 446 0
	shrl	$4, %eax
	mov	%eax, %eax
	movl	dmask16(,%rax,4), %eax
	andl	%edi, %eax
	xorl	%r9d, %eax
	movl	%eax, (%rdx)
	.loc 1 447 0
	movq	%rsi, %rax
	andl	$15, %eax
	movl	dmask16(,%rax,4), %eax
	andl	%edi, %eax
	xorl	%r9d, %eax
	movl	%eax, 4(%rdx)
	.loc 1 448 0
	addq	%r8, %rdx
	.loc 1 440 0
	cmpl	$15, %ebx
	jle	.L72
	jmp	.L43
.LFE108:
	.size	vga_putcharxy, .-vga_putcharxy
	.p2align 4,,15
	.type	text_console_resize, @function
text_console_resize:
.LFB109:
	.loc 1 487 0
	pushq	%r13
.LCFI5:
	pushq	%r12
.LCFI6:
	pushq	%rbp
.LCFI7:
	pushq	%rbx
.LCFI8:
	movq	%rdi, %rbx
	subq	$8, %rsp
.LCFI9:
	.loc 1 492 0
	movl	48(%rdi), %eax
	.loc 1 491 0
	movl	56(%rdi), %r12d
	.loc 1 492 0
	cmpl	$-1, %eax
	leal	7(%rax), %edx
	movl	%eax, %edi
	.loc 1 493 0
	movl	52(%rbx), %eax
	.loc 1 492 0
	cmovle	%edx, %edi
	sarl	$3, %edi
	.loc 1 493 0
	leal	15(%rax), %edx
	cmpl	$-1, %eax
	.loc 1 497 0
	movl	%edi, %ebp
	.loc 1 492 0
	movl	%edi, 56(%rbx)
	.loc 1 493 0
	cmovle	%edx, %eax
	sarl	$4, %eax
	.loc 1 497 0
	cmpl	%r12d, %edi
	cmovge	%r12d, %ebp
	.loc 1 493 0
	movl	%eax, 60(%rbx)
	.loc 1 499 0
	imull	64(%rbx), %edi
	movslq	%edi,%rdi
	leaq	(%rdi,%rdi,2), %rdi
	call	qemu_malloc
	movq	%rax, %r13
	.loc 1 500 0
	movl	64(%rbx), %eax
	xorl	%r9d, %r9d
	testl	%eax, %eax
	jle	.L93
	movl	56(%rbx), %edi
	xorl	%r10d, %r10d
	.p2align 4,,7
.L91:
	.loc 1 501 0
	movl	%edi, %eax
	imull	%r9d, %eax
	.loc 1 502 0
	testl	%ebp, %ebp
	.loc 1 501 0
	cltq
	leaq	(%rax,%rax,2), %rax
	leaq	(%rax,%r13), %rcx
	.loc 1 502 0
	jle	.L82
	.loc 1 503 0
	movslq	%r10d,%rax
	.loc 1 504 0
	xorl	%esi, %esi
	.loc 1 503 0
	leaq	(%rax,%rax,2), %r8
	addq	104(%rbx), %r8
	.loc 1 504 0
	cmpl	%ebp, %esi
	jge	.L82
	.p2align 4,,7
.L86:
	.loc 1 505 0
	movq	%r8, %rax
	.loc 1 504 0
	incl	%esi
	.loc 1 505 0
	addq	$3, %r8
	movzwl	(%rax), %edx
	movw	%dx, (%rcx)
	movzbl	2(%rax), %eax
	movb	%al, 2(%rcx)
	addq	$3, %rcx
	.loc 1 504 0
	cmpl	%ebp, %esi
	jl	.L86
	movl	56(%rbx), %edi
.L82:
	.loc 1 508 0
	movl	%ebp, %esi
	jmp	.L97
	.p2align 4,,7
.L98:
	.loc 1 509 0
	movb	$32, (%rcx)
	.loc 1 510 0
	movzwl	96(%rbx), %eax
	.loc 1 508 0
	incl	%esi
	.loc 1 510 0
	movw	%ax, 1(%rcx)
	.loc 1 508 0
	movl	56(%rbx), %edi
	.loc 1 511 0
	addq	$3, %rcx
.L97:
	.loc 1 508 0
	cmpl	%esi, %edi
	jg	.L98
	.loc 1 500 0
	incl	%r9d
	addl	%r12d, %r10d
	cmpl	%r9d, 64(%rbx)
	jg	.L91
.L93:
	.loc 1 514 0
	movq	104(%rbx), %rdi
	call	qemu_free
	.loc 1 515 0
	movq	%r13, 104(%rbx)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
.LFE109:
	.size	text_console_resize, .-text_console_resize
	.p2align 4,,15
	.type	update_xy, @function
update_xy:
.LFB110:
	.loc 1 519 0
	movq	%rbx, -24(%rsp)
.LCFI10:
	movq	%r12, -8(%rsp)
.LCFI11:
	movq	%rdi, %rbx
	movq	%rbp, -16(%rsp)
.LCFI12:
	subq	$24, %rsp
.LCFI13:
	.loc 1 523 0
	cmpq	active_console(%rip), %rdi
	.loc 1 519 0
	movl	%esi, %r12d
	movl	%edx, %ecx
	.loc 1 523 0
	je	.L104
.L99:
	.loc 1 536 0
	movq	(%rsp), %rbx
	movq	8(%rsp), %rbp
	movq	16(%rsp), %r12
	addq	$24, %rsp
	ret
	.p2align 4,,7
.L104:
	.loc 1 524 0
	addl	92(%rdi), %ecx
	movl	64(%rdi), %esi
	movl	%ecx, %eax
	cltd
	idivl	%esi
	.loc 1 525 0
	movl	%edx, %ebp
	subl	88(%rdi), %ebp
	.loc 1 527 0
	leal	(%rbp,%rsi), %eax
	cmpl	$-1, %ebp
	cmovle	%eax, %ebp
	.loc 1 528 0
	cmpl	%ebp, 60(%rdi)
	jle	.L99
	.loc 1 529 0
	movl	56(%rdi), %r8d
	.loc 1 530 0
	movl	%r12d, %esi
	.loc 1 529 0
	imull	%edx, %r8d
	.loc 1 530 0
	movl	%ebp, %edx
.LBB2:
	.file 2 "console.h"
	.loc 2 88 0
	sall	$4, %ebp
.LBE2:
	.loc 1 529 0
	addl	%r12d, %r8d
	movslq	%r8d,%r8
	leaq	(%r8,%r8,2), %r8
	addq	104(%rdi), %r8
	.loc 1 530 0
	movq	8(%rdi), %rdi
	movzbl	(%r8), %ecx
	incq	%r8
	call	vga_putcharxy
.LBB3:
	.loc 2 88 0
	movq	8(%rbx), %rax
	leal	0(,%r12,8), %esi
.LBB4:
	.loc 2 89 0
	movl	%ebp, %edx
.LBE4:
.LBE3:
	.loc 1 536 0
	movq	(%rsp), %rbx
	movq	8(%rsp), %rbp
.LBB5:
.LBB6:
	.loc 2 89 0
	movl	$16, %r8d
.LBE6:
.LBE5:
	.loc 1 536 0
	movq	16(%rsp), %r12
.LBB7:
.LBB8:
	.loc 2 89 0
	movl	$8, %ecx
	movq	48(%rax), %r11
	movq	%rax, %rdi
.LBE8:
.LBE7:
	.loc 1 536 0
	addq	$24, %rsp
.LBB9:
.LBB10:
	.loc 2 89 0
	jmp	*%r11
.LBE10:
.LBE9:
.LFE110:
	.size	update_xy, .-update_xy
	.p2align 4,,15
	.type	console_show_cursor, @function
console_show_cursor:
.LFB111:
	.loc 1 539 0
	movq	%rbx, -24(%rsp)
.LCFI14:
	movq	%rbp, -16(%rsp)
.LCFI15:
	movq	%rdi, %rbx
	movq	%r12, -8(%rsp)
.LCFI16:
	subq	$40, %rsp
.LCFI17:
	.loc 1 543 0
	cmpq	active_console(%rip), %rdi
	je	.L114
.L105:
	.loc 1 565 0
	movq	16(%rsp), %rbx
	movq	24(%rsp), %rbp
	movq	32(%rsp), %r12
	addq	$40, %rsp
	ret
	.p2align 4,,7
.L114:
.LBB11:
	.loc 1 545 0
	movl	56(%rdi), %ecx
	.loc 1 544 0
	movl	72(%rdi), %r12d
	.loc 1 548 0
	movl	64(%rdi), %r8d
	.loc 1 546 0
	leal	-1(%rcx), %eax
	cmpl	%r12d, %ecx
	cmovle	%eax, %r12d
	.loc 1 548 0
	movl	76(%rdi), %eax
	addl	92(%rdi), %eax
	cltd
	idivl	%r8d
	.loc 1 549 0
	movl	%edx, %ebp
	subl	88(%rbx), %ebp
	.loc 1 548 0
	movl	%edx, %edi
	.loc 1 551 0
	leal	(%rbp,%r8), %edx
	cmpl	$-1, %ebp
	cmovle	%edx, %ebp
	.loc 1 552 0
	cmpl	%ebp, 60(%rbx)
	jle	.L105
	.loc 1 553 0
	imull	%edi, %ecx
	leal	(%rcx,%r12), %eax
	cltq
	leaq	(%rax,%rax,2), %r8
	addq	104(%rbx), %r8
	.loc 1 554 0
	testl	%esi, %esi
	jne	.L115
	.loc 1 559 0
	movq	8(%rbx), %rdi
	movzbl	(%r8), %ecx
	incq	%r8
.L113:
	movl	%ebp, %edx
	movl	%r12d, %esi
.LBB12:
	.loc 2 88 0
	sall	$4, %ebp
.LBE12:
	.loc 1 559 0
	call	vga_putcharxy
.LBB13:
	.loc 2 88 0
	movq	8(%rbx), %rax
	leal	0(,%r12,8), %esi
.LBB14:
	.loc 2 89 0
	movl	$16, %r8d
	movl	$8, %ecx
	movl	%ebp, %edx
	movq	%rax, %rdi
	call	*48(%rax)
	jmp	.L105
.L115:
.LBE14:
.LBE13:
.LBB15:
	.loc 1 555 0
	movzwl	96(%rbx), %edx
	.loc 1 557 0
	movq	8(%rbx), %rdi
	.loc 1 555 0
	movw	%dx, 14(%rsp)
	.loc 1 556 0
	movzbl	15(%rsp), %eax
	andb	$247, %dh
	shrb	$3, %al
	xorl	$1, %eax
	sall	$11, %eax
	andw	$2048, %ax
	orl	%eax, %edx
	movw	%dx, 14(%rsp)
	.loc 1 557 0
	movzbl	(%r8), %ecx
	leaq	14(%rsp), %r8
	jmp	.L113
.LBE15:
.LBE11:
.LFE111:
	.size	console_show_cursor, .-console_show_cursor
	.p2align 4,,15
	.type	console_refresh, @function
console_refresh:
.LFB112:
	.loc 1 568 0
	movq	%r12, -24(%rsp)
.LCFI18:
	movq	%rbx, -40(%rsp)
.LCFI19:
	movq	%rdi, %r12
	movq	%rbp, -32(%rsp)
.LCFI20:
	movq	%r13, -16(%rsp)
.LCFI21:
	movq	%r14, -8(%rsp)
.LCFI22:
	subq	$40, %rsp
.LCFI23:
	.loc 1 572 0
	cmpq	active_console(%rip), %rdi
	je	.L132
	.loc 1 590 0
	movq	(%rsp), %rbx
	movq	8(%rsp), %rbp
	movq	16(%rsp), %r12
	movq	24(%rsp), %r13
	movq	32(%rsp), %r14
	addq	$40, %rsp
	ret
.L132:
	.loc 1 575 0
	movq	8(%rdi), %rdi
	movl	color_table(%rip), %r9d
	xorl	%edx, %edx
	xorl	%esi, %esi
	.loc 1 578 0
	xorl	%r14d, %r14d
	.loc 1 575 0
	movl	20(%rdi), %ecx
	movl	24(%rdi), %r8d
	call	vga_fill_rect
	.loc 1 578 0
	movl	60(%r12), %ecx
	.loc 1 577 0
	movl	88(%r12), %r13d
	.loc 1 578 0
	cmpl	$0, %ecx
	jle	.L129
	movl	56(%r12), %edx
	.p2align 4,,7
.L126:
	.loc 1 579 0
	movl	%edx, %eax
	.loc 1 580 0
	xorl	%ebp, %ebp
	.loc 1 579 0
	imull	%r13d, %eax
	cltq
	leaq	(%rax,%rax,2), %rbx
	addq	104(%r12), %rbx
	.loc 1 580 0
	cmpl	$0, %edx
	jle	.L131
	.p2align 4,,7
.L124:
	.loc 1 581 0
	movzbl	(%rbx), %ecx
	movq	8(%r12), %rdi
	leaq	1(%rbx), %r8
	movl	%r14d, %edx
	movl	%ebp, %esi
	.loc 1 580 0
	incl	%ebp
	.loc 1 583 0
	addq	$3, %rbx
	.loc 1 581 0
	call	vga_putcharxy
	.loc 1 580 0
	movl	56(%r12), %edx
	cmpl	%ebp, %edx
	jg	.L124
	movl	60(%r12), %ecx
.L131:
	.loc 1 585 0
	incl	%r13d
	.loc 1 586 0
	cmpl	64(%r12), %r13d
	movl	$0, %eax
	cmove	%eax, %r13d
	.loc 1 578 0
	incl	%r14d
	cmpl	%r14d, %ecx
	jg	.L126
.L129:
.LBB16:
	.loc 2 88 0
	movq	8(%r12), %rax
.LBB17:
	.loc 2 89 0
	xorl	%esi, %esi
	xorl	%edx, %edx
	movq	%rax, %rdi
.LBE17:
	.loc 2 88 0
	movl	20(%rax), %ecx
.LBB18:
	.loc 2 89 0
	movl	24(%rax), %r8d
	call	*48(%rax)
.LBE18:
.LBE16:
	.loc 1 589 0
	movq	%r12, %rdi
	.loc 1 590 0
	movq	(%rsp), %rbx
	movq	8(%rsp), %rbp
	movq	16(%rsp), %r12
	movq	24(%rsp), %r13
	.loc 1 589 0
	movl	$1, %esi
	.loc 1 590 0
	movq	32(%rsp), %r14
	addq	$40, %rsp
	.loc 1 589 0
	jmp	console_show_cursor
.LFE112:
	.size	console_refresh, .-console_refresh
	.p2align 4,,15
	.type	console_scroll, @function
console_scroll:
.LFB113:
	.loc 1 593 0
	.loc 1 593 0
	movl	%edi, %ecx
	.loc 1 597 0
	movq	active_console(%rip), %rdi
	.loc 1 598 0
	testq	%rdi, %rdi
	je	.L133
	movl	(%rdi), %edx
	testl	%edx, %edx
	je	.L133
	.loc 1 601 0
	testl	%ecx, %ecx
	jle	.L136
	.loc 1 602 0
	xorl	%esi, %esi
	cmpl	%ecx, %esi
	jl	.L156
.L143:
	.loc 1 623 0
	.p2align 4,,5
	jmp	console_refresh
	.p2align 4,,7
.L133:
	rep ; ret
	.p2align 4,,7
.L156:
	movl	92(%rdi), %r8d
	.p2align 4,,7
.L142:
	.loc 1 603 0
	movl	88(%rdi), %eax
	cmpl	%r8d, %eax
	je	.L143
	.loc 1 605 0
	leal	1(%rax), %edx
	.loc 1 606 0
	xorl	%eax, %eax
	cmpl	64(%rdi), %edx
	cmovne	%edx, %eax
	.loc 1 602 0
	incl	%esi
	cmpl	%ecx, %esi
	.loc 1 606 0
	movl	%eax, 88(%rdi)
	.loc 1 602 0
	jl	.L142
	.loc 1 623 0
	jmp	console_refresh
.L136:
	.loc 1 611 0
	movl	64(%rdi), %r8d
	.loc 1 610 0
	movl	68(%rdi), %esi
	.loc 1 609 0
	negl	%ecx
	.loc 1 613 0
	movl	92(%rdi), %edx
	.loc 1 611 0
	movl	%r8d, %eax
	subl	60(%rdi), %eax
	.loc 1 612 0
	cmpl	%esi, %eax
	cmovl	%eax, %esi
	.loc 1 613 0
	subl	%esi, %edx
	.loc 1 615 0
	leal	(%rdx,%r8), %eax
	cmpl	$-1, %edx
	cmovle	%eax, %edx
	.loc 1 616 0
	xorl	%esi, %esi
	cmpl	%ecx, %esi
	jge	.L143
	decl	%r8d
	.p2align 4,,7
.L151:
	.loc 1 617 0
	movl	88(%rdi), %eax
	cmpl	%edx, %eax
	je	.L143
	.loc 1 620 0
	decl	%eax
	cmovs	%r8d, %eax
	.loc 1 616 0
	incl	%esi
	cmpl	%ecx, %esi
	.loc 1 620 0
	movl	%eax, 88(%rdi)
	.loc 1 616 0
	jl	.L151
	.loc 1 623 0
	jmp	console_refresh
.LFE113:
	.size	console_scroll, .-console_scroll
	.p2align 4,,15
	.type	console_put_lf, @function
console_put_lf:
.LFB114:
	.loc 1 627 0
	movq	%rbx, -48(%rsp)
.LCFI24:
	movq	%rbp, -40(%rsp)
.LCFI25:
	movq	%rdi, %rbx
	movq	%r12, -32(%rsp)
.LCFI26:
	movq	%r13, -24(%rsp)
.LCFI27:
	movq	%r14, -16(%rsp)
.LCFI28:
	movq	%r15, -8(%rsp)
.LCFI29:
	subq	$56, %rsp
.LCFI30:
	.loc 1 631 0
	movl	76(%rdi), %eax
	.loc 1 632 0
	movl	60(%rdi), %r8d
	.loc 1 631 0
	incl	%eax
	.loc 1 632 0
	cmpl	%r8d, %eax
	jl	.L186
	.loc 1 633 0
	leal	-1(%r8), %eax
	movl	%eax, 76(%rdi)
	.loc 1 635 0
	movl	92(%rdi), %eax
	cmpl	%eax, 88(%rdi)
	je	.L190
	movl	64(%rdi), %ecx
.L159:
	.loc 1 639 0
	leal	1(%rax), %edx
	.loc 1 640 0
	xorl	%eax, %eax
	cmpl	%ecx, %edx
	cmovne	%edx, %eax
	movl	%eax, 92(%rbx)
	.loc 1 641 0
	movl	68(%rbx), %eax
	cmpl	%ecx, %eax
	jge	.L162
	.loc 1 642 0
	incl	%eax
	movl	%eax, 68(%rbx)
.L162:
	.loc 1 643 0
	addl	92(%rbx), %r8d
	.loc 1 645 0
	xorl	%esi, %esi
	.loc 1 643 0
	leal	-1(%r8), %eax
	cltd
	idivl	%ecx
	.loc 1 644 0
	movl	56(%rbx), %ecx
	imull	%ecx, %edx
	movslq	%edx,%rdx
	leaq	(%rdx,%rdx,2), %rdx
	addq	104(%rbx), %rdx
	.loc 1 645 0
	cmpl	$0, %ecx
	jmp	.L189
	.p2align 4,,7
.L191:
	.loc 1 646 0
	movb	$32, (%rdx)
	.loc 1 647 0
	movzwl	96(%rbx), %eax
	.loc 1 645 0
	incl	%esi
	.loc 1 647 0
	movw	%ax, 1(%rdx)
	.loc 1 645 0
	movl	56(%rbx), %ecx
	.loc 1 648 0
	addq	$3, %rdx
	.loc 1 645 0
	cmpl	%esi, %ecx
.L189:
	jg	.L191
	.loc 1 650 0
	cmpq	active_console(%rip), %rbx
	jne	.L157
	movl	92(%rbx), %eax
	cmpl	%eax, 88(%rbx)
	jne	.L157
.LBB19:
	.loc 1 247 0
	movl	60(%rbx), %r8d
	movq	8(%rbx), %r14
	leal	0(,%rcx,8), %esi
.LBB20:
	.loc 1 259 0
	xorl	%r13d, %r13d
.LBE20:
	.loc 1 247 0
	movl	%r8d, %eax
	sall	$4, %eax
	subl	$16, %eax
	movl	%eax, 4(%rsp)
.LBB21:
	.loc 1 252 0
	movl	12(%r14), %eax
	.loc 1 255 0
	movq	(%r14), %rdx
	.loc 1 252 0
	addl	$7, %eax
	sarl	$3, %eax
	.loc 1 257 0
	movq	%rdx, %rbp
	.loc 1 253 0
	imull	%eax, %esi
	.loc 1 255 0
	movl	8(%r14), %eax
	sall	$4, %eax
	.loc 1 259 0
	cmpl	4(%rsp), %r13d
	.loc 1 255 0
	cltq
	leaq	(%rdx,%rax), %r12
	.loc 1 259 0
	jl	.L192
.L183:
.LBE21:
.LBE19:
	.loc 1 654 0
	movzbl	96(%rbx), %eax
	sall	$4, %r8d
	movq	%r14, %rdi
	leal	-16(%r8), %edx
	sall	$3, %ecx
	movl	$16, %r8d
	xorl	%esi, %esi
	shrb	$4, %al
	movzbl	%al, %eax 
	movl	color_table(,%rax,4), %r9d
	call	vga_fill_rect
.LBB22:
	.loc 2 88 0
	movq	8(%rbx), %rax
	movl	56(%rbx), %ecx
.LBB23:
	.loc 2 89 0
	xorl	%edx, %edx
.LBE23:
	.loc 2 88 0
	movl	60(%rbx), %r8d
.LBE22:
	.loc 1 661 0
	movq	16(%rsp), %rbp
.LBB24:
.LBB25:
	.loc 2 89 0
	xorl	%esi, %esi
.LBE25:
.LBE24:
	.loc 1 661 0
	movq	8(%rsp), %rbx
	movq	24(%rsp), %r12
.LBB26:
.LBB27:
	.loc 2 89 0
	movq	48(%rax), %r11
.LBE27:
.LBE26:
	.loc 1 661 0
	movq	32(%rsp), %r13
.LBB28:
	.loc 2 88 0
	sall	$3, %ecx
.LBE28:
	.loc 1 661 0
	movq	40(%rsp), %r14
	movq	48(%rsp), %r15
.LBB29:
.LBB30:
	.loc 2 89 0
	sall	$4, %r8d
	movq	%rax, %rdi
.LBE30:
.LBE29:
	.loc 1 661 0
	addq	$56, %rsp
.LBB31:
.LBB32:
	.loc 2 89 0
	jmp	*%r11
	.p2align 4,,7
.L186:
	movl	%eax, 76(%rdi)
.L157:
.LBE32:
.LBE31:
	.loc 1 661 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	movq	24(%rsp), %r12
	movq	32(%rsp), %r13
	movq	40(%rsp), %r14
	movq	48(%rsp), %r15
	addq	$56, %rsp
	ret
.L190:
	.loc 1 636 0
	movl	64(%rdi), %ecx
	leal	1(%rax), %edx
	cmpl	%ecx, %edx
	je	.L193
	movl	%edx, 88(%rdi)
	jmp	.L159
.L193:
	.loc 1 637 0
	movl	$0, 88(%rdi)
	jmp	.L159
.L192:
	movslq	%esi,%r15
.L172:
.LBB33:
.LBB34:
	.loc 1 260 0
	movq	%r12, %rsi
	movq	%rbp, %rdi
	movq	%r15, %rdx
	call	memmove
	.loc 1 261 0
	movslq	8(%r14),%rax
	.loc 1 259 0
	incl	%r13d
	.loc 1 261 0
	addq	%rax, %rbp
	.loc 1 262 0
	addq	%rax, %r12
	.loc 1 259 0
	cmpl	4(%rsp), %r13d
	jl	.L172
	movl	60(%rbx), %r8d
	movl	56(%rbx), %ecx
	movq	8(%rbx), %r14
	jmp	.L183
.LBE34:
.LBE33:
.LFE114:
	.size	console_put_lf, .-console_put_lf
	.p2align 4,,15
	.type	console_clear_xy, @function
console_clear_xy:
.LFB116:
	.loc 1 761 0
	.loc 1 762 0
	movl	92(%rdi), %eax
	.loc 1 761 0
	movl	%edx, %r8d
	.loc 1 762 0
	addl	%edx, %eax
	cltd
	idivl	64(%rdi)
	.loc 1 763 0
	movl	56(%rdi), %eax
	imull	%edx, %eax
	.loc 1 767 0
	movl	%r8d, %edx
	.loc 1 763 0
	addl	%esi, %eax
	cltq
	leaq	(%rax,%rax,2), %rcx
	addq	104(%rdi), %rcx
	.loc 1 764 0
	movb	$32, (%rcx)
	.loc 1 765 0
	movzwl	96(%rdi), %eax
	movw	%ax, 1(%rcx)
	.loc 1 767 0
	jmp	update_xy
.LFE116:
	.size	console_clear_xy, .-console_clear_xy
	.p2align 4,,15
.globl console_select
	.type	console_select, @function
console_select:
.LFB118:
	.loc 1 993 0
	.loc 1 996 0
	cmpl	$11, %edi
	.loc 1 993 0
	pushq	%rbx
.LCFI31:
	.loc 1 996 0
	ja	.L195
	.loc 1 998 0
	mov	%edi, %eax
	movq	consoles(,%rax,8), %rbx
	.loc 1 999 0
	testq	%rbx, %rbx
	je	.L195
	.loc 1 1000 0
	movq	%rbx, active_console(%rip)
	.loc 1 1001 0
	movl	(%rbx), %edx
	testl	%edx, %edx
	je	.L198
	.loc 1 1002 0
	movq	8(%rbx), %rcx
	movl	48(%rbx), %esi
	movl	20(%rcx), %edi
	cmpl	%edi, %esi
	je	.L205
.L200:
	.loc 1 1004 0
	cmpl	$2, %edx
	je	.L206
	.loc 1 1007 0
	movl	%edi, 48(%rbx)
	.loc 1 1008 0
	movl	24(%rcx), %eax
	.loc 1 1009 0
	movq	%rbx, %rdi
	.loc 1 1008 0
	movl	%eax, 52(%rbx)
	.loc 1 1009 0
	call	text_console_resize
.L199:
	.loc 1 1012 0
	movq	%rbx, %rdi
	.loc 1 1017 0
	popq	%rbx
	.loc 1 1012 0
	jmp	console_refresh
	.p2align 4,,7
.L195:
	.loc 1 1017 0
	popq	%rbx
	ret
.L205:
	.loc 1 1002 0
	movl	24(%rcx), %eax
	cmpl	%eax, 52(%rbx)
	jne	.L200
	.p2align 4,,7
	jmp	.L199
	.p2align 4,,7
.L198:
	.loc 1 1017 0
	popq	%rbx
	.loc 1 1014 0
	.p2align 4,,6
	jmp	vga_hw_invalidate
.L206:
.LBB35:
	.loc 2 93 0
	movl	52(%rbx), %edx
.LBB36:
	.loc 2 94 0
	movq	%rcx, %rdi
	.p2align 4,,3
	call	*56(%rcx)
	.p2align 4,,3
	jmp	.L199
.LBE36:
.LBE35:
.LFE118:
	.size	console_select, .-console_select
	.p2align 4,,15
	.type	console_puts, @function
console_puts:
.LFB119:
	.loc 1 1020 0
	pushq	%r15
.LCFI32:
	movq	%rsi, %r15
	.loc 1 1024 0
	xorl	%esi, %esi
	.loc 1 1020 0
	pushq	%r14
.LCFI33:
	pushq	%r13
.LCFI34:
	movl	%edx, %r13d
	pushq	%r12
.LCFI35:
	.loc 1 1025 0
	xorl	%r12d, %r12d
	.loc 1 1020 0
	pushq	%rbp
.LCFI36:
	pushq	%rbx
.LCFI37:
	subq	$8, %rsp
.LCFI38:
	.loc 1 1021 0
	movq	80(%rdi), %rbp
	.loc 1 1024 0
	movq	%rbp, %rdi
	call	console_show_cursor
	.loc 1 1025 0
	cmpl	%r13d, %r12d
	jge	.L354
	.p2align 4,,7
.L399:
.LBB37:
	.loc 1 771 0
	movslq	%r12d,%rax
	movzbl	(%rax,%r15), %ebx
.LBB38:
	.loc 1 776 0
	movl	112(%rbp), %eax
	cmpl	$1, %eax
	je	.L230
	jb	.L212
	cmpl	$2, %eax
	je	.L237
.L210:
.LBE38:
.LBE37:
	.loc 1 1025 0
	incl	%r12d
.L401:
	cmpl	%r13d, %r12d
	.p2align 4,,5
	jl	.L399
.L354:
	.loc 1 1028 0
	movq	%rbp, %rdi
	movl	$1, %esi
	call	console_show_cursor
	.loc 1 1030 0
	addq	$8, %rsp
	movl	%r13d, %eax
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.p2align 4,,7
.L212:
.LBB39:
.LBB40:
	.loc 1 778 0
	leal	-7(%rbx), %eax
	cmpl	$20, %eax
	ja	.L227
	mov	%eax, %eax
	jmp	*.L229(,%rax,8)
	.section	.rodata
	.align 8
	.align 4
.L229:
	.quad	.L210
	.quad	.L216
	.quad	.L218
	.quad	.L395
	.quad	.L227
	.quad	.L227
	.quad	.L393
	.quad	.L210
	.quad	.L210
	.quad	.L227
	.quad	.L227
	.quad	.L227
	.quad	.L227
	.quad	.L227
	.quad	.L227
	.quad	.L227
	.quad	.L227
	.quad	.L227
	.quad	.L227
	.quad	.L227
	.quad	.L226
	.text
	.p2align 4,,7
.L227:
	.loc 1 810 0
	movl	72(%rbp), %ecx
	movl	56(%rbp), %esi
	cmpl	%esi, %ecx
	jge	.L400
.L228:
	.loc 1 815 0
	movl	76(%rbp), %eax
	addl	92(%rbp), %eax
	.loc 1 819 0
	movq	%rbp, %rdi
.LBE40:
.LBE39:
	.loc 1 1025 0
	incl	%r12d
.LBB41:
.LBB42:
	.loc 1 815 0
	cltd
	idivl	64(%rbp)
	.loc 1 816 0
	imull	%edx, %esi
	leal	(%rsi,%rcx), %eax
	cltq
	leaq	(%rax,%rax,2), %rax
	addq	104(%rbp), %rax
	.loc 1 817 0
	movb	%bl, (%rax)
	.loc 1 818 0
	movzwl	98(%rbp), %edx
	movw	%dx, 1(%rax)
	.loc 1 819 0
	movl	76(%rbp), %edx
	movl	72(%rbp), %esi
	call	update_xy
	.loc 1 820 0
	incl	72(%rbp)
	jmp	.L401
	.p2align 4,,7
.L237:
	.loc 1 835 0
	leal	-48(%rbx), %eax
	cmpl	$9, %eax
	ja	.L238
	.loc 1 836 0
	movl	128(%rbp), %eax
	cmpl	$2, %eax
	jg	.L210
	.loc 1 837 0
	movslq	%eax,%rdx
	movl	$10, %edi
.LBE42:
.LBE41:
	.loc 1 1025 0
	incl	%r12d
.LBB43:
.LBB44:
	.loc 1 837 0
	movl	116(%rbp,%rdx,4), %eax
	imull	%edi, %eax
	leal	-48(%rax,%rbx), %eax
	movl	%eax, 116(%rbp,%rdx,4)
	jmp	.L401
	.p2align 4,,7
.L230:
	.loc 1 825 0
	cmpl	$91, %ebx
	je	.L402
.LBE44:
.LBE43:
	.loc 1 1025 0
	incl	%r12d
.LBB45:
.LBB46:
	.loc 1 831 0
	movl	$0, 112(%rbp)
	jmp	.L401
.L402:
	.loc 1 826 0
	xorl	%edx, %edx
.L235:
	.loc 1 827 0
	movslq	%edx,%rax
	.loc 1 826 0
	incl	%edx
	cmpl	$2, %edx
	.loc 1 827 0
	movl	$0, 116(%rbp,%rax,4)
	.loc 1 826 0
	jle	.L235
.LBE46:
.LBE45:
	.loc 1 1025 0
	incl	%r12d
.LBB47:
.LBB48:
	.loc 1 828 0
	movl	$0, 128(%rbp)
	.loc 1 829 0
	movl	$2, 112(%rbp)
	jmp	.L401
.L400:
	.loc 1 812 0
	movl	$0, 72(%rbp)
	.loc 1 813 0
	movq	%rbp, %rdi
	call	console_put_lf
	movl	72(%rbp), %ecx
	movl	56(%rbp), %esi
	jmp	.L228
.L238:
	.loc 1 841 0
	incl	128(%rbp)
	.loc 1 842 0
	cmpl	$59, %ebx
	je	.L210
	.loc 1 849 0
	leal	-65(%rbx), %eax
	.loc 1 848 0
	movl	$0, 112(%rbp)
	.loc 1 849 0
	cmpl	$52, %eax
	ja	.L210
	mov	%eax, %eax
	jmp	*.L350(,%rax,8)
	.section	.rodata
	.align 8
	.align 4
.L350:
	.quad	.L243
	.quad	.L246
	.quad	.L249
	.quad	.L252
	.quad	.L210
	.quad	.L210
	.quad	.L255
	.quad	.L258
	.quad	.L210
	.quad	.L261
	.quad	.L375
	.quad	.L210
	.quad	.L210
	.quad	.L210
	.quad	.L210
	.quad	.L210
	.quad	.L210
	.quad	.L210
	.quad	.L210
	.quad	.L210
	.quad	.L210
	.quad	.L210
	.quad	.L210
	.quad	.L210
	.quad	.L210
	.quad	.L210
	.quad	.L210
	.quad	.L210
	.quad	.L210
	.quad	.L210
	.quad	.L210
	.quad	.L210
	.quad	.L210
	.quad	.L210
	.quad	.L210
	.quad	.L210
	.quad	.L210
	.quad	.L258
	.quad	.L210
	.quad	.L210
	.quad	.L210
	.quad	.L210
	.quad	.L210
	.quad	.L210
	.quad	.L311
	.quad	.L210
	.quad	.L210
	.quad	.L210
	.quad	.L210
	.quad	.L210
	.quad	.L347
	.quad	.L210
	.quad	.L348
	.text
.L218:
	.loc 1 790 0
	movl	72(%rbp), %eax
	leal	7(%rax), %edx
	cmpl	$-1, %eax
	cmovle	%edx, %eax
	andl	$-8, %eax
	addl	$8, %eax
	cmpl	56(%rbp), %eax
	jle	.L381
	.loc 1 791 0
	movl	$0, 72(%rbp)
.L395:
	.loc 1 792 0
	movq	%rbp, %rdi
.LBE48:
.LBE47:
	.loc 1 1025 0
	incl	%r12d
.LBB49:
.LBB50:
	.loc 1 792 0
	call	console_put_lf
	jmp	.L401
.L255:
	.loc 1 893 0
	movl	116(%rbp), %eax
	decl	%eax
.L396:
	jns	.L381
.L393:
.LBE50:
.LBE49:
	.loc 1 1025 0
	incl	%r12d
.LBB51:
.LBB52:
	.loc 1 894 0
	movl	$0, 72(%rbp)
	.p2align 4,,4
	jmp	.L401
.L226:
.LBE52:
.LBE51:
	.loc 1 1025 0
	incl	%r12d
.LBB53:
.LBB54:
	.loc 1 807 0
	movl	$1, 112(%rbp)
	jmp	.L401
.L216:
	.loc 1 786 0
	movl	72(%rbp), %eax
	testl	%eax, %eax
	jle	.L210
	.loc 1 787 0
	decl	%eax
.L381:
	movl	%eax, 72(%rbp)
.L405:
.LBE54:
.LBE53:
	.loc 1 1025 0
	incl	%r12d
	jmp	.L401
.L273:
.LBB55:
.LBB56:
	.loc 1 924 0
	movl	76(%rbp), %eax
	xorl	%r14d, %r14d
	cmpl	$0, %eax
	jl	.L300
	movl	56(%rbp), %esi
.L282:
	.loc 1 925 0
	xorl	%ebx, %ebx
	cmpl	$0, %esi
	jg	.L281
	jmp	.L278
	.p2align 4,,7
.L376:
	movl	76(%rbp), %eax
.L281:
	.loc 1 926 0
	cmpl	%r14d, %eax
	jne	.L280
	cmpl	%ebx, 72(%rbp)
	.p2align 4,,5
	jl	.L278
.L280:
	.loc 1 929 0
	movl	%ebx, %esi
	movl	%r14d, %edx
	movq	%rbp, %rdi
	call	console_clear_xy
	.loc 1 925 0
	movl	56(%rbp), %esi
	incl	%ebx
	cmpl	%ebx, %esi
	jg	.L376
	movl	76(%rbp), %eax
.L278:
	.loc 1 924 0
	incl	%r14d
	cmpl	%r14d, %eax
	jge	.L282
.L375:
	movl	116(%rbp), %edx
.L293:
	.loc 1 943 0
	cmpl	$1, %edx
	je	.L300
	jle	.L403
	cmpl	$2, %edx
	.p2align 4,,5
	jne	.L210
.L305:
	.loc 1 958 0
	movl	56(%rbp), %ecx
	xorl	%ebx, %ebx
	testl	%ecx, %ecx
	.p2align 4,,3
	jle	.L210
.L309:
	.loc 1 959 0
	movl	76(%rbp), %edx
	movl	%ebx, %esi
	movq	%rbp, %rdi
	.loc 1 958 0
	incl	%ebx
	.loc 1 959 0
	call	console_clear_xy
	.loc 1 958 0
	cmpl	%ebx, 56(%rbp)
	jg	.L309
.LBE56:
.LBE55:
	.loc 1 1025 0
	incl	%r12d
	jmp	.L401
.L347:
.LBB57:
.LBB58:
	.loc 1 973 0
	movl	72(%rbp), %eax
.LBE58:
.LBE57:
	.loc 1 1025 0
	incl	%r12d
.LBB59:
.LBB60:
	.loc 1 973 0
	movl	%eax, 80(%rbp)
	.loc 1 974 0
	movl	76(%rbp), %eax
	movl	%eax, 84(%rbp)
	jmp	.L401
.L311:
.LBB61:
.LBB62:
	.loc 1 671 0
	movl	128(%rbp), %ecx
	xorl	%edx, %edx
	cmpl	$0, %ecx
.L391:
	jle	.L210
	.loc 1 672 0
	movslq	%edx,%rax
	movl	116(%rbp,%rax,4), %eax
	cmpl	$47, %eax
	ja	.L314
	mov	%eax, %eax
	jmp	*.L343(,%rax,8)
	.section	.rodata
	.align 8
	.align 4
.L343:
	.quad	.L316
	.quad	.L317
	.quad	.L314
	.quad	.L314
	.quad	.L318
	.quad	.L319
	.quad	.L314
	.quad	.L320
	.quad	.L321
	.quad	.L314
	.quad	.L314
	.quad	.L314
	.quad	.L314
	.quad	.L314
	.quad	.L314
	.quad	.L314
	.quad	.L314
	.quad	.L314
	.quad	.L314
	.quad	.L314
	.quad	.L314
	.quad	.L314
	.quad	.L322
	.quad	.L314
	.quad	.L323
	.quad	.L324
	.quad	.L314
	.quad	.L325
	.quad	.L326
	.quad	.L314
	.quad	.L327
	.quad	.L328
	.quad	.L329
	.quad	.L330
	.quad	.L331
	.quad	.L332
	.quad	.L333
	.quad	.L334
	.quad	.L314
	.quad	.L314
	.quad	.L335
	.quad	.L336
	.quad	.L337
	.quad	.L338
	.quad	.L339
	.quad	.L340
	.quad	.L341
	.quad	.L342
	.text
.L348:
.LBE62:
.LBE61:
	.loc 1 978 0
	movl	80(%rbp), %eax
	movl	%eax, 72(%rbp)
	.loc 1 979 0
	movl	84(%rbp), %eax
.L383:
	movl	%eax, 76(%rbp)
.L406:
.LBE60:
.LBE59:
	.loc 1 1025 0
	incl	%r12d
	jmp	.L401
.L258:
.LBB63:
.LBB64:
	.loc 1 902 0
	movl	120(%rbp), %edx
	xorl	%eax, %eax
	decl	%edx
	cmovns	%edx, %eax
	movl	%eax, 72(%rbp)
	.loc 1 905 0
	movl	116(%rbp), %eax
	decl	%eax
.L397:
	jns	.L383
.LBE64:
.LBE63:
	.loc 1 1025 0
	incl	%r12d
.LBB65:
.LBB66:
	.loc 1 906 0
	movl	$0, 76(%rbp)
	jmp	.L401
.L261:
	.loc 1 910 0
	movl	116(%rbp), %edx
	cmpl	$1, %edx
	je	.L273
	.p2align 4,,3
	jle	.L404
	cmpl	$2, %edx
	.p2align 4,,5
	jne	.L293
	.loc 1 935 0
	movl	60(%rbp), %eax
	xorl	%r14d, %r14d
	cmpl	$0, %eax
	.p2align 4,,3
	jl	.L305
	movl	56(%rbp), %esi
.L291:
	.loc 1 936 0
	xorl	%ebx, %ebx
	cmpl	$0, %esi
	jle	.L366
.L290:
	.loc 1 937 0
	movl	%ebx, %esi
	movl	%r14d, %edx
	movq	%rbp, %rdi
	call	console_clear_xy
	.loc 1 936 0
	movl	56(%rbp), %esi
	incl	%ebx
	cmpl	%ebx, %esi
	jg	.L290
	movl	60(%rbp), %eax
.L366:
	.loc 1 935 0
	incl	%r14d
	cmpl	%r14d, %eax
	jge	.L291
	jmp	.L375
.L252:
	.loc 1 882 0
	movl	116(%rbp), %edx
	testl	%edx, %edx
	jne	.L253
	.loc 1 883 0
	movl	$1, 116(%rbp)
	movb	$1, %dl
.L253:
	.loc 1 885 0
	movl	72(%rbp), %eax
	.loc 1 886 0
	subl	%edx, %eax
	jmp	.L396
.L249:
	.loc 1 872 0
	movl	116(%rbp), %edx
	testl	%edx, %edx
	jne	.L250
	.loc 1 873 0
	movl	$1, 116(%rbp)
	movb	$1, %dl
.L250:
	.loc 1 875 0
	movl	72(%rbp), %eax
	.loc 1 876 0
	movl	56(%rbp), %esi
	.loc 1 875 0
	addl	%edx, %eax
	.loc 1 876 0
	cmpl	%esi, %eax
	jl	.L381
	.loc 1 877 0
	leal	-1(%rsi), %eax
	movl	%eax, 72(%rbp)
	jmp	.L405
.L246:
	.loc 1 862 0
	movl	116(%rbp), %edx
	testl	%edx, %edx
	jne	.L247
	.loc 1 863 0
	movl	$1, 116(%rbp)
	movb	$1, %dl
.L247:
	.loc 1 865 0
	addl	76(%rbp), %edx
	.loc 1 866 0
	movl	60(%rbp), %eax
	cmpl	%eax, %edx
	jl	.L378
	.loc 1 867 0
	decl	%eax
	movl	%eax, 76(%rbp)
	jmp	.L406
.L243:
	.loc 1 852 0
	movl	116(%rbp), %edx
	testl	%edx, %edx
	jne	.L244
	.loc 1 853 0
	movl	$1, 116(%rbp)
	movb	$1, %dl
.L244:
	.loc 1 855 0
	movl	76(%rbp), %eax
	.loc 1 856 0
	subl	%edx, %eax
	jmp	.L397
.L328:
.LBB67:
.LBB68:
	.loc 1 711 0
	movzbl	98(%rbp), %eax
	andl	$-16, %eax
	orl	$1, %eax
	.loc 1 754 0
	movb	%al, 98(%rbp)
.L314:
	.loc 1 671 0
	incl	%edx
	cmpl	%edx, %ecx
	jmp	.L391
.L316:
	.loc 1 674 0
	movzwl	96(%rbp), %eax
	.loc 1 671 0
	incl	%edx
	cmpl	%edx, %ecx
	.loc 1 674 0
	movw	%ax, 98(%rbp)
	jmp	.L391
.L318:
	.loc 1 671 0
	incl	%edx
	.loc 1 680 0
	orb	$2, 99(%rbp)
	.loc 1 671 0
	cmpl	%edx, %ecx
	jmp	.L391
.L317:
	incl	%edx
	.loc 1 677 0
	orb	$1, 99(%rbp)
	.loc 1 671 0
	cmpl	%edx, %ecx
	jmp	.L391
.L322:
	incl	%edx
	.loc 1 692 0
	andb	$-2, 99(%rbp)
	.loc 1 671 0
	cmpl	%edx, %ecx
	jmp	.L391
.L321:
	incl	%edx
	.loc 1 689 0
	orb	$16, 99(%rbp)
	.loc 1 671 0
	cmpl	%edx, %ecx
	jmp	.L391
.L320:
	incl	%edx
	.loc 1 686 0
	orb	$8, 99(%rbp)
	.loc 1 671 0
	cmpl	%edx, %ecx
	jmp	.L391
.L319:
	incl	%edx
	.loc 1 683 0
	orb	$4, 99(%rbp)
	.loc 1 671 0
	cmpl	%edx, %ecx
	jmp	.L391
.L330:
	.loc 1 717 0
	movzbl	98(%rbp), %eax
	andl	$-16, %eax
	orl	$3, %eax
	.loc 1 754 0
	movb	%al, 98(%rbp)
	jmp	.L314
.L329:
	.loc 1 714 0
	movzbl	98(%rbp), %eax
	andl	$-16, %eax
	orl	$2, %eax
	.loc 1 754 0
	movb	%al, 98(%rbp)
	jmp	.L314
.L327:
	.loc 1 671 0
	incl	%edx
	.loc 1 708 0
	andb	$-16, 98(%rbp)
	.loc 1 671 0
	cmpl	%edx, %ecx
	jmp	.L391
.L326:
	incl	%edx
	.loc 1 704 0
	andb	$-17, 99(%rbp)
	.loc 1 671 0
	cmpl	%edx, %ecx
	jmp	.L391
.L325:
	incl	%edx
	.loc 1 701 0
	andb	$-9, 99(%rbp)
	.loc 1 671 0
	cmpl	%edx, %ecx
	jmp	.L391
.L324:
	incl	%edx
	.loc 1 698 0
	andb	$-5, 99(%rbp)
	.loc 1 671 0
	cmpl	%edx, %ecx
	jmp	.L391
.L323:
	incl	%edx
	.loc 1 695 0
	andb	$-3, 99(%rbp)
	.loc 1 671 0
	cmpl	%edx, %ecx
	jmp	.L391
.L342:
	.loc 1 754 0
	movzbl	98(%rbp), %eax
	andl	$15, %eax
	orl	$112, %eax
	movb	%al, 98(%rbp)
	jmp	.L314
.L341:
	.loc 1 751 0
	movzbl	98(%rbp), %eax
	andl	$15, %eax
	orl	$96, %eax
	.loc 1 754 0
	movb	%al, 98(%rbp)
	jmp	.L314
.L340:
	.loc 1 748 0
	movzbl	98(%rbp), %eax
	andl	$15, %eax
	orl	$80, %eax
	.loc 1 754 0
	movb	%al, 98(%rbp)
	jmp	.L314
.L339:
	.loc 1 745 0
	movzbl	98(%rbp), %eax
	andl	$15, %eax
	orl	$64, %eax
	.loc 1 754 0
	movb	%al, 98(%rbp)
	jmp	.L314
.L338:
	.loc 1 742 0
	movzbl	98(%rbp), %eax
	andl	$15, %eax
	orl	$48, %eax
	.loc 1 754 0
	movb	%al, 98(%rbp)
	jmp	.L314
.L337:
	.loc 1 739 0
	movzbl	98(%rbp), %eax
	andl	$15, %eax
	orl	$32, %eax
	.loc 1 754 0
	movb	%al, 98(%rbp)
	jmp	.L314
.L336:
	.loc 1 736 0
	movzbl	98(%rbp), %eax
	andl	$15, %eax
	orl	$16, %eax
	.loc 1 754 0
	movb	%al, 98(%rbp)
	jmp	.L314
.L335:
	.loc 1 671 0
	incl	%edx
	.loc 1 733 0
	andb	$15, 98(%rbp)
	.loc 1 671 0
	cmpl	%edx, %ecx
	jmp	.L391
.L334:
	.loc 1 729 0
	movzbl	98(%rbp), %eax
	andl	$-16, %eax
	orl	$7, %eax
	.loc 1 754 0
	movb	%al, 98(%rbp)
	jmp	.L314
.L333:
	.loc 1 726 0
	movzbl	98(%rbp), %eax
	andl	$-16, %eax
	orl	$6, %eax
	.loc 1 754 0
	movb	%al, 98(%rbp)
	jmp	.L314
.L332:
	.loc 1 723 0
	movzbl	98(%rbp), %eax
	andl	$-16, %eax
	orl	$5, %eax
	.loc 1 754 0
	movb	%al, 98(%rbp)
	jmp	.L314
.L331:
	.loc 1 720 0
	movzbl	98(%rbp), %eax
	andl	$-16, %eax
	orl	$4, %eax
	.loc 1 754 0
	movb	%al, 98(%rbp)
	jmp	.L314
.L300:
.LBE68:
.LBE67:
	.loc 1 952 0
	movl	72(%rbp), %esi
	xorl	%ebx, %ebx
	testl	%esi, %esi
	js	.L210
.L304:
	.loc 1 953 0
	movl	76(%rbp), %edx
	movl	%ebx, %esi
	movq	%rbp, %rdi
	.loc 1 952 0
	incl	%ebx
	.loc 1 953 0
	call	console_clear_xy
	.loc 1 952 0
	cmpl	%ebx, 72(%rbp)
	jge	.L304
.LBE66:
.LBE65:
	.loc 1 1025 0
	incl	%r12d
	jmp	.L401
.L378:
	incl	%r12d
	movl	%edx, 76(%rbp)
	.p2align 4,,3
	jmp	.L401
.L403:
.LBB69:
.LBB70:
	.loc 1 943 0
	testl	%edx, %edx
	.p2align 4,,3
	jne	.L210
.L295:
	.loc 1 946 0
	movl	72(%rbp), %ebx
	cmpl	%ebx, 56(%rbp)
	jle	.L210
.L407:
	.loc 1 947 0
	movl	76(%rbp), %edx
	movl	%ebx, %esi
	movq	%rbp, %rdi
	.loc 1 946 0
	incl	%ebx
	.loc 1 947 0
	call	console_clear_xy
	.loc 1 946 0
	cmpl	%ebx, 56(%rbp)
	jg	.L407
.LBE70:
.LBE69:
	.loc 1 1025 0
	incl	%r12d
	jmp	.L401
.L404:
.LBB71:
.LBB72:
	.loc 1 910 0
	testl	%edx, %edx
	.p2align 4,,5
	jne	.L293
	.loc 1 913 0
	movl	76(%rbp), %r14d
	movl	60(%rbp), %eax
	cmpl	%r14d, %eax
	jle	.L295
	movl	56(%rbp), %esi
.L272:
	.loc 1 914 0
	xorl	%ebx, %ebx
	cmpl	$0, %esi
	jg	.L271
	jmp	.L360
	.p2align 4,,7
.L409:
	.loc 1 915 0
	cmpl	%ebx, 72(%rbp)
	.p2align 4,,3
	jle	.L270
.L269:
	.loc 1 914 0
	incl	%ebx
	cmpl	%ebx, %esi
	.p2align 4,,6
	jle	.L408
.L271:
	.loc 1 915 0
	cmpl	%r14d, 76(%rbp)
	.p2align 4,,4
	je	.L409
.L270:
	.loc 1 918 0
	movl	%ebx, %esi
	movl	%r14d, %edx
	movq	%rbp, %rdi
	call	console_clear_xy
	movl	56(%rbp), %esi
	jmp	.L269
.L408:
	movl	60(%rbp), %eax
.L360:
	.loc 1 913 0
	incl	%r14d
	cmpl	%r14d, %eax
	jg	.L272
	.p2align 4,,3
	jmp	.L375
.LBE72:
.LBE71:
.LFE119:
	.size	console_puts, .-console_puts
	.p2align 4,,15
	.type	console_send_event, @function
console_send_event:
.LFB120:
	.loc 1 1033 0
	subq	$8, %rsp
.LCFI39:
	.loc 1 1037 0
	decl	%esi
	.loc 1 1034 0
	movq	80(%rdi), %rcx
	.loc 1 1037 0
	je	.L420
.L410:
	.loc 1 1045 0
	addq	$8, %rsp
	ret
	.p2align 4,,7
.L420:
	.loc 1 1038 0
	movl	nb_consoles(%rip), %edx
	xorl	%edi, %edi
	cmpl	%edx, %edi
	jge	.L410
	.p2align 4,,7
.L422:
	.loc 1 1039 0
	movslq	%edi,%rax
	cmpq	%rcx, consoles(,%rax,8)
	je	.L421
	.loc 1 1038 0
	incl	%edi
	cmpl	%edx, %edi
	jl	.L422
	.loc 1 1045 0
	addq	$8, %rsp
	ret
.L421:
	.loc 1 1040 0
	.p2align 4,,7
	call	console_select
	.loc 1 1045 0
	addq	$8, %rsp
	.p2align 4,,5
	ret
.LFE120:
	.size	console_send_event, .-console_send_event
	.p2align 4,,15
	.type	kbd_send_chars, @function
kbd_send_chars:
.LFB121:
	.loc 1 1048 0
	pushq	%r15
.LCFI40:
	pushq	%r14
.LCFI41:
	pushq	%r13
.LCFI42:
	pushq	%r12
.LCFI43:
	pushq	%rbp
.LCFI44:
	pushq	%rbx
.LCFI45:
	subq	$40, %rsp
.LCFI46:
	.loc 1 1048 0
	movq	%rdi, 8(%rsp)
	.loc 1 1053 0
	movq	136(%rdi), %rdi
	call	qemu_chr_can_read
	.loc 1 1054 0
	movq	8(%rsp), %rdx
	.loc 1 1053 0
	movl	%eax, %r15d
	.loc 1 1054 0
	movl	156(%rdx), %eax
	.loc 1 1055 0
	cmpl	%r15d, %eax
	cmovl	%eax, %r15d
	.loc 1 1056 0
	testl	%r15d, %r15d
	jle	.L425
	.loc 1 1058 0
	cmpl	$17, %r15d
	movl	$16, %eax
.LBB73:
	.loc 1 88 0
	movq	%rdx, %rbp
.LBE73:
	.loc 1 1058 0
	cmovae	%eax, %r15d
.LBB74:
	.loc 1 88 0
	addq	$144, %rbp
	leaq	16(%rsp), %r14
.LBB75:
	.loc 1 91 0
	movl	12(%rbp), %eax
	.loc 1 92 0
	cmpl	%r15d, %eax
	movl	%eax, %edx
	cmovge	%r15d, %edx
	.loc 1 103 0
	testl	%edx, %edx
	.loc 1 92 0
	movl	%edx, 4(%rsp)
	.loc 1 93 0
	movl	%edx, %r13d
	.loc 1 103 0
	jle	.L436
	movl	8(%rbp), %ecx
	.p2align 4,,7
.L432:
	.loc 1 95 0
	movslq	20(%rbp),%rsi
	movl	%ecx, %ebx
	.loc 1 98 0
	movq	%r14, %rdi
	.loc 1 95 0
	subl	%esi, %ebx
	.loc 1 97 0
	cmpl	%r13d, %ebx
	cmovg	%r13d, %ebx
	.loc 1 98 0
	addq	(%rbp), %rsi
	movslq	%ebx,%r12
	movq	%r12, %rdx
	call	memcpy
	.loc 1 99 0
	movl	20(%rbp), %edx
	.loc 1 100 0
	movl	8(%rbp), %ecx
	.loc 1 101 0
	xorl	%eax, %eax
	.loc 1 99 0
	addl	%ebx, %edx
	.loc 1 101 0
	cmpl	%ecx, %edx
	cmovl	%edx, %eax
	.loc 1 103 0
	subl	%ebx, %r13d
	.loc 1 102 0
	addq	%r12, %r14
	.loc 1 103 0
	testl	%r13d, %r13d
	.loc 1 101 0
	movl	%eax, 20(%rbp)
	.loc 1 103 0
	jg	.L432
	movl	12(%rbp), %eax
.L436:
	.loc 1 105 0
	subl	4(%rsp), %eax
.LBE75:
.LBE74:
	.loc 1 1060 0
	leaq	16(%rsp), %rsi
	movl	%r15d, %edx
.LBB76:
.LBB77:
	.loc 1 105 0
	movl	%eax, 12(%rbp)
.LBE77:
.LBE76:
	.loc 1 1060 0
	movq	8(%rsp), %rax
	movq	136(%rax), %rdi
	call	qemu_chr_read
	movq	8(%rsp), %rdx
	movl	156(%rdx), %eax
.L425:
	.loc 1 1064 0
	testl	%eax, %eax
	jle	.L423
	.loc 1 1065 0
	movq	rt_clock(%rip), %rdi
	call	qemu_get_clock
	leaq	1(%rax), %rsi
	movq	8(%rsp), %rax
	movq	184(%rax), %rdi
	call	qemu_mod_timer
.L423:
	.loc 1 1067 0
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.LFE121:
	.size	kbd_send_chars, .-kbd_send_chars
	.p2align 4,,15
.globl kbd_put_keysym
	.type	kbd_put_keysym, @function
kbd_put_keysym:
.LFB122:
	.loc 1 1071 0
	movq	%r15, -8(%rsp)
.LCFI47:
	movq	%rbx, -48(%rsp)
.LCFI48:
	movq	%rbp, -40(%rsp)
.LCFI49:
	movq	%r12, -32(%rsp)
.LCFI50:
	movq	%r13, -24(%rsp)
.LCFI51:
	movq	%r14, -16(%rsp)
.LCFI52:
	subq	$88, %rsp
.LCFI53:
	.loc 1 1076 0
	movq	active_console(%rip), %r15
	.loc 1 1077 0
	testq	%r15, %r15
	je	.L438
	movl	(%r15), %r9d
	testl	%r9d, %r9d
	je	.L438
	.loc 1 1080 0
	cmpl	$58369, %edi
	je	.L443
	.p2align 4,,5
	jle	.L466
	cmpl	$58374, %edi
	.p2align 4,,7
	je	.L444
	cmpl	$58375, %edi
	.p2align 4,,7
	je	.L445
.L446:
	.loc 1 1096 0
	leal	-57600(%rdi), %ecx
	.loc 1 1095 0
	leaq	16(%rsp), %rsi
	.loc 1 1096 0
	cmpl	$31, %ecx
	ja	.L447
	.loc 1 1100 0
	cmpl	$9, %ecx
	.loc 1 1097 0
	movb	$27, 16(%rsp)
	.loc 1 1098 0
	movb	$91, 17(%rsp)
	leaq	2(%rsi), %rdi
	movslq	%ecx,%r8
	.loc 1 1100 0
	jle	.L448
	.loc 1 1101 0
	imulq	$1717986919, %r8, %rax
	shrq	$32, %rax
	movl	%eax, %edi
	movl	%ecx, %eax
	cltd
	sarl	$2, %edi
	subl	%edx, %edi
	leal	48(%rdi), %eax
	leaq	3(%rsi), %rdi
	movb	%al, 18(%rsp)
.L448:
	.loc 1 1102 0
	imulq	$1717986919, %r8, %rax
	shrq	$32, %rax
	movl	%eax, %r8d
	movl	%ecx, %eax
	cltd
	sarl	$2, %r8d
	subl	%edx, %r8d
	movl	%r8d, %eax
	movl	$10, %r8d
	imull	%r8d, %eax
	subl	%eax, %ecx
	leal	48(%rcx), %eax
	movb	%al, (%rdi)
	incq	%rdi
	.loc 1 1103 0
	movb	$126, (%rdi)
	incq	%rdi
.L449:
	.loc 1 1111 0
	movq	136(%r15), %rax
	cmpq	$0, 40(%rax)
	je	.L438
.LBB78:
	.loc 1 65 0
	leaq	144(%r15), %r12
	movl	%edi, %r8d
	movq	%rsi, %r14
	subl	%esi, %r8d
.LBB79:
	.loc 1 68 0
	movl	8(%r12), %ecx
	movl	12(%r12), %eax
	movl	%ecx, %ebp
	subl	%eax, %ebp
	.loc 1 70 0
	cmpl	%ebp, %r8d
	cmovg	%ebp, %r8d
	.loc 1 81 0
	testl	%r8d, %r8d
	.loc 1 71 0
	movl	%r8d, %r13d
	.loc 1 81 0
	jle	.L462
	.p2align 4,,7
.L458:
	.loc 1 73 0
	movslq	16(%r12),%rdi
	movl	%ecx, %ebp
	.loc 1 76 0
	movq	%r14, %rsi
	.loc 1 73 0
	subl	%edi, %ebp
	.loc 1 75 0
	cmpl	%r13d, %ebp
	cmovg	%r13d, %ebp
	.loc 1 76 0
	addq	(%r12), %rdi
	movl	%r8d, 8(%rsp)
	movslq	%ebp,%rbx
	movq	%rbx, %rdx
	call	memcpy
	.loc 1 77 0
	movl	16(%r12), %edx
	.loc 1 78 0
	movl	8(%r12), %ecx
	.loc 1 79 0
	xorl	%eax, %eax
	.loc 1 77 0
	addl	%ebp, %edx
	.loc 1 79 0
	cmpl	%ecx, %edx
	cmovl	%edx, %eax
	.loc 1 81 0
	subl	%ebp, %r13d
	.loc 1 80 0
	addq	%rbx, %r14
	.loc 1 81 0
	testl	%r13d, %r13d
	.loc 1 79 0
	movl	%eax, 16(%r12)
	.loc 1 81 0
	movl	8(%rsp), %r8d
	jg	.L458
	movl	12(%r12), %eax
.L462:
	.loc 1 83 0
	addl	%r8d, %eax
.LBE79:
.LBE78:
	.loc 1 1113 0
	movq	%r15, %rdi
.LBB80:
.LBB81:
	.loc 1 83 0
	movl	%eax, 12(%r12)
.LBE81:
.LBE80:
	.loc 1 1113 0
	call	kbd_send_chars
	.p2align 4,,7
.L438:
	.loc 1 1117 0
	movq	40(%rsp), %rbx
	movq	48(%rsp), %rbp
	movq	56(%rsp), %r12
	movq	64(%rsp), %r13
	movq	72(%rsp), %r14
	movq	80(%rsp), %r15
	addq	$88, %rsp
	ret
	.p2align 4,,7
.L466:
	.loc 1 1080 0
	cmpl	$58368, %edi
	jne	.L446
	.loc 1 1082 0
	movl	$-1, %edi
	.loc 1 1091 0
	call	console_scroll
	.p2align 4,,4
	jmp	.L438
	.p2align 4,,7
.L447:
	.loc 1 1104 0
	leal	-57632(%rdi), %eax
	cmpl	$95, %eax
	.p2align 4,,2
	ja	.L450
	.loc 1 1107 0
	movb	%dil, 18(%rsp)
	leaq	3(%rsi), %rdi
	.loc 1 1105 0
	movb	$27, 16(%rsp)
	.loc 1 1106 0
	movb	$91, 17(%rsp)
	jmp	.L449
.L450:
	.loc 1 1109 0
	movb	%dil, 16(%rsp)
	leaq	1(%rsi), %rdi
	jmp	.L449
.L443:
	.loc 1 1085 0
	movl	$1, %edi
	.loc 1 1091 0
	call	console_scroll
	jmp	.L438
.L444:
	.loc 1 1088 0
	movl	$-10, %edi
	.loc 1 1091 0
	call	console_scroll
	.p2align 4,,6
	jmp	.L438
.L445:
	movl	$10, %edi
	call	console_scroll
	.p2align 4,,6
	jmp	.L438
.LFE122:
	.size	kbd_put_keysym, .-kbd_put_keysym
	.p2align 4,,15
	.type	new_console, @function
new_console:
.LFB123:
	.loc 1 1120 0
	pushq	%rbp
.LCFI54:
	.loc 1 1125 0
	xorl	%eax, %eax
	.loc 1 1120 0
	movq	%rdi, %rbp
	pushq	%rbx
.LCFI55:
	movl	%esi, %ebx
	subq	$8, %rsp
.LCFI56:
	.loc 1 1124 0
	cmpl	$11, nb_consoles(%rip)
	jg	.L467
	.loc 1 1126 0
	movl	$192, %edi
	call	qemu_mallocz
	movq	%rax, %rsi
	.loc 1 1128 0
	xorl	%eax, %eax
	.loc 1 1127 0
	testq	%rsi, %rsi
	je	.L467
	.loc 1 1130 0
	movq	active_console(%rip), %rax
	testq	%rax, %rax
	jne	.L482
.L471:
	.loc 1 1136 0
	testl	%ebx, %ebx
	.loc 1 1132 0
	movq	%rsi, active_console(%rip)
	.loc 1 1134 0
	movq	%rbp, 8(%rsi)
	.loc 1 1135 0
	movl	%ebx, (%rsi)
	.loc 1 1136 0
	je	.L472
.L483:
	.loc 1 1137 0
	movl	nb_consoles(%rip), %eax
	movslq	%eax,%rdx
	incl	%eax
	movq	%rsi, consoles(,%rdx,8)
	movl	%eax, nb_consoles(%rip)
.L473:
	.loc 1 1147 0
	movq	%rsi, %rax
.L467:
	.loc 1 1148 0
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.p2align 4,,7
.L482:
	.loc 1 1130 0
	movl	(%rax), %r11d
	testl	%r11d, %r11d
	setne	%dl
	xorl	%eax, %eax
	testl	%ebx, %ebx
	sete	%al
	testl	%edx, %eax
	jne	.L471
	.loc 1 1136 0
	testl	%ebx, %ebx
	.loc 1 1134 0
	movq	%rbp, 8(%rsi)
	.loc 1 1135 0
	movl	%ebx, (%rsi)
	.loc 1 1136 0
	jne	.L483
	.p2align 4,,7
.L472:
	.loc 1 1140 0
	movl	nb_consoles(%rip), %eax
	testl	%eax, %eax
	movslq	%eax,%rcx
	jle	.L475
	.p2align 4,,7
.L478:
	.loc 1 1141 0
	movslq	%eax,%rcx
	movq	consoles-8(,%rcx,8), %rdx
	movl	(%rdx), %r10d
	testl	%r10d, %r10d
	je	.L475
	.loc 1 1140 0
	decl	%eax
	.loc 1 1143 0
	movq	%rdx, consoles(,%rcx,8)
	.loc 1 1140 0
	testl	%eax, %eax
	jg	.L478
	movslq	%eax,%rcx
.L475:
	.loc 1 1145 0
	movq	%rsi, consoles(,%rcx,8)
	jmp	.L473
.LFE123:
	.size	new_console, .-new_console
	.p2align 4,,15
.globl graphic_console_init
	.type	graphic_console_init, @function
graphic_console_init:
.LFB124:
	.loc 1 1154 0
	movq	%rbx, -32(%rsp)
.LCFI57:
	movq	%rbp, -24(%rsp)
.LCFI58:
	movq	%rsi, %rbx
	movq	%r12, -16(%rsp)
.LCFI59:
	movq	%r13, -8(%rsp)
.LCFI60:
	.loc 1 1157 0
	xorl	%esi, %esi
	.loc 1 1154 0
	subq	$40, %rsp
.LCFI61:
	.loc 1 1154 0
	movq	%rdx, %rbp
	movq	%rcx, %r12
	movq	%r8, %r13
	.loc 1 1157 0
	call	new_console
	.loc 1 1159 0
	xorl	%edx, %edx
	.loc 1 1158 0
	testq	%rax, %rax
	je	.L484
	.loc 1 1160 0
	movq	%rbx, 16(%rax)
	.loc 1 1161 0
	movq	%rbp, 24(%rax)
	.loc 1 1164 0
	movq	%rax, %rdx
	.loc 1 1162 0
	movq	%r12, 32(%rax)
	.loc 1 1163 0
	movq	%r13, 40(%rax)
.L484:
	.loc 1 1165 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	movq	%rdx, %rax
	movq	24(%rsp), %r12
	movq	32(%rsp), %r13
	addq	$40, %rsp
	ret
.LFE124:
	.size	graphic_console_init, .-graphic_console_init
	.p2align 4,,15
.globl is_graphic_console
	.type	is_graphic_console, @function
is_graphic_console:
.LFB125:
	.loc 1 1168 0
	.loc 1 1169 0
	movq	active_console(%rip), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	.loc 1 1170 0
	ret
.LFE125:
	.size	is_graphic_console, .-is_graphic_console
	.p2align 4,,15
.globl console_color_init
	.type	console_color_init, @function
console_color_init:
.LFB126:
	.loc 1 1173 0
	.loc 1 1175 0
	xorl	%r10d, %r10d
.L507:
	movslq	%r10d,%rax
	movl	$7, %r9d
	leaq	0(,%rax,8), %r8
	jmp	.L506
	.p2align 4,,7
.L514:
.LBB82:
.LBB83:
.LBB84:
	.loc 1 179 0
	cmpl	$16, %eax
	je	.L496
	.loc 1 204 0
	movl	%edx, %ecx
.LBE84:
.LBE83:
.LBB85:
	.loc 1 362 0
	cmpl	$8, %eax
.LBE85:
	.loc 1 176 0
	movl	%ecx, %edx
.LBB86:
	.loc 1 362 0
	je	.L501
.L515:
	.p2align 4,,3
	jl	.L500
	subl	$15, %eax
	cmpl	$1, %eax
	ja	.L500
	.loc 1 369 0
	movl	%ecx, %edx
	sall	$16, %edx
	orl	%ecx, %edx
	.p2align 4,,7
.L500:
.LBE86:
.LBE82:
	.loc 1 208 0
	movl	%edx, color_table(,%r8,4)
	incq	%r8
	decl	%r9d
	js	.L513
.L506:
.LBB87:
.LBB88:
.LBB89:
	.loc 1 179 0
	movl	12(%rdi), %eax
.LBE89:
	.loc 1 176 0
	movl	color_table_rgb(,%r8,4), %edx
.LBB90:
	.loc 1 179 0
	cmpl	$15, %eax
	jne	.L514
	.loc 1 194 0
	movl	%edx, %ecx
	.loc 1 193 0
	movzbl	%dl,%esi
	.loc 1 194 0
	shrl	$6, %edx
	shrl	$9, %ecx
	andl	$992, %edx
	andl	$31744, %ecx
.L512:
	.loc 1 200 0
	orl	%edx, %ecx
	shrl	$3, %esi
	orl	%esi, %ecx
.LBE90:
.LBE88:
.LBB91:
	.loc 1 362 0
	cmpl	$8, %eax
.LBE91:
	.loc 1 176 0
	movl	%ecx, %edx
.LBB92:
	.loc 1 362 0
	jne	.L515
.L501:
	.loc 1 364 0
	movl	%ecx, %eax
	sall	$8, %eax
	orl	%eax, %edx
	.loc 1 365 0
	movl	%edx, %eax
	sall	$16, %eax
	orl	%eax, %edx
.LBE92:
.LBE87:
	.loc 1 208 0
	movl	%edx, color_table(,%r8,4)
	incq	%r8
	decl	%r9d
	jns	.L506
	.p2align 4,,7
.L513:
	.loc 1 1175 0
	incl	%r10d
	cmpl	$1, %r10d
	jle	.L507
	rep ; ret
	.p2align 4,,7
.L496:
.LBB93:
.LBB94:
.LBB95:
	.loc 1 200 0
	movl	%edx, %ecx
	.loc 1 199 0
	movzbl	%dl,%esi
	.loc 1 200 0
	shrl	$5, %edx
	shrl	$8, %ecx
	andl	$2016, %edx
	andl	$63488, %ecx
	jmp	.L512
.LBE95:
.LBE94:
.LBE93:
.LFE126:
	.size	console_color_init, .-console_color_init
	.local	color_inited.0
	.comm	color_inited.0,4,4
	.p2align 4,,15
.globl text_console_init
	.type	text_console_init, @function
text_console_init:
.LFB127:
	.loc 1 1184 0
	pushq	%r13
.LCFI62:
	pushq	%r12
.LCFI63:
	pushq	%rbp
.LCFI64:
	pushq	%rbx
.LCFI65:
	movq	%rdi, %rbx
	.loc 1 1191 0
	movl	$104, %edi
	.loc 1 1184 0
	subq	$8, %rsp
.LCFI66:
	.loc 1 1184 0
	movq	%rsi, (%rsp)
	.loc 1 1191 0
	call	qemu_mallocz
	movq	%rax, %rbp
	.loc 1 1193 0
	xorl	%eax, %eax
	.loc 1 1192 0
	testq	%rbp, %rbp
	je	.L516
	.loc 1 1194 0
	cmpq	$1, (%rsp)
	movq	%rbx, %rdi
	sbbl	%esi, %esi
	addl	$2, %esi
	call	new_console
	.loc 1 1195 0
	testq	%rax, %rax
	.loc 1 1194 0
	movq	%rax, %rbx
	.loc 1 1195 0
	je	.L528
	.loc 1 1199 0
	movq	%rax, 80(%rbp)
	.loc 1 1200 0
	movq	$console_puts, (%rbp)
	.loc 1 1206 0
	movq	%rbx, %rdx
	.loc 1 1201 0
	movq	$console_send_event, 56(%rbp)
	.loc 1 1203 0
	movq	%rbp, 136(%rax)
	.loc 1 1204 0
	leaq	168(%rax), %rax
	.loc 1 1205 0
	movl	$16, 152(%rbx)
	.loc 1 1206 0
	movl	$kbd_send_chars, %esi
	.loc 1 1204 0
	movq	%rax, 144(%rbx)
	.loc 1 1206 0
	movq	rt_clock(%rip), %rdi
	call	qemu_new_timer
	movq	%rax, 184(%rbx)
	.loc 1 1208 0
	movl	color_inited.0(%rip), %eax
	testl	%eax, %eax
	je	.L529
.L523:
	.loc 1 1212 0
	movl	$0, 88(%rbx)
	.loc 1 1213 0
	movl	$0, 92(%rbx)
	.loc 1 1214 0
	movl	$512, 64(%rbx)
	.loc 1 1215 0
	movl	$0, 72(%rbx)
	.loc 1 1216 0
	movl	$0, 76(%rbx)
	.loc 1 1219 0
	movq	(%rsp), %rdi
	.loc 1 1217 0
	movq	8(%rbx), %rax
	.loc 1 1219 0
	testq	%rdi, %rdi
	.loc 1 1217 0
	movl	20(%rax), %r12d
	.loc 1 1218 0
	movl	24(%rax), %r13d
	.loc 1 1219 0
	jne	.L530
.L524:
	.loc 1 1242 0
	andb	$-32, 97(%rbx)
	.loc 1 1244 0
	movb	$7, 96(%rbx)
	.loc 1 1248 0
	movq	%rbx, %rdi
	.loc 1 1247 0
	movzwl	96(%rbx), %eax
	.loc 1 1234 0
	movl	%r12d, 48(%rbx)
	.loc 1 1235 0
	movl	%r13d, 52(%rbx)
	.loc 1 1247 0
	movw	%ax, 98(%rbx)
	.loc 1 1248 0
	call	text_console_resize
	.loc 1 1250 0
	movq	%rbp, %rdi
	call	qemu_chr_reset
	.loc 1 1252 0
	movq	%rbp, %rax
.L516:
	.loc 1 1253 0
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	.p2align 4,,7
.L530:
	.loc 1 1220 0
	movl	$10, %edx
	movq	%rsp, %rsi
	call	strtoul
	movl	%eax, %r12d
	.loc 1 1221 0
	movq	(%rsp), %rax
	cmpb	$67, (%rax)
	je	.L531
.L525:
	.loc 1 1225 0
	cmpb	$120, (%rax)
	jne	.L524
	.loc 1 1226 0
	incq	%rax
	.loc 1 1227 0
	movl	$10, %edx
	movq	%rsp, %rsi
	movq	%rax, %rdi
	.loc 1 1226 0
	movq	%rax, (%rsp)
	.loc 1 1227 0
	call	strtoul
	movl	%eax, %r13d
	.loc 1 1228 0
	movq	(%rsp), %rax
	cmpb	$67, (%rax)
	jne	.L524
	.loc 1 1229 0
	incq	%rax
	.loc 1 1230 0
	sall	$4, %r13d
	.loc 1 1229 0
	movq	%rax, (%rsp)
	jmp	.L524
	.p2align 4,,7
.L529:
	.loc 1 1209 0
	movl	$1, color_inited.0(%rip)
	.loc 1 1210 0
	movq	8(%rbx), %rdi
	call	console_color_init
	jmp	.L523
.L531:
	.loc 1 1222 0
	incq	%rax
	.loc 1 1223 0
	sall	$3, %r12d
	.loc 1 1222 0
	movq	%rax, (%rsp)
	jmp	.L525
.L528:
	.loc 1 1196 0
	movq	%rbp, %rdi
	call	free
	.loc 1 1197 0
	xorl	%eax, %eax
	jmp	.L516
.LFE127:
	.size	text_console_init, .-text_console_init
	.local	active_console
	.comm	active_console,8,8
	.local	consoles
	.comm	consoles,96,32
	.local	color_table
	.comm	color_table,64,32
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
	.quad	.LFB101
	.quad	.LFE101-.LFB101
	.align 8
.LEFDE0:
.LSFDE2:
	.long	.LEFDE2-.LASFDE2
.LASFDE2:
	.long	.Lframe0
	.quad	.LFB102
	.quad	.LFE102-.LFB102
	.align 8
.LEFDE2:
.LSFDE4:
	.long	.LEFDE4-.LASFDE4
.LASFDE4:
	.long	.Lframe0
	.quad	.LFB103
	.quad	.LFE103-.LFB103
	.align 8
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.quad	.LFB105
	.quad	.LFE105-.LFB105
	.byte	0x4
	.long	.LCFI0-.LFB105
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE6:
.LSFDE8:
	.long	.LEFDE8-.LASFDE8
.LASFDE8:
	.long	.Lframe0
	.quad	.LFB108
	.quad	.LFE108-.LFB108
	.byte	0x4
	.long	.LCFI1-.LFB108
	.byte	0xe
	.uleb128 0x10
	.byte	0x8d
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI2-.LCFI1
	.byte	0xe
	.uleb128 0x18
	.byte	0x8c
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI3-.LCFI2
	.byte	0xe
	.uleb128 0x20
	.byte	0x86
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI4-.LCFI3
	.byte	0xe
	.uleb128 0x28
	.byte	0x83
	.uleb128 0x5
	.align 8
.LEFDE8:
.LSFDE10:
	.long	.LEFDE10-.LASFDE10
.LASFDE10:
	.long	.Lframe0
	.quad	.LFB109
	.quad	.LFE109-.LFB109
	.byte	0x4
	.long	.LCFI5-.LFB109
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI6-.LCFI5
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI7-.LCFI6
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI8-.LCFI7
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
	.long	.LCFI9-.LCFI8
	.byte	0xe
	.uleb128 0x30
	.align 8
.LEFDE10:
.LSFDE12:
	.long	.LEFDE12-.LASFDE12
.LASFDE12:
	.long	.Lframe0
	.quad	.LFB110
	.quad	.LFE110-.LFB110
	.byte	0x4
	.long	.LCFI11-.LFB110
	.byte	0x8c
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI13-.LCFI11
	.byte	0xe
	.uleb128 0x20
	.byte	0x86
	.uleb128 0x3
	.align 8
.LEFDE12:
.LSFDE14:
	.long	.LEFDE14-.LASFDE14
.LASFDE14:
	.long	.Lframe0
	.quad	.LFB111
	.quad	.LFE111-.LFB111
	.byte	0x4
	.long	.LCFI15-.LFB111
	.byte	0x86
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI17-.LCFI15
	.byte	0xe
	.uleb128 0x30
	.byte	0x8c
	.uleb128 0x2
	.align 8
.LEFDE14:
.LSFDE16:
	.long	.LEFDE16-.LASFDE16
.LASFDE16:
	.long	.Lframe0
	.quad	.LFB112
	.quad	.LFE112-.LFB112
	.byte	0x4
	.long	.LCFI19-.LFB112
	.byte	0x83
	.uleb128 0x6
	.byte	0x8c
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI23-.LCFI19
	.byte	0xe
	.uleb128 0x30
	.byte	0x8e
	.uleb128 0x2
	.byte	0x8d
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x5
	.align 8
.LEFDE16:
.LSFDE18:
	.long	.LEFDE18-.LASFDE18
.LASFDE18:
	.long	.Lframe0
	.quad	.LFB113
	.quad	.LFE113-.LFB113
	.align 8
.LEFDE18:
.LSFDE20:
	.long	.LEFDE20-.LASFDE20
.LASFDE20:
	.long	.Lframe0
	.quad	.LFB114
	.quad	.LFE114-.LFB114
	.byte	0x4
	.long	.LCFI25-.LFB114
	.byte	0x86
	.uleb128 0x6
	.byte	0x83
	.uleb128 0x7
	.byte	0x4
	.long	.LCFI30-.LCFI25
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
.LEFDE20:
.LSFDE22:
	.long	.LEFDE22-.LASFDE22
.LASFDE22:
	.long	.Lframe0
	.quad	.LFB116
	.quad	.LFE116-.LFB116
	.align 8
.LEFDE22:
.LSFDE24:
	.long	.LEFDE24-.LASFDE24
.LASFDE24:
	.long	.Lframe0
	.quad	.LFB118
	.quad	.LFE118-.LFB118
	.byte	0x4
	.long	.LCFI31-.LFB118
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE24:
.LSFDE26:
	.long	.LEFDE26-.LASFDE26
.LASFDE26:
	.long	.Lframe0
	.quad	.LFB119
	.quad	.LFE119-.LFB119
	.byte	0x4
	.long	.LCFI32-.LFB119
	.byte	0xe
	.uleb128 0x10
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI33-.LCFI32
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI34-.LCFI33
	.byte	0xe
	.uleb128 0x20
	.byte	0x8d
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI35-.LCFI34
	.byte	0xe
	.uleb128 0x28
	.byte	0x8c
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI36-.LCFI35
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI37-.LCFI36
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI38-.LCFI37
	.byte	0xe
	.uleb128 0x40
	.byte	0x83
	.uleb128 0x7
	.byte	0x86
	.uleb128 0x6
	.align 8
.LEFDE26:
.LSFDE28:
	.long	.LEFDE28-.LASFDE28
.LASFDE28:
	.long	.Lframe0
	.quad	.LFB120
	.quad	.LFE120-.LFB120
	.byte	0x4
	.long	.LCFI39-.LFB120
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE28:
.LSFDE30:
	.long	.LEFDE30-.LASFDE30
.LASFDE30:
	.long	.Lframe0
	.quad	.LFB121
	.quad	.LFE121-.LFB121
	.byte	0x4
	.long	.LCFI40-.LFB121
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI41-.LCFI40
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI42-.LCFI41
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI43-.LCFI42
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI44-.LCFI43
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI45-.LCFI44
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI46-.LCFI45
	.byte	0xe
	.uleb128 0x60
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
.LEFDE30:
.LSFDE32:
	.long	.LEFDE32-.LASFDE32
.LASFDE32:
	.long	.Lframe0
	.quad	.LFB122
	.quad	.LFE122-.LFB122
	.byte	0x4
	.long	.LCFI53-.LFB122
	.byte	0xe
	.uleb128 0x60
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8d
	.uleb128 0x4
	.byte	0x8c
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x6
	.byte	0x83
	.uleb128 0x7
	.byte	0x8f
	.uleb128 0x2
	.align 8
.LEFDE32:
.LSFDE34:
	.long	.LEFDE34-.LASFDE34
.LASFDE34:
	.long	.Lframe0
	.quad	.LFB123
	.quad	.LFE123-.LFB123
	.byte	0x4
	.long	.LCFI54-.LFB123
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI55-.LCFI54
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI56-.LCFI55
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE34:
.LSFDE36:
	.long	.LEFDE36-.LASFDE36
.LASFDE36:
	.long	.Lframe0
	.quad	.LFB124
	.quad	.LFE124-.LFB124
	.byte	0x4
	.long	.LCFI58-.LFB124
	.byte	0x86
	.uleb128 0x4
	.byte	0x83
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI61-.LCFI58
	.byte	0xe
	.uleb128 0x30
	.byte	0x8d
	.uleb128 0x2
	.byte	0x8c
	.uleb128 0x3
	.align 8
.LEFDE36:
.LSFDE38:
	.long	.LEFDE38-.LASFDE38
.LASFDE38:
	.long	.Lframe0
	.quad	.LFB125
	.quad	.LFE125-.LFB125
	.align 8
.LEFDE38:
.LSFDE40:
	.long	.LEFDE40-.LASFDE40
.LASFDE40:
	.long	.Lframe0
	.quad	.LFB126
	.quad	.LFE126-.LFB126
	.align 8
.LEFDE40:
.LSFDE42:
	.long	.LEFDE42-.LASFDE42
.LASFDE42:
	.long	.Lframe0
	.quad	.LFB127
	.quad	.LFE127-.LFB127
	.byte	0x4
	.long	.LCFI62-.LFB127
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI63-.LCFI62
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI64-.LCFI63
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI65-.LCFI64
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
	.long	.LCFI66-.LCFI65
	.byte	0xe
	.uleb128 0x30
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
	.quad	.LFB101
	.quad	.LFE101-.LFB101
	.align 8
.LEFDE1:
.LSFDE3:
	.long	.LEFDE3-.LASFDE3
.LASFDE3:
	.long	.LASFDE3-.Lframe1
	.quad	.LFB102
	.quad	.LFE102-.LFB102
	.align 8
.LEFDE3:
.LSFDE5:
	.long	.LEFDE5-.LASFDE5
.LASFDE5:
	.long	.LASFDE5-.Lframe1
	.quad	.LFB103
	.quad	.LFE103-.LFB103
	.align 8
.LEFDE5:
.LSFDE7:
	.long	.LEFDE7-.LASFDE7
.LASFDE7:
	.long	.LASFDE7-.Lframe1
	.quad	.LFB105
	.quad	.LFE105-.LFB105
	.byte	0x4
	.long	.LCFI0-.LFB105
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE7:
.LSFDE9:
	.long	.LEFDE9-.LASFDE9
.LASFDE9:
	.long	.LASFDE9-.Lframe1
	.quad	.LFB108
	.quad	.LFE108-.LFB108
	.byte	0x4
	.long	.LCFI1-.LFB108
	.byte	0xe
	.uleb128 0x10
	.byte	0x8d
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI2-.LCFI1
	.byte	0xe
	.uleb128 0x18
	.byte	0x8c
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI3-.LCFI2
	.byte	0xe
	.uleb128 0x20
	.byte	0x86
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI4-.LCFI3
	.byte	0xe
	.uleb128 0x28
	.byte	0x83
	.uleb128 0x5
	.align 8
.LEFDE9:
.LSFDE11:
	.long	.LEFDE11-.LASFDE11
.LASFDE11:
	.long	.LASFDE11-.Lframe1
	.quad	.LFB109
	.quad	.LFE109-.LFB109
	.byte	0x4
	.long	.LCFI5-.LFB109
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI6-.LCFI5
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI7-.LCFI6
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI8-.LCFI7
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
	.long	.LCFI9-.LCFI8
	.byte	0xe
	.uleb128 0x30
	.align 8
.LEFDE11:
.LSFDE13:
	.long	.LEFDE13-.LASFDE13
.LASFDE13:
	.long	.LASFDE13-.Lframe1
	.quad	.LFB110
	.quad	.LFE110-.LFB110
	.byte	0x4
	.long	.LCFI11-.LFB110
	.byte	0x8c
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI13-.LCFI11
	.byte	0xe
	.uleb128 0x20
	.byte	0x86
	.uleb128 0x3
	.align 8
.LEFDE13:
.LSFDE15:
	.long	.LEFDE15-.LASFDE15
.LASFDE15:
	.long	.LASFDE15-.Lframe1
	.quad	.LFB111
	.quad	.LFE111-.LFB111
	.byte	0x4
	.long	.LCFI15-.LFB111
	.byte	0x86
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI17-.LCFI15
	.byte	0xe
	.uleb128 0x30
	.byte	0x8c
	.uleb128 0x2
	.align 8
.LEFDE15:
.LSFDE17:
	.long	.LEFDE17-.LASFDE17
.LASFDE17:
	.long	.LASFDE17-.Lframe1
	.quad	.LFB112
	.quad	.LFE112-.LFB112
	.byte	0x4
	.long	.LCFI19-.LFB112
	.byte	0x83
	.uleb128 0x6
	.byte	0x8c
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI23-.LCFI19
	.byte	0xe
	.uleb128 0x30
	.byte	0x8e
	.uleb128 0x2
	.byte	0x8d
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x5
	.align 8
.LEFDE17:
.LSFDE19:
	.long	.LEFDE19-.LASFDE19
.LASFDE19:
	.long	.LASFDE19-.Lframe1
	.quad	.LFB113
	.quad	.LFE113-.LFB113
	.align 8
.LEFDE19:
.LSFDE21:
	.long	.LEFDE21-.LASFDE21
.LASFDE21:
	.long	.LASFDE21-.Lframe1
	.quad	.LFB114
	.quad	.LFE114-.LFB114
	.byte	0x4
	.long	.LCFI25-.LFB114
	.byte	0x86
	.uleb128 0x6
	.byte	0x83
	.uleb128 0x7
	.byte	0x4
	.long	.LCFI30-.LCFI25
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
.LEFDE21:
.LSFDE23:
	.long	.LEFDE23-.LASFDE23
.LASFDE23:
	.long	.LASFDE23-.Lframe1
	.quad	.LFB116
	.quad	.LFE116-.LFB116
	.align 8
.LEFDE23:
.LSFDE25:
	.long	.LEFDE25-.LASFDE25
.LASFDE25:
	.long	.LASFDE25-.Lframe1
	.quad	.LFB118
	.quad	.LFE118-.LFB118
	.byte	0x4
	.long	.LCFI31-.LFB118
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE25:
.LSFDE27:
	.long	.LEFDE27-.LASFDE27
.LASFDE27:
	.long	.LASFDE27-.Lframe1
	.quad	.LFB119
	.quad	.LFE119-.LFB119
	.byte	0x4
	.long	.LCFI32-.LFB119
	.byte	0xe
	.uleb128 0x10
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI33-.LCFI32
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI34-.LCFI33
	.byte	0xe
	.uleb128 0x20
	.byte	0x8d
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI35-.LCFI34
	.byte	0xe
	.uleb128 0x28
	.byte	0x8c
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI36-.LCFI35
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI37-.LCFI36
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI38-.LCFI37
	.byte	0xe
	.uleb128 0x40
	.byte	0x83
	.uleb128 0x7
	.byte	0x86
	.uleb128 0x6
	.align 8
.LEFDE27:
.LSFDE29:
	.long	.LEFDE29-.LASFDE29
.LASFDE29:
	.long	.LASFDE29-.Lframe1
	.quad	.LFB120
	.quad	.LFE120-.LFB120
	.byte	0x4
	.long	.LCFI39-.LFB120
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE29:
.LSFDE31:
	.long	.LEFDE31-.LASFDE31
.LASFDE31:
	.long	.LASFDE31-.Lframe1
	.quad	.LFB121
	.quad	.LFE121-.LFB121
	.byte	0x4
	.long	.LCFI40-.LFB121
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI41-.LCFI40
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI42-.LCFI41
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI43-.LCFI42
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI44-.LCFI43
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI45-.LCFI44
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI46-.LCFI45
	.byte	0xe
	.uleb128 0x60
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
.LEFDE31:
.LSFDE33:
	.long	.LEFDE33-.LASFDE33
.LASFDE33:
	.long	.LASFDE33-.Lframe1
	.quad	.LFB122
	.quad	.LFE122-.LFB122
	.byte	0x4
	.long	.LCFI53-.LFB122
	.byte	0xe
	.uleb128 0x60
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8d
	.uleb128 0x4
	.byte	0x8c
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x6
	.byte	0x83
	.uleb128 0x7
	.byte	0x8f
	.uleb128 0x2
	.align 8
.LEFDE33:
.LSFDE35:
	.long	.LEFDE35-.LASFDE35
.LASFDE35:
	.long	.LASFDE35-.Lframe1
	.quad	.LFB123
	.quad	.LFE123-.LFB123
	.byte	0x4
	.long	.LCFI54-.LFB123
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI55-.LCFI54
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI56-.LCFI55
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE35:
.LSFDE37:
	.long	.LEFDE37-.LASFDE37
.LASFDE37:
	.long	.LASFDE37-.Lframe1
	.quad	.LFB124
	.quad	.LFE124-.LFB124
	.byte	0x4
	.long	.LCFI58-.LFB124
	.byte	0x86
	.uleb128 0x4
	.byte	0x83
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI61-.LCFI58
	.byte	0xe
	.uleb128 0x30
	.byte	0x8d
	.uleb128 0x2
	.byte	0x8c
	.uleb128 0x3
	.align 8
.LEFDE37:
.LSFDE39:
	.long	.LEFDE39-.LASFDE39
.LASFDE39:
	.long	.LASFDE39-.Lframe1
	.quad	.LFB125
	.quad	.LFE125-.LFB125
	.align 8
.LEFDE39:
.LSFDE41:
	.long	.LEFDE41-.LASFDE41
.LASFDE41:
	.long	.LASFDE41-.Lframe1
	.quad	.LFB126
	.quad	.LFE126-.LFB126
	.align 8
.LEFDE41:
.LSFDE43:
	.long	.LEFDE43-.LASFDE43
.LASFDE43:
	.long	.LASFDE43-.Lframe1
	.quad	.LFB127
	.quad	.LFE127-.LFB127
	.byte	0x4
	.long	.LCFI62-.LFB127
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI63-.LCFI62
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI64-.LCFI63
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI65-.LCFI64
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
	.long	.LCFI66-.LCFI65
	.byte	0xe
	.uleb128 0x30
	.align 8
.LEFDE43:
	.file 3 "qemu-common.h"
	.file 4 "/usr/include/stdint.h"
	.file 5 "qemu-char.h"
	.file 6 "/usr/include/stdio.h"
	.file 7 "/usr/include/libio.h"
	.file 8 "/usr/include/bits/types.h"
	.file 9 "/usr/lib/gcc/x86_64-linux-gnu/3.4.6/include/stddef.h"
	.file 10 "qemu-timer.h"
	.file 11 "vgafont.h"
	.text
.Letext0:
	.section	.debug_info
	.long	0x1918
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.Ldebug_line0
	.quad	.Letext0
	.quad	.Ltext0
	.long	.LASF188
	.byte	0x1
	.long	.LASF189
	.long	.LASF190
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
	.byte	0x8
	.byte	0x8d
	.long	0x4d
	.uleb128 0x2
	.long	.LASF11
	.byte	0x8
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
	.byte	0x6
	.byte	0x2d
	.uleb128 0x9
	.long	.LASF13
	.byte	0x7
	.value	0x110
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF14
	.byte	0x7
	.value	0x115
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF15
	.byte	0x7
	.value	0x116
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.long	.LASF16
	.byte	0x7
	.value	0x117
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.long	.LASF17
	.byte	0x7
	.value	0x118
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.long	.LASF18
	.byte	0x7
	.value	0x119
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.long	.LASF19
	.byte	0x7
	.value	0x11a
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.long	.LASF20
	.byte	0x7
	.value	0x11b
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.long	.LASF21
	.byte	0x7
	.value	0x11c
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.long	.LASF22
	.byte	0x7
	.value	0x11e
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x9
	.long	.LASF23
	.byte	0x7
	.value	0x11f
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x9
	.long	.LASF24
	.byte	0x7
	.value	0x120
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x9
	.long	.LASF25
	.byte	0x7
	.value	0x122
	.long	0x2bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x9
	.long	.LASF26
	.byte	0x7
	.value	0x124
	.long	0x2c5
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x9
	.long	.LASF27
	.byte	0x7
	.value	0x126
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x9
	.long	.LASF28
	.byte	0x7
	.value	0x12a
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x9
	.long	.LASF29
	.byte	0x7
	.value	0x12c
	.long	0x90
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x9
	.long	.LASF30
	.byte	0x7
	.value	0x130
	.long	0x62
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x9
	.long	.LASF31
	.byte	0x7
	.value	0x131
	.long	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0x82
	.uleb128 0x9
	.long	.LASF32
	.byte	0x7
	.value	0x132
	.long	0x2cb
	.byte	0x3
	.byte	0x23
	.uleb128 0x83
	.uleb128 0x9
	.long	.LASF33
	.byte	0x7
	.value	0x136
	.long	0x2db
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x9
	.long	.LASF34
	.byte	0x7
	.value	0x13f
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x9
	.long	.LASF35
	.byte	0x7
	.value	0x148
	.long	0xa6
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x9
	.long	.LASF36
	.byte	0x7
	.value	0x149
	.long	0xa6
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x9
	.long	.LASF37
	.byte	0x7
	.value	0x14a
	.long	0xa6
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x9
	.long	.LASF38
	.byte	0x7
	.value	0x14b
	.long	0xa6
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x9
	.long	.LASF39
	.byte	0x7
	.value	0x14c
	.long	0x2d
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x9
	.long	.LASF40
	.byte	0x7
	.value	0x14e
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x9
	.long	.LASF41
	.byte	0x7
	.value	0x150
	.long	0x2e1
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.byte	0x0
	.uleb128 0xa
	.long	.LASF42
	.byte	0x7
	.byte	0xb4
	.uleb128 0x8
	.long	0x2bf
	.long	.LASF44
	.byte	0x18
	.byte	0x7
	.byte	0xba
	.uleb128 0xb
	.long	.LASF45
	.byte	0x7
	.byte	0xbb
	.long	0x2bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF46
	.byte	0x7
	.byte	0xbc
	.long	0x2c5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF47
	.byte	0x7
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
	.byte	0x4
	.byte	0x31
	.long	0x7b
	.uleb128 0x2
	.long	.LASF49
	.byte	0x4
	.byte	0x34
	.long	0x46
	.uleb128 0x2
	.long	.LASF50
	.byte	0x3
	.byte	0x45
	.long	0x322
	.uleb128 0x10
	.long	.LASF50
	.byte	0x1
	.uleb128 0x11
	.long	0x334
	.byte	0x1
	.uleb128 0xf
	.long	0xa6
	.byte	0x0
	.uleb128 0x2
	.long	.LASF51
	.byte	0x3
	.byte	0x5f
	.long	0x33f
	.uleb128 0x11
	.long	0x355
	.byte	0x1
	.uleb128 0xf
	.long	0xa6
	.uleb128 0xf
	.long	0x355
	.uleb128 0xf
	.long	0x3f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x35b
	.uleb128 0x6
	.long	0x301
	.uleb128 0x2
	.long	.LASF52
	.byte	0x3
	.byte	0x60
	.long	0x2f1
	.uleb128 0x2
	.long	.LASF53
	.byte	0x3
	.byte	0x6f
	.long	0x376
	.uleb128 0x8
	.long	0x455
	.long	.LASF53
	.byte	0x68
	.byte	0x3
	.byte	0x6f
	.uleb128 0xb
	.long	.LASF54
	.byte	0x2
	.byte	0x42
	.long	0x775
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF55
	.byte	0x2
	.byte	0x43
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF56
	.byte	0x2
	.byte	0x44
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x12
	.string	"bgr"
	.byte	0x2
	.byte	0x45
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.long	.LASF57
	.byte	0x2
	.byte	0x46
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.long	.LASF58
	.byte	0x2
	.byte	0x47
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.long	.LASF59
	.byte	0x2
	.byte	0x48
	.long	0xa6
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.long	.LASF60
	.byte	0x2
	.byte	0x49
	.long	0x77b
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.long	.LASF61
	.byte	0x2
	.byte	0x4b
	.long	0x7a7
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xb
	.long	.LASF62
	.byte	0x2
	.byte	0x4c
	.long	0x7c3
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xb
	.long	.LASF63
	.byte	0x2
	.byte	0x4d
	.long	0x7d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xb
	.long	.LASF64
	.byte	0x2
	.byte	0x4f
	.long	0x805
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xb
	.long	.LASF65
	.byte	0x2
	.byte	0x51
	.long	0x830
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xb
	.long	.LASF66
	.byte	0x2
	.byte	0x52
	.long	0x84c
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xb
	.long	.LASF67
	.byte	0x2
	.byte	0x54
	.long	0x87c
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.byte	0x0
	.uleb128 0x2
	.long	.LASF68
	.byte	0x3
	.byte	0x70
	.long	0x460
	.uleb128 0x8
	.long	0x5f4
	.long	.LASF68
	.byte	0xc0
	.byte	0x3
	.byte	0x70
	.uleb128 0xb
	.long	.LASF69
	.byte	0x1
	.byte	0x76
	.long	0xa2b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.string	"ds"
	.byte	0x1
	.byte	0x77
	.long	0xa36
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF70
	.byte	0x1
	.byte	0x79
	.long	0x882
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.long	.LASF71
	.byte	0x1
	.byte	0x7a
	.long	0x893
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.long	.LASF72
	.byte	0x1
	.byte	0x7b
	.long	0x89e
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x12
	.string	"hw"
	.byte	0x1
	.byte	0x7c
	.long	0xa6
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.long	.LASF73
	.byte	0x1
	.byte	0x7e
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xb
	.long	.LASF74
	.byte	0x1
	.byte	0x7e
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xb
	.long	.LASF57
	.byte	0x1
	.byte	0x7f
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xb
	.long	.LASF58
	.byte	0x1
	.byte	0x80
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xb
	.long	.LASF75
	.byte	0x1
	.byte	0x81
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xb
	.long	.LASF76
	.byte	0x1
	.byte	0x82
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x12
	.string	"x"
	.byte	0x1
	.byte	0x83
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x12
	.string	"y"
	.byte	0x1
	.byte	0x83
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xb
	.long	.LASF77
	.byte	0x1
	.byte	0x84
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xb
	.long	.LASF78
	.byte	0x1
	.byte	0x84
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xb
	.long	.LASF79
	.byte	0x1
	.byte	0x85
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xb
	.long	.LASF80
	.byte	0x1
	.byte	0x86
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xb
	.long	.LASF81
	.byte	0x1
	.byte	0x87
	.long	0x955
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xb
	.long	.LASF82
	.byte	0x1
	.byte	0x88
	.long	0x955
	.byte	0x2
	.byte	0x23
	.uleb128 0x62
	.uleb128 0xb
	.long	.LASF83
	.byte	0x1
	.byte	0x89
	.long	0xa3c
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xb
	.long	.LASF84
	.byte	0x1
	.byte	0x8b
	.long	0x993
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xb
	.long	.LASF85
	.byte	0x1
	.byte	0x8c
	.long	0xa42
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xb
	.long	.LASF86
	.byte	0x1
	.byte	0x8d
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x12
	.string	"chr"
	.byte	0x1
	.byte	0x8f
	.long	0xa52
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xb
	.long	.LASF87
	.byte	0x1
	.byte	0x91
	.long	0xa05
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xb
	.long	.LASF88
	.byte	0x1
	.byte	0x92
	.long	0xa58
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xb
	.long	.LASF89
	.byte	0x1
	.byte	0x93
	.long	0xa68
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.byte	0x0
	.uleb128 0x2
	.long	.LASF90
	.byte	0x3
	.byte	0x71
	.long	0x5ff
	.uleb128 0x8
	.long	0x6c1
	.long	.LASF90
	.byte	0x68
	.byte	0x3
	.byte	0x71
	.uleb128 0xb
	.long	.LASF91
	.byte	0x5
	.byte	0x22
	.long	0x70e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF92
	.byte	0x5
	.byte	0x23
	.long	0x720
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF93
	.byte	0x5
	.byte	0x24
	.long	0x740
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.long	.LASF94
	.byte	0x5
	.byte	0x25
	.long	0x746
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.long	.LASF95
	.byte	0x5
	.byte	0x26
	.long	0x74c
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.long	.LASF96
	.byte	0x5
	.byte	0x27
	.long	0x752
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.long	.LASF97
	.byte	0x5
	.byte	0x28
	.long	0xa6
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xb
	.long	.LASF98
	.byte	0x5
	.byte	0x29
	.long	0x769
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xb
	.long	.LASF99
	.byte	0x5
	.byte	0x2a
	.long	0x720
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xb
	.long	.LASF100
	.byte	0x5
	.byte	0x2b
	.long	0x720
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xb
	.long	.LASF59
	.byte	0x5
	.byte	0x2c
	.long	0xa6
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xb
	.long	.LASF101
	.byte	0x5
	.byte	0x2d
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x12
	.string	"bh"
	.byte	0x5
	.byte	0x2e
	.long	0x76f
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.byte	0x0
	.uleb128 0x2
	.long	.LASF102
	.byte	0x3
	.byte	0x77
	.long	0x6cc
	.uleb128 0x10
	.long	.LASF102
	.byte	0x1
	.uleb128 0x2
	.long	.LASF103
	.byte	0x5
	.byte	0x1f
	.long	0x6dd
	.uleb128 0x11
	.long	0x6ee
	.byte	0x1
	.uleb128 0xf
	.long	0xa6
	.uleb128 0xf
	.long	0x3f
	.byte	0x0
	.uleb128 0xe
	.long	0x708
	.byte	0x1
	.long	0x3f
	.uleb128 0xf
	.long	0x708
	.uleb128 0xf
	.long	0x355
	.uleb128 0xf
	.long	0x3f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x5ff
	.uleb128 0x5
	.byte	0x8
	.long	0x6ee
	.uleb128 0x11
	.long	0x720
	.byte	0x1
	.uleb128 0xf
	.long	0x708
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x714
	.uleb128 0xe
	.long	0x740
	.byte	0x1
	.long	0x3f
	.uleb128 0xf
	.long	0x708
	.uleb128 0xf
	.long	0x3f
	.uleb128 0xf
	.long	0xa6
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x726
	.uleb128 0x5
	.byte	0x8
	.long	0x6d2
	.uleb128 0x5
	.byte	0x8
	.long	0x360
	.uleb128 0x5
	.byte	0x8
	.long	0x334
	.uleb128 0x11
	.long	0x769
	.byte	0x1
	.uleb128 0xf
	.long	0x708
	.uleb128 0xf
	.long	0x3f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x758
	.uleb128 0x5
	.byte	0x8
	.long	0x317
	.uleb128 0x5
	.byte	0x8
	.long	0x301
	.uleb128 0x5
	.byte	0x8
	.long	0x6cc
	.uleb128 0x11
	.long	0x7a1
	.byte	0x1
	.uleb128 0xf
	.long	0x7a1
	.uleb128 0xf
	.long	0x3f
	.uleb128 0xf
	.long	0x3f
	.uleb128 0xf
	.long	0x3f
	.uleb128 0xf
	.long	0x3f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x376
	.uleb128 0x5
	.byte	0x8
	.long	0x781
	.uleb128 0x11
	.long	0x7c3
	.byte	0x1
	.uleb128 0xf
	.long	0x7a1
	.uleb128 0xf
	.long	0x3f
	.uleb128 0xf
	.long	0x3f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x7ad
	.uleb128 0x11
	.long	0x7d5
	.byte	0x1
	.uleb128 0xf
	.long	0x7a1
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x7c9
	.uleb128 0x11
	.long	0x805
	.byte	0x1
	.uleb128 0xf
	.long	0x7a1
	.uleb128 0xf
	.long	0x3f
	.uleb128 0xf
	.long	0x3f
	.uleb128 0xf
	.long	0x3f
	.uleb128 0xf
	.long	0x3f
	.uleb128 0xf
	.long	0x3f
	.uleb128 0xf
	.long	0x3f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x7db
	.uleb128 0x11
	.long	0x830
	.byte	0x1
	.uleb128 0xf
	.long	0x7a1
	.uleb128 0xf
	.long	0x3f
	.uleb128 0xf
	.long	0x3f
	.uleb128 0xf
	.long	0x3f
	.uleb128 0xf
	.long	0x3f
	.uleb128 0xf
	.long	0x30c
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x80b
	.uleb128 0x11
	.long	0x84c
	.byte	0x1
	.uleb128 0xf
	.long	0x3f
	.uleb128 0xf
	.long	0x3f
	.uleb128 0xf
	.long	0x3f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x836
	.uleb128 0x11
	.long	0x87c
	.byte	0x1
	.uleb128 0xf
	.long	0x3f
	.uleb128 0xf
	.long	0x3f
	.uleb128 0xf
	.long	0x3f
	.uleb128 0xf
	.long	0x3f
	.uleb128 0xf
	.long	0x3f
	.uleb128 0xf
	.long	0x775
	.uleb128 0xf
	.long	0x775
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x852
	.uleb128 0x2
	.long	.LASF104
	.byte	0x2
	.byte	0x61
	.long	0x88d
	.uleb128 0x5
	.byte	0x8
	.long	0x328
	.uleb128 0x2
	.long	.LASF105
	.byte	0x2
	.byte	0x62
	.long	0x88d
	.uleb128 0x2
	.long	.LASF106
	.byte	0x2
	.byte	0x63
	.long	0x8a9
	.uleb128 0x5
	.byte	0x8
	.long	0x8af
	.uleb128 0x11
	.long	0x8c0
	.byte	0x1
	.uleb128 0xf
	.long	0xa6
	.uleb128 0xf
	.long	0x69
	.byte	0x0
	.uleb128 0x2
	.long	.LASF107
	.byte	0xa
	.byte	0x6
	.long	0x8cb
	.uleb128 0x10
	.long	.LASF107
	.byte	0x1
	.uleb128 0x8
	.long	0x955
	.long	.LASF108
	.byte	0x2
	.byte	0x1
	.byte	0x23
	.uleb128 0x13
	.long	.LASF109
	.byte	0x1
	.byte	0x24
	.long	0x301
	.byte	0x1
	.byte	0x4
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x13
	.long	.LASF110
	.byte	0x1
	.byte	0x25
	.long	0x301
	.byte	0x1
	.byte	0x4
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x13
	.long	.LASF111
	.byte	0x1
	.byte	0x26
	.long	0x301
	.byte	0x1
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x13
	.long	.LASF112
	.byte	0x1
	.byte	0x27
	.long	0x301
	.byte	0x1
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x13
	.long	.LASF113
	.byte	0x1
	.byte	0x28
	.long	0x301
	.byte	0x1
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x13
	.long	.LASF114
	.byte	0x1
	.byte	0x29
	.long	0x301
	.byte	0x1
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x13
	.long	.LASF115
	.byte	0x1
	.byte	0x2a
	.long	0x301
	.byte	0x1
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0x0
	.uleb128 0x2
	.long	.LASF108
	.byte	0x1
	.byte	0x2b
	.long	0x8d1
	.uleb128 0x8
	.long	0x988
	.long	.LASF116
	.byte	0x3
	.byte	0x1
	.byte	0x2d
	.uleb128 0x12
	.string	"ch"
	.byte	0x1
	.byte	0x2e
	.long	0x301
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF82
	.byte	0x1
	.byte	0x2f
	.long	0x955
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0x0
	.uleb128 0x2
	.long	.LASF116
	.byte	0x1
	.byte	0x30
	.long	0x960
	.uleb128 0x14
	.long	0x9b2
	.long	.LASF191
	.byte	0x4
	.byte	0x1
	.byte	0x34
	.uleb128 0x15
	.long	.LASF117
	.sleb128 0
	.uleb128 0x15
	.long	.LASF118
	.sleb128 1
	.uleb128 0x15
	.long	.LASF119
	.sleb128 2
	.byte	0x0
	.uleb128 0x8
	.long	0xa05
	.long	.LASF120
	.byte	0x18
	.byte	0x1
	.byte	0x3a
	.uleb128 0x12
	.string	"buf"
	.byte	0x1
	.byte	0x3b
	.long	0x775
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF121
	.byte	0x1
	.byte	0x3c
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF122
	.byte	0x1
	.byte	0x3d
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.long	.LASF123
	.byte	0x1
	.byte	0x3d
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.long	.LASF124
	.byte	0x1
	.byte	0x3d
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x2
	.long	.LASF120
	.byte	0x1
	.byte	0x3e
	.long	0x9b2
	.uleb128 0x16
	.long	0xa2b
	.byte	0x4
	.byte	0x1
	.byte	0x6d
	.uleb128 0x15
	.long	.LASF125
	.sleb128 0
	.uleb128 0x15
	.long	.LASF126
	.sleb128 1
	.uleb128 0x15
	.long	.LASF127
	.sleb128 2
	.byte	0x0
	.uleb128 0x2
	.long	.LASF128
	.byte	0x1
	.byte	0x71
	.long	0xa10
	.uleb128 0x5
	.byte	0x8
	.long	0x36b
	.uleb128 0x5
	.byte	0x8
	.long	0x988
	.uleb128 0xc
	.long	0xa52
	.long	0x3f
	.uleb128 0xd
	.long	0x5b
	.byte	0x2
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x5f4
	.uleb128 0xc
	.long	0xa68
	.long	0x301
	.uleb128 0xd
	.long	0x5b
	.byte	0xf
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x6c1
	.uleb128 0x17
	.byte	0x1
	.long	.LASF129
	.byte	0x1
	.byte	0x9b
	.byte	0x1
	.quad	.LFB101
	.quad	.LFE101
	.byte	0x1
	.byte	0x57
	.uleb128 0x17
	.byte	0x1
	.long	.LASF130
	.byte	0x1
	.byte	0xa1
	.byte	0x1
	.quad	.LFB102
	.quad	.LFE102
	.byte	0x1
	.byte	0x57
	.uleb128 0x18
	.long	0xad1
	.byte	0x1
	.long	.LASF151
	.byte	0x1
	.byte	0xa7
	.byte	0x1
	.quad	.LFB103
	.quad	.LFE103
	.byte	0x1
	.byte	0x57
	.uleb128 0x19
	.long	.LASF131
	.byte	0x1
	.byte	0xa6
	.long	0x69
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.uleb128 0x1a
	.long	0xb77
	.long	.LASF135
	.byte	0x1
	.byte	0xd4
	.byte	0x1
	.quad	.LFB105
	.quad	.LFE105
	.byte	0x1
	.byte	0x57
	.uleb128 0x1b
	.string	"ds"
	.byte	0x1
	.byte	0xd2
	.long	0xa36
	.byte	0x1
	.byte	0x53
	.uleb128 0x19
	.long	.LASF132
	.byte	0x1
	.byte	0xd3
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x19
	.long	.LASF133
	.byte	0x1
	.byte	0xd3
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x19
	.long	.LASF57
	.byte	0x1
	.byte	0xd3
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x19
	.long	.LASF58
	.byte	0x1
	.byte	0xd3
	.long	0x3f
	.byte	0x1
	.byte	0x58
	.uleb128 0x19
	.long	.LASF134
	.byte	0x1
	.byte	0xd3
	.long	0x30c
	.byte	0x1
	.byte	0x59
	.uleb128 0x1c
	.string	"d"
	.byte	0x1
	.byte	0xd5
	.long	0x775
	.byte	0x1
	.byte	0x50
	.uleb128 0x1c
	.string	"d1"
	.byte	0x1
	.byte	0xd5
	.long	0x775
	.byte	0x1
	.byte	0x51
	.uleb128 0x1c
	.string	"x"
	.byte	0x1
	.byte	0xd6
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x1c
	.string	"y"
	.byte	0x1
	.byte	0xd6
	.long	0x3f
	.byte	0x1
	.byte	0x55
	.uleb128 0x1c
	.string	"bpp"
	.byte	0x1
	.byte	0xd6
	.long	0x3f
	.byte	0x1
	.byte	0x5b
	.byte	0x0
	.uleb128 0x1d
	.long	0xc4d
	.long	.LASF136
	.byte	0x1
	.value	0x19c
	.byte	0x1
	.quad	.LFB108
	.quad	.LFE108
	.byte	0x1
	.byte	0x57
	.uleb128 0x1e
	.string	"ds"
	.byte	0x1
	.value	0x19a
	.long	0xa36
	.byte	0x1
	.byte	0x55
	.uleb128 0x1e
	.string	"x"
	.byte	0x1
	.value	0x19a
	.long	0x3f
	.byte	0x1
	.byte	0x5d
	.uleb128 0x1e
	.string	"y"
	.byte	0x1
	.value	0x19a
	.long	0x3f
	.byte	0x1
	.byte	0x5c
	.uleb128 0x1e
	.string	"ch"
	.byte	0x1
	.value	0x19a
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.uleb128 0x1f
	.long	.LASF82
	.byte	0x1
	.value	0x19b
	.long	0xc4d
	.byte	0x1
	.byte	0x56
	.uleb128 0x20
	.string	"d"
	.byte	0x1
	.value	0x19d
	.long	0x775
	.byte	0x1
	.byte	0x51
	.uleb128 0x21
	.long	.LASF137
	.byte	0x1
	.value	0x19e
	.long	0x355
	.byte	0x1
	.byte	0x52
	.uleb128 0x21
	.long	.LASF138
	.byte	0x1
	.value	0x19f
	.long	0x46
	.byte	0x1
	.byte	0x54
	.uleb128 0x22
	.long	.LASF55
	.byte	0x1
	.value	0x19f
	.long	0x46
	.uleb128 0x21
	.long	.LASF139
	.byte	0x1
	.value	0x19f
	.long	0x46
	.byte	0x1
	.byte	0x55
	.uleb128 0x23
	.string	"bpp"
	.byte	0x1
	.value	0x19f
	.long	0x46
	.uleb128 0x20
	.string	"i"
	.byte	0x1
	.value	0x1a0
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.uleb128 0x21
	.long	.LASF109
	.byte	0x1
	.value	0x1a1
	.long	0x46
	.byte	0x1
	.byte	0x58
	.uleb128 0x21
	.long	.LASF110
	.byte	0x1
	.value	0x1a1
	.long	0x46
	.byte	0x1
	.byte	0x59
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x955
	.uleb128 0x1d
	.long	0xcd9
	.long	.LASF140
	.byte	0x1
	.value	0x1e7
	.byte	0x1
	.quad	.LFB109
	.quad	.LFE109
	.byte	0x1
	.byte	0x57
	.uleb128 0x1e
	.string	"s"
	.byte	0x1
	.value	0x1e6
	.long	0xcd9
	.byte	0x1
	.byte	0x53
	.uleb128 0x21
	.long	.LASF83
	.byte	0x1
	.value	0x1e8
	.long	0xa3c
	.byte	0x1
	.byte	0x5d
	.uleb128 0x20
	.string	"c"
	.byte	0x1
	.value	0x1e8
	.long	0xa3c
	.byte	0x1
	.byte	0x52
	.uleb128 0x20
	.string	"c1"
	.byte	0x1
	.value	0x1e8
	.long	0xa3c
	.byte	0x1
	.byte	0x58
	.uleb128 0x20
	.string	"w1"
	.byte	0x1
	.value	0x1e9
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.uleb128 0x20
	.string	"x"
	.byte	0x1
	.value	0x1e9
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x20
	.string	"y"
	.byte	0x1
	.value	0x1e9
	.long	0x3f
	.byte	0x1
	.byte	0x59
	.uleb128 0x21
	.long	.LASF141
	.byte	0x1
	.value	0x1e9
	.long	0x3f
	.byte	0x1
	.byte	0x5c
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x455
	.uleb128 0x1d
	.long	0xd78
	.long	.LASF142
	.byte	0x1
	.value	0x207
	.byte	0x1
	.quad	.LFB110
	.quad	.LFE110
	.byte	0x1
	.byte	0x57
	.uleb128 0x1e
	.string	"s"
	.byte	0x1
	.value	0x206
	.long	0xcd9
	.byte	0x1
	.byte	0x53
	.uleb128 0x1e
	.string	"x"
	.byte	0x1
	.value	0x206
	.long	0x3f
	.byte	0x1
	.byte	0x5c
	.uleb128 0x1e
	.string	"y"
	.byte	0x1
	.value	0x206
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x20
	.string	"c"
	.byte	0x1
	.value	0x208
	.long	0xa3c
	.byte	0x1
	.byte	0x58
	.uleb128 0x23
	.string	"y1"
	.byte	0x1
	.value	0x209
	.long	0x3f
	.uleb128 0x20
	.string	"y2"
	.byte	0x1
	.value	0x209
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.uleb128 0x24
	.long	0xd78
	.quad	.LBB2
	.quad	.LBE2
	.uleb128 0x25
	.long	0xd85
	.byte	0x1
	.byte	0x50
	.uleb128 0x26
	.long	0xd8e
	.uleb128 0x26
	.long	0xd97
	.uleb128 0x26
	.long	0xda0
	.uleb128 0x26
	.long	0xda9
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.long	0xdb3
	.long	.LASF61
	.byte	0x2
	.byte	0x58
	.byte	0x1
	.byte	0x3
	.uleb128 0x28
	.string	"s"
	.byte	0x2
	.byte	0x57
	.long	0xa36
	.uleb128 0x28
	.string	"x"
	.byte	0x2
	.byte	0x57
	.long	0x3f
	.uleb128 0x28
	.string	"y"
	.byte	0x2
	.byte	0x57
	.long	0x3f
	.uleb128 0x28
	.string	"w"
	.byte	0x2
	.byte	0x57
	.long	0x3f
	.uleb128 0x28
	.string	"h"
	.byte	0x2
	.byte	0x57
	.long	0x3f
	.byte	0x0
	.uleb128 0x1d
	.long	0xe84
	.long	.LASF143
	.byte	0x1
	.value	0x21b
	.byte	0x1
	.quad	.LFB111
	.quad	.LFE111
	.byte	0x1
	.byte	0x57
	.uleb128 0x1e
	.string	"s"
	.byte	0x1
	.value	0x21a
	.long	0xcd9
	.byte	0x1
	.byte	0x53
	.uleb128 0x1f
	.long	.LASF144
	.byte	0x1
	.value	0x21a
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x20
	.string	"c"
	.byte	0x1
	.value	0x21c
	.long	0xa3c
	.byte	0x1
	.byte	0x58
	.uleb128 0x20
	.string	"y"
	.byte	0x1
	.value	0x21d
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.uleb128 0x23
	.string	"y1"
	.byte	0x1
	.value	0x21d
	.long	0x3f
	.uleb128 0x29
	.quad	.LBB11
	.quad	.LBE11
	.uleb128 0x20
	.string	"x"
	.byte	0x1
	.value	0x220
	.long	0x3f
	.byte	0x1
	.byte	0x5c
	.uleb128 0x2a
	.long	0xe61
	.long	0xd78
	.quad	.LBB12
	.quad	.LBE12
	.uleb128 0x25
	.long	0xd85
	.byte	0x1
	.byte	0x50
	.uleb128 0x26
	.long	0xd8e
	.uleb128 0x26
	.long	0xd97
	.uleb128 0x26
	.long	0xda0
	.uleb128 0x26
	.long	0xda9
	.byte	0x0
	.uleb128 0x29
	.quad	.LBB15
	.quad	.LBE15
	.uleb128 0x21
	.long	.LASF82
	.byte	0x1
	.value	0x22b
	.long	0x955
	.byte	0x2
	.byte	0x91
	.sleb128 14
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.long	0xf14
	.long	.LASF145
	.byte	0x1
	.value	0x238
	.byte	0x1
	.quad	.LFB112
	.quad	.LFE112
	.byte	0x1
	.byte	0x57
	.uleb128 0x1e
	.string	"s"
	.byte	0x1
	.value	0x237
	.long	0xcd9
	.byte	0x1
	.byte	0x5c
	.uleb128 0x20
	.string	"c"
	.byte	0x1
	.value	0x239
	.long	0xa3c
	.byte	0x1
	.byte	0x53
	.uleb128 0x20
	.string	"x"
	.byte	0x1
	.value	0x23a
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.uleb128 0x20
	.string	"y"
	.byte	0x1
	.value	0x23a
	.long	0x3f
	.byte	0x1
	.byte	0x5e
	.uleb128 0x20
	.string	"y1"
	.byte	0x1
	.value	0x23a
	.long	0x3f
	.byte	0x1
	.byte	0x5d
	.uleb128 0x24
	.long	0xd78
	.quad	.LBB16
	.quad	.LBE16
	.uleb128 0x25
	.long	0xd85
	.byte	0x1
	.byte	0x50
	.uleb128 0x26
	.long	0xd8e
	.uleb128 0x26
	.long	0xd97
	.uleb128 0x25
	.long	0xda0
	.byte	0x1
	.byte	0x52
	.uleb128 0x26
	.long	0xda9
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.long	0xf67
	.long	.LASF146
	.byte	0x1
	.value	0x251
	.byte	0x1
	.quad	.LFB113
	.quad	.LFE113
	.byte	0x1
	.byte	0x57
	.uleb128 0x1f
	.long	.LASF147
	.byte	0x1
	.value	0x250
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x20
	.string	"s"
	.byte	0x1
	.value	0x252
	.long	0xcd9
	.byte	0x1
	.byte	0x55
	.uleb128 0x20
	.string	"i"
	.byte	0x1
	.value	0x253
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x20
	.string	"y1"
	.byte	0x1
	.value	0x253
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x1d
	.long	0x104e
	.long	.LASF148
	.byte	0x1
	.value	0x273
	.byte	0x1
	.quad	.LFB114
	.quad	.LFE114
	.byte	0x1
	.byte	0x57
	.uleb128 0x1e
	.string	"s"
	.byte	0x1
	.value	0x272
	.long	0xcd9
	.byte	0x1
	.byte	0x53
	.uleb128 0x20
	.string	"c"
	.byte	0x1
	.value	0x274
	.long	0xa3c
	.byte	0x1
	.byte	0x51
	.uleb128 0x20
	.string	"x"
	.byte	0x1
	.value	0x275
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x23
	.string	"y1"
	.byte	0x1
	.value	0x275
	.long	0x3f
	.uleb128 0x2a
	.long	0x101c
	.long	0x104e
	.quad	.LBB19
	.quad	.LBE19
	.uleb128 0x26
	.long	0x105b
	.uleb128 0x26
	.long	0x1065
	.uleb128 0x26
	.long	0x106f
	.uleb128 0x26
	.long	0x1079
	.uleb128 0x26
	.long	0x1083
	.uleb128 0x26
	.long	0x108d
	.uleb128 0x25
	.long	0x1096
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.long	.Ldebug_ranges0+0x0
	.uleb128 0x2c
	.long	0x109f
	.byte	0x1
	.byte	0x5c
	.uleb128 0x2c
	.long	0x10a8
	.byte	0x1
	.byte	0x56
	.uleb128 0x2c
	.long	0x10b1
	.byte	0x1
	.byte	0x54
	.uleb128 0x2c
	.long	0x10bb
	.byte	0x1
	.byte	0x5d
	.uleb128 0x2d
	.long	0x10c4
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
	.long	0xd78
	.quad	.LBB22
	.quad	.LBE22
	.uleb128 0x25
	.long	0xd85
	.byte	0x1
	.byte	0x50
	.uleb128 0x26
	.long	0xd8e
	.uleb128 0x26
	.long	0xd97
	.uleb128 0x26
	.long	0xda0
	.uleb128 0x26
	.long	0xda9
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.long	0x10d0
	.long	.LASF149
	.byte	0x1
	.byte	0xf7
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.string	"ds"
	.byte	0x1
	.byte	0xf6
	.long	0xa36
	.uleb128 0x28
	.string	"xs"
	.byte	0x1
	.byte	0xf6
	.long	0x3f
	.uleb128 0x28
	.string	"ys"
	.byte	0x1
	.byte	0xf6
	.long	0x3f
	.uleb128 0x28
	.string	"xd"
	.byte	0x1
	.byte	0xf6
	.long	0x3f
	.uleb128 0x28
	.string	"yd"
	.byte	0x1
	.byte	0xf6
	.long	0x3f
	.uleb128 0x28
	.string	"w"
	.byte	0x1
	.byte	0xf6
	.long	0x3f
	.uleb128 0x28
	.string	"h"
	.byte	0x1
	.byte	0xf6
	.long	0x3f
	.uleb128 0x2e
	.string	"s"
	.byte	0x1
	.byte	0xf8
	.long	0x355
	.uleb128 0x2e
	.string	"d"
	.byte	0x1
	.byte	0xf9
	.long	0x775
	.uleb128 0x2e
	.string	"wb"
	.byte	0x1
	.byte	0xfa
	.long	0x3f
	.uleb128 0x2e
	.string	"y"
	.byte	0x1
	.byte	0xfa
	.long	0x3f
	.uleb128 0x2e
	.string	"bpp"
	.byte	0x1
	.byte	0xfa
	.long	0x3f
	.byte	0x0
	.uleb128 0x1d
	.long	0x112b
	.long	.LASF150
	.byte	0x1
	.value	0x2f9
	.byte	0x1
	.quad	.LFB116
	.quad	.LFE116
	.byte	0x1
	.byte	0x57
	.uleb128 0x1e
	.string	"s"
	.byte	0x1
	.value	0x2f8
	.long	0xcd9
	.byte	0x1
	.byte	0x55
	.uleb128 0x1e
	.string	"x"
	.byte	0x1
	.value	0x2f8
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x1e
	.string	"y"
	.byte	0x1
	.value	0x2f8
	.long	0x3f
	.byte	0x1
	.byte	0x58
	.uleb128 0x23
	.string	"y1"
	.byte	0x1
	.value	0x2fa
	.long	0x3f
	.uleb128 0x20
	.string	"c"
	.byte	0x1
	.value	0x2fb
	.long	0xa3c
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.uleb128 0x2f
	.long	0x118d
	.byte	0x1
	.long	.LASF152
	.byte	0x1
	.value	0x3e1
	.byte	0x1
	.quad	.LFB118
	.quad	.LFE118
	.byte	0x1
	.byte	0x57
	.uleb128 0x1f
	.long	.LASF153
	.byte	0x1
	.value	0x3e0
	.long	0x46
	.byte	0x1
	.byte	0x55
	.uleb128 0x20
	.string	"s"
	.byte	0x1
	.value	0x3e2
	.long	0xcd9
	.byte	0x1
	.byte	0x53
	.uleb128 0x24
	.long	0x118d
	.quad	.LBB35
	.quad	.LBE35
	.uleb128 0x26
	.long	0x119a
	.uleb128 0x26
	.long	0x11a3
	.uleb128 0x25
	.long	0x11ac
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.long	0x11b6
	.long	.LASF62
	.byte	0x2
	.byte	0x5d
	.byte	0x1
	.byte	0x3
	.uleb128 0x28
	.string	"s"
	.byte	0x2
	.byte	0x5c
	.long	0xa36
	.uleb128 0x28
	.string	"w"
	.byte	0x2
	.byte	0x5c
	.long	0x3f
	.uleb128 0x28
	.string	"h"
	.byte	0x2
	.byte	0x5c
	.long	0x3f
	.byte	0x0
	.uleb128 0x30
	.long	0x1291
	.long	.LASF154
	.byte	0x1
	.value	0x3fc
	.byte	0x1
	.long	0x3f
	.quad	.LFB119
	.quad	.LFE119
	.byte	0x1
	.byte	0x57
	.uleb128 0x1e
	.string	"chr"
	.byte	0x1
	.value	0x3fb
	.long	0xa52
	.byte	0x1
	.byte	0x55
	.uleb128 0x1e
	.string	"buf"
	.byte	0x1
	.value	0x3fb
	.long	0x355
	.byte	0x1
	.byte	0x5f
	.uleb128 0x1e
	.string	"len"
	.byte	0x1
	.value	0x3fb
	.long	0x3f
	.byte	0x1
	.byte	0x5d
	.uleb128 0x20
	.string	"s"
	.byte	0x1
	.value	0x3fd
	.long	0xcd9
	.byte	0x1
	.byte	0x56
	.uleb128 0x20
	.string	"i"
	.byte	0x1
	.value	0x3fe
	.long	0x3f
	.byte	0x1
	.byte	0x5c
	.uleb128 0x2a
	.long	0x1268
	.long	0x1291
	.quad	.LBB37
	.quad	.LBE37
	.uleb128 0x26
	.long	0x129f
	.uleb128 0x25
	.long	0x12a9
	.byte	0x1
	.byte	0x53
	.uleb128 0x2b
	.long	.Ldebug_ranges0+0x40
	.uleb128 0x2c
	.long	0x12b4
	.byte	0x1
	.byte	0x50
	.uleb128 0x2d
	.long	0x12be
	.uleb128 0x2c
	.long	0x12c9
	.byte	0x1
	.byte	0x51
	.uleb128 0x2c
	.long	0x12d3
	.byte	0x1
	.byte	0x53
	.uleb128 0x2c
	.long	0x12dd
	.byte	0x1
	.byte	0x5e
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
	.long	0x12e8
	.quad	.LBB61
	.quad	.LBE61
	.uleb128 0x26
	.long	0x12f6
	.uleb128 0x2b
	.long	.Ldebug_ranges0+0x150
	.uleb128 0x2c
	.long	0x1300
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.long	0x12e8
	.long	.LASF155
	.byte	0x1
	.value	0x303
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.string	"s"
	.byte	0x1
	.value	0x302
	.long	0xcd9
	.uleb128 0x32
	.string	"ch"
	.byte	0x1
	.value	0x302
	.long	0x3f
	.uleb128 0x23
	.string	"c"
	.byte	0x1
	.value	0x304
	.long	0xa3c
	.uleb128 0x23
	.string	"y1"
	.byte	0x1
	.value	0x305
	.long	0x3f
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.value	0x305
	.long	0x3f
	.uleb128 0x23
	.string	"x"
	.byte	0x1
	.value	0x306
	.long	0x3f
	.uleb128 0x23
	.string	"y"
	.byte	0x1
	.value	0x306
	.long	0x3f
	.byte	0x0
	.uleb128 0x31
	.long	0x130b
	.long	.LASF156
	.byte	0x1
	.value	0x29c
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.string	"s"
	.byte	0x1
	.value	0x29b
	.long	0xcd9
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.value	0x29d
	.long	0x3f
	.byte	0x0
	.uleb128 0x1d
	.long	0x135f
	.long	.LASF157
	.byte	0x1
	.value	0x409
	.byte	0x1
	.quad	.LFB120
	.quad	.LFE120
	.byte	0x1
	.byte	0x57
	.uleb128 0x1e
	.string	"chr"
	.byte	0x1
	.value	0x408
	.long	0xa52
	.byte	0x1
	.byte	0x55
	.uleb128 0x1f
	.long	.LASF158
	.byte	0x1
	.value	0x408
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x20
	.string	"s"
	.byte	0x1
	.value	0x40a
	.long	0xcd9
	.byte	0x1
	.byte	0x52
	.uleb128 0x20
	.string	"i"
	.byte	0x1
	.value	0x40b
	.long	0x3f
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x1d
	.long	0x13fb
	.long	.LASF159
	.byte	0x1
	.value	0x418
	.byte	0x1
	.quad	.LFB121
	.quad	.LFE121
	.byte	0x1
	.byte	0x57
	.uleb128 0x1f
	.long	.LASF59
	.byte	0x1
	.value	0x417
	.long	0xa6
	.byte	0x1
	.byte	0x55
	.uleb128 0x20
	.string	"s"
	.byte	0x1
	.value	0x419
	.long	0xcd9
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x20
	.string	"len"
	.byte	0x1
	.value	0x41a
	.long	0x3f
	.byte	0x1
	.byte	0x5f
	.uleb128 0x20
	.string	"buf"
	.byte	0x1
	.value	0x41b
	.long	0xa58
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2a
	.long	0x13e6
	.long	0x13fb
	.quad	.LBB73
	.quad	.LBE73
	.uleb128 0x25
	.long	0x140c
	.byte	0x1
	.byte	0x56
	.uleb128 0x25
	.long	0x1415
	.byte	0x1
	.byte	0x5e
	.uleb128 0x25
	.long	0x1420
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x2b
	.long	.Ldebug_ranges0+0x180
	.uleb128 0x2c
	.long	0x142b
	.byte	0x1
	.byte	0x53
	.uleb128 0x2c
	.long	0x1434
	.byte	0x1
	.byte	0x5d
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
	.long	0x1440
	.long	.LASF160
	.byte	0x1
	.byte	0x58
	.byte	0x1
	.long	0x3f
	.byte	0x1
	.uleb128 0x28
	.string	"f"
	.byte	0x1
	.byte	0x57
	.long	0x1440
	.uleb128 0x28
	.string	"buf"
	.byte	0x1
	.byte	0x57
	.long	0x775
	.uleb128 0x34
	.long	.LASF161
	.byte	0x1
	.byte	0x57
	.long	0x3f
	.uleb128 0x2e
	.string	"l"
	.byte	0x1
	.byte	0x59
	.long	0x3f
	.uleb128 0x2e
	.string	"len"
	.byte	0x1
	.byte	0x59
	.long	0x3f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xa05
	.uleb128 0x2f
	.long	0x14e5
	.byte	0x1
	.long	.LASF162
	.byte	0x1
	.value	0x42f
	.byte	0x1
	.quad	.LFB122
	.quad	.LFE122
	.byte	0x1
	.byte	0x57
	.uleb128 0x1f
	.long	.LASF163
	.byte	0x1
	.value	0x42e
	.long	0x3f
	.byte	0x1
	.byte	0x55
	.uleb128 0x20
	.string	"s"
	.byte	0x1
	.value	0x430
	.long	0xcd9
	.byte	0x1
	.byte	0x5f
	.uleb128 0x20
	.string	"buf"
	.byte	0x1
	.value	0x431
	.long	0xa58
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x20
	.string	"q"
	.byte	0x1
	.value	0x431
	.long	0x775
	.byte	0x1
	.byte	0x55
	.uleb128 0x23
	.string	"c"
	.byte	0x1
	.value	0x432
	.long	0x3f
	.uleb128 0x24
	.long	0x14e5
	.quad	.LBB78
	.quad	.LBE78
	.uleb128 0x25
	.long	0x14f6
	.byte	0x1
	.byte	0x5c
	.uleb128 0x25
	.long	0x14ff
	.byte	0x1
	.byte	0x5e
	.uleb128 0x25
	.long	0x150a
	.byte	0x1
	.byte	0x58
	.uleb128 0x2b
	.long	.Ldebug_ranges0+0x1b0
	.uleb128 0x2c
	.long	0x1515
	.byte	0x1
	.byte	0x56
	.uleb128 0x2c
	.long	0x151e
	.byte	0x1
	.byte	0x5d
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
	.long	0x152a
	.long	.LASF164
	.byte	0x1
	.byte	0x41
	.byte	0x1
	.long	0x3f
	.byte	0x1
	.uleb128 0x28
	.string	"f"
	.byte	0x1
	.byte	0x40
	.long	0x1440
	.uleb128 0x28
	.string	"buf"
	.byte	0x1
	.byte	0x40
	.long	0x355
	.uleb128 0x34
	.long	.LASF161
	.byte	0x1
	.byte	0x40
	.long	0x3f
	.uleb128 0x2e
	.string	"l"
	.byte	0x1
	.byte	0x42
	.long	0x3f
	.uleb128 0x2e
	.string	"len"
	.byte	0x1
	.byte	0x42
	.long	0x3f
	.byte	0x0
	.uleb128 0x30
	.long	0x1581
	.long	.LASF165
	.byte	0x1
	.value	0x460
	.byte	0x1
	.long	0xcd9
	.quad	.LFB123
	.quad	.LFE123
	.byte	0x1
	.byte	0x57
	.uleb128 0x1e
	.string	"ds"
	.byte	0x1
	.value	0x45f
	.long	0xa36
	.byte	0x1
	.byte	0x56
	.uleb128 0x1f
	.long	.LASF69
	.byte	0x1
	.value	0x45f
	.long	0xa2b
	.byte	0x1
	.byte	0x53
	.uleb128 0x20
	.string	"s"
	.byte	0x1
	.value	0x461
	.long	0xcd9
	.byte	0x1
	.byte	0x54
	.uleb128 0x20
	.string	"i"
	.byte	0x1
	.value	0x462
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x35
	.long	0x15f7
	.byte	0x1
	.long	.LASF166
	.byte	0x1
	.value	0x482
	.byte	0x1
	.long	0xcd9
	.quad	.LFB124
	.quad	.LFE124
	.byte	0x1
	.byte	0x57
	.uleb128 0x1e
	.string	"ds"
	.byte	0x1
	.value	0x47e
	.long	0xa36
	.byte	0x1
	.byte	0x55
	.uleb128 0x1f
	.long	.LASF167
	.byte	0x1
	.value	0x47e
	.long	0x882
	.byte	0x1
	.byte	0x53
	.uleb128 0x1f
	.long	.LASF168
	.byte	0x1
	.value	0x47f
	.long	0x893
	.byte	0x1
	.byte	0x56
	.uleb128 0x1f
	.long	.LASF169
	.byte	0x1
	.value	0x480
	.long	0x89e
	.byte	0x1
	.byte	0x5c
	.uleb128 0x1f
	.long	.LASF59
	.byte	0x1
	.value	0x481
	.long	0xa6
	.byte	0x1
	.byte	0x5d
	.uleb128 0x20
	.string	"s"
	.byte	0x1
	.value	0x483
	.long	0xcd9
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x36
	.byte	0x1
	.long	.LASF170
	.byte	0x1
	.value	0x490
	.byte	0x1
	.long	0x3f
	.quad	.LFB125
	.quad	.LFE125
	.byte	0x1
	.byte	0x57
	.uleb128 0x2f
	.long	0x16bf
	.byte	0x1
	.long	.LASF171
	.byte	0x1
	.value	0x495
	.byte	0x1
	.quad	.LFB126
	.quad	.LFE126
	.byte	0x1
	.byte	0x57
	.uleb128 0x1e
	.string	"ds"
	.byte	0x1
	.value	0x494
	.long	0xa36
	.byte	0x1
	.byte	0x55
	.uleb128 0x20
	.string	"i"
	.byte	0x1
	.value	0x496
	.long	0x3f
	.byte	0x1
	.byte	0x59
	.uleb128 0x20
	.string	"j"
	.byte	0x1
	.value	0x496
	.long	0x3f
	.byte	0x1
	.byte	0x5a
	.uleb128 0x24
	.long	0x16bf
	.quad	.LBB82
	.quad	.LBE82
	.uleb128 0x26
	.long	0x16d1
	.uleb128 0x25
	.long	0x16dc
	.byte	0x1
	.byte	0x51
	.uleb128 0x24
	.long	0x16e9
	.quad	.LBB83
	.quad	.LBE83
	.uleb128 0x26
	.long	0x16fa
	.uleb128 0x25
	.long	0x1704
	.byte	0x1
	.byte	0x51
	.uleb128 0x2b
	.long	.Ldebug_ranges0+0x1e0
	.uleb128 0x2d
	.long	0x170f
	.uleb128 0x2d
	.long	0x1718
	.uleb128 0x2c
	.long	0x1721
	.byte	0x1
	.byte	0x54
	.uleb128 0x2c
	.long	0x172a
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.long	0x16e9
	.long	.LASF172
	.byte	0x1
	.value	0x169
	.byte	0x1
	.long	0x46
	.byte	0x3
	.uleb128 0x32
	.string	"ds"
	.byte	0x1
	.value	0x168
	.long	0xa36
	.uleb128 0x32
	.string	"col"
	.byte	0x1
	.value	0x168
	.long	0x46
	.byte	0x0
	.uleb128 0x33
	.long	0x1736
	.long	.LASF173
	.byte	0x1
	.byte	0xb0
	.byte	0x1
	.long	0x46
	.byte	0x1
	.uleb128 0x28
	.string	"ds"
	.byte	0x1
	.byte	0xaf
	.long	0xa36
	.uleb128 0x34
	.long	.LASF174
	.byte	0x1
	.byte	0xaf
	.long	0x46
	.uleb128 0x2e
	.string	"r"
	.byte	0x1
	.byte	0xb1
	.long	0x46
	.uleb128 0x2e
	.string	"g"
	.byte	0x1
	.byte	0xb1
	.long	0x46
	.uleb128 0x2e
	.string	"b"
	.byte	0x1
	.byte	0xb1
	.long	0x46
	.uleb128 0x38
	.long	.LASF134
	.byte	0x1
	.byte	0xb1
	.long	0x46
	.byte	0x0
	.uleb128 0x35
	.long	0x17c1
	.byte	0x1
	.long	.LASF175
	.byte	0x1
	.value	0x4a0
	.byte	0x1
	.long	0xa52
	.quad	.LFB127
	.quad	.LFE127
	.byte	0x1
	.byte	0x57
	.uleb128 0x1e
	.string	"ds"
	.byte	0x1
	.value	0x49f
	.long	0xa36
	.byte	0x1
	.byte	0x53
	.uleb128 0x1e
	.string	"p"
	.byte	0x1
	.value	0x49f
	.long	0x69
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x20
	.string	"chr"
	.byte	0x1
	.value	0x4a1
	.long	0xa52
	.byte	0x1
	.byte	0x56
	.uleb128 0x20
	.string	"s"
	.byte	0x1
	.value	0x4a2
	.long	0xcd9
	.byte	0x1
	.byte	0x53
	.uleb128 0x21
	.long	.LASF57
	.byte	0x1
	.value	0x4a3
	.long	0x46
	.byte	0x1
	.byte	0x5c
	.uleb128 0x21
	.long	.LASF58
	.byte	0x1
	.value	0x4a4
	.long	0x46
	.byte	0x1
	.byte	0x5d
	.uleb128 0x21
	.long	.LASF176
	.byte	0x1
	.value	0x4a5
	.long	0x3f
	.byte	0x9
	.byte	0x3
	.quad	color_inited.0
	.byte	0x0
	.uleb128 0x39
	.long	.LASF177
	.byte	0x6
	.byte	0x91
	.long	0x2c5
	.byte	0x1
	.byte	0x1
	.uleb128 0x39
	.long	.LASF178
	.byte	0x6
	.byte	0x92
	.long	0x2c5
	.byte	0x1
	.byte	0x1
	.uleb128 0x39
	.long	.LASF179
	.byte	0xa
	.byte	0xd
	.long	0x17e8
	.byte	0x1
	.byte	0x1
	.uleb128 0x5
	.byte	0x8
	.long	0x8c0
	.uleb128 0x3a
	.long	.LASF180
	.byte	0x1
	.byte	0x96
	.long	0xcd9
	.byte	0x9
	.byte	0x3
	.quad	active_console
	.uleb128 0xc
	.long	0x1813
	.long	0xcd9
	.uleb128 0xd
	.long	0x5b
	.byte	0xb
	.byte	0x0
	.uleb128 0x3a
	.long	.LASF181
	.byte	0x1
	.byte	0x97
	.long	0x1803
	.byte	0x9
	.byte	0x3
	.quad	consoles
	.uleb128 0x3a
	.long	.LASF182
	.byte	0x1
	.byte	0x98
	.long	0x3f
	.byte	0x9
	.byte	0x3
	.quad	nb_consoles
	.uleb128 0xc
	.long	0x184e
	.long	0x301
	.uleb128 0x3b
	.long	0x5b
	.value	0xfff
	.byte	0x0
	.uleb128 0x3a
	.long	.LASF183
	.byte	0xb
	.byte	0x1
	.long	0x183d
	.byte	0x9
	.byte	0x3
	.quad	vgafont16
	.uleb128 0xc
	.long	0x1873
	.long	0x1873
	.uleb128 0xd
	.long	0x5b
	.byte	0xf
	.byte	0x0
	.uleb128 0x6
	.long	0x30c
	.uleb128 0x21
	.long	.LASF184
	.byte	0x1
	.value	0x12a
	.long	0x188e
	.byte	0x9
	.byte	0x3
	.quad	dmask16
	.uleb128 0x6
	.long	0x1863
	.uleb128 0xc
	.long	0x18a3
	.long	0x1873
	.uleb128 0xd
	.long	0x5b
	.byte	0x3
	.byte	0x0
	.uleb128 0x21
	.long	.LASF185
	.byte	0x1
	.value	0x13d
	.long	0x18b9
	.byte	0x9
	.byte	0x3
	.quad	dmask4
	.uleb128 0x6
	.long	0x1893
	.uleb128 0xc
	.long	0x18d4
	.long	0x30c
	.uleb128 0xd
	.long	0x5b
	.byte	0x1
	.uleb128 0xd
	.long	0x5b
	.byte	0x7
	.byte	0x0
	.uleb128 0x21
	.long	.LASF186
	.byte	0x1
	.value	0x144
	.long	0x18be
	.byte	0x9
	.byte	0x3
	.quad	color_table
	.uleb128 0xc
	.long	0x1900
	.long	0x1873
	.uleb128 0xd
	.long	0x5b
	.byte	0x1
	.uleb128 0xd
	.long	0x5b
	.byte	0x7
	.byte	0x0
	.uleb128 0x21
	.long	.LASF187
	.byte	0x1
	.value	0x151
	.long	0x1916
	.byte	0x9
	.byte	0x3
	.quad	color_table_rgb
	.uleb128 0x6
	.long	0x18ea
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
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0xc
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1b
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x3b
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0xd0
	.value	0x2
	.long	.Ldebug_info0
	.long	0x191c
	.long	0xa6e
	.string	"vga_hw_update"
	.long	0xa89
	.string	"vga_hw_invalidate"
	.long	0xaa4
	.string	"vga_hw_screen_dump"
	.long	0x112b
	.string	"console_select"
	.long	0x1446
	.string	"kbd_put_keysym"
	.long	0x1581
	.string	"graphic_console_init"
	.long	0x15f7
	.string	"is_graphic_console"
	.long	0x1617
	.string	"console_color_init"
	.long	0x1736
	.string	"text_console_init"
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
	.quad	.LBB20-.Ltext0
	.quad	.LBE20-.Ltext0
	.quad	.LBB34-.Ltext0
	.quad	.LBE34-.Ltext0
	.quad	.LBB21-.Ltext0
	.quad	.LBE21-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB38-.Ltext0
	.quad	.LBE38-.Ltext0
	.quad	.LBB72-.Ltext0
	.quad	.LBE72-.Ltext0
	.quad	.LBB70-.Ltext0
	.quad	.LBE70-.Ltext0
	.quad	.LBB66-.Ltext0
	.quad	.LBE66-.Ltext0
	.quad	.LBB64-.Ltext0
	.quad	.LBE64-.Ltext0
	.quad	.LBB60-.Ltext0
	.quad	.LBE60-.Ltext0
	.quad	.LBB58-.Ltext0
	.quad	.LBE58-.Ltext0
	.quad	.LBB56-.Ltext0
	.quad	.LBE56-.Ltext0
	.quad	.LBB54-.Ltext0
	.quad	.LBE54-.Ltext0
	.quad	.LBB52-.Ltext0
	.quad	.LBE52-.Ltext0
	.quad	.LBB50-.Ltext0
	.quad	.LBE50-.Ltext0
	.quad	.LBB48-.Ltext0
	.quad	.LBE48-.Ltext0
	.quad	.LBB46-.Ltext0
	.quad	.LBE46-.Ltext0
	.quad	.LBB44-.Ltext0
	.quad	.LBE44-.Ltext0
	.quad	.LBB42-.Ltext0
	.quad	.LBE42-.Ltext0
	.quad	.LBB40-.Ltext0
	.quad	.LBE40-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB62-.Ltext0
	.quad	.LBE62-.Ltext0
	.quad	.LBB68-.Ltext0
	.quad	.LBE68-.Ltext0
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
	.quad	.LBB81-.Ltext0
	.quad	.LBE81-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB84-.Ltext0
	.quad	.LBE84-.Ltext0
	.quad	.LBB95-.Ltext0
	.quad	.LBE95-.Ltext0
	.quad	.LBB90-.Ltext0
	.quad	.LBE90-.Ltext0
	.quad	.LBB89-.Ltext0
	.quad	.LBE89-.Ltext0
	.quad	0x0
	.quad	0x0
	.section	.debug_str,"MS",@progbits,1
.LASF9:
	.string	"size_t"
.LASF79:
	.string	"y_displayed"
.LASF154:
	.string	"console_puts"
.LASF125:
	.string	"GRAPHIC_CONSOLE"
.LASF63:
	.string	"dpy_refresh"
.LASF139:
	.string	"xorcol"
.LASF24:
	.string	"_IO_save_end"
.LASF66:
	.string	"mouse_set"
.LASF65:
	.string	"dpy_fill"
.LASF110:
	.string	"bgcol"
.LASF118:
	.string	"TTY_STATE_ESC"
.LASF17:
	.string	"_IO_write_base"
.LASF159:
	.string	"kbd_send_chars"
.LASF184:
	.string	"dmask16"
.LASF84:
	.string	"state"
.LASF33:
	.string	"_lock"
.LASF51:
	.string	"IOReadHandler"
.LASF186:
	.string	"color_table"
.LASF22:
	.string	"_IO_save_base"
.LASF30:
	.string	"_cur_column"
.LASF181:
	.string	"consoles"
.LASF107:
	.string	"QEMUClock"
.LASF187:
	.string	"color_table_rgb"
.LASF144:
	.string	"show"
.LASF112:
	.string	"uline"
.LASF20:
	.string	"_IO_buf_base"
.LASF2:
	.string	"long int"
.LASF55:
	.string	"linesize"
.LASF128:
	.string	"console_type_t"
.LASF44:
	.string	"_IO_marker"
.LASF137:
	.string	"font_ptr"
.LASF59:
	.string	"opaque"
.LASF156:
	.string	"console_handle_escape"
.LASF165:
	.string	"new_console"
.LASF185:
	.string	"dmask4"
.LASF146:
	.string	"console_scroll"
.LASF82:
	.string	"t_attrib"
.LASF60:
	.string	"gui_timer"
.LASF43:
	.string	"_IO_FILE"
.LASF173:
	.string	"vga_get_color"
.LASF148:
	.string	"console_put_lf"
.LASF176:
	.string	"color_inited"
.LASF6:
	.string	"unsigned char"
.LASF149:
	.string	"vga_bitblt"
.LASF182:
	.string	"nb_consoles"
.LASF92:
	.string	"chr_update_read_handler"
.LASF167:
	.string	"update"
.LASF72:
	.string	"hw_screen_dump"
.LASF189:
	.string	"console.c"
.LASF106:
	.string	"vga_hw_screen_dump_ptr"
.LASF78:
	.string	"y_saved"
.LASF5:
	.string	"char"
.LASF42:
	.string	"_IO_lock_t"
.LASF131:
	.string	"filename"
.LASF69:
	.string	"console_type"
.LASF130:
	.string	"vga_hw_invalidate"
.LASF180:
	.string	"active_console"
.LASF14:
	.string	"_IO_read_ptr"
.LASF99:
	.string	"chr_close"
.LASF47:
	.string	"_pos"
.LASF177:
	.string	"stdin"
.LASF116:
	.string	"TextCell"
.LASF25:
	.string	"_markers"
.LASF171:
	.string	"console_color_init"
.LASF76:
	.string	"backscroll_height"
.LASF164:
	.string	"qemu_fifo_write"
.LASF97:
	.string	"handler_opaque"
.LASF93:
	.string	"chr_ioctl"
.LASF53:
	.string	"DisplayState"
.LASF88:
	.string	"out_fifo_buf"
.LASF41:
	.string	"_unused2"
.LASF153:
	.string	"index"
.LASF0:
	.string	"long unsigned int"
.LASF121:
	.string	"buf_size"
.LASF28:
	.string	"_flags2"
.LASF16:
	.string	"_IO_read_base"
.LASF108:
	.string	"TextAttributes"
.LASF109:
	.string	"fgcol"
.LASF158:
	.string	"event"
.LASF119:
	.string	"TTY_STATE_CSI"
.LASF29:
	.string	"_old_offset"
.LASF95:
	.string	"chr_can_read"
.LASF3:
	.string	"long long int"
.LASF183:
	.string	"vgafont16"
.LASF57:
	.string	"width"
.LASF86:
	.string	"nb_esc_params"
.LASF133:
	.string	"posy"
.LASF19:
	.string	"_IO_write_end"
.LASF56:
	.string	"depth"
.LASF100:
	.string	"chr_accept_input"
.LASF111:
	.string	"bold"
.LASF77:
	.string	"x_saved"
.LASF122:
	.string	"count"
.LASF170:
	.string	"is_graphic_console"
.LASF120:
	.string	"QEMUFIFO"
.LASF143:
	.string	"console_show_cursor"
.LASF45:
	.string	"_next"
.LASF1:
	.string	"unsigned int"
.LASF162:
	.string	"kbd_put_keysym"
.LASF179:
	.string	"rt_clock"
.LASF188:
	.string	"GNU C 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
.LASF172:
	.string	"col_expand"
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
.LASF141:
	.string	"last_width"
.LASF160:
	.string	"qemu_fifo_read"
.LASF73:
	.string	"g_width"
.LASF13:
	.string	"_flags"
.LASF161:
	.string	"len1"
.LASF147:
	.string	"ydelta"
.LASF102:
	.string	"QEMUTimer"
.LASF40:
	.string	"_mode"
.LASF136:
	.string	"vga_putcharxy"
.LASF175:
	.string	"text_console_init"
.LASF90:
	.string	"CharDriverState"
.LASF129:
	.string	"vga_hw_update"
.LASF85:
	.string	"esc_params"
.LASF34:
	.string	"_offset"
.LASF157:
	.string	"console_send_event"
.LASF101:
	.string	"focus"
.LASF151:
	.string	"vga_hw_screen_dump"
.LASF12:
	.string	"long long unsigned int"
.LASF48:
	.string	"uint8_t"
.LASF10:
	.string	"__off_t"
.LASF26:
	.string	"_chain"
.LASF68:
	.string	"TextConsole"
.LASF114:
	.string	"invers"
.LASF89:
	.string	"kbd_timer"
.LASF123:
	.string	"wptr"
.LASF163:
	.string	"keysym"
.LASF94:
	.string	"chr_event"
.LASF23:
	.string	"_IO_backup_base"
.LASF32:
	.string	"_shortbuf"
.LASF81:
	.string	"t_attrib_default"
.LASF152:
	.string	"console_select"
.LASF113:
	.string	"blink"
.LASF134:
	.string	"color"
.LASF11:
	.string	"__off64_t"
.LASF190:
	.string	"/home/remco/Projects/Argos/src"
.LASF83:
	.string	"cells"
.LASF155:
	.string	"console_putchar"
.LASF115:
	.string	"unvisible"
.LASF50:
	.string	"QEMUBH"
.LASF21:
	.string	"_IO_buf_end"
.LASF166:
	.string	"graphic_console_init"
.LASF62:
	.string	"dpy_resize"
.LASF191:
	.string	"TTYState"
.LASF140:
	.string	"text_console_resize"
.LASF67:
	.string	"cursor_define"
.LASF8:
	.string	"short int"
.LASF150:
	.string	"console_clear_xy"
.LASF74:
	.string	"g_height"
.LASF132:
	.string	"posx"
.LASF31:
	.string	"_vtable_offset"
.LASF105:
	.string	"vga_hw_invalidate_ptr"
.LASF80:
	.string	"y_base"
.LASF70:
	.string	"hw_update"
.LASF117:
	.string	"TTY_STATE_NORM"
.LASF104:
	.string	"vga_hw_update_ptr"
.LASF52:
	.string	"IOCanRWHandler"
.LASF7:
	.string	"signed char"
.LASF169:
	.string	"screen_dump"
.LASF61:
	.string	"dpy_update"
.LASF75:
	.string	"total_height"
.LASF142:
	.string	"update_xy"
.LASF15:
	.string	"_IO_read_end"
.LASF64:
	.string	"dpy_copy"
.LASF145:
	.string	"console_refresh"
.LASF49:
	.string	"uint32_t"
.LASF27:
	.string	"_fileno"
.LASF98:
	.string	"chr_send_event"
.LASF103:
	.string	"IOEventHandler"
.LASF127:
	.string	"TEXT_CONSOLE_FIXED_SIZE"
.LASF4:
	.string	"short unsigned int"
.LASF178:
	.string	"stdout"
.LASF91:
	.string	"chr_write"
.LASF135:
	.string	"vga_fill_rect"
.LASF71:
	.string	"hw_invalidate"
.LASF18:
	.string	"_IO_write_ptr"
.LASF138:
	.string	"font_data"
.LASF124:
	.string	"rptr"
.LASF96:
	.string	"chr_read"
.LASF54:
	.string	"data"
.LASF168:
	.string	"invalidate"
.LASF126:
	.string	"TEXT_CONSOLE"
.LASF87:
	.string	"out_fifo"
.LASF174:
	.string	"rgba"
.LASF58:
	.string	"height"
	.section	.note.GNU-stack,"",@progbits
	.ident	"GCC: (GNU) 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
