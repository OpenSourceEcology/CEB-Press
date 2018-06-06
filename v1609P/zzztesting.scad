include <vars.scad>;
use <modus.scad>;

        difference(){
            cube([f4x-(brickL+(d2z*2)+drawerHgap+(f9y*2),f4y/2,f4z]);
            translate([3,0,0])
            rotate([0,0,atan(3/5.125)])
                cube([10,10,f4z]);
        }