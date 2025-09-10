include <vars.scad>;
use <modus.scad>;

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

Fp();

module Fp(){

translate([0,(f8y/2)+f1z,f9x])
rotate([90,180,0])
f1p();

translate([0,-(f8y/2),f9x])
rotate([90,180,0])
f1p();

translate([-f2x/2,(f8y/2),f9x-f1y])
rotate([0,0,0])
f2p();  //connected to F1

translate([f2x/2,-(f8y/2),f9x-f1y])
rotate([0,0,180])
f2p();  
 
translate([0,(f8y/2),f9x])
rotate([0,180,0])
f3p();  //connected to F1

translate([0,-(f8y/2),f9x])
rotate([0,180,180])
f3p();  //connected to F1

translate([0,-f12y/2,f9x])
f12p();

translate([0,(f8y/2)+f6z,(f9x-f1y-brickCH-drawergap-f4y)])
rotate([90,0,0])
f4p();  //?group with f5?

translate([0,-(f8y/2),(f9x-f1y-brickCH-drawergap-f4y)])
rotate([90,0,0])
f4p();

translate([0,(f8y/2),(f9x-f1y-brickCH-drawergap-f4y)+f4y])
rotate([0,180,0])
f5p();  //connected to F4

translate([0,-(f8y/2),(f9x-f1y-brickCH-drawergap-f4y)+f4y])
rotate([0,180,180])
f5p();  //connected to F4

translate([-f14x/2,(f8y/2),(f9x-f1y-brickCH-drawergap-f4y)+7.5-(f14z/2)])
rotate([0,0,0])
f14p();  //connected to F4

translate([f14x/2,-(f8y/2),(f9x-f1y-brickCH-drawergap-f4y)+7.5-(f14z/2)])
rotate([0,0,180])
f14p();  //connected to F4

translate([0,(f8y/2)+f6z,f6y])
rotate([90,180,0])
f6p();

translate([0,-(f8y/2),f6y])
rotate([90,180,0])
f6p();

translate([-f2x/2,(f8y/2),0])
rotate([0,0,0])
f2p();  //connected to F6

translate([f2x/2,-(f8y/2),0])
rotate([0,0,180])
f2p();  

translate([f6x/2,0,0])
rotate([0,0,180])
f11p();

translate([f6x/2,0,f9x-f1y-d2y-f4y-drawergap-0.5])
rotate([0,0,180])
f11p();

translate([f6x/2,0,f9x-0.5])
rotate([0,0,180])
f11p();

translate([-f6x/2,0,0])
rotate([0,0,0])
f11p();

translate([-f6x/2,0,f9x-f1y-d2y-f4y-drawergap-0.5])
rotate([0,0,0])
f11p();

translate([-f6x/2,0,f9x-0.5])
rotate([0,0,0])
f11p();

translate([-((brickL+(d2z*2)+drawerHgap)/2),0,0]){   //???
rotate([0,0,90]){
    
translate([(f8y/2),f8z,0])
rotate([90,-90,0])
f8p();
    
translate([(f8y/2)+(f9z/2)-(f8z/2),0,0])
rotate([0,-90,0])
f9p();
    
translate([-(f8y/2)+(f9z/2)+(f8z/2),0,0])
rotate([0,-90,0])
f9p();
} //end rotate
} //end translate

translate([((brickL+(d2z*2)+drawerHgap)/2),0,0]){
rotate([0,0,-90]){
    
translate([(f8y/2),f8z,0])
rotate([90,-90,0])
f8p();
    
translate([(f8y/2)+(f9z/2)-(f8z/2),0,0])
rotate([0,-90,0])
f9p();
    
translate([-(f8y/2)+(f9z/2)+(f8z/2),0,0])
rotate([0,-90,0])
f9p();
} //end rotate
} //end translate

} //end Fp module