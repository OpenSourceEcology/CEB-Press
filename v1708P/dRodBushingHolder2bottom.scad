include <vars.scad>;
use <modus.scad>;

//this 3D printed part will be mounted to the drawer and hold a brass bushing

dRodBushingHolderbottom(d1bushingOD,d1bushingOD,d1shaftOD,d1bolt1OD,d1bolt2OD,d1nut2AF,d1nut2H);

module dRodBushingHolderbottom(bushingOD,bushingL,shaftOD,bolt1OD,bolt2OD,nutAF,nutH){

$fn=50;

X=1.5+(bolt1OD*2)+bushingOD;
Y=max((0.5+bushingL),4);
Z=max((0.25+(bushingOD/2)),((d2z+0.5+(sliderodholeOD/2))+drawergap));


difference(){
cube([X,Y,Z]);
    
//bolt 1a
    translate([(bolt1OD/2)+0.5,Y-(bolt1OD/2)-0.5,0])
    cylinder(h=Z, r=bolt1OD/2);
//bolt 1b
    translate([(bolt1OD/2)+0.5,(bolt1OD/2)+0.5,0])
    cylinder(h=Z, r=bolt1OD/2);
//bolt 2
  //  translate([X-(0.25+bolt1OD/2),Y/2,0])
  //  cylinder(h=Z, r=bolt1OD/2);
    
//bolt 2a
    translate([X-((bolt1OD/2)+0.5),Y-(bolt1OD/2)-0.5,0])
    {
    cylinder(h=Z, r=bolt2OD/2);
    nut(nutAF,nutH);
    }
//bolt 2b
    translate([X-((bolt1OD/2)+0.5),(bolt1OD/2)+0.5,0])
    {
    cylinder(h=Z, r=bolt2OD/2);
    nut(nutAF,nutH);   // 3/4" nut size
    }
//bushing    
    translate([X/2,(Y/2)+(bushingL/2),Z])
    rotate([90,0,0])
    cylinder(h=bushingL, r=bushingOD/2);
//shaft
    translate([X/2,Y,Z])
    rotate([90,0,0])
    cylinder(h=Y, r=(shaftOD*1.05)/2); //105% of shaft
    
} //end difference

} //end module
