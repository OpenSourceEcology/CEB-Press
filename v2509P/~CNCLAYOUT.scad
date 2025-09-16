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

use<a1p.scad>;
use<a2p.scad>;
use<a3p.scad>;
use<a4p.scad>;
use<a5p.scad>;
use<a6p.scad>;

use<f1p.scad>;
use<f2p.scad>;
use<f3p.scad>;
use<f4p.scad>;
use<f5p.scad>;
use<f6p.scad>;
use<f8p.scad>;
use<f9p.scad>;
use<f11p.scad>;
use<f12p.scad>;
use<f13p.scad>;
use<f14p.scad>;

use<h1p.scad>;
use<h2p.scad>;
use<h7p.scad>;
use<h8p.scad>;

partspacing=1; //common distance between parts
ps=partspacing;

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

//a1 (1/1)
projection(cut = true)
translate([d1y+ps+d2y+ps+d3y+ps+d4y+ps+d5y+ps+d6y+ps+d7y+ps+d8y+ps+d9y+ps+d10y+ps+d11y+ps+d12y+ps+a1x,a1y/2,0])
rotate([0,0,90])
a1p();

//a2 (1/1)
projection(cut = true)
translate([d1y+ps+d2y+ps+d3y+ps+d4y+ps+d5y+ps+d6y+ps+d7y+ps+d8y+ps+d9y+ps+d10y+ps+d11y+ps+d12y+ps+a1x+ps+a2x,a2y/2,0])
rotate([0,0,90])
a2p();

//a3 (1/1)
projection(cut = true)
translate([d1y+ps+d2y+ps+d3y+ps+d4y+ps+d5y+ps+d6y+ps+d7y+ps+d8y+ps+d9y+ps+d10y+ps+d11y+ps+d12y+ps+a1x+ps+a2x+ps+a3x,a3y/2,0])
rotate([0,0,90])
a3p();

//a4 (1/1)
projection(cut = true)
translate([d1y+ps+d2y+ps+d3y+ps+d4y+ps+d5y+ps+d6y+ps+d7y+ps+d8y+ps+d9y+ps+d10y+ps+d11y+ps+d12y+ps+a1x+ps+a2x+ps+a3x+ps+a4x,a4y/2,0])
rotate([0,0,90])
a4p();

//a5 (1/1)
projection(cut = true)
translate([d1y+ps+d2y+ps+d3y+ps+d4y+ps+d5y+ps+d6y+ps+d7y+ps+d8y+ps+d9y+ps+d10y+ps+d11y+ps+d12y+ps+a1x+ps+a2x+ps+a3x+ps+a4x+ps+a5x,a5y/2,0])
rotate([0,0,90])
a5p();

//a6 (1/1)
projection(cut = true)
translate([d1y+ps+d2y+ps+d3y+ps+d4y+ps+d5y+ps+d6y+ps+d7y+ps+d8y+ps+d9y+ps+d10y+ps+d11y+ps+d12y+ps+a1x+ps+a2x+ps+a3x+ps+a4x+ps+a5x+ps+a6x,a6y/2,0])
rotate([0,0,90])
a6p();

//f1 (1/1)
projection(cut = true)
translate([d1y+ps+d2y+ps+d3y+ps+d4y+ps+d5y+ps+d6y+ps+d7y+ps+d8y+ps+d9y+ps+d10y+ps+d11y+ps+d12y+ps+a1x+ps+a2x+ps+a3x+ps+a4x+ps+a5x+ps+a6x+ps+f1y,f1x/2,0])
rotate([0,0,90])
f1p();

//f2 (1/1)
projection(cut = true)
translate([d1y+ps+d2y+ps+d3y+ps+d4y+ps+d5y+ps+d6y+ps+d7y+ps+d8y+ps+d9y+ps+d10y+ps+d11y+ps+d12y+ps+a1x+ps+a2x+ps+a3x+ps+a4x+ps+a5x+ps+a6x+ps+f1y+ps+f2y,f2x/2,0])
rotate([0,0,90])
f2p();

//f3 (1/1)
projection(cut = true)
translate([d1y+ps+d2y+ps+d3y+ps+d4y+ps+d5y+ps+d6y+ps+d7y+ps+d8y+ps+d9y+ps+d10y+ps+d11y+ps+d12y+ps+a1x+ps+a2x+ps+a3x+ps+a4x+ps+a5x+ps+a6x+ps+f1y+ps+f2y+ps+f3y,f3x/2,0])
rotate([0,0,90])
f3p();

//f4 (1/1)
projection(cut = true)
translate([d1y+ps+d2y+ps+d3y+ps+d4y+ps+d5y+ps+d6y+ps+d7y+ps+d8y+ps+d9y+ps+d10y+ps+d11y+ps+d12y+ps+a1x+ps+a2x+ps+a3x+ps+a4x+ps+a5x+ps+a6x+ps+f1y+ps+f2y+ps+f3y+ps+f4y,f4x/2,0])
rotate([0,0,90])
f4p();

//f5 (1/1)
projection(cut = true)
translate([d1y+ps+d2y+ps+d3y+ps+d4y+ps+d5y+ps+d6y+ps+d7y+ps+d8y+ps+d9y+ps+d10y+ps+d11y+ps+d12y+ps+a1x+ps+a2x+ps+a3x+ps+a4x+ps+a5x+ps+a6x+ps+f1y+ps+f2y+ps+f3y+ps+f4y+ps+f5y,f5x/2,0])
rotate([0,0,90])
f5p();

//f6 (1/1)
projection(cut = true)
translate([d1y+ps+d2y+ps+d3y+ps+d4y+ps+d5y+ps+d6y+ps+d7y+ps+d8y+ps+d9y+ps+d10y+ps+d11y+ps+d12y+ps+a1x+ps+a2x+ps+a3x+ps+a4x+ps+a5x+ps+a6x+ps+f1y+ps+f2y+ps+f3y+ps+f4y+ps+f5y+ps+f6y,f6x/2,0])
rotate([0,0,90])
f6p();

//f8 (1/1)
projection(cut = true)
translate([d1y+ps+d2y+ps+d3y+ps+d4y+ps+d5y+ps+d6y+ps+d7y+ps+d8y+ps+d9y+ps+d10y+ps+d11y+ps+d12y+ps+a1x+ps+a2x+ps+a3x+ps+a4x+ps+a5x+ps+a6x+ps+f1y+ps+f2y+ps+f3y+ps+f4y+ps+f5y+ps+f6y+ps+f8y,f8x/2,0])
rotate([0,0,90])
f8p();

//f9 (1/1)
projection(cut = true)
translate([d1y+ps+d2y+ps+d3y+ps+d4y+ps+d5y+ps+d6y+ps+d7y+ps+d8y+ps+d9y+ps+d10y+ps+d11y+ps+d12y+ps+a1x+ps+a2x+ps+a3x+ps+a4x+ps+a5x+ps+a6x+ps+f1y+ps+f2y+ps+f3y+ps+f4y+ps+f5y+ps+f6y+ps+f8y+ps+f9y,f9x/2,0])
rotate([0,0,90])
f9p();

//f11 (1/1)
projection(cut = true)
translate([d1y+ps+d2y+ps+d3y+ps+d4y+ps+d5y+ps+d6y+ps+d7y+ps+d8y+ps+d9y+ps+d10y+ps+d11y+ps+d12y+ps+a1x+ps+a2x+ps+a3x+ps+a4x+ps+a5x+ps+a6x+ps+f1y+ps+f2y+ps+f3y+ps+f4y+ps+f5y+ps+f6y+ps+f8y+ps+f9y+ps+f11x,f11y/2,0])
rotate([0,0,90])
f11p();

//f12 (1/1)
projection(cut = true)
translate([d1y+ps+d2y+ps+d3y+ps+d4y+ps+d5y+ps+d6y+ps+d7y+ps+d8y+ps+d9y+ps+d10y+ps+d11y+ps+d12y+ps+a1x+ps+a2x+ps+a3x+ps+a4x+ps+a5x+ps+a6x+ps+f1y+ps+f2y+ps+f3y+ps+f4y+ps+f5y+ps+f6y+ps+f8y+ps+f9y+ps+f11x+ps+f12y,f12x/2,0])
rotate([0,0,90])
f12p();

//f13 (1/1)
projection(cut = true)
translate([d1y+ps+d2y+ps+d3y+ps+d4y+ps+d5y+ps+d6y+ps+d7y+ps+d8y+ps+d9y+ps+d10y+ps+d11y+ps+d12y+ps+a1x+ps+a2x+ps+a3x+ps+a4x+ps+a5x+ps+a6x+ps+f1y+ps+f2y+ps+f3y+ps+f4y+ps+f5y+ps+f6y+ps+f8y+ps+f9y+ps+f11x+ps+f12y+ps+f13x,f13y/2,0])
rotate([0,0,90])
f13p();

//f14 (1/1)
projection(cut = true)
translate([d1y+ps+d2y+ps+d3y+ps+d4y+ps+d5y+ps+d6y+ps+d7y+ps+d8y+ps+d9y+ps+d10y+ps+d11y+ps+d12y+ps+a1x+ps+a2x+ps+a3x+ps+a4x+ps+a5x+ps+a6x+ps+f1y+ps+f2y+ps+f3y+ps+f4y+ps+f5y+ps+f6y+ps+f8y+ps+f9y+ps+f11x+ps+f12y+ps+f13x+ps+f14y,f14x/2,0])
rotate([0,0,90])
f14p();

//h1 (1/1)
projection(cut = true)
translate([d1y+ps+d2y+ps+d3y+ps+d4y+ps+d5y+ps+d6y+ps+d7y+ps+d8y+ps+d9y+ps+d10y+ps+d11y+ps+d12y+ps+a1x+ps+a2x+ps+a3x+ps+a4x+ps+a5x+ps+a6x+ps+f1y+ps+f2y+ps+f3y+ps+f4y+ps+f5y+ps+f6y+ps+f8y+ps+f9y+ps+f11x+ps+f12y+ps+f13x+ps+f14y+ps+h1y,h1x/2,0])
rotate([0,0,90])
h1p();

//h2 (1/1)
projection(cut = true)
translate([d1y+ps+d2y+ps+d3y+ps+d4y+ps+d5y+ps+d6y+ps+d7y+ps+d8y+ps+d9y+ps+d10y+ps+d11y+ps+d12y+ps+a1x+ps+a2x+ps+a3x+ps+a4x+ps+a5x+ps+a6x+ps+f1y+ps+f2y+ps+f3y+ps+f4y+ps+f5y+ps+f6y+ps+f8y+ps+f9y+ps+f11x+ps+f12y+ps+f13x+ps+f14y+ps+h1y+ps+h2y,h2x/2,0])
rotate([0,0,90])
h2p();

//h7 (1/1)
projection(cut = true)
translate([d1y+ps+d2y+ps+d3y+ps+d4y+ps+d5y+ps+d6y+ps+d7y+ps+d8y+ps+d9y+ps+d10y+ps+d11y+ps+d12y+ps+a1x+ps+a2x+ps+a3x+ps+a4x+ps+a5x+ps+a6x+ps+f1y+ps+f2y+ps+f3y+ps+f4y+ps+f5y+ps+f6y+ps+f8y+ps+f9y+ps+f11x+ps+f12y+ps+f13x+ps+f14y+ps+h1y+ps+h2y+ps+h7y,h7x/2,0])
rotate([0,0,90])
h7p();

//h8 (1/1)
projection(cut = true)
translate([d1y+ps+d2y+ps+d3y+ps+d4y+ps+d5y+ps+d6y+ps+d7y+ps+d8y+ps+d9y+ps+d10y+ps+d11y+ps+d12y+ps+a1x+ps+a2x+ps+a3x+ps+a4x+ps+a5x+ps+a6x+ps+f1y+ps+f2y+ps+f3y+ps+f4y+ps+f5y+ps+f6y+ps+f8y+ps+f9y+ps+f11x+ps+f12y+ps+f13x+ps+f14y+ps+h1y+ps+h2y+ps+h7y+ps+h8y,h8x/2,0])
rotate([0,0,90])
h8p();
