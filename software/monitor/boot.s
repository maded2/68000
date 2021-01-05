
INITIAL_SP      =     0xC10000
USER_SP         =     0xC20000
RAM             =     0xE00000
ROM_START       =     0x000400


/* TL16C550 UART base address */
UART            =       0xA00000
BAUD            =       57600
F_CPU           =       12000000
BAUD_DIV        =       (((F_CPU*10)/(16*BAUD))+5)/10  /* compute one extra decimal place and round */
BAUD_DIV_L      =       (BAUD_DIV&0xFF)
BAUD_DIV_U      =       ((BAUD_DIV>>8)&0xFF)

/* TL16C550 UART register offsets */
RHR             = 0       /* receive holding register (read) */
THR             = 0       /* transmit holding register (write) */
IER             = 2       /* interrupt enable register */
ISR             = 4       /* interrupt status register (read) */
FCR             = 4       /* FIFO control register (write) */
LCR             = 6       /* line control register */
MCR             = 8       /* modem control register */
LSR             = 10      /* line status register */
MSR             = 12      /* modem status register */
SPR             = 14      /* scratchpad register (reserved for system use) */
DLL             = 0       /* divisor latch LSB */
DLM             = 2       /* divisor latch MSB */

/* aliases for register names (used by different manufacturers */
RBR             = RHR     /* receive buffer register */
IIR             = ISR     /* interrupt identification register */
SCR             = SPR     /* scratch register */


.text
.org 0

            dc.l    INITIAL_SP
            dc.l    _start
            dc.l    VEC_BUSFAULT
            dc.l    VEC_ADRERROR
            dc.l    VEC_ILLINSTR
            dc.l    VEC_DIVBY0
            dc.l    VEC_CHK
            dc.l    VEC_TRAPV
            dc.l    VEC_PRIVVIOL
            dc.l    VEC_TRACE
            dc.l    VEC_LINE1010
            dc.l    VEC_LINE1111
            dc.l    VEC_RESERVED    
            dc.l    VEC_RESERVED    
            dc.l    VEC_RESERVED    
            dc.l    VEC_UNINIVEC
            dc.l    VEC_RESERVED    
            dc.l    VEC_RESERVED    
            dc.l    VEC_RESERVED    
            dc.l    VEC_RESERVED    
            dc.l    VEC_RESERVED    
            dc.l    VEC_RESERVED    
            dc.l    VEC_RESERVED    
            dc.l    VEC_RESERVED    
            dc.l    VEC_SPURIOUS
            dc.l    VEC_AUTOVEC1
            dc.l    VEC_AUTOVEC2
            dc.l    VEC_AUTOVEC3
            dc.l    VEC_AUTOVEC4
            dc.l    VEC_AUTOVEC5
            dc.l    VEC_AUTOVEC6
            dc.l    VEC_AUTOVEC7

.org ROM_START

.text
.global _start
_start:

            move    #0,%sr                  /* switch to user mode */
            move.l  #USER_SP,%sp             /* reset stack pointer */

            /* uart init */
            lea.l   UART,%a1

            move.b  #0,LCR(%a1)              /* reset DLAB */
            move.b  #0b00000000,IER(%a1)      /* clear Interrupt register */
            move.b  #0b00000111,FCR(%a1)      /* new: enable FIFO and reset RX and TX FIFO */

            move.b  LCR(%a1),%d0             /* prophylactic read of line status read */

            move.b  #0x80,LCR(%a1)            /* set DLAB */
            move.b  #BAUD_DIV_L,DLL(%a1)     /* set divisor latch low byte */
            move.b  #BAUD_DIV_U,DLM(%a1)     /* set divisor latch high byte */

            move.b  #0x03,LCR(%a1)             /* set 8N1 and DLAB=0 */
            move.b  #0x03,MCR(%a1)             /* set DTR and RTS */

            jsr main

.global exec
exec:
            move.l  4(%sp),%a0
            jsr     (%a0)


/*-------------------------------------------------------------------------------
 Serial I/O
-------------------------------------------------------------------------------*/
printstr:       lea.l   UART,%a1
.3:             move.b  (%a0)+,%d0      /* get byte */
                beq     .2              /* found the null? */
.1:             btst.b  #5,LSR(%a1)
                beq     .1
                move.b  %d0,THR(%a1)
                bra     .3
.2:             rts


/*
    Non-blocking char read from the UART
    D0 char read, -1 if no char read
    A1 clobbered
*/
.global inch
inch:       lea.l   UART,%a1
            move.l  #-1,%d0             /* -1 to indicate no char read */
            btst.b  #0,LSR(%a1)         /* char received?  */
            beq     .L1
            move.l  #0,%d0
            move.b  RHR(%a1),%d0        /* receive character  */
.L1:        rts

/*
    Blocking char read from the UART
    D0 char read
    A1 clobbered
*/
.global inch2                           /* blocking read */
inch2:      lea.l   UART,%a1
.L3:        btst.b  #0,LSR(%a1)         /* char received?  */
            beq     .L3
            move.b  RHR(%a1),%d0        /* receive character  */
            rts

/*
    Blocking sending char to UART
    D0 char to send
    A1 clobbered
*/
.global outch
outch:      lea.l   UART,%a1
.L2:        btst.b  #5,LSR(%a1)
            beq     .L2
            move.l  4(%sp),%d0
            move.b  %d0,THR(%a1)
            rts

VEC_BUSFAULT:               
            lea S_VEC_BUSFAULT,%a0
            jsr printstr
            jmp _start
VEC_ADRERROR:               
            lea S_VEC_ADRERROR,%a0
            jsr printstr
            jmp _start
VEC_ILLINSTR:               
            lea S_VEC_ILLINSTR,%a0
            jsr printstr
            jmp _start
VEC_DIVBY0:             
            lea S_VEC_DIVBY0,%a0
            jsr printstr
            jmp _start
VEC_CHK:                
            lea S_VEC_CHK,%a0
            jsr printstr
            jmp _start
VEC_TRAPV:              
            lea S_VEC_TRAPV,%a0
            jsr printstr
            jmp _start
VEC_PRIVVIOL:               
            lea S_VEC_PRIVVIOL,%a0
            jsr printstr
            jmp _start
VEC_TRACE:              
            lea S_VEC_TRACE,%a0
            jsr printstr
            jmp _start
VEC_LINE1010:               
            lea S_VEC_LINE1010,%a0
            jsr printstr
            jmp _start
VEC_LINE1111:               
            lea S_VEC_LINE1111,%a0
            jsr printstr
            jmp _start
VEC_RESERVED:               
            lea S_VEC_RESERVED,%a0
            jsr printstr
            jmp _start
VEC_UNINIVEC:               
            lea S_VEC_UNINIVEC,%a0
            jsr printstr
            jmp _start
VEC_SPURIOUS:               
            lea S_VEC_SPURIOUS,%a0
            jsr printstr
            jmp _start
VEC_AUTOVEC1:               
            lea S_VEC_AUTOVEC1,%a0
            jsr printstr
            jmp _start
VEC_AUTOVEC2:               
            lea S_VEC_AUTOVEC2,%a0
            jsr printstr
            jmp _start
VEC_AUTOVEC3:               
            lea S_VEC_AUTOVEC3,%a0
            jsr printstr
            jmp _start
VEC_AUTOVEC4:               
            lea S_VEC_AUTOVEC4,%a0
            jsr printstr
            jmp _start
VEC_AUTOVEC5:               
            lea S_VEC_AUTOVEC5,%a0
            jsr printstr
            jmp _start
VEC_AUTOVEC6:               
            lea S_VEC_AUTOVEC6,%a0
            jsr printstr
            jmp _start
VEC_AUTOVEC7:               
            lea S_VEC_AUTOVEC7,%a0
            jsr printstr
            jmp _start

S_VEC_BUSFAULT:        .asciz      "VEC_BUSFAULT\r\n"
S_VEC_ADRERROR:        .asciz      "VEC_ADRERROR\r\n"
S_VEC_ILLINSTR:        .asciz      "VEC_ILLINSTR\r\n"
S_VEC_DIVBY0:          .asciz      "VEC_DIVBY0\r\n"
S_VEC_CHK:             .asciz      "VEC_CHK\r\n"
S_VEC_TRAPV:           .asciz      "VEC_TRAPV\r\n"
S_VEC_PRIVVIOL:        .asciz      "VEC_PRIVVIOL\r\n"
S_VEC_TRACE:           .asciz      "VEC_TRACE\r\n"
S_VEC_LINE1010:        .asciz      "VEC_LINE1010\r\n"
S_VEC_LINE1111:        .asciz      "VEC_LINE1111\r\n"
S_VEC_RESERVED:        .asciz      "VEC_RESERVED\r\n"
S_VEC_UNINIVEC:        .asciz      "VEC_UNINIVEC\r\n"
S_VEC_SPURIOUS:        .asciz      "VEC_SPURIOUS\r\n"
S_VEC_AUTOVEC1:        .asciz      "VEC_AUTOVEC1\r\n"
S_VEC_AUTOVEC2:        .asciz      "VEC_AUTOVEC2\r\n"
S_VEC_AUTOVEC3:        .asciz      "VEC_AUTOVEC3\r\n"
S_VEC_AUTOVEC4:        .asciz      "VEC_AUTOVEC4\r\n"
S_VEC_AUTOVEC5:        .asciz      "VEC_AUTOVEC5\r\n"
S_VEC_AUTOVEC6:        .asciz      "VEC_AUTOVEC6\r\n"
S_VEC_AUTOVEC7:        .asciz      "VEC_AUTOVEC7\r\n"

