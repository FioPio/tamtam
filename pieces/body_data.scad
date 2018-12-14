/***********************************************************************
 *                             body_data                               *
 ***********************************************************************
 * @author FioPio   (Ferriol Pey Comas)  ferriol73pey@gmail.com        *
 * @version v1.0    11/12/2018                                         *
 ***********************************************************************
 * This file contains the information needed for building the body and *
 * it's front and back covers.                                         *
 ***********************************************************************/
 
use <mg90s.scad>
$fn=120;

feet_separation=10;
body_width=67+feet_separation;
body_height=65;
R=4;

module holder()
{
   difference()
   {
      translate([-4,-2])cube([8,5.5,2]);
      translate([-3,-1.5,-1])cube([6,4,5]);
   }
   translate([-3,-1.5,0])rotate([26.565,0,0])cube([6,5.5,2]);
}
