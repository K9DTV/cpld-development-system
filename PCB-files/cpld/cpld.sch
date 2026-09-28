EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:switches
LIBS:relays
LIBS:motors
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:EPM7032LC44-12
LIBS:cpld-cache
EELAYER 25 0
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
L PWR_FLAG #FLG01
U 1 1 59FC9E04
P 1800 6700
F 0 "#FLG01" H 1800 6775 50  0001 C CNN
F 1 "PWR_FLAG" H 1800 6850 50  0000 C CNN
F 2 "" H 1800 6700 50  0001 C CNN
F 3 "" H 1800 6700 50  0001 C CNN
	1    1800 6700
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG02
U 1 1 59FC9E18
P 2200 6700
F 0 "#FLG02" H 2200 6775 50  0001 C CNN
F 1 "PWR_FLAG" H 2200 6850 50  0000 C CNN
F 2 "" H 2200 6700 50  0001 C CNN
F 3 "" H 2200 6700 50  0001 C CNN
	1    2200 6700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 59FC9E2E
P 2200 7100
F 0 "#PWR03" H 2200 6850 50  0001 C CNN
F 1 "GND" H 2200 6950 50  0000 C CNN
F 2 "" H 2200 7100 50  0001 C CNN
F 3 "" H 2200 7100 50  0001 C CNN
	1    2200 7100
	1    0    0    -1  
$EndComp
$Comp
L +9V #PWR04
U 1 1 59FC9E5E
P 1800 7150
F 0 "#PWR04" H 1800 7000 50  0001 C CNN
F 1 "+9V" H 1800 7290 50  0000 C CNN
F 2 "" H 1800 7150 50  0001 C CNN
F 3 "" H 1800 7150 50  0001 C CNN
	1    1800 7150
	-1   0    0    1   
$EndComp
$Comp
L Conn_01x02 J1
U 1 1 59FC9E98
P 650 1900
F 0 "J1" H 650 2000 50  0000 C CNN
F 1 "Conn_01x02" H 650 1700 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 650 1900 50  0001 C CNN
F 3 "" H 650 1900 50  0001 C CNN
	1    650  1900
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR05
U 1 1 59FC9FE2
P 900 2500
F 0 "#PWR05" H 900 2250 50  0001 C CNN
F 1 "GND" H 900 2350 50  0000 C CNN
F 2 "" H 900 2500 50  0001 C CNN
F 3 "" H 900 2500 50  0001 C CNN
	1    900  2500
	1    0    0    -1  
$EndComp
$Comp
L EPM7032LC44-12 IC1
U 1 1 59FCA878
P 4850 1600
F 0 "IC1" H 6000 1750 50  0000 C CNN
F 1 "EPM7032LC44-12" H 6000 -650 50  0000 C CNN
F 2 "Sockets:PLCC44" H 6000 -750 50  0001 C CNN
F 3 "https://www.altera.com/content/dam/altera-www/global/en_US/pdfs/literature/ds/m7000.pdf" H 6000 -850 50  0001 C CNN
F 4 "IC CPLD 32MC 12NS 44PLCC" H 6000 -950 50  0001 C CNN "Description"
F 5 "RS" H 6000 -1050 50  0001 C CNN "Supplier_Name"
F 6 "Altera Corporation" H 6000 -1250 50  0001 C CNN "Manufacturer_Name"
F 7 "EPM7032LC44-12" H 6000 -1350 50  0001 C CNN "Manufacturer_Part_Number"
F 8 "4.572" H 7000 -1650 50  0001 C CNN "Height"
	1    4850 1600
	1    0    0    -1  
$EndComp
$Comp
L LM1117-3.3 U3
U 1 1 59FCB24F
P 1700 1800
F 0 "U3" H 1550 1925 50  0000 C CNN
F 1 "LM1117-3.3" H 1700 1925 50  0000 L CNN
F 2 "Power_Integrations:TO-220" H 1700 1800 50  0001 C CNN
F 3 "" H 1700 1800 50  0001 C CNN
	1    1700 1800
	1    0    0    -1  
$EndComp
$Comp
L +9V #PWR06
U 1 1 59FCB3EA
P 1150 1500
F 0 "#PWR06" H 1150 1350 50  0001 C CNN
F 1 "+9V" H 1150 1640 50  0000 C CNN
F 2 "" H 1150 1500 50  0001 C CNN
F 3 "" H 1150 1500 50  0001 C CNN
	1    1150 1500
	1    0    0    -1  
$EndComp
$Comp
L SW_DIP_x12 SW1
U 1 1 59FCD7E5
P 2300 3300
F 0 "SW1" H 2300 4050 50  0000 C CNN
F 1 "SW_DIP_x12" H 2300 2650 50  0000 C CNN
F 2 "Buttons_Switches_ThroughHole:SW_DIP_x12_W7.62mm_Slide" H 2300 3300 50  0001 C CNN
F 3 "" H 2300 3300 50  0001 C CNN
	1    2300 3300
	1    0    0    -1  
$EndComp
$Comp
L Conn_02x05_Odd_Even J2
U 1 1 59FCE348
P 6100 5550
F 0 "J2" H 6150 5850 50  0000 C CNN
F 1 "Conn_02x05_Odd_Even" H 6150 5250 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x05_Pitch2.54mm" H 6100 5550 50  0001 C CNN
F 3 "" H 6100 5550 50  0001 C CNN
	1    6100 5550
	1    0    0    -1  
$EndComp
$Comp
L R_Network05 RN2
U 1 1 59FCE7D6
P 5550 5050
F 0 "RN2" V 5250 5050 50  0000 C CNN
F 1 "R_Network05" V 5850 5050 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x06_Pitch2.54mm" V 5925 5050 50  0001 C CNN
F 3 "" H 5550 5050 50  0001 C CNN
	1    5550 5050
	1    0    0    -1  
$EndComp
$Comp
L LM555 U4
U 1 1 59FD0915
P 3400 5500
F 0 "U4" H 3000 5850 50  0000 L CNN
F 1 "LM555" H 3500 5850 50  0000 L CNN
F 2 "Housings_DIP:DIP-8_W7.62mm" H 3400 5500 50  0001 C CNN
F 3 "" H 3400 5500 50  0001 C CNN
	1    3400 5500
	1    0    0    -1  
$EndComp
$Comp
L LM1117-5.0 U2
U 1 1 59FD0D29
P 1700 1200
F 0 "U2" H 1550 1325 50  0000 C CNN
F 1 "LM1117-5.0" H 1700 1325 50  0000 L CNN
F 2 "Power_Integrations:TO-220" H 1700 1200 50  0001 C CNN
F 3 "" H 1700 1200 50  0001 C CNN
	1    1700 1200
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 59FD1966
P 4000 5000
F 0 "R1" V 4080 5000 50  0000 C CNN
F 1 "R" V 4000 5000 50  0000 C CNN
F 2 "Resistors_ThroughHole:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 3930 5000 50  0001 C CNN
F 3 "" H 4000 5000 50  0001 C CNN
	1    4000 5000
	-1   0    0    1   
$EndComp
NoConn ~ 6400 5550
NoConn ~ 6400 5650
NoConn ~ 7150 3700
NoConn ~ 4850 1600
NoConn ~ 7150 3000
NoConn ~ 7150 3200
NoConn ~ 7150 3300
NoConn ~ 7150 3400
NoConn ~ 4850 3500
NoConn ~ 4850 3600
$Comp
L CP C1
U 1 1 59FDE224
P 1150 2050
F 0 "C1" H 1175 2150 50  0000 L CNN
F 1 "CP" H 1175 1950 50  0000 L CNN
F 2 "Capacitors_ThroughHole:CP_Radial_D5.0mm_P2.50mm" H 1188 1900 50  0001 C CNN
F 3 "" H 1150 2050 50  0001 C CNN
	1    1150 2050
	1    0    0    -1  
$EndComp
$Comp
L CP1_Small C3
U 1 1 59FDE271
P 2350 1350
F 0 "C3" H 2360 1420 50  0000 L CNN
F 1 "CP1_Small" H 2360 1270 50  0000 L CNN
F 2 "Capacitors_ThroughHole:CP_Radial_D5.0mm_P2.50mm" H 2350 1350 50  0001 C CNN
F 3 "" H 2350 1350 50  0001 C CNN
	1    2350 1350
	1    0    0    -1  
$EndComp
$Comp
L CP1_Small C4
U 1 1 59FDE2E2
P 2350 1950
F 0 "C4" H 2360 2020 50  0000 L CNN
F 1 "CP1_Small" H 2360 1870 50  0000 L CNN
F 2 "Capacitors_ThroughHole:CP_Radial_D5.0mm_P2.50mm" H 2350 1950 50  0001 C CNN
F 3 "" H 2350 1950 50  0001 C CNN
	1    2350 1950
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR07
U 1 1 59FDE7DE
P 3050 1550
F 0 "#PWR07" H 3050 1400 50  0001 C CNN
F 1 "+3.3V" H 3050 1690 50  0000 C CNN
F 2 "" H 3050 1550 50  0001 C CNN
F 3 "" H 3050 1550 50  0001 C CNN
	1    3050 1550
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR08
U 1 1 59FDE810
P 3000 1000
F 0 "#PWR08" H 3000 850 50  0001 C CNN
F 1 "+5V" H 3000 1140 50  0000 C CNN
F 2 "" H 3000 1000 50  0001 C CNN
F 3 "" H 3000 1000 50  0001 C CNN
	1    3000 1000
	1    0    0    -1  
$EndComp
$Comp
L C C8
U 1 1 59FDECAD
P 7050 4250
F 0 "C8" H 7075 4350 50  0000 L CNN
F 1 "C" H 7075 4150 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Axial_L3.8mm_D2.6mm_P7.50mm_Horizontal" H 7088 4100 50  0001 C CNN
F 3 "" H 7050 4250 50  0001 C CNN
	1    7050 4250
	1    0    0    -1  
$EndComp
$Comp
L C C7
U 1 1 59FDEA00
P 4850 4250
F 0 "C7" H 4875 4350 50  0000 L CNN
F 1 "C" H 4875 4150 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Axial_L3.8mm_D2.6mm_P7.50mm_Horizontal" H 4888 4100 50  0001 C CNN
F 3 "" H 4850 4250 50  0001 C CNN
	1    4850 4250
	1    0    0    -1  
$EndComp
$Comp
L LM1117-5.0 U1
U 1 1 59FE2682
P 1700 700
F 0 "U1" H 1550 825 50  0000 C CNN
F 1 "LM1117-5.0" H 1700 825 50  0000 L CNN
F 2 "Power_Integrations:TO-220" H 1700 700 50  0001 C CNN
F 3 "" H 1700 700 50  0001 C CNN
	1    1700 700 
	1    0    0    -1  
$EndComp
$Comp
L CP1_Small C2
U 1 1 59FE2B08
P 2350 850
F 0 "C2" H 2360 920 50  0000 L CNN
F 1 "CP1_Small" H 2360 770 50  0000 L CNN
F 2 "Capacitors_ThroughHole:CP_Radial_D5.0mm_P2.50mm" H 2350 850 50  0001 C CNN
F 3 "" H 2350 850 50  0001 C CNN
	1    2350 850 
	1    0    0    -1  
$EndComp
$Comp
L +5VA #PWR09
U 1 1 59FE32E2
P 3000 650
F 0 "#PWR09" H 3000 500 50  0001 C CNN
F 1 "+5VA" H 3000 790 50  0000 C CNN
F 2 "" H 3000 650 50  0001 C CNN
F 3 "" H 3000 650 50  0001 C CNN
	1    3000 650 
	1    0    0    -1  
$EndComp
$Comp
L Til311 U5
U 1 1 59FEB7FC
P 8900 3000
F 0 "U5" H 8900 3000 60  0000 C CNN
F 1 "Til311" H 8900 3000 60  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm" H 8900 3000 60  0001 C CNN
F 3 "" H 8900 3000 60  0001 C CNN
	1    8900 3000
	1    0    0    -1  
$EndComp
$Comp
L Til311 U6
U 1 1 59FEB8BD
P 10300 3000
F 0 "U6" H 10300 3000 60  0000 C CNN
F 1 "Til311" H 10300 3000 60  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm" H 10300 3000 60  0001 C CNN
F 3 "" H 10300 3000 60  0001 C CNN
	1    10300 3000
	1    0    0    -1  
$EndComp
NoConn ~ 11000 2100
NoConn ~ 9600 2100
$Comp
L C C6
U 1 1 59FF009D
P 4000 6000
F 0 "C6" H 4025 6100 50  0000 L CNN
F 1 "C" H 4025 5900 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Axial_L3.8mm_D2.6mm_P7.50mm_Horizontal" H 4038 5850 50  0001 C CNN
F 3 "" H 4000 6000 50  0001 C CNN
	1    4000 6000
	1    0    0    -1  
$EndComp
NoConn ~ 5650 5250
NoConn ~ 5900 5650
Wire Wire Line
	2200 7100 2200 6700
Wire Wire Line
	1800 6700 1800 7150
Wire Wire Line
	850  1900 900  1900
Wire Wire Line
	900  1900 900  2500
Wire Wire Line
	4650 3700 4850 3700
Wire Wire Line
	7150 3500 7300 3500
Connection ~ 7300 3500
Connection ~ 4650 3700
Wire Wire Line
	7150 1600 7500 1600
Wire Wire Line
	7500 1600 7500 4450
Wire Wire Line
	7500 4450 4000 4450
Wire Wire Line
	4550 3000 4850 3000
Connection ~ 4550 3000
Wire Wire Line
	7150 2800 7500 2800
Connection ~ 7500 2800
Connection ~ 4550 1800
Wire Wire Line
	1150 1500 1150 1900
Connection ~ 1150 1800
Wire Wire Line
	1700 2300 900  2300
Connection ~ 900  2300
Connection ~ 1700 2300
Connection ~ 4650 2500
Connection ~ 1700 2500
Wire Wire Line
	1700 3700 2000 3700
Connection ~ 1700 3700
Wire Wire Line
	1700 3600 2000 3600
Connection ~ 1700 3600
Wire Wire Line
	1700 3500 2000 3500
Connection ~ 1700 3500
Wire Wire Line
	1700 3400 2000 3400
Connection ~ 1700 3400
Connection ~ 1700 3300
Wire Wire Line
	1700 3200 2000 3200
Connection ~ 1700 3200
Wire Wire Line
	1700 3100 2000 3100
Connection ~ 1700 3100
Wire Wire Line
	1700 3000 2000 3000
Connection ~ 1700 3000
Wire Wire Line
	1700 2900 2000 2900
Connection ~ 1700 2900
Connection ~ 1700 2800
Wire Wire Line
	1700 2700 2000 2700
Connection ~ 1700 2700
Wire Wire Line
	6750 5750 6400 5750
Wire Wire Line
	6750 4000 6750 6250
Wire Wire Line
	6750 5350 6400 5350
Connection ~ 6750 5350
Wire Wire Line
	6400 5450 6550 5450
Wire Wire Line
	6550 5450 6550 4450
Connection ~ 6550 4450
Wire Wire Line
	5350 4850 5350 4450
Connection ~ 5350 4450
Wire Wire Line
	5100 5350 5900 5350
Wire Wire Line
	5350 5350 5350 5250
Wire Wire Line
	5450 5450 5450 5250
Wire Wire Line
	5550 5250 5550 5550
Wire Wire Line
	4450 5550 5900 5550
Wire Wire Line
	5750 5250 5750 5750
Wire Wire Line
	7150 2500 7900 2500
Wire Wire Line
	7900 2500 7900 4550
Wire Wire Line
	7900 4550 5100 4550
Wire Wire Line
	5100 4550 5100 5350
Connection ~ 5350 5350
Connection ~ 5450 5450
Wire Wire Line
	4850 2800 4450 2800
Wire Wire Line
	4450 2800 4450 5550
Connection ~ 5550 5550
Connection ~ 5750 5750
Connection ~ 1700 2100
Wire Wire Line
	3400 6250 3400 5900
Connection ~ 1700 3800
Wire Wire Line
	4000 5500 3900 5500
Connection ~ 3400 4750
Connection ~ 4000 5700
Wire Wire Line
	4000 6250 4000 6150
Connection ~ 3400 6250
Wire Wire Line
	2750 5700 2900 5700
Wire Wire Line
	2750 700  2750 5700
Wire Wire Line
	2550 5500 2900 5500
Wire Wire Line
	4850 3200 3800 3200
Wire Wire Line
	4850 3100 3700 3100
Wire Wire Line
	4850 2900 3600 2900
Wire Wire Line
	4850 2400 3300 2400
Wire Wire Line
	4850 2300 3200 2300
Wire Wire Line
	4850 2100 3100 2100
Wire Wire Line
	4850 2000 3000 2000
Wire Wire Line
	4850 1900 2900 1900
Wire Wire Line
	3400 4400 3400 5100
Connection ~ 4550 4450
Connection ~ 4000 3800
Connection ~ 3900 3700
Connection ~ 3800 3600
Connection ~ 3700 3500
Connection ~ 3600 3400
Connection ~ 3500 3300
Connection ~ 3400 3200
Connection ~ 3300 3100
Connection ~ 3200 3000
Connection ~ 3100 2900
Connection ~ 3000 2800
Connection ~ 2900 2700
Wire Wire Line
	3900 5300 4200 5300
Wire Wire Line
	4200 5300 4200 5950
Wire Wire Line
	4200 5950 7700 5950
Connection ~ 4000 6250
Connection ~ 6750 5750
Wire Wire Line
	1700 1500 1700 6250
Wire Wire Line
	2000 1200 9600 1200
Wire Wire Line
	2000 1800 4850 1800
Wire Wire Line
	1700 2500 4850 2500
Wire Wire Line
	1700 6250 6750 6250
Wire Wire Line
	2600 2700 2900 2700
Wire Wire Line
	3000 2800 2600 2800
Wire Wire Line
	2600 2900 3100 2900
Wire Wire Line
	3200 3000 2600 3000
Wire Wire Line
	3300 3100 2600 3100
Wire Wire Line
	3400 3200 2600 3200
Wire Wire Line
	3500 3300 2600 3300
Wire Wire Line
	3600 3400 2600 3400
Wire Wire Line
	3700 3500 2600 3500
Wire Wire Line
	3800 3600 2600 3600
Wire Wire Line
	3900 3700 2600 3700
Wire Wire Line
	4000 3800 2600 3800
Wire Wire Line
	4550 1800 4550 4450
Wire Wire Line
	4000 3300 4000 3950
Wire Wire Line
	3800 3200 3800 3950
Wire Wire Line
	3700 3100 3700 3950
Wire Wire Line
	3600 2900 3600 3950
Wire Wire Line
	3500 2600 3500 3950
Wire Wire Line
	3300 2400 3300 3950
Wire Wire Line
	3200 2300 3200 3950
Wire Wire Line
	3100 2100 3100 3950
Wire Wire Line
	3000 2000 3000 3950
Wire Wire Line
	2900 1900 2900 3950
Wire Wire Line
	4350 5450 5900 5450
Wire Wire Line
	5200 5450 5200 4650
Wire Wire Line
	5200 4650 8000 4650
Wire Wire Line
	8000 4650 8000 3100
Wire Wire Line
	8000 3100 7150 3100
Wire Wire Line
	1400 1200 900  1200
Wire Wire Line
	900  700  900  1800
Connection ~ 900  1800
Wire Wire Line
	850  1800 1150 1800
Wire Wire Line
	1400 1800 1400 1500
Wire Wire Line
	2100 1500 2100 1200
Connection ~ 2100 1200
Wire Wire Line
	2350 1200 2350 1250
Connection ~ 2350 1200
Wire Wire Line
	2350 1500 2350 1450
Wire Wire Line
	2350 1800 2350 1850
Connection ~ 2350 1800
Wire Wire Line
	2350 2100 2350 2050
Wire Wire Line
	1700 2100 2350 2100
Wire Wire Line
	1150 2200 1150 2300
Connection ~ 1150 2300
Wire Wire Line
	3000 1000 3000 1200
Connection ~ 3000 1200
Wire Wire Line
	3050 1550 3050 1800
Connection ~ 3050 1800
Wire Wire Line
	4850 4400 4850 4450
Connection ~ 4850 4450
Wire Wire Line
	7050 4000 7050 4100
Wire Wire Line
	4850 4000 4850 4100
Connection ~ 7050 4000
Connection ~ 4850 4000
Connection ~ 6750 4000
Wire Wire Line
	4650 2500 4650 4000
Wire Wire Line
	4650 4000 7300 4000
Wire Wire Line
	7300 4000 7300 2300
Wire Wire Line
	1700 2100 1700 1000
Wire Wire Line
	1400 700  900  700 
Connection ~ 900  1200
Wire Wire Line
	2000 700  11000 700 
Wire Wire Line
	3000 650  3000 700 
Connection ~ 3000 700 
Wire Wire Line
	1400 1500 2100 1500
Wire Wire Line
	2250 950  2250 2100
Wire Wire Line
	2250 950  2350 950 
Connection ~ 2250 2100
Wire Wire Line
	2350 1500 2250 1500
Connection ~ 2250 1500
Wire Wire Line
	2350 750  2350 700 
Connection ~ 2350 700 
Wire Wire Line
	4000 4450 4000 4350
Wire Wire Line
	4000 4750 4000 4850
Wire Wire Line
	2750 4750 4000 4750
Connection ~ 2750 700 
Connection ~ 2750 4750
Wire Wire Line
	7700 5950 7700 3600
Wire Wire Line
	8450 2300 8450 2600
Wire Wire Line
	8450 2600 9850 2600
Wire Wire Line
	9850 2600 9850 2300
Wire Wire Line
	9600 1200 9600 1700
Wire Wire Line
	11000 700  11000 1700
Connection ~ 7300 2300
Connection ~ 8450 2300
Wire Wire Line
	8300 1500 8300 1800
Wire Wire Line
	7150 1800 8450 1800
Wire Wire Line
	8200 1450 8200 2000
Wire Wire Line
	9600 1800 9700 1800
Wire Wire Line
	9700 1800 9700 2500
Wire Wire Line
	8100 2500 11150 2500
Wire Wire Line
	9600 1900 9650 1900
Wire Wire Line
	9650 1900 9650 2700
Wire Wire Line
	8000 2700 11100 2700
Wire Wire Line
	9600 2300 9600 2750
Wire Wire Line
	9850 1800 9800 1800
Wire Wire Line
	9800 1800 9800 1500
Wire Wire Line
	9800 1500 8300 1500
Wire Wire Line
	9850 1900 9750 1900
Wire Wire Line
	9750 1900 9750 1450
Wire Wire Line
	9750 1450 8200 1450
Wire Wire Line
	11000 2750 11000 2300
Connection ~ 9600 2750
Wire Wire Line
	9850 2100 9750 2100
Wire Wire Line
	4000 3300 4850 3300
Wire Wire Line
	3900 3400 3900 3950
Wire Wire Line
	3900 3400 4850 3400
Wire Wire Line
	3500 2600 4850 2600
Wire Wire Line
	4850 2700 3400 2700
Wire Wire Line
	3400 2700 3400 3950
Wire Wire Line
	11000 1800 11150 1800
Wire Wire Line
	11150 1800 11150 2500
Connection ~ 9700 2500
Wire Wire Line
	11100 2700 11100 1900
Wire Wire Line
	11100 1900 11000 1900
Connection ~ 9650 2700
Wire Wire Line
	8450 2100 8250 2100
Connection ~ 8200 1900
Wire Wire Line
	4850 1700 4350 1700
Wire Wire Line
	7150 2100 8000 2100
Wire Wire Line
	8000 2100 8000 2700
Wire Wire Line
	8200 1900 8450 1900
Wire Wire Line
	8200 2000 7150 2000
Wire Wire Line
	7150 1900 8100 1900
Wire Wire Line
	8100 1900 8100 2500
Connection ~ 8300 1800
Wire Wire Line
	7150 1700 7600 1700
Wire Wire Line
	7600 1700 7600 3600
Wire Wire Line
	7600 3600 7700 3600
Wire Wire Line
	7700 2200 7150 2200
Wire Wire Line
	7700 2750 11000 2750
Wire Wire Line
	8250 2100 8250 2900
Wire Wire Line
	7700 2750 7700 2200
Wire Wire Line
	8350 2900 9750 2900
Wire Wire Line
	9750 2900 9750 2100
Wire Wire Line
	9600 1550 8450 1550
Wire Wire Line
	8450 1550 8450 1700
Connection ~ 9600 1550
Wire Wire Line
	11000 1550 9850 1550
Wire Wire Line
	9850 1550 9850 1700
Connection ~ 11000 1550
Wire Wire Line
	7150 2300 8450 2300
Connection ~ 5200 5450
Wire Wire Line
	4350 1700 4350 5450
Wire Wire Line
	4850 2200 4250 2200
Wire Wire Line
	4250 2200 4250 5750
Wire Wire Line
	4250 5750 5900 5750
Wire Wire Line
	9850 2000 9850 2200
Wire Wire Line
	9850 2200 9800 2200
Wire Wire Line
	9800 2200 9800 3000
Wire Wire Line
	9800 3000 8250 3000
Wire Wire Line
	8450 2000 8450 2200
Wire Wire Line
	8450 2200 8400 2200
Wire Wire Line
	8400 2200 8400 3100
Wire Wire Line
	8400 3100 8250 3100
$Comp
L R_Small R2
U 1 1 5A0C188E
P 8150 3000
F 0 "R2" H 8180 3020 50  0000 L CNN
F 1 "R_Small" H 8180 2960 50  0000 L CNN
F 2 "Resistors_ThroughHole:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" H 8150 3000 50  0001 C CNN
F 3 "" H 8150 3000 50  0001 C CNN
	1    8150 3000
	0    1    1    0   
$EndComp
$Comp
L R_Small R3
U 1 1 5A0C18F5
P 8150 3100
F 0 "R3" H 8180 3120 50  0000 L CNN
F 1 "R_Small" H 8180 3060 50  0000 L CNN
F 2 "Resistors_ThroughHole:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" H 8150 3100 50  0001 C CNN
F 3 "" H 8150 3100 50  0001 C CNN
	1    8150 3100
	0    1    1    0   
$EndComp
Wire Wire Line
	8050 3000 7450 3000
Wire Wire Line
	7450 3000 7450 2700
Wire Wire Line
	7450 2700 7150 2700
Wire Wire Line
	8050 3100 8050 3050
Wire Wire Line
	8050 3050 7400 3050
Wire Wire Line
	8250 2900 7150 2900
Wire Wire Line
	2000 2800 1700 2800
Wire Wire Line
	2000 3300 1700 3300
Wire Wire Line
	2000 3800 1700 3800
NoConn ~ 7150 3600
Wire Wire Line
	2900 5300 2400 5300
Wire Wire Line
	2400 5300 2400 6050
Wire Wire Line
	2400 6050 3800 6050
Wire Wire Line
	3800 6050 3800 5850
$Comp
L R R4
U 1 1 5A1001A3
P 4150 5500
F 0 "R4" V 4230 5500 50  0000 C CNN
F 1 "R" V 4150 5500 50  0000 C CNN
F 2 "Resistors_ThroughHole:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 4080 5500 50  0001 C CNN
F 3 "" H 4150 5500 50  0001 C CNN
	1    4150 5500
	-1   0    0    1   
$EndComp
Wire Wire Line
	4150 5700 4150 5650
Wire Wire Line
	4150 5350 4000 5350
Connection ~ 4000 5350
Wire Wire Line
	4000 5700 4000 5850
Connection ~ 4000 5850
Wire Wire Line
	3900 5700 4150 5700
Wire Wire Line
	4000 5850 3800 5850
Wire Wire Line
	4000 5150 4000 5500
$Comp
L C C5
U 1 1 5A10EE0A
P 2550 6000
F 0 "C5" H 2575 6100 50  0000 L CNN
F 1 "C" H 2575 5900 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Axial_L3.8mm_D2.6mm_P7.50mm_Horizontal" H 2588 5850 50  0001 C CNN
F 3 "" H 2550 6000 50  0001 C CNN
	1    2550 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 5500 2550 5850
Wire Wire Line
	2550 6150 2550 6250
Connection ~ 2550 6250
Wire Wire Line
	7050 4400 3400 4400
$Comp
L R_Network12 RN1
U 1 1 5A2ADC95
P 3500 4150
F 0 "RN1" V 2800 4150 50  0000 C CNN
F 1 "R_Network12" V 4100 4150 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x13_Pitch2.54mm" V 4175 4150 50  0001 C CNN
F 3 "" H 3500 4150 50  0001 C CNN
	1    3500 4150
	1    0    0    1   
$EndComp
Wire Wire Line
	4000 4350 2900 4350
Wire Wire Line
	8350 2900 8350 2600
Wire Wire Line
	8350 2600 7150 2600
Wire Wire Line
	7400 3050 7400 2400
Wire Wire Line
	7400 2400 7150 2400
$EndSCHEMATC
