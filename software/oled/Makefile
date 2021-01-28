CC=m68k-linux-gnu-gcc-10
LD=m68k-linux-gnu-ld
OBJCOPY=m68k-linux-gnu-objcopy

SRC = ../lib/crt0.c ssd1351.c main.c mandelbrot.c drawrect.c drawbitmap.c pic.s spiutils.s
OBJS = crt0.o ssd1351.o main.o mandelbrot.o  drawrect.o drawbitmap.o pic.o spiutils.o
TARGET_BIN_ELF = oled.elf
TARGET_BIN = oled.bin

all: $(TARGET_BIN)	

$(OBJS): $(SRC)
	$(CC) -Wall -m68000 -fpack-struct=2 -msoft-float -fomit-frame-pointer -nostdlib -nodefaultlibs -mstrict-align -I ../include -I ../lib -c  $(SRC)

$(TARGET_BIN_ELF): $(OBJS)	
	$(LD) $(OBJS) -nodefaultlib -Ttext=0xE00000 -Tbss=0xE20000 -Trodata-segment=0xE01000 -o $(TARGET_BIN_ELF) -L . -lc -L ../lib -lsys

$(TARGET_BIN): $(TARGET_BIN_ELF)	
	$(OBJCOPY) -v --only-section=.text --only-section=.rodata --only-section=.bss --only-section=.data -O binary $(TARGET_BIN_ELF) $(TARGET_BIN)

clean:
	$(RM) $(TARGET_BIN) $(OBJS)