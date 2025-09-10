include <vars.scad>;
use <modus.scad>;

f11p();

module f11p(){
    
difference(){
translate([0,-(f11y/2),0])
cube([f11x,f11y,f11z]);
translate([0,-(f11y/2),0])
cuts();
translate([0,(f11y/2),0])
mirror([0,1,0])
cuts();
} //end difference

module cuts(){
    translate([0.5,0,0])
        cube([0.125,0.125+f9z,f11z]);
    translate([0.625,0,0])
        cube([f11x-0.5-0.125,f9z,f11z]);
  
} //end cuts module

}  //end f11p module