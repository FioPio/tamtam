/*************************************************************
 *                              mg90s                         
 *************************************************************
 * @author FioPio (Ferriol Pey Comas)  ferriol73pey@gmail.com 
 * @version v1.3    20/01/2018                                
 *************************************************************
 * This file contains the 3D model of microservos mg90s, this 
 * has been done tinking on tamtam, a minihumanoid low cost 
 * designed by me, FioPio, but it may be used on other 
 * projects due the license of this. Please check the LICENSE 
 * file to know the details.
 ************************************************************/
$fn=120;
/*************************************************************
 *                              mg90s                         
 *************************************************************
 * This module creates a mg90s solid.                         
 *************************************************************
 * @param alpha (optional) it's the rotation angle of the 
 * holder of the servo. If you don't use this it will not 
 * apear.          
 * @param is_cutted (optional) if it is set to true, the 
 *        the servo holders will desapear, in order to have a 
 *        module without it if needed.
 ************************************************************/
module mg90s(alpha=-1,is_cutted= false,two_axies=false )
{
   translate([-6.5,-6.5])
	  {
      cube([23,13,23]);	
      if(!is_cutted)
      {
				     translate([-5,0,18.75])union()
				     {
            cube([33,13,3]);
            translate([2.5,6.5,-(10-2.5)/2-4])cylinder(r=.75,h=15);
            translate([2.5,6.5,10-(10-2.5)/2])cylinder(r=2.5,h=5);
            translate([33-2.5,6.5,-(10-2.5)/2-4])cylinder(r=.75,h=15);
            translate([33-2.5,6.5,10-(10-2.5)/2])cylinder(r=2.5,h=5);
	   					}
   			}
   			if(two_axies)
   			{
   				  translate([6.5,6.5,-1.2])  //Axis continuation
   	     {
   							   cylinder(r1=1,r2=1.9,h=1.2);
	   						   translate([0,0,0.01])cylinder(r1=1,r2=1.9,h=1.2);
	   						   translate([0,0,-8])cylinder(r=1,h=9);
	   					}
   			}
      translate([6.5,6.5])cylinder(r=6.5,h=29);
      translate([12.5,6.5])cylinder(r=3.5,h=29);
      translate([6.5,6.5])cylinder(r=3.75,h=35.1);
      translate([-4,3.5,4.5])cube([5,5,2]);
      if(alpha!=-1)
      {
   				   translate([6.5,6.5,23+6+6.1-2])rotate([0,0,alpha])union()
   				   {
   				      hull()
   				      {
	   							     cylinder(r=3.75,h=2);
	   							     translate([16,0])cylinder(r=2.25,h=2);
   							   }
	   						   //holes for the screws (there is one every 2 mm)
	   						   translate([4.5,0,-5])cylinder(r=.5,h=12);
   							   translate([12.5,0,-5])cylinder(r=.5,h=12);
	   						}
   			}
   }
} 
