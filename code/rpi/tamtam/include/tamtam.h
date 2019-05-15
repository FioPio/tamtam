/***********************************************************************
 *                               TAMTAM                                *
 ***********************************************************************
 * @author FioPio (Ferriol Pey Comas)  @version v1.1 15/05/2019        *
 ***********************************************************************
 * This file provides the principal functions and clases to make the   *
 * Tamtam robot work in arduino.                                       *
 ***********************************************************************/

#ifndef TAMTAM_h
#include <wiringPi.h>
#include <wiringPiI2C.h>
#include <stdio.h>

#define TAMTAM_h

#define SD20_ADDRESS          0x61
#define ARDUINO_I2C_ADDRESS   0x0f

#define SET_RED_LED           0x01
#define SET_GREEN_LED         0x02
#define SET_BLUE_LED          0x03
#define READ_BATTERY          0x04

//Hardware Configuration (Structure)
#define TA                    15
#define AB                    12
#define BC                    31
#define CD_DIS                31
#define DE                    12
#define EF                    20

//Servo names
#define PE                    1
#define PD                    2
#define TE                    3
#define TD                    4
#define GE                    5
#define GD                    6
#define FE                    7
#define FD                    8
#define AE                    9
#define AD                    10
#define CE                    11
#define CD                    12
#define EE                    13
#define ED                    14
#define BE                    15
#define BD                    16
#define ZE                    17
#define ZD                    18
#define CA                    19

//Home positions
#define BPE                   107.5
#define BPD                   117.5
#define BTE                   99
#define BTD                   85.0
#define BGE                   119
#define BGD                   51.0
#define BFE                   70.0//replace servo
#define BFD                   138.0
#define BAE                   53.0
#define BAD                   67.0
#define BCE                   68.0
#define BCD                   90.0
#define BEE                   90.0
#define BED                   90.0
#define BBE                   90.0
#define BBD                   90.0
#define BZE                   90.0
#define BZD                   90.0
#define BCA                   90.0

//Parameters for the system
#define ANGLE_EQUIVALENCE     256.00/180.0
#define PI                    3.14159265359


typedef enum { OFF=1, RED=2, GREEN=3, BLUE=4, YELLOW=5, CYAN=6, PURPLE=7, WHITE=8, ORANGE=9 }colour;

struct LEG_SETPOINT_T
{
  float x;    //distance in mm
  float y;    //distance in mm
  float z;    //distance in mm
  float zeta; //angle in radians
};

struct LEG_CONFIGURATION_T
{
  float alpha;
  float beta;
  float gamma;
  float delta;
  float epsilon;
  float zeta;
};

class tamtam
{
 public:
  void set_eyes_colour(unsigned char r, unsigned char g, unsigned char b);
  void set_eyes_red_led(unsigned char c);
  void set_eyes_green_led(unsigned char c);
  void set_eyes_blue_led(unsigned char c);
  void set_eyes_colour(colour c);
  void disable_motors();
  void disable_motor(int s);
  void spin();
  unsigned char read_serial();
  void set_servo(int s, float a);
  void setup();
  void setExpand();
  void toHome();
  float get_battery_level();
  
 private:
  int SD20;
  int ARDUINO;
  float to_set_angle[19];
  LEG_CONFIGURATION_T compute_angles(LEG_SETPOINT_T setpoint);
};

#endif
