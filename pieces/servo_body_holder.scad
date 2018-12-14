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
			   translate([R,R])cylinder(r=R,h=12);
			   translate([R,body_height-R])cylinder(r=R,h=12);
			   translate([body_width-R,body_height-R])cylinder(r=R,h=12);
			   translate([body_width-R,R])cylinder(r=R,h=12);
			}
   translate([5,29])rotate([90,0])union()
   {
			   mg90s();
			   translate([0,6,0])cube([15,7,29]);
			   translate([-4,3.5,3.5])cube([5,10,2]);
			}
			translate([5,29,5])rotate([90,0])mg90s(-1,true);
   translate([body_width-5,29,12])rotate([90,180])union()
   {
			   mg90s();
			   cube([15,7,29]);
			   translate([-4,-4,3.5])cube([5,10,2]);
			}
			translate([body_width-5,29,17])rotate([90,180])mg90s(-1,true);
   translate([29,body_height-5])rotate([90,0,-90])union()
   {
			   mg90s();
			   translate([0,6,0])cube([15,7,29]);
			   translate([-4,3.5,3.5])cube([5,10,2]);
			}
			translate([29,body_height-5,5])rotate([90,0,-90])mg90s(-1,true);
   translate([body_width-29,body_height-5,12])rotate([-90,0,-90])union()
   {
			   mg90s();
			   cube([15,7,29]);
			   translate([-4,-4,3.5])cube([5,10,2]);
			}
			translate([body_width-29,body_height-5,17])rotate([-90,0,-90])mg90s(-1,true);
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
			translate([6+body_width/2,33+body_height+0.25,-4])rotate([0,-90,90])mg90s(0);
}

/*
color([0,1,0])translate([body_width/2,-44/2+body_height-3,12])translate([-61.5/2,-44/2,0])hull()
{
   translate([5,5])cylinder(r=5,h=2);	
   translate([61.5-5,5])cylinder(r=5,h=2);	
   translate([61.5-5,44-5])cylinder(r=5,h=2);	
   translate([5,44-5])cylinder(r=5,h=2);	
}   

color([0,1,0])translate([body_width/2,4,12])translate([-65/2,0])cube([65,10,30]);
*/
