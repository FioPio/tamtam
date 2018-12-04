/***********************************************************************
 *                         two_servo_holder                            *
 ***********************************************************************
 * @author  FioPio    (Ferriol Pey Comas)   ferriol73pey@gmail.com     *
 * @version v1.0       04/12/2018                                      *
 ***********************************************************************
 * This file contains the 3D model of the piece that holds two servos  *
 * to have two degres of freedom "in the same joint" used in the ankle *
 * and in the upper part of the leg.                                   *
 ***********************************************************************/


use <mg90s.scad>                                                        //To use the module created before
$fn=120;
difference()
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
