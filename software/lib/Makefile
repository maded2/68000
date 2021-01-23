CC=m68k-linux-gnu-gcc-10
AR=m68k-linux-gnu-ar

LIB_SRC = memset.c memcpy.c io.c fpgnulib.c uart.s libgcc.s lb1sf68.S
LIB_OBJS = uart.o libgcc.o memset.o memcpy.o io.o lb1sf68.o fpgnulib.o
TARGET_BIN = libsys.a

all: $(TARGET_BIN)	

$(LIB_OBJS): $(LIB_SRC)
	$(CC) -v -Wall -m68000 -fomit-frame-pointer -nostdlib -nodefaultlibs -D L_float -D L_floatex -D L_mulsi3 -D L_ltsf2 -D L_gtsf2 -c $(LIB_SRC)

$(TARGET_BIN): $(LIB_OBJS)	
	$(AR) rcs $(TARGET_BIN) $(LIB_OBJS)

clean:
	$(RM) $(TARGET_BIN) $(LIB_OBJS)