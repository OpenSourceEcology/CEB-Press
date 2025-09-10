include <vars.scad>;
use <modus.scad>;

d5p();

module d5p(){

difference(){
translate([-(d5x/2),0,0])
cube([d5x,d5y,d5z]);
translate([-(d5x/2),0,0])
cuts();
translate([(d5x/2),0,0])
mirror([1,0,0])
cuts();
} //end difference

module cuts(){
    translate([0,d5y/2,0])
    cornerjoint(d5z,d5y-(0.5*2),d2z,0.125,0.25,0.125,270,1);

    translate([1,0,0])
        cube([(d5x-(1*3))/2,0.125,d5z]);
        translate([1,d5y-0.125,0])
        cube([(d5x-(1*3))/2,0.125,d5z]);
    
    //outer inserts
    translate([(brickL/4)+d2z,d5y/2,0])
    tabinsert(0.5,0.5,d5z,0.03125,0.09375,0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25,1);
 
    //center insert
        translate([d5x/2,d5y/2,0])
    tabinsert(0.5,0.5,d5z,0.03125,0.09375,0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25,1);

} //end cuts module

} //end d5p module