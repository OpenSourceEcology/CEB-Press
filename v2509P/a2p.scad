include <vars.scad>;
use <modus.scad>;

a2p();

module a2p(){

difference(){
    cube([a2x,a2y,a2z]);
    
    translate([(0.625/2),1,0])
    tabinsert(0.625,a6z+(dGap*2),a2z,0.0625,0.125,0,0,0.25,0.25,0.25,0.25,0,0,1);
    
    translate([(0.625/2),distancetof8center,0])  // center in middle F8
    tabinsert(0.625,a6z+(dGap*2),a2z,0.0625,0.125,0,0,0.25,0.25,0.25,0.25,0,0,1);
    
    translate([(0.625/2),a2y-1,0])
    tabinsert(0.625,a6z+(dGap*2),a2z,0.0625,0.125,0,0,0.25,0.25,0.25,0.25,0,0,1);
    
    //corner joints
    cjtablength=((a2y-(0.125*5.5))/12);
    cjinsertlength=cjtablength+0.125; 
    for(i=[0:5])
    translate([a2x+0.00001,(i*(cjtablength+cjinsertlength))+(cjinsertlength/2)-(0.125/2)+(cjtablength+(0.125/2)),0])
    rotate([0,0,90])
    cornerjoint(a2z,cjinsertlength,a1z,0.125,0.5,0.125,0,1);
    



    } //end difference
    
}  //end a2p module