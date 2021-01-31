#NO_APP
	.file	"io.c"
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
	move.b %d0,%d0
	and.l #255,%d0
	move.l %d0,-(%sp)
	jsr putch
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
	lea (-12,%sp),%sp
	move.l 16(%sp),%d0
	move.b %d0,%d0
	move.b %d0,2(%sp)
	move.b 2(%sp),%d0
	lsr.b #4,%d0
	move.b %d0,%d0
	and.l #255,%d0
	moveq #15,%d1
	and.l %d0,%d1
	move.l %d1,8(%sp)
	moveq #0,%d0
	move.b 2(%sp),%d0
	moveq #15,%d1
	and.l %d0,%d1
	move.l %d1,4(%sp)
	move.l 8(%sp),%a0
	add.l #int2hex,%a0
	move.b (%a0),%d0
	move.b %d0,%d0
	and.l #255,%d0
	move.l %d0,-(%sp)
	jsr putch
	addq.l #4,%sp
	move.l 4(%sp),%a0
	add.l #int2hex,%a0
	move.b (%a0),%d0
	move.b %d0,%d0
	and.l #255,%d0
	move.l %d0,-(%sp)
	jsr putch
	addq.l #4,%sp
	nop
	lea (12,%sp),%sp
	rts
	.size	printb, .-printb
	.align	2
	.globl	printw
	.type	printw, @function
printw:
	subq.l #4,%sp
	move.l 8(%sp),%d0
	move.w %d0,%d0
	move.w %d0,2(%sp)
	move.w 2(%sp),%d0
	lsr.w #8,%d0
	move.l %d0,%d0
	move.b %d0,%d0
	and.l #255,%d0
	move.l %d0,-(%sp)
	jsr printb
	addq.l #4,%sp
	move.w 2(%sp),%d0
	move.b %d0,%d0
	and.l #255,%d0
	move.l %d0,-(%sp)
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
	subq.l #4,%sp
	move.b 11(%sp),3(%sp)
	move.b 11(%sp),2(%sp)
	move.b 11(%sp),1(%sp)
	moveq #0,%d0
	move.b 3(%sp),%d0
	swap %d0
	asr.w #8,%d0
	ext.l %d0
	move.l %d0,%d0
	move.b %d0,%d0
	and.l #255,%d0
	move.l %d0,-(%sp)
	jsr printb
	addq.l #4,%sp
	moveq #0,%d0
	move.b 2(%sp),%d0
	swap %d0
	ext.l %d0
	move.l %d0,%d0
	move.b %d0,%d0
	and.l #255,%d0
	move.l %d0,-(%sp)
	jsr printb
	addq.l #4,%sp
	moveq #0,%d0
	move.b 1(%sp),%d0
	asr.l #8,%d0
	move.l %d0,%d0
	move.b %d0,%d0
	and.l #255,%d0
	move.l %d0,-(%sp)
	jsr printb
	addq.l #4,%sp
	move.l 8(%sp),%d0
	move.b %d0,%d0
	and.l #255,%d0
	move.l %d0,-(%sp)
	jsr printb
	addq.l #4,%sp
	nop
	addq.l #4,%sp
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
	jsr putch
	addq.l #4,%sp
.L8:
	tst.l 108(%sp)
	jge .L9
	pea 45.w
	jsr putch
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
	move.b %d0,%d0
	and.l #255,%d0
	move.l %d0,-(%sp)
	jsr putch
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
	.ident	"GCC: (Ubuntu 10.2.0-5ubuntu1~20.04) 10.2.0"
	.section	.note.GNU-stack,"",@progbits
