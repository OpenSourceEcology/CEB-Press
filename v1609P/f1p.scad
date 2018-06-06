include <vars.scad>;
use <modus.scad>;

f1p();

module f1p(){
    
difference(){
translate([-(f1x/2),0,0])
cube([f1x,f1y,f1z]);
translate([-(f1x/2),0,0])
cuts();
translate([(f1x/2),0,0])
mirror([1,0,0])
cuts();
} //end difference
module cuts(){
    tabinsert(1,f3z,f1z,0.0625,0.125,0,0,0.25,0.25,0.0,0,0,0,0);
    
    translate([0,f1y-0.25,0])
        cube([0.4,0.25,f1z]);     //appears to be intended to interface with A2, but not sure why
    translate([(f1x-f2x)/2,f1y-f2z,0])
        tabinsert(1,f2z,f1z,0.0625,0.125,0,0,0,0,0.25,0.25,0.25,0.25,0);    //f2
    translate([(f1x/2)-1,0,0])
        tabinsert(1,f3z,f1z,0.0625,0.125,0.25,0.25,0,0,0.0,0,0,0,0); 
    translate([((f1x-d3x-drawerHgap)/2)-2,1.5,0])  //bolt center to inner edge of f9=2
        cylinder(h = f1z, r = 0.375);   
    translate([((f1x-d3x-drawerHgap)/2)-2,4.5,0])
        cylinder(h = f1z, r = 0.375);
    translate([((f1x-d3x-drawerHgap)/2)+(sliderodholeOD/2)+drawerHgap,2.465,0]) //not sure what this is supposed to align with, drawer?
        cylinder(h = f1z, r = sliderodholeOD/2);     
} //end cuts module

} //end f1p module