#include "drawrect.h"

void drawRects()
{
    clearDisplay();
    drawRect(10, 10, 100, 100, BLUE);
    // for (int i = 0; i < 100000; i++);   // wait a bit
    drawRect(10, 10, 100, 100, RED);
    // for (int i = 0; i < 100000; i++);   // wait a bit
    drawRect(10, 10, 100, 100, GREEN);
    // for (int i = 0; i < 100000; i++);   // wait a bit
    drawRect(10, 10, 100, 100, WHITE);
    // for (int i = 0; i < 100000; i++);   // wait a bit
    drawRect(10, 10, 100, 100, YELLOW);
    // for (int i = 0; i < 100000; i++);   // wait a bit
}