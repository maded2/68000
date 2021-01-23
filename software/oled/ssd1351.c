#include "ssd1351.h"


uint8_t *spiStatus = (uint8_t *)0xB00001;
uint8_t *spiIn = (uint8_t *)0xB00003;
uint8_t *spiOut = (uint8_t *)0xB00005;

void setSpiStatus(uint8_t value)
{
    *spiStatus = value;
}

void sendAndWait(uint8_t value)
{
    *spiOut = value;
    while ((*spiStatus & MOSI_BUSY) == 0)
        ; // loop until data out busy bit is clear
}

void outSpi0(uint8_t cmd)
{
	setSpiStatus(SPI_SS1_ENABLE | SPI_SS2_DISABLE | SPI_CMD); // SS1 & Cmd
    sendAndWait(cmd);
	setSpiStatus(SPI_SS1_ENABLE | SPI_SS2_DISABLE | SPI_DATA); // SS1 & Data
}

void outSpi1(uint8_t cmd, uint8_t arg1)
{
	setSpiStatus(SPI_SS1_ENABLE | SPI_SS2_DISABLE | SPI_CMD); // SS1 & Cmd
    sendAndWait(cmd);
	setSpiStatus(SPI_SS1_ENABLE | SPI_SS2_DISABLE | SPI_DATA); // SS1 & Data
    sendAndWait(arg1);
	setSpiStatus(SPI_SS1_DISABLE | SPI_SS2_DISABLE | SPI_DATA); // Data
}

void outSpi2(uint8_t cmd, uint8_t arg1, uint8_t arg2)
{
	setSpiStatus(SPI_SS1_ENABLE | SPI_SS2_DISABLE | SPI_CMD); // SS1 & Cmd
    sendAndWait(cmd);
	setSpiStatus(SPI_SS1_ENABLE | SPI_SS2_DISABLE | SPI_DATA); // SS1 & Data
    sendAndWait(arg1);
    sendAndWait(arg2);
	setSpiStatus(SPI_SS1_DISABLE | SPI_SS2_DISABLE | SPI_DATA); // Data
}

void outSpi3(uint8_t cmd, uint8_t arg1, uint8_t arg2, uint8_t arg3)
{
	setSpiStatus(SPI_SS1_ENABLE | SPI_SS2_DISABLE | SPI_CMD); // SS1 & CMD
    sendAndWait(cmd);
	setSpiStatus(SPI_SS1_ENABLE | SPI_SS2_DISABLE | SPI_DATA); // SS1 & Data
    sendAndWait(arg1);
    sendAndWait(arg2);
    sendAndWait(arg3);
	setSpiStatus(SPI_SS1_DISABLE | SPI_SS2_DISABLE | SPI_DATA); // Data
}

void setAddrWindow(uint8_t x1, uint8_t y1, uint8_t x2, uint8_t y2)
{
    outSpi2(0x15, x1, x2); // column address
    outSpi2(0x75, y1, y2); // row address
    outSpi0(0x5c);
}

void clearDisplay()
{
    drawRect(0, 0, 127, 127, BLACK);
}

void drawRect(uint8_t x1, uint8_t y1, uint8_t x2, uint8_t y2, uint16_t colour)
{
    // printw(colour);
    // prints("\r\n");
 
    setAddrWindow((uint8_t)x1, (uint8_t)y1, (uint8_t)x2, (uint8_t)y2);
	setSpiStatus(SPI_SS1_ENABLE | SPI_SS2_DISABLE | SPI_DATA); // SS1 & Data
    for (int y = y1; y <= y2; ++y)
    {
        for (int x = x1; x <= x2; ++x)
        {
            sendAndWait((uint8_t)(colour>>8));
            sendAndWait((uint8_t)colour);
        }
    }
	setSpiStatus(SPI_SS1_DISABLE | SPI_SS2_DISABLE | SPI_DATA); // Data
}

void initSSD1351()
{
    // prints("init oled\r\n");

    //Initialization sequence / configuration
    outSpi1(0xfd, 0x12);             // unlock driver
    outSpi1(0xfd, 0xb1);             // unlock commands
    outSpi0(0xae);                   // display off
    outSpi0(0xa4);                   // display mode off
    outSpi2(0x15, 0x00, 0x7f);       // column address
    outSpi2(0x75, 0x00, 0x7f);       // row address
    outSpi1(0xb3, 0xf1);             // front clock divider (see section 8.5 of manual)
    outSpi1(0xca, 0x7f);             // multiplex
    // outSpi1(0xa0, 0x74);             // remap, data format, increment
    outSpi1(0xa0, 0x66);             // remap, data format, increment
    outSpi1(0xa1, 0x00);             // display start line
    outSpi1(0xa2, 0x00);             // display offset
    outSpi1(0xab, 0x01);             // VDD regulator ON
    outSpi3(0xb4, 0xa0, 0xb5, 0x55); // segment voltage ref pins
    outSpi3(0xc1, 0xc8, 0x80, 0xc0); // contrast current for colors A,B,C
    outSpi1(0xc7, 0x0f);             // master contrast current
    outSpi1(0xb1, 0x32);             // length of segments 1 and 2 waveforms
    outSpi3(0xb2, 0xa4, 0x00, 0x00); // display enhancement
    outSpi1(0xbb, 0x17);             // first pre-charge voltage phase 2
    outSpi1(0xb6, 0x01);             // second pre-charge period (see table 9-1 of manual)
    outSpi1(0xbe, 0x05);             // Vcomh voltage
    outSpi0(0xa6);                   // display on
    outSpi0(0xaf);                   // display mode on
}
