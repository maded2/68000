#NO_APP
	.file	"ssd1351.c"
	.text
	.section	.rodata
	.align	2
	.type	BLACK, @object
	.size	BLACK, 2
BLACK:
	.zero	2
	.align	2
	.type	WHITE, @object
	.size	WHITE, 2
WHITE:
	.word	-1
	.align	2
	.type	NAVY, @object
	.size	NAVY, 2
NAVY:
	.word	15
	.align	2
	.type	DARKGREEN, @object
	.size	DARKGREEN, 2
DARKGREEN:
	.word	992
	.align	2
	.type	DARKCYAN, @object
	.size	DARKCYAN, 2
DARKCYAN:
	.word	1007
	.align	2
	.type	MAROON, @object
	.size	MAROON, 2
MAROON:
	.word	30720
	.align	2
	.type	PURPLE, @object
	.size	PURPLE, 2
PURPLE:
	.word	30735
	.align	2
	.type	ORANGE, @object
	.size	ORANGE, 2
ORANGE:
	.word	-736
	.align	2
	.type	PINK, @object
	.size	PINK, 2
PINK:
	.word	-2017
	.align	2
	.type	OLIVE, @object
	.size	OLIVE, 2
OLIVE:
	.word	31712
	.align	2
	.type	BLUE, @object
	.size	BLUE, 2
BLUE:
	.word	31
	.align	2
	.type	RED, @object
	.size	RED, 2
RED:
	.word	-2048
	.align	2
	.type	GREEN, @object
	.size	GREEN, 2
GREEN:
	.word	2016
	.align	2
	.type	CYAN, @object
	.size	CYAN, 2
CYAN:
	.word	2047
	.align	2
	.type	MAGENTA, @object
	.size	MAGENTA, 2
MAGENTA:
	.word	-2017
	.align	2
	.type	YELLOW, @object
	.size	YELLOW, 2
YELLOW:
	.word	-32
	.align	2
	.type	BRIGHT_RED, @object
	.size	BRIGHT_RED, 2
BRIGHT_RED:
	.word	-2032
	.align	2
	.type	LIGHT_GREY, @object
	.size	LIGHT_GREY, 2
LIGHT_GREY:
	.word	-14824
	.align	2
	.type	DARK_GREY, @object
	.size	DARK_GREY, 2
DARK_GREY:
	.word	31727
	.align	2
	.type	GREENYELLOW, @object
	.size	GREENYELLOW, 2
GREENYELLOW:
	.word	-20507
	.globl	spiStatus
	.data
	.align	2
	.type	spiStatus, @object
	.size	spiStatus, 4
spiStatus:
	.long	11534337
	.globl	spiInOut
	.align	2
	.type	spiInOut, @object
	.size	spiInOut, 4
spiInOut:
	.long	11534339
	.globl	cursor_x
	.section	.bss
	.type	cursor_x, @object
	.size	cursor_x, 1
cursor_x:
	.zero	1
	.globl	cursor_y
	.type	cursor_y, @object
	.size	cursor_y, 1
cursor_y:
	.zero	1
	.globl	font_width
	.data
	.type	font_width, @object
	.size	font_width, 1
font_width:
	.byte	8
	.globl	font_height
	.type	font_height, @object
	.size	font_height, 1
font_height:
	.byte	8
	.globl	yOffset
	.section	.bss
	.type	yOffset, @object
	.size	yOffset, 1
yOffset:
	.zero	1
	.globl	scroll
	.type	scroll, @object
	.size	scroll, 1
scroll:
	.zero	1
	.globl	selectedFont
	.align	2
	.type	selectedFont, @object
	.size	selectedFont, 4
selectedFont:
	.zero	4
	.text
	.align	2
	.globl	setSpiStatus
	.type	setSpiStatus, @function
setSpiStatus:
	subq.l #4,%sp
	move.l 8(%sp),%d0
	move.b %d0,%d0
	move.b %d0,2(%sp)
	move.l spiStatus,%a0
	move.b 2(%sp),(%a0)
	nop
	addq.l #4,%sp
	rts
	.size	setSpiStatus, .-setSpiStatus
	.align	2
	.globl	sendAndWait
	.type	sendAndWait, @function
sendAndWait:
	subq.l #4,%sp
	move.l 8(%sp),%d0
	move.b %d0,%d0
	move.b %d0,2(%sp)
	move.l spiInOut,%a0
	move.b 2(%sp),(%a0)
	nop
	addq.l #4,%sp
	rts
	.size	sendAndWait, .-sendAndWait
	.align	2
	.globl	outSpi0
	.type	outSpi0, @function
outSpi0:
	subq.l #4,%sp
	move.l 8(%sp),%d0
	move.b %d0,%d0
	move.b %d0,2(%sp)
	pea 16.w
	jsr setSpiStatus
	addq.l #4,%sp
	moveq #0,%d0
	move.b 2(%sp),%d0
	move.l %d0,-(%sp)
	jsr sendAndWait
	addq.l #4,%sp
	pea 20.w
	jsr setSpiStatus
	addq.l #4,%sp
	nop
	addq.l #4,%sp
	rts
	.size	outSpi0, .-outSpi0
	.align	2
	.globl	outSpi1
	.type	outSpi1, @function
outSpi1:
	subq.l #4,%sp
	move.l 8(%sp),%d1
	move.l 12(%sp),%d0
	move.b %d1,%d1
	move.b %d1,2(%sp)
	move.b %d0,%d0
	move.b %d0,(%sp)
	pea 16.w
	jsr setSpiStatus
	addq.l #4,%sp
	moveq #0,%d0
	move.b 2(%sp),%d0
	move.l %d0,-(%sp)
	jsr sendAndWait
	addq.l #4,%sp
	pea 20.w
	jsr setSpiStatus
	addq.l #4,%sp
	moveq #0,%d0
	move.b (%sp),%d0
	move.l %d0,-(%sp)
	jsr sendAndWait
	addq.l #4,%sp
	pea 28.w
	jsr setSpiStatus
	addq.l #4,%sp
	nop
	addq.l #4,%sp
	rts
	.size	outSpi1, .-outSpi1
	.align	2
	.globl	outSpi2
	.type	outSpi2, @function
outSpi2:
	subq.l #8,%sp
	move.l %d2,-(%sp)
	move.l 16(%sp),%d2
	move.l 20(%sp),%d1
	move.l 24(%sp),%d0
	move.b %d2,%d2
	move.b %d2,10(%sp)
	move.b %d1,%d1
	move.b %d1,8(%sp)
	move.b %d0,%d0
	move.b %d0,6(%sp)
	pea 16.w
	jsr setSpiStatus
	addq.l #4,%sp
	moveq #0,%d0
	move.b 10(%sp),%d0
	move.l %d0,-(%sp)
	jsr sendAndWait
	addq.l #4,%sp
	pea 20.w
	jsr setSpiStatus
	addq.l #4,%sp
	moveq #0,%d0
	move.b 8(%sp),%d0
	move.l %d0,-(%sp)
	jsr sendAndWait
	addq.l #4,%sp
	moveq #0,%d0
	move.b 6(%sp),%d0
	move.l %d0,-(%sp)
	jsr sendAndWait
	addq.l #4,%sp
	pea 28.w
	jsr setSpiStatus
	addq.l #4,%sp
	nop
	move.l (%sp)+,%d2
	addq.l #8,%sp
	rts
	.size	outSpi2, .-outSpi2
	.align	2
	.globl	outSpi3
	.type	outSpi3, @function
outSpi3:
	subq.l #8,%sp
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l 20(%sp),%d3
	move.l 24(%sp),%d2
	move.l 28(%sp),%d1
	move.l 32(%sp),%d0
	move.b %d3,%d3
	move.b %d3,14(%sp)
	move.b %d2,%d2
	move.b %d2,12(%sp)
	move.b %d1,%d1
	move.b %d1,10(%sp)
	move.b %d0,%d0
	move.b %d0,8(%sp)
	pea 16.w
	jsr setSpiStatus
	addq.l #4,%sp
	moveq #0,%d0
	move.b 14(%sp),%d0
	move.l %d0,-(%sp)
	jsr sendAndWait
	addq.l #4,%sp
	pea 20.w
	jsr setSpiStatus
	addq.l #4,%sp
	moveq #0,%d0
	move.b 12(%sp),%d0
	move.l %d0,-(%sp)
	jsr sendAndWait
	addq.l #4,%sp
	moveq #0,%d0
	move.b 10(%sp),%d0
	move.l %d0,-(%sp)
	jsr sendAndWait
	addq.l #4,%sp
	moveq #0,%d0
	move.b 8(%sp),%d0
	move.l %d0,-(%sp)
	jsr sendAndWait
	addq.l #4,%sp
	pea 28.w
	jsr setSpiStatus
	addq.l #4,%sp
	nop
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	addq.l #8,%sp
	rts
	.size	outSpi3, .-outSpi3
	.align	2
	.globl	setAddrWindow
	.type	setAddrWindow, @function
setAddrWindow:
	subq.l #8,%sp
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l 20(%sp),%d3
	move.l 24(%sp),%d2
	move.l 28(%sp),%d1
	move.l 32(%sp),%d0
	move.b %d3,%d3
	move.b %d3,14(%sp)
	move.b %d2,%d2
	move.b %d2,12(%sp)
	move.b %d1,%d1
	move.b %d1,10(%sp)
	move.b %d0,%d0
	move.b %d0,8(%sp)
	moveq #0,%d1
	move.b 10(%sp),%d1
	moveq #0,%d0
	move.b 14(%sp),%d0
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	pea 21.w
	jsr outSpi2
	lea (12,%sp),%sp
	moveq #0,%d1
	move.b 8(%sp),%d1
	moveq #0,%d0
	move.b 12(%sp),%d0
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	pea 117.w
	jsr outSpi2
	lea (12,%sp),%sp
	pea 16.w
	jsr setSpiStatus
	addq.l #4,%sp
	pea 92.w
	jsr outSpi0
	addq.l #4,%sp
	nop
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	addq.l #8,%sp
	rts
	.size	setAddrWindow, .-setAddrWindow
	.align	2
	.globl	clearDisplay
	.type	clearDisplay, @function
clearDisplay:
	clr.w %d0
	move.w %d0,%d0
	and.l #65535,%d0
	move.l %d0,-(%sp)
	pea 127.w
	pea 127.w
	clr.l -(%sp)
	clr.l -(%sp)
	jsr drawRect
	lea (20,%sp),%sp
	clr.b cursor_x
	clr.b cursor_y
	clr.b yOffset
	clr.b scroll
	move.b yOffset,%d0
	move.b %d0,%d0
	and.l #255,%d0
	move.l %d0,-(%sp)
	pea 161.w
	jsr outSpi1
	addq.l #8,%sp
	nop
	rts
	.size	clearDisplay, .-clearDisplay
	.align	2
	.globl	drawRect
	.type	drawRect, @function
drawRect:
	lea (-12,%sp),%sp
	movem.l #14336,-(%sp)
	move.l 28(%sp),%d4
	move.l 32(%sp),%d3
	move.l 36(%sp),%d2
	move.l 40(%sp),%d1
	move.l 44(%sp),%d0
	move.b %d4,%d4
	move.b %d4,22(%sp)
	move.b %d3,%d3
	move.b %d3,20(%sp)
	move.b %d2,%d2
	move.b %d2,18(%sp)
	move.b %d1,%d1
	move.b %d1,16(%sp)
	move.w %d0,%d0
	move.w %d0,14(%sp)
	moveq #0,%d3
	move.b 16(%sp),%d3
	moveq #0,%d2
	move.b 18(%sp),%d2
	moveq #0,%d1
	move.b 20(%sp),%d1
	moveq #0,%d0
	move.b 22(%sp),%d0
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr setAddrWindow
	lea (16,%sp),%sp
	pea 20.w
	jsr setSpiStatus
	addq.l #4,%sp
	moveq #0,%d1
	move.b 16(%sp),%d1
	moveq #0,%d0
	move.b 20(%sp),%d0
	sub.l %d0,%d1
	move.l %d1,%d0
	addq.l #1,%d0
	move.l %d0,%d1
	moveq #0,%d2
	move.b 18(%sp),%d2
	moveq #0,%d0
	move.b 22(%sp),%d0
	move.l %d2,%a0
	sub.l %d0,%a0
	move.l %a0,%d0
	addq.l #1,%d0
	move.l %d0,%d0
	muls.w %d1,%d0
	moveq #0,%d1
	move.w %d0,%d1
	moveq #0,%d0
	move.w 14(%sp),%d0
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr spiset
	addq.l #8,%sp
	pea 28.w
	jsr setSpiStatus
	addq.l #4,%sp
	nop
	movem.l (%sp)+,#28
	lea (12,%sp),%sp
	rts
	.size	drawRect, .-drawRect
	.align	2
	.globl	oledsetcursor
	.type	oledsetcursor, @function
oledsetcursor:
	subq.l #4,%sp
	move.l 8(%sp),%d1
	move.l 12(%sp),%d0
	move.b %d1,%d1
	move.b %d1,2(%sp)
	move.b %d0,%d0
	move.b %d0,(%sp)
	move.b font_width,%d0
	move.b 2(%sp),%d1
	muls.w %d1,%d0
	move.b %d0,%d0
	move.b %d0,cursor_x
	move.b font_height,%d0
	move.b (%sp),%d1
	muls.w %d1,%d0
	move.b %d0,%d0
	move.b %d0,cursor_y
	nop
	addq.l #4,%sp
	rts
	.size	oledsetcursor, .-oledsetcursor
	.align	2
	.globl	oledprints
	.type	oledprints, @function
oledprints:
	jra .L12
.L13:
	move.l 4(%sp),%d0
	move.l %d0,%d1
	addq.l #1,%d1
	move.l %d1,4(%sp)
	move.l %d0,%a0
	move.b (%a0),%d0
	ext.w %d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	jsr oledprintch
	addq.l #4,%sp
.L12:
	move.l 4(%sp),%a0
	move.b (%a0),%d0
	jne .L13
	nop
	nop
	rts
	.size	oledprints, .-oledprints
	.align	2
	.globl	oledprintch
	.type	oledprintch, @function
oledprintch:
	subq.l #8,%sp
	move.l %d2,-(%sp)
	move.l 16(%sp),%d0
	move.b %d0,%d0
	move.b %d0,6(%sp)
	move.b cursor_y,11(%sp)
	cmp.b #13,6(%sp)
	jne .L15
	clr.b cursor_x
	jra .L16
.L15:
	cmp.b #10,6(%sp)
	jne .L17
	move.b cursor_y,%d1
	move.b font_height,%d0
	add.b %d1,%d0
	move.b %d0,cursor_y
	jra .L16
.L17:
	move.b 6(%sp),%d0
	moveq #0,%d2
	move.b %d0,%d2
	move.b cursor_y,%d0
	moveq #0,%d1
	move.b %d0,%d1
	move.b cursor_x,%d0
	move.b %d0,%d0
	and.l #255,%d0
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr putchar_xy
	lea (12,%sp),%sp
	move.b cursor_x,%d1
	move.b font_width,%d0
	add.b %d1,%d0
	move.b %d0,cursor_x
.L16:
	move.b cursor_x,%d0
	jpl .L18
	clr.b cursor_x
	move.b cursor_y,%d1
	move.b font_height,%d0
	add.b %d1,%d0
	move.b %d0,cursor_y
.L18:
	move.b cursor_y,%d0
	jpl .L19
	move.b #1,scroll
	clr.b cursor_y
.L19:
	move.b scroll,%d0
	cmp.b #1,%d0
	jne .L22
	move.b cursor_y,%d0
	cmp.b 11(%sp),%d0
	jeq .L22
	clr.w %d0
	moveq #0,%d2
	move.w %d0,%d2
	move.b cursor_y,%d1
	move.b font_height,%d0
	add.b %d1,%d0
	subq.b #1,%d0
	moveq #0,%d1
	move.b %d0,%d1
	move.b cursor_y,%d0
	move.b %d0,%d0
	and.l #255,%d0
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	pea 127.w
	move.l %d0,-(%sp)
	clr.l -(%sp)
	jsr drawRect
	lea (20,%sp),%sp
	move.b yOffset,%d1
	move.b font_height,%d0
	add.b %d1,%d0
	move.b %d0,yOffset
	move.b yOffset,%d0
	jpl .L21
	clr.b yOffset
.L21:
	move.b yOffset,%d0
	move.b %d0,%d0
	and.l #255,%d0
	move.l %d0,-(%sp)
	pea 161.w
	jsr outSpi1
	addq.l #8,%sp
.L22:
	nop
	move.l (%sp)+,%d2
	addq.l #8,%sp
	rts
	.size	oledprintch, .-oledprintch
	.globl	__mulsi3
	.align	2
	.globl	putchar_xy
	.type	putchar_xy, @function
putchar_xy:
	lea (-44,%sp),%sp
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l 56(%sp),%d2
	move.l 60(%sp),%d1
	move.l 64(%sp),%d0
	move.b %d2,%d2
	move.b %d2,14(%sp)
	move.b %d1,%d1
	move.b %d1,12(%sp)
	move.b %d0,%d0
	move.b %d0,10(%sp)
	move.b font_height,%d0
	add.b 12(%sp),%d0
	subq.b #1,%d0
	moveq #0,%d3
	move.b %d0,%d3
	move.b font_width,%d0
	add.b 14(%sp),%d0
	subq.b #1,%d0
	moveq #0,%d2
	move.b %d0,%d2
	moveq #0,%d1
	move.b 12(%sp),%d1
	moveq #0,%d0
	move.b 14(%sp),%d0
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr setAddrWindow
	lea (16,%sp),%sp
	move.l selectedFont,%d1
	move.l font_5x7,%d0
	cmp.l %d1,%d0
	jne .L24
	cmp.b #31,10(%sp)
	jls .L25
	move.b 10(%sp),%d0
	jpl .L26
.L25:
	move.b #32,10(%sp)
.L26:
	move.l selectedFont,%d2
	moveq #0,%d0
	move.b 10(%sp),%d0
	move.w #-32,%a0
	add.l %d0,%a0
	move.b font_width,%d0
	move.b %d0,%d0
	and.l #255,%d0
	move.l %d0,-(%sp)
	move.l %a0,-(%sp)
	jsr __mulsi3
	addq.l #8,%sp
	move.l %d2,%d1
	add.l %d0,%d1
	move.l %d1,22(%sp)
	clr.l 48(%sp)
	jra .L27
.L34:
	clr.l 44(%sp)
	jra .L28
.L33:
	move.l 44(%sp),%d0
	move.l 22(%sp),%a0
	add.l %d0,%a0
	move.b (%a0),%d0
	move.b %d0,%d0
	and.l #255,%d0
	move.l 48(%sp),%d1
	asr.l %d1,%d0
	moveq #1,%d1
	and.l %d1,%d0
	jeq .L29
	moveq #0,%d0
	not.b %d0
	jra .L30
.L29:
	moveq #0,%d0
.L30:
	move.l %d0,18(%sp)
	jeq .L31
	moveq #-1,%d0
	jra .L32
.L31:
	clr.w %d0
.L32:
	move.w %d0,16(%sp)
	move.w 16(%sp),%d0
	lsr.w #8,%d0
	move.l %d0,%d0
	move.b %d0,%d0
	and.l #255,%d0
	move.l %d0,-(%sp)
	jsr sendAndWait
	addq.l #4,%sp
	move.w 16(%sp),%d0
	move.b %d0,%d0
	and.l #255,%d0
	move.l %d0,-(%sp)
	jsr sendAndWait
	addq.l #4,%sp
	addq.l #1,44(%sp)
.L28:
	move.b font_width,%d0
	move.b %d0,%d0
	and.l #255,%d0
	cmp.l 44(%sp),%d0
	jgt .L33
	addq.l #1,48(%sp)
.L27:
	move.b font_height,%d0
	move.b %d0,%d0
	and.l #255,%d0
	cmp.l 48(%sp),%d0
	jgt .L34
	jra .L35
.L24:
	move.l selectedFont,%d2
	moveq #0,%d0
	move.b 10(%sp),%d0
	move.b font_width,%d1
	move.b %d1,%d1
	and.l #255,%d1
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __mulsi3
	addq.l #8,%sp
	move.l %d2,%d1
	add.l %d0,%d1
	move.l %d1,32(%sp)
	clr.l 40(%sp)
	jra .L36
.L43:
	clr.l 36(%sp)
	jra .L37
.L42:
	move.l 36(%sp),%d0
	move.l 32(%sp),%a0
	add.l %d0,%a0
	move.b (%a0),%d0
	move.b %d0,%d0
	and.l #255,%d0
	move.l 40(%sp),%d1
	asr.l %d1,%d0
	moveq #1,%d1
	and.l %d1,%d0
	jeq .L38
	moveq #0,%d0
	not.b %d0
	jra .L39
.L38:
	moveq #0,%d0
.L39:
	move.l %d0,28(%sp)
	jeq .L40
	moveq #-1,%d0
	jra .L41
.L40:
	clr.w %d0
.L41:
	move.w %d0,26(%sp)
	move.w 26(%sp),%d0
	lsr.w #8,%d0
	move.l %d0,%d0
	move.b %d0,%d0
	and.l #255,%d0
	move.l %d0,-(%sp)
	jsr sendAndWait
	addq.l #4,%sp
	move.w 26(%sp),%d0
	move.b %d0,%d0
	and.l #255,%d0
	move.l %d0,-(%sp)
	jsr sendAndWait
	addq.l #4,%sp
	addq.l #1,36(%sp)
.L37:
	move.b font_width,%d0
	move.b %d0,%d0
	and.l #255,%d0
	cmp.l 36(%sp),%d0
	jgt .L42
	addq.l #1,40(%sp)
.L36:
	move.b font_height,%d0
	move.b %d0,%d0
	and.l #255,%d0
	cmp.l 40(%sp),%d0
	jgt .L43
.L35:
	pea 28.w
	jsr setSpiStatus
	addq.l #4,%sp
	nop
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	lea (44,%sp),%sp
	rts
	.size	putchar_xy, .-putchar_xy
	.align	2
	.globl	oleddrawbitmap
	.type	oleddrawbitmap, @function
oleddrawbitmap:
	pea 127.w
	pea 127.w
	clr.l -(%sp)
	clr.l -(%sp)
	jsr setAddrWindow
	lea (16,%sp),%sp
	move.l #32768,-(%sp)
	move.l 8(%sp),-(%sp)
	jsr spicpy
	addq.l #8,%sp
	pea 28.w
	jsr setSpiStatus
	addq.l #4,%sp
	nop
	rts
	.size	oleddrawbitmap, .-oleddrawbitmap
	.section	.rodata
.LC0:
	.string	"font loc = %x\r\n"
	.text
	.align	2
	.globl	selectFont8x8
	.type	selectFont8x8, @function
selectFont8x8:
	move.l font_5x7,%d0
	move.l %d0,selectedFont
	move.b #5,font_width
	move.b #8,font_height
	move.l selectedFont,%d0
	move.l %d0,-(%sp)
	pea .LC0
	jsr printf
	addq.l #8,%sp
	nop
	rts
	.size	selectFont8x8, .-selectFont8x8
	.align	2
	.globl	initSSD1351
	.type	initSSD1351, @function
initSSD1351:
	pea 18.w
	pea 253.w
	jsr outSpi1
	addq.l #8,%sp
	pea 177.w
	pea 253.w
	jsr outSpi1
	addq.l #8,%sp
	pea 174.w
	jsr outSpi0
	addq.l #4,%sp
	pea 164.w
	jsr outSpi0
	addq.l #4,%sp
	pea 127.w
	clr.l -(%sp)
	pea 21.w
	jsr outSpi2
	lea (12,%sp),%sp
	pea 127.w
	clr.l -(%sp)
	pea 117.w
	jsr outSpi2
	lea (12,%sp),%sp
	pea 241.w
	pea 179.w
	jsr outSpi1
	addq.l #8,%sp
	pea 127.w
	pea 202.w
	jsr outSpi1
	addq.l #8,%sp
	pea 102.w
	pea 160.w
	jsr outSpi1
	addq.l #8,%sp
	clr.l -(%sp)
	pea 161.w
	jsr outSpi1
	addq.l #8,%sp
	clr.l -(%sp)
	pea 162.w
	jsr outSpi1
	addq.l #8,%sp
	pea 1.w
	pea 171.w
	jsr outSpi1
	addq.l #8,%sp
	pea 85.w
	pea 181.w
	pea 160.w
	pea 180.w
	jsr outSpi3
	lea (16,%sp),%sp
	pea 192.w
	pea 128.w
	pea 200.w
	pea 193.w
	jsr outSpi3
	lea (16,%sp),%sp
	pea 15.w
	pea 199.w
	jsr outSpi1
	addq.l #8,%sp
	pea 50.w
	pea 177.w
	jsr outSpi1
	addq.l #8,%sp
	clr.l -(%sp)
	clr.l -(%sp)
	pea 164.w
	pea 178.w
	jsr outSpi3
	lea (16,%sp),%sp
	pea 23.w
	pea 187.w
	jsr outSpi1
	addq.l #8,%sp
	pea 1.w
	pea 182.w
	jsr outSpi1
	addq.l #8,%sp
	pea 5.w
	pea 190.w
	jsr outSpi1
	addq.l #8,%sp
	pea 166.w
	jsr outSpi0
	addq.l #4,%sp
	pea 175.w
	jsr outSpi0
	addq.l #4,%sp
	jsr selectFont8x8
	nop
	rts
	.size	initSSD1351, .-initSSD1351
	.ident	"GCC: (Ubuntu 10.2.0-5ubuntu1~20.04) 10.2.0"
	.section	.note.GNU-stack,"",@progbits
