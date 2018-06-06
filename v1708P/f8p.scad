include <vars.scad>;
use <modus.scad>;

f8p();

module f8p(){

difference(){
cube([f8x,f8y,f8z]);
    translate([(1/12)*f8x,0,0])
        cornerjoint(f8z,(f8x/6),f9z,0.25,0.5,0.125,0,1);
    translate([(5/12)*f8x,0,0])
        cornerjoint(f8z,(f8x/6),f9z,0.25,0.5,0.125,0,1);
    translate([(9/12)*f8x,0,0])
        cornerjoint(f8z,(f8x/6),f9z,0.25,0.5,0.125,0,1);
    
    translate([(1/12)*f8x,f8y,0])
        cornerjoint(f8z,(f8x/6),f9z,0.25,0.5,0.125,180,1);
    translate([(5/12)*f8x,f8y,0])
        cornerjoint(f8z,(f8x/6),f9z,0.25,0.5,0.125,180,1);
    translate([(9/12)*f8x,f8y,0])
        cornerjoint(f8z,(f8x/6),f9z,0.25,0.5,0.125,180,1);
    
    hull(){
    translate([f8x-7-((f1y+d2y+drawergap+1)-(0.26/2)),f8y/2,0])  //?x interfaces with what? need to calculate center of F8
        cylinder(h = f8z, r = f8boltD/2);
    translate([f8x-7-((f1y+d2y+drawergap+1)+(0.26/2)),f8y/2,0])
        cylinder(h = f8z, r = f8boltD/2);
    }

        hull(){
    translate([f8x-((f1y+d2y+drawergap+1)-(0.26/2)),f8y/2,0])  //?x interfaces with what?
        cylinder(h = f8z, r = f8boltD/2);
    translate([f8x-((f1y+d2y+drawergap+1)+(0.26/2)),f8y/2,0])
        cylinder(h = f8z, r = f8boltD/2);
    }
}

} //end f8p module