include <vars.scad>;
use <modus.scad>;

d1p();

module d1p(){

difference(){
translate([-(d1x/2),0,0])
cube([d1x,d1y,d1z]);
translate([-(d1x/2),0,0])
cuts();
translate([(d1x/2),0,0])
mirror([1,0,0])
cuts();
} //end difference
module cuts(){
        cube([(d1x-brickL-d2z-d2z)/2,16,d1z]);
    translate([(d1x-brickL-d2z-d2z)/2,1.5,0]) //1.5 could be better defined
        cube([0.6,5,d1z]);  //June freecad model has larger cut out
} //end module

} //end d1p module