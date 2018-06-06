include <vars.scad>;
use <modus.scad>;

f6p();

module f6p(){

difference(){
translate([-(f6x/2),0,0])
cube([f6x,f6y,f6z]);
translate([-(f6x/2),0,0])
cuts();
translate([(f6x/2),0,0])
mirror([1,0,0])
cuts();
} //end difference
module cuts(){
    
    translate([(f6x-f2x)/2,f6y-f2z,0])
        tabinsert(1,f2z,f6z,0.0625,0.125,0,0,0,0,0.25,0.25,0.25,0.25,0);    //F2
    
//need to change this section to match MAINcylinder specs
    translate([(f6x/2)-1.125,f6y-3.22,0])
        cube([2.25,3.22,f6z]);  
    translate([f6x/2,f6y-3.22,0])
        cylinder(h = f6z, r = 1.125);
    
    // bolt holes to f9
    translate([((f6x-brickL-(d2z*2)-drawerHgap)/2)-2,2,0])
        cylinder(h = f6z, r = 0.38); //diameter 0.76?
    translate([((f6x-brickL-(d2z*2)-drawerHgap)/2)-2,6,0])
        cylinder(h = f6z, r = 0.38);
    
} //end cuts module
} //end f6p module