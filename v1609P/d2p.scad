include <vars.scad>;
use <modus.scad>;

echo(d8y+d6z+brickW+d3z+d5y+d3z); //total length of part

d2p();

module d2p(){
    
difference(){
cube([d2x,d2y,d2z]);
    
    //cuts numbered clockwise from top left
    
    //1 - Not on FreeCad Model??
    
    translate([0,d2y-0.43,0])
    cube([2,0.43,d2z]);
    
    //2 - D6
    
    translate([d8y,d2y-0.5,0])
    tabinsert(d6z,0.5,d2z,dGap,0.125,0,0,0,0,0.25,0.25,0.25,0.25,0);
    
    //3 - D3, D1
    
    translate([d8y+d6z+brickW,d2y-d1z-0.75,0])
    tabinsert(d3z,d1z+0.75,d2z,dGap,0.125,0,0,0,0,0.375,0.25,0.25,0.375,0);
    translate([d8y+d6z+brickW+d3z,d2y-d1z,0]) 
    tabinsert(1.5-d3z,d1z,d2z,dGap,0.125,0,0,0,0,0.25,0.625,0,0,0);
    
    //4 - D3, D1
    
    translate([d2x-d3z,d2y-0.75-d1z,0]) //put in far corner
    tabinsert(d3z,d1z+0.75,d2z,dGap,0.125,0,0,0,0,0,0,0.25,0.5,0);
    
    //5 - D3, D5
    
    translate([d8y+d6z+brickW+d3z+(d5y-0.5),0,0])
    tabinsert(0.5,d5z,d2z,dGap,0.125,0.25,0.25,0,0,0,0,0,0,0);
    translate([d8y+d6z+brickW+d3z+d5y,0,0])
    tabinsert(d3z,0.75,d2z,dGap,0.125,0.25,0.25,0,0,0,0,0,0,0);
    
    //6 -  D3, D5
    
    translate([d8y+d6z+brickW,0,0])
    tabinsert(d3z,0.75,d2z,dGap,0.125,0.5,0.25,0.25,0.25,0,0,0,0,0);
    translate([d8y+d6z+brickW+d3z,0,0]) 
    tabinsert(0.5,d5z,d2z,dGap,0.125,0,0,0.25,0.375,0,0,0,0,0);

    //7 - D6, D8 
    
    translate([d8y-0.75,0,0])
    tabinsert(0.75,d8z,d2z,dGap,0.125,0.25,0.25,0,0,0,0,0,0,0);
    translate([d8y,0,0])
    tabinsert(d6z,1,d2z,dGap,0.125,0.25,0.25,0.25,0.625,0,0,0,0,0);
    
    //8 - D8
    
    tabinsert(0.75,d8z,d2z,dGap,0.125,0,0,0.25,0.25,0,0,0,0,0);  
    
} //end difference

} //end d2p module
