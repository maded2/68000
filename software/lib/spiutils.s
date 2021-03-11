
SPI = 0xB00000
SPI_STATUS = 1
SPI_DATA = 3

.align	2

/*
    Write specified size memory block to SPI mosi data register
    D0 location of memory to wite to SPI
    D1 size
    A0 clobbered
    A1 clobbered
*/
.globl spicpy
spicpy:     
            move.l  8(%sp),%d1
            move.l  4(%sp),%a0
            /* move.l %d0,%a0 */
            move.w #0x8000,%d1
            lea.l  SPI,%a1

.L1:        btst.b  #0,SPI_STATUS(%a1)            /* wait for SPI ready */
            beq     .L1

            move.b  (%a0)+,%d0
            move.b %d0,SPI_DATA(%a1)
            dbeq %d1,.L1
            rts

/*
    Set colour for specified size memory block
    D0 colour
    D1 size
    A0 clobbered
    A1 clobbered
*/
.globl spiset
spiset:     
            move.l  8(%sp),%d1
            move.l  4(%sp),%d0
            move.l %d0,%d2
            ror.l #8,%d2
            lea.l  SPI,%a1

.L11:       btst.b  #0,SPI_STATUS(%a1)            /* wait for SPI ready */
            beq     .L11
            move.b %d2,SPI_DATA(%a1)    /* send colour high byte */


.L12:       btst.b  #0,SPI_STATUS(%a1)            /* wait for SPI ready */
            beq     .L12
            move.b %d0,SPI_DATA(%a1)    /* send colour low byte */

            dbeq %d1,.L11
            rts            

