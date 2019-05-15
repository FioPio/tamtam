#include <math.h>   
#include <tamtam_simulator.h>

char show_frame(float xd, float yd, float zd, float xe, float ye, float ze)
{
	cv::Mat viewer(480, 640, CV_8UC3, cv::Scalar(255,255,255));
	LEG_CONFIGURATION_T right_leg, left_leg;
	left_leg  = compute_angles(xe,ye,ze);
	right_leg = compute_angles(xd,yd,zd);
	
	//Drawing the frame	
	draw_frameEXZ(viewer,left_leg);
	draw_frameEYZ(viewer,left_leg);
				
	draw_frameDXZ(viewer,right_leg);
	draw_frameDYZ(viewer,right_leg);
		
	#ifdef BASE_PROJECTION
		line(viewer,cv::Point(Gx+160,0),cv::Point(Gx+160,480),cv::Scalar(255,100,255),1);
		line(viewer,cv::Point(Gy-160,0),cv::Point(Gy-160,480),cv::Scalar(255,100,255),1);
	#endif
		
	cv::imshow("Simulator",viewer);
	return cv::waitKey(MILLIS_DELAY);
}

LEG_CONFIGURATION_T compute_angles(float x,float y,float z)
{
	LEG_CONFIGURATION_T leg_config;
	float BD_DIS;
	//computing the joint angles
	leg_config.alpha=atan( y / ( z-TA-EF) );
	float a=y-(AB*sin(leg_config.alpha))-(DE*sin(leg_config.alpha));
	float b=z-(AB*cos(leg_config.alpha))-(DE*cos(leg_config.alpha))-TA - EF;
	BD_DIS=sqrt((x*x)+(a*a)+(b*b));
	leg_config.gamma=PI-acos(((BC*BC)+(CD_DIS*CD_DIS)-(BD_DIS*BD_DIS))/(2*BC*CD_DIS));
	leg_config.delta= asin(x/BD_DIS)+acos(((CD_DIS*CD_DIS)+(BD_DIS*BD_DIS)-(BC*BC))/(2*CD_DIS*BD_DIS));
	leg_config.beta=leg_config.gamma-leg_config.delta;
	leg_config.epsilon=leg_config.alpha;
	return leg_config;
}


void draw_frameDXZ(cv::Mat img, LEG_CONFIGURATION_T leg)
{
	cv::Point O(Gx+160,Gz), E(O.x,O.y+EGz), D(E.x,E.y+(DE*cos(leg.epsilon))), 
	C(D.x+(CD_DIS*sin(leg.delta)*cos(leg.epsilon)), D.y+(CD_DIS*cos(leg.delta)*cos(leg.epsilon))),
	B(C.x-(BC*sin(leg.beta)*cos(leg.alpha)), C.y+(BC*cos(leg.beta)*cos(leg.alpha)) ), A( B.x ,B.y + AB*cos(leg.alpha)), T(A.x,A.y+TA);
	
	line(img,O,E,cv::Scalar(255,0,0),5); //OE
	line(img,E,D,cv::Scalar(255,0,0),5); //ED
	line(img,D,C,cv::Scalar(255,0,0),5); //DC
	line(img,C,B,cv::Scalar(255,0,0),5); //CB
	line(img,B,A,cv::Scalar(255,0,0),5); //AB
	line(img,A,T,cv::Scalar(255,0,0),5); //AT
	line(img,cv::Point(int(T.x-Foot_length/2),T.y),cv::Point(int(T.x+Foot_length/2),T.y),cv::Scalar(255,0,0),5);//foot
	
	circle(img,O,4,cv::Scalar(0,255,0),4);
	circle(img,E,4,cv::Scalar(0,0,0),4);
	circle(img,D,4,cv::Scalar(0,0,0),4);
	circle(img,C,4,cv::Scalar(0,0,0),4);
	circle(img,B,4,cv::Scalar(0,0,0),4);
	circle(img,A,4,cv::Scalar(0,0,0),4);
}


void draw_frameDYZ(cv::Mat img, LEG_CONFIGURATION_T leg)
{
	cv::Point O(Gy-160,Gz) , E(O.x-EGy,O.y+EGz) , D(E.x-DE*sin(leg.epsilon),E.y+(DE*cos(leg.epsilon))) , C( (D.x-(CD_DIS*cos(leg.delta))*sin(leg.epsilon)), D.y+(CD_DIS*cos(leg.delta)*cos(leg.epsilon))), B( C.x-(BC*cos(leg.beta)*sin(leg.alpha)),C.y+(BC*cos(leg.beta)*cos(leg.alpha))) , A( B.x-AB*sin(leg.alpha) ,B.y+ AB*cos(leg.alpha)), T(A.x,A.y+TA);
	line(img,O,E,cv::Scalar(255,0,0),5); //OE
	line(img,E,D,cv::Scalar(255,0,0),5); //ED
	line(img,D,C,cv::Scalar(255,0,0),5); //DC
	line(img,C,B,cv::Scalar(255,0,0),5); //CB
	line(img,B,A,cv::Scalar(255,0,0),5); //BA
	line(img,A,T,cv::Scalar(255,0,0),5); //AT
	line(img,cv::Point(int(T.x-Foot_width+17),T.y),cv::Point(int(T.x+17),T.y),cv::Scalar(255,0,0),5);//foot

	
	circle(img,O,4,cv::Scalar(0,255,0),4);
	circle(img,E,4,cv::Scalar(0,0,0),4);
	circle(img,D,4,cv::Scalar(0,0,0),4);
	circle(img,C,4,cv::Scalar(0,0,0),4);
	circle(img,B,4,cv::Scalar(0,0,0),4);
	circle(img,A,4,cv::Scalar(0,0,0),4);
}

void draw_frameEXZ(cv::Mat img, LEG_CONFIGURATION_T leg)
{
	cv::Point O(Gx+160,Gz) , E(O.x,O.y+EGz) , D(E.x,E.y+(DE*cos(leg.epsilon))) , C(D.x+(CD_DIS*sin(leg.delta)*cos(leg.epsilon)), D.y+(CD_DIS*cos(leg.delta)*cos(leg.epsilon)) ), B( C.x - (BC*sin(leg.beta)*cos(leg.alpha)) , C.y+(BC*cos(leg.beta)*cos(leg.alpha)) ) , A( B.x ,B.y+ AB*cos(leg.alpha)), T(A.x,A.y+TA);
	line(img,O,E,cv::Scalar(0,0,255),5); //OE
	line(img,E,D,cv::Scalar(0,0,255),5); //ED
	line(img,D,C,cv::Scalar(0,0,255),5); //DC
	line(img,C,B,cv::Scalar(0,0,255),5); //CB
	line(img,B,A,cv::Scalar(0,0,255),5); //BA
	line(img,A,T,cv::Scalar(0,0,255),5); //AT
	line(img,cv::Point(int(T.x-Foot_length/2),T.y),cv::Point(int(T.x+Foot_length/2),T.y),cv::Scalar(0,0,255),5);//foot

	circle(img,O,4,cv::Scalar(0,255,0),4);
	circle(img,E,4,cv::Scalar(125,125,125),4);
	circle(img,D,4,cv::Scalar(125,125,125),4);
	circle(img,C,4,cv::Scalar(125,125,125),4);
	circle(img,B,4,cv::Scalar(125,125,125),4);
	circle(img,A,4,cv::Scalar(125,125,125),4);
}


void draw_frameEYZ(cv::Mat img, LEG_CONFIGURATION_T leg)
{
	cv::Point O(Gy-160,Gz) , E(O.x+EGy,O.y+EGz) , D(E.x+DE*sin(leg.epsilon),E.y+(DE*cos(leg.epsilon))) , C( (D.x+(CD_DIS*cos(leg.delta))*sin(leg.epsilon)), D.y+(CD_DIS*cos(leg.delta)*cos(leg.epsilon))),B( C.x+(BC*cos(leg.beta)*sin(leg.alpha)),C.y+(BC*cos(leg.beta)*cos(leg.alpha))) , A( B.x+AB*sin(leg.alpha) ,B.y+ AB*cos(leg.alpha)), T(A.x,A.y+TA);
	line(img,O,E,cv::Scalar(0,0,255),5); //OE
	line(img,E,D,cv::Scalar(0,0,255),5); //ED
	line(img,D,C,cv::Scalar(0,0,255),5); //DC
	line(img,C,B,cv::Scalar(0,0,255),5); //CB
	line(img,B,A,cv::Scalar(0,0,255),5); //BA
	line(img,A,T,cv::Scalar(0,0,255),5); //AT
	line(img,cv::Point(int(T.x-17),T.y),cv::Point(int(T.x+Foot_width-17),T.y),cv::Scalar(0,0,255),5);//foot

	circle(img,O,4,cv::Scalar(0,255,0),4);
	circle(img,E,4,cv::Scalar(125,125,125),4);
	circle(img,D,4,cv::Scalar(125,125,125),4);
	circle(img,C,4,cv::Scalar(125,125,125),4);
	circle(img,B,4,cv::Scalar(125,125,125),4);
	circle(img,A,4,cv::Scalar(125,125,125),4);
}

