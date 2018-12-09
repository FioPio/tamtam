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
L MCU_Microchip_ATmega:ATmega328P-AU U?
U 1 1 5C41DB19
P 2700 3050
F 0 "U?" H 2700 1464 50  0000 C CNN
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
L Transistor_FET:IRF3205 Q?
U 1 1 5C41DD77
P 4450 950
F 0 "Q?" H 4656 996 50  0000 L CNN
F 1 "IRF3205" H 4656 905 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 4700 875 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irf3205.pdf" H 4450 950 50  0001 L CNN
	1    4450 950 
	1    0    0    -1  
$EndComp
Text GLabel 4600 600  2    50   Input ~ 0
servos_GND
Text GLabel 4650 1300 2    50   Input ~ 0
GND
Text GLabel 4150 950  0    50   Input ~ 0
servos_ON
Wire Wire Line
	4550 750  4550 600 
Wire Wire Line
	4550 600  4600 600 
Wire Wire Line
	4650 1300 4550 1300
Wire Wire Line
	4550 1300 4550 1150
Wire Wire Line
	4250 950  4150 950 
$Comp
L Connector_Generic:Conn_01x03 J?
U 1 1 5C0A9AE3
P 7500 1000
F 0 "J?" H 7580 1042 50  0000 L CNN
F 1 "Conn_01x03" H 7580 951 50  0000 L CNN
F 2 "" H 7500 1000 50  0001 C CNN
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
L Connector_Generic:Conn_01x03 J?
U 1 1 5C0AA116
P 9100 1000
F 0 "J?" H 9180 1042 50  0000 L CNN
F 1 "Conn_01x03" H 9180 951 50  0000 L CNN
F 2 "" H 9100 1000 50  0001 C CNN
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
L Connector_Generic:Conn_01x03 J?
U 1 1 5C0AA268
P 10550 1000
F 0 "J?" H 10630 1042 50  0000 L CNN
F 1 "Conn_01x03" H 10630 951 50  0000 L CNN
F 2 "" H 10550 1000 50  0001 C CNN
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
L Connector_Generic:Conn_01x03 J?
U 1 1 5C0AA46A
P 6050 1000
F 0 "J?" H 6130 1042 50  0000 L CNN
F 1 "Conn_01x03" H 6130 951 50  0000 L CNN
F 2 "" H 6050 1000 50  0001 C CNN
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
L Connector_Generic:Conn_01x03 J?
U 1 1 5C0AA852
P 7500 1350
F 0 "J?" H 7580 1392 50  0000 L CNN
F 1 "Conn_01x03" H 7580 1301 50  0000 L CNN
F 2 "" H 7500 1350 50  0001 C CNN
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
L Connector_Generic:Conn_01x03 J?
U 1 1 5C0AA85F
P 9100 1350
F 0 "J?" H 9180 1392 50  0000 L CNN
F 1 "Conn_01x03" H 9180 1301 50  0000 L CNN
F 2 "" H 9100 1350 50  0001 C CNN
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
L Connector_Generic:Conn_01x03 J?
U 1 1 5C0AA86C
P 10550 1350
F 0 "J?" H 10630 1392 50  0000 L CNN
F 1 "Conn_01x03" H 10630 1301 50  0000 L CNN
F 2 "" H 10550 1350 50  0001 C CNN
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
L Connector_Generic:Conn_01x03 J?
U 1 1 5C0AA879
P 6050 1350
F 0 "J?" H 6130 1392 50  0000 L CNN
F 1 "Conn_01x03" H 6130 1301 50  0000 L CNN
F 2 "" H 6050 1350 50  0001 C CNN
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
L Connector_Generic:Conn_01x03 J?
U 1 1 5C0AAFE2
P 7500 1700
F 0 "J?" H 7580 1742 50  0000 L CNN
F 1 "Conn_01x03" H 7580 1651 50  0000 L CNN
F 2 "" H 7500 1700 50  0001 C CNN
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
L Connector_Generic:Conn_01x03 J?
U 1 1 5C0AAFEF
P 9100 1700
F 0 "J?" H 9180 1742 50  0000 L CNN
F 1 "Conn_01x03" H 9180 1651 50  0000 L CNN
F 2 "" H 9100 1700 50  0001 C CNN
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
L Connector_Generic:Conn_01x03 J?
U 1 1 5C0AAFFC
P 10550 1700
F 0 "J?" H 10630 1742 50  0000 L CNN
F 1 "Conn_01x03" H 10630 1651 50  0000 L CNN
F 2 "" H 10550 1700 50  0001 C CNN
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
L Connector_Generic:Conn_01x03 J?
U 1 1 5C0AB009
P 6050 1700
F 0 "J?" H 6130 1742 50  0000 L CNN
F 1 "Conn_01x03" H 6130 1651 50  0000 L CNN
F 2 "" H 6050 1700 50  0001 C CNN
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
L Connector_Generic:Conn_01x03 J?
U 1 1 5C0ABE71
P 7500 2050
F 0 "J?" H 7580 2092 50  0000 L CNN
F 1 "Conn_01x03" H 7580 2001 50  0000 L CNN
F 2 "" H 7500 2050 50  0001 C CNN
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
L Connector_Generic:Conn_01x03 J?
U 1 1 5C0ABE7E
P 9100 2050
F 0 "J?" H 9180 2092 50  0000 L CNN
F 1 "Conn_01x03" H 9180 2001 50  0000 L CNN
F 2 "" H 9100 2050 50  0001 C CNN
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
L Connector_Generic:Conn_01x03 J?
U 1 1 5C0ABE8B
P 10550 2050
F 0 "J?" H 10630 2092 50  0000 L CNN
F 1 "Conn_01x03" H 10630 2001 50  0000 L CNN
F 2 "" H 10550 2050 50  0001 C CNN
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
L Connector_Generic:Conn_01x03 J?
U 1 1 5C0ABE98
P 6050 2050
F 0 "J?" H 6130 2092 50  0000 L CNN
F 1 "Conn_01x03" H 6130 2001 50  0000 L CNN
F 2 "" H 6050 2050 50  0001 C CNN
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
L Connector_Generic:Conn_01x03 J?
U 1 1 5C0AD72F
P 7500 2400
F 0 "J?" H 7580 2442 50  0000 L CNN
F 1 "Conn_01x03" H 7580 2351 50  0000 L CNN
F 2 "" H 7500 2400 50  0001 C CNN
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
L Connector_Generic:Conn_01x03 J?
U 1 1 5C0AD73C
P 9100 2400
F 0 "J?" H 9180 2442 50  0000 L CNN
F 1 "Conn_01x03" H 9180 2351 50  0000 L CNN
F 2 "" H 9100 2400 50  0001 C CNN
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
L Connector_Generic:Conn_01x03 J?
U 1 1 5C0AD749
P 10550 2400
F 0 "J?" H 10630 2442 50  0000 L CNN
F 1 "Conn_01x03" H 10630 2351 50  0000 L CNN
F 2 "" H 10550 2400 50  0001 C CNN
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
L Connector_Generic:Conn_01x03 J?
U 1 1 5C0AD756
P 6050 2400
F 0 "J?" H 6130 2442 50  0000 L CNN
F 1 "Conn_01x03" H 6130 2351 50  0000 L CNN
F 2 "" H 6050 2400 50  0001 C CNN
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
Text GLabel 2250 550  0    50   Input ~ 0
+5V
Text GLabel 2300 950  0    50   Input ~ 0
SDA
Text GLabel 2650 950  0    50   Input ~ 0
SCL
Text GLabel 3200 950  0    50   Input ~ 0
SERVO4
$Comp
L Device:R R?
U 1 1 5C0B3CFE
P 2400 750
F 0 "R?" H 2470 796 50  0000 L CNN
F 1 "4k7" H 2470 705 50  0000 L CNN
F 2 "" V 2330 750 50  0001 C CNN
F 3 "~" H 2400 750 50  0001 C CNN
	1    2400 750 
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5C0B3D7D
P 2750 750
F 0 "R?" H 2820 796 50  0000 L CNN
F 1 "4k7" H 2820 705 50  0000 L CNN
F 2 "" V 2680 750 50  0001 C CNN
F 3 "~" H 2750 750 50  0001 C CNN
	1    2750 750 
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5C0B3DED
P 3300 750
F 0 "R?" H 3370 796 50  0000 L CNN
F 1 "4k7" H 3370 705 50  0000 L CNN
F 2 "" V 3230 750 50  0001 C CNN
F 3 "~" H 3300 750 50  0001 C CNN
	1    3300 750 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 550  2400 550 
Wire Wire Line
	3300 550  3300 600 
Wire Wire Line
	3300 900  3300 950 
Wire Wire Line
	3300 950  3200 950 
Wire Wire Line
	2750 900  2750 950 
Wire Wire Line
	2750 950  2650 950 
Wire Wire Line
	2400 900  2400 950 
Wire Wire Line
	2400 950  2300 950 
Wire Wire Line
	2400 600  2400 550 
Connection ~ 2400 550 
Wire Wire Line
	2400 550  2750 550 
Wire Wire Line
	2750 600  2750 550 
Connection ~ 2750 550 
Wire Wire Line
	2750 550  3300 550 
$Comp
L missing_components:SD20 U?
U 1 1 5C0BD073
P 2700 5550
F 0 "U?" H 2600 6165 50  0000 C CNN
F 1 "SD20" H 2600 6074 50  0000 C CNN
F 2 "" H 2700 5550 50  0001 C CNN
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
L Device:Resonator Y?
U 1 1 5C13B695
P 1600 5850
F 0 "Y?" V 1554 5961 50  0000 L CNN
F 1 "Resonator" V 1645 5961 50  0000 L CNN
F 2 "" H 1575 5850 50  0001 C CNN
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
L Device:C C?
U 1 1 5C16D39A
P 1350 5150
F 0 "C?" H 1465 5196 50  0000 L CNN
F 1 "100n" H 1465 5105 50  0000 L CNN
F 2 "" H 1388 5000 50  0001 C CNN
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
L Device:Crystal Y?
U 1 1 5C17D4A9
P 3900 2500
F 0 "Y?" V 3854 2631 50  0000 L CNN
F 1 "Crystal" V 3900 2100 50  0000 L CNN
F 2 "" H 3900 2500 50  0001 C CNN
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
L Device:C C?
U 1 1 5C196DBA
P 4300 2300
F 0 "C?" V 4048 2300 50  0000 C CNN
F 1 "22p" V 4139 2300 50  0000 C CNN
F 2 "" H 4338 2150 50  0001 C CNN
F 3 "~" H 4300 2300 50  0001 C CNN
	1    4300 2300
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 5C196E71
P 4300 2700
F 0 "C?" V 4048 2700 50  0000 C CNN
F 1 "22p" V 4139 2700 50  0000 C CNN
F 2 "" H 4338 2550 50  0001 C CNN
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
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 5C1C42BB
P 1200 800
F 0 "J?" H 1280 792 50  0000 L CNN
F 1 "Conn_01x02" H 1280 701 50  0000 L CNN
F 2 "" H 1200 800 50  0001 C CNN
F 3 "~" H 1200 800 50  0001 C CNN
	1    1200 800 
	1    0    0    -1  
$EndComp
Text GLabel 850  900  0    50   Input ~ 0
GND
Text GLabel 850  800  0    50   Input ~ 0
V_LIPO
Wire Wire Line
	1000 800  850  800 
Wire Wire Line
	850  900  1000 900 
Text GLabel 3400 2750 2    50   Input ~ 0
LVL_LIPO
Wire Wire Line
	3400 2750 3300 2750
Text GLabel 1000 1300 0    50   Input ~ 0
LVL_LIPO
Text GLabel 1000 1100 0    50   Input ~ 0
V_LIPO
Text GLabel 1000 1500 0    50   Input ~ 0
GND
$Comp
L Device:R R?
U 1 1 5C1E1DB2
P 1300 1100
F 0 "R?" V 1300 1100 50  0000 C CNN
F 1 "10k" V 1200 1100 50  0000 C CNN
F 2 "" V 1230 1100 50  0001 C CNN
F 3 "~" H 1300 1100 50  0001 C CNN
	1    1300 1100
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5C1E1E75
P 1300 1500
F 0 "R?" V 1300 1500 50  0000 C CNN
F 1 "10k" V 1200 1500 50  0000 C CNN
F 2 "" V 1230 1500 50  0001 C CNN
F 3 "~" H 1300 1500 50  0001 C CNN
	1    1300 1500
	0    1    1    0   
$EndComp
Wire Wire Line
	1000 1100 1150 1100
Wire Wire Line
	1450 1100 1550 1100
Wire Wire Line
	1550 1100 1550 1300
Wire Wire Line
	1150 1500 1000 1500
Wire Wire Line
	1000 1300 1550 1300
Wire Wire Line
	1450 1500 1550 1500
Wire Wire Line
	1550 1500 1550 1300
Connection ~ 1550 1300
$Comp
L Device:LED D?
U 1 1 5C221EED
P 10000 2900
F 0 "D?" H 9992 2645 50  0000 C CNN
F 1 "LED" H 9992 2736 50  0000 C CNN
F 2 "" H 10000 2900 50  0001 C CNN
F 3 "~" H 10000 2900 50  0001 C CNN
	1    10000 2900
	-1   0    0    1   
$EndComp
Text GLabel 9750 2900 0    50   Input ~ 0
+5V
$Comp
L Device:R R?
U 1 1 5C22220B
P 10450 2900
F 0 "R?" V 10243 2900 50  0000 C CNN
F 1 "220" V 10334 2900 50  0000 C CNN
F 2 "" V 10380 2900 50  0001 C CNN
F 3 "~" H 10450 2900 50  0001 C CNN
	1    10450 2900
	0    1    1    0   
$EndComp
Text GLabel 10700 2900 2    50   Input ~ 0
GND
Wire Wire Line
	9750 2900 9850 2900
Wire Wire Line
	10150 2900 10300 2900
Wire Wire Line
	10600 2900 10700 2900
$Comp
L Connector_Generic:Conn_01x04 J?
U 1 1 5C24EBC1
P 10600 3250
F 0 "J?" H 10680 3242 50  0000 L CNN
F 1 "Conn_01x04" H 10680 3151 50  0000 L CNN
F 2 "" H 10600 3250 50  0001 C CNN
F 3 "~" H 10600 3250 50  0001 C CNN
	1    10600 3250
	1    0    0    -1  
$EndComp
Text GLabel 10350 3450 0    50   Input ~ 0
GND
Text GLabel 10350 3350 0    50   Input ~ 0
eyes_RED
Text GLabel 10350 3250 0    50   Input ~ 0
eyes_GREEN
Text GLabel 10350 3150 0    50   Input ~ 0
eyes_BLUE
Wire Wire Line
	10350 3150 10400 3150
Wire Wire Line
	10400 3250 10350 3250
Wire Wire Line
	10400 3350 10350 3350
Wire Wire Line
	10350 3450 10400 3450
Text GLabel 3450 4050 2    50   Input ~ 0
eyes_RED
Text GLabel 3450 4150 2    50   Input ~ 0
eyes_GREEN
Text GLabel 3500 1950 2    50   Input ~ 0
eyes_BLUE
Wire Wire Line
	3300 1950 3500 1950
$Comp
L Device:C C?
U 1 1 5C2A042B
P 1850 1850
F 0 "C?" V 1598 1850 50  0000 C CNN
F 1 "47u" V 1689 1850 50  0000 C CNN
F 2 "" H 1888 1700 50  0001 C CNN
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
L Connector_Generic:Conn_02x03_Odd_Even J?
U 1 1 5C31F80C
P 1200 2600
F 0 "J?" H 1250 2917 50  0000 C CNN
F 1 "Conn_02x03_Odd_Even" H 1250 2826 50  0000 C CNN
F 2 "" H 1200 2600 50  0001 C CNN
F 3 "~" H 1200 2600 50  0001 C CNN
	1    1200 2600
	1    0    0    -1  
$EndComp
Text GLabel 900  2500 0    50   Input ~ 0
MISO
Text GLabel 900  2600 0    50   Input ~ 0
SCK
Text GLabel 900  2700 0    50   Input ~ 0
RST
Text GLabel 1600 2500 2    50   Input ~ 0
+5V
Text GLabel 1600 2600 2    50   Input ~ 0
MOSI
Text GLabel 1600 2700 2    50   Input ~ 0
GND
Wire Wire Line
	1500 2500 1600 2500
Wire Wire Line
	1600 2600 1500 2600
Wire Wire Line
	1500 2700 1600 2700
Wire Wire Line
	1000 2700 900  2700
Wire Wire Line
	1000 2600 900  2600
Wire Wire Line
	1000 2500 900  2500
$EndSCHEMATC
