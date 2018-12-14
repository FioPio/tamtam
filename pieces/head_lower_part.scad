/***********************************************************************
 *                         head_lower_part                             *
 ***********************************************************************
 * @author FioPio   (Ferriol Pey Comas)  ferriol73pey@gmail.com        *
 * @version v2.0    14/12/2018                                         *
 ***********************************************************************
 * This file contains the 3D model of the lower part of the head.      *
 ***********************************************************************/
use<mg90s.scad>

//$fn=20;
R=3;
head_lenght=45;
head_widht=42;
head_hight=35;

difference()
{
   hull()
   {
      translate([head_widht/2-R,head_lenght/2-R,R])sphere(r=R);
      translate([R-head_widht/2,head_lenght/2-R,R])sphere(r=R);
      translate([head_widht/2-R,R-head_lenght/2,R])sphere(r=R);
      translate([R-head_widht/2,R-head_lenght/2,R])sphere(r=R);
      translate([head_widht/2-R,head_lenght/2-R,head_hight-R])sphere(r=R);
      translate([R-head_widht/2,head_lenght/2-R,head_hight-R])sphere(r=R);
      translate([head_widht/2-R,R-head_lenght/2,head_hight-R])sphere(r=R);
      translate([R-head_widht/2,R-head_lenght/2,head_hight-R])sphere(r=R);
   }
   translate([6+3,-6,23])rotate([0,180,0])mg90s(0);
   translate([-19,-6,-23])cube([33,12,25]);
}
/*
rotate([0,180,0])
{
	  //neck servo
	  translate([-33/2 +10.5,-6,-12])mg90s(0);
   translate([-33/2+5.5,-6,9])cube([33,12,25]);
   //eyes
   translate([0,-9,-4])rotate([0,-90,0])cylinder(r=2.75,h=50);
   translate([0,9,-4])rotate([0,-90,0])cylinder(r=2.75,h=50);
   //Camera
   translate([0,0,0])rotate([0,-90,0])cylinder(r=2,h=50);
   translate([-15,-6,-6])cube([5.5,12,12]);
   //
   
}
*/
