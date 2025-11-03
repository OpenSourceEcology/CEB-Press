include <vars.scad>;
use <modus.scad>;

//push the F6 key on your keyboard twice for projection view
//This file contains all parts with 0.125" thickness (h parts)

use <h1p.scad>;
use <h2p.scad>;
use <h7p.scad>;
use <h8p.scad>;

partspacing=1; //common distance between parts
ps=partspacing;

//h1 (1/1)
projection(cut = true)
translate([h1y,h1x/2,0])
rotate([0,0,90])
h1p();

//h2 (1/1)
projection(cut = true)
translate([h1y+ps+h2y,h2x/2,0])
rotate([0,0,90])
h2p();

//h7 (1/1)
projection(cut = true)
translate([h1y+ps+h2y+ps+h7y,h7x/2,0])
rotate([0,0,90])
h7p();

//h8 (1/1)
projection(cut = true)
translate([h1y+ps+h2y+ps+h7y+ps+h8y,h8x/2,0])
rotate([0,0,90])
h8p();
