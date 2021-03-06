EESchema Schematic File Version 4
LIBS:tamtam_board-cache
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
L MCU_Microchip_ATmega:ATmega328P-AU U1
U 1 1 5C41DB19
P 2700 3050
F 0 "U1" H 2700 1464 50  0000 C CNN
F 1 "ATmega328P-AU" H 2700 1373 50  0000 C CNN
F 2 "Package_QFP:TQFP-32_7x7mm_P0.8mm" H 2700 3050 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATmega328_P%20AVR%20MCU%20with%20picoPower%20Technology%20Data%20Sheet%2040001984A.pdf" H 2700 3050 50  0001 C CNN
	1    2700 3050
	1    0    0    -1  
$EndComp
Text GLabel 2600 1250 0    50   Input ~ 0
+5V
Text GLabel 2300 4650 0    50   Input ~ 0
GND
Wire Wire Line
	2300 4650 2700 4650
Wire Wire Line
	2700 4650 2700 4550
Wire Wire Line
	2700 1550 2700 1450
Wire Wire Line
	2700 1450 2750 1450
Wire Wire Line
	2800 1450 2800 1550
Wire Wire Line
	2600 1250 2750 1250
Wire Wire Line
	2750 1250 2750 1450
Connection ~ 2750 1450
Wire Wire Line
	2750 1450 2800 1450
$Comp
L Transistor_FET:IRF3205 Q1
U 1 1 5C41DD77
P 8200 5300
F 0 "Q1" H 8406 5346 50  0000 L CNN
F 1 "IRF3205" H 8406 5255 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 8450 5225 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irf3205.pdf" H 8200 5300 50  0001 L CNN
	1    8200 5300
	1    0    0    -1  
$EndComp
Text GLabel 8350 4950 2    50   Input ~ 0
servos_GND
Text GLabel 8400 5650 2    50   Input ~ 0
GND
Text GLabel 7900 5300 0    50   Input ~ 0
servos_ON
Wire Wire Line
	8300 5100 8300 4950
Wire Wire Line
	8300 4950 8350 4950
Wire Wire Line
	8400 5650 8300 5650
Wire Wire Line
	8300 5650 8300 5500
Wire Wire Line
	8000 5300 7900 5300
$Comp
L Connector_Generic:Conn_01x03 J14
U 1 1 5C0A9AE3
P 7500 1000
F 0 "J14" H 7580 1042 50  0000 L CNN
F 1 "Conn_01x03" H 7580 951 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 7500 1000 50  0001 C CNN
F 3 "~" H 7500 1000 50  0001 C CNN
	1    7500 1000
	1    0    0    -1  
$EndComp
Text GLabel 7200 1000 0    50   Input ~ 0
+6V
Text GLabel 7200 900  0    50   Input ~ 0
SERVO1
Text GLabel 7200 1100 0    50   Input ~ 0
servos_GND
Wire Wire Line
	7200 900  7300 900 
Wire Wire Line
	7300 1000 7200 1000
Wire Wire Line
	7200 1100 7300 1100
$Comp
L Connector_Generic:Conn_01x03 J22
U 1 1 5C0AA116
P 9100 1000
F 0 "J22" H 9180 1042 50  0000 L CNN
F 1 "Conn_01x03" H 9180 951 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 9100 1000 50  0001 C CNN
F 3 "~" H 9100 1000 50  0001 C CNN
	1    9100 1000
	1    0    0    -1  
$EndComp
Text GLabel 8800 1000 0    50   Input ~ 0
+6V
Text GLabel 8800 900  0    50   Input ~ 0
SERVO2
Text GLabel 8800 1100 0    50   Input ~ 0
servos_GND
Wire Wire Line
	8800 900  8900 900 
Wire Wire Line
	8900 1000 8800 1000
Wire Wire Line
	8800 1100 8900 1100
$Comp
L Connector_Generic:Conn_01x03 J28
U 1 1 5C0AA268
P 10550 1000
F 0 "J28" H 10630 1042 50  0000 L CNN
F 1 "Conn_01x03" H 10630 951 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 10550 1000 50  0001 C CNN
F 3 "~" H 10550 1000 50  0001 C CNN
	1    10550 1000
	1    0    0    -1  
$EndComp
Text GLabel 10250 1000 0    50   Input ~ 0
+6V
Text GLabel 10250 900  0    50   Input ~ 0
SERVO3
Text GLabel 10250 1100 0    50   Input ~ 0
servos_GND
Wire Wire Line
	10250 900  10350 900 
Wire Wire Line
	10350 1000 10250 1000
Wire Wire Line
	10250 1100 10350 1100
$Comp
L Connector_Generic:Conn_01x03 J6
U 1 1 5C0AA46A
P 6050 1000
F 0 "J6" H 6130 1042 50  0000 L CNN
F 1 "Conn_01x03" H 6130 951 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 6050 1000 50  0001 C CNN
F 3 "~" H 6050 1000 50  0001 C CNN
	1    6050 1000
	1    0    0    -1  
$EndComp
Text GLabel 5750 1000 0    50   Input ~ 0
+6V
Text GLabel 5750 900  0    50   Input ~ 0
SERVO0
Text GLabel 5750 1100 0    50   Input ~ 0
servos_GND
Wire Wire Line
	5750 900  5850 900 
Wire Wire Line
	5850 1000 5750 1000
Wire Wire Line
	5750 1100 5850 1100
$Comp
L Connector_Generic:Conn_01x03 J15
U 1 1 5C0AA852
P 7500 1350
F 0 "J15" H 7580 1392 50  0000 L CNN
F 1 "Conn_01x03" H 7580 1301 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 7500 1350 50  0001 C CNN
F 3 "~" H 7500 1350 50  0001 C CNN
	1    7500 1350
	1    0    0    -1  
$EndComp
Text GLabel 7200 1350 0    50   Input ~ 0
+6V
Text GLabel 7200 1250 0    50   Input ~ 0
SERVO5
Text GLabel 7200 1450 0    50   Input ~ 0
servos_GND
Wire Wire Line
	7200 1250 7300 1250
Wire Wire Line
	7300 1350 7200 1350
Wire Wire Line
	7200 1450 7300 1450
$Comp
L Connector_Generic:Conn_01x03 J23
U 1 1 5C0AA85F
P 9100 1350
F 0 "J23" H 9180 1392 50  0000 L CNN
F 1 "Conn_01x03" H 9180 1301 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 9100 1350 50  0001 C CNN
F 3 "~" H 9100 1350 50  0001 C CNN
	1    9100 1350
	1    0    0    -1  
$EndComp
Text GLabel 8800 1350 0    50   Input ~ 0
+6V
Text GLabel 8800 1250 0    50   Input ~ 0
SERVO6
Text GLabel 8800 1450 0    50   Input ~ 0
servos_GND
Wire Wire Line
	8800 1250 8900 1250
Wire Wire Line
	8900 1350 8800 1350
Wire Wire Line
	8800 1450 8900 1450
$Comp
L Connector_Generic:Conn_01x03 J29
U 1 1 5C0AA86C
P 10550 1350
F 0 "J29" H 10630 1392 50  0000 L CNN
F 1 "Conn_01x03" H 10630 1301 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 10550 1350 50  0001 C CNN
F 3 "~" H 10550 1350 50  0001 C CNN
	1    10550 1350
	1    0    0    -1  
$EndComp
Text GLabel 10250 1350 0    50   Input ~ 0
+6V
Text GLabel 10250 1250 0    50   Input ~ 0
SERVO7
Text GLabel 10250 1450 0    50   Input ~ 0
servos_GND
Wire Wire Line
	10250 1250 10350 1250
Wire Wire Line
	10350 1350 10250 1350
Wire Wire Line
	10250 1450 10350 1450
$Comp
L Connector_Generic:Conn_01x03 J7
U 1 1 5C0AA879
P 6050 1350
F 0 "J7" H 6130 1392 50  0000 L CNN
F 1 "Conn_01x03" H 6130 1301 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 6050 1350 50  0001 C CNN
F 3 "~" H 6050 1350 50  0001 C CNN
	1    6050 1350
	1    0    0    -1  
$EndComp
Text GLabel 5750 1350 0    50   Input ~ 0
+6V
Text GLabel 5750 1250 0    50   Input ~ 0
SERVO4
Text GLabel 5750 1450 0    50   Input ~ 0
servos_GND
Wire Wire Line
	5750 1250 5850 1250
Wire Wire Line
	5850 1350 5750 1350
Wire Wire Line
	5750 1450 5850 1450
$Comp
L Connector_Generic:Conn_01x03 J16
U 1 1 5C0AAFE2
P 7500 1700
F 0 "J16" H 7580 1742 50  0000 L CNN
F 1 "Conn_01x03" H 7580 1651 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 7500 1700 50  0001 C CNN
F 3 "~" H 7500 1700 50  0001 C CNN
	1    7500 1700
	1    0    0    -1  
$EndComp
Text GLabel 7200 1700 0    50   Input ~ 0
+6V
Text GLabel 7200 1600 0    50   Input ~ 0
SERVO9
Text GLabel 7200 1800 0    50   Input ~ 0
servos_GND
Wire Wire Line
	7200 1600 7300 1600
Wire Wire Line
	7300 1700 7200 1700
Wire Wire Line
	7200 1800 7300 1800
$Comp
L Connector_Generic:Conn_01x03 J24
U 1 1 5C0AAFEF
P 9100 1700
F 0 "J24" H 9180 1742 50  0000 L CNN
F 1 "Conn_01x03" H 9180 1651 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 9100 1700 50  0001 C CNN
F 3 "~" H 9100 1700 50  0001 C CNN
	1    9100 1700
	1    0    0    -1  
$EndComp
Text GLabel 8800 1700 0    50   Input ~ 0
+6V
Text GLabel 8800 1600 0    50   Input ~ 0
SERVO10
Text GLabel 8800 1800 0    50   Input ~ 0
servos_GND
Wire Wire Line
	8800 1600 8900 1600
Wire Wire Line
	8900 1700 8800 1700
Wire Wire Line
	8800 1800 8900 1800
$Comp
L Connector_Generic:Conn_01x03 J30
U 1 1 5C0AAFFC
P 10550 1700
F 0 "J30" H 10630 1742 50  0000 L CNN
F 1 "Conn_01x03" H 10630 1651 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 10550 1700 50  0001 C CNN
F 3 "~" H 10550 1700 50  0001 C CNN
	1    10550 1700
	1    0    0    -1  
$EndComp
Text GLabel 10250 1700 0    50   Input ~ 0
+6V
Text GLabel 10250 1600 0    50   Input ~ 0
SERVO11
Text GLabel 10250 1800 0    50   Input ~ 0
servos_GND
Wire Wire Line
	10250 1600 10350 1600
Wire Wire Line
	10350 1700 10250 1700
Wire Wire Line
	10250 1800 10350 1800
$Comp
L Connector_Generic:Conn_01x03 J8
U 1 1 5C0AB009
P 6050 1700
F 0 "J8" H 6130 1742 50  0000 L CNN
F 1 "Conn_01x03" H 6130 1651 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 6050 1700 50  0001 C CNN
F 3 "~" H 6050 1700 50  0001 C CNN
	1    6050 1700
	1    0    0    -1  
$EndComp
Text GLabel 5750 1700 0    50   Input ~ 0
+6V
Text GLabel 5750 1600 0    50   Input ~ 0
SERVO8
Text GLabel 5750 1800 0    50   Input ~ 0
servos_GND
Wire Wire Line
	5750 1600 5850 1600
Wire Wire Line
	5850 1700 5750 1700
Wire Wire Line
	5750 1800 5850 1800
$Comp
L Connector_Generic:Conn_01x03 J17
U 1 1 5C0ABE71
P 7500 2050
F 0 "J17" H 7580 2092 50  0000 L CNN
F 1 "Conn_01x03" H 7580 2001 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 7500 2050 50  0001 C CNN
F 3 "~" H 7500 2050 50  0001 C CNN
	1    7500 2050
	1    0    0    -1  
$EndComp
Text GLabel 7200 2050 0    50   Input ~ 0
+6V
Text GLabel 7200 1950 0    50   Input ~ 0
SERVO13
Text GLabel 7200 2150 0    50   Input ~ 0
servos_GND
Wire Wire Line
	7200 1950 7300 1950
Wire Wire Line
	7300 2050 7200 2050
Wire Wire Line
	7200 2150 7300 2150
$Comp
L Connector_Generic:Conn_01x03 J25
U 1 1 5C0ABE7E
P 9100 2050
F 0 "J25" H 9180 2092 50  0000 L CNN
F 1 "Conn_01x03" H 9180 2001 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 9100 2050 50  0001 C CNN
F 3 "~" H 9100 2050 50  0001 C CNN
	1    9100 2050
	1    0    0    -1  
$EndComp
Text GLabel 8800 2050 0    50   Input ~ 0
+6V
Text GLabel 8800 1950 0    50   Input ~ 0
SERVO14
Text GLabel 8800 2150 0    50   Input ~ 0
servos_GND
Wire Wire Line
	8800 1950 8900 1950
Wire Wire Line
	8900 2050 8800 2050
Wire Wire Line
	8800 2150 8900 2150
$Comp
L Connector_Generic:Conn_01x03 J31
U 1 1 5C0ABE8B
P 10550 2050
F 0 "J31" H 10630 2092 50  0000 L CNN
F 1 "Conn_01x03" H 10630 2001 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 10550 2050 50  0001 C CNN
F 3 "~" H 10550 2050 50  0001 C CNN
	1    10550 2050
	1    0    0    -1  
$EndComp
Text GLabel 10250 2050 0    50   Input ~ 0
+6V
Text GLabel 10250 1950 0    50   Input ~ 0
SERVO15
Text GLabel 10250 2150 0    50   Input ~ 0
servos_GND
Wire Wire Line
	10250 1950 10350 1950
Wire Wire Line
	10350 2050 10250 2050
Wire Wire Line
	10250 2150 10350 2150
$Comp
L Connector_Generic:Conn_01x03 J9
U 1 1 5C0ABE98
P 6050 2050
F 0 "J9" H 6130 2092 50  0000 L CNN
F 1 "Conn_01x03" H 6130 2001 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 6050 2050 50  0001 C CNN
F 3 "~" H 6050 2050 50  0001 C CNN
	1    6050 2050
	1    0    0    -1  
$EndComp
Text GLabel 5750 2050 0    50   Input ~ 0
+6V
Text GLabel 5750 1950 0    50   Input ~ 0
SERVO12
Text GLabel 5750 2150 0    50   Input ~ 0
servos_GND
Wire Wire Line
	5750 1950 5850 1950
Wire Wire Line
	5850 2050 5750 2050
Wire Wire Line
	5750 2150 5850 2150
$Comp
L Connector_Generic:Conn_01x03 J18
U 1 1 5C0AD72F
P 7500 2400
F 0 "J18" H 7580 2442 50  0000 L CNN
F 1 "Conn_01x03" H 7580 2351 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 7500 2400 50  0001 C CNN
F 3 "~" H 7500 2400 50  0001 C CNN
	1    7500 2400
	1    0    0    -1  
$EndComp
Text GLabel 7200 2400 0    50   Input ~ 0
+6V
Text GLabel 7200 2300 0    50   Input ~ 0
SERVO17
Text GLabel 7200 2500 0    50   Input ~ 0
servos_GND
Wire Wire Line
	7200 2300 7300 2300
Wire Wire Line
	7300 2400 7200 2400
Wire Wire Line
	7200 2500 7300 2500
$Comp
L Connector_Generic:Conn_01x03 J26
U 1 1 5C0AD73C
P 9100 2400
F 0 "J26" H 9180 2442 50  0000 L CNN
F 1 "Conn_01x03" H 9180 2351 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 9100 2400 50  0001 C CNN
F 3 "~" H 9100 2400 50  0001 C CNN
	1    9100 2400
	1    0    0    -1  
$EndComp
Text GLabel 8800 2400 0    50   Input ~ 0
+6V
Text GLabel 8800 2300 0    50   Input ~ 0
SERVO18
Text GLabel 8800 2500 0    50   Input ~ 0
servos_GND
Wire Wire Line
	8800 2300 8900 2300
Wire Wire Line
	8900 2400 8800 2400
Wire Wire Line
	8800 2500 8900 2500
$Comp
L Connector_Generic:Conn_01x03 J32
U 1 1 5C0AD749
P 10550 2400
F 0 "J32" H 10630 2442 50  0000 L CNN
F 1 "Conn_01x03" H 10630 2351 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 10550 2400 50  0001 C CNN
F 3 "~" H 10550 2400 50  0001 C CNN
	1    10550 2400
	1    0    0    -1  
$EndComp
Text GLabel 10250 2400 0    50   Input ~ 0
+6V
Text GLabel 10250 2300 0    50   Input ~ 0
SERVO19
Text GLabel 10250 2500 0    50   Input ~ 0
servos_GND
Wire Wire Line
	10250 2300 10350 2300
Wire Wire Line
	10350 2400 10250 2400
Wire Wire Line
	10250 2500 10350 2500
$Comp
L Connector_Generic:Conn_01x03 J10
U 1 1 5C0AD756
P 6050 2400
F 0 "J10" H 6130 2442 50  0000 L CNN
F 1 "Conn_01x03" H 6130 2351 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 6050 2400 50  0001 C CNN
F 3 "~" H 6050 2400 50  0001 C CNN
	1    6050 2400
	1    0    0    -1  
$EndComp
Text GLabel 5750 2400 0    50   Input ~ 0
+6V
Text GLabel 5750 2300 0    50   Input ~ 0
SERVO16
Text GLabel 5750 2500 0    50   Input ~ 0
servos_GND
Wire Wire Line
	5750 2300 5850 2300
Wire Wire Line
	5850 2400 5750 2400
Wire Wire Line
	5750 2500 5850 2500
Text GLabel 4950 5900 0    50   Input ~ 0
+5V
Text GLabel 5000 6300 0    50   Input ~ 0
SDA
Text GLabel 5350 6300 0    50   Input ~ 0
SCL
Text GLabel 5900 6300 0    50   Input ~ 0
SERVO4
$Comp
L Device:R R1
U 1 1 5C0B3CFE
P 5100 6100
F 0 "R1" H 5170 6146 50  0000 L CNN
F 1 "4k7" H 5170 6055 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 5030 6100 50  0001 C CNN
F 3 "~" H 5100 6100 50  0001 C CNN
	1    5100 6100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5C0B3D7D
P 5450 6100
F 0 "R2" H 5520 6146 50  0000 L CNN
F 1 "4k7" H 5520 6055 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 5380 6100 50  0001 C CNN
F 3 "~" H 5450 6100 50  0001 C CNN
	1    5450 6100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5C0B3DED
P 6000 6100
F 0 "R5" H 6070 6146 50  0000 L CNN
F 1 "4k7" H 6070 6055 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 5930 6100 50  0001 C CNN
F 3 "~" H 6000 6100 50  0001 C CNN
	1    6000 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 5900 5100 5900
Wire Wire Line
	6000 5900 6000 5950
Wire Wire Line
	6000 6250 6000 6300
Wire Wire Line
	6000 6300 5900 6300
Wire Wire Line
	5450 6250 5450 6300
Wire Wire Line
	5450 6300 5350 6300
Wire Wire Line
	5100 6250 5100 6300
Wire Wire Line
	5100 6300 5000 6300
Wire Wire Line
	5100 5950 5100 5900
Connection ~ 5100 5900
Wire Wire Line
	5100 5900 5450 5900
Wire Wire Line
	5450 5950 5450 5900
Connection ~ 5450 5900
Wire Wire Line
	5450 5900 6000 5900
$Comp
L missing_components:SD20 U2
U 1 1 5C0BD073
P 2700 5550
F 0 "U2" H 2600 6165 50  0000 C CNN
F 1 "SD20" H 2600 6074 50  0000 C CNN
F 2 "Package_DIP:DIP-28_W7.62mm_Socket_LongPads" H 2700 5550 50  0001 C CNN
F 3 "" H 2700 5550 50  0001 C CNN
	1    2700 5550
	1    0    0    -1  
$EndComp
Text GLabel 3200 5250 2    50   Input ~ 0
SERVO0
Text GLabel 3200 5350 2    50   Input ~ 0
SERVO1
Text GLabel 3200 5450 2    50   Input ~ 0
SERVO2
Text GLabel 3200 5550 2    50   Input ~ 0
SERVO3
Text GLabel 3200 5650 2    50   Input ~ 0
SERVO4
Text GLabel 3200 5750 2    50   Input ~ 0
SERVO5
Text GLabel 3200 5850 2    50   Input ~ 0
SERVO6
Text GLabel 3200 5950 2    50   Input ~ 0
SERVO7
Text GLabel 3200 6050 2    50   Input ~ 0
SERVO8
Text GLabel 3200 6150 2    50   Input ~ 0
SERVO9
Text GLabel 3200 6250 2    50   Input ~ 0
SERVO10
Text GLabel 3200 6350 2    50   Input ~ 0
SERVO11
Text GLabel 3200 6450 2    50   Input ~ 0
SERVO12
Text GLabel 3200 6550 2    50   Input ~ 0
SERVO13
Text GLabel 3200 6650 2    50   Input ~ 0
SERVO14
Text GLabel 3200 6750 2    50   Input ~ 0
SERVO15
Text GLabel 3200 6850 2    50   Input ~ 0
SERVO16
Text GLabel 3200 6950 2    50   Input ~ 0
SERVO17
Text GLabel 3200 7050 2    50   Input ~ 0
SERVO18
Text GLabel 3200 7150 2    50   Input ~ 0
SERVO19
Wire Wire Line
	3200 7150 3100 7150
Wire Wire Line
	3100 7050 3200 7050
Wire Wire Line
	3200 6950 3100 6950
Wire Wire Line
	3100 6850 3200 6850
Wire Wire Line
	3200 6750 3100 6750
Wire Wire Line
	3100 6650 3200 6650
Wire Wire Line
	3200 6550 3100 6550
Wire Wire Line
	3100 6450 3200 6450
Wire Wire Line
	3200 6350 3100 6350
Wire Wire Line
	3100 6250 3200 6250
Wire Wire Line
	3200 6150 3100 6150
Wire Wire Line
	3100 6050 3200 6050
Wire Wire Line
	3200 5950 3100 5950
Wire Wire Line
	3100 5850 3200 5850
Wire Wire Line
	3200 5750 3100 5750
Wire Wire Line
	3100 5650 3200 5650
Wire Wire Line
	3200 5550 3100 5550
Wire Wire Line
	3100 5450 3200 5450
Wire Wire Line
	3200 5350 3100 5350
Wire Wire Line
	3100 5250 3200 5250
Text GLabel 1900 5300 0    50   Input ~ 0
+5V
Text GLabel 1900 5550 0    50   Input ~ 0
GND
Text GLabel 1900 6400 0    50   Input ~ 0
SCL
Text GLabel 1900 6500 0    50   Input ~ 0
SDA
Wire Wire Line
	2100 6400 1900 6400
Wire Wire Line
	1900 6500 2100 6500
Wire Wire Line
	1900 5300 2000 5300
Wire Wire Line
	2000 5300 2000 5250
Wire Wire Line
	2000 5250 2100 5250
Wire Wire Line
	2100 5350 2000 5350
Wire Wire Line
	2000 5350 2000 5300
Connection ~ 2000 5300
Wire Wire Line
	2100 5500 2000 5500
Wire Wire Line
	2000 5500 2000 5550
Wire Wire Line
	2000 5550 1900 5550
Wire Wire Line
	2100 5600 2000 5600
Wire Wire Line
	2000 5600 2000 5550
Connection ~ 2000 5550
$Comp
L Device:Resonator Y1
U 1 1 5C13B695
P 1600 5850
F 0 "Y1" V 1554 5961 50  0000 L CNN
F 1 "Resonator" V 1645 5961 50  0000 L CNN
F 2 "Crystal:Resonator-3Pin_W7.0mm_H2.5mm" H 1575 5850 50  0001 C CNN
F 3 "~" H 1575 5850 50  0001 C CNN
	1    1600 5850
	0    1    1    0   
$EndComp
Wire Wire Line
	2100 5800 1950 5800
Wire Wire Line
	1950 5800 1950 5650
Wire Wire Line
	1950 5650 1600 5650
Wire Wire Line
	1600 5650 1600 5700
Wire Wire Line
	1600 6000 1600 6050
Wire Wire Line
	1600 6050 1950 6050
Wire Wire Line
	1950 6050 1950 5900
Wire Wire Line
	1950 5900 2100 5900
Wire Wire Line
	1400 5850 1350 5850
Wire Wire Line
	1350 5850 1350 5450
Wire Wire Line
	1350 5450 2000 5450
Wire Wire Line
	2000 5450 2000 5500
Connection ~ 2000 5500
Text GLabel 3450 3250 2    50   Input ~ 0
SCL
Text GLabel 3450 3150 2    50   Input ~ 0
SDA
Wire Wire Line
	3300 3150 3450 3150
Wire Wire Line
	3300 3250 3450 3250
$Comp
L Device:C C1
U 1 1 5C16D39A
P 1350 5150
F 0 "C1" H 1465 5196 50  0000 L CNN
F 1 "100n" H 1465 5105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1388 5000 50  0001 C CNN
F 3 "~" H 1350 5150 50  0001 C CNN
	1    1350 5150
	1    0    0    -1  
$EndComp
Text GLabel 1300 5350 0    50   Input ~ 0
GND
Text GLabel 1300 4950 0    50   Input ~ 0
+5V
Wire Wire Line
	1350 5000 1350 4950
Wire Wire Line
	1350 4950 1300 4950
Wire Wire Line
	1300 5350 1350 5350
Wire Wire Line
	1350 5350 1350 5300
$Comp
L Device:Crystal Y2
U 1 1 5C17D4A9
P 3900 2500
F 0 "Y2" V 3854 2631 50  0000 L CNN
F 1 "Crystal" V 3900 2100 50  0000 L CNN
F 2 "Crystal:Crystal_HC49-4H_Vertical" H 3900 2500 50  0001 C CNN
F 3 "~" H 3900 2500 50  0001 C CNN
	1    3900 2500
	0    1    1    0   
$EndComp
Wire Wire Line
	3600 2450 3300 2450
Wire Wire Line
	3300 2550 3600 2550
Wire Wire Line
	3600 2550 3600 2700
Wire Wire Line
	3600 2700 3900 2700
Wire Wire Line
	3900 2700 3900 2650
Wire Wire Line
	3600 2300 3900 2300
Wire Wire Line
	3900 2300 3900 2350
Wire Wire Line
	3600 2300 3600 2450
$Comp
L Device:C C3
U 1 1 5C196DBA
P 4300 2300
F 0 "C3" V 4048 2300 50  0000 C CNN
F 1 "22p" V 4139 2300 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4338 2150 50  0001 C CNN
F 3 "~" H 4300 2300 50  0001 C CNN
	1    4300 2300
	0    1    1    0   
$EndComp
$Comp
L Device:C C4
U 1 1 5C196E71
P 4300 2700
F 0 "C4" V 4048 2700 50  0000 C CNN
F 1 "22p" V 4139 2700 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4338 2550 50  0001 C CNN
F 3 "~" H 4300 2700 50  0001 C CNN
	1    4300 2700
	0    1    1    0   
$EndComp
Wire Wire Line
	3900 2300 4150 2300
Connection ~ 3900 2300
Wire Wire Line
	3900 2700 4150 2700
Connection ~ 3900 2700
Wire Wire Line
	4500 2700 4450 2700
Wire Wire Line
	4500 2700 4500 2500
Wire Wire Line
	4500 2300 4450 2300
Text GLabel 4600 2500 2    50   Input ~ 0
GND
Wire Wire Line
	4600 2500 4500 2500
Connection ~ 4500 2500
Wire Wire Line
	4500 2500 4500 2300
Text GLabel 8100 2900 0    50   Input ~ 0
GND
Text GLabel 8100 2800 0    50   Input ~ 0
V_LIPO
Wire Wire Line
	8250 2800 8100 2800
Wire Wire Line
	8100 2900 8250 2900
Text GLabel 3400 2750 2    50   Input ~ 0
LVL_LIPO
Wire Wire Line
	3400 2750 3300 2750
Text GLabel 8650 3700 0    50   Input ~ 0
LVL_LIPO
Text GLabel 8650 3500 0    50   Input ~ 0
V_LIPO
Text GLabel 8650 3900 0    50   Input ~ 0
GND
$Comp
L Device:R R8
U 1 1 5C1E1DB2
P 8950 3500
F 0 "R8" V 8950 3500 50  0000 C CNN
F 1 "10k" V 8850 3500 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 8880 3500 50  0001 C CNN
F 3 "~" H 8950 3500 50  0001 C CNN
	1    8950 3500
	0    1    1    0   
$EndComp
$Comp
L Device:R R9
U 1 1 5C1E1E75
P 8950 3900
F 0 "R9" V 8950 3900 50  0000 C CNN
F 1 "10k" V 8850 3900 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 8880 3900 50  0001 C CNN
F 3 "~" H 8950 3900 50  0001 C CNN
	1    8950 3900
	0    1    1    0   
$EndComp
Wire Wire Line
	8650 3500 8800 3500
Wire Wire Line
	9100 3500 9200 3500
Wire Wire Line
	9200 3500 9200 3700
Wire Wire Line
	8800 3900 8650 3900
Wire Wire Line
	8650 3700 9200 3700
Wire Wire Line
	9100 3900 9200 3900
Wire Wire Line
	9200 3900 9200 3700
Connection ~ 9200 3700
$Comp
L Connector_Generic:Conn_01x04 J27
U 1 1 5C24EBC1
P 9250 4300
F 0 "J27" H 9330 4292 50  0000 L CNN
F 1 "Conn_01x04" H 9330 4201 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 9250 4300 50  0001 C CNN
F 3 "~" H 9250 4300 50  0001 C CNN
	1    9250 4300
	1    0    0    -1  
$EndComp
Text GLabel 9000 4500 0    50   Input ~ 0
GND
Text GLabel 9000 4400 0    50   Input ~ 0
eyes_RED
Text GLabel 9000 4300 0    50   Input ~ 0
eyes_GREEN
Text GLabel 9000 4200 0    50   Input ~ 0
eyes_BLUE
Wire Wire Line
	9000 4200 9050 4200
Wire Wire Line
	9050 4300 9000 4300
Wire Wire Line
	9050 4400 9000 4400
Wire Wire Line
	9000 4500 9050 4500
Text GLabel 3450 4050 2    50   Input ~ 0
eyes_RED
Text GLabel 3450 4150 2    50   Input ~ 0
eyes_GREEN
Text GLabel 3500 1950 2    50   Input ~ 0
eyes_BLUE
Wire Wire Line
	3300 1950 3500 1950
$Comp
L Device:C C2
U 1 1 5C2A042B
P 1850 1850
F 0 "C2" V 1598 1850 50  0000 C CNN
F 1 "47u" V 1689 1850 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1888 1700 50  0001 C CNN
F 3 "~" H 1850 1850 50  0001 C CNN
	1    1850 1850
	0    1    1    0   
$EndComp
Wire Wire Line
	2100 1850 2000 1850
Wire Wire Line
	1700 1850 1650 1850
Wire Wire Line
	1650 1450 2700 1450
Wire Wire Line
	1650 1450 1650 1850
Connection ~ 2700 1450
Text GLabel 3400 2150 2    50   Input ~ 0
MOSI
Text GLabel 3400 2250 2    50   Input ~ 0
MISO
Wire Wire Line
	3450 4050 3300 4050
Wire Wire Line
	3300 4150 3450 4150
Text GLabel 3500 1850 2    50   Input ~ 0
servos_ON
Wire Wire Line
	3500 1850 3300 1850
Text GLabel 3450 3350 2    50   Input ~ 0
RST
Wire Wire Line
	3300 3350 3450 3350
Text GLabel 3400 2350 2    50   Input ~ 0
SCK
Wire Wire Line
	3300 2150 3400 2150
Wire Wire Line
	3400 2250 3300 2250
Wire Wire Line
	3300 2350 3400 2350
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J1
U 1 1 5C31F80C
P 4250 1350
F 0 "J1" H 4300 1667 50  0000 C CNN
F 1 "Conn_02x03_Odd_Even" H 4300 1576 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical" H 4250 1350 50  0001 C CNN
F 3 "~" H 4250 1350 50  0001 C CNN
	1    4250 1350
	1    0    0    -1  
$EndComp
Text GLabel 3950 1250 0    50   Input ~ 0
MISO
Text GLabel 3950 1350 0    50   Input ~ 0
SCK
Text GLabel 3950 1450 0    50   Input ~ 0
RST
Text GLabel 4650 1250 2    50   Input ~ 0
+5V
Text GLabel 4650 1350 2    50   Input ~ 0
MOSI
Text GLabel 4650 1450 2    50   Input ~ 0
GND
Wire Wire Line
	4550 1250 4650 1250
Wire Wire Line
	4650 1350 4550 1350
Wire Wire Line
	4550 1450 4650 1450
Wire Wire Line
	4050 1450 3950 1450
Wire Wire Line
	4050 1350 3950 1350
Wire Wire Line
	4050 1250 3950 1250
$Comp
L Connector_Generic:Conn_01x04 J33
U 1 1 5C0E436B
P 10550 2800
F 0 "J33" H 10630 2792 50  0000 L CNN
F 1 "Conn_01x04" H 10630 2701 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 10550 2800 50  0001 C CNN
F 3 "~" H 10550 2800 50  0001 C CNN
	1    10550 2800
	1    0    0    -1  
$EndComp
Text GLabel 10250 2700 0    50   Input ~ 0
+5V
Text GLabel 10250 2800 0    50   Input ~ 0
SDA
Text GLabel 10250 2900 0    50   Input ~ 0
SCL
Text GLabel 10250 3000 0    50   Input ~ 0
GND
Wire Wire Line
	10250 2700 10350 2700
Wire Wire Line
	10350 2800 10250 2800
Wire Wire Line
	10250 2900 10350 2900
Wire Wire Line
	10350 3000 10250 3000
$Comp
L Connector_Generic:Conn_01x04 J34
U 1 1 5C120774
P 10550 3250
F 0 "J34" H 10630 3242 50  0000 L CNN
F 1 "Conn_01x04" H 10630 3151 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 10550 3250 50  0001 C CNN
F 3 "~" H 10550 3250 50  0001 C CNN
	1    10550 3250
	1    0    0    -1  
$EndComp
Text GLabel 10250 3150 0    50   Input ~ 0
+5V
Text GLabel 10250 3250 0    50   Input ~ 0
SDA
Text GLabel 10250 3350 0    50   Input ~ 0
SCL
Text GLabel 10250 3450 0    50   Input ~ 0
GND
Wire Wire Line
	10250 3150 10350 3150
Wire Wire Line
	10350 3250 10250 3250
Wire Wire Line
	10250 3350 10350 3350
Wire Wire Line
	10350 3450 10250 3450
$Comp
L Connector_Generic:Conn_01x04 J35
U 1 1 5C13014D
P 10550 3700
F 0 "J35" H 10630 3692 50  0000 L CNN
F 1 "Conn_01x04" H 10630 3601 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 10550 3700 50  0001 C CNN
F 3 "~" H 10550 3700 50  0001 C CNN
	1    10550 3700
	1    0    0    -1  
$EndComp
Text GLabel 10250 3600 0    50   Input ~ 0
+5V
Text GLabel 10250 3700 0    50   Input ~ 0
SDA
Text GLabel 10250 3800 0    50   Input ~ 0
SCL
Text GLabel 10250 3900 0    50   Input ~ 0
GND
Wire Wire Line
	10250 3600 10350 3600
Wire Wire Line
	10350 3700 10250 3700
Wire Wire Line
	10250 3800 10350 3800
Wire Wire Line
	10350 3900 10250 3900
Text Label 10150 2500 0    50   ~ 0
I2C
$Comp
L Connector_Generic:Conn_01x04 J19
U 1 1 5C177884
P 7650 4550
F 0 "J19" H 7730 4542 50  0000 L CNN
F 1 "Conn_01x04" H 7730 4451 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 7650 4550 50  0001 C CNN
F 3 "~" H 7650 4550 50  0001 C CNN
	1    7650 4550
	1    0    0    -1  
$EndComp
Text GLabel 7350 4450 0    50   Input ~ 0
+5V
Text GLabel 7350 4550 0    50   Input ~ 0
GND
Wire Wire Line
	7350 4450 7450 4450
Wire Wire Line
	7450 4550 7350 4550
Wire Wire Line
	7350 4650 7450 4650
Text GLabel 7350 4650 0    50   Input ~ 0
RX
Text GLabel 6750 4750 0    50   Input ~ 0
TX
$Comp
L Device:R R6
U 1 1 5C18AD35
P 7050 4750
F 0 "R6" V 7050 4750 50  0000 C CNN
F 1 "1k" V 6934 4750 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 6980 4750 50  0001 C CNN
F 3 "~" H 7050 4750 50  0001 C CNN
	1    7050 4750
	0    1    1    0   
$EndComp
$Comp
L Device:R R7
U 1 1 5C18ADE7
P 7050 4850
F 0 "R7" V 7050 4850 50  0000 C CNN
F 1 "2k" V 7150 4850 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 6980 4850 50  0001 C CNN
F 3 "~" H 7050 4850 50  0001 C CNN
	1    7050 4850
	0    1    1    0   
$EndComp
Text GLabel 6750 4850 0    50   Input ~ 0
GND
Wire Wire Line
	6750 4750 6900 4750
Wire Wire Line
	7200 4750 7350 4750
Wire Wire Line
	7350 4850 7350 4750
Connection ~ 7350 4750
Wire Wire Line
	7350 4750 7450 4750
Text GLabel 3450 3650 2    50   Input ~ 0
TX
Text GLabel 3450 3550 2    50   Input ~ 0
RX
Wire Wire Line
	3300 3550 3450 3550
Wire Wire Line
	3450 3650 3300 3650
Text GLabel 3400 2850 2    50   Input ~ 0
ADC1
Text GLabel 3400 2950 2    50   Input ~ 0
ADC2
Text GLabel 3400 3050 2    50   Input ~ 0
ADC3
Wire Wire Line
	3300 2850 3400 2850
Wire Wire Line
	3400 2950 3300 2950
Wire Wire Line
	3300 3050 3400 3050
Wire Wire Line
	7350 4850 7200 4850
Wire Wire Line
	6900 4850 6750 4850
$Comp
L Connector_Generic:Conn_01x03 J11
U 1 1 5C2E0690
P 7200 3300
F 0 "J11" H 7280 3342 50  0000 L CNN
F 1 "Conn_01x03" H 7280 3251 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 7200 3300 50  0001 C CNN
F 3 "~" H 7200 3300 50  0001 C CNN
	1    7200 3300
	1    0    0    -1  
$EndComp
Text GLabel 6900 3200 0    50   Input ~ 0
ADC1
Text GLabel 6900 3400 0    50   Input ~ 0
+5V
Text GLabel 6900 3300 0    50   Input ~ 0
GND
Wire Wire Line
	7000 3200 6900 3200
Wire Wire Line
	6900 3300 7000 3300
Wire Wire Line
	7000 3400 6900 3400
$Comp
L Connector_Generic:Conn_01x03 J12
U 1 1 5C320BB9
P 7200 3650
F 0 "J12" H 7280 3692 50  0000 L CNN
F 1 "Conn_01x03" H 7280 3601 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 7200 3650 50  0001 C CNN
F 3 "~" H 7200 3650 50  0001 C CNN
	1    7200 3650
	1    0    0    -1  
$EndComp
Text GLabel 6900 3550 0    50   Input ~ 0
ADC2
Text GLabel 6900 3750 0    50   Input ~ 0
+5V
Text GLabel 6900 3650 0    50   Input ~ 0
GND
Wire Wire Line
	7000 3550 6900 3550
Wire Wire Line
	6900 3650 7000 3650
Wire Wire Line
	7000 3750 6900 3750
$Comp
L Connector_Generic:Conn_01x03 J13
U 1 1 5C33699E
P 7200 4000
F 0 "J13" H 7280 4042 50  0000 L CNN
F 1 "Conn_01x03" H 7280 3951 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 7200 4000 50  0001 C CNN
F 3 "~" H 7200 4000 50  0001 C CNN
	1    7200 4000
	1    0    0    -1  
$EndComp
Text GLabel 6900 3900 0    50   Input ~ 0
ADC3
Text GLabel 6900 4100 0    50   Input ~ 0
+5V
Text GLabel 6900 4000 0    50   Input ~ 0
GND
Wire Wire Line
	7000 3900 6900 3900
Wire Wire Line
	6900 4000 7000 4000
Wire Wire Line
	7000 4100 6900 4100
$Comp
L Device:R R3
U 1 1 5C420A31
P 5600 4850
F 0 "R3" H 5670 4896 50  0000 L CNN
F 1 "10k" H 5670 4805 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 5530 4850 50  0001 C CNN
F 3 "~" H 5600 4850 50  0001 C CNN
	1    5600 4850
	0    -1   -1   0   
$EndComp
Text GLabel 5850 4850 2    50   Input ~ 0
GND
Text GLabel 5350 4850 0    50   Input ~ 0
servos_ON
Wire Wire Line
	5350 4850 5450 4850
Wire Wire Line
	5750 4850 5850 4850
Text GLabel 8100 3000 0    50   Input ~ 0
+5V
NoConn ~ 2100 2050
NoConn ~ 2100 2150
NoConn ~ 3300 4250
NoConn ~ 3300 3950
NoConn ~ 3300 3850
NoConn ~ 3300 3750
NoConn ~ 3300 2050
Wire Wire Line
	8250 3000 8100 3000
$Comp
L Connector_Generic:Conn_01x03 J2
U 1 1 5C1EF056
P 8450 2900
F 0 "J2" H 8530 2942 50  0000 L CNN
F 1 "Conn_01x03" H 8530 2851 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 8450 2900 50  0001 C CNN
F 3 "~" H 8450 2900 50  0001 C CNN
	1    8450 2900
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x01 J3
U 1 1 5C22C0F9
P 5250 3100
F 0 "J3" H 5300 3317 50  0000 C CNN
F 1 "Conn_02x01" H 5300 3226 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x01_P2.54mm_Vertical" H 5250 3100 50  0001 C CNN
F 3 "~" H 5250 3100 50  0001 C CNN
	1    5250 3100
	1    0    0    -1  
$EndComp
Text GLabel 4900 3100 0    50   Input ~ 0
+6V
Text GLabel 5700 3100 2    50   Input ~ 0
GND
Wire Wire Line
	5550 3100 5700 3100
Wire Wire Line
	5050 3100 4900 3100
$EndSCHEMATC
