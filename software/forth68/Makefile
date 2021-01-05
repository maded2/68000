
f68k.srec: F68K.ASM
	vasmm68k_mot -quiet -m68000 -o f68k.srec -Fsrec -nowarn=2028 -L f68k.lst F68K.ASM

f68k.bin: f68k.srec
	srec_cat $< -o $@ -binary 

all: f68k.bin

clean:
	$(RM) f68k.bin f68k.srec f68k.lst 
