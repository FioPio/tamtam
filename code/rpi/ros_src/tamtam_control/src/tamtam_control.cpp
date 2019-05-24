#include <tamtam.h>
#include <ros/ros.h>
#include <orientation/Orientation.h>
#include <fstream>

#define T_SAMPLE 1500
#define FILENAME "/home/pi/data/data.txt"

class TamTam_Control
{
public:
  TamTam_Control()
  {
    Tam.setup();
    readed=false;
    write=true;
    myfile.open (FILENAME);
    this->n = ros::NodeHandle("~");
    this->orient_sub = n.subscribe("/orientation",1, &TamTam_Control::orientation_callback, this);
    t0=millis();
  }
  void orientation_callback(const orientation::Orientation orient_msg)
  {
    yaw=orient_msg.yaw;
    roll=orient_msg.roll;
    pitch=orient_msg.pitch;
    readed=true;
  }
  void loop()
  {
    if((millis()-t0)>T_SAMPLE && write)
      {
	write=false;
	myfile.close();
	ROS_INFO("DADES ESCRITES");
      }
      else
      {
	if(write && readed)
	{
	  readed=false;
	  myfile << pitch << " ; "<<yaw<<" ; "<<roll<<" ; "<<millis()-t0<<"\n";
	}
      }
  }
private:
  float yaw, roll, pitch;
  ros::NodeHandle n;
  ros::Subscriber orient_sub;
  tamtam Tam;
  bool readed,write;
  std::ofstream myfile;
  unsigned int t0;
};


int main(int argc, char **argv)
{
  ros::init(argc, argv, "tamtam_control");
 TamTam_Control ttc;
 //  ros::Rate loop_rate(5);
  ROS_INFO("node starts");
  while (ros::ok())
    {
      ttc.loop();
      ros::spinOnce();
      //loop_rate.sleep();
    }
  return 0;
}

/*#include <stdio.h>
#include <math.h>

#define T_WALKING                       2
#define STAND_HEIGH                   121.0
#define BASE_HEIGH                    107.5
#define STEP_HEIGH                     15
#define STEP_LATERAL                   35
#define STEP_FORWARD                   22.5
#define W              (2.0*PI)/T_WALKING



int main()
{
  tamtam Tam;
  LEG_SETPOINT_T left_leg,right_leg;
  left_leg.zeta=0;
  right_leg.zeta=0;
  left_leg.x=0;
  right_leg.x=0;
  left_leg.y=0;
  right_leg.y=0;   
  Tam.setup();
  Tam.to_home();
  long int t0=millis();
  float t=0;
  while(t < T_WALKING)
  {
    left_leg.z=STAND_HEIGH - (STAND_HEIGH-BASE_HEIGH)*sin(W*t/4.0);
    right_leg.z=STAND_HEIGH - (STAND_HEIGH-BASE_HEIGH)*sin(W*t/4.0);
    delay(50);
    t=(millis()-t0)/1000.0;
    Tam.set_legs(Tam.compute_angles(right_leg),Tam.compute_angles(left_leg));
    }
  left_leg.z=107.5;
  right_leg.z=107.5;
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
*/
