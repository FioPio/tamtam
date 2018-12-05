/***********************************************************************
 *                            lower_leg                                *
 ***********************************************************************
 * @author FioPio   (Ferriol Pey Comas)  ferriol73pey@gmail.com        *
 * @version v1.1    04/12/2018                                         *
 ***********************************************************************
 * This file contains the lower part of the leg.                       *
 ***********************************************************************/
use <mg90s.scad>
$fn=120;
R=6;
difference()
{
   hull()
   {
      rotate([-90,0])cylinder(r=R,h=33+8);
      translate([0,0,30])rotate([-90,0])cylinder(r=R,h=33+8); 
      translate([-5,0,7.5])rotate([-90,0])cylinder(r=8,h=33+8); 
   }
   translate([-36,4,-10])cube([30,33,60]);
   translate([-7,4,-10])cube([30,33,23.5]);
   translate([-7,4,16.5])cube([30,33,22]);
   translate([6,8,-6])rotate([-90,180])mg90s(90,false,true);
   translate([-6,8,36])rotate([-90,0])mg90s(90,true,true);
}
