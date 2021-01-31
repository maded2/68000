#NO_APP
	.file	"crt0.c"
	.text
	.align	2
	.globl	_start
	.type	_start, @function
_start:
	jsr inituart
	jsr main
	nop
	rts
	.size	_start, .-_start
	.ident	"GCC: (Ubuntu 10.2.0-5ubuntu1~20.04) 10.2.0"
	.section	.note.GNU-stack,"",@progbits
