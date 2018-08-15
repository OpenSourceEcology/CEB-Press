include <vars.scad>;
use <modus.scad>;

//push the F6 key on your key board twice for projection view

projection(cut = true) //use projection to create 2D DXF files
translate([-((96*2)+5),0,0])
union(){
cube([96,48,0.5]);
translate([96+4,0,0])    
cube([96,48,0.5]);
translate([96,0,0])
cube([4,0.01,0.5]);    
}