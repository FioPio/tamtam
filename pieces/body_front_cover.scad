/****************************************************************
 *                         body_front_cover                      
 ****************************************************************
 * @author  FioPio  (Ferriol Pey Comas)   ferriol73pey@gmail.com 
 * @version v1.2       07/12/2018                                
 ****************************************************************
 * This file contains the 3D model of the body part that covers 
 * the battery. The write function has been done by Harlan Martin
 ***************************************************************/
include <body_data.scad>
use<write/write.scad>

back_cover_height=20;
R_S=8;
offset_back=0;

battery_length=34;
battery_width=16+10;
battery_heigth=57;

difference()
{
	  translate([0,0,-5.5])hull()
	  {
				   translate([R,R])cylinder(r=R,h=5.5);
							translate([R,body_height-R])cylinder(r=R,h=5.5);
							translate([body_width-R,body_height-R])cylinder(r=R,h=5.5);
							translate([body_width-R,R])cylinder(r=R,h=5.5);
							
							translate([R,R,back_cover_height-R_S+5.5])cylinder(r=R,h=R_S);
							translate([R,body_height-R-offset_back,back_cover_height-R_S+5.5])cylinder(r=R,h=R_S);
							translate([body_width-R,body_height-R-offset_back,back_cover_height-R_S+5.5])cylinder(r=R,h=R_S);
							translate([body_width-R,R,back_cover_height-R_S+5.5])cylinder(r=R,h=R_S);
			}
			translate([body_width,0,0])rotate([0,180])union()
			{
						hull()
						{
									translate([R,R])cylinder(r=R,h=12);
									translate([R,body_height-R])cylinder(r=R,h=12);
									translate([body_width-R,body_height-R])cylinder(r=R,h=12);
									translate([body_width-R,R])cylinder(r=R,h=12);
						}
						translate([body_width/2,33+body_height+0.25,2.5])rotate([0,-90,90])mg90s(0,true);
						translate([body_width/2,2,2])rotate([90,0])translate([-3,-1.5,-1.25])cube([6,4,5.5]);
						translate([body_width/2-20,body_height-2,2])rotate([90,0,180])translate([-3,-1.5,-1.25])cube([6,4,5.5]);
 					translate([body_width/2+20,body_height-2,2])rotate([90,0,180])translate([-3,-1.5,-1])cube([6,4,5.5]);
			}
	  translate([3,4,-10])cube([battery_length,battery_heigth,battery_width]);		
	  translate([body_width-3-battery_length,4,-10])cube([battery_length,battery_heigth,battery_width]);
	  translate([body_width/2,body_height/2+4])hull()
			{
				   translate([6-2.5,20-2.5,-10])cylinder(r=2.5,h=battery_width);
				   translate([6-2.5,-20+2.5,-10])cylinder(r=2.5,h=battery_width);
				   translate([-6+2.5,-20+2.5,-10])cylinder(r=2.5,h=battery_width);
				   translate([-6+2.5,20-2.5,-10])cylinder(r=2.5,h=battery_width);
			}
			translate([R_S+5,R_S+5,back_cover_height-2])write("TamTam",t=4,h=8);		
}
