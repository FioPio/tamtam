/***********************************************************************
 *                               TAMTAM                                *
 ***********************************************************************
 * @author FioPio (Ferriol Pey Comas)  @version v1.2 15/05/2019        *
 ***********************************************************************
 * This file provides the principal functions and clases to make the   *
 * Tamtam robot work with  raspberry pi zero W.                        *
 ***********************************************************************/
#include <tamtam.h>
#include <math.h>

void tamtam::setup()
{
	printf("%c[%dmSetting up TamTam%c[m\n",0x1B,34,0x1B);
	wiringPiSetupSys();
	SD20=wiringPiI2CSetup (0x61);
	if (SD20==-1)  printf("%c[%dmError: No conection with SD20 established%c[m\n",0x1B,31,0x1B);
	else printf("%c[%dmConection with SD20 established%c[m\n",0x1B,34,0x1B);
	ARDUINO=wiringPiI2CSetup (ARDUINO_I2C_ADDRESS);
	if (SD20==-1)  printf("%c[%dmError: No conection with ARDUINO established%c[m\n",0x1B,31,0x1B);
	else printf("%c[%dmConection with ARDUINO established%c[m\n",0x1B,34,0x1B);
	set_eyes_colour(GREEN);
	disable_motors();
	//Set expanded mode
	setExpand();
}

void tamtam::set_eyes_colour(unsigned char r, unsigned char g, unsigned char b)
{
	set_eyes_red_led(r);
	set_eyes_green_led(g);
	set_eyes_blue_led(b);
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

void tamtam::set_eyes_red_led(unsigned char c)
{
	wiringPiI2CWriteReg8(ARDUINO, SET_RED_LED, c);
	delayMicroseconds(70);
}

void tamtam::set_eyes_green_led(unsigned char c)
{
	wiringPiI2CWriteReg8(ARDUINO, SET_GREEN_LED, c);
	delayMicroseconds(70);
}

void tamtam::set_eyes_blue_led(unsigned char c)
{
	wiringPiI2CWriteReg8(ARDUINO, SET_BLUE_LED, c);
	delayMicroseconds(70);
}

void tamtam::disable_motors()
{
	for (int i=1;i<20;i++) disable_motor(i);
}

void tamtam::disable_motor(int s)
{
	if(s>0 and s<20)
    {
		wiringPiI2CWriteReg8(SD20, s, 0);
		delayMicroseconds(70);
	}
}

void tamtam::set_servo(int s, float a)
{
  if(s>0 and s<20)
    {
      int angle = a * ANGLE_EQUIVALENCE;
      if(angle<1) angle = 1;
      else if (angle>255) angle = 255;
      wiringPiI2CWriteReg8(SD20, s, angle);
      delayMicroseconds(70);
    }
}

void tamtam::to_home()
{
    set_servo(PE,BPE);
    set_servo(PD,BPD);
    set_servo(TE,BTE);
    set_servo(TD,BTD);
    set_servo(GE,BGE);
    set_servo(GD,BGD);
    set_servo(FE,BFE);
    set_servo(FD,BFD);
    set_servo(AE,BAE);
    set_servo(AD,BAD);
    set_servo(CE,BCE);
    set_servo(CD,BCD);
    set_servo(EE,BEE);
    set_servo(ED,BED);
    set_servo(BE,BBE);
    set_servo(BD,BBD);
    set_servo(ZE,BZE);
    set_servo(ZD,BZD);
    set_servo(CAP,BCA);
    //Disables de servos that are not in load
    delay(250);
    disable_motor(EE);
    disable_motor(ED);
    disable_motor(BE);
    disable_motor(BD);
    disable_motor(ZE);
    disable_motor(ZD);
    disable_motor(CAP);
}


void tamtam::set_legs(LEG_CONFIGURATION_T right_leg ,LEG_CONFIGURATION_T left_leg)
{
  set_servo(PE, BPE - ((180.0/PI) * left_leg.alpha));
  set_servo(PD, BPD - ((180.0/PI)*right_leg.alpha));
  set_servo(TE, BTE - ((180.0/PI)*left_leg.beta));
  set_servo(TD, BTD + ((180.0/PI)*right_leg.beta));
  set_servo(GE, BGE - ((180.0/PI)*left_leg.gamma));
  set_servo(GD, BGD + ((180.0/PI)*right_leg.gamma));
  set_servo(FE, BFE + ((180.0/PI)*left_leg.delta));
  set_servo(FD, BFD - ((180.0/PI)*right_leg.delta));
  set_servo(AE, BAE -  ((180.0/PI)*left_leg.epsilon));
  set_servo(AD, BAD - ((180.0/PI)*right_leg.epsilon));
  set_servo(CE, BCE + ((180.0/PI)*left_leg.zeta));
  set_servo(CD, BCD - ((180.0/PI)*right_leg.zeta));
}


float tamtam::get_battery_level()
{
	return (wiringPiI2CReadReg8(ARDUINO,READ_BATTERY) * (10.0 /255.0));
}

LEG_CONFIGURATION_T tamtam::compute_angles(LEG_SETPOINT_T setpoint)
{
  LEG_CONFIGURATION_T leg_config;
  float BD_DIS,x,y,z;
  //computing the new frame values
  x=(setpoint.x*cos(setpoint.zeta))+(setpoint.y*sin(setpoint.zeta));
  y=(setpoint.y*cos(setpoint.zeta))-(setpoint.x*sin(setpoint.zeta));
  z=setpoint.z;
  //computing the joint angles
  leg_config.alpha=atan( y / ( z-TA_DIS-EF) );
  float a=y-(AB*sin(leg_config.alpha))-(DE*sin(leg_config.alpha));
  float b=z-(AB*cos(leg_config.alpha))-(DE*cos(leg_config.alpha))-TA_DIS - EF;
  BD_DIS=sqrt((x*x)+(a*a)+(b*b));
  leg_config.gamma=PI-acos(((BC*BC)+(CD_DIS*CD_DIS)-(BD_DIS*BD_DIS))/(2*BC*CD_DIS));
  leg_config.delta= asin(x/BD_DIS)+acos(((CD_DIS*CD_DIS)+(BD_DIS*BD_DIS)-(BC*BC))/(2*CD_DIS*BD_DIS));
  leg_config.beta=leg_config.gamma-leg_config.delta;
  leg_config.epsilon=leg_config.alpha;
  leg_config.zeta=setpoint.zeta;
  return leg_config;
}


void tamtam::setExpand()
{
  wiringPiI2CWriteReg8(SD20, 21, 32);
  delayMicroseconds(70);
  wiringPiI2CWriteReg8(SD20, 22, 1);
  delayMicroseconds(70);
  wiringPiI2CWriteReg8(SD20, 23, 224);
  delayMicroseconds(70);
}
