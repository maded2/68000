CC=m68k-linux-gnu-gcc-10
LD=m68k-linux-gnu-ld
OBJCOPY=m68k-linux-gnu-objcopy

SRC = ../lib/crt0.c ssd1351.c main.c font.s pic.s
OBJS = crt0.o ssd1351.o main.o font.o pic.o
TARGET_BIN_ELF = oled.elf
TARGET_BIN = oled.bin

all: $(TARGET_BIN)	

$(OBJS): $(SRC)
	$(CC) -Wall -m68000 -fpack-struct=2 -msoft-float -fomit-frame-pointer -nostdlib -nodefaultlibs -I ../lib -c  $(SRC)

$(TARGET_BIN_ELF): $(OBJS)	
	$(LD) $(OBJS) -Ttext=0xE00000 -Tbss=0xE20000 -o $(TARGET_BIN_ELF) -L ../lib -lsys

$(TARGET_BIN): $(TARGET_BIN_ELF)	
	$(OBJCOPY) -v -O binary $(TARGET_BIN_ELF) $(TARGET_BIN)

clean:
	$(RM) $(TARGET_BIN) $(OBJS)