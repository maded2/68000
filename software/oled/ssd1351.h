#include "sys.h"

static const uint16_t	BLACK		=	0x0000;
static const uint16_t	WHITE   	=	0xFFFF;
static const uint16_t	NAVY   		=	0x000F;
static const uint16_t	DARKGREEN   =	0x03E0;
static const uint16_t	DARKCYAN   	=	0x03EF;
static const uint16_t	MAROON   	=	0x7800;
static const uint16_t	PURPLE   	=	0x780F;
static const uint16_t	ORANGE   	=	0xFD20;
static const uint16_t	PINK   		=	0xF81F;
static const uint16_t	OLIVE   	=	0x7BE0;
static const uint16_t	BLUE    	=	0x001F;
static const uint16_t	RED     	=	0xF800;
static const uint16_t	GREEN   	=	0x07E0;
static const uint16_t	CYAN    	=	0x07FF;
static const uint16_t	MAGENTA 	=	0xF81F;
static const uint16_t	YELLOW  	=	0xFFE0;
static const uint16_t	BRIGHT_RED	=	0xF810;
static const uint16_t	LIGHT_GREY	=	0xC618;//0x8410;
static const uint16_t	DARK_GREY	=	0x7BEF;//0x4208;  
static const uint16_t	GREENYELLOW	=	0xAFE5;

#define RGB(R,G,B) ((((((R) & 0xF8) << 5) | ((G) & 0xF8)) << 3) | ((B) >> 3))

/*
SPI Registers, only uses the lower 8 bits of the data bus
0xB00001 - Status Register
                Bit 0 - Send Busy(1)
                Bit 1 - Recv Data(1)
                Bit 2 - Data(1) / Cmd(0)
                Bit 3 - SS1 (0=enable)
                Bit 4 - SS2 (0=enable)
0xB00003 - Send Data Register, 8 bits
0xB00005 - Recv Data Register, 8 bits
*/

#define MOSI_BUSY 1
#define MISO_DATA 2

#define SPI_SS1_DISABLE 8
#define SPI_SS2_DISABLE 16
#define SPI_SS1_ENABLE 0
#define SPI_SS2_ENABLE 0
#define SPI_CMD 0
#define SPI_DATA 4

void setSpiStatus(uint8_t value);
void sendAndWait(uint8_t value);
void outSpi0(uint8_t cmd);
void outSpi1(uint8_t cmd, uint8_t arg1);
void outSpi2(uint8_t cmd, uint8_t arg1, uint8_t arg2);
void outSpi3(uint8_t cmd, uint8_t arg1, uint8_t arg2, uint8_t arg3);
void setAddrWindow(uint8_t x1, uint8_t y1, uint8_t x2, uint8_t y2);
void clearDisplay();
void drawRect(uint8_t x1, uint8_t y1, uint8_t x2, uint8_t y2, uint16_t colour);
void initSSD1351();