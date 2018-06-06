include <vars.scad>;
use <modus.scad>;

f2p();

module f2p(){
    
difference(){
    cube([f2x,f2y,f2z]);
    translate([1,0,0])
        cornerjoint(f2z,f2x-2,f1z,0.125,f2x-2-0.25,0.125,0,0);
} //end difference

} //end f2p module