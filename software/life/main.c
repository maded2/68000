
 
#include "stdint-gcc.h"
#include "stdio.h"
#include "stdlib.h"

#include "ssd1351.h"
#include "sys.h"

uint8_t* buffer = (uint8_t*)0xf00000;

#define h 128
#define w 128

static uint8_t univ1[h][w];
static uint8_t univ2[h][w];
static uint8_t (*univ)[][w];
static uint8_t (*newar)[][w];

void show(){
  uint8_t* ptr = buffer;
  for (uint8_t y = 0; y < h; y++){
    for (uint8_t x = 0; x < w; x++){
      uint8_t c = 0;
      if ( (*univ)[y][x]==1 ) {
          c = 0xff;
      } 
      *ptr= c;
      ptr++;
      *ptr = c;      
      ptr++;
    }
  }    
  oleddrawbitmap(buffer);
}
 
void evolve(){

  uint16_t* ptr = (uint16_t*)0xf00000;
  for (uint8_t y = 1; y < h-1; y++){
    *ptr++ = 0;
    for (uint8_t x = 1; x < w-1; x++){
      uint8_t n = (*univ)[y-1][x-1];
      n += (*univ)[y-1][x];
      n += (*univ)[y-1][x+1];
      n += (*univ)[y][x-1];
      n += (*univ)[y][x+1];
      n += (*univ)[y+1][x-1];
      n += (*univ)[y+1][x];
      n += (*univ)[y+1][x+1];
      uint8_t c = 0;
      if ((*univ)[y][x] == 1) {
        c =  n < 2 || n > 3 ? 0 : 1; 
      } else {
        c = n == 3 ? 1 : 0;
      }
      (*newar)[y][x] = c;
      if (c == 1 ) {
        *ptr++ = 0xffff;
      } else {
        *ptr++ = 0;
      } 
    }
    *ptr++ = 0;
  } 

  oleddrawbitmap(buffer);

}
 
void game() {
  univ = &univ1;
  newar = &univ2;
  for (uint8_t x = 1; x < w-1; x++){
    for (uint8_t y = 1; y < h-1; y++){
      (*univ)[y][x] = rand() < RAND_MAX / 10 ? 1 : 0;
    }
  }
  show();
  int sc=0;
  while (1) {
    evolve();
    if (univ == univ1) {
      univ = &univ2;
      newar = &univ1;
    } else {
      univ = &univ1;
      newar = &univ2;
    }
    printf("epoc %d\r\n", sc);
    // delay(150);
    sc++;if(sc>150)break;
  }
}
 
int main()
{
	printf("Game of Life\r\n");
  printf("buffer =  %x\r\n", (uint32_t)buffer);

	initSSD1351();

	clearDisplay();
  //drawRect(0,0,127,127,0xffff);
  game();//w,h

}
