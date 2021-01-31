#NO_APP
	.file	"fpgnulib.c"
	.text
	.align	2
	.globl	__unordsf2
	.type	__unordsf2, @function
__unordsf2:
	subq.l #4,%sp
	move.l 8(%sp),(%sp)
	move.l (%sp),%d0
	swap %d0
	asr.w #7,%d0
	ext.l %d0
	moveq #0,%d1
	not.b %d1
	and.l %d1,%d0
	cmp.l #255,%d0
	jne .L2
	move.l (%sp),%d0
	and.l #8388607,%d0
	jeq .L2
	moveq #1,%d0
	jra .L5
.L2:
	move.l 12(%sp),(%sp)
	move.l (%sp),%d0
	swap %d0
	asr.w #7,%d0
	ext.l %d0
	moveq #0,%d1
	not.b %d1
	and.l %d1,%d0
	cmp.l #255,%d0
	jne .L4
	move.l (%sp),%d0
	and.l #8388607,%d0
	jeq .L4
	moveq #1,%d0
	jra .L5
.L4:
	moveq #0,%d0
.L5:
	addq.l #4,%sp
	rts
	.size	__unordsf2, .-__unordsf2
	.align	2
	.globl	__unorddf2
	.type	__unorddf2, @function
__unorddf2:
	subq.l #8,%sp
	move.l 12(%sp),(%sp)
	move.l 16(%sp),4(%sp)
	move.l (%sp),%d0
	swap %d0
	asr.w #4,%d0
	ext.l %d0
	and.l #2047,%d0
	cmp.l #2047,%d0
	jne .L7
	move.l (%sp),%d0
	and.l #1048575,%d0
	jne .L8
	move.l 4(%sp),%d0
	jeq .L7
.L8:
	moveq #1,%d0
	jra .L12
.L7:
	move.l 20(%sp),(%sp)
	move.l 24(%sp),4(%sp)
	move.l (%sp),%d0
	swap %d0
	asr.w #4,%d0
	ext.l %d0
	and.l #2047,%d0
	cmp.l #2047,%d0
	jne .L10
	move.l (%sp),%d0
	and.l #1048575,%d0
	jne .L11
	move.l 4(%sp),%d0
	jeq .L10
.L11:
	moveq #1,%d0
	jra .L12
.L10:
	moveq #0,%d0
.L12:
	addq.l #8,%sp
	rts
	.size	__unorddf2, .-__unorddf2
	.align	2
	.globl	__floatunsidf
	.type	__floatunsidf, @function
__floatunsidf:
	lea (-12,%sp),%sp
	move.l %d2,-(%sp)
	move.l #1054,12(%sp)
	tst.l 20(%sp)
	jne .L16
	clr.l 8(%sp)
	clr.l 4(%sp)
	move.l 4(%sp),%d0
	move.l 8(%sp),%d1
	jra .L20
.L17:
	move.l 20(%sp),%d0
	lsl.l #4,%d0
	move.l %d0,20(%sp)
	subq.l #4,12(%sp)
.L16:
	cmp.l #33554431,20(%sp)
	jls .L17
	jra .L18
.L19:
	move.l 20(%sp),%d0
	add.l %d0,%d0
	move.l %d0,20(%sp)
	subq.l #1,12(%sp)
.L18:
	move.l 20(%sp),%d0
	jpl .L19
	move.l 12(%sp),%d0
	lsl.w #4,%d0
	swap %d0
	clr.w %d0
	move.l %d0,4(%sp)
	move.l 4(%sp),%d0
	move.l %d0,%d1
	move.l 20(%sp),%d0
	moveq #11,%d2
	lsr.l %d2,%d0
	bclr #20,%d0
	or.l %d1,%d0
	move.l %d0,4(%sp)
	move.l 20(%sp),%d0
	lsl.w #5,%d0
	swap %d0
	clr.w %d0
	move.l %d0,8(%sp)
	move.l 4(%sp),%d0
	move.l 8(%sp),%d1
.L20:
	move.l (%sp)+,%d2
	lea (12,%sp),%sp
	rts
	.size	__floatunsidf, .-__floatunsidf
	.align	2
	.globl	__floatsidf
	.type	__floatsidf, @function
__floatsidf:
	lea (-16,%sp),%sp
	move.l %d2,-(%sp)
	clr.l 16(%sp)
	move.l #1053,12(%sp)
	tst.l 24(%sp)
	jne .L22
	clr.l 8(%sp)
	clr.l 4(%sp)
	move.l 4(%sp),%d0
	move.l 8(%sp),%d1
	jra .L29
.L22:
	tst.l 24(%sp)
	jge .L25
	move.l #-2147483648,16(%sp)
	move.l 24(%sp),%d0
	neg.l %d0
	move.l %d0,24(%sp)
	jpl .L25
	move.l #-1042284544,4(%sp)
	clr.l 8(%sp)
	move.l 4(%sp),%d0
	move.l 8(%sp),%d1
	jra .L29
.L26:
	move.l 24(%sp),%d0
	lsl.l #4,%d0
	move.l %d0,24(%sp)
	subq.l #4,12(%sp)
.L25:
	cmp.l #16777215,24(%sp)
	jle .L26
	jra .L27
.L28:
	move.l 24(%sp),%d0
	add.l %d0,%d0
	move.l %d0,24(%sp)
	subq.l #1,12(%sp)
.L27:
	cmp.l #1073741823,24(%sp)
	jle .L28
	move.l 16(%sp),4(%sp)
	move.l 4(%sp),%d1
	move.l 12(%sp),%d0
	lsl.w #4,%d0
	swap %d0
	clr.w %d0
	or.l %d1,%d0
	move.l %d0,4(%sp)
	move.l 4(%sp),%d1
	move.l 24(%sp),%d0
	moveq #10,%d2
	asr.l %d2,%d0
	bclr #20,%d0
	or.l %d1,%d0
	move.l %d0,4(%sp)
	move.l 24(%sp),%d0
	lsl.w #6,%d0
	swap %d0
	clr.w %d0
	move.l %d0,8(%sp)
	move.l 4(%sp),%d0
	move.l 8(%sp),%d1
.L29:
	move.l (%sp)+,%d2
	lea (16,%sp),%sp
	rts
	.size	__floatsidf, .-__floatsidf
	.globl	__truncdfsf2
	.align	2
	.globl	__floatunsisf
	.type	__floatunsisf, @function
__floatunsisf:
	subq.l #8,%sp
	move.l 12(%sp),-(%sp)
	jsr __floatunsidf
	addq.l #4,%sp
	move.l %d0,(%sp)
	move.l %d1,4(%sp)
	move.l 4(%sp),-(%sp)
	move.l 4(%sp),-(%sp)
	jsr __truncdfsf2
	addq.l #8,%sp
	addq.l #8,%sp
	rts
	.size	__floatunsisf, .-__floatunsisf
	.align	2
	.globl	__floatsisf
	.type	__floatsisf, @function
__floatsisf:
	subq.l #8,%sp
	move.l 12(%sp),-(%sp)
	jsr __floatsidf
	addq.l #4,%sp
	move.l %d0,(%sp)
	move.l %d1,4(%sp)
	move.l 4(%sp),-(%sp)
	move.l 4(%sp),-(%sp)
	jsr __truncdfsf2
	addq.l #8,%sp
	addq.l #8,%sp
	rts
	.size	__floatsisf, .-__floatsisf
	.align	2
	.globl	__extendsfdf2
	.type	__extendsfdf2, @function
__extendsfdf2:
	lea (-12,%sp),%sp
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l 24(%sp),16(%sp)
	move.l 16(%sp),%d0
	and.l #-2147483648,%d0
	move.l %d0,8(%sp)
	move.l 16(%sp),%d0
	bclr #31,%d0
	tst.l %d0
	jne .L35
	clr.l 12(%sp)
	move.l 8(%sp),%d0
	move.l 12(%sp),%d1
	jra .L40
.L35:
	move.l 16(%sp),%d0
	swap %d0
	asr.w #7,%d0
	ext.l %d0
	moveq #0,%d3
	not.b %d3
	and.l %d0,%d3
	move.l 16(%sp),%d0
	move.l %d0,%d2
	and.l #8388607,%d2
	tst.l %d3
	jne .L37
	moveq #1,%d3
	jra .L38
.L39:
	move.l %d2,%d0
	add.l %d2,%d0
	move.l %d0,%d2
	subq.l #1,%d3
.L38:
	move.l %d2,%d0
	and.l #8388608,%d0
	jeq .L39
	bclr #23,%d2
.L37:
	add.l #896,%d3
	move.l 8(%sp),%d1
	move.l %d3,%d0
	lsl.w #4,%d0
	swap %d0
	clr.w %d0
	or.l %d1,%d0
	move.l %d0,8(%sp)
	move.l 8(%sp),%d1
	move.l %d2,%d0
	asr.l #3,%d0
	or.l %d1,%d0
	move.l %d0,8(%sp)
	move.l %d2,%d0
	moveq #29,%d1
	lsl.l %d1,%d0
	move.l %d0,12(%sp)
	move.l 8(%sp),%d0
	move.l 12(%sp),%d1
.L40:
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	lea (12,%sp),%sp
	rts
	.size	__extendsfdf2, .-__extendsfdf2
	.align	2
	.globl	__truncdfsf2
	.type	__truncdfsf2, @function
__truncdfsf2:
	lea (-24,%sp),%sp
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l 36(%sp),8(%sp)
	move.l 40(%sp),12(%sp)
	move.l 8(%sp),%d0
	bclr #31,%d0
	tst.l %d0
	jne .L42
	move.l 12(%sp),%d0
	jne .L42
	move.l 8(%sp),%d0
	and.l #-2147483648,%d0
	move.l %d0,16(%sp)
	move.l 16(%sp),%d0
	jra .L51
.L42:
	move.l 8(%sp),%d0
	swap %d0
	asr.w #4,%d0
	ext.l %d0
	and.l #2047,%d0
	move.l %d0,%d3
	add.l #-896,%d3
	move.l 12(%sp),%d0
	move.l %d0,%d1
	and.l #4194303,%d1
	move.l %d1,28(%sp)
	move.l 8(%sp),%d0
	moveq #10,%d1
	lsl.l %d1,%d0
	move.l %d0,%d1
	and.l #1073740800,%d1
	move.l 12(%sp),%d0
	clr.w %d0
	swap %d0
	lsr.w #6,%d0
	or.l %d1,%d0
	bset #30,%d0
	move.l %d0,%d2
	moveq #63,%d0
	and.l %d2,%d0
	or.l %d0,28(%sp)
	asr.l #6,%d2
	tst.l %d3
	jgt .L44
	moveq #-24,%d0
	cmp.l %d3,%d0
	jle .L45
	or.l %d2,28(%sp)
	moveq #0,%d2
	jra .L46
.L45:
	moveq #1,%d1
	sub.l %d3,%d1
	moveq #1,%d0
	lsl.l %d1,%d0
	subq.l #1,%d0
	and.l %d2,%d0
	or.l %d0,28(%sp)
	moveq #1,%d0
	sub.l %d3,%d0
	asr.l %d0,%d2
.L46:
	moveq #0,%d3
.L44:
	moveq #1,%d1
	move.l %d1,24(%sp)
	moveq #1,%d0
	and.l %d2,%d0
	jeq .L47
	tst.l 28(%sp)
	jne .L48
	moveq #2,%d0
	and.l %d2,%d0
	jeq .L47
.L48:
	tst.l %d3
	jeq .L49
	moveq #2,%d0
	jra .L50
.L49:
	moveq #1,%d0
.L50:
	move.l %d0,20(%sp)
	addq.l #1,%d2
	move.l #8388608,%d0
	move.l 20(%sp),%d1
	lsl.l %d1,%d0
	cmp.l %d2,%d0
	jgt .L47
	addq.l #1,%d3
	move.l 20(%sp),24(%sp)
.L47:
	move.l 24(%sp),%d0
	asr.l %d0,%d2
	bclr #23,%d2
	move.l 8(%sp),%d0
	move.l %d0,%d1
	and.l #-2147483648,%d1
	move.l %d3,%d0
	lsl.w #7,%d0
	swap %d0
	clr.w %d0
	or.l %d0,%d1
	move.l %d2,%d0
	or.l %d1,%d0
	move.l %d0,16(%sp)
	move.l 16(%sp),%d0
.L51:
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	lea (24,%sp),%sp
	rts
	.size	__truncdfsf2, .-__truncdfsf2
	.align	2
	.globl	__fixdfsi
	.type	__fixdfsi, @function
__fixdfsi:
	subq.l #8,%sp
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l 20(%sp),8(%sp)
	move.l 24(%sp),12(%sp)
	move.l 8(%sp),%d0
	jne .L53
	move.l 12(%sp),%d0
	jne .L53
	moveq #0,%d0
	jra .L62
.L53:
	move.l 8(%sp),%d0
	swap %d0
	asr.w #4,%d0
	ext.l %d0
	and.l #2047,%d0
	move.l %d0,%d3
	add.l #-1053,%d3
	move.l 8(%sp),%d0
	moveq #10,%d1
	lsl.l %d1,%d0
	move.l %d0,%d1
	and.l #1073740800,%d1
	move.l 12(%sp),%d0
	clr.w %d0
	swap %d0
	lsr.w #6,%d0
	or.l %d1,%d0
	bset #30,%d0
	move.l %d0,%d2
	tst.l %d3
	jle .L55
	move.l 8(%sp),%d0
	jpl .L56
	move.l #-2147483648,%d0
	jra .L62
.L56:
	move.l #2147483647,%d0
	jra .L62
.L55:
	moveq #-31,%d0
	cmp.l %d3,%d0
	jle .L58
	moveq #0,%d0
	jra .L62
.L58:
	tst.l %d3
	jge .L59
	move.l %d3,%d0
	neg.l %d0
	asr.l %d0,%d2
.L59:
	move.l 8(%sp),%d0
	jpl .L60
	move.l %d2,%d0
	neg.l %d0
	jra .L62
.L60:
	move.l %d2,%d0
.L62:
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	addq.l #8,%sp
	rts
	.size	__fixdfsi, .-__fixdfsi
	.globl	__extendsfdf2
	.align	2
	.globl	__fixsfsi
	.type	__fixsfsi, @function
__fixsfsi:
	lea (-16,%sp),%sp
	move.l 20(%sp),-(%sp)
	jsr __extendsfdf2
	addq.l #4,%sp
	move.l %d0,(%sp)
	move.l %d1,4(%sp)
	move.l (%sp),8(%sp)
	move.l 4(%sp),12(%sp)
	move.l 12(%sp),-(%sp)
	move.l 12(%sp),-(%sp)
	jsr __fixdfsi
	addq.l #8,%sp
	lea (16,%sp),%sp
	rts
	.size	__fixsfsi, .-__fixsfsi
	.ident	"GCC: (Ubuntu 10.2.0-5ubuntu1~20.04) 10.2.0"
	.section	.note.GNU-stack,"",@progbits
