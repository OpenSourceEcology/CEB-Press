include <vars.scad>;
use <modus.scad>;

f13p();

module f13p(){
    
    difference(){
    cube([f6y,f9y,f13z]);
        translate([2,f9y-2.5,0])  //?x interfaces with f6?  
    //replacing translate y=1.9 with y=f9y-2.5
        cylinder(h = f9z, r = 0.38);
    translate([6,f9y-2.5,0])  //?x interfaces with f6?
        cylinder(h = f9z, r = 0.38); 
    }  
}