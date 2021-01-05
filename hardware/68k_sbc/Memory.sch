EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 6
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
P 9450 1850
F 0 "U12" H 9425 2165 50  0000 C CNN
F 1 "CY7C1049D" H 9425 2074 50  0000 C CNN
F 2 "KiCad_Libraries:SOJ-36_10.16x23.49mm_P1.27mm_sram" H 9200 2100 50  0001 C CNN
F 3 "" H 9200 2100 50  0001 C CNN
	1    9450 1850
	1    0    0    -1  
$EndComp
Text GLabel 9050 3000 0    50   Input ~ 0
WRU
Text GLabel 9800 2300 2    50   Input ~ 0
RDU
Text GLabel 9050 2300 0    50   Input ~ 0
RAM4_SEL
$Comp
L power:VCC #PWR061
U 1 1 5FB20A6E
P 8500 2550
F 0 "#PWR061" H 8500 2400 50  0001 C CNN
F 1 "VCC" H 8515 2723 50  0000 C CNN
F 2 "" H 8500 2550 50  0001 C CNN
F 3 "" H 8500 2550 50  0001 C CNN
	1    8500 2550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR062
U 1 1 5FB224C2
P 8500 2700
F 0 "#PWR062" H 8500 2450 50  0001 C CNN
F 1 "GND" H 8505 2527 50  0000 C CNN
F 2 "" H 8500 2700 50  0001 C CNN
F 3 "" H 8500 2700 50  0001 C CNN
	1    8500 2700
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR065
U 1 1 5FB244CB
P 10200 2550
F 0 "#PWR065" H 10200 2400 50  0001 C CNN
F 1 "VCC" H 10215 2723 50  0000 C CNN
F 2 "" H 10200 2550 50  0001 C CNN
F 3 "" H 10200 2550 50  0001 C CNN
	1    10200 2550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR067
U 1 1 5FB24B4B
P 10300 2600
F 0 "#PWR067" H 10300 2350 50  0001 C CNN
F 1 "GND" H 10305 2427 50  0000 C CNN
F 2 "" H 10300 2600 50  0001 C CNN
F 3 "" H 10300 2600 50  0001 C CNN
	1    10300 2600
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
	8500 2600 9050 2600
Text GLabel 9050 1800 0    50   Input ~ 0
A1
Text GLabel 9050 1900 0    50   Input ~ 0
A2
Text GLabel 9050 2000 0    50   Input ~ 0
A3
Text GLabel 9050 2100 0    50   Input ~ 0
A4
Text GLabel 9050 2200 0    50   Input ~ 0
A5
Text GLabel 9050 3100 0    50   Input ~ 0
A6
Text GLabel 9050 3200 0    50   Input ~ 0
A7
Text GLabel 9050 3300 0    50   Input ~ 0
A8
Text GLabel 9050 3400 0    50   Input ~ 0
A9
Text GLabel 9050 3500 0    50   Input ~ 0
A10
Text GLabel 9800 3400 2    50   Input ~ 0
A11
Text GLabel 9800 3300 2    50   Input ~ 0
A12
Text GLabel 9800 3200 2    50   Input ~ 0
A13
Text GLabel 9800 3100 2    50   Input ~ 0
A14
Text GLabel 9800 3000 2    50   Input ~ 0
A15
Text GLabel 9800 2200 2    50   Input ~ 0
A16
Text GLabel 9800 2100 2    50   Input ~ 0
A17
Text GLabel 9800 2000 2    50   Input ~ 0
A18
Text GLabel 9800 1900 2    50   Input ~ 0
A19
Text GLabel 9050 2400 0    50   BiDi ~ 0
D8
Text GLabel 9050 2800 0    50   BiDi ~ 0
D10
Text GLabel 9050 2900 0    50   BiDi ~ 0
D11
Text GLabel 9800 2900 2    50   BiDi ~ 0
D12
Text GLabel 9800 2800 2    50   BiDi ~ 0
D13
Text GLabel 9800 2500 2    50   BiDi ~ 0
D14
Text GLabel 9800 2400 2    50   BiDi ~ 0
D15
Wire Wire Line
	8500 2550 8500 2600
Wire Wire Line
	8500 2700 9050 2700
Wire Wire Line
	9800 2600 10300 2600
Wire Wire Line
	9800 2700 10200 2700
Wire Wire Line
	10200 2700 10200 2550
Text GLabel 9050 2500 0    50   BiDi ~ 0
D9
$Comp
L 68k_dev:CY7C1049D U13
U 1 1 605F32A6
P 9450 4150
F 0 "U13" H 9425 4465 50  0000 C CNN
F 1 "CY7C1049D" H 9425 4374 50  0000 C CNN
F 2 "KiCad_Libraries:SOJ-36_10.16x23.49mm_P1.27mm_sram" H 9200 4400 50  0001 C CNN
F 3 "" H 9200 4400 50  0001 C CNN
	1    9450 4150
	1    0    0    -1  
$EndComp
Text GLabel 9050 5300 0    50   Input ~ 0
WRL
Text GLabel 9800 4600 2    50   Input ~ 0
RDL
Text GLabel 9050 4600 0    50   Input ~ 0
RAM4_SEL
$Comp
L power:VCC #PWR063
U 1 1 605F32AF
P 8500 4850
F 0 "#PWR063" H 8500 4700 50  0001 C CNN
F 1 "VCC" H 8515 5023 50  0000 C CNN
F 2 "" H 8500 4850 50  0001 C CNN
F 3 "" H 8500 4850 50  0001 C CNN
	1    8500 4850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR064
U 1 1 605F32B5
P 8500 5000
F 0 "#PWR064" H 8500 4750 50  0001 C CNN
F 1 "GND" H 8505 4827 50  0000 C CNN
F 2 "" H 8500 5000 50  0001 C CNN
F 3 "" H 8500 5000 50  0001 C CNN
	1    8500 5000
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR066
U 1 1 605F32BB
P 10200 4850
F 0 "#PWR066" H 10200 4700 50  0001 C CNN
F 1 "VCC" H 10215 5023 50  0000 C CNN
F 2 "" H 10200 4850 50  0001 C CNN
F 3 "" H 10200 4850 50  0001 C CNN
	1    10200 4850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR068
U 1 1 605F32C1
P 10300 4900
F 0 "#PWR068" H 10300 4650 50  0001 C CNN
F 1 "GND" H 10305 4727 50  0000 C CNN
F 2 "" H 10300 4900 50  0001 C CNN
F 3 "" H 10300 4900 50  0001 C CNN
	1    10300 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 4900 9050 4900
Text GLabel 9050 4100 0    50   Input ~ 0
A1
Text GLabel 9050 4200 0    50   Input ~ 0
A2
Text GLabel 9050 4300 0    50   Input ~ 0
A3
Text GLabel 9050 4400 0    50   Input ~ 0
A4
Text GLabel 9050 4500 0    50   Input ~ 0
A5
Text GLabel 9050 5400 0    50   Input ~ 0
A6
Text GLabel 9050 5500 0    50   Input ~ 0
A7
Text GLabel 9050 5600 0    50   Input ~ 0
A8
Text GLabel 9050 5700 0    50   Input ~ 0
A9
Text GLabel 9050 5800 0    50   Input ~ 0
A10
Text GLabel 9800 5700 2    50   Input ~ 0
A11
Text GLabel 9800 5600 2    50   Input ~ 0
A12
Text GLabel 9800 5500 2    50   Input ~ 0
A13
Text GLabel 9800 5400 2    50   Input ~ 0
A14
Text GLabel 9800 5300 2    50   Input ~ 0
A15
Text GLabel 9800 4500 2    50   Input ~ 0
A16
Text GLabel 9800 4400 2    50   Input ~ 0
A17
Text GLabel 9800 4300 2    50   Input ~ 0
A18
Text GLabel 9800 4200 2    50   Input ~ 0
A19
Text GLabel 9050 4700 0    50   BiDi ~ 0
D0
Text GLabel 9050 5100 0    50   BiDi ~ 0
D2
Text GLabel 9050 5200 0    50   BiDi ~ 0
D3
Text GLabel 9800 5200 2    50   BiDi ~ 0
D4
Text GLabel 9800 5100 2    50   BiDi ~ 0
D5
Text GLabel 9800 4800 2    50   BiDi ~ 0
D6
Text GLabel 9800 4700 2    50   BiDi ~ 0
D7
Wire Wire Line
	8500 4850 8500 4900
Wire Wire Line
	8500 5000 9050 5000
Wire Wire Line
	9800 4900 10300 4900
Wire Wire Line
	9800 5000 10200 5000
Wire Wire Line
	10200 5000 10200 4850
Text GLabel 9050 4800 0    50   BiDi ~ 0
D1
$Comp
L 68k_dev:CY7C1049D U10
U 1 1 605FCCB5
P 7350 1850
F 0 "U10" H 7325 2165 50  0000 C CNN
F 1 "CY7C1049D" H 7325 2074 50  0000 C CNN
F 2 "KiCad_Libraries:SOJ-36_10.16x23.49mm_P1.27mm_sram" H 7100 2100 50  0001 C CNN
F 3 "" H 7100 2100 50  0001 C CNN
	1    7350 1850
	1    0    0    -1  
$EndComp
Text GLabel 6950 3000 0    50   Input ~ 0
WRU
Text GLabel 7700 2300 2    50   Input ~ 0
RDU
Text GLabel 6950 2300 0    50   Input ~ 0
RAM3_SEL
$Comp
L power:VCC #PWR053
U 1 1 605FCCBE
P 6400 2550
F 0 "#PWR053" H 6400 2400 50  0001 C CNN
F 1 "VCC" H 6415 2723 50  0000 C CNN
F 2 "" H 6400 2550 50  0001 C CNN
F 3 "" H 6400 2550 50  0001 C CNN
	1    6400 2550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR054
U 1 1 605FCCC4
P 6400 2700
F 0 "#PWR054" H 6400 2450 50  0001 C CNN
F 1 "GND" H 6405 2527 50  0000 C CNN
F 2 "" H 6400 2700 50  0001 C CNN
F 3 "" H 6400 2700 50  0001 C CNN
	1    6400 2700
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR057
U 1 1 605FCCCA
P 8100 2550
F 0 "#PWR057" H 8100 2400 50  0001 C CNN
F 1 "VCC" H 8115 2723 50  0000 C CNN
F 2 "" H 8100 2550 50  0001 C CNN
F 3 "" H 8100 2550 50  0001 C CNN
	1    8100 2550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR059
U 1 1 605FCCD0
P 8200 2600
F 0 "#PWR059" H 8200 2350 50  0001 C CNN
F 1 "GND" H 8205 2427 50  0000 C CNN
F 2 "" H 8200 2600 50  0001 C CNN
F 3 "" H 8200 2600 50  0001 C CNN
	1    8200 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 2600 6950 2600
Text GLabel 6950 1800 0    50   Input ~ 0
A1
Text GLabel 6950 1900 0    50   Input ~ 0
A2
Text GLabel 6950 2000 0    50   Input ~ 0
A3
Text GLabel 6950 2100 0    50   Input ~ 0
A4
Text GLabel 6950 2200 0    50   Input ~ 0
A5
Text GLabel 6950 3100 0    50   Input ~ 0
A6
Text GLabel 6950 3200 0    50   Input ~ 0
A7
Text GLabel 6950 3300 0    50   Input ~ 0
A8
Text GLabel 6950 3400 0    50   Input ~ 0
A9
Text GLabel 6950 3500 0    50   Input ~ 0
A10
Text GLabel 7700 3400 2    50   Input ~ 0
A11
Text GLabel 7700 3300 2    50   Input ~ 0
A12
Text GLabel 7700 3200 2    50   Input ~ 0
A13
Text GLabel 7700 3100 2    50   Input ~ 0
A14
Text GLabel 7700 3000 2    50   Input ~ 0
A15
Text GLabel 7700 2200 2    50   Input ~ 0
A16
Text GLabel 7700 2100 2    50   Input ~ 0
A17
Text GLabel 7700 2000 2    50   Input ~ 0
A18
Text GLabel 7700 1900 2    50   Input ~ 0
A19
Text GLabel 6950 2400 0    50   BiDi ~ 0
D8
Text GLabel 6950 2800 0    50   BiDi ~ 0
D10
Text GLabel 6950 2900 0    50   BiDi ~ 0
D11
Text GLabel 7700 2900 2    50   BiDi ~ 0
D12
Text GLabel 7700 2800 2    50   BiDi ~ 0
D13
Text GLabel 7700 2500 2    50   BiDi ~ 0
D14
Text GLabel 7700 2400 2    50   BiDi ~ 0
D15
Wire Wire Line
	6400 2550 6400 2600
Wire Wire Line
	6400 2700 6950 2700
Wire Wire Line
	7700 2600 8200 2600
Wire Wire Line
	7700 2700 8100 2700
Wire Wire Line
	8100 2700 8100 2550
Text GLabel 6950 2500 0    50   BiDi ~ 0
D9
$Comp
L 68k_dev:CY7C1049D U11
U 1 1 605FCCF7
P 7350 4150
F 0 "U11" H 7325 4465 50  0000 C CNN
F 1 "CY7C1049D" H 7325 4374 50  0000 C CNN
F 2 "KiCad_Libraries:SOJ-36_10.16x23.49mm_P1.27mm_sram" H 7100 4400 50  0001 C CNN
F 3 "" H 7100 4400 50  0001 C CNN
	1    7350 4150
	1    0    0    -1  
$EndComp
Text GLabel 6950 5300 0    50   Input ~ 0
WRL
Text GLabel 7700 4600 2    50   Input ~ 0
RDL
Text GLabel 6950 4600 0    50   Input ~ 0
RAM3_SEL
$Comp
L power:VCC #PWR055
U 1 1 605FCD00
P 6400 4850
F 0 "#PWR055" H 6400 4700 50  0001 C CNN
F 1 "VCC" H 6415 5023 50  0000 C CNN
F 2 "" H 6400 4850 50  0001 C CNN
F 3 "" H 6400 4850 50  0001 C CNN
	1    6400 4850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR056
U 1 1 605FCD06
P 6400 5000
F 0 "#PWR056" H 6400 4750 50  0001 C CNN
F 1 "GND" H 6405 4827 50  0000 C CNN
F 2 "" H 6400 5000 50  0001 C CNN
F 3 "" H 6400 5000 50  0001 C CNN
	1    6400 5000
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR058
U 1 1 605FCD0C
P 8100 4850
F 0 "#PWR058" H 8100 4700 50  0001 C CNN
F 1 "VCC" H 8115 5023 50  0000 C CNN
F 2 "" H 8100 4850 50  0001 C CNN
F 3 "" H 8100 4850 50  0001 C CNN
	1    8100 4850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR060
U 1 1 605FCD12
P 8200 4900
F 0 "#PWR060" H 8200 4650 50  0001 C CNN
F 1 "GND" H 8205 4727 50  0000 C CNN
F 2 "" H 8200 4900 50  0001 C CNN
F 3 "" H 8200 4900 50  0001 C CNN
	1    8200 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 4900 6950 4900
Text GLabel 6950 4100 0    50   Input ~ 0
A1
Text GLabel 6950 4200 0    50   Input ~ 0
A2
Text GLabel 6950 4300 0    50   Input ~ 0
A3
Text GLabel 6950 4400 0    50   Input ~ 0
A4
Text GLabel 6950 4500 0    50   Input ~ 0
A5
Text GLabel 6950 5400 0    50   Input ~ 0
A6
Text GLabel 6950 5500 0    50   Input ~ 0
A7
Text GLabel 6950 5600 0    50   Input ~ 0
A8
Text GLabel 6950 5700 0    50   Input ~ 0
A9
Text GLabel 6950 5800 0    50   Input ~ 0
A10
Text GLabel 7700 5700 2    50   Input ~ 0
A11
Text GLabel 7700 5600 2    50   Input ~ 0
A12
Text GLabel 7700 5500 2    50   Input ~ 0
A13
Text GLabel 7700 5400 2    50   Input ~ 0
A14
Text GLabel 7700 5300 2    50   Input ~ 0
A15
Text GLabel 7700 4500 2    50   Input ~ 0
A16
Text GLabel 7700 4400 2    50   Input ~ 0
A17
Text GLabel 7700 4300 2    50   Input ~ 0
A18
Text GLabel 7700 4200 2    50   Input ~ 0
A19
Text GLabel 6950 4700 0    50   BiDi ~ 0
D0
Text GLabel 6950 5100 0    50   BiDi ~ 0
D2
Text GLabel 6950 5200 0    50   BiDi ~ 0
D3
Text GLabel 7700 5200 2    50   BiDi ~ 0
D4
Text GLabel 7700 5100 2    50   BiDi ~ 0
D5
Text GLabel 7700 4800 2    50   BiDi ~ 0
D6
Text GLabel 7700 4700 2    50   BiDi ~ 0
D7
Wire Wire Line
	6400 4850 6400 4900
Wire Wire Line
	6400 5000 6950 5000
Wire Wire Line
	7700 4900 8200 4900
Wire Wire Line
	7700 5000 8100 5000
Wire Wire Line
	8100 5000 8100 4850
Text GLabel 6950 4800 0    50   BiDi ~ 0
D1
$Comp
L 68k_dev:CY7C1049D U8
U 1 1 6060284A
P 5250 1850
F 0 "U8" H 5225 2165 50  0000 C CNN
F 1 "CY7C1049D" H 5225 2074 50  0000 C CNN
F 2 "KiCad_Libraries:SOJ-36_10.16x23.49mm_P1.27mm_sram" H 5000 2100 50  0001 C CNN
F 3 "" H 5000 2100 50  0001 C CNN
	1    5250 1850
	1    0    0    -1  
$EndComp
Text GLabel 4850 3000 0    50   Input ~ 0
WRU
Text GLabel 5600 2300 2    50   Input ~ 0
RDU
Text GLabel 4850 2300 0    50   Input ~ 0
RAM2_SEL
$Comp
L power:VCC #PWR043
U 1 1 60602853
P 4300 2550
F 0 "#PWR043" H 4300 2400 50  0001 C CNN
F 1 "VCC" H 4315 2723 50  0000 C CNN
F 2 "" H 4300 2550 50  0001 C CNN
F 3 "" H 4300 2550 50  0001 C CNN
	1    4300 2550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR044
U 1 1 60602859
P 4300 2700
F 0 "#PWR044" H 4300 2450 50  0001 C CNN
F 1 "GND" H 4305 2527 50  0000 C CNN
F 2 "" H 4300 2700 50  0001 C CNN
F 3 "" H 4300 2700 50  0001 C CNN
	1    4300 2700
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR049
U 1 1 6060285F
P 6000 2550
F 0 "#PWR049" H 6000 2400 50  0001 C CNN
F 1 "VCC" H 6015 2723 50  0000 C CNN
F 2 "" H 6000 2550 50  0001 C CNN
F 3 "" H 6000 2550 50  0001 C CNN
	1    6000 2550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR051
U 1 1 60602865
P 6100 2600
F 0 "#PWR051" H 6100 2350 50  0001 C CNN
F 1 "GND" H 6105 2427 50  0000 C CNN
F 2 "" H 6100 2600 50  0001 C CNN
F 3 "" H 6100 2600 50  0001 C CNN
	1    6100 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 2600 4850 2600
Text GLabel 4850 1800 0    50   Input ~ 0
A1
Text GLabel 4850 1900 0    50   Input ~ 0
A2
Text GLabel 4850 2000 0    50   Input ~ 0
A3
Text GLabel 4850 2100 0    50   Input ~ 0
A4
Text GLabel 4850 2200 0    50   Input ~ 0
A5
Text GLabel 4850 3100 0    50   Input ~ 0
A6
Text GLabel 4850 3200 0    50   Input ~ 0
A7
Text GLabel 4850 3300 0    50   Input ~ 0
A8
Text GLabel 4850 3400 0    50   Input ~ 0
A9
Text GLabel 4850 3500 0    50   Input ~ 0
A10
Text GLabel 5600 3400 2    50   Input ~ 0
A11
Text GLabel 5600 3300 2    50   Input ~ 0
A12
Text GLabel 5600 3200 2    50   Input ~ 0
A13
Text GLabel 5600 3100 2    50   Input ~ 0
A14
Text GLabel 5600 3000 2    50   Input ~ 0
A15
Text GLabel 5600 2200 2    50   Input ~ 0
A16
Text GLabel 5600 2100 2    50   Input ~ 0
A17
Text GLabel 5600 2000 2    50   Input ~ 0
A18
Text GLabel 5600 1900 2    50   Input ~ 0
A19
Text GLabel 4850 2400 0    50   BiDi ~ 0
D8
Text GLabel 4850 2800 0    50   BiDi ~ 0
D10
Text GLabel 4850 2900 0    50   BiDi ~ 0
D11
Text GLabel 5600 2900 2    50   BiDi ~ 0
D12
Text GLabel 5600 2800 2    50   BiDi ~ 0
D13
Text GLabel 5600 2500 2    50   BiDi ~ 0
D14
Text GLabel 5600 2400 2    50   BiDi ~ 0
D15
Wire Wire Line
	4300 2550 4300 2600
Wire Wire Line
	4300 2700 4850 2700
Wire Wire Line
	5600 2600 6100 2600
Wire Wire Line
	5600 2700 6000 2700
Wire Wire Line
	6000 2700 6000 2550
Text GLabel 4850 2500 0    50   BiDi ~ 0
D9
$Comp
L 68k_dev:CY7C1049D U9
U 1 1 6060288C
P 5250 4150
F 0 "U9" H 5225 4465 50  0000 C CNN
F 1 "CY7C1049D" H 5225 4374 50  0000 C CNN
F 2 "KiCad_Libraries:SOJ-36_10.16x23.49mm_P1.27mm_sram" H 5000 4400 50  0001 C CNN
F 3 "" H 5000 4400 50  0001 C CNN
	1    5250 4150
	1    0    0    -1  
$EndComp
Text GLabel 4850 5300 0    50   Input ~ 0
WRL
Text GLabel 5600 4600 2    50   Input ~ 0
RDL
Text GLabel 4850 4600 0    50   Input ~ 0
RAM2_SEL
$Comp
L power:VCC #PWR045
U 1 1 60602895
P 4300 4850
F 0 "#PWR045" H 4300 4700 50  0001 C CNN
F 1 "VCC" H 4315 5023 50  0000 C CNN
F 2 "" H 4300 4850 50  0001 C CNN
F 3 "" H 4300 4850 50  0001 C CNN
	1    4300 4850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR046
U 1 1 6060289B
P 4300 5050
F 0 "#PWR046" H 4300 4800 50  0001 C CNN
F 1 "GND" H 4305 4877 50  0000 C CNN
F 2 "" H 4300 5050 50  0001 C CNN
F 3 "" H 4300 5050 50  0001 C CNN
	1    4300 5050
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR050
U 1 1 606028A1
P 6000 4850
F 0 "#PWR050" H 6000 4700 50  0001 C CNN
F 1 "VCC" H 6015 5023 50  0000 C CNN
F 2 "" H 6000 4850 50  0001 C CNN
F 3 "" H 6000 4850 50  0001 C CNN
	1    6000 4850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR052
U 1 1 606028A7
P 6100 4900
F 0 "#PWR052" H 6100 4650 50  0001 C CNN
F 1 "GND" H 6105 4727 50  0000 C CNN
F 2 "" H 6100 4900 50  0001 C CNN
F 3 "" H 6100 4900 50  0001 C CNN
	1    6100 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 4900 4850 4900
Text GLabel 4850 4100 0    50   Input ~ 0
A1
Text GLabel 4850 4200 0    50   Input ~ 0
A2
Text GLabel 4850 4300 0    50   Input ~ 0
A3
Text GLabel 4850 4400 0    50   Input ~ 0
A4
Text GLabel 4850 4500 0    50   Input ~ 0
A5
Text GLabel 4850 5400 0    50   Input ~ 0
A6
Text GLabel 4850 5500 0    50   Input ~ 0
A7
Text GLabel 4850 5600 0    50   Input ~ 0
A8
Text GLabel 4850 5700 0    50   Input ~ 0
A9
Text GLabel 4850 5800 0    50   Input ~ 0
A10
Text GLabel 5600 5700 2    50   Input ~ 0
A11
Text GLabel 5600 5600 2    50   Input ~ 0
A12
Text GLabel 5600 5500 2    50   Input ~ 0
A13
Text GLabel 5600 5400 2    50   Input ~ 0
A14
Text GLabel 5600 5300 2    50   Input ~ 0
A15
Text GLabel 5600 4500 2    50   Input ~ 0
A16
Text GLabel 5600 4400 2    50   Input ~ 0
A17
Text GLabel 5600 4300 2    50   Input ~ 0
A18
Text GLabel 5600 4200 2    50   Input ~ 0
A19
Text GLabel 4850 4700 0    50   BiDi ~ 0
D0
Text GLabel 4850 5100 0    50   BiDi ~ 0
D2
Text GLabel 4850 5200 0    50   BiDi ~ 0
D3
Text GLabel 5600 5200 2    50   BiDi ~ 0
D4
Text GLabel 5600 5100 2    50   BiDi ~ 0
D5
Text GLabel 5600 4800 2    50   BiDi ~ 0
D6
Text GLabel 5600 4700 2    50   BiDi ~ 0
D7
Wire Wire Line
	4300 4850 4300 4900
Wire Wire Line
	5600 4900 6100 4900
Wire Wire Line
	5600 5000 6000 5000
Wire Wire Line
	6000 5000 6000 4850
Text GLabel 4850 4800 0    50   BiDi ~ 0
D1
$Comp
L 68k_dev:CY7C1049D U6
U 1 1 60608691
P 3100 1850
F 0 "U6" H 3075 2165 50  0000 C CNN
F 1 "CY7C1049D" H 3075 2074 50  0000 C CNN
F 2 "KiCad_Libraries:SOJ-36_10.16x23.49mm_P1.27mm_sram" H 2850 2100 50  0001 C CNN
F 3 "" H 2850 2100 50  0001 C CNN
	1    3100 1850
	1    0    0    -1  
$EndComp
Text GLabel 2700 3000 0    50   Input ~ 0
WRU
Text GLabel 3450 2300 2    50   Input ~ 0
RDU
Text GLabel 2700 2300 0    50   Input ~ 0
RAM1_SEL
$Comp
L power:VCC #PWR035
U 1 1 6060869A
P 2150 2550
F 0 "#PWR035" H 2150 2400 50  0001 C CNN
F 1 "VCC" H 2165 2723 50  0000 C CNN
F 2 "" H 2150 2550 50  0001 C CNN
F 3 "" H 2150 2550 50  0001 C CNN
	1    2150 2550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR036
U 1 1 606086A0
P 2150 2700
F 0 "#PWR036" H 2150 2450 50  0001 C CNN
F 1 "GND" H 2155 2527 50  0000 C CNN
F 2 "" H 2150 2700 50  0001 C CNN
F 3 "" H 2150 2700 50  0001 C CNN
	1    2150 2700
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR039
U 1 1 606086A6
P 3850 2550
F 0 "#PWR039" H 3850 2400 50  0001 C CNN
F 1 "VCC" H 3865 2723 50  0000 C CNN
F 2 "" H 3850 2550 50  0001 C CNN
F 3 "" H 3850 2550 50  0001 C CNN
	1    3850 2550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR041
U 1 1 606086AC
P 3950 2650
F 0 "#PWR041" H 3950 2400 50  0001 C CNN
F 1 "GND" H 3955 2477 50  0000 C CNN
F 2 "" H 3950 2650 50  0001 C CNN
F 3 "" H 3950 2650 50  0001 C CNN
	1    3950 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 2600 2700 2600
Text GLabel 2700 1800 0    50   Input ~ 0
A1
Text GLabel 2700 1900 0    50   Input ~ 0
A2
Text GLabel 2700 2000 0    50   Input ~ 0
A3
Text GLabel 2700 2100 0    50   Input ~ 0
A4
Text GLabel 2700 2200 0    50   Input ~ 0
A5
Text GLabel 2700 3100 0    50   Input ~ 0
A6
Text GLabel 2700 3200 0    50   Input ~ 0
A7
Text GLabel 2700 3300 0    50   Input ~ 0
A8
Text GLabel 2700 3400 0    50   Input ~ 0
A9
Text GLabel 2700 3500 0    50   Input ~ 0
A10
Text GLabel 3450 3400 2    50   Input ~ 0
A11
Text GLabel 3450 3300 2    50   Input ~ 0
A12
Text GLabel 3450 3200 2    50   Input ~ 0
A13
Text GLabel 3450 3100 2    50   Input ~ 0
A14
Text GLabel 3450 3000 2    50   Input ~ 0
A15
Text GLabel 3450 2200 2    50   Input ~ 0
A16
Text GLabel 3450 2100 2    50   Input ~ 0
A17
Text GLabel 3450 2000 2    50   Input ~ 0
A18
Text GLabel 3450 1900 2    50   Input ~ 0
A19
Text GLabel 2700 2400 0    50   BiDi ~ 0
D8
Text GLabel 2700 2800 0    50   BiDi ~ 0
D10
Text GLabel 2700 2900 0    50   BiDi ~ 0
D11
Text GLabel 3450 2900 2    50   BiDi ~ 0
D12
Text GLabel 3450 2800 2    50   BiDi ~ 0
D13
Text GLabel 3450 2500 2    50   BiDi ~ 0
D14
Text GLabel 3450 2400 2    50   BiDi ~ 0
D15
Wire Wire Line
	2150 2550 2150 2600
Wire Wire Line
	2150 2700 2700 2700
Wire Wire Line
	3450 2700 3850 2700
Wire Wire Line
	3850 2700 3850 2550
Text GLabel 2700 2500 0    50   BiDi ~ 0
D9
$Comp
L 68k_dev:CY7C1049D U7
U 1 1 606086D3
P 3100 4150
F 0 "U7" H 3075 4465 50  0000 C CNN
F 1 "CY7C1049D" H 3075 4374 50  0000 C CNN
F 2 "KiCad_Libraries:SOJ-36_10.16x23.49mm_P1.27mm_sram" H 2850 4400 50  0001 C CNN
F 3 "" H 2850 4400 50  0001 C CNN
	1    3100 4150
	1    0    0    -1  
$EndComp
Text GLabel 2700 5300 0    50   Input ~ 0
WRL
Text GLabel 3450 4600 2    50   Input ~ 0
RDL
Text GLabel 2700 4600 0    50   Input ~ 0
RAM1_SEL
$Comp
L power:VCC #PWR037
U 1 1 606086DC
P 2150 4850
F 0 "#PWR037" H 2150 4700 50  0001 C CNN
F 1 "VCC" H 2165 5023 50  0000 C CNN
F 2 "" H 2150 4850 50  0001 C CNN
F 3 "" H 2150 4850 50  0001 C CNN
	1    2150 4850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR038
U 1 1 606086E2
P 2150 5000
F 0 "#PWR038" H 2150 4750 50  0001 C CNN
F 1 "GND" H 2155 4827 50  0000 C CNN
F 2 "" H 2150 5000 50  0001 C CNN
F 3 "" H 2150 5000 50  0001 C CNN
	1    2150 5000
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR040
U 1 1 606086E8
P 3850 4850
F 0 "#PWR040" H 3850 4700 50  0001 C CNN
F 1 "VCC" H 3865 5023 50  0000 C CNN
F 2 "" H 3850 4850 50  0001 C CNN
F 3 "" H 3850 4850 50  0001 C CNN
	1    3850 4850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR042
U 1 1 606086EE
P 3950 4900
F 0 "#PWR042" H 3950 4650 50  0001 C CNN
F 1 "GND" H 3955 4727 50  0000 C CNN
F 2 "" H 3950 4900 50  0001 C CNN
F 3 "" H 3950 4900 50  0001 C CNN
	1    3950 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 4900 2700 4900
Text GLabel 2700 4100 0    50   Input ~ 0
A1
Text GLabel 2700 4200 0    50   Input ~ 0
A2
Text GLabel 2700 4300 0    50   Input ~ 0
A3
Text GLabel 2700 4400 0    50   Input ~ 0
A4
Text GLabel 2700 4500 0    50   Input ~ 0
A5
Text GLabel 2700 5400 0    50   Input ~ 0
A6
Text GLabel 2700 5500 0    50   Input ~ 0
A7
Text GLabel 2700 5600 0    50   Input ~ 0
A8
Text GLabel 2700 5700 0    50   Input ~ 0
A9
Text GLabel 2700 5800 0    50   Input ~ 0
A10
Text GLabel 3450 5700 2    50   Input ~ 0
A11
Text GLabel 3450 5600 2    50   Input ~ 0
A12
Text GLabel 3450 5500 2    50   Input ~ 0
A13
Text GLabel 3450 5400 2    50   Input ~ 0
A14
Text GLabel 3450 5300 2    50   Input ~ 0
A15
Text GLabel 3450 4500 2    50   Input ~ 0
A16
Text GLabel 3450 4400 2    50   Input ~ 0
A17
Text GLabel 3450 4300 2    50   Input ~ 0
A18
Text GLabel 3450 4200 2    50   Input ~ 0
A19
Text GLabel 2700 4700 0    50   BiDi ~ 0
D0
Text GLabel 2700 5100 0    50   BiDi ~ 0
D2
Text GLabel 2700 5200 0    50   BiDi ~ 0
D3
Text GLabel 3450 5200 2    50   BiDi ~ 0
D4
Text GLabel 3450 5100 2    50   BiDi ~ 0
D5
Text GLabel 3450 4800 2    50   BiDi ~ 0
D6
Text GLabel 3450 4700 2    50   BiDi ~ 0
D7
Wire Wire Line
	2150 4850 2150 4900
Wire Wire Line
	2150 5000 2700 5000
Wire Wire Line
	3450 4900 3950 4900
Wire Wire Line
	3450 5000 3850 5000
Wire Wire Line
	3850 5000 3850 4850
Text GLabel 2700 4800 0    50   BiDi ~ 0
D1
Wire Wire Line
	4850 5000 4300 5000
Wire Wire Line
	4300 5000 4300 5050
Wire Wire Line
	3450 2600 3950 2600
Wire Wire Line
	3950 2600 3950 2650
$EndSCHEMATC
