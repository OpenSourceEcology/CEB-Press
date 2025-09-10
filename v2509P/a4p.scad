include <vars.scad>;
use <modus.scad>;

a4p();

module a4p(){

difference(){
    cube([a4x,a4y,a4z]);
    

 
    //corner joints
    cjtablength=((a4y-(0.125*5.5))/12);
    cjinsertlength=cjtablength+0.125; 
    for(i=[0:5])
    translate([a4x+0.00001,(i*(cjtablength+cjinsertlength))+(cjinsertlength/2)-(0.125/2),0])
    rotate([0,0,90])
    cornerjoint(a4z,cjinsertlength,a3z,0.125,0.5,0.125,0,1);
    



    } //end difference
    
}  //end a4p module