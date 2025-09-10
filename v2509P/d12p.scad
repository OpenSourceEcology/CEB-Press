include <vars.scad>;
use <modus.scad>;

d12p();

module d12p(){

difference(){
translate([-(d12x/2),0,0])
cube([d12x,d12y,d12z]);
translate([-(d12x/2),0,0])
cuts();
translate([(d12x/2),0,0])
mirror([1,0,0])
cuts();
} //end difference
module cuts(){
    
    //d11 bolt 1a - will these holes need to be tapped?
    translate([((d12x/2)-(((brickL+(d2z*2)+drawerHgap)/2)-fZstandard-(sliderodholeOD/2)))+(d11x/2)-((d1bolt1OD/2)+0.5),d12y-(d1bolt1OD/2)-0.5,0]) 
        cylinder(h = f1z, r = d1bolt1OD/2);     
    
    //d11 bolt 1b - will these holes need to be tapped?
    translate([((d12x/2)-(((brickL+(d2z*2)+drawerHgap)/2)-fZstandard-(sliderodholeOD/2)))+(d11x/2)-((d1bolt1OD/2)+0.5),d12y-d11y+((d1bolt1OD/2)+0.5),0]) 
        cylinder(h = f1z, r = d1bolt1OD/2);     

} //end module

} //end d1p module