#ifndef __TAMTAM_SIMULATOR__
#define __TAMTAM_SIMULATOR__

#include <opencv2/opencv.hpp> 

#define BASE_PROJECTION

#define MILLIS_DELAY 5

#define PI           3.141592653589

#define Gx           320
#define Gy           320
#define Gz           200

//Hardware Configuration (Structure)
#define TA           15
#define AB           12
#define BC           31
#define CD_DIS       31
#define DE           12
#define EF           20

#define Foot_length  70
#define Foot_width   50
#define EGy          25
#define EGz          30

struct LEG_CONFIGURATION_T
{
  float alpha;
  float beta;
  float gamma;
  float delta;
  float epsilon;
};

char show_frame(float xd, float yd, float zd, float xe, float ye, float ze);
LEG_CONFIGURATION_T compute_angles(float x,float y,float z);
void draw_frameDXZ(cv::Mat img, LEG_CONFIGURATION_T leg);
void draw_frameEXZ(cv::Mat img, LEG_CONFIGURATION_T leg);
void draw_frameDYZ(cv::Mat img, LEG_CONFIGURATION_T leg);
void draw_frameEYZ(cv::Mat img, LEG_CONFIGURATION_T leg);


#endif
