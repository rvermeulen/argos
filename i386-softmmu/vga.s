	.file	"vga.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
.globl gr_mask
	.section	.rodata
	.align 16
	.type	gr_mask, @object
	.size	gr_mask, 16
gr_mask:
	.byte	15
	.byte	15
	.byte	15
	.byte	31
	.byte	3
	.byte	123
	.byte	15
	.byte	15
	.byte	-1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
.globl sr_mask
	.type	sr_mask, @object
	.size	sr_mask, 8
sr_mask:
	.byte	3
	.byte	61
	.byte	15
	.byte	63
	.byte	14
	.byte	0
	.byte	0
	.byte	-1
	.data
	.align 16
	.type	vga_mem_write, @object
	.size	vga_mem_write, 24
vga_mem_write:
	.quad	vga_mem_writeb
	.quad	vga_mem_writew
	.quad	vga_mem_writel
	.align 16
	.type	vga_mem_read, @object
	.size	vga_mem_read, 24
vga_mem_read:
	.quad	vga_mem_readb
	.quad	vga_mem_readw
	.quad	vga_mem_readl
	.align 16
	.type	vga_mm_write_ctrl, @object
	.size	vga_mm_write_ctrl, 24
vga_mm_write_ctrl:
	.quad	vga_mm_writeb
	.quad	vga_mm_writew
	.quad	vga_mm_writel
	.align 16
	.type	vga_mm_read_ctrl, @object
	.size	vga_mm_read_ctrl, 24
vga_mm_read_ctrl:
	.quad	vga_mm_readb
	.quad	vga_mm_readw
	.quad	vga_mm_readl
	.align 32
	.type	rgb_to_pixel_dup_table, @object
	.size	rgb_to_pixel_dup_table, 56
rgb_to_pixel_dup_table:
	.quad	rgb_to_pixel8_dup
	.quad	rgb_to_pixel15_dup
	.quad	rgb_to_pixel16_dup
	.quad	rgb_to_pixel32_dup
	.quad	rgb_to_pixel32bgr_dup
	.quad	rgb_to_pixel15bgr_dup
	.quad	rgb_to_pixel16bgr_dup
	.section	.rodata
	.align 32
	.type	cursor_glyph, @object
	.size	cursor_glyph, 128
cursor_glyph:
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
	.data
	.align 32
	.type	vga_draw_glyph9_table, @object
	.size	vga_draw_glyph9_table, 56
vga_draw_glyph9_table:
	.quad	vga_draw_glyph9_8
	.quad	vga_draw_glyph9_16
	.quad	vga_draw_glyph9_16
	.quad	vga_draw_glyph9_32
	.quad	vga_draw_glyph9_32
	.quad	vga_draw_glyph9_16
	.quad	vga_draw_glyph9_16
	.align 32
	.type	vga_draw_glyph8_table, @object
	.size	vga_draw_glyph8_table, 56
vga_draw_glyph8_table:
	.quad	vga_draw_glyph8_8
	.quad	vga_draw_glyph8_16
	.quad	vga_draw_glyph8_16
	.quad	vga_draw_glyph8_32
	.quad	vga_draw_glyph8_32
	.quad	vga_draw_glyph8_16
	.quad	vga_draw_glyph8_16
	.align 32
	.type	vga_draw_glyph16_table, @object
	.size	vga_draw_glyph16_table, 56
vga_draw_glyph16_table:
	.quad	vga_draw_glyph16_8
	.quad	vga_draw_glyph16_16
	.quad	vga_draw_glyph16_16
	.quad	vga_draw_glyph16_32
	.quad	vga_draw_glyph16_32
	.quad	vga_draw_glyph16_16
	.quad	vga_draw_glyph16_16
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
	.type	vga_draw_line_table, @object
	.size	vga_draw_line_table, 560
vga_draw_line_table:
	.quad	vga_draw_line2_8
	.quad	vga_draw_line2_16
	.quad	vga_draw_line2_16
	.quad	vga_draw_line2_32
	.quad	vga_draw_line2_32
	.quad	vga_draw_line2_16
	.quad	vga_draw_line2_16
	.quad	vga_draw_line2d2_8
	.quad	vga_draw_line2d2_16
	.quad	vga_draw_line2d2_16
	.quad	vga_draw_line2d2_32
	.quad	vga_draw_line2d2_32
	.quad	vga_draw_line2d2_16
	.quad	vga_draw_line2d2_16
	.quad	vga_draw_line4_8
	.quad	vga_draw_line4_16
	.quad	vga_draw_line4_16
	.quad	vga_draw_line4_32
	.quad	vga_draw_line4_32
	.quad	vga_draw_line4_16
	.quad	vga_draw_line4_16
	.quad	vga_draw_line4d2_8
	.quad	vga_draw_line4d2_16
	.quad	vga_draw_line4d2_16
	.quad	vga_draw_line4d2_32
	.quad	vga_draw_line4d2_32
	.quad	vga_draw_line4d2_16
	.quad	vga_draw_line4d2_16
	.quad	vga_draw_line8d2_8
	.quad	vga_draw_line8d2_16
	.quad	vga_draw_line8d2_16
	.quad	vga_draw_line8d2_32
	.quad	vga_draw_line8d2_32
	.quad	vga_draw_line8d2_16
	.quad	vga_draw_line8d2_16
	.quad	vga_draw_line8_8
	.quad	vga_draw_line8_16
	.quad	vga_draw_line8_16
	.quad	vga_draw_line8_32
	.quad	vga_draw_line8_32
	.quad	vga_draw_line8_16
	.quad	vga_draw_line8_16
	.quad	vga_draw_line15_8
	.quad	vga_draw_line15_15
	.quad	vga_draw_line15_16
	.quad	vga_draw_line15_32
	.quad	vga_draw_line15_32bgr
	.quad	vga_draw_line15_15bgr
	.quad	vga_draw_line15_16bgr
	.quad	vga_draw_line16_8
	.quad	vga_draw_line16_15
	.quad	vga_draw_line16_16
	.quad	vga_draw_line16_32
	.quad	vga_draw_line16_32bgr
	.quad	vga_draw_line16_15bgr
	.quad	vga_draw_line16_16bgr
	.quad	vga_draw_line24_8
	.quad	vga_draw_line24_15
	.quad	vga_draw_line24_16
	.quad	vga_draw_line24_32
	.quad	vga_draw_line24_32bgr
	.quad	vga_draw_line24_15bgr
	.quad	vga_draw_line24_16bgr
	.quad	vga_draw_line32_8
	.quad	vga_draw_line32_15
	.quad	vga_draw_line32_16
	.quad	vga_draw_line32_32
	.quad	vga_draw_line32_32bgr
	.quad	vga_draw_line32_15bgr
	.quad	vga_draw_line32_16bgr
	.section	.rodata
	.align 32
	.type	mask16, @object
	.size	mask16, 64
mask16:
	.long	0
	.long	255
	.long	65280
	.long	65535
	.long	16711680
	.long	16711935
	.long	16776960
	.long	16777215
	.long	-16777216
	.long	-16776961
	.long	-16711936
	.long	-16711681
	.long	-65536
	.long	-65281
	.long	-256
	.long	-1
	.text
	.p2align 4,,15
	.type	vga_ioport_read, @function
vga_ioport_read:
.LFB206:
	.file 1 "/home/remco/Projects/Argos/src/hw/vga.c"
	.loc 1 153 0
	.loc 1 158 0
	leal	-944(%rsi), %eax
	cmpl	$15, %eax
	ja	.L4
	testb	$1, 865(%rdi)
	jne	.L3
.L4:
	leal	-976(%rsi), %eax
	cmpl	$15, %eax
	jbe	.L34
.L2:
	.loc 1 162 0
	leal	-948(%rsi), %eax
	cmpl	$38, %eax
	ja	.L30
	mov	%eax, %eax
	jmp	*.L31(,%rax,8)
	.section	.rodata
	.align 8
	.align 4
.L31:
	.quad	.L25
	.quad	.L27
	.quad	.L30
	.quad	.L30
	.quad	.L30
	.quad	.L30
	.quad	.L29
	.quad	.L30
	.quad	.L30
	.quad	.L30
	.quad	.L30
	.quad	.L30
	.quad	.L7
	.quad	.L10
	.quad	.L13
	.quad	.L30
	.quad	.L14
	.quad	.L15
	.quad	.L30
	.quad	.L16
	.quad	.L17
	.quad	.L18
	.quad	.L20
	.quad	.L30
	.quad	.L21
	.quad	.L30
	.quad	.L22
	.quad	.L23
	.quad	.L30
	.quad	.L30
	.quad	.L30
	.quad	.L30
	.quad	.L25
	.quad	.L27
	.quad	.L30
	.quad	.L30
	.quad	.L30
	.quad	.L30
	.quad	.L29
	.text
	.p2align 4,,7
.L34:
	.loc 1 158 0
	testb	$1, 865(%rdi)
	jne	.L2
.L3:
	.loc 1 160 0
	movl	$255, %edx
.L5:
	.loc 1 244 0
	movl	%edx, %eax
	ret
	.p2align 4,,7
.L30:
	.loc 1 236 0
	xorl	%edx, %edx
	.loc 1 244 0
	movl	%edx, %eax
	ret
.L29:
	.loc 1 231 0
	movzbl	868(%rdi), %eax
	.loc 1 233 0
	movl	$0, 604(%rdi)
	.loc 1 231 0
	xorl	$9, %eax
	.loc 1 232 0
	movzbl	%al, %edx
	.loc 1 231 0
	movb	%al, 868(%rdi)
	.loc 1 244 0
	movl	%edx, %eax
	ret
.L7:
	.loc 1 164 0
	movl	604(%rdi), %eax
	.loc 1 167 0
	xorl	%edx, %edx
	.loc 1 164 0
	testl	%eax, %eax
	jne	.L5
	.loc 1 165 0
	movzbl	582(%rdi), %edx
	.loc 1 244 0
	movl	%edx, %eax
	ret
.L10:
	.loc 1 171 0
	movzbl	582(%rdi), %eax
	.loc 1 175 0
	xorl	%edx, %edx
	.loc 1 171 0
	andl	$31, %eax
	.loc 1 172 0
	cmpl	$20, %eax
	jg	.L5
	.loc 1 173 0
	cltq
	movzbl	583(%rax,%rdi), %edx
	.loc 1 244 0
	movl	%edx, %eax
	ret
.L13:
	.loc 1 178 0
	movzbl	867(%rdi), %edx
	.loc 1 244 0
	movl	%edx, %eax
	ret
.L14:
	.loc 1 181 0
	movzbl	68(%rdi), %edx
	.loc 1 244 0
	movl	%edx, %eax
	ret
.L15:
	.loc 1 184 0
	movzbq	68(%rdi), %rax
	movzbl	69(%rax,%rdi), %edx
	.loc 1 244 0
	movl	%edx, %eax
	ret
.L16:
	.loc 1 190 0
	movzbl	869(%rdi), %edx
	.loc 1 244 0
	movl	%edx, %eax
	ret
.L17:
	.loc 1 193 0
	movzbl	872(%rdi), %edx
	.loc 1 244 0
	movl	%edx, %eax
	ret
.L18:
	.loc 1 196 0
	movzbl	871(%rdi), %esi
	movzbl	870(%rdi), %ecx
	movzbl	%sil, %eax
	movzbl	%cl, %edx
	leal	(%rax,%rax,2), %eax
	addl	%edx, %eax
	cltq
	movzbl	880(%rax,%rdi), %edx
	.loc 1 197 0
	leal	1(%rcx), %eax
	cmpb	$3, %al
	je	.L35
	movb	%al, 870(%rdi)
	.loc 1 244 0
	movl	%edx, %eax
	ret
.L20:
	.loc 1 203 0
	movzbl	866(%rdi), %edx
	.loc 1 244 0
	movl	%edx, %eax
	ret
.L21:
	.loc 1 206 0
	movzbl	865(%rdi), %edx
	.loc 1 244 0
	movl	%edx, %eax
	ret
.L22:
	.loc 1 209 0
	movzbl	325(%rdi), %edx
	.loc 1 244 0
	movl	%edx, %eax
	ret
.L23:
	.loc 1 212 0
	movzbq	325(%rdi), %rax
	movzbl	326(%rax,%rdi), %edx
	.loc 1 244 0
	movl	%edx, %eax
	ret
.L25:
	.loc 1 219 0
	movzbl	608(%rdi), %edx
	.loc 1 244 0
	movl	%edx, %eax
	ret
.L27:
	.loc 1 223 0
	movzbq	608(%rdi), %rax
	movzbl	609(%rax,%rdi), %edx
	.loc 1 244 0
	movl	%edx, %eax
	ret
.L35:
	.loc 1 199 0
	leal	1(%rsi), %eax
	.loc 1 198 0
	movb	$0, 870(%rdi)
	.loc 1 199 0
	movb	%al, 871(%rdi)
	.loc 1 244 0
	movl	%edx, %eax
	ret
.LFE206:
	.size	vga_ioport_read, .-vga_ioport_read
	.p2align 4,,15
	.type	vga_ioport_write, @function
vga_ioport_write:
.LFB207:
	.loc 1 247 0
	.loc 1 252 0
	leal	-944(%rsi), %eax
	.loc 1 247 0
	movl	%edx, %r8d
	.loc 1 252 0
	cmpl	$15, %eax
	ja	.L39
	testb	$1, 865(%rdi)
	jne	.L36
.L39:
	leal	-976(%rsi), %eax
	cmpl	$15, %eax
	jbe	.L81
.L37:
	.loc 1 260 0
	leal	-948(%rsi), %eax
	cmpl	$38, %eax
	ja	.L36
	mov	%eax, %eax
	jmp	*.L78(,%rax,8)
	.section	.rodata
	.align 8
	.align 4
.L78:
	.quad	.L63
	.quad	.L65
	.quad	.L36
	.quad	.L36
	.quad	.L36
	.quad	.L36
	.quad	.L77
	.quad	.L36
	.quad	.L36
	.quad	.L36
	.quad	.L36
	.quad	.L36
	.quad	.L41
	.quad	.L36
	.quad	.L53
	.quad	.L36
	.quad	.L54
	.quad	.L55
	.quad	.L36
	.quad	.L56
	.quad	.L57
	.quad	.L58
	.quad	.L36
	.quad	.L36
	.quad	.L36
	.quad	.L36
	.quad	.L60
	.quad	.L61
	.quad	.L36
	.quad	.L36
	.quad	.L36
	.quad	.L36
	.quad	.L63
	.quad	.L65
	.quad	.L36
	.quad	.L36
	.quad	.L36
	.quad	.L36
	.quad	.L77
	.text
	.p2align 4,,7
.L81:
	.loc 1 252 0
	testb	$1, 865(%rdi)
	jne	.L37
	.p2align 4,,7
.L36:
	rep ; ret
.L77:
	.loc 1 363 0
	movl	%r8d, %eax
	andl	$16, %eax
	movb	%al, 866(%rdi)
	ret
.L41:
	.loc 1 262 0
	movl	604(%rdi), %esi
	testl	%esi, %esi
	jne	.L42
	.loc 1 263 0
	andl	$63, %r8d
	.loc 1 264 0
	movb	%r8b, 582(%rdi)
.L43:
	.loc 1 290 0
	xorl	$1, %esi
	movl	%esi, 604(%rdi)
	.loc 1 291 0
	ret
.L53:
	.loc 1 293 0
	movl	%r8d, %eax
	andl	$-17, %eax
	movb	%al, 865(%rdi)
	.loc 1 294 0
	ret
.L54:
	.loc 1 296 0
	movl	%r8d, %eax
	andl	$7, %eax
	movb	%al, 68(%rdi)
	.loc 1 297 0
	ret
.L55:
	.loc 1 302 0
	movzbq	68(%rdi), %rdx
	movzbl	sr_mask(%rdx), %eax
	andl	%r8d, %eax
	movb	%al, 69(%rdx,%rdi)
	.loc 1 303 0
	ret
.L56:
	.loc 1 305 0
	movb	%r8b, 871(%rdi)
	.loc 1 306 0
	movb	$0, 870(%rdi)
	.loc 1 307 0
	movb	$3, 869(%rdi)
	.loc 1 308 0
	ret
.L57:
	.loc 1 310 0
	movb	%r8b, 872(%rdi)
	.loc 1 311 0
	movb	$0, 870(%rdi)
	.loc 1 312 0
	movb	$0, 869(%rdi)
	.loc 1 313 0
	ret
.L58:
	.loc 1 315 0
	movzbl	870(%rdi), %eax
	movzbl	%al, %edx 
	.loc 1 316 0
	incl	%eax
	cmpb	$3, %al
	.loc 1 315 0
	movb	%r8b, 873(%rdx,%rdi)
	.loc 1 316 0
	movb	%al, 870(%rdi)
	jne	.L36
	.loc 1 317 0
	movzbl	872(%rdi), %eax
	movzwl	873(%rdi), %edx
	leal	(%rax,%rax,2), %eax
	cltq
	movw	%dx, 880(%rax,%rdi)
	movzbl	875(%rdi), %edx
	movb	%dl, 882(%rax,%rdi)
	.loc 1 319 0
	incb	872(%rdi)
	.loc 1 318 0
	movb	$0, 870(%rdi)
	.loc 1 321 0
	ret
.L60:
	.loc 1 323 0
	movl	%r8d, %eax
	andl	$15, %eax
	movb	%al, 325(%rdi)
	.loc 1 324 0
	ret
.L61:
	.loc 1 329 0
	movzbq	325(%rdi), %rdx
	movzbl	gr_mask(%rdx), %eax
	andl	%r8d, %eax
	movb	%al, 326(%rdx,%rdi)
	.loc 1 330 0
	ret
.L63:
	.loc 1 333 0
	movb	%r8b, 608(%rdi)
	.loc 1 334 0
	ret
.L65:
	.loc 1 341 0
	cmpb	$0, 626(%rdi)
	js	.L82
	movzbl	608(%rdi), %edx
.L66:
	.loc 1 357 0
	movzbl	%dl, %eax 
	movb	%r8b, 609(%rax,%rdi)
	.loc 1 360 0
	ret
.L42:
	.loc 1 266 0
	movzbl	582(%rdi), %edx
	andl	$31, %edx
	.loc 1 267 0
	cmpl	$20, %edx
	ja	.L43
	mov	%edx, %eax
	jmp	*.L52(,%rax,8)
	.section	.rodata
	.align 8
	.align 4
.L52:
	.quad	.L48
	.quad	.L48
	.quad	.L48
	.quad	.L48
	.quad	.L48
	.quad	.L48
	.quad	.L48
	.quad	.L48
	.quad	.L48
	.quad	.L48
	.quad	.L48
	.quad	.L48
	.quad	.L48
	.quad	.L48
	.quad	.L48
	.quad	.L48
	.quad	.L46
	.quad	.L47
	.quad	.L48
	.quad	.L50
	.quad	.L50
	.text
.L50:
	.loc 1 284 0
	movl	%r8d, %eax
	movslq	%edx,%rdx
	andl	$15, %eax
.L80:
	movb	%al, 583(%rdx,%rdi)
	jmp	.L43
.L48:
	.loc 1 278 0
	movl	%r8d, %eax
	movslq	%edx,%rdx
	andl	$63, %eax
	jmp	.L80
.L47:
	.loc 1 275 0
	movslq	%edx,%rax
	movb	%r8b, 583(%rax,%rdi)
	jmp	.L43
.L46:
	.loc 1 272 0
	movl	%r8d, %eax
	movslq	%edx,%rdx
	andl	$-17, %eax
	jmp	.L80
.L82:
	.loc 1 341 0
	movzbl	608(%rdi), %edx
	cmpb	$7, %dl
	ja	.L66
	.loc 1 343 0
	jne	.L36
	.loc 1 344 0
	movzbl	616(%rdi), %eax
	movl	%r8d, %edx
	andl	$16, %edx
	andl	$-17, %eax
	orl	%edx, %eax
	movb	%al, 616(%rdi)
	.loc 1 345 0
	ret
.LFE207:
	.size	vga_ioport_write, .-vga_ioport_write
	.p2align 4,,15
	.type	vbe_ioport_read_index, @function
vbe_ioport_read_index:
.LFB208:
	.loc 1 371 0
	.loc 1 374 0
	movzwl	1680(%rdi), %eax
	.loc 1 376 0
	ret
.LFE208:
	.size	vbe_ioport_read_index, .-vbe_ioport_read_index
	.p2align 4,,15
	.type	vbe_ioport_read_data, @function
vbe_ioport_read_data:
.LFB209:
	.loc 1 380 0
	.loc 1 384 0
	movzwl	1680(%rdi), %eax
	.loc 1 405 0
	xorl	%edx, %edx
	.loc 1 384 0
	cmpw	$10, %ax
	ja	.L94
	.loc 1 385 0
	testb	$2, 1690(%rdi)
	je	.L86
	.loc 1 386 0
	movzwl	%ax, %ecx
	.loc 1 392 0
	movw	$1200, %dx
	.loc 1 386 0
	cmpl	$2, %ecx
	je	.L94
	jg	.L92
	.loc 1 389 0
	movw	$1600, %dx
	.loc 1 386 0
	decl	%ecx
.L95:
	.p2align 4,,2
	je	.L94
.L86:
	.loc 1 402 0
	movzwl	%ax, %eax 
	movzwl	1682(%rdi,%rax,2), %edx
.L94:
	.loc 1 411 0
	movl	%edx, %eax
	ret
.L92:
	.loc 1 395 0
	movl	$32, %edx
	.loc 1 386 0
	cmpl	$3, %ecx
	jmp	.L95
.LFE209:
	.size	vbe_ioport_read_data, .-vbe_ioport_read_data
	.p2align 4,,15
	.type	vbe_ioport_write_index, @function
vbe_ioport_write_index:
.LFB210:
	.loc 1 414 0
	.loc 1 416 0
	movw	%dx, 1680(%rdi)
	ret
.LFE210:
	.size	vbe_ioport_write_index, .-vbe_ioport_write_index
	.p2align 4,,15
	.type	vbe_ioport_write_data, @function
vbe_ioport_write_data:
.LFB211:
	.loc 1 420 0
	movq	%rbx, -16(%rsp)
.LCFI0:
	movq	%rbp, -8(%rsp)
.LCFI1:
	subq	$24, %rsp
.LCFI2:
	.loc 1 423 0
	movzwl	1680(%rdi), %esi
	.loc 1 420 0
	movq	%rdi, %rbx
	movl	%edx, %ebp
	.loc 1 423 0
	cmpw	$10, %si
	ja	.L97
	.loc 1 427 0
	movzwl	%si, %eax
	cmpl	$9, %eax
	ja	.L97
	mov	%eax, %eax
	jmp	*.L131(,%rax,8)
	.section	.rodata
	.align 8
	.align 4
.L131:
	.quad	.L100
	.quad	.L102
	.quad	.L104
	.quad	.L106
	.quad	.L113
	.quad	.L110
	.quad	.L121
	.quad	.L97
	.quad	.L127
	.quad	.L127
	.text
.L121:
.LBB2:
	.loc 1 527 0
	movzwl	1684(%rdi), %eax
	cmpl	%edx, %eax
	ja	.L97
	.loc 1 530 0
	movzwl	1688(%rdi), %eax
	cmpw	$4, %ax
	je	.L136
	.loc 1 533 0
	movzwl	%ax, %eax
	leal	7(%rax), %ecx
	sarl	$3, %ecx
	imull	%edx, %ecx
.L124:
	.loc 1 534 0
	movl	16(%rbx), %eax
	xorl	%edx, %edx
	divl	%ecx
	movl	%eax, %esi
	.loc 1 536 0
	movzwl	1686(%rbx), %eax
	cmpl	%esi, %eax
	jg	.L97
	.loc 1 538 0
	movw	%bp, 1694(%rbx)
	.loc 1 539 0
	movw	%si, 1696(%rbx)
	.loc 1 540 0
	movl	%ecx, 1708(%rbx)
	.p2align 4,,7
.L97:
.LBE2:
	.loc 1 561 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	addq	$24, %rsp
	ret
.L127:
.LBB3:
	.loc 1 547 0
	movzwl	%si, %eax 
	.loc 1 548 0
	movl	1708(%rdi), %ecx
	.loc 1 547 0
	movw	%dx, 1682(%rbx,%rax,2)
	.loc 1 548 0
	movzwl	1700(%rdi), %eax
	.loc 1 549 0
	movzwl	1698(%rdi), %edx
	.loc 1 548 0
	imull	%eax, %ecx
	.loc 1 550 0
	movzwl	1688(%rdi), %eax
	cmpw	$4, %ax
	je	.L137
	.loc 1 553 0
	movzwl	%ax, %eax
	addl	$7, %eax
	sarl	$3, %eax
	imull	%edx, %eax
	leal	(%rcx,%rax), %eax
.L133:
	movl	%eax, 1704(%rbx)
	.loc 1 554 0
	shrl	$2, 1704(%rbx)
	jmp	.L97
.L100:
.LBE3:
	.loc 1 429 0
	leal	-45248(%rbp), %eax
	cmpl	$4, %eax
.L135:
	.loc 1 443 0
	ja	.L97
.L134:
	.loc 1 521 0
	movzwl	%si, %eax 
	movw	%bp, 1682(%rbx,%rax,2)
	jmp	.L97
.L102:
	.loc 1 438 0
	cmpl	$1600, %edx
	ja	.L97
	testb	$7, %dl
	jne	.L97
	.p2align 4,,7
	jmp	.L134
.L104:
	.loc 1 443 0
	cmpl	$1200, %edx
	.p2align 4,,7
	jmp	.L135
.L106:
	.loc 1 449 0
	testl	%edx, %edx
	movl	$8, %eax
	cmove	%eax, %ebp
	.loc 1 450 0
	cmpl	$4, %ebp
	sete	%dl
	cmpl	$8, %ebp
	sete	%al
	orl	%edx, %eax
	testb	$1, %al
	jne	.L134
	cmpl	$15, %ebp
	sete	%dl
	cmpl	$16, %ebp
	sete	%al
	orl	%edx, %eax
	testb	$1, %al
	jne	.L134
	cmpl	$24, %ebp
	sete	%dl
	cmpl	$32, %ebp
	sete	%al
	orl	%edx, %eax
	testb	$1, %al
	je	.L97
	jmp	.L134
.L113:
	.loc 1 465 0
	testb	$1, %dl
	je	.L114
	testb	$1, 1690(%rdi)
	.p2align 4,,4
	jne	.L114
.LBB4:
	.loc 1 476 0
	movzwl	1688(%rbx), %r8d
	.loc 1 469 0
	movzwl	1684(%rdi), %edi
	.loc 1 471 0
	movzwl	1686(%rbx), %edx
	.loc 1 473 0
	movw	$0, 1698(%rbx)
	.loc 1 474 0
	movw	$0, 1700(%rbx)
	.loc 1 476 0
	cmpw	$4, %r8w
	.loc 1 469 0
	movw	%di, 1694(%rbx)
	.loc 1 471 0
	movw	%dx, 1696(%rbx)
	.loc 1 476 0
	je	.L138
	.loc 1 479 0
	movzwl	%r8w, %eax
	movzwl	%di, %ecx
	addl	$7, %eax
	sarl	$3, %eax
	imull	%eax, %ecx
.L132:
	.loc 1 484 0
	testb	%bpl, %bpl
	.loc 1 479 0
	movl	%ecx, 1708(%rbx)
	.loc 1 481 0
	movl	$0, 1704(%rbx)
	.loc 1 484 0
	jns	.L139
.L117:
	.loc 1 491 0
	movzbl	332(%rbx), %eax
	.loc 1 493 0
	shrl	$3, %ecx
	.loc 1 495 0
	shrw	$3, %di
	.loc 1 493 0
	movb	%cl, 628(%rbx)
	.loc 1 497 0
	movzwl	%dx, %edx
	.loc 1 499 0
	movzbl	616(%rbx), %ecx
	.loc 1 497 0
	decl	%edx
	.loc 1 492 0
	orb	$3, 632(%rbx)
	.loc 1 502 0
	movb	$-1, 633(%rbx)
	.loc 1 498 0
	movb	%dl, 627(%rbx)
	.loc 1 491 0
	andl	$-13, %eax
	orl	$5, %eax
	.loc 1 499 0
	andl	$-67, %ecx
	.loc 1 491 0
	movb	%al, 332(%rbx)
	.loc 1 495 0
	leal	-1(%rdi), %eax
	movb	%al, 610(%rbx)
	.loc 1 499 0
	movl	%edx, %eax
	sarl	$3, %edx
	sarl	$7, %eax
	andl	$64, %edx
	andl	$2, %eax
	orl	%eax, %ecx
	orl	%edx, %ecx
	.loc 1 504 0
	movzbl	618(%rbx), %edx
	.loc 1 503 0
	orl	$16, %ecx
	movb	%cl, 616(%rbx)
	.loc 1 504 0
	orl	$64, %edx
	.loc 1 506 0
	cmpw	$4, %r8w
	je	.L140
	.loc 1 511 0
	orb	$8, 73(%rbx)
	.loc 1 512 0
	orb	$15, 71(%rbx)
	.loc 1 510 0
	movl	$2, %ecx
.L119:
	.loc 1 514 0
	movzbl	331(%rbx), %eax
	sall	$5, %ecx
	.loc 1 515 0
	andl	$96, %edx
	movb	%dl, 618(%rbx)
	.loc 1 514 0
	andl	$-97, %eax
	orl	%ecx, %eax
	movb	%al, 331(%rbx)
.L120:
.LBE4:
	.loc 1 520 0
	movl	%ebp, %eax
	shrl	$5, %eax
	andl	$1, %eax
	movl	%eax, 876(%rbx)
	jmp	.L134
.L110:
	.loc 1 456 0
	cmpw	$4, 1688(%rdi)
	je	.L141
	.loc 1 459 0
	andl	1712(%rdi), %ebp
.L112:
	.loc 1 461 0
	movzwl	%si, %eax 
	movw	%bp, 1682(%rbx,%rax,2)
	.loc 1 462 0
	sall	$16, %ebp
	movl	%ebp, 1648(%rbx)
	jmp	.L97
.L114:
	.loc 1 518 0
	movl	$0, 1648(%rbx)
	jmp	.L120
.L137:
.LBB5:
	.loc 1 551 0
	sarl	%edx
	leal	(%rcx,%rdx), %eax
	jmp	.L133
.L141:
.LBE5:
	.loc 1 457 0
	movl	1712(%rdi), %eax
	shrl	$2, %eax
	andl	%eax, %ebp
	jmp	.L112
.L136:
.LBB6:
	.loc 1 531 0
	movl	%edx, %ecx
	sarl	%ecx
	jmp	.L124
.L139:
.LBE6:
.LBB7:
	.loc 1 485 0
	movzwl	%dx, %edx
	movq	(%rbx), %rdi
	xorl	%esi, %esi
	imull	%ecx, %edx
	call	memset
	movzwl	1680(%rbx), %esi
	movzwl	1688(%rbx), %r8d
	movzwl	1684(%rbx), %edi
	movzwl	1686(%rbx), %edx
	movl	1708(%rbx), %ecx
	jmp	.L117
.L138:
	.loc 1 477 0
	movl	%edi, %eax
	shrw	%ax
	movzwl	%ax, %ecx
	jmp	.L132
.L140:
	.loc 1 508 0
	andb	$-9, 70(%rbx)
	.loc 1 507 0
	xorl	%ecx, %ecx
	jmp	.L119
.LBE7:
.LFE211:
	.size	vbe_ioport_write_data, .-vbe_ioport_write_data
	.p2align 4,,15
.globl vga_mem_readb
	.type	vga_mem_readb, @function
vga_mem_readb:
.LFB212:
	.loc 1 566 0
	.loc 1 572 0
	movzbl	332(%rdi), %eax
	.loc 1 573 0
	andl	$131071, %esi
	.loc 1 572 0
	shrb	$2, %al
	andl	$3, %eax
	.loc 1 574 0
	cmpl	$1, %eax
	je	.L145
	jle	.L160
	cmpl	$2, %eax
	je	.L147
.L150:
	.loc 1 589 0
	subq	$98304, %rsi
.L159:
	.loc 1 590 0
	cmpq	$32767, %rsi
	.loc 1 591 0
	movl	$255, %eax
	.loc 1 590 0
	.p2align 4,,3
	ja	.L142
.L143:
	.loc 1 595 0
	testb	$8, 73(%rdi)
	je	.L153
	.loc 1 597 0
	movq	(%rdi), %rax
	movzbl	(%rax,%rsi), %edx
	.loc 1 618 0
	movl	%edx, %eax
.L142:
	.loc 1 619 0
	rep ; ret
	.p2align 4,,7
.L153:
	.loc 1 598 0
	movzbl	331(%rdi), %ecx
	testb	$16, %cl
	je	.L155
	.loc 1 600 0
	movzbl	330(%rdi), %eax
	movl	%esi, %edx
	.loc 1 601 0
	andq	$-2, %rsi
	.loc 1 600 0
	andl	$1, %edx
	andl	$2, %eax
	orl	%edx, %eax
	.loc 1 601 0
	leaq	(%rsi,%rsi), %rdx
	cltq
	orq	%rax, %rdx
	movq	(%rdi), %rax
	movzbl	(%rax,%rdx), %edx
	.loc 1 618 0
	movl	%edx, %eax
	jmp	.L142
	.p2align 4,,7
.L145:
	.loc 1 578 0
	cmpq	$65535, %rsi
	.loc 1 579 0
	movl	$255, %eax
	.loc 1 578 0
	ja	.L142
	.loc 1 580 0
	movslq	1648(%rdi),%rax
	addq	%rax, %rsi
	jmp	.L143
	.p2align 4,,7
.L155:
	.loc 1 604 0
	movq	(%rdi), %rax
	.loc 1 606 0
	andl	$8, %ecx
	.loc 1 604 0
	movl	(%rax,%rsi,4), %edx
	movl	%edx, 64(%rdi)
	.loc 1 606 0
	jne	.L157
	.loc 1 608 0
	movzbl	330(%rdi), %ecx
	.loc 1 609 0
	sall	$3, %ecx
	shrl	%cl, %edx
	andl	$255, %edx
	.loc 1 618 0
	movl	%edx, %eax
	jmp	.L142
	.p2align 4,,7
.L147:
	.loc 1 583 0
	subq	$65536, %rsi
	jmp	.L159
	.p2align 4,,7
.L157:
	.loc 1 612 0
	movzbq	328(%rdi), %rax
	xorl	mask16(,%rax,4), %edx
	movzbq	333(%rdi), %rax
	andl	mask16(,%rax,4), %edx
	.loc 1 613 0
	movl	%edx, %eax
	shrl	$16, %eax
	orl	%eax, %edx
	.loc 1 614 0
	movl	%edx, %eax
	shrl	$8, %eax
	orl	%edx, %eax
	.loc 1 615 0
	notl	%eax
	movzbl	%al,%edx
	.loc 1 618 0
	movl	%edx, %eax
	jmp	.L142
	.p2align 4,,7
.L160:
	.loc 1 574 0
	testl	%eax, %eax
	je	.L143
	jmp	.L150
.LFE212:
	.size	vga_mem_readb, .-vga_mem_readb
	.p2align 4,,15
	.type	vga_mem_readw, @function
vga_mem_readw:
.LFB213:
	.loc 1 622 0
	movq	%rbx, -32(%rsp)
.LCFI3:
	movq	%rsi, %rbx
	movq	%r12, -24(%rsp)
.LCFI4:
	movq	%r13, -16(%rsp)
.LCFI5:
	movq	%r14, -8(%rsp)
.LCFI6:
	movq	%rdx, %r13
	subq	$32, %rsp
.LCFI7:
	.loc 1 622 0
	movq	%rdi, %r14
	.loc 1 629 0
	incq	%rbx
	.loc 1 628 0
	call	vga_mem_readb
	.loc 1 629 0
	movq	%r13, %rdx
	movq	%rbx, %rsi
	movq	%r14, %rdi
	.loc 1 628 0
	movl	%eax, %r12d
	.loc 1 629 0
	call	vga_mem_readb
	sall	$8, %eax
	.loc 1 632 0
	movq	(%rsp), %rbx
	movq	16(%rsp), %r13
	.loc 1 629 0
	orl	%eax, %r12d
	.loc 1 632 0
	movq	24(%rsp), %r14
	movl	%r12d, %eax
	movq	8(%rsp), %r12
	addq	$32, %rsp
	ret
.LFE213:
	.size	vga_mem_readw, .-vga_mem_readw
	.p2align 4,,15
	.type	vga_mem_readl, @function
vga_mem_readl:
.LFB214:
	.loc 1 635 0
	movq	%rbx, -32(%rsp)
.LCFI8:
	movq	%r12, -24(%rsp)
.LCFI9:
	movq	%rsi, %r12
	movq	%r13, -16(%rsp)
.LCFI10:
	movq	%r14, -8(%rsp)
.LCFI11:
	subq	$32, %rsp
.LCFI12:
	.loc 1 635 0
	movq	%rdi, %r14
	movq	%rdx, %r13
	.loc 1 643 0
	call	vga_mem_readb
	.loc 1 644 0
	leaq	1(%r12), %rsi
	movq	%r13, %rdx
	movq	%r14, %rdi
	.loc 1 643 0
	movl	%eax, %ebx
	.loc 1 644 0
	call	vga_mem_readb
	.loc 1 645 0
	leaq	2(%r12), %rsi
	movq	%r13, %rdx
	movq	%r14, %rdi
	.loc 1 644 0
	sall	$8, %eax
	.loc 1 646 0
	addq	$3, %r12
	.loc 1 644 0
	orl	%eax, %ebx
	.loc 1 645 0
	call	vga_mem_readb
	.loc 1 646 0
	movq	%r13, %rdx
	.loc 1 645 0
	sall	$16, %eax
	.loc 1 646 0
	movq	%r12, %rsi
	movq	%r14, %rdi
	.loc 1 645 0
	orl	%eax, %ebx
	.loc 1 646 0
	call	vga_mem_readb
	sall	$24, %eax
	.loc 1 649 0
	movq	8(%rsp), %r12
	movq	16(%rsp), %r13
	.loc 1 646 0
	orl	%eax, %ebx
	.loc 1 649 0
	movq	24(%rsp), %r14
	movl	%ebx, %eax
	movq	(%rsp), %rbx
	addq	$32, %rsp
	ret
.LFE214:
	.size	vga_mem_readl, .-vga_mem_readl
	.p2align 4,,15
.globl vga_mem_writeb
	.type	vga_mem_writeb, @function
vga_mem_writeb:
.LFB215:
	.loc 1 653 0
	.loc 1 662 0
	movzbl	332(%rdi), %eax
	.loc 1 663 0
	andl	$131071, %esi
	.loc 1 653 0
	movl	%edx, %r8d
	.loc 1 662 0
	shrb	$2, %al
	andl	$3, %eax
	.loc 1 664 0
	cmpl	$1, %eax
	je	.L166
	jle	.L200
	cmpl	$2, %eax
	je	.L168
.L171:
	.loc 1 679 0
	subq	$98304, %rsi
	.loc 1 680 0
	cmpq	$32767, %rsi
	.p2align 4,,5
	ja	.L163
.L164:
	.loc 1 685 0
	testb	$8, 73(%rdi)
	.p2align 4,,3
	je	.L174
	.loc 1 689 0
	movzbl	71(%rdi), %eax
	.loc 1 687 0
	movl	%esi, %ecx
	.loc 1 688 0
	movl	$1, %edx
	.loc 1 687 0
	andl	$3, %ecx
	.loc 1 688 0
	sall	%cl, %edx
	.loc 1 689 0
	testl	%edx, %eax
	je	.L163
.L199:
	.loc 1 703 0
	movq	(%rdi), %rax
	movb	%r8b, (%rax,%rsi)
.LBB8:
	.file 2 "../cpu-all.h"
	.loc 2 971 0
	addq	8(%rdi), %rsi
.LBE8:
	.loc 1 707 0
	orl	%edx, 1756(%rdi)
.LBB9:
.LBB10:
	.loc 2 972 0
	movq	phys_ram_dirty(%rip), %rax
	shrq	$12, %rsi
	movb	$-1, (%rsi,%rax)
.LBE10:
.LBE9:
	ret
	.p2align 4,,7
.L174:
	.loc 1 697 0
	movzbl	331(%rdi), %eax
	testb	$16, %al
	jne	.L201
	.loc 1 712 0
	andl	$3, %eax
	.loc 1 713 0
	cmpl	$2, %eax
	je	.L187
	jg	.L189
	decl	%eax
	.p2align 4,,6
	jne	.L184
	.loc 1 728 0
	movl	64(%rdi), %r8d
	.p2align 4,,7
.L186:
	.loc 1 772 0
	movzbl	71(%rdi), %edx
	.loc 1 775 0
	movq	(%rdi), %rcx
	.loc 1 773 0
	orl	%edx, 1756(%rdi)
	.loc 1 774 0
	movslq	%edx,%rax
	movl	mask16(,%rax,4), %edx
	.loc 1 775 0
	movl	%edx, %eax
	andl	%r8d, %edx
	notl	%eax
	andl	(%rcx,%rsi,4), %eax
	orl	%edx, %eax
	movl	%eax, (%rcx,%rsi,4)
.LBB11:
	.loc 2 971 0
	movq	8(%rdi), %rax
.LBB12:
	.loc 2 972 0
	movq	phys_ram_dirty(%rip), %rdx
.LBE12:
	.loc 2 971 0
	leaq	(%rax,%rsi,4), %rax
.LBB13:
	.loc 2 972 0
	shrq	$12, %rax
	movb	$-1, (%rax,%rdx)
	.p2align 4,,7
.L163:
	rep ; ret
	.p2align 4,,7
.L166:
.LBE13:
.LBE11:
	.loc 1 668 0
	cmpq	$65535, %rsi
	ja	.L163
	.loc 1 670 0
	movslq	1648(%rdi),%rax
	addq	%rax, %rsi
	jmp	.L164
	.p2align 4,,7
.L168:
	.loc 1 673 0
	subq	$65536, %rsi
	.loc 1 674 0
	cmpq	$32767, %rsi
	jbe	.L164
	.loc 1 675 0
	rep ; ret
	.p2align 4,,7
.L201:
	.loc 1 699 0
	movzbl	330(%rdi), %ecx
	movl	%esi, %eax
	.loc 1 700 0
	movl	$1, %edx
	.loc 1 699 0
	andl	$1, %eax
	andl	$2, %ecx
	orl	%eax, %ecx
	.loc 1 701 0
	movzbl	71(%rdi), %eax
	.loc 1 700 0
	sall	%cl, %edx
	.loc 1 701 0
	testl	%edx, %eax
	je	.L163
	.loc 1 702 0
	andq	$-2, %rsi
	movslq	%ecx,%rax
	addq	%rsi, %rsi
	orq	%rax, %rsi
	jmp	.L199
	.p2align 4,,7
.L200:
	.loc 1 664 0
	testl	%eax, %eax
	je	.L164
	jmp	.L171
.L189:
	.loc 1 713 0
	cmpl	$3, %eax
	.p2align 4,,7
	je	.L188
.L184:
	.loc 1 717 0
	movzbl	329(%rdi), %r9d
	.loc 1 718 0
	movl	%r8d, %eax
	.loc 1 717 0
	movl	%r9d, %edx
	andl	$7, %edx
	.loc 1 718 0
	movl	%edx, %ecx
	shrl	%cl, %eax
	movl	$8, %ecx
	subl	%edx, %ecx
	sall	%cl, %r8d
	.loc 1 725 0
	movzbl	334(%rdi), %ecx
	.loc 1 718 0
	orl	%r8d, %eax
	movzbl	%al,%r8d
	.loc 1 719 0
	movl	%r8d, %eax
	sall	$8, %eax
	orl	%eax, %r8d
	.loc 1 723 0
	movzbq	327(%rdi), %rax
	.loc 1 720 0
	movl	%r8d, %edx
	sall	$16, %edx
	orl	%r8d, %edx
	.loc 1 723 0
	movl	mask16(,%rax,4), %eax
	.loc 1 724 0
	movl	%eax, %r8d
	notl	%r8d
	andl	%edx, %r8d
	movzbq	326(%rdi), %rdx
	andl	mask16(,%rdx,4), %eax
	orl	%eax, %r8d
.L182:
	.loc 1 745 0
	shrb	$3, %r9b
	movzbl	%r9b, %eax
	.loc 1 746 0
	cmpl	$2, %eax
	je	.L194
	jg	.L196
	decl	%eax
	je	.L193
.L198:
	movl	64(%rdi), %edx
.L190:
	.loc 1 766 0
	movl	%ecx, %eax
	sall	$8, %eax
	orl	%eax, %ecx
	.loc 1 767 0
	movl	%ecx, %eax
	sall	$16, %eax
	orl	%eax, %ecx
	.loc 1 768 0
	andl	%ecx, %r8d
	notl	%ecx
	andl	%ecx, %edx
	orl	%edx, %r8d
	jmp	.L186
.L193:
	.loc 1 753 0
	movl	64(%rdi), %edx
	andl	%edx, %r8d
	jmp	.L190
.L196:
	.loc 1 746 0
	cmpl	$3, %eax
	jne	.L198
	.loc 1 761 0
	movl	64(%rdi), %edx
	xorl	%edx, %r8d
	jmp	.L190
.L187:
	.loc 1 731 0
	movq	%r8, %rax
	.loc 1 732 0
	movzbl	334(%rdi), %ecx
	movzbl	329(%rdi), %r9d
	.loc 1 731 0
	andl	$15, %eax
	movl	mask16(,%rax,4), %r8d
	jmp	.L182
.L194:
	.loc 1 757 0
	movl	64(%rdi), %edx
	orl	%edx, %r8d
	jmp	.L190
.L188:
	.loc 1 736 0
	movzbl	329(%rdi), %r9d
	.loc 1 737 0
	movl	%r8d, %eax
	.loc 1 736 0
	movl	%r9d, %edx
	andl	$7, %edx
	.loc 1 737 0
	movl	%edx, %ecx
	shrl	%cl, %eax
	movl	$8, %ecx
	subl	%edx, %ecx
	sall	%cl, %r8d
	.loc 1 739 0
	movzbl	334(%rdi), %ecx
	.loc 1 737 0
	orl	%r8d, %eax
	.loc 1 739 0
	andl	%eax, %ecx
	.loc 1 740 0
	movzbq	326(%rdi), %rax
	movl	mask16(,%rax,4), %r8d
	jmp	.L182
.LFE215:
	.size	vga_mem_writeb, .-vga_mem_writeb
	.p2align 4,,15
	.type	vga_mem_writew, @function
vga_mem_writew:
.LFB216:
	.loc 1 787 0
	movq	%rbx, -32(%rsp)
.LCFI13:
	movq	%r12, -24(%rsp)
.LCFI14:
	movl	%edx, %ebx
	movq	%rsi, %r12
	movq	%r13, -16(%rsp)
.LCFI15:
	movq	%r14, -8(%rsp)
.LCFI16:
	movq	%rcx, %r13
	subq	$32, %rsp
.LCFI17:
	.loc 1 787 0
	movq	%rdi, %r14
	.loc 1 792 0
	andl	$255, %edx
	.loc 1 793 0
	movzbl	%bh, %ebx
	incq	%r12
	.loc 1 792 0
	call	vga_mem_writeb
	.loc 1 793 0
	movq	%r13, %rcx
	movl	%ebx, %edx
	movq	%r12, %rsi
	movq	%r14, %rdi
	movq	(%rsp), %rbx
	movq	8(%rsp), %r12
	movq	16(%rsp), %r13
	movq	24(%rsp), %r14
	addq	$32, %rsp
	jmp	vga_mem_writeb
.LFE216:
	.size	vga_mem_writew, .-vga_mem_writew
	.p2align 4,,15
	.type	vga_mem_writel, @function
vga_mem_writel:
.LFB217:
	.loc 1 798 0
	movq	%rbx, -32(%rsp)
.LCFI18:
	movq	%r12, -24(%rsp)
.LCFI19:
	movl	%edx, %ebx
	movq	%rsi, %r12
	movq	%r13, -16(%rsp)
.LCFI20:
	movq	%r14, -8(%rsp)
.LCFI21:
	.loc 1 805 0
	andl	$255, %edx
	.loc 1 798 0
	subq	$32, %rsp
.LCFI22:
	.loc 1 798 0
	movq	%rdi, %r14
	movq	%rcx, %r13
	.loc 1 805 0
	call	vga_mem_writeb
	.loc 1 806 0
	leaq	1(%r12), %rsi
	movzbl	%bh, %edx
	movq	%r13, %rcx
	movq	%r14, %rdi
	.loc 1 807 0
	shrl	$16, %ebx
	.loc 1 806 0
	call	vga_mem_writeb
	.loc 1 807 0
	leaq	2(%r12), %rsi
	movzbl	%bl,%edx
	movq	%r13, %rcx
	movq	%r14, %rdi
	.loc 1 808 0
	shrl	$8, %ebx
	addq	$3, %r12
	.loc 1 807 0
	call	vga_mem_writeb
	.loc 1 808 0
	movq	%r13, %rcx
	movl	%ebx, %edx
	movq	%r12, %rsi
	movq	%r14, %rdi
	movq	(%rsp), %rbx
	movq	8(%rsp), %r12
	movq	16(%rsp), %r13
	movq	24(%rsp), %r14
	addq	$32, %rsp
	jmp	vga_mem_writeb
.LFE217:
	.size	vga_mem_writel, .-vga_mem_writel
	.p2align 4,,15
	.type	vga_draw_glyph8_8, @function
vga_draw_glyph8_8:
.LFB219:
	.file 3 "/home/remco/Projects/Argos/src/hw/vga_template.h"
	.loc 3 74 0
	.loc 3 74 0
	movq	%rdx, %r10
	.loc 3 77 0
	xorl	%r9d, %r8d
	movslq	%esi,%rsi
	.p2align 4,,7
.L205:
	.loc 3 79 0
	movzbl	(%r10), %edx
	.loc 3 81 0
	addq	$4, %r10
.LBB14:
.LBB15:
	.loc 3 52 0
	movl	%edx, %eax
	.loc 3 53 0
	andl	$15, %edx
	.loc 3 52 0
	shrl	$4, %eax
	mov	%eax, %eax
	movl	dmask16(,%rax,4), %eax
	andl	%r8d, %eax
	xorl	%r9d, %eax
	movl	%eax, (%rdi)
	.loc 3 53 0
	movl	dmask16(,%rdx,4), %eax
	andl	%r8d, %eax
	xorl	%r9d, %eax
	movl	%eax, 4(%rdi)
.LBE15:
.LBE14:
	.loc 3 82 0
	addq	%rsi, %rdi
	.loc 3 83 0
	decl	%ecx
	jne	.L205
	rep ; ret
.LFE219:
	.size	vga_draw_glyph8_8, .-vga_draw_glyph8_8
	.p2align 4,,15
	.type	vga_draw_glyph16_8, @function
vga_draw_glyph16_8:
.LFB220:
	.loc 3 89 0
	.loc 3 89 0
	movq	%rdx, %r11
	movl	%ecx, %r10d
	.loc 3 92 0
	xorl	%r9d, %r8d
	movslq	%esi,%rsi
	.p2align 4,,7
.L210:
	.loc 3 94 0
	movzbl	(%r11), %ecx
	.loc 3 101 0
	addq	$4, %r11
.LBB16:
	.loc 3 50 0
	movl	%ecx, %eax
.LBE16:
.LBB17:
	andl	$15, %ecx
.LBE17:
.LBB18:
	shrl	$4, %eax
	mov	%eax, %eax
	movzbl	expand4to8(%rax), %edx
.LBB19:
	.loc 3 52 0
	movl	%edx, %eax
	.loc 3 53 0
	andl	$15, %edx
	.loc 3 52 0
	shrl	$4, %eax
	mov	%eax, %eax
	movl	dmask16(,%rax,4), %eax
	andl	%r8d, %eax
	xorl	%r9d, %eax
	movl	%eax, (%rdi)
	.loc 3 53 0
	movl	dmask16(,%rdx,4), %eax
	andl	%r8d, %eax
	xorl	%r9d, %eax
	movl	%eax, 4(%rdi)
.LBE19:
.LBE18:
.LBB20:
	.loc 3 50 0
	movzbl	expand4to8(%rcx), %edx
.LBB21:
	.loc 3 52 0
	movl	%edx, %eax
	.loc 3 53 0
	andl	$15, %edx
	.loc 3 52 0
	shrl	$4, %eax
	mov	%eax, %eax
	movl	dmask16(,%rax,4), %eax
	andl	%r8d, %eax
	xorl	%r9d, %eax
	movl	%eax, 8(%rdi)
	.loc 3 53 0
	movl	dmask16(,%rdx,4), %eax
	andl	%r8d, %eax
	xorl	%r9d, %eax
	movl	%eax, 12(%rdi)
.LBE21:
.LBE20:
	.loc 3 102 0
	addq	%rsi, %rdi
	.loc 3 103 0
	decl	%r10d
	jne	.L210
	rep ; ret
.LFE220:
	.size	vga_draw_glyph16_8, .-vga_draw_glyph16_8
	.p2align 4,,15
	.type	vga_draw_glyph9_8, @function
vga_draw_glyph9_8:
.LFB221:
	.loc 3 109 0
	.loc 3 109 0
	movl	8(%rsp), %r11d
	movq	%rdx, %r10
	.loc 3 112 0
	xorl	%r9d, %r8d
	movslq	%esi,%rsi
	.p2align 4,,7
.L216:
	.loc 3 114 0
	movzbl	(%r10), %edx
.LBB22:
	.file 4 "../bswap.h"
	.loc 4 150 0
	movl	%edx, %eax
.LBE22:
	.loc 3 117 0
	andl	$15, %edx
.LBB23:
	.loc 4 150 0
	shrl	$4, %eax
	mov	%eax, %eax
	movl	dmask16(,%rax,4), %eax
	andl	%r8d, %eax
	xorl	%r9d, %eax
.LBB24:
	.loc 4 153 0
	movb	%al, (%rdi)
	.loc 4 154 0
	shrl	$8, %eax
	movb	%al, 1(%rdi)
	.loc 4 155 0
	shrl	$8, %eax
	movb	%al, 2(%rdi)
	.loc 4 156 0
	shrl	$8, %eax
	movb	%al, 3(%rdi)
.LBE24:
.LBE23:
	.loc 3 117 0
	movl	dmask16(,%rdx,4), %eax
.LBB25:
	.loc 4 150 0
	leaq	4(%rdi), %rdx
.LBE25:
	.loc 3 117 0
	andl	%r8d, %eax
	xorl	%r9d, %eax
.LBB26:
.LBB27:
	.loc 4 153 0
	movb	%al, 4(%rdi)
	.loc 4 154 0
	shrl	$8, %eax
	movb	%al, 1(%rdx)
	.loc 4 155 0
	shrl	$8, %eax
	movb	%al, 2(%rdx)
	.loc 4 156 0
	shrl	$8, %eax
.LBE27:
.LBE26:
	.loc 3 120 0
	testl	%r11d, %r11d
.LBB28:
.LBB29:
	.loc 4 156 0
	movb	%al, 3(%rdx)
.LBE29:
.LBE28:
	.loc 3 120 0
	cmove	%r9d, %eax
	.loc 3 149 0
	addq	$4, %r10
	.loc 3 120 0
	movb	%al, 8(%rdi)
	.loc 3 150 0
	addq	%rsi, %rdi
	.loc 3 151 0
	decl	%ecx
	jne	.L216
	rep ; ret
.LFE221:
	.size	vga_draw_glyph9_8, .-vga_draw_glyph9_8
	.p2align 4,,15
	.type	vga_draw_line2_8, @function
vga_draw_line2_8:
.LFB222:
	.loc 3 159 0
	.loc 3 164 0
	movzbq	601(%rdi), %rax
	.loc 3 163 0
	leaq	2096(%rdi), %r8
	.loc 3 159 0
	movq	%rdx, %r9
	.loc 3 165 0
	sarl	$3, %ecx
	.loc 3 166 0
	xorl	%r10d, %r10d
	.loc 3 164 0
	andl	$15, %eax
	movl	mask16(,%rax,4), %r11d
	jmp	.L230
	.p2align 4,,7
.L231:
	.loc 3 168 0
	movl	(%r9), %edx
	.loc 3 166 0
	incl	%r10d
	.loc 3 183 0
	addq	$4, %r9
	.loc 3 168 0
	andl	%r11d, %edx
	.loc 3 169 0
	movzbl	%dl, %eax 
	movzwl	expand2(%rax,%rax), %edi
	.loc 3 170 0
	movl	%edx, %eax
	.loc 3 176 0
	shrl	$8, %edx
	.loc 3 170 0
	shrl	$16, %eax
	movzbl	%al, %eax 
	movzwl	expand2(%rax,%rax), %eax
	sall	$2, %eax
	orl	%eax, %edi
	.loc 3 171 0
	movl	%edi, %eax
	shrl	$12, %eax
	mov	%eax, %eax
	movl	(%r8,%rax,4), %eax
	movb	%al, (%rsi)
	.loc 3 172 0
	movl	%edi, %eax
	shrl	$8, %eax
	andl	$15, %eax
	movl	(%r8,%rax,4), %eax
	movb	%al, 1(%rsi)
	.loc 3 173 0
	movl	%edi, %eax
	shrl	$4, %eax
	andl	$15, %eax
	movl	(%r8,%rax,4), %eax
	movb	%al, 2(%rsi)
	.loc 3 174 0
	movq	%rdi, %rax
	andl	$15, %eax
	movl	(%r8,%rax,4), %eax
	movb	%al, 3(%rsi)
	.loc 3 176 0
	movzbl	%dl, %eax 
	.loc 3 177 0
	shrl	$16, %edx
	movzbl	%dl, %edx 
	.loc 3 176 0
	movzwl	expand2(%rax,%rax), %edi
	.loc 3 177 0
	movzwl	expand2(%rdx,%rdx), %eax
	sall	$2, %eax
	orl	%eax, %edi
	.loc 3 178 0
	movl	%edi, %eax
	shrl	$12, %eax
	mov	%eax, %eax
	movl	(%r8,%rax,4), %eax
	movb	%al, 4(%rsi)
	.loc 3 179 0
	movl	%edi, %eax
	shrl	$8, %eax
	andl	$15, %eax
	movl	(%r8,%rax,4), %eax
	movb	%al, 5(%rsi)
	.loc 3 180 0
	movl	%edi, %eax
	shrl	$4, %eax
	andl	$15, %eax
	movl	(%r8,%rax,4), %eax
	movb	%al, 6(%rsi)
	.loc 3 181 0
	movq	%rdi, %rax
	andl	$15, %eax
	movl	(%r8,%rax,4), %eax
	movb	%al, 7(%rsi)
	.loc 3 182 0
	addq	$8, %rsi
.L230:
	.loc 3 166 0
	cmpl	%ecx, %r10d
	jl	.L231
	rep ; ret
.LFE222:
	.size	vga_draw_line2_8, .-vga_draw_line2_8
	.p2align 4,,15
	.type	vga_draw_line2d2_8, @function
vga_draw_line2d2_8:
.LFB223:
	.loc 3 201 0
	.loc 3 206 0
	movzbq	601(%rdi), %rax
	.loc 3 205 0
	leaq	2096(%rdi), %r8
	.loc 3 201 0
	movq	%rdx, %r9
	.loc 3 207 0
	sarl	$3, %ecx
	.loc 3 208 0
	xorl	%r10d, %r10d
	.loc 3 206 0
	andl	$15, %eax
	movl	mask16(,%rax,4), %r11d
	jmp	.L239
	.p2align 4,,7
.L240:
	.loc 3 210 0
	movl	(%r9), %edx
	.loc 3 208 0
	incl	%r10d
	.loc 3 225 0
	addq	$4, %r9
	.loc 3 210 0
	andl	%r11d, %edx
	.loc 3 211 0
	movzbl	%dl, %eax 
	movzwl	expand2(%rax,%rax), %edi
	.loc 3 212 0
	movl	%edx, %eax
	.loc 3 218 0
	shrl	$8, %edx
	.loc 3 212 0
	shrl	$16, %eax
	movzbl	%al, %eax 
	movzwl	expand2(%rax,%rax), %eax
	sall	$2, %eax
	orl	%eax, %edi
	.loc 3 213 0
	movl	%edi, %eax
	shrl	$12, %eax
	mov	%eax, %eax
	movl	(%r8,%rax,4), %eax
	movw	%ax, (%rsi)
	.loc 3 214 0
	movl	%edi, %eax
	shrl	$8, %eax
	andl	$15, %eax
	movl	(%r8,%rax,4), %eax
	movw	%ax, 2(%rsi)
	.loc 3 215 0
	movl	%edi, %eax
	shrl	$4, %eax
	andl	$15, %eax
	movl	(%r8,%rax,4), %eax
	movw	%ax, 4(%rsi)
	.loc 3 216 0
	movq	%rdi, %rax
	andl	$15, %eax
	movl	(%r8,%rax,4), %eax
	movw	%ax, 6(%rsi)
	.loc 3 218 0
	movzbl	%dl, %eax 
	.loc 3 219 0
	shrl	$16, %edx
	movzbl	%dl, %edx 
	.loc 3 218 0
	movzwl	expand2(%rax,%rax), %edi
	.loc 3 219 0
	movzwl	expand2(%rdx,%rdx), %eax
	sall	$2, %eax
	orl	%eax, %edi
	.loc 3 220 0
	movl	%edi, %eax
	shrl	$12, %eax
	mov	%eax, %eax
	movl	(%r8,%rax,4), %eax
	movw	%ax, 8(%rsi)
	.loc 3 221 0
	movl	%edi, %eax
	shrl	$8, %eax
	andl	$15, %eax
	movl	(%r8,%rax,4), %eax
	movw	%ax, 10(%rsi)
	.loc 3 222 0
	movl	%edi, %eax
	shrl	$4, %eax
	andl	$15, %eax
	movl	(%r8,%rax,4), %eax
	movw	%ax, 12(%rsi)
	.loc 3 223 0
	movq	%rdi, %rax
	andl	$15, %eax
	movl	(%r8,%rax,4), %eax
	movw	%ax, 14(%rsi)
	.loc 3 224 0
	addq	$16, %rsi
.L239:
	.loc 3 208 0
	cmpl	%ecx, %r10d
	jl	.L240
	rep ; ret
.LFE223:
	.size	vga_draw_line2d2_8, .-vga_draw_line2d2_8
	.p2align 4,,15
	.type	vga_draw_line4_8, @function
vga_draw_line4_8:
.LFB224:
	.loc 3 234 0
	pushq	%rbx
.LCFI23:
	.loc 3 239 0
	movzbq	601(%rdi), %rax
	.loc 3 234 0
	movl	%ecx, %r11d
	.loc 3 238 0
	leaq	2096(%rdi), %r9
	.loc 3 234 0
	movq	%rsi, %r8
	movq	%rdx, %r10
	.loc 3 240 0
	sarl	$3, %r11d
	.loc 3 241 0
	xorl	%edi, %edi
	.loc 3 239 0
	andl	$15, %eax
	movl	mask16(,%rax,4), %ebx
	jmp	.L248
	.p2align 4,,7
.L249:
	.loc 3 243 0
	movl	(%r10), %edx
	.loc 3 241 0
	incl	%edi
	.loc 3 257 0
	addq	$4, %r10
	.loc 3 243 0
	andl	%ebx, %edx
	.loc 3 244 0
	movzbl	%dl, %esi 
	.loc 3 245 0
	shrl	$8, %edx
	movzbl	%dl, %eax 
	.loc 3 246 0
	shrl	$8, %edx
	.loc 3 245 0
	movl	expand4(,%rax,4), %ecx
	.loc 3 246 0
	movzbl	%dl, %eax 
	.loc 3 247 0
	shrl	$8, %edx
	.loc 3 246 0
	movl	expand4(,%rax,4), %eax
	.loc 3 247 0
	movzbl	%dl, %edx 
	.loc 3 245 0
	addl	%ecx, %ecx
	orl	expand4(,%rsi,4), %ecx
	.loc 3 246 0
	sall	$2, %eax
	orl	%eax, %ecx
	.loc 3 247 0
	movl	expand4(,%rdx,4), %eax
	sall	$3, %eax
	orl	%eax, %ecx
	.loc 3 248 0
	movl	%ecx, %eax
	shrl	$28, %eax
	mov	%eax, %eax
	movl	(%r9,%rax,4), %eax
	movb	%al, (%r8)
	.loc 3 249 0
	movl	%ecx, %eax
	shrl	$24, %eax
	andl	$15, %eax
	movl	(%r9,%rax,4), %eax
	movb	%al, 1(%r8)
	.loc 3 250 0
	movl	%ecx, %eax
	shrl	$20, %eax
	andl	$15, %eax
	movl	(%r9,%rax,4), %eax
	movb	%al, 2(%r8)
	.loc 3 251 0
	movl	%ecx, %eax
	shrl	$16, %eax
	andl	$15, %eax
	movl	(%r9,%rax,4), %eax
	movb	%al, 3(%r8)
	.loc 3 252 0
	movl	%ecx, %eax
	shrl	$12, %eax
	andl	$15, %eax
	movl	(%r9,%rax,4), %eax
	movb	%al, 4(%r8)
	.loc 3 253 0
	movl	%ecx, %eax
	shrl	$8, %eax
	andl	$15, %eax
	movl	(%r9,%rax,4), %eax
	movb	%al, 5(%r8)
	.loc 3 254 0
	movl	%ecx, %eax
	.loc 3 255 0
	andl	$15, %ecx
	.loc 3 254 0
	shrl	$4, %eax
	andl	$15, %eax
	movl	(%r9,%rax,4), %eax
	movb	%al, 6(%r8)
	.loc 3 255 0
	movl	(%r9,%rcx,4), %eax
	movb	%al, 7(%r8)
	.loc 3 256 0
	addq	$8, %r8
.L248:
	.loc 3 241 0
	cmpl	%r11d, %edi
	jl	.L249
	popq	%rbx
	ret
.LFE224:
	.size	vga_draw_line4_8, .-vga_draw_line4_8
	.p2align 4,,15
	.type	vga_draw_line4d2_8, @function
vga_draw_line4d2_8:
.LFB225:
	.loc 3 266 0
	pushq	%rbx
.LCFI24:
	.loc 3 271 0
	movzbq	601(%rdi), %rax
	.loc 3 266 0
	movl	%ecx, %r11d
	.loc 3 270 0
	leaq	2096(%rdi), %r9
	.loc 3 266 0
	movq	%rsi, %r8
	movq	%rdx, %r10
	.loc 3 272 0
	sarl	$3, %r11d
	.loc 3 273 0
	xorl	%edi, %edi
	.loc 3 271 0
	andl	$15, %eax
	movl	mask16(,%rax,4), %ebx
	jmp	.L257
	.p2align 4,,7
.L258:
	.loc 3 275 0
	movl	(%r10), %edx
	.loc 3 273 0
	incl	%edi
	.loc 3 289 0
	addq	$4, %r10
	.loc 3 275 0
	andl	%ebx, %edx
	.loc 3 276 0
	movzbl	%dl, %esi 
	.loc 3 277 0
	shrl	$8, %edx
	movzbl	%dl, %eax 
	.loc 3 278 0
	shrl	$8, %edx
	.loc 3 277 0
	movl	expand4(,%rax,4), %ecx
	.loc 3 278 0
	movzbl	%dl, %eax 
	.loc 3 279 0
	shrl	$8, %edx
	.loc 3 278 0
	movl	expand4(,%rax,4), %eax
	.loc 3 279 0
	movzbl	%dl, %edx 
	.loc 3 277 0
	addl	%ecx, %ecx
	orl	expand4(,%rsi,4), %ecx
	.loc 3 278 0
	sall	$2, %eax
	orl	%eax, %ecx
	.loc 3 279 0
	movl	expand4(,%rdx,4), %eax
	sall	$3, %eax
	orl	%eax, %ecx
	.loc 3 280 0
	movl	%ecx, %eax
	shrl	$28, %eax
	mov	%eax, %eax
	movl	(%r9,%rax,4), %eax
	movw	%ax, (%r8)
	.loc 3 281 0
	movl	%ecx, %eax
	shrl	$24, %eax
	andl	$15, %eax
	movl	(%r9,%rax,4), %eax
	movw	%ax, 2(%r8)
	.loc 3 282 0
	movl	%ecx, %eax
	shrl	$20, %eax
	andl	$15, %eax
	movl	(%r9,%rax,4), %eax
	movw	%ax, 4(%r8)
	.loc 3 283 0
	movl	%ecx, %eax
	shrl	$16, %eax
	andl	$15, %eax
	movl	(%r9,%rax,4), %eax
	movw	%ax, 6(%r8)
	.loc 3 284 0
	movl	%ecx, %eax
	shrl	$12, %eax
	andl	$15, %eax
	movl	(%r9,%rax,4), %eax
	movw	%ax, 8(%r8)
	.loc 3 285 0
	movl	%ecx, %eax
	shrl	$8, %eax
	andl	$15, %eax
	movl	(%r9,%rax,4), %eax
	movw	%ax, 10(%r8)
	.loc 3 286 0
	movl	%ecx, %eax
	.loc 3 287 0
	andl	$15, %ecx
	.loc 3 286 0
	shrl	$4, %eax
	andl	$15, %eax
	movl	(%r9,%rax,4), %eax
	movw	%ax, 12(%r8)
	.loc 3 287 0
	movl	(%r9,%rcx,4), %eax
	movw	%ax, 14(%r8)
	.loc 3 288 0
	addq	$16, %r8
.L257:
	.loc 3 273 0
	cmpl	%r11d, %edi
	jl	.L258
	popq	%rbx
	ret
.LFE225:
	.size	vga_draw_line4d2_8, .-vga_draw_line4d2_8
	.p2align 4,,15
	.type	vga_draw_line8d2_8, @function
vga_draw_line8d2_8:
.LFB226:
	.loc 3 300 0
	.loc 3 304 0
	addq	$2096, %rdi
	.loc 3 305 0
	sarl	$3, %ecx
	.loc 3 306 0
	xorl	%r8d, %r8d
	jmp	.L266
	.p2align 4,,7
.L267:
	.loc 3 307 0
	movzbq	(%rdx), %rax
	.loc 3 306 0
	incl	%r8d
	.loc 3 307 0
	movl	(%rdi,%rax,4), %eax
	movw	%ax, (%rsi)
	.loc 3 308 0
	movzbq	1(%rdx), %rax
	movl	(%rdi,%rax,4), %eax
	movw	%ax, 2(%rsi)
	.loc 3 309 0
	movzbq	2(%rdx), %rax
	movl	(%rdi,%rax,4), %eax
	movw	%ax, 4(%rsi)
	.loc 3 310 0
	movzbq	3(%rdx), %rax
	.loc 3 312 0
	addq	$4, %rdx
	.loc 3 310 0
	movl	(%rdi,%rax,4), %eax
	movw	%ax, 6(%rsi)
	.loc 3 311 0
	addq	$8, %rsi
.L266:
	.loc 3 306 0
	cmpl	%ecx, %r8d
	jl	.L267
	rep ; ret
.LFE226:
	.size	vga_draw_line8d2_8, .-vga_draw_line8d2_8
	.p2align 4,,15
	.type	vga_draw_line8_8, @function
vga_draw_line8_8:
.LFB227:
	.loc 3 323 0
	.loc 3 327 0
	addq	$2096, %rdi
	.loc 3 328 0
	sarl	$3, %ecx
	.loc 3 329 0
	xorl	%r8d, %r8d
	jmp	.L275
	.p2align 4,,7
.L276:
	.loc 3 330 0
	movzbq	(%rdx), %rax
	.loc 3 329 0
	incl	%r8d
	.loc 3 330 0
	movl	(%rdi,%rax,4), %eax
	movb	%al, (%rsi)
	.loc 3 331 0
	movzbq	1(%rdx), %rax
	movl	(%rdi,%rax,4), %eax
	movb	%al, 1(%rsi)
	.loc 3 332 0
	movzbq	2(%rdx), %rax
	movl	(%rdi,%rax,4), %eax
	movb	%al, 2(%rsi)
	.loc 3 333 0
	movzbq	3(%rdx), %rax
	movl	(%rdi,%rax,4), %eax
	movb	%al, 3(%rsi)
	.loc 3 334 0
	movzbq	4(%rdx), %rax
	movl	(%rdi,%rax,4), %eax
	movb	%al, 4(%rsi)
	.loc 3 335 0
	movzbq	5(%rdx), %rax
	movl	(%rdi,%rax,4), %eax
	movb	%al, 5(%rsi)
	.loc 3 336 0
	movzbq	6(%rdx), %rax
	movl	(%rdi,%rax,4), %eax
	movb	%al, 6(%rsi)
	.loc 3 337 0
	movzbq	7(%rdx), %rax
	.loc 3 339 0
	addq	$8, %rdx
	.loc 3 337 0
	movl	(%rdi,%rax,4), %eax
	movb	%al, 7(%rsi)
	.loc 3 338 0
	addq	$8, %rsi
.L275:
	.loc 3 329 0
	cmpl	%ecx, %r8d
	jl	.L276
	rep ; ret
.LFE227:
	.size	vga_draw_line8_8, .-vga_draw_line8_8
	.p2align 4,,15
.globl vga_draw_cursor_line_8
	.type	vga_draw_cursor_line_8, @function
vga_draw_cursor_line_8:
.LFB228:
	.loc 3 349 0
	pushq	%rbp
.LCFI25:
	.loc 3 357 0
	xorl	%r10d, %r10d
	.loc 3 356 0
	movslq	%edx,%rdx
	.loc 3 349 0
	pushq	%rbx
.LCFI26:
	.loc 3 349 0
	movq	%rsi, %rbx
	movl	%ecx, %esi
	.loc 3 357 0
	cmpl	%esi, %r10d
	.loc 3 349 0
	movl	24(%rsp), %ebp
	.loc 3 356 0
	leaq	(%rdx,%rbx), %r11
	.loc 3 357 0
	jge	.L289
	.p2align 4,,7
.L291:
	.loc 3 358 0
	movl	%r10d, %eax
	movl	%r10d, %ecx
	sarl	$3, %eax
	notl	%ecx
	cltq
	andl	$7, %ecx
	movzbl	(%rax,%rbx), %edx
	.loc 3 359 0
	movzbl	(%rax,%r11), %eax
	sarl	%cl, %eax
	.loc 3 358 0
	sarl	%cl, %edx
	.loc 3 359 0
	andl	$1, %eax
	.loc 3 358 0
	andl	$1, %edx
	.loc 3 361 0
	addl	%eax, %eax
	orl	%edx, %eax
	cmpl	$2, %eax
	je	.L284
	jg	.L286
	decl	%eax
	je	.L283
.L281:
	.loc 3 405 0
	incq	%rdi
	.loc 3 357 0
	incl	%r10d
.L292:
	cmpl	%esi, %r10d
	.p2align 4,,4
	jl	.L291
.L289:
	popq	%rbx
	popq	%rbp
	.p2align 4,,2
	ret
	.p2align 4,,7
.L286:
	.loc 3 361 0
	cmpl	$3, %eax
	.p2align 4,,2
	jne	.L281
	.loc 3 371 0
	movb	%r9b, (%rdi)
	.loc 3 357 0
	incl	%r10d
	.loc 3 405 0
	incq	%rdi
	.p2align 4,,2
	jmp	.L292
	.p2align 4,,7
.L283:
	.loc 3 365 0
	xorb	%bpl, (%rdi)
	.loc 3 357 0
	incl	%r10d
	.loc 3 405 0
	incq	%rdi
	jmp	.L292
	.p2align 4,,7
.L284:
	.loc 3 368 0
	movb	%r8b, (%rdi)
	.loc 3 357 0
	incl	%r10d
	.loc 3 405 0
	incq	%rdi
	jmp	.L292
.LFE228:
	.size	vga_draw_cursor_line_8, .-vga_draw_cursor_line_8
	.p2align 4,,15
	.type	vga_draw_line15_8, @function
vga_draw_line15_8:
.LFB229:
	.loc 3 419 0
	movq	%rdx, %r8
	movl	%ecx, %edi
	.p2align 4,,7
.L294:
.LBB30:
.LBB31:
	.loc 2 342 0
	movzwl	(%r8), %eax
.LBE31:
.LBE30:
	.loc 3 433 0
	addq	$2, %r8
.LBB32:
.LBB33:
	.file 5 "/home/remco/Projects/Argos/src/hw/pixel_ops.h"
	.loc 5 4 0
	movl	%eax, %edx
.LBE33:
.LBE32:
	.loc 3 431 0
	movl	%eax, %ecx
.LBB34:
.LBB35:
	.loc 5 4 0
	shrl	$5, %eax
	shrl	$7, %edx
.LBE35:
.LBE34:
	.loc 3 431 0
	shrl	$3, %ecx
.LBB36:
.LBB37:
	.loc 5 4 0
	andl	$28, %eax
	andl	$224, %edx
	andl	$3, %ecx
	orl	%eax, %edx
	orl	%ecx, %edx
.LBE37:
.LBE36:
	.loc 5 3 0
	movb	%dl, (%rsi)
	.loc 3 434 0
	incq	%rsi
	.loc 3 435 0
	decl	%edi
	jne	.L294
	rep ; ret
.LFE229:
	.size	vga_draw_line15_8, .-vga_draw_line15_8
	.p2align 4,,15
	.type	vga_draw_line16_8, @function
vga_draw_line16_8:
.LFB230:
	.loc 3 444 0
	movq	%rdx, %r8
	movl	%ecx, %edi
	.p2align 4,,7
.L300:
.LBB38:
.LBB39:
	.loc 2 342 0
	movzwl	(%r8), %eax
.LBE39:
.LBE38:
	.loc 3 458 0
	addq	$2, %r8
.LBB40:
.LBB41:
	.loc 5 4 0
	movl	%eax, %edx
.LBE41:
.LBE40:
	.loc 3 456 0
	movl	%eax, %ecx
.LBB42:
.LBB43:
	.loc 5 4 0
	shrl	$6, %eax
	shrl	$13, %edx
.LBE43:
.LBE42:
	.loc 3 456 0
	shrl	$3, %ecx
.LBB44:
.LBB45:
	.loc 5 4 0
	andl	$28, %eax
	sall	$5, %edx
	andl	$3, %ecx
	orl	%eax, %edx
	orl	%ecx, %edx
.LBE45:
.LBE44:
	.loc 5 3 0
	movb	%dl, (%rsi)
	.loc 3 459 0
	incq	%rsi
	.loc 3 460 0
	decl	%edi
	jne	.L300
	rep ; ret
.LFE230:
	.size	vga_draw_line16_8, .-vga_draw_line16_8
	.p2align 4,,15
	.type	vga_draw_line24_8, @function
vga_draw_line24_8:
.LFB231:
	.loc 3 469 0
	movq	%rdx, %rdi
	movl	%ecx, %r8d
	.p2align 4,,7
.L306:
	.loc 3 481 0
	movzbl	1(%rdi), %edx
	.loc 3 482 0
	movzbl	2(%rdi), %eax
	.loc 3 480 0
	movzbl	(%rdi), %ecx
	.loc 3 485 0
	addq	$3, %rdi
.LBB46:
.LBB47:
	.loc 5 4 0
	shrl	$5, %edx
	andl	$224, %eax
	sall	$2, %edx
	shrl	$6, %ecx
	orl	%edx, %eax
	orl	%ecx, %eax
.LBE47:
.LBE46:
	.loc 5 3 0
	movb	%al, (%rsi)
	.loc 3 486 0
	incq	%rsi
	.loc 3 487 0
	decl	%r8d
	jne	.L306
	rep ; ret
.LFE231:
	.size	vga_draw_line24_8, .-vga_draw_line24_8
	.p2align 4,,15
	.type	vga_draw_line32_8, @function
vga_draw_line32_8:
.LFB232:
	.loc 3 495 0
	movq	%rdx, %rdi
	movl	%ecx, %r8d
	.p2align 4,,7
.L311:
	.loc 3 510 0
	movzbl	1(%rdi), %edx
	.loc 3 511 0
	movzbl	2(%rdi), %eax
	.loc 3 509 0
	movzbl	(%rdi), %ecx
	.loc 3 514 0
	addq	$4, %rdi
.LBB48:
.LBB49:
	.loc 5 4 0
	shrl	$5, %edx
	andl	$224, %eax
	sall	$2, %edx
	shrl	$6, %ecx
	orl	%edx, %eax
	orl	%ecx, %eax
.LBE49:
.LBE48:
	.loc 5 3 0
	movb	%al, (%rsi)
	.loc 3 515 0
	incq	%rsi
	.loc 3 516 0
	decl	%r8d
	jne	.L311
	rep ; ret
.LFE232:
	.size	vga_draw_line32_8, .-vga_draw_line32_8
	.p2align 4,,15
	.type	vga_draw_line15_15, @function
vga_draw_line15_15:
.LFB233:
	.loc 3 419 0
	.loc 3 421 0
	addl	%ecx, %ecx
	.loc 3 419 0
	movq	%rsi, %rdi
	movq	%rdx, %rsi
	.loc 3 421 0
	movslq	%ecx,%rdx
	jmp	memcpy
.LFE233:
	.size	vga_draw_line15_15, .-vga_draw_line15_15
	.p2align 4,,15
	.type	vga_draw_line16_15, @function
vga_draw_line16_15:
.LFB234:
	.loc 3 444 0
	movq	%rdx, %r8
	movl	%ecx, %edi
	.p2align 4,,7
.L317:
.LBB50:
.LBB51:
	.loc 2 342 0
	movzwl	(%r8), %ecx
.LBE51:
.LBE50:
	.loc 3 458 0
	addq	$2, %r8
.LBB52:
.LBB53:
	.loc 5 10 0
	movl	%ecx, %edx
	movl	%ecx, %eax
	andl	$31, %ecx
	shrl	$11, %edx
	shrl	%eax
	sall	$10, %edx
	andl	$992, %eax
	orl	%eax, %edx
	orl	%ecx, %edx
.LBE53:
.LBE52:
	.loc 5 9 0
	movw	%dx, (%rsi)
	.loc 3 459 0
	addq	$2, %rsi
	.loc 3 460 0
	decl	%edi
	jne	.L317
	rep ; ret
.LFE234:
	.size	vga_draw_line16_15, .-vga_draw_line16_15
	.p2align 4,,15
	.type	vga_draw_line24_15, @function
vga_draw_line24_15:
.LFB235:
	.loc 3 469 0
	movq	%rdx, %rdi
	movl	%ecx, %r8d
	.p2align 4,,7
.L323:
	.loc 3 481 0
	movzbl	1(%rdi), %edx
	.loc 3 482 0
	movzbl	2(%rdi), %eax
	.loc 3 480 0
	movzbl	(%rdi), %ecx
	.loc 3 485 0
	addq	$3, %rdi
.LBB54:
.LBB55:
	.loc 5 10 0
	shrl	$3, %eax
	shrl	$3, %edx
	sall	$10, %eax
	sall	$5, %edx
	shrl	$3, %ecx
	orl	%edx, %eax
	orl	%ecx, %eax
.LBE55:
.LBE54:
	.loc 5 9 0
	movw	%ax, (%rsi)
	.loc 3 486 0
	addq	$2, %rsi
	.loc 3 487 0
	decl	%r8d
	jne	.L323
	rep ; ret
.LFE235:
	.size	vga_draw_line24_15, .-vga_draw_line24_15
	.p2align 4,,15
	.type	vga_draw_line32_15, @function
vga_draw_line32_15:
.LFB236:
	.loc 3 495 0
	movq	%rdx, %rdi
	movl	%ecx, %r8d
	.p2align 4,,7
.L328:
	.loc 3 510 0
	movzbl	1(%rdi), %edx
	.loc 3 511 0
	movzbl	2(%rdi), %eax
	.loc 3 509 0
	movzbl	(%rdi), %ecx
	.loc 3 514 0
	addq	$4, %rdi
.LBB56:
.LBB57:
	.loc 5 10 0
	shrl	$3, %eax
	shrl	$3, %edx
	sall	$10, %eax
	sall	$5, %edx
	shrl	$3, %ecx
	orl	%edx, %eax
	orl	%ecx, %eax
.LBE57:
.LBE56:
	.loc 5 9 0
	movw	%ax, (%rsi)
	.loc 3 515 0
	addq	$2, %rsi
	.loc 3 516 0
	decl	%r8d
	jne	.L328
	rep ; ret
.LFE236:
	.size	vga_draw_line32_15, .-vga_draw_line32_15
	.p2align 4,,15
	.type	vga_draw_line15_15bgr, @function
vga_draw_line15_15bgr:
.LFB237:
	.loc 3 419 0
	.loc 3 421 0
	addl	%ecx, %ecx
	.loc 3 419 0
	movq	%rsi, %rdi
	movq	%rdx, %rsi
	.loc 3 421 0
	movslq	%ecx,%rdx
	jmp	memcpy
.LFE237:
	.size	vga_draw_line15_15bgr, .-vga_draw_line15_15bgr
	.p2align 4,,15
	.type	vga_draw_line16_15bgr, @function
vga_draw_line16_15bgr:
.LFB238:
	.loc 3 444 0
	movq	%rdx, %r8
	movl	%ecx, %edi
	.p2align 4,,7
.L334:
.LBB58:
.LBB59:
	.loc 2 342 0
	movzwl	(%r8), %eax
.LBE59:
.LBE58:
	.loc 3 458 0
	addq	$2, %r8
.LBB60:
.LBB61:
	.loc 5 16 0
	movl	%eax, %edx
	shrl	%eax
	andl	$31, %edx
	movl	%eax, %ecx
	shrl	$10, %eax
	sall	$10, %edx
	andl	$992, %ecx
	orl	%ecx, %edx
	orl	%eax, %edx
.LBE61:
.LBE60:
	.loc 5 15 0
	movw	%dx, (%rsi)
	.loc 3 459 0
	addq	$2, %rsi
	.loc 3 460 0
	decl	%edi
	jne	.L334
	rep ; ret
.LFE238:
	.size	vga_draw_line16_15bgr, .-vga_draw_line16_15bgr
	.p2align 4,,15
	.type	vga_draw_line24_15bgr, @function
vga_draw_line24_15bgr:
.LFB239:
	.loc 3 469 0
	movq	%rdx, %rdi
	movl	%ecx, %r8d
	.p2align 4,,7
.L340:
	.loc 3 480 0
	movzbl	(%rdi), %eax
	.loc 3 481 0
	movzbl	1(%rdi), %edx
	.loc 3 482 0
	movzbl	2(%rdi), %ecx
	.loc 3 485 0
	addq	$3, %rdi
.LBB62:
.LBB63:
	.loc 5 16 0
	shrl	$3, %eax
	shrl	$3, %edx
	sall	$10, %eax
	sall	$5, %edx
	shrl	$3, %ecx
	orl	%edx, %eax
	orl	%ecx, %eax
.LBE63:
.LBE62:
	.loc 5 15 0
	movw	%ax, (%rsi)
	.loc 3 486 0
	addq	$2, %rsi
	.loc 3 487 0
	decl	%r8d
	jne	.L340
	rep ; ret
.LFE239:
	.size	vga_draw_line24_15bgr, .-vga_draw_line24_15bgr
	.p2align 4,,15
	.type	vga_draw_line32_15bgr, @function
vga_draw_line32_15bgr:
.LFB240:
	.loc 3 495 0
	movq	%rdx, %rdi
	movl	%ecx, %r8d
	.p2align 4,,7
.L345:
	.loc 3 509 0
	movzbl	(%rdi), %eax
	.loc 3 510 0
	movzbl	1(%rdi), %edx
	.loc 3 511 0
	movzbl	2(%rdi), %ecx
	.loc 3 514 0
	addq	$4, %rdi
.LBB64:
.LBB65:
	.loc 5 16 0
	shrl	$3, %eax
	shrl	$3, %edx
	sall	$10, %eax
	sall	$5, %edx
	shrl	$3, %ecx
	orl	%edx, %eax
	orl	%ecx, %eax
.LBE65:
.LBE64:
	.loc 5 15 0
	movw	%ax, (%rsi)
	.loc 3 515 0
	addq	$2, %rsi
	.loc 3 516 0
	decl	%r8d
	jne	.L345
	rep ; ret
.LFE240:
	.size	vga_draw_line32_15bgr, .-vga_draw_line32_15bgr
	.p2align 4,,15
	.type	vga_draw_glyph8_16, @function
vga_draw_glyph8_16:
.LFB242:
	.loc 3 74 0
	.loc 3 74 0
	movq	%rdx, %r10
	.loc 3 77 0
	xorl	%r9d, %r8d
	movslq	%esi,%rsi
	.p2align 4,,7
.L350:
	.loc 3 79 0
	movzbl	(%r10), %edx
	.loc 3 81 0
	addq	$4, %r10
.LBB66:
.LBB67:
	.loc 3 55 0
	movl	%edx, %eax
	shrl	$6, %eax
	mov	%eax, %eax
	movl	dmask4(,%rax,4), %eax
	andl	%r8d, %eax
	xorl	%r9d, %eax
	movl	%eax, (%rdi)
	.loc 3 56 0
	movl	%edx, %eax
	shrl	$4, %eax
	andl	$3, %eax
	movl	dmask4(,%rax,4), %eax
	andl	%r8d, %eax
	xorl	%r9d, %eax
	movl	%eax, 4(%rdi)
	.loc 3 57 0
	movl	%edx, %eax
	.loc 3 58 0
	andl	$3, %edx
	.loc 3 57 0
	shrl	$2, %eax
	andl	$3, %eax
	movl	dmask4(,%rax,4), %eax
	andl	%r8d, %eax
	xorl	%r9d, %eax
	movl	%eax, 8(%rdi)
	.loc 3 58 0
	movl	dmask4(,%rdx,4), %eax
	andl	%r8d, %eax
	xorl	%r9d, %eax
	movl	%eax, 12(%rdi)
.LBE67:
.LBE66:
	.loc 3 82 0
	addq	%rsi, %rdi
	.loc 3 83 0
	decl	%ecx
	jne	.L350
	rep ; ret
.LFE242:
	.size	vga_draw_glyph8_16, .-vga_draw_glyph8_16
	.p2align 4,,15
	.type	vga_draw_glyph16_16, @function
vga_draw_glyph16_16:
.LFB243:
	.loc 3 89 0
	pushq	%rbx
.LCFI27:
	.loc 3 89 0
	movq	%rdx, %r11
	movl	%ecx, %r10d
	.loc 3 92 0
	xorl	%r9d, %r8d
	movslq	%esi,%rbx
	.p2align 4,,7
.L355:
	.loc 3 94 0
	movzbl	(%r11), %ecx
.LBB68:
	.loc 3 50 0
	leaq	16(%rdi), %rsi
.LBE68:
	.loc 3 101 0
	addq	$4, %r11
.LBB69:
	.loc 3 50 0
	movl	%ecx, %eax
.LBE69:
.LBB70:
	andl	$15, %ecx
.LBE70:
.LBB71:
	shrl	$4, %eax
	mov	%eax, %eax
	movzbl	expand4to8(%rax), %edx
.LBB72:
	.loc 3 55 0
	movl	%edx, %eax
	shrl	$6, %eax
	mov	%eax, %eax
	movl	dmask4(,%rax,4), %eax
	andl	%r8d, %eax
	xorl	%r9d, %eax
	movl	%eax, (%rdi)
	.loc 3 56 0
	movl	%edx, %eax
	shrl	$4, %eax
	andl	$3, %eax
	movl	dmask4(,%rax,4), %eax
	andl	%r8d, %eax
	xorl	%r9d, %eax
	movl	%eax, 4(%rdi)
	.loc 3 57 0
	movl	%edx, %eax
	.loc 3 58 0
	andl	$3, %edx
	.loc 3 57 0
	shrl	$2, %eax
	andl	$3, %eax
	movl	dmask4(,%rax,4), %eax
	andl	%r8d, %eax
	xorl	%r9d, %eax
	movl	%eax, 8(%rdi)
	.loc 3 58 0
	movl	dmask4(,%rdx,4), %eax
	andl	%r8d, %eax
	xorl	%r9d, %eax
	movl	%eax, 12(%rdi)
.LBE72:
.LBE71:
.LBB73:
	.loc 3 50 0
	movzbl	expand4to8(%rcx), %edx
.LBB74:
	.loc 3 55 0
	movl	%edx, %eax
	shrl	$6, %eax
	mov	%eax, %eax
	movl	dmask4(,%rax,4), %eax
	andl	%r8d, %eax
	xorl	%r9d, %eax
	movl	%eax, 16(%rdi)
	.loc 3 56 0
	movl	%edx, %eax
.LBE74:
.LBE73:
	.loc 3 102 0
	addq	%rbx, %rdi
.LBB75:
.LBB76:
	.loc 3 56 0
	shrl	$4, %eax
	andl	$3, %eax
	movl	dmask4(,%rax,4), %eax
	andl	%r8d, %eax
	xorl	%r9d, %eax
	movl	%eax, 4(%rsi)
	.loc 3 57 0
	movl	%edx, %eax
	.loc 3 58 0
	andl	$3, %edx
	.loc 3 57 0
	shrl	$2, %eax
	andl	$3, %eax
	movl	dmask4(,%rax,4), %eax
	andl	%r8d, %eax
	xorl	%r9d, %eax
	movl	%eax, 8(%rsi)
	.loc 3 58 0
	movl	dmask4(,%rdx,4), %eax
	andl	%r8d, %eax
	xorl	%r9d, %eax
.LBE76:
.LBE75:
	.loc 3 103 0
	decl	%r10d
.LBB77:
.LBB78:
	.loc 3 58 0
	movl	%eax, 12(%rsi)
.LBE78:
.LBE77:
	.loc 3 103 0
	jne	.L355
	popq	%rbx
	ret
.LFE243:
	.size	vga_draw_glyph16_16, .-vga_draw_glyph16_16
	.p2align 4,,15
	.type	vga_draw_glyph9_16, @function
vga_draw_glyph9_16:
.LFB244:
	.loc 3 109 0
	pushq	%rbx
.LCFI28:
	.loc 3 109 0
	movl	16(%rsp), %ebx
	movq	%rdx, %r11
	movl	%ecx, %r10d
	.loc 3 112 0
	xorl	%r9d, %r8d
	movslq	%esi,%rsi
	.p2align 4,,7
.L361:
	.loc 3 114 0
	movzbl	(%r11), %ecx
.LBB79:
	.loc 4 150 0
	leaq	4(%rdi), %rdx
.LBE79:
.LBB80:
	movl	%ecx, %eax
	shrl	$6, %eax
	mov	%eax, %eax
	movl	dmask4(,%rax,4), %eax
	andl	%r8d, %eax
	xorl	%r9d, %eax
.LBB81:
	.loc 4 153 0
	movb	%al, (%rdi)
	.loc 4 154 0
	shrl	$8, %eax
	movb	%al, 1(%rdi)
	.loc 4 155 0
	shrl	$8, %eax
	movb	%al, 2(%rdi)
	.loc 4 156 0
	shrl	$8, %eax
	movb	%al, 3(%rdi)
.LBE81:
.LBE80:
.LBB82:
	.loc 4 150 0
	movl	%ecx, %eax
	shrl	$4, %eax
	andl	$3, %eax
	movl	dmask4(,%rax,4), %eax
	andl	%r8d, %eax
	xorl	%r9d, %eax
.LBB83:
	.loc 4 153 0
	movb	%al, 4(%rdi)
	.loc 4 154 0
	shrl	$8, %eax
	movb	%al, 1(%rdx)
	.loc 4 155 0
	shrl	$8, %eax
	movb	%al, 2(%rdx)
	.loc 4 156 0
	shrl	$8, %eax
	movb	%al, 3(%rdx)
.LBE83:
.LBE82:
.LBB84:
	.loc 4 150 0
	movl	%ecx, %eax
	leaq	8(%rdi), %rdx
	shrl	$2, %eax
.LBE84:
	.loc 3 128 0
	andl	$3, %ecx
.LBB85:
	.loc 4 150 0
	andl	$3, %eax
	movl	dmask4(,%rax,4), %eax
	andl	%r8d, %eax
	xorl	%r9d, %eax
.LBB86:
	.loc 4 153 0
	movb	%al, 8(%rdi)
	.loc 4 154 0
	shrl	$8, %eax
	movb	%al, 1(%rdx)
	.loc 4 155 0
	shrl	$8, %eax
	movb	%al, 2(%rdx)
	.loc 4 156 0
	shrl	$8, %eax
	movb	%al, 3(%rdx)
.LBE86:
.LBE85:
	.loc 3 128 0
	movl	dmask4(,%rcx,4), %eax
.LBB87:
	.loc 4 150 0
	leaq	12(%rdi), %rcx
.LBE87:
	.loc 3 128 0
	andl	%r8d, %eax
	xorl	%r9d, %eax
.LBB88:
.LBB89:
	.loc 4 154 0
	movl	%eax, %edx
	.loc 4 153 0
	movb	%al, 12(%rdi)
	.loc 4 154 0
	shrl	$8, %edx
	movb	%dl, 1(%rcx)
	.loc 4 155 0
	movl	%eax, %edx
	.loc 4 156 0
	shrl	$24, %eax
	.loc 4 155 0
	shrl	$16, %edx
.LBE89:
.LBE88:
	.loc 3 131 0
	testl	%ebx, %ebx
.LBB90:
.LBB91:
	.loc 4 156 0
	movb	%al, 3(%rcx)
	.loc 4 155 0
	movb	%dl, 2(%rcx)
.LBE91:
.LBE90:
	.loc 3 131 0
	cmove	%r9d, %edx
	.loc 3 149 0
	addq	$4, %r11
	.loc 3 131 0
	movw	%dx, 16(%rdi)
	.loc 3 150 0
	addq	%rsi, %rdi
	.loc 3 151 0
	decl	%r10d
	jne	.L361
	popq	%rbx
	ret
.LFE244:
	.size	vga_draw_glyph9_16, .-vga_draw_glyph9_16
	.p2align 4,,15
	.type	vga_draw_line2_16, @function
vga_draw_line2_16:
.LFB245:
	.loc 3 159 0
	.loc 3 164 0
	movzbq	601(%rdi), %rax
	.loc 3 163 0
	leaq	2096(%rdi), %r8
	.loc 3 159 0
	movq	%rdx, %r9
	.loc 3 165 0
	sarl	$3, %ecx
	.loc 3 166 0
	xorl	%r10d, %r10d
	.loc 3 164 0
	andl	$15, %eax
	movl	mask16(,%rax,4), %r11d
	jmp	.L377
	.p2align 4,,7
.L378:
	.loc 3 168 0
	movl	(%r9), %edx
	.loc 3 166 0
	incl	%r10d
	.loc 3 183 0
	addq	$4, %r9
	.loc 3 168 0
	andl	%r11d, %edx
	.loc 3 169 0
	movzbl	%dl, %eax 
	movzwl	expand2(%rax,%rax), %edi
	.loc 3 170 0
	movl	%edx, %eax
	.loc 3 176 0
	shrl	$8, %edx
	.loc 3 170 0
	shrl	$16, %eax
	movzbl	%al, %eax 
	movzwl	expand2(%rax,%rax), %eax
	sall	$2, %eax
	orl	%eax, %edi
	.loc 3 171 0
	movl	%edi, %eax
	shrl	$12, %eax
	mov	%eax, %eax
	movl	(%r8,%rax,4), %eax
	movw	%ax, (%rsi)
	.loc 3 172 0
	movl	%edi, %eax
	shrl	$8, %eax
	andl	$15, %eax
	movl	(%r8,%rax,4), %eax
	movw	%ax, 2(%rsi)
	.loc 3 173 0
	movl	%edi, %eax
	shrl	$4, %eax
	andl	$15, %eax
	movl	(%r8,%rax,4), %eax
	movw	%ax, 4(%rsi)
	.loc 3 174 0
	movq	%rdi, %rax
	andl	$15, %eax
	movl	(%r8,%rax,4), %eax
	movw	%ax, 6(%rsi)
	.loc 3 176 0
	movzbl	%dl, %eax 
	.loc 3 177 0
	shrl	$16, %edx
	movzbl	%dl, %edx 
	.loc 3 176 0
	movzwl	expand2(%rax,%rax), %edi
	.loc 3 177 0
	movzwl	expand2(%rdx,%rdx), %eax
	sall	$2, %eax
	orl	%eax, %edi
	.loc 3 178 0
	movl	%edi, %eax
	shrl	$12, %eax
	mov	%eax, %eax
	movl	(%r8,%rax,4), %eax
	movw	%ax, 8(%rsi)
	.loc 3 179 0
	movl	%edi, %eax
	shrl	$8, %eax
	andl	$15, %eax
	movl	(%r8,%rax,4), %eax
	movw	%ax, 10(%rsi)
	.loc 3 180 0
	movl	%edi, %eax
	shrl	$4, %eax
	andl	$15, %eax
	movl	(%r8,%rax,4), %eax
	movw	%ax, 12(%rsi)
	.loc 3 181 0
	movq	%rdi, %rax
	andl	$15, %eax
	movl	(%r8,%rax,4), %eax
	movw	%ax, 14(%rsi)
	.loc 3 182 0
	addq	$16, %rsi
.L377:
	.loc 3 166 0
	cmpl	%ecx, %r10d
	jl	.L378
	rep ; ret
.LFE245:
	.size	vga_draw_line2_16, .-vga_draw_line2_16
	.p2align 4,,15
	.type	vga_draw_line2d2_16, @function
vga_draw_line2d2_16:
.LFB246:
	.loc 3 201 0
	.loc 3 206 0
	movzbq	601(%rdi), %rax
	.loc 3 205 0
	leaq	2096(%rdi), %r8
	.loc 3 201 0
	movq	%rdx, %r9
	.loc 3 207 0
	sarl	$3, %ecx
	.loc 3 208 0
	xorl	%r10d, %r10d
	.loc 3 206 0
	andl	$15, %eax
	movl	mask16(,%rax,4), %r11d
	jmp	.L386
	.p2align 4,,7
.L387:
	.loc 3 210 0
	movl	(%r9), %edx
	.loc 3 208 0
	incl	%r10d
	.loc 3 225 0
	addq	$4, %r9
	.loc 3 210 0
	andl	%r11d, %edx
	.loc 3 211 0
	movzbl	%dl, %eax 
	movzwl	expand2(%rax,%rax), %edi
	.loc 3 212 0
	movl	%edx, %eax
	.loc 3 218 0
	shrl	$8, %edx
	.loc 3 212 0
	shrl	$16, %eax
	movzbl	%al, %eax 
	movzwl	expand2(%rax,%rax), %eax
	sall	$2, %eax
	orl	%eax, %edi
	.loc 3 213 0
	movl	%edi, %eax
	shrl	$12, %eax
	mov	%eax, %eax
	movl	(%r8,%rax,4), %eax
	movl	%eax, (%rsi)
	.loc 3 214 0
	movl	%edi, %eax
	shrl	$8, %eax
	andl	$15, %eax
	movl	(%r8,%rax,4), %eax
	movl	%eax, 4(%rsi)
	.loc 3 215 0
	movl	%edi, %eax
	shrl	$4, %eax
	andl	$15, %eax
	movl	(%r8,%rax,4), %eax
	movl	%eax, 8(%rsi)
	.loc 3 216 0
	movq	%rdi, %rax
	andl	$15, %eax
	movl	(%r8,%rax,4), %eax
	movl	%eax, 12(%rsi)
	.loc 3 218 0
	movzbl	%dl, %eax 
	.loc 3 219 0
	shrl	$16, %edx
	movzbl	%dl, %edx 
	.loc 3 218 0
	movzwl	expand2(%rax,%rax), %edi
	.loc 3 219 0
	movzwl	expand2(%rdx,%rdx), %eax
	sall	$2, %eax
	orl	%eax, %edi
	.loc 3 220 0
	movl	%edi, %eax
	shrl	$12, %eax
	mov	%eax, %eax
	movl	(%r8,%rax,4), %eax
	movl	%eax, 16(%rsi)
	.loc 3 221 0
	movl	%edi, %eax
	shrl	$8, %eax
	andl	$15, %eax
	movl	(%r8,%rax,4), %eax
	movl	%eax, 20(%rsi)
	.loc 3 222 0
	movl	%edi, %eax
	shrl	$4, %eax
	andl	$15, %eax
	movl	(%r8,%rax,4), %eax
	movl	%eax, 24(%rsi)
	.loc 3 223 0
	movq	%rdi, %rax
	andl	$15, %eax
	movl	(%r8,%rax,4), %eax
	movl	%eax, 28(%rsi)
	.loc 3 224 0
	addq	$32, %rsi
.L386:
	.loc 3 208 0
	cmpl	%ecx, %r10d
	jl	.L387
	rep ; ret
.LFE246:
	.size	vga_draw_line2d2_16, .-vga_draw_line2d2_16
	.p2align 4,,15
	.type	vga_draw_line4_16, @function
vga_draw_line4_16:
.LFB247:
	.loc 3 234 0
	pushq	%rbx
.LCFI29:
	.loc 3 239 0
	movzbq	601(%rdi), %rax
	.loc 3 234 0
	movl	%ecx, %r11d
	.loc 3 238 0
	leaq	2096(%rdi), %r9
	.loc 3 234 0
	movq	%rsi, %r8
	movq	%rdx, %r10
	.loc 3 240 0
	sarl	$3, %r11d
	.loc 3 241 0
	xorl	%edi, %edi
	.loc 3 239 0
	andl	$15, %eax
	movl	mask16(,%rax,4), %ebx
	jmp	.L395
	.p2align 4,,7
.L396:
	.loc 3 243 0
	movl	(%r10), %edx
	.loc 3 241 0
	incl	%edi
	.loc 3 257 0
	addq	$4, %r10
	.loc 3 243 0
	andl	%ebx, %edx
	.loc 3 244 0
	movzbl	%dl, %esi 
	.loc 3 245 0
	shrl	$8, %edx
	movzbl	%dl, %eax 
	.loc 3 246 0
	shrl	$8, %edx
	.loc 3 245 0
	movl	expand4(,%rax,4), %ecx
	.loc 3 246 0
	movzbl	%dl, %eax 
	.loc 3 247 0
	shrl	$8, %edx
	.loc 3 246 0
	movl	expand4(,%rax,4), %eax
	.loc 3 247 0
	movzbl	%dl, %edx 
	.loc 3 245 0
	addl	%ecx, %ecx
	orl	expand4(,%rsi,4), %ecx
	.loc 3 246 0
	sall	$2, %eax
	orl	%eax, %ecx
	.loc 3 247 0
	movl	expand4(,%rdx,4), %eax
	sall	$3, %eax
	orl	%eax, %ecx
	.loc 3 248 0
	movl	%ecx, %eax
	shrl	$28, %eax
	mov	%eax, %eax
	movl	(%r9,%rax,4), %eax
	movw	%ax, (%r8)
	.loc 3 249 0
	movl	%ecx, %eax
	shrl	$24, %eax
	andl	$15, %eax
	movl	(%r9,%rax,4), %eax
	movw	%ax, 2(%r8)
	.loc 3 250 0
	movl	%ecx, %eax
	shrl	$20, %eax
	andl	$15, %eax
	movl	(%r9,%rax,4), %eax
	movw	%ax, 4(%r8)
	.loc 3 251 0
	movl	%ecx, %eax
	shrl	$16, %eax
	andl	$15, %eax
	movl	(%r9,%rax,4), %eax
	movw	%ax, 6(%r8)
	.loc 3 252 0
	movl	%ecx, %eax
	shrl	$12, %eax
	andl	$15, %eax
	movl	(%r9,%rax,4), %eax
	movw	%ax, 8(%r8)
	.loc 3 253 0
	movl	%ecx, %eax
	shrl	$8, %eax
	andl	$15, %eax
	movl	(%r9,%rax,4), %eax
	movw	%ax, 10(%r8)
	.loc 3 254 0
	movl	%ecx, %eax
	.loc 3 255 0
	andl	$15, %ecx
	.loc 3 254 0
	shrl	$4, %eax
	andl	$15, %eax
	movl	(%r9,%rax,4), %eax
	movw	%ax, 12(%r8)
	.loc 3 255 0
	movl	(%r9,%rcx,4), %eax
	movw	%ax, 14(%r8)
	.loc 3 256 0
	addq	$16, %r8
.L395:
	.loc 3 241 0
	cmpl	%r11d, %edi
	jl	.L396
	popq	%rbx
	ret
.LFE247:
	.size	vga_draw_line4_16, .-vga_draw_line4_16
	.p2align 4,,15
	.type	vga_draw_line4d2_16, @function
vga_draw_line4d2_16:
.LFB248:
	.loc 3 266 0
	pushq	%rbx
.LCFI30:
	.loc 3 271 0
	movzbq	601(%rdi), %rax
	.loc 3 266 0
	movl	%ecx, %r11d
	.loc 3 270 0
	leaq	2096(%rdi), %r9
	.loc 3 266 0
	movq	%rsi, %r8
	movq	%rdx, %r10
	.loc 3 272 0
	sarl	$3, %r11d
	.loc 3 273 0
	xorl	%edi, %edi
	.loc 3 271 0
	andl	$15, %eax
	movl	mask16(,%rax,4), %ebx
	jmp	.L404
	.p2align 4,,7
.L405:
	.loc 3 275 0
	movl	(%r10), %edx
	.loc 3 273 0
	incl	%edi
	.loc 3 289 0
	addq	$4, %r10
	.loc 3 275 0
	andl	%ebx, %edx
	.loc 3 276 0
	movzbl	%dl, %esi 
	.loc 3 277 0
	shrl	$8, %edx
	movzbl	%dl, %eax 
	.loc 3 278 0
	shrl	$8, %edx
	.loc 3 277 0
	movl	expand4(,%rax,4), %ecx
	.loc 3 278 0
	movzbl	%dl, %eax 
	.loc 3 279 0
	shrl	$8, %edx
	.loc 3 278 0
	movl	expand4(,%rax,4), %eax
	.loc 3 279 0
	movzbl	%dl, %edx 
	.loc 3 277 0
	addl	%ecx, %ecx
	orl	expand4(,%rsi,4), %ecx
	.loc 3 278 0
	sall	$2, %eax
	orl	%eax, %ecx
	.loc 3 279 0
	movl	expand4(,%rdx,4), %eax
	sall	$3, %eax
	orl	%eax, %ecx
	.loc 3 280 0
	movl	%ecx, %eax
	shrl	$28, %eax
	mov	%eax, %eax
	movl	(%r9,%rax,4), %eax
	movl	%eax, (%r8)
	.loc 3 281 0
	movl	%ecx, %eax
	shrl	$24, %eax
	andl	$15, %eax
	movl	(%r9,%rax,4), %eax
	movl	%eax, 4(%r8)
	.loc 3 282 0
	movl	%ecx, %eax
	shrl	$20, %eax
	andl	$15, %eax
	movl	(%r9,%rax,4), %eax
	movl	%eax, 8(%r8)
	.loc 3 283 0
	movl	%ecx, %eax
	shrl	$16, %eax
	andl	$15, %eax
	movl	(%r9,%rax,4), %eax
	movl	%eax, 12(%r8)
	.loc 3 284 0
	movl	%ecx, %eax
	shrl	$12, %eax
	andl	$15, %eax
	movl	(%r9,%rax,4), %eax
	movl	%eax, 16(%r8)
	.loc 3 285 0
	movl	%ecx, %eax
	shrl	$8, %eax
	andl	$15, %eax
	movl	(%r9,%rax,4), %eax
	movl	%eax, 20(%r8)
	.loc 3 286 0
	movl	%ecx, %eax
	.loc 3 287 0
	andl	$15, %ecx
	.loc 3 286 0
	shrl	$4, %eax
	andl	$15, %eax
	movl	(%r9,%rax,4), %eax
	movl	%eax, 24(%r8)
	.loc 3 287 0
	movl	(%r9,%rcx,4), %eax
	movl	%eax, 28(%r8)
	.loc 3 288 0
	addq	$32, %r8
.L404:
	.loc 3 273 0
	cmpl	%r11d, %edi
	jl	.L405
	popq	%rbx
	ret
.LFE248:
	.size	vga_draw_line4d2_16, .-vga_draw_line4d2_16
	.p2align 4,,15
	.type	vga_draw_line8d2_16, @function
vga_draw_line8d2_16:
.LFB249:
	.loc 3 300 0
	.loc 3 304 0
	addq	$2096, %rdi
	.loc 3 305 0
	sarl	$3, %ecx
	.loc 3 306 0
	xorl	%r8d, %r8d
	jmp	.L413
	.p2align 4,,7
.L414:
	.loc 3 307 0
	movzbq	(%rdx), %rax
	.loc 3 306 0
	incl	%r8d
	.loc 3 307 0
	movl	(%rdi,%rax,4), %eax
	movl	%eax, (%rsi)
	.loc 3 308 0
	movzbq	1(%rdx), %rax
	movl	(%rdi,%rax,4), %eax
	movl	%eax, 4(%rsi)
	.loc 3 309 0
	movzbq	2(%rdx), %rax
	movl	(%rdi,%rax,4), %eax
	movl	%eax, 8(%rsi)
	.loc 3 310 0
	movzbq	3(%rdx), %rax
	.loc 3 312 0
	addq	$4, %rdx
	.loc 3 310 0
	movl	(%rdi,%rax,4), %eax
	movl	%eax, 12(%rsi)
	.loc 3 311 0
	addq	$16, %rsi
.L413:
	.loc 3 306 0
	cmpl	%ecx, %r8d
	jl	.L414
	rep ; ret
.LFE249:
	.size	vga_draw_line8d2_16, .-vga_draw_line8d2_16
	.p2align 4,,15
	.type	vga_draw_line8_16, @function
vga_draw_line8_16:
.LFB250:
	.loc 3 323 0
	.loc 3 327 0
	addq	$2096, %rdi
	.loc 3 328 0
	sarl	$3, %ecx
	.loc 3 329 0
	xorl	%r8d, %r8d
	jmp	.L422
	.p2align 4,,7
.L423:
	.loc 3 330 0
	movzbq	(%rdx), %rax
	.loc 3 329 0
	incl	%r8d
	.loc 3 330 0
	movl	(%rdi,%rax,4), %eax
	movw	%ax, (%rsi)
	.loc 3 331 0
	movzbq	1(%rdx), %rax
	movl	(%rdi,%rax,4), %eax
	movw	%ax, 2(%rsi)
	.loc 3 332 0
	movzbq	2(%rdx), %rax
	movl	(%rdi,%rax,4), %eax
	movw	%ax, 4(%rsi)
	.loc 3 333 0
	movzbq	3(%rdx), %rax
	movl	(%rdi,%rax,4), %eax
	movw	%ax, 6(%rsi)
	.loc 3 334 0
	movzbq	4(%rdx), %rax
	movl	(%rdi,%rax,4), %eax
	movw	%ax, 8(%rsi)
	.loc 3 335 0
	movzbq	5(%rdx), %rax
	movl	(%rdi,%rax,4), %eax
	movw	%ax, 10(%rsi)
	.loc 3 336 0
	movzbq	6(%rdx), %rax
	movl	(%rdi,%rax,4), %eax
	movw	%ax, 12(%rsi)
	.loc 3 337 0
	movzbq	7(%rdx), %rax
	.loc 3 339 0
	addq	$8, %rdx
	.loc 3 337 0
	movl	(%rdi,%rax,4), %eax
	movw	%ax, 14(%rsi)
	.loc 3 338 0
	addq	$16, %rsi
.L422:
	.loc 3 329 0
	cmpl	%ecx, %r8d
	jl	.L423
	rep ; ret
.LFE250:
	.size	vga_draw_line8_16, .-vga_draw_line8_16
	.p2align 4,,15
.globl vga_draw_cursor_line_16
	.type	vga_draw_cursor_line_16, @function
vga_draw_cursor_line_16:
.LFB251:
	.loc 3 349 0
	pushq	%rbp
.LCFI31:
	.loc 3 356 0
	movslq	%edx,%rdx
	.loc 3 357 0
	xorl	%r10d, %r10d
	.loc 3 349 0
	pushq	%rbx
.LCFI32:
	.loc 3 349 0
	movq	%rsi, %rbx
	movl	24(%rsp), %ebp
	.loc 3 356 0
	leaq	(%rdx,%rbx), %r11
	.loc 3 349 0
	movl	%ecx, %esi
	jmp	.L437
	.p2align 4,,7
.L438:
	.loc 3 375 0
	decl	%eax
	je	.L430
	.p2align 4,,7
.L428:
	.loc 3 405 0
	addq	$2, %rdi
	.loc 3 357 0
	incl	%r10d
.L437:
	cmpl	%esi, %r10d
	jge	.L436
	.loc 3 358 0
	movl	%r10d, %eax
	movl	%r10d, %ecx
	sarl	$3, %eax
	notl	%ecx
	cltq
	andl	$7, %ecx
	movzbl	(%rax,%rbx), %edx
	.loc 3 359 0
	movzbl	(%rax,%r11), %eax
	sarl	%cl, %eax
	.loc 3 358 0
	sarl	%cl, %edx
	.loc 3 359 0
	andl	$1, %eax
	.loc 3 358 0
	andl	$1, %edx
	.loc 3 375 0
	addl	%eax, %eax
	orl	%edx, %eax
	cmpl	$2, %eax
	je	.L431
	jle	.L438
	cmpl	$3, %eax
	jne	.L428
	.loc 3 385 0
	movw	%r9w, (%rdi)
	.p2align 4,,7
	jmp	.L428
	.p2align 4,,7
.L431:
	.loc 3 382 0
	movw	%r8w, (%rdi)
	.p2align 4,,5
	jmp	.L428
	.p2align 4,,7
.L436:
	.loc 3 357 0
	popq	%rbx
	popq	%rbp
	.p2align 4,,5
	ret
	.p2align 4,,7
.L430:
	.loc 3 379 0
	xorw	%bp, (%rdi)
	.p2align 4,,6
	jmp	.L428
.LFE251:
	.size	vga_draw_cursor_line_16, .-vga_draw_cursor_line_16
	.p2align 4,,15
	.type	vga_draw_line15_16, @function
vga_draw_line15_16:
.LFB252:
	.loc 3 419 0
	movq	%rdx, %r8
	movl	%ecx, %edi
	.p2align 4,,7
.L440:
.LBB92:
.LBB93:
	.loc 2 342 0
	movzwl	(%r8), %ecx
.LBE93:
.LBE92:
	.loc 3 433 0
	addq	$2, %r8
.LBB94:
.LBB95:
	.loc 5 22 0
	leal	(%rcx,%rcx), %edx
	leal	(%rcx,%rcx), %eax
	andl	$31, %ecx
	andl	$63488, %edx
	andl	$1984, %eax
	orl	%eax, %edx
	orl	%ecx, %edx
.LBE95:
.LBE94:
	.loc 5 21 0
	movw	%dx, (%rsi)
	.loc 3 434 0
	addq	$2, %rsi
	.loc 3 435 0
	decl	%edi
	jne	.L440
	rep ; ret
.LFE252:
	.size	vga_draw_line15_16, .-vga_draw_line15_16
	.p2align 4,,15
	.type	vga_draw_line16_16, @function
vga_draw_line16_16:
.LFB253:
	.loc 3 444 0
	.loc 3 446 0
	addl	%ecx, %ecx
	.loc 3 444 0
	movq	%rsi, %rdi
	movq	%rdx, %rsi
	.loc 3 446 0
	movslq	%ecx,%rdx
	jmp	memcpy
.LFE253:
	.size	vga_draw_line16_16, .-vga_draw_line16_16
	.p2align 4,,15
	.type	vga_draw_line24_16, @function
vga_draw_line24_16:
.LFB254:
	.loc 3 469 0
	movq	%rdx, %rdi
	movl	%ecx, %r8d
	.p2align 4,,7
.L447:
	.loc 3 481 0
	movzbl	1(%rdi), %edx
	.loc 3 482 0
	movzbl	2(%rdi), %eax
	.loc 3 480 0
	movzbl	(%rdi), %ecx
	.loc 3 485 0
	addq	$3, %rdi
.LBB96:
.LBB97:
	.loc 5 22 0
	shrl	$3, %eax
	shrl	$2, %edx
	sall	$11, %eax
	sall	$5, %edx
	shrl	$3, %ecx
	orl	%edx, %eax
	orl	%ecx, %eax
.LBE97:
.LBE96:
	.loc 5 21 0
	movw	%ax, (%rsi)
	.loc 3 486 0
	addq	$2, %rsi
	.loc 3 487 0
	decl	%r8d
	jne	.L447
	rep ; ret
.LFE254:
	.size	vga_draw_line24_16, .-vga_draw_line24_16
	.p2align 4,,15
	.type	vga_draw_line32_16, @function
vga_draw_line32_16:
.LFB255:
	.loc 3 495 0
	movq	%rdx, %rdi
	movl	%ecx, %r8d
	.p2align 4,,7
.L452:
	.loc 3 510 0
	movzbl	1(%rdi), %edx
	.loc 3 511 0
	movzbl	2(%rdi), %eax
	.loc 3 509 0
	movzbl	(%rdi), %ecx
	.loc 3 514 0
	addq	$4, %rdi
.LBB98:
.LBB99:
	.loc 5 22 0
	shrl	$3, %eax
	shrl	$2, %edx
	sall	$11, %eax
	sall	$5, %edx
	shrl	$3, %ecx
	orl	%edx, %eax
	orl	%ecx, %eax
.LBE99:
.LBE98:
	.loc 5 21 0
	movw	%ax, (%rsi)
	.loc 3 515 0
	addq	$2, %rsi
	.loc 3 516 0
	decl	%r8d
	jne	.L452
	rep ; ret
.LFE255:
	.size	vga_draw_line32_16, .-vga_draw_line32_16
	.p2align 4,,15
	.type	vga_draw_line15_16bgr, @function
vga_draw_line15_16bgr:
.LFB256:
	.loc 3 419 0
	movq	%rdx, %r8
	movl	%ecx, %edi
	.p2align 4,,7
.L457:
.LBB100:
.LBB101:
	.loc 2 342 0
	movzwl	(%r8), %eax
.LBE101:
.LBE100:
	.loc 3 433 0
	addq	$2, %r8
.LBB102:
.LBB103:
	.loc 5 28 0
	movl	%eax, %edx
.LBE103:
.LBE102:
	.loc 3 429 0
	movl	%eax, %ecx
.LBB104:
.LBB105:
	.loc 5 28 0
	addl	%eax, %eax
	andl	$31, %edx
.LBE105:
.LBE104:
	.loc 3 429 0
	shrl	$10, %ecx
.LBB106:
.LBB107:
	.loc 5 28 0
	andl	$1984, %eax
	sall	$11, %edx
	andl	$31, %ecx
	orl	%eax, %edx
	orl	%ecx, %edx
.LBE107:
.LBE106:
	.loc 5 27 0
	movw	%dx, (%rsi)
	.loc 3 434 0
	addq	$2, %rsi
	.loc 3 435 0
	decl	%edi
	jne	.L457
	rep ; ret
.LFE256:
	.size	vga_draw_line15_16bgr, .-vga_draw_line15_16bgr
	.p2align 4,,15
	.type	vga_draw_line16_16bgr, @function
vga_draw_line16_16bgr:
.LFB257:
	.loc 3 444 0
	.loc 3 446 0
	addl	%ecx, %ecx
	.loc 3 444 0
	movq	%rsi, %rdi
	movq	%rdx, %rsi
	.loc 3 446 0
	movslq	%ecx,%rdx
	jmp	memcpy
.LFE257:
	.size	vga_draw_line16_16bgr, .-vga_draw_line16_16bgr
	.p2align 4,,15
	.type	vga_draw_line24_16bgr, @function
vga_draw_line24_16bgr:
.LFB258:
	.loc 3 469 0
	movq	%rdx, %rdi
	movl	%ecx, %r8d
	.p2align 4,,7
.L464:
	.loc 3 480 0
	movzbl	(%rdi), %eax
	.loc 3 481 0
	movzbl	1(%rdi), %edx
	.loc 3 482 0
	movzbl	2(%rdi), %ecx
	.loc 3 485 0
	addq	$3, %rdi
.LBB108:
.LBB109:
	.loc 5 28 0
	shrl	$3, %eax
	shrl	$2, %edx
	sall	$11, %eax
	sall	$5, %edx
	shrl	$3, %ecx
	orl	%edx, %eax
	orl	%ecx, %eax
.LBE109:
.LBE108:
	.loc 5 27 0
	movw	%ax, (%rsi)
	.loc 3 486 0
	addq	$2, %rsi
	.loc 3 487 0
	decl	%r8d
	jne	.L464
	rep ; ret
.LFE258:
	.size	vga_draw_line24_16bgr, .-vga_draw_line24_16bgr
	.p2align 4,,15
	.type	vga_draw_line32_16bgr, @function
vga_draw_line32_16bgr:
.LFB259:
	.loc 3 495 0
	movq	%rdx, %rdi
	movl	%ecx, %r8d
	.p2align 4,,7
.L469:
	.loc 3 509 0
	movzbl	(%rdi), %eax
	.loc 3 510 0
	movzbl	1(%rdi), %edx
	.loc 3 511 0
	movzbl	2(%rdi), %ecx
	.loc 3 514 0
	addq	$4, %rdi
.LBB110:
.LBB111:
	.loc 5 28 0
	shrl	$3, %eax
	shrl	$2, %edx
	sall	$11, %eax
	sall	$5, %edx
	shrl	$3, %ecx
	orl	%edx, %eax
	orl	%ecx, %eax
.LBE111:
.LBE110:
	.loc 5 27 0
	movw	%ax, (%rsi)
	.loc 3 515 0
	addq	$2, %rsi
	.loc 3 516 0
	decl	%r8d
	jne	.L469
	rep ; ret
.LFE259:
	.size	vga_draw_line32_16bgr, .-vga_draw_line32_16bgr
	.p2align 4,,15
	.type	vga_draw_glyph8_32, @function
vga_draw_glyph8_32:
.LFB261:
	.loc 3 74 0
	.loc 3 74 0
	movq	%rdx, %r10
	.loc 3 77 0
	xorl	%r9d, %r8d
	movslq	%esi,%rsi
	.p2align 4,,7
.L474:
	.loc 3 79 0
	movzbl	(%r10), %edx
.LBB112:
.LBB113:
	.loc 3 60 0
	movl	%edx, %eax
	shrl	$7, %eax
	negl	%eax
	andl	%r8d, %eax
	xorl	%r9d, %eax
	movl	%eax, (%rdi)
	.loc 3 61 0
	movl	%edx, %eax
	shrl	$6, %eax
	andl	$1, %eax
	negl	%eax
	andl	%r8d, %eax
	xorl	%r9d, %eax
	movl	%eax, 4(%rdi)
	.loc 3 62 0
	movl	%edx, %eax
	shrl	$5, %eax
	andl	$1, %eax
	negl	%eax
	andl	%r8d, %eax
	xorl	%r9d, %eax
	movl	%eax, 8(%rdi)
	.loc 3 63 0
	movl	%edx, %eax
	shrl	$4, %eax
	andl	$1, %eax
	negl	%eax
	andl	%r8d, %eax
	xorl	%r9d, %eax
	movl	%eax, 12(%rdi)
	.loc 3 64 0
	movl	%edx, %eax
	shrl	$3, %eax
	andl	$1, %eax
	negl	%eax
	andl	%r8d, %eax
	xorl	%r9d, %eax
	movl	%eax, 16(%rdi)
	.loc 3 65 0
	movl	%edx, %eax
	shrl	$2, %eax
	andl	$1, %eax
	negl	%eax
	andl	%r8d, %eax
	xorl	%r9d, %eax
	movl	%eax, 20(%rdi)
	.loc 3 66 0
	movl	%edx, %eax
	shrl	%eax
	andl	$1, %eax
	negl	%eax
	andl	%r8d, %eax
	xorl	%r9d, %eax
	.loc 3 67 0
	andl	$1, %edx
.LBE113:
.LBE112:
	.loc 3 81 0
	addq	$4, %r10
.LBB114:
.LBB115:
	.loc 3 67 0
	negl	%edx
	.loc 3 66 0
	movl	%eax, 24(%rdi)
	.loc 3 67 0
	andl	%r8d, %edx
	xorl	%r9d, %edx
	movl	%edx, 28(%rdi)
.LBE115:
.LBE114:
	.loc 3 82 0
	addq	%rsi, %rdi
	.loc 3 83 0
	decl	%ecx
	jne	.L474
	rep ; ret
.LFE261:
	.size	vga_draw_glyph8_32, .-vga_draw_glyph8_32
	.p2align 4,,15
	.type	vga_draw_glyph16_32, @function
vga_draw_glyph16_32:
.LFB262:
	.loc 3 89 0
	pushq	%rbx
.LCFI33:
	.loc 3 89 0
	movq	%rdx, %r11
	movl	%ecx, %r10d
	.loc 3 92 0
	xorl	%r9d, %r8d
	movslq	%esi,%rbx
	.p2align 4,,7
.L479:
	.loc 3 94 0
	movzbl	(%r11), %esi
.LBB116:
	.loc 3 50 0
	leaq	32(%rdi), %rcx
.LBE116:
.LBB117:
	movl	%esi, %eax
	shrl	$4, %eax
	mov	%eax, %eax
	movzbl	expand4to8(%rax), %edx
.LBB118:
	.loc 3 60 0
	movl	%edx, %eax
	shrl	$7, %eax
	negl	%eax
	andl	%r8d, %eax
	xorl	%r9d, %eax
	movl	%eax, (%rdi)
	.loc 3 61 0
	movl	%edx, %eax
	shrl	$6, %eax
	andl	$1, %eax
	negl	%eax
	andl	%r8d, %eax
	xorl	%r9d, %eax
	movl	%eax, 4(%rdi)
	.loc 3 62 0
	movl	%edx, %eax
	shrl	$5, %eax
	andl	$1, %eax
	negl	%eax
	andl	%r8d, %eax
	xorl	%r9d, %eax
	movl	%eax, 8(%rdi)
	.loc 3 63 0
	movl	%edx, %eax
	shrl	$4, %eax
	andl	$1, %eax
	negl	%eax
	andl	%r8d, %eax
	xorl	%r9d, %eax
	movl	%eax, 12(%rdi)
	.loc 3 64 0
	movl	%edx, %eax
	shrl	$3, %eax
	andl	$1, %eax
	negl	%eax
	andl	%r8d, %eax
	xorl	%r9d, %eax
	movl	%eax, 16(%rdi)
	.loc 3 65 0
	movl	%edx, %eax
	shrl	$2, %eax
	andl	$1, %eax
	negl	%eax
	andl	%r8d, %eax
	xorl	%r9d, %eax
	movl	%eax, 20(%rdi)
	.loc 3 66 0
	movl	%edx, %eax
	shrl	%eax
	andl	$1, %eax
	negl	%eax
	andl	%r8d, %eax
	.loc 3 67 0
	andl	$1, %edx
.LBE118:
.LBE117:
.LBB119:
	.loc 3 50 0
	andl	$15, %esi
.LBE119:
.LBB120:
.LBB121:
	.loc 3 67 0
	negl	%edx
	.loc 3 66 0
	xorl	%r9d, %eax
	.loc 3 67 0
	andl	%r8d, %edx
	.loc 3 66 0
	movl	%eax, 24(%rdi)
	.loc 3 67 0
	xorl	%r9d, %edx
	movl	%edx, 28(%rdi)
.LBE121:
.LBE120:
.LBB122:
	.loc 3 50 0
	movzbl	expand4to8(%rsi), %edx
.LBB123:
	.loc 3 60 0
	movl	%edx, %eax
	shrl	$7, %eax
	negl	%eax
	andl	%r8d, %eax
	xorl	%r9d, %eax
	movl	%eax, 32(%rdi)
	.loc 3 61 0
	movl	%edx, %eax
	shrl	$6, %eax
	andl	$1, %eax
	negl	%eax
	andl	%r8d, %eax
	xorl	%r9d, %eax
	movl	%eax, 4(%rcx)
	.loc 3 62 0
	movl	%edx, %eax
	shrl	$5, %eax
	andl	$1, %eax
	negl	%eax
	andl	%r8d, %eax
	xorl	%r9d, %eax
	movl	%eax, 8(%rcx)
	.loc 3 63 0
	movl	%edx, %eax
	shrl	$4, %eax
	andl	$1, %eax
	negl	%eax
	andl	%r8d, %eax
	xorl	%r9d, %eax
	movl	%eax, 12(%rcx)
	.loc 3 64 0
	movl	%edx, %eax
	shrl	$3, %eax
	andl	$1, %eax
	negl	%eax
	andl	%r8d, %eax
	xorl	%r9d, %eax
	movl	%eax, 16(%rcx)
	.loc 3 65 0
	movl	%edx, %eax
	shrl	$2, %eax
	andl	$1, %eax
	negl	%eax
.LBE123:
.LBE122:
	.loc 3 101 0
	addq	$4, %r11
	.loc 3 102 0
	addq	%rbx, %rdi
.LBB124:
.LBB125:
	.loc 3 65 0
	andl	%r8d, %eax
	xorl	%r9d, %eax
	movl	%eax, 20(%rcx)
	.loc 3 66 0
	movl	%edx, %eax
	.loc 3 67 0
	andl	$1, %edx
	.loc 3 66 0
	shrl	%eax
	.loc 3 67 0
	negl	%edx
	.loc 3 66 0
	andl	$1, %eax
	.loc 3 67 0
	andl	%r8d, %edx
	.loc 3 66 0
	negl	%eax
	.loc 3 67 0
	xorl	%r9d, %edx
	.loc 3 66 0
	andl	%r8d, %eax
	.loc 3 67 0
	movl	%edx, 28(%rcx)
	.loc 3 66 0
	xorl	%r9d, %eax
.LBE125:
.LBE124:
	.loc 3 103 0
	decl	%r10d
.LBB126:
.LBB127:
	.loc 3 66 0
	movl	%eax, 24(%rcx)
.LBE127:
.LBE126:
	.loc 3 103 0
	jne	.L479
	popq	%rbx
	ret
.LFE262:
	.size	vga_draw_glyph16_32, .-vga_draw_glyph16_32
	.p2align 4,,15
	.type	vga_draw_glyph9_32, @function
vga_draw_glyph9_32:
.LFB263:
	.loc 3 109 0
	.loc 3 109 0
	movl	8(%rsp), %r11d
	movq	%rdx, %r10
	.loc 3 112 0
	xorl	%r9d, %r8d
	movslq	%esi,%rsi
	.p2align 4,,7
.L485:
	.loc 3 114 0
	movzbl	(%r10), %edx
	.loc 3 135 0
	movl	%edx, %eax
	shrl	$7, %eax
	negl	%eax
	andl	%r8d, %eax
	xorl	%r9d, %eax
	movl	%eax, (%rdi)
	.loc 3 136 0
	movl	%edx, %eax
	shrl	$6, %eax
	andl	$1, %eax
	negl	%eax
	andl	%r8d, %eax
	xorl	%r9d, %eax
	movl	%eax, 4(%rdi)
	.loc 3 137 0
	movl	%edx, %eax
	shrl	$5, %eax
	andl	$1, %eax
	negl	%eax
	andl	%r8d, %eax
	xorl	%r9d, %eax
	movl	%eax, 8(%rdi)
	.loc 3 138 0
	movl	%edx, %eax
	shrl	$4, %eax
	andl	$1, %eax
	negl	%eax
	andl	%r8d, %eax
	xorl	%r9d, %eax
	movl	%eax, 12(%rdi)
	.loc 3 139 0
	movl	%edx, %eax
	shrl	$3, %eax
	andl	$1, %eax
	negl	%eax
	andl	%r8d, %eax
	xorl	%r9d, %eax
	movl	%eax, 16(%rdi)
	.loc 3 140 0
	movl	%edx, %eax
	shrl	$2, %eax
	andl	$1, %eax
	negl	%eax
	andl	%r8d, %eax
	xorl	%r9d, %eax
	movl	%eax, 20(%rdi)
	.loc 3 141 0
	movl	%edx, %eax
	shrl	%eax
	andl	$1, %eax
	negl	%eax
	andl	%r8d, %eax
	xorl	%r9d, %eax
	.loc 3 142 0
	andl	$1, %edx
	negl	%edx
	.loc 3 141 0
	movl	%eax, 24(%rdi)
	.loc 3 142 0
	andl	%r8d, %edx
	xorl	%r9d, %edx
	.loc 3 145 0
	testl	%r11d, %r11d
	.loc 3 143 0
	movl	%edx, 28(%rdi)
	.loc 3 145 0
	cmove	%r9d, %edx
	.loc 3 149 0
	addq	$4, %r10
	.loc 3 145 0
	movl	%edx, 32(%rdi)
	.loc 3 150 0
	addq	%rsi, %rdi
	.loc 3 151 0
	decl	%ecx
	jne	.L485
	rep ; ret
.LFE263:
	.size	vga_draw_glyph9_32, .-vga_draw_glyph9_32
	.p2align 4,,15
	.type	vga_draw_line2_32, @function
vga_draw_line2_32:
.LFB264:
	.loc 3 159 0
	.loc 3 164 0
	movzbq	601(%rdi), %rax
	.loc 3 163 0
	leaq	2096(%rdi), %r8
	.loc 3 159 0
	movq	%rdx, %r9
	.loc 3 165 0
	sarl	$3, %ecx
	.loc 3 166 0
	xorl	%r10d, %r10d
	.loc 3 164 0
	andl	$15, %eax
	movl	mask16(,%rax,4), %r11d
	jmp	.L497
	.p2align 4,,7
.L498:
	.loc 3 168 0
	movl	(%r9), %edx
	.loc 3 166 0
	incl	%r10d
	.loc 3 183 0
	addq	$4, %r9
	.loc 3 168 0
	andl	%r11d, %edx
	.loc 3 169 0
	movzbl	%dl, %eax 
	movzwl	expand2(%rax,%rax), %edi
	.loc 3 170 0
	movl	%edx, %eax
	.loc 3 176 0
	shrl	$8, %edx
	.loc 3 170 0
	shrl	$16, %eax
	movzbl	%al, %eax 
	movzwl	expand2(%rax,%rax), %eax
	sall	$2, %eax
	orl	%eax, %edi
	.loc 3 171 0
	movl	%edi, %eax
	shrl	$12, %eax
	mov	%eax, %eax
	movl	(%r8,%rax,4), %eax
	movl	%eax, (%rsi)
	.loc 3 172 0
	movl	%edi, %eax
	shrl	$8, %eax
	andl	$15, %eax
	movl	(%r8,%rax,4), %eax
	movl	%eax, 4(%rsi)
	.loc 3 173 0
	movl	%edi, %eax
	shrl	$4, %eax
	andl	$15, %eax
	movl	(%r8,%rax,4), %eax
	movl	%eax, 8(%rsi)
	.loc 3 174 0
	movq	%rdi, %rax
	andl	$15, %eax
	movl	(%r8,%rax,4), %eax
	movl	%eax, 12(%rsi)
	.loc 3 176 0
	movzbl	%dl, %eax 
	.loc 3 177 0
	shrl	$16, %edx
	movzbl	%dl, %edx 
	.loc 3 176 0
	movzwl	expand2(%rax,%rax), %edi
	.loc 3 177 0
	movzwl	expand2(%rdx,%rdx), %eax
	sall	$2, %eax
	orl	%eax, %edi
	.loc 3 178 0
	movl	%edi, %eax
	shrl	$12, %eax
	mov	%eax, %eax
	movl	(%r8,%rax,4), %eax
	movl	%eax, 16(%rsi)
	.loc 3 179 0
	movl	%edi, %eax
	shrl	$8, %eax
	andl	$15, %eax
	movl	(%r8,%rax,4), %eax
	movl	%eax, 20(%rsi)
	.loc 3 180 0
	movl	%edi, %eax
	shrl	$4, %eax
	andl	$15, %eax
	movl	(%r8,%rax,4), %eax
	movl	%eax, 24(%rsi)
	.loc 3 181 0
	movq	%rdi, %rax
	andl	$15, %eax
	movl	(%r8,%rax,4), %eax
	movl	%eax, 28(%rsi)
	.loc 3 182 0
	addq	$32, %rsi
.L497:
	.loc 3 166 0
	cmpl	%ecx, %r10d
	jl	.L498
	rep ; ret
.LFE264:
	.size	vga_draw_line2_32, .-vga_draw_line2_32
	.p2align 4,,15
	.type	vga_draw_line2d2_32, @function
vga_draw_line2d2_32:
.LFB265:
	.loc 3 201 0
	.loc 3 206 0
	movzbq	601(%rdi), %rax
	.loc 3 205 0
	leaq	2096(%rdi), %r8
	.loc 3 201 0
	movq	%rdx, %r9
	.loc 3 207 0
	sarl	$3, %ecx
	.loc 3 208 0
	xorl	%r10d, %r10d
	.loc 3 206 0
	andl	$15, %eax
	movl	mask16(,%rax,4), %r11d
	jmp	.L506
	.p2align 4,,7
.L507:
	.loc 3 210 0
	movl	(%r9), %edx
	.loc 3 208 0
	incl	%r10d
	.loc 3 225 0
	addq	$4, %r9
	.loc 3 210 0
	andl	%r11d, %edx
	.loc 3 211 0
	movzbl	%dl, %eax 
	movzwl	expand2(%rax,%rax), %edi
	.loc 3 212 0
	movl	%edx, %eax
	.loc 3 218 0
	shrl	$8, %edx
	.loc 3 212 0
	shrl	$16, %eax
	movzbl	%al, %eax 
	movzwl	expand2(%rax,%rax), %eax
	sall	$2, %eax
	orl	%eax, %edi
	.loc 3 213 0
	movl	%edi, %eax
	shrl	$12, %eax
	mov	%eax, %eax
	movl	(%r8,%rax,4), %eax
	movl	%eax, 4(%rsi)
	movl	%eax, (%rsi)
	.loc 3 214 0
	movl	%edi, %eax
	shrl	$8, %eax
	andl	$15, %eax
	movl	(%r8,%rax,4), %eax
	movl	%eax, 12(%rsi)
	movl	%eax, 8(%rsi)
	.loc 3 215 0
	movl	%edi, %eax
	shrl	$4, %eax
	andl	$15, %eax
	movl	(%r8,%rax,4), %eax
	movl	%eax, 20(%rsi)
	movl	%eax, 16(%rsi)
	.loc 3 216 0
	movq	%rdi, %rax
	andl	$15, %eax
	movl	(%r8,%rax,4), %eax
	movl	%eax, 28(%rsi)
	movl	%eax, 24(%rsi)
	.loc 3 218 0
	movzbl	%dl, %eax 
	.loc 3 219 0
	shrl	$16, %edx
	.loc 3 218 0
	movzwl	expand2(%rax,%rax), %edi
	.loc 3 219 0
	movzbl	%dl, %edx 
	movzwl	expand2(%rdx,%rdx), %eax
	sall	$2, %eax
	orl	%eax, %edi
	.loc 3 220 0
	movl	%edi, %eax
	shrl	$12, %eax
	mov	%eax, %eax
	movl	(%r8,%rax,4), %eax
	movl	%eax, 36(%rsi)
	movl	%eax, 32(%rsi)
	.loc 3 221 0
	movl	%edi, %eax
	shrl	$8, %eax
	andl	$15, %eax
	movl	(%r8,%rax,4), %eax
	movl	%eax, 44(%rsi)
	movl	%eax, 40(%rsi)
	.loc 3 222 0
	movl	%edi, %eax
	shrl	$4, %eax
	andl	$15, %eax
	movl	(%r8,%rax,4), %eax
	movl	%eax, 52(%rsi)
	movl	%eax, 48(%rsi)
	.loc 3 223 0
	movq	%rdi, %rax
	andl	$15, %eax
	movl	(%r8,%rax,4), %eax
	movl	%eax, 60(%rsi)
	movl	%eax, 56(%rsi)
	.loc 3 224 0
	addq	$64, %rsi
.L506:
	.loc 3 208 0
	cmpl	%ecx, %r10d
	jl	.L507
	rep ; ret
.LFE265:
	.size	vga_draw_line2d2_32, .-vga_draw_line2d2_32
	.p2align 4,,15
	.type	vga_draw_line4_32, @function
vga_draw_line4_32:
.LFB266:
	.loc 3 234 0
	pushq	%rbx
.LCFI34:
	.loc 3 239 0
	movzbq	601(%rdi), %rax
	.loc 3 234 0
	movl	%ecx, %r11d
	.loc 3 238 0
	leaq	2096(%rdi), %r9
	.loc 3 234 0
	movq	%rsi, %r8
	movq	%rdx, %r10
	.loc 3 240 0
	sarl	$3, %r11d
	.loc 3 241 0
	xorl	%edi, %edi
	.loc 3 239 0
	andl	$15, %eax
	movl	mask16(,%rax,4), %ebx
	jmp	.L515
	.p2align 4,,7
.L516:
	.loc 3 243 0
	movl	(%r10), %edx
	.loc 3 241 0
	incl	%edi
	.loc 3 257 0
	addq	$4, %r10
	.loc 3 243 0
	andl	%ebx, %edx
	.loc 3 244 0
	movzbl	%dl, %esi 
	.loc 3 245 0
	shrl	$8, %edx
	movzbl	%dl, %eax 
	.loc 3 246 0
	shrl	$8, %edx
	.loc 3 245 0
	movl	expand4(,%rax,4), %ecx
	.loc 3 246 0
	movzbl	%dl, %eax 
	.loc 3 247 0
	shrl	$8, %edx
	.loc 3 246 0
	movl	expand4(,%rax,4), %eax
	.loc 3 247 0
	movzbl	%dl, %edx 
	.loc 3 245 0
	addl	%ecx, %ecx
	orl	expand4(,%rsi,4), %ecx
	.loc 3 246 0
	sall	$2, %eax
	orl	%eax, %ecx
	.loc 3 247 0
	movl	expand4(,%rdx,4), %eax
	sall	$3, %eax
	orl	%eax, %ecx
	.loc 3 248 0
	movl	%ecx, %eax
	shrl	$28, %eax
	mov	%eax, %eax
	movl	(%r9,%rax,4), %eax
	movl	%eax, (%r8)
	.loc 3 249 0
	movl	%ecx, %eax
	shrl	$24, %eax
	andl	$15, %eax
	movl	(%r9,%rax,4), %eax
	movl	%eax, 4(%r8)
	.loc 3 250 0
	movl	%ecx, %eax
	shrl	$20, %eax
	andl	$15, %eax
	movl	(%r9,%rax,4), %eax
	movl	%eax, 8(%r8)
	.loc 3 251 0
	movl	%ecx, %eax
	shrl	$16, %eax
	andl	$15, %eax
	movl	(%r9,%rax,4), %eax
	movl	%eax, 12(%r8)
	.loc 3 252 0
	movl	%ecx, %eax
	shrl	$12, %eax
	andl	$15, %eax
	movl	(%r9,%rax,4), %eax
	movl	%eax, 16(%r8)
	.loc 3 253 0
	movl	%ecx, %eax
	shrl	$8, %eax
	andl	$15, %eax
	movl	(%r9,%rax,4), %eax
	movl	%eax, 20(%r8)
	.loc 3 254 0
	movl	%ecx, %eax
	.loc 3 255 0
	andl	$15, %ecx
	.loc 3 254 0
	shrl	$4, %eax
	andl	$15, %eax
	movl	(%r9,%rax,4), %eax
	movl	%eax, 24(%r8)
	.loc 3 255 0
	movl	(%r9,%rcx,4), %eax
	movl	%eax, 28(%r8)
	.loc 3 256 0
	addq	$32, %r8
.L515:
	.loc 3 241 0
	cmpl	%r11d, %edi
	jl	.L516
	popq	%rbx
	ret
.LFE266:
	.size	vga_draw_line4_32, .-vga_draw_line4_32
	.p2align 4,,15
	.type	vga_draw_line4d2_32, @function
vga_draw_line4d2_32:
.LFB267:
	.loc 3 266 0
	pushq	%rbx
.LCFI35:
	.loc 3 271 0
	movzbq	601(%rdi), %rax
	.loc 3 266 0
	movl	%ecx, %r11d
	.loc 3 270 0
	leaq	2096(%rdi), %r9
	.loc 3 266 0
	movq	%rsi, %r8
	movq	%rdx, %r10
	.loc 3 272 0
	sarl	$3, %r11d
	.loc 3 273 0
	xorl	%edi, %edi
	.loc 3 271 0
	andl	$15, %eax
	movl	mask16(,%rax,4), %ebx
	jmp	.L524
	.p2align 4,,7
.L525:
	.loc 3 275 0
	movl	(%r10), %edx
	.loc 3 273 0
	incl	%edi
	.loc 3 289 0
	addq	$4, %r10
	.loc 3 275 0
	andl	%ebx, %edx
	.loc 3 276 0
	movzbl	%dl, %esi 
	.loc 3 277 0
	shrl	$8, %edx
	movzbl	%dl, %eax 
	.loc 3 278 0
	shrl	$8, %edx
	.loc 3 277 0
	movl	expand4(,%rax,4), %ecx
	.loc 3 278 0
	movzbl	%dl, %eax 
	.loc 3 279 0
	shrl	$8, %edx
	.loc 3 278 0
	movl	expand4(,%rax,4), %eax
	.loc 3 279 0
	movzbl	%dl, %edx 
	.loc 3 277 0
	addl	%ecx, %ecx
	orl	expand4(,%rsi,4), %ecx
	.loc 3 278 0
	sall	$2, %eax
	orl	%eax, %ecx
	.loc 3 279 0
	movl	expand4(,%rdx,4), %eax
	sall	$3, %eax
	orl	%eax, %ecx
	.loc 3 280 0
	movl	%ecx, %eax
	shrl	$28, %eax
	mov	%eax, %eax
	movl	(%r9,%rax,4), %eax
	movl	%eax, 4(%r8)
	movl	%eax, (%r8)
	.loc 3 281 0
	movl	%ecx, %eax
	shrl	$24, %eax
	andl	$15, %eax
	movl	(%r9,%rax,4), %eax
	movl	%eax, 12(%r8)
	movl	%eax, 8(%r8)
	.loc 3 282 0
	movl	%ecx, %eax
	shrl	$20, %eax
	andl	$15, %eax
	movl	(%r9,%rax,4), %eax
	movl	%eax, 20(%r8)
	movl	%eax, 16(%r8)
	.loc 3 283 0
	movl	%ecx, %eax
	shrl	$16, %eax
	andl	$15, %eax
	movl	(%r9,%rax,4), %eax
	movl	%eax, 28(%r8)
	movl	%eax, 24(%r8)
	.loc 3 284 0
	movl	%ecx, %eax
	shrl	$12, %eax
	andl	$15, %eax
	movl	(%r9,%rax,4), %eax
	movl	%eax, 36(%r8)
	movl	%eax, 32(%r8)
	.loc 3 285 0
	movl	%ecx, %eax
	shrl	$8, %eax
	andl	$15, %eax
	movl	(%r9,%rax,4), %eax
	movl	%eax, 44(%r8)
	movl	%eax, 40(%r8)
	.loc 3 286 0
	movl	%ecx, %eax
	shrl	$4, %eax
	.loc 3 287 0
	andl	$15, %ecx
	.loc 3 286 0
	andl	$15, %eax
	movl	(%r9,%rax,4), %eax
	movl	%eax, 52(%r8)
	movl	%eax, 48(%r8)
	.loc 3 287 0
	movl	(%r9,%rcx,4), %eax
	movl	%eax, 60(%r8)
	movl	%eax, 56(%r8)
	.loc 3 288 0
	addq	$64, %r8
.L524:
	.loc 3 273 0
	cmpl	%r11d, %edi
	jl	.L525
	popq	%rbx
	ret
.LFE267:
	.size	vga_draw_line4d2_32, .-vga_draw_line4d2_32
	.p2align 4,,15
	.type	vga_draw_line8d2_32, @function
vga_draw_line8d2_32:
.LFB268:
	.loc 3 300 0
	.loc 3 304 0
	addq	$2096, %rdi
	.loc 3 305 0
	sarl	$3, %ecx
	.loc 3 306 0
	xorl	%r8d, %r8d
	jmp	.L533
	.p2align 4,,7
.L534:
	.loc 3 307 0
	movzbq	(%rdx), %rax
	.loc 3 306 0
	incl	%r8d
	.loc 3 307 0
	movl	(%rdi,%rax,4), %eax
	movl	%eax, 4(%rsi)
	movl	%eax, (%rsi)
	.loc 3 308 0
	movzbq	1(%rdx), %rax
	movl	(%rdi,%rax,4), %eax
	movl	%eax, 12(%rsi)
	movl	%eax, 8(%rsi)
	.loc 3 309 0
	movzbq	2(%rdx), %rax
	movl	(%rdi,%rax,4), %eax
	movl	%eax, 20(%rsi)
	movl	%eax, 16(%rsi)
	.loc 3 310 0
	movzbq	3(%rdx), %rax
	.loc 3 312 0
	addq	$4, %rdx
	.loc 3 310 0
	movl	(%rdi,%rax,4), %eax
	movl	%eax, 28(%rsi)
	movl	%eax, 24(%rsi)
	.loc 3 311 0
	addq	$32, %rsi
.L533:
	.loc 3 306 0
	cmpl	%ecx, %r8d
	jl	.L534
	rep ; ret
.LFE268:
	.size	vga_draw_line8d2_32, .-vga_draw_line8d2_32
	.p2align 4,,15
	.type	vga_draw_line8_32, @function
vga_draw_line8_32:
.LFB269:
	.loc 3 323 0
	.loc 3 327 0
	addq	$2096, %rdi
	.loc 3 328 0
	sarl	$3, %ecx
	.loc 3 329 0
	xorl	%r8d, %r8d
	jmp	.L542
	.p2align 4,,7
.L543:
	.loc 3 330 0
	movzbq	(%rdx), %rax
	.loc 3 329 0
	incl	%r8d
	.loc 3 330 0
	movl	(%rdi,%rax,4), %eax
	movl	%eax, (%rsi)
	.loc 3 331 0
	movzbq	1(%rdx), %rax
	movl	(%rdi,%rax,4), %eax
	movl	%eax, 4(%rsi)
	.loc 3 332 0
	movzbq	2(%rdx), %rax
	movl	(%rdi,%rax,4), %eax
	movl	%eax, 8(%rsi)
	.loc 3 333 0
	movzbq	3(%rdx), %rax
	movl	(%rdi,%rax,4), %eax
	movl	%eax, 12(%rsi)
	.loc 3 334 0
	movzbq	4(%rdx), %rax
	movl	(%rdi,%rax,4), %eax
	movl	%eax, 16(%rsi)
	.loc 3 335 0
	movzbq	5(%rdx), %rax
	movl	(%rdi,%rax,4), %eax
	movl	%eax, 20(%rsi)
	.loc 3 336 0
	movzbq	6(%rdx), %rax
	movl	(%rdi,%rax,4), %eax
	movl	%eax, 24(%rsi)
	.loc 3 337 0
	movzbq	7(%rdx), %rax
	.loc 3 339 0
	addq	$8, %rdx
	.loc 3 337 0
	movl	(%rdi,%rax,4), %eax
	movl	%eax, 28(%rsi)
	.loc 3 338 0
	addq	$32, %rsi
.L542:
	.loc 3 329 0
	cmpl	%ecx, %r8d
	jl	.L543
	rep ; ret
.LFE269:
	.size	vga_draw_line8_32, .-vga_draw_line8_32
	.p2align 4,,15
.globl vga_draw_cursor_line_32
	.type	vga_draw_cursor_line_32, @function
vga_draw_cursor_line_32:
.LFB270:
	.loc 3 349 0
	pushq	%rbp
.LCFI36:
	.loc 3 356 0
	movslq	%edx,%rdx
	.loc 3 357 0
	xorl	%r10d, %r10d
	.loc 3 349 0
	pushq	%rbx
.LCFI37:
	.loc 3 349 0
	movq	%rsi, %rbx
	movl	24(%rsp), %ebp
	.loc 3 356 0
	leaq	(%rdx,%rbx), %r11
	.loc 3 349 0
	movl	%ecx, %esi
	jmp	.L557
	.p2align 4,,7
.L558:
	.loc 3 389 0
	decl	%eax
	je	.L550
	.p2align 4,,7
.L548:
	.loc 3 405 0
	addq	$4, %rdi
	.loc 3 357 0
	incl	%r10d
.L557:
	cmpl	%esi, %r10d
	jge	.L556
	.loc 3 358 0
	movl	%r10d, %eax
	movl	%r10d, %ecx
	sarl	$3, %eax
	notl	%ecx
	cltq
	andl	$7, %ecx
	movzbl	(%rax,%rbx), %edx
	.loc 3 359 0
	movzbl	(%rax,%r11), %eax
	sarl	%cl, %eax
	.loc 3 358 0
	sarl	%cl, %edx
	.loc 3 359 0
	andl	$1, %eax
	.loc 3 358 0
	andl	$1, %edx
	.loc 3 389 0
	addl	%eax, %eax
	orl	%edx, %eax
	cmpl	$2, %eax
	je	.L551
	jle	.L558
	cmpl	$3, %eax
	jne	.L548
	.loc 3 399 0
	movl	%r9d, (%rdi)
	.p2align 4,,7
	jmp	.L548
	.p2align 4,,7
.L551:
	.loc 3 396 0
	movl	%r8d, (%rdi)
	.p2align 4,,5
	jmp	.L548
	.p2align 4,,7
.L556:
	.loc 3 357 0
	popq	%rbx
	popq	%rbp
	.p2align 4,,5
	ret
	.p2align 4,,7
.L550:
	.loc 3 393 0
	xorl	%ebp, (%rdi)
	.p2align 4,,6
	jmp	.L548
.LFE270:
	.size	vga_draw_cursor_line_32, .-vga_draw_cursor_line_32
	.p2align 4,,15
	.type	vga_draw_line15_32, @function
vga_draw_line15_32:
.LFB271:
	.loc 3 419 0
	movq	%rdx, %r8
	movl	%ecx, %edi
	.p2align 4,,7
.L560:
.LBB128:
.LBB129:
	.loc 2 342 0
	movzwl	(%r8), %eax
.LBE129:
.LBE128:
	.loc 3 433 0
	addq	$2, %r8
	.loc 3 429 0
	movl	%eax, %edx
	.loc 3 430 0
	movl	%eax, %ecx
	.loc 3 431 0
	sall	$3, %eax
	.loc 3 429 0
	sall	$9, %edx
	.loc 3 430 0
	sall	$6, %ecx
	.loc 3 431 0
	andl	$248, %eax
.LBB130:
.LBB131:
	.loc 5 46 0
	andl	$16252928, %edx
	andl	$63488, %ecx
	orl	%ecx, %edx
	orl	%eax, %edx
.LBE131:
.LBE130:
	.loc 5 45 0
	movl	%edx, (%rsi)
	.loc 3 434 0
	addq	$4, %rsi
	.loc 3 435 0
	decl	%edi
	jne	.L560
	rep ; ret
.LFE271:
	.size	vga_draw_line15_32, .-vga_draw_line15_32
	.p2align 4,,15
	.type	vga_draw_line16_32, @function
vga_draw_line16_32:
.LFB272:
	.loc 3 444 0
	movq	%rdx, %r8
	movl	%ecx, %edi
	.p2align 4,,7
.L566:
.LBB132:
.LBB133:
	.loc 2 342 0
	movzwl	(%r8), %eax
.LBE133:
.LBE132:
	.loc 3 458 0
	addq	$2, %r8
	.loc 3 454 0
	movl	%eax, %edx
	.loc 3 455 0
	movl	%eax, %ecx
	.loc 3 456 0
	sall	$3, %eax
	.loc 3 454 0
	sall	$8, %edx
	.loc 3 455 0
	sall	$5, %ecx
	.loc 3 456 0
	andl	$248, %eax
.LBB134:
.LBB135:
	.loc 5 46 0
	andl	$16252928, %edx
	andl	$64512, %ecx
	orl	%ecx, %edx
	orl	%eax, %edx
.LBE135:
.LBE134:
	.loc 5 45 0
	movl	%edx, (%rsi)
	.loc 3 459 0
	addq	$4, %rsi
	.loc 3 460 0
	decl	%edi
	jne	.L566
	rep ; ret
.LFE272:
	.size	vga_draw_line16_32, .-vga_draw_line16_32
	.p2align 4,,15
	.type	vga_draw_line24_32, @function
vga_draw_line24_32:
.LFB273:
	.loc 3 469 0
	movq	%rdx, %rdi
	movl	%ecx, %r8d
	.p2align 4,,7
.L572:
	.loc 3 481 0
	movzbl	1(%rdi), %edx
	.loc 3 482 0
	movzbl	2(%rdi), %eax
	.loc 3 480 0
	movzbl	(%rdi), %ecx
	.loc 3 485 0
	addq	$3, %rdi
.LBB136:
.LBB137:
	.loc 5 46 0
	sall	$16, %eax
	sall	$8, %edx
	orl	%edx, %eax
	orl	%ecx, %eax
.LBE137:
.LBE136:
	.loc 5 45 0
	movl	%eax, (%rsi)
	.loc 3 486 0
	addq	$4, %rsi
	.loc 3 487 0
	decl	%r8d
	jne	.L572
	rep ; ret
.LFE273:
	.size	vga_draw_line24_32, .-vga_draw_line24_32
	.p2align 4,,15
	.type	vga_draw_line32_32, @function
vga_draw_line32_32:
.LFB274:
	.loc 3 495 0
	.loc 3 497 0
	sall	$2, %ecx
	.loc 3 495 0
	movq	%rsi, %rdi
	movq	%rdx, %rsi
	.loc 3 497 0
	movslq	%ecx,%rdx
	jmp	memcpy
.LFE274:
	.size	vga_draw_line32_32, .-vga_draw_line32_32
	.p2align 4,,15
	.type	vga_draw_line15_32bgr, @function
vga_draw_line15_32bgr:
.LFB275:
	.loc 3 419 0
	movq	%rdx, %r8
	movl	%ecx, %edi
	.p2align 4,,7
.L578:
.LBB138:
.LBB139:
	.loc 2 342 0
	movzwl	(%r8), %eax
.LBE139:
.LBE138:
	.loc 3 433 0
	addq	$2, %r8
	.loc 3 430 0
	movl	%eax, %edx
	.loc 3 429 0
	movl	%eax, %ecx
	.loc 3 431 0
	sall	$19, %eax
	.loc 3 430 0
	sall	$6, %edx
	.loc 3 429 0
	shrl	$7, %ecx
.LBB140:
.LBB141:
	.loc 5 52 0
	andl	$16252928, %eax
	andl	$63488, %edx
.LBE141:
.LBE140:
	.loc 3 429 0
	andl	$248, %ecx
.LBB142:
.LBB143:
	.loc 5 52 0
	orl	%edx, %eax
	orl	%ecx, %eax
.LBE143:
.LBE142:
	.loc 5 51 0
	movl	%eax, (%rsi)
	.loc 3 434 0
	addq	$4, %rsi
	.loc 3 435 0
	decl	%edi
	jne	.L578
	rep ; ret
.LFE275:
	.size	vga_draw_line15_32bgr, .-vga_draw_line15_32bgr
	.p2align 4,,15
	.type	vga_draw_line16_32bgr, @function
vga_draw_line16_32bgr:
.LFB276:
	.loc 3 444 0
	movq	%rdx, %r8
	movl	%ecx, %edi
	.p2align 4,,7
.L584:
.LBB144:
.LBB145:
	.loc 2 342 0
	movzwl	(%r8), %eax
.LBE145:
.LBE144:
	.loc 3 458 0
	addq	$2, %r8
	.loc 3 455 0
	movl	%eax, %edx
	.loc 3 454 0
	movl	%eax, %ecx
	.loc 3 456 0
	sall	$19, %eax
	.loc 3 455 0
	sall	$5, %edx
	.loc 3 454 0
	shrl	$8, %ecx
.LBB146:
.LBB147:
	.loc 5 52 0
	andl	$16252928, %eax
	andl	$64512, %edx
.LBE147:
.LBE146:
	.loc 3 454 0
	andl	$248, %ecx
.LBB148:
.LBB149:
	.loc 5 52 0
	orl	%edx, %eax
	orl	%ecx, %eax
.LBE149:
.LBE148:
	.loc 5 51 0
	movl	%eax, (%rsi)
	.loc 3 459 0
	addq	$4, %rsi
	.loc 3 460 0
	decl	%edi
	jne	.L584
	rep ; ret
.LFE276:
	.size	vga_draw_line16_32bgr, .-vga_draw_line16_32bgr
	.p2align 4,,15
	.type	vga_draw_line24_32bgr, @function
vga_draw_line24_32bgr:
.LFB277:
	.loc 3 469 0
	movq	%rdx, %rdi
	movl	%ecx, %r8d
	.p2align 4,,7
.L590:
	.loc 3 480 0
	movzbl	(%rdi), %eax
	.loc 3 481 0
	movzbl	1(%rdi), %edx
	.loc 3 482 0
	movzbl	2(%rdi), %ecx
	.loc 3 485 0
	addq	$3, %rdi
.LBB150:
.LBB151:
	.loc 5 52 0
	sall	$16, %eax
	sall	$8, %edx
	orl	%edx, %eax
	orl	%ecx, %eax
.LBE151:
.LBE150:
	.loc 5 51 0
	movl	%eax, (%rsi)
	.loc 3 486 0
	addq	$4, %rsi
	.loc 3 487 0
	decl	%r8d
	jne	.L590
	rep ; ret
.LFE277:
	.size	vga_draw_line24_32bgr, .-vga_draw_line24_32bgr
	.p2align 4,,15
	.type	vga_draw_line32_32bgr, @function
vga_draw_line32_32bgr:
.LFB278:
	.loc 3 495 0
	movq	%rdx, %rdi
	movl	%ecx, %r8d
	.p2align 4,,7
.L595:
	.loc 3 509 0
	movzbl	(%rdi), %eax
	.loc 3 510 0
	movzbl	1(%rdi), %edx
	.loc 3 511 0
	movzbl	2(%rdi), %ecx
	.loc 3 514 0
	addq	$4, %rdi
.LBB152:
.LBB153:
	.loc 5 52 0
	sall	$16, %eax
	sall	$8, %edx
	orl	%edx, %eax
	orl	%ecx, %eax
.LBE153:
.LBE152:
	.loc 5 51 0
	movl	%eax, (%rsi)
	.loc 3 515 0
	addq	$4, %rsi
	.loc 3 516 0
	decl	%r8d
	jne	.L595
	rep ; ret
.LFE278:
	.size	vga_draw_line32_32bgr, .-vga_draw_line32_32bgr
	.p2align 4,,15
	.type	rgb_to_pixel8_dup, @function
rgb_to_pixel8_dup:
.LFB279:
	.loc 1 846 0
.LBB154:
.LBB155:
	.loc 5 4 0
	shrl	$5, %esi
	andl	$-32, %edi
	shrl	$6, %edx
	sall	$2, %esi
	orl	%esi, %edi
	orl	%edx, %edi
.LBE155:
.LBE154:
	.loc 1 849 0
	movl	%edi, %eax
	sall	$8, %eax
	orl	%edi, %eax
	.loc 1 850 0
	movl	%eax, %edx
	sall	$16, %edx
	orl	%edx, %eax
	.loc 1 852 0
	ret
.LFE279:
	.size	rgb_to_pixel8_dup, .-rgb_to_pixel8_dup
	.p2align 4,,15
	.type	rgb_to_pixel15_dup, @function
rgb_to_pixel15_dup:
.LFB280:
	.loc 1 855 0
.LBB156:
.LBB157:
	.loc 5 10 0
	shrl	$3, %edi
	shrl	$3, %esi
	shrl	$3, %edx
	sall	$10, %edi
	sall	$5, %esi
	orl	%esi, %edi
	orl	%edx, %edi
.LBE157:
.LBE156:
	.loc 1 858 0
	movl	%edi, %eax
	sall	$16, %eax
	orl	%eax, %edi
	.loc 1 860 0
	movl	%edi, %eax
	ret
.LFE280:
	.size	rgb_to_pixel15_dup, .-rgb_to_pixel15_dup
	.p2align 4,,15
	.type	rgb_to_pixel15bgr_dup, @function
rgb_to_pixel15bgr_dup:
.LFB281:
	.loc 1 864 0
	.loc 1 864 0
	movl	%edx, %eax
.LBB158:
.LBB159:
	.loc 5 16 0
	shrl	$3, %esi
	shrl	$3, %edi
	shrl	$3, %eax
	sall	$5, %esi
	sall	$10, %eax
	orl	%esi, %eax
	orl	%edi, %eax
.LBE159:
.LBE158:
	.loc 1 867 0
	movl	%eax, %edx
	sall	$16, %edx
	orl	%edx, %eax
	.loc 1 869 0
	ret
.LFE281:
	.size	rgb_to_pixel15bgr_dup, .-rgb_to_pixel15bgr_dup
	.p2align 4,,15
	.type	rgb_to_pixel16_dup, @function
rgb_to_pixel16_dup:
.LFB282:
	.loc 1 872 0
.LBB160:
.LBB161:
	.loc 5 22 0
	shrl	$3, %edi
	shrl	$2, %esi
	shrl	$3, %edx
	sall	$11, %edi
	sall	$5, %esi
	orl	%esi, %edi
	orl	%edx, %edi
.LBE161:
.LBE160:
	.loc 1 875 0
	movl	%edi, %eax
	sall	$16, %eax
	orl	%eax, %edi
	.loc 1 877 0
	movl	%edi, %eax
	ret
.LFE282:
	.size	rgb_to_pixel16_dup, .-rgb_to_pixel16_dup
	.p2align 4,,15
	.type	rgb_to_pixel16bgr_dup, @function
rgb_to_pixel16bgr_dup:
.LFB283:
	.loc 1 881 0
	.loc 1 881 0
	movl	%edx, %eax
.LBB162:
.LBB163:
	.loc 5 28 0
	shrl	$2, %esi
	shrl	$3, %edi
	shrl	$3, %eax
	sall	$5, %esi
	sall	$11, %eax
	orl	%esi, %eax
	orl	%edi, %eax
.LBE163:
.LBE162:
	.loc 1 884 0
	movl	%eax, %edx
	sall	$16, %edx
	orl	%edx, %eax
	.loc 1 886 0
	ret
.LFE283:
	.size	rgb_to_pixel16bgr_dup, .-rgb_to_pixel16bgr_dup
	.p2align 4,,15
	.type	rgb_to_pixel32_dup, @function
rgb_to_pixel32_dup:
.LFB284:
	.loc 1 889 0
.LBB164:
.LBB165:
	.loc 5 46 0
	sall	$16, %edi
	sall	$8, %esi
	orl	%esi, %edi
	orl	%edx, %edi
.LBE165:
.LBE164:
	.loc 1 893 0
	movl	%edi, %eax
	ret
.LFE284:
	.size	rgb_to_pixel32_dup, .-rgb_to_pixel32_dup
	.p2align 4,,15
	.type	rgb_to_pixel32bgr_dup, @function
rgb_to_pixel32bgr_dup:
.LFB285:
	.loc 1 896 0
	.loc 1 896 0
	movl	%edx, %eax
.LBB166:
.LBB167:
	.loc 5 52 0
	sall	$8, %esi
	sall	$16, %eax
	orl	%esi, %eax
	orl	%edi, %eax
.LBE167:
.LBE166:
	.loc 1 900 0
	ret
.LFE285:
	.size	rgb_to_pixel32bgr_dup, .-rgb_to_pixel32bgr_dup
	.p2align 4,,15
	.type	update_palette16, @function
update_palette16:
.LFB286:
	.loc 1 904 0
	pushq	%r14
.LCFI38:
	.loc 1 908 0
	xorl	%r14d, %r14d
	.loc 1 904 0
	pushq	%r13
.LCFI39:
	.loc 1 909 0
	leaq	2096(%rdi), %r13
	.loc 1 904 0
	pushq	%r12
.LCFI40:
	.loc 1 910 0
	xorl	%r12d, %r12d
	.loc 1 904 0
	pushq	%rbp
.LCFI41:
	pushq	%rbx
.LCFI42:
	.loc 1 904 0
	movq	%rdi, %rbx
	jmp	.L623
	.p2align 4,,7
.L617:
	.loc 1 915 0
	movzbl	603(%rbx), %eax
	andl	$63, %edx
	andl	$12, %eax
	sall	$4, %eax
.L626:
	orl	%eax, %edx
	.loc 1 916 0
	leal	(%rdx,%rdx,2), %edi
.LBB168:
	.file 6 "/home/remco/Projects/Argos/src/hw/vga_int.h"
	.loc 6 156 0
	leal	2(%rdi), %eax
	movzbl	880(%rax,%rbx), %edx
.LBB169:
	.loc 6 158 0
	andl	$63, %edx
	.loc 6 159 0
	movl	%edx, %ecx
	sall	$2, %edx
	andl	$1, %ecx
	leal	(%rcx,%rcx), %eax
	orl	%eax, %edx
.LBE169:
.LBE168:
.LBB170:
	.loc 6 156 0
	leal	1(%rdi), %eax
.LBE170:
.LBB171:
	mov	%edi, %edi
.LBE171:
.LBB172:
.LBB173:
	.loc 6 159 0
	orl	%ecx, %edx
.LBE173:
.LBE172:
.LBB174:
	.loc 6 156 0
	movzbl	880(%rdi,%rbx), %edi
.LBE174:
.LBB175:
	movzbl	880(%rax,%rbx), %esi
.LBE175:
.LBB176:
.LBB177:
	.loc 6 158 0
	andl	$63, %edi
.LBE177:
.LBE176:
.LBB178:
.LBB179:
	andl	$63, %esi
	.loc 6 159 0
	movl	%esi, %ecx
	sall	$2, %esi
	andl	$1, %ecx
	leal	(%rcx,%rcx), %eax
	orl	%eax, %esi
	orl	%ecx, %esi
.LBE179:
.LBE178:
.LBB180:
.LBB181:
	movl	%edi, %ecx
	sall	$2, %edi
	andl	$1, %ecx
	leal	(%rcx,%rcx), %eax
	orl	%eax, %edi
	orl	%ecx, %edi
.LBE181:
.LBE180:
	.loc 6 156 0
	call	*1792(%rbx)
	.loc 1 920 0
	cmpl	%eax, (%r13,%rbp,4)
	je	.L616
	.loc 1 921 0
	movl	$1, %r14d
	.loc 1 922 0
	movl	%eax, (%r13,%rbp,4)
.L616:
	.loc 1 910 0
	incl	%r12d
	cmpl	$15, %r12d
	jg	.L627
.L623:
	.loc 1 912 0
	cmpb	$0, 599(%rbx)
	.loc 1 911 0
	movslq	%r12d,%rbp
	movzbl	583(%rbp,%rbx), %edx
	.loc 1 912 0
	jns	.L617
	.loc 1 913 0
	movzbl	603(%rbx), %eax
	andl	$15, %edx
	andl	$15, %eax
	sall	$4, %eax
	jmp	.L626
.L627:
	.loc 1 926 0
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	movl	%r14d, %eax
	popq	%r14
	ret
.LFE286:
	.size	update_palette16, .-update_palette16
	.p2align 4,,15
	.type	update_palette256, @function
update_palette256:
.LFB287:
	.loc 1 930 0
	pushq	%r14
.LCFI43:
	.loc 1 934 0
	xorl	%r14d, %r14d
	.loc 1 930 0
	pushq	%r13
.LCFI44:
	.loc 1 935 0
	leaq	2096(%rdi), %r13
	.loc 1 930 0
	pushq	%r12
.LCFI45:
	.loc 1 937 0
	xorl	%r12d, %r12d
	.loc 1 930 0
	pushq	%rbp
.LCFI46:
	.loc 1 936 0
	xorl	%ebp, %ebp
	.loc 1 930 0
	pushq	%rbx
.LCFI47:
	.loc 1 930 0
	movq	%rdi, %rbx
	jmp	.L638
	.p2align 4,,7
.L643:
	.loc 1 939 0
	leal	2(%rbp), %eax
	movzbl	880(%rax,%rbx), %edx
	leal	1(%rbp), %eax
	movzbl	880(%rax,%rbx), %esi
	mov	%ebp, %eax
	movzbl	880(%rax,%rbx), %edi
.L641:
	.loc 6 156 0
	call	*1792(%rbx)
	.loc 1 947 0
	movslq	%r12d,%rdx
	cmpl	%eax, (%r13,%rdx,4)
	je	.L637
	.loc 1 948 0
	movl	$1, %r14d
	.loc 1 949 0
	movl	%eax, (%r13,%rdx,4)
.L637:
	.loc 1 937 0
	incl	%r12d
	.loc 1 951 0
	addl	$3, %ebp
	.loc 1 937 0
	cmpl	$255, %r12d
	jg	.L642
.L638:
	.loc 1 938 0
	movl	876(%rbx), %edx
	testl	%edx, %edx
	jne	.L643
.LBB182:
	.loc 6 156 0
	leal	2(%rbp), %eax
	movzbl	880(%rax,%rbx), %edx
.LBB183:
	.loc 6 158 0
	andl	$63, %edx
	.loc 6 159 0
	movl	%edx, %ecx
	sall	$2, %edx
	andl	$1, %ecx
	leal	(%rcx,%rcx), %eax
	orl	%eax, %edx
.LBE183:
.LBE182:
.LBB184:
	.loc 6 156 0
	leal	1(%rbp), %eax
.LBE184:
.LBB185:
.LBB186:
	.loc 6 159 0
	orl	%ecx, %edx
.LBE186:
.LBE185:
.LBB187:
	.loc 6 156 0
	movzbl	880(%rax,%rbx), %esi
.LBB188:
	.loc 6 158 0
	andl	$63, %esi
	.loc 6 159 0
	movl	%esi, %ecx
	sall	$2, %esi
	andl	$1, %ecx
	leal	(%rcx,%rcx), %eax
	orl	%eax, %esi
.LBE188:
.LBE187:
.LBB189:
	.loc 6 156 0
	mov	%ebp, %eax
	movzbl	880(%rax,%rbx), %edi
.LBE189:
.LBB190:
.LBB191:
	.loc 6 159 0
	orl	%ecx, %esi
.LBE191:
.LBE190:
.LBB192:
.LBB193:
	.loc 6 158 0
	andl	$63, %edi
	.loc 6 159 0
	movl	%edi, %ecx
	sall	$2, %edi
	andl	$1, %ecx
	leal	(%rcx,%rcx), %eax
	orl	%eax, %edi
	orl	%ecx, %edi
	jmp	.L641
.L642:
.LBE193:
.LBE192:
	.loc 1 954 0
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	movl	%r14d, %eax
	popq	%r14
	ret
.LFE287:
	.size	update_palette256, .-update_palette256
	.p2align 4,,15
	.type	vga_get_offsets, @function
vga_get_offsets:
.LFB288:
	.loc 1 960 0
	.loc 1 963 0
	testb	$1, 1690(%rdi)
	je	.L645
	.loc 1 964 0
	movl	1708(%rdi), %r9d
	.loc 1 965 0
	movl	1704(%rdi), %r8d
	.loc 1 966 0
	movl	$65535, %r10d
	.loc 1 982 0
	movl	%r9d, (%rsi)
	.loc 1 983 0
	movl	%r8d, (%rdx)
	.loc 1 984 0
	movl	%r10d, (%rcx)
	ret
	.p2align 4,,7
.L645:
	.loc 1 975 0
	movzbl	621(%rdi), %eax
	movzbl	622(%rdi), %r8d
	.loc 1 978 0
	movzbl	633(%rdi), %r10d
	.loc 1 971 0
	movzbl	628(%rdi), %r9d
	.loc 1 975 0
	sall	$8, %eax
	orl	%eax, %r8d
	.loc 1 978 0
	movzbl	616(%rdi), %eax
	.loc 1 972 0
	sall	$3, %r9d
	.loc 1 978 0
	andl	$16, %eax
	sall	$4, %eax
	orl	%eax, %r10d
	movzbl	618(%rdi), %eax
	.loc 1 982 0
	movl	%r9d, (%rsi)
	.loc 1 983 0
	movl	%r8d, (%rdx)
	.loc 1 978 0
	andl	$64, %eax
	sall	$3, %eax
	orl	%eax, %r10d
	.loc 1 984 0
	movl	%r10d, (%rcx)
	ret
.LFE288:
	.size	vga_get_offsets, .-vga_get_offsets
	.p2align 4,,15
	.type	update_basic_params, @function
update_basic_params:
.LFB289:
	.loc 1 989 0
	movq	%rbx, -16(%rsp)
.LCFI48:
	movq	%rbp, -8(%rsp)
.LCFI49:
	movq	%rdi, %rbx
	subq	$40, %rsp
.LCFI50:
	.loc 1 993 0
	xorl	%ebp, %ebp
	.loc 1 995 0
	leaq	20(%rsp), %rcx
	leaq	16(%rsp), %rdx
	leaq	12(%rsp), %rsi
	call	*1664(%rbx)
	.loc 1 997 0
	movl	12(%rsp), %ecx
	cmpl	%ecx, 1744(%rbx)
	je	.L652
	movl	16(%rsp), %edx
.L651:
	movl	20(%rsp), %eax
.L649:
	.loc 1 1000 0
	movl	%ecx, 1744(%rbx)
	.loc 1 1001 0
	movl	%edx, 1752(%rbx)
	.loc 1 1003 0
	movl	$1, %ebp
	.loc 1 1002 0
	movl	%eax, 1748(%rbx)
.L648:
	.loc 1 1006 0
	movl	%ebp, %eax
	movq	24(%rsp), %rbx
	movq	32(%rsp), %rbp
	addq	$40, %rsp
	ret
	.p2align 4,,7
.L652:
	.loc 1 997 0
	movl	16(%rsp), %edx
	cmpl	%edx, 1752(%rbx)
	jne	.L651
	movl	20(%rsp), %eax
	cmpl	%eax, 1748(%rbx)
	jne	.L649
	jmp	.L648
.LFE289:
	.size	update_basic_params, .-update_basic_params
	.p2align 4,,15
	.type	vga_get_bpp, @function
vga_get_bpp:
.LFB292:
	.loc 1 1371 0
	.loc 1 1379 0
	xorl	%eax, %eax
	.loc 1 1374 0
	testb	$1, 1690(%rdi)
	je	.L655
	.loc 1 1375 0
	movzwl	1688(%rdi), %eax
.L655:
	.loc 1 1382 0
	rep ; ret
.LFE292:
	.size	vga_get_bpp, .-vga_get_bpp
	.p2align 4,,15
	.type	vga_get_resolution, @function
vga_get_resolution:
.LFB293:
	.loc 1 1385 0
	.loc 1 1389 0
	testb	$1, 1690(%rdi)
	.loc 1 1385 0
	movq	%rdx, %r9
	.loc 1 1389 0
	je	.L657
	.loc 1 1390 0
	movzwl	1684(%rdi), %r8d
	.loc 1 1391 0
	movzwl	1686(%rdi), %ecx
	.loc 1 1401 0
	movl	%r8d, (%rsi)
	.loc 1 1402 0
	movl	%ecx, (%r9)
	ret
	.p2align 4,,7
.L657:
	.loc 1 1395 0
	movzbl	610(%rdi), %eax
	.loc 1 1396 0
	movzbl	616(%rdi), %edx
	movzbl	627(%rdi), %ecx
	.loc 1 1395 0
	leal	8(,%rax,8), %r8d
	.loc 1 1396 0
	movl	%edx, %eax
	andl	$64, %edx
	andl	$2, %eax
	sall	$3, %edx
	sall	$7, %eax
	.loc 1 1401 0
	movl	%r8d, (%rsi)
	.loc 1 1396 0
	orl	%eax, %ecx
	orl	%edx, %ecx
	.loc 1 1399 0
	incl	%ecx
	.loc 1 1402 0
	movl	%ecx, (%r9)
	ret
.LFE293:
	.size	vga_get_resolution, .-vga_get_resolution
	.p2align 4,,15
.globl vga_invalidate_scanlines
	.type	vga_invalidate_scanlines, @function
vga_invalidate_scanlines:
.LFB294:
	.loc 1 1406 0
	.loc 1 1408 0
	cmpl	$2047, %esi
	.loc 1 1406 0
	pushq	%rbx
.LCFI51:
	.loc 1 1408 0
	jg	.L659
	.loc 1 1411 0
	cmpl	$2048, %edx
	movl	$2048, %eax
	cmovge	%eax, %edx
	.loc 1 1412 0
	cmpl	%edx, %esi
	jge	.L659
	movl	$1, %r8d
	.p2align 4,,7
.L665:
	.loc 1 1413 0
	movl	%esi, %eax
	movl	%esi, %ecx
	movl	%r8d, %ebx
	sarl	$5, %eax
	andl	$31, %ecx
	.loc 1 1412 0
	incl	%esi
	.loc 1 1413 0
	cltq
	sall	%cl, %ebx
	orl	%ebx, 1824(%rdi,%rax,4)
	.loc 1 1412 0
	cmpl	%edx, %esi
	jl	.L665
	.p2align 4,,7
.L659:
	.loc 1 1415 0
	popq	%rbx
	ret
.LFE294:
	.size	vga_invalidate_scanlines, .-vga_invalidate_scanlines
	.p2align 4,,15
	.type	vga_update_display, @function
vga_update_display:
.LFB297:
	.loc 1 1615 0
	pushq	%r15
.LCFI52:
	movq	%rdi, %r10
	pushq	%r14
.LCFI53:
	pushq	%r13
.LCFI54:
	pushq	%r12
.LCFI55:
	pushq	%rbp
.LCFI56:
	pushq	%rbx
.LCFI57:
	subq	$232, %rsp
.LCFI58:
	.loc 1 1619 0
	movq	1720(%rdi), %r9
	movl	12(%r9), %eax
	testl	%eax, %eax
	je	.L667
.LBB194:
.LBB195:
	.loc 1 1012 0
	cmpl	$16, %eax
	je	.L677
	jg	.L683
	cmpl	$15, %eax
	.p2align 4,,7
	je	.L674
.L672:
	.loc 1 1014 0
	xorl	%eax, %eax
	.p2align 4,,7
	jmp	.L673
.L677:
	.loc 1 1022 0
	movl	16(%r9), %eax
	cmpl	$1, %eax
	sbbl	%eax, %eax
	andl	$-4, %eax
	addl	$6, %eax
	.p2align 4,,7
.L673:
.LBE195:
.LBE194:
	.loc 1 1011 0
	cltq
	.loc 1 1625 0
	xorl	%ebx, %ebx
	.loc 1 1626 0
	testb	$32, 582(%r10)
	.loc 1 1011 0
	movq	rgb_to_pixel_dup_table(,%rax,8), %rax
	.loc 1 1627 0
	movl	$2, %edx
	.loc 1 1011 0
	movq	%rax, 1792(%r10)
	.loc 1 1626 0
	je	.L685
	.loc 1 1629 0
	movzbl	332(%r10), %edx
	andl	$1, %edx
.L685:
	.loc 1 1631 0
	cmpl	%edx, 1736(%r10)
	je	.L686
	.loc 1 1632 0
	movl	%edx, 1736(%r10)
	.loc 1 1633 0
	movl	$1, %ebx
.L686:
	.loc 1 1635 0
	testl	%edx, %edx
	je	.L688
	decl	%edx
	je	.L743
.LBB196:
.LBB197:
	.loc 1 1592 0
	testl	%ebx, %ebx
	je	.L667
	.loc 1 1594 0
	movl	1772(%r10), %esi
	testl	%esi, %esi
	je	.L667
	movl	1776(%r10), %edx
	testl	%edx, %edx
	je	.L667
	.loc 1 1599 0
	xorl	%r13d, %r13d
	.loc 1 1596 0
	cmpl	$8, 12(%r9)
	je	.L839
.L816:
	.loc 1 1600 0
	movl	12(%r9), %eax
	.loc 1 1602 0
	xorl	%ebp, %ebp
	.loc 1 1601 0
	movq	(%r9), %rbx
	.loc 1 1600 0
	addl	$7, %eax
	sarl	$3, %eax
	imull	%esi, %eax
	.loc 1 1602 0
	cmpl	%edx, %ebp
	jae	.L829
	movslq	%eax,%r12
.L820:
	.loc 1 1603 0
	movq	%r12, %rdx
	movq	%rbx, %rdi
	movl	%r13d, %esi
	movq	%r10, 24(%rsp)
	.loc 1 1602 0
	incl	%ebp
	.loc 1 1603 0
	call	memset
	.loc 1 1604 0
	movq	24(%rsp), %r10
	movq	1720(%r10), %r9
	.loc 1 1602 0
	movl	1776(%r10), %edx
	.loc 1 1604 0
	movslq	8(%r9),%rax
	addq	%rax, %rbx
	.loc 1 1602 0
	cmpl	%edx, %ebp
	jb	.L820
	movl	1772(%r10), %esi
.L829:
.LBB198:
.LBB199:
	.file 7 "../console.h"
	.loc 7 89 0
	movl	%edx, %r8d
	movl	%esi, %ecx
	xorl	%edx, %edx
	xorl	%esi, %esi
	movq	%r9, %rdi
	call	*48(%r9)
	.p2align 4,,7
.L667:
.LBE199:
.LBE198:
.LBE197:
.LBE196:
	.loc 1 1648 0
	addq	$232, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L683:
.LBB200:
.LBB201:
	.loc 1 1012 0
	cmpl	$32, %eax
	jne	.L672
	.loc 1 1027 0
	movl	16(%r9), %eax
	cmpl	$1, %eax
	sbbl	%eax, %eax
	addl	$4, %eax
	jmp	.L673
.L674:
	.loc 1 1017 0
	movl	16(%r9), %eax
	cmpl	$1, %eax
	sbbl	%eax, %eax
	andl	$-4, %eax
	addl	$5, %eax
	jmp	.L673
.L688:
.LBE201:
.LBE200:
.LBB202:
.LBB203:
	.loc 1 1104 0
	movq	%r10, %rdi
	movq	%r10, 24(%rsp)
	call	update_palette16
	.loc 1 1105 0
	movq	24(%rsp), %r10
	.loc 1 1104 0
	orl	%ebx, %eax
	movl	%eax, 196(%rsp)
	.loc 1 1105 0
	leaq	2096(%r10), %rax
	movq	%rax, 136(%rsp)
	.loc 1 1108 0
	movzbl	72(%r10), %esi
	.loc 1 1109 0
	movl	%esi, %eax
	leal	(%rsi,%rsi), %edx
	shrl	$4, %eax
	andl	$1, %eax
	andl	$6, %edx
	orl	%edx, %eax
	sall	$15, %eax
	leal	2(%rax), %ecx
	.loc 1 1110 0
	cmpl	%ecx, 1728(%r10)
	je	.L689
	.loc 1 1111 0
	movl	%ecx, 1728(%r10)
	.loc 1 1112 0
	movl	$1, 196(%rsp)
.L689:
	.loc 1 1114 0
	movq	(%r10), %rdx
	mov	%ecx, %eax
	leaq	(%rdx,%rax), %rax
	movq	%rax, 208(%rsp)
	.loc 1 1116 0
	movl	%esi, %eax
	shrl	%esi
	shrl	$5, %eax
	andl	$6, %esi
	andl	$1, %eax
	orl	%esi, %eax
	sall	$15, %eax
	leal	2(%rax), %ecx
	.loc 1 1117 0
	mov	%ecx, %eax
	addq	%rax, %rdx
	movq	%rdx, 216(%rsp)
	.loc 1 1118 0
	cmpl	%ecx, 1732(%r10)
	je	.L690
	.loc 1 1119 0
	movl	%ecx, 1732(%r10)
	.loc 1 1120 0
	movl	$1, 196(%rsp)
.L690:
	.loc 1 1122 0
	testb	$4, 1756(%r10)
	je	.L691
	.loc 1 1125 0
	movl	$0, 1756(%r10)
	.loc 1 1126 0
	movl	$1, 196(%rsp)
.L691:
	.loc 1 1128 0
	movq	%r10, %rdi
	movq	%r10, 24(%rsp)
	call	update_basic_params
	.loc 1 1130 0
	movq	24(%rsp), %r10
	.loc 1 1128 0
	orl	%eax, 196(%rsp)
	.loc 1 1131 0
	movl	1752(%r10), %esi
	movq	(%r10), %rdi
	.loc 1 1130 0
	movl	1744(%r10), %ebp
	.loc 1 1131 0
	leal	0(,%rsi,4), %eax
	mov	%eax, %eax
	leaq	(%rdi,%rax), %rax
	movq	%rax, 160(%rsp)
	.loc 1 1134 0
	movzbl	618(%r10), %eax
	.loc 1 1135 0
	movl	$8, 184(%rsp)
	.loc 1 1134 0
	andl	$31, %eax
	incl	%eax
	movl	%eax, 188(%rsp)
	.loc 1 1136 0
	movzbl	70(%r10), %edx
	.loc 1 1137 0
	movl	$9, %eax
	testb	$1, %dl
	cmovne	184(%rsp), %eax
	.loc 1 1139 0
	andl	$8, %edx
	.loc 1 1137 0
	movl	%eax, 184(%rsp)
	.loc 1 1139 0
	movl	$16, %eax
	cmove	184(%rsp), %eax
	movl	%eax, 184(%rsp)
	.loc 1 1140 0
	movq	1720(%r10), %r9
	movl	12(%r9), %ebx
	addl	$7, %ebx
	sarl	$3, %ebx
	imull	%eax, %ebx
	.loc 1 1141 0
	movzbl	610(%r10), %eax
	.loc 1 1144 0
	movl	$100, 180(%rsp)
	.loc 1 1141 0
	incl	%eax
	movl	%eax, 176(%rsp)
	.loc 1 1142 0
	cmpb	$100, 615(%r10)
	je	.L695
	.loc 1 1146 0
	movzbl	616(%r10), %edx
	movzbl	627(%r10), %ecx
	movl	%edx, %eax
	andl	$64, %edx
	andl	$2, %eax
	sall	$3, %edx
	sall	$7, %eax
	orl	%eax, %ecx
	orl	%edx, %ecx
	.loc 1 1149 0
	leal	1(%rcx), %edx
	movl	%edx, %eax
	cltd
	idivl	188(%rsp)
	movl	%eax, 180(%rsp)
.L695:
	.loc 1 1151 0
	movl	180(%rsp), %eax
	imull	176(%rsp), %eax
	cmpl	$16000, %eax
	jg	.L667
	.loc 1 1156 0
	movl	176(%rsp), %edx
	cmpl	1764(%r10), %edx
	je	.L840
.L699:
	.loc 1 1158 0
	movl	176(%rsp), %esi
.LBB204:
.LBB205:
	.loc 7 94 0
	movq	%r9, %rdi
.LBE205:
.LBE204:
	.loc 1 1158 0
	imull	184(%rsp), %esi
	movl	%esi, 1772(%r10)
	.loc 1 1159 0
	movl	180(%rsp), %edx
	imull	188(%rsp), %edx
	movl	%edx, 1776(%r10)
.LBB206:
.LBB207:
	.loc 7 94 0
	movq	%r10, 24(%rsp)
	call	*56(%r9)
.LBE207:
.LBE206:
	.loc 1 1161 0
	movq	24(%rsp), %r10
	movl	176(%rsp), %esi
	movl	%esi, 1764(%r10)
	.loc 1 1162 0
	movl	180(%rsp), %eax
	movl	%eax, 1768(%r10)
	.loc 1 1163 0
	movzbl	188(%rsp), %edx
	movb	%dl, 1761(%r10)
	.loc 1 1164 0
	movzbl	184(%rsp), %ecx
	movb	%cl, 1760(%r10)
	.loc 1 1165 0
	movl	$1, 196(%rsp)
	movq	1720(%r10), %r9
	movq	(%r10), %rdi
	movl	1752(%r10), %esi
.L698:
	.loc 1 1167 0
	movzbl	623(%r10), %edx
	movzbl	624(%r10), %eax
	.loc 1 1168 0
	movl	1784(%r10), %ecx
	.loc 1 1167 0
	sall	$8, %edx
	orl	%eax, %edx
	subl	%esi, %edx
	.loc 1 1168 0
	cmpl	%edx, %ecx
	je	.L841
.L702:
	.loc 1 1173 0
	cmpl	$15999, %ecx
	ja	.L703
	.loc 1 1174 0
	mov	%ecx, %eax
	movl	$-1, 3120(%r10,%rax,4)
.L703:
	.loc 1 1175 0
	cmpl	$15999, %edx
	ja	.L704
	.loc 1 1176 0
	mov	%edx, %eax
	movl	$-1, 3120(%r10,%rax,4)
.L704:
	.loc 1 1178 0
	movzbl	619(%r10), %eax
	.loc 1 1177 0
	movl	%edx, 1784(%r10)
	.loc 1 1178 0
	movb	%al, 1780(%r10)
	.loc 1 1179 0
	movzbl	620(%r10), %eax
	movb	%al, 1781(%r10)
.L701:
	.loc 1 1181 0
	leal	(%rsi,%rdx), %eax
	sall	$2, %eax
	mov	%eax, %eax
	addq	%rax, %rdi
	movq	%rdi, 144(%rsp)
.LBB208:
.LBB209:
	.loc 1 1012 0
	movl	12(%r9), %eax
	cmpl	$16, %eax
	je	.L712
	jg	.L718
	cmpl	$15, %eax
	je	.L709
.L707:
	.loc 1 1014 0
	xorl	%eax, %eax
.L708:
.LBE209:
.LBE208:
	.loc 1 1184 0
	cmpl	$16, 184(%rsp)
	je	.L842
	.loc 1 1187 0
	cltq
	movq	vga_draw_glyph8_table(,%rax,8), %rdx
	movq	%rdx, 120(%rsp)
.L720:
	.loc 1 1188 0
	movq	vga_draw_glyph9_table(,%rax,8), %rax
	.loc 1 1192 0
	leaq	3120(%r10), %rsi
	.loc 1 1188 0
	movq	%rax, 112(%rsp)
	.loc 1 1190 0
	movq	(%r9), %rcx
	.loc 1 1193 0
	movl	180(%rsp), %eax
	.loc 1 1190 0
	movq	%rcx, 152(%rsp)
	.loc 1 1191 0
	movl	8(%r9), %r9d
	.loc 1 1193 0
	movl	$0, 192(%rsp)
	cmpl	%eax, 192(%rsp)
	.loc 1 1192 0
	movq	%rsi, 128(%rsp)
	.loc 1 1191 0
	movl	%r9d, 168(%rsp)
	.loc 1 1193 0
	jge	.L667
	movl	%r9d, %eax
	movl	188(%rsp), %edx
	movslq	%ebp,%rbp
	imull	188(%rsp), %eax
	movslq	%ebx,%rbx
	movq	%rbp, 48(%rsp)
	movl	$0, 36(%rsp)
	decl	%edx
	movq	%rbx, 40(%rsp)
	movl	%edx, 32(%rsp)
	cltq
	movq	%rax, 104(%rsp)
	.p2align 4,,7
.L742:
	.loc 1 1196 0
	movl	176(%rsp), %r15d
	.loc 1 1198 0
	xorl	%ebx, %ebx
	.loc 1 1194 0
	movq	152(%rsp), %r14
	.loc 1 1195 0
	movq	160(%rsp), %rbp
	.loc 1 1197 0
	movl	$-1, 172(%rsp)
	.loc 1 1198 0
	cmpl	%r15d, %ebx
	jl	.L739
	jmp	.L740
	.p2align 4,,7
.L845:
	.loc 1 1218 0
	movq	%rdi, %rdx
	movq	%r10, 24(%rsp)
	movl	%r13d, %r9d
	movl	%r12d, %r8d
	movl	188(%rsp), %ecx
	movl	168(%rsp), %esi
	movq	%r14, %rdi
	call	*120(%rsp)
	.loc 1 1227 0
	cmpq	144(%rsp), %rbp
	.loc 1 1224 0
	movq	24(%rsp), %r10
	.loc 1 1227 0
	je	.L843
.L727:
	.loc 1 1249 0
	addq	40(%rsp), %r14
	.loc 1 1250 0
	addq	$4, %rbp
	.loc 1 1251 0
	addq	$4, 128(%rsp)
	.loc 1 1198 0
	incl	%ebx
	cmpl	176(%rsp), %ebx
	jge	.L844
.L739:
	.loc 1 1200 0
	movl	196(%rsp), %edi
	.loc 1 1199 0
	movzwl	(%rbp), %esi
	.loc 1 1200 0
	testl	%edi, %edi
	jne	.L728
	movq	128(%rsp), %rcx
	cmpl	(%rcx), %esi
	je	.L727
.L728:
	.loc 1 1202 0
	cmpl	%r15d, %ebx
	.loc 1 1204 0
	movl	172(%rsp), %eax
	.loc 1 1205 0
	movq	128(%rsp), %rdx
	.loc 1 1202 0
	cmovl	%ebx, %r15d
	.loc 1 1204 0
	cmpl	172(%rsp), %ebx
	cmovg	%ebx, %eax
	.loc 1 1210 0
	movzbl	%sil,%r8d
	.loc 1 1204 0
	movl	%eax, 172(%rsp)
	.loc 1 1205 0
	movl	%esi, (%rdx)
	.loc 1 1211 0
	movl	%esi, %edx
	.loc 1 1213 0
	sarl	$11, %esi
	.loc 1 1214 0
	movl	%r8d, %eax
	.loc 1 1211 0
	sarl	$8, %edx
	.loc 1 1213 0
	movq	%rsi, %rcx
	.loc 1 1214 0
	sall	$7, %eax
	.loc 1 1215 0
	sarl	%esi
	.loc 1 1213 0
	andl	$1, %ecx
	.loc 1 1214 0
	movslq	%eax,%rdi
	.loc 1 1216 0
	andl	$15, %edx
	.loc 1 1214 0
	addq	208(%rsp,%rcx,8), %rdi
	.loc 1 1217 0
	cmpl	$9, 184(%rsp)
	.loc 1 1215 0
	movslq	%esi,%rax
	movq	136(%rsp), %rcx
	movl	(%rcx,%rax,4), %r13d
	.loc 1 1216 0
	movl	(%rcx,%rdx,4), %r12d
	.loc 1 1217 0
	jne	.L845
	.loc 1 1222 0
	leal	-176(%r8), %eax
	.loc 1 1221 0
	xorl	%edx, %edx
	.loc 1 1222 0
	cmpl	$47, %eax
	ja	.L733
	.loc 1 1223 0
	testb	$4, 599(%r10)
	movl	$1, %eax
	cmovne	%eax, %edx
.L733:
	.loc 1 1224 0
	movl	%edx, (%rsp)
	movq	%r10, 24(%rsp)
	movq	%rdi, %rdx
	movl	%r13d, %r9d
	movl	%r12d, %r8d
	movl	188(%rsp), %ecx
	movl	168(%rsp), %esi
	movq	%r14, %rdi
	call	*112(%rsp)
	.loc 1 1227 0
	cmpq	144(%rsp), %rbp
	.loc 1 1224 0
	movq	24(%rsp), %r10
	.loc 1 1227 0
	jne	.L727
.L843:
	movzbl	619(%r10), %eax
	testb	$32, %al
	jne	.L727
.LBB210:
	.loc 1 1232 0
	movzbl	620(%r10), %ecx
	.loc 1 1231 0
	movl	%eax, %esi
	andl	$31, %esi
	.loc 1 1232 0
	andl	$31, %ecx
	.loc 1 1235 0
	cmpl	%ecx, 32(%rsp)
	cmovl	32(%rsp), %ecx
	.loc 1 1236 0
	cmpl	%esi, %ecx
	setge	%dl
	xorl	%eax, %eax
	cmpl	188(%rsp), %esi
	setl	%al
	testl	%edx, %eax
	je	.L727
	.loc 1 1238 0
	movl	168(%rsp), %eax
	.loc 1 1237 0
	subl	%esi, %ecx
	incl	%ecx
	.loc 1 1238 0
	imull	%esi, %eax
	.loc 1 1239 0
	cmpl	$9, 184(%rsp)
	.loc 1 1238 0
	cltq
	leaq	(%rax,%r14), %rdi
	.loc 1 1239 0
	je	.L737
	.loc 1 1240 0
	movl	%r13d, %r9d
	movl	%r12d, %r8d
	movl	$cursor_glyph, %edx
	movl	168(%rsp), %esi
	movq	%r10, 24(%rsp)
	call	*120(%rsp)
.L835:
.LBE210:
	.loc 1 1249 0
	addq	40(%rsp), %r14
	.loc 1 1250 0
	addq	$4, %rbp
	.loc 1 1251 0
	addq	$4, 128(%rsp)
	.loc 1 1198 0
	incl	%ebx
	cmpl	176(%rsp), %ebx
.LBB211:
	.loc 1 1243 0
	movq	24(%rsp), %r10
.LBE211:
	.loc 1 1198 0
	jl	.L739
	.p2align 4,,7
.L844:
	.loc 1 1253 0
	cmpl	$-1, 172(%rsp)
	je	.L740
.LBB212:
	.loc 7 88 0
	movq	1720(%r10), %rax
	subl	%r15d, 172(%rsp)
	movl	172(%rsp), %ecx
	movl	184(%rsp), %esi
.LBB213:
	.loc 7 89 0
	movq	%r10, 24(%rsp)
	movl	188(%rsp), %r8d
	movl	36(%rsp), %edx
	movq	%rax, %rdi
.LBE213:
	.loc 7 88 0
	incl	%ecx
	imull	184(%rsp), %ecx
	imull	%r15d, %esi
.LBB214:
	.loc 7 89 0
	call	*48(%rax)
	movq	24(%rsp), %r10
	.p2align 4,,7
.L740:
.LBE214:
.LBE212:
	.loc 1 1193 0
	incl	192(%rsp)
	.loc 1 1257 0
	movq	104(%rsp), %rsi
	.loc 1 1258 0
	movq	48(%rsp), %rax
	.loc 1 1257 0
	addq	%rsi, 152(%rsp)
	.loc 1 1258 0
	addq	%rax, 160(%rsp)
	movl	188(%rsp), %edx
	.loc 1 1193 0
	movl	180(%rsp), %ecx
	addl	%edx, 36(%rsp)
	cmpl	%ecx, 192(%rsp)
	jl	.L742
	jmp	.L667
.L743:
.LBE203:
.LBE202:
.LBB215:
.LBB216:
	.loc 1 1429 0
	movq	%r10, %rdi
	movq	%r10, 24(%rsp)
	call	update_basic_params
	.loc 1 1431 0
	movq	24(%rsp), %r10
	.loc 1 1429 0
	movl	%eax, %r14d
	.loc 1 1431 0
	leaq	204(%rsp), %rdx
	leaq	200(%rsp), %rsi
	.loc 1 1429 0
	orl	%ebx, %r14d
	.loc 1 1431 0
	movq	%r10, %rdi
	call	*1672(%r10)
	.loc 1 1432 0
	movl	200(%rsp), %esi
	.loc 1 1434 0
	movq	24(%rsp), %r10
	.loc 1 1432 0
	movl	%esi, 88(%rsp)
	.loc 1 1434 0
	movzbl	331(%r10), %eax
	.loc 1 1435 0
	movzbl	618(%r10), %esi
	.loc 1 1434 0
	shrb	$5, %al
	movl	%eax, %edx
	.loc 1 1435 0
	movl	%esi, %eax
	shrb	$7, %al
	.loc 1 1434 0
	andl	$3, %edx
	.loc 1 1435 0
	movzbl	%al, %ecx
	.loc 1 1436 0
	cmpl	$1, %edx
	.loc 1 1441 0
	movl	%ecx, 84(%rsp)
	.loc 1 1436 0
	je	.L745
	.loc 1 1437 0
	movl	%esi, %eax
	andl	$31, %eax
	incl	%eax
	sall	%cl, %eax
	decl	%eax
	movl	%eax, 84(%rsp)
.L745:
	.loc 1 1443 0
	movl	84(%rsp), %eax
	movl	%eax, 80(%rsp)
	.loc 1 1444 0
	movzbl	1740(%r10), %eax
	cmpl	%edx, %eax
	je	.L846
.L747:
	.loc 1 1446 0
	movl	$1, %r14d
	.loc 1 1447 0
	movb	%dl, 1740(%r10)
	.loc 1 1448 0
	movb	%cl, 1741(%r10)
.L746:
	.loc 1 1451 0
	testl	%edx, %edx
	je	.L847
	.loc 1 1459 0
	decl	%edx
	je	.L848
	.loc 1 1468 0
	movq	%r10, %rdi
	movq	%r10, 24(%rsp)
	call	*1656(%r10)
	subl	$8, %eax
	movq	24(%rsp), %r10
	cmpl	$24, %eax
	ja	.L758
	mov	%eax, %eax
	jmp	*.L764(,%rax,8)
	.section	.rodata
	.align 8
	.align 4
.L764:
	.quad	.L759
	.quad	.L758
	.quad	.L758
	.quad	.L758
	.quad	.L758
	.quad	.L758
	.quad	.L758
	.quad	.L760
	.quad	.L761
	.quad	.L758
	.quad	.L758
	.quad	.L758
	.quad	.L758
	.quad	.L758
	.quad	.L758
	.quad	.L758
	.quad	.L762
	.quad	.L758
	.quad	.L758
	.quad	.L758
	.quad	.L758
	.quad	.L758
	.quad	.L758
	.quad	.L758
	.quad	.L763
	.text
.L840:
.LBE216:
.LBE215:
.LBB217:
.LBB218:
	.loc 1 1156 0
	movl	180(%rsp), %ecx
	cmpl	1768(%r10), %ecx
	jne	.L699
	movzbl	1760(%r10), %eax
	cmpl	184(%rsp), %eax
	jne	.L699
	movzbl	1761(%r10), %eax
	cmpl	188(%rsp), %eax
	jne	.L699
	jmp	.L698
.L709:
.LBB219:
.LBB220:
	.loc 1 1017 0
	movl	16(%r9), %eax
	cmpl	$1, %eax
	sbbl	%eax, %eax
	andl	$-4, %eax
	addl	$5, %eax
	jmp	.L708
.L758:
.LBE220:
.LBE219:
.LBE218:
.LBE217:
.LBB221:
.LBB222:
	.loc 1 1471 0
	movq	%r10, %rdi
	movq	%r10, 24(%rsp)
	call	update_palette256
	orl	%eax, %r14d
	.loc 1 1472 0
	movl	$4, %eax
.L836:
	.loc 1 1477 0
	movq	24(%rsp), %r10
.L751:
.LBB223:
	.loc 1 1011 0
	movq	1720(%r10), %r9
.LBE223:
	.loc 1 1492 0
	leal	0(,%rax,8), %edx
	subl	%eax, %edx
.LBB224:
.LBB225:
	.loc 1 1012 0
	movl	12(%r9), %eax
	cmpl	$16, %eax
	je	.L772
	jg	.L778
	cmpl	$15, %eax
	je	.L769
.L767:
	.loc 1 1014 0
	xorl	%eax, %eax
.L768:
.LBE225:
.LBE224:
	.loc 1 1011 0
	leal	(%rdx,%rax), %eax
	.loc 1 1494 0
	movl	88(%rsp), %edx
	.loc 1 1011 0
	movq	vga_draw_line_table(,%rax,8), %rax
	movq	%rax, 72(%rsp)
	.loc 1 1494 0
	cmpl	1764(%r10), %edx
	je	.L849
	movl	204(%rsp), %r11d
.L780:
.LBB226:
.LBB227:
	.loc 7 94 0
	movl	%r11d, %edx
	movl	88(%rsp), %esi
	movq	%r10, 24(%rsp)
	movq	%r9, %rdi
.LBE227:
.LBE226:
	.loc 1 1501 0
	movl	$1, %r14d
.LBB228:
.LBB229:
	.loc 7 94 0
	call	*56(%r9)
.LBE229:
.LBE228:
	.loc 1 1497 0
	movl	88(%rsp), %esi
	movq	24(%rsp), %r10
	movl	%esi, 1772(%r10)
	.loc 1 1498 0
	movl	204(%rsp), %edx
	.loc 1 1499 0
	movl	%esi, 1764(%r10)
	.loc 1 1498 0
	movl	%edx, %r11d
	movl	%edx, 1776(%r10)
	.loc 1 1500 0
	movl	%edx, 1768(%r10)
.L779:
	.loc 1 1503 0
	movq	2080(%r10), %rax
	testq	%rax, %rax
	jne	.L850
.L782:
	.loc 1 1506 0
	movl	1744(%r10), %ecx
	.loc 1 1513 0
	movl	$-1, %r13d
	.loc 1 1519 0
	xorl	%ebp, %ebp
	.loc 1 1518 0
	xorl	%r15d, %r15d
	.loc 1 1506 0
	movl	%ecx, 92(%rsp)
	.loc 1 1511 0
	movl	1752(%r10), %eax
	.loc 1 1514 0
	movl	$2147483647, 100(%rsp)
	.loc 1 1515 0
	movl	%r13d, 96(%rsp)
	.loc 1 1511 0
	leal	0(,%rax,4), %ebx
	.loc 1 1512 0
	movl	200(%rsp), %eax
	sall	$2, %eax
	.loc 1 1519 0
	cmpl	%r11d, %ebp
	.loc 1 1512 0
	movl	%eax, 68(%rsp)
	.loc 1 1516 0
	movq	1720(%r10), %rax
	movq	(%rax), %r12
	.loc 1 1517 0
	movl	8(%rax), %eax
	.loc 1 1519 0
	jge	.L807
	cltq
	movq	%rax, 56(%rsp)
	jmp	.L804
.L853:
	.loc 1 1544 0
	testl	%r13d, %r13d
	.loc 1 1549 0
	mov	%esi, %edx
	movl	200(%rsp), %ecx
	.loc 1 1544 0
	cmovs	%ebp, %r13d
	.loc 1 1546 0
	cmpl	100(%rsp), %edi
	.loc 1 1549 0
	movq	%r12, %rsi
	.loc 1 1546 0
	cmovge	100(%rsp), %edi
	.loc 1 1548 0
	cmpl	96(%rsp), %r8d
	cmovle	96(%rsp), %r8d
	.loc 1 1546 0
	movl	%edi, 100(%rsp)
	.loc 1 1549 0
	movq	%r10, %rdi
	.loc 1 1548 0
	movl	%r8d, 96(%rsp)
	.loc 1 1549 0
	addq	(%r10), %rdx
	movq	%r10, 24(%rsp)
	call	*72(%rsp)
	.loc 1 1550 0
	movq	24(%rsp), %r10
	movq	2088(%r10), %rax
	testq	%rax, %rax
	jne	.L851
	movl	204(%rsp), %r11d
.L797:
	.loc 1 1560 0
	movl	80(%rsp), %ecx
	testl	%ecx, %ecx
	jne	.L800
.L854:
	.loc 1 1561 0
	movzbl	632(%r10), %eax
	.loc 1 1562 0
	movl	%r15d, %edx
	.loc 1 1563 0
	movl	92(%rsp), %esi
	leal	(%rbx,%rsi), %ecx
	.loc 1 1561 0
	andl	$3, %eax
	xorl	$3, %eax
	.loc 1 1562 0
	andl	%eax, %edx
	.loc 1 1563 0
	cmpl	%eax, %edx
	.loc 1 1565 0
	movl	84(%rsp), %eax
	.loc 1 1563 0
	cmove	%ecx, %ebx
	.loc 1 1564 0
	incl	%r15d
	.loc 1 1565 0
	movl	%eax, 80(%rsp)
.L802:
	.loc 1 1571 0
	cmpl	1748(%r10), %ebp
	movl	$0, %eax
	cmove	%eax, %ebx
	.loc 1 1519 0
	incl	%ebp
	.loc 1 1572 0
	addq	56(%rsp), %r12
	.loc 1 1519 0
	cmpl	%r11d, %ebp
	jge	.L852
.L804:
	.loc 1 1521 0
	movzbl	632(%r10), %eax
	.loc 1 1520 0
	movl	%ebx, %esi
	.loc 1 1521 0
	movzbl	%al, %edx
	testb	$1, %dl
	jne	.L786
.LBB230:
	.loc 1 1524 0
	shrb	$6, %al
	.loc 1 1525 0
	movl	$-2, %esi
	.loc 1 1524 0
	movl	%eax, %ecx
	.loc 1 1525 0
	movl	%r15d, %eax
	.loc 1 1524 0
	andl	$1, %ecx
	.loc 1 1525 0
	andl	$1, %eax
	.loc 1 1524 0
	addl	$14, %ecx
	.loc 1 1525 0
	roll	%cl, %esi
	sall	%cl, %eax
	andl	%ebx, %esi
	orl	%eax, %esi
.L786:
.LBE230:
	.loc 1 1527 0
	andl	$2, %edx
	jne	.L787
	.loc 1 1528 0
	movl	%r15d, %eax
	andl	$-32769, %esi
	andl	$2, %eax
	sall	$14, %eax
	orl	%eax, %esi
.L787:
	.loc 1 1530 0
	movq	8(%r10), %rdx
	.loc 1 1531 0
	movl	68(%rsp), %ecx
	.loc 1 1530 0
	movl	%esi, %eax
	andl	$-4096, %eax
	leal	(%rax,%rdx), %edi
	.loc 1 1531 0
	leal	-1(%rsi,%rcx), %eax
.LBB231:
.LBB232:
	.loc 2 967 0
	movq	phys_ram_dirty(%rip), %rcx
.LBE232:
.LBE231:
	.loc 1 1531 0
	andl	$-4096, %eax
	leal	(%rax,%rdx), %r8d
.LBB233:
	.loc 2 966 0
	movslq	%edi,%rax
.LBB234:
	.loc 2 967 0
	shrq	$12, %rax
	movzbl	(%rax,%rcx), %edx
.LBE234:
.LBE233:
.LBB235:
	.loc 2 966 0
	movslq	%r8d,%rax
.LBB236:
	.loc 2 967 0
	shrq	$12, %rax
	movzbl	(%rax,%rcx), %eax
.LBE236:
.LBE235:
.LBB237:
.LBB238:
	andl	$1, %edx
.LBE238:
.LBE237:
	.loc 2 966 0
	orl	%r14d, %edx
.LBB239:
.LBB240:
	.loc 2 967 0
	andl	$1, %eax
.LBE240:
.LBE239:
	.loc 2 966 0
	orl	%eax, %edx
	.loc 1 1535 0
	movl	%r8d, %eax
	subl	%edi, %eax
	cmpl	$4096, %eax
	jle	.L790
.LBB241:
	.loc 2 966 0
	leal	4096(%rdi), %eax
	cltq
.LBB242:
	.loc 2 967 0
	shrq	$12, %rax
	movzbl	(%rax,%rcx), %eax
	andl	$1, %eax
.LBE242:
.LBE241:
	.loc 2 966 0
	orl	%eax, %edx
.L790:
	.loc 1 1541 0
	movl	%ebp, %eax
	movl	%ebp, %ecx
	sarl	$5, %eax
	andl	$31, %ecx
	cltq
	movl	1824(%r10,%rax,4), %eax
	shrl	%cl, %eax
	andl	$1, %eax
	.loc 1 1542 0
	orl	%eax, %edx
	jne	.L853
	.loc 1 1553 0
	testl	%r13d, %r13d
	js	.L797
.LBB243:
	.loc 7 88 0
	movq	1720(%r10), %rax
.LBB244:
	.loc 7 89 0
	movl	%ebp, %r8d
	movl	%r13d, %edx
	subl	%r13d, %r8d
.LBE244:
.LBE243:
	.loc 1 1557 0
	movl	$-1, %r13d
.LBB245:
.LBB246:
	.loc 7 89 0
	movl	88(%rsp), %ecx
	xorl	%esi, %esi
	movq	%r10, 24(%rsp)
	movq	%rax, %rdi
	call	*48(%rax)
.L838:
.LBE246:
.LBE245:
	.loc 1 1560 0
	movl	80(%rsp), %ecx
	movl	204(%rsp), %r11d
	movq	24(%rsp), %r10
	testl	%ecx, %ecx
	je	.L854
.L800:
	.loc 1 1567 0
	decl	80(%rsp)
	jmp	.L802
.L769:
.LBB247:
.LBB248:
	.loc 1 1017 0
	movl	16(%r9), %eax
	cmpl	$1, %eax
	sbbl	%eax, %eax
	andl	$-4, %eax
	addl	$5, %eax
	jmp	.L768
.L762:
.LBE248:
.LBE247:
	.loc 1 1485 0
	movl	$8, %eax
	jmp	.L751
.L761:
	.loc 1 1482 0
	movl	$7, %eax
	jmp	.L751
.L763:
	.loc 1 1488 0
	movl	$9, %eax
	.p2align 4,,5
	jmp	.L751
.L760:
	.loc 1 1479 0
	movl	$6, %eax
	.p2align 4,,5
	jmp	.L751
.L759:
	.loc 1 1475 0
	movq	%r10, %rdi
	movq	%r10, 24(%rsp)
	call	update_palette256
	orl	%eax, %r14d
	.loc 1 1476 0
	movl	$5, %eax
	jmp	.L836
	.p2align 4,,7
.L852:
	.loc 1 1574 0
	testl	%r13d, %r13d
	js	.L805
.LBB249:
	.loc 7 88 0
	movq	1720(%r10), %rax
.LBB250:
	.loc 7 89 0
	movl	%ebp, %r8d
	movq	%r10, 24(%rsp)
	subl	%r13d, %r8d
	movl	88(%rsp), %ecx
	movl	%r13d, %edx
	xorl	%esi, %esi
	movq	%rax, %rdi
	call	*48(%rax)
	movq	24(%rsp), %r10
.L805:
.LBE250:
.LBE249:
	.loc 1 1580 0
	cmpl	$-1, 96(%rsp)
	je	.L807
	.loc 1 1581 0
	movl	96(%rsp), %esi
	movslq	100(%rsp),%rdi
	movl	$1, %edx
	movq	%r10, 24(%rsp)
	addl	$4096, %esi
	movslq	%esi,%rsi
	call	cpu_physical_memory_reset_dirty
	movq	24(%rsp), %r10
.L807:
	.loc 1 1584 0
	movl	204(%rsp), %edx
	leaq	1824(%r10), %rdi
	xorl	%esi, %esi
	addl	$31, %edx
	sarl	$5, %edx
	sall	$2, %edx
	movslq	%edx,%rdx
	call	memset
	jmp	.L667
.L851:
	.loc 1 1551 0
	movl	%ebp, %edx
	movq	%r12, %rsi
	movq	%r10, %rdi
	call	*%rax
	.p2align 4,,5
	jmp	.L838
.L737:
.LBE222:
.LBE221:
.LBB251:
.LBB252:
.LBB253:
	.loc 1 1243 0
	movl	168(%rsp), %esi
	movl	%r13d, %r9d
	movl	%r12d, %r8d
	movl	$cursor_glyph, %edx
	movl	$1, (%rsp)
	movq	%r10, 24(%rsp)
	call	*112(%rsp)
	jmp	.L835
.L718:
.LBE253:
.LBB254:
.LBB255:
	.loc 1 1012 0
	cmpl	$32, %eax
	jne	.L707
	.loc 1 1027 0
	movl	16(%r9), %eax
	cmpl	$1, %eax
	sbbl	%eax, %eax
	addl	$4, %eax
	jmp	.L708
.L712:
	.loc 1 1022 0
	movl	16(%r9), %eax
	cmpl	$1, %eax
	sbbl	%eax, %eax
	andl	$-4, %eax
	addl	$6, %eax
	jmp	.L708
.L841:
.LBE255:
.LBE254:
	.loc 1 1168 0
	movzwl	1780(%r10), %eax
	cmpw	%ax, 619(%r10)
	jne	.L702
	jmp	.L701
.L842:
	.loc 1 1185 0
	cltq
	movq	vga_draw_glyph16_table(,%rax,8), %rsi
	movq	%rsi, 120(%rsp)
	jmp	.L720
.L778:
.LBE252:
.LBE251:
.LBB256:
.LBB257:
.LBB258:
.LBB259:
	.loc 1 1012 0
	cmpl	$32, %eax
	jne	.L767
	.loc 1 1027 0
	movl	16(%r9), %eax
	cmpl	$1, %eax
	sbbl	%eax, %eax
	addl	$4, %eax
	jmp	.L768
.L850:
.LBE259:
.LBE258:
	.loc 1 1504 0
	movq	%r10, %rdi
	movq	%r10, 24(%rsp)
	call	*%rax
	movl	204(%rsp), %r11d
	movq	24(%rsp), %r10
	jmp	.L782
.L847:
	.loc 1 1452 0
	movq	%r10, %rdi
	movq	%r10, 24(%rsp)
	call	update_palette16
	.loc 1 1453 0
	movq	24(%rsp), %r10
	.loc 1 1452 0
	orl	%eax, %r14d
	.loc 1 1457 0
	movl	$2, %eax
	.loc 1 1453 0
	testb	$8, 70(%r10)
	je	.L751
	.loc 1 1463 0
	sall	88(%rsp)
	.loc 1 1454 0
	movb	$3, %al
	jmp	.L751
.L846:
	.loc 1 1444 0
	movzbl	1741(%r10), %eax
	cmpl	%ecx, %eax
	jne	.L747
	jmp	.L746
.L849:
	.loc 1 1494 0
	movl	204(%rsp), %r11d
	cmpl	1768(%r10), %r11d
	jne	.L780
	jmp	.L779
.L772:
.LBB260:
.LBB261:
	.loc 1 1022 0
	movl	16(%r9), %eax
	cmpl	$1, %eax
	sbbl	%eax, %eax
	andl	$-4, %eax
	addl	$6, %eax
	jmp	.L768
.L848:
.LBE261:
.LBE260:
	.loc 1 1460 0
	movq	%r10, %rdi
	movq	%r10, 24(%rsp)
	call	update_palette16
	.loc 1 1461 0
	movq	24(%rsp), %r10
	.loc 1 1460 0
	orl	%eax, %r14d
	.loc 1 1465 0
	xorl	%eax, %eax
	.loc 1 1461 0
	testb	$8, 70(%r10)
	je	.L751
	.loc 1 1463 0
	sall	88(%rsp)
	.loc 1 1462 0
	movb	$1, %al
	jmp	.L751
.L839:
.LBE257:
.LBE256:
.LBB262:
.LBB263:
	.loc 1 1597 0
	xorl	%edx, %edx
	xorl	%esi, %esi
	movq	%r10, 24(%rsp)
	xorl	%edi, %edi
	call	*%rax
	movq	24(%rsp), %r10
	movl	%eax, %r13d
	movq	1720(%r10), %r9
	movl	1772(%r10), %esi
	movl	1776(%r10), %edx
	jmp	.L816
.LBE263:
.LBE262:
.LFE297:
	.size	vga_update_display, .-vga_update_display
	.p2align 4,,15
	.type	vga_invalidate_display, @function
vga_invalidate_display:
.LFB298:
	.loc 1 1652 0
	.loc 1 1655 0
	movl	$-1, 1764(%rdi)
	.loc 1 1656 0
	movl	$-1, 1768(%rdi)
	ret
.LFE298:
	.size	vga_invalidate_display, .-vga_invalidate_display
	.p2align 4,,15
	.type	vga_save, @function
vga_save:
.LFB300:
	.loc 1 1678 0
	pushq	%r13
.LCFI59:
	movq	%rsi, %r13
	pushq	%r12
.LCFI60:
	movq	%rdi, %r12
	pushq	%rbp
.LCFI61:
	pushq	%rbx
.LCFI62:
	subq	$8, %rsp
.LCFI63:
	.loc 1 1682 0
	movq	56(%rsi), %rdi
	testq	%rdi, %rdi
	jne	.L881
.L857:
.LBB264:
.LBB265:
	.file 8 "/home/remco/Projects/Argos/src/hw/hw.h"
	.loc 8 32 0
	movl	64(%r13), %esi
	movq	%r12, %rdi
	leaq	1682(%r13), %rbx
	movl	$9, %ebp
	call	qemu_put_be32
.LBE265:
.LBE264:
.LBB266:
.LBB267:
	.loc 8 42 0
	movzbl	68(%r13), %esi
	movq	%r12, %rdi
	call	qemu_put_byte
.LBE267:
.LBE266:
	.loc 1 1687 0
	leaq	69(%r13), %rsi
	movl	$8, %edx
	movq	%r12, %rdi
	call	qemu_put_buffer
.LBB268:
.LBB269:
	.loc 8 42 0
	movzbl	325(%r13), %esi
	movq	%r12, %rdi
	call	qemu_put_byte
.LBE269:
.LBE268:
	.loc 1 1689 0
	leaq	326(%r13), %rsi
	movl	$16, %edx
	movq	%r12, %rdi
	call	qemu_put_buffer
.LBB270:
.LBB271:
	.loc 8 42 0
	movzbl	582(%r13), %esi
	movq	%r12, %rdi
	call	qemu_put_byte
.LBE271:
.LBE270:
	.loc 1 1691 0
	leaq	583(%r13), %rsi
	movl	$21, %edx
	movq	%r12, %rdi
	call	qemu_put_buffer
	.loc 1 1692 0
	movl	604(%r13), %esi
	movq	%r12, %rdi
	call	qemu_put_be32
.LBB272:
.LBB273:
	.loc 8 42 0
	movzbl	608(%r13), %esi
	movq	%r12, %rdi
	call	qemu_put_byte
.LBE273:
.LBE272:
	.loc 1 1694 0
	leaq	609(%r13), %rsi
	movl	$256, %edx
	movq	%r12, %rdi
	call	qemu_put_buffer
.LBB274:
.LBB275:
	.loc 8 42 0
	movzbl	865(%r13), %esi
	movq	%r12, %rdi
	call	qemu_put_byte
.LBE275:
.LBE274:
.LBB276:
.LBB277:
	movzbl	866(%r13), %esi
	movq	%r12, %rdi
	call	qemu_put_byte
.LBE277:
.LBE276:
	.loc 1 1697 0
	movzbl	867(%r13), %esi
	movq	%r12, %rdi
	call	qemu_put_byte
.LBB278:
.LBB279:
	.loc 8 42 0
	movzbl	868(%r13), %esi
	movq	%r12, %rdi
	call	qemu_put_byte
.LBE279:
.LBE278:
.LBB280:
.LBB281:
	movzbl	869(%r13), %esi
	movq	%r12, %rdi
	call	qemu_put_byte
.LBE281:
.LBE280:
.LBB282:
.LBB283:
	movzbl	870(%r13), %esi
	movq	%r12, %rdi
	call	qemu_put_byte
.LBE283:
.LBE282:
.LBB284:
.LBB285:
	movzbl	871(%r13), %esi
	movq	%r12, %rdi
	call	qemu_put_byte
.LBE285:
.LBE284:
.LBB286:
.LBB287:
	movzbl	872(%r13), %esi
	movq	%r12, %rdi
	call	qemu_put_byte
.LBE287:
.LBE286:
	.loc 1 1704 0
	leaq	873(%r13), %rsi
	movl	$3, %edx
	movq	%r12, %rdi
	call	qemu_put_buffer
	.loc 1 1705 0
	leaq	880(%r13), %rsi
	movl	$768, %edx
	movq	%r12, %rdi
	call	qemu_put_buffer
	.loc 1 1707 0
	movl	1648(%r13), %esi
	movq	%r12, %rdi
	call	qemu_put_be32
	.loc 1 1709 0
	movl	$1, %esi
	movq	%r12, %rdi
	call	qemu_put_byte
.LBB288:
.LBB289:
	.loc 8 37 0
	movzwl	1680(%r13), %esi
	movq	%r12, %rdi
	call	qemu_put_be16
	.p2align 4,,7
.L875:
.LBE289:
.LBE288:
.LBB290:
.LBB291:
	movzwl	(%rbx), %esi
	movq	%r12, %rdi
	addq	$2, %rbx
	call	qemu_put_be16
	decl	%ebp
	jns	.L875
.LBE291:
.LBE290:
.LBB292:
.LBB293:
	.loc 8 32 0
	movl	1704(%r13), %esi
	movq	%r12, %rdi
	call	qemu_put_be32
.LBE293:
.LBE292:
.LBB294:
.LBB295:
	movl	1708(%r13), %esi
	movq	%r12, %rdi
	call	qemu_put_be32
.LBE295:
.LBE294:
.LBB296:
.LBB297:
	movl	1712(%r13), %esi
.LBE297:
.LBE296:
	addq	$8, %rsp
.LBB298:
.LBB299:
	movq	%r12, %rdi
.LBE299:
.LBE298:
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
.LBB300:
.LBB301:
	jmp	qemu_put_be32
.L881:
.LBE301:
.LBE300:
	.loc 1 1683 0
	movq	%r12, %rsi
	call	pci_device_save
	jmp	.L857
.LFE300:
	.size	vga_save, .-vga_save
	.p2align 4,,15
	.type	vga_load, @function
vga_load:
.LFB301:
	.loc 1 1722 0
	pushq	%r13
.LCFI64:
	movl	%edx, %eax
	movq	%rsi, %r13
	.loc 1 1727 0
	movl	$-22, %edx
	.loc 1 1722 0
	pushq	%r12
.LCFI65:
	movq	%rdi, %r12
	pushq	%rbp
.LCFI66:
	pushq	%rbx
.LCFI67:
	subq	$8, %rsp
.LCFI68:
	.loc 1 1726 0
	cmpl	$2, %eax
	jg	.L882
	.loc 1 1729 0
	movq	56(%rsi), %rdi
	testq	%rdi, %rdi
	setne	%dl
	decl	%eax
	setg	%al
	movzbl	%al, %eax
	testl	%edx, %eax
	jne	.L912
.L884:
.LBB302:
.LBB303:
	.loc 8 52 0
	movq	%r12, %rdi
	call	qemu_get_be32
.LBE303:
.LBE302:
.LBB304:
.LBB305:
	.loc 8 62 0
	movq	%r12, %rdi
.LBE305:
.LBE304:
.LBB306:
.LBB307:
	.loc 8 52 0
	movl	%eax, 64(%r13)
.LBE307:
.LBE306:
.LBB308:
.LBB309:
	.loc 8 62 0
	call	qemu_get_byte
.LBE309:
.LBE308:
	.loc 1 1737 0
	leaq	69(%r13), %rsi
	movl	$8, %edx
	movq	%r12, %rdi
.LBB310:
.LBB311:
	.loc 8 62 0
	movb	%al, 68(%r13)
.LBE311:
.LBE310:
	.loc 1 1737 0
	call	qemu_get_buffer
.LBB312:
.LBB313:
	.loc 8 62 0
	movq	%r12, %rdi
	call	qemu_get_byte
.LBE313:
.LBE312:
	.loc 1 1739 0
	leaq	326(%r13), %rsi
	movl	$16, %edx
	movq	%r12, %rdi
.LBB314:
.LBB315:
	.loc 8 62 0
	movb	%al, 325(%r13)
.LBE315:
.LBE314:
	.loc 1 1739 0
	call	qemu_get_buffer
.LBB316:
.LBB317:
	.loc 8 62 0
	movq	%r12, %rdi
	call	qemu_get_byte
.LBE317:
.LBE316:
	.loc 1 1741 0
	leaq	583(%r13), %rsi
	movl	$21, %edx
	movq	%r12, %rdi
.LBB318:
.LBB319:
	.loc 8 62 0
	movb	%al, 582(%r13)
.LBE319:
.LBE318:
	.loc 1 1741 0
	call	qemu_get_buffer
	.loc 1 1742 0
	movq	%r12, %rdi
	call	qemu_get_be32
.LBB320:
.LBB321:
	.loc 8 62 0
	movq	%r12, %rdi
.LBE321:
.LBE320:
	.loc 1 1742 0
	movl	%eax, 604(%r13)
.LBB322:
.LBB323:
	.loc 8 62 0
	call	qemu_get_byte
.LBE323:
.LBE322:
	.loc 1 1744 0
	leaq	609(%r13), %rsi
	movl	$256, %edx
	movq	%r12, %rdi
.LBB324:
.LBB325:
	.loc 8 62 0
	movb	%al, 608(%r13)
.LBE325:
.LBE324:
	.loc 1 1744 0
	call	qemu_get_buffer
.LBB326:
.LBB327:
	.loc 8 62 0
	movq	%r12, %rdi
	call	qemu_get_byte
.LBE327:
.LBE326:
.LBB328:
.LBB329:
	movq	%r12, %rdi
.LBE329:
.LBE328:
.LBB330:
.LBB331:
	movb	%al, 865(%r13)
.LBE331:
.LBE330:
.LBB332:
.LBB333:
	call	qemu_get_byte
.LBE333:
.LBE332:
.LBB334:
.LBB335:
	movq	%r12, %rdi
.LBE335:
.LBE334:
.LBB336:
.LBB337:
	movb	%al, 866(%r13)
.LBE337:
.LBE336:
.LBB338:
.LBB339:
	call	qemu_get_byte
.LBE339:
.LBE338:
.LBB340:
.LBB341:
	movq	%r12, %rdi
.LBE341:
.LBE340:
.LBB342:
.LBB343:
	movb	%al, 867(%r13)
.LBE343:
.LBE342:
.LBB344:
.LBB345:
	call	qemu_get_byte
.LBE345:
.LBE344:
.LBB346:
.LBB347:
	movq	%r12, %rdi
.LBE347:
.LBE346:
.LBB348:
.LBB349:
	movb	%al, 868(%r13)
.LBE349:
.LBE348:
.LBB350:
.LBB351:
	call	qemu_get_byte
.LBE351:
.LBE350:
.LBB352:
.LBB353:
	movq	%r12, %rdi
.LBE353:
.LBE352:
.LBB354:
.LBB355:
	movb	%al, 869(%r13)
.LBE355:
.LBE354:
.LBB356:
.LBB357:
	call	qemu_get_byte
.LBE357:
.LBE356:
.LBB358:
.LBB359:
	movq	%r12, %rdi
.LBE359:
.LBE358:
.LBB360:
.LBB361:
	movb	%al, 870(%r13)
.LBE361:
.LBE360:
.LBB362:
.LBB363:
	call	qemu_get_byte
.LBE363:
.LBE362:
.LBB364:
.LBB365:
	movq	%r12, %rdi
.LBE365:
.LBE364:
.LBB366:
.LBB367:
	movb	%al, 871(%r13)
.LBE367:
.LBE366:
.LBB368:
.LBB369:
	call	qemu_get_byte
.LBE369:
.LBE368:
	.loc 1 1754 0
	leaq	873(%r13), %rsi
	movl	$3, %edx
	movq	%r12, %rdi
.LBB370:
.LBB371:
	.loc 8 62 0
	movb	%al, 872(%r13)
.LBE371:
.LBE370:
	.loc 1 1754 0
	call	qemu_get_buffer
	.loc 1 1755 0
	leaq	880(%r13), %rsi
	movl	$768, %edx
	movq	%r12, %rdi
	call	qemu_get_buffer
	.loc 1 1757 0
	movq	%r12, %rdi
	call	qemu_get_be32
	.loc 1 1758 0
	movq	%r12, %rdi
	.loc 1 1757 0
	movl	%eax, 1648(%r13)
	.loc 1 1758 0
	call	qemu_get_byte
	.loc 1 1760 0
	testl	%eax, %eax
	.loc 1 1761 0
	movl	$-22, %edx
	.loc 1 1760 0
	je	.L882
.LBB372:
.LBB373:
	.loc 8 57 0
	movq	%r12, %rdi
	leaq	1682(%r13), %rbx
	movl	$9, %ebp
	call	qemu_get_be16
	movw	%ax, 1680(%r13)
	.p2align 4,,7
.L905:
.LBE373:
.LBE372:
.LBB374:
.LBB375:
	movq	%r12, %rdi
	call	qemu_get_be16
	movw	%ax, (%rbx)
	addq	$2, %rbx
	decl	%ebp
	jns	.L905
.LBE375:
.LBE374:
.LBB376:
.LBB377:
	.loc 8 52 0
	movq	%r12, %rdi
	call	qemu_get_be32
.LBE377:
.LBE376:
.LBB378:
.LBB379:
	movq	%r12, %rdi
.LBE379:
.LBE378:
.LBB380:
.LBB381:
	movl	%eax, 1704(%r13)
.LBE381:
.LBE380:
.LBB382:
.LBB383:
	call	qemu_get_be32
.LBE383:
.LBE382:
.LBB384:
.LBB385:
	movq	%r12, %rdi
.LBE385:
.LBE384:
.LBB386:
.LBB387:
	movl	%eax, 1708(%r13)
.LBE387:
.LBE386:
.LBB388:
.LBB389:
	call	qemu_get_be32
.LBE389:
.LBE388:
	.loc 1 1774 0
	movl	$-1, 1736(%r13)
.LBB390:
.LBB391:
	.loc 8 52 0
	movl	%eax, 1712(%r13)
.LBE391:
.LBE390:
	.loc 1 1775 0
	xorl	%edx, %edx
.L882:
	.loc 1 1776 0
	addq	$8, %rsp
	movl	%edx, %eax
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
.L912:
	.loc 1 1730 0
	movq	%r12, %rsi
	call	pci_device_load
	.loc 1 1731 0
	testl	%eax, %eax
	.loc 1 1732 0
	movl	%eax, %edx
	.loc 1 1731 0
	jns	.L884
	.loc 1 1776 0
	addq	$8, %rsp
	movl	%edx, %eax
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
.LFE301:
	.size	vga_load, .-vga_load
	.p2align 4,,15
	.type	vga_map, @function
vga_map:
.LFB302:
	.loc 1 1785 0
	.loc 1 1788 0
	cmpl	$6, %esi
	.loc 1 1785 0
	movl	%edx, %ecx
	.loc 1 1787 0
	leaq	552(%rdi), %rax
	.loc 1 1788 0
	je	.L917
	.loc 1 1791 0
	mov	16(%rax), %esi
	movq	8(%rax), %rdx
	mov	%ecx, %edi
	jmp	cpu_register_physical_memory
	.p2align 4,,7
.L917:
	.loc 1 1789 0
	mov	32(%rax), %esi
	movq	24(%rax), %rdx
	.loc 1 1791 0
	mov	%ecx, %edi
	jmp	cpu_register_physical_memory
.LFE302:
	.size	vga_map, .-vga_map
	.p2align 4,,15
.globl vga_common_init
	.type	vga_common_init, @function
vga_common_init:
.LFB303:
	.loc 1 1797 0
	pushq	%r14
.LCFI69:
	movl	%r8d, %r14d
	.loc 1 1800 0
	xorl	%r8d, %r8d
	.loc 1 1797 0
	pushq	%r13
.LCFI70:
	movq	%rcx, %r13
	pushq	%r12
.LCFI71:
	movq	%rdx, %r12
	pushq	%rbp
.LCFI72:
	movq	%rsi, %rbp
	pushq	%rbx
.LCFI73:
	.loc 1 1797 0
	movq	%rdi, %rbx
	.p2align 4,,7
.L930:
	.loc 1 1801 0
	xorl	%edi, %edi
	.loc 1 1802 0
	xorl	%esi, %esi
	.p2align 4,,7
.L925:
	.loc 1 1803 0
	movl	%esi, %ecx
	movl	%r8d, %eax
	sarl	%cl, %eax
	leal	0(,%rsi,4), %ecx
	.loc 1 1802 0
	incl	%esi
	.loc 1 1803 0
	andl	$1, %eax
	sall	%cl, %eax
	orl	%eax, %edi
	.loc 1 1802 0
	cmpl	$7, %esi
	jle	.L925
	.loc 1 1805 0
	movslq	%r8d,%rdx
	.loc 1 1808 0
	xorl	%esi, %esi
	.loc 1 1805 0
	movl	%edi, expand4(,%rdx,4)
	.loc 1 1807 0
	xorl	%edi, %edi
	.p2align 4,,7
.L929:
	.loc 1 1809 0
	leal	(%rsi,%rsi), %ecx
	movl	%r8d, %eax
	sarl	%cl, %eax
	leal	0(,%rsi,4), %ecx
	.loc 1 1808 0
	incl	%esi
	.loc 1 1809 0
	andl	$3, %eax
	sall	%cl, %eax
	orl	%eax, %edi
	.loc 1 1808 0
	cmpl	$3, %esi
	jle	.L929
	.loc 1 1800 0
	incl	%r8d
	.loc 1 1811 0
	movw	%di, expand2(%rdx,%rdx)
	.loc 1 1800 0
	cmpl	$255, %r8d
	jle	.L930
	xorl	%r8d, %r8d
.L938:
	.loc 1 1814 0
	xorl	%edi, %edi
	.loc 1 1815 0
	xorl	%esi, %esi
.L937:
	.loc 1 1816 0
	movl	%esi, %ecx
	movl	%r8d, %eax
	sarl	%cl, %eax
	.loc 1 1817 0
	leal	(%rsi,%rsi), %ecx
	.loc 1 1815 0
	incl	%esi
	.loc 1 1816 0
	andl	$1, %eax
	.loc 1 1817 0
	movl	%eax, %edx
	sall	%cl, %edx
	.loc 1 1818 0
	incl	%ecx
	.loc 1 1817 0
	orl	%edx, %edi
	.loc 1 1818 0
	sall	%cl, %eax
	orl	%eax, %edi
	.loc 1 1815 0
	cmpl	$3, %esi
	jle	.L937
	.loc 1 1820 0
	movslq	%r8d,%rax
	.loc 1 1813 0
	incl	%r8d
	cmpl	$15, %r8d
	.loc 1 1820 0
	movb	%dil, expand4to8(%rax)
	.loc 1 1813 0
	jle	.L938
.LBB392:
.LBB393:
	.loc 1 1661 0
	movq	%rbx, %rdi
	movl	$67120, %edx
	xorl	%esi, %esi
	call	memset
.LBE393:
.LBE392:
	.loc 1 1825 0
	movq	%r12, (%rbx)
	.loc 1 1826 0
	movq	%r13, 8(%rbx)
	.loc 1 1827 0
	movl	%r14d, 16(%rbx)
	.loc 1 1828 0
	movq	%rbp, 1720(%rbx)
.LBB394:
.LBB395:
	.loc 1 1662 0
	movl	$-1, 1736(%rbx)
.LBE395:
.LBE394:
	.loc 1 1829 0
	movq	$vga_get_bpp, 1656(%rbx)
	.loc 1 1830 0
	movq	$vga_get_offsets, 1664(%rbx)
	.loc 1 1831 0
	movq	$vga_get_resolution, 1672(%rbx)
	.loc 1 1832 0
	movq	$vga_update_display, 1800(%rbx)
	.loc 1 1833 0
	movq	$vga_invalidate_display, 1808(%rbx)
	.loc 1 1834 0
	movq	$vga_screen_dump, 1816(%rbx)
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	ret
.LFE303:
	.size	vga_common_init, .-vga_common_init
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"vga"
	.text
	.p2align 4,,15
.globl vga_init
	.type	vga_init, @function
vga_init:
.LFB304:
	.loc 1 1839 0
	pushq	%rbx
.LCFI74:
	.loc 1 1842 0
	movq	%rdi, %r9
	.loc 1 1839 0
	movq	%rdi, %rbx
	.loc 1 1842 0
	movl	$vga_load, %r8d
	movl	$vga_save, %ecx
	movl	$2, %edx
	xorl	%esi, %esi
	movl	$.LC0, %edi
	call	register_savevm
	.loc 1 1844 0
	movq	%rbx, %r8
	movl	$vga_ioport_write, %ecx
	movl	$1, %edx
	movl	$16, %esi
	movl	$960, %edi
	call	register_ioport_write
	.loc 1 1846 0
	movq	%rbx, %r8
	movl	$vga_ioport_write, %ecx
	movl	$1, %edx
	movl	$2, %esi
	movl	$948, %edi
	call	register_ioport_write
	.loc 1 1847 0
	movq	%rbx, %r8
	movl	$vga_ioport_write, %ecx
	movl	$1, %edx
	movl	$2, %esi
	movl	$980, %edi
	call	register_ioport_write
	.loc 1 1848 0
	movq	%rbx, %r8
	movl	$vga_ioport_write, %ecx
	movl	$1, %edx
	movl	$1, %esi
	movl	$954, %edi
	call	register_ioport_write
	.loc 1 1849 0
	movq	%rbx, %r8
	movl	$vga_ioport_write, %ecx
	movl	$1, %edx
	movl	$1, %esi
	movl	$986, %edi
	call	register_ioport_write
	.loc 1 1851 0
	movq	%rbx, %r8
	movl	$vga_ioport_read, %ecx
	movl	$1, %edx
	movl	$16, %esi
	movl	$960, %edi
	call	register_ioport_read
	.loc 1 1853 0
	movq	%rbx, %r8
	movl	$vga_ioport_read, %ecx
	movl	$1, %edx
	movl	$2, %esi
	movl	$948, %edi
	call	register_ioport_read
	.loc 1 1854 0
	movq	%rbx, %r8
	movl	$vga_ioport_read, %ecx
	movl	$1, %edx
	movl	$2, %esi
	movl	$980, %edi
	call	register_ioport_read
	.loc 1 1855 0
	movq	%rbx, %r8
	movl	$vga_ioport_read, %ecx
	movl	$1, %edx
	movl	$1, %esi
	movl	$954, %edi
	call	register_ioport_read
	.loc 1 1856 0
	movq	%rbx, %r8
	movl	$vga_ioport_read, %ecx
	movl	$1, %edx
	movl	$1, %esi
	movl	$986, %edi
	call	register_ioport_read
	.loc 1 1861 0
	movzwl	18(%rbx), %eax
	.loc 1 1863 0
	movq	%rbx, %r8
	.loc 1 1857 0
	movl	$0, 1648(%rbx)
	.loc 1 1860 0
	movw	$-20288, 1682(%rbx)
	.loc 1 1863 0
	movl	$vbe_ioport_read_index, %ecx
	movl	$2, %edx
	movl	$1, %esi
	movl	$462, %edi
	.loc 1 1861 0
	decl	%eax
	movl	%eax, 1712(%rbx)
	.loc 1 1863 0
	call	register_ioport_read
	.loc 1 1864 0
	movq	%rbx, %r8
	movl	$vbe_ioport_read_data, %ecx
	movl	$2, %edx
	movl	$1, %esi
	movl	$463, %edi
	call	register_ioport_read
	.loc 1 1866 0
	movq	%rbx, %r8
	movl	$vbe_ioport_write_index, %ecx
	movl	$2, %edx
	movl	$1, %esi
	movl	$462, %edi
	call	register_ioport_write
	.loc 1 1867 0
	movq	%rbx, %r8
	movl	$vbe_ioport_write_data, %ecx
	movl	$2, %edx
	movl	$1, %esi
	movl	$463, %edi
	call	register_ioport_write
	.loc 1 1870 0
	movq	%rbx, %r8
	movl	$vbe_ioport_read_index, %ecx
	movl	$2, %edx
	movl	$1, %esi
	movl	$65408, %edi
	call	register_ioport_read
	.loc 1 1871 0
	movq	%rbx, %r8
	movl	$vbe_ioport_read_data, %ecx
	movl	$2, %edx
	movl	$1, %esi
	movl	$65409, %edi
	call	register_ioport_read
	.loc 1 1873 0
	movq	%rbx, %r8
	movl	$vbe_ioport_write_index, %ecx
	movl	$2, %edx
	movl	$1, %esi
	movl	$65408, %edi
	call	register_ioport_write
	.loc 1 1874 0
	movq	%rbx, %r8
	movl	$vbe_ioport_write_data, %ecx
	movl	$2, %edx
	movl	$1, %esi
	movl	$65409, %edi
	call	register_ioport_write
	.loc 1 1884 0
	movq	%rbx, %rcx
	movl	$vga_mem_write, %edx
	movl	$vga_mem_read, %esi
	xorl	%edi, %edi
	call	cpu_register_io_memory
	.loc 1 1885 0
	movq	isa_mem_base(%rip), %rdi
	movslq	%eax,%rdx
	movl	$131072, %esi
	popq	%rbx
	addq	$655360, %rdi
	jmp	cpu_register_physical_memory
.LFE304:
	.size	vga_init, .-vga_init
	.p2align 4,,15
	.type	vga_mm_readb, @function
vga_mm_readb:
.LFB305:
	.loc 1 1891 0
	.loc 1 1894 0
	subq	40(%rdi), %rsi
	movl	48(%rdi), %ecx
	xorl	%edx, %edx
	shrq	%cl, %rsi
	call	vga_ioport_read
	andl	$255, %eax
	.loc 1 1896 0
	ret
.LFE305:
	.size	vga_mm_readb, .-vga_mm_readb
	.p2align 4,,15
	.type	vga_mm_writeb, @function
vga_mm_writeb:
.LFB306:
	.loc 1 1900 0
	.loc 1 1903 0
	subq	40(%rdi), %rsi
	movl	48(%rdi), %ecx
	andl	$255, %edx
	shrq	%cl, %rsi
	jmp	vga_ioport_write
.LFE306:
	.size	vga_mm_writeb, .-vga_mm_writeb
	.p2align 4,,15
	.type	vga_mm_readw, @function
vga_mm_readw:
.LFB307:
	.loc 1 1907 0
	.loc 1 1910 0
	subq	40(%rdi), %rsi
	movl	48(%rdi), %ecx
	xorl	%edx, %edx
	shrq	%cl, %rsi
	call	vga_ioport_read
	andl	$65535, %eax
	.loc 1 1912 0
	ret
.LFE307:
	.size	vga_mm_readw, .-vga_mm_readw
	.p2align 4,,15
	.type	vga_mm_writew, @function
vga_mm_writew:
.LFB308:
	.loc 1 1916 0
	.loc 1 1919 0
	subq	40(%rdi), %rsi
	movl	48(%rdi), %ecx
	andl	$65535, %edx
	shrq	%cl, %rsi
	jmp	vga_ioport_write
.LFE308:
	.size	vga_mm_writew, .-vga_mm_writew
	.p2align 4,,15
	.type	vga_mm_readl, @function
vga_mm_readl:
.LFB309:
	.loc 1 1923 0
	.loc 1 1926 0
	subq	40(%rdi), %rsi
	movl	48(%rdi), %ecx
	xorl	%edx, %edx
	shrq	%cl, %rsi
	jmp	vga_ioport_read
.LFE309:
	.size	vga_mm_readl, .-vga_mm_readl
	.p2align 4,,15
	.type	vga_mm_writel, @function
vga_mm_writel:
.LFB310:
	.loc 1 1931 0
	.loc 1 1934 0
	subq	40(%rdi), %rsi
	movl	48(%rdi), %ecx
	shrq	%cl, %rsi
	jmp	vga_ioport_write
.LFE310:
	.size	vga_mm_writel, .-vga_mm_writel
	.p2align 4,,15
.globl isa_vga_init
	.type	isa_vga_init, @function
isa_vga_init:
.LFB312:
	.loc 1 1968 0
	movq	%rbx, -40(%rsp)
.LCFI75:
	movq	%rbp, -32(%rsp)
.LCFI76:
	movq	%rsi, %rbp
	movq	%r12, -24(%rsp)
.LCFI77:
	movq	%r13, -16(%rsp)
.LCFI78:
	movq	%rdi, %r12
	movq	%r14, -8(%rsp)
.LCFI79:
	.loc 1 1971 0
	movl	$67120, %edi
	.loc 1 1968 0
	subq	$40, %rsp
.LCFI80:
	.loc 1 1968 0
	movq	%rdx, %r14
	movl	%ecx, %r13d
	.loc 1 1971 0
	call	qemu_mallocz
	movq	%rax, %rbx
	.loc 1 1973 0
	movl	$-1, %eax
	.loc 1 1972 0
	testq	%rbx, %rbx
	je	.L957
	.loc 1 1975 0
	movl	%r13d, %r8d
	movq	%r14, %rcx
	movq	%rbp, %rdx
	movq	%r12, %rsi
	movq	%rbx, %rdi
	call	vga_common_init
	.loc 1 1976 0
	movq	%rbx, %rdi
	call	vga_init
	.loc 1 1978 0
	movq	1816(%rbx), %rcx
	movq	1808(%rbx), %rdx
	movq	%rbx, %r8
	movq	1800(%rbx), %rsi
	movq	1720(%rbx), %rdi
	call	graphic_console_init
	.loc 1 1982 0
	movslq	%r13d,%rsi
	movq	%r14, %rdx
	movl	$3758096384, %edi
	call	cpu_register_physical_memory
	.loc 1 1985 0
	xorl	%eax, %eax
.L957:
	.loc 1 1986 0
	movq	(%rsp), %rbx
	movq	8(%rsp), %rbp
	movq	16(%rsp), %r12
	movq	24(%rsp), %r13
	movq	32(%rsp), %r14
	addq	$40, %rsp
	ret
.LFE312:
	.size	isa_vga_init, .-isa_vga_init
	.p2align 4,,15
.globl isa_vga_mm_init
	.type	isa_vga_mm_init, @function
isa_vga_mm_init:
.LFB313:
	.loc 1 1992 0
	movq	%rbx, -48(%rsp)
.LCFI81:
	movq	%rbp, -40(%rsp)
.LCFI82:
	movq	%rsi, %rbx
	movq	%r12, -32(%rsp)
.LCFI83:
	movq	%r13, -24(%rsp)
.LCFI84:
	movq	%rdi, %r12
	movq	%r14, -16(%rsp)
.LCFI85:
	movq	%r15, -8(%rsp)
.LCFI86:
	.loc 1 1995 0
	movl	$67120, %edi
	.loc 1 1992 0
	subq	$56, %rsp
.LCFI87:
	.loc 1 1992 0
	movq	%rdx, %r15
	movl	%ecx, %r14d
	movq	%r8, (%rsp)
	movq	%r9, %r13
	.loc 1 1995 0
	call	qemu_mallocz
	movq	%rax, %rbp
	.loc 1 1997 0
	movl	$-1, %eax
	.loc 1 1996 0
	testq	%rbp, %rbp
	je	.L959
	.loc 1 1999 0
	movl	%r14d, %r8d
	movq	%rbx, %rdx
	movq	%r12, %rsi
	movq	%r15, %rcx
	movq	%rbp, %rdi
	call	vga_common_init
.LBB396:
.LBB397:
	.loc 1 1954 0
	movq	%r13, 40(%rbp)
	.loc 1 1955 0
	movl	64(%rsp), %eax
	.loc 1 1956 0
	movq	%rbp, %rcx
	movl	$vga_mm_write_ctrl, %edx
	movl	$vga_mm_read_ctrl, %esi
	xorl	%edi, %edi
	.loc 1 1955 0
	movl	%eax, 48(%rbp)
	.loc 1 1956 0
	call	cpu_register_io_memory
	.loc 1 1957 0
	movq	%rbp, %rcx
	movl	$vga_mem_write, %edx
	movl	$vga_mem_read, %esi
	xorl	%edi, %edi
	.loc 1 1956 0
	movl	%eax, %ebx
	.loc 1 1957 0
	call	cpu_register_io_memory
	.loc 1 1959 0
	movq	%rbp, %r9
	movl	$vga_load, %r8d
	movl	$vga_save, %ecx
	movl	$2, %edx
	xorl	%esi, %esi
	movl	$.LC0, %edi
	.loc 1 1957 0
	movl	%eax, %r12d
	.loc 1 1959 0
	call	register_savevm
	.loc 1 1961 0
	movslq	%ebx,%rdx
	movl	$1048576, %esi
	movq	%r13, %rdi
	call	cpu_register_physical_memory
	.loc 1 1962 0
	movl	$0, 1648(%rbp)
	.loc 1 1963 0
	movq	(%rsp), %rdi
	movslq	%r12d,%rdx
	movl	$131072, %esi
	addq	$655360, %rdi
	call	cpu_register_physical_memory
.LBE397:
.LBE396:
	.loc 1 2002 0
	movq	1816(%rbp), %rcx
	movq	1808(%rbp), %rdx
	movq	%rbp, %r8
	movq	1800(%rbp), %rsi
	movq	1720(%rbp), %rdi
	call	graphic_console_init
	.loc 1 2006 0
	movslq	%r14d,%rsi
	movq	%r15, %rdx
	movl	$3758096384, %edi
	call	cpu_register_physical_memory
	.loc 1 2009 0
	xorl	%eax, %eax
.L959:
	.loc 1 2010 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	movq	24(%rsp), %r12
	movq	32(%rsp), %r13
	movq	40(%rsp), %r14
	movq	48(%rsp), %r15
	addq	$56, %rsp
	ret
.LFE313:
	.size	isa_vga_mm_init, .-isa_vga_mm_init
	.section	.rodata.str1.1
.LC1:
	.string	"VGA"
	.text
	.p2align 4,,15
.globl pci_vga_init
	.type	pci_vga_init, @function
pci_vga_init:
.LFB314:
	.loc 1 2015 0
	movq	%rbp, -40(%rsp)
.LCFI88:
	movq	%r12, -32(%rsp)
.LCFI89:
	movq	%rcx, %r12
	movq	%r13, -24(%rsp)
.LCFI90:
	movq	%r14, -16(%rsp)
.LCFI91:
	.loc 1 2020 0
	movl	$-1, %ecx
	.loc 1 2015 0
	movq	%r15, -8(%rsp)
.LCFI92:
	movq	%rbx, -48(%rsp)
.LCFI93:
	subq	$72, %rsp
.LCFI94:
	.loc 1 2015 0
	movl	%r8d, 20(%rsp)
	movq	%r9, 8(%rsp)
	.loc 1 2020 0
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	.loc 1 2015 0
	movq	%rsi, %r15
	movq	%rdx, %r14
	.loc 1 2020 0
	movl	$.LC1, %esi
	movl	$67672, %edx
	.loc 1 2015 0
	movl	80(%rsp), %r13d
	.loc 1 2020 0
	call	pci_register_device
	movq	%rax, %rbp
	.loc 1 2024 0
	movl	$-1, %eax
	.loc 1 2023 0
	testq	%rbp, %rbp
	je	.L962
	.loc 1 2025 0
	leaq	552(%rbp), %rbx
	.loc 1 2027 0
	movl	20(%rsp), %r8d
	movq	%r12, %rcx
	movq	%r14, %rdx
	movq	%r15, %rsi
	movq	%rbx, %rdi
	call	vga_common_init
	.loc 1 2028 0
	movq	%rbx, %rdi
	call	vga_init
	.loc 1 2030 0
	movq	1816(%rbx), %rcx
	movq	1808(%rbx), %rdx
	movq	%rbx, %r8
	movq	1800(%rbx), %rsi
	movq	1720(%rbx), %rdi
	call	graphic_console_init
	.loc 1 2032 0
	movq	%rbp, 56(%rbx)
	.loc 1 2035 0
	movb	$52, (%rbp)
	.loc 1 2044 0
	xorl	%esi, %esi
	.loc 1 2036 0
	movb	$18, 1(%rbp)
	.loc 1 2037 0
	movb	$17, 2(%rbp)
	.loc 1 2044 0
	movl	$vga_map, %r8d
	.loc 1 2038 0
	movb	$17, 3(%rbp)
	.loc 1 2039 0
	movb	$0, 10(%rbp)
	.loc 1 2044 0
	movl	$8, %ecx
	.loc 1 2040 0
	movb	$3, 11(%rbp)
	.loc 1 2041 0
	movb	$0, 14(%rbp)
	.loc 1 2044 0
	movq	%rbp, %rdi
	movl	20(%rsp), %edx
	call	pci_register_io_region
	.loc 1 2046 0
	testl	%r13d, %r13d
	je	.L964
.LBB398:
	.loc 1 2048 0
	movq	8(%rsp), %rax
	.loc 1 2051 0
	movl	$1, %edx
	.loc 1 2053 0
	cmpl	$1, %r13d
	.loc 1 2049 0
	movl	%r13d, 32(%rbx)
	.loc 1 2048 0
	movq	%rax, 24(%rbx)
	jmp	.L970
	.p2align 4,,7
.L971:
	.loc 1 2053 0
	addl	%edx, %edx
	cmpl	%edx, %r13d
.L970:
	ja	.L971
	.loc 1 2054 0
	movl	$vga_map, %r8d
	movl	$8, %ecx
	movl	$6, %esi
	movq	%rbp, %rdi
	call	pci_register_io_region
.L964:
.LBE398:
	.loc 1 2057 0
	xorl	%eax, %eax
.L962:
	.loc 1 2058 0
	movq	24(%rsp), %rbx
	movq	32(%rsp), %rbp
	movq	40(%rsp), %r12
	movq	48(%rsp), %r13
	movq	56(%rsp), %r14
	movq	64(%rsp), %r15
	addq	$72, %rsp
	ret
.LFE314:
	.size	pci_vga_init, .-pci_vga_init
	.p2align 4,,15
	.type	vga_save_dpy_update, @function
vga_save_dpy_update:
.LFB315:
	.loc 1 2067 0
	.loc 1 2067 0
	rep ; ret
.LFE315:
	.size	vga_save_dpy_update, .-vga_save_dpy_update
	.p2align 4,,15
	.type	vga_save_dpy_resize, @function
vga_save_dpy_resize:
.LFB316:
	.loc 1 2071 0
	movq	%r12, -16(%rsp)
.LCFI95:
	movl	%esi, %r12d
	movq	%rbx, -24(%rsp)
.LCFI96:
	movq	%rdi, %rbx
	.loc 1 2072 0
	leal	0(,%r12,4), %edi
	.loc 1 2071 0
	movq	%r13, -8(%rsp)
.LCFI97:
	subq	$24, %rsp
.LCFI98:
	.loc 1 2071 0
	movl	%edx, %r13d
	.loc 1 2072 0
	movl	%edi, 8(%rbx)
	.loc 1 2073 0
	imull	%edx, %edi
	movslq	%edi,%rdi
	call	qemu_malloc
	movq	%rax, (%rbx)
	.loc 1 2074 0
	movl	%r12d, vga_save_w(%rip)
	.loc 1 2075 0
	movl	%r13d, vga_save_h(%rip)
	movq	(%rsp), %rbx
	movq	8(%rsp), %r12
	movq	16(%rsp), %r13
	addq	$24, %rsp
	ret
.LFE316:
	.size	vga_save_dpy_resize, .-vga_save_dpy_resize
	.p2align 4,,15
	.type	vga_save_dpy_refresh, @function
vga_save_dpy_refresh:
.LFB317:
	.loc 1 2079 0
	.loc 1 2079 0
	rep ; ret
.LFE317:
	.size	vga_save_dpy_refresh, .-vga_save_dpy_refresh
	.section	.rodata.str1.1
.LC2:
	.string	"wb"
.LC3:
	.string	"P6\n%d %d\n%d\n"
	.text
	.p2align 4,,15
.globl ppm_save
	.type	ppm_save, @function
ppm_save:
.LFB318:
	.loc 1 2084 0
	pushq	%r15
.LCFI99:
	pushq	%r14
.LCFI100:
	movl	%edx, %r14d
	pushq	%r13
.LCFI101:
	pushq	%r12
.LCFI102:
	pushq	%rbp
.LCFI103:
	movl	%r8d, %ebp
	pushq	%rbx
.LCFI104:
	movq	%rsi, %rbx
	.loc 1 2090 0
	movl	$.LC2, %esi
	.loc 1 2084 0
	subq	$24, %rsp
.LCFI105:
	.loc 1 2084 0
	movl	%ecx, 20(%rsp)
	.loc 1 2090 0
	call	fopen64
	movq	%rax, %r13
	.loc 1 2092 0
	movl	$-1, %eax
	.loc 1 2091 0
	testq	%r13, %r13
	je	.L975
	.loc 1 2093 0
	movl	20(%rsp), %ecx
	xorl	%eax, %eax
	movl	$255, %r8d
	movl	%r14d, %edx
	movl	$.LC3, %esi
	movq	%r13, %rdi
	.loc 1 2095 0
	movq	%rbx, %r15
	.loc 1 2093 0
	call	fprintf
	.loc 1 2096 0
	movl	$0, 16(%rsp)
	movl	20(%rsp), %eax
	cmpl	%eax, 16(%rsp)
	jge	.L986
	movslq	%ebp,%rbp
	movq	%rbp, 8(%rsp)
	.p2align 4,,7
.L984:
	.loc 1 2098 0
	xorl	%r12d, %r12d
	.loc 1 2097 0
	movq	%r15, %rbp
	.loc 1 2098 0
	cmpl	%r14d, %r12d
	jge	.L988
	.p2align 4,,7
.L990:
	.loc 1 2100 0
	movzbl	2(%rbp), %edi
	movl	(%rbp), %ebx
	movq	%r13, %rsi
	.loc 1 2103 0
	addq	$4, %rbp
	.loc 1 2098 0
	incl	%r12d
	.loc 1 2100 0
	call	fputc
	.loc 1 2101 0
	movzbl	%bh, %edi
	movq	%r13, %rsi
	call	fputc
	.loc 1 2102 0
	movzbl	%bl,%edi
	movq	%r13, %rsi
	call	fputc
	.loc 1 2098 0
	cmpl	%r14d, %r12d
	jl	.L990
.L988:
	.loc 1 2096 0
	incl	16(%rsp)
	.loc 1 2105 0
	addq	8(%rsp), %r15
	.loc 1 2096 0
	movl	20(%rsp), %eax
	cmpl	%eax, 16(%rsp)
	jl	.L984
.L986:
	.loc 1 2107 0
	movq	%r13, %rdi
	call	fclose
	.loc 1 2108 0
	xorl	%eax, %eax
.L975:
	.loc 1 2109 0
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.LFE318:
	.size	ppm_save, .-ppm_save
	.p2align 4,,15
	.type	vga_screen_dump, @function
vga_screen_dump:
.LFB319:
	.loc 1 2114 0
	movq	%rbp, -24(%rsp)
.LCFI106:
	movq	%r12, -16(%rsp)
.LCFI107:
	movq	%rdi, %rbp
	movq	%r13, -8(%rsp)
.LCFI108:
	movq	%rbx, -32(%rsp)
.LCFI109:
	subq	$152, %rsp
.LCFI110:
	.loc 1 2114 0
	movq	%rsi, %r13
	.loc 1 2119 0
	call	vga_invalidate_display
	.loc 1 2122 0
	xorl	%esi, %esi
	movl	$104, %edx
	movq	%rsp, %rdi
	.loc 1 2120 0
	movq	1720(%rbp), %r12
	.loc 1 2122 0
	call	memset
	.loc 1 2123 0
	movq	$vga_save_dpy_update, 48(%rsp)
	.loc 1 2124 0
	movq	$vga_save_dpy_resize, 56(%rsp)
	.loc 1 2130 0
	movq	%rbp, %rdi
	.loc 1 2125 0
	movq	$vga_save_dpy_refresh, 64(%rsp)
	.loc 1 2126 0
	movl	$32, 12(%rsp)
	.loc 1 2128 0
	movq	%rsp, 1720(%rbp)
	.loc 1 2129 0
	movl	$-1, 1736(%rbp)
	.loc 1 2130 0
	call	vga_update_display
	.loc 1 2132 0
	movq	(%rsp), %rsi
	testq	%rsi, %rsi
	jne	.L993
.L992:
	.loc 1 2137 0
	movq	%r12, 1720(%rbp)
	movq	120(%rsp), %rbx
	movq	128(%rsp), %rbp
	movq	136(%rsp), %r12
	movq	144(%rsp), %r13
	addq	$152, %rsp
	ret
	.p2align 4,,7
.L993:
	.loc 1 2133 0
	movq	1720(%rbp), %rax
	movl	vga_save_h(%rip), %ecx
	movq	%r13, %rdi
	movl	vga_save_w(%rip), %edx
	movl	8(%rax), %r8d
	call	ppm_save
	.loc 1 2135 0
	movq	(%rsp), %rdi
	call	qemu_free
	jmp	.L992
.LFE319:
	.size	vga_screen_dump, .-vga_screen_dump
	.local	expand4
	.comm	expand4,1024,32
	.local	expand2
	.comm	expand2,512,32
	.local	expand4to8
	.comm	expand4to8,16,16
	.local	vga_save_w
	.comm	vga_save_w,4,4
	.local	vga_save_h
	.comm	vga_save_h,4,4
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
	.quad	.LFB206
	.quad	.LFE206-.LFB206
	.align 8
.LEFDE0:
.LSFDE2:
	.long	.LEFDE2-.LASFDE2
.LASFDE2:
	.long	.Lframe0
	.quad	.LFB207
	.quad	.LFE207-.LFB207
	.align 8
.LEFDE2:
.LSFDE4:
	.long	.LEFDE4-.LASFDE4
.LASFDE4:
	.long	.Lframe0
	.quad	.LFB208
	.quad	.LFE208-.LFB208
	.align 8
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.quad	.LFB209
	.quad	.LFE209-.LFB209
	.align 8
.LEFDE6:
.LSFDE8:
	.long	.LEFDE8-.LASFDE8
.LASFDE8:
	.long	.Lframe0
	.quad	.LFB210
	.quad	.LFE210-.LFB210
	.align 8
.LEFDE8:
.LSFDE10:
	.long	.LEFDE10-.LASFDE10
.LASFDE10:
	.long	.Lframe0
	.quad	.LFB211
	.quad	.LFE211-.LFB211
	.byte	0x4
	.long	.LCFI2-.LFB211
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
	.quad	.LFB212
	.quad	.LFE212-.LFB212
	.align 8
.LEFDE12:
.LSFDE14:
	.long	.LEFDE14-.LASFDE14
.LASFDE14:
	.long	.Lframe0
	.quad	.LFB213
	.quad	.LFE213-.LFB213
	.byte	0x4
	.long	.LCFI3-.LFB213
	.byte	0x83
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI6-.LCFI3
	.byte	0x8e
	.uleb128 0x2
	.byte	0x8d
	.uleb128 0x3
	.byte	0x8c
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI7-.LCFI6
	.byte	0xe
	.uleb128 0x28
	.align 8
.LEFDE14:
.LSFDE16:
	.long	.LEFDE16-.LASFDE16
.LASFDE16:
	.long	.Lframe0
	.quad	.LFB214
	.quad	.LFE214-.LFB214
	.byte	0x4
	.long	.LCFI9-.LFB214
	.byte	0x8c
	.uleb128 0x4
	.byte	0x83
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI12-.LCFI9
	.byte	0xe
	.uleb128 0x28
	.byte	0x8e
	.uleb128 0x2
	.byte	0x8d
	.uleb128 0x3
	.align 8
.LEFDE16:
.LSFDE18:
	.long	.LEFDE18-.LASFDE18
.LASFDE18:
	.long	.Lframe0
	.quad	.LFB215
	.quad	.LFE215-.LFB215
	.align 8
.LEFDE18:
.LSFDE20:
	.long	.LEFDE20-.LASFDE20
.LASFDE20:
	.long	.Lframe0
	.quad	.LFB216
	.quad	.LFE216-.LFB216
	.byte	0x4
	.long	.LCFI14-.LFB216
	.byte	0x8c
	.uleb128 0x4
	.byte	0x83
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI16-.LCFI14
	.byte	0x8e
	.uleb128 0x2
	.byte	0x8d
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI17-.LCFI16
	.byte	0xe
	.uleb128 0x28
	.align 8
.LEFDE20:
.LSFDE22:
	.long	.LEFDE22-.LASFDE22
.LASFDE22:
	.long	.Lframe0
	.quad	.LFB217
	.quad	.LFE217-.LFB217
	.byte	0x4
	.long	.LCFI19-.LFB217
	.byte	0x8c
	.uleb128 0x4
	.byte	0x83
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI22-.LCFI19
	.byte	0xe
	.uleb128 0x28
	.byte	0x8e
	.uleb128 0x2
	.byte	0x8d
	.uleb128 0x3
	.align 8
.LEFDE22:
.LSFDE24:
	.long	.LEFDE24-.LASFDE24
.LASFDE24:
	.long	.Lframe0
	.quad	.LFB219
	.quad	.LFE219-.LFB219
	.align 8
.LEFDE24:
.LSFDE26:
	.long	.LEFDE26-.LASFDE26
.LASFDE26:
	.long	.Lframe0
	.quad	.LFB220
	.quad	.LFE220-.LFB220
	.align 8
.LEFDE26:
.LSFDE28:
	.long	.LEFDE28-.LASFDE28
.LASFDE28:
	.long	.Lframe0
	.quad	.LFB221
	.quad	.LFE221-.LFB221
	.align 8
.LEFDE28:
.LSFDE30:
	.long	.LEFDE30-.LASFDE30
.LASFDE30:
	.long	.Lframe0
	.quad	.LFB222
	.quad	.LFE222-.LFB222
	.align 8
.LEFDE30:
.LSFDE32:
	.long	.LEFDE32-.LASFDE32
.LASFDE32:
	.long	.Lframe0
	.quad	.LFB223
	.quad	.LFE223-.LFB223
	.align 8
.LEFDE32:
.LSFDE34:
	.long	.LEFDE34-.LASFDE34
.LASFDE34:
	.long	.Lframe0
	.quad	.LFB224
	.quad	.LFE224-.LFB224
	.byte	0x4
	.long	.LCFI23-.LFB224
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE34:
.LSFDE36:
	.long	.LEFDE36-.LASFDE36
.LASFDE36:
	.long	.Lframe0
	.quad	.LFB225
	.quad	.LFE225-.LFB225
	.byte	0x4
	.long	.LCFI24-.LFB225
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
	.quad	.LFB226
	.quad	.LFE226-.LFB226
	.align 8
.LEFDE38:
.LSFDE40:
	.long	.LEFDE40-.LASFDE40
.LASFDE40:
	.long	.Lframe0
	.quad	.LFB227
	.quad	.LFE227-.LFB227
	.align 8
.LEFDE40:
.LSFDE42:
	.long	.LEFDE42-.LASFDE42
.LASFDE42:
	.long	.Lframe0
	.quad	.LFB228
	.quad	.LFE228-.LFB228
	.byte	0x4
	.long	.LCFI25-.LFB228
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI26-.LCFI25
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x2
	.align 8
.LEFDE42:
.LSFDE44:
	.long	.LEFDE44-.LASFDE44
.LASFDE44:
	.long	.Lframe0
	.quad	.LFB229
	.quad	.LFE229-.LFB229
	.align 8
.LEFDE44:
.LSFDE46:
	.long	.LEFDE46-.LASFDE46
.LASFDE46:
	.long	.Lframe0
	.quad	.LFB230
	.quad	.LFE230-.LFB230
	.align 8
.LEFDE46:
.LSFDE48:
	.long	.LEFDE48-.LASFDE48
.LASFDE48:
	.long	.Lframe0
	.quad	.LFB231
	.quad	.LFE231-.LFB231
	.align 8
.LEFDE48:
.LSFDE50:
	.long	.LEFDE50-.LASFDE50
.LASFDE50:
	.long	.Lframe0
	.quad	.LFB232
	.quad	.LFE232-.LFB232
	.align 8
.LEFDE50:
.LSFDE52:
	.long	.LEFDE52-.LASFDE52
.LASFDE52:
	.long	.Lframe0
	.quad	.LFB233
	.quad	.LFE233-.LFB233
	.align 8
.LEFDE52:
.LSFDE54:
	.long	.LEFDE54-.LASFDE54
.LASFDE54:
	.long	.Lframe0
	.quad	.LFB234
	.quad	.LFE234-.LFB234
	.align 8
.LEFDE54:
.LSFDE56:
	.long	.LEFDE56-.LASFDE56
.LASFDE56:
	.long	.Lframe0
	.quad	.LFB235
	.quad	.LFE235-.LFB235
	.align 8
.LEFDE56:
.LSFDE58:
	.long	.LEFDE58-.LASFDE58
.LASFDE58:
	.long	.Lframe0
	.quad	.LFB236
	.quad	.LFE236-.LFB236
	.align 8
.LEFDE58:
.LSFDE60:
	.long	.LEFDE60-.LASFDE60
.LASFDE60:
	.long	.Lframe0
	.quad	.LFB237
	.quad	.LFE237-.LFB237
	.align 8
.LEFDE60:
.LSFDE62:
	.long	.LEFDE62-.LASFDE62
.LASFDE62:
	.long	.Lframe0
	.quad	.LFB238
	.quad	.LFE238-.LFB238
	.align 8
.LEFDE62:
.LSFDE64:
	.long	.LEFDE64-.LASFDE64
.LASFDE64:
	.long	.Lframe0
	.quad	.LFB239
	.quad	.LFE239-.LFB239
	.align 8
.LEFDE64:
.LSFDE66:
	.long	.LEFDE66-.LASFDE66
.LASFDE66:
	.long	.Lframe0
	.quad	.LFB240
	.quad	.LFE240-.LFB240
	.align 8
.LEFDE66:
.LSFDE68:
	.long	.LEFDE68-.LASFDE68
.LASFDE68:
	.long	.Lframe0
	.quad	.LFB242
	.quad	.LFE242-.LFB242
	.align 8
.LEFDE68:
.LSFDE70:
	.long	.LEFDE70-.LASFDE70
.LASFDE70:
	.long	.Lframe0
	.quad	.LFB243
	.quad	.LFE243-.LFB243
	.byte	0x4
	.long	.LCFI27-.LFB243
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE70:
.LSFDE72:
	.long	.LEFDE72-.LASFDE72
.LASFDE72:
	.long	.Lframe0
	.quad	.LFB244
	.quad	.LFE244-.LFB244
	.byte	0x4
	.long	.LCFI28-.LFB244
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE72:
.LSFDE74:
	.long	.LEFDE74-.LASFDE74
.LASFDE74:
	.long	.Lframe0
	.quad	.LFB245
	.quad	.LFE245-.LFB245
	.align 8
.LEFDE74:
.LSFDE76:
	.long	.LEFDE76-.LASFDE76
.LASFDE76:
	.long	.Lframe0
	.quad	.LFB246
	.quad	.LFE246-.LFB246
	.align 8
.LEFDE76:
.LSFDE78:
	.long	.LEFDE78-.LASFDE78
.LASFDE78:
	.long	.Lframe0
	.quad	.LFB247
	.quad	.LFE247-.LFB247
	.byte	0x4
	.long	.LCFI29-.LFB247
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE78:
.LSFDE80:
	.long	.LEFDE80-.LASFDE80
.LASFDE80:
	.long	.Lframe0
	.quad	.LFB248
	.quad	.LFE248-.LFB248
	.byte	0x4
	.long	.LCFI30-.LFB248
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE80:
.LSFDE82:
	.long	.LEFDE82-.LASFDE82
.LASFDE82:
	.long	.Lframe0
	.quad	.LFB249
	.quad	.LFE249-.LFB249
	.align 8
.LEFDE82:
.LSFDE84:
	.long	.LEFDE84-.LASFDE84
.LASFDE84:
	.long	.Lframe0
	.quad	.LFB250
	.quad	.LFE250-.LFB250
	.align 8
.LEFDE84:
.LSFDE86:
	.long	.LEFDE86-.LASFDE86
.LASFDE86:
	.long	.Lframe0
	.quad	.LFB251
	.quad	.LFE251-.LFB251
	.byte	0x4
	.long	.LCFI31-.LFB251
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI32-.LCFI31
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x2
	.align 8
.LEFDE86:
.LSFDE88:
	.long	.LEFDE88-.LASFDE88
.LASFDE88:
	.long	.Lframe0
	.quad	.LFB252
	.quad	.LFE252-.LFB252
	.align 8
.LEFDE88:
.LSFDE90:
	.long	.LEFDE90-.LASFDE90
.LASFDE90:
	.long	.Lframe0
	.quad	.LFB253
	.quad	.LFE253-.LFB253
	.align 8
.LEFDE90:
.LSFDE92:
	.long	.LEFDE92-.LASFDE92
.LASFDE92:
	.long	.Lframe0
	.quad	.LFB254
	.quad	.LFE254-.LFB254
	.align 8
.LEFDE92:
.LSFDE94:
	.long	.LEFDE94-.LASFDE94
.LASFDE94:
	.long	.Lframe0
	.quad	.LFB255
	.quad	.LFE255-.LFB255
	.align 8
.LEFDE94:
.LSFDE96:
	.long	.LEFDE96-.LASFDE96
.LASFDE96:
	.long	.Lframe0
	.quad	.LFB256
	.quad	.LFE256-.LFB256
	.align 8
.LEFDE96:
.LSFDE98:
	.long	.LEFDE98-.LASFDE98
.LASFDE98:
	.long	.Lframe0
	.quad	.LFB257
	.quad	.LFE257-.LFB257
	.align 8
.LEFDE98:
.LSFDE100:
	.long	.LEFDE100-.LASFDE100
.LASFDE100:
	.long	.Lframe0
	.quad	.LFB258
	.quad	.LFE258-.LFB258
	.align 8
.LEFDE100:
.LSFDE102:
	.long	.LEFDE102-.LASFDE102
.LASFDE102:
	.long	.Lframe0
	.quad	.LFB259
	.quad	.LFE259-.LFB259
	.align 8
.LEFDE102:
.LSFDE104:
	.long	.LEFDE104-.LASFDE104
.LASFDE104:
	.long	.Lframe0
	.quad	.LFB261
	.quad	.LFE261-.LFB261
	.align 8
.LEFDE104:
.LSFDE106:
	.long	.LEFDE106-.LASFDE106
.LASFDE106:
	.long	.Lframe0
	.quad	.LFB262
	.quad	.LFE262-.LFB262
	.byte	0x4
	.long	.LCFI33-.LFB262
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE106:
.LSFDE108:
	.long	.LEFDE108-.LASFDE108
.LASFDE108:
	.long	.Lframe0
	.quad	.LFB263
	.quad	.LFE263-.LFB263
	.align 8
.LEFDE108:
.LSFDE110:
	.long	.LEFDE110-.LASFDE110
.LASFDE110:
	.long	.Lframe0
	.quad	.LFB264
	.quad	.LFE264-.LFB264
	.align 8
.LEFDE110:
.LSFDE112:
	.long	.LEFDE112-.LASFDE112
.LASFDE112:
	.long	.Lframe0
	.quad	.LFB265
	.quad	.LFE265-.LFB265
	.align 8
.LEFDE112:
.LSFDE114:
	.long	.LEFDE114-.LASFDE114
.LASFDE114:
	.long	.Lframe0
	.quad	.LFB266
	.quad	.LFE266-.LFB266
	.byte	0x4
	.long	.LCFI34-.LFB266
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE114:
.LSFDE116:
	.long	.LEFDE116-.LASFDE116
.LASFDE116:
	.long	.Lframe0
	.quad	.LFB267
	.quad	.LFE267-.LFB267
	.byte	0x4
	.long	.LCFI35-.LFB267
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE116:
.LSFDE118:
	.long	.LEFDE118-.LASFDE118
.LASFDE118:
	.long	.Lframe0
	.quad	.LFB268
	.quad	.LFE268-.LFB268
	.align 8
.LEFDE118:
.LSFDE120:
	.long	.LEFDE120-.LASFDE120
.LASFDE120:
	.long	.Lframe0
	.quad	.LFB269
	.quad	.LFE269-.LFB269
	.align 8
.LEFDE120:
.LSFDE122:
	.long	.LEFDE122-.LASFDE122
.LASFDE122:
	.long	.Lframe0
	.quad	.LFB270
	.quad	.LFE270-.LFB270
	.byte	0x4
	.long	.LCFI36-.LFB270
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
.LEFDE122:
.LSFDE124:
	.long	.LEFDE124-.LASFDE124
.LASFDE124:
	.long	.Lframe0
	.quad	.LFB271
	.quad	.LFE271-.LFB271
	.align 8
.LEFDE124:
.LSFDE126:
	.long	.LEFDE126-.LASFDE126
.LASFDE126:
	.long	.Lframe0
	.quad	.LFB272
	.quad	.LFE272-.LFB272
	.align 8
.LEFDE126:
.LSFDE128:
	.long	.LEFDE128-.LASFDE128
.LASFDE128:
	.long	.Lframe0
	.quad	.LFB273
	.quad	.LFE273-.LFB273
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
	.align 8
.LEFDE132:
.LSFDE134:
	.long	.LEFDE134-.LASFDE134
.LASFDE134:
	.long	.Lframe0
	.quad	.LFB276
	.quad	.LFE276-.LFB276
	.align 8
.LEFDE134:
.LSFDE136:
	.long	.LEFDE136-.LASFDE136
.LASFDE136:
	.long	.Lframe0
	.quad	.LFB277
	.quad	.LFE277-.LFB277
	.align 8
.LEFDE136:
.LSFDE138:
	.long	.LEFDE138-.LASFDE138
.LASFDE138:
	.long	.Lframe0
	.quad	.LFB278
	.quad	.LFE278-.LFB278
	.align 8
.LEFDE138:
.LSFDE140:
	.long	.LEFDE140-.LASFDE140
.LASFDE140:
	.long	.Lframe0
	.quad	.LFB279
	.quad	.LFE279-.LFB279
	.align 8
.LEFDE140:
.LSFDE142:
	.long	.LEFDE142-.LASFDE142
.LASFDE142:
	.long	.Lframe0
	.quad	.LFB280
	.quad	.LFE280-.LFB280
	.align 8
.LEFDE142:
.LSFDE144:
	.long	.LEFDE144-.LASFDE144
.LASFDE144:
	.long	.Lframe0
	.quad	.LFB281
	.quad	.LFE281-.LFB281
	.align 8
.LEFDE144:
.LSFDE146:
	.long	.LEFDE146-.LASFDE146
.LASFDE146:
	.long	.Lframe0
	.quad	.LFB282
	.quad	.LFE282-.LFB282
	.align 8
.LEFDE146:
.LSFDE148:
	.long	.LEFDE148-.LASFDE148
.LASFDE148:
	.long	.Lframe0
	.quad	.LFB283
	.quad	.LFE283-.LFB283
	.align 8
.LEFDE148:
.LSFDE150:
	.long	.LEFDE150-.LASFDE150
.LASFDE150:
	.long	.Lframe0
	.quad	.LFB284
	.quad	.LFE284-.LFB284
	.align 8
.LEFDE150:
.LSFDE152:
	.long	.LEFDE152-.LASFDE152
.LASFDE152:
	.long	.Lframe0
	.quad	.LFB285
	.quad	.LFE285-.LFB285
	.align 8
.LEFDE152:
.LSFDE154:
	.long	.LEFDE154-.LASFDE154
.LASFDE154:
	.long	.Lframe0
	.quad	.LFB286
	.quad	.LFE286-.LFB286
	.byte	0x4
	.long	.LCFI38-.LFB286
	.byte	0xe
	.uleb128 0x10
	.byte	0x8e
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI39-.LCFI38
	.byte	0xe
	.uleb128 0x18
	.byte	0x8d
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI40-.LCFI39
	.byte	0xe
	.uleb128 0x20
	.byte	0x8c
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI41-.LCFI40
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI42-.LCFI41
	.byte	0xe
	.uleb128 0x30
	.byte	0x83
	.uleb128 0x6
	.byte	0x86
	.uleb128 0x5
	.align 8
.LEFDE154:
.LSFDE156:
	.long	.LEFDE156-.LASFDE156
.LASFDE156:
	.long	.Lframe0
	.quad	.LFB287
	.quad	.LFE287-.LFB287
	.byte	0x4
	.long	.LCFI43-.LFB287
	.byte	0xe
	.uleb128 0x10
	.byte	0x8e
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI44-.LCFI43
	.byte	0xe
	.uleb128 0x18
	.byte	0x8d
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI45-.LCFI44
	.byte	0xe
	.uleb128 0x20
	.byte	0x8c
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI46-.LCFI45
	.byte	0xe
	.uleb128 0x28
	.byte	0x86
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI47-.LCFI46
	.byte	0xe
	.uleb128 0x30
	.byte	0x83
	.uleb128 0x6
	.align 8
.LEFDE156:
.LSFDE158:
	.long	.LEFDE158-.LASFDE158
.LASFDE158:
	.long	.Lframe0
	.quad	.LFB288
	.quad	.LFE288-.LFB288
	.align 8
.LEFDE158:
.LSFDE160:
	.long	.LEFDE160-.LASFDE160
.LASFDE160:
	.long	.Lframe0
	.quad	.LFB289
	.quad	.LFE289-.LFB289
	.byte	0x4
	.long	.LCFI49-.LFB289
	.byte	0x86
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI50-.LCFI49
	.byte	0xe
	.uleb128 0x30
	.align 8
.LEFDE160:
.LSFDE162:
	.long	.LEFDE162-.LASFDE162
.LASFDE162:
	.long	.Lframe0
	.quad	.LFB292
	.quad	.LFE292-.LFB292
	.align 8
.LEFDE162:
.LSFDE164:
	.long	.LEFDE164-.LASFDE164
.LASFDE164:
	.long	.Lframe0
	.quad	.LFB293
	.quad	.LFE293-.LFB293
	.align 8
.LEFDE164:
.LSFDE166:
	.long	.LEFDE166-.LASFDE166
.LASFDE166:
	.long	.Lframe0
	.quad	.LFB294
	.quad	.LFE294-.LFB294
	.byte	0x4
	.long	.LCFI51-.LFB294
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE166:
.LSFDE168:
	.long	.LEFDE168-.LASFDE168
.LASFDE168:
	.long	.Lframe0
	.quad	.LFB297
	.quad	.LFE297-.LFB297
	.byte	0x4
	.long	.LCFI52-.LFB297
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI53-.LCFI52
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI54-.LCFI53
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI55-.LCFI54
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI56-.LCFI55
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI57-.LCFI56
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI58-.LCFI57
	.byte	0xe
	.uleb128 0x120
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
.LEFDE168:
.LSFDE170:
	.long	.LEFDE170-.LASFDE170
.LASFDE170:
	.long	.Lframe0
	.quad	.LFB298
	.quad	.LFE298-.LFB298
	.align 8
.LEFDE170:
.LSFDE172:
	.long	.LEFDE172-.LASFDE172
.LASFDE172:
	.long	.Lframe0
	.quad	.LFB300
	.quad	.LFE300-.LFB300
	.byte	0x4
	.long	.LCFI59-.LFB300
	.byte	0xe
	.uleb128 0x10
	.byte	0x8d
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI60-.LCFI59
	.byte	0xe
	.uleb128 0x18
	.byte	0x8c
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI61-.LCFI60
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI62-.LCFI61
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI63-.LCFI62
	.byte	0xe
	.uleb128 0x30
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.align 8
.LEFDE172:
.LSFDE174:
	.long	.LEFDE174-.LASFDE174
.LASFDE174:
	.long	.Lframe0
	.quad	.LFB301
	.quad	.LFE301-.LFB301
	.byte	0x4
	.long	.LCFI64-.LFB301
	.byte	0xe
	.uleb128 0x10
	.byte	0x8d
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI65-.LCFI64
	.byte	0xe
	.uleb128 0x18
	.byte	0x8c
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI66-.LCFI65
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI67-.LCFI66
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI68-.LCFI67
	.byte	0xe
	.uleb128 0x30
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.align 8
.LEFDE174:
.LSFDE176:
	.long	.LEFDE176-.LASFDE176
.LASFDE176:
	.long	.Lframe0
	.quad	.LFB302
	.quad	.LFE302-.LFB302
	.align 8
.LEFDE176:
.LSFDE178:
	.long	.LEFDE178-.LASFDE178
.LASFDE178:
	.long	.Lframe0
	.quad	.LFB303
	.quad	.LFE303-.LFB303
	.byte	0x4
	.long	.LCFI69-.LFB303
	.byte	0xe
	.uleb128 0x10
	.byte	0x8e
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI70-.LCFI69
	.byte	0xe
	.uleb128 0x18
	.byte	0x8d
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI71-.LCFI70
	.byte	0xe
	.uleb128 0x20
	.byte	0x8c
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI72-.LCFI71
	.byte	0xe
	.uleb128 0x28
	.byte	0x86
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI73-.LCFI72
	.byte	0xe
	.uleb128 0x30
	.byte	0x83
	.uleb128 0x6
	.align 8
.LEFDE178:
.LSFDE180:
	.long	.LEFDE180-.LASFDE180
.LASFDE180:
	.long	.Lframe0
	.quad	.LFB304
	.quad	.LFE304-.LFB304
	.byte	0x4
	.long	.LCFI74-.LFB304
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE180:
.LSFDE182:
	.long	.LEFDE182-.LASFDE182
.LASFDE182:
	.long	.Lframe0
	.quad	.LFB305
	.quad	.LFE305-.LFB305
	.align 8
.LEFDE182:
.LSFDE184:
	.long	.LEFDE184-.LASFDE184
.LASFDE184:
	.long	.Lframe0
	.quad	.LFB306
	.quad	.LFE306-.LFB306
	.align 8
.LEFDE184:
.LSFDE186:
	.long	.LEFDE186-.LASFDE186
.LASFDE186:
	.long	.Lframe0
	.quad	.LFB307
	.quad	.LFE307-.LFB307
	.align 8
.LEFDE186:
.LSFDE188:
	.long	.LEFDE188-.LASFDE188
.LASFDE188:
	.long	.Lframe0
	.quad	.LFB308
	.quad	.LFE308-.LFB308
	.align 8
.LEFDE188:
.LSFDE190:
	.long	.LEFDE190-.LASFDE190
.LASFDE190:
	.long	.Lframe0
	.quad	.LFB309
	.quad	.LFE309-.LFB309
	.align 8
.LEFDE190:
.LSFDE192:
	.long	.LEFDE192-.LASFDE192
.LASFDE192:
	.long	.Lframe0
	.quad	.LFB310
	.quad	.LFE310-.LFB310
	.align 8
.LEFDE192:
.LSFDE194:
	.long	.LEFDE194-.LASFDE194
.LASFDE194:
	.long	.Lframe0
	.quad	.LFB312
	.quad	.LFE312-.LFB312
	.byte	0x4
	.long	.LCFI76-.LFB312
	.byte	0x86
	.uleb128 0x5
	.byte	0x83
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI78-.LCFI76
	.byte	0x8d
	.uleb128 0x3
	.byte	0x8c
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI80-.LCFI78
	.byte	0xe
	.uleb128 0x30
	.byte	0x8e
	.uleb128 0x2
	.align 8
.LEFDE194:
.LSFDE196:
	.long	.LEFDE196-.LASFDE196
.LASFDE196:
	.long	.Lframe0
	.quad	.LFB313
	.quad	.LFE313-.LFB313
	.byte	0x4
	.long	.LCFI82-.LFB313
	.byte	0x86
	.uleb128 0x6
	.byte	0x83
	.uleb128 0x7
	.byte	0x4
	.long	.LCFI84-.LCFI82
	.byte	0x8d
	.uleb128 0x4
	.byte	0x8c
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI87-.LCFI84
	.byte	0xe
	.uleb128 0x40
	.byte	0x8f
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x3
	.align 8
.LEFDE196:
.LSFDE198:
	.long	.LEFDE198-.LASFDE198
.LASFDE198:
	.long	.Lframe0
	.quad	.LFB314
	.quad	.LFE314-.LFB314
	.byte	0x4
	.long	.LCFI89-.LFB314
	.byte	0x8c
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI94-.LCFI89
	.byte	0xe
	.uleb128 0x50
	.byte	0x83
	.uleb128 0x7
	.byte	0x8f
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8d
	.uleb128 0x4
	.align 8
.LEFDE198:
.LSFDE200:
	.long	.LEFDE200-.LASFDE200
.LASFDE200:
	.long	.Lframe0
	.quad	.LFB315
	.quad	.LFE315-.LFB315
	.align 8
.LEFDE200:
.LSFDE202:
	.long	.LEFDE202-.LASFDE202
.LASFDE202:
	.long	.Lframe0
	.quad	.LFB316
	.quad	.LFE316-.LFB316
	.byte	0x4
	.long	.LCFI95-.LFB316
	.byte	0x8c
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI96-.LCFI95
	.byte	0x83
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI98-.LCFI96
	.byte	0xe
	.uleb128 0x20
	.byte	0x8d
	.uleb128 0x2
	.align 8
.LEFDE202:
.LSFDE204:
	.long	.LEFDE204-.LASFDE204
.LASFDE204:
	.long	.Lframe0
	.quad	.LFB317
	.quad	.LFE317-.LFB317
	.align 8
.LEFDE204:
.LSFDE206:
	.long	.LEFDE206-.LASFDE206
.LASFDE206:
	.long	.Lframe0
	.quad	.LFB318
	.quad	.LFE318-.LFB318
	.byte	0x4
	.long	.LCFI99-.LFB318
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI100-.LCFI99
	.byte	0xe
	.uleb128 0x18
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI101-.LCFI100
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI102-.LCFI101
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI103-.LCFI102
	.byte	0xe
	.uleb128 0x30
	.byte	0x86
	.uleb128 0x6
	.byte	0x8c
	.uleb128 0x5
	.byte	0x8d
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI104-.LCFI103
	.byte	0xe
	.uleb128 0x38
	.byte	0x83
	.uleb128 0x7
	.byte	0x4
	.long	.LCFI105-.LCFI104
	.byte	0xe
	.uleb128 0x50
	.align 8
.LEFDE206:
.LSFDE208:
	.long	.LEFDE208-.LASFDE208
.LASFDE208:
	.long	.Lframe0
	.quad	.LFB319
	.quad	.LFE319-.LFB319
	.byte	0x4
	.long	.LCFI107-.LFB319
	.byte	0x8c
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI110-.LCFI107
	.byte	0xe
	.uleb128 0xa0
	.byte	0x83
	.uleb128 0x5
	.byte	0x8d
	.uleb128 0x2
	.align 8
.LEFDE208:
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
	.quad	.LFB206
	.quad	.LFE206-.LFB206
	.align 8
.LEFDE1:
.LSFDE3:
	.long	.LEFDE3-.LASFDE3
.LASFDE3:
	.long	.LASFDE3-.Lframe1
	.quad	.LFB207
	.quad	.LFE207-.LFB207
	.align 8
.LEFDE3:
.LSFDE5:
	.long	.LEFDE5-.LASFDE5
.LASFDE5:
	.long	.LASFDE5-.Lframe1
	.quad	.LFB208
	.quad	.LFE208-.LFB208
	.align 8
.LEFDE5:
.LSFDE7:
	.long	.LEFDE7-.LASFDE7
.LASFDE7:
	.long	.LASFDE7-.Lframe1
	.quad	.LFB209
	.quad	.LFE209-.LFB209
	.align 8
.LEFDE7:
.LSFDE9:
	.long	.LEFDE9-.LASFDE9
.LASFDE9:
	.long	.LASFDE9-.Lframe1
	.quad	.LFB210
	.quad	.LFE210-.LFB210
	.align 8
.LEFDE9:
.LSFDE11:
	.long	.LEFDE11-.LASFDE11
.LASFDE11:
	.long	.LASFDE11-.Lframe1
	.quad	.LFB211
	.quad	.LFE211-.LFB211
	.byte	0x4
	.long	.LCFI2-.LFB211
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
	.quad	.LFB212
	.quad	.LFE212-.LFB212
	.align 8
.LEFDE13:
.LSFDE15:
	.long	.LEFDE15-.LASFDE15
.LASFDE15:
	.long	.LASFDE15-.Lframe1
	.quad	.LFB213
	.quad	.LFE213-.LFB213
	.byte	0x4
	.long	.LCFI3-.LFB213
	.byte	0x83
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI6-.LCFI3
	.byte	0x8e
	.uleb128 0x2
	.byte	0x8d
	.uleb128 0x3
	.byte	0x8c
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI7-.LCFI6
	.byte	0xe
	.uleb128 0x28
	.align 8
.LEFDE15:
.LSFDE17:
	.long	.LEFDE17-.LASFDE17
.LASFDE17:
	.long	.LASFDE17-.Lframe1
	.quad	.LFB214
	.quad	.LFE214-.LFB214
	.byte	0x4
	.long	.LCFI9-.LFB214
	.byte	0x8c
	.uleb128 0x4
	.byte	0x83
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI12-.LCFI9
	.byte	0xe
	.uleb128 0x28
	.byte	0x8e
	.uleb128 0x2
	.byte	0x8d
	.uleb128 0x3
	.align 8
.LEFDE17:
.LSFDE19:
	.long	.LEFDE19-.LASFDE19
.LASFDE19:
	.long	.LASFDE19-.Lframe1
	.quad	.LFB215
	.quad	.LFE215-.LFB215
	.align 8
.LEFDE19:
.LSFDE21:
	.long	.LEFDE21-.LASFDE21
.LASFDE21:
	.long	.LASFDE21-.Lframe1
	.quad	.LFB216
	.quad	.LFE216-.LFB216
	.byte	0x4
	.long	.LCFI14-.LFB216
	.byte	0x8c
	.uleb128 0x4
	.byte	0x83
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI16-.LCFI14
	.byte	0x8e
	.uleb128 0x2
	.byte	0x8d
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI17-.LCFI16
	.byte	0xe
	.uleb128 0x28
	.align 8
.LEFDE21:
.LSFDE23:
	.long	.LEFDE23-.LASFDE23
.LASFDE23:
	.long	.LASFDE23-.Lframe1
	.quad	.LFB217
	.quad	.LFE217-.LFB217
	.byte	0x4
	.long	.LCFI19-.LFB217
	.byte	0x8c
	.uleb128 0x4
	.byte	0x83
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI22-.LCFI19
	.byte	0xe
	.uleb128 0x28
	.byte	0x8e
	.uleb128 0x2
	.byte	0x8d
	.uleb128 0x3
	.align 8
.LEFDE23:
.LSFDE25:
	.long	.LEFDE25-.LASFDE25
.LASFDE25:
	.long	.LASFDE25-.Lframe1
	.quad	.LFB219
	.quad	.LFE219-.LFB219
	.align 8
.LEFDE25:
.LSFDE27:
	.long	.LEFDE27-.LASFDE27
.LASFDE27:
	.long	.LASFDE27-.Lframe1
	.quad	.LFB220
	.quad	.LFE220-.LFB220
	.align 8
.LEFDE27:
.LSFDE29:
	.long	.LEFDE29-.LASFDE29
.LASFDE29:
	.long	.LASFDE29-.Lframe1
	.quad	.LFB221
	.quad	.LFE221-.LFB221
	.align 8
.LEFDE29:
.LSFDE31:
	.long	.LEFDE31-.LASFDE31
.LASFDE31:
	.long	.LASFDE31-.Lframe1
	.quad	.LFB222
	.quad	.LFE222-.LFB222
	.align 8
.LEFDE31:
.LSFDE33:
	.long	.LEFDE33-.LASFDE33
.LASFDE33:
	.long	.LASFDE33-.Lframe1
	.quad	.LFB223
	.quad	.LFE223-.LFB223
	.align 8
.LEFDE33:
.LSFDE35:
	.long	.LEFDE35-.LASFDE35
.LASFDE35:
	.long	.LASFDE35-.Lframe1
	.quad	.LFB224
	.quad	.LFE224-.LFB224
	.byte	0x4
	.long	.LCFI23-.LFB224
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE35:
.LSFDE37:
	.long	.LEFDE37-.LASFDE37
.LASFDE37:
	.long	.LASFDE37-.Lframe1
	.quad	.LFB225
	.quad	.LFE225-.LFB225
	.byte	0x4
	.long	.LCFI24-.LFB225
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
	.quad	.LFB226
	.quad	.LFE226-.LFB226
	.align 8
.LEFDE39:
.LSFDE41:
	.long	.LEFDE41-.LASFDE41
.LASFDE41:
	.long	.LASFDE41-.Lframe1
	.quad	.LFB227
	.quad	.LFE227-.LFB227
	.align 8
.LEFDE41:
.LSFDE43:
	.long	.LEFDE43-.LASFDE43
.LASFDE43:
	.long	.LASFDE43-.Lframe1
	.quad	.LFB228
	.quad	.LFE228-.LFB228
	.byte	0x4
	.long	.LCFI25-.LFB228
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI26-.LCFI25
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x2
	.align 8
.LEFDE43:
.LSFDE45:
	.long	.LEFDE45-.LASFDE45
.LASFDE45:
	.long	.LASFDE45-.Lframe1
	.quad	.LFB229
	.quad	.LFE229-.LFB229
	.align 8
.LEFDE45:
.LSFDE47:
	.long	.LEFDE47-.LASFDE47
.LASFDE47:
	.long	.LASFDE47-.Lframe1
	.quad	.LFB230
	.quad	.LFE230-.LFB230
	.align 8
.LEFDE47:
.LSFDE49:
	.long	.LEFDE49-.LASFDE49
.LASFDE49:
	.long	.LASFDE49-.Lframe1
	.quad	.LFB231
	.quad	.LFE231-.LFB231
	.align 8
.LEFDE49:
.LSFDE51:
	.long	.LEFDE51-.LASFDE51
.LASFDE51:
	.long	.LASFDE51-.Lframe1
	.quad	.LFB232
	.quad	.LFE232-.LFB232
	.align 8
.LEFDE51:
.LSFDE53:
	.long	.LEFDE53-.LASFDE53
.LASFDE53:
	.long	.LASFDE53-.Lframe1
	.quad	.LFB233
	.quad	.LFE233-.LFB233
	.align 8
.LEFDE53:
.LSFDE55:
	.long	.LEFDE55-.LASFDE55
.LASFDE55:
	.long	.LASFDE55-.Lframe1
	.quad	.LFB234
	.quad	.LFE234-.LFB234
	.align 8
.LEFDE55:
.LSFDE57:
	.long	.LEFDE57-.LASFDE57
.LASFDE57:
	.long	.LASFDE57-.Lframe1
	.quad	.LFB235
	.quad	.LFE235-.LFB235
	.align 8
.LEFDE57:
.LSFDE59:
	.long	.LEFDE59-.LASFDE59
.LASFDE59:
	.long	.LASFDE59-.Lframe1
	.quad	.LFB236
	.quad	.LFE236-.LFB236
	.align 8
.LEFDE59:
.LSFDE61:
	.long	.LEFDE61-.LASFDE61
.LASFDE61:
	.long	.LASFDE61-.Lframe1
	.quad	.LFB237
	.quad	.LFE237-.LFB237
	.align 8
.LEFDE61:
.LSFDE63:
	.long	.LEFDE63-.LASFDE63
.LASFDE63:
	.long	.LASFDE63-.Lframe1
	.quad	.LFB238
	.quad	.LFE238-.LFB238
	.align 8
.LEFDE63:
.LSFDE65:
	.long	.LEFDE65-.LASFDE65
.LASFDE65:
	.long	.LASFDE65-.Lframe1
	.quad	.LFB239
	.quad	.LFE239-.LFB239
	.align 8
.LEFDE65:
.LSFDE67:
	.long	.LEFDE67-.LASFDE67
.LASFDE67:
	.long	.LASFDE67-.Lframe1
	.quad	.LFB240
	.quad	.LFE240-.LFB240
	.align 8
.LEFDE67:
.LSFDE69:
	.long	.LEFDE69-.LASFDE69
.LASFDE69:
	.long	.LASFDE69-.Lframe1
	.quad	.LFB242
	.quad	.LFE242-.LFB242
	.align 8
.LEFDE69:
.LSFDE71:
	.long	.LEFDE71-.LASFDE71
.LASFDE71:
	.long	.LASFDE71-.Lframe1
	.quad	.LFB243
	.quad	.LFE243-.LFB243
	.byte	0x4
	.long	.LCFI27-.LFB243
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE71:
.LSFDE73:
	.long	.LEFDE73-.LASFDE73
.LASFDE73:
	.long	.LASFDE73-.Lframe1
	.quad	.LFB244
	.quad	.LFE244-.LFB244
	.byte	0x4
	.long	.LCFI28-.LFB244
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE73:
.LSFDE75:
	.long	.LEFDE75-.LASFDE75
.LASFDE75:
	.long	.LASFDE75-.Lframe1
	.quad	.LFB245
	.quad	.LFE245-.LFB245
	.align 8
.LEFDE75:
.LSFDE77:
	.long	.LEFDE77-.LASFDE77
.LASFDE77:
	.long	.LASFDE77-.Lframe1
	.quad	.LFB246
	.quad	.LFE246-.LFB246
	.align 8
.LEFDE77:
.LSFDE79:
	.long	.LEFDE79-.LASFDE79
.LASFDE79:
	.long	.LASFDE79-.Lframe1
	.quad	.LFB247
	.quad	.LFE247-.LFB247
	.byte	0x4
	.long	.LCFI29-.LFB247
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE79:
.LSFDE81:
	.long	.LEFDE81-.LASFDE81
.LASFDE81:
	.long	.LASFDE81-.Lframe1
	.quad	.LFB248
	.quad	.LFE248-.LFB248
	.byte	0x4
	.long	.LCFI30-.LFB248
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE81:
.LSFDE83:
	.long	.LEFDE83-.LASFDE83
.LASFDE83:
	.long	.LASFDE83-.Lframe1
	.quad	.LFB249
	.quad	.LFE249-.LFB249
	.align 8
.LEFDE83:
.LSFDE85:
	.long	.LEFDE85-.LASFDE85
.LASFDE85:
	.long	.LASFDE85-.Lframe1
	.quad	.LFB250
	.quad	.LFE250-.LFB250
	.align 8
.LEFDE85:
.LSFDE87:
	.long	.LEFDE87-.LASFDE87
.LASFDE87:
	.long	.LASFDE87-.Lframe1
	.quad	.LFB251
	.quad	.LFE251-.LFB251
	.byte	0x4
	.long	.LCFI31-.LFB251
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI32-.LCFI31
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x2
	.align 8
.LEFDE87:
.LSFDE89:
	.long	.LEFDE89-.LASFDE89
.LASFDE89:
	.long	.LASFDE89-.Lframe1
	.quad	.LFB252
	.quad	.LFE252-.LFB252
	.align 8
.LEFDE89:
.LSFDE91:
	.long	.LEFDE91-.LASFDE91
.LASFDE91:
	.long	.LASFDE91-.Lframe1
	.quad	.LFB253
	.quad	.LFE253-.LFB253
	.align 8
.LEFDE91:
.LSFDE93:
	.long	.LEFDE93-.LASFDE93
.LASFDE93:
	.long	.LASFDE93-.Lframe1
	.quad	.LFB254
	.quad	.LFE254-.LFB254
	.align 8
.LEFDE93:
.LSFDE95:
	.long	.LEFDE95-.LASFDE95
.LASFDE95:
	.long	.LASFDE95-.Lframe1
	.quad	.LFB255
	.quad	.LFE255-.LFB255
	.align 8
.LEFDE95:
.LSFDE97:
	.long	.LEFDE97-.LASFDE97
.LASFDE97:
	.long	.LASFDE97-.Lframe1
	.quad	.LFB256
	.quad	.LFE256-.LFB256
	.align 8
.LEFDE97:
.LSFDE99:
	.long	.LEFDE99-.LASFDE99
.LASFDE99:
	.long	.LASFDE99-.Lframe1
	.quad	.LFB257
	.quad	.LFE257-.LFB257
	.align 8
.LEFDE99:
.LSFDE101:
	.long	.LEFDE101-.LASFDE101
.LASFDE101:
	.long	.LASFDE101-.Lframe1
	.quad	.LFB258
	.quad	.LFE258-.LFB258
	.align 8
.LEFDE101:
.LSFDE103:
	.long	.LEFDE103-.LASFDE103
.LASFDE103:
	.long	.LASFDE103-.Lframe1
	.quad	.LFB259
	.quad	.LFE259-.LFB259
	.align 8
.LEFDE103:
.LSFDE105:
	.long	.LEFDE105-.LASFDE105
.LASFDE105:
	.long	.LASFDE105-.Lframe1
	.quad	.LFB261
	.quad	.LFE261-.LFB261
	.align 8
.LEFDE105:
.LSFDE107:
	.long	.LEFDE107-.LASFDE107
.LASFDE107:
	.long	.LASFDE107-.Lframe1
	.quad	.LFB262
	.quad	.LFE262-.LFB262
	.byte	0x4
	.long	.LCFI33-.LFB262
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE107:
.LSFDE109:
	.long	.LEFDE109-.LASFDE109
.LASFDE109:
	.long	.LASFDE109-.Lframe1
	.quad	.LFB263
	.quad	.LFE263-.LFB263
	.align 8
.LEFDE109:
.LSFDE111:
	.long	.LEFDE111-.LASFDE111
.LASFDE111:
	.long	.LASFDE111-.Lframe1
	.quad	.LFB264
	.quad	.LFE264-.LFB264
	.align 8
.LEFDE111:
.LSFDE113:
	.long	.LEFDE113-.LASFDE113
.LASFDE113:
	.long	.LASFDE113-.Lframe1
	.quad	.LFB265
	.quad	.LFE265-.LFB265
	.align 8
.LEFDE113:
.LSFDE115:
	.long	.LEFDE115-.LASFDE115
.LASFDE115:
	.long	.LASFDE115-.Lframe1
	.quad	.LFB266
	.quad	.LFE266-.LFB266
	.byte	0x4
	.long	.LCFI34-.LFB266
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE115:
.LSFDE117:
	.long	.LEFDE117-.LASFDE117
.LASFDE117:
	.long	.LASFDE117-.Lframe1
	.quad	.LFB267
	.quad	.LFE267-.LFB267
	.byte	0x4
	.long	.LCFI35-.LFB267
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE117:
.LSFDE119:
	.long	.LEFDE119-.LASFDE119
.LASFDE119:
	.long	.LASFDE119-.Lframe1
	.quad	.LFB268
	.quad	.LFE268-.LFB268
	.align 8
.LEFDE119:
.LSFDE121:
	.long	.LEFDE121-.LASFDE121
.LASFDE121:
	.long	.LASFDE121-.Lframe1
	.quad	.LFB269
	.quad	.LFE269-.LFB269
	.align 8
.LEFDE121:
.LSFDE123:
	.long	.LEFDE123-.LASFDE123
.LASFDE123:
	.long	.LASFDE123-.Lframe1
	.quad	.LFB270
	.quad	.LFE270-.LFB270
	.byte	0x4
	.long	.LCFI36-.LFB270
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
.LEFDE123:
.LSFDE125:
	.long	.LEFDE125-.LASFDE125
.LASFDE125:
	.long	.LASFDE125-.Lframe1
	.quad	.LFB271
	.quad	.LFE271-.LFB271
	.align 8
.LEFDE125:
.LSFDE127:
	.long	.LEFDE127-.LASFDE127
.LASFDE127:
	.long	.LASFDE127-.Lframe1
	.quad	.LFB272
	.quad	.LFE272-.LFB272
	.align 8
.LEFDE127:
.LSFDE129:
	.long	.LEFDE129-.LASFDE129
.LASFDE129:
	.long	.LASFDE129-.Lframe1
	.quad	.LFB273
	.quad	.LFE273-.LFB273
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
	.align 8
.LEFDE133:
.LSFDE135:
	.long	.LEFDE135-.LASFDE135
.LASFDE135:
	.long	.LASFDE135-.Lframe1
	.quad	.LFB276
	.quad	.LFE276-.LFB276
	.align 8
.LEFDE135:
.LSFDE137:
	.long	.LEFDE137-.LASFDE137
.LASFDE137:
	.long	.LASFDE137-.Lframe1
	.quad	.LFB277
	.quad	.LFE277-.LFB277
	.align 8
.LEFDE137:
.LSFDE139:
	.long	.LEFDE139-.LASFDE139
.LASFDE139:
	.long	.LASFDE139-.Lframe1
	.quad	.LFB278
	.quad	.LFE278-.LFB278
	.align 8
.LEFDE139:
.LSFDE141:
	.long	.LEFDE141-.LASFDE141
.LASFDE141:
	.long	.LASFDE141-.Lframe1
	.quad	.LFB279
	.quad	.LFE279-.LFB279
	.align 8
.LEFDE141:
.LSFDE143:
	.long	.LEFDE143-.LASFDE143
.LASFDE143:
	.long	.LASFDE143-.Lframe1
	.quad	.LFB280
	.quad	.LFE280-.LFB280
	.align 8
.LEFDE143:
.LSFDE145:
	.long	.LEFDE145-.LASFDE145
.LASFDE145:
	.long	.LASFDE145-.Lframe1
	.quad	.LFB281
	.quad	.LFE281-.LFB281
	.align 8
.LEFDE145:
.LSFDE147:
	.long	.LEFDE147-.LASFDE147
.LASFDE147:
	.long	.LASFDE147-.Lframe1
	.quad	.LFB282
	.quad	.LFE282-.LFB282
	.align 8
.LEFDE147:
.LSFDE149:
	.long	.LEFDE149-.LASFDE149
.LASFDE149:
	.long	.LASFDE149-.Lframe1
	.quad	.LFB283
	.quad	.LFE283-.LFB283
	.align 8
.LEFDE149:
.LSFDE151:
	.long	.LEFDE151-.LASFDE151
.LASFDE151:
	.long	.LASFDE151-.Lframe1
	.quad	.LFB284
	.quad	.LFE284-.LFB284
	.align 8
.LEFDE151:
.LSFDE153:
	.long	.LEFDE153-.LASFDE153
.LASFDE153:
	.long	.LASFDE153-.Lframe1
	.quad	.LFB285
	.quad	.LFE285-.LFB285
	.align 8
.LEFDE153:
.LSFDE155:
	.long	.LEFDE155-.LASFDE155
.LASFDE155:
	.long	.LASFDE155-.Lframe1
	.quad	.LFB286
	.quad	.LFE286-.LFB286
	.byte	0x4
	.long	.LCFI38-.LFB286
	.byte	0xe
	.uleb128 0x10
	.byte	0x8e
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI39-.LCFI38
	.byte	0xe
	.uleb128 0x18
	.byte	0x8d
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI40-.LCFI39
	.byte	0xe
	.uleb128 0x20
	.byte	0x8c
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI41-.LCFI40
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI42-.LCFI41
	.byte	0xe
	.uleb128 0x30
	.byte	0x83
	.uleb128 0x6
	.byte	0x86
	.uleb128 0x5
	.align 8
.LEFDE155:
.LSFDE157:
	.long	.LEFDE157-.LASFDE157
.LASFDE157:
	.long	.LASFDE157-.Lframe1
	.quad	.LFB287
	.quad	.LFE287-.LFB287
	.byte	0x4
	.long	.LCFI43-.LFB287
	.byte	0xe
	.uleb128 0x10
	.byte	0x8e
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI44-.LCFI43
	.byte	0xe
	.uleb128 0x18
	.byte	0x8d
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI45-.LCFI44
	.byte	0xe
	.uleb128 0x20
	.byte	0x8c
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI46-.LCFI45
	.byte	0xe
	.uleb128 0x28
	.byte	0x86
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI47-.LCFI46
	.byte	0xe
	.uleb128 0x30
	.byte	0x83
	.uleb128 0x6
	.align 8
.LEFDE157:
.LSFDE159:
	.long	.LEFDE159-.LASFDE159
.LASFDE159:
	.long	.LASFDE159-.Lframe1
	.quad	.LFB288
	.quad	.LFE288-.LFB288
	.align 8
.LEFDE159:
.LSFDE161:
	.long	.LEFDE161-.LASFDE161
.LASFDE161:
	.long	.LASFDE161-.Lframe1
	.quad	.LFB289
	.quad	.LFE289-.LFB289
	.byte	0x4
	.long	.LCFI49-.LFB289
	.byte	0x86
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI50-.LCFI49
	.byte	0xe
	.uleb128 0x30
	.align 8
.LEFDE161:
.LSFDE163:
	.long	.LEFDE163-.LASFDE163
.LASFDE163:
	.long	.LASFDE163-.Lframe1
	.quad	.LFB292
	.quad	.LFE292-.LFB292
	.align 8
.LEFDE163:
.LSFDE165:
	.long	.LEFDE165-.LASFDE165
.LASFDE165:
	.long	.LASFDE165-.Lframe1
	.quad	.LFB293
	.quad	.LFE293-.LFB293
	.align 8
.LEFDE165:
.LSFDE167:
	.long	.LEFDE167-.LASFDE167
.LASFDE167:
	.long	.LASFDE167-.Lframe1
	.quad	.LFB294
	.quad	.LFE294-.LFB294
	.byte	0x4
	.long	.LCFI51-.LFB294
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE167:
.LSFDE169:
	.long	.LEFDE169-.LASFDE169
.LASFDE169:
	.long	.LASFDE169-.Lframe1
	.quad	.LFB297
	.quad	.LFE297-.LFB297
	.byte	0x4
	.long	.LCFI52-.LFB297
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI53-.LCFI52
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI54-.LCFI53
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI55-.LCFI54
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI56-.LCFI55
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI57-.LCFI56
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI58-.LCFI57
	.byte	0xe
	.uleb128 0x120
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
.LEFDE169:
.LSFDE171:
	.long	.LEFDE171-.LASFDE171
.LASFDE171:
	.long	.LASFDE171-.Lframe1
	.quad	.LFB298
	.quad	.LFE298-.LFB298
	.align 8
.LEFDE171:
.LSFDE173:
	.long	.LEFDE173-.LASFDE173
.LASFDE173:
	.long	.LASFDE173-.Lframe1
	.quad	.LFB300
	.quad	.LFE300-.LFB300
	.byte	0x4
	.long	.LCFI59-.LFB300
	.byte	0xe
	.uleb128 0x10
	.byte	0x8d
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI60-.LCFI59
	.byte	0xe
	.uleb128 0x18
	.byte	0x8c
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI61-.LCFI60
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI62-.LCFI61
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI63-.LCFI62
	.byte	0xe
	.uleb128 0x30
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.align 8
.LEFDE173:
.LSFDE175:
	.long	.LEFDE175-.LASFDE175
.LASFDE175:
	.long	.LASFDE175-.Lframe1
	.quad	.LFB301
	.quad	.LFE301-.LFB301
	.byte	0x4
	.long	.LCFI64-.LFB301
	.byte	0xe
	.uleb128 0x10
	.byte	0x8d
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI65-.LCFI64
	.byte	0xe
	.uleb128 0x18
	.byte	0x8c
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI66-.LCFI65
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI67-.LCFI66
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI68-.LCFI67
	.byte	0xe
	.uleb128 0x30
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.align 8
.LEFDE175:
.LSFDE177:
	.long	.LEFDE177-.LASFDE177
.LASFDE177:
	.long	.LASFDE177-.Lframe1
	.quad	.LFB302
	.quad	.LFE302-.LFB302
	.align 8
.LEFDE177:
.LSFDE179:
	.long	.LEFDE179-.LASFDE179
.LASFDE179:
	.long	.LASFDE179-.Lframe1
	.quad	.LFB303
	.quad	.LFE303-.LFB303
	.byte	0x4
	.long	.LCFI69-.LFB303
	.byte	0xe
	.uleb128 0x10
	.byte	0x8e
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI70-.LCFI69
	.byte	0xe
	.uleb128 0x18
	.byte	0x8d
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI71-.LCFI70
	.byte	0xe
	.uleb128 0x20
	.byte	0x8c
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI72-.LCFI71
	.byte	0xe
	.uleb128 0x28
	.byte	0x86
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI73-.LCFI72
	.byte	0xe
	.uleb128 0x30
	.byte	0x83
	.uleb128 0x6
	.align 8
.LEFDE179:
.LSFDE181:
	.long	.LEFDE181-.LASFDE181
.LASFDE181:
	.long	.LASFDE181-.Lframe1
	.quad	.LFB304
	.quad	.LFE304-.LFB304
	.byte	0x4
	.long	.LCFI74-.LFB304
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE181:
.LSFDE183:
	.long	.LEFDE183-.LASFDE183
.LASFDE183:
	.long	.LASFDE183-.Lframe1
	.quad	.LFB305
	.quad	.LFE305-.LFB305
	.align 8
.LEFDE183:
.LSFDE185:
	.long	.LEFDE185-.LASFDE185
.LASFDE185:
	.long	.LASFDE185-.Lframe1
	.quad	.LFB306
	.quad	.LFE306-.LFB306
	.align 8
.LEFDE185:
.LSFDE187:
	.long	.LEFDE187-.LASFDE187
.LASFDE187:
	.long	.LASFDE187-.Lframe1
	.quad	.LFB307
	.quad	.LFE307-.LFB307
	.align 8
.LEFDE187:
.LSFDE189:
	.long	.LEFDE189-.LASFDE189
.LASFDE189:
	.long	.LASFDE189-.Lframe1
	.quad	.LFB308
	.quad	.LFE308-.LFB308
	.align 8
.LEFDE189:
.LSFDE191:
	.long	.LEFDE191-.LASFDE191
.LASFDE191:
	.long	.LASFDE191-.Lframe1
	.quad	.LFB309
	.quad	.LFE309-.LFB309
	.align 8
.LEFDE191:
.LSFDE193:
	.long	.LEFDE193-.LASFDE193
.LASFDE193:
	.long	.LASFDE193-.Lframe1
	.quad	.LFB310
	.quad	.LFE310-.LFB310
	.align 8
.LEFDE193:
.LSFDE195:
	.long	.LEFDE195-.LASFDE195
.LASFDE195:
	.long	.LASFDE195-.Lframe1
	.quad	.LFB312
	.quad	.LFE312-.LFB312
	.byte	0x4
	.long	.LCFI76-.LFB312
	.byte	0x86
	.uleb128 0x5
	.byte	0x83
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI78-.LCFI76
	.byte	0x8d
	.uleb128 0x3
	.byte	0x8c
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI80-.LCFI78
	.byte	0xe
	.uleb128 0x30
	.byte	0x8e
	.uleb128 0x2
	.align 8
.LEFDE195:
.LSFDE197:
	.long	.LEFDE197-.LASFDE197
.LASFDE197:
	.long	.LASFDE197-.Lframe1
	.quad	.LFB313
	.quad	.LFE313-.LFB313
	.byte	0x4
	.long	.LCFI82-.LFB313
	.byte	0x86
	.uleb128 0x6
	.byte	0x83
	.uleb128 0x7
	.byte	0x4
	.long	.LCFI84-.LCFI82
	.byte	0x8d
	.uleb128 0x4
	.byte	0x8c
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI87-.LCFI84
	.byte	0xe
	.uleb128 0x40
	.byte	0x8f
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x3
	.align 8
.LEFDE197:
.LSFDE199:
	.long	.LEFDE199-.LASFDE199
.LASFDE199:
	.long	.LASFDE199-.Lframe1
	.quad	.LFB314
	.quad	.LFE314-.LFB314
	.byte	0x4
	.long	.LCFI89-.LFB314
	.byte	0x8c
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI94-.LCFI89
	.byte	0xe
	.uleb128 0x50
	.byte	0x83
	.uleb128 0x7
	.byte	0x8f
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8d
	.uleb128 0x4
	.align 8
.LEFDE199:
.LSFDE201:
	.long	.LEFDE201-.LASFDE201
.LASFDE201:
	.long	.LASFDE201-.Lframe1
	.quad	.LFB315
	.quad	.LFE315-.LFB315
	.align 8
.LEFDE201:
.LSFDE203:
	.long	.LEFDE203-.LASFDE203
.LASFDE203:
	.long	.LASFDE203-.Lframe1
	.quad	.LFB316
	.quad	.LFE316-.LFB316
	.byte	0x4
	.long	.LCFI95-.LFB316
	.byte	0x8c
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI96-.LCFI95
	.byte	0x83
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI98-.LCFI96
	.byte	0xe
	.uleb128 0x20
	.byte	0x8d
	.uleb128 0x2
	.align 8
.LEFDE203:
.LSFDE205:
	.long	.LEFDE205-.LASFDE205
.LASFDE205:
	.long	.LASFDE205-.Lframe1
	.quad	.LFB317
	.quad	.LFE317-.LFB317
	.align 8
.LEFDE205:
.LSFDE207:
	.long	.LEFDE207-.LASFDE207
.LASFDE207:
	.long	.LASFDE207-.Lframe1
	.quad	.LFB318
	.quad	.LFE318-.LFB318
	.byte	0x4
	.long	.LCFI99-.LFB318
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI100-.LCFI99
	.byte	0xe
	.uleb128 0x18
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI101-.LCFI100
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI102-.LCFI101
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI103-.LCFI102
	.byte	0xe
	.uleb128 0x30
	.byte	0x86
	.uleb128 0x6
	.byte	0x8c
	.uleb128 0x5
	.byte	0x8d
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI104-.LCFI103
	.byte	0xe
	.uleb128 0x38
	.byte	0x83
	.uleb128 0x7
	.byte	0x4
	.long	.LCFI105-.LCFI104
	.byte	0xe
	.uleb128 0x50
	.align 8
.LEFDE207:
.LSFDE209:
	.long	.LEFDE209-.LASFDE209
.LASFDE209:
	.long	.LASFDE209-.Lframe1
	.quad	.LFB319
	.quad	.LFE319-.LFB319
	.byte	0x4
	.long	.LCFI107-.LFB319
	.byte	0x8c
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI110-.LCFI107
	.byte	0xe
	.uleb128 0xa0
	.byte	0x83
	.uleb128 0x5
	.byte	0x8d
	.uleb128 0x2
	.align 8
.LEFDE209:
	.file 9 "/usr/include/stdint.h"
	.file 10 "../argos-tag.h"
	.file 11 "../argos.h"
	.file 12 "../cpu-defs.h"
	.file 13 "../qemu-common.h"
	.file 14 "/home/remco/Projects/Argos/src/hw/pci.h"
	.file 15 "/usr/include/sys/types.h"
	.file 16 "/usr/include/stdio.h"
	.file 17 "/usr/include/libio.h"
	.file 18 "/usr/include/bits/types.h"
	.file 19 "/usr/lib/gcc/x86_64-linux-gnu/3.4.6/include/stddef.h"
	.file 20 "/home/remco/Projects/Argos/src/hw/isa.h"
	.text
.Letext0:
	.section	.debug_info
	.long	0x5e38
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.Ldebug_line0
	.quad	.Letext0
	.quad	.Ltext0
	.long	.LASF403
	.byte	0x1
	.long	.LASF404
	.long	.LASF405
	.uleb128 0x2
	.long	.LASF9
	.byte	0x13
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
	.byte	0x12
	.byte	0x8d
	.long	0x53
	.uleb128 0x2
	.long	.LASF11
	.byte	0x12
	.byte	0x8e
	.long	0x53
	.uleb128 0x7
	.byte	0x8
	.uleb128 0x5
	.byte	0x8
	.long	0x7a
	.uleb128 0x2
	.long	.LASF12
	.byte	0xf
	.byte	0xc5
	.long	0x3f
	.uleb128 0x3
	.long	.LASF13
	.byte	0x8
	.byte	0x7
	.uleb128 0x2
	.long	.LASF14
	.byte	0x10
	.byte	0x31
	.long	0xd1
	.uleb128 0x8
	.long	0x29d
	.long	.LASF45
	.byte	0xd8
	.byte	0x10
	.byte	0x2d
	.uleb128 0x9
	.long	.LASF15
	.byte	0x11
	.value	0x110
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF16
	.byte	0x11
	.value	0x115
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF17
	.byte	0x11
	.value	0x116
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.long	.LASF18
	.byte	0x11
	.value	0x117
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.long	.LASF19
	.byte	0x11
	.value	0x118
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.long	.LASF20
	.byte	0x11
	.value	0x119
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.long	.LASF21
	.byte	0x11
	.value	0x11a
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.long	.LASF22
	.byte	0x11
	.value	0x11b
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.long	.LASF23
	.byte	0x11
	.value	0x11c
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.long	.LASF24
	.byte	0x11
	.value	0x11e
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x9
	.long	.LASF25
	.byte	0x11
	.value	0x11f
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x9
	.long	.LASF26
	.byte	0x11
	.value	0x120
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x9
	.long	.LASF27
	.byte	0x11
	.value	0x122
	.long	0x2db
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x9
	.long	.LASF28
	.byte	0x11
	.value	0x124
	.long	0x2e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x9
	.long	.LASF29
	.byte	0x11
	.value	0x126
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x9
	.long	.LASF30
	.byte	0x11
	.value	0x12a
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x9
	.long	.LASF31
	.byte	0x11
	.value	0x12c
	.long	0x96
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x9
	.long	.LASF32
	.byte	0x11
	.value	0x130
	.long	0x68
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x9
	.long	.LASF33
	.byte	0x11
	.value	0x131
	.long	0x88
	.byte	0x3
	.byte	0x23
	.uleb128 0x82
	.uleb128 0x9
	.long	.LASF34
	.byte	0x11
	.value	0x132
	.long	0x2e7
	.byte	0x3
	.byte	0x23
	.uleb128 0x83
	.uleb128 0x9
	.long	.LASF35
	.byte	0x11
	.value	0x136
	.long	0x2f7
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x9
	.long	.LASF36
	.byte	0x11
	.value	0x13f
	.long	0xa1
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x9
	.long	.LASF37
	.byte	0x11
	.value	0x148
	.long	0xac
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x9
	.long	.LASF38
	.byte	0x11
	.value	0x149
	.long	0xac
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x9
	.long	.LASF39
	.byte	0x11
	.value	0x14a
	.long	0xac
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x9
	.long	.LASF40
	.byte	0x11
	.value	0x14b
	.long	0xac
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x9
	.long	.LASF41
	.byte	0x11
	.value	0x14c
	.long	0x2d
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x9
	.long	.LASF42
	.byte	0x11
	.value	0x14e
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x9
	.long	.LASF43
	.byte	0x11
	.value	0x150
	.long	0x2fd
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.byte	0x0
	.uleb128 0xa
	.long	.LASF44
	.byte	0x11
	.byte	0xb4
	.uleb128 0x8
	.long	0x2db
	.long	.LASF46
	.byte	0x18
	.byte	0x11
	.byte	0xba
	.uleb128 0xb
	.long	.LASF47
	.byte	0x11
	.byte	0xbb
	.long	0x2db
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF48
	.byte	0x11
	.byte	0xbc
	.long	0x2e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF49
	.byte	0x11
	.byte	0xc0
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x2a4
	.uleb128 0x5
	.byte	0x8
	.long	0xd1
	.uleb128 0xc
	.long	0x2f7
	.long	0x7a
	.uleb128 0xd
	.long	0x61
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x29d
	.uleb128 0xc
	.long	0x30d
	.long	0x7a
	.uleb128 0xd
	.long	0x61
	.byte	0x13
	.byte	0x0
	.uleb128 0x2
	.long	.LASF50
	.byte	0x9
	.byte	0x31
	.long	0x81
	.uleb128 0x2
	.long	.LASF51
	.byte	0x9
	.byte	0x32
	.long	0x68
	.uleb128 0x2
	.long	.LASF52
	.byte	0x9
	.byte	0x34
	.long	0x46
	.uleb128 0x2
	.long	.LASF53
	.byte	0x9
	.byte	0x38
	.long	0x38
	.uleb128 0x2
	.long	.LASF54
	.byte	0xc
	.byte	0x49
	.long	0x32e
	.uleb128 0x2
	.long	.LASF55
	.byte	0xc
	.byte	0x50
	.long	0x38
	.uleb128 0x3
	.long	.LASF56
	.byte	0x4
	.byte	0x4
	.uleb128 0x3
	.long	.LASF57
	.byte	0x8
	.byte	0x4
	.uleb128 0x3
	.long	.LASF58
	.byte	0x10
	.byte	0x4
	.uleb128 0xc
	.long	0x374
	.long	0x30d
	.uleb128 0xd
	.long	0x61
	.byte	0xf
	.byte	0x0
	.uleb128 0x2
	.long	.LASF59
	.byte	0xb
	.byte	0x2f
	.long	0x323
	.uleb128 0x2
	.long	.LASF60
	.byte	0xb
	.byte	0x34
	.long	0x323
	.uleb128 0x8
	.long	0x3b3
	.long	.LASF61
	.byte	0x8
	.byte	0xa
	.byte	0x37
	.uleb128 0xb
	.long	.LASF62
	.byte	0xa
	.byte	0x38
	.long	0x374
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF63
	.byte	0xa
	.byte	0x39
	.long	0x37f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.long	.LASF64
	.byte	0xa
	.byte	0x3d
	.long	0x38a
	.uleb128 0x5
	.byte	0x8
	.long	0xc6
	.uleb128 0xe
	.long	.LASF65
	.byte	0x2
	.value	0x388
	.long	0x3d0
	.uleb128 0xf
	.long	0x3eb
	.byte	0x1
	.uleb128 0x10
	.long	0xac
	.uleb128 0x10
	.long	0x339
	.uleb128 0x10
	.long	0x323
	.uleb128 0x10
	.long	0x3eb
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x3f1
	.uleb128 0x6
	.long	0x3b3
	.uleb128 0xe
	.long	.LASF66
	.byte	0x2
	.value	0x389
	.long	0x402
	.uleb128 0x11
	.long	0x41c
	.byte	0x1
	.long	0x323
	.uleb128 0x10
	.long	0xac
	.uleb128 0x10
	.long	0x339
	.uleb128 0x10
	.long	0x41c
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x3b3
	.uleb128 0xc
	.long	0x432
	.long	0x30d
	.uleb128 0xd
	.long	0x61
	.byte	0x2
	.byte	0x0
	.uleb128 0xf
	.long	0x43e
	.byte	0x1
	.uleb128 0x10
	.long	0xac
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x444
	.uleb128 0x6
	.long	0x30d
	.uleb128 0x2
	.long	.LASF67
	.byte	0xd
	.byte	0x6f
	.long	0x454
	.uleb128 0x8
	.long	0x533
	.long	.LASF67
	.byte	0x68
	.byte	0xd
	.byte	0x6f
	.uleb128 0xb
	.long	.LASF68
	.byte	0x7
	.byte	0x42
	.long	0x626
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF69
	.byte	0x7
	.byte	0x43
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF70
	.byte	0x7
	.byte	0x44
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x12
	.string	"bgr"
	.byte	0x7
	.byte	0x45
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.long	.LASF71
	.byte	0x7
	.byte	0x46
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.long	.LASF72
	.byte	0x7
	.byte	0x47
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.long	.LASF73
	.byte	0x7
	.byte	0x48
	.long	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.long	.LASF74
	.byte	0x7
	.byte	0x49
	.long	0x62c
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.long	.LASF75
	.byte	0x7
	.byte	0x4b
	.long	0x658
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xb
	.long	.LASF76
	.byte	0x7
	.byte	0x4c
	.long	0x674
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xb
	.long	.LASF77
	.byte	0x7
	.byte	0x4d
	.long	0x686
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xb
	.long	.LASF78
	.byte	0x7
	.byte	0x4f
	.long	0x6b6
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xb
	.long	.LASF79
	.byte	0x7
	.byte	0x51
	.long	0x6e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xb
	.long	.LASF80
	.byte	0x7
	.byte	0x52
	.long	0x6fd
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xb
	.long	.LASF81
	.byte	0x7
	.byte	0x54
	.long	0x72d
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.byte	0x0
	.uleb128 0x2
	.long	.LASF82
	.byte	0xd
	.byte	0x73
	.long	0x53e
	.uleb128 0x13
	.long	.LASF82
	.byte	0x1
	.uleb128 0x13
	.long	.LASF83
	.byte	0x1
	.uleb128 0x2
	.long	.LASF84
	.byte	0xd
	.byte	0x78
	.long	0x555
	.uleb128 0x13
	.long	.LASF84
	.byte	0x1
	.uleb128 0x2
	.long	.LASF85
	.byte	0xd
	.byte	0x79
	.long	0x566
	.uleb128 0x14
	.long	0x609
	.long	.LASF85
	.value	0x228
	.byte	0xd
	.byte	0x79
	.uleb128 0xb
	.long	.LASF86
	.byte	0xe
	.byte	0x2f
	.long	0x843
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.string	"bus"
	.byte	0xe
	.byte	0x32
	.long	0x853
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0xb
	.long	.LASF87
	.byte	0xe
	.byte	0x33
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.uleb128 0xb
	.long	.LASF88
	.byte	0xe
	.byte	0x34
	.long	0x859
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.uleb128 0xb
	.long	.LASF89
	.byte	0xe
	.byte	0x35
	.long	0x869
	.byte	0x3
	.byte	0x23
	.uleb128 0x150
	.uleb128 0xb
	.long	.LASF90
	.byte	0xe
	.byte	0x38
	.long	0x879
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f8
	.uleb128 0xb
	.long	.LASF91
	.byte	0xe
	.byte	0x39
	.long	0x87f
	.byte	0x3
	.byte	0x23
	.uleb128 0x200
	.uleb128 0xb
	.long	.LASF92
	.byte	0xe
	.byte	0x3b
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x208
	.uleb128 0x12
	.string	"irq"
	.byte	0xe
	.byte	0x3e
	.long	0x885
	.byte	0x3
	.byte	0x23
	.uleb128 0x210
	.uleb128 0xb
	.long	.LASF93
	.byte	0xe
	.byte	0x41
	.long	0x88b
	.byte	0x3
	.byte	0x23
	.uleb128 0x218
	.byte	0x0
	.uleb128 0x2
	.long	.LASF94
	.byte	0xd
	.byte	0x7b
	.long	0x614
	.uleb128 0x5
	.byte	0x8
	.long	0x61a
	.uleb128 0x13
	.long	.LASF95
	.byte	0x1
	.uleb128 0x5
	.byte	0x8
	.long	0x533
	.uleb128 0x5
	.byte	0x8
	.long	0x30d
	.uleb128 0x5
	.byte	0x8
	.long	0x544
	.uleb128 0xf
	.long	0x652
	.byte	0x1
	.uleb128 0x10
	.long	0x652
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
	.long	0x454
	.uleb128 0x5
	.byte	0x8
	.long	0x632
	.uleb128 0xf
	.long	0x674
	.byte	0x1
	.uleb128 0x10
	.long	0x652
	.uleb128 0x10
	.long	0x3f
	.uleb128 0x10
	.long	0x3f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x65e
	.uleb128 0xf
	.long	0x686
	.byte	0x1
	.uleb128 0x10
	.long	0x652
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x67a
	.uleb128 0xf
	.long	0x6b6
	.byte	0x1
	.uleb128 0x10
	.long	0x652
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
	.long	0x68c
	.uleb128 0xf
	.long	0x6e1
	.byte	0x1
	.uleb128 0x10
	.long	0x652
	.uleb128 0x10
	.long	0x3f
	.uleb128 0x10
	.long	0x3f
	.uleb128 0x10
	.long	0x3f
	.uleb128 0x10
	.long	0x3f
	.uleb128 0x10
	.long	0x323
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x6bc
	.uleb128 0xf
	.long	0x6fd
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
	.long	0x6e7
	.uleb128 0xf
	.long	0x72d
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
	.long	0x626
	.uleb128 0x10
	.long	0x626
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x703
	.uleb128 0x2
	.long	.LASF96
	.byte	0x7
	.byte	0x61
	.long	0x73e
	.uleb128 0x5
	.byte	0x8
	.long	0x432
	.uleb128 0x2
	.long	.LASF97
	.byte	0x7
	.byte	0x62
	.long	0x73e
	.uleb128 0x2
	.long	.LASF98
	.byte	0x7
	.byte	0x63
	.long	0x75a
	.uleb128 0x5
	.byte	0x8
	.long	0x760
	.uleb128 0xf
	.long	0x771
	.byte	0x1
	.uleb128 0x10
	.long	0xac
	.uleb128 0x10
	.long	0x6f
	.byte	0x0
	.uleb128 0x2
	.long	.LASF99
	.byte	0xe
	.byte	0xc
	.long	0x77c
	.uleb128 0xf
	.long	0x797
	.byte	0x1
	.uleb128 0x10
	.long	0x797
	.uleb128 0x10
	.long	0x323
	.uleb128 0x10
	.long	0x323
	.uleb128 0x10
	.long	0x3f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x55b
	.uleb128 0x2
	.long	.LASF100
	.byte	0xe
	.byte	0xe
	.long	0x7a8
	.uleb128 0x11
	.long	0x7c2
	.byte	0x1
	.long	0x323
	.uleb128 0x10
	.long	0x797
	.uleb128 0x10
	.long	0x323
	.uleb128 0x10
	.long	0x3f
	.byte	0x0
	.uleb128 0x2
	.long	.LASF101
	.byte	0xe
	.byte	0x10
	.long	0x7cd
	.uleb128 0xf
	.long	0x7ed
	.byte	0x1
	.uleb128 0x10
	.long	0x797
	.uleb128 0x10
	.long	0x3f
	.uleb128 0x10
	.long	0x323
	.uleb128 0x10
	.long	0x323
	.uleb128 0x10
	.long	0x3f
	.byte	0x0
	.uleb128 0x8
	.long	0x832
	.long	.LASF102
	.byte	0x18
	.byte	0xe
	.byte	0x16
	.uleb128 0xb
	.long	.LASF103
	.byte	0xe
	.byte	0x17
	.long	0x323
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF104
	.byte	0xe
	.byte	0x18
	.long	0x323
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.long	.LASF105
	.byte	0xe
	.byte	0x19
	.long	0x30d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF106
	.byte	0xe
	.byte	0x1a
	.long	0x832
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x7c2
	.uleb128 0x2
	.long	.LASF102
	.byte	0xe
	.byte	0x1b
	.long	0x7ed
	.uleb128 0xc
	.long	0x853
	.long	0x30d
	.uleb128 0xd
	.long	0x61
	.byte	0xff
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x54a
	.uleb128 0xc
	.long	0x869
	.long	0x7a
	.uleb128 0xd
	.long	0x61
	.byte	0x3f
	.byte	0x0
	.uleb128 0xc
	.long	0x879
	.long	0x838
	.uleb128 0xd
	.long	0x61
	.byte	0x6
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x79d
	.uleb128 0x5
	.byte	0x8
	.long	0x771
	.uleb128 0x5
	.byte	0x8
	.long	0x609
	.uleb128 0xc
	.long	0x89b
	.long	0x3f
	.uleb128 0xd
	.long	0x61
	.byte	0x3
	.byte	0x0
	.uleb128 0x15
	.long	0xc6a
	.long	.LASF107
	.long	0x10630
	.byte	0x6
	.byte	0x97
	.uleb128 0xb
	.long	.LASF108
	.byte	0x6
	.byte	0x98
	.long	0x626
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF109
	.byte	0x6
	.byte	0x98
	.long	0x38
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF110
	.byte	0x6
	.byte	0x98
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.long	.LASF111
	.byte	0x6
	.byte	0x98
	.long	0x38
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.long	.LASF112
	.byte	0x6
	.byte	0x98
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.long	.LASF113
	.byte	0x6
	.byte	0x98
	.long	0x339
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.long	.LASF114
	.byte	0x6
	.byte	0x98
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xb
	.long	.LASF115
	.byte	0x6
	.byte	0x98
	.long	0x797
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xb
	.long	.LASF116
	.byte	0x6
	.byte	0x98
	.long	0x323
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xb
	.long	.LASF117
	.byte	0x6
	.byte	0x98
	.long	0x30d
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x12
	.string	"sr"
	.byte	0x6
	.byte	0x98
	.long	0x843
	.byte	0x2
	.byte	0x23
	.uleb128 0x45
	.uleb128 0xb
	.long	.LASF118
	.byte	0x6
	.byte	0x98
	.long	0x30d
	.byte	0x3
	.byte	0x23
	.uleb128 0x145
	.uleb128 0x12
	.string	"gr"
	.byte	0x6
	.byte	0x98
	.long	0x843
	.byte	0x3
	.byte	0x23
	.uleb128 0x146
	.uleb128 0xb
	.long	.LASF119
	.byte	0x6
	.byte	0x98
	.long	0x30d
	.byte	0x3
	.byte	0x23
	.uleb128 0x246
	.uleb128 0x12
	.string	"ar"
	.byte	0x6
	.byte	0x98
	.long	0xc6a
	.byte	0x3
	.byte	0x23
	.uleb128 0x247
	.uleb128 0xb
	.long	.LASF120
	.byte	0x6
	.byte	0x98
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x25c
	.uleb128 0xb
	.long	.LASF121
	.byte	0x6
	.byte	0x98
	.long	0x30d
	.byte	0x3
	.byte	0x23
	.uleb128 0x260
	.uleb128 0x12
	.string	"cr"
	.byte	0x6
	.byte	0x98
	.long	0x843
	.byte	0x3
	.byte	0x23
	.uleb128 0x261
	.uleb128 0x12
	.string	"msr"
	.byte	0x6
	.byte	0x98
	.long	0x30d
	.byte	0x3
	.byte	0x23
	.uleb128 0x361
	.uleb128 0x12
	.string	"fcr"
	.byte	0x6
	.byte	0x98
	.long	0x30d
	.byte	0x3
	.byte	0x23
	.uleb128 0x362
	.uleb128 0xb
	.long	.LASF122
	.byte	0x6
	.byte	0x98
	.long	0x30d
	.byte	0x3
	.byte	0x23
	.uleb128 0x363
	.uleb128 0xb
	.long	.LASF123
	.byte	0x6
	.byte	0x98
	.long	0x30d
	.byte	0x3
	.byte	0x23
	.uleb128 0x364
	.uleb128 0xb
	.long	.LASF124
	.byte	0x6
	.byte	0x98
	.long	0x30d
	.byte	0x3
	.byte	0x23
	.uleb128 0x365
	.uleb128 0xb
	.long	.LASF125
	.byte	0x6
	.byte	0x98
	.long	0x30d
	.byte	0x3
	.byte	0x23
	.uleb128 0x366
	.uleb128 0xb
	.long	.LASF126
	.byte	0x6
	.byte	0x98
	.long	0x30d
	.byte	0x3
	.byte	0x23
	.uleb128 0x367
	.uleb128 0xb
	.long	.LASF127
	.byte	0x6
	.byte	0x98
	.long	0x30d
	.byte	0x3
	.byte	0x23
	.uleb128 0x368
	.uleb128 0xb
	.long	.LASF128
	.byte	0x6
	.byte	0x98
	.long	0x422
	.byte	0x3
	.byte	0x23
	.uleb128 0x369
	.uleb128 0xb
	.long	.LASF129
	.byte	0x6
	.byte	0x98
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x36c
	.uleb128 0xb
	.long	.LASF130
	.byte	0x6
	.byte	0x98
	.long	0xc7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x370
	.uleb128 0xb
	.long	.LASF131
	.byte	0x6
	.byte	0x98
	.long	0xb4
	.byte	0x3
	.byte	0x23
	.uleb128 0x670
	.uleb128 0xb
	.long	.LASF132
	.byte	0x6
	.byte	0x98
	.long	0xca1
	.byte	0x3
	.byte	0x23
	.uleb128 0x678
	.uleb128 0xb
	.long	.LASF133
	.byte	0x6
	.byte	0x98
	.long	0xcc8
	.byte	0x3
	.byte	0x23
	.uleb128 0x680
	.uleb128 0xb
	.long	.LASF134
	.byte	0x6
	.byte	0x98
	.long	0xce4
	.byte	0x3
	.byte	0x23
	.uleb128 0x688
	.uleb128 0xb
	.long	.LASF135
	.byte	0x6
	.byte	0x98
	.long	0x318
	.byte	0x3
	.byte	0x23
	.uleb128 0x690
	.uleb128 0xb
	.long	.LASF136
	.byte	0x6
	.byte	0x98
	.long	0xcea
	.byte	0x3
	.byte	0x23
	.uleb128 0x692
	.uleb128 0xb
	.long	.LASF137
	.byte	0x6
	.byte	0x98
	.long	0x323
	.byte	0x3
	.byte	0x23
	.uleb128 0x6a8
	.uleb128 0xb
	.long	.LASF138
	.byte	0x6
	.byte	0x98
	.long	0x323
	.byte	0x3
	.byte	0x23
	.uleb128 0x6ac
	.uleb128 0xb
	.long	.LASF139
	.byte	0x6
	.byte	0x98
	.long	0x323
	.byte	0x3
	.byte	0x23
	.uleb128 0x6b0
	.uleb128 0x12
	.string	"ds"
	.byte	0x6
	.byte	0x98
	.long	0xcfa
	.byte	0x3
	.byte	0x23
	.uleb128 0x6b8
	.uleb128 0xb
	.long	.LASF140
	.byte	0x6
	.byte	0x98
	.long	0xd00
	.byte	0x3
	.byte	0x23
	.uleb128 0x6c0
	.uleb128 0xb
	.long	.LASF141
	.byte	0x6
	.byte	0x98
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x6c8
	.uleb128 0xb
	.long	.LASF142
	.byte	0x6
	.byte	0x98
	.long	0x30d
	.byte	0x3
	.byte	0x23
	.uleb128 0x6cc
	.uleb128 0xb
	.long	.LASF143
	.byte	0x6
	.byte	0x98
	.long	0x30d
	.byte	0x3
	.byte	0x23
	.uleb128 0x6cd
	.uleb128 0xb
	.long	.LASF144
	.byte	0x6
	.byte	0x98
	.long	0x323
	.byte	0x3
	.byte	0x23
	.uleb128 0x6d0
	.uleb128 0xb
	.long	.LASF145
	.byte	0x6
	.byte	0x98
	.long	0x323
	.byte	0x3
	.byte	0x23
	.uleb128 0x6d4
	.uleb128 0xb
	.long	.LASF146
	.byte	0x6
	.byte	0x98
	.long	0x323
	.byte	0x3
	.byte	0x23
	.uleb128 0x6d8
	.uleb128 0xb
	.long	.LASF147
	.byte	0x6
	.byte	0x98
	.long	0x323
	.byte	0x3
	.byte	0x23
	.uleb128 0x6dc
	.uleb128 0xb
	.long	.LASF148
	.byte	0x6
	.byte	0x98
	.long	0x30d
	.byte	0x3
	.byte	0x23
	.uleb128 0x6e0
	.uleb128 0xb
	.long	.LASF149
	.byte	0x6
	.byte	0x98
	.long	0x30d
	.byte	0x3
	.byte	0x23
	.uleb128 0x6e1
	.uleb128 0xb
	.long	.LASF150
	.byte	0x6
	.byte	0x98
	.long	0x323
	.byte	0x3
	.byte	0x23
	.uleb128 0x6e4
	.uleb128 0xb
	.long	.LASF151
	.byte	0x6
	.byte	0x98
	.long	0x323
	.byte	0x3
	.byte	0x23
	.uleb128 0x6e8
	.uleb128 0xb
	.long	.LASF152
	.byte	0x6
	.byte	0x98
	.long	0x323
	.byte	0x3
	.byte	0x23
	.uleb128 0x6ec
	.uleb128 0xb
	.long	.LASF153
	.byte	0x6
	.byte	0x98
	.long	0x323
	.byte	0x3
	.byte	0x23
	.uleb128 0x6f0
	.uleb128 0xb
	.long	.LASF154
	.byte	0x6
	.byte	0x98
	.long	0x30d
	.byte	0x3
	.byte	0x23
	.uleb128 0x6f4
	.uleb128 0xb
	.long	.LASF155
	.byte	0x6
	.byte	0x98
	.long	0x30d
	.byte	0x3
	.byte	0x23
	.uleb128 0x6f5
	.uleb128 0xb
	.long	.LASF156
	.byte	0x6
	.byte	0x98
	.long	0x323
	.byte	0x3
	.byte	0x23
	.uleb128 0x6f8
	.uleb128 0xb
	.long	.LASF157
	.byte	0x6
	.byte	0x98
	.long	0xd2a
	.byte	0x3
	.byte	0x23
	.uleb128 0x700
	.uleb128 0xb
	.long	.LASF158
	.byte	0x6
	.byte	0x98
	.long	0x733
	.byte	0x3
	.byte	0x23
	.uleb128 0x708
	.uleb128 0xb
	.long	.LASF159
	.byte	0x6
	.byte	0x98
	.long	0x744
	.byte	0x3
	.byte	0x23
	.uleb128 0x710
	.uleb128 0xb
	.long	.LASF160
	.byte	0x6
	.byte	0x98
	.long	0x74f
	.byte	0x3
	.byte	0x23
	.uleb128 0x718
	.uleb128 0xb
	.long	.LASF161
	.byte	0x6
	.byte	0x98
	.long	0xd30
	.byte	0x3
	.byte	0x23
	.uleb128 0x720
	.uleb128 0xb
	.long	.LASF162
	.byte	0x6
	.byte	0x98
	.long	0xd4c
	.byte	0x3
	.byte	0x23
	.uleb128 0x820
	.uleb128 0xb
	.long	.LASF163
	.byte	0x6
	.byte	0x98
	.long	0xd68
	.byte	0x3
	.byte	0x23
	.uleb128 0x828
	.uleb128 0xb
	.long	.LASF164
	.byte	0x6
	.byte	0x98
	.long	0xd6e
	.byte	0x3
	.byte	0x23
	.uleb128 0x830
	.uleb128 0xb
	.long	.LASF165
	.byte	0x6
	.byte	0x98
	.long	0xd7e
	.byte	0x3
	.byte	0x23
	.uleb128 0xc30
	.byte	0x0
	.uleb128 0xc
	.long	0xc7a
	.long	0x30d
	.uleb128 0xd
	.long	0x61
	.byte	0x14
	.byte	0x0
	.uleb128 0xc
	.long	0xc8b
	.long	0x30d
	.uleb128 0x16
	.long	0x61
	.value	0x2ff
	.byte	0x0
	.uleb128 0x11
	.long	0xc9b
	.byte	0x1
	.long	0x3f
	.uleb128 0x10
	.long	0xc9b
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x89b
	.uleb128 0x5
	.byte	0x8
	.long	0xc8b
	.uleb128 0xf
	.long	0xcc2
	.byte	0x1
	.uleb128 0x10
	.long	0xc9b
	.uleb128 0x10
	.long	0xcc2
	.uleb128 0x10
	.long	0xcc2
	.uleb128 0x10
	.long	0xcc2
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x323
	.uleb128 0x5
	.byte	0x8
	.long	0xca7
	.uleb128 0xf
	.long	0xce4
	.byte	0x1
	.uleb128 0x10
	.long	0xc9b
	.uleb128 0x10
	.long	0x4d
	.uleb128 0x10
	.long	0x4d
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xcce
	.uleb128 0xc
	.long	0xcfa
	.long	0x318
	.uleb128 0xd
	.long	0x61
	.byte	0x9
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x449
	.uleb128 0xc
	.long	0xd10
	.long	0x323
	.uleb128 0xd
	.long	0x61
	.byte	0x1
	.byte	0x0
	.uleb128 0x11
	.long	0xd2a
	.byte	0x1
	.long	0x46
	.uleb128 0x10
	.long	0x46
	.uleb128 0x10
	.long	0x46
	.uleb128 0x10
	.long	0x46
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xd10
	.uleb128 0xc
	.long	0xd40
	.long	0x323
	.uleb128 0xd
	.long	0x61
	.byte	0x3f
	.byte	0x0
	.uleb128 0xf
	.long	0xd4c
	.byte	0x1
	.uleb128 0x10
	.long	0xc9b
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xd40
	.uleb128 0xf
	.long	0xd68
	.byte	0x1
	.uleb128 0x10
	.long	0xc9b
	.uleb128 0x10
	.long	0x626
	.uleb128 0x10
	.long	0x3f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xd52
	.uleb128 0xc
	.long	0xd7e
	.long	0x323
	.uleb128 0xd
	.long	0x61
	.byte	0xff
	.byte	0x0
	.uleb128 0xc
	.long	0xd8f
	.long	0x323
	.uleb128 0x16
	.long	0x61
	.value	0x3e7f
	.byte	0x0
	.uleb128 0x2
	.long	.LASF107
	.byte	0x6
	.byte	0x99
	.long	0x89b
	.uleb128 0xe
	.long	.LASF166
	.byte	0x1
	.value	0x32e
	.long	0xda6
	.uleb128 0xf
	.long	0xdcb
	.byte	0x1
	.uleb128 0x10
	.long	0x626
	.uleb128 0x10
	.long	0x3f
	.uleb128 0x10
	.long	0x43e
	.uleb128 0x10
	.long	0x3f
	.uleb128 0x10
	.long	0x323
	.uleb128 0x10
	.long	0x323
	.byte	0x0
	.uleb128 0xe
	.long	.LASF167
	.byte	0x1
	.value	0x331
	.long	0xdd7
	.uleb128 0xf
	.long	0xe01
	.byte	0x1
	.uleb128 0x10
	.long	0x626
	.uleb128 0x10
	.long	0x3f
	.uleb128 0x10
	.long	0x43e
	.uleb128 0x10
	.long	0x3f
	.uleb128 0x10
	.long	0x323
	.uleb128 0x10
	.long	0x323
	.uleb128 0x10
	.long	0x3f
	.byte	0x0
	.uleb128 0xe
	.long	.LASF168
	.byte	0x1
	.value	0x333
	.long	0xe0d
	.uleb128 0xf
	.long	0xe28
	.byte	0x1
	.uleb128 0x10
	.long	0xe28
	.uleb128 0x10
	.long	0x626
	.uleb128 0x10
	.long	0x43e
	.uleb128 0x10
	.long	0x3f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xd8f
	.uleb128 0xe
	.long	.LASF169
	.byte	0x1
	.value	0x54e
	.long	0xd10
	.uleb128 0x17
	.long	0xe6a
	.long	.LASF170
	.long	0x10858
	.byte	0x1
	.value	0x6f2
	.uleb128 0x18
	.string	"dev"
	.byte	0x1
	.value	0x6f3
	.long	0x55b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF171
	.byte	0x1
	.value	0x6f4
	.long	0xd8f
	.byte	0x3
	.byte	0x23
	.uleb128 0x228
	.byte	0x0
	.uleb128 0xe
	.long	.LASF170
	.byte	0x1
	.value	0x6f5
	.long	0xe3a
	.uleb128 0x19
	.long	0xee1
	.long	.LASF173
	.byte	0x1
	.byte	0x99
	.byte	0x1
	.long	0x323
	.quad	.LFB206
	.quad	.LFE206
	.byte	0x1
	.byte	0x57
	.uleb128 0x1a
	.long	.LASF73
	.byte	0x1
	.byte	0x98
	.long	0xac
	.byte	0x1
	.byte	0x55
	.uleb128 0x1a
	.long	.LASF103
	.byte	0x1
	.byte	0x98
	.long	0x323
	.byte	0x1
	.byte	0x54
	.uleb128 0x1b
	.string	"t"
	.byte	0x1
	.byte	0x98
	.long	0x41c
	.byte	0x1
	.byte	0x51
	.uleb128 0x1c
	.string	"s"
	.byte	0x1
	.byte	0x9a
	.long	0xe28
	.uleb128 0x1d
	.string	"val"
	.byte	0x1
	.byte	0x9b
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x1e
	.long	.LASF172
	.byte	0x1
	.byte	0x9b
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x1f
	.long	0xf3d
	.long	.LASF174
	.byte	0x1
	.byte	0xf7
	.byte	0x1
	.quad	.LFB207
	.quad	.LFE207
	.byte	0x1
	.byte	0x57
	.uleb128 0x1a
	.long	.LASF73
	.byte	0x1
	.byte	0xf6
	.long	0xac
	.byte	0x1
	.byte	0x55
	.uleb128 0x1a
	.long	.LASF103
	.byte	0x1
	.byte	0xf6
	.long	0x323
	.byte	0x1
	.byte	0x54
	.uleb128 0x1b
	.string	"val"
	.byte	0x1
	.byte	0xf6
	.long	0x323
	.byte	0x1
	.byte	0x58
	.uleb128 0x1c
	.string	"s"
	.byte	0x1
	.byte	0xf8
	.long	0xe28
	.uleb128 0x1e
	.long	.LASF172
	.byte	0x1
	.byte	0xf9
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x20
	.long	0xfa1
	.long	.LASF175
	.byte	0x1
	.value	0x173
	.byte	0x1
	.long	0x323
	.quad	.LFB208
	.quad	.LFE208
	.byte	0x1
	.byte	0x57
	.uleb128 0x21
	.long	.LASF73
	.byte	0x1
	.value	0x171
	.long	0xac
	.byte	0x1
	.byte	0x55
	.uleb128 0x21
	.long	.LASF103
	.byte	0x1
	.value	0x171
	.long	0x323
	.byte	0x1
	.byte	0x54
	.uleb128 0x22
	.string	"t"
	.byte	0x1
	.value	0x172
	.long	0x41c
	.byte	0x1
	.byte	0x51
	.uleb128 0x23
	.string	"s"
	.byte	0x1
	.value	0x174
	.long	0xe28
	.uleb128 0x24
	.string	"val"
	.byte	0x1
	.value	0x175
	.long	0x323
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x20
	.long	0x1007
	.long	.LASF176
	.byte	0x1
	.value	0x17c
	.byte	0x1
	.long	0x323
	.quad	.LFB209
	.quad	.LFE209
	.byte	0x1
	.byte	0x57
	.uleb128 0x21
	.long	.LASF73
	.byte	0x1
	.value	0x17a
	.long	0xac
	.byte	0x1
	.byte	0x55
	.uleb128 0x21
	.long	.LASF103
	.byte	0x1
	.value	0x17a
	.long	0x323
	.byte	0x1
	.byte	0x54
	.uleb128 0x22
	.string	"t"
	.byte	0x1
	.value	0x17b
	.long	0x41c
	.byte	0x1
	.byte	0x51
	.uleb128 0x24
	.string	"s"
	.byte	0x1
	.value	0x17d
	.long	0xe28
	.byte	0x1
	.byte	0x55
	.uleb128 0x24
	.string	"val"
	.byte	0x1
	.value	0x17e
	.long	0x323
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x25
	.long	0x105b
	.long	.LASF177
	.byte	0x1
	.value	0x19e
	.byte	0x1
	.quad	.LFB210
	.quad	.LFE210
	.byte	0x1
	.byte	0x57
	.uleb128 0x21
	.long	.LASF73
	.byte	0x1
	.value	0x19d
	.long	0xac
	.byte	0x1
	.byte	0x55
	.uleb128 0x21
	.long	.LASF103
	.byte	0x1
	.value	0x19d
	.long	0x323
	.byte	0x1
	.byte	0x54
	.uleb128 0x22
	.string	"val"
	.byte	0x1
	.value	0x19d
	.long	0x323
	.byte	0x1
	.byte	0x51
	.uleb128 0x23
	.string	"s"
	.byte	0x1
	.value	0x19f
	.long	0xe28
	.byte	0x0
	.uleb128 0x25
	.long	0x1111
	.long	.LASF178
	.byte	0x1
	.value	0x1a4
	.byte	0x1
	.quad	.LFB211
	.quad	.LFE211
	.byte	0x1
	.byte	0x57
	.uleb128 0x21
	.long	.LASF73
	.byte	0x1
	.value	0x1a3
	.long	0xac
	.byte	0x1
	.byte	0x53
	.uleb128 0x21
	.long	.LASF103
	.byte	0x1
	.value	0x1a3
	.long	0x323
	.byte	0x1
	.byte	0x54
	.uleb128 0x22
	.string	"val"
	.byte	0x1
	.value	0x1a3
	.long	0x323
	.byte	0x1
	.byte	0x56
	.uleb128 0x23
	.string	"s"
	.byte	0x1
	.value	0x1a5
	.long	0xe28
	.uleb128 0x26
	.long	0x10da
	.long	.Ldebug_ranges0+0x0
	.uleb128 0x23
	.string	"w"
	.byte	0x1
	.value	0x20d
	.long	0x3f
	.uleb128 0x23
	.string	"h"
	.byte	0x1
	.value	0x20d
	.long	0x3f
	.uleb128 0x27
	.long	.LASF144
	.byte	0x1
	.value	0x20d
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.uleb128 0x26
	.long	0x10f0
	.long	.Ldebug_ranges0+0x30
	.uleb128 0x24
	.string	"x"
	.byte	0x1
	.value	0x222
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x28
	.long	.Ldebug_ranges0+0x60
	.uleb128 0x24
	.string	"h"
	.byte	0x1
	.value	0x1d3
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x27
	.long	.LASF142
	.byte	0x1
	.value	0x1d3
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.long	0x1194
	.byte	0x1
	.long	.LASF183
	.byte	0x1
	.value	0x236
	.byte	0x1
	.long	0x323
	.quad	.LFB212
	.quad	.LFE212
	.byte	0x1
	.byte	0x57
	.uleb128 0x21
	.long	.LASF73
	.byte	0x1
	.value	0x235
	.long	0xac
	.byte	0x1
	.byte	0x55
	.uleb128 0x21
	.long	.LASF103
	.byte	0x1
	.value	0x235
	.long	0x339
	.byte	0x1
	.byte	0x54
	.uleb128 0x22
	.string	"tag"
	.byte	0x1
	.value	0x235
	.long	0x41c
	.byte	0x1
	.byte	0x51
	.uleb128 0x23
	.string	"s"
	.byte	0x1
	.value	0x237
	.long	0xe28
	.uleb128 0x27
	.long	.LASF179
	.byte	0x1
	.value	0x238
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.uleb128 0x27
	.long	.LASF180
	.byte	0x1
	.value	0x238
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x24
	.string	"ret"
	.byte	0x1
	.value	0x239
	.long	0x323
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x20
	.long	0x11ee
	.long	.LASF181
	.byte	0x1
	.value	0x26e
	.byte	0x1
	.long	0x323
	.quad	.LFB213
	.quad	.LFE213
	.byte	0x1
	.byte	0x57
	.uleb128 0x21
	.long	.LASF73
	.byte	0x1
	.value	0x26d
	.long	0xac
	.byte	0x1
	.byte	0x5e
	.uleb128 0x21
	.long	.LASF103
	.byte	0x1
	.value	0x26d
	.long	0x339
	.byte	0x1
	.byte	0x53
	.uleb128 0x22
	.string	"tag"
	.byte	0x1
	.value	0x26d
	.long	0x41c
	.byte	0x1
	.byte	0x5d
	.uleb128 0x24
	.string	"v"
	.byte	0x1
	.value	0x26f
	.long	0x323
	.byte	0x1
	.byte	0x5c
	.byte	0x0
	.uleb128 0x20
	.long	0x1248
	.long	.LASF182
	.byte	0x1
	.value	0x27b
	.byte	0x1
	.long	0x323
	.quad	.LFB214
	.quad	.LFE214
	.byte	0x1
	.byte	0x57
	.uleb128 0x21
	.long	.LASF73
	.byte	0x1
	.value	0x27a
	.long	0xac
	.byte	0x1
	.byte	0x5e
	.uleb128 0x21
	.long	.LASF103
	.byte	0x1
	.value	0x27a
	.long	0x339
	.byte	0x1
	.byte	0x5c
	.uleb128 0x22
	.string	"tag"
	.byte	0x1
	.value	0x27a
	.long	0x41c
	.byte	0x1
	.byte	0x5d
	.uleb128 0x24
	.string	"v"
	.byte	0x1
	.value	0x27c
	.long	0x323
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x2a
	.long	0x1373
	.byte	0x1
	.long	.LASF184
	.byte	0x1
	.value	0x28d
	.byte	0x1
	.quad	.LFB215
	.quad	.LFE215
	.byte	0x1
	.byte	0x57
	.uleb128 0x21
	.long	.LASF73
	.byte	0x1
	.value	0x28c
	.long	0xac
	.byte	0x1
	.byte	0x55
	.uleb128 0x21
	.long	.LASF103
	.byte	0x1
	.value	0x28c
	.long	0x339
	.byte	0x1
	.byte	0x54
	.uleb128 0x22
	.string	"val"
	.byte	0x1
	.value	0x28c
	.long	0x323
	.byte	0x1
	.byte	0x58
	.uleb128 0x22
	.string	"tag"
	.byte	0x1
	.value	0x28c
	.long	0x3eb
	.byte	0x1
	.byte	0x52
	.uleb128 0x23
	.string	"s"
	.byte	0x1
	.value	0x28e
	.long	0xe28
	.uleb128 0x27
	.long	.LASF179
	.byte	0x1
	.value	0x28f
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.uleb128 0x27
	.long	.LASF180
	.byte	0x1
	.value	0x28f
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x27
	.long	.LASF185
	.byte	0x1
	.value	0x28f
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.uleb128 0x24
	.string	"b"
	.byte	0x1
	.value	0x28f
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x27
	.long	.LASF186
	.byte	0x1
	.value	0x28f
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.uleb128 0x27
	.long	.LASF187
	.byte	0x1
	.value	0x28f
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x27
	.long	.LASF188
	.byte	0x1
	.value	0x290
	.long	0x323
	.byte	0x1
	.byte	0x51
	.uleb128 0x27
	.long	.LASF189
	.byte	0x1
	.value	0x290
	.long	0x323
	.byte	0x1
	.byte	0x52
	.uleb128 0x27
	.long	.LASF190
	.byte	0x1
	.value	0x290
	.long	0x323
	.byte	0x1
	.byte	0x50
	.uleb128 0x2b
	.long	.LASF406
	.byte	0x1
	.value	0x302
	.quad	.L186
	.uleb128 0x2c
	.long	0x1355
	.long	0x1373
	.quad	.LBB8
	.quad	.LBE8
	.uleb128 0x2d
	.long	0x1381
	.byte	0x0
	.uleb128 0x2e
	.long	0x1373
	.quad	.LBB11
	.quad	.LBE11
	.uleb128 0x2f
	.long	0x1381
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.long	0x138e
	.long	.LASF191
	.byte	0x2
	.value	0x3cb
	.byte	0x1
	.byte	0x3
	.uleb128 0x31
	.long	.LASF103
	.byte	0x2
	.value	0x3ca
	.long	0x344
	.byte	0x0
	.uleb128 0x25
	.long	0x13e6
	.long	.LASF192
	.byte	0x1
	.value	0x313
	.byte	0x1
	.quad	.LFB216
	.quad	.LFE216
	.byte	0x1
	.byte	0x57
	.uleb128 0x21
	.long	.LASF73
	.byte	0x1
	.value	0x312
	.long	0xac
	.byte	0x1
	.byte	0x5e
	.uleb128 0x21
	.long	.LASF103
	.byte	0x1
	.value	0x312
	.long	0x339
	.byte	0x1
	.byte	0x5c
	.uleb128 0x22
	.string	"val"
	.byte	0x1
	.value	0x312
	.long	0x323
	.byte	0x1
	.byte	0x53
	.uleb128 0x22
	.string	"tag"
	.byte	0x1
	.value	0x312
	.long	0x3eb
	.byte	0x1
	.byte	0x5d
	.byte	0x0
	.uleb128 0x25
	.long	0x143e
	.long	.LASF193
	.byte	0x1
	.value	0x31e
	.byte	0x1
	.quad	.LFB217
	.quad	.LFE217
	.byte	0x1
	.byte	0x57
	.uleb128 0x21
	.long	.LASF73
	.byte	0x1
	.value	0x31d
	.long	0xac
	.byte	0x1
	.byte	0x5e
	.uleb128 0x21
	.long	.LASF103
	.byte	0x1
	.value	0x31d
	.long	0x339
	.byte	0x1
	.byte	0x5c
	.uleb128 0x22
	.string	"val"
	.byte	0x1
	.value	0x31d
	.long	0x323
	.byte	0x1
	.byte	0x53
	.uleb128 0x22
	.string	"tag"
	.byte	0x1
	.value	0x31d
	.long	0x3eb
	.byte	0x1
	.byte	0x5d
	.byte	0x0
	.uleb128 0x1f
	.long	0x14eb
	.long	.LASF194
	.byte	0x3
	.byte	0x4a
	.byte	0x1
	.quad	.LFB219
	.quad	.LFE219
	.byte	0x1
	.byte	0x57
	.uleb128 0x1b
	.string	"d"
	.byte	0x3
	.byte	0x47
	.long	0x626
	.byte	0x1
	.byte	0x55
	.uleb128 0x1a
	.long	.LASF69
	.byte	0x3
	.byte	0x47
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x1a
	.long	.LASF195
	.byte	0x3
	.byte	0x48
	.long	0x43e
	.byte	0x1
	.byte	0x5a
	.uleb128 0x1b
	.string	"h"
	.byte	0x3
	.byte	0x48
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x1a
	.long	.LASF196
	.byte	0x3
	.byte	0x49
	.long	0x323
	.byte	0x1
	.byte	0x58
	.uleb128 0x1a
	.long	.LASF197
	.byte	0x3
	.byte	0x49
	.long	0x323
	.byte	0x1
	.byte	0x59
	.uleb128 0x1e
	.long	.LASF198
	.byte	0x3
	.byte	0x4b
	.long	0x323
	.byte	0x1
	.byte	0x51
	.uleb128 0x1e
	.long	.LASF199
	.byte	0x3
	.byte	0x4b
	.long	0x323
	.byte	0x1
	.byte	0x58
	.uleb128 0x2e
	.long	0x14eb
	.quad	.LBB14
	.quad	.LBE14
	.uleb128 0x2d
	.long	0x14f8
	.uleb128 0x2d
	.long	0x1501
	.uleb128 0x2d
	.long	0x150c
	.uleb128 0x2d
	.long	0x1517
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.long	0x1523
	.long	.LASF200
	.byte	0x3
	.byte	0x32
	.byte	0x1
	.byte	0x3
	.uleb128 0x33
	.string	"d"
	.byte	0x3
	.byte	0x2e
	.long	0x626
	.uleb128 0x34
	.long	.LASF198
	.byte	0x3
	.byte	0x2f
	.long	0x323
	.uleb128 0x34
	.long	.LASF199
	.byte	0x3
	.byte	0x30
	.long	0x323
	.uleb128 0x34
	.long	.LASF197
	.byte	0x3
	.byte	0x31
	.long	0x323
	.byte	0x0
	.uleb128 0x1f
	.long	0x1602
	.long	.LASF201
	.byte	0x3
	.byte	0x59
	.byte	0x1
	.quad	.LFB220
	.quad	.LFE220
	.byte	0x1
	.byte	0x57
	.uleb128 0x1b
	.string	"d"
	.byte	0x3
	.byte	0x56
	.long	0x626
	.byte	0x1
	.byte	0x55
	.uleb128 0x1a
	.long	.LASF69
	.byte	0x3
	.byte	0x56
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x1a
	.long	.LASF195
	.byte	0x3
	.byte	0x57
	.long	0x43e
	.byte	0x1
	.byte	0x5b
	.uleb128 0x1b
	.string	"h"
	.byte	0x3
	.byte	0x57
	.long	0x3f
	.byte	0x1
	.byte	0x5a
	.uleb128 0x1a
	.long	.LASF196
	.byte	0x3
	.byte	0x58
	.long	0x323
	.byte	0x1
	.byte	0x58
	.uleb128 0x1a
	.long	.LASF197
	.byte	0x3
	.byte	0x58
	.long	0x323
	.byte	0x1
	.byte	0x59
	.uleb128 0x1e
	.long	.LASF198
	.byte	0x3
	.byte	0x5a
	.long	0x323
	.byte	0x1
	.byte	0x52
	.uleb128 0x1e
	.long	.LASF199
	.byte	0x3
	.byte	0x5a
	.long	0x323
	.byte	0x1
	.byte	0x58
	.uleb128 0x2c
	.long	0x15d5
	.long	0x14eb
	.quad	.LBB16
	.quad	.LBE16
	.uleb128 0x2d
	.long	0x14f8
	.uleb128 0x2f
	.long	0x1501
	.byte	0x1
	.byte	0x51
	.uleb128 0x2d
	.long	0x150c
	.uleb128 0x2d
	.long	0x1517
	.byte	0x0
	.uleb128 0x2e
	.long	0x14eb
	.quad	.LBB17
	.quad	.LBE17
	.uleb128 0x2d
	.long	0x14f8
	.uleb128 0x2f
	.long	0x1501
	.byte	0x1
	.byte	0x51
	.uleb128 0x2d
	.long	0x150c
	.uleb128 0x2d
	.long	0x1517
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
	.long	0x170f
	.long	.LASF202
	.byte	0x3
	.byte	0x6d
	.byte	0x1
	.quad	.LFB221
	.quad	.LFE221
	.byte	0x1
	.byte	0x57
	.uleb128 0x1b
	.string	"d"
	.byte	0x3
	.byte	0x6a
	.long	0x626
	.byte	0x1
	.byte	0x55
	.uleb128 0x1a
	.long	.LASF69
	.byte	0x3
	.byte	0x6a
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x1a
	.long	.LASF195
	.byte	0x3
	.byte	0x6b
	.long	0x43e
	.byte	0x1
	.byte	0x5a
	.uleb128 0x1b
	.string	"h"
	.byte	0x3
	.byte	0x6b
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x1a
	.long	.LASF196
	.byte	0x3
	.byte	0x6c
	.long	0x323
	.byte	0x1
	.byte	0x58
	.uleb128 0x1a
	.long	.LASF197
	.byte	0x3
	.byte	0x6c
	.long	0x323
	.byte	0x1
	.byte	0x59
	.uleb128 0x1a
	.long	.LASF203
	.byte	0x3
	.byte	0x6c
	.long	0x3f
	.byte	0x1
	.byte	0x5b
	.uleb128 0x1e
	.long	.LASF198
	.byte	0x3
	.byte	0x6e
	.long	0x323
	.byte	0x1
	.byte	0x51
	.uleb128 0x1e
	.long	.LASF199
	.byte	0x3
	.byte	0x6e
	.long	0x323
	.byte	0x1
	.byte	0x58
	.uleb128 0x1d
	.string	"v"
	.byte	0x3
	.byte	0x6e
	.long	0x323
	.byte	0x1
	.byte	0x50
	.uleb128 0x2c
	.long	0x16c2
	.long	0x170f
	.quad	.LBB22
	.quad	.LBE22
	.uleb128 0x2d
	.long	0x171c
	.uleb128 0x2f
	.long	0x1725
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x35
	.long	0x16dd
	.quad	.LBB24
	.quad	.LBE24
	.uleb128 0x36
	.long	0x172e
	.byte	0x0
	.uleb128 0x2c
	.long	0x1703
	.long	0x170f
	.quad	.LBB25
	.quad	.LBE25
	.uleb128 0x2f
	.long	0x171c
	.byte	0x1
	.byte	0x51
	.uleb128 0x2d
	.long	0x1725
	.byte	0x0
	.uleb128 0x28
	.long	.Ldebug_ranges0+0x90
	.uleb128 0x36
	.long	0x172e
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.long	0x1739
	.long	.LASF204
	.byte	0x4
	.byte	0x96
	.byte	0x1
	.byte	0x3
	.uleb128 0x33
	.string	"p"
	.byte	0x4
	.byte	0x95
	.long	0xcc2
	.uleb128 0x33
	.string	"v"
	.byte	0x4
	.byte	0x95
	.long	0x323
	.uleb128 0x1c
	.string	"p1"
	.byte	0x4
	.byte	0x97
	.long	0x626
	.byte	0x0
	.uleb128 0x1f
	.long	0x17c4
	.long	.LASF205
	.byte	0x3
	.byte	0x9f
	.byte	0x1
	.quad	.LFB222
	.quad	.LFE222
	.byte	0x1
	.byte	0x57
	.uleb128 0x1b
	.string	"s1"
	.byte	0x3
	.byte	0x9d
	.long	0xe28
	.byte	0x1
	.byte	0x55
	.uleb128 0x1b
	.string	"d"
	.byte	0x3
	.byte	0x9d
	.long	0x626
	.byte	0x1
	.byte	0x54
	.uleb128 0x1b
	.string	"s"
	.byte	0x3
	.byte	0x9e
	.long	0x43e
	.byte	0x1
	.byte	0x59
	.uleb128 0x1a
	.long	.LASF71
	.byte	0x3
	.byte	0x9e
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x1e
	.long	.LASF206
	.byte	0x3
	.byte	0xa0
	.long	0x323
	.byte	0x1
	.byte	0x5b
	.uleb128 0x1e
	.long	.LASF130
	.byte	0x3
	.byte	0xa0
	.long	0xcc2
	.byte	0x1
	.byte	0x58
	.uleb128 0x1e
	.long	.LASF68
	.byte	0x3
	.byte	0xa0
	.long	0x323
	.byte	0x1
	.byte	0x51
	.uleb128 0x1d
	.string	"v"
	.byte	0x3
	.byte	0xa0
	.long	0x323
	.byte	0x1
	.byte	0x55
	.uleb128 0x1d
	.string	"x"
	.byte	0x3
	.byte	0xa1
	.long	0x3f
	.byte	0x1
	.byte	0x5a
	.byte	0x0
	.uleb128 0x1f
	.long	0x184f
	.long	.LASF207
	.byte	0x3
	.byte	0xc9
	.byte	0x1
	.quad	.LFB223
	.quad	.LFE223
	.byte	0x1
	.byte	0x57
	.uleb128 0x1b
	.string	"s1"
	.byte	0x3
	.byte	0xc7
	.long	0xe28
	.byte	0x1
	.byte	0x55
	.uleb128 0x1b
	.string	"d"
	.byte	0x3
	.byte	0xc7
	.long	0x626
	.byte	0x1
	.byte	0x54
	.uleb128 0x1b
	.string	"s"
	.byte	0x3
	.byte	0xc8
	.long	0x43e
	.byte	0x1
	.byte	0x59
	.uleb128 0x1a
	.long	.LASF71
	.byte	0x3
	.byte	0xc8
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x1e
	.long	.LASF206
	.byte	0x3
	.byte	0xca
	.long	0x323
	.byte	0x1
	.byte	0x5b
	.uleb128 0x1e
	.long	.LASF130
	.byte	0x3
	.byte	0xca
	.long	0xcc2
	.byte	0x1
	.byte	0x58
	.uleb128 0x1e
	.long	.LASF68
	.byte	0x3
	.byte	0xca
	.long	0x323
	.byte	0x1
	.byte	0x51
	.uleb128 0x1d
	.string	"v"
	.byte	0x3
	.byte	0xca
	.long	0x323
	.byte	0x1
	.byte	0x55
	.uleb128 0x1d
	.string	"x"
	.byte	0x3
	.byte	0xcb
	.long	0x3f
	.byte	0x1
	.byte	0x5a
	.byte	0x0
	.uleb128 0x1f
	.long	0x18da
	.long	.LASF208
	.byte	0x3
	.byte	0xea
	.byte	0x1
	.quad	.LFB224
	.quad	.LFE224
	.byte	0x1
	.byte	0x57
	.uleb128 0x1b
	.string	"s1"
	.byte	0x3
	.byte	0xe8
	.long	0xe28
	.byte	0x1
	.byte	0x55
	.uleb128 0x1b
	.string	"d"
	.byte	0x3
	.byte	0xe8
	.long	0x626
	.byte	0x1
	.byte	0x58
	.uleb128 0x1b
	.string	"s"
	.byte	0x3
	.byte	0xe9
	.long	0x43e
	.byte	0x1
	.byte	0x5a
	.uleb128 0x1a
	.long	.LASF71
	.byte	0x3
	.byte	0xe9
	.long	0x3f
	.byte	0x1
	.byte	0x5b
	.uleb128 0x1e
	.long	.LASF206
	.byte	0x3
	.byte	0xeb
	.long	0x323
	.byte	0x1
	.byte	0x53
	.uleb128 0x1e
	.long	.LASF68
	.byte	0x3
	.byte	0xeb
	.long	0x323
	.byte	0x1
	.byte	0x51
	.uleb128 0x1d
	.string	"v"
	.byte	0x3
	.byte	0xeb
	.long	0x323
	.byte	0x1
	.byte	0x52
	.uleb128 0x1e
	.long	.LASF130
	.byte	0x3
	.byte	0xeb
	.long	0xcc2
	.byte	0x1
	.byte	0x59
	.uleb128 0x1d
	.string	"x"
	.byte	0x3
	.byte	0xec
	.long	0x3f
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x25
	.long	0x196f
	.long	.LASF209
	.byte	0x3
	.value	0x10a
	.byte	0x1
	.quad	.LFB225
	.quad	.LFE225
	.byte	0x1
	.byte	0x57
	.uleb128 0x22
	.string	"s1"
	.byte	0x3
	.value	0x108
	.long	0xe28
	.byte	0x1
	.byte	0x55
	.uleb128 0x22
	.string	"d"
	.byte	0x3
	.value	0x108
	.long	0x626
	.byte	0x1
	.byte	0x58
	.uleb128 0x22
	.string	"s"
	.byte	0x3
	.value	0x109
	.long	0x43e
	.byte	0x1
	.byte	0x5a
	.uleb128 0x21
	.long	.LASF71
	.byte	0x3
	.value	0x109
	.long	0x3f
	.byte	0x1
	.byte	0x5b
	.uleb128 0x27
	.long	.LASF206
	.byte	0x3
	.value	0x10b
	.long	0x323
	.byte	0x1
	.byte	0x53
	.uleb128 0x27
	.long	.LASF68
	.byte	0x3
	.value	0x10b
	.long	0x323
	.byte	0x1
	.byte	0x51
	.uleb128 0x24
	.string	"v"
	.byte	0x3
	.value	0x10b
	.long	0x323
	.byte	0x1
	.byte	0x52
	.uleb128 0x27
	.long	.LASF130
	.byte	0x3
	.value	0x10b
	.long	0xcc2
	.byte	0x1
	.byte	0x59
	.uleb128 0x24
	.string	"x"
	.byte	0x3
	.value	0x10c
	.long	0x3f
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x25
	.long	0x19dc
	.long	.LASF210
	.byte	0x3
	.value	0x12c
	.byte	0x1
	.quad	.LFB226
	.quad	.LFE226
	.byte	0x1
	.byte	0x57
	.uleb128 0x22
	.string	"s1"
	.byte	0x3
	.value	0x12a
	.long	0xe28
	.byte	0x1
	.byte	0x55
	.uleb128 0x22
	.string	"d"
	.byte	0x3
	.value	0x12a
	.long	0x626
	.byte	0x1
	.byte	0x54
	.uleb128 0x22
	.string	"s"
	.byte	0x3
	.value	0x12b
	.long	0x43e
	.byte	0x1
	.byte	0x51
	.uleb128 0x21
	.long	.LASF71
	.byte	0x3
	.value	0x12b
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x27
	.long	.LASF130
	.byte	0x3
	.value	0x12d
	.long	0xcc2
	.byte	0x1
	.byte	0x55
	.uleb128 0x24
	.string	"x"
	.byte	0x3
	.value	0x12e
	.long	0x3f
	.byte	0x1
	.byte	0x58
	.byte	0x0
	.uleb128 0x25
	.long	0x1a49
	.long	.LASF211
	.byte	0x3
	.value	0x143
	.byte	0x1
	.quad	.LFB227
	.quad	.LFE227
	.byte	0x1
	.byte	0x57
	.uleb128 0x22
	.string	"s1"
	.byte	0x3
	.value	0x141
	.long	0xe28
	.byte	0x1
	.byte	0x55
	.uleb128 0x22
	.string	"d"
	.byte	0x3
	.value	0x141
	.long	0x626
	.byte	0x1
	.byte	0x54
	.uleb128 0x22
	.string	"s"
	.byte	0x3
	.value	0x142
	.long	0x43e
	.byte	0x1
	.byte	0x51
	.uleb128 0x21
	.long	.LASF71
	.byte	0x3
	.value	0x142
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x27
	.long	.LASF130
	.byte	0x3
	.value	0x144
	.long	0xcc2
	.byte	0x1
	.byte	0x55
	.uleb128 0x24
	.string	"x"
	.byte	0x3
	.value	0x145
	.long	0x3f
	.byte	0x1
	.byte	0x58
	.byte	0x0
	.uleb128 0x2a
	.long	0x1b11
	.byte	0x1
	.long	.LASF212
	.byte	0x3
	.value	0x15d
	.byte	0x1
	.quad	.LFB228
	.quad	.LFE228
	.byte	0x1
	.byte	0x57
	.uleb128 0x22
	.string	"d1"
	.byte	0x3
	.value	0x157
	.long	0x626
	.byte	0x1
	.byte	0x55
	.uleb128 0x21
	.long	.LASF213
	.byte	0x3
	.value	0x158
	.long	0x43e
	.byte	0x1
	.byte	0x53
	.uleb128 0x21
	.long	.LASF214
	.byte	0x3
	.value	0x159
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x22
	.string	"w"
	.byte	0x3
	.value	0x159
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x21
	.long	.LASF215
	.byte	0x3
	.value	0x15a
	.long	0x46
	.byte	0x1
	.byte	0x58
	.uleb128 0x21
	.long	.LASF216
	.byte	0x3
	.value	0x15b
	.long	0x46
	.byte	0x1
	.byte	0x59
	.uleb128 0x21
	.long	.LASF217
	.byte	0x3
	.value	0x15c
	.long	0x46
	.byte	0x1
	.byte	0x56
	.uleb128 0x37
	.long	.LASF218
	.byte	0x3
	.value	0x15e
	.long	0x43e
	.uleb128 0x27
	.long	.LASF219
	.byte	0x3
	.value	0x15e
	.long	0x43e
	.byte	0x1
	.byte	0x5b
	.uleb128 0x24
	.string	"x"
	.byte	0x3
	.value	0x15f
	.long	0x3f
	.byte	0x1
	.byte	0x5a
	.uleb128 0x23
	.string	"b0"
	.byte	0x3
	.value	0x15f
	.long	0x3f
	.uleb128 0x23
	.string	"b1"
	.byte	0x3
	.value	0x15f
	.long	0x3f
	.uleb128 0x24
	.string	"d"
	.byte	0x3
	.value	0x160
	.long	0x626
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x25
	.long	0x1bde
	.long	.LASF220
	.byte	0x3
	.value	0x1a3
	.byte	0x1
	.quad	.LFB229
	.quad	.LFE229
	.byte	0x1
	.byte	0x57
	.uleb128 0x22
	.string	"s1"
	.byte	0x3
	.value	0x1a1
	.long	0xe28
	.byte	0x1
	.byte	0x55
	.uleb128 0x22
	.string	"d"
	.byte	0x3
	.value	0x1a1
	.long	0x626
	.byte	0x1
	.byte	0x54
	.uleb128 0x22
	.string	"s"
	.byte	0x3
	.value	0x1a2
	.long	0x43e
	.byte	0x1
	.byte	0x58
	.uleb128 0x21
	.long	.LASF71
	.byte	0x3
	.value	0x1a2
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x24
	.string	"w"
	.byte	0x3
	.value	0x1a7
	.long	0x3f
	.byte	0x1
	.byte	0x55
	.uleb128 0x23
	.string	"v"
	.byte	0x3
	.value	0x1a8
	.long	0x323
	.uleb128 0x23
	.string	"r"
	.byte	0x3
	.value	0x1a8
	.long	0x323
	.uleb128 0x23
	.string	"g"
	.byte	0x3
	.value	0x1a8
	.long	0x323
	.uleb128 0x24
	.string	"b"
	.byte	0x3
	.value	0x1a8
	.long	0x323
	.byte	0x1
	.byte	0x52
	.uleb128 0x2c
	.long	0x1bb8
	.long	0x1bde
	.quad	.LBB30
	.quad	.LBE30
	.uleb128 0x2d
	.long	0x1bf0
	.byte	0x0
	.uleb128 0x2e
	.long	0x1bfd
	.quad	.LBB32
	.quad	.LBE32
	.uleb128 0x2d
	.long	0x1c0e
	.uleb128 0x2d
	.long	0x1c17
	.uleb128 0x2d
	.long	0x1c20
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
	.long	0x1bfd
	.long	.LASF221
	.byte	0x2
	.value	0x155
	.byte	0x1
	.long	0x3f
	.byte	0x3
	.uleb128 0x39
	.string	"ptr"
	.byte	0x2
	.value	0x154
	.long	0xac
	.byte	0x0
	.uleb128 0x3a
	.long	0x1c2a
	.long	.LASF222
	.byte	0x5
	.byte	0x3
	.byte	0x1
	.long	0x46
	.byte	0x3
	.uleb128 0x33
	.string	"r"
	.byte	0x5
	.byte	0x1
	.long	0x46
	.uleb128 0x33
	.string	"g"
	.byte	0x5
	.byte	0x1
	.long	0x46
	.uleb128 0x33
	.string	"b"
	.byte	0x5
	.byte	0x2
	.long	0x46
	.byte	0x0
	.uleb128 0x25
	.long	0x1cf7
	.long	.LASF223
	.byte	0x3
	.value	0x1bc
	.byte	0x1
	.quad	.LFB230
	.quad	.LFE230
	.byte	0x1
	.byte	0x57
	.uleb128 0x22
	.string	"s1"
	.byte	0x3
	.value	0x1ba
	.long	0xe28
	.byte	0x1
	.byte	0x55
	.uleb128 0x22
	.string	"d"
	.byte	0x3
	.value	0x1ba
	.long	0x626
	.byte	0x1
	.byte	0x54
	.uleb128 0x22
	.string	"s"
	.byte	0x3
	.value	0x1bb
	.long	0x43e
	.byte	0x1
	.byte	0x58
	.uleb128 0x21
	.long	.LASF71
	.byte	0x3
	.value	0x1bb
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x24
	.string	"w"
	.byte	0x3
	.value	0x1c0
	.long	0x3f
	.byte	0x1
	.byte	0x55
	.uleb128 0x23
	.string	"v"
	.byte	0x3
	.value	0x1c1
	.long	0x323
	.uleb128 0x23
	.string	"r"
	.byte	0x3
	.value	0x1c1
	.long	0x323
	.uleb128 0x23
	.string	"g"
	.byte	0x3
	.value	0x1c1
	.long	0x323
	.uleb128 0x24
	.string	"b"
	.byte	0x3
	.value	0x1c1
	.long	0x323
	.byte	0x1
	.byte	0x52
	.uleb128 0x2c
	.long	0x1cd1
	.long	0x1bde
	.quad	.LBB38
	.quad	.LBE38
	.uleb128 0x2d
	.long	0x1bf0
	.byte	0x0
	.uleb128 0x2e
	.long	0x1bfd
	.quad	.LBB40
	.quad	.LBE40
	.uleb128 0x2d
	.long	0x1c0e
	.uleb128 0x2d
	.long	0x1c17
	.uleb128 0x2d
	.long	0x1c20
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
	.long	0x1d9f
	.long	.LASF224
	.byte	0x3
	.value	0x1d5
	.byte	0x1
	.quad	.LFB231
	.quad	.LFE231
	.byte	0x1
	.byte	0x57
	.uleb128 0x22
	.string	"s1"
	.byte	0x3
	.value	0x1d3
	.long	0xe28
	.byte	0x1
	.byte	0x55
	.uleb128 0x22
	.string	"d"
	.byte	0x3
	.value	0x1d3
	.long	0x626
	.byte	0x1
	.byte	0x54
	.uleb128 0x22
	.string	"s"
	.byte	0x3
	.value	0x1d4
	.long	0x43e
	.byte	0x1
	.byte	0x55
	.uleb128 0x21
	.long	.LASF71
	.byte	0x3
	.value	0x1d4
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x24
	.string	"w"
	.byte	0x3
	.value	0x1d6
	.long	0x3f
	.byte	0x1
	.byte	0x58
	.uleb128 0x24
	.string	"r"
	.byte	0x3
	.value	0x1d7
	.long	0x323
	.byte	0x1
	.byte	0x50
	.uleb128 0x24
	.string	"g"
	.byte	0x3
	.value	0x1d7
	.long	0x323
	.byte	0x1
	.byte	0x51
	.uleb128 0x24
	.string	"b"
	.byte	0x3
	.value	0x1d7
	.long	0x323
	.byte	0x1
	.byte	0x52
	.uleb128 0x2e
	.long	0x1bfd
	.quad	.LBB46
	.quad	.LBE46
	.uleb128 0x2d
	.long	0x1c0e
	.uleb128 0x2d
	.long	0x1c17
	.uleb128 0x2d
	.long	0x1c20
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
	.long	0x1e47
	.long	.LASF225
	.byte	0x3
	.value	0x1ef
	.byte	0x1
	.quad	.LFB232
	.quad	.LFE232
	.byte	0x1
	.byte	0x57
	.uleb128 0x22
	.string	"s1"
	.byte	0x3
	.value	0x1ed
	.long	0xe28
	.byte	0x1
	.byte	0x55
	.uleb128 0x22
	.string	"d"
	.byte	0x3
	.value	0x1ed
	.long	0x626
	.byte	0x1
	.byte	0x54
	.uleb128 0x22
	.string	"s"
	.byte	0x3
	.value	0x1ee
	.long	0x43e
	.byte	0x1
	.byte	0x55
	.uleb128 0x21
	.long	.LASF71
	.byte	0x3
	.value	0x1ee
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x24
	.string	"w"
	.byte	0x3
	.value	0x1f3
	.long	0x3f
	.byte	0x1
	.byte	0x58
	.uleb128 0x24
	.string	"r"
	.byte	0x3
	.value	0x1f4
	.long	0x323
	.byte	0x1
	.byte	0x50
	.uleb128 0x24
	.string	"g"
	.byte	0x3
	.value	0x1f4
	.long	0x323
	.byte	0x1
	.byte	0x51
	.uleb128 0x24
	.string	"b"
	.byte	0x3
	.value	0x1f4
	.long	0x323
	.byte	0x1
	.byte	0x52
	.uleb128 0x2e
	.long	0x1bfd
	.quad	.LBB48
	.quad	.LBE48
	.uleb128 0x2d
	.long	0x1c0e
	.uleb128 0x2d
	.long	0x1c17
	.uleb128 0x2d
	.long	0x1c20
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
	.long	0x1e9a
	.long	.LASF226
	.byte	0x3
	.value	0x1a3
	.byte	0x1
	.quad	.LFB233
	.quad	.LFE233
	.byte	0x1
	.byte	0x57
	.uleb128 0x22
	.string	"s1"
	.byte	0x3
	.value	0x1a1
	.long	0xe28
	.byte	0x1
	.byte	0x55
	.uleb128 0x22
	.string	"d"
	.byte	0x3
	.value	0x1a1
	.long	0x626
	.byte	0x1
	.byte	0x55
	.uleb128 0x22
	.string	"s"
	.byte	0x3
	.value	0x1a2
	.long	0x43e
	.byte	0x1
	.byte	0x54
	.uleb128 0x21
	.long	.LASF71
	.byte	0x3
	.value	0x1a2
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.uleb128 0x25
	.long	0x1f65
	.long	.LASF227
	.byte	0x3
	.value	0x1bc
	.byte	0x1
	.quad	.LFB234
	.quad	.LFE234
	.byte	0x1
	.byte	0x57
	.uleb128 0x22
	.string	"s1"
	.byte	0x3
	.value	0x1ba
	.long	0xe28
	.byte	0x1
	.byte	0x55
	.uleb128 0x22
	.string	"d"
	.byte	0x3
	.value	0x1ba
	.long	0x626
	.byte	0x1
	.byte	0x54
	.uleb128 0x22
	.string	"s"
	.byte	0x3
	.value	0x1bb
	.long	0x43e
	.byte	0x1
	.byte	0x58
	.uleb128 0x21
	.long	.LASF71
	.byte	0x3
	.value	0x1bb
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x24
	.string	"w"
	.byte	0x3
	.value	0x1c0
	.long	0x3f
	.byte	0x1
	.byte	0x55
	.uleb128 0x23
	.string	"v"
	.byte	0x3
	.value	0x1c1
	.long	0x323
	.uleb128 0x23
	.string	"r"
	.byte	0x3
	.value	0x1c1
	.long	0x323
	.uleb128 0x23
	.string	"g"
	.byte	0x3
	.value	0x1c1
	.long	0x323
	.uleb128 0x23
	.string	"b"
	.byte	0x3
	.value	0x1c1
	.long	0x323
	.uleb128 0x2c
	.long	0x1f3f
	.long	0x1bde
	.quad	.LBB50
	.quad	.LBE50
	.uleb128 0x2d
	.long	0x1bf0
	.byte	0x0
	.uleb128 0x2e
	.long	0x1f65
	.quad	.LBB52
	.quad	.LBE52
	.uleb128 0x2d
	.long	0x1f76
	.uleb128 0x2d
	.long	0x1f7f
	.uleb128 0x2d
	.long	0x1f88
	.byte	0x0
	.byte	0x0
	.uleb128 0x3a
	.long	0x1f92
	.long	.LASF228
	.byte	0x5
	.byte	0x9
	.byte	0x1
	.long	0x46
	.byte	0x3
	.uleb128 0x33
	.string	"r"
	.byte	0x5
	.byte	0x7
	.long	0x46
	.uleb128 0x33
	.string	"g"
	.byte	0x5
	.byte	0x7
	.long	0x46
	.uleb128 0x33
	.string	"b"
	.byte	0x5
	.byte	0x8
	.long	0x46
	.byte	0x0
	.uleb128 0x25
	.long	0x203a
	.long	.LASF229
	.byte	0x3
	.value	0x1d5
	.byte	0x1
	.quad	.LFB235
	.quad	.LFE235
	.byte	0x1
	.byte	0x57
	.uleb128 0x22
	.string	"s1"
	.byte	0x3
	.value	0x1d3
	.long	0xe28
	.byte	0x1
	.byte	0x55
	.uleb128 0x22
	.string	"d"
	.byte	0x3
	.value	0x1d3
	.long	0x626
	.byte	0x1
	.byte	0x54
	.uleb128 0x22
	.string	"s"
	.byte	0x3
	.value	0x1d4
	.long	0x43e
	.byte	0x1
	.byte	0x55
	.uleb128 0x21
	.long	.LASF71
	.byte	0x3
	.value	0x1d4
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x24
	.string	"w"
	.byte	0x3
	.value	0x1d6
	.long	0x3f
	.byte	0x1
	.byte	0x58
	.uleb128 0x24
	.string	"r"
	.byte	0x3
	.value	0x1d7
	.long	0x323
	.byte	0x1
	.byte	0x50
	.uleb128 0x24
	.string	"g"
	.byte	0x3
	.value	0x1d7
	.long	0x323
	.byte	0x1
	.byte	0x51
	.uleb128 0x24
	.string	"b"
	.byte	0x3
	.value	0x1d7
	.long	0x323
	.byte	0x1
	.byte	0x52
	.uleb128 0x2e
	.long	0x1f65
	.quad	.LBB54
	.quad	.LBE54
	.uleb128 0x2d
	.long	0x1f76
	.uleb128 0x2d
	.long	0x1f7f
	.uleb128 0x2d
	.long	0x1f88
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
	.long	0x20e2
	.long	.LASF230
	.byte	0x3
	.value	0x1ef
	.byte	0x1
	.quad	.LFB236
	.quad	.LFE236
	.byte	0x1
	.byte	0x57
	.uleb128 0x22
	.string	"s1"
	.byte	0x3
	.value	0x1ed
	.long	0xe28
	.byte	0x1
	.byte	0x55
	.uleb128 0x22
	.string	"d"
	.byte	0x3
	.value	0x1ed
	.long	0x626
	.byte	0x1
	.byte	0x54
	.uleb128 0x22
	.string	"s"
	.byte	0x3
	.value	0x1ee
	.long	0x43e
	.byte	0x1
	.byte	0x55
	.uleb128 0x21
	.long	.LASF71
	.byte	0x3
	.value	0x1ee
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x24
	.string	"w"
	.byte	0x3
	.value	0x1f3
	.long	0x3f
	.byte	0x1
	.byte	0x58
	.uleb128 0x24
	.string	"r"
	.byte	0x3
	.value	0x1f4
	.long	0x323
	.byte	0x1
	.byte	0x50
	.uleb128 0x24
	.string	"g"
	.byte	0x3
	.value	0x1f4
	.long	0x323
	.byte	0x1
	.byte	0x51
	.uleb128 0x24
	.string	"b"
	.byte	0x3
	.value	0x1f4
	.long	0x323
	.byte	0x1
	.byte	0x52
	.uleb128 0x2e
	.long	0x1f65
	.quad	.LBB56
	.quad	.LBE56
	.uleb128 0x2d
	.long	0x1f76
	.uleb128 0x2d
	.long	0x1f7f
	.uleb128 0x2d
	.long	0x1f88
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
	.long	0x2135
	.long	.LASF231
	.byte	0x3
	.value	0x1a3
	.byte	0x1
	.quad	.LFB237
	.quad	.LFE237
	.byte	0x1
	.byte	0x57
	.uleb128 0x22
	.string	"s1"
	.byte	0x3
	.value	0x1a1
	.long	0xe28
	.byte	0x1
	.byte	0x55
	.uleb128 0x22
	.string	"d"
	.byte	0x3
	.value	0x1a1
	.long	0x626
	.byte	0x1
	.byte	0x55
	.uleb128 0x22
	.string	"s"
	.byte	0x3
	.value	0x1a2
	.long	0x43e
	.byte	0x1
	.byte	0x54
	.uleb128 0x21
	.long	.LASF71
	.byte	0x3
	.value	0x1a2
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.uleb128 0x25
	.long	0x2200
	.long	.LASF232
	.byte	0x3
	.value	0x1bc
	.byte	0x1
	.quad	.LFB238
	.quad	.LFE238
	.byte	0x1
	.byte	0x57
	.uleb128 0x22
	.string	"s1"
	.byte	0x3
	.value	0x1ba
	.long	0xe28
	.byte	0x1
	.byte	0x55
	.uleb128 0x22
	.string	"d"
	.byte	0x3
	.value	0x1ba
	.long	0x626
	.byte	0x1
	.byte	0x54
	.uleb128 0x22
	.string	"s"
	.byte	0x3
	.value	0x1bb
	.long	0x43e
	.byte	0x1
	.byte	0x58
	.uleb128 0x21
	.long	.LASF71
	.byte	0x3
	.value	0x1bb
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x24
	.string	"w"
	.byte	0x3
	.value	0x1c0
	.long	0x3f
	.byte	0x1
	.byte	0x55
	.uleb128 0x23
	.string	"v"
	.byte	0x3
	.value	0x1c1
	.long	0x323
	.uleb128 0x23
	.string	"r"
	.byte	0x3
	.value	0x1c1
	.long	0x323
	.uleb128 0x23
	.string	"g"
	.byte	0x3
	.value	0x1c1
	.long	0x323
	.uleb128 0x23
	.string	"b"
	.byte	0x3
	.value	0x1c1
	.long	0x323
	.uleb128 0x2c
	.long	0x21da
	.long	0x1bde
	.quad	.LBB58
	.quad	.LBE58
	.uleb128 0x2d
	.long	0x1bf0
	.byte	0x0
	.uleb128 0x2e
	.long	0x2200
	.quad	.LBB60
	.quad	.LBE60
	.uleb128 0x2d
	.long	0x2211
	.uleb128 0x2d
	.long	0x221a
	.uleb128 0x2d
	.long	0x2223
	.byte	0x0
	.byte	0x0
	.uleb128 0x3a
	.long	0x222d
	.long	.LASF233
	.byte	0x5
	.byte	0xf
	.byte	0x1
	.long	0x46
	.byte	0x3
	.uleb128 0x33
	.string	"r"
	.byte	0x5
	.byte	0xd
	.long	0x46
	.uleb128 0x33
	.string	"g"
	.byte	0x5
	.byte	0xd
	.long	0x46
	.uleb128 0x33
	.string	"b"
	.byte	0x5
	.byte	0xe
	.long	0x46
	.byte	0x0
	.uleb128 0x25
	.long	0x22d5
	.long	.LASF234
	.byte	0x3
	.value	0x1d5
	.byte	0x1
	.quad	.LFB239
	.quad	.LFE239
	.byte	0x1
	.byte	0x57
	.uleb128 0x22
	.string	"s1"
	.byte	0x3
	.value	0x1d3
	.long	0xe28
	.byte	0x1
	.byte	0x55
	.uleb128 0x22
	.string	"d"
	.byte	0x3
	.value	0x1d3
	.long	0x626
	.byte	0x1
	.byte	0x54
	.uleb128 0x22
	.string	"s"
	.byte	0x3
	.value	0x1d4
	.long	0x43e
	.byte	0x1
	.byte	0x55
	.uleb128 0x21
	.long	.LASF71
	.byte	0x3
	.value	0x1d4
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x24
	.string	"w"
	.byte	0x3
	.value	0x1d6
	.long	0x3f
	.byte	0x1
	.byte	0x58
	.uleb128 0x24
	.string	"r"
	.byte	0x3
	.value	0x1d7
	.long	0x323
	.byte	0x1
	.byte	0x52
	.uleb128 0x24
	.string	"g"
	.byte	0x3
	.value	0x1d7
	.long	0x323
	.byte	0x1
	.byte	0x51
	.uleb128 0x24
	.string	"b"
	.byte	0x3
	.value	0x1d7
	.long	0x323
	.byte	0x1
	.byte	0x50
	.uleb128 0x2e
	.long	0x2200
	.quad	.LBB62
	.quad	.LBE62
	.uleb128 0x2d
	.long	0x2211
	.uleb128 0x2d
	.long	0x221a
	.uleb128 0x2d
	.long	0x2223
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
	.long	0x237d
	.long	.LASF235
	.byte	0x3
	.value	0x1ef
	.byte	0x1
	.quad	.LFB240
	.quad	.LFE240
	.byte	0x1
	.byte	0x57
	.uleb128 0x22
	.string	"s1"
	.byte	0x3
	.value	0x1ed
	.long	0xe28
	.byte	0x1
	.byte	0x55
	.uleb128 0x22
	.string	"d"
	.byte	0x3
	.value	0x1ed
	.long	0x626
	.byte	0x1
	.byte	0x54
	.uleb128 0x22
	.string	"s"
	.byte	0x3
	.value	0x1ee
	.long	0x43e
	.byte	0x1
	.byte	0x55
	.uleb128 0x21
	.long	.LASF71
	.byte	0x3
	.value	0x1ee
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x24
	.string	"w"
	.byte	0x3
	.value	0x1f3
	.long	0x3f
	.byte	0x1
	.byte	0x58
	.uleb128 0x24
	.string	"r"
	.byte	0x3
	.value	0x1f4
	.long	0x323
	.byte	0x1
	.byte	0x52
	.uleb128 0x24
	.string	"g"
	.byte	0x3
	.value	0x1f4
	.long	0x323
	.byte	0x1
	.byte	0x51
	.uleb128 0x24
	.string	"b"
	.byte	0x3
	.value	0x1f4
	.long	0x323
	.byte	0x1
	.byte	0x50
	.uleb128 0x2e
	.long	0x2200
	.quad	.LBB64
	.quad	.LBE64
	.uleb128 0x2d
	.long	0x2211
	.uleb128 0x2d
	.long	0x221a
	.uleb128 0x2d
	.long	0x2223
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
	.long	0x242a
	.long	.LASF236
	.byte	0x3
	.byte	0x4a
	.byte	0x1
	.quad	.LFB242
	.quad	.LFE242
	.byte	0x1
	.byte	0x57
	.uleb128 0x1b
	.string	"d"
	.byte	0x3
	.byte	0x47
	.long	0x626
	.byte	0x1
	.byte	0x55
	.uleb128 0x1a
	.long	.LASF69
	.byte	0x3
	.byte	0x47
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x1a
	.long	.LASF195
	.byte	0x3
	.byte	0x48
	.long	0x43e
	.byte	0x1
	.byte	0x5a
	.uleb128 0x1b
	.string	"h"
	.byte	0x3
	.byte	0x48
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x1a
	.long	.LASF196
	.byte	0x3
	.byte	0x49
	.long	0x323
	.byte	0x1
	.byte	0x58
	.uleb128 0x1a
	.long	.LASF197
	.byte	0x3
	.byte	0x49
	.long	0x323
	.byte	0x1
	.byte	0x59
	.uleb128 0x1e
	.long	.LASF198
	.byte	0x3
	.byte	0x4b
	.long	0x323
	.byte	0x1
	.byte	0x51
	.uleb128 0x1e
	.long	.LASF199
	.byte	0x3
	.byte	0x4b
	.long	0x323
	.byte	0x1
	.byte	0x58
	.uleb128 0x2e
	.long	0x242a
	.quad	.LBB66
	.quad	.LBE66
	.uleb128 0x2d
	.long	0x2437
	.uleb128 0x2d
	.long	0x2440
	.uleb128 0x2d
	.long	0x244b
	.uleb128 0x2d
	.long	0x2456
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.long	0x2462
	.long	.LASF237
	.byte	0x3
	.byte	0x32
	.byte	0x1
	.byte	0x3
	.uleb128 0x33
	.string	"d"
	.byte	0x3
	.byte	0x2e
	.long	0x626
	.uleb128 0x34
	.long	.LASF198
	.byte	0x3
	.byte	0x2f
	.long	0x323
	.uleb128 0x34
	.long	.LASF199
	.byte	0x3
	.byte	0x30
	.long	0x323
	.uleb128 0x34
	.long	.LASF197
	.byte	0x3
	.byte	0x31
	.long	0x323
	.byte	0x0
	.uleb128 0x1f
	.long	0x2543
	.long	.LASF238
	.byte	0x3
	.byte	0x59
	.byte	0x1
	.quad	.LFB243
	.quad	.LFE243
	.byte	0x1
	.byte	0x57
	.uleb128 0x1b
	.string	"d"
	.byte	0x3
	.byte	0x56
	.long	0x626
	.byte	0x1
	.byte	0x55
	.uleb128 0x1a
	.long	.LASF69
	.byte	0x3
	.byte	0x56
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x1a
	.long	.LASF195
	.byte	0x3
	.byte	0x57
	.long	0x43e
	.byte	0x1
	.byte	0x5b
	.uleb128 0x1b
	.string	"h"
	.byte	0x3
	.byte	0x57
	.long	0x3f
	.byte	0x1
	.byte	0x5a
	.uleb128 0x1a
	.long	.LASF196
	.byte	0x3
	.byte	0x58
	.long	0x323
	.byte	0x1
	.byte	0x58
	.uleb128 0x1a
	.long	.LASF197
	.byte	0x3
	.byte	0x58
	.long	0x323
	.byte	0x1
	.byte	0x59
	.uleb128 0x1e
	.long	.LASF198
	.byte	0x3
	.byte	0x5a
	.long	0x323
	.byte	0x1
	.byte	0x52
	.uleb128 0x1e
	.long	.LASF199
	.byte	0x3
	.byte	0x5a
	.long	0x323
	.byte	0x1
	.byte	0x58
	.uleb128 0x2c
	.long	0x2516
	.long	0x242a
	.quad	.LBB68
	.quad	.LBE68
	.uleb128 0x2f
	.long	0x2437
	.byte	0x1
	.byte	0x54
	.uleb128 0x2f
	.long	0x2440
	.byte	0x1
	.byte	0x51
	.uleb128 0x2d
	.long	0x244b
	.uleb128 0x2d
	.long	0x2456
	.byte	0x0
	.uleb128 0x2e
	.long	0x242a
	.quad	.LBB69
	.quad	.LBE69
	.uleb128 0x2d
	.long	0x2437
	.uleb128 0x2f
	.long	0x2440
	.byte	0x1
	.byte	0x51
	.uleb128 0x2d
	.long	0x244b
	.uleb128 0x2d
	.long	0x2456
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
	.long	0x26d2
	.long	.LASF239
	.byte	0x3
	.byte	0x6d
	.byte	0x1
	.quad	.LFB244
	.quad	.LFE244
	.byte	0x1
	.byte	0x57
	.uleb128 0x1b
	.string	"d"
	.byte	0x3
	.byte	0x6a
	.long	0x626
	.byte	0x1
	.byte	0x55
	.uleb128 0x1a
	.long	.LASF69
	.byte	0x3
	.byte	0x6a
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x1a
	.long	.LASF195
	.byte	0x3
	.byte	0x6b
	.long	0x43e
	.byte	0x1
	.byte	0x5b
	.uleb128 0x1b
	.string	"h"
	.byte	0x3
	.byte	0x6b
	.long	0x3f
	.byte	0x1
	.byte	0x5a
	.uleb128 0x1a
	.long	.LASF196
	.byte	0x3
	.byte	0x6c
	.long	0x323
	.byte	0x1
	.byte	0x58
	.uleb128 0x1a
	.long	.LASF197
	.byte	0x3
	.byte	0x6c
	.long	0x323
	.byte	0x1
	.byte	0x59
	.uleb128 0x1a
	.long	.LASF203
	.byte	0x3
	.byte	0x6c
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.uleb128 0x1e
	.long	.LASF198
	.byte	0x3
	.byte	0x6e
	.long	0x323
	.byte	0x1
	.byte	0x52
	.uleb128 0x1e
	.long	.LASF199
	.byte	0x3
	.byte	0x6e
	.long	0x323
	.byte	0x1
	.byte	0x58
	.uleb128 0x1d
	.string	"v"
	.byte	0x3
	.byte	0x6e
	.long	0x323
	.byte	0x1
	.byte	0x50
	.uleb128 0x2c
	.long	0x2605
	.long	0x170f
	.quad	.LBB79
	.quad	.LBE79
	.uleb128 0x2f
	.long	0x171c
	.byte	0x1
	.byte	0x51
	.uleb128 0x2f
	.long	0x1725
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x2c
	.long	0x2642
	.long	0x170f
	.quad	.LBB80
	.quad	.LBE80
	.uleb128 0x2d
	.long	0x171c
	.uleb128 0x2f
	.long	0x1725
	.byte	0x1
	.byte	0x50
	.uleb128 0x3b
	.quad	.LBB81
	.quad	.LBE81
	.uleb128 0x36
	.long	0x172e
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
	.long	0x265d
	.quad	.LBB83
	.quad	.LBE83
	.uleb128 0x36
	.long	0x172e
	.byte	0x0
	.uleb128 0x2c
	.long	0x2685
	.long	0x170f
	.quad	.LBB84
	.quad	.LBE84
	.uleb128 0x2f
	.long	0x171c
	.byte	0x1
	.byte	0x51
	.uleb128 0x2f
	.long	0x1725
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x35
	.long	0x26a0
	.quad	.LBB86
	.quad	.LBE86
	.uleb128 0x36
	.long	0x172e
	.byte	0x0
	.uleb128 0x2c
	.long	0x26c6
	.long	0x170f
	.quad	.LBB87
	.quad	.LBE87
	.uleb128 0x2f
	.long	0x171c
	.byte	0x1
	.byte	0x52
	.uleb128 0x2d
	.long	0x1725
	.byte	0x0
	.uleb128 0x28
	.long	.Ldebug_ranges0+0xc0
	.uleb128 0x36
	.long	0x172e
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
	.long	0x275d
	.long	.LASF240
	.byte	0x3
	.byte	0x9f
	.byte	0x1
	.quad	.LFB245
	.quad	.LFE245
	.byte	0x1
	.byte	0x57
	.uleb128 0x1b
	.string	"s1"
	.byte	0x3
	.byte	0x9d
	.long	0xe28
	.byte	0x1
	.byte	0x55
	.uleb128 0x1b
	.string	"d"
	.byte	0x3
	.byte	0x9d
	.long	0x626
	.byte	0x1
	.byte	0x54
	.uleb128 0x1b
	.string	"s"
	.byte	0x3
	.byte	0x9e
	.long	0x43e
	.byte	0x1
	.byte	0x59
	.uleb128 0x1a
	.long	.LASF71
	.byte	0x3
	.byte	0x9e
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x1e
	.long	.LASF206
	.byte	0x3
	.byte	0xa0
	.long	0x323
	.byte	0x1
	.byte	0x5b
	.uleb128 0x1e
	.long	.LASF130
	.byte	0x3
	.byte	0xa0
	.long	0xcc2
	.byte	0x1
	.byte	0x58
	.uleb128 0x1e
	.long	.LASF68
	.byte	0x3
	.byte	0xa0
	.long	0x323
	.byte	0x1
	.byte	0x51
	.uleb128 0x1d
	.string	"v"
	.byte	0x3
	.byte	0xa0
	.long	0x323
	.byte	0x1
	.byte	0x55
	.uleb128 0x1d
	.string	"x"
	.byte	0x3
	.byte	0xa1
	.long	0x3f
	.byte	0x1
	.byte	0x5a
	.byte	0x0
	.uleb128 0x1f
	.long	0x27e8
	.long	.LASF241
	.byte	0x3
	.byte	0xc9
	.byte	0x1
	.quad	.LFB246
	.quad	.LFE246
	.byte	0x1
	.byte	0x57
	.uleb128 0x1b
	.string	"s1"
	.byte	0x3
	.byte	0xc7
	.long	0xe28
	.byte	0x1
	.byte	0x55
	.uleb128 0x1b
	.string	"d"
	.byte	0x3
	.byte	0xc7
	.long	0x626
	.byte	0x1
	.byte	0x54
	.uleb128 0x1b
	.string	"s"
	.byte	0x3
	.byte	0xc8
	.long	0x43e
	.byte	0x1
	.byte	0x59
	.uleb128 0x1a
	.long	.LASF71
	.byte	0x3
	.byte	0xc8
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x1e
	.long	.LASF206
	.byte	0x3
	.byte	0xca
	.long	0x323
	.byte	0x1
	.byte	0x5b
	.uleb128 0x1e
	.long	.LASF130
	.byte	0x3
	.byte	0xca
	.long	0xcc2
	.byte	0x1
	.byte	0x58
	.uleb128 0x1e
	.long	.LASF68
	.byte	0x3
	.byte	0xca
	.long	0x323
	.byte	0x1
	.byte	0x51
	.uleb128 0x1d
	.string	"v"
	.byte	0x3
	.byte	0xca
	.long	0x323
	.byte	0x1
	.byte	0x55
	.uleb128 0x1d
	.string	"x"
	.byte	0x3
	.byte	0xcb
	.long	0x3f
	.byte	0x1
	.byte	0x5a
	.byte	0x0
	.uleb128 0x1f
	.long	0x2873
	.long	.LASF242
	.byte	0x3
	.byte	0xea
	.byte	0x1
	.quad	.LFB247
	.quad	.LFE247
	.byte	0x1
	.byte	0x57
	.uleb128 0x1b
	.string	"s1"
	.byte	0x3
	.byte	0xe8
	.long	0xe28
	.byte	0x1
	.byte	0x55
	.uleb128 0x1b
	.string	"d"
	.byte	0x3
	.byte	0xe8
	.long	0x626
	.byte	0x1
	.byte	0x58
	.uleb128 0x1b
	.string	"s"
	.byte	0x3
	.byte	0xe9
	.long	0x43e
	.byte	0x1
	.byte	0x5a
	.uleb128 0x1a
	.long	.LASF71
	.byte	0x3
	.byte	0xe9
	.long	0x3f
	.byte	0x1
	.byte	0x5b
	.uleb128 0x1e
	.long	.LASF206
	.byte	0x3
	.byte	0xeb
	.long	0x323
	.byte	0x1
	.byte	0x53
	.uleb128 0x1e
	.long	.LASF68
	.byte	0x3
	.byte	0xeb
	.long	0x323
	.byte	0x1
	.byte	0x51
	.uleb128 0x1d
	.string	"v"
	.byte	0x3
	.byte	0xeb
	.long	0x323
	.byte	0x1
	.byte	0x52
	.uleb128 0x1e
	.long	.LASF130
	.byte	0x3
	.byte	0xeb
	.long	0xcc2
	.byte	0x1
	.byte	0x59
	.uleb128 0x1d
	.string	"x"
	.byte	0x3
	.byte	0xec
	.long	0x3f
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x25
	.long	0x2908
	.long	.LASF243
	.byte	0x3
	.value	0x10a
	.byte	0x1
	.quad	.LFB248
	.quad	.LFE248
	.byte	0x1
	.byte	0x57
	.uleb128 0x22
	.string	"s1"
	.byte	0x3
	.value	0x108
	.long	0xe28
	.byte	0x1
	.byte	0x55
	.uleb128 0x22
	.string	"d"
	.byte	0x3
	.value	0x108
	.long	0x626
	.byte	0x1
	.byte	0x58
	.uleb128 0x22
	.string	"s"
	.byte	0x3
	.value	0x109
	.long	0x43e
	.byte	0x1
	.byte	0x5a
	.uleb128 0x21
	.long	.LASF71
	.byte	0x3
	.value	0x109
	.long	0x3f
	.byte	0x1
	.byte	0x5b
	.uleb128 0x27
	.long	.LASF206
	.byte	0x3
	.value	0x10b
	.long	0x323
	.byte	0x1
	.byte	0x53
	.uleb128 0x27
	.long	.LASF68
	.byte	0x3
	.value	0x10b
	.long	0x323
	.byte	0x1
	.byte	0x51
	.uleb128 0x24
	.string	"v"
	.byte	0x3
	.value	0x10b
	.long	0x323
	.byte	0x1
	.byte	0x52
	.uleb128 0x27
	.long	.LASF130
	.byte	0x3
	.value	0x10b
	.long	0xcc2
	.byte	0x1
	.byte	0x59
	.uleb128 0x24
	.string	"x"
	.byte	0x3
	.value	0x10c
	.long	0x3f
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x25
	.long	0x2975
	.long	.LASF244
	.byte	0x3
	.value	0x12c
	.byte	0x1
	.quad	.LFB249
	.quad	.LFE249
	.byte	0x1
	.byte	0x57
	.uleb128 0x22
	.string	"s1"
	.byte	0x3
	.value	0x12a
	.long	0xe28
	.byte	0x1
	.byte	0x55
	.uleb128 0x22
	.string	"d"
	.byte	0x3
	.value	0x12a
	.long	0x626
	.byte	0x1
	.byte	0x54
	.uleb128 0x22
	.string	"s"
	.byte	0x3
	.value	0x12b
	.long	0x43e
	.byte	0x1
	.byte	0x51
	.uleb128 0x21
	.long	.LASF71
	.byte	0x3
	.value	0x12b
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x27
	.long	.LASF130
	.byte	0x3
	.value	0x12d
	.long	0xcc2
	.byte	0x1
	.byte	0x55
	.uleb128 0x24
	.string	"x"
	.byte	0x3
	.value	0x12e
	.long	0x3f
	.byte	0x1
	.byte	0x58
	.byte	0x0
	.uleb128 0x25
	.long	0x29e2
	.long	.LASF245
	.byte	0x3
	.value	0x143
	.byte	0x1
	.quad	.LFB250
	.quad	.LFE250
	.byte	0x1
	.byte	0x57
	.uleb128 0x22
	.string	"s1"
	.byte	0x3
	.value	0x141
	.long	0xe28
	.byte	0x1
	.byte	0x55
	.uleb128 0x22
	.string	"d"
	.byte	0x3
	.value	0x141
	.long	0x626
	.byte	0x1
	.byte	0x54
	.uleb128 0x22
	.string	"s"
	.byte	0x3
	.value	0x142
	.long	0x43e
	.byte	0x1
	.byte	0x51
	.uleb128 0x21
	.long	.LASF71
	.byte	0x3
	.value	0x142
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x27
	.long	.LASF130
	.byte	0x3
	.value	0x144
	.long	0xcc2
	.byte	0x1
	.byte	0x55
	.uleb128 0x24
	.string	"x"
	.byte	0x3
	.value	0x145
	.long	0x3f
	.byte	0x1
	.byte	0x58
	.byte	0x0
	.uleb128 0x2a
	.long	0x2aaa
	.byte	0x1
	.long	.LASF246
	.byte	0x3
	.value	0x15d
	.byte	0x1
	.quad	.LFB251
	.quad	.LFE251
	.byte	0x1
	.byte	0x57
	.uleb128 0x22
	.string	"d1"
	.byte	0x3
	.value	0x157
	.long	0x626
	.byte	0x1
	.byte	0x55
	.uleb128 0x21
	.long	.LASF213
	.byte	0x3
	.value	0x158
	.long	0x43e
	.byte	0x1
	.byte	0x53
	.uleb128 0x21
	.long	.LASF214
	.byte	0x3
	.value	0x159
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x22
	.string	"w"
	.byte	0x3
	.value	0x159
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x21
	.long	.LASF215
	.byte	0x3
	.value	0x15a
	.long	0x46
	.byte	0x1
	.byte	0x58
	.uleb128 0x21
	.long	.LASF216
	.byte	0x3
	.value	0x15b
	.long	0x46
	.byte	0x1
	.byte	0x59
	.uleb128 0x21
	.long	.LASF217
	.byte	0x3
	.value	0x15c
	.long	0x46
	.byte	0x1
	.byte	0x56
	.uleb128 0x37
	.long	.LASF218
	.byte	0x3
	.value	0x15e
	.long	0x43e
	.uleb128 0x27
	.long	.LASF219
	.byte	0x3
	.value	0x15e
	.long	0x43e
	.byte	0x1
	.byte	0x5b
	.uleb128 0x24
	.string	"x"
	.byte	0x3
	.value	0x15f
	.long	0x3f
	.byte	0x1
	.byte	0x5a
	.uleb128 0x23
	.string	"b0"
	.byte	0x3
	.value	0x15f
	.long	0x3f
	.uleb128 0x23
	.string	"b1"
	.byte	0x3
	.value	0x15f
	.long	0x3f
	.uleb128 0x24
	.string	"d"
	.byte	0x3
	.value	0x160
	.long	0x626
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x25
	.long	0x2b75
	.long	.LASF247
	.byte	0x3
	.value	0x1a3
	.byte	0x1
	.quad	.LFB252
	.quad	.LFE252
	.byte	0x1
	.byte	0x57
	.uleb128 0x22
	.string	"s1"
	.byte	0x3
	.value	0x1a1
	.long	0xe28
	.byte	0x1
	.byte	0x55
	.uleb128 0x22
	.string	"d"
	.byte	0x3
	.value	0x1a1
	.long	0x626
	.byte	0x1
	.byte	0x54
	.uleb128 0x22
	.string	"s"
	.byte	0x3
	.value	0x1a2
	.long	0x43e
	.byte	0x1
	.byte	0x58
	.uleb128 0x21
	.long	.LASF71
	.byte	0x3
	.value	0x1a2
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x24
	.string	"w"
	.byte	0x3
	.value	0x1a7
	.long	0x3f
	.byte	0x1
	.byte	0x55
	.uleb128 0x23
	.string	"v"
	.byte	0x3
	.value	0x1a8
	.long	0x323
	.uleb128 0x23
	.string	"r"
	.byte	0x3
	.value	0x1a8
	.long	0x323
	.uleb128 0x23
	.string	"g"
	.byte	0x3
	.value	0x1a8
	.long	0x323
	.uleb128 0x23
	.string	"b"
	.byte	0x3
	.value	0x1a8
	.long	0x323
	.uleb128 0x2c
	.long	0x2b4f
	.long	0x1bde
	.quad	.LBB92
	.quad	.LBE92
	.uleb128 0x2d
	.long	0x1bf0
	.byte	0x0
	.uleb128 0x2e
	.long	0x2b75
	.quad	.LBB94
	.quad	.LBE94
	.uleb128 0x2d
	.long	0x2b86
	.uleb128 0x2d
	.long	0x2b8f
	.uleb128 0x2d
	.long	0x2b98
	.byte	0x0
	.byte	0x0
	.uleb128 0x3a
	.long	0x2ba2
	.long	.LASF248
	.byte	0x5
	.byte	0x15
	.byte	0x1
	.long	0x46
	.byte	0x3
	.uleb128 0x33
	.string	"r"
	.byte	0x5
	.byte	0x13
	.long	0x46
	.uleb128 0x33
	.string	"g"
	.byte	0x5
	.byte	0x13
	.long	0x46
	.uleb128 0x33
	.string	"b"
	.byte	0x5
	.byte	0x14
	.long	0x46
	.byte	0x0
	.uleb128 0x25
	.long	0x2bf5
	.long	.LASF249
	.byte	0x3
	.value	0x1bc
	.byte	0x1
	.quad	.LFB253
	.quad	.LFE253
	.byte	0x1
	.byte	0x57
	.uleb128 0x22
	.string	"s1"
	.byte	0x3
	.value	0x1ba
	.long	0xe28
	.byte	0x1
	.byte	0x55
	.uleb128 0x22
	.string	"d"
	.byte	0x3
	.value	0x1ba
	.long	0x626
	.byte	0x1
	.byte	0x55
	.uleb128 0x22
	.string	"s"
	.byte	0x3
	.value	0x1bb
	.long	0x43e
	.byte	0x1
	.byte	0x54
	.uleb128 0x21
	.long	.LASF71
	.byte	0x3
	.value	0x1bb
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.uleb128 0x25
	.long	0x2c9d
	.long	.LASF250
	.byte	0x3
	.value	0x1d5
	.byte	0x1
	.quad	.LFB254
	.quad	.LFE254
	.byte	0x1
	.byte	0x57
	.uleb128 0x22
	.string	"s1"
	.byte	0x3
	.value	0x1d3
	.long	0xe28
	.byte	0x1
	.byte	0x55
	.uleb128 0x22
	.string	"d"
	.byte	0x3
	.value	0x1d3
	.long	0x626
	.byte	0x1
	.byte	0x54
	.uleb128 0x22
	.string	"s"
	.byte	0x3
	.value	0x1d4
	.long	0x43e
	.byte	0x1
	.byte	0x55
	.uleb128 0x21
	.long	.LASF71
	.byte	0x3
	.value	0x1d4
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x24
	.string	"w"
	.byte	0x3
	.value	0x1d6
	.long	0x3f
	.byte	0x1
	.byte	0x58
	.uleb128 0x24
	.string	"r"
	.byte	0x3
	.value	0x1d7
	.long	0x323
	.byte	0x1
	.byte	0x50
	.uleb128 0x24
	.string	"g"
	.byte	0x3
	.value	0x1d7
	.long	0x323
	.byte	0x1
	.byte	0x51
	.uleb128 0x24
	.string	"b"
	.byte	0x3
	.value	0x1d7
	.long	0x323
	.byte	0x1
	.byte	0x52
	.uleb128 0x2e
	.long	0x2b75
	.quad	.LBB96
	.quad	.LBE96
	.uleb128 0x2d
	.long	0x2b86
	.uleb128 0x2d
	.long	0x2b8f
	.uleb128 0x2d
	.long	0x2b98
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
	.long	0x2d45
	.long	.LASF251
	.byte	0x3
	.value	0x1ef
	.byte	0x1
	.quad	.LFB255
	.quad	.LFE255
	.byte	0x1
	.byte	0x57
	.uleb128 0x22
	.string	"s1"
	.byte	0x3
	.value	0x1ed
	.long	0xe28
	.byte	0x1
	.byte	0x55
	.uleb128 0x22
	.string	"d"
	.byte	0x3
	.value	0x1ed
	.long	0x626
	.byte	0x1
	.byte	0x54
	.uleb128 0x22
	.string	"s"
	.byte	0x3
	.value	0x1ee
	.long	0x43e
	.byte	0x1
	.byte	0x55
	.uleb128 0x21
	.long	.LASF71
	.byte	0x3
	.value	0x1ee
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x24
	.string	"w"
	.byte	0x3
	.value	0x1f3
	.long	0x3f
	.byte	0x1
	.byte	0x58
	.uleb128 0x24
	.string	"r"
	.byte	0x3
	.value	0x1f4
	.long	0x323
	.byte	0x1
	.byte	0x50
	.uleb128 0x24
	.string	"g"
	.byte	0x3
	.value	0x1f4
	.long	0x323
	.byte	0x1
	.byte	0x51
	.uleb128 0x24
	.string	"b"
	.byte	0x3
	.value	0x1f4
	.long	0x323
	.byte	0x1
	.byte	0x52
	.uleb128 0x2e
	.long	0x2b75
	.quad	.LBB98
	.quad	.LBE98
	.uleb128 0x2d
	.long	0x2b86
	.uleb128 0x2d
	.long	0x2b8f
	.uleb128 0x2d
	.long	0x2b98
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
	.long	0x2e12
	.long	.LASF252
	.byte	0x3
	.value	0x1a3
	.byte	0x1
	.quad	.LFB256
	.quad	.LFE256
	.byte	0x1
	.byte	0x57
	.uleb128 0x22
	.string	"s1"
	.byte	0x3
	.value	0x1a1
	.long	0xe28
	.byte	0x1
	.byte	0x55
	.uleb128 0x22
	.string	"d"
	.byte	0x3
	.value	0x1a1
	.long	0x626
	.byte	0x1
	.byte	0x54
	.uleb128 0x22
	.string	"s"
	.byte	0x3
	.value	0x1a2
	.long	0x43e
	.byte	0x1
	.byte	0x58
	.uleb128 0x21
	.long	.LASF71
	.byte	0x3
	.value	0x1a2
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x24
	.string	"w"
	.byte	0x3
	.value	0x1a7
	.long	0x3f
	.byte	0x1
	.byte	0x55
	.uleb128 0x23
	.string	"v"
	.byte	0x3
	.value	0x1a8
	.long	0x323
	.uleb128 0x24
	.string	"r"
	.byte	0x3
	.value	0x1a8
	.long	0x323
	.byte	0x1
	.byte	0x52
	.uleb128 0x23
	.string	"g"
	.byte	0x3
	.value	0x1a8
	.long	0x323
	.uleb128 0x23
	.string	"b"
	.byte	0x3
	.value	0x1a8
	.long	0x323
	.uleb128 0x2c
	.long	0x2dec
	.long	0x1bde
	.quad	.LBB100
	.quad	.LBE100
	.uleb128 0x2d
	.long	0x1bf0
	.byte	0x0
	.uleb128 0x2e
	.long	0x2e12
	.quad	.LBB102
	.quad	.LBE102
	.uleb128 0x2d
	.long	0x2e23
	.uleb128 0x2d
	.long	0x2e2c
	.uleb128 0x2d
	.long	0x2e35
	.byte	0x0
	.byte	0x0
	.uleb128 0x3a
	.long	0x2e3f
	.long	.LASF253
	.byte	0x5
	.byte	0x1b
	.byte	0x1
	.long	0x46
	.byte	0x3
	.uleb128 0x33
	.string	"r"
	.byte	0x5
	.byte	0x19
	.long	0x46
	.uleb128 0x33
	.string	"g"
	.byte	0x5
	.byte	0x19
	.long	0x46
	.uleb128 0x33
	.string	"b"
	.byte	0x5
	.byte	0x1a
	.long	0x46
	.byte	0x0
	.uleb128 0x25
	.long	0x2e92
	.long	.LASF254
	.byte	0x3
	.value	0x1bc
	.byte	0x1
	.quad	.LFB257
	.quad	.LFE257
	.byte	0x1
	.byte	0x57
	.uleb128 0x22
	.string	"s1"
	.byte	0x3
	.value	0x1ba
	.long	0xe28
	.byte	0x1
	.byte	0x55
	.uleb128 0x22
	.string	"d"
	.byte	0x3
	.value	0x1ba
	.long	0x626
	.byte	0x1
	.byte	0x55
	.uleb128 0x22
	.string	"s"
	.byte	0x3
	.value	0x1bb
	.long	0x43e
	.byte	0x1
	.byte	0x54
	.uleb128 0x21
	.long	.LASF71
	.byte	0x3
	.value	0x1bb
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.uleb128 0x25
	.long	0x2f3a
	.long	.LASF255
	.byte	0x3
	.value	0x1d5
	.byte	0x1
	.quad	.LFB258
	.quad	.LFE258
	.byte	0x1
	.byte	0x57
	.uleb128 0x22
	.string	"s1"
	.byte	0x3
	.value	0x1d3
	.long	0xe28
	.byte	0x1
	.byte	0x55
	.uleb128 0x22
	.string	"d"
	.byte	0x3
	.value	0x1d3
	.long	0x626
	.byte	0x1
	.byte	0x54
	.uleb128 0x22
	.string	"s"
	.byte	0x3
	.value	0x1d4
	.long	0x43e
	.byte	0x1
	.byte	0x55
	.uleb128 0x21
	.long	.LASF71
	.byte	0x3
	.value	0x1d4
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x24
	.string	"w"
	.byte	0x3
	.value	0x1d6
	.long	0x3f
	.byte	0x1
	.byte	0x58
	.uleb128 0x24
	.string	"r"
	.byte	0x3
	.value	0x1d7
	.long	0x323
	.byte	0x1
	.byte	0x52
	.uleb128 0x24
	.string	"g"
	.byte	0x3
	.value	0x1d7
	.long	0x323
	.byte	0x1
	.byte	0x51
	.uleb128 0x24
	.string	"b"
	.byte	0x3
	.value	0x1d7
	.long	0x323
	.byte	0x1
	.byte	0x50
	.uleb128 0x2e
	.long	0x2e12
	.quad	.LBB108
	.quad	.LBE108
	.uleb128 0x2d
	.long	0x2e23
	.uleb128 0x2d
	.long	0x2e2c
	.uleb128 0x2d
	.long	0x2e35
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
	.long	0x2fe2
	.long	.LASF256
	.byte	0x3
	.value	0x1ef
	.byte	0x1
	.quad	.LFB259
	.quad	.LFE259
	.byte	0x1
	.byte	0x57
	.uleb128 0x22
	.string	"s1"
	.byte	0x3
	.value	0x1ed
	.long	0xe28
	.byte	0x1
	.byte	0x55
	.uleb128 0x22
	.string	"d"
	.byte	0x3
	.value	0x1ed
	.long	0x626
	.byte	0x1
	.byte	0x54
	.uleb128 0x22
	.string	"s"
	.byte	0x3
	.value	0x1ee
	.long	0x43e
	.byte	0x1
	.byte	0x55
	.uleb128 0x21
	.long	.LASF71
	.byte	0x3
	.value	0x1ee
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x24
	.string	"w"
	.byte	0x3
	.value	0x1f3
	.long	0x3f
	.byte	0x1
	.byte	0x58
	.uleb128 0x24
	.string	"r"
	.byte	0x3
	.value	0x1f4
	.long	0x323
	.byte	0x1
	.byte	0x52
	.uleb128 0x24
	.string	"g"
	.byte	0x3
	.value	0x1f4
	.long	0x323
	.byte	0x1
	.byte	0x51
	.uleb128 0x24
	.string	"b"
	.byte	0x3
	.value	0x1f4
	.long	0x323
	.byte	0x1
	.byte	0x50
	.uleb128 0x2e
	.long	0x2e12
	.quad	.LBB110
	.quad	.LBE110
	.uleb128 0x2d
	.long	0x2e23
	.uleb128 0x2d
	.long	0x2e2c
	.uleb128 0x2d
	.long	0x2e35
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
	.long	0x308f
	.long	.LASF257
	.byte	0x3
	.byte	0x4a
	.byte	0x1
	.quad	.LFB261
	.quad	.LFE261
	.byte	0x1
	.byte	0x57
	.uleb128 0x1b
	.string	"d"
	.byte	0x3
	.byte	0x47
	.long	0x626
	.byte	0x1
	.byte	0x55
	.uleb128 0x1a
	.long	.LASF69
	.byte	0x3
	.byte	0x47
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x1a
	.long	.LASF195
	.byte	0x3
	.byte	0x48
	.long	0x43e
	.byte	0x1
	.byte	0x5a
	.uleb128 0x1b
	.string	"h"
	.byte	0x3
	.byte	0x48
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x1a
	.long	.LASF196
	.byte	0x3
	.byte	0x49
	.long	0x323
	.byte	0x1
	.byte	0x58
	.uleb128 0x1a
	.long	.LASF197
	.byte	0x3
	.byte	0x49
	.long	0x323
	.byte	0x1
	.byte	0x59
	.uleb128 0x1e
	.long	.LASF198
	.byte	0x3
	.byte	0x4b
	.long	0x323
	.byte	0x1
	.byte	0x51
	.uleb128 0x1e
	.long	.LASF199
	.byte	0x3
	.byte	0x4b
	.long	0x323
	.byte	0x1
	.byte	0x58
	.uleb128 0x2e
	.long	0x308f
	.quad	.LBB112
	.quad	.LBE112
	.uleb128 0x2d
	.long	0x309c
	.uleb128 0x2d
	.long	0x30a5
	.uleb128 0x2d
	.long	0x30b0
	.uleb128 0x2d
	.long	0x30bb
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.long	0x30c7
	.long	.LASF258
	.byte	0x3
	.byte	0x32
	.byte	0x1
	.byte	0x3
	.uleb128 0x33
	.string	"d"
	.byte	0x3
	.byte	0x2e
	.long	0x626
	.uleb128 0x34
	.long	.LASF198
	.byte	0x3
	.byte	0x2f
	.long	0x323
	.uleb128 0x34
	.long	.LASF199
	.byte	0x3
	.byte	0x30
	.long	0x323
	.uleb128 0x34
	.long	.LASF197
	.byte	0x3
	.byte	0x31
	.long	0x323
	.byte	0x0
	.uleb128 0x1f
	.long	0x31a8
	.long	.LASF259
	.byte	0x3
	.byte	0x59
	.byte	0x1
	.quad	.LFB262
	.quad	.LFE262
	.byte	0x1
	.byte	0x57
	.uleb128 0x1b
	.string	"d"
	.byte	0x3
	.byte	0x56
	.long	0x626
	.byte	0x1
	.byte	0x55
	.uleb128 0x1a
	.long	.LASF69
	.byte	0x3
	.byte	0x56
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x1a
	.long	.LASF195
	.byte	0x3
	.byte	0x57
	.long	0x43e
	.byte	0x1
	.byte	0x5b
	.uleb128 0x1b
	.string	"h"
	.byte	0x3
	.byte	0x57
	.long	0x3f
	.byte	0x1
	.byte	0x5a
	.uleb128 0x1a
	.long	.LASF196
	.byte	0x3
	.byte	0x58
	.long	0x323
	.byte	0x1
	.byte	0x58
	.uleb128 0x1a
	.long	.LASF197
	.byte	0x3
	.byte	0x58
	.long	0x323
	.byte	0x1
	.byte	0x59
	.uleb128 0x1e
	.long	.LASF198
	.byte	0x3
	.byte	0x5a
	.long	0x323
	.byte	0x1
	.byte	0x54
	.uleb128 0x1e
	.long	.LASF199
	.byte	0x3
	.byte	0x5a
	.long	0x323
	.byte	0x1
	.byte	0x58
	.uleb128 0x2c
	.long	0x317b
	.long	0x308f
	.quad	.LBB116
	.quad	.LBE116
	.uleb128 0x2f
	.long	0x309c
	.byte	0x1
	.byte	0x52
	.uleb128 0x2f
	.long	0x30a5
	.byte	0x1
	.byte	0x51
	.uleb128 0x2d
	.long	0x30b0
	.uleb128 0x2d
	.long	0x30bb
	.byte	0x0
	.uleb128 0x2e
	.long	0x308f
	.quad	.LBB117
	.quad	.LBE117
	.uleb128 0x2d
	.long	0x309c
	.uleb128 0x2f
	.long	0x30a5
	.byte	0x1
	.byte	0x51
	.uleb128 0x2d
	.long	0x30b0
	.uleb128 0x2d
	.long	0x30bb
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
	.long	0x3243
	.long	.LASF260
	.byte	0x3
	.byte	0x6d
	.byte	0x1
	.quad	.LFB263
	.quad	.LFE263
	.byte	0x1
	.byte	0x57
	.uleb128 0x1b
	.string	"d"
	.byte	0x3
	.byte	0x6a
	.long	0x626
	.byte	0x1
	.byte	0x55
	.uleb128 0x1a
	.long	.LASF69
	.byte	0x3
	.byte	0x6a
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x1a
	.long	.LASF195
	.byte	0x3
	.byte	0x6b
	.long	0x43e
	.byte	0x1
	.byte	0x5a
	.uleb128 0x1b
	.string	"h"
	.byte	0x3
	.byte	0x6b
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x1a
	.long	.LASF196
	.byte	0x3
	.byte	0x6c
	.long	0x323
	.byte	0x1
	.byte	0x58
	.uleb128 0x1a
	.long	.LASF197
	.byte	0x3
	.byte	0x6c
	.long	0x323
	.byte	0x1
	.byte	0x59
	.uleb128 0x1a
	.long	.LASF203
	.byte	0x3
	.byte	0x6c
	.long	0x3f
	.byte	0x1
	.byte	0x5b
	.uleb128 0x1e
	.long	.LASF198
	.byte	0x3
	.byte	0x6e
	.long	0x323
	.byte	0x1
	.byte	0x51
	.uleb128 0x1e
	.long	.LASF199
	.byte	0x3
	.byte	0x6e
	.long	0x323
	.byte	0x1
	.byte	0x58
	.uleb128 0x1d
	.string	"v"
	.byte	0x3
	.byte	0x6e
	.long	0x323
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x1f
	.long	0x32ce
	.long	.LASF261
	.byte	0x3
	.byte	0x9f
	.byte	0x1
	.quad	.LFB264
	.quad	.LFE264
	.byte	0x1
	.byte	0x57
	.uleb128 0x1b
	.string	"s1"
	.byte	0x3
	.byte	0x9d
	.long	0xe28
	.byte	0x1
	.byte	0x55
	.uleb128 0x1b
	.string	"d"
	.byte	0x3
	.byte	0x9d
	.long	0x626
	.byte	0x1
	.byte	0x54
	.uleb128 0x1b
	.string	"s"
	.byte	0x3
	.byte	0x9e
	.long	0x43e
	.byte	0x1
	.byte	0x59
	.uleb128 0x1a
	.long	.LASF71
	.byte	0x3
	.byte	0x9e
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x1e
	.long	.LASF206
	.byte	0x3
	.byte	0xa0
	.long	0x323
	.byte	0x1
	.byte	0x5b
	.uleb128 0x1e
	.long	.LASF130
	.byte	0x3
	.byte	0xa0
	.long	0xcc2
	.byte	0x1
	.byte	0x58
	.uleb128 0x1e
	.long	.LASF68
	.byte	0x3
	.byte	0xa0
	.long	0x323
	.byte	0x1
	.byte	0x51
	.uleb128 0x1d
	.string	"v"
	.byte	0x3
	.byte	0xa0
	.long	0x323
	.byte	0x1
	.byte	0x55
	.uleb128 0x1d
	.string	"x"
	.byte	0x3
	.byte	0xa1
	.long	0x3f
	.byte	0x1
	.byte	0x5a
	.byte	0x0
	.uleb128 0x1f
	.long	0x3359
	.long	.LASF262
	.byte	0x3
	.byte	0xc9
	.byte	0x1
	.quad	.LFB265
	.quad	.LFE265
	.byte	0x1
	.byte	0x57
	.uleb128 0x1b
	.string	"s1"
	.byte	0x3
	.byte	0xc7
	.long	0xe28
	.byte	0x1
	.byte	0x55
	.uleb128 0x1b
	.string	"d"
	.byte	0x3
	.byte	0xc7
	.long	0x626
	.byte	0x1
	.byte	0x54
	.uleb128 0x1b
	.string	"s"
	.byte	0x3
	.byte	0xc8
	.long	0x43e
	.byte	0x1
	.byte	0x59
	.uleb128 0x1a
	.long	.LASF71
	.byte	0x3
	.byte	0xc8
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x1e
	.long	.LASF206
	.byte	0x3
	.byte	0xca
	.long	0x323
	.byte	0x1
	.byte	0x5b
	.uleb128 0x1e
	.long	.LASF130
	.byte	0x3
	.byte	0xca
	.long	0xcc2
	.byte	0x1
	.byte	0x58
	.uleb128 0x1e
	.long	.LASF68
	.byte	0x3
	.byte	0xca
	.long	0x323
	.byte	0x1
	.byte	0x51
	.uleb128 0x1d
	.string	"v"
	.byte	0x3
	.byte	0xca
	.long	0x323
	.byte	0x1
	.byte	0x55
	.uleb128 0x1d
	.string	"x"
	.byte	0x3
	.byte	0xcb
	.long	0x3f
	.byte	0x1
	.byte	0x5a
	.byte	0x0
	.uleb128 0x1f
	.long	0x33e4
	.long	.LASF263
	.byte	0x3
	.byte	0xea
	.byte	0x1
	.quad	.LFB266
	.quad	.LFE266
	.byte	0x1
	.byte	0x57
	.uleb128 0x1b
	.string	"s1"
	.byte	0x3
	.byte	0xe8
	.long	0xe28
	.byte	0x1
	.byte	0x55
	.uleb128 0x1b
	.string	"d"
	.byte	0x3
	.byte	0xe8
	.long	0x626
	.byte	0x1
	.byte	0x58
	.uleb128 0x1b
	.string	"s"
	.byte	0x3
	.byte	0xe9
	.long	0x43e
	.byte	0x1
	.byte	0x5a
	.uleb128 0x1a
	.long	.LASF71
	.byte	0x3
	.byte	0xe9
	.long	0x3f
	.byte	0x1
	.byte	0x5b
	.uleb128 0x1e
	.long	.LASF206
	.byte	0x3
	.byte	0xeb
	.long	0x323
	.byte	0x1
	.byte	0x53
	.uleb128 0x1e
	.long	.LASF68
	.byte	0x3
	.byte	0xeb
	.long	0x323
	.byte	0x1
	.byte	0x51
	.uleb128 0x1d
	.string	"v"
	.byte	0x3
	.byte	0xeb
	.long	0x323
	.byte	0x1
	.byte	0x52
	.uleb128 0x1e
	.long	.LASF130
	.byte	0x3
	.byte	0xeb
	.long	0xcc2
	.byte	0x1
	.byte	0x59
	.uleb128 0x1d
	.string	"x"
	.byte	0x3
	.byte	0xec
	.long	0x3f
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x25
	.long	0x3479
	.long	.LASF264
	.byte	0x3
	.value	0x10a
	.byte	0x1
	.quad	.LFB267
	.quad	.LFE267
	.byte	0x1
	.byte	0x57
	.uleb128 0x22
	.string	"s1"
	.byte	0x3
	.value	0x108
	.long	0xe28
	.byte	0x1
	.byte	0x55
	.uleb128 0x22
	.string	"d"
	.byte	0x3
	.value	0x108
	.long	0x626
	.byte	0x1
	.byte	0x58
	.uleb128 0x22
	.string	"s"
	.byte	0x3
	.value	0x109
	.long	0x43e
	.byte	0x1
	.byte	0x5a
	.uleb128 0x21
	.long	.LASF71
	.byte	0x3
	.value	0x109
	.long	0x3f
	.byte	0x1
	.byte	0x5b
	.uleb128 0x27
	.long	.LASF206
	.byte	0x3
	.value	0x10b
	.long	0x323
	.byte	0x1
	.byte	0x53
	.uleb128 0x27
	.long	.LASF68
	.byte	0x3
	.value	0x10b
	.long	0x323
	.byte	0x1
	.byte	0x51
	.uleb128 0x24
	.string	"v"
	.byte	0x3
	.value	0x10b
	.long	0x323
	.byte	0x1
	.byte	0x52
	.uleb128 0x27
	.long	.LASF130
	.byte	0x3
	.value	0x10b
	.long	0xcc2
	.byte	0x1
	.byte	0x59
	.uleb128 0x24
	.string	"x"
	.byte	0x3
	.value	0x10c
	.long	0x3f
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x25
	.long	0x34e6
	.long	.LASF265
	.byte	0x3
	.value	0x12c
	.byte	0x1
	.quad	.LFB268
	.quad	.LFE268
	.byte	0x1
	.byte	0x57
	.uleb128 0x22
	.string	"s1"
	.byte	0x3
	.value	0x12a
	.long	0xe28
	.byte	0x1
	.byte	0x55
	.uleb128 0x22
	.string	"d"
	.byte	0x3
	.value	0x12a
	.long	0x626
	.byte	0x1
	.byte	0x54
	.uleb128 0x22
	.string	"s"
	.byte	0x3
	.value	0x12b
	.long	0x43e
	.byte	0x1
	.byte	0x51
	.uleb128 0x21
	.long	.LASF71
	.byte	0x3
	.value	0x12b
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x27
	.long	.LASF130
	.byte	0x3
	.value	0x12d
	.long	0xcc2
	.byte	0x1
	.byte	0x55
	.uleb128 0x24
	.string	"x"
	.byte	0x3
	.value	0x12e
	.long	0x3f
	.byte	0x1
	.byte	0x58
	.byte	0x0
	.uleb128 0x25
	.long	0x3553
	.long	.LASF266
	.byte	0x3
	.value	0x143
	.byte	0x1
	.quad	.LFB269
	.quad	.LFE269
	.byte	0x1
	.byte	0x57
	.uleb128 0x22
	.string	"s1"
	.byte	0x3
	.value	0x141
	.long	0xe28
	.byte	0x1
	.byte	0x55
	.uleb128 0x22
	.string	"d"
	.byte	0x3
	.value	0x141
	.long	0x626
	.byte	0x1
	.byte	0x54
	.uleb128 0x22
	.string	"s"
	.byte	0x3
	.value	0x142
	.long	0x43e
	.byte	0x1
	.byte	0x51
	.uleb128 0x21
	.long	.LASF71
	.byte	0x3
	.value	0x142
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x27
	.long	.LASF130
	.byte	0x3
	.value	0x144
	.long	0xcc2
	.byte	0x1
	.byte	0x55
	.uleb128 0x24
	.string	"x"
	.byte	0x3
	.value	0x145
	.long	0x3f
	.byte	0x1
	.byte	0x58
	.byte	0x0
	.uleb128 0x2a
	.long	0x361b
	.byte	0x1
	.long	.LASF267
	.byte	0x3
	.value	0x15d
	.byte	0x1
	.quad	.LFB270
	.quad	.LFE270
	.byte	0x1
	.byte	0x57
	.uleb128 0x22
	.string	"d1"
	.byte	0x3
	.value	0x157
	.long	0x626
	.byte	0x1
	.byte	0x55
	.uleb128 0x21
	.long	.LASF213
	.byte	0x3
	.value	0x158
	.long	0x43e
	.byte	0x1
	.byte	0x53
	.uleb128 0x21
	.long	.LASF214
	.byte	0x3
	.value	0x159
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x22
	.string	"w"
	.byte	0x3
	.value	0x159
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x21
	.long	.LASF215
	.byte	0x3
	.value	0x15a
	.long	0x46
	.byte	0x1
	.byte	0x58
	.uleb128 0x21
	.long	.LASF216
	.byte	0x3
	.value	0x15b
	.long	0x46
	.byte	0x1
	.byte	0x59
	.uleb128 0x21
	.long	.LASF217
	.byte	0x3
	.value	0x15c
	.long	0x46
	.byte	0x1
	.byte	0x56
	.uleb128 0x37
	.long	.LASF218
	.byte	0x3
	.value	0x15e
	.long	0x43e
	.uleb128 0x27
	.long	.LASF219
	.byte	0x3
	.value	0x15e
	.long	0x43e
	.byte	0x1
	.byte	0x5b
	.uleb128 0x24
	.string	"x"
	.byte	0x3
	.value	0x15f
	.long	0x3f
	.byte	0x1
	.byte	0x5a
	.uleb128 0x23
	.string	"b0"
	.byte	0x3
	.value	0x15f
	.long	0x3f
	.uleb128 0x23
	.string	"b1"
	.byte	0x3
	.value	0x15f
	.long	0x3f
	.uleb128 0x24
	.string	"d"
	.byte	0x3
	.value	0x160
	.long	0x626
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x25
	.long	0x36ea
	.long	.LASF268
	.byte	0x3
	.value	0x1a3
	.byte	0x1
	.quad	.LFB271
	.quad	.LFE271
	.byte	0x1
	.byte	0x57
	.uleb128 0x22
	.string	"s1"
	.byte	0x3
	.value	0x1a1
	.long	0xe28
	.byte	0x1
	.byte	0x55
	.uleb128 0x22
	.string	"d"
	.byte	0x3
	.value	0x1a1
	.long	0x626
	.byte	0x1
	.byte	0x54
	.uleb128 0x22
	.string	"s"
	.byte	0x3
	.value	0x1a2
	.long	0x43e
	.byte	0x1
	.byte	0x58
	.uleb128 0x21
	.long	.LASF71
	.byte	0x3
	.value	0x1a2
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x24
	.string	"w"
	.byte	0x3
	.value	0x1a7
	.long	0x3f
	.byte	0x1
	.byte	0x55
	.uleb128 0x23
	.string	"v"
	.byte	0x3
	.value	0x1a8
	.long	0x323
	.uleb128 0x24
	.string	"r"
	.byte	0x3
	.value	0x1a8
	.long	0x323
	.byte	0x1
	.byte	0x51
	.uleb128 0x24
	.string	"g"
	.byte	0x3
	.value	0x1a8
	.long	0x323
	.byte	0x1
	.byte	0x52
	.uleb128 0x23
	.string	"b"
	.byte	0x3
	.value	0x1a8
	.long	0x323
	.uleb128 0x2c
	.long	0x36c4
	.long	0x1bde
	.quad	.LBB128
	.quad	.LBE128
	.uleb128 0x2d
	.long	0x1bf0
	.byte	0x0
	.uleb128 0x2e
	.long	0x36ea
	.quad	.LBB130
	.quad	.LBE130
	.uleb128 0x2d
	.long	0x36fb
	.uleb128 0x2d
	.long	0x3704
	.uleb128 0x2d
	.long	0x370d
	.byte	0x0
	.byte	0x0
	.uleb128 0x3a
	.long	0x3717
	.long	.LASF269
	.byte	0x5
	.byte	0x2d
	.byte	0x1
	.long	0x46
	.byte	0x3
	.uleb128 0x33
	.string	"r"
	.byte	0x5
	.byte	0x2b
	.long	0x46
	.uleb128 0x33
	.string	"g"
	.byte	0x5
	.byte	0x2b
	.long	0x46
	.uleb128 0x33
	.string	"b"
	.byte	0x5
	.byte	0x2c
	.long	0x46
	.byte	0x0
	.uleb128 0x25
	.long	0x37e6
	.long	.LASF270
	.byte	0x3
	.value	0x1bc
	.byte	0x1
	.quad	.LFB272
	.quad	.LFE272
	.byte	0x1
	.byte	0x57
	.uleb128 0x22
	.string	"s1"
	.byte	0x3
	.value	0x1ba
	.long	0xe28
	.byte	0x1
	.byte	0x55
	.uleb128 0x22
	.string	"d"
	.byte	0x3
	.value	0x1ba
	.long	0x626
	.byte	0x1
	.byte	0x54
	.uleb128 0x22
	.string	"s"
	.byte	0x3
	.value	0x1bb
	.long	0x43e
	.byte	0x1
	.byte	0x58
	.uleb128 0x21
	.long	.LASF71
	.byte	0x3
	.value	0x1bb
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x24
	.string	"w"
	.byte	0x3
	.value	0x1c0
	.long	0x3f
	.byte	0x1
	.byte	0x55
	.uleb128 0x23
	.string	"v"
	.byte	0x3
	.value	0x1c1
	.long	0x323
	.uleb128 0x24
	.string	"r"
	.byte	0x3
	.value	0x1c1
	.long	0x323
	.byte	0x1
	.byte	0x51
	.uleb128 0x24
	.string	"g"
	.byte	0x3
	.value	0x1c1
	.long	0x323
	.byte	0x1
	.byte	0x52
	.uleb128 0x23
	.string	"b"
	.byte	0x3
	.value	0x1c1
	.long	0x323
	.uleb128 0x2c
	.long	0x37c0
	.long	0x1bde
	.quad	.LBB132
	.quad	.LBE132
	.uleb128 0x2d
	.long	0x1bf0
	.byte	0x0
	.uleb128 0x2e
	.long	0x36ea
	.quad	.LBB134
	.quad	.LBE134
	.uleb128 0x2d
	.long	0x36fb
	.uleb128 0x2d
	.long	0x3704
	.uleb128 0x2d
	.long	0x370d
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
	.long	0x388e
	.long	.LASF271
	.byte	0x3
	.value	0x1d5
	.byte	0x1
	.quad	.LFB273
	.quad	.LFE273
	.byte	0x1
	.byte	0x57
	.uleb128 0x22
	.string	"s1"
	.byte	0x3
	.value	0x1d3
	.long	0xe28
	.byte	0x1
	.byte	0x55
	.uleb128 0x22
	.string	"d"
	.byte	0x3
	.value	0x1d3
	.long	0x626
	.byte	0x1
	.byte	0x54
	.uleb128 0x22
	.string	"s"
	.byte	0x3
	.value	0x1d4
	.long	0x43e
	.byte	0x1
	.byte	0x55
	.uleb128 0x21
	.long	.LASF71
	.byte	0x3
	.value	0x1d4
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x24
	.string	"w"
	.byte	0x3
	.value	0x1d6
	.long	0x3f
	.byte	0x1
	.byte	0x58
	.uleb128 0x24
	.string	"r"
	.byte	0x3
	.value	0x1d7
	.long	0x323
	.byte	0x1
	.byte	0x50
	.uleb128 0x24
	.string	"g"
	.byte	0x3
	.value	0x1d7
	.long	0x323
	.byte	0x1
	.byte	0x51
	.uleb128 0x24
	.string	"b"
	.byte	0x3
	.value	0x1d7
	.long	0x323
	.byte	0x1
	.byte	0x52
	.uleb128 0x2e
	.long	0x36ea
	.quad	.LBB136
	.quad	.LBE136
	.uleb128 0x2d
	.long	0x36fb
	.uleb128 0x2d
	.long	0x3704
	.uleb128 0x2d
	.long	0x370d
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
	.long	0x38e1
	.long	.LASF272
	.byte	0x3
	.value	0x1ef
	.byte	0x1
	.quad	.LFB274
	.quad	.LFE274
	.byte	0x1
	.byte	0x57
	.uleb128 0x22
	.string	"s1"
	.byte	0x3
	.value	0x1ed
	.long	0xe28
	.byte	0x1
	.byte	0x55
	.uleb128 0x22
	.string	"d"
	.byte	0x3
	.value	0x1ed
	.long	0x626
	.byte	0x1
	.byte	0x55
	.uleb128 0x22
	.string	"s"
	.byte	0x3
	.value	0x1ee
	.long	0x43e
	.byte	0x1
	.byte	0x54
	.uleb128 0x21
	.long	.LASF71
	.byte	0x3
	.value	0x1ee
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.uleb128 0x25
	.long	0x39ae
	.long	.LASF273
	.byte	0x3
	.value	0x1a3
	.byte	0x1
	.quad	.LFB275
	.quad	.LFE275
	.byte	0x1
	.byte	0x57
	.uleb128 0x22
	.string	"s1"
	.byte	0x3
	.value	0x1a1
	.long	0xe28
	.byte	0x1
	.byte	0x55
	.uleb128 0x22
	.string	"d"
	.byte	0x3
	.value	0x1a1
	.long	0x626
	.byte	0x1
	.byte	0x54
	.uleb128 0x22
	.string	"s"
	.byte	0x3
	.value	0x1a2
	.long	0x43e
	.byte	0x1
	.byte	0x58
	.uleb128 0x21
	.long	.LASF71
	.byte	0x3
	.value	0x1a2
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x24
	.string	"w"
	.byte	0x3
	.value	0x1a7
	.long	0x3f
	.byte	0x1
	.byte	0x55
	.uleb128 0x23
	.string	"v"
	.byte	0x3
	.value	0x1a8
	.long	0x323
	.uleb128 0x23
	.string	"r"
	.byte	0x3
	.value	0x1a8
	.long	0x323
	.uleb128 0x24
	.string	"g"
	.byte	0x3
	.value	0x1a8
	.long	0x323
	.byte	0x1
	.byte	0x51
	.uleb128 0x23
	.string	"b"
	.byte	0x3
	.value	0x1a8
	.long	0x323
	.uleb128 0x2c
	.long	0x3988
	.long	0x1bde
	.quad	.LBB138
	.quad	.LBE138
	.uleb128 0x2d
	.long	0x1bf0
	.byte	0x0
	.uleb128 0x2e
	.long	0x39ae
	.quad	.LBB140
	.quad	.LBE140
	.uleb128 0x2d
	.long	0x39bf
	.uleb128 0x2d
	.long	0x39c8
	.uleb128 0x2d
	.long	0x39d1
	.byte	0x0
	.byte	0x0
	.uleb128 0x3a
	.long	0x39db
	.long	.LASF274
	.byte	0x5
	.byte	0x33
	.byte	0x1
	.long	0x46
	.byte	0x3
	.uleb128 0x33
	.string	"r"
	.byte	0x5
	.byte	0x31
	.long	0x46
	.uleb128 0x33
	.string	"g"
	.byte	0x5
	.byte	0x31
	.long	0x46
	.uleb128 0x33
	.string	"b"
	.byte	0x5
	.byte	0x32
	.long	0x46
	.byte	0x0
	.uleb128 0x25
	.long	0x3aa8
	.long	.LASF275
	.byte	0x3
	.value	0x1bc
	.byte	0x1
	.quad	.LFB276
	.quad	.LFE276
	.byte	0x1
	.byte	0x57
	.uleb128 0x22
	.string	"s1"
	.byte	0x3
	.value	0x1ba
	.long	0xe28
	.byte	0x1
	.byte	0x55
	.uleb128 0x22
	.string	"d"
	.byte	0x3
	.value	0x1ba
	.long	0x626
	.byte	0x1
	.byte	0x54
	.uleb128 0x22
	.string	"s"
	.byte	0x3
	.value	0x1bb
	.long	0x43e
	.byte	0x1
	.byte	0x58
	.uleb128 0x21
	.long	.LASF71
	.byte	0x3
	.value	0x1bb
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x24
	.string	"w"
	.byte	0x3
	.value	0x1c0
	.long	0x3f
	.byte	0x1
	.byte	0x55
	.uleb128 0x23
	.string	"v"
	.byte	0x3
	.value	0x1c1
	.long	0x323
	.uleb128 0x23
	.string	"r"
	.byte	0x3
	.value	0x1c1
	.long	0x323
	.uleb128 0x24
	.string	"g"
	.byte	0x3
	.value	0x1c1
	.long	0x323
	.byte	0x1
	.byte	0x51
	.uleb128 0x23
	.string	"b"
	.byte	0x3
	.value	0x1c1
	.long	0x323
	.uleb128 0x2c
	.long	0x3a82
	.long	0x1bde
	.quad	.LBB144
	.quad	.LBE144
	.uleb128 0x2d
	.long	0x1bf0
	.byte	0x0
	.uleb128 0x2e
	.long	0x39ae
	.quad	.LBB146
	.quad	.LBE146
	.uleb128 0x2d
	.long	0x39bf
	.uleb128 0x2d
	.long	0x39c8
	.uleb128 0x2d
	.long	0x39d1
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
	.long	0x3b50
	.long	.LASF276
	.byte	0x3
	.value	0x1d5
	.byte	0x1
	.quad	.LFB277
	.quad	.LFE277
	.byte	0x1
	.byte	0x57
	.uleb128 0x22
	.string	"s1"
	.byte	0x3
	.value	0x1d3
	.long	0xe28
	.byte	0x1
	.byte	0x55
	.uleb128 0x22
	.string	"d"
	.byte	0x3
	.value	0x1d3
	.long	0x626
	.byte	0x1
	.byte	0x54
	.uleb128 0x22
	.string	"s"
	.byte	0x3
	.value	0x1d4
	.long	0x43e
	.byte	0x1
	.byte	0x55
	.uleb128 0x21
	.long	.LASF71
	.byte	0x3
	.value	0x1d4
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x24
	.string	"w"
	.byte	0x3
	.value	0x1d6
	.long	0x3f
	.byte	0x1
	.byte	0x58
	.uleb128 0x24
	.string	"r"
	.byte	0x3
	.value	0x1d7
	.long	0x323
	.byte	0x1
	.byte	0x52
	.uleb128 0x24
	.string	"g"
	.byte	0x3
	.value	0x1d7
	.long	0x323
	.byte	0x1
	.byte	0x51
	.uleb128 0x24
	.string	"b"
	.byte	0x3
	.value	0x1d7
	.long	0x323
	.byte	0x1
	.byte	0x50
	.uleb128 0x2e
	.long	0x39ae
	.quad	.LBB150
	.quad	.LBE150
	.uleb128 0x2d
	.long	0x39bf
	.uleb128 0x2d
	.long	0x39c8
	.uleb128 0x2d
	.long	0x39d1
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
	.long	0x3bf8
	.long	.LASF277
	.byte	0x3
	.value	0x1ef
	.byte	0x1
	.quad	.LFB278
	.quad	.LFE278
	.byte	0x1
	.byte	0x57
	.uleb128 0x22
	.string	"s1"
	.byte	0x3
	.value	0x1ed
	.long	0xe28
	.byte	0x1
	.byte	0x55
	.uleb128 0x22
	.string	"d"
	.byte	0x3
	.value	0x1ed
	.long	0x626
	.byte	0x1
	.byte	0x54
	.uleb128 0x22
	.string	"s"
	.byte	0x3
	.value	0x1ee
	.long	0x43e
	.byte	0x1
	.byte	0x55
	.uleb128 0x21
	.long	.LASF71
	.byte	0x3
	.value	0x1ee
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x24
	.string	"w"
	.byte	0x3
	.value	0x1f3
	.long	0x3f
	.byte	0x1
	.byte	0x58
	.uleb128 0x24
	.string	"r"
	.byte	0x3
	.value	0x1f4
	.long	0x323
	.byte	0x1
	.byte	0x52
	.uleb128 0x24
	.string	"g"
	.byte	0x3
	.value	0x1f4
	.long	0x323
	.byte	0x1
	.byte	0x51
	.uleb128 0x24
	.string	"b"
	.byte	0x3
	.value	0x1f4
	.long	0x323
	.byte	0x1
	.byte	0x50
	.uleb128 0x2e
	.long	0x39ae
	.quad	.LBB152
	.quad	.LBE152
	.uleb128 0x2d
	.long	0x39bf
	.uleb128 0x2d
	.long	0x39c8
	.uleb128 0x2d
	.long	0x39d1
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
	.long	0x3c73
	.long	.LASF278
	.byte	0x1
	.value	0x34e
	.byte	0x1
	.long	0x46
	.quad	.LFB279
	.quad	.LFE279
	.byte	0x1
	.byte	0x57
	.uleb128 0x22
	.string	"r"
	.byte	0x1
	.value	0x34d
	.long	0x46
	.byte	0x1
	.byte	0x55
	.uleb128 0x22
	.string	"g"
	.byte	0x1
	.value	0x34d
	.long	0x46
	.byte	0x1
	.byte	0x54
	.uleb128 0x22
	.string	"b"
	.byte	0x1
	.value	0x34d
	.long	0x46
	.byte	0x1
	.byte	0x51
	.uleb128 0x24
	.string	"col"
	.byte	0x1
	.value	0x34f
	.long	0x46
	.byte	0x1
	.byte	0x50
	.uleb128 0x2e
	.long	0x1bfd
	.quad	.LBB154
	.quad	.LBE154
	.uleb128 0x2d
	.long	0x1c0e
	.uleb128 0x2d
	.long	0x1c17
	.uleb128 0x2d
	.long	0x1c20
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
	.long	0x3cec
	.long	.LASF279
	.byte	0x1
	.value	0x357
	.byte	0x1
	.long	0x46
	.quad	.LFB280
	.quad	.LFE280
	.byte	0x1
	.byte	0x57
	.uleb128 0x22
	.string	"r"
	.byte	0x1
	.value	0x356
	.long	0x46
	.byte	0x1
	.byte	0x55
	.uleb128 0x22
	.string	"g"
	.byte	0x1
	.value	0x356
	.long	0x46
	.byte	0x1
	.byte	0x54
	.uleb128 0x22
	.string	"b"
	.byte	0x1
	.value	0x356
	.long	0x46
	.byte	0x1
	.byte	0x51
	.uleb128 0x23
	.string	"col"
	.byte	0x1
	.value	0x358
	.long	0x46
	.uleb128 0x2e
	.long	0x1f65
	.quad	.LBB156
	.quad	.LBE156
	.uleb128 0x2d
	.long	0x1f76
	.uleb128 0x2d
	.long	0x1f7f
	.uleb128 0x2d
	.long	0x1f88
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
	.long	0x3d65
	.long	.LASF280
	.byte	0x1
	.value	0x360
	.byte	0x1
	.long	0x46
	.quad	.LFB281
	.quad	.LFE281
	.byte	0x1
	.byte	0x57
	.uleb128 0x22
	.string	"r"
	.byte	0x1
	.value	0x35e
	.long	0x46
	.byte	0x1
	.byte	0x55
	.uleb128 0x22
	.string	"g"
	.byte	0x1
	.value	0x35e
	.long	0x46
	.byte	0x1
	.byte	0x54
	.uleb128 0x22
	.string	"b"
	.byte	0x1
	.value	0x35f
	.long	0x46
	.byte	0x1
	.byte	0x51
	.uleb128 0x23
	.string	"col"
	.byte	0x1
	.value	0x361
	.long	0x46
	.uleb128 0x2e
	.long	0x2200
	.quad	.LBB158
	.quad	.LBE158
	.uleb128 0x2d
	.long	0x2211
	.uleb128 0x2d
	.long	0x221a
	.uleb128 0x2d
	.long	0x2223
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
	.long	0x3dde
	.long	.LASF281
	.byte	0x1
	.value	0x368
	.byte	0x1
	.long	0x46
	.quad	.LFB282
	.quad	.LFE282
	.byte	0x1
	.byte	0x57
	.uleb128 0x22
	.string	"r"
	.byte	0x1
	.value	0x367
	.long	0x46
	.byte	0x1
	.byte	0x55
	.uleb128 0x22
	.string	"g"
	.byte	0x1
	.value	0x367
	.long	0x46
	.byte	0x1
	.byte	0x54
	.uleb128 0x22
	.string	"b"
	.byte	0x1
	.value	0x367
	.long	0x46
	.byte	0x1
	.byte	0x51
	.uleb128 0x23
	.string	"col"
	.byte	0x1
	.value	0x369
	.long	0x46
	.uleb128 0x2e
	.long	0x2b75
	.quad	.LBB160
	.quad	.LBE160
	.uleb128 0x2d
	.long	0x2b86
	.uleb128 0x2d
	.long	0x2b8f
	.uleb128 0x2d
	.long	0x2b98
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
	.long	0x3e57
	.long	.LASF282
	.byte	0x1
	.value	0x371
	.byte	0x1
	.long	0x46
	.quad	.LFB283
	.quad	.LFE283
	.byte	0x1
	.byte	0x57
	.uleb128 0x22
	.string	"r"
	.byte	0x1
	.value	0x36f
	.long	0x46
	.byte	0x1
	.byte	0x55
	.uleb128 0x22
	.string	"g"
	.byte	0x1
	.value	0x36f
	.long	0x46
	.byte	0x1
	.byte	0x54
	.uleb128 0x22
	.string	"b"
	.byte	0x1
	.value	0x370
	.long	0x46
	.byte	0x1
	.byte	0x51
	.uleb128 0x23
	.string	"col"
	.byte	0x1
	.value	0x372
	.long	0x46
	.uleb128 0x2e
	.long	0x2e12
	.quad	.LBB162
	.quad	.LBE162
	.uleb128 0x2d
	.long	0x2e23
	.uleb128 0x2d
	.long	0x2e2c
	.uleb128 0x2d
	.long	0x2e35
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
	.long	0x3ed0
	.long	.LASF283
	.byte	0x1
	.value	0x379
	.byte	0x1
	.long	0x46
	.quad	.LFB284
	.quad	.LFE284
	.byte	0x1
	.byte	0x57
	.uleb128 0x22
	.string	"r"
	.byte	0x1
	.value	0x378
	.long	0x46
	.byte	0x1
	.byte	0x55
	.uleb128 0x22
	.string	"g"
	.byte	0x1
	.value	0x378
	.long	0x46
	.byte	0x1
	.byte	0x54
	.uleb128 0x22
	.string	"b"
	.byte	0x1
	.value	0x378
	.long	0x46
	.byte	0x1
	.byte	0x51
	.uleb128 0x23
	.string	"col"
	.byte	0x1
	.value	0x37a
	.long	0x46
	.uleb128 0x2e
	.long	0x36ea
	.quad	.LBB164
	.quad	.LBE164
	.uleb128 0x2d
	.long	0x36fb
	.uleb128 0x2d
	.long	0x3704
	.uleb128 0x2d
	.long	0x370d
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
	.long	0x3f49
	.long	.LASF284
	.byte	0x1
	.value	0x380
	.byte	0x1
	.long	0x46
	.quad	.LFB285
	.quad	.LFE285
	.byte	0x1
	.byte	0x57
	.uleb128 0x22
	.string	"r"
	.byte	0x1
	.value	0x37f
	.long	0x46
	.byte	0x1
	.byte	0x55
	.uleb128 0x22
	.string	"g"
	.byte	0x1
	.value	0x37f
	.long	0x46
	.byte	0x1
	.byte	0x54
	.uleb128 0x22
	.string	"b"
	.byte	0x1
	.value	0x37f
	.long	0x46
	.byte	0x1
	.byte	0x50
	.uleb128 0x23
	.string	"col"
	.byte	0x1
	.value	0x381
	.long	0x46
	.uleb128 0x2e
	.long	0x39ae
	.quad	.LBB166
	.quad	.LBE166
	.uleb128 0x2d
	.long	0x39bf
	.uleb128 0x2d
	.long	0x39c8
	.uleb128 0x2d
	.long	0x39d1
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
	.long	0x4055
	.long	.LASF285
	.byte	0x1
	.value	0x388
	.byte	0x1
	.long	0x3f
	.quad	.LFB286
	.quad	.LFE286
	.byte	0x1
	.byte	0x57
	.uleb128 0x22
	.string	"s"
	.byte	0x1
	.value	0x387
	.long	0xe28
	.byte	0x1
	.byte	0x53
	.uleb128 0x27
	.long	.LASF286
	.byte	0x1
	.value	0x389
	.long	0x3f
	.byte	0x1
	.byte	0x5e
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.value	0x389
	.long	0x3f
	.byte	0x1
	.byte	0x5c
	.uleb128 0x24
	.string	"v"
	.byte	0x1
	.value	0x38a
	.long	0x323
	.byte	0x1
	.byte	0x51
	.uleb128 0x24
	.string	"col"
	.byte	0x1
	.value	0x38a
	.long	0x323
	.byte	0x1
	.byte	0x50
	.uleb128 0x27
	.long	.LASF130
	.byte	0x1
	.value	0x38a
	.long	0xcc2
	.byte	0x1
	.byte	0x5d
	.uleb128 0x2c
	.long	0x3fe8
	.long	0x4055
	.quad	.LBB168
	.quad	.LBE168
	.uleb128 0x2f
	.long	0x4066
	.byte	0x1
	.byte	0x51
	.uleb128 0x28
	.long	.Ldebug_ranges0+0xf0
	.uleb128 0x3c
	.long	0x406f
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.long	0x4009
	.long	0x4055
	.quad	.LBB170
	.quad	.LBE170
	.uleb128 0x2f
	.long	0x4066
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0x2c
	.long	0x402a
	.long	0x4055
	.quad	.LBB171
	.quad	.LBE171
	.uleb128 0x2f
	.long	0x4066
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x26
	.long	0x403b
	.long	.Ldebug_ranges0+0x120
	.uleb128 0x3c
	.long	0x406f
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.uleb128 0x3b
	.quad	.LBB179
	.quad	.LBE179
	.uleb128 0x3c
	.long	0x406f
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.byte	0x0
	.uleb128 0x3a
	.long	0x4079
	.long	.LASF287
	.byte	0x6
	.byte	0x9c
	.byte	0x1
	.long	0x3f
	.byte	0x3
	.uleb128 0x33
	.string	"v"
	.byte	0x6
	.byte	0x9b
	.long	0x3f
	.uleb128 0x1c
	.string	"b"
	.byte	0x6
	.byte	0x9d
	.long	0x3f
	.byte	0x0
	.uleb128 0x20
	.long	0x4185
	.long	.LASF288
	.byte	0x1
	.value	0x3a2
	.byte	0x1
	.long	0x3f
	.quad	.LFB287
	.quad	.LFE287
	.byte	0x1
	.byte	0x57
	.uleb128 0x22
	.string	"s"
	.byte	0x1
	.value	0x3a1
	.long	0xe28
	.byte	0x1
	.byte	0x53
	.uleb128 0x27
	.long	.LASF286
	.byte	0x1
	.value	0x3a3
	.long	0x3f
	.byte	0x1
	.byte	0x5e
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.value	0x3a3
	.long	0x3f
	.byte	0x1
	.byte	0x5c
	.uleb128 0x24
	.string	"v"
	.byte	0x1
	.value	0x3a4
	.long	0x323
	.byte	0x1
	.byte	0x56
	.uleb128 0x24
	.string	"col"
	.byte	0x1
	.value	0x3a4
	.long	0x323
	.byte	0x1
	.byte	0x50
	.uleb128 0x27
	.long	.LASF130
	.byte	0x1
	.value	0x3a4
	.long	0xcc2
	.byte	0x1
	.byte	0x5d
	.uleb128 0x2c
	.long	0x4118
	.long	0x4055
	.quad	.LBB182
	.quad	.LBE182
	.uleb128 0x2f
	.long	0x4066
	.byte	0x1
	.byte	0x51
	.uleb128 0x28
	.long	.Ldebug_ranges0+0x150
	.uleb128 0x3c
	.long	0x406f
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.long	0x4139
	.long	0x4055
	.quad	.LBB184
	.quad	.LBE184
	.uleb128 0x2f
	.long	0x4066
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0x26
	.long	0x414a
	.long	.Ldebug_ranges0+0x180
	.uleb128 0x3c
	.long	0x406f
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.uleb128 0x2c
	.long	0x416b
	.long	0x4055
	.quad	.LBB189
	.quad	.LBE189
	.uleb128 0x2f
	.long	0x4066
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x3b
	.quad	.LBB193
	.quad	.LBE193
	.uleb128 0x3c
	.long	0x406f
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
	.long	0x4205
	.long	.LASF289
	.byte	0x1
	.value	0x3c0
	.byte	0x1
	.quad	.LFB288
	.quad	.LFE288
	.byte	0x1
	.byte	0x57
	.uleb128 0x22
	.string	"s"
	.byte	0x1
	.value	0x3bc
	.long	0xe28
	.byte	0x1
	.byte	0x55
	.uleb128 0x21
	.long	.LASF290
	.byte	0x1
	.value	0x3bd
	.long	0xcc2
	.byte	0x1
	.byte	0x54
	.uleb128 0x21
	.long	.LASF291
	.byte	0x1
	.value	0x3be
	.long	0xcc2
	.byte	0x1
	.byte	0x51
	.uleb128 0x21
	.long	.LASF292
	.byte	0x1
	.value	0x3bf
	.long	0xcc2
	.byte	0x1
	.byte	0x52
	.uleb128 0x27
	.long	.LASF146
	.byte	0x1
	.value	0x3c1
	.long	0x323
	.byte	0x1
	.byte	0x58
	.uleb128 0x27
	.long	.LASF144
	.byte	0x1
	.value	0x3c1
	.long	0x323
	.byte	0x1
	.byte	0x59
	.uleb128 0x27
	.long	.LASF145
	.byte	0x1
	.value	0x3c1
	.long	0x323
	.byte	0x1
	.byte	0x5a
	.byte	0x0
	.uleb128 0x20
	.long	0x4270
	.long	.LASF293
	.byte	0x1
	.value	0x3dd
	.byte	0x1
	.long	0x3f
	.quad	.LFB289
	.quad	.LFE289
	.byte	0x1
	.byte	0x57
	.uleb128 0x22
	.string	"s"
	.byte	0x1
	.value	0x3dc
	.long	0xe28
	.byte	0x1
	.byte	0x53
	.uleb128 0x27
	.long	.LASF286
	.byte	0x1
	.value	0x3de
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.uleb128 0x27
	.long	.LASF146
	.byte	0x1
	.value	0x3df
	.long	0x323
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x27
	.long	.LASF144
	.byte	0x1
	.value	0x3df
	.long	0x323
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x27
	.long	.LASF145
	.byte	0x1
	.value	0x3df
	.long	0x323
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.byte	0x0
	.uleb128 0x20
	.long	0x42ae
	.long	.LASF294
	.byte	0x1
	.value	0x55b
	.byte	0x1
	.long	0x3f
	.quad	.LFB292
	.quad	.LFE292
	.byte	0x1
	.byte	0x57
	.uleb128 0x22
	.string	"s"
	.byte	0x1
	.value	0x55a
	.long	0xe28
	.byte	0x1
	.byte	0x55
	.uleb128 0x24
	.string	"ret"
	.byte	0x1
	.value	0x55c
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x25
	.long	0x4312
	.long	.LASF295
	.byte	0x1
	.value	0x569
	.byte	0x1
	.quad	.LFB293
	.quad	.LFE293
	.byte	0x1
	.byte	0x57
	.uleb128 0x22
	.string	"s"
	.byte	0x1
	.value	0x568
	.long	0xe28
	.byte	0x1
	.byte	0x55
	.uleb128 0x21
	.long	.LASF296
	.byte	0x1
	.value	0x568
	.long	0x4d
	.byte	0x1
	.byte	0x54
	.uleb128 0x21
	.long	.LASF297
	.byte	0x1
	.value	0x568
	.long	0x4d
	.byte	0x1
	.byte	0x59
	.uleb128 0x27
	.long	.LASF71
	.byte	0x1
	.value	0x56a
	.long	0x3f
	.byte	0x1
	.byte	0x58
	.uleb128 0x27
	.long	.LASF72
	.byte	0x1
	.value	0x56a
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.uleb128 0x2a
	.long	0x4365
	.byte	0x1
	.long	.LASF298
	.byte	0x1
	.value	0x57e
	.byte	0x1
	.quad	.LFB294
	.quad	.LFE294
	.byte	0x1
	.byte	0x57
	.uleb128 0x22
	.string	"s"
	.byte	0x1
	.value	0x57d
	.long	0xe28
	.byte	0x1
	.byte	0x55
	.uleb128 0x22
	.string	"y1"
	.byte	0x1
	.value	0x57d
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x22
	.string	"y2"
	.byte	0x1
	.value	0x57d
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x24
	.string	"y"
	.byte	0x1
	.value	0x57f
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0x25
	.long	0x483b
	.long	.LASF299
	.byte	0x1
	.value	0x64f
	.byte	0x1
	.quad	.LFB297
	.quad	.LFE297
	.byte	0x1
	.byte	0x57
	.uleb128 0x21
	.long	.LASF73
	.byte	0x1
	.value	0x64e
	.long	0xac
	.byte	0x1
	.byte	0x55
	.uleb128 0x24
	.string	"s"
	.byte	0x1
	.value	0x650
	.long	0xe28
	.byte	0x1
	.byte	0x5a
	.uleb128 0x27
	.long	.LASF286
	.byte	0x1
	.value	0x651
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.uleb128 0x27
	.long	.LASF141
	.byte	0x1
	.value	0x651
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x2c
	.long	0x43d9
	.long	0x483b
	.quad	.LBB194
	.quad	.LBE194
	.uleb128 0x2d
	.long	0x484d
	.byte	0x0
	.uleb128 0x2c
	.long	0x444e
	.long	0x4858
	.quad	.LBB196
	.quad	.LBE196
	.uleb128 0x2d
	.long	0x4866
	.uleb128 0x2d
	.long	0x4870
	.uleb128 0x28
	.long	.Ldebug_ranges0+0x1b0
	.uleb128 0x3c
	.long	0x487c
	.byte	0x1
	.byte	0x56
	.uleb128 0x3c
	.long	0x4886
	.byte	0x1
	.byte	0x50
	.uleb128 0x3c
	.long	0x4890
	.byte	0x1
	.byte	0x5d
	.uleb128 0x3c
	.long	0x489c
	.byte	0x1
	.byte	0x53
	.uleb128 0x2e
	.long	0x48a7
	.quad	.LBB198
	.quad	.LBE198
	.uleb128 0x2d
	.long	0x48b4
	.uleb128 0x2d
	.long	0x48bd
	.uleb128 0x2d
	.long	0x48c6
	.uleb128 0x2d
	.long	0x48cf
	.uleb128 0x2d
	.long	0x48d8
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.long	0x4619
	.long	0x48e2
	.quad	.LBB202
	.quad	.LBE202
	.uleb128 0x2d
	.long	0x48f0
	.uleb128 0x2f
	.long	0x48fa
	.byte	0x3
	.byte	0x91
	.sleb128 196
	.uleb128 0x28
	.long	.Ldebug_ranges0+0x1e0
	.uleb128 0x3c
	.long	0x4906
	.byte	0x1
	.byte	0x53
	.uleb128 0x3c
	.long	0x4911
	.byte	0x3
	.byte	0x91
	.sleb128 192
	.uleb128 0x3c
	.long	0x491c
	.byte	0x3
	.byte	0x91
	.sleb128 188
	.uleb128 0x3c
	.long	0x4928
	.byte	0x3
	.byte	0x91
	.sleb128 184
	.uleb128 0x3c
	.long	0x4933
	.byte	0x1
	.byte	0x58
	.uleb128 0x3c
	.long	0x493e
	.byte	0x1
	.byte	0x51
	.uleb128 0x3c
	.long	0x494a
	.byte	0x3
	.byte	0x91
	.sleb128 180
	.uleb128 0x3c
	.long	0x4956
	.byte	0x3
	.byte	0x91
	.sleb128 176
	.uleb128 0x3c
	.long	0x4962
	.byte	0x1
	.byte	0x54
	.uleb128 0x3c
	.long	0x496e
	.byte	0x1
	.byte	0x5f
	.uleb128 0x3c
	.long	0x497a
	.byte	0x3
	.byte	0x91
	.sleb128 172
	.uleb128 0x3c
	.long	0x4986
	.byte	0x3
	.byte	0x91
	.sleb128 168
	.uleb128 0x3c
	.long	0x4992
	.byte	0x1
	.byte	0x53
	.uleb128 0x3c
	.long	0x499e
	.byte	0x1
	.byte	0x52
	.uleb128 0x3c
	.long	0x49aa
	.byte	0x1
	.byte	0x5c
	.uleb128 0x3c
	.long	0x49b6
	.byte	0x1
	.byte	0x5d
	.uleb128 0x3c
	.long	0x49c2
	.byte	0x1
	.byte	0x54
	.uleb128 0x3c
	.long	0x49cc
	.byte	0x1
	.byte	0x51
	.uleb128 0x3c
	.long	0x49d8
	.byte	0x1
	.byte	0x5e
	.uleb128 0x3c
	.long	0x49e3
	.byte	0x1
	.byte	0x55
	.uleb128 0x3c
	.long	0x49ed
	.byte	0x1
	.byte	0x56
	.uleb128 0x3c
	.long	0x49f9
	.byte	0x3
	.byte	0x91
	.sleb128 160
	.uleb128 0x3c
	.long	0x4a04
	.byte	0x3
	.byte	0x91
	.sleb128 152
	.uleb128 0x3c
	.long	0x4a10
	.byte	0x3
	.byte	0x91
	.sleb128 144
	.uleb128 0x3c
	.long	0x4a1c
	.byte	0x1
	.byte	0x55
	.uleb128 0x3c
	.long	0x4a28
	.byte	0x3
	.byte	0x91
	.sleb128 208
	.uleb128 0x3c
	.long	0x4a34
	.byte	0x1
	.byte	0x51
	.uleb128 0x3c
	.long	0x4a40
	.byte	0x1
	.byte	0x56
	.uleb128 0x36
	.long	0x4a4c
	.uleb128 0x3c
	.long	0x4a58
	.byte	0x3
	.byte	0x91
	.sleb128 136
	.uleb128 0x3c
	.long	0x4a64
	.byte	0x3
	.byte	0x91
	.sleb128 128
	.uleb128 0x3c
	.long	0x4a70
	.byte	0x3
	.byte	0x91
	.sleb128 120
	.uleb128 0x3c
	.long	0x4a7c
	.byte	0x3
	.byte	0x91
	.sleb128 112
	.uleb128 0x2c
	.long	0x45a6
	.long	0x4ac9
	.quad	.LBB204
	.quad	.LBE204
	.uleb128 0x2d
	.long	0x4ad6
	.uleb128 0x2d
	.long	0x4adf
	.uleb128 0x2d
	.long	0x4ae8
	.byte	0x0
	.uleb128 0x2c
	.long	0x45c5
	.long	0x483b
	.quad	.LBB208
	.quad	.LBE208
	.uleb128 0x2d
	.long	0x484d
	.byte	0x0
	.uleb128 0x26
	.long	0x45e4
	.long	.Ldebug_ranges0+0x220
	.uleb128 0x3c
	.long	0x4a89
	.byte	0x1
	.byte	0x54
	.uleb128 0x3c
	.long	0x4a95
	.byte	0x1
	.byte	0x52
	.uleb128 0x3c
	.long	0x4aa1
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.uleb128 0x2e
	.long	0x48a7
	.quad	.LBB212
	.quad	.LBE212
	.uleb128 0x2f
	.long	0x48b4
	.byte	0x1
	.byte	0x50
	.uleb128 0x2f
	.long	0x48bd
	.byte	0x1
	.byte	0x54
	.uleb128 0x2d
	.long	0x48c6
	.uleb128 0x2d
	.long	0x48cf
	.uleb128 0x2d
	.long	0x48d8
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.long	0x46fd
	.long	0x4af2
	.quad	.LBB215
	.quad	.LBE215
	.uleb128 0x2d
	.long	0x4b00
	.uleb128 0x2f
	.long	0x4b0a
	.byte	0x1
	.byte	0x5e
	.uleb128 0x28
	.long	.Ldebug_ranges0+0x260
	.uleb128 0x3c
	.long	0x4b16
	.byte	0x1
	.byte	0x5f
	.uleb128 0x3c
	.long	0x4b21
	.byte	0x1
	.byte	0x56
	.uleb128 0x3c
	.long	0x4b2b
	.byte	0x1
	.byte	0x51
	.uleb128 0x3c
	.long	0x4b37
	.byte	0x3
	.byte	0x91
	.sleb128 100
	.uleb128 0x3c
	.long	0x4b43
	.byte	0x3
	.byte	0x91
	.sleb128 96
	.uleb128 0x3c
	.long	0x4b4f
	.byte	0x1
	.byte	0x50
	.uleb128 0x3c
	.long	0x4b5b
	.byte	0x1
	.byte	0x5d
	.uleb128 0x3c
	.long	0x4b67
	.byte	0x1
	.byte	0x52
	.uleb128 0x3c
	.long	0x4b73
	.byte	0x1
	.byte	0x50
	.uleb128 0x3c
	.long	0x4b7f
	.byte	0x3
	.byte	0x91
	.sleb128 200
	.uleb128 0x3c
	.long	0x4b8b
	.byte	0x3
	.byte	0x91
	.sleb128 204
	.uleb128 0x3c
	.long	0x4b97
	.byte	0x1
	.byte	0x51
	.uleb128 0x3c
	.long	0x4ba3
	.byte	0x3
	.byte	0x91
	.sleb128 92
	.uleb128 0x3c
	.long	0x4baf
	.byte	0x1
	.byte	0x55
	.uleb128 0x3c
	.long	0x4bbb
	.byte	0x1
	.byte	0x58
	.uleb128 0x36
	.long	0x4bc7
	.uleb128 0x3c
	.long	0x4bd3
	.byte	0x3
	.byte	0x91
	.sleb128 88
	.uleb128 0x3c
	.long	0x4bdf
	.byte	0x3
	.byte	0x91
	.sleb128 84
	.uleb128 0x3c
	.long	0x4beb
	.byte	0x3
	.byte	0x91
	.sleb128 80
	.uleb128 0x3c
	.long	0x4bf7
	.byte	0x1
	.byte	0x5c
	.uleb128 0x3c
	.long	0x4c01
	.byte	0x1
	.byte	0x50
	.uleb128 0x3c
	.long	0x4c0b
	.byte	0x1
	.byte	0x53
	.uleb128 0x3c
	.long	0x4c17
	.byte	0x1
	.byte	0x54
	.uleb128 0x3c
	.long	0x4c23
	.byte	0x3
	.byte	0x91
	.sleb128 72
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.long	0x471c
	.long	0x483b
	.quad	.LBB223
	.quad	.LBE223
	.uleb128 0x2d
	.long	0x484d
	.byte	0x0
	.uleb128 0x2c
	.long	0x4745
	.long	0x4ac9
	.quad	.LBB226
	.quad	.LBE226
	.uleb128 0x2d
	.long	0x4ad6
	.uleb128 0x2d
	.long	0x4adf
	.uleb128 0x2d
	.long	0x4ae8
	.byte	0x0
	.uleb128 0x35
	.long	0x4762
	.quad	.LBB230
	.quad	.LBE230
	.uleb128 0x3c
	.long	0x4c30
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.uleb128 0x2c
	.long	0x4788
	.long	0x4c44
	.quad	.LBB231
	.quad	.LBE231
	.uleb128 0x2f
	.long	0x4c56
	.byte	0x1
	.byte	0x50
	.uleb128 0x2d
	.long	0x4c62
	.byte	0x0
	.uleb128 0x2c
	.long	0x47ae
	.long	0x4c44
	.quad	.LBB235
	.quad	.LBE235
	.uleb128 0x2f
	.long	0x4c56
	.byte	0x1
	.byte	0x50
	.uleb128 0x2d
	.long	0x4c62
	.byte	0x0
	.uleb128 0x2c
	.long	0x47d4
	.long	0x4c44
	.quad	.LBB241
	.quad	.LBE241
	.uleb128 0x2f
	.long	0x4c56
	.byte	0x1
	.byte	0x50
	.uleb128 0x2d
	.long	0x4c62
	.byte	0x0
	.uleb128 0x2c
	.long	0x4809
	.long	0x48a7
	.quad	.LBB243
	.quad	.LBE243
	.uleb128 0x2f
	.long	0x48b4
	.byte	0x1
	.byte	0x50
	.uleb128 0x2d
	.long	0x48bd
	.uleb128 0x2d
	.long	0x48c6
	.uleb128 0x2d
	.long	0x48cf
	.uleb128 0x2d
	.long	0x48d8
	.byte	0x0
	.uleb128 0x2e
	.long	0x48a7
	.quad	.LBB249
	.quad	.LBE249
	.uleb128 0x2f
	.long	0x48b4
	.byte	0x1
	.byte	0x50
	.uleb128 0x2d
	.long	0x48bd
	.uleb128 0x2d
	.long	0x48c6
	.uleb128 0x2d
	.long	0x48cf
	.uleb128 0x2d
	.long	0x48d8
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
	.long	0x4858
	.long	.LASF300
	.byte	0x1
	.value	0x3f3
	.byte	0x1
	.long	0x3f
	.byte	0x3
	.uleb128 0x39
	.string	"s"
	.byte	0x1
	.value	0x3f2
	.long	0xcfa
	.byte	0x0
	.uleb128 0x30
	.long	0x48a7
	.long	.LASF301
	.byte	0x1
	.value	0x634
	.byte	0x1
	.byte	0x1
	.uleb128 0x39
	.string	"s"
	.byte	0x1
	.value	0x633
	.long	0xe28
	.uleb128 0x31
	.long	.LASF286
	.byte	0x1
	.value	0x633
	.long	0x3f
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.value	0x635
	.long	0x3f
	.uleb128 0x23
	.string	"w"
	.byte	0x1
	.value	0x635
	.long	0x3f
	.uleb128 0x23
	.string	"val"
	.byte	0x1
	.value	0x635
	.long	0x3f
	.uleb128 0x23
	.string	"d"
	.byte	0x1
	.value	0x636
	.long	0x626
	.byte	0x0
	.uleb128 0x32
	.long	0x48e2
	.long	.LASF75
	.byte	0x7
	.byte	0x58
	.byte	0x1
	.byte	0x3
	.uleb128 0x33
	.string	"s"
	.byte	0x7
	.byte	0x57
	.long	0xcfa
	.uleb128 0x33
	.string	"x"
	.byte	0x7
	.byte	0x57
	.long	0x3f
	.uleb128 0x33
	.string	"y"
	.byte	0x7
	.byte	0x57
	.long	0x3f
	.uleb128 0x33
	.string	"w"
	.byte	0x7
	.byte	0x57
	.long	0x3f
	.uleb128 0x33
	.string	"h"
	.byte	0x7
	.byte	0x57
	.long	0x3f
	.byte	0x0
	.uleb128 0x30
	.long	0x4aad
	.long	.LASF302
	.byte	0x1
	.value	0x444
	.byte	0x1
	.byte	0x1
	.uleb128 0x39
	.string	"s"
	.byte	0x1
	.value	0x443
	.long	0xe28
	.uleb128 0x31
	.long	.LASF286
	.byte	0x1
	.value	0x443
	.long	0x3f
	.uleb128 0x23
	.string	"cx"
	.byte	0x1
	.value	0x445
	.long	0x3f
	.uleb128 0x23
	.string	"cy"
	.byte	0x1
	.value	0x445
	.long	0x3f
	.uleb128 0x37
	.long	.LASF303
	.byte	0x1
	.value	0x445
	.long	0x3f
	.uleb128 0x23
	.string	"cw"
	.byte	0x1
	.value	0x445
	.long	0x3f
	.uleb128 0x23
	.string	"ch"
	.byte	0x1
	.value	0x445
	.long	0x3f
	.uleb128 0x37
	.long	.LASF304
	.byte	0x1
	.value	0x445
	.long	0x3f
	.uleb128 0x37
	.long	.LASF72
	.byte	0x1
	.value	0x445
	.long	0x3f
	.uleb128 0x37
	.long	.LASF71
	.byte	0x1
	.value	0x445
	.long	0x3f
	.uleb128 0x37
	.long	.LASF305
	.byte	0x1
	.value	0x445
	.long	0x3f
	.uleb128 0x37
	.long	.LASF306
	.byte	0x1
	.value	0x446
	.long	0x3f
	.uleb128 0x37
	.long	.LASF307
	.byte	0x1
	.value	0x446
	.long	0x3f
	.uleb128 0x37
	.long	.LASF69
	.byte	0x1
	.value	0x446
	.long	0x3f
	.uleb128 0x37
	.long	.LASF308
	.byte	0x1
	.value	0x446
	.long	0x3f
	.uleb128 0x37
	.long	.LASF309
	.byte	0x1
	.value	0x447
	.long	0x323
	.uleb128 0x37
	.long	.LASF196
	.byte	0x1
	.value	0x447
	.long	0x323
	.uleb128 0x37
	.long	.LASF197
	.byte	0x1
	.value	0x447
	.long	0x323
	.uleb128 0x23
	.string	"v"
	.byte	0x1
	.value	0x447
	.long	0x323
	.uleb128 0x37
	.long	.LASF156
	.byte	0x1
	.value	0x447
	.long	0x323
	.uleb128 0x23
	.string	"d1"
	.byte	0x1
	.value	0x448
	.long	0x626
	.uleb128 0x23
	.string	"d"
	.byte	0x1
	.value	0x448
	.long	0x626
	.uleb128 0x23
	.string	"src"
	.byte	0x1
	.value	0x448
	.long	0x626
	.uleb128 0x23
	.string	"s1"
	.byte	0x1
	.value	0x448
	.long	0x626
	.uleb128 0x37
	.long	.LASF310
	.byte	0x1
	.value	0x448
	.long	0x626
	.uleb128 0x37
	.long	.LASF311
	.byte	0x1
	.value	0x448
	.long	0x626
	.uleb128 0x37
	.long	.LASF195
	.byte	0x1
	.value	0x449
	.long	0x43e
	.uleb128 0x37
	.long	.LASF312
	.byte	0x1
	.value	0x449
	.long	0x4aad
	.uleb128 0x37
	.long	.LASF203
	.byte	0x1
	.value	0x44a
	.long	0x3f
	.uleb128 0x37
	.long	.LASF144
	.byte	0x1
	.value	0x44a
	.long	0x3f
	.uleb128 0x37
	.long	.LASF313
	.byte	0x1
	.value	0x44a
	.long	0x3f
	.uleb128 0x37
	.long	.LASF130
	.byte	0x1
	.value	0x44b
	.long	0xcc2
	.uleb128 0x37
	.long	.LASF314
	.byte	0x1
	.value	0x44c
	.long	0xcc2
	.uleb128 0x37
	.long	.LASF315
	.byte	0x1
	.value	0x44d
	.long	0x4abd
	.uleb128 0x37
	.long	.LASF316
	.byte	0x1
	.value	0x44e
	.long	0x4ac3
	.uleb128 0x3d
	.uleb128 0x37
	.long	.LASF317
	.byte	0x1
	.value	0x4cd
	.long	0x3f
	.uleb128 0x37
	.long	.LASF318
	.byte	0x1
	.value	0x4cd
	.long	0x3f
	.uleb128 0x23
	.string	"h"
	.byte	0x1
	.value	0x4cd
	.long	0x3f
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.long	0x4abd
	.long	0x43e
	.uleb128 0xd
	.long	0x61
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xd9a
	.uleb128 0x5
	.byte	0x8
	.long	0xdcb
	.uleb128 0x32
	.long	0x4af2
	.long	.LASF76
	.byte	0x7
	.byte	0x5d
	.byte	0x1
	.byte	0x3
	.uleb128 0x33
	.string	"s"
	.byte	0x7
	.byte	0x5c
	.long	0xcfa
	.uleb128 0x33
	.string	"w"
	.byte	0x7
	.byte	0x5c
	.long	0x3f
	.uleb128 0x33
	.string	"h"
	.byte	0x7
	.byte	0x5c
	.long	0x3f
	.byte	0x0
	.uleb128 0x30
	.long	0x4c3e
	.long	.LASF319
	.byte	0x1
	.value	0x58d
	.byte	0x1
	.byte	0x1
	.uleb128 0x39
	.string	"s"
	.byte	0x1
	.value	0x58c
	.long	0xe28
	.uleb128 0x31
	.long	.LASF286
	.byte	0x1
	.value	0x58c
	.long	0x3f
	.uleb128 0x23
	.string	"y1"
	.byte	0x1
	.value	0x58e
	.long	0x3f
	.uleb128 0x23
	.string	"y"
	.byte	0x1
	.value	0x58e
	.long	0x3f
	.uleb128 0x37
	.long	.LASF158
	.byte	0x1
	.value	0x58e
	.long	0x3f
	.uleb128 0x37
	.long	.LASF320
	.byte	0x1
	.value	0x58e
	.long	0x3f
	.uleb128 0x37
	.long	.LASF321
	.byte	0x1
	.value	0x58e
	.long	0x3f
	.uleb128 0x37
	.long	.LASF69
	.byte	0x1
	.value	0x58e
	.long	0x3f
	.uleb128 0x37
	.long	.LASF322
	.byte	0x1
	.value	0x58e
	.long	0x3f
	.uleb128 0x37
	.long	.LASF143
	.byte	0x1
	.value	0x58e
	.long	0x3f
	.uleb128 0x37
	.long	.LASF187
	.byte	0x1
	.value	0x58e
	.long	0x3f
	.uleb128 0x37
	.long	.LASF71
	.byte	0x1
	.value	0x58f
	.long	0x3f
	.uleb128 0x37
	.long	.LASF72
	.byte	0x1
	.value	0x58f
	.long	0x3f
	.uleb128 0x37
	.long	.LASF142
	.byte	0x1
	.value	0x58f
	.long	0x3f
	.uleb128 0x37
	.long	.LASF144
	.byte	0x1
	.value	0x58f
	.long	0x3f
	.uleb128 0x37
	.long	.LASF323
	.byte	0x1
	.value	0x58f
	.long	0x3f
	.uleb128 0x37
	.long	.LASF324
	.byte	0x1
	.value	0x58f
	.long	0x3f
	.uleb128 0x37
	.long	.LASF325
	.byte	0x1
	.value	0x58f
	.long	0x3f
	.uleb128 0x37
	.long	.LASF326
	.byte	0x1
	.value	0x590
	.long	0x3f
	.uleb128 0x37
	.long	.LASF327
	.byte	0x1
	.value	0x590
	.long	0x3f
	.uleb128 0x37
	.long	.LASF328
	.byte	0x1
	.value	0x590
	.long	0x3f
	.uleb128 0x23
	.string	"d"
	.byte	0x1
	.value	0x591
	.long	0x626
	.uleb128 0x23
	.string	"v"
	.byte	0x1
	.value	0x592
	.long	0x323
	.uleb128 0x37
	.long	.LASF329
	.byte	0x1
	.value	0x592
	.long	0x323
	.uleb128 0x37
	.long	.LASF103
	.byte	0x1
	.value	0x592
	.long	0x323
	.uleb128 0x37
	.long	.LASF330
	.byte	0x1
	.value	0x593
	.long	0x4c3e
	.uleb128 0x3d
	.uleb128 0x37
	.long	.LASF331
	.byte	0x1
	.value	0x5f2
	.long	0x3f
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xe01
	.uleb128 0x38
	.long	0x4c6f
	.long	.LASF332
	.byte	0x2
	.value	0x3c6
	.byte	0x1
	.long	0x3f
	.byte	0x3
	.uleb128 0x31
	.long	.LASF103
	.byte	0x2
	.value	0x3c4
	.long	0x344
	.uleb128 0x31
	.long	.LASF333
	.byte	0x2
	.value	0x3c5
	.long	0x3f
	.byte	0x0
	.uleb128 0x25
	.long	0x4ca7
	.long	.LASF334
	.byte	0x1
	.value	0x674
	.byte	0x1
	.quad	.LFB298
	.quad	.LFE298
	.byte	0x1
	.byte	0x57
	.uleb128 0x21
	.long	.LASF73
	.byte	0x1
	.value	0x673
	.long	0xac
	.byte	0x1
	.byte	0x55
	.uleb128 0x23
	.string	"s"
	.byte	0x1
	.value	0x675
	.long	0xe28
	.byte	0x0
	.uleb128 0x25
	.long	0x4f59
	.long	.LASF335
	.byte	0x1
	.value	0x68e
	.byte	0x1
	.quad	.LFB300
	.quad	.LFE300
	.byte	0x1
	.byte	0x57
	.uleb128 0x22
	.string	"f"
	.byte	0x1
	.value	0x68d
	.long	0x620
	.byte	0x1
	.byte	0x5c
	.uleb128 0x21
	.long	.LASF73
	.byte	0x1
	.value	0x68d
	.long	0xac
	.byte	0x1
	.byte	0x54
	.uleb128 0x24
	.string	"s"
	.byte	0x1
	.value	0x68f
	.long	0xe28
	.byte	0x1
	.byte	0x5d
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.value	0x690
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.uleb128 0x2c
	.long	0x4d1c
	.long	0x4f59
	.quad	.LBB264
	.quad	.LBE264
	.uleb128 0x2d
	.long	0x4f66
	.uleb128 0x2d
	.long	0x4f6f
	.byte	0x0
	.uleb128 0x2c
	.long	0x4d40
	.long	0x4f85
	.quad	.LBB266
	.quad	.LBE266
	.uleb128 0x2d
	.long	0x4f92
	.uleb128 0x2d
	.long	0x4f9b
	.byte	0x0
	.uleb128 0x2c
	.long	0x4d64
	.long	0x4f85
	.quad	.LBB268
	.quad	.LBE268
	.uleb128 0x2d
	.long	0x4f92
	.uleb128 0x2d
	.long	0x4f9b
	.byte	0x0
	.uleb128 0x2c
	.long	0x4d88
	.long	0x4f85
	.quad	.LBB270
	.quad	.LBE270
	.uleb128 0x2d
	.long	0x4f92
	.uleb128 0x2d
	.long	0x4f9b
	.byte	0x0
	.uleb128 0x2c
	.long	0x4dac
	.long	0x4f85
	.quad	.LBB272
	.quad	.LBE272
	.uleb128 0x2d
	.long	0x4f92
	.uleb128 0x2d
	.long	0x4f9b
	.byte	0x0
	.uleb128 0x2c
	.long	0x4dd0
	.long	0x4f85
	.quad	.LBB274
	.quad	.LBE274
	.uleb128 0x2d
	.long	0x4f92
	.uleb128 0x2d
	.long	0x4f9b
	.byte	0x0
	.uleb128 0x2c
	.long	0x4df4
	.long	0x4f85
	.quad	.LBB276
	.quad	.LBE276
	.uleb128 0x2d
	.long	0x4f92
	.uleb128 0x2d
	.long	0x4f9b
	.byte	0x0
	.uleb128 0x2c
	.long	0x4e18
	.long	0x4f85
	.quad	.LBB278
	.quad	.LBE278
	.uleb128 0x2d
	.long	0x4f92
	.uleb128 0x2d
	.long	0x4f9b
	.byte	0x0
	.uleb128 0x2c
	.long	0x4e3c
	.long	0x4f85
	.quad	.LBB280
	.quad	.LBE280
	.uleb128 0x2d
	.long	0x4f92
	.uleb128 0x2d
	.long	0x4f9b
	.byte	0x0
	.uleb128 0x2c
	.long	0x4e60
	.long	0x4f85
	.quad	.LBB282
	.quad	.LBE282
	.uleb128 0x2d
	.long	0x4f92
	.uleb128 0x2d
	.long	0x4f9b
	.byte	0x0
	.uleb128 0x2c
	.long	0x4e84
	.long	0x4f85
	.quad	.LBB284
	.quad	.LBE284
	.uleb128 0x2d
	.long	0x4f92
	.uleb128 0x2d
	.long	0x4f9b
	.byte	0x0
	.uleb128 0x2c
	.long	0x4ea8
	.long	0x4f85
	.quad	.LBB286
	.quad	.LBE286
	.uleb128 0x2d
	.long	0x4f92
	.uleb128 0x2d
	.long	0x4f9b
	.byte	0x0
	.uleb128 0x2c
	.long	0x4ecc
	.long	0x4fa6
	.quad	.LBB288
	.quad	.LBE288
	.uleb128 0x2d
	.long	0x4fb3
	.uleb128 0x2d
	.long	0x4fbc
	.byte	0x0
	.uleb128 0x2c
	.long	0x4ef0
	.long	0x4fa6
	.quad	.LBB290
	.quad	.LBE290
	.uleb128 0x2d
	.long	0x4fb3
	.uleb128 0x2d
	.long	0x4fbc
	.byte	0x0
	.uleb128 0x2c
	.long	0x4f14
	.long	0x4f59
	.quad	.LBB292
	.quad	.LBE292
	.uleb128 0x2d
	.long	0x4f66
	.uleb128 0x2d
	.long	0x4f6f
	.byte	0x0
	.uleb128 0x2c
	.long	0x4f38
	.long	0x4f59
	.quad	.LBB294
	.quad	.LBE294
	.uleb128 0x2d
	.long	0x4f66
	.uleb128 0x2d
	.long	0x4f6f
	.byte	0x0
	.uleb128 0x2e
	.long	0x4f59
	.quad	.LBB296
	.quad	.LBE296
	.uleb128 0x2d
	.long	0x4f66
	.uleb128 0x2d
	.long	0x4f6f
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.long	0x4f7a
	.long	.LASF336
	.byte	0x8
	.byte	0x1f
	.byte	0x1
	.byte	0x3
	.uleb128 0x33
	.string	"f"
	.byte	0x8
	.byte	0x1e
	.long	0x620
	.uleb128 0x33
	.string	"pv"
	.byte	0x8
	.byte	0x1e
	.long	0x4f7a
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x4f80
	.uleb128 0x6
	.long	0x323
	.uleb128 0x32
	.long	0x4fa6
	.long	.LASF337
	.byte	0x8
	.byte	0x29
	.byte	0x1
	.byte	0x3
	.uleb128 0x33
	.string	"f"
	.byte	0x8
	.byte	0x28
	.long	0x620
	.uleb128 0x33
	.string	"pv"
	.byte	0x8
	.byte	0x28
	.long	0x43e
	.byte	0x0
	.uleb128 0x32
	.long	0x4fc7
	.long	.LASF338
	.byte	0x8
	.byte	0x24
	.byte	0x1
	.byte	0x3
	.uleb128 0x33
	.string	"f"
	.byte	0x8
	.byte	0x23
	.long	0x620
	.uleb128 0x33
	.string	"pv"
	.byte	0x8
	.byte	0x23
	.long	0x4fc7
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x4fcd
	.uleb128 0x6
	.long	0x318
	.uleb128 0x20
	.long	0x52d4
	.long	.LASF339
	.byte	0x1
	.value	0x6ba
	.byte	0x1
	.long	0x3f
	.quad	.LFB301
	.quad	.LFE301
	.byte	0x1
	.byte	0x57
	.uleb128 0x22
	.string	"f"
	.byte	0x1
	.value	0x6b9
	.long	0x620
	.byte	0x1
	.byte	0x5c
	.uleb128 0x21
	.long	.LASF73
	.byte	0x1
	.value	0x6b9
	.long	0xac
	.byte	0x1
	.byte	0x5d
	.uleb128 0x21
	.long	.LASF340
	.byte	0x1
	.value	0x6b9
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.uleb128 0x23
	.string	"s"
	.byte	0x1
	.value	0x6bb
	.long	0xe28
	.uleb128 0x27
	.long	.LASF341
	.byte	0x1
	.value	0x6bc
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.value	0x6bc
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.uleb128 0x24
	.string	"ret"
	.byte	0x1
	.value	0x6bc
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.uleb128 0x2c
	.long	0x5073
	.long	0x52d4
	.quad	.LBB302
	.quad	.LBE302
	.uleb128 0x2d
	.long	0x52e1
	.uleb128 0x2d
	.long	0x52ea
	.byte	0x0
	.uleb128 0x2c
	.long	0x5097
	.long	0x52f5
	.quad	.LBB304
	.quad	.LBE304
	.uleb128 0x2d
	.long	0x5302
	.uleb128 0x2d
	.long	0x530b
	.byte	0x0
	.uleb128 0x2c
	.long	0x50bb
	.long	0x52f5
	.quad	.LBB312
	.quad	.LBE312
	.uleb128 0x2d
	.long	0x5302
	.uleb128 0x2d
	.long	0x530b
	.byte	0x0
	.uleb128 0x2c
	.long	0x50df
	.long	0x52f5
	.quad	.LBB316
	.quad	.LBE316
	.uleb128 0x2d
	.long	0x5302
	.uleb128 0x2d
	.long	0x530b
	.byte	0x0
	.uleb128 0x2c
	.long	0x5103
	.long	0x52f5
	.quad	.LBB320
	.quad	.LBE320
	.uleb128 0x2d
	.long	0x5302
	.uleb128 0x2d
	.long	0x530b
	.byte	0x0
	.uleb128 0x2c
	.long	0x5127
	.long	0x52f5
	.quad	.LBB326
	.quad	.LBE326
	.uleb128 0x2d
	.long	0x5302
	.uleb128 0x2d
	.long	0x530b
	.byte	0x0
	.uleb128 0x2c
	.long	0x514b
	.long	0x52f5
	.quad	.LBB328
	.quad	.LBE328
	.uleb128 0x2d
	.long	0x5302
	.uleb128 0x2d
	.long	0x530b
	.byte	0x0
	.uleb128 0x2c
	.long	0x516f
	.long	0x52f5
	.quad	.LBB334
	.quad	.LBE334
	.uleb128 0x2d
	.long	0x5302
	.uleb128 0x2d
	.long	0x530b
	.byte	0x0
	.uleb128 0x2c
	.long	0x5193
	.long	0x52f5
	.quad	.LBB340
	.quad	.LBE340
	.uleb128 0x2d
	.long	0x5302
	.uleb128 0x2d
	.long	0x530b
	.byte	0x0
	.uleb128 0x2c
	.long	0x51b7
	.long	0x52f5
	.quad	.LBB346
	.quad	.LBE346
	.uleb128 0x2d
	.long	0x5302
	.uleb128 0x2d
	.long	0x530b
	.byte	0x0
	.uleb128 0x2c
	.long	0x51db
	.long	0x52f5
	.quad	.LBB352
	.quad	.LBE352
	.uleb128 0x2d
	.long	0x5302
	.uleb128 0x2d
	.long	0x530b
	.byte	0x0
	.uleb128 0x2c
	.long	0x51ff
	.long	0x52f5
	.quad	.LBB358
	.quad	.LBE358
	.uleb128 0x2d
	.long	0x5302
	.uleb128 0x2d
	.long	0x530b
	.byte	0x0
	.uleb128 0x2c
	.long	0x5223
	.long	0x52f5
	.quad	.LBB364
	.quad	.LBE364
	.uleb128 0x2d
	.long	0x5302
	.uleb128 0x2d
	.long	0x530b
	.byte	0x0
	.uleb128 0x2c
	.long	0x5247
	.long	0x5316
	.quad	.LBB372
	.quad	.LBE372
	.uleb128 0x2d
	.long	0x5323
	.uleb128 0x2d
	.long	0x532c
	.byte	0x0
	.uleb128 0x2c
	.long	0x526b
	.long	0x5316
	.quad	.LBB374
	.quad	.LBE374
	.uleb128 0x2d
	.long	0x5323
	.uleb128 0x2d
	.long	0x532c
	.byte	0x0
	.uleb128 0x2c
	.long	0x528f
	.long	0x52d4
	.quad	.LBB376
	.quad	.LBE376
	.uleb128 0x2d
	.long	0x52e1
	.uleb128 0x2d
	.long	0x52ea
	.byte	0x0
	.uleb128 0x2c
	.long	0x52b3
	.long	0x52d4
	.quad	.LBB378
	.quad	.LBE378
	.uleb128 0x2d
	.long	0x52e1
	.uleb128 0x2d
	.long	0x52ea
	.byte	0x0
	.uleb128 0x2e
	.long	0x52d4
	.quad	.LBB384
	.quad	.LBE384
	.uleb128 0x2d
	.long	0x52e1
	.uleb128 0x2d
	.long	0x52ea
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.long	0x52f5
	.long	.LASF342
	.byte	0x8
	.byte	0x33
	.byte	0x1
	.byte	0x3
	.uleb128 0x33
	.string	"f"
	.byte	0x8
	.byte	0x32
	.long	0x620
	.uleb128 0x33
	.string	"pv"
	.byte	0x8
	.byte	0x32
	.long	0xcc2
	.byte	0x0
	.uleb128 0x32
	.long	0x5316
	.long	.LASF343
	.byte	0x8
	.byte	0x3d
	.byte	0x1
	.byte	0x3
	.uleb128 0x33
	.string	"f"
	.byte	0x8
	.byte	0x3c
	.long	0x620
	.uleb128 0x33
	.string	"pv"
	.byte	0x8
	.byte	0x3c
	.long	0x626
	.byte	0x0
	.uleb128 0x32
	.long	0x5337
	.long	.LASF344
	.byte	0x8
	.byte	0x38
	.byte	0x1
	.byte	0x3
	.uleb128 0x33
	.string	"f"
	.byte	0x8
	.byte	0x37
	.long	0x620
	.uleb128 0x33
	.string	"pv"
	.byte	0x8
	.byte	0x37
	.long	0x5337
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x318
	.uleb128 0x25
	.long	0x53b9
	.long	.LASF345
	.byte	0x1
	.value	0x6f9
	.byte	0x1
	.quad	.LFB302
	.quad	.LFE302
	.byte	0x1
	.byte	0x57
	.uleb128 0x21
	.long	.LASF115
	.byte	0x1
	.value	0x6f7
	.long	0x797
	.byte	0x1
	.byte	0x55
	.uleb128 0x21
	.long	.LASF346
	.byte	0x1
	.value	0x6f7
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x21
	.long	.LASF103
	.byte	0x1
	.value	0x6f8
	.long	0x323
	.byte	0x1
	.byte	0x52
	.uleb128 0x21
	.long	.LASF104
	.byte	0x1
	.value	0x6f8
	.long	0x323
	.byte	0x1
	.byte	0x52
	.uleb128 0x21
	.long	.LASF105
	.byte	0x1
	.value	0x6f8
	.long	0x3f
	.byte	0x1
	.byte	0x58
	.uleb128 0x23
	.string	"d"
	.byte	0x1
	.value	0x6fa
	.long	0x53b9
	.uleb128 0x24
	.string	"s"
	.byte	0x1
	.value	0x6fb
	.long	0xe28
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xe6a
	.uleb128 0x2a
	.long	0x546e
	.byte	0x1
	.long	.LASF347
	.byte	0x1
	.value	0x705
	.byte	0x1
	.quad	.LFB303
	.quad	.LFE303
	.byte	0x1
	.byte	0x57
	.uleb128 0x22
	.string	"s"
	.byte	0x1
	.value	0x703
	.long	0xe28
	.byte	0x1
	.byte	0x53
	.uleb128 0x22
	.string	"ds"
	.byte	0x1
	.value	0x703
	.long	0xcfa
	.byte	0x1
	.byte	0x56
	.uleb128 0x21
	.long	.LASF348
	.byte	0x1
	.value	0x703
	.long	0x626
	.byte	0x1
	.byte	0x5c
	.uleb128 0x21
	.long	.LASF349
	.byte	0x1
	.value	0x704
	.long	0x38
	.byte	0x1
	.byte	0x5d
	.uleb128 0x21
	.long	.LASF350
	.byte	0x1
	.value	0x704
	.long	0x3f
	.byte	0x1
	.byte	0x5e
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.value	0x706
	.long	0x3f
	.byte	0x1
	.byte	0x58
	.uleb128 0x24
	.string	"j"
	.byte	0x1
	.value	0x706
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x24
	.string	"v"
	.byte	0x1
	.value	0x706
	.long	0x3f
	.byte	0x1
	.byte	0x55
	.uleb128 0x24
	.string	"b"
	.byte	0x1
	.value	0x706
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.uleb128 0x2e
	.long	0x546e
	.quad	.LBB392
	.quad	.LBE392
	.uleb128 0x2d
	.long	0x547c
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.long	0x5487
	.long	.LASF351
	.byte	0x1
	.value	0x67c
	.byte	0x1
	.byte	0x1
	.uleb128 0x39
	.string	"s"
	.byte	0x1
	.value	0x67b
	.long	0xe28
	.byte	0x0
	.uleb128 0x2a
	.long	0x54c2
	.byte	0x1
	.long	.LASF352
	.byte	0x1
	.value	0x72f
	.byte	0x1
	.quad	.LFB304
	.quad	.LFE304
	.byte	0x1
	.byte	0x57
	.uleb128 0x22
	.string	"s"
	.byte	0x1
	.value	0x72e
	.long	0xe28
	.byte	0x1
	.byte	0x53
	.uleb128 0x27
	.long	.LASF353
	.byte	0x1
	.value	0x730
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x20
	.long	0x551a
	.long	.LASF354
	.byte	0x1
	.value	0x763
	.byte	0x1
	.long	0x323
	.quad	.LFB305
	.quad	.LFE305
	.byte	0x1
	.byte	0x57
	.uleb128 0x21
	.long	.LASF73
	.byte	0x1
	.value	0x762
	.long	0xac
	.byte	0x1
	.byte	0x55
	.uleb128 0x21
	.long	.LASF103
	.byte	0x1
	.value	0x762
	.long	0x339
	.byte	0x1
	.byte	0x54
	.uleb128 0x22
	.string	"tag"
	.byte	0x1
	.value	0x762
	.long	0x41c
	.byte	0x1
	.byte	0x51
	.uleb128 0x23
	.string	"s"
	.byte	0x1
	.value	0x764
	.long	0xe28
	.byte	0x0
	.uleb128 0x25
	.long	0x557c
	.long	.LASF355
	.byte	0x1
	.value	0x76c
	.byte	0x1
	.quad	.LFB306
	.quad	.LFE306
	.byte	0x1
	.byte	0x57
	.uleb128 0x21
	.long	.LASF73
	.byte	0x1
	.value	0x76a
	.long	0xac
	.byte	0x1
	.byte	0x55
	.uleb128 0x21
	.long	.LASF103
	.byte	0x1
	.value	0x76b
	.long	0x339
	.byte	0x1
	.byte	0x54
	.uleb128 0x21
	.long	.LASF356
	.byte	0x1
	.value	0x76b
	.long	0x323
	.byte	0x1
	.byte	0x51
	.uleb128 0x22
	.string	"tag"
	.byte	0x1
	.value	0x76b
	.long	0x3eb
	.byte	0x1
	.byte	0x52
	.uleb128 0x23
	.string	"s"
	.byte	0x1
	.value	0x76d
	.long	0xe28
	.byte	0x0
	.uleb128 0x20
	.long	0x55d4
	.long	.LASF357
	.byte	0x1
	.value	0x773
	.byte	0x1
	.long	0x323
	.quad	.LFB307
	.quad	.LFE307
	.byte	0x1
	.byte	0x57
	.uleb128 0x21
	.long	.LASF73
	.byte	0x1
	.value	0x772
	.long	0xac
	.byte	0x1
	.byte	0x55
	.uleb128 0x21
	.long	.LASF103
	.byte	0x1
	.value	0x772
	.long	0x339
	.byte	0x1
	.byte	0x54
	.uleb128 0x22
	.string	"tag"
	.byte	0x1
	.value	0x772
	.long	0x41c
	.byte	0x1
	.byte	0x51
	.uleb128 0x23
	.string	"s"
	.byte	0x1
	.value	0x774
	.long	0xe28
	.byte	0x0
	.uleb128 0x25
	.long	0x5636
	.long	.LASF358
	.byte	0x1
	.value	0x77c
	.byte	0x1
	.quad	.LFB308
	.quad	.LFE308
	.byte	0x1
	.byte	0x57
	.uleb128 0x21
	.long	.LASF73
	.byte	0x1
	.value	0x77a
	.long	0xac
	.byte	0x1
	.byte	0x55
	.uleb128 0x21
	.long	.LASF103
	.byte	0x1
	.value	0x77b
	.long	0x339
	.byte	0x1
	.byte	0x54
	.uleb128 0x21
	.long	.LASF356
	.byte	0x1
	.value	0x77b
	.long	0x323
	.byte	0x1
	.byte	0x51
	.uleb128 0x22
	.string	"tag"
	.byte	0x1
	.value	0x77b
	.long	0x3eb
	.byte	0x1
	.byte	0x52
	.uleb128 0x23
	.string	"s"
	.byte	0x1
	.value	0x77d
	.long	0xe28
	.byte	0x0
	.uleb128 0x20
	.long	0x568e
	.long	.LASF359
	.byte	0x1
	.value	0x783
	.byte	0x1
	.long	0x323
	.quad	.LFB309
	.quad	.LFE309
	.byte	0x1
	.byte	0x57
	.uleb128 0x21
	.long	.LASF73
	.byte	0x1
	.value	0x782
	.long	0xac
	.byte	0x1
	.byte	0x55
	.uleb128 0x21
	.long	.LASF103
	.byte	0x1
	.value	0x782
	.long	0x339
	.byte	0x1
	.byte	0x54
	.uleb128 0x22
	.string	"tag"
	.byte	0x1
	.value	0x782
	.long	0x41c
	.byte	0x1
	.byte	0x51
	.uleb128 0x23
	.string	"s"
	.byte	0x1
	.value	0x784
	.long	0xe28
	.byte	0x0
	.uleb128 0x25
	.long	0x56f0
	.long	.LASF360
	.byte	0x1
	.value	0x78b
	.byte	0x1
	.quad	.LFB310
	.quad	.LFE310
	.byte	0x1
	.byte	0x57
	.uleb128 0x21
	.long	.LASF73
	.byte	0x1
	.value	0x789
	.long	0xac
	.byte	0x1
	.byte	0x55
	.uleb128 0x21
	.long	.LASF103
	.byte	0x1
	.value	0x78a
	.long	0x339
	.byte	0x1
	.byte	0x54
	.uleb128 0x21
	.long	.LASF356
	.byte	0x1
	.value	0x78a
	.long	0x323
	.byte	0x1
	.byte	0x51
	.uleb128 0x22
	.string	"tag"
	.byte	0x1
	.value	0x78a
	.long	0x3eb
	.byte	0x1
	.byte	0x52
	.uleb128 0x23
	.string	"s"
	.byte	0x1
	.value	0x78c
	.long	0xe28
	.byte	0x0
	.uleb128 0x29
	.long	0x5758
	.byte	0x1
	.long	.LASF361
	.byte	0x1
	.value	0x7b0
	.byte	0x1
	.long	0x3f
	.quad	.LFB312
	.quad	.LFE312
	.byte	0x1
	.byte	0x57
	.uleb128 0x22
	.string	"ds"
	.byte	0x1
	.value	0x7ae
	.long	0xcfa
	.byte	0x1
	.byte	0x5c
	.uleb128 0x21
	.long	.LASF348
	.byte	0x1
	.value	0x7ae
	.long	0x626
	.byte	0x1
	.byte	0x56
	.uleb128 0x21
	.long	.LASF349
	.byte	0x1
	.value	0x7af
	.long	0x38
	.byte	0x1
	.byte	0x5e
	.uleb128 0x21
	.long	.LASF350
	.byte	0x1
	.value	0x7af
	.long	0x3f
	.byte	0x1
	.byte	0x5d
	.uleb128 0x24
	.string	"s"
	.byte	0x1
	.value	0x7b1
	.long	0xe28
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x29
	.long	0x5835
	.byte	0x1
	.long	.LASF362
	.byte	0x1
	.value	0x7c8
	.byte	0x1
	.long	0x3f
	.quad	.LFB313
	.quad	.LFE313
	.byte	0x1
	.byte	0x57
	.uleb128 0x22
	.string	"ds"
	.byte	0x1
	.value	0x7c4
	.long	0xcfa
	.byte	0x1
	.byte	0x5c
	.uleb128 0x21
	.long	.LASF348
	.byte	0x1
	.value	0x7c4
	.long	0x626
	.byte	0x1
	.byte	0x53
	.uleb128 0x21
	.long	.LASF349
	.byte	0x1
	.value	0x7c5
	.long	0x38
	.byte	0x1
	.byte	0x5f
	.uleb128 0x21
	.long	.LASF350
	.byte	0x1
	.value	0x7c5
	.long	0x3f
	.byte	0x1
	.byte	0x5e
	.uleb128 0x21
	.long	.LASF363
	.byte	0x1
	.value	0x7c6
	.long	0x339
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x21
	.long	.LASF364
	.byte	0x1
	.value	0x7c6
	.long	0x339
	.byte	0x1
	.byte	0x5d
	.uleb128 0x21
	.long	.LASF114
	.byte	0x1
	.value	0x7c7
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.uleb128 0x24
	.string	"s"
	.byte	0x1
	.value	0x7c9
	.long	0xe28
	.byte	0x1
	.byte	0x56
	.uleb128 0x2e
	.long	0x5835
	.quad	.LBB396
	.quad	.LBE396
	.uleb128 0x2d
	.long	0x5843
	.uleb128 0x2d
	.long	0x584d
	.uleb128 0x2d
	.long	0x5859
	.uleb128 0x2d
	.long	0x5865
	.uleb128 0x3b
	.quad	.LBB397
	.quad	.LBE397
	.uleb128 0x3c
	.long	0x5871
	.byte	0x1
	.byte	0x53
	.uleb128 0x3c
	.long	0x587d
	.byte	0x1
	.byte	0x5c
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.long	0x588a
	.long	.LASF365
	.byte	0x1
	.value	0x79f
	.byte	0x1
	.byte	0x1
	.uleb128 0x39
	.string	"s"
	.byte	0x1
	.value	0x79d
	.long	0xe28
	.uleb128 0x31
	.long	.LASF363
	.byte	0x1
	.value	0x79d
	.long	0x339
	.uleb128 0x31
	.long	.LASF364
	.byte	0x1
	.value	0x79e
	.long	0x339
	.uleb128 0x31
	.long	.LASF114
	.byte	0x1
	.value	0x79e
	.long	0x3f
	.uleb128 0x37
	.long	.LASF366
	.byte	0x1
	.value	0x7a0
	.long	0x3f
	.uleb128 0x37
	.long	.LASF353
	.byte	0x1
	.value	0x7a0
	.long	0x3f
	.byte	0x0
	.uleb128 0x29
	.long	0x5956
	.byte	0x1
	.long	.LASF367
	.byte	0x1
	.value	0x7df
	.byte	0x1
	.long	0x3f
	.quad	.LFB314
	.quad	.LFE314
	.byte	0x1
	.byte	0x57
	.uleb128 0x22
	.string	"bus"
	.byte	0x1
	.value	0x7dc
	.long	0x853
	.byte	0x1
	.byte	0x55
	.uleb128 0x22
	.string	"ds"
	.byte	0x1
	.value	0x7dc
	.long	0xcfa
	.byte	0x1
	.byte	0x5f
	.uleb128 0x21
	.long	.LASF348
	.byte	0x1
	.value	0x7dc
	.long	0x626
	.byte	0x1
	.byte	0x5e
	.uleb128 0x21
	.long	.LASF349
	.byte	0x1
	.value	0x7dd
	.long	0x38
	.byte	0x1
	.byte	0x5c
	.uleb128 0x21
	.long	.LASF350
	.byte	0x1
	.value	0x7dd
	.long	0x3f
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x21
	.long	.LASF368
	.byte	0x1
	.value	0x7de
	.long	0x38
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x21
	.long	.LASF369
	.byte	0x1
	.value	0x7de
	.long	0x3f
	.byte	0x1
	.byte	0x5d
	.uleb128 0x24
	.string	"d"
	.byte	0x1
	.value	0x7e0
	.long	0x53b9
	.byte	0x1
	.byte	0x56
	.uleb128 0x24
	.string	"s"
	.byte	0x1
	.value	0x7e1
	.long	0xe28
	.byte	0x1
	.byte	0x53
	.uleb128 0x37
	.long	.LASF370
	.byte	0x1
	.value	0x7e2
	.long	0x626
	.uleb128 0x3b
	.quad	.LBB398
	.quad	.LBE398
	.uleb128 0x27
	.long	.LASF371
	.byte	0x1
	.value	0x7ff
	.long	0x46
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
	.long	0x59b2
	.long	.LASF372
	.byte	0x1
	.value	0x813
	.byte	0x1
	.quad	.LFB315
	.quad	.LFE315
	.byte	0x1
	.byte	0x57
	.uleb128 0x22
	.string	"s"
	.byte	0x1
	.value	0x811
	.long	0xcfa
	.byte	0x1
	.byte	0x55
	.uleb128 0x22
	.string	"x"
	.byte	0x1
	.value	0x812
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x22
	.string	"y"
	.byte	0x1
	.value	0x812
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x22
	.string	"w"
	.byte	0x1
	.value	0x812
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x22
	.string	"h"
	.byte	0x1
	.value	0x812
	.long	0x3f
	.byte	0x1
	.byte	0x58
	.byte	0x0
	.uleb128 0x25
	.long	0x59f6
	.long	.LASF373
	.byte	0x1
	.value	0x817
	.byte	0x1
	.quad	.LFB316
	.quad	.LFE316
	.byte	0x1
	.byte	0x57
	.uleb128 0x22
	.string	"s"
	.byte	0x1
	.value	0x816
	.long	0xcfa
	.byte	0x1
	.byte	0x53
	.uleb128 0x22
	.string	"w"
	.byte	0x1
	.value	0x816
	.long	0x3f
	.byte	0x1
	.byte	0x5c
	.uleb128 0x22
	.string	"h"
	.byte	0x1
	.value	0x816
	.long	0x3f
	.byte	0x1
	.byte	0x5d
	.byte	0x0
	.uleb128 0x25
	.long	0x5a22
	.long	.LASF374
	.byte	0x1
	.value	0x81f
	.byte	0x1
	.quad	.LFB317
	.quad	.LFE317
	.byte	0x1
	.byte	0x57
	.uleb128 0x22
	.string	"s"
	.byte	0x1
	.value	0x81e
	.long	0xcfa
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x29
	.long	0x5ad4
	.byte	0x1
	.long	.LASF375
	.byte	0x1
	.value	0x824
	.byte	0x1
	.long	0x3f
	.quad	.LFB318
	.quad	.LFE318
	.byte	0x1
	.byte	0x57
	.uleb128 0x21
	.long	.LASF376
	.byte	0x1
	.value	0x822
	.long	0x6f
	.byte	0x1
	.byte	0x55
	.uleb128 0x21
	.long	.LASF68
	.byte	0x1
	.value	0x822
	.long	0x626
	.byte	0x1
	.byte	0x53
	.uleb128 0x22
	.string	"w"
	.byte	0x1
	.value	0x823
	.long	0x3f
	.byte	0x1
	.byte	0x5e
	.uleb128 0x22
	.string	"h"
	.byte	0x1
	.value	0x823
	.long	0x3f
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x21
	.long	.LASF69
	.byte	0x1
	.value	0x823
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.uleb128 0x24
	.string	"f"
	.byte	0x1
	.value	0x825
	.long	0x3be
	.byte	0x1
	.byte	0x5d
	.uleb128 0x24
	.string	"d"
	.byte	0x1
	.value	0x826
	.long	0x626
	.byte	0x1
	.byte	0x56
	.uleb128 0x24
	.string	"d1"
	.byte	0x1
	.value	0x826
	.long	0x626
	.byte	0x1
	.byte	0x5f
	.uleb128 0x24
	.string	"v"
	.byte	0x1
	.value	0x827
	.long	0x46
	.byte	0x1
	.byte	0x53
	.uleb128 0x24
	.string	"y"
	.byte	0x1
	.value	0x828
	.long	0x3f
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x24
	.string	"x"
	.byte	0x1
	.value	0x828
	.long	0x3f
	.byte	0x1
	.byte	0x5c
	.byte	0x0
	.uleb128 0x25
	.long	0x5b44
	.long	.LASF377
	.byte	0x1
	.value	0x842
	.byte	0x1
	.quad	.LFB319
	.quad	.LFE319
	.byte	0x1
	.byte	0x57
	.uleb128 0x21
	.long	.LASF73
	.byte	0x1
	.value	0x841
	.long	0xac
	.byte	0x1
	.byte	0x56
	.uleb128 0x21
	.long	.LASF376
	.byte	0x1
	.value	0x841
	.long	0x6f
	.byte	0x1
	.byte	0x5d
	.uleb128 0x23
	.string	"s"
	.byte	0x1
	.value	0x843
	.long	0xe28
	.uleb128 0x27
	.long	.LASF378
	.byte	0x1
	.value	0x844
	.long	0xcfa
	.byte	0x1
	.byte	0x5c
	.uleb128 0x24
	.string	"ds1"
	.byte	0x1
	.value	0x844
	.long	0x449
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.string	"ds"
	.byte	0x1
	.value	0x844
	.long	0xcfa
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x3e
	.long	.LASF379
	.byte	0x10
	.byte	0x91
	.long	0x2e1
	.byte	0x1
	.byte	0x1
	.uleb128 0x3e
	.long	.LASF380
	.byte	0x10
	.byte	0x92
	.long	0x2e1
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.long	.LASF381
	.byte	0x2
	.value	0x376
	.long	0x626
	.byte	0x1
	.byte	0x1
	.uleb128 0x3e
	.long	.LASF382
	.byte	0x14
	.byte	0x3
	.long	0x339
	.byte	0x1
	.byte	0x1
	.uleb128 0xc
	.long	0x5b89
	.long	0x444
	.uleb128 0xd
	.long	0x61
	.byte	0x7
	.byte	0x0
	.uleb128 0x40
	.long	.LASF383
	.byte	0x1
	.byte	0x26
	.long	0x5b9f
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	sr_mask
	.uleb128 0x6
	.long	0x5b79
	.uleb128 0xc
	.long	0x5bb4
	.long	0x444
	.uleb128 0xd
	.long	0x61
	.byte	0xf
	.byte	0x0
	.uleb128 0x40
	.long	.LASF384
	.byte	0x1
	.byte	0x31
	.long	0x5bca
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	gr_mask
	.uleb128 0x6
	.long	0x5ba4
	.uleb128 0xc
	.long	0x5bdf
	.long	0x4f80
	.uleb128 0xd
	.long	0x61
	.byte	0xf
	.byte	0x0
	.uleb128 0x1e
	.long	.LASF385
	.byte	0x1
	.byte	0x5d
	.long	0x5bf4
	.byte	0x9
	.byte	0x3
	.quad	mask16
	.uleb128 0x6
	.long	0x5bcf
	.uleb128 0x1e
	.long	.LASF386
	.byte	0x1
	.byte	0x78
	.long	0x5c0e
	.byte	0x9
	.byte	0x3
	.quad	dmask16
	.uleb128 0x6
	.long	0x5bcf
	.uleb128 0xc
	.long	0x5c23
	.long	0x4f80
	.uleb128 0xd
	.long	0x61
	.byte	0x3
	.byte	0x0
	.uleb128 0x1e
	.long	.LASF387
	.byte	0x1
	.byte	0x8b
	.long	0x5c38
	.byte	0x9
	.byte	0x3
	.quad	dmask4
	.uleb128 0x6
	.long	0x5c13
	.uleb128 0x1e
	.long	.LASF388
	.byte	0x1
	.byte	0x92
	.long	0xd6e
	.byte	0x9
	.byte	0x3
	.quad	expand4
	.uleb128 0xc
	.long	0x5c62
	.long	0x318
	.uleb128 0xd
	.long	0x61
	.byte	0xff
	.byte	0x0
	.uleb128 0x1e
	.long	.LASF389
	.byte	0x1
	.byte	0x93
	.long	0x5c52
	.byte	0x9
	.byte	0x3
	.quad	expand2
	.uleb128 0x1e
	.long	.LASF390
	.byte	0x1
	.byte	0x94
	.long	0x364
	.byte	0x9
	.byte	0x3
	.quad	expand4to8
	.uleb128 0xc
	.long	0x5c9c
	.long	0x4abd
	.uleb128 0xd
	.long	0x61
	.byte	0x6
	.byte	0x0
	.uleb128 0x27
	.long	.LASF391
	.byte	0x1
	.value	0x40a
	.long	0x5c8c
	.byte	0x9
	.byte	0x3
	.quad	vga_draw_glyph8_table
	.uleb128 0x27
	.long	.LASF392
	.byte	0x1
	.value	0x414
	.long	0x5c8c
	.byte	0x9
	.byte	0x3
	.quad	vga_draw_glyph16_table
	.uleb128 0xc
	.long	0x5cd8
	.long	0x4ac3
	.uleb128 0xd
	.long	0x61
	.byte	0x6
	.byte	0x0
	.uleb128 0x27
	.long	.LASF393
	.byte	0x1
	.value	0x41e
	.long	0x5cc8
	.byte	0x9
	.byte	0x3
	.quad	vga_draw_glyph9_table
	.uleb128 0xc
	.long	0x5cfe
	.long	0x444
	.uleb128 0xd
	.long	0x61
	.byte	0x7f
	.byte	0x0
	.uleb128 0x27
	.long	.LASF394
	.byte	0x1
	.value	0x428
	.long	0x5d14
	.byte	0x9
	.byte	0x3
	.quad	cursor_glyph
	.uleb128 0x6
	.long	0x5cee
	.uleb128 0xc
	.long	0x5d29
	.long	0x4c3e
	.uleb128 0xd
	.long	0x61
	.byte	0x45
	.byte	0x0
	.uleb128 0x27
	.long	.LASF395
	.byte	0x1
	.value	0x4fc
	.long	0x5d19
	.byte	0x9
	.byte	0x3
	.quad	vga_draw_line_table
	.uleb128 0xc
	.long	0x5d4f
	.long	0x5d4f
	.uleb128 0xd
	.long	0x61
	.byte	0x6
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xe2e
	.uleb128 0x27
	.long	.LASF396
	.byte	0x1
	.value	0x550
	.long	0x5d3f
	.byte	0x9
	.byte	0x3
	.quad	rgb_to_pixel_dup_table
	.uleb128 0xc
	.long	0x5d7b
	.long	0x5d7b
	.uleb128 0xd
	.long	0x61
	.byte	0x2
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x3f6
	.uleb128 0x27
	.long	.LASF397
	.byte	0x1
	.value	0x681
	.long	0x5d6b
	.byte	0x9
	.byte	0x3
	.quad	vga_mem_read
	.uleb128 0xc
	.long	0x5da7
	.long	0x5da7
	.uleb128 0xd
	.long	0x61
	.byte	0x2
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x3c4
	.uleb128 0x27
	.long	.LASF398
	.byte	0x1
	.value	0x687
	.long	0x5d97
	.byte	0x9
	.byte	0x3
	.quad	vga_mem_write
	.uleb128 0xc
	.long	0x5dd3
	.long	0x5d7b
	.uleb128 0xd
	.long	0x61
	.byte	0x2
	.byte	0x0
	.uleb128 0x27
	.long	.LASF399
	.byte	0x1
	.value	0x791
	.long	0x5dc3
	.byte	0x9
	.byte	0x3
	.quad	vga_mm_read_ctrl
	.uleb128 0xc
	.long	0x5df9
	.long	0x5da7
	.uleb128 0xd
	.long	0x61
	.byte	0x2
	.byte	0x0
	.uleb128 0x27
	.long	.LASF400
	.byte	0x1
	.value	0x797
	.long	0x5de9
	.byte	0x9
	.byte	0x3
	.quad	vga_mm_write_ctrl
	.uleb128 0x27
	.long	.LASF401
	.byte	0x1
	.value	0x80f
	.long	0x3f
	.byte	0x9
	.byte	0x3
	.quad	vga_save_w
	.uleb128 0x27
	.long	.LASF402
	.byte	0x1
	.value	0x80f
	.long	0x3f
	.byte	0x9
	.byte	0x3
	.quad	vga_save_h
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
	.uleb128 0xf
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x27
	.uleb128 0xc
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
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0xc
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
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x6
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
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
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x6
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
	.uleb128 0x1f
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x55
	.uleb128 0x6
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
	.uleb128 0x55
	.uleb128 0x6
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
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
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
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
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
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
	.uleb128 0x36
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
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
	.uleb128 0x5
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x3d
	.uleb128 0xb
	.byte	0x1
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
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x11f
	.value	0x2
	.long	.Ldebug_info0
	.long	0x5e3c
	.long	0x1111
	.string	"vga_mem_readb"
	.long	0x1248
	.string	"vga_mem_writeb"
	.long	0x1a49
	.string	"vga_draw_cursor_line_8"
	.long	0x29e2
	.string	"vga_draw_cursor_line_16"
	.long	0x3553
	.string	"vga_draw_cursor_line_32"
	.long	0x4312
	.string	"vga_invalidate_scanlines"
	.long	0x53bf
	.string	"vga_common_init"
	.long	0x5487
	.string	"vga_init"
	.long	0x56f0
	.string	"isa_vga_init"
	.long	0x5758
	.string	"isa_vga_mm_init"
	.long	0x588a
	.string	"pci_vga_init"
	.long	0x5a22
	.string	"ppm_save"
	.long	0x5b89
	.string	"sr_mask"
	.long	0x5bb4
	.string	"gr_mask"
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
	.quad	.LBB6-.Ltext0
	.quad	.LBE6-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB3-.Ltext0
	.quad	.LBE3-.Ltext0
	.quad	.LBB5-.Ltext0
	.quad	.LBE5-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB4-.Ltext0
	.quad	.LBE4-.Ltext0
	.quad	.LBB7-.Ltext0
	.quad	.LBE7-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB27-.Ltext0
	.quad	.LBE27-.Ltext0
	.quad	.LBB29-.Ltext0
	.quad	.LBE29-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB89-.Ltext0
	.quad	.LBE89-.Ltext0
	.quad	.LBB91-.Ltext0
	.quad	.LBE91-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB169-.Ltext0
	.quad	.LBE169-.Ltext0
	.quad	.LBB173-.Ltext0
	.quad	.LBE173-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB177-.Ltext0
	.quad	.LBE177-.Ltext0
	.quad	.LBB181-.Ltext0
	.quad	.LBE181-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB183-.Ltext0
	.quad	.LBE183-.Ltext0
	.quad	.LBB186-.Ltext0
	.quad	.LBE186-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB188-.Ltext0
	.quad	.LBE188-.Ltext0
	.quad	.LBB191-.Ltext0
	.quad	.LBE191-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB197-.Ltext0
	.quad	.LBE197-.Ltext0
	.quad	.LBB263-.Ltext0
	.quad	.LBE263-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB203-.Ltext0
	.quad	.LBE203-.Ltext0
	.quad	.LBB252-.Ltext0
	.quad	.LBE252-.Ltext0
	.quad	.LBB218-.Ltext0
	.quad	.LBE218-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB210-.Ltext0
	.quad	.LBE210-.Ltext0
	.quad	.LBB253-.Ltext0
	.quad	.LBE253-.Ltext0
	.quad	.LBB211-.Ltext0
	.quad	.LBE211-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB216-.Ltext0
	.quad	.LBE216-.Ltext0
	.quad	.LBB257-.Ltext0
	.quad	.LBE257-.Ltext0
	.quad	.LBB222-.Ltext0
	.quad	.LBE222-.Ltext0
	.quad	0x0
	.quad	0x0
	.section	.debug_str,"MS",@progbits,1
.LASF5:
	.string	"char"
.LASF179:
	.string	"memory_map_mode"
.LASF9:
	.string	"size_t"
.LASF117:
	.string	"sr_index"
.LASF235:
	.string	"vga_draw_line32_15bgr"
.LASF313:
	.string	"depth_index"
.LASF206:
	.string	"plane_mask"
.LASF212:
	.string	"vga_draw_cursor_line_8"
.LASF402:
	.string	"vga_save_h"
.LASF211:
	.string	"vga_draw_line8_8"
.LASF265:
	.string	"vga_draw_line8d2_32"
.LASF12:
	.string	"int32_t"
.LASF246:
	.string	"vga_draw_cursor_line_16"
.LASF77:
	.string	"dpy_refresh"
.LASF312:
	.string	"font_base"
.LASF199:
	.string	"xorcol"
.LASF26:
	.string	"_IO_save_end"
.LASF154:
	.string	"cursor_start"
.LASF389:
	.string	"expand2"
.LASF388:
	.string	"expand4"
.LASF197:
	.string	"bgcol"
.LASF19:
	.string	"_IO_write_base"
.LASF149:
	.string	"last_ch"
.LASF150:
	.string	"last_width"
.LASF35:
	.string	"_lock"
.LASF386:
	.string	"dmask16"
.LASF401:
	.string	"vga_save_w"
.LASF107:
	.string	"VGAState"
.LASF184:
	.string	"vga_mem_writeb"
.LASF24:
	.string	"_IO_save_base"
.LASF346:
	.string	"region_num"
.LASF193:
	.string	"vga_mem_writel"
.LASF374:
	.string	"vga_save_dpy_refresh"
.LASF267:
	.string	"vga_draw_cursor_line_32"
.LASF283:
	.string	"rgb_to_pixel32_dup"
.LASF151:
	.string	"last_height"
.LASF32:
	.string	"_cur_column"
.LASF240:
	.string	"vga_draw_line2_16"
.LASF178:
	.string	"vbe_ioport_write_data"
.LASF72:
	.string	"height"
.LASF42:
	.string	"_mode"
.LASF190:
	.string	"set_mask"
.LASF370:
	.string	"pci_conf"
.LASF100:
	.string	"PCIConfigReadFunc"
.LASF165:
	.string	"last_ch_attr"
.LASF300:
	.string	"get_depth_index"
.LASF317:
	.string	"line_start"
.LASF148:
	.string	"last_cw"
.LASF238:
	.string	"vga_draw_glyph16_16"
.LASF378:
	.string	"saved_ds"
.LASF155:
	.string	"cursor_end"
.LASF372:
	.string	"vga_save_dpy_update"
.LASF14:
	.string	"FILE"
.LASF2:
	.string	"long int"
.LASF391:
	.string	"vga_draw_glyph8_table"
.LASF69:
	.string	"linesize"
.LASF335:
	.string	"vga_save"
.LASF192:
	.string	"vga_mem_writew"
.LASF354:
	.string	"vga_mm_readb"
.LASF46:
	.string	"_IO_marker"
.LASF134:
	.string	"get_resolution"
.LASF63:
	.string	"netidx"
.LASF73:
	.string	"opaque"
.LASF216:
	.string	"color1"
.LASF78:
	.string	"dpy_copy"
.LASF331:
	.string	"shift"
.LASF4:
	.string	"short unsigned int"
.LASF157:
	.string	"rgb_to_pixel"
.LASF186:
	.string	"func_select"
.LASF55:
	.string	"ram_addr_t"
.LASF158:
	.string	"update"
.LASF93:
	.string	"irq_state"
.LASF121:
	.string	"cr_index"
.LASF122:
	.string	"st00"
.LASF196:
	.string	"fgcol"
.LASF215:
	.string	"color0"
.LASF172:
	.string	"index"
.LASF368:
	.string	"vga_bios_offset"
.LASF293:
	.string	"update_basic_params"
.LASF95:
	.string	"IRQState"
.LASF132:
	.string	"get_bpp"
.LASF164:
	.string	"last_palette"
.LASF7:
	.string	"signed char"
.LASF337:
	.string	"qemu_put_8s"
.LASF45:
	.string	"_IO_FILE"
.LASF254:
	.string	"vga_draw_line16_16bgr"
.LASF341:
	.string	"is_vbe"
.LASF133:
	.string	"get_offsets"
.LASF319:
	.string	"vga_draw_graphic"
.LASF323:
	.string	"page0"
.LASF128:
	.string	"dac_cache"
.LASF225:
	.string	"vga_draw_line32_8"
.LASF191:
	.string	"cpu_physical_memory_set_dirty"
.LASF152:
	.string	"last_scr_width"
.LASF6:
	.string	"unsigned char"
.LASF347:
	.string	"vga_common_init"
.LASF321:
	.string	"page_max"
.LASF64:
	.string	"argos_rtag_t"
.LASF66:
	.string	"CPUReadMemoryFunc"
.LASF234:
	.string	"vga_draw_line24_15bgr"
.LASF61:
	.string	"argos_rtag"
.LASF258:
	.string	"vga_draw_glyph_line_32"
.LASF222:
	.string	"rgb_to_pixel8"
.LASF203:
	.string	"dup9"
.LASF302:
	.string	"vga_draw_text"
.LASF174:
	.string	"vga_ioport_write"
.LASF356:
	.string	"value"
.LASF161:
	.string	"invalidated_y_table"
.LASF202:
	.string	"vga_draw_glyph9_8"
.LASF140:
	.string	"font_offsets"
.LASF406:
	.string	"do_write"
.LASF87:
	.string	"devfn"
.LASF242:
	.string	"vga_draw_line4_16"
.LASF344:
	.string	"qemu_get_be16s"
.LASF256:
	.string	"vga_draw_line32_16bgr"
.LASF365:
	.string	"vga_mm_init"
.LASF327:
	.string	"multi_scan"
.LASF262:
	.string	"vga_draw_line2d2_32"
.LASF44:
	.string	"_IO_lock_t"
.LASF82:
	.string	"QEMUFile"
.LASF395:
	.string	"vga_draw_line_table"
.LASF115:
	.string	"pci_dev"
.LASF124:
	.string	"dac_state"
.LASF86:
	.string	"config"
.LASF280:
	.string	"rgb_to_pixel15bgr_dup"
.LASF245:
	.string	"vga_draw_line8_16"
.LASF136:
	.string	"vbe_regs"
.LASF59:
	.string	"argos_paddr_t"
.LASF146:
	.string	"start_addr"
.LASF16:
	.string	"_IO_read_ptr"
.LASF57:
	.string	"double"
.LASF156:
	.string	"cursor_offset"
.LASF324:
	.string	"page1"
.LASF281:
	.string	"rgb_to_pixel16_dup"
.LASF357:
	.string	"vga_mm_readw"
.LASF49:
	.string	"_pos"
.LASF373:
	.string	"vga_save_dpy_resize"
.LASF289:
	.string	"vga_get_offsets"
.LASF106:
	.string	"map_func"
.LASF380:
	.string	"stdout"
.LASF85:
	.string	"PCIDevice"
.LASF241:
	.string	"vga_draw_line2d2_16"
.LASF99:
	.string	"PCIConfigWriteFunc"
.LASF27:
	.string	"_markers"
.LASF263:
	.string	"vga_draw_line4_32"
.LASF217:
	.string	"color_xor"
.LASF171:
	.string	"vga_state"
.LASF168:
	.string	"vga_draw_line_func"
.LASF330:
	.string	"vga_draw_line"
.LASF363:
	.string	"vram_base"
.LASF306:
	.string	"cx_min"
.LASF397:
	.string	"vga_mem_read"
.LASF266:
	.string	"vga_draw_line8_32"
.LASF261:
	.string	"vga_draw_line2_32"
.LASF259:
	.string	"vga_draw_glyph16_32"
.LASF166:
	.string	"vga_draw_glyph8_func"
.LASF67:
	.string	"DisplayState"
.LASF311:
	.string	"cursor_ptr"
.LASF43:
	.string	"_unused2"
.LASF334:
	.string	"vga_invalidate_display"
.LASF183:
	.string	"vga_mem_readb"
.LASF167:
	.string	"vga_draw_glyph9_func"
.LASF243:
	.string	"vga_draw_line4d2_16"
.LASF314:
	.string	"ch_attr_ptr"
.LASF291:
	.string	"pstart_addr"
.LASF339:
	.string	"vga_load"
.LASF392:
	.string	"vga_draw_glyph16_table"
.LASF315:
	.string	"vga_draw_glyph8"
.LASF316:
	.string	"vga_draw_glyph9"
.LASF30:
	.string	"_flags2"
.LASF205:
	.string	"vga_draw_line2_8"
.LASF18:
	.string	"_IO_read_base"
.LASF194:
	.string	"vga_draw_glyph8_8"
.LASF252:
	.string	"vga_draw_line15_16bgr"
.LASF260:
	.string	"vga_draw_glyph9_32"
.LASF129:
	.string	"dac_8bit"
.LASF376:
	.string	"filename"
.LASF353:
	.string	"vga_io_memory"
.LASF364:
	.string	"ctrl_base"
.LASF218:
	.string	"plane0"
.LASF247:
	.string	"vga_draw_line15_16"
.LASF379:
	.string	"stdin"
.LASF232:
	.string	"vga_draw_line16_15bgr"
.LASF351:
	.string	"vga_reset"
.LASF361:
	.string	"isa_vga_init"
.LASF31:
	.string	"_old_offset"
.LASF279:
	.string	"rgb_to_pixel15_dup"
.LASF98:
	.string	"vga_hw_screen_dump_ptr"
.LASF304:
	.string	"cattr"
.LASF342:
	.string	"qemu_get_be32s"
.LASF214:
	.string	"poffset"
.LASF223:
	.string	"vga_draw_line16_8"
.LASF345:
	.string	"vga_map"
.LASF207:
	.string	"vga_draw_line2d2_8"
.LASF340:
	.string	"version_id"
.LASF237:
	.string	"vga_draw_glyph_line_16"
.LASF375:
	.string	"ppm_save"
.LASF270:
	.string	"vga_draw_line16_32"
.LASF359:
	.string	"vga_mm_readl"
.LASF338:
	.string	"qemu_put_be16s"
.LASF226:
	.string	"vga_draw_line15_15"
.LASF3:
	.string	"long long int"
.LASF333:
	.string	"dirty_flags"
.LASF175:
	.string	"vbe_ioport_read_index"
.LASF71:
	.string	"width"
.LASF284:
	.string	"rgb_to_pixel32bgr_dup"
.LASF182:
	.string	"vga_mem_readl"
.LASF322:
	.string	"y_start"
.LASF325:
	.string	"bwidth"
.LASF116:
	.string	"latch"
.LASF201:
	.string	"vga_draw_glyph16_8"
.LASF336:
	.string	"qemu_put_be32s"
.LASF399:
	.string	"vga_mm_read_ctrl"
.LASF142:
	.string	"shift_control"
.LASF21:
	.string	"_IO_write_end"
.LASF224:
	.string	"vga_draw_line24_8"
.LASF70:
	.string	"depth"
.LASF153:
	.string	"last_scr_height"
.LASF141:
	.string	"graphic_mode"
.LASF143:
	.string	"double_scan"
.LASF405:
	.string	"/home/remco/Projects/Argos/src/i386-softmmu"
.LASF320:
	.string	"page_min"
.LASF103:
	.string	"addr"
.LASF208:
	.string	"vga_draw_line4_8"
.LASF210:
	.string	"vga_draw_line8d2_8"
.LASF22:
	.string	"_IO_buf_base"
.LASF288:
	.string	"update_palette256"
.LASF187:
	.string	"mask"
.LASF393:
	.string	"vga_draw_glyph9_table"
.LASF47:
	.string	"_next"
.LASF1:
	.string	"unsigned int"
.LASF384:
	.string	"gr_mask"
.LASF403:
	.string	"GNU C 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
.LASF102:
	.string	"PCIIORegion"
.LASF343:
	.string	"qemu_get_8s"
.LASF366:
	.string	"s_ioport_ctrl"
.LASF60:
	.string	"argos_netidx_t"
.LASF37:
	.string	"__pad1"
.LASF38:
	.string	"__pad2"
.LASF39:
	.string	"__pad3"
.LASF40:
	.string	"__pad4"
.LASF41:
	.string	"__pad5"
.LASF65:
	.string	"CPUWriteMemoryFunc"
.LASF48:
	.string	"_sbuf"
.LASF76:
	.string	"dpy_resize"
.LASF352:
	.string	"vga_init"
.LASF92:
	.string	"irq_index"
.LASF74:
	.string	"gui_timer"
.LASF326:
	.string	"disp_width"
.LASF15:
	.string	"_flags"
.LASF68:
	.string	"data"
.LASF290:
	.string	"pline_offset"
.LASF80:
	.string	"mouse_set"
.LASF272:
	.string	"vga_draw_line32_32"
.LASF233:
	.string	"rgb_to_pixel15bgr"
.LASF230:
	.string	"vga_draw_line32_15"
.LASF227:
	.string	"vga_draw_line16_15"
.LASF91:
	.string	"config_write"
.LASF90:
	.string	"config_read"
.LASF277:
	.string	"vga_draw_line32_32bgr"
.LASF253:
	.string	"rgb_to_pixel16bgr"
.LASF105:
	.string	"type"
.LASF118:
	.string	"gr_index"
.LASF54:
	.string	"target_phys_addr_t"
.LASF170:
	.string	"PCIVGAState"
.LASF83:
	.string	"QEMUTimer"
.LASF58:
	.string	"long double"
.LASF275:
	.string	"vga_draw_line16_32bgr"
.LASF404:
	.string	"/home/remco/Projects/Argos/src/hw/vga.c"
.LASF231:
	.string	"vga_draw_line15_15bgr"
.LASF144:
	.string	"line_offset"
.LASF349:
	.string	"vga_ram_offset"
.LASF298:
	.string	"vga_invalidate_scanlines"
.LASF113:
	.string	"base_ctrl"
.LASF137:
	.string	"vbe_start_addr"
.LASF36:
	.string	"_offset"
.LASF383:
	.string	"sr_mask"
.LASF273:
	.string	"vga_draw_line15_32bgr"
.LASF173:
	.string	"vga_ioport_read"
.LASF110:
	.string	"vram_size"
.LASF301:
	.string	"vga_draw_blank"
.LASF135:
	.string	"vbe_index"
.LASF268:
	.string	"vga_draw_line15_32"
.LASF104:
	.string	"size"
.LASF108:
	.string	"vram_ptr"
.LASF13:
	.string	"long long unsigned int"
.LASF276:
	.string	"vga_draw_line24_32bgr"
.LASF50:
	.string	"uint8_t"
.LASF51:
	.string	"uint16_t"
.LASF10:
	.string	"__off_t"
.LASF28:
	.string	"_chain"
.LASF0:
	.string	"long unsigned int"
.LASF126:
	.string	"dac_read_index"
.LASF229:
	.string	"vga_draw_line24_15"
.LASF387:
	.string	"dmask4"
.LASF213:
	.string	"src1"
.LASF236:
	.string	"vga_draw_glyph8_16"
.LASF177:
	.string	"vbe_ioport_write_index"
.LASF219:
	.string	"plane1"
.LASF278:
	.string	"rgb_to_pixel8_dup"
.LASF282:
	.string	"rgb_to_pixel16bgr_dup"
.LASF390:
	.string	"expand4to8"
.LASF360:
	.string	"vga_mm_writel"
.LASF209:
	.string	"vga_draw_line4d2_8"
.LASF84:
	.string	"PCIBus"
.LASF125:
	.string	"dac_sub_index"
.LASF394:
	.string	"cursor_glyph"
.LASF139:
	.string	"vbe_bank_mask"
.LASF25:
	.string	"_IO_backup_base"
.LASF34:
	.string	"_shortbuf"
.LASF318:
	.string	"line_last"
.LASF169:
	.string	"rgb_to_pixel_dup_func"
.LASF189:
	.string	"bit_mask"
.LASF355:
	.string	"vga_mm_writeb"
.LASF358:
	.string	"vga_mm_writew"
.LASF310:
	.string	"dest"
.LASF147:
	.string	"plane_updated"
.LASF127:
	.string	"dac_write_index"
.LASF11:
	.string	"__off64_t"
.LASF271:
	.string	"vga_draw_line24_32"
.LASF350:
	.string	"vga_ram_size"
.LASF398:
	.string	"vga_mem_write"
.LASF145:
	.string	"line_compare"
.LASF286:
	.string	"full_update"
.LASF274:
	.string	"rgb_to_pixel32bgr"
.LASF23:
	.string	"_IO_buf_end"
.LASF250:
	.string	"vga_draw_line24_16"
.LASF299:
	.string	"vga_update_display"
.LASF329:
	.string	"addr1"
.LASF131:
	.string	"bank_offset"
.LASF88:
	.string	"name"
.LASF111:
	.string	"bios_offset"
.LASF185:
	.string	"write_mode"
.LASF109:
	.string	"vram_offset"
.LASF296:
	.string	"pwidth"
.LASF120:
	.string	"ar_flip_flop"
.LASF8:
	.string	"short int"
.LASF53:
	.string	"uint64_t"
.LASF287:
	.string	"c6_to_8"
.LASF307:
	.string	"cx_max"
.LASF381:
	.string	"phys_ram_dirty"
.LASF33:
	.string	"_vtable_offset"
.LASF97:
	.string	"vga_hw_invalidate_ptr"
.LASF220:
	.string	"vga_draw_line15_8"
.LASF257:
	.string	"vga_draw_glyph8_32"
.LASF138:
	.string	"vbe_line_offset"
.LASF221:
	.string	"lduw_le_p"
.LASF96:
	.string	"vga_hw_update_ptr"
.LASF160:
	.string	"screen_dump"
.LASF239:
	.string	"vga_draw_glyph9_16"
.LASF255:
	.string	"vga_draw_line24_16bgr"
.LASF305:
	.string	"ch_attr"
.LASF112:
	.string	"bios_size"
.LASF75:
	.string	"dpy_update"
.LASF204:
	.string	"cpu_to_le32wu"
.LASF17:
	.string	"_IO_read_end"
.LASF295:
	.string	"vga_get_resolution"
.LASF228:
	.string	"rgb_to_pixel15"
.LASF396:
	.string	"rgb_to_pixel_dup_table"
.LASF89:
	.string	"io_regions"
.LASF52:
	.string	"uint32_t"
.LASF162:
	.string	"cursor_invalidate"
.LASF385:
	.string	"mask16"
.LASF244:
	.string	"vga_draw_line8d2_16"
.LASF362:
	.string	"isa_vga_mm_init"
.LASF114:
	.string	"it_shift"
.LASF328:
	.string	"multi_run"
.LASF29:
	.string	"_fileno"
.LASF382:
	.string	"isa_mem_base"
.LASF195:
	.string	"font_ptr"
.LASF119:
	.string	"ar_index"
.LASF371:
	.string	"bios_total_size"
.LASF101:
	.string	"PCIMapIORegionFunc"
.LASF81:
	.string	"cursor_define"
.LASF369:
	.string	"vga_bios_size"
.LASF163:
	.string	"cursor_draw_line"
.LASF79:
	.string	"dpy_fill"
.LASF56:
	.string	"float"
.LASF123:
	.string	"st01"
.LASF264:
	.string	"vga_draw_line4d2_32"
.LASF377:
	.string	"vga_screen_dump"
.LASF292:
	.string	"pline_compare"
.LASF200:
	.string	"vga_draw_glyph_line_8"
.LASF248:
	.string	"rgb_to_pixel16"
.LASF367:
	.string	"pci_vga_init"
.LASF20:
	.string	"_IO_write_ptr"
.LASF198:
	.string	"font_data"
.LASF285:
	.string	"update_palette16"
.LASF308:
	.string	"x_incr"
.LASF297:
	.string	"pheight"
.LASF400:
	.string	"vga_mm_write_ctrl"
.LASF188:
	.string	"write_mask"
.LASF249:
	.string	"vga_draw_line16_16"
.LASF269:
	.string	"rgb_to_pixel32"
.LASF251:
	.string	"vga_draw_line32_16"
.LASF309:
	.string	"offset"
.LASF130:
	.string	"palette"
.LASF62:
	.string	"origin"
.LASF180:
	.string	"plane"
.LASF348:
	.string	"vga_ram_base"
.LASF294:
	.string	"vga_get_bpp"
.LASF181:
	.string	"vga_mem_readw"
.LASF303:
	.string	"cheight"
.LASF159:
	.string	"invalidate"
.LASF332:
	.string	"cpu_physical_memory_get_dirty"
.LASF176:
	.string	"vbe_ioport_read_data"
.LASF94:
	.string	"qemu_irq"
	.section	.note.GNU-stack,"",@progbits
	.ident	"GCC: (GNU) 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
