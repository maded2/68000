#NO_APP
	.file	"monitor.c"
	.text
	.globl	int2hex
	.section	.rodata
	.type	int2hex, @object
	.size	int2hex, 16
int2hex:
	.ascii	"0123456789abcdef"
	.text
	.align	2
	.globl	prints
	.type	prints, @function
prints:
	jra .L2
.L3:
	move.l 4(%sp),%a0
	move.b (%a0),%d0
	ext.w %d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	jsr outch
	addq.l #4,%sp
	addq.l #1,4(%sp)
.L2:
	move.l 4(%sp),%a0
	move.b (%a0),%d0
	jne .L3
	nop
	nop
	rts
	.size	prints, .-prints
	.align	2
	.globl	printb
	.type	printb, @function
printb:
	subq.l #8,%sp
	move.l 12(%sp),%d0
	asr.l #4,%d0
	moveq #15,%d1
	and.l %d0,%d1
	move.l %d1,4(%sp)
	move.l 12(%sp),%d0
	moveq #15,%d1
	and.l %d0,%d1
	move.l %d1,(%sp)
	move.l 4(%sp),%a0
	add.l #int2hex,%a0
	move.b (%a0),%d0
	ext.w %d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	jsr outch
	addq.l #4,%sp
	move.l (%sp),%a0
	add.l #int2hex,%a0
	move.b (%a0),%d0
	ext.w %d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	jsr outch
	addq.l #4,%sp
	nop
	addq.l #8,%sp
	rts
	.size	printb, .-printb
	.align	2
	.globl	printw
	.type	printw, @function
printw:
	subq.l #4,%sp
	move.l 8(%sp),(%sp)
	move.l (%sp),%d0
	asr.l #8,%d0
	move.l %d0,-(%sp)
	jsr printb
	addq.l #4,%sp
	move.l 8(%sp),-(%sp)
	jsr printb
	addq.l #4,%sp
	nop
	addq.l #4,%sp
	rts
	.size	printw, .-printw
	.align	2
	.globl	printlw
	.type	printlw, @function
printlw:
	lea (-12,%sp),%sp
	move.l 16(%sp),8(%sp)
	move.l 16(%sp),4(%sp)
	move.l 16(%sp),(%sp)
	move.l 8(%sp),%d0
	swap %d0
	asr.w #8,%d0
	ext.l %d0
	move.l %d0,-(%sp)
	jsr printb
	addq.l #4,%sp
	move.l 4(%sp),%d0
	swap %d0
	ext.l %d0
	move.l %d0,-(%sp)
	jsr printb
	addq.l #4,%sp
	move.l (%sp),%d0
	asr.l #8,%d0
	move.l %d0,-(%sp)
	jsr printb
	addq.l #4,%sp
	move.l 16(%sp),-(%sp)
	jsr printb
	addq.l #4,%sp
	nop
	lea (12,%sp),%sp
	rts
	.size	printlw, .-printlw
	.globl	__modsi3
	.globl	__divsi3
	.align	2
	.globl	printi
	.type	printi, @function
printi:
	lea (-104,%sp),%sp
	tst.l 108(%sp)
	jne .L8
	pea 48.w
	jsr outch
	addq.l #4,%sp
.L8:
	tst.l 108(%sp)
	jge .L9
	pea 45.w
	jsr outch
	addq.l #4,%sp
	neg.l 108(%sp)
.L9:
	clr.l 100(%sp)
	jra .L10
.L11:
	move.l 108(%sp),%d0
	pea 10.w
	move.l %d0,-(%sp)
	jsr __modsi3
	addq.l #8,%sp
	move.l %d0,%d0
	add.b #48,%d0
	move.l %sp,%a0
	add.l 100(%sp),%a0
	move.b %d0,(%a0)
	move.l 108(%sp),%d0
	pea 10.w
	move.l %d0,-(%sp)
	jsr __divsi3
	addq.l #8,%sp
	move.l %d0,108(%sp)
	addq.l #1,100(%sp)
.L10:
	tst.l 108(%sp)
	jgt .L11
	jra .L12
.L13:
	move.l 100(%sp),%d0
	subq.l #1,%d0
	move.b (%sp,%d0.l),%d0
	ext.w %d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	jsr outch
	addq.l #4,%sp
	subq.l #1,100(%sp)
.L12:
	tst.l 100(%sp)
	jgt .L13
	nop
	nop
	lea (104,%sp),%sp
	rts
	.size	printi, .-printi
	.globl	lineBuffer
	.section	.bss
	.type	lineBuffer, @object
	.size	lineBuffer, 100
lineBuffer:
	.zero	100
	.section	.rodata
.LC0:
	.string	"\r\n"
	.text
	.align	2
	.globl	readline
	.type	readline, @function
readline:
	lea (-12,%sp),%sp
	clr.l 8(%sp)
.L20:
	jsr inch
	move.l %d0,4(%sp)
	jmi .L23
	move.b 7(%sp),3(%sp)
	cmp.b #8,3(%sp)
	jne .L17
	tst.l 8(%sp)
	jle .L17
	subq.l #1,8(%sp)
	move.b 3(%sp),%d0
	ext.w %d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	jsr outch
	addq.l #4,%sp
	pea 32.w
	jsr outch
	addq.l #4,%sp
	move.b 3(%sp),%d0
	ext.w %d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	jsr outch
	addq.l #4,%sp
	jra .L16
.L17:
	cmp.b #13,3(%sp)
	jne .L18
	pea .LC0
	jsr prints
	addq.l #4,%sp
	move.l 8(%sp),%a0
	add.l #lineBuffer,%a0
	clr.b (%a0)
	jra .L22
.L18:
	tst.b 3(%sp)
	jle .L20
	moveq #99,%d0
	cmp.l 8(%sp),%d0
	jlt .L20
	move.l 8(%sp),%d0
	move.l %d0,%d1
	addq.l #1,%d1
	move.l %d1,8(%sp)
	lea lineBuffer,%a0
	move.b 3(%sp),(%a0,%d0.l)
	move.b 3(%sp),%d0
	ext.w %d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	jsr outch
	addq.l #4,%sp
	jra .L20
.L23:
	nop
.L16:
	jra .L20
.L22:
	move.l #lineBuffer,%d0
	move.l %d0,%d1
	move.l %d1,%a0
	lea (12,%sp),%sp
	rts
	.size	readline, .-readline
	.align	2
	.globl	strlen
	.type	strlen, @function
strlen:
	subq.l #4,%sp
	clr.l (%sp)
	jra .L25
.L26:
	addq.l #1,8(%sp)
	addq.l #1,(%sp)
.L25:
	move.l 8(%sp),%a0
	move.b (%a0),%d0
	jne .L26
	move.l (%sp),%d0
	addq.l #4,%sp
	rts
	.size	strlen, .-strlen
	.align	2
	.globl	parseHex
	.type	parseHex, @function
parseHex:
	subq.l #8,%sp
	clr.l 4(%sp)
	jra .L29
.L30:
	addq.l #1,12(%sp)
.L29:
	move.l 12(%sp),%a0
	move.b (%a0),%d0
	cmp.b #32,%d0
	jeq .L30
	jra .L31
.L37:
	clr.l (%sp)
	jra .L32
.L35:
	move.l 12(%sp),%a0
	move.b (%a0),%d1
	move.l (%sp),%a0
	add.l #int2hex,%a0
	move.b (%a0),%d0
	cmp.b %d1,%d0
	jne .L33
	move.l 4(%sp),%d0
	lsl.l #4,%d0
	move.l (%sp),%d1
	add.l %d0,%d1
	move.l %d1,4(%sp)
	jra .L34
.L33:
	addq.l #1,(%sp)
.L32:
	moveq #15,%d0
	cmp.l (%sp),%d0
	jge .L35
.L34:
	addq.l #1,12(%sp)
.L31:
	move.l 12(%sp),%a0
	move.b (%a0),%d0
	jeq .L36
	move.l 12(%sp),%a0
	move.b (%a0),%d0
	cmp.b #32,%d0
	jne .L37
.L36:
	move.l 4(%sp),%d0
	addq.l #8,%sp
	rts
	.size	parseHex, .-parseHex
	.section	.rodata
.LC1:
	.string	": "
.LC2:
	.string	" "
.LC3:
	.string	"   ["
.LC4:
	.string	"]\r\n"
	.text
	.align	2
	.globl	memorydump
	.type	memorydump, @function
memorydump:
	lea (-20,%sp),%sp
	addq.l #1,24(%sp)
	move.l 24(%sp),-(%sp)
	jsr parseHex
	addq.l #4,%sp
	move.l %d0,16(%sp)
	clr.l 12(%sp)
	jra .L40
.L47:
	move.l 16(%sp),-(%sp)
	jsr printlw
	addq.l #4,%sp
	pea .LC1
	jsr prints
	addq.l #4,%sp
	move.l 16(%sp),8(%sp)
	clr.l 4(%sp)
	jra .L41
.L42:
	move.l 8(%sp),%d0
	move.l %d0,%d1
	addq.l #1,%d1
	move.l %d1,8(%sp)
	move.l %d0,%a0
	move.b (%a0),%d0
	ext.w %d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	jsr printb
	addq.l #4,%sp
	pea .LC2
	jsr prints
	addq.l #4,%sp
	addq.l #1,4(%sp)
.L41:
	moveq #15,%d0
	cmp.l 4(%sp),%d0
	jge .L42
	pea .LC3
	jsr prints
	addq.l #4,%sp
	move.l 16(%sp),8(%sp)
	clr.l (%sp)
	jra .L43
.L46:
	move.l 8(%sp),%a0
	move.b (%a0),%d0
	cmp.b #31,%d0
	jgt .L44
	pea 46.w
	jsr outch
	addq.l #4,%sp
	jra .L45
.L44:
	move.l 8(%sp),%a0
	move.b (%a0),%d0
	ext.w %d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	jsr outch
	addq.l #4,%sp
.L45:
	addq.l #1,8(%sp)
	addq.l #1,(%sp)
.L43:
	moveq #15,%d1
	cmp.l (%sp),%d1
	jge .L46
	pea .LC4
	jsr prints
	addq.l #4,%sp
	moveq #16,%d0
	add.l %d0,16(%sp)
	addq.l #1,12(%sp)
.L40:
	moveq #7,%d1
	cmp.l 12(%sp),%d1
	jge .L47
	nop
	nop
	lea (20,%sp),%sp
	rts
	.size	memorydump, .-memorydump
	.section	.rodata
.LC5:
	.string	"\r\nreturn code="
	.text
	.align	2
	.globl	xtransfer
	.type	xtransfer, @function
xtransfer:
	lea (-12,%sp),%sp
	move.l 16(%sp),-(%sp)
	jsr parseHex
	addq.l #4,%sp
	move.l %d0,4(%sp)
	move.l 4(%sp),-(%sp)
	jsr xmodemReceive
	addq.l #4,%sp
	move.l %d0,(%sp)
	clr.l 8(%sp)
	jra .L49
.L50:
	addq.l #1,8(%sp)
.L49:
	cmp.l #99999,8(%sp)
	jle .L50
	pea .LC5
	jsr prints
	addq.l #4,%sp
	move.l (%sp),-(%sp)
	jsr printi
	addq.l #4,%sp
	pea .LC0
	jsr prints
	addq.l #4,%sp
	nop
	lea (12,%sp),%sp
	rts
	.size	xtransfer, .-xtransfer
	.align	2
	.globl	processCmd
	.type	processCmd, @function
processCmd:
	jra .L52
.L53:
	addq.l #1,4(%sp)
.L52:
	move.l 4(%sp),%a0
	move.b (%a0),%d0
	cmp.b #32,%d0
	jeq .L53
	move.l 4(%sp),%a0
	move.b (%a0),%d0
	ext.w %d0
	move.w %d0,%a0
	moveq #109,%d0
	cmp.l %a0,%d0
	jeq .L54
	moveq #120,%d0
	cmp.l %a0,%d0
	jeq .L55
	jra .L56
.L54:
	addq.l #1,4(%sp)
	move.l 4(%sp),-(%sp)
	jsr memorydump
	addq.l #4,%sp
	jra .L56
.L55:
	addq.l #1,4(%sp)
	move.l 4(%sp),-(%sp)
	jsr xtransfer
	addq.l #4,%sp
.L56:
	pea .LC0
	jsr prints
	addq.l #4,%sp
	nop
	rts
	.size	processCmd, .-processCmd
	.section	.rodata
.LC6:
	.string	"\r\n68000 Monitor, v0.1\r\n\r\n"
.LC7:
	.string	" > "
	.text
	.align	2
	.globl	main
	.type	main, @function
main:
	subq.l #4,%sp
	pea .LC6
	jsr prints
	addq.l #4,%sp
.L58:
	pea .LC7
	jsr prints
	addq.l #4,%sp
	jsr readline
	move.l %a0,(%sp)
	move.l (%sp),-(%sp)
	jsr processCmd
	addq.l #4,%sp
	jra .L58
	.size	main, .-main
	.ident	"GCC: (Ubuntu 10.2.0-5ubuntu1~20.04) 10.2.0"
	.section	.note.GNU-stack,"",@progbits
