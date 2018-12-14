/***********************************************************************
 *                         head_lower_part                             *
 ***********************************************************************
 * @author FioPio   (Ferriol Pey Comas)  ferriol73pey@gmail.com        *
 * @version v1.0    11/12/2018                                         *
 ***********************************************************************
 * This file contains the 3D model of the lower part of the head.      *
 ***********************************************************************/
use<mg90s.scad>

$fn=200;

rotate([0,180,0])difference()
{
	  union()
	  {
				  difference()
				  {
	        scale([1.2,1,1])sphere(20);
	        translate([-50,-25,-25])cube(50);
	        translate([-25,-25,-50])cube(50);
						}
						difference()
				  {
	        scale([1.2,1,0.95])sphere(20);
	        translate([-50,-25,-25])cube(50);
						}
      scale([0.85,1,0.95])sphere(20);
      difference()
      {
         scale([0.85,1,1])sphere(20);
         translate([-25,-25,-50])cube(50);
						}
      difference()
      {
         union()
         {
            rotate([-50,0,0])translate([0,0,-27])scale([0.75,1,1])cylinder(r1=0,r2=7.5,h=10,$fn=3);
            rotate([50,0,0])translate([0,0,-27])scale([0.75,1,1])cylinder(r1=0,r2=7.5,h=10,$fn=3);
         }
         rotate([-50,0,0])translate([-2,0,-27])scale([0.75,1,1])cylinder(r1=0,r2=7.5,h=10,$fn=3);
         rotate([50,0,0])translate([-2,0,-27])scale([0.75,1,1])cylinder(r1=0,r2=7.5,h=10,$fn=3);
      }
      translate([0,0,4])rotate([0,-180,0])intersection()
      {
         hull()
         {
            translate([0,1.25,0])rotate([0,90])cylinder(r=1,h=19);
            translate([0,-1.25,0])rotate([0,90])cylinder(r=1,h=19);
            translate([0,0,-2])rotate([0,90])cylinder(r=1,h=19);
         }
         translate([14,0,-0.60])sphere(4);
      }
			}
   translate([-33/2 +10.5,-6,-12])mg90s(0);
   translate([-33/2+5.5,-6,9])cube([33,12,25]);
   translate([-25,-25,-50])cube(50);//____---
   translate([0,-9,-4])rotate([0,-90,0])cylinder(r=2.75,h=50);
   translate([0,9,-4])rotate([0,-90,0])cylinder(r=2.75,h=50);
   translate([0,0,0])rotate([0,-90,0])cylinder(r=2,h=50);
   translate([-15,-6,-6])cube([5.5,12,12]);
   difference()
   {
      union()
      {
				     difference()
				     {
	           scale([1.2,1,1])sphere(16);
	           translate([-50,-25,-25])cube(50);
	           translate([-25,-25,-50])cube(50);
						   }
						   difference()
				     {
	           scale([1.2,1,0.95])sphere(16);
	           translate([-50,-25,-25])cube(50);
						   }
         scale([0.85,1,0.95])sphere(16);
         difference()
         {
            scale([0.85,1,1])sphere(16);
            translate([-25,-25,-50])cube(50);
						   }
			   }
			   translate([-25,-25,1])cube(50);
   }
   translate([0,-2.5,-5])cube([50,5,7.5]);
   translate([0,-10,-2.5])cube([50,20,2.5]);
}

//color([0.3,0.3,0.3])translate([-33/2 +10.5,-6,-12])mg90s(0);

