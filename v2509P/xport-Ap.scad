include <vars.scad>;
use <modus.scad>;

//push the F6 key on your key board twice for projection view


use<a1p.scad>;
use<a2p.scad>;
use<a3p.scad>;
use<a4p.scad>;
use<a5p.scad>;
use<a6p.scad>;

partspacing=1; //common distance between parts
ps=partspacing;

//a1 (1/2)
projection(cut = true) //use projection to create 2a aXF files
translate([a1y,0,0])
rotate([0,0,90])
a1p();

//a1 (2/2)
projection(cut = true) //use projection to create 2a aXF files
translate([a1y,ps+a1x,0])
rotate([0,0,90])
a1p();

//a2 (1/2)
projection(cut = true)
translate([a1y+ps+a2y,0,0])
rotate([0,0,90])
a2p();

//a2 (2/2)
projection(cut = true)
translate([a1y+ps+a2y,ps+a2x,0])
rotate([0,0,90])
a2p();

//a3 (1/2)
projection(cut = true)
translate([a1y+ps+a2y+ps+a3y,0,0])
rotate([0,0,90])
a3p();

//a3 (2/2)
projection(cut = true)
translate([a1y+ps+a2y+ps+a3y,ps+a3x,0])
rotate([0,0,90])
a3p();

//a4 (1/1)
projection(cut = true)
translate([a1y+ps+a2y+ps+a3y+ps+a4y,0,0])
rotate([0,0,90])
a4p();

//a5 (1/1)
projection(cut = true)
translate([a1y+ps+a2y+ps+a3y+ps+a4y+ps+a5y,0,0])
rotate([0,0,90])
a5p();

for(i=[0:5])
//a6 (1/1)
projection(cut = true)
translate([a1y+ps+a2y+ps+a3y+ps+a4y+ps+a5y+ps+a6y,i*(ps+a6x),0])
rotate([0,0,90])
a6p();