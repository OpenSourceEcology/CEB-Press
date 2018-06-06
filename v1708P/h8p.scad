include <vars.scad>;
use <modus.scad>;

h8p();

module h8p(){
    
difference(){
    
translate([-(h8x/2),0,0])
cube([h8x,h8y,h8z]);
    
    translate([-(h8x/2)+1.5,h8y-5,0])
        cylinder(h = f6z, d = aBOLTHOLEstandardD);
    translate([-(h8x/2),h8y-5-(aBOLTHOLEstandardD/2),0])
        cube([1.5,aBOLTHOLEstandardD,h8z]);    
    
translate([-(h8x/2),0,0])
cuts();
translate([(h8x/2),0,0])
mirror([1,0,0])
cuts();
} //end difference

module cuts(){
    
    translate([1.5,2,0])
        cylinder(h = h8z, d = aBOLTHOLEstandardD);
    translate([0,2-(aBOLTHOLEstandardD/2),0])
        cube([1.5,aBOLTHOLEstandardD,h8z]);
    translate([1.5,h8y-2,0])
        cylinder(h = h8z, d = aBOLTHOLEstandardD);
    translate([0,h8y-2-(aBOLTHOLEstandardD/2),0])
        cube([1.5,aBOLTHOLEstandardD,h8z]);
    
} //end cuts module
} //end h8p module