include <vars.scad>;
use <modus.scad>;

use <h1p.scad>;
use <h2p.scad>;
//use <h3p.scad>;

Hp();

module Hp(){
    
    translate([0,0,0])
    rotate([90,00,0])
h1p(); 
    
        translate([0,hopperBaseY,0])
    rotate([atan((h1y-(sin(grateA)*grateY))/((cos(grateA)*grateY)-hopperBaseY)),00,0])
h2p(); 
}