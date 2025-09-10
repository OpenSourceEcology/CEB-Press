include <vars.scad>;
use <modus.scad>;

d8p();

module d8p(){

difference(){
translate([-(d8x/2),0,0])
cube([d8x,d8y,d8z]);
translate([-(d8x/2),0,0])
cuts();
translate([(d8x/2),0,0])
mirror([1,0,0])
cuts();
} //end difference
module cuts(){
    translate([0,d8y/2,0])
    cornerjoint(d8z,d8y-(0.75*2),d2z,0.125,0.25,0.125,270,1);

    translate([1,d8y-0.125,0])
    cube([(d8x-(1*3))/2,0.125,d8z]);
    
    translate([(((d6x-cylinderDRAWERrodclevisW)/2)-(d9z/2)),d8y-((d9x-d6z)/2),0])
    tabinsert(d9z,0.5,d5z,0.03125,0.09375,0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25,1);
    
} //end module

} //end d8p module