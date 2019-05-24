#include <tamtam.h>
#include <ros/ros.h>
#include <orientation/Orientation.h>
#include <fstream>
#include <stdio.h>
#include <math.h>

#define T_SAMPLE                     25000
#define FILENAME "/home/pi/data/data_F.txt"

//Walking and base parameters
#define T_WALKING                       2.0
#define STAND_HEIGH                   121.0
#define BASE_HEIGH                    107.5
#define STEP_HEIGH                     15
#define STEP_LATERAL                   35
#define STEP_FORWARD                   22.5
#define W              (2.0*PI)/T_WALKING



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
    t_ant=millis();
    t_init_file=t_ant;
    step=255;
    Tam.to_home();
    left_leg.zeta=0;
    right_leg.zeta=0;
    left_leg.x=0;
    right_leg.x=0;
    left_leg.y=0;
    right_leg.y=0;
    left_leg.z=121;
    right_leg.z=121;
    correction_epsilon_r=0;
    correction_epsilon_l=0;
    correction_delta_r=0;
    correction_delta_l=0;
    correction_beta_r=0;
    correction_beta_l=0;
    correction_alpha_r=0;
    correction_alpha_l=0;
  }
  
  void orientation_callback(const orientation::Orientation orient_msg)
  {
    yaw=orient_msg.yaw;
    roll=orient_msg.roll;
    pitch=orient_msg.pitch;
    readed=true;
  }
  
  ////////////////////////////////////////////////////////////
  void loop()
  {
    switch(step)
    {
      case 255:
	    if(t>T_WALKING)
	    {
	      t=0;
	      myfile << "end waiting step-1\n";
	      Tam.set_eyes_colour(BLUE);
	      step=0;
	    }
	    break;
	
      case 0:  //get the base position
	    left_leg.z=STAND_HEIGH - (STAND_HEIGH-BASE_HEIGH)*sin(W*t);
	    right_leg.z=STAND_HEIGH - (STAND_HEIGH-BASE_HEIGH)*sin(W*t);
	    if(t>T_WALKING/4.0)
	    {
	      left_leg.z=BASE_HEIGH;
	      right_leg.z=BASE_HEIGH;
	      t=0;
	      step++;
	    }
	    break;
	    
      case  1: //put the robot on the right foot
	    right_leg.y=STEP_LATERAL * sin(W*t);
	    left_leg.y= STEP_LATERAL * sin(W*t);
	    if(t > T_WALKING/4.0 )
	    {
	      t  = 0;
	      right_leg.y = STEP_LATERAL ;
	      left_leg.y = STEP_LATERAL ;
	      step++;
	      correction_epsilon_r=15;
	    }
	    break;

      case  2: //put the foot up
	    left_leg.z= BASE_HEIGH-STEP_HEIGH * sin(W*t);
	    if(t > T_WALKING/4.0 )
	    {
	      t  = 0;
	      left_leg.z = BASE_HEIGH-STEP_HEIGH ;
	      step++;
	      Tam.set_eyes_colour(RED);
	    }
	    break;
    }
    
    if((millis()-t_init_file)>T_SAMPLE && write)
    {
      write=false;
      myfile.close();
      ROS_INFO("DADES ESCRITES");
      Tam.set_eyes_colour(OFF);
      //Tam.disable_motors();
    }
    else
    {
      if(write && readed)
      {
	    readed=false;
	    myfile << pitch << " ; "<<yaw<<" ; "<<roll<<" ; "<<millis()-t_init_file<<"\n";
      }
    }
    if(write)
    {
	  //computig the angles to get the desired position
      left_cfg=Tam.compute_angles(left_leg);
      right_cfg=Tam.compute_angles(right_leg);
      //aplaying the corrections for the PID stabilizing
      right_cfg.epsilon+=correction_epsilon_r;
      left_cfg.epsilon+=correction_epsilon_l;
      right_cfg.delta+=correction_delta_r;
      left_cfg.delta+=correction_delta_l;
      right_cfg.beta+=correction_beta_r;
      left_cfg.beta+=correction_beta_l;
      right_cfg.alpha+=correction_alpha_r;
      left_cfg.alpha+=correction_alpha_l;
      //Seting the servomotors
      Tam.set_legs(right_cfg,left_cfg);
    }
    t+=(millis()-t_ant)/1000.0;
    t_ant=millis();
  }
  //////////////////////////////////////////////////////////////////////  

private:
  float yaw, roll, pitch;
  ros::NodeHandle n;
  ros::Subscriber orient_sub;
  tamtam Tam;
  bool readed,write;
  std::ofstream myfile;
  unsigned int t_ant, t_init_file;
  char step;
  LEG_SETPOINT_T left_leg,right_leg;
  LEG_CONFIGURATION_T left_cfg, right_cfg;
  float t;
  float correction_epsilon_r, correction_epsilon_l;
  float correction_delta_r, correction_delta_l;
  float correction_beta_r, correction_beta_l;
  float correction_alpha_r, correction_alpha_l;
};


int main(int argc, char **argv)
{
  ros::init(argc, argv, "tamtam_control");
 TamTam_Control ttc;
  ROS_INFO("node starts");
  while (ros::ok())
    {
      ttc.loop();
      ros::spinOnce();
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

  delay(750);
  Tam.set_eyes_colour(OFF);
  Tam.disable_motors();
}
*/
