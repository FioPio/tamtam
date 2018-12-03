/***********************************************************************
 *                              mg90s                                  *
 ***********************************************************************
 * @author FioPio   (Ferriol Pey Comas)  ferriol73pey@gmail.com        *
 * @version v1.0    03/12/2018                                         *
 ***********************************************************************
 * This file contains the 3D model of microservos mg90s, this has been *
 * done tinking on tamtam, a minihumanoid low cost designed by me,     *
 * FioPey, but it may be used on other projects due the license of     *
 * this. Please check the LICENSE file to know the details.            *
 ***********************************************************************/

$fn=120;

/***********************************************************************
 *                              mg90s                                  *
 ***********************************************************************
 * This module creates a mg90s solid.                                  *
 ***********************************************************************
 * @param alpha (optional) it's the rotation angle of the holder of    *
 *        the servo. If you don't use this it will not apear.          *
 * @param is_cutted (optional) if it is set to true, the "ears" of the *
 *        servo will desapear, in order to have a module without it if *
 *        needed.                                                      *
 ***********************************************************************/
module mg90s(alpha=-1,is_cutted= false )
{
   cube([23,12,23]);	
   if(!is_cutted)translate([-5,0,19])cube([33,12,2.5]);
   translate([6,6])cylinder(r=6,h=29);
   translate([12,6])cylinder(r=3,h=29);
   translate([6,6])cylinder(r=3,h=35.1);
   if(alpha!=-1)
   {
				   translate([6,6,23+6+6.1-2])rotate([0,0,alpha])union()
				   {
				      hull()
				      {
								     cylinder(r=3,h=2);
								     translate([15-1.75,0])cylinder(r=1.75,h=2);
							   }
							   //holes for the screws (there is one every 2 mm)
							   translate([4.5,0,-5])cylinder(r=.5,h=12);
							   translate([12.5,0,-5])cylinder(r=.5,h=12);
							}
			}
}
