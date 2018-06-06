include <vars.scad>;
use <modus.scad>;

a3p();

module a3p(){

difference(){
    cube([a3x,a3y,a3z]);
    
    //corner joints
    cjtablength=((a3y-(0.125*5.5))/12);
    cjinsertlength=cjtablength+0.125; 
    for(i=[0:5])
    translate([a3x+0.00001,(i*(cjtablength+cjinsertlength))+(cjinsertlength/2)-(0.125/2)+(cjtablength+(0.125/2)),0])
    rotate([0,0,90])
    cornerjoint(a3z,cjinsertlength,a4z,0.125,0.5,0.125,0,1);
    

    } //end difference
    
}  //end a2p module