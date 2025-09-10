include <vars.scad>;
use <modus.scad>;

//need to add holes to A4 for cornerjoint

d7p();

module d7p(){

difference(){
cube([d7x,d7y,d7z]);
    
    //joint
    translate([d7x/2,0,0])
        cornerjoint(d7z,(d7x-1),a4z,0.125,0.25,0.125,0,1);
    
    //pin hole
    translate([d7x/2,a4z+d8z+(cylinderDRAWERbodyH/2),0])
        cylinder(h = d7z,r = (cylinderDRAWERrearclevisID/2));
} //end difference

} //end d7p module