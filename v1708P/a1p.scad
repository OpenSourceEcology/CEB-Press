include <vars.scad>;
use <modus.scad>;

a1p();

module a1p(){

difference(){
    cube([a1x,a1y,a1z]);
    
    translate([(0.625/2),1,0])
    tabinsert(0.625,a6z+(dGap*2),a1z,0.0625,0.125,0,0,0.25,0.25,0.25,0.25,0,0,1);
    
    translate([(0.625/2),distancetof8center,0])  // center in middle F8
    tabinsert(0.625,a6z+(dGap*2),a1z,0.0625,0.125,0,0,0.25,0.25,0.25,0.25,0,0,1);
    
    translate([(0.625/2),a1y-1,0])
    tabinsert(0.625,a6z+(dGap*2),a1z,0.0625,0.125,0,0,0.25,0.25,0.25,0.25,0,0,1);
    
    translate([a1x/2,(a4x/2)-1,0])
    cylinder(h = a1z, r = 0.4);   // could create a variable for this bolt size
    translate([a1x/2,(a4x/2)+1,0])
    cylinder(h = a1z, r = 0.4);   
   
    //H7
       translate([a1x/2,distancetof8center-(brickW/2)-f5y-(1.75),0])
    cylinder(h = a1z, r = 0.4); 
    
    //H7
       translate([a1x/2,distancetof8center-(brickW/2)-f5y-(h7y-1.75),0])
    cylinder(h = a1z, r = 0.4);
   
    //F5
       translate([a1x/2,distancetof8center-(brickW/2)-(f5y-1.5),0])
    cylinder(h = a1z, r = 0.4);

    //F5
       translate([a1x/2,distancetof8center+(brickW/2)+(f5y-1.5),0])
    cylinder(h = a1z, r = 0.4);
    
    //H8
       translate([a1x/2,distancetof8center+(brickW/2)+f5y+(2),0])
    cylinder(h = a1z, r = 0.4); 
    
    //H8
       translate([a1x/2,distancetof8center+(brickW/2)+f5y+(5),0])
    cylinder(h = a1z, r = 0.4); 
    
    //H8
       translate([a1x/2,distancetof8center+(brickW/2)+f5y+(h8y-2),0])
    cylinder(h = a1z, r = 0.4);
    
    //A5
        translate([a1x/2,a1y-(a5x/2),0])
    cylinder(h = a1z, r = 0.4);
    
    //corner joints
    cjtablength=((a1y-(0.125*5.5))/12);
    cjinsertlength=cjtablength+0.125; 
    for(i=[0:5])
    translate([a1x+0.00001,(i*(cjtablength+cjinsertlength))+(cjinsertlength/2)-(0.125/2),0])
    rotate([0,0,90])
    cornerjoint(a1z,cjinsertlength,a2z,0.125,0.5,0.125,0,1);
    



    } //end difference
    
}  //end a1p module