include <vars.scad>;
use <modus.scad>;

//need to add holes to A4 for cornerjoint

d10p();

module d10p(){

$fn=20;

difference(){
cube([d10x,d10y,d10z]);
    translate([1,d10y/2,0])
    cylinder(h = d10z,r = 0.55);
        translate([4,d10y/2,0])
    cylinder(h = d10z,r = 0.55);
        translate([9,d10y/2,0])
    cylinder(h = d10z,r = 0.55);
        translate([14,d10y/2,0])
    cylinder(h = d10z,r = 0.55);
        translate([17,d10y/2,0])
    cylinder(h = d10z,r = 0.55);
} //end difference


} //end d7p module