/***********************************************************************
 *                               TAMTAM                                *
 ***********************************************************************
 * @author FioPio (Ferriol Pey Comas)  @version v1.0 12/01/2019        *
 ***********************************************************************
 * This file provides the principal functions and clases to make the   *
 * Tamtam robot work in arduino.                                       *
 ***********************************************************************/
#if ARDUINO > 22
#include "Arduino.h"
#else
#include "WProgram.h"
#endif
#include "Wire.h"

#ifndef TAMTAM_h
#define TAMTAM_h

#define RED_LED               5
#define GREEN_LED             9
#define BLUE_LED              6
#define SERVOS_MOSFFET        8
#define ARDUINO_I2C_ADDRESS   0x0f
#define SD20                  0x61

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

//Parameters for the system
#define ANGLE_EQUIVALENCE     1.0



typedef enum { OFF=1, RED=2, GREEN=3, BLUE=4, YELLOW=5, CYAN=6, PURPLE=7, WHITE=8, ORANGE=9 }colour;

struct LEG_SETPOINT_T
{
	float x;								//distance in mm
	float y;								//distance in mm
	float z;								//distance in mm
	float epsilon;							//angle in radians
};

struct LEG_CONFIGURATION_T
{
	float alpha;
	float beta;
	float gamma;
	float delta;
	float epsilon;
};

class tamtam
{
   public:
      void set_eyes_colour(unsigned char r, unsigned char g, unsigned char b);
      void set_eyes_colour(colour c);
      void enable_motors();
      void disable_motors();
      void spin();
      void eyes_effect(int cycles);
      unsigned char read_serial();
      void set_servo(int s, float a);
      void tamtam_setup();
      void setExpand();
      
   private:
      bool motors_on;
      void i2c_write(unsigned char dev, unsigned char reg, unsigned char data);
      unsigned char i2c_read(int dev, unsigned char reg);
      
};

LEG_CONFIGURATION_T compute_angles(LEG_SETPOINT_T setpoint);

#endif
