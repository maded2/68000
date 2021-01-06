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



/*
    Blocking sending char to UART
    D0 char to send
    A1 clobbered
*/
.global putch
            lea.l   UART,%a1
.L2:        btst.b  #5,LSR(%a1)
            beq     .L2
            move.l  4(%sp),%d0
            move.b  %d0,THR(%a1)
            rts

/*
    Non-blocking char read from the UART
    D0 char read, -1 if no char read
    A1 clobbered
*/
.global getch
            lea.l   UART,%a1
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
.global getch2                           /* blocking read */
            lea.l   UART,%a1
.L3:        btst.b  #0,LSR(%a1)         /* char received?  */
            beq     .L3
            move.b  RHR(%a1),%d0        /* receive character  */
            rts            

