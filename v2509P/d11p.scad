include <vars.scad>;
use <modus.scad>;

//to be mounted on top of bushing holder. clamps holder down with screws

d11p();

module d11p(){

difference(){
cube([d11x,d11y,d11z]);
        
//bolt 1a
    translate([(d1bolt1OD/2)+0.5,d11y-(d1bolt1OD/2)-0.5,0])
    cylinder(h=d11z, r=d1bolt1OD/2);
//bolt 1b
    translate([(d1bolt1OD/2)+0.5,(d1bolt1OD/2)+0.5,0])
    cylinder(h=d11z, r=d1bolt1OD/2);
//bolt 2a
    translate([d11x-((d1bolt1OD/2)+0.5),d11y-(d1bolt1OD/2)-0.5,0])
    cylinder(h=d11z, r=d1bolt2OD/2);
//bolt 2b
    translate([d11x-((d1bolt1OD/2)+0.5),(d1bolt1OD/2)+0.5,0])
    cylinder(h=d11z, r=d1bolt2OD/2);

} //end difference

} //end d11p module
