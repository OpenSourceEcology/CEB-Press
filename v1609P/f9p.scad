include <vars.scad>;
use <modus.scad>;

f9p();

module f9p(){

difference(){
cube([f9x,f9y,f9z]);
    translate([(3/12)*f9x,0,0])
        cornerjoint(f9z,(f8x/6),f8z,0.25,0.5,0.125,0,1);
    translate([(7/12)*f9x,0,0])
        cornerjoint(f9z,(f8x/6),f8z,0.25,0.5,0.125,0,1);
    translate([(11/12)*f9x,0,0])
        cornerjoint(f9z,(f8x/6),f8z,0.25,0.5,0.125,0,1);
    
    
    translate([0,f9y-0.5,0])
        tabinsert(0.5,0.5,f9z,0.03125,0.125,0,0,0,0,0.25,0.25,0,0,0);
    translate([f9x-f1y-d2y-f4y-drawergap-0.5,f9y-0.5,0])
        tabinsert(0.5,0.5,f9z,0.03125,0.125,0,0,0,0,0.25,0.25,0.25,0.25,0);
    translate([f9x-0.5,f9y-0.5,0])
        tabinsert(0.5,0.5,f9z,0.03125,0.125,0,0,0,0,0,0,0.25,0.25,0);
    
    
    //big cutout
    translate([f9x-(f1y-0.2)-(a2y+0.4),f9y-1.4,0])
        cube([a2y+0.4,1.4,f9z]);  //?interfaces with a2?
    
    
    //bolt holes
    //f6
    translate([2,2,0])  //?x interfaces with f6?  
    //replacing translate y=1.9 with y=f9y-2.5
        cylinder(h = f9z, r = 0.38);
    translate([6,2,0])  //?x interfaces with f6?
        cylinder(h = f9z, r = 0.38);   
        
        
        //distance from center to edge of part is 1.5
        //distance between center to center is 9.5283
        //distance from center to edge of part is 2
        //gap between parts is 6.0283
        //drawer is 6.0 tall
        //leaves 0.0283 space 
        //should this be 0.03125? (1/32)
        
        //should f4 be attached with 4 smaller bolts instead of 3 big ones. would prevent all movement?
        //f4
    translate([f9x-f1y-d2y-drawergap-2,2,0]) //replacing translate y=1.9 with f9y-2.5
        cylinder(h = f9z, r = 0.5025);
    translate([f9x-f1y-d2y-drawergap-5,2,0])
        cylinder(h = f9z, r = 0.5025);
    translate([f9x-f1y-d2y-drawergap-9,2,0])
        cylinder(h = f9z, r = 0.5025);
    
    //f1
    translate([f9x-4.5,2,0])  //?x interfaces with f1?
        cylinder(h = f9z, r = 0.38);
    translate([f9x-1.5,2,0])  //?x interfaces with f1?
        cylinder(h = f9z, r = 0.38);   
    }

}

