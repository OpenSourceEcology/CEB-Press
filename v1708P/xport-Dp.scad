include <vars.scad>;
use <modus.scad>;

//push the F6 key on your key board twice for projection view

use<d1p.scad>;
use<d2p.scad>;
use<d3p.scad>;
use<d4p.scad>;
use<d5p.scad>;
use<d6p.scad>;
use<d7p.scad>;
use<d8p.scad>;
use<d9p.scad>;
use<d10p.scad>;
use<d11p.scad>;
use<d12p.scad>;

partspacing=1; //common distance between parts
ps=partspacing;

projection(cut = true) //use projection to create 2D DXF files

//d1
projection(cut = true) //use projection to create 2D DXF files
translate([d1y,d1x/2,0])
rotate([0,0,90])
d1p();

//d2 (1/2)
projection(cut = true)
translate([d1y+ps+d2y,0,0])
rotate([0,0,90])
d2p();

//d2 (2/2)
projection(cut = true)
translate([d1y+ps+d2y,ps+d2x,0])
rotate([0,0,90])
d2p();

//d3 (1/2)
projection(cut = true)
translate([d1y+ps+d2y+ps+d3y,(d3x/2),0])
rotate([0,0,90])
d3p();

//d3 (2/2)
projection(cut = true)
translate([d1y+ps+d2y+ps+d3y,(d3x/2)+ps+d3x,0])
rotate([0,0,90])
d3p();

//d4 (1/3)
projection(cut = true)
translate([d1y+ps+d2y+ps+d3y+ps+d4y,d4x/2,0])
rotate([0,0,90])
d4p();

//d4 (2/3)
projection(cut = true)
translate([d1y+ps+d2y+ps+d3y+ps+d4y,(d4x/2)+ps+d4x,0])
rotate([0,0,90])
d4p();

//d4 (3/3)
projection(cut = true)
translate([d1y+ps+d2y+ps+d3y+ps+d4y,(d4x/2)+ps+d4x+ps+d4x,0])
rotate([0,0,90])
d4p();

//d5 (1/1)
projection(cut = true)
translate([d1y+ps+d2y+ps+d3y+ps+d4y+ps+d5y,d5x/2,0])
rotate([0,0,90])
d5p();

//d6 (1/1)
projection(cut = true)
translate([d1y+ps+d2y+ps+d3y+ps+d4y+ps+d5y+ps+d6y,d6x/2,0])
rotate([0,0,90])
d6p();

//d7 (1/2)
projection(cut = true)
translate([d1y+ps+d2y+ps+d3y+ps+d4y+ps+d5y+ps+d6y+ps+d7y,0,0])
rotate([0,0,90])
d7p();

//d7 (2/2)
projection(cut = true)
translate([d1y+ps+d2y+ps+d3y+ps+d4y+ps+d5y+ps+d6y+ps+d7y,ps+d7x,0])
rotate([0,0,90])
d7p();

//d8 (1/1)
projection(cut = true)
translate([d1y+ps+d2y+ps+d3y+ps+d4y+ps+d5y+ps+d6y+ps+d7y+ps+d8y,d8x/2,0])
rotate([0,0,90])
d8p();

//d9 (1/2)
projection(cut = true)
translate([d1y+ps+d2y+ps+d3y+ps+d4y+ps+d5y+ps+d6y+ps+d7y+ps+d8y+ps+d9y,0,0])
rotate([0,0,90])
d9p();

//d9 (2/2)
projection(cut = true)
translate([d1y+ps+d2y+ps+d3y+ps+d4y+ps+d5y+ps+d6y+ps+d7y+ps+d8y+ps+d9y,ps+d9x,0])
rotate([0,0,90])
d9p();

//d10 (1/2)
projection(cut = true)
translate([d1y+ps+d2y+ps+d3y+ps+d4y+ps+d5y+ps+d6y+ps+d7y+ps+d8y+ps+d9y+ps+d10y,0,0])
rotate([0,0,90])
d10p();

//d10 (2/2)
projection(cut = true)
translate([d1y+ps+d2y+ps+d3y+ps+d4y+ps+d5y+ps+d6y+ps+d7y+ps+d8y+ps+d9y+ps+d10y,ps+d10x,0])
rotate([0,0,90])
d10p();

//d11 (1/2)
projection(cut = true)
translate([d1y+ps+d2y+ps+d3y+ps+d4y+ps+d5y+ps+d6y+ps+d7y+ps+d8y+ps+d9y+ps+d10y+ps+d11y,0,0])
rotate([0,0,90])
d11p();

//d11 (2/2)
projection(cut = true)
translate([d1y+ps+d2y+ps+d3y+ps+d4y+ps+d5y+ps+d6y+ps+d7y+ps+d8y+ps+d9y+ps+d10y+ps+d11y,ps+d11x,0])
rotate([0,0,90])
d11p();

//d12 (1/2)
projection(cut = true)
translate([d1y+ps+d2y+ps+d3y+ps+d4y+ps+d5y+ps+d6y+ps+d7y+ps+d8y+ps+d9y+ps+d10y+ps+d11y+ps+d12y,d12x/2,0])
rotate([0,0,90])
d12p();
