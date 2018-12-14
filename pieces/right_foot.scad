/***********************************************************************
 *                            right_foot                               *
 ***********************************************************************
 * @author FioPio   (Ferriol Pey Comas)  ferriol73pey@gmail.com        *
 * @version v1.0    04/12/2018                                         *
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
      translate([-32.9/2-(32.9-foot_width/2)+5.5 , -0.5-(32.9/2)+1.5 , 12.5+foot_height-6])difference()
      {
  	      translate([0.05,-33.05+29,0.05])cube([32.9,32.9,23.9]);              //The box that contains everything
         translate([5,0,12])rotate([-90,0])
         {
				        mg90s();                                                          //The lower servo
					       translate([-9,3.5,3.5])cube([10,10,2]);                           //The hole to pass the cable
						      translate([0,6,22])cube(15);                                      //The hole to introduce the servo
						      translate([6,6,-1.2])                                             //Continuation of the axis
	           {
							        cylinder(r1=1,r2=1.9,h=1.2);
							        translate([0,0,0.01])cylinder(r1=1,r2=1.9,h=1.2);
							        translate([0,0,-8])cylinder(r=1,h=9);
						      }
			      }
         translate([29,23,12])rotate([90,0,-90])
         {
				        mg90s();                                                          //The upper one
            translate([-7,3.5,3.5])cube([10,10,2]);                           //The hole to pass the cable
            translate([0,6,22])cube(15);                                      //The hole to introduce the servo
	           translate([6,6,-1.2])                                             //Continuation of the axis
	           {
							        cylinder(r1=1,r2=1.9,h=1.2);
							        translate([0,0,0.01])cylinder(r1=1,r2=1.9,h=1.2);
							        translate([0,0,-8])cylinder(r=1,h=9);
						      }
			      }
			      translate([5,0])cube(23);
      }
      translate([-32.9/2-(32.9-foot_width/2)+5.5,-0.5-(32.9/2)+1.5,12.5+foot_height-6])translate([5,0,12])rotate([-90,0])
      {
         mg90s(105,false,true);                                                          //The lower servo                                    //The hole to introduce the servo
      }
      translate([-30,-19.5,foot_height])cube([32.9,33.1,50]);
      translate([-32.9/2-(32.9-foot_width/2)+5.5 , -0.5-(32.9/2)+1.5 , 12.5+foot_height-6]) translate([11,0,6])
      {
							  rotate([0,24.5,0])translate([-11,0,-6])translate([0.05,-33.05+29,0.05])cube([33.55,32.9,23.9]); 
      }
   }
}



