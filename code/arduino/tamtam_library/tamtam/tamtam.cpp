/***********************************************************************
 *                               TAMTAM                                *
 ***********************************************************************
 * @author FioPio (Ferriol Pey Comas)  @version v1.0 12/01/2019        *
 ***********************************************************************
 * This file provides the principal functions and clases to make the   *
 * Tamtam robot work in arduino.                                       *
 ***********************************************************************/
 
#include "tamtam.h"
#if ARDUINO > 22
#include "Arduino.h"
#else
#include "WProgram.h"
#include "pins_arduino.h"
#endif
#include "Wire.h"

void tamtam::tamtam_setup()
{
   pinMode(RED_LED,OUTPUT);
   pinMode(GREEN_LED,OUTPUT);
   pinMode(BLUE_LED,OUTPUT);
   pinMode(SERVOS_MOSFFET,OUTPUT);
   //set_eyes_colour(0,255,0);
   disable_motors();
   //Set expanded mode
   //setExpand(); 
}

void tamtam::set_eyes_colour(unsigned char r, unsigned char g, unsigned char b)
{
   analogWrite(RED_LED,r);
   analogWrite(GREEN_LED,g);
   analogWrite(BLUE_LED,b);
}

void tamtam::set_eyes_colour(colour c)
{
   switch(c)
   {
      case OFF:
         set_eyes_colour(0,0,0);
         break;
      case RED:
         set_eyes_colour(255,0,0);
         break;
      case GREEN:
         set_eyes_colour(0,255,0);
         break;
      case BLUE:
         set_eyes_colour(0,0,255);
         break;
      case YELLOW:
         set_eyes_colour(255,255,0);
         break;
      case CYAN:
         set_eyes_colour(0,255,255);
         break;
      case PURPLE:
         set_eyes_colour(255,0,255);
         break;
      case WHITE:
         set_eyes_colour(255,255,255);
         break;
      case ORANGE:
         set_eyes_colour(255,15,0);
         break;
   }	
}

void tamtam::enable_motors()
{
   digitalWrite(SERVOS_MOSFFET,HIGH);
   motors_on=true;
}

void tamtam::disable_motors()
{
   digitalWrite(SERVOS_MOSFFET,LOW);
   motors_on=false;	
}

void tamtam::spin()
{
   unsigned char c=read_serial();
   switch(c)
   {
      case 'r':
         set_eyes_colour(RED);
         break;
      case 'g':
         set_eyes_colour(GREEN);
         break;
      case 'b':
         set_eyes_colour(BLUE);
         break;
      case 'y':
         set_eyes_colour(YELLOW);
         break;
      case 'c':
         set_eyes_colour(CYAN);
         break;
      case 'p':
         set_eyes_colour(PURPLE);
         break;
      case 'w':
         set_eyes_colour(WHITE);
         break;
      case 'o':
         set_eyes_colour(ORANGE);
         break;
      case 'f':
         set_eyes_colour(OFF);
         break;
   }
}

void tamtam::eyes_effect(int cycles)
{
   for(int j=0;j< cycles;j++)
   {
      for(int i=0;i<255;i++)
      {
         set_eyes_colour(255-i,i,0);
         delay(5);
      }
      for(int i=0;i<255;i++)
      {
         set_eyes_colour(0,255-i,i);
         delay(5);
      }
      for(int i=0;i<255;i++)
      {
         set_eyes_colour(i,0,255-i);
         delay(5);
      }
      for(int i=0;i<255;i++)
      {
         set_eyes_colour(255-i,0,i);
         delay(5);
      }
      for(int i=0;i<255;i++)
      {
         set_eyes_colour(0,i,255-i);
         delay(5);
      }
      for(int i=0;i<255;i++)
      {
         set_eyes_colour(i,255-i,0);
         delay(5);
      }      
   }   
}

unsigned char tamtam::read_serial()
{
   unsigned char c=0;
   if(Serial.available()) c=Serial.read();
   return c;
}

void tamtam::set_servo(int s, float a)
{
	if(s>0 and s<20)
	{
		int angle = a * ANGLE_EQUIVALENCE;
		if(angle<0) angle = 0;
		else if (angle>255) angle = 255;
		Wire.beginTransmission(SD20); 
		Wire.write(s);
		Wire.write(angle);
		Wire.endTransmission();
	} 
}


LEG_CONFIGURATION_T compute_angles(LEG_SETPOINT_T setpoint)
{
	LEG_CONFIGURATION_T leg_config;
	float BD_DIS,x,y,z;
	//computing the new frame values
	x=(setpoint.x*cos(setpoint.epsilon))+(setpoint.y*sin(setpoint.epsilon));
	y=(setpoint.y*cos(setpoint.epsilon))-(setpoint.x*sin(setpoint.epsilon));
	z=setpoint.z;
	//computing the joint angles
	leg_config.alpha=atan( x / ( z-TA-EF) );
	float a=y-(AB*sin(leg_config.alpha))-(DE*sin(leg_config.alpha));
	float b=z-(AB*cos(leg_config.alpha))-(DE*cos(leg_config.alpha))-TA;
	BD_DIS=sqrt((x*x)+(a*a)+(b*b));
	leg_config.gamma=PI-acos(((BC*BC)+(CD_DIS*CD_DIS)-(BD_DIS*BD_DIS))/(2*BC*CD_DIS));
	leg_config.delta= asin(x/BD_DIS)+acos(((CD_DIS*CD_DIS)+(BD_DIS*BD_DIS)-(BC*BC))/(2*CD_DIS*BC));
	leg_config.beta=leg_config.gamma-leg_config.delta;
	leg_config.epsilon=setpoint.epsilon;
	return leg_config;
}

void tamtam::i2c_write(unsigned char dev, unsigned char reg, unsigned char data)
{
	Wire.beginTransmission(dev);
	Wire.write(reg);
	Wire.write(data);
	Wire.endTransmission();
    delayMicroseconds(100);
}

unsigned char tamtam::i2c_read(int dev, unsigned char reg)
{
	Wire.beginTransmission(dev);
	Wire.write(reg); 
	Wire.endTransmission();
	return Wire.requestFrom(dev,1);
}

void tamtam::setExpand()
{                     
	Wire.beginTransmission(SD20);
	Wire.write(21);
	Wire.write(27);
	Wire.endTransmission();
	delayMicroseconds(70);
	
	Wire.beginTransmission(SD20);
	Wire.write(22);
	Wire.write(1);
	Wire.endTransmission();
	delayMicroseconds(70);
	
	Wire.beginTransmission(SD20);
	Wire.write(23);
	Wire.write(44);
	Wire.endTransmission();
	delayMicroseconds(70); 
}
