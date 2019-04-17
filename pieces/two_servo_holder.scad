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
  	translate([0.05,-33.05+29,0.05])cube([32.9,32.9,25.84]);              //The box that contains everything
   translate([6.5+5,0,6.5])rotate([-90,0])
   {
				  mg90s(-1,false,true);                                                          //The lower servo
					 translate([-15,-3,4.5])cube([10,10,2]);                           //The hole to pass the cable
						translate([-6.5,0,22])cube(16);                                      //The hole to introduce the servo
			}
   translate([29,17.4,32.4-13])rotate([90,0,-90])
   {
				  mg90s(-1,false,true);                                                          //The upper one
      translate([-15,-3,4.5])cube([10,10,2]);                           //The hole to pass the cable
      translate([-6.5,0,22])cube(16);                                      //The hole to introduce the servo
			}
}
