include <vars.scad>;
use <modus.scad>;

use<d1p.scad>;
use<d2p.scad>;
use<d3p.scad>;
use<d4p.scad>;
use<d5p.scad>;
use<d6p.scad>;
use<d8p.scad>;
use<d9p.scad>;


platewidth=20; //input the width of your steel plate
partspacing=0.3125; //common distance between parts


echo("Length of plate used:");
echo(); //need formula based on layout calculations below

projection(cut = true) //use projection to create 2D DXF files
translate([d1y,d1x/2,0])
rotate([0,0,90])
d1p();

//rotate Z corresponds with L or W in the X direction
//90 degrees == d2y
//0 degrees == d2x

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