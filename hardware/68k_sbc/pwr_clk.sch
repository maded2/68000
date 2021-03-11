EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 8
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
P 4350 2300
AR Path="/5FA8E22C" Ref="#PWR?"  Part="1" 
AR Path="/5F9C489E/5FA8E22C" Ref="#PWR029"  Part="1" 
F 0 "#PWR029" H 4350 2050 50  0001 C CNN
F 1 "GND" H 4355 2127 50  0000 C CNN
F 2 "" H 4350 2300 50  0001 C CNN
F 3 "" H 4350 2300 50  0001 C CNN
	1    4350 2300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FAA2FB3
P 7500 3650
AR Path="/5FAA2FB3" Ref="#PWR?"  Part="1" 
AR Path="/5F9C489E/5FAA2FB3" Ref="#PWR034"  Part="1" 
F 0 "#PWR034" H 7500 3400 50  0001 C CNN
F 1 "GND" H 7505 3477 50  0000 C CNN
F 2 "" H 7500 3650 50  0001 C CNN
F 3 "" H 7500 3650 50  0001 C CNN
	1    7500 3650
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5FAA45CE
P 7500 3050
AR Path="/5FAA45CE" Ref="#PWR?"  Part="1" 
AR Path="/5F9C489E/5FAA45CE" Ref="#PWR033"  Part="1" 
F 0 "#PWR033" H 7500 2900 50  0001 C CNN
F 1 "VCC" H 7515 3223 50  0000 C CNN
F 2 "" H 7500 3050 50  0001 C CNN
F 3 "" H 7500 3050 50  0001 C CNN
	1    7500 3050
	1    0    0    -1  
$EndComp
Text GLabel 8000 3350 2    50   Output ~ 0
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
F 2 "Capacitor_SMD:CP_Elec_6.3x7.7" H 4188 3850 50  0001 C CNN
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
F 2 "Capacitor_SMD:CP_Elec_6.3x7.7" H 2738 3850 50  0001 C CNN
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
$Comp
L Oscillator:CXO_DIP14 X2
U 1 1 5F9FE06A
P 7500 3350
F 0 "X2" H 7844 3396 50  0000 L CNN
F 1 "CXO_DIP14" H 7850 3100 50  0000 L CNN
F 2 "Oscillator:Oscillator_DIP-14_LargePads" H 7950 3000 50  0001 C CNN
F 3 "http://cdn-reichelt.de/documents/datenblatt/B400/OSZI.pdf" H 7400 3350 50  0001 C CNN
	1    7500 3350
	1    0    0    -1  
$EndComp
Text Label 1550 3850 2    50   ~ 0
5V
Wire Wire Line
	4350 1650 4350 2000
Wire Wire Line
	4150 1450 5100 1450
Wire Wire Line
	4550 2000 4350 2000
Connection ~ 4350 2000
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
$Comp
L dk_Tactile-Switches:1825910-6 S1
U 1 1 5FF76D99
P 4750 2100
F 0 "S1" H 4750 2447 60  0000 C CNN
F 1 "1825910-6" H 4750 2341 60  0000 C CNN
F 2 "digikey-footprints:Switch_Tactile_THT_6x6mm" H 4950 2300 60  0001 L CNN
F 3 "https://www.te.com/commerce/DocumentDelivery/DDEController?Action=srchrtrv&DocNm=1825910&DocType=Customer+Drawing&DocLang=English" H 4950 2400 60  0001 L CNN
F 4 "450-1650-ND" H 4950 2500 60  0001 L CNN "Digi-Key_PN"
F 5 "1825910-6" H 4950 2600 60  0001 L CNN "MPN"
F 6 "Switches" H 4950 2700 60  0001 L CNN "Category"
F 7 "Tactile Switches" H 4950 2800 60  0001 L CNN "Family"
F 8 "https://www.te.com/commerce/DocumentDelivery/DDEController?Action=srchrtrv&DocNm=1825910&DocType=Customer+Drawing&DocLang=English" H 4950 2900 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/te-connectivity-alcoswitch-switches/1825910-6/450-1650-ND/1632536" H 4950 3000 60  0001 L CNN "DK_Detail_Page"
F 10 "SWITCH TACTILE SPST-NO 0.05A 24V" H 4950 3100 60  0001 L CNN "Description"
F 11 "TE Connectivity ALCOSWITCH Switches" H 4950 3200 60  0001 L CNN "Manufacturer"
F 12 "Active" H 4950 3300 60  0001 L CNN "Status"
	1    4750 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 2000 4350 2200
Wire Wire Line
	4550 2200 4350 2200
Connection ~ 4350 2200
Wire Wire Line
	4350 2200 4350 2300
Wire Wire Line
	4950 2200 5100 2200
Wire Wire Line
	5100 2200 5100 2000
Connection ~ 5100 2000
Wire Wire Line
	7800 3350 8000 3350
$EndSCHEMATC
