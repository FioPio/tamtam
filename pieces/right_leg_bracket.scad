/***********************************************************************
 *                         right_leg_bracket                           *
 ***********************************************************************
 * @author FioPio   (Ferriol Pey Comas)  ferriol73pey@gmail.com        *
 * @version v1.1    06/12/2018                                         *
 ***********************************************************************
 * This file contains the 3D model of the right leg bracket.           *
 ***********************************************************************/
use <mg90s.scad>   

$fn=120;
difference()
{
   hull()
   {
      translate([-6-5.5,0,12.5])cube([12,33+8,5]);	
      rotate([-90,0])cylinder(r=6,h=33+8);
   }
   translate([-12,4,-33+12.5])cube(33);
   translate([0,33])rotate([90,180])mg90s(-69,true,true);
   translate([-5.5,41/2,29+12.5+4+2.5])rotate([180,0])mg90s(90);
   translate([-5.5,41/2,29+12.5+4+2])rotate([180,0])mg90s(90);
   translate([-5.5,41/2,29+12.5+4+2.5])rotate([180,0])mg90s(270);
   translate([-5.5,41/2,29+12.5+4+2])rotate([180,0])mg90s(270);
   rotate([0,32.5])translate([-33,4])cube([33,33,6]);
}
