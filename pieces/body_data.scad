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
