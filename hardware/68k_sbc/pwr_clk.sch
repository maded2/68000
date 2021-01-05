EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 6
Title "68000 SBC"
Date "2020-11-12"
Rev "1.2"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Regulator_Linear:AMS1117-3.3 U5
U 1 1 5F9DA089
P 3600 3850
F 0 "U5" H 3600 4092 50  0000 C CNN
F 1 "AMS1117-3.3" H 3600 4001 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 3600 4050 50  0001 C CNN
F 3 "http://www.advanced-monolithic.com/pdf/ds1117.pdf" H 3700 3600 50  0001 C CNN
	1    3600 3850
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR032
U 1 1 5F9DA08F
P 4150 3600
F 0 "#PWR032" H 4150 3450 50  0001 C CNN
F 1 "+3.3V" H 4165 3773 50  0000 C CNN
F 2 "" H 4150 3600 50  0001 C CNN
F 3 "" H 4150 3600 50  0001 C CNN
	1    4150 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 1550 5200 1550
Wire Wire Line
	4350 1650 5400 1650
Text GLabel 4150 1450 0    50   Input ~ 0
RST
$Comp
L DS1813:DS1813-10+T&R IC?
U 1 1 5FA8E20F
P 5400 1450
AR Path="/5FA8E20F" Ref="IC?"  Part="1" 
AR Path="/5F9C489E/5FA8E20F" Ref="IC1"  Part="1" 
F 0 "IC1" H 6128 1396 50  0000 L CNN
F 1 "DS1813-10+T&R" H 6128 1305 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92L_Inline" H 6150 1550 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/1/DS1813-10+T&R.pdf" H 6150 1450 50  0001 L CNN
F 4 "MAXIM INTEGRATED PRODUCTS - DS1813-10+T&R - MPU Supervisor, 0V-5.5V supply, Active-Low, Open-Drain reset, 150 ms delay/4.35V threshold, TO-92-3" H 6150 1350 50  0001 L CNN "Description"
F 5 "3.94" H 6150 1250 50  0001 L CNN "Height"
F 6 "Maxim Integrated" H 6150 1150 50  0001 L CNN "Manufacturer_Name"
F 7 "DS1813-10+T&R" H 6150 1050 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "" H 6150 950 50  0001 L CNN "Arrow Part Number"
F 9 "" H 6150 850 50  0001 L CNN "Arrow Price/Stock"
F 10 "700-DS1813-10T&R" H 6150 750 50  0001 L CNN "Mouser Part Number"
F 11 "https://www.mouser.co.uk/ProductDetail/Maxim-Integrated/DS1813-10%2bTR?qs=Jw2w9zrI6w%2F3ui2C%252Bz1Wsg%3D%3D" H 6150 650 50  0001 L CNN "Mouser Price/Stock"
	1    5400 1450
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_DPST_x2 SW?
U 1 1 5FA8E215
P 4750 2000
AR Path="/5FA8E215" Ref="SW?"  Part="1" 
AR Path="/5F9C489E/5FA8E215" Ref="SW1"  Part="1" 
F 0 "SW1" H 4750 2235 50  0000 C CNN
F 1 "SW_DPST_x2" H 4750 2144 50  0000 C CNN
F 2 "digikey-footprints:Switch_Tactile_THT_6x6mm" H 4750 2000 50  0001 C CNN
F 3 "~" H 4750 2000 50  0001 C CNN
	1    4750 2000
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5FA8E226
P 5200 1050
AR Path="/5FA8E226" Ref="#PWR?"  Part="1" 
AR Path="/5F9C489E/5FA8E226" Ref="#PWR028"  Part="1" 
F 0 "#PWR028" H 5200 900 50  0001 C CNN
F 1 "VCC" H 5215 1223 50  0000 C CNN
F 2 "" H 5200 1050 50  0001 C CNN
F 3 "" H 5200 1050 50  0001 C CNN
	1    5200 1050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FA8E22C
P 4350 2150
AR Path="/5FA8E22C" Ref="#PWR?"  Part="1" 
AR Path="/5F9C489E/5FA8E22C" Ref="#PWR029"  Part="1" 
F 0 "#PWR029" H 4350 1900 50  0001 C CNN
F 1 "GND" H 4355 1977 50  0000 C CNN
F 2 "" H 4350 2150 50  0001 C CNN
F 3 "" H 4350 2150 50  0001 C CNN
	1    4350 2150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FAA2FB3
P 8300 3900
AR Path="/5FAA2FB3" Ref="#PWR?"  Part="1" 
AR Path="/5F9C489E/5FAA2FB3" Ref="#PWR034"  Part="1" 
F 0 "#PWR034" H 8300 3650 50  0001 C CNN
F 1 "GND" H 8305 3727 50  0000 C CNN
F 2 "" H 8300 3900 50  0001 C CNN
F 3 "" H 8300 3900 50  0001 C CNN
	1    8300 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 3650 8300 3900
$Comp
L power:VCC #PWR?
U 1 1 5FAA45CE
P 8300 2900
AR Path="/5FAA45CE" Ref="#PWR?"  Part="1" 
AR Path="/5F9C489E/5FAA45CE" Ref="#PWR033"  Part="1" 
F 0 "#PWR033" H 8300 2750 50  0001 C CNN
F 1 "VCC" H 8315 3073 50  0000 C CNN
F 2 "" H 8300 2900 50  0001 C CNN
F 3 "" H 8300 2900 50  0001 C CNN
	1    8300 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 3050 8300 2900
Text GLabel 6100 4000 0    50   Output ~ 0
CPU_CLK
$Comp
L power:GND #PWR?
U 1 1 5FAAE652
P 3600 4300
AR Path="/5FAAE652" Ref="#PWR?"  Part="1" 
AR Path="/5F9C489E/5FAAE652" Ref="#PWR031"  Part="1" 
F 0 "#PWR031" H 3600 4050 50  0001 C CNN
F 1 "GND" H 3605 4127 50  0000 C CNN
F 2 "" H 3600 4300 50  0001 C CNN
F 3 "" H 3600 4300 50  0001 C CNN
	1    3600 4300
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5FAAE9F0
P 3050 3600
AR Path="/5FAAE9F0" Ref="#PWR?"  Part="1" 
AR Path="/5F9C489E/5FAAE9F0" Ref="#PWR030"  Part="1" 
F 0 "#PWR030" H 3050 3450 50  0001 C CNN
F 1 "VCC" H 3065 3773 50  0000 C CNN
F 2 "" H 3050 3600 50  0001 C CNN
F 3 "" H 3050 3600 50  0001 C CNN
	1    3050 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 3600 3050 3850
Wire Wire Line
	3050 3850 3300 3850
Wire Wire Line
	3900 3850 4150 3850
Wire Wire Line
	4150 3850 4150 3600
Wire Wire Line
	3600 4150 3600 4250
$Comp
L Device:CP C?
U 1 1 5FAB0468
P 4150 4000
AR Path="/5FAB0468" Ref="C?"  Part="1" 
AR Path="/5F9C489E/5FAB0468" Ref="C13"  Part="1" 
F 0 "C13" H 4268 4046 50  0000 L CNN
F 1 "22uF" H 4268 3955 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_5x5.4" H 4188 3850 50  0001 C CNN
F 3 "~" H 4150 4000 50  0001 C CNN
	1    4150 4000
	1    0    0    -1  
$EndComp
Connection ~ 4150 3850
Wire Wire Line
	4150 4150 4150 4250
Wire Wire Line
	4150 4250 3600 4250
Connection ~ 3600 4250
Wire Wire Line
	3600 4250 3600 4300
$Comp
L Connector:Barrel_Jack J5
U 1 1 5FAF90C3
P 1100 3950
F 0 "J5" H 1157 4275 50  0000 C CNN
F 1 "Barrel_Jack" H 1157 4184 50  0000 C CNN
F 2 "Connector_BarrelJack:BarrelJack_Horizontal" H 1150 3910 50  0001 C CNN
F 3 "~" H 1150 3910 50  0001 C CNN
	1    1100 3950
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C?
U 1 1 5FAFD745
P 2700 4000
AR Path="/5FAFD745" Ref="C?"  Part="1" 
AR Path="/5F9C489E/5FAFD745" Ref="C12"  Part="1" 
F 0 "C12" H 2818 4046 50  0000 L CNN
F 1 "22uF" H 2818 3955 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_5x5.4" H 2738 3850 50  0001 C CNN
F 3 "~" H 2700 4000 50  0001 C CNN
	1    2700 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 4150 2700 4250
Wire Wire Line
	2700 3850 3050 3850
Connection ~ 2700 3850
Connection ~ 3050 3850
Wire Wire Line
	1400 4050 1400 4250
Wire Wire Line
	2700 4250 3600 4250
Connection ~ 2700 4250
NoConn ~ 7200 3350
NoConn ~ 6050 3350
Connection ~ 7500 3050
Wire Wire Line
	7500 3050 8300 3050
Wire Wire Line
	6350 3050 7500 3050
Wire Wire Line
	7500 3650 8300 3650
$Comp
L Oscillator:CXO_DIP14 X2
U 1 1 5F9FE06A
P 7500 3350
F 0 "X2" H 7844 3396 50  0000 L CNN
F 1 "CXO_DIP14" H 7844 3305 50  0000 L CNN
F 2 "Oscillator:Oscillator_DIP-14_LargePads" H 7950 3000 50  0001 C CNN
F 3 "http://cdn-reichelt.de/documents/datenblatt/B400/OSZI.pdf" H 7400 3350 50  0001 C CNN
	1    7500 3350
	1    0    0    -1  
$EndComp
Connection ~ 7500 3650
Wire Wire Line
	7800 4000 7800 3350
Wire Wire Line
	6100 4000 6700 4000
Wire Wire Line
	6650 3350 6700 3350
Text Label 1550 3850 2    50   ~ 0
5V
Wire Wire Line
	6350 3650 7500 3650
$Comp
L Oscillator:CXO_DIP8 X1
U 1 1 5F9FE064
P 6350 3350
F 0 "X1" H 6694 3396 50  0000 L CNN
F 1 "CXO_DIP8" H 6694 3305 50  0000 L CNN
F 2 "Oscillator:Oscillator_DIP-8_LargePads" H 6800 3000 50  0001 C CNN
F 3 "http://cdn-reichelt.de/documents/datenblatt/B400/OSZI.pdf" H 6250 3350 50  0001 C CNN
	1    6350 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 3350 6700 4000
Connection ~ 6700 4000
Wire Wire Line
	6700 4000 7800 4000
Wire Wire Line
	4350 1650 4350 2000
Wire Wire Line
	4150 1450 5100 1450
Wire Wire Line
	4550 2000 4350 2000
Connection ~ 4350 2000
Wire Wire Line
	4350 2000 4350 2150
Wire Wire Line
	4950 2000 5100 2000
Wire Wire Line
	5100 2000 5100 1450
Connection ~ 5100 1450
Wire Wire Line
	5100 1450 5400 1450
Wire Wire Line
	5200 1050 5200 1550
Wire Wire Line
	1400 4250 2700 4250
Wire Wire Line
	1400 3850 2700 3850
$EndSCHEMATC
