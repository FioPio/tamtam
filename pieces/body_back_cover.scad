/****************************************************************
 *                         body_back_cover                       
 ****************************************************************
 * @author  FioPio  (Ferriol Pey Comas)   ferriol73pey@gmail.com 
 * @version v2.0       20/04/2019                                
 ****************************************************************
 * This file contains the 3D model of the body part that covers 
 * the electronic parts.                                         
 ***************************************************************/
include <body_data.scad>
$fn=200;
back_cover_height=20;
R_S=8;
offset_back=0;
wall_thickness=4;

difference()
{
	//Base for the bag
	translate([0,0,0])hull()
	{
		translate([0,0,-10])
		{
			translate([R,R])cylinder(r=R,h=5.5);
			translate([R,body_height-R])cylinder(r=R,h=5.5);
			translate([body_width-R,body_height-R])cylinder(r=R,h=5.5);
			translate([body_width-R,R])cylinder(r=R,h=5.5);
		}				
		translate([R,R,back_cover_height-R_S+5.5])cylinder(r=R,h=R_S);
		translate([R,body_height-R-offset_back,back_cover_height-R_S+5.5])cylinder(r=R,h=R_S);
		translate([body_width-R,body_height-R-offset_back,back_cover_height-R_S+5.5])cylinder(r=R,h=R_S);
		translate([body_width-R,R,back_cover_height-R_S+5.5])cylinder(r=R,h=R_S);
	}
	translate([body_width/2,33+body_height+0.25,2.5-12-10])rotate([0,-90,90])mg90s(0,true);
	//empty
	translate([0,0,-0.5])hull()
	{
		translate([0,0,-15])
		{
			translate([R+wall_thickness,R+wall_thickness])cylinder(r=R,h=5.5);
			translate([R+wall_thickness,body_height-R-wall_thickness])cylinder(r=R,h=5.5);
			translate([body_width-R-wall_thickness,body_height-R-wall_thickness])cylinder(r=R,h=5.5);
			translate([body_width-R-wall_thickness,R+wall_thickness])cylinder(r=R,h=5.5);
		}				
		translate([R+wall_thickness,R+wall_thickness,back_cover_height-R_S+6-wall_thickness])cylinder(r=R,h=R_S);
		translate([R+wall_thickness,body_height-R-offset_back-wall_thickness,back_cover_height-R_S+6-wall_thickness])cylinder(r=R,h=R_S);
		translate([body_width-R-wall_thickness,body_height-R-offset_back-wall_thickness,back_cover_height-R_S+6-wall_thickness])cylinder(r=R,h=R_S);
		translate([body_width-R-wall_thickness,R+wall_thickness,back_cover_height-R_S+6-wall_thickness])cylinder(r=R,h=R_S);
	}
	translate([-5,30,-15])rotate([0,90])hull()
	{
		cylinder(r=3,h=110);
		translate([-19,0])cylinder(r=3,h=110);
	}
	translate([body_width/2-15,body_height-5,-13])cube([30,20,10]);
	translate([-5,-5,-210])cube(200);
	//power switch button:
	translate([body_width-4.5*wall_thickness-8,body_height-3.5*wall_thickness-2])
	{
		cube([16,8,50]);
		translate([-19/2+8,4])cylinder(r=1,h=50);
		translate([19/2+8,4])cylinder(r=1,h=50);
	}
	translate([body_width/2,-1,5])rotate([-90,0,0])cylinder(r=10,h=20);
	translate([body_width/2 - 10, -1, -15])cube(20);
	//raspberry pi holes
	translate([7,10])
	{
		cylinder(r=1.1,h=30);
		translate([58,0])cylinder(r=1.1,h=30);
		translate([58,23])cylinder(r=1.1,h=30);
		translate([0,23])cylinder(r=1.1,h=30);
	}
}
