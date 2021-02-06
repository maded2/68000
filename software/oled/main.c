#include "stdint-gcc.h"
#include "stdio.h"
#include "string.h"

#include "ssd1351.h"
#include "mandelbrot.h"
#include "drawrect.h"
#include "sys.h"

extern uint8_t* pic;

int main()
{
	char txtBuffer[100];
	printf("Init  oled\r\n");
    printf("pic  = %x\r\n", (uint32_t)pic);

	initSSD1351();

	clearDisplay();
	oledsetcursor(0, 0);
	for (int j=0;; j++)
	{
		drawRects();

    	oleddrawbitmap(pic);

		// drawMandelbrot();

		for (int k=0;k<20; k++) {
			sprintf(txtBuffer, "Hello %x\r\n", k);
			oledprints(txtBuffer);
			// printf(welcome);
			// for (int i = 0; i < 1000; i++); // wait a bit
			oledprints("   Hello World\r\n");
			// for (int i = 0; i < 1000; i++); // wait a bit
			oledprints("    Hello World\r\n");
			// for (int i = 0; i < 1000; i++); // wait a bit
			for (int j=0; j< 1000; j++)
				millis();
		}
	}
}

