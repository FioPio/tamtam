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
//#include "Wire.h"

#ifndef TAMTAM_h
#define TAMTAM_h

#define RED_LED               5
#define GREEN_LED             9
#define BLUE_LED              6
#define SERVOS_MOSFFET        8
#define ARDUINO_I2C_ADDRESS   0x0f

//Hardware Configuration (Structure)
#define TA
#define AB
#define BC
#define CD
#define DE
#define EF

typedef enum { OFF=1, RED=2, GREEN=3, BLUE=4, YELLOW=5, CYAN=6, PURPLE=7, WHITE=8, ORANGE=9 }colour;

typedef struct LEG_SETPOINT_T
{
	float x;								//distance in mm
	float y;								//distance in mm
	float z;								//distance in mm
	float epsilon;							//angle in radians
};

typedef struct LEG_CONFIGURATION_T
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
      tamtam(bool master);
      void set_eyes_colour(unsigned char r, unsigned char g, unsigned char b);
      void set_eyes_colour(colour c);
      void enable_motors();
      void disable_motors();
      void spin();
      void eyes_effect(int cycles);
      unsigned char read_serial();
      
   private:
      bool motors_on;
      bool _master;
      void tamtam_setup();

};

LEG_CONFIGURATION_T compute_angles(LEG_SETPOINT_T setpoint);

#endif
