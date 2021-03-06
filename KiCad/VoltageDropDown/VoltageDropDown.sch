EESchema Schematic File Version 4
LIBS:VoltageDropDown-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Regulator_Linear:LM317_3PinPackage U1
U 1 1 5D013EA7
P 4900 2900
F 0 "U1" H 4900 3142 50  0000 C CNN
F 1 "LM317_3PinPackage" H 4900 3051 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 4900 3150 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/lm317.pdf" H 4900 2900 50  0001 C CNN
	1    4900 2900
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:LM337_TO220 U2
U 1 1 5D013F37
P 4900 4700
F 0 "U2" H 4900 4550 50  0000 C CNN
F 1 "LM337_TO220" H 4900 4459 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 4900 4500 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/lm337-n.pdf" H 4900 4700 50  0001 C CNN
	1    4900 4700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5D013FDF
P 4350 3800
F 0 "#PWR0101" H 4350 3550 50  0001 C CNN
F 1 "GND" V 4355 3672 50  0000 R CNN
F 2 "" H 4350 3800 50  0001 C CNN
F 3 "" H 4350 3800 50  0001 C CNN
	1    4350 3800
	0    1    1    0   
$EndComp
$Comp
L Device:R R1
U 1 1 5D01400C
P 5350 3150
F 0 "R1" H 5420 3196 50  0000 L CNN
F 1 "220" H 5420 3105 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P2.54mm_Vertical" V 5280 3150 50  0001 C CNN
F 3 "~" H 5350 3150 50  0001 C CNN
	1    5350 3150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5D014065
P 5350 3550
F 0 "R2" H 5420 3596 50  0000 L CNN
F 1 "3300" H 5420 3505 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P2.54mm_Vertical" V 5280 3550 50  0001 C CNN
F 3 "~" H 5350 3550 50  0001 C CNN
	1    5350 3550
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C3
U 1 1 5D014129
P 4900 3550
F 0 "C3" H 5018 3596 50  0000 L CNN
F 1 "10u" H 5018 3505 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 4938 3400 50  0001 C CNN
F 3 "~" H 4900 3550 50  0001 C CNN
	1    4900 3550
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C5
U 1 1 5D014185
P 5900 3450
F 0 "C5" H 6018 3496 50  0000 L CNN
F 1 "25u" H 6018 3405 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 5938 3300 50  0001 C CNN
F 3 "~" H 5900 3450 50  0001 C CNN
	1    5900 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 3200 4900 3350
Wire Wire Line
	4900 3350 5350 3350
Wire Wire Line
	5350 3350 5350 3300
Connection ~ 4900 3350
Wire Wire Line
	4900 3350 4900 3400
Wire Wire Line
	5350 3350 5350 3400
Connection ~ 5350 3350
Wire Wire Line
	5200 2900 5350 2900
Wire Wire Line
	5350 2900 5350 3000
Wire Wire Line
	5350 2900 5650 2900
Wire Wire Line
	5900 2900 5900 3300
Connection ~ 5350 2900
Wire Wire Line
	4350 3800 4450 3800
Wire Wire Line
	4900 3800 4900 3700
Wire Wire Line
	4900 3800 5350 3800
Wire Wire Line
	5350 3800 5350 3700
Connection ~ 4900 3800
Wire Wire Line
	5350 3800 5900 3800
Wire Wire Line
	5900 3800 5900 3600
Connection ~ 5350 3800
$Comp
L Device:C C1
U 1 1 5D0147B6
P 4450 3350
F 0 "C1" H 4565 3396 50  0000 L CNN
F 1 "1u" H 4565 3305 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 4488 3200 50  0001 C CNN
F 3 "~" H 4450 3350 50  0001 C CNN
	1    4450 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 3200 4450 2900
Wire Wire Line
	4450 2900 4600 2900
Wire Wire Line
	4450 3500 4450 3800
Connection ~ 4450 3800
Wire Wire Line
	4450 3800 4900 3800
Connection ~ 4450 2900
$Comp
L Device:CP C4
U 1 1 5D014CA8
P 4900 4050
F 0 "C4" H 5018 4096 50  0000 L CNN
F 1 "10u" H 5018 4005 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 4938 3900 50  0001 C CNN
F 3 "~" H 4900 4050 50  0001 C CNN
	1    4900 4050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5D014D40
P 5350 4050
F 0 "R3" H 5420 4096 50  0000 L CNN
F 1 "3300" H 5420 4005 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P2.54mm_Vertical" V 5280 4050 50  0001 C CNN
F 3 "~" H 5350 4050 50  0001 C CNN
	1    5350 4050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5D014D70
P 5350 4450
F 0 "R4" H 5420 4496 50  0000 L CNN
F 1 "220" H 5420 4405 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P2.54mm_Vertical" V 5280 4450 50  0001 C CNN
F 3 "~" H 5350 4450 50  0001 C CNN
	1    5350 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 3800 4900 3900
Wire Wire Line
	4900 4200 4900 4250
Wire Wire Line
	5200 4700 5350 4700
Wire Wire Line
	5350 4700 5350 4600
Wire Wire Line
	5350 3900 5350 3800
Wire Wire Line
	5350 4300 5350 4250
$Comp
L Device:CP C6
U 1 1 5D015C29
P 5900 4200
F 0 "C6" H 6018 4246 50  0000 L CNN
F 1 "25u" H 6018 4155 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 5938 4050 50  0001 C CNN
F 3 "~" H 5900 4200 50  0001 C CNN
	1    5900 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 4250 4900 4250
Connection ~ 5350 4250
Wire Wire Line
	5350 4250 5350 4200
Connection ~ 4900 4250
Wire Wire Line
	4900 4250 4900 4400
Wire Wire Line
	5900 4050 5900 3800
Connection ~ 5900 3800
Wire Wire Line
	5350 4700 5650 4700
Wire Wire Line
	5900 4700 5900 4350
Connection ~ 5350 4700
$Comp
L Device:C C2
U 1 1 5D016757
P 4450 4250
F 0 "C2" H 4565 4296 50  0000 L CNN
F 1 "1u" H 4565 4205 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 4488 4100 50  0001 C CNN
F 3 "~" H 4450 4250 50  0001 C CNN
	1    4450 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 4100 4450 3800
Wire Wire Line
	4450 4400 4450 4700
Wire Wire Line
	4450 4700 4600 4700
Connection ~ 4450 4700
$Comp
L Connector_Generic:Conn_02x02_Top_Bottom J1
U 1 1 5D0177FB
P 3650 3250
F 0 "J1" H 3700 3467 50  0000 C CNN
F 1 "IN" H 3700 3376 50  0000 C CNN
F 2 "Connector_Molex:Molex_Mini-Fit_Jr_5566-04A_2x02_P4.20mm_Vertical" H 3650 3250 50  0001 C CNN
F 3 "~" H 3650 3250 50  0001 C CNN
	1    3650 3250
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x02_Top_Bottom J2
U 1 1 5D01786C
P 6550 3250
F 0 "J2" H 6600 3467 50  0000 C CNN
F 1 "OUT" H 6600 3376 50  0000 C CNN
F 2 "Connector_Molex:Molex_Mini-Fit_Jr_5566-04A_2x02_P4.20mm_Vertical" H 6550 3250 50  0001 C CNN
F 3 "~" H 6550 3250 50  0001 C CNN
	1    6550 3250
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3950 3250 4050 3250
Wire Wire Line
	4050 3250 4050 2900
Wire Wire Line
	4050 2900 4450 2900
Wire Wire Line
	3950 3350 4050 3350
Wire Wire Line
	4050 3350 4050 4700
Wire Wire Line
	4050 4700 4450 4700
Wire Wire Line
	6250 3250 6150 3250
Wire Wire Line
	6150 3250 6150 2900
Wire Wire Line
	6150 2900 5900 2900
Connection ~ 5900 2900
Wire Wire Line
	6250 3350 6150 3350
Wire Wire Line
	6150 3350 6150 4700
Wire Wire Line
	6150 4700 5900 4700
Connection ~ 5900 4700
$Comp
L power:GND #PWR0102
U 1 1 5D01A7B0
P 3350 3300
F 0 "#PWR0102" H 3350 3050 50  0001 C CNN
F 1 "GND" V 3355 3172 50  0000 R CNN
F 2 "" H 3350 3300 50  0001 C CNN
F 3 "" H 3350 3300 50  0001 C CNN
	1    3350 3300
	0    1    1    0   
$EndComp
Wire Wire Line
	3350 3300 3400 3300
Wire Wire Line
	3400 3300 3400 3250
Wire Wire Line
	3400 3250 3450 3250
Wire Wire Line
	3400 3300 3400 3350
Wire Wire Line
	3400 3350 3450 3350
Connection ~ 3400 3300
$Comp
L power:GND #PWR0103
U 1 1 5D01BCFC
P 6850 3300
F 0 "#PWR0103" H 6850 3050 50  0001 C CNN
F 1 "GND" V 6855 3172 50  0000 R CNN
F 2 "" H 6850 3300 50  0001 C CNN
F 3 "" H 6850 3300 50  0001 C CNN
	1    6850 3300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6750 3250 6800 3250
Wire Wire Line
	6800 3250 6800 3300
Wire Wire Line
	6800 3300 6850 3300
Wire Wire Line
	6750 3350 6800 3350
Wire Wire Line
	6800 3350 6800 3300
Connection ~ 6800 3300
Text Label 6150 2900 0    50   ~ 0
Vdd-OUT
Text Label 6150 4700 0    50   ~ 0
Vss-OUT
Text Label 4050 2900 0    50   ~ 0
Vdd-IN
Text Label 4050 4700 0    50   ~ 0
Vss-IN
$Comp
L Device:D D1
U 1 1 5D0BB0D3
P 4900 2500
F 0 "D1" H 4900 2716 50  0000 C CNN
F 1 "1N4007" H 4900 2625 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P2.54mm_Vertical_AnodeUp" H 4900 2500 50  0001 C CNN
F 3 "~" H 4900 2500 50  0001 C CNN
	1    4900 2500
	1    0    0    -1  
$EndComp
$Comp
L Device:D D3
U 1 1 5D0BB186
P 5650 3150
F 0 "D3" V 5604 3229 50  0000 L CNN
F 1 "1N4007" V 5695 3229 50  0000 L CNN
F 2 "Diode_THT:D_DO-41_SOD81_P2.54mm_Vertical_AnodeUp" H 5650 3150 50  0001 C CNN
F 3 "~" H 5650 3150 50  0001 C CNN
	1    5650 3150
	0    1    1    0   
$EndComp
Wire Wire Line
	5350 3350 5650 3350
Wire Wire Line
	5650 3350 5650 3300
Wire Wire Line
	5650 3000 5650 2900
Connection ~ 5650 2900
Wire Wire Line
	5650 2900 5900 2900
Wire Wire Line
	5050 2500 5350 2500
Wire Wire Line
	5350 2500 5350 2900
Wire Wire Line
	4750 2500 4450 2500
Wire Wire Line
	4450 2500 4450 2900
$Comp
L Device:D D2
U 1 1 5D0C5CA1
P 4900 5250
F 0 "D2" H 4900 5034 50  0000 C CNN
F 1 "1N4007" H 4900 5125 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P2.54mm_Vertical_AnodeUp" H 4900 5250 50  0001 C CNN
F 3 "~" H 4900 5250 50  0001 C CNN
	1    4900 5250
	-1   0    0    1   
$EndComp
Wire Wire Line
	4450 4700 4450 5250
Wire Wire Line
	4450 5250 4750 5250
Wire Wire Line
	5050 5250 5350 5250
Wire Wire Line
	5350 5250 5350 4700
$Comp
L Device:D D4
U 1 1 5D0C821C
P 5650 4450
F 0 "D4" V 5604 4529 50  0000 L CNN
F 1 "1N4007" V 5695 4529 50  0000 L CNN
F 2 "Diode_THT:D_DO-41_SOD81_P2.54mm_Vertical_AnodeUp" H 5650 4450 50  0001 C CNN
F 3 "~" H 5650 4450 50  0001 C CNN
	1    5650 4450
	0    1    1    0   
$EndComp
Wire Wire Line
	5650 4600 5650 4700
Connection ~ 5650 4700
Wire Wire Line
	5650 4700 5900 4700
Wire Wire Line
	5650 4300 5650 4250
Wire Wire Line
	5650 4250 5350 4250
$EndSCHEMATC
