/***********************************************************************
 *                         head_upper_part                             *
 ***********************************************************************
 * @author FioPio   (Ferriol Pey Comas)  ferriol73pey@gmail.com        *
 * @version v2.0    14/12/2018                                         *
 ***********************************************************************
 * This file contains the 3D model of the upper part of the head.      *
 ***********************************************************************/
use<mg90s.scad>

$fn=200;
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
      translate([head_widht/2-R,head_lenght/2-R,R])sphere(r=R);
      translate([R-head_widht/2,head_lenght/2-R,R])sphere(r=R);
      translate([head_widht/2-R,R-head_lenght/2,R])sphere(r=R);
      translate([R-head_widht/2,R-head_lenght/2,R])sphere(r=R);
      translate([head_widht/2-R,head_lenght/2-R,head_hight-R])sphere(r=R);
      translate([R-head_widht/2,head_lenght/2-R,head_hight-R])sphere(r=R);
      translate([head_widht/2-R,R-head_lenght/2,head_hight-R])sphere(r=R);
      translate([R-head_widht/2,R-head_lenght/2,head_hight-R])sphere(r=R);
			}
   union()
   {
      translate([6+3,-6,28])rotate([0,180,0])mg90s(0);
      translate([-19,-6,-18])cube([33,12,25]);
      //Camera
      translate([head_widht/2-5.5-1,-6,4])union()
      {
			   	   cube([5.5,12,12]);
			   	   translate([5,6,6])rotate([0,90,0])cylinder(r1=R_cam_optic,r2=R_cam_optic+17,h=5);
      }
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
      translate([-head_widht/2+2,-head_lenght/2+2])cube([head_widht-4,head_lenght-4,head_hight/2+3]);
      translate([-35,-35])cube([70,70,head_hight/2]);
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