/*************************************************************
 *                         head_lower_part                    
 *************************************************************
 * @author FioPio (Ferriol Pey Comas)  ferriol73pey@gmail.com 
 * @version v2.3    20/01/2018                                
 *************************************************************
 * This file contains the 3D model of the lower part of the 
 * head. 
 ************************************************************/
use<mg90s.scad>

$fn=200;
R=3;
R_cam_optic=1.5;
head_lenght=45;
head_widht=42;
head_hight=35;
margin=4;
difference()
{
   intersection()
   {
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
            //translate([6+3,-6,28])rotate([0,180,0])mg90s(0);
            //translate([-19,-6,-18])cube([33,12,25]);
            //Camera
            translate([head_widht/2-5.5-1,-6,4])union()
            {
   	  		   	   translate([-0.5,0])cube([6,12,12]);
	     		   	   translate([5.5,6,6])rotate([0,90,0])cylinder(r1=R_cam_optic,r2=R_cam_optic+17,h=5);
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
            translate([-head_widht/2-5,-15,head_hight/2])cube([15,30,4]);
            translate([-head_widht/2-5,-5,head_hight/2])cube([15,10,6]);
         }
         //translate([-35,-35,head_hight/2])cube([70,70,head_hight/2+5]);
      }
      union()
      {
         translate([-head_widht/2+1.8,-head_lenght/2+1.8])cube([head_widht-3.6,head_lenght-3.6,head_hight/2+3]);
         translate([-35,-35])cube([70,70,head_hight/2]);
			   }
   }
			translate([2,0,28])rotate([0,180,0])mg90s(0);
			translate([-19.5,-6.5,-18])cube([33,13,25]);
}
