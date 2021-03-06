/*************************************************************
 *                         upper_leg_right                    
 *************************************************************
 * @author FioPio (Ferriol Pey Comas)  ferriol73pey@gmail.com 
 * @version v1.0    05/12/2018                                
 *************************************************************
 * This file contains the 3D model of the upper part of the 
 * right leg. 
 ************************************************************/
 
use <mg90s.scad>

$fn=120;
difference()
{
   union()
   {
				  hull()
				  {
         cube([12+5,32.9,6]);
         translate([11,0,36])rotate([-90,0])cylinder(r=6,h=32.9);
						}
      translate([4,0,0])cube([12+5,32.9,16]);
      hull()
      {
							  translate([1.64,-4,14.5])cube([12+5-1.64,32.9+8,1.5]);
         translate([11,-4.05,36])rotate([-90,0])cylinder(r=6,h=33+8);
      }
   }
   translate([5+6.5,4,6])rotate([-90,0])
   {
      mg90s(-1,false,true);
      translate([-13,-3,4.5])cube([10,10,2]);
		 }
		 translate([5,26,-1])cube([20,7,7]);
		 translate([-7,0,30-13.5+6])cube([30,33,23.5]);
		 translate([-10,-4,14.5])rotate([0,90,0])cylinder(r=4,h=50);
		 translate([-10,36.9,14.5])rotate([0,90,0])cylinder(r=4,h=50);
		 hull()
		 {
		    translate([-10,2,30+6-13.5])rotate([0,90,0])cylinder(r=2,h=50);
		    translate([-10,33-2,30+6-13.5])rotate([0,90,0])cylinder(r=2,h=50);
			}			
			translate([5+6.5,4,30+6.5])rotate([-90,0])mg90s(90,true,true);
			translate([11,-4,6])rotate([0,130,0])translate([0,0,-30])difference()
   {
      hull()
      {
         rotate([-90,0])cylinder(r=6,h=33+8);
         translate([0,0,30])rotate([-90,0])cylinder(r=6,h=33+8); 
         translate([-5,0,7.5])rotate([-90,0])cylinder(r=8,h=33+8); 
      }
      translate([-36,4,-10])cube([30,33,60]);
      translate([-7,4,-10])cube([30,33,23.5]);
      translate([-7,4,16.5])cube([30,33,22]);
      translate([6,8,-6])rotate([-90,180])mg90s(90,false,true);
     translate([-6,8,36])rotate([-90,0])mg90s(90,true,true);
   }
}
