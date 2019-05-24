#include <tamtam.h>
#include <stdio.h>
int main()
{
  tamtam Tam;
  LEG_SETPOINT_T left_leg,right_leg;
  left_leg.zeta=0;
  right_leg.zeta=0;
  left_leg.x=0;
  right_leg.x=0;
  left_leg.y=35;
  right_leg.y=35.0;
  left_leg.z=107.5;
  right_leg.z=107.5;   
  Tam.setup();
  Tam.to_home();
  //Tam.set_servo(1,0);
  //delay(750);
  //Tam.set_servo(1,90);
  Tam.get_battery_level();
  printf("\nVoltage: %0.2f\n",Tam.get_battery_level()); 
  delay(750);
  Tam.set_legs(Tam.compute_angles(right_leg),Tam.compute_angles(left_leg));
  delay(750);
  Tam.set_eyes_colour(OFF);
  Tam.disable_motors();
}
