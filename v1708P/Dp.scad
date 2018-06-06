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
use<d12p.scad>;
use<dRodBushingHolder2top.scad>;
use<dRodBushingHolder2bottom.scad>;



Dp();

module Dp(){

//main translate
translate([-d8y-d6z-(brickW/2),-d2z-(brickL/2),0]){
    
translate([0,d2z,0])
rotate([90,0,0])
d2p();

translate([0,d2z+d2z+brickL,0])
rotate([90,0,0])
d2p();

translate([0,d8x/2,0])
rotate([0,0,270])
d8p();
    
translate([d8y-f2y+d6z,d12x/2,d2y-d12z])
rotate([0,0,90])
d12p();

translate([d8y-f2y+d6z-d12y,((d1x/2)+(d11x/2))-((((brickL+(d2z*2)+drawerHgap)/2)-fZstandard-(sliderodholeOD/2))),d3y+d1z])
rotate([0,0,270])
dRodBushingHolderbottom(d1bushingOD,d1bushingOD,d1shaftOD,d1bolt1OD,d1bolt2OD,d1nut2AF,d1nut2H);

translate([d8y-f2y+d6z-d12y+d11y,(d1x/2)-(d11x/2)+((((brickL+(d2z*2)+drawerHgap)/2)-fZstandard-(sliderodholeOD/2))),d3y+d1z])
rotate([0,0,90])
dRodBushingHolderbottom(d1bushingOD,d1bushingOD,d1shaftOD,d1bolt1OD,d1bolt2OD,d1nut2AF,d1nut2H);

translate([d8y+d6z,d6x/2,0])
rotate([90,0,270])
d6p();

translate([d8y+d6z+brickW,d3x/2,d3y])
rotate([270,0,270])
d3p();

translate([d8y+d6z+brickW+d3z,d5x/2,0])
rotate([0,0,270])
d5p();

translate([d8y+d6z+brickW+d3z+(d5y/2),((d5x/2)+(d5z/2))-(brickL/4),0])
rotate([90,0,0])
d4p();

translate([d8y+d6z+brickW+d3z+(d5y/2),(d5x/2)+(d5z/2),0])
rotate([90,0,0])
d4p();

translate([d8y+d6z+brickW+d3z+(d5y/2),((d5x/2)+(d5z/2))+(brickL/4),0])
rotate([90,0,0])
d4p();

translate([d8y+d6z+brickW+d5y+d3z,d3x/2,d3y])
rotate([270,0,270])
d3p();


translate([d8y+d6z,(((d6x-cylinderDRAWERrodclevisW)/2)-(d9z)),0])
rotate([90,0,180])
d9p();

translate([d8y+d6z,(cylinderDRAWERrodclevisW+d9z)+((((d6x-cylinderDRAWERrodclevisW)/2)-(d9z))),0])
rotate([90,0,180])
d9p();

translate([(d8y+d6z+brickW),(brickL/2)+d2z,d3y])
rotate([0,0,270])
d1p();

translate([(d8y+d6z+brickW)+d1y-d11y,((d1x/2)+(d11x/2))-((((brickL+(d2z*2)+drawerHgap)/2)-fZstandard-(sliderodholeOD/2))),d3y+d1z])
rotate([0,0,270])
dRodBushingHolderbottom(d1bushingOD,d1bushingOD,d1shaftOD,d1bolt1OD,d1bolt2OD,d1nut2AF,d1nut2H);

translate([(d8y+d6z+brickW)+d1y,(d1x/2)-(d11x/2)+((((brickL+(d2z*2)+drawerHgap)/2)-fZstandard-(sliderodholeOD/2))),d3y+d1z])
rotate([0,0,90])
dRodBushingHolderbottom(d1bushingOD,d1bushingOD,d1shaftOD,d1bolt1OD,d1bolt2OD,d1nut2AF,d1nut2H);

//translate([0,0,0])
//dRodBushingHoldertop(d1bushingOD,d1bushingOD,d1shaftOD,d1bolt1OD,d1bolt2OD);

//
//add drawer cylinger rod half and rod clevis
//

} //end main translate

} //end Dp module