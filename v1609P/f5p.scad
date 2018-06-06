include <vars.scad>;
use <modus.scad>;

f5p();

module f5p(){
    
difference(){
translate([-(f5x/2),0,0])
cube([f5x,f5y,f5z]);
translate([-(f5x/2),0,0])
cuts();
translate([(f5x/2),0,0])
mirror([1,0,0])
cuts();
} //end difference

module cuts(){
    translate([4,0,0])
    cornerjoint(f5z,(f5x-(4*2)-2)/2,f4z,1,1,0.125,0,0);    

    //arm bolt hole
    translate([(a1x/2),f5y-1.5,0])  //aligns with hole in center of a1x
        cylinder(h = f5z, r = 0.5);
    
    //might add an insert for an A6 type of support
    
} //end cuts module

} //end f5p module