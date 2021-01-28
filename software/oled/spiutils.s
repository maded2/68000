
SPI = 0xB00000
SPI_STATUS = 0
SPI_DATA = 3

/*
    Write 128x128x2 memory block to SPI mosi data register
    D0 location of memory to wite to SPI
    A0 clobbered
    A1 clobbered
*/
.globl spicpy
spicpy:     move.l %d0,%a0
            lea.l  SPI,%a1
            move.w #0x8000,%d1

.L1:        move.b  (%a0)+,%d0
            move.b %d0,SPI_DATA(%a1)

.L2:        btst.b  #0,(%a1)
            beq     .L2

            dbeq %d1,.L1
            rts

/*
    Write 128x128x2 memory block to SPI mosi data register
    D0 colour
    D1 size
    A0 clobbered
    A1 clobbered
*/
.globl spiset
spiset:     move.l %d0,%d2
            ror.l #8,%d2
            lea.l  SPI,%a1

.L11:        move.b %d2,SPI_DATA(%a1)
.L12:        btst.b  #0,(%a1)
            beq     .L12

            move.b %d0,SPI_DATA(%a1)
.L13:        btst.b  #0,(%a1)
            beq     .L13

            dbeq %d1,.L11
            rts            