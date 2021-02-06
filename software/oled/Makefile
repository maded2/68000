CC=m68k-linux-gnu-gcc-10
LD=m68k-linux-gnu-ld
OBJCOPY=m68k-linux-gnu-objcopy

SRC = ../lib/crt0.c main.c mandelbrot.c drawrect.c pic.s 
OBJS = crt0.o main.o mandelbrot.o drawrect.o pic.o
TARGET_BIN_ELF = oled.elf
TARGET_BIN = oled.bin

CFLAGS = -Wall -m68000 -fpack-struct=2 -msoft-float -fomit-frame-pointer -nostdlib -nodefaultlibs -mstrict-align -I ../include -I ../baselibc/include

# output assemblby code instead
#CFLAGS += -S 

LDFLAGS = -nodefaultlib  -L ../baselibc -L ../lib  -lsys -lc  -lsys
all: $(TARGET_BIN)	

$(OBJS): $(SRC)
	$(CC) $(CFLAGS) -c  $(SRC)

$(TARGET_BIN_ELF): $(OBJS)	
	$(LD) $(OBJS) $(LDFLAGS) -T oled.lnk -o $(TARGET_BIN_ELF) 

$(TARGET_BIN): $(TARGET_BIN_ELF)	
	$(OBJCOPY) -v --only-section=.text --only-section=.rodata --only-section=.bss --only-section=.data -O binary $(TARGET_BIN_ELF) $(TARGET_BIN)

clean:
	$(RM) $(TARGET_BIN) $(TARGET_BIN_ELF) $(OBJS)