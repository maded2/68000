#include "drawrect.h"
#include "sys.h"

void drawRects()
{
    clearDisplay();
    drawRect(10, 10, 117, 117, BLUE);
    for (int i = 0; i < 500; i++)
        millis();

    drawRect(10, 10, 117, 117, RED);
    for (int i = 0; i < 500; i++)
        millis();

    drawRect(10, 10, 117, 117, GREEN);
    for (int i = 0; i < 500; i++)
        millis();

    drawRect(10, 10, 117, 117, WHITE);
    for (int i = 0; i < 500; i++)
        millis();

    drawRect(10, 10, 117, 117, YELLOW);
    for (int i = 0; i < 500; i++)
        millis();

}