include <vars.scad>;
use <modus.scad>;

//push the F6 key on your key board twice for projection view

use<d1p.scad>;
use<d2p.scad>;
use<d3p.scad>;
use<d4p.scad>;
use<d5p.scad>;
use<d6p.scad>;
use<d8p.scad>;
use<d9p.scad>;


partspacing=1; //common distance between parts

projection(cut = true) //use projection to create 2D DXF files
translate([-((96*2)+5),0,0])
union(){
cube([96,48,0.5]);
translate([96+4,0,0])    
cube([96,48,0.5]);
translate([96,0,0])
cube([4,0.01,0.5]);    
}

//d1
projection(cut = true) //use projection to create 2D DXF files
translate([d1y,d1x/2,0])
rotate([0,0,90])
d1p();

projection(cut = true)
translate([d1y+partspacing+d2y,0,0])
rotate([0,0,90])
d2p();

projection(cut = true)
translate([d1y+partspacing+d2y+partspacing+d2y,0,0])
rotate([0,0,90])
d2p();

projection(cut = true)
translate([d1y+partspacing+d2y+partspacing+d2y+partspacing+d3y,d3x/2,0])
rotate([0,0,90])
d3p();

projection(cut = true)
translate([d1y+partspacing+d2y+partspacing+d2y+partspacing+d3y+partspacing+d3y,d3x/2,0])
rotate([0,0,90])
d3p();