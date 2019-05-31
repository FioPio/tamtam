#include <tamtam.h>
#include <ros/ros.h>
#include <orientation/Orientation.h>
#include <fstream>
#include <stdio.h>
#include <math.h>

#define T_SAMPLE                     20000
#define FILENAME "/home/pi/data/data_D_PID.txt"

//Walking and base parameters
#define T_WALKING                       2.0
#define STAND_HEIGH                   121.0
#define BASE_HEIGH                    107.5
#define STEP_HEIGH                     15
#define STEP_LATERAL                   35
#define STEP_FORWARD                   22.5
#define W              (2.0*PI)/T_WALKING


#define KP_a                            0.0
#define KP_p                            0.14625

#define KI_a                            0.0
#define KI_p                            1.76

#define KD_a                            0.0
#define KD_p                            0.1942
#define KD_e                            0.0
 
#define MAX_PITCH_CORRECTION           40.0
#define MAX_ALPHA_CORRECTION           20.0
#define PITCH_0                       -85.1875

#define T_CORRECCIO                    50 //ms -> 20Hz
#define FILTRE_DERIV                    0.1

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
    step=0;
    Tam.to_home();
    left_leg.zeta=0;
    right_leg.zeta=0;
    left_leg.x=0;
    right_leg.x=0;
    left_leg.y=0;
    right_leg.y=0;
    left_leg.z=BASE_HEIGH;
    right_leg.z=BASE_HEIGH;
    correction_p=0;
    err_p_f_a=0;
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
    if(millis()-t_ant > T_CORRECCIO)
    {
      float y_pitch=pitch-PITCH_0;
      float dt=(millis()-t_ant)/1000.0;
      t_ant=millis();
      err_p= - y_pitch;
      float err_p_f=FILTRE_DERIV*err_p +(1-FILTRE_DERIV) * err_p_f_a;
      err_p_f_a=err_p_f;
      de_p= (err_p_f) - err_ant_p ;
      err_ant_p=err_p_f;
      err_acu_p+=err_p * dt;
    
      correction_p=-KP_p* y_pitch + KD_p * (de_p /dt) + KI_p * err_acu_p;
      if(correction_p > MAX_PITCH_CORRECTION)
	{
	  correction_p = MAX_PITCH_CORRECTION;
	  err_acu_p-=err_p*dt;
	}
      if(correction_p < -MAX_PITCH_CORRECTION)
	{
	  correction_p = -MAX_PITCH_CORRECTION;
	  err_acu_p-=err_p*dt;
	}
      
      
      if((millis()-t_init_file)>T_SAMPLE && write)
      {
	write=false;
	myfile.close();
	ROS_INFO("DADES ESCRITES");
	Tam.set_eyes_colour(OFF);
	Tam.disable_motors();
      }
      else
      {
	if(write && readed)
        {
	    readed=false;
	    myfile << pitch-PITCH_0 <<" ; "<<millis()-t_init_file<<";"<< correction_p<<"\n";
       }
     }
     if(write && step<4 )
     {
      //computig the angles to get the desired position
      left_cfg=Tam.compute_angles(left_leg);
      right_cfg=Tam.compute_angles(right_leg);
      //aplaying the corrections for the PID stabilizing
      // right_cfg.epsilon+=(correction_epsilon_r/180.0)*PI;
      //left_cfg.epsilon+=correction_epsilon_l;
      right_cfg.delta+=(correction_p/180.0)*PI; //eren menys
      left_cfg.delta+=(correction_p/180.0)*PI;
      right_cfg.gamma-=(correction_p/(180.0*2))*PI;
      left_cfg.gamma-=(correction_p/(180.0*2))*PI;
      right_cfg.beta+=(correction_p/(180.0*8))*PI;
      left_cfg.beta+=(correction_p/(180.0*8))*PI;
      //right_cfg.alpha+=correction_alpha_r;
      //left_cfg.alpha+=correction_alpha_l;
      //Seting the servomotors*/
      Tam.set_legs(right_cfg,left_cfg);
    }
     //t+=(millis()-t_ant)/1000.0;
     //t_ant=millis();
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
  unsigned int t_ant, t_init_file;
  char step;
  LEG_SETPOINT_T left_leg,right_leg;
  LEG_CONFIGURATION_T left_cfg, right_cfg;
  float correction_p;
  float de_p, err_p, err_ant_p, err_acu_p;
  float err_p_f_a;
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
