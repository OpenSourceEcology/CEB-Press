include <vars.scad>;
use <modus.scad>;

d9p();

module d9p(){

difference(){
cube([d9x,d9y,d9z]);
    
    //x
translate([-0.125,0,0])
    cornerjoint(d9z,0.125+(d6z+((d9x-d6z-0.5)/2)),d8z,0.125,(d6z+((d9x-d6z-0.5)/2))-0.125,0.125,0,0);
translate([0.5+(d6z+((d9x-d6z-0.5)/2)),0,0])
    cornerjoint(d9z,((d9x-d6z-0.5)/2)+0.125,d8z,0.125,((d9x-d6z-0.5)/2)-0.125,0.125,0,0);
    
    //y
translate([0,-0.125,0])
    cornerjoint(d9z,0.125+(d8z+((d9y-d8z-0.5)/2)),d6z,0.125,(d8z+((d9y-d8z-0.5)/2))-0.125,0.125,270,0);
translate([0,0.5+(d8z+((d9y-d8z-0.5)/2)),0])
    cornerjoint(d9z,((d9y-d8z-0.5)/2)+0.125,d6z,0.125,((d9y-d8z-0.5)/2)-0.125,0.125,270,0);

    //pin hole
translate([(0.5/2)+(d6z+((d9x-d6z-0.5)/2)),(0.5/2)+(d8z+((d9y-d8z-0.5)/2)),0])
    cylinder(h = d9z,r = (cylinderDRAWERrodclevisID/2));
}

} //end d9p module