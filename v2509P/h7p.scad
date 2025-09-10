include <vars.scad>;
use <modus.scad>;

h7p();

module h7p(){
    
difference(){
    
translate([-(h7x/2),0,0])
cube([h7x,h7y,h7z]);    
translate([-(h7x/2),0,0])
cuts();
translate([(h7x/2),0,0])
mirror([1,0,0])
cuts();
} //end difference

module cuts(){
    
    translate([1.5,1.75,0])
        cylinder(h = h7z, d = aBOLTHOLEstandardD);
    translate([0,1.75-(aBOLTHOLEstandardD/2),0])
        cube([1.5,aBOLTHOLEstandardD,h7z]);
    translate([1.5,h7y-1.75,0])
        cylinder(h = h7z, d = aBOLTHOLEstandardD);
    translate([0,h7y-1.75-(aBOLTHOLEstandardD/2),0])
        cube([1.5,aBOLTHOLEstandardD,h7z]);
    
} //end cuts module
} //end h7p module