include <vars.scad>;
use <modus.scad>;

d4p();

module d4p(){

difference(){
translate([-(d4x/2),0,0])
cube([d4x,d4y,d4z]);
translate([-(d4x/2),0,0])
cuts();
translate([(d4x/2),0,0])
mirror([1,0,0])
cuts();
} //end difference
module cuts(){
    translate([0,d5z+0.75,0])
    cornerjoint(d4z,(d4y-(0.75*2)-d5z),d3z,0.125,((d4y-(0.75*2)-d5z))-(0.125*2),0.125,270,0);

    translate([-0.125,0,0])
    cornerjoint(d4z,((d4x-0.5)/2)+(0.125),d5z,0.125,((d4x-0.5)/2)-0.125,0.125,0,0);
} //end cut module

} //end d4p module