include <vars.scad>;
use <modus.scad>;

a5p();

module a5p(){

difference(){
    cube([a5x,a5y,a5z]);
    

 
    //corner joints
    cjtablength=((a5y-(0.125*5.5))/12);
    cjinsertlength=cjtablength+0.125; 
    for(i=[0:5])
    translate([a5x+0.00001,(i*(cjtablength+cjinsertlength))+(cjinsertlength/2)-(0.125/2),0])
    rotate([0,0,90])
    cornerjoint(a5z,cjinsertlength,a3z,0.125,0.5,0.125,0,1);
    



    } //end difference
    
}  //end a5p module