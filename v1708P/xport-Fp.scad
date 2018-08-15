include <vars.scad>;
use <modus.scad>;

//push the F6 key on your key board twice for projection view

use <f1p.scad>;
use <f2p.scad>;
use <f3p.scad>;
use <f4p.scad>;
use <f5p.scad>;
use <f6p.scad>;
//use <f7p.scad>;
use <f8p.scad>;
use <f9p.scad>;
//use <f10p.scad>; //part retired?
use <f11p.scad>;
use <f12p.scad>;
//use <f13p.scad>;
use <f14p.scad>;

partspacing=1; //common distance between parts
ps=partspacing;

projection(cut = true) //use projection to create 2D DXF files
//f1
projection(cut = true) //use projection to create 2f fXF files
translate([f1y,f1x/2,0])
rotate([0,0,90])
f1p();

//f2 (1/2)
projection(cut = true)
translate([f1y+ps+f2y,0,0])
rotate([0,0,90])
f2p();

//f2 (2/2)
projection(cut = true)
translate([f1y+ps+f2y,ps+f2x,0])
rotate([0,0,90])
f2p();

//f3 (1/2)
projection(cut = true)
translate([f1y+ps+f2y+ps+f3y,(f3x/2),0])
rotate([0,0,90])
f3p();

//f3 (2/2)
projection(cut = true)
translate([f1y+ps+f2y+ps+f3y,(f3x/2)+ps+f3x,0])
rotate([0,0,90])
f3p();

//f4 (1/3)
projection(cut = true)
translate([f1y+ps+f2y+ps+f3y+ps+f4y,f4x/2,0])
rotate([0,0,90])
f4p();

//f4 (2/3)
projection(cut = true)
translate([f1y+ps+f2y+ps+f3y+ps+f4y,(f4x/2)+ps+f4x,0])
rotate([0,0,90])
f4p();

//f4 (3/3)
projection(cut = true)
translate([f1y+ps+f2y+ps+f3y+ps+f4y,(f4x/2)+ps+f4x+ps+f4x,0])
rotate([0,0,90])
f4p();

//f5 (1/1)
projection(cut = true)
translate([f1y+ps+f2y+ps+f3y+ps+f4y+ps+f5y,f5x/2,0])
rotate([0,0,90])
f5p();

//f6 (1/1)
projection(cut = true)
translate([f1y+ps+f2y+ps+f3y+ps+f4y+ps+f5y+ps+f6y,f6x/2,0])
rotate([0,0,90])
f6p();

//f7
//projection(cut = true)
//translate([f1y+ps+f2y+ps+f3y+ps+f4y+ps+f5y+ps+f6y+ps+f7y,0,0])
//rotate([0,0,90])
//f7p();

//f8 (1/1)
projection(cut = true)
translate([f1y+ps+f2y+ps+f3y+ps+f4y+ps+f5y+ps+f6y+ps+f7y+ps+f8y,f8x/2,0])
rotate([0,0,90])
f8p();

//f9 (1/2)
projection(cut = true)
translate([f1y+ps+f2y+ps+f3y+ps+f4y+ps+f5y+ps+f6y+ps+f7y+ps+f8y+ps+f9y,0,0])
rotate([0,0,90])
f9p();

//f9 (2/2)
projection(cut = true)
translate([f1y+ps+f2y+ps+f3y+ps+f4y+ps+f5y+ps+f6y+ps+f7y+ps+f8y+ps+f9y,ps+f9x,0])
rotate([0,0,90])
f9p();

//f10
//projection(cut = true)
//translate([f1y+ps+f2y+ps+f3y+ps+f4y+ps+f5y+ps+f6y+ps+f7y+ps+f8y+ps+f9y+ps+f10y,0,0])
//rotate([0,0,90])
//f10p();

//f11 (1/2)
projection(cut = true)
translate([f1y+ps+f2y+ps+f3y+ps+f4y+ps+f5y+ps+f6y+ps+f7y+ps+f8y+ps+f9y+ps+f10y+ps+f11y,0,0])
rotate([0,0,90])
f11p();

//f11 (2/2)
projection(cut = true)
translate([f1y+ps+f2y+ps+f3y+ps+f4y+ps+f5y+ps+f6y+ps+f7y+ps+f8y+ps+f9y+ps+f10y+ps+f11y,ps+f11x,0])
rotate([0,0,90])
f11p();

//f12 (1/2)
projection(cut = true)
translate([f1y+ps+f2y+ps+f3y+ps+f4y+ps+f5y+ps+f6y+ps+f7y+ps+f8y+ps+f9y+ps+f10y+ps+f11y+ps+f12y,f12x/2,0])
rotate([0,0,90])
f12p();