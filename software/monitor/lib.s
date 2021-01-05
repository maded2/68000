/*
minimal functions to support the gcc runtime
*/

	.globl	__modsi3
__modsi3:
	move.l	%sp@(8), %d1	/* %d1 = divisor */
	move.l	%sp@(4), %d0	/* %d0 = dividend */
	move.l	%d1, %sp@-
	move.l	%d0, %sp@-
	jsr __divsi3
	addq.l	#8, %sp
	move.l	%sp@(8), %d1	/* %d1 = divisor */
	muls	%d1,%d0
	move.l	%sp@(4), %d1	/* %d1 = dividend */
	subl	%d0, %d1		/* %d1 = a - (a/b)*b */
	move.l	%d1, %d0
	rts


	.globl	__divsi3
__divsi3:
	move.l	%d2, %sp@-

	moveq	#1, %d2	/* sign of result stored in %d2 (=1 or =-1) */
	move.l	%sp@(12), %d1	/* %d1 = divisor */
	jpl	L1
	negl	%d1
	negl	%d2		/* change sign because divisor <0  */
L1:	move.l	%sp@(8), %d0	/* %d0 = dividend */
	jpl	L2
	negl	%d0
	negl	%d2
L2:	move.l	%d1, %sp@-
	move.l	%d0, %sp@-
	jsr __udivsi3	/* divide abs(dividend) by abs(divisor) */
	addql	#8, %sp

	tstb	%d2
	jpl	L3
	negl	%d0

L3:	move.l	%sp@+, %d2
	rts


	.globl	__udivsi3
__udivsi3:
	move.l	%d2, %sp@-
	move.l	%sp@(12), %d1	/* %d1 = divisor */
	move.l	%sp@(8), %d0	/* %d0 = dividend */

	cmp.l	#0x10000, %d1 /* divisor >= 2 ^ 16 ?   */
	jcc	L7		/* then try next algorithm */
	move.l	%d0, %d2
	clrw	%d2
	swap	%d2
	divu	%d1, %d2          /* high quotient in lower word */
	move.w	%d2, %d0		/* save high quotient */
	swap	%d0
	move.w	%sp@(10), %d2	/* get low dividend + high rest */
	divu	%d1, %d2		/* low quotient */
	move.w	%d2, %d0
	jra	L6

L7:	move.l	%d1, %d2		/* use %d2 as divisor backup */
L4:	lsr.l	#1, %d1	/* shift divisor */
	lsr.l	#1, %d0	/* shift dividend */
	cmp.l	#0x10000, %d1 /* still divisor >= 2 ^ 16 ?  */
	jcc	L4
	divu	%d1, %d0		/* now we have 16-bit divisor */
	and.l	#0xffff, %d0 /* mask out divisor, ignore remainder */

/* Multiply the 16-bit tentative quotient with the 32-bit divisor.  Because of
   the operand ranges, this might give a 33-bit product.  If this product is
   greater than the dividend, the tentative quotient was too large. */
	move.l	%d2, %d1
	mulu	%d0, %d1		/* low part, 32 bits */
	swap	%d2
	mulu	%d0, %d2		/* high part, at most 17 bits */
	swap	%d2		/* align high part with low part */
	tstw	%d2		/* high part 17 bits? */
	jne	L5		/* if 17 bits, quotient was too large */
	add.l	%d2, %d1		/* add parts */
	jcs	L5		/* if sum is 33 bits, quotient was too large */
	cmp.l	%sp@(8), %d1	/* compare the sum with the dividend */
	jls	L6		/* if sum > dividend, quotient was too large */
L5:	subq.l	#1, %d0	/* adjust quotient */

L6:	move.l	%sp@+, %d2
	rts


.globl	__mulsi3
__mulsi3:
	move.w	%sp@(4), %d0	/* x0 -> d0 */
	mulu.w	%sp@(10), %d0	/* x0*y1 */
	move.w	%sp@(6), %d1	/* x1 -> d1 */
	mulu.w	%sp@(8), %d1	/* x1*y0 */
	add.w	%d1, %d0
	swap	%d0
	clr.w	%d0
	move.w	%sp@(6), %d1	/* x1 -> d1 */
	mulu.w	%sp@(10), %d1	/* x1*y1 */
	add.l	%d1, %d0
	rts
	