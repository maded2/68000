EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 8
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
L 68k_dev:CY7C1049D U12
U 1 1 5FABD348
P 8000 1850
F 0 "U12" H 7975 2165 50  0000 C CNN
F 1 "CY7C1049D" H 7975 2074 50  0000 C CNN
F 2 "KiCad_Libraries:SOJ-36_10.16x23.49mm_P1.27mm_sram" H 7750 2100 50  0001 C CNN
F 3 "" H 7750 2100 50  0001 C CNN
	1    8000 1850
	1    0    0    -1  
$EndComp
Text GLabel 7600 3000 0    50   Input ~ 0
WRU
Text GLabel 8350 2300 2    50   Input ~ 0
RDU
Text GLabel 7600 2300 0    50   Input ~ 0
RAM4_SEL
$Comp
L power:VCC #PWR061
U 1 1 5FB20A6E
P 7050 2550
F 0 "#PWR061" H 7050 2400 50  0001 C CNN
F 1 "VCC" H 7065 2723 50  0000 C CNN
F 2 "" H 7050 2550 50  0001 C CNN
F 3 "" H 7050 2550 50  0001 C CNN
	1    7050 2550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR062
U 1 1 5FB224C2
P 7050 2700
F 0 "#PWR062" H 7050 2450 50  0001 C CNN
F 1 "GND" H 7055 2527 50  0000 C CNN
F 2 "" H 7050 2700 50  0001 C CNN
F 3 "" H 7050 2700 50  0001 C CNN
	1    7050 2700
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR065
U 1 1 5FB244CB
P 8750 2550
F 0 "#PWR065" H 8750 2400 50  0001 C CNN
F 1 "VCC" H 8765 2723 50  0000 C CNN
F 2 "" H 8750 2550 50  0001 C CNN
F 3 "" H 8750 2550 50  0001 C CNN
	1    8750 2550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR067
U 1 1 5FB24B4B
P 8850 2600
F 0 "#PWR067" H 8850 2350 50  0001 C CNN
F 1 "GND" H 8855 2427 50  0000 C CNN
F 2 "" H 8850 2600 50  0001 C CNN
F 3 "" H 8850 2600 50  0001 C CNN
	1    8850 2600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 600A8157
P 5150 7250
AR Path="/5F8E786F/600A8157" Ref="#PWR?"  Part="1" 
AR Path="/5FAB96B1/600A8157" Ref="#PWR048"  Part="1" 
F 0 "#PWR048" H 5150 7000 50  0001 C CNN
F 1 "GND" H 5155 7077 50  0000 C CNN
F 2 "" H 5150 7250 50  0001 C CNN
F 3 "" H 5150 7250 50  0001 C CNN
	1    5150 7250
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 600A815D
P 5150 6800
AR Path="/5F8E786F/600A815D" Ref="#PWR?"  Part="1" 
AR Path="/5FAB96B1/600A815D" Ref="#PWR047"  Part="1" 
F 0 "#PWR047" H 5150 6650 50  0001 C CNN
F 1 "VCC" H 5165 6973 50  0000 C CNN
F 2 "" H 5150 6800 50  0001 C CNN
F 3 "" H 5150 6800 50  0001 C CNN
	1    5150 6800
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 600A8163
P 3300 7050
AR Path="/5F8E786F/600A8163" Ref="C?"  Part="1" 
AR Path="/5FAB96B1/600A8163" Ref="C18"  Part="1" 
F 0 "C18" H 3415 7096 50  0000 L CNN
F 1 "100nF" H 3415 7005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3338 6900 50  0001 C CNN
F 3 "~" H 3300 7050 50  0001 C CNN
	1    3300 7050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 600A8169
P 3800 7050
AR Path="/5F8E786F/600A8169" Ref="C?"  Part="1" 
AR Path="/5FAB96B1/600A8169" Ref="C19"  Part="1" 
F 0 "C19" H 3915 7096 50  0000 L CNN
F 1 "100nF" H 3915 7005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3838 6900 50  0001 C CNN
F 3 "~" H 3800 7050 50  0001 C CNN
	1    3800 7050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 600A816F
P 4250 7050
AR Path="/5F8E786F/600A816F" Ref="C?"  Part="1" 
AR Path="/5FAB96B1/600A816F" Ref="C20"  Part="1" 
F 0 "C20" H 4365 7096 50  0000 L CNN
F 1 "100nF" H 4365 7005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4288 6900 50  0001 C CNN
F 3 "~" H 4250 7050 50  0001 C CNN
	1    4250 7050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 600A8175
P 4700 7050
AR Path="/5F8E786F/600A8175" Ref="C?"  Part="1" 
AR Path="/5FAB96B1/600A8175" Ref="C21"  Part="1" 
F 0 "C21" H 4815 7096 50  0000 L CNN
F 1 "100nF" H 4815 7005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4738 6900 50  0001 C CNN
F 3 "~" H 4700 7050 50  0001 C CNN
	1    4700 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 6800 5150 6900
Wire Wire Line
	5150 6900 4700 6900
Connection ~ 3800 6900
Connection ~ 4250 6900
Wire Wire Line
	4250 6900 3800 6900
Connection ~ 4700 6900
Wire Wire Line
	4700 6900 4250 6900
Wire Wire Line
	5150 7200 5150 7250
Connection ~ 3800 7200
Wire Wire Line
	3800 7200 4250 7200
Connection ~ 4250 7200
Wire Wire Line
	4250 7200 4700 7200
Connection ~ 4700 7200
Wire Wire Line
	4700 7200 5150 7200
Wire Wire Line
	3300 7200 3800 7200
Wire Wire Line
	3800 6900 3300 6900
$Comp
L Device:C C?
U 1 1 6016F8D2
P 1400 7050
AR Path="/5F8E786F/6016F8D2" Ref="C?"  Part="1" 
AR Path="/5FAB96B1/6016F8D2" Ref="C14"  Part="1" 
F 0 "C14" H 1515 7096 50  0000 L CNN
F 1 "100nF" H 1515 7005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1438 6900 50  0001 C CNN
F 3 "~" H 1400 7050 50  0001 C CNN
	1    1400 7050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 6016F8D8
P 1900 7050
AR Path="/5F8E786F/6016F8D8" Ref="C?"  Part="1" 
AR Path="/5FAB96B1/6016F8D8" Ref="C15"  Part="1" 
F 0 "C15" H 2015 7096 50  0000 L CNN
F 1 "100nF" H 2015 7005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1938 6900 50  0001 C CNN
F 3 "~" H 1900 7050 50  0001 C CNN
	1    1900 7050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 6016F8DE
P 2350 7050
AR Path="/5F8E786F/6016F8DE" Ref="C?"  Part="1" 
AR Path="/5FAB96B1/6016F8DE" Ref="C16"  Part="1" 
F 0 "C16" H 2465 7096 50  0000 L CNN
F 1 "100nF" H 2465 7005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2388 6900 50  0001 C CNN
F 3 "~" H 2350 7050 50  0001 C CNN
	1    2350 7050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 6016F8E4
P 2800 7050
AR Path="/5F8E786F/6016F8E4" Ref="C?"  Part="1" 
AR Path="/5FAB96B1/6016F8E4" Ref="C17"  Part="1" 
F 0 "C17" H 2915 7096 50  0000 L CNN
F 1 "100nF" H 2915 7005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2838 6900 50  0001 C CNN
F 3 "~" H 2800 7050 50  0001 C CNN
	1    2800 7050
	1    0    0    -1  
$EndComp
Connection ~ 1900 6900
Wire Wire Line
	1900 6900 1400 6900
Connection ~ 2350 6900
Wire Wire Line
	2350 6900 1900 6900
Connection ~ 2800 6900
Wire Wire Line
	2800 6900 2350 6900
Wire Wire Line
	1400 7200 1900 7200
Connection ~ 1900 7200
Wire Wire Line
	1900 7200 2350 7200
Connection ~ 2350 7200
Wire Wire Line
	2350 7200 2800 7200
Connection ~ 2800 7200
Wire Wire Line
	2800 6900 3300 6900
Connection ~ 3300 6900
Wire Wire Line
	2800 7200 3300 7200
Connection ~ 3300 7200
Wire Wire Line
	7050 2600 7600 2600
Text GLabel 7600 1800 0    50   Input ~ 0
A1
Text GLabel 7600 1900 0    50   Input ~ 0
A2
Text GLabel 7600 2000 0    50   Input ~ 0
A3
Text GLabel 7600 2100 0    50   Input ~ 0
A4
Text GLabel 7600 2200 0    50   Input ~ 0
A5
Text GLabel 7600 3100 0    50   Input ~ 0
A6
Text GLabel 7600 3200 0    50   Input ~ 0
A7
Text GLabel 7600 3300 0    50   Input ~ 0
A8
Text GLabel 7600 3400 0    50   Input ~ 0
A9
Text GLabel 7600 3500 0    50   Input ~ 0
A10
Text GLabel 8350 3400 2    50   Input ~ 0
A11
Text GLabel 8350 3300 2    50   Input ~ 0
A12
Text GLabel 8350 3200 2    50   Input ~ 0
A13
Text GLabel 8350 3100 2    50   Input ~ 0
A14
Text GLabel 8350 3000 2    50   Input ~ 0
A15
Text GLabel 8350 2200 2    50   Input ~ 0
A16
Text GLabel 8350 2100 2    50   Input ~ 0
A17
Text GLabel 8350 2000 2    50   Input ~ 0
A18
Text GLabel 8350 1900 2    50   Input ~ 0
A19
Text GLabel 7600 2400 0    50   BiDi ~ 0
D8
Text GLabel 7600 2800 0    50   BiDi ~ 0
D10
Text GLabel 7600 2900 0    50   BiDi ~ 0
D11
Text GLabel 8350 2900 2    50   BiDi ~ 0
D12
Text GLabel 8350 2800 2    50   BiDi ~ 0
D13
Text GLabel 8350 2500 2    50   BiDi ~ 0
D14
Text GLabel 8350 2400 2    50   BiDi ~ 0
D15
Wire Wire Line
	7050 2550 7050 2600
Wire Wire Line
	7050 2700 7600 2700
Wire Wire Line
	8350 2600 8850 2600
Wire Wire Line
	8350 2700 8750 2700
Wire Wire Line
	8750 2700 8750 2550
Text GLabel 7600 2500 0    50   BiDi ~ 0
D9
$Comp
L 68k_dev:CY7C1049D U13
U 1 1 605F32A6
P 8000 4150
F 0 "U13" H 7975 4465 50  0000 C CNN
F 1 "CY7C1049D" H 7975 4374 50  0000 C CNN
F 2 "KiCad_Libraries:SOJ-36_10.16x23.49mm_P1.27mm_sram" H 7750 4400 50  0001 C CNN
F 3 "" H 7750 4400 50  0001 C CNN
	1    8000 4150
	1    0    0    -1  
$EndComp
Text GLabel 7600 5300 0    50   Input ~ 0
WRL
Text GLabel 8350 4600 2    50   Input ~ 0
RDL
Text GLabel 7600 4600 0    50   Input ~ 0
RAM4_SEL
$Comp
L power:VCC #PWR063
U 1 1 605F32AF
P 7050 4850
F 0 "#PWR063" H 7050 4700 50  0001 C CNN
F 1 "VCC" H 7065 5023 50  0000 C CNN
F 2 "" H 7050 4850 50  0001 C CNN
F 3 "" H 7050 4850 50  0001 C CNN
	1    7050 4850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR064
U 1 1 605F32B5
P 7050 5000
F 0 "#PWR064" H 7050 4750 50  0001 C CNN
F 1 "GND" H 7055 4827 50  0000 C CNN
F 2 "" H 7050 5000 50  0001 C CNN
F 3 "" H 7050 5000 50  0001 C CNN
	1    7050 5000
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR066
U 1 1 605F32BB
P 8750 4850
F 0 "#PWR066" H 8750 4700 50  0001 C CNN
F 1 "VCC" H 8765 5023 50  0000 C CNN
F 2 "" H 8750 4850 50  0001 C CNN
F 3 "" H 8750 4850 50  0001 C CNN
	1    8750 4850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR068
U 1 1 605F32C1
P 8850 4900
F 0 "#PWR068" H 8850 4650 50  0001 C CNN
F 1 "GND" H 8855 4727 50  0000 C CNN
F 2 "" H 8850 4900 50  0001 C CNN
F 3 "" H 8850 4900 50  0001 C CNN
	1    8850 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 4900 7600 4900
Text GLabel 7600 4100 0    50   Input ~ 0
A1
Text GLabel 7600 4200 0    50   Input ~ 0
A2
Text GLabel 7600 4300 0    50   Input ~ 0
A3
Text GLabel 7600 4400 0    50   Input ~ 0
A4
Text GLabel 7600 4500 0    50   Input ~ 0
A5
Text GLabel 7600 5400 0    50   Input ~ 0
A6
Text GLabel 7600 5500 0    50   Input ~ 0
A7
Text GLabel 7600 5600 0    50   Input ~ 0
A8
Text GLabel 7600 5700 0    50   Input ~ 0
A9
Text GLabel 7600 5800 0    50   Input ~ 0
A10
Text GLabel 8350 5700 2    50   Input ~ 0
A11
Text GLabel 8350 5600 2    50   Input ~ 0
A12
Text GLabel 8350 5500 2    50   Input ~ 0
A13
Text GLabel 8350 5400 2    50   Input ~ 0
A14
Text GLabel 8350 5300 2    50   Input ~ 0
A15
Text GLabel 8350 4500 2    50   Input ~ 0
A16
Text GLabel 8350 4400 2    50   Input ~ 0
A17
Text GLabel 8350 4300 2    50   Input ~ 0
A18
Text GLabel 8350 4200 2    50   Input ~ 0
A19
Text GLabel 7600 4700 0    50   BiDi ~ 0
D0
Text GLabel 7600 5100 0    50   BiDi ~ 0
D2
Text GLabel 7600 5200 0    50   BiDi ~ 0
D3
Text GLabel 8350 5200 2    50   BiDi ~ 0
D4
Text GLabel 8350 5100 2    50   BiDi ~ 0
D5
Text GLabel 8350 4800 2    50   BiDi ~ 0
D6
Text GLabel 8350 4700 2    50   BiDi ~ 0
D7
Wire Wire Line
	7050 4850 7050 4900
Wire Wire Line
	7050 5000 7600 5000
Wire Wire Line
	8350 4900 8850 4900
Wire Wire Line
	8350 5000 8750 5000
Wire Wire Line
	8750 5000 8750 4850
Text GLabel 7600 4800 0    50   BiDi ~ 0
D1
$Comp
L 68k_dev:CY7C1049D U10
U 1 1 605FCCB5
P 5900 1850
F 0 "U10" H 5875 2165 50  0000 C CNN
F 1 "CY7C1049D" H 5875 2074 50  0000 C CNN
F 2 "KiCad_Libraries:SOJ-36_10.16x23.49mm_P1.27mm_sram" H 5650 2100 50  0001 C CNN
F 3 "" H 5650 2100 50  0001 C CNN
	1    5900 1850
	1    0    0    -1  
$EndComp
Text GLabel 5500 3000 0    50   Input ~ 0
WRU
Text GLabel 6250 2300 2    50   Input ~ 0
RDU
Text GLabel 5500 2300 0    50   Input ~ 0
RAM3_SEL
$Comp
L power:VCC #PWR053
U 1 1 605FCCBE
P 4950 2550
F 0 "#PWR053" H 4950 2400 50  0001 C CNN
F 1 "VCC" H 4965 2723 50  0000 C CNN
F 2 "" H 4950 2550 50  0001 C CNN
F 3 "" H 4950 2550 50  0001 C CNN
	1    4950 2550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR054
U 1 1 605FCCC4
P 4950 2700
F 0 "#PWR054" H 4950 2450 50  0001 C CNN
F 1 "GND" H 4955 2527 50  0000 C CNN
F 2 "" H 4950 2700 50  0001 C CNN
F 3 "" H 4950 2700 50  0001 C CNN
	1    4950 2700
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR057
U 1 1 605FCCCA
P 6650 2550
F 0 "#PWR057" H 6650 2400 50  0001 C CNN
F 1 "VCC" H 6665 2723 50  0000 C CNN
F 2 "" H 6650 2550 50  0001 C CNN
F 3 "" H 6650 2550 50  0001 C CNN
	1    6650 2550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR059
U 1 1 605FCCD0
P 6750 2600
F 0 "#PWR059" H 6750 2350 50  0001 C CNN
F 1 "GND" H 6755 2427 50  0000 C CNN
F 2 "" H 6750 2600 50  0001 C CNN
F 3 "" H 6750 2600 50  0001 C CNN
	1    6750 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 2600 5500 2600
Text GLabel 5500 1800 0    50   Input ~ 0
A1
Text GLabel 5500 1900 0    50   Input ~ 0
A2
Text GLabel 5500 2000 0    50   Input ~ 0
A3
Text GLabel 5500 2100 0    50   Input ~ 0
A4
Text GLabel 5500 2200 0    50   Input ~ 0
A5
Text GLabel 5500 3100 0    50   Input ~ 0
A6
Text GLabel 5500 3200 0    50   Input ~ 0
A7
Text GLabel 5500 3300 0    50   Input ~ 0
A8
Text GLabel 5500 3400 0    50   Input ~ 0
A9
Text GLabel 5500 3500 0    50   Input ~ 0
A10
Text GLabel 6250 3400 2    50   Input ~ 0
A11
Text GLabel 6250 3300 2    50   Input ~ 0
A12
Text GLabel 6250 3200 2    50   Input ~ 0
A13
Text GLabel 6250 3100 2    50   Input ~ 0
A14
Text GLabel 6250 3000 2    50   Input ~ 0
A15
Text GLabel 6250 2200 2    50   Input ~ 0
A16
Text GLabel 6250 2100 2    50   Input ~ 0
A17
Text GLabel 6250 2000 2    50   Input ~ 0
A18
Text GLabel 6250 1900 2    50   Input ~ 0
A19
Text GLabel 5500 2400 0    50   BiDi ~ 0
D8
Text GLabel 5500 2800 0    50   BiDi ~ 0
D10
Text GLabel 5500 2900 0    50   BiDi ~ 0
D11
Text GLabel 6250 2900 2    50   BiDi ~ 0
D12
Text GLabel 6250 2800 2    50   BiDi ~ 0
D13
Text GLabel 6250 2500 2    50   BiDi ~ 0
D14
Text GLabel 6250 2400 2    50   BiDi ~ 0
D15
Wire Wire Line
	4950 2550 4950 2600
Wire Wire Line
	4950 2700 5500 2700
Wire Wire Line
	6250 2600 6750 2600
Wire Wire Line
	6250 2700 6650 2700
Wire Wire Line
	6650 2700 6650 2550
Text GLabel 5500 2500 0    50   BiDi ~ 0
D9
$Comp
L 68k_dev:CY7C1049D U11
U 1 1 605FCCF7
P 5900 4150
F 0 "U11" H 5875 4465 50  0000 C CNN
F 1 "CY7C1049D" H 5875 4374 50  0000 C CNN
F 2 "KiCad_Libraries:SOJ-36_10.16x23.49mm_P1.27mm_sram" H 5650 4400 50  0001 C CNN
F 3 "" H 5650 4400 50  0001 C CNN
	1    5900 4150
	1    0    0    -1  
$EndComp
Text GLabel 5500 5300 0    50   Input ~ 0
WRL
Text GLabel 6250 4600 2    50   Input ~ 0
RDL
Text GLabel 5500 4600 0    50   Input ~ 0
RAM3_SEL
$Comp
L power:VCC #PWR055
U 1 1 605FCD00
P 4950 4850
F 0 "#PWR055" H 4950 4700 50  0001 C CNN
F 1 "VCC" H 4965 5023 50  0000 C CNN
F 2 "" H 4950 4850 50  0001 C CNN
F 3 "" H 4950 4850 50  0001 C CNN
	1    4950 4850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR056
U 1 1 605FCD06
P 4950 5000
F 0 "#PWR056" H 4950 4750 50  0001 C CNN
F 1 "GND" H 4955 4827 50  0000 C CNN
F 2 "" H 4950 5000 50  0001 C CNN
F 3 "" H 4950 5000 50  0001 C CNN
	1    4950 5000
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR058
U 1 1 605FCD0C
P 6650 4850
F 0 "#PWR058" H 6650 4700 50  0001 C CNN
F 1 "VCC" H 6665 5023 50  0000 C CNN
F 2 "" H 6650 4850 50  0001 C CNN
F 3 "" H 6650 4850 50  0001 C CNN
	1    6650 4850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR060
U 1 1 605FCD12
P 6750 4900
F 0 "#PWR060" H 6750 4650 50  0001 C CNN
F 1 "GND" H 6755 4727 50  0000 C CNN
F 2 "" H 6750 4900 50  0001 C CNN
F 3 "" H 6750 4900 50  0001 C CNN
	1    6750 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 4900 5500 4900
Text GLabel 5500 4100 0    50   Input ~ 0
A1
Text GLabel 5500 4200 0    50   Input ~ 0
A2
Text GLabel 5500 4300 0    50   Input ~ 0
A3
Text GLabel 5500 4400 0    50   Input ~ 0
A4
Text GLabel 5500 4500 0    50   Input ~ 0
A5
Text GLabel 5500 5400 0    50   Input ~ 0
A6
Text GLabel 5500 5500 0    50   Input ~ 0
A7
Text GLabel 5500 5600 0    50   Input ~ 0
A8
Text GLabel 5500 5700 0    50   Input ~ 0
A9
Text GLabel 5500 5800 0    50   Input ~ 0
A10
Text GLabel 6250 5700 2    50   Input ~ 0
A11
Text GLabel 6250 5600 2    50   Input ~ 0
A12
Text GLabel 6250 5500 2    50   Input ~ 0
A13
Text GLabel 6250 5400 2    50   Input ~ 0
A14
Text GLabel 6250 5300 2    50   Input ~ 0
A15
Text GLabel 6250 4500 2    50   Input ~ 0
A16
Text GLabel 6250 4400 2    50   Input ~ 0
A17
Text GLabel 6250 4300 2    50   Input ~ 0
A18
Text GLabel 6250 4200 2    50   Input ~ 0
A19
Text GLabel 5500 4700 0    50   BiDi ~ 0
D0
Text GLabel 5500 5100 0    50   BiDi ~ 0
D2
Text GLabel 5500 5200 0    50   BiDi ~ 0
D3
Text GLabel 6250 5200 2    50   BiDi ~ 0
D4
Text GLabel 6250 5100 2    50   BiDi ~ 0
D5
Text GLabel 6250 4800 2    50   BiDi ~ 0
D6
Text GLabel 6250 4700 2    50   BiDi ~ 0
D7
Wire Wire Line
	4950 4850 4950 4900
Wire Wire Line
	4950 5000 5500 5000
Wire Wire Line
	6250 4900 6750 4900
Wire Wire Line
	6250 5000 6650 5000
Wire Wire Line
	6650 5000 6650 4850
Text GLabel 5500 4800 0    50   BiDi ~ 0
D1
$Comp
L 68k_dev:CY7C1049D U8
U 1 1 6060284A
P 3800 1850
F 0 "U8" H 3775 2165 50  0000 C CNN
F 1 "CY7C1049D" H 3775 2074 50  0000 C CNN
F 2 "KiCad_Libraries:SOJ-36_10.16x23.49mm_P1.27mm_sram" H 3550 2100 50  0001 C CNN
F 3 "" H 3550 2100 50  0001 C CNN
	1    3800 1850
	1    0    0    -1  
$EndComp
Text GLabel 3400 3000 0    50   Input ~ 0
WRU
Text GLabel 4150 2300 2    50   Input ~ 0
RDU
Text GLabel 3400 2300 0    50   Input ~ 0
RAM2_SEL
$Comp
L power:VCC #PWR043
U 1 1 60602853
P 2850 2550
F 0 "#PWR043" H 2850 2400 50  0001 C CNN
F 1 "VCC" H 2865 2723 50  0000 C CNN
F 2 "" H 2850 2550 50  0001 C CNN
F 3 "" H 2850 2550 50  0001 C CNN
	1    2850 2550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR044
U 1 1 60602859
P 2850 2700
F 0 "#PWR044" H 2850 2450 50  0001 C CNN
F 1 "GND" H 2855 2527 50  0000 C CNN
F 2 "" H 2850 2700 50  0001 C CNN
F 3 "" H 2850 2700 50  0001 C CNN
	1    2850 2700
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR049
U 1 1 6060285F
P 4550 2550
F 0 "#PWR049" H 4550 2400 50  0001 C CNN
F 1 "VCC" H 4565 2723 50  0000 C CNN
F 2 "" H 4550 2550 50  0001 C CNN
F 3 "" H 4550 2550 50  0001 C CNN
	1    4550 2550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR051
U 1 1 60602865
P 4650 2600
F 0 "#PWR051" H 4650 2350 50  0001 C CNN
F 1 "GND" H 4655 2427 50  0000 C CNN
F 2 "" H 4650 2600 50  0001 C CNN
F 3 "" H 4650 2600 50  0001 C CNN
	1    4650 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 2600 3400 2600
Text GLabel 3400 1800 0    50   Input ~ 0
A1
Text GLabel 3400 1900 0    50   Input ~ 0
A2
Text GLabel 3400 2000 0    50   Input ~ 0
A3
Text GLabel 3400 2100 0    50   Input ~ 0
A4
Text GLabel 3400 2200 0    50   Input ~ 0
A5
Text GLabel 3400 3100 0    50   Input ~ 0
A6
Text GLabel 3400 3200 0    50   Input ~ 0
A7
Text GLabel 3400 3300 0    50   Input ~ 0
A8
Text GLabel 3400 3400 0    50   Input ~ 0
A9
Text GLabel 3400 3500 0    50   Input ~ 0
A10
Text GLabel 4150 3400 2    50   Input ~ 0
A11
Text GLabel 4150 3300 2    50   Input ~ 0
A12
Text GLabel 4150 3200 2    50   Input ~ 0
A13
Text GLabel 4150 3100 2    50   Input ~ 0
A14
Text GLabel 4150 3000 2    50   Input ~ 0
A15
Text GLabel 4150 2200 2    50   Input ~ 0
A16
Text GLabel 4150 2100 2    50   Input ~ 0
A17
Text GLabel 4150 2000 2    50   Input ~ 0
A18
Text GLabel 4150 1900 2    50   Input ~ 0
A19
Text GLabel 3400 2400 0    50   BiDi ~ 0
D8
Text GLabel 3400 2800 0    50   BiDi ~ 0
D10
Text GLabel 3400 2900 0    50   BiDi ~ 0
D11
Text GLabel 4150 2900 2    50   BiDi ~ 0
D12
Text GLabel 4150 2800 2    50   BiDi ~ 0
D13
Text GLabel 4150 2500 2    50   BiDi ~ 0
D14
Text GLabel 4150 2400 2    50   BiDi ~ 0
D15
Wire Wire Line
	2850 2550 2850 2600
Wire Wire Line
	2850 2700 3400 2700
Wire Wire Line
	4150 2600 4650 2600
Wire Wire Line
	4150 2700 4550 2700
Wire Wire Line
	4550 2700 4550 2550
Text GLabel 3400 2500 0    50   BiDi ~ 0
D9
$Comp
L 68k_dev:CY7C1049D U9
U 1 1 6060288C
P 3800 4150
F 0 "U9" H 3775 4465 50  0000 C CNN
F 1 "CY7C1049D" H 3775 4374 50  0000 C CNN
F 2 "KiCad_Libraries:SOJ-36_10.16x23.49mm_P1.27mm_sram" H 3550 4400 50  0001 C CNN
F 3 "" H 3550 4400 50  0001 C CNN
	1    3800 4150
	1    0    0    -1  
$EndComp
Text GLabel 3400 5300 0    50   Input ~ 0
WRL
Text GLabel 4150 4600 2    50   Input ~ 0
RDL
Text GLabel 3400 4600 0    50   Input ~ 0
RAM2_SEL
$Comp
L power:VCC #PWR045
U 1 1 60602895
P 2850 4850
F 0 "#PWR045" H 2850 4700 50  0001 C CNN
F 1 "VCC" H 2865 5023 50  0000 C CNN
F 2 "" H 2850 4850 50  0001 C CNN
F 3 "" H 2850 4850 50  0001 C CNN
	1    2850 4850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR046
U 1 1 6060289B
P 2850 5050
F 0 "#PWR046" H 2850 4800 50  0001 C CNN
F 1 "GND" H 2855 4877 50  0000 C CNN
F 2 "" H 2850 5050 50  0001 C CNN
F 3 "" H 2850 5050 50  0001 C CNN
	1    2850 5050
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR050
U 1 1 606028A1
P 4550 4850
F 0 "#PWR050" H 4550 4700 50  0001 C CNN
F 1 "VCC" H 4565 5023 50  0000 C CNN
F 2 "" H 4550 4850 50  0001 C CNN
F 3 "" H 4550 4850 50  0001 C CNN
	1    4550 4850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR052
U 1 1 606028A7
P 4650 4900
F 0 "#PWR052" H 4650 4650 50  0001 C CNN
F 1 "GND" H 4655 4727 50  0000 C CNN
F 2 "" H 4650 4900 50  0001 C CNN
F 3 "" H 4650 4900 50  0001 C CNN
	1    4650 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 4900 3400 4900
Text GLabel 3400 4100 0    50   Input ~ 0
A1
Text GLabel 3400 4200 0    50   Input ~ 0
A2
Text GLabel 3400 4300 0    50   Input ~ 0
A3
Text GLabel 3400 4400 0    50   Input ~ 0
A4
Text GLabel 3400 4500 0    50   Input ~ 0
A5
Text GLabel 3400 5400 0    50   Input ~ 0
A6
Text GLabel 3400 5500 0    50   Input ~ 0
A7
Text GLabel 3400 5600 0    50   Input ~ 0
A8
Text GLabel 3400 5700 0    50   Input ~ 0
A9
Text GLabel 3400 5800 0    50   Input ~ 0
A10
Text GLabel 4150 5700 2    50   Input ~ 0
A11
Text GLabel 4150 5600 2    50   Input ~ 0
A12
Text GLabel 4150 5500 2    50   Input ~ 0
A13
Text GLabel 4150 5400 2    50   Input ~ 0
A14
Text GLabel 4150 5300 2    50   Input ~ 0
A15
Text GLabel 4150 4500 2    50   Input ~ 0
A16
Text GLabel 4150 4400 2    50   Input ~ 0
A17
Text GLabel 4150 4300 2    50   Input ~ 0
A18
Text GLabel 4150 4200 2    50   Input ~ 0
A19
Text GLabel 3400 4700 0    50   BiDi ~ 0
D0
Text GLabel 3400 5100 0    50   BiDi ~ 0
D2
Text GLabel 3400 5200 0    50   BiDi ~ 0
D3
Text GLabel 4150 5200 2    50   BiDi ~ 0
D4
Text GLabel 4150 5100 2    50   BiDi ~ 0
D5
Text GLabel 4150 4800 2    50   BiDi ~ 0
D6
Text GLabel 4150 4700 2    50   BiDi ~ 0
D7
Wire Wire Line
	2850 4850 2850 4900
Wire Wire Line
	4150 4900 4650 4900
Wire Wire Line
	4150 5000 4550 5000
Wire Wire Line
	4550 5000 4550 4850
Text GLabel 3400 4800 0    50   BiDi ~ 0
D1
$Comp
L 68k_dev:CY7C1049D U6
U 1 1 60608691
P 1650 1850
F 0 "U6" H 1625 2165 50  0000 C CNN
F 1 "CY7C1049D" H 1625 2074 50  0000 C CNN
F 2 "KiCad_Libraries:SOJ-36_10.16x23.49mm_P1.27mm_sram" H 1400 2100 50  0001 C CNN
F 3 "" H 1400 2100 50  0001 C CNN
	1    1650 1850
	1    0    0    -1  
$EndComp
Text GLabel 1250 3000 0    50   Input ~ 0
WRU
Text GLabel 2000 2300 2    50   Input ~ 0
RDU
Text GLabel 1250 2300 0    50   Input ~ 0
RAM1_SEL
$Comp
L power:VCC #PWR035
U 1 1 6060869A
P 700 2550
F 0 "#PWR035" H 700 2400 50  0001 C CNN
F 1 "VCC" H 715 2723 50  0000 C CNN
F 2 "" H 700 2550 50  0001 C CNN
F 3 "" H 700 2550 50  0001 C CNN
	1    700  2550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR036
U 1 1 606086A0
P 700 2700
F 0 "#PWR036" H 700 2450 50  0001 C CNN
F 1 "GND" H 705 2527 50  0000 C CNN
F 2 "" H 700 2700 50  0001 C CNN
F 3 "" H 700 2700 50  0001 C CNN
	1    700  2700
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR039
U 1 1 606086A6
P 2400 2550
F 0 "#PWR039" H 2400 2400 50  0001 C CNN
F 1 "VCC" H 2415 2723 50  0000 C CNN
F 2 "" H 2400 2550 50  0001 C CNN
F 3 "" H 2400 2550 50  0001 C CNN
	1    2400 2550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR041
U 1 1 606086AC
P 2500 2650
F 0 "#PWR041" H 2500 2400 50  0001 C CNN
F 1 "GND" H 2505 2477 50  0000 C CNN
F 2 "" H 2500 2650 50  0001 C CNN
F 3 "" H 2500 2650 50  0001 C CNN
	1    2500 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	700  2600 1250 2600
Text GLabel 1250 1800 0    50   Input ~ 0
A1
Text GLabel 1250 1900 0    50   Input ~ 0
A2
Text GLabel 1250 2000 0    50   Input ~ 0
A3
Text GLabel 1250 2100 0    50   Input ~ 0
A4
Text GLabel 1250 2200 0    50   Input ~ 0
A5
Text GLabel 1250 3100 0    50   Input ~ 0
A6
Text GLabel 1250 3200 0    50   Input ~ 0
A7
Text GLabel 1250 3300 0    50   Input ~ 0
A8
Text GLabel 1250 3400 0    50   Input ~ 0
A9
Text GLabel 1250 3500 0    50   Input ~ 0
A10
Text GLabel 2000 3400 2    50   Input ~ 0
A11
Text GLabel 2000 3300 2    50   Input ~ 0
A12
Text GLabel 2000 3200 2    50   Input ~ 0
A13
Text GLabel 2000 3100 2    50   Input ~ 0
A14
Text GLabel 2000 3000 2    50   Input ~ 0
A15
Text GLabel 2000 2200 2    50   Input ~ 0
A16
Text GLabel 2000 2100 2    50   Input ~ 0
A17
Text GLabel 2000 2000 2    50   Input ~ 0
A18
Text GLabel 2000 1900 2    50   Input ~ 0
A19
Text GLabel 1250 2400 0    50   BiDi ~ 0
D8
Text GLabel 1250 2800 0    50   BiDi ~ 0
D10
Text GLabel 1250 2900 0    50   BiDi ~ 0
D11
Text GLabel 2000 2900 2    50   BiDi ~ 0
D12
Text GLabel 2000 2800 2    50   BiDi ~ 0
D13
Text GLabel 2000 2500 2    50   BiDi ~ 0
D14
Text GLabel 2000 2400 2    50   BiDi ~ 0
D15
Wire Wire Line
	700  2550 700  2600
Wire Wire Line
	700  2700 1250 2700
Wire Wire Line
	2000 2700 2400 2700
Wire Wire Line
	2400 2700 2400 2550
Text GLabel 1250 2500 0    50   BiDi ~ 0
D9
$Comp
L 68k_dev:CY7C1049D U7
U 1 1 606086D3
P 1650 4150
F 0 "U7" H 1625 4465 50  0000 C CNN
F 1 "CY7C1049D" H 1625 4374 50  0000 C CNN
F 2 "KiCad_Libraries:SOJ-36_10.16x23.49mm_P1.27mm_sram" H 1400 4400 50  0001 C CNN
F 3 "" H 1400 4400 50  0001 C CNN
	1    1650 4150
	1    0    0    -1  
$EndComp
Text GLabel 1250 5300 0    50   Input ~ 0
WRL
Text GLabel 2000 4600 2    50   Input ~ 0
RDL
Text GLabel 1250 4600 0    50   Input ~ 0
RAM1_SEL
$Comp
L power:VCC #PWR037
U 1 1 606086DC
P 700 4850
F 0 "#PWR037" H 700 4700 50  0001 C CNN
F 1 "VCC" H 715 5023 50  0000 C CNN
F 2 "" H 700 4850 50  0001 C CNN
F 3 "" H 700 4850 50  0001 C CNN
	1    700  4850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR038
U 1 1 606086E2
P 700 5000
F 0 "#PWR038" H 700 4750 50  0001 C CNN
F 1 "GND" H 705 4827 50  0000 C CNN
F 2 "" H 700 5000 50  0001 C CNN
F 3 "" H 700 5000 50  0001 C CNN
	1    700  5000
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR040
U 1 1 606086E8
P 2400 4850
F 0 "#PWR040" H 2400 4700 50  0001 C CNN
F 1 "VCC" H 2415 5023 50  0000 C CNN
F 2 "" H 2400 4850 50  0001 C CNN
F 3 "" H 2400 4850 50  0001 C CNN
	1    2400 4850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR042
U 1 1 606086EE
P 2500 4900
F 0 "#PWR042" H 2500 4650 50  0001 C CNN
F 1 "GND" H 2505 4727 50  0000 C CNN
F 2 "" H 2500 4900 50  0001 C CNN
F 3 "" H 2500 4900 50  0001 C CNN
	1    2500 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	700  4900 1250 4900
Text GLabel 1250 4100 0    50   Input ~ 0
A1
Text GLabel 1250 4200 0    50   Input ~ 0
A2
Text GLabel 1250 4300 0    50   Input ~ 0
A3
Text GLabel 1250 4400 0    50   Input ~ 0
A4
Text GLabel 1250 4500 0    50   Input ~ 0
A5
Text GLabel 1250 5400 0    50   Input ~ 0
A6
Text GLabel 1250 5500 0    50   Input ~ 0
A7
Text GLabel 1250 5600 0    50   Input ~ 0
A8
Text GLabel 1250 5700 0    50   Input ~ 0
A9
Text GLabel 1250 5800 0    50   Input ~ 0
A10
Text GLabel 2000 5700 2    50   Input ~ 0
A11
Text GLabel 2000 5600 2    50   Input ~ 0
A12
Text GLabel 2000 5500 2    50   Input ~ 0
A13
Text GLabel 2000 5400 2    50   Input ~ 0
A14
Text GLabel 2000 5300 2    50   Input ~ 0
A15
Text GLabel 2000 4500 2    50   Input ~ 0
A16
Text GLabel 2000 4400 2    50   Input ~ 0
A17
Text GLabel 2000 4300 2    50   Input ~ 0
A18
Text GLabel 2000 4200 2    50   Input ~ 0
A19
Text GLabel 1250 4700 0    50   BiDi ~ 0
D0
Text GLabel 1250 5100 0    50   BiDi ~ 0
D2
Text GLabel 1250 5200 0    50   BiDi ~ 0
D3
Text GLabel 2000 5200 2    50   BiDi ~ 0
D4
Text GLabel 2000 5100 2    50   BiDi ~ 0
D5
Text GLabel 2000 4800 2    50   BiDi ~ 0
D6
Text GLabel 2000 4700 2    50   BiDi ~ 0
D7
Wire Wire Line
	700  4850 700  4900
Wire Wire Line
	700  5000 1250 5000
Wire Wire Line
	2000 4900 2500 4900
Wire Wire Line
	2000 5000 2400 5000
Wire Wire Line
	2400 5000 2400 4850
Text GLabel 1250 4800 0    50   BiDi ~ 0
D1
Wire Wire Line
	3400 5000 2850 5000
Wire Wire Line
	2850 5000 2850 5050
Wire Wire Line
	2000 2600 2500 2600
Wire Wire Line
	2500 2600 2500 2650
$EndSCHEMATC
