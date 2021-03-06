EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 8
Title "68000 SBC"
Date "2021-01-05"
Rev "1.3"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 800  800  500  250 
U 5F8E4AC3
F0 "isa_bus" 50
F1 "isa_bus.sch" 50
$EndSheet
$Sheet
S 800  1300 500  250 
U 5F8E786F
F0 "cpld" 50
F1 "cpld.sch" 50
$EndSheet
Text GLabel 6900 5650 2    50   Output ~ 0
AS
Text GLabel 6900 5750 2    50   Output ~ 0
UDS
Text GLabel 6900 5850 2    50   Output ~ 0
LDS
Text GLabel 6900 5950 2    50   Output ~ 0
RW
Text GLabel 3000 1550 0    50   Input ~ 0
CPU_CLK
$Comp
L power:GND #PWR04
U 1 1 5F932EC7
P 6200 6300
F 0 "#PWR04" H 6200 6050 50  0001 C CNN
F 1 "GND" H 6205 6127 50  0000 C CNN
F 2 "" H 6200 6300 50  0001 C CNN
F 3 "" H 6200 6300 50  0001 C CNN
	1    6200 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 6150 6200 6300
$Sheet
S 800  2300 500  250 
U 5F9C489E
F0 "Power_Clock" 50
F1 "pwr_clk.sch" 50
$EndSheet
Text GLabel 3000 2750 0    50   Output ~ 0
FC0
Text GLabel 3000 2850 0    50   Output ~ 0
FC1
Text GLabel 3000 2950 0    50   Output ~ 0
FC2
Text GLabel 3000 4350 0    50   Input ~ 0
BERR
Text GLabel 3000 4550 0    50   Input ~ 0
DTACK
Text GLabel 3000 1850 0    50   Input ~ 0
IPL0
Text GLabel 3000 1950 0    50   Input ~ 0
IPL1
Text GLabel 3000 2050 0    50   Input ~ 0
IPL2
Text GLabel 3000 2250 0    50   Input ~ 0
BGACK
Text GLabel 3000 2350 0    50   Output ~ 0
BG
Text GLabel 3000 2450 0    50   Input ~ 0
BR
Text GLabel 3000 3250 0    50   Input ~ 0
VMA
Text GLabel 3000 3350 0    50   Output ~ 0
E
Text GLabel 3000 3450 0    50   Input ~ 0
VPA
$Comp
L power:VCC #PWR03
U 1 1 5FAC4CF9
P 2950 1000
F 0 "#PWR03" H 2950 850 50  0001 C CNN
F 1 "VCC" H 2965 1173 50  0000 C CNN
F 2 "" H 2950 1000 50  0001 C CNN
F 3 "" H 2950 1000 50  0001 C CNN
	1    2950 1000
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Pack04 RN2
U 1 1 5FBA4AB6
P 4100 1200
F 0 "RN2" H 4288 1246 50  0000 L CNN
F 1 "470" H 4288 1155 50  0000 L CNN
F 2 "Resistor_SMD:R_Array_Convex_4x0603" V 4375 1200 50  0001 C CNN
F 3 "~" H 4100 1200 50  0001 C CNN
	1    4100 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 1000 4000 1000
Connection ~ 3900 1000
Connection ~ 4200 1000
Connection ~ 4000 1000
Wire Wire Line
	4000 1000 4100 1000
Connection ~ 4100 1000
Wire Wire Line
	4100 1000 4200 1000
Wire Wire Line
	4100 1400 4100 4350
Text GLabel 3000 5050 0    50   Input ~ 0
RST
$Comp
L Device:R_Pack04 RN1
U 1 1 5FAC2855
P 3450 1200
F 0 "RN1" H 3638 1246 50  0000 L CNN
F 1 "470" H 3638 1155 50  0000 L CNN
F 2 "Resistor_SMD:R_Array_Convex_4x0603" V 3725 1200 50  0001 C CNN
F 3 "~" H 3450 1200 50  0001 C CNN
	1    3450 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 1000 3900 1000
Wire Wire Line
	2950 1000 3250 1000
Wire Wire Line
	3250 1000 3350 1000
Connection ~ 3250 1000
Connection ~ 3550 1000
Connection ~ 3350 1000
Wire Wire Line
	3350 1000 3450 1000
Connection ~ 3450 1000
Wire Wire Line
	3450 1000 3550 1000
Wire Wire Line
	3000 4350 4100 4350
Wire Wire Line
	3900 1400 3900 3450
Connection ~ 3900 3450
Wire Wire Line
	3000 3450 3900 3450
$Sheet
S 800  2850 500  300 
U 5FAB96B1
F0 "memory" 50
F1 "Memory.sch" 50
$EndSheet
$Comp
L power:GND #PWR?
U 1 1 6009B3A9
P 2650 6700
AR Path="/5F8E786F/6009B3A9" Ref="#PWR?"  Part="1" 
AR Path="/6009B3A9" Ref="#PWR02"  Part="1" 
F 0 "#PWR02" H 2650 6450 50  0001 C CNN
F 1 "GND" H 2655 6527 50  0000 C CNN
F 2 "" H 2650 6700 50  0001 C CNN
F 3 "" H 2650 6700 50  0001 C CNN
	1    2650 6700
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 6009B3AF
P 2650 6200
AR Path="/5F8E786F/6009B3AF" Ref="#PWR?"  Part="1" 
AR Path="/6009B3AF" Ref="#PWR01"  Part="1" 
F 0 "#PWR01" H 2650 6050 50  0001 C CNN
F 1 "VCC" H 2665 6373 50  0000 C CNN
F 2 "" H 2650 6200 50  0001 C CNN
F 3 "" H 2650 6200 50  0001 C CNN
	1    2650 6200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 6009B3C1
P 1750 6450
AR Path="/5F8E786F/6009B3C1" Ref="C?"  Part="1" 
AR Path="/6009B3C1" Ref="C2"  Part="1" 
F 0 "C2" H 1865 6496 50  0000 L CNN
F 1 "100nF" H 1865 6405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1788 6300 50  0001 C CNN
F 3 "~" H 1750 6450 50  0001 C CNN
	1    1750 6450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 6009B3C7
P 2200 6450
AR Path="/5F8E786F/6009B3C7" Ref="C?"  Part="1" 
AR Path="/6009B3C7" Ref="C3"  Part="1" 
F 0 "C3" H 2315 6496 50  0000 L CNN
F 1 "100nF" H 2315 6405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2238 6300 50  0001 C CNN
F 3 "~" H 2200 6450 50  0001 C CNN
	1    2200 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 6200 2650 6300
Wire Wire Line
	2650 6300 2200 6300
Connection ~ 2200 6300
Wire Wire Line
	2200 6300 1750 6300
Wire Wire Line
	1750 6600 2200 6600
Connection ~ 2200 6600
Wire Wire Line
	2200 6600 2650 6600
$Comp
L 68k_dev:M27C1024 U2
U 1 1 60247B04
P 9050 3550
F 0 "U2" H 9050 4865 50  0000 C CNN
F 1 "M27C1024" H 9050 4774 50  0000 C CNN
F 2 "Package_DIP:DIP-40_W15.24mm_LongPads" H 8850 4300 50  0001 C CNN
F 3 "" H 8850 4300 50  0001 C CNN
	1    9050 3550
	1    0    0    -1  
$EndComp
Text GLabel 8600 2650 0    50   Input ~ 0
ROM_SEL
Text GLabel 8600 4450 0    50   Input ~ 0
ROM_SEL
NoConn ~ 8700 2550
$Comp
L power:GND #PWR05
U 1 1 60438F6F
P 8300 3650
F 0 "#PWR05" H 8300 3400 50  0001 C CNN
F 1 "GND" H 8305 3477 50  0000 C CNN
F 2 "" H 8300 3650 50  0001 C CNN
F 3 "" H 8300 3650 50  0001 C CNN
	1    8300 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 3550 8300 3650
$Comp
L power:GND #PWR07
U 1 1 604472BA
P 9800 3650
F 0 "#PWR07" H 9800 3400 50  0001 C CNN
F 1 "GND" H 9805 3477 50  0000 C CNN
F 2 "" H 9800 3650 50  0001 C CNN
F 3 "" H 9800 3650 50  0001 C CNN
	1    9800 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	9800 3550 9800 3650
$Comp
L power:VCC #PWR06
U 1 1 60455C52
P 9750 2450
F 0 "#PWR06" H 9750 2300 50  0001 C CNN
F 1 "VCC" H 9765 2623 50  0000 C CNN
F 2 "" H 9750 2450 50  0001 C CNN
F 3 "" H 9750 2450 50  0001 C CNN
	1    9750 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	9750 2550 9750 2450
Wire Wire Line
	9750 2550 10000 2550
$Comp
L dk_Rectangular-Connectors-Headers-Male-Pins:640456-3 J1
U 1 1 604759A2
P 10100 2750
F 0 "J1" V 10241 2622 50  0000 R CNN
F 1 "640456-3" V 10150 2622 50  0000 R CNN
F 2 "digikey-footprints:PinHeader_1x3_P2.54_Drill1.1mm" H 10300 2950 60  0001 L CNN
F 3 "https://www.te.com/commerce/DocumentDelivery/DDEController?Action=srchrtrv&DocNm=640456&DocType=Customer+Drawing&DocLang=English" H 10300 3050 60  0001 L CNN
F 4 "A19470-ND" H 10300 3150 60  0001 L CNN "Digi-Key_PN"
F 5 "640456-3" H 10300 3250 60  0001 L CNN "MPN"
F 6 "Connectors, Interconnects" H 10300 3350 60  0001 L CNN "Category"
F 7 "Rectangular Connectors - Headers, Male Pins" H 10300 3450 60  0001 L CNN "Family"
F 8 "https://www.te.com/commerce/DocumentDelivery/DDEController?Action=srchrtrv&DocNm=640456&DocType=Customer+Drawing&DocLang=English" H 10300 3550 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/te-connectivity-amp-connectors/640456-3/A19470-ND/259010" H 10300 3650 60  0001 L CNN "DK_Detail_Page"
F 10 "CONN HEADER VERT 3POS 2.54MM" H 10300 3750 60  0001 L CNN "Description"
F 11 "TE Connectivity AMP Connectors" H 10300 3850 60  0001 L CNN "Manufacturer"
F 12 "Active" H 10300 3950 60  0001 L CNN "Status"
	1    10100 2750
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C?
U 1 1 606917EA
P 1200 6450
AR Path="/5F8E786F/606917EA" Ref="C?"  Part="1" 
AR Path="/606917EA" Ref="C1"  Part="1" 
F 0 "C1" H 1315 6496 50  0000 L CNN
F 1 "100nF" H 1315 6405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1238 6300 50  0001 C CNN
F 3 "~" H 1200 6450 50  0001 C CNN
	1    1200 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 6300 1750 6300
Connection ~ 1750 6300
Wire Wire Line
	1200 6600 1750 6600
Connection ~ 1750 6600
$Sheet
S 850  4850 550  300 
U 606CB633
F0 "serial" 50
F1 "SerialIO.sch" 50
$EndSheet
Connection ~ 9750 2550
Wire Wire Line
	10000 2650 9400 2650
Wire Wire Line
	9400 2550 9750 2550
Wire Wire Line
	9400 2750 9500 2750
Wire Wire Line
	9400 2850 9500 2850
Wire Wire Line
	9400 2950 9500 2950
Wire Wire Line
	9400 3050 9500 3050
Wire Wire Line
	9400 3150 9500 3150
Wire Wire Line
	9400 3250 9500 3250
Wire Wire Line
	9400 3350 9500 3350
Wire Wire Line
	9400 3450 9500 3450
Wire Wire Line
	5950 1350 5950 1000
Wire Wire Line
	5850 1350 5850 1000
Connection ~ 5850 1000
Wire Wire Line
	5850 1000 5950 1000
Wire Wire Line
	6900 5650 6850 5650
Wire Wire Line
	6850 5750 6900 5750
Wire Wire Line
	6900 5850 6850 5850
Wire Wire Line
	6850 5950 6900 5950
Wire Wire Line
	3000 5050 4850 5050
Wire Wire Line
	3000 2350 4850 2350
Connection ~ 4100 4350
Wire Wire Line
	3000 2750 4850 2750
Wire Wire Line
	3000 2850 4850 2850
Wire Wire Line
	3000 2950 4850 2950
Wire Wire Line
	3900 3450 4850 3450
Wire Wire Line
	3000 3350 4850 3350
Wire Wire Line
	4850 1550 3000 1550
Wire Wire Line
	5850 6150 5950 6150
Wire Wire Line
	5950 6150 6200 6150
Connection ~ 5950 6150
$Comp
L CPU_NXP_68000:68000D U1
U 1 1 5F82E313
P 5850 3750
F 0 "U1" H 5250 6050 50  0000 C CNN
F 1 "68000D" H 5900 4500 50  0000 C CNN
F 2 "Package_DIP:DIP-64_W22.86mm_Socket_LongPads" H 5850 3750 50  0001 C CNN
F 3 "https://www.nxp.com/docs/en/reference-manual/MC68000UM.pdf" H 5850 3750 50  0001 C CNN
	1    5850 3750
	1    0    0    -1  
$EndComp
Text GLabel 6850 1550 2    50   Output ~ 0
A1
Text GLabel 6850 1650 2    50   Output ~ 0
A2
Text GLabel 6850 1750 2    50   Output ~ 0
A3
Text GLabel 6850 1850 2    50   Output ~ 0
A4
Text GLabel 6850 1950 2    50   Output ~ 0
A5
Text GLabel 6850 2050 2    50   Output ~ 0
A6
Text GLabel 6850 2150 2    50   Output ~ 0
A7
Text GLabel 6850 2250 2    50   Output ~ 0
A8
Text GLabel 6850 2350 2    50   Output ~ 0
A9
Text GLabel 6850 2450 2    50   Output ~ 0
A10
Text GLabel 6850 2550 2    50   Output ~ 0
A11
Text GLabel 6850 2650 2    50   Output ~ 0
A12
Text GLabel 6850 2750 2    50   Output ~ 0
A13
Text GLabel 6850 2850 2    50   Output ~ 0
A14
Text GLabel 6850 2950 2    50   Output ~ 0
A15
Text GLabel 6850 3050 2    50   Output ~ 0
A16
Text GLabel 6850 3150 2    50   Output ~ 0
A17
Text GLabel 6850 3250 2    50   Output ~ 0
A18
Text GLabel 6850 3350 2    50   Output ~ 0
A19
Text GLabel 6850 3450 2    50   Output ~ 0
A20
Text GLabel 6850 3550 2    50   Output ~ 0
A21
Text GLabel 6850 3650 2    50   Output ~ 0
A22
Text GLabel 6850 3750 2    50   Output ~ 0
A23
Text GLabel 6850 3950 2    50   BiDi ~ 0
D0
Text GLabel 6850 4050 2    50   BiDi ~ 0
D1
Text GLabel 6850 4150 2    50   BiDi ~ 0
D2
Text GLabel 6850 4250 2    50   BiDi ~ 0
D3
Text GLabel 6850 4350 2    50   BiDi ~ 0
D4
Text GLabel 6850 4450 2    50   BiDi ~ 0
D5
Text GLabel 6850 4550 2    50   BiDi ~ 0
D6
Text GLabel 6850 4650 2    50   BiDi ~ 0
D7
Text GLabel 6850 4750 2    50   BiDi ~ 0
D8
Text GLabel 6850 4850 2    50   BiDi ~ 0
D9
Text GLabel 6850 4950 2    50   BiDi ~ 0
D10
Text GLabel 6850 5050 2    50   BiDi ~ 0
D11
Text GLabel 6850 5150 2    50   BiDi ~ 0
D12
Text GLabel 6850 5250 2    50   BiDi ~ 0
D13
Text GLabel 6850 5350 2    50   BiDi ~ 0
D14
Text GLabel 6850 5450 2    50   BiDi ~ 0
D15
Wire Wire Line
	8300 3550 8700 3550
Wire Wire Line
	9400 3550 9800 3550
Text GLabel 10000 2750 0    50   Input ~ 0
A18
Text GLabel 9500 4250 2    50   Input ~ 0
A3
Text GLabel 9500 4150 2    50   Input ~ 0
A4
Text GLabel 9500 4050 2    50   Input ~ 0
A5
Text GLabel 9500 3950 2    50   Input ~ 0
A6
Text GLabel 9500 3850 2    50   Input ~ 0
A7
Text GLabel 9500 3750 2    50   Input ~ 0
A8
Text GLabel 9500 3650 2    50   Input ~ 0
A9
Text GLabel 9500 3450 2    50   Input ~ 0
A10
Text GLabel 9500 3350 2    50   Input ~ 0
A11
Text GLabel 9500 3250 2    50   Input ~ 0
A12
Text GLabel 9500 3150 2    50   Input ~ 0
A13
Text GLabel 9500 3050 2    50   Input ~ 0
A14
Text GLabel 9500 2950 2    50   Input ~ 0
A15
Text GLabel 9500 2850 2    50   Input ~ 0
A16
Text GLabel 9500 2750 2    50   Input ~ 0
A17
Text GLabel 9500 4350 2    50   Input ~ 0
A2
Text GLabel 9500 4450 2    50   Input ~ 0
A1
Wire Wire Line
	9400 3650 9500 3650
Wire Wire Line
	9500 3750 9400 3750
Wire Wire Line
	9400 3850 9500 3850
Wire Wire Line
	9500 3950 9400 3950
Wire Wire Line
	9400 4050 9500 4050
Wire Wire Line
	9500 4150 9400 4150
Wire Wire Line
	9400 4250 9500 4250
Wire Wire Line
	9400 4350 9500 4350
Wire Wire Line
	9400 4450 9500 4450
Text GLabel 8600 4350 0    50   BiDi ~ 0
D0
Text GLabel 8600 4250 0    50   BiDi ~ 0
D1
Text GLabel 8600 4150 0    50   BiDi ~ 0
D2
Text GLabel 8600 4050 0    50   BiDi ~ 0
D3
Text GLabel 8600 3950 0    50   BiDi ~ 0
D4
Text GLabel 8600 3850 0    50   BiDi ~ 0
D5
Text GLabel 8600 3750 0    50   BiDi ~ 0
D6
Text GLabel 8600 3650 0    50   BiDi ~ 0
D7
Text GLabel 8600 3450 0    50   BiDi ~ 0
D8
Text GLabel 8600 3350 0    50   BiDi ~ 0
D9
Text GLabel 8600 3250 0    50   BiDi ~ 0
D10
Text GLabel 8600 3150 0    50   BiDi ~ 0
D11
Text GLabel 8600 3050 0    50   BiDi ~ 0
D12
Text GLabel 8600 2950 0    50   BiDi ~ 0
D13
Text GLabel 8600 2850 0    50   BiDi ~ 0
D14
Text GLabel 8600 2750 0    50   BiDi ~ 0
D15
Wire Wire Line
	8600 2750 8700 2750
Wire Wire Line
	8600 2850 8700 2850
Wire Wire Line
	8600 3050 8700 3050
Wire Wire Line
	8600 2950 8700 2950
Wire Wire Line
	8600 3150 8700 3150
Wire Wire Line
	8700 3250 8600 3250
Wire Wire Line
	8600 3350 8700 3350
Wire Wire Line
	8700 3450 8600 3450
Wire Wire Line
	8600 3650 8700 3650
Wire Wire Line
	8700 3750 8600 3750
Wire Wire Line
	8600 3850 8700 3850
Wire Wire Line
	8700 3950 8600 3950
Wire Wire Line
	8600 4050 8700 4050
Wire Wire Line
	8700 4150 8600 4150
Wire Wire Line
	8600 4250 8700 4250
Wire Wire Line
	8700 4350 8600 4350
Wire Wire Line
	8600 2650 8700 2650
Wire Wire Line
	8600 4450 8700 4450
Wire Wire Line
	4200 1000 4550 1000
Wire Wire Line
	2650 6700 2650 6600
$Comp
L Device:R_Pack04 RN8
U 1 1 5FF5229B
P 4750 1200
F 0 "RN8" H 4938 1246 50  0000 L CNN
F 1 "470" H 4938 1155 50  0000 L CNN
F 2 "Resistor_SMD:R_Array_Convex_4x0603" V 5025 1200 50  0001 C CNN
F 3 "~" H 4750 1200 50  0001 C CNN
	1    4750 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 1000 5850 1000
Wire Wire Line
	4550 1000 4650 1000
Connection ~ 4550 1000
Connection ~ 4850 1000
Connection ~ 4650 1000
Wire Wire Line
	4650 1000 4750 1000
Connection ~ 4750 1000
Wire Wire Line
	4750 1000 4850 1000
$Sheet
S 800  3400 600  400 
U 6021FC6C
F0 "memory2" 50
F1 "memory2.sch" 50
$EndSheet
Wire Wire Line
	3000 1950 3350 1950
Wire Wire Line
	3000 2050 3250 2050
Wire Wire Line
	3250 1400 3250 2050
Connection ~ 3250 2050
Wire Wire Line
	3250 2050 4850 2050
Wire Wire Line
	3350 1400 3350 1950
Connection ~ 3350 1950
Wire Wire Line
	3350 1950 4850 1950
Wire Wire Line
	3450 1400 3450 1850
Wire Wire Line
	3000 1850 3450 1850
Connection ~ 3450 1850
Wire Wire Line
	3450 1850 4850 1850
Wire Wire Line
	4850 4350 4100 4350
Wire Wire Line
	3000 3250 4200 3250
Wire Wire Line
	4200 1400 4200 3250
Connection ~ 4200 3250
Wire Wire Line
	4200 3250 4850 3250
Wire Wire Line
	3000 4550 4850 4550
Connection ~ 4850 4550
Wire Wire Line
	4850 1400 4850 4550
Wire Wire Line
	3000 2450 4650 2450
Wire Wire Line
	3000 2250 4750 2250
Wire Wire Line
	4750 1400 4750 2250
Connection ~ 4750 2250
Wire Wire Line
	4750 2250 4850 2250
Wire Wire Line
	4650 1400 4650 2450
Connection ~ 4650 2450
Wire Wire Line
	4650 2450 4850 2450
Wire Wire Line
	4550 1400 4550 4950
Wire Wire Line
	4550 4950 4850 4950
$Sheet
S 800  1750 500  250 
U 603BDB5F
F0 "IO" 50
F1 "IO.sch" 50
$EndSheet
NoConn ~ 4000 1400
NoConn ~ 3550 1400
$EndSCHEMATC
