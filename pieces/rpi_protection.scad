/****************************************************************
 *                         rpi_protection                       
 ****************************************************************
 * @author  FioPio  (Ferriol Pey Comas)   ferriol73pey@gmail.com 
 * @version v2.0       20/04/2019                                
 ****************************************************************
 * This file contains the 3D model of the body part that covers 
 * the  raspberry
 ***************************************************************/

$fn=120;
difference()
{
			union()
			{
							hull()
							{
											cylinder(r=3,h=4);
											translate([65-7,0])cylinder(r=3,h=4);
											translate([65-7,30-7])cylinder(r=3,h=4);
											translate([0,30-7])cylinder(r=3,h=4);
							}
							translate([3.5-3,3.5-3])
							{
										cylinder(r=2,h=10);
										translate([58,0])cylinder(r=2,h=10);
										translate([58,23])cylinder(r=2,h=10);
										translate([0,23])cylinder(r=2,h=10);
							}
			}
			translate([3.5-3,3.5-3,-0.5])
			{
							cylinder(r=1.1,h=30);
							translate([58,0])cylinder(r=1.1,h=30);
							translate([58,23])cylinder(r=1.1,h=30);
							translate([0,23])cylinder(r=1.1,h=30);
			}
			translate([3.5,30-7-3,-0.5])hull()
			{
							cylinder(r=1,h=6);
							translate([0,10])cylinder(r=1,h=6);
							translate([60-7-1,0])cylinder(r=1,h=6);
							translate([60-7-1,10])cylinder(r=1,h=6);
			}
}
