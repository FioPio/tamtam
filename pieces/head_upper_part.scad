/**************************************************************
 *                         head_upper_part                     
 **************************************************************
 * @author FioPio (Ferriol Pey Comas)  ferriol73pey@gmail.com  
 * @version v2.1    15/12/2018                                 
 **************************************************************
 * This file contains the 3D model of the upper part of the 
 * head.
 *************************************************************/
use<mg90s.scad>

$fn=120;
R=3;
R_cam_optic=2;
head_lenght=45;
head_widht=42;
head_hight=35;
margin=4;

difference()
{
   //head
   hull()
   {
      translate([head_widht/2-R,head_lenght/2-R])cylinder(r=R,h=R);
      translate([R-head_widht/2,head_lenght/2-R])cylinder(r=R,h=R);
      translate([head_widht/2-R,R-head_lenght/2])cylinder(r=R,h=R);
      translate([R-head_widht/2,R-head_lenght/2])cylinder(r=R,h=R);
      translate([head_widht/2-R,head_lenght/2-R,head_hight-R])cylinder(r=R,h=R);
      translate([R-head_widht/2,head_lenght/2-R,head_hight-R])cylinder(r=R,h=R);
      translate([head_widht/2-R,R-head_lenght/2,head_hight-R])cylinder(r=R,h=R);
      translate([R-head_widht/2,R-head_lenght/2,head_hight-R])cylinder(r=R,h=R);
			}
   union()
   {
      //Camera wires
      translate([head_widht/2-5.5-1.5,-6,2])cube([5.5,12,26]);//*/
      //upper cover empty operation
      difference()
      {
         hull()
         {
            translate([head_widht/2-R-margin,head_lenght/2-R-margin,head_hight-R-margin])sphere(r=R);
            translate([R-head_widht/2+margin,head_lenght/2-R-margin,head_hight-R-margin])sphere(r=R);
            translate([head_widht/2-R-margin,R-head_lenght/2+margin,head_hight-R-margin])sphere(r=R);
            translate([R-head_widht/2+margin,R-head_lenght/2+margin,head_hight-R-margin])sphere(r=R);
         
            translate([head_widht/2-R-margin,head_lenght/2-R-margin,head_hight/2 -1])cylinder(r=R,h=2);
            translate([R-head_widht/2+margin,head_lenght/2-R-margin,head_hight/2 -1])cylinder(r=R,h=2);
            translate([head_widht/2-R-margin,R-head_lenght/2+margin,head_hight/2 -1])cylinder(r=R,h=2);
            translate([R-head_widht/2+margin,R-head_lenght/2+margin,head_hight/2 -1])cylinder(r=R,h=2);
         }
         translate([head_widht/2-margin-2,10,25])rotate([0,90])cylinder(r=5,h=10);
         translate([head_widht/2-margin-2,10-5,25])cube([10,10,10]);
         translate([head_widht/2-margin-2,-10,25])rotate([0,90])cylinder(r=5,h=10);
         translate([head_widht/2-margin-2,-15,25])cube([10,10,10]);
						}
      //eyes
      translate([head_widht/2-margin-2,10,25])rotate([0,90])cylinder(r1=2.75,r2=5,h=10);
      translate([head_widht/2-margin-2,-10,25])rotate([0,90])cylinder(r1=2.75,r2=5,h=10);
      //cable exit
      translate([-head_widht/2-5,-15,head_hight/2])cube([15,30,2]);
      translate([-head_widht/2-5,-5,head_hight/2])cube([15,10,6]);
   }
   union()
   {
      translate([-head_widht/2+1.5,-head_lenght/2+1.5])cube([head_widht-3,head_lenght-3,head_hight/2+4]);
      translate([-35,-35,-2])cube([70,70,head_hight/2+2]);
			}
   //translate([-35,-35,head_hight/2])cube([70,70,head_hight/2+5]);
}

//ears
translate([0,0,head_hight/2])difference()
{
   hull()
   {
      translate([3,head_lenght/2,3])sphere(2);
      translate([-3,head_lenght/2,3])sphere(2);
      translate([-3,head_lenght/2,-3])sphere(2);
      translate([3,head_lenght/2,-3])sphere(2);
      translate([3,-head_lenght/2,3])sphere(2);
      translate([-3,-head_lenght/2,3])sphere(2);
      translate([-3,-head_lenght/2,-3])sphere(2);
      translate([3,-head_lenght/2,-3])sphere(2);
   }
   cube(head_lenght,center=true);
}
