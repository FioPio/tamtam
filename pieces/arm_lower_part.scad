/***********************************************************************
 *                          arm_lower_part                             *
 ***********************************************************************
 * @author  FioPio    (Ferriol Pey Comas)   ferriol73pey@gmail.com     *
 * @version v1.0       14/12/2018                                      *
 ***********************************************************************
 * This file contains the 3D model of the lower part of the arm.       *
 ***********************************************************************/
use<mg90s.scad>
$fn=500;

R=50;
difference()
{
   intersection()
   {
      hull()
      {
         rotate([-90,0])cylinder(r=6,h=41);
         translate([45-6-12,0,0])rotate([-90,0])cylinder(r=6,h=41);
         translate([45,0,-3])rotate([-90,0])cylinder(r=3,h=41);
      }
      union()
      {
         intersection()
         {
            translate([12.5,41-R,-10])cylinder(r=R,h=20);
            translate([12.5,R,-10])cylinder(r=R,h=20);
					    }
					    translate([-6,0,-10])cube([18.5,41,20]);
      }
   }
   translate([-8,4,-10])cube([12.5+8,33,20]);
   translate([0,8])rotate([-90,180])mg90s(180,false,true);
}
