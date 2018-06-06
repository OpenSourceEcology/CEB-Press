include <vars.scad>;
use <modus.scad>;

a6p();

//insert is 0.625"

module a6p(){
    
    X=a2x;
    Y=a1x;
    Zx=a2z;
    Zy=a1z;
    
    W=min(((1)/cos((atan((Y-1)/(X-1))))),((1)/sin((atan((Y-1)/(X-1)))))); 
    //trying to make some overhang for insert to butt up against. not perfect but working
    //trying for 0.5, but not getting there exactly
    
difference(){

union(){

translate([-1/tan(atan((Y-1)/(X-1))),0,0])
rotate([0,0,atan((Y-1)/(X-1))])
translate([0,-W,0])
#cube([50,W,a6z]);
    
cube([0.625,Zx,a6z]);
    
translate([X-Zy,Y-0.625,0])
cube([Zy,0.625,a6z]);
} //end union - start difference
        
translate([0.625,0,0])    
cube([100,Zx,a6z]);

translate([-100,-99,0])    
cube([100,100,a6z]);

translate([0,-100,0])    
cube([100,100,a6z]);

translate([0,Y,0])
cube([100,100,a6z]);

translate([X,0,0])
cube([100,100,a6z]);

translate([X-Zy,Y-0.625-100,0])
cube([Zy,100,a6z]);



    } //end difference
    
}  //end a6p module