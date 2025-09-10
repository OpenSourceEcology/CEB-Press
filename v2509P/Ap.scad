include <vars.scad>;
use <modus.scad>;

use<a1p.scad>;
use<a2p.scad>;
use<a3p.scad>;
use<a4p.scad>;
use<a5p.scad>;
use<d7p.scad>;

Ap();

module Ap(){

translate([-(f5x/2)+(a1x/2),0,0]){    
    translate([(a1x/2)-a1x,0,0])
    a1p();
   
    translate([(a1x/2)-a2z,0,a2x])
    rotate([0,90,0])
    a2p();
} //end translate

translate([(f5x/2)-(a1x/2),0,0]){ 
 mirror([1,0,0]){   
    translate([(a1x/2)-a1x,0,0])
    a1p();
   
    translate([(a1x/2)-a2z,0,a2x])
    rotate([0,90,0])
    a2p();
 } //end mirror
} //end translate

translate([a3y/2,a3z,-a3x])
rotate([0,270,90])
a3p();

translate([a4y/2,a4x,0])
rotate([180,0,270])
a4p();

translate([cylDrawerE/2,-(d7x/2)+(a4x/2),-a4z])
rotate([90,0,90])
d7p();

mirror([1,0,0]){
translate([cylDrawerE/2,-(d7x/2)+(a4x/2),-a4z])
rotate([90,0,90])
d7p();
}

translate([a3y/2,a2y,-a3x])
rotate([0,270,90])
a3p();

translate([a5y/2,a2y-a5x,-a5z])
rotate([0,0,90])
a5p();


}