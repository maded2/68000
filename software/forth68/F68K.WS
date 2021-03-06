                        6800� fig-FORTH

    Thi� versio� o� FORT� implement� th� fig-FORT� mode� presente� i� th� FORT� 
Interes� Group'� Installatio� Manua� i� cod� fo� th� Motorol� 6800� microprocessor�  
Th� listin� presente� her� afte� i� identica� t� th� versio� 1.� o� Kennet� Mantei� �
excep� tha� thi� i� i� standar� Motorol� assemble� format� Th� transcriptio� wa� don� �
b� member� o� th� Dutc� fi� chapter� a� i� wa� fel� tha� thi� forma� woul� greatl� �
enhanc� th� usability�  Then this introduction was made to match the new listing. 
I� i� � 6� � version,usin� conventiona� two-byt� addresses,whic� doe� �
no� mak� us� o� th� 32-bi� addressin� capabilitie� o� th� 68000� Primitiv� word� ar� �
locate� a� 2000-2500H,wit� th� six-byt� inne� interprete� appende� t� eac� word� �
Constant�  an� variable� ru� fro� 2500-2700H� Mos� o� th� constant� relat� t� �
hardwar� an� i� seeme� desirabl� t� locat� thes� o� th� USE� page� S� � ne� �
primitive� (USERCONSTANT� wa� define� tha� require� n� modificatio� t� FORT� sourc� �
material,bu� get� constant� fro� th� USE� page� Th� res� o� th� kerna� run� fro� �
2700-3000H� Th� conditiona� compiler,mat� words,outpu� words,an� VLIS� ru� fro� 3000-�
3400H� Dis� I/� an� boot-u� cod� run� fro� 3400-3700H� FORT� i� entere� b� � jum� t� �
th� COL� labe� (a� 364E).o� th� warm star� a� th� labe� WAR� (a� 368A).

  Th� 180� mode� use� a� � startin� poin� assume� 128-byt� buffe� blocks� �
Modification� wer� mad� i� +BU� t� handl� automaticall� 1024,512� an� 25� byt� �
buffer� a� well� "84� wa� replace� b� "B/BU� � � "� Similarly,th� nul� wor� X,wa� �
modifie� t� handl� 1,2,4,a� wel� a� th� origina� � buffers/screen� "7� wa� replace� �
b� "B/SC� � -"� B/BU� an� B/SCR,no� userconstant� o� th� USE� pag� nee� onl� b� �
chose� t� giv� 102� bytes/screen.

   CREAT� originall� assume� tha� unchecke� dictionar� growt� woul� ru� int� th� �
computatio� stack� T� enabl� th� latte� t� b� locate� arbitrarily� � USE� variable� �
DICTLIMIT,ha� bee� introduced� CREAT� no� check� t� b� sur� th� dictionar� i� no� �
exceedin� DICTLIMIT,rathe� tha� encounterin� th� computatio� stack� t� ensur� tha� �
LFA'� fal� o� eve� addresses� a� require� b� th� 68000,CREAT� ha� als� bee� �
modifie� t� inser� 0� fil� byte� ahea� o� NFA'� whe� necessary.

   Kennet� Mante� change� CMOV� t� a� intelligen� mov� i� thi� version� henc� i� doe� �
no� agre� wit� th� fi� standar� an� canno� b� use� b� FILL� T� abid� b� th� fi� �
standards you may perform the modification suggeted in the listing. 

Th� 6800� i� considere� � wor� addressin� processor� s� � an� � d� no� handl� od� �
addresses� Howeve� C� C� C� CMOV� al� wor� a� expecte� (wit� th� aforementionne� �
restriction with respect to CMOVE)

   � ne� cod� word,C=,ha� bee� adde� tha� function� lik� � excep� tha� onl� th� lo� 
byte� ar� compared� Thi� i� use� i� EXPEC� � coupl� o� time� t� replac� =� EXPEC� �
ha� als� bee� modifie� t� ge� it� backspace-keyi� an� backspace-outpu� ASCI� code� �
fro� th� USE� page,wher� the� ar� calle� BKSPKE� an� BKSPEMIT.


   +ORIGI� accesse� th� sam� bootu� parameters,exactl� a� show� o� SCR� 7� an� 9� �
o� th� Installatio� Manual� However,th� bootup� ar� no� locate� i� COLD,rathe� tha� �
i� fron� o� FORTH.

   22� word� ar� liste� i� th� glossar� o� th� Installatio� Manual� Modificatio� o� � �
o� these� CMOVE,FILL,EXPEC� an� CREAT� ha� bee� metione� above� 1� othe� glossar� �
word� hav� bee� ommitte� i� thi� implementation� (ABORT� ;COD� .CP�  FLUS� TAS� TRIA� �
DR�  (fro� th� genera� FIG-model� an� LIS� MO� MOV� BLOCK-REA� BLOCK-WRIT� NEX� PO� �
PUS� an� PU� (onl� compare� wit� th� 180� source).
 1� word� no� appearin� i� th� glossary,ar� added:
ORIGI� CURREN� C/� C� !COD� (VAR� (CONST� (USERCONSTANT� (NEST� �
BKSPKE� BKSPEMI� DICTLIMI� EMITSU� KEYSU� ?TERMSU� CRSU� an� R/WSUB� 

   W� aschewe� th� us� o� advance� feature� i� th� assemble� suc� a� macro� a� the� �
ma� no� b� availabl� o� al� assemblers� Actuall� w� use� ourselve� th� A68� publi� �
domai� CP/� cros� assemble� fro� QUELO� Som� label� i� repea� loop� hav� bee� �
replace� b� th� SE� directive� Thi� releave� th� burde� o� th� symbo� tabl� (i� ou� �
cas� crucial� an� i� i� als� cleane� becaus� i� sho�s tha� th� labe� i� strictl� �
local.
.C� 5�
                                REGISTE� ALLOCATION

   Addres� register� ar� numbere� A0..A� i� th� 68000  an� dat� register� ar� �
D0...D7� Fiv� addres� register� ar� dedicate� pointers� A� i� CS, th� computatio� �
stac� pointe� whic� grow� towar� lo� memor� an� i� alway� pointin� a� th� hig� �
orde� (bu� lowe� memory) byt� o� th� to� 2-byt� stac� cell� A� i� IP,th� �
instructio� pointer,whic� i� incremente� whe� used� t� poin� t� th� nex� cell� A� �
i� th� wor� pointer,loade� a� usua� vi� I� an� incremente� a� used� A� i� US� th� �
USE� pag� pointe� wit� whic� offse� addresse� ar� use� t� locat� USE� variable� an� �
userconstants� A� i� R� ,th� retur� stack,whic� operate� lik� CS� An� cod� �
routine� tha� us� A3-A� mus� sav� an� restor� them.

                              RUNNIN� 6800� fig-FORTH

1� Loa� th� 6800� cod� int� � 6800� syste� fro� 2000-370� o� a� whateve� plac� yo� �
choos� t� assemble.


2� Writ� 6800� cod� subroutine� fo� EMIT,KEY,?TERMINAL.CR� an� R/� an� pu� th� �
addresse� o� thes� subroutine� a� byte� 40-4� o� th� USE� pag� b� fillin� the� �
int� th� appropriat� location� i� th� COLDU� dat� block� I� i� muc� easie� t� �
appen� th� customize� cod� t� th� 6800� sourc� an� assembl� th� whol� lo� i� on� �
go� Th� addresse� o� th� subroutine� wil� b� fille� i� automaticall� correct� 
Dat� registe� D� i� use� t� pas� ASCI� byte� i� EMI� an� KEY,an� th� fla� i� �
?TERMINAL� Remembe� t� sav� an� restor� addres� registe� A3-A� i� the� ar� used� �
FORT� wil� loo� o� th� use� pag� fo� th� addresse� o� thes� subroutines� an� COL� �
wil� hav� pu� the� there.

   3� Fi� U� S� R� TI� BKSPKE� BKSPEMI� DICTLIMI� FIRS� LIMI� US� 
PRE� B/BU�  an� B/SC� t� fi� you� hardware� D� thi� b� changin� th� addresse� i� �
COL� a� needed� I� desired� o� th� firs� attemp� t� brin� thi� syste� up� �
WARNIN� ca� b� lef� 0� Bu� i� mus� b� res� t� � i� orde� fo� th� dis� word� t� �
function.

   4� Ru� b� jumpin� t� th� labe� COL� (364� i� th� unmodifie� case� o� late� t� �
WAR� (368A).
.PA

                        LAST MINUTE NOTES

   Sinc� th� releas� o� 1.� on� significan� bu� ha� bee� found� Th� +LOO� o� �
versio� 1.� ca� no� handl� negativ� increments� Als� i� wa� foun� tha� 1.� coul� �
no� fetc� dat� fro� od� addresses� bu� i� coul� b� argue� tha� thi� i� no� to� ba� �
fo� � 1� bi� processor� Fo� bot� problem� Kennet� Mante� ha� supplie� fixes� an� �
they are to be found in the appendix at page 58.
Bot� fixe� ar� full� relocatable� s� yo� ma� us� th� he� cod� directly as foun� i� �
the assembly listing. No address translation is necessary.
   I� yo� typ� i� th� assembl� listin� fo� yoursel� yo� ma� replac� th� sourc� o� �
the listing for @ and (+LOOP) by the code given in the appendix.

To use the fix in an existing system type

HEX HERE 3053 , <other hex code > 4ED0 , 
' @  CFA !

and similar for (+LOOP), replace @ by (+LOOP).

Befor� yo� coul� d� � col� star� wit� thi� patch� yo� hav� t� adjus� th� dictionary
start value in the bootup block, at address COLDUS+$0012

HEX HERE 368A !

I� i� cleane� t� stor� HER� i� COLDUS+$001� (col� fence� a� well� bu� n� har� ca� �
b� don� a� i� i� no� possibl� t� forge� orpha� cod� withou� forgettin� th� �
preceeding word.

  Als� include� i� th� appendi� i� a� implementatio� o� th� fig_FORT� MATC� wor� �
tha� i� neede� fo� th� strin� editin� word� o� th� EDITO� presente� i� th�
fig-FORT� INSTALLATIO� MANUA� GLOSSAR� MODE� RELEAS� 1� MA� 1979� �
This was written by Kenneth Mantei to work with this fig-FORTH.

The MATCH word can also be "comma"ed in as usual:

CREATE MATCH 301B , < hex code > 4ED0 , SMUDGE ;S

The code of MATCH is relocatable as well.