include <vars.scad>;
use <modus.scad>;

f3p();

module f3p(){

difference(){
translate([-(f3x/2),0,0])
cube([f3x,f3y,f3z]);
translate([-(f3x/2),0,0])
cuts();
translate([(f3x/2),0,0])
mirror([1,0,0])
cuts();
} //end difference
module cuts(){
    translate([1,0,0])
        cornerjoint(f3z,(f3x-4)/2,f1z,1,1,0.125,0,0);
    translate([5.375,f3y/2,0])
        cylinder(h = f3z, r = 0.5);      
} //end cuts module

} //end f3p module