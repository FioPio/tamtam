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
   translate([-10,-4,0])cube([64,33,12]);
   translate([-6,0,12])rotate([-90,0])
   {
			   mg90s();
      translate([-9,-3.5,3.5])cube([10,12,2]);  
		 }
   translate([6+44,0,0])rotate([-90,180])
   {
			   mg90s();
			   translate([-9,3.5,3.5])cube([10,10,2]);  
			}
   translate([-6,22,6])cube([15,8,10]);
   translate([44-9,22,6])cube([15,8,10]);
   translate([0,-1.2,6])rotate([-90,0])
   {
      cylinder(r1=1,r2=1.9,h=1.2);
			   translate([0,0,0.01])cylinder(r1=1,r2=1.9,h=1.2);
			   translate([0,0,-8])cylinder(r=1,h=9);
   }
   translate([44,-1.2,6])rotate([-90,0])
   {
      cylinder(r1=1,r2=1.9,h=1.2);
   			translate([0,0,0.01])cylinder(r1=1,r2=1.9,h=1.2);
   			translate([0,0,-8])cylinder(r=1,h=9);
   }
}

