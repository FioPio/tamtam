/***********************************************************************
 *                         body_back_cover                             *
 ***********************************************************************
 * @author  FioPio    (Ferriol Pey Comas)   ferriol73pey@gmail.com     *
 * @version v1.2       07/12/2018                                      *
 ***********************************************************************
 * This file contains the 3D model of the body part that covers the    *
 * electronic parts.                                                   *
 ***********************************************************************/
include <body_data.scad>
back_cover_height=35;
R_S=8;
offset_back=30;
wall_thickness=3;

difference()
{
	  translate([0,0,-5.5])hull()
	  {
				   translate([R,R])cylinder(r=R,h=15.5);
							translate([R,body_height-R])cylinder(r=R,h=15.5);
							translate([body_width-R,body_height-R])cylinder(r=R,h=15.5);
							translate([body_width-R,R])cylinder(r=R,h=15.5);
							translate([R_S,R_S,back_cover_height-R_S+5.5])sphere(R_S);
							translate([R_S,body_height-R_S-offset_back,back_cover_height-R_S+5.5])sphere(R_S);
							translate([body_width-R_S,body_height-R_S-offset_back,back_cover_height-R_S+5.5])sphere(R_S);
							translate([body_width-R_S,R_S,back_cover_height-R_S+5.5])sphere(R_S);
			}
			translate([0,0,-12])union()
			{
						difference()
						{
									hull()
									{
												translate([R,R])cylinder(r=R,h=12);
												translate([R,body_height-R])cylinder(r=R,h=12);
												translate([body_width-R,body_height-R])cylinder(r=R,h=12);
												translate([body_width-R,R])cylinder(r=R,h=12);
									}
									translate([5,29])rotate([90,0])translate([0,6,0])cube([15,7,29]);
									translate([body_width-5,29,12])rotate([90,180])cube([15,7,29]);
									translate([29,body_height-5])rotate([90,0,-90])translate([0,6,0])cube([15,7,29]);
									translate([body_width-29,body_height-5,12])rotate([-90,0,-90])cube([15,7,29]);
									
									translate([body_width/2,2,10])rotate([90,180])holder();
									translate([body_width/2-20,body_height-2,10])rotate([90,180,180])holder();
									translate([body_width/2+20,body_height-2,10])rotate([90,180,180])holder();
						}
						translate([5,29])rotate([90,0])mg90s(-1,true);
						translate([body_width-5,29,12])rotate([90,180])mg90s(-1,true);
						translate([29,body_height-5])rotate([90,0,-90])mg90s(-1, true);
						translate([body_width-29,body_height-5,12])rotate([-90,0,-90])mg90s(-1,true);
						translate([6+body_width/2,33+body_height+0.25,-4])rotate([0,-90,90])mg90s(0,true);
						
						translate([body_width/2,2,2])rotate([90,0])translate([-3.25,-1.75,-1.25])cube([6.5,4.5,5.5]);
						translate([body_width/2,2,10])rotate([90,180])translate([-3.25,-1.75,-1.25])cube([6.5,4.5,5.5]);
						translate([body_width/2-20,body_height-2,2])rotate([90,0,180])translate([-3.25,-1.75,-1.25])cube([6.5,4.5,5.5]);
						translate([body_width/2-20,body_height-2,10])rotate([90,180,180])translate([-3.25,-1.75,-1.25])cube([6.5,4.5,5.5]);
						translate([body_width/2+20,body_height-2,2])rotate([90,0,180])translate([-3.25,-1.75,-1.25])cube([6.5,4.5,5.5]);
						translate([body_width/2+20,body_height-2,10])rotate([90,180,180])translate([-3.25,-1.75,-1.25])cube([6.5,4.5,5.5]);
			}
			//empty
			translate([0,0,-6])hull()
	  {
				   translate([R+wall_thickness,R+wall_thickness])cylinder(r=R,h=5.5);
							translate([R+wall_thickness,body_height-R-wall_thickness])cylinder(r=R,h=5.5);
							translate([body_width-R-wall_thickness,body_height-R-wall_thickness])cylinder(r=R,h=5.5);
							translate([body_width-R-wall_thickness,R+wall_thickness])cylinder(r=R,h=5.5);
							translate([R_S+wall_thickness,R_S+wall_thickness,back_cover_height-R_S+6-wall_thickness])sphere(R_S);
							translate([R_S+wall_thickness,body_height-R_S-offset_back-wall_thickness,back_cover_height-R_S+6-wall_thickness])sphere(R_S);
							translate([body_width-R_S-wall_thickness,body_height-R_S-offset_back-wall_thickness,back_cover_height-R_S+6-wall_thickness])sphere(R_S);
							translate([body_width-R_S-wall_thickness,R_S+wall_thickness,back_cover_height-R_S+6-wall_thickness])sphere(R_S);
			}
			translate([-5,30,-7])rotate([0,90])hull()
			{
			   cylinder(r=3,h=110);
			   translate([-19,0])cylinder(r=3,h=110);
			}
}

/*
color([0,1,0])translate([body_width/2,-44/2+body_height-3,2])translate([-61.5/2,-44/2,0])hull()
{
   translate([5,5])cylinder(r=5,h=2);	
   translate([61.5-5,5])cylinder(r=5,h=2);	
   translate([61.5-5,44-5])cylinder(r=5,h=2);	
   translate([5,44-5])cylinder(r=5,h=2);	
}   

color([0,1,0])translate([body_width/2,4,2])translate([-65/2,0])cube([65,10,30]);
*/
