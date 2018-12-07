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
$EndSCHEMATC