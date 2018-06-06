include <vars.scad>;
use <modus.scad>;

h2p();

module h2p(){
    
difference(){
    
translate([-(h2x/2),0,0])
cube([h2x,h2y,h2z]);    
translate([-(h2x/2),0,0])
cuts();
translate([(h2x/2),0,0])
mirror([1,0,0])
cuts();
} //end difference

module cuts(){


translate([h2x-((h2x-hopperBaseX)/2),0,0])
rotate([0,0,atan(h2y/((h2x-hopperBaseX)/2))])
    translate([0,-sin(atan(h2y/((h2x-hopperBaseX)/2)))*(h2x-hopperBaseX)/2,0])
cube([sqrt((((h2x-hopperBaseX)/2)*((h2x-hopperBaseX)/2))+((h2y)*(h2y))),sin(atan(h2y/((h2x-hopperBaseX)/2)))*(h2x-hopperBaseX)/2,h2z]);
    
} //end cuts module
} //end h2p module