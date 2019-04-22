/***********************************************************************
 *                          arm_upper_part                             *
 ***********************************************************************
 * @author  FioPio    (Ferriol Pey Comas)   ferriol73pey@gmail.com     *
 * @version v1.0       14/12/2018                                      *
 ***********************************************************************
 * This file contains the 3D model of the upper part of the arm.       *
 ***********************************************************************/
 
use <mg90s.scad>
$fn=120;

difference()
{
   translate([-10,-4,0])cube([66,33,13]);
   translate([1.5,0,6.5])rotate([-90,0])
   {
			   mg90s(-1,false,true);
      translate([-13,-9,4.5])cube([10,12,2]);  
		 }
   translate([46-1.5,0,6.5])rotate([-90,180])
   {
			   mg90s(-1,false,true);
			   translate([-15,-3,4.5])cube([10,10,2]);  
			}
   translate([-5,22,6.5])cube([16,8,10]);
   translate([44-9,22,6.5])cube([16,8,10]);
}

