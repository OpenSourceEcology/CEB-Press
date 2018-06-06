include <vars.scad>;
use <modus.scad>;

d1p();

module d1p(){

difference(){
translate([-(d1x/2),0,0])
cube([d1x,d1y,d1z]);
translate([-(d1x/2),0,0])
cuts();
translate([(d1x/2),0,0])
mirror([1,0,0])
cuts();
} //end difference
module cuts(){

    translate([(d1x-brickL-d2z-d2z)/2,1.5,0]) //1.5 could be better defined
    cube([d2z+dGap,d3z+brickW-1.5,d1z]);  //June freecad model has larger cut out
    
    //d11 bolt 1a - will these holes need to be tapped?
    translate([((d1x/2)-(((brickL+(d2z*2)+drawerHgap)/2)-fZstandard-(sliderodholeOD/2)))+(d11x/2)-((d1bolt1OD/2)+0.5),d1y-(d1bolt1OD/2)-0.5,0]) 
        cylinder(h = f1z, r = d1bolt1OD/2);     
    
    //d11 bolt 1b - will these holes need to be tapped?
    translate([((d1x/2)-(((brickL+(d2z*2)+drawerHgap)/2)-fZstandard-(sliderodholeOD/2)))+(d11x/2)-((d1bolt1OD/2)+0.5),d1y-d11y+((d1bolt1OD/2)+0.5),0]) 
        cylinder(h = f1z, r = d1bolt1OD/2);     

    //mid section excess cut
    translate([((d1x/2)-(((brickL+(d2z*2)+drawerHgap)/2)-fZstandard-(sliderodholeOD/2)))+(d11x/2),d1y-brickW,0])
    cube([d1x-((((d1x/2)-(((brickL+(d2z*2)+drawerHgap)/2)-fZstandard-(sliderodholeOD/2)))+(d11x/2))*2),brickW,d1z]);

} //end module

} //end d1p module