CC=m68k-linux-gnu-gcc-10
LD=m68k-linux-gnu-ld
OBJCOPY=m68k-linux-gnu-objcopy

CFLAGS = -DNORMALUNIX -Wall -m68000 -fpack-struct=2 -msoft-float -fomit-frame-pointer -nostdlib -nodefaultlibs -mstrict-align -I . -I ../include -I ../lib
LDFLAGS = -nodefaultlib -Ttext=0xE00000 -Tbss=0xE20000 -Trodata-segment=0xE01000 
OBJCOPYFLAGS = --only-section=.text --only-section=.rodata --only-section=.bss --only-section=.data -O binary

SOURCES_doom_arch := d_main.c i_main.c i_net.c i_sound.c i_system.c i_video.c s_sound.c console.c libc_backend.c mini-printf.c

include sources.mk

CSRC := $(filter-out d_main.c,$(SOURCES_doom))
CSRC := $(filter-out s_sound.c,$(CSRC))
CSRC += $(SOURCES_doom_arch)
OBJS = $(CSRC:.c=.o)
TARGET_BIN_ELF = doom.elf
TARGET_BIN = doom.bin

all: $(TARGET_BIN)	

$(OBJS): $(CSRC) 
	$(CC) $(CFLAGS) -c  -o $@ $<

$(TARGET_BIN_ELF): $(OBJS)
	$(LD) $(LDFLAGS) $(OBJS) $(TARGET_BIN_ELF) -L ../lib -lsys -lc

$(TARGET_BIN): $(TARGET_BIN_ELF)	
	$(OBJCOPY) $(OBJCOPYFLAGS) $(TARGET_BIN_ELF) $(TARGET_BIN)

clean:
	$(RM) $(TARGET_BIN) $(OBJS)
