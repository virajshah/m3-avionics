EESchema Schematic File Version 2
LIBS:agg-kicad
LIBS:m3radio-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
Title "M3 Radio Transceiver Schematic"
Date "8 feb 2016"
Rev "Rev 1"
Comp "Cambridge University Spaceflight"
Comment1 "G Brooks"
Comment2 "A Raghu"
Comment3 "E R Eide"
Comment4 "Drawn by:"
$EndDescr
Text Notes 2200 2050 0    59   ~ 0
SI4460 (radio) 
Text Notes 1870 710  0    118  ~ 0
Radio
$Comp
L Si4460 IC201
U 1 1 56B20B0C
P 2550 2900
F 0 "IC201" H 2250 3600 50  0000 L CNN
F 1 "Si4460" H 2250 2200 50  0000 L CNN
F 2 "agg:QFN-20-EP-SI" H 2250 2100 50  0001 L CNN
F 3 "" H 2150 3500 50  0001 C CNN
F 4 "2462635" H 2250 2000 50  0001 L CNN "Farnell"
	1    2550 2900
	1    0    0    -1  
$EndComp
Text HLabel 2050 3200 0    60   Input ~ 0
Radio_SCLK
Text HLabel 2050 3400 0    60   Input ~ 0
Radio_SDI
Text HLabel 2050 3300 0    60   Input ~ 0
Radio_SDO
Text HLabel 3050 3200 2    60   Input ~ 0
Radio_nIRQ
Text HLabel 2050 3500 0    60   Input ~ 0
Radio_nSEL
$Comp
L GND #PWR045
U 1 1 56B22850
P 2050 2650
F 0 "#PWR045" H 1920 2690 50  0001 L CNN
F 1 "GND" H 2050 2550 50  0000 C CNN
F 2 "" H 2050 2650 60  0000 C CNN
F 3 "" H 2050 2650 60  0000 C CNN
	1    2050 2650
	1    0    0    -1  
$EndComp
$Comp
L 3v3 #PWR046
U 1 1 56B228AE
P 1450 2150
F 0 "#PWR046" H 1450 2260 50  0001 L CNN
F 1 "3v3" H 1450 2240 50  0000 C CNN
F 2 "" H 1450 2150 60  0000 C CNN
F 3 "" H 1450 2150 60  0000 C CNN
	1    1450 2150
	1    0    0    -1  
$EndComp
$Comp
L C C6
U 1 1 56B2293A
P 1900 2350
F 0 "C6" H 1950 2420 50  0000 C CNN
F 1 "1u" H 1950 2280 50  0000 C CNN
F 2 "agg:0402" H 1900 2350 50  0001 C CNN
F 3 "" H 1900 2350 50  0001 C CNN
F 5 "2496814" H 1900 2350 60  0001 C CNN "Farnell"
	1    1900 2350
	0    1    1    0   
$EndComp
$Comp
L C C202
U 1 1 56B2297D
P 1700 2350
F 0 "C202" H 1750 2420 50  0000 C CNN
F 1 "100n" H 1750 2280 50  0000 C CNN
F 2 "agg:0402" H 1700 2350 50  0001 C CNN
F 3 "" H 1700 2350 50  0001 C CNN
F 5 "2496771" H 1700 2350 60  0001 C CNN "Farnell"
	1    1700 2350
	0    1    1    0   
$EndComp
$Comp
L C C201
U 1 1 56B229B8
P 1450 2350
F 0 "C201" H 1500 2420 50  0000 C CNN
F 1 "100p" H 1500 2280 50  0000 C CNN
F 2 "agg:0402" H 1450 2350 50  0001 C CNN
F 3 "" H 1450 2350 50  0001 C CNN
F 5 "2496792" H 1450 2350 60  0001 C CNN "Farnell"
	1    1450 2350
	0    1    1    0   
$EndComp
Text Label 3050 2500 0    60   ~ 0
TX_pin
Text Label 3050 2400 0    60   ~ 0
RXn
Text Label 3050 2300 0    60   ~ 0
RXp
Text Label 5900 5000 2    60   ~ 0
RXp
Text Label 5900 4600 2    60   ~ 0
RXn
Text Label 5900 4200 2    60   ~ 0
TX_pin
$Comp
L L L201
U 1 1 56B2381E
P 6250 3950
F 0 "L201" H 6300 4000 50  0000 C CNN
F 1 "120nH" H 6300 3900 50  0000 C CNN
F 2 "agg:0603-L" H 6250 3950 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/1327494.pdf" H 6250 3950 50  0001 C CNN
F 5 "1865812" H 6250 3950 60  0001 C CNN "Farnell"
	1    6250 3950
	0    1    1    0   
$EndComp
$Comp
L C C204
U 1 1 56B23AF0
P 6500 4200
F 0 "C204" H 6550 4270 50  0000 C CNN
F 1 "36pF" H 6500 4100 50  0000 C CNN
F 2 "agg:0402" H 6500 4200 50  0001 C CNN
F 3 "" H 6500 4200 50  0001 C CNN
F 5 "1865427" H 6500 4200 60  0001 C CNN "Farnell"
	1    6500 4200
	1    0    0    -1  
$EndComp
$Comp
L L L204
U 1 1 56B23B31
P 6700 4200
F 0 "L204" H 6750 4250 50  0000 C CNN
F 1 "6.8nH" H 6750 4100 50  0000 C CNN
F 2 "agg:0603-L" H 6700 4200 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/321058.pdf" H 6700 4200 50  0001 C CNN
F 5 "1515395" H 6700 4200 60  0001 C CNN "Farnell"
	1    6700 4200
	1    0    0    -1  
$EndComp
$Comp
L C C205
U 1 1 56B23C5B
P 6550 4600
F 0 "C205" H 6600 4670 50  0000 C CNN
F 1 "1.2pF" H 6600 4530 50  0000 C CNN
F 2 "agg:0402" H 6550 4600 50  0001 C CNN
F 3 "" H 6550 4600 50  0001 C CNN
F 5 "2218843" H 6550 4600 60  0001 C CNN "Farnell"
	1    6550 4600
	1    0    0    -1  
$EndComp
$Comp
L L L202
U 1 1 56B23D7C
P 6250 4750
F 0 "L202" H 6300 4800 50  0000 C CNN
F 1 "18nH" H 6300 4700 50  0000 C CNN
F 2 "agg:0603-L" H 6250 4750 50  0001 C CNN
F 3 "" H 6250 4750 50  0001 C CNN
F 5 "2424720" H 6250 4750 60  0001 C CNN "Farnell"
	1    6250 4750
	0    1    1    0   
$EndComp
$Comp
L L L203
U 1 1 56B23E07
P 6500 5000
F 0 "L203" H 6550 5050 50  0000 C CNN
F 1 "22nH" H 6550 4950 50  0000 C CNN
F 2 "agg:0603-L" H 6500 5000 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/360119.pdf" H 6500 5000 50  0001 C CNN
F 5 "1711755" H 6500 5000 60  0001 C CNN "Farnell"
	1    6500 5000
	1    0    0    -1  
$EndComp
$Comp
L C C203
U 1 1 56B23FB7
P 6250 5100
F 0 "C203" H 6300 5170 50  0000 C CNN
F 1 "3pF" H 6300 5030 50  0000 C CNN
F 2 "agg:0402" H 6250 5100 50  0001 C CNN
F 3 "" H 6250 5100 50  0001 C CNN
F 5 "2210752" H 6250 5100 60  0001 C CNN "Farnell"
	1    6250 5100
	0    1    1    0   
$EndComp
$Comp
L GND #PWR047
U 1 1 56B2404E
P 6250 5300
F 0 "#PWR047" H 6120 5340 50  0001 L CNN
F 1 "GND" H 6250 5200 50  0000 C CNN
F 2 "" H 6250 5300 60  0000 C CNN
F 3 "" H 6250 5300 60  0000 C CNN
	1    6250 5300
	1    0    0    -1  
$EndComp
$Comp
L C C206
U 1 1 56B241BD
P 7300 4300
F 0 "C206" H 7350 4370 50  0000 C CNN
F 1 "3.3pF" H 7350 4230 50  0000 C CNN
F 2 "agg:0402" H 7300 4300 50  0001 C CNN
F 3 "" H 7300 4300 50  0001 C CNN
F 5 "2434610" H 7300 4300 60  0001 C CNN "Farnell"
	1    7300 4300
	0    1    1    0   
$EndComp
$Comp
L C C207
U 1 1 56B24202
P 7600 4300
F 0 "C207" H 7650 4370 50  0000 C CNN
F 1 "10pF" H 7650 4230 50  0000 C CNN
F 2 "agg:0402" H 7600 4300 50  0001 C CNN
F 3 "" H 7600 4300 50  0001 C CNN
F 5 "2496790" H 7600 4300 60  0001 C CNN "Farnell"
	1    7600 4300
	0    1    1    0   
$EndComp
$Comp
L C C208
U 1 1 56B24243
P 7900 4300
F 0 "C208" H 7950 4370 50  0000 C CNN
F 1 "4.7pF" H 7950 4230 50  0000 C CNN
F 2 "agg:0402" H 7900 4300 50  0001 C CNN
F 3 "" H 7900 4300 50  0001 C CNN
F 5 "2434644" H 7900 4300 60  0001 C CNN "Farnell"
	1    7900 4300
	0    1    1    0   
$EndComp
$Comp
L L L206
U 1 1 56B242F1
P 7700 4200
F 0 "L206" H 7750 4250 50  0000 C CNN
F 1 "6.8nH" H 7750 4150 50  0000 C CNN
F 2 "agg:0603-L" H 7700 4200 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/321058.pdf" H 7700 4200 50  0001 C CNN
F 5 "1515395" H 7700 4200 60  0001 C CNN "Farnell"
	1    7700 4200
	1    0    0    -1  
$EndComp
$Comp
L L L205
U 1 1 56B24388
P 7400 4200
F 0 "L205" H 7450 4250 50  0000 C CNN
F 1 "6.8nH" H 7450 4150 50  0000 C CNN
F 2 "agg:0603-L" H 7400 4200 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/321058.pdf" H 7400 4200 50  0001 C CNN
F 5 "1515395" H 7400 4200 60  0001 C CNN "Farnell"
	1    7400 4200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR048
U 1 1 56B24884
P 7600 4650
F 0 "#PWR048" H 7470 4690 50  0001 L CNN
F 1 "GND" H 7600 4550 50  0000 C CNN
F 2 "" H 7600 4650 60  0000 C CNN
F 3 "" H 7600 4650 60  0000 C CNN
	1    7600 4650
	1    0    0    -1  
$EndComp
NoConn ~ 2950 2800
NoConn ~ 2950 3000
NoConn ~ 2950 3100
NoConn ~ 2950 2600
$Comp
L COAX P201
U 1 1 56B306EE
P 8500 4200
F 0 "P201" H 8500 4300 50  0000 C CNN
F 1 "COAX" H 8500 4050 50  0000 C CNN
F 2 "M3radio:U.FL-R-SMT-1" H 8500 3990 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/1947917.pdf" H 8600 4100 50  0001 C CNN
F 5 "3908021" H 8500 3920 50  0001 C CNN "Farnell"
	1    8500 4200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR049
U 1 1 56B30843
P 8350 4500
F 0 "#PWR049" H 8220 4540 50  0001 L CNN
F 1 "GND" H 8350 4400 50  0000 C CNN
F 2 "" H 8350 4500 60  0000 C CNN
F 3 "" H 8350 4500 60  0000 C CNN
	1    8350 4500
	1    0    0    -1  
$EndComp
Wire Notes Line
	4330 4340 510  4340
Wire Wire Line
	2150 3200 2050 3200
Wire Wire Line
	2150 3300 2050 3300
Wire Wire Line
	2150 3400 2050 3400
Wire Wire Line
	2150 3500 2050 3500
Wire Wire Line
	2950 3200 3050 3200
Wire Wire Line
	1450 2300 2150 2300
Wire Wire Line
	2150 2600 2050 2600
Wire Wire Line
	2050 2500 2050 2650
Wire Wire Line
	1450 2500 2150 2500
Connection ~ 2050 2600
Wire Wire Line
	2050 2400 2050 2300
Connection ~ 2050 2300
Wire Wire Line
	2150 2400 2050 2400
Wire Wire Line
	1900 2300 1900 2350
Connection ~ 1900 2300
Wire Wire Line
	1700 2300 1700 2350
Wire Wire Line
	1450 2150 1450 2350
Connection ~ 1700 2300
Wire Wire Line
	1900 2450 1900 2500
Connection ~ 2050 2500
Wire Wire Line
	1700 2450 1700 2500
Connection ~ 1900 2500
Wire Wire Line
	1450 2450 1450 2500
Connection ~ 1700 2500
Connection ~ 1450 2300
Wire Wire Line
	2950 2300 3050 2300
Wire Wire Line
	2950 2400 3050 2400
Wire Wire Line
	2950 2500 3050 2500
Wire Notes Line
	4400 500  4400 7700
Wire Notes Line
	4400 2450 4400 2750
Wire Notes Line
	4400 2850 11150 2850
Wire Wire Line
	5900 4200 6500 4200
Wire Wire Line
	6250 4050 6250 4200
Connection ~ 6250 4200
Wire Wire Line
	6600 4200 6700 4200
Wire Wire Line
	6900 4200 6900 5000
Wire Wire Line
	5900 4600 6550 4600
Wire Wire Line
	6650 4600 6900 4600
Connection ~ 6900 4600
Wire Wire Line
	6250 4600 6250 4750
Connection ~ 6250 4600
Wire Wire Line
	5900 5000 6500 5000
Wire Wire Line
	6250 4850 6250 5100
Connection ~ 6250 5000
Wire Wire Line
	6900 5000 6600 5000
Wire Wire Line
	6250 5200 6250 5300
Connection ~ 6900 4200
Connection ~ 7300 4200
Wire Wire Line
	6800 4200 7400 4200
Wire Wire Line
	7300 4200 7300 4300
Wire Wire Line
	7500 4200 7700 4200
Wire Wire Line
	7600 4200 7600 4300
Connection ~ 7600 4200
Wire Wire Line
	7800 4200 8400 4200
Wire Wire Line
	7900 4200 7900 4300
Wire Wire Line
	7900 4550 7900 4400
Wire Wire Line
	7300 4550 7900 4550
Wire Wire Line
	7600 4400 7600 4650
Wire Wire Line
	7300 4400 7300 4550
Connection ~ 7600 4550
Connection ~ 7900 4200
Wire Wire Line
	6250 3550 6250 3950
Wire Notes Line
	7050 4850 8050 4850
Wire Notes Line
	8050 4850 8050 4000
Wire Notes Line
	8050 4000 7050 4000
Wire Notes Line
	7050 4000 7050 4850
Wire Wire Line
	8400 4300 8350 4300
Wire Wire Line
	8350 4300 8350 4500
$Comp
L TCXO Y201
U 1 1 56C5879C
P 1500 2900
F 0 "Y201" H 1300 3000 50  0000 L CNN
F 1 "TCXO" H 1300 2700 50  0000 L CNN
F 2 "agg:TG-5006CG" H 1300 2900 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/1804153.pdf" H 1300 2900 50  0001 C CNN
F 5 "2405785" H 1300 2600 50  0001 L CNN "Farnell"
	1    1500 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 2900 1200 2900
Wire Wire Line
	1100 3000 1200 3000
Wire Wire Line
	1150 3000 1150 3050
$Comp
L GND #PWR050
U 1 1 56C60D0D
P 1150 3050
F 0 "#PWR050" H 1020 3090 50  0001 L CNN
F 1 "GND" H 1150 2950 50  0000 C CNN
F 2 "" H 1150 3050 60  0000 C CNN
F 3 "" H 1150 3050 60  0000 C CNN
	1    1150 3050
	1    0    0    -1  
$EndComp
NoConn ~ 2150 2800
$Comp
L 3v3 #PWR051
U 1 1 576AEE23
P 6250 3550
F 0 "#PWR051" H 6250 3660 50  0001 L CNN
F 1 "3v3" H 6250 3640 50  0000 C CNN
F 2 "" H 6250 3550 60  0000 C CNN
F 3 "" H 6250 3550 60  0000 C CNN
	1    6250 3550
	1    0    0    -1  
$EndComp
Text Notes 4500 6250 0    118  ~ 0
Application note:\nSee AN627 p19 for component values\np23 (figure 6) for schematic\n\nhttps://www.silabs.com/Support%20Documents/TechnicalDocs/AN627.pdf
$Comp
L ESD_DIODE D2
U 1 1 576B5135
P 8200 4350
F 0 "D2" H 8150 4450 50  0000 L CNN
F 1 "ESD_DIODE" H 8150 4250 50  0001 L CNN
F 2 "agg:0402" H 8150 4150 50  0001 L CNN
F 3 "" H 8100 4350 50  0001 C CNN
F 4 "2368169" H 8150 4050 50  0001 L CNN "Farnell"
	1    8200 4350
	0    1    1    0   
$EndComp
Wire Wire Line
	8350 4450 8200 4450
Connection ~ 8350 4450
Wire Wire Line
	8200 4250 8200 4200
Connection ~ 8200 4200
$Comp
L C C4
U 1 1 576B8629
P 1100 2900
F 0 "C4" H 1150 2970 50  0000 C CNN
F 1 "10nF" H 1150 2830 50  0000 C CNN
F 2 "agg:0402" H 1100 2900 50  0001 C CNN
F 3 "" H 1100 2900 50  0001 C CNN
F 5 "1414575" H 1100 2900 60  0001 C CNN "Farnell"
	1    1100 2900
	0    1    1    0   
$EndComp
Connection ~ 1150 2900
Connection ~ 1150 3000
$Comp
L C C5
U 1 1 576B8ADE
P 2100 2900
F 0 "C5" H 2150 2970 50  0000 C CNN
F 1 "100pF" H 2150 2830 50  0000 C CNN
F 2 "agg:0402" H 2100 2900 50  0001 C CNN
F 3 "" H 2100 2900 50  0001 C CNN
F 5 "2496792" H 2100 2900 60  0001 C CNN "Farnell"
	1    2100 2900
	-1   0    0    1   
$EndComp
Wire Wire Line
	1800 2900 2000 2900
Wire Wire Line
	2100 2900 2150 2900
Text HLabel 3050 2900 2    60   Input ~ 0
Radio_GPIO1
Wire Wire Line
	2950 2900 3050 2900
Text HLabel 2050 3100 0    60   Input ~ 0
Radio_SDN
Wire Wire Line
	2150 3100 2050 3100
$Comp
L 1v8 #PWR052
U 1 1 576ED3BF
P 1150 2850
F 0 "#PWR052" H 1150 2960 50  0001 L CNN
F 1 "1v8" H 1150 2940 50  0000 C CNN
F 2 "" H 1150 2850 60  0000 C CNN
F 3 "" H 1150 2850 60  0000 C CNN
	1    1150 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 2900 1150 2850
$EndSCHEMATC