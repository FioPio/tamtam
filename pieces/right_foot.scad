/***********************************************************************
 *                            right_foot                               *
 ***********************************************************************
 * @author FioPio   (Ferriol Pey Comas)  ferriol73pey@gmail.com        *
 * @version v1.1    22/12/2018                                         *
 ***********************************************************************
 * This file contains the 3D model of the right foot, so mirroring it  *
 * you obtain the left one.                                            *
 ***********************************************************************/
use <mg90s.scad>   
//Parameters
$fn=120;
foot_width=50;//50; 
foot_length=70;//1.62*foot_width;
R=8;
foot_height=2.5;
translate([-foot_width/2,-foot_length/2])difference()
{
	  union()
	  {
      hull()                                                            //Base of the foot
      {
         translate([R,R,0])scale([1,1,(foot_height)/R])sphere(R);
         translate([foot_width-R,R,0])scale([1,1,(foot_height)/R])sphere(R);
         translate([foot_width-R,foot_length-R,0])scale([1,1,(foot_height)/R])sphere(R);
         translate([R,foot_length-R,0])scale([1,1,(foot_height)/R])sphere(R);
      }
      translate([13.40,-5.5+0.5+(32.9/2)+1.5-1.31,1])rotate([-90,105-90,0])scale([1,2.05,1])cylinder(r=8,h=43);
			}
   translate([0,0,-50])cube([foot_width,foot_length,50]);
   //model tormell i servos
   translate([foot_width/2,foot_length/2])
   {                                                     //To use the module created before
      translate([-32.9/2+6.5-(32.9-foot_width/2)+5.5,-0.5-(32.9/2)+1.5,12.5+foot_height-6-6.5])translate([5,0,12])rotate([-90,0])
      {
         mg90s(105,false,true);                                                          //The lower servo                                    //The hole to introduce the servo
      }
      translate([-30,-19.5,foot_height])cube([32.9,33.1,50]);
      translate([-32.9/2-(32.9-foot_width/2)+5.5 , -0.5-(32.9/2)+1.5 , 12.5+foot_height-6]) translate([11,0,6])
      {
							  rotate([0,24.5,0])translate([-11,0,-6])translate([0.05,-33.05+29,0.05])cube([35,32.9,23.9]); 
      }
   }
}



