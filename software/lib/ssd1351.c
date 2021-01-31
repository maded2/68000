#include "stdint-gcc.h"
#include "stdio.h"

#include "ssd1351.h"
#include "sys.h"

uint8_t *spiStatus = (uint8_t *)0xB00001;
uint8_t *spiInOut = (uint8_t *)0xB00003;

uint8_t cursor_x = 0;
uint8_t cursor_y = 0;
uint8_t font_width = 8;
uint8_t font_height = 8;
uint8_t yOffset = 0;
uint8_t scroll = 0;
uint8_t *selectedFont;

void setSpiStatus(uint8_t value)
{
    *spiStatus = value;
}

void sendAndWait(uint8_t value)
{
    *spiInOut = value;
    // int i=0;
    // while ((*spiStatus & MOSI_BUSY) == 0) {
    //     i++; // loop until data out busy bit is clear
    // }
    // printf("wait %d\r\n", i);
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
    outSpi2(0x15, x1, x2);                                    // column address
    outSpi2(0x75, y1, y2);                                    // row address
    setSpiStatus(SPI_SS1_ENABLE | SPI_SS2_DISABLE | SPI_CMD); // SS1 & CMD
    outSpi0(0x5c);
}

void clearDisplay()
{
    drawRect(0, 0, 127, 127, BLACK);
    cursor_x = 0;
    cursor_y = 0;
    yOffset = 0;
    scroll = 0;
    outSpi1(0xA1, yOffset);
}

void drawRect(uint8_t x1, uint8_t y1, uint8_t x2, uint8_t y2, uint16_t colour)
{
    setAddrWindow((uint8_t)x1, (uint8_t)y1, (uint8_t)x2, (uint8_t)y2);
    setSpiStatus(SPI_SS1_ENABLE | SPI_SS2_DISABLE | SPI_DATA); // SS1 & Data
    spiset(colour, (y2-y1+1)*(x2-x1+1));
    // for (int y = y1; y <= y2; ++y)
    // {
    //     for (int x = x1; x <= x2; ++x)
    //     {
    //         sendAndWait((uint8_t)(colour >> 8));
    //         sendAndWait((uint8_t)colour);
    //     }
    // }
    setSpiStatus(SPI_SS1_DISABLE | SPI_SS2_DISABLE | SPI_DATA); // Data
}



void oledsetcursor(uint8_t x, uint8_t y)
{
    cursor_x = x * font_width;
    cursor_y = y * font_height;
}

void oledprints(char *s)
{
    while (*s != 0)
    {
        oledprintch(*s++);
    }
}

void oledprintch(char c)
{
    uint8_t oldy = cursor_y;
    if (c == '\r')
    {
        cursor_x = 0;
    }
    else if (c == '\n')
    {
        cursor_y += font_height;
    }
    else
    {
        putchar_xy(cursor_x, cursor_y, c);
        cursor_x += font_width;
    }
    if (cursor_x >= 128)
    {
        cursor_x = 0;
        cursor_y += font_height;
    }
    if (cursor_y >= 128)
    {
        scroll = 1;
        cursor_y = 0;
    }
    if (scroll == 1 && oldy != cursor_y) {
        drawRect(0, cursor_y, 127, cursor_y + font_height - 1, BLACK);
        yOffset += font_height;
        if (yOffset >= 128)
        {
            yOffset = 0;
        }
        outSpi1(0xA1, yOffset);
    }
}

void putchar_xy(uint8_t X, uint8_t Y, uint8_t c)
{
    setAddrWindow(X, Y, X + font_width - 1, Y + font_height - 1);

    if (selectedFont == font_5x7) {
        if (c < 0x20 || c > 0x7f) {
            c = 0x20;
        }
         uint8_t *car_ptr = selectedFont + (int)(c-0x20) * font_width;
        for (int row = 0; row < font_height; ++row)
        {
            for (int col = 0; col < font_width; ++col)
            {
                uint32_t BW = (car_ptr[col] & (1 << row)) ? 255 : 0;
                uint16_t colour = BW ? WHITE : BLACK;
                sendAndWait((uint8_t)(colour >> 8));
                sendAndWait((uint8_t)colour);
            }
        }
    } else {
        uint8_t *car_ptr = selectedFont + (int)c * font_width;
        for (int row = 0; row < font_height; ++row)
        {
            for (int col = 0; col < font_width; ++col)
            {
                uint32_t BW = (car_ptr[col] & (1 << row)) ? 255 : 0;
                uint16_t colour = BW ? WHITE : BLACK;
                sendAndWait((uint8_t)(colour >> 8));
                sendAndWait((uint8_t)colour);
            }
        }
    }
    setSpiStatus(SPI_SS1_DISABLE | SPI_SS2_DISABLE | SPI_DATA); // Data
}

void oleddrawbitmap(uint8_t* bitmap)
{
    // uint8_t *pic_ptr = pic;
    setAddrWindow(0, 0, 127, 127);
    spicpy((uint8_t*)bitmap, (uint16_t)0x8000);
    // for (int i = 0; i < 32768; i++)
    // {
        // sendAndWait(*bitmap++);
    // }
    setSpiStatus(SPI_SS1_DISABLE | SPI_SS2_DISABLE | SPI_DATA); // Data
}

void selectFont8x8()
{
    selectedFont = font_5x7;
    font_width = 5;
    font_height = 8;

    printf("font loc = %x\r\n", (uint32_t)selectedFont);
}

void initSSD1351()
{
    //Initialization sequence / configuration
    outSpi1(0xfd, 0x12);       // unlock driver
    outSpi1(0xfd, 0xb1);       // unlock commands
    outSpi0(0xae);             // display off
    outSpi0(0xa4);             // display mode off
    outSpi2(0x15, 0x00, 0x7f); // column address
    outSpi2(0x75, 0x00, 0x7f); // row address
    outSpi1(0xb3, 0xf1);       // front clock divider (see section 8.5 of manual)
    outSpi1(0xca, 0x7f);       // multiplex
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

    selectFont8x8();
}
