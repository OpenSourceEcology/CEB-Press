include <vars.scad>;
use <modus.scad>;

f12p();

module f12p(){

difference(){
translate([-(f12x/2),0,0])
cube([f12x,f12y,f12z]);
translate([-(f12x/2),0,0])
cuts();
translate([(f12x/2),0,0])
mirror([1,0,0])
cuts();
} //end difference
module cuts(){
    translate([5.375,(f3y/2),0])  //??5.375 should this be something else
        cylinder(h = f12z, r = 0.5);
    translate([5.375,(f12y/2)+(brickW/2)+(f3y/2),0])
        cylinder(h = f12z, r = 0.5);
    translate([f12x/2,f12y/2,f12z/2])
        cube(size=[brickL+(d2z*2)+fZstandard,brickW+fZstandard,f12z], center=true);
} //end cuts module

} //end f12p module