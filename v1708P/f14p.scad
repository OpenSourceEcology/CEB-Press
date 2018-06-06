include <vars.scad>;
use <modus.scad>;

f14p();

module f14p(){
    
difference(){
    cube([f14x,f14y,f14z]);
    translate([1,0,0])
        cornerjoint(f14z,f14x-2,f4z,0.125,f14x-2-0.25,0.125,0,0);
} //end difference

} //end f14p module