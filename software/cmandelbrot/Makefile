CC=m68k-linux-gnu-gcc-10
LD=m68k-linux-gnu-ld
OBJCOPY=m68k-linux-gnu-objcopy

SRC = ../lib/crt0.c mandelbrot.c
OBJS = crt0.o mandelbrot.o 
TARGET_BIN_ELF = mandelbrot.elf
TARGET_BIN = mandelbrot.bin

all: $(TARGET_BIN)	

$(OBJS): $(SRC)
	$(CC) -Wall -m68000 -msoft-float -fomit-frame-pointer -nostdlib -nodefaultlibs -I ../lib -c  $(SRC)

$(TARGET_BIN_ELF): $(OBJS)	
	$(LD) $(OBJS) -Ttext=0xE00000 -Tdata=0xE10000 -Tbss=0xE11000 --section-start=.rodata=0xE12000 -o $(TARGET_BIN_ELF) -L ../lib -lsys

$(TARGET_BIN): $(TARGET_BIN_ELF)	
	$(OBJCOPY) -v -O binary $(TARGET_BIN_ELF) $(TARGET_BIN)

clean:
	$(RM) $(TARGET_BIN) $(OBJS)