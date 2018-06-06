include <vars.scad>;
use <modus.scad>;

//this part is rendered upside down from placement

d3p();

module d3p(){

difference(){
translate([-(d3x/2),0,0])
cube([d3x,d3y,d3z]);
translate([-(d3x/2),0,0])
cuts();
translate([(d3x/2),0,0])
mirror([1,0,0])
cuts();
} //end difference

module cuts(){
    translate([0,d3y/2,0])
    cornerjoint(d3z,d3y-(0.75*2),d2z,0.125,0.25,0.125,270,1);    
    
    //outer columns tab inserts
    
    translate([(brickL/4)+d2z,d3y-d5z-(0.75/2),0])
    tabinsert(d4z,0.75,d3z,dGap,0.09375,0.375,0.25,0.25,0.375,0.375,0.25,0.25,0.375,1);
    translate([(brickL/4)+d2z,((d4y-d5z)/2),0])
    tabinsert(d4z,0.5,d3z,dGap,0.09375,0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25,1);
    translate([(brickL/4)+d2z,0,0])
    tabinsert(d4z,(0.75*2),d3z,dGap,0.09375,0.625,0.25,0.25,0.625,0,0,0,0,1);
    
    //center column tab inserts
    
    translate([d3x/2,d3y-d5z-(0.75/2),0])
    tabinsert(d4z,0.75,d3z,dGap,0.09375,0.375,0.25,0.25,0.375,0.375,0.25,0.25,0.375,1); 
    translate([d3x/2,((d4y-d5z)/2),0])
    tabinsert(d4z,0.5,d3z,dGap,0.09375,0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25,1);
    translate([d3x/2,0,0])
    tabinsert(d4z,(0.75*2),d3z,dGap,0.09375,0.625,0.25,0.25,0.625,0,0,0,0,1);
    
} //end cuts module

} //end d3p module