/***********************************************************************
 *                        servo_body_holder                            *
 ***********************************************************************
 * @author  FioPio    (Ferriol Pey Comas)   ferriol73pey@gmail.com     *
 * @version v1.2       07/12/2018                                      *
 ***********************************************************************
 * This file contains the 3D model of the body part that holds the     *
 * servomotors.                                                        *
 ***********************************************************************/
include<body_data.scad>

difference()
{
	  hull()
	  {
			   translate([R,R])cylinder(r=R,h=13);
			   translate([R,body_height-R])cylinder(r=R,h=13);
			   translate([body_width-R,body_height-R])cylinder(r=R,h=13);
			   translate([body_width-R,R])cylinder(r=R,h=13);
			}
   translate([5+6.5,29,6.5])rotate([90,0])union()
   {
			   mg90s();
			   translate([-6.5,0,0])cube([16,7,29]);
			   translate([-11,-3,4.5])cube([5,10,2]);
			}
   translate([body_width-5-6.5,29,6.5])rotate([90,180])union()
   {
			   mg90s();
			   translate([-6.5,-6.5])cube([16,7,29]);
			   translate([-11,-7,4.5])cube([5,10,2]);
			}
   translate([29,body_height-5-6.5,6.5])rotate([90,0,-90])union()
   {
			   mg90s();
			   translate([-6.5,0,0])cube([16,7,29]);
			   translate([-11,-3,4.5])cube([5,10,2]);
			}
   translate([body_width-29,body_height-5-6.5,6.5])rotate([-90,0,-90])union()
   {
			   mg90s();
			   translate([-6.5,-6.5])cube([16,7,29]);
			   translate([-11,-8,4.5])cube([5,10,2]);
			}
			translate([body_width/2,body_height/2+4])hull()
			{
				   translate([6-2.5,20-2.5,-25])cylinder(r=2.5,h=50);
				   translate([6-2.5,-20+2.5,-25])cylinder(r=2.5,h=50);
				   translate([-6+2.5,-20+2.5,-25])cylinder(r=2.5,h=50);
				   translate([-6+2.5,20-2.5,-25])cylinder(r=2.5,h=50);
			}
			translate([body_width/2,2,2])rotate([90,0])holder();
			translate([body_width/2,2,10])rotate([90,180])holder();
			
			translate([body_width/2-20,body_height-2,2])rotate([90,0,180])holder();
			translate([body_width/2-20,body_height-2,10])rotate([90,180,180])holder();
			translate([body_width/2+20,body_height-2,2])rotate([90,0,180])holder();
			translate([body_width/2+20,body_height-2,10])rotate([90,180,180])holder();
			translate([body_width/2,33+body_height+0.25,2.5])rotate([0,-90,90])mg90s(0);
}
