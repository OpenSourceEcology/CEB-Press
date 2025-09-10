include <vars.scad>;
use <modus.scad>;

f4p();

module f4p(){
    
difference(){
translate([-(((brickL+(d2z*2)+drawerHgap+(f9y*2)))/2),0,0])
    union(){
        cube([(brickL+(d2z*2)+drawerHgap+(f9y*2)),f4y,f4z]);
        translate([-((f4x-(brickL+(d2z*2)+drawerHgap+(f9y*2))))/2,f4y/2,0])
        f4triangle();
        translate([f4x-((f4x-(brickL+(d2z*2)+drawerHgap+(f9y*2)))/2),f4y/2,0])
        mirror([1,0,0])
        f4triangle();
    }
translate([-(f4x/2),0,0])
cuts();
translate([(f4x/2),0,0])
mirror([1,0,0])
cuts();
} //end difference

module cuts(){

    //f5 outer
    translate([(f4x/2)+((f5x/2)-2),f4y,0])
        cornerjoint(f4z,4,f5z,0.125,1,0.125,180,1);
        //tabinsert(4,f5z*2,f4z,0.0625,0.125,0,0,0,0,0,0,0.25,0.25,1);

    //f5 center
    translate([(f4x/2),f4y,0])
        tabinsert(2,f5z*2,f4z,0.0625,0.125,0,0,0,0,0.0,0,0.25,0.25,1);
    
    //f14 - previoiusly f2
    translate([(f4x-f14x+1)/2,7.5,0])
        tabinsert(1,f2z,f6z,0.0625,0.125,0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25,1);    

    //f9 bolts
    translate([((f4x-brickL-(d2z*2)-drawerHgap)/2)-2,2,0])
        cylinder(h = f4z, r = 0.5025); //diameter 1.0?
    translate([((f4x-brickL-(d2z*2)-drawerHgap)/2)-2,6,0])
        cylinder(h = f4z, r = 0.5025);
    translate([((f4x-brickL-(d2z*2)-drawerHgap)/2)-2,9,0])
        cylinder(h = f4z, r = 0.5025);
    
} //end module

module f4triangle (){
difference(){
    cube([(f4x-(brickL+(d2z*2)+drawerHgap+(f9y*2)))/2,f4y/2,f4z]);
        difference(){
            cube([(f4x-(brickL+(d2z*2)+drawerHgap+(f9y*2)))/2,f4y/2,f4z]);
            translate([(f4x-(brickL+(d2z*2)+drawerHgap+(f9y*2)))/2,0,0])
            rotate([0,0,atan(((f4x-(brickL+(d2z*2)+drawerHgap+(f9y*2)))/2)/(f4y/2))])
                cube([10,10,f4z]);
            translate([(f4x-(brickL+(d2z*2)+drawerHgap+(f9y*2)))/2,0,0])
                cube([10,10,f4z]);
        }
    }
}  //end f4triangle module

}  //end f4p module