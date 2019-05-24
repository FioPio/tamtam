#include <tamtam.h>
#include <ros/ros.h>
#include <orientation/Orientation.h>
#include <fstream>
#include <stdio.h>
#include <math.h>

#define T_SAMPLE                     25000
#define FILENAME "/home/pi/data/data.txt"

//Walking and base parameters
#define T_WALKING                       2.0
#define STAND_HEIGH                   121.0
#define BASE_HEIGH                    107.5
#define STEP_HEIGH                     15
#define STEP_LATERAL                   35
#define STEP_FORWARD                   22.5
#define W              (2.0*PI)/T_WALKING

//PID
#define PID_SAMPLE_TIME                50 //ms
#define SP_X                            0.0
#define SP_Y                            0.0

#define KP_a                            0.0
#define KP_b                            0.0
#define KP_d                            0.0
#define KP_e                            0.0

#define KI_a                            0.0
#define KI_b                            0.0
#define KI_d                            0.0
#define KI_e                            0.0

#define KD_a                            0.0
#define KD_b                            0.0
#define KD_d                            0.0
#define KD_e                            0.0

#define MAX_EPSILON_CORRECTION         20.0
#define MAX_DELTA_CORRECTION           20.0
#define MAX_BETA_CORRECTION            20.0
#define MAX_ALPHA_CORRECTION           20.0

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
    correction_epsilon=0;
    correction_delta=0;
    correction_beta=0;
    correction_alpha=0;
    correction_left=false;
    correction_right=false;
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
	      correction_right=true;
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
      delay(30);
      Tam.set_eyes_colour(OFF);
      delay(20);
      Tam.disable_motors();
      delay(5);
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

      if( correction_left || correction_right) compute_corrections();
      if(correction_left)
      {
		left_cfg.epsilon+=correction_epsilon;
		left_cfg.delta+=correction_delta;
		left_cfg.beta+=correction_beta;
		left_cfg.alpha+=correction_alpha;
	  }
	  if(correction_right)
	  {
		right_cfg.epsilon+=correction_epsilon;
		right_cfg.delta+=correction_delta;
		right_cfg.beta+=correction_beta;  
		right_cfg.alpha+=correction_alpha;
	  }
      //Seting the servomotors
      Tam.set_legs(right_cfg,left_cfg);
      delay(50);
      t+=(millis()-t_ant)/1000.0;
    }
  }
  //////////////////////////////////////////////////////////////////////  

private:
  float yaw, roll, pitch;
  ros::NodeHandle n;
  ros::Subscriber orient_sub;
  tamtam Tam;
  bool readed,write;
  std::ofstream myfile;
  unsigned int t_ant, t_init_file, t_ant_PID;
  char step;
  LEG_SETPOINT_T left_leg,right_leg;
  LEG_CONFIGURATION_T left_cfg, right_cfg;
  float t;
  float correction_epsilon, correction_delta, correction_beta, correction_alpha;
  float err_x, err_y, err_ant_x, err_ant_y, err_acu_x, err_acu_y, dt, dex, dey;
  bool correction_left, correction_right;
  void compute_corrections()
  {
	  dt=millis()-t_ant_PID;
	  if( dt > PID_SAMPLE_TIME )
	  {
		  t_ant_PID=millis();
		  dt/=1000.0;
		  err_x=SP_X-roll;
		  err_y=SP_Y-pitch;
		  err_acu_x+=err_x*dt;
		  err_acu_y+=err_y*dt;
		  dex = err_x - err_ant_x;
		  dey = err_y - err_ant_y;
		  err_ant_x=err_x;
		  err_ant_y=err_y;
		  correction_epsilon = KP_e * err_x + KD_e * (dex/dt) + KI_e * err_acu_x;
		  correction_alpha = KP_a * err_x + KD_a * (dex/dt) + KI_a * err_acu_x ;
		  correction_delta = KP_d * err_y + KD_d * (dey/dt) + KI_d * err_acu_y ;
		  correction_beta = KP_b * err_y + KD_b * (dey/dt) + KI_b * err_acu_y ;
		  
		  if(correction_epsilon > MAX_EPSILON_CORRECTION)
		  {
			  correction_epsilon = MAX_EPSILON_CORRECTION;
			  err_acu_x-=err_x*dt;
		  }
		  if(correction_epsilon < -MAX_EPSILON_CORRECTION)
		  {
			  correction_epsilon = -MAX_EPSILON_CORRECTION;
			  err_acu_x-=err_x*dt;
		  }
		  if(correction_delta > MAX_DELTA_CORRECTION)
		  {
			  correction_delta = MAX_DELTA_CORRECTION;
			  err_acu_y-=err_y*dt;
		  }
		  if(correction_delta < -MAX_DELTA_CORRECTION)
		  {
			  correction_delta = -MAX_DELTA_CORRECTION;
			  err_acu_y-=err_y*dt;
		  }
		  if(correction_beta > MAX_BETA_CORRECTION)
		  {
			  correction_beta = MAX_BETA_CORRECTION;
			  err_acu_y-=err_y*dt;
		  }
		  if(correction_beta < -MAX_BETA_CORRECTION)
		  {
			  correction_beta = -MAX_BETA_CORRECTION;
			  err_acu_y-=err_y*dt;
		  }
		  if(correction_alpha > MAX_ALPHA_CORRECTION)
		  {
			  correction_alpha = MAX_ALPHA_CORRECTION;
			  err_acu_x-=err_x*dt;
		  }
		  if(correction_epsilon < -MAX_ALPHA_CORRECTION)
		  {
			  correction_alpha = -MAX_ALPHA_CORRECTION;
			  err_acu_x-=err_x*dt;
		  }
	  }
  }
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
