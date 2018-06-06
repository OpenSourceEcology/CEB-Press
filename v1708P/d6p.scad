include <vars.scad>;
use <modus.scad>;

d6p();

module d6p(){


difference(){
translate([-(d6x/2),0,0])
cube([d6x,d6y,d6z]);
translate([-(d6x/2),0,0])
cuts();
translate([(d6x/2),0,0])
mirror([1,0,0])
cuts();
} //end difference

module cuts(){
    translate([0,1,0])
    cornerjoint(d6z,d6y-1-0.5,d2z,0.125,0.25,0.125,270,0);
    
    translate([(((d6x-cylinderDRAWERrodclevisW)/2)-(d9z/2)),((d9y-d8z)/2)+d8z,0])  
    tabinsert(d9z,0.5,d5z,0.03125,0.09375,0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25,1);
} //end cuts module

} //end d6p module
