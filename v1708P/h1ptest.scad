include <vars.scad>;
use <modus.scad>;

h1p();

module h1p(){
    
hopperBaseS=hopperBaseX*((h1y-(sin(grateA)*grateY))/(h1y));
    
difference(){
    
translate([-(h1x/2),0,0])
cube([h1x,h1y,h1z]);    
translate([-(h1x/2),0,0])
cuts();
translate([(h1x/2),0,0])
mirror([1,0,0])
cuts();
} //end difference

module cuts(){

//angle of h2
//atan((h1y-(sin(grateA)*grateY))/((cos(grateA)*grateY)-hopperBaseY))

//z vector of h2 in assembly position
echo(sin(atan((h1y-(sin(grateA)*grateY))/((cos(grateA)*grateY)-hopperBaseY)))*h2y);    

//amount of x cut on one half of h2
//((h2x-hopperBaseX)/2)

//angle in the z-x plane
    echo("test");
echo(atan(((sin(atan((h1y-(sin(grateA)*grateY))/((cos(grateA)*grateY)-hopperBaseY)))*h2y))/(((h2x-hopperBaseX)/2))));

//draw someething at this angle

//h1x-(new x)

echo("new x");
echo(h1y/tan((atan(((sin(atan((h1y-(sin(grateA)*grateY))/((cos(grateA)*grateY)-hopperBaseY)))*h2y))/(((h2x-hopperBaseX)/2))))));
    

echo("new base");    
echo(h1x-((h1y/tan((atan(((sin(atan((h1y-(sin(grateA)*grateY))/((cos(grateA)*grateY)-hopperBaseY)))*h2y))/(((h2x-hopperBaseX)/2)))))))*2);    

//sin(atan(h1y/((h1x-hopperBaseX)/2)))*(h1x-hopperBaseX)/2

//sin(atan(h1y/((h1x-hopperBaseX)/2)))*h1y

//sqrt((((h1x-hopperBaseX)/2)*((h1x-hopperBaseX)/2))+((h1y)*(h1y)))

//angle of h2
//atan(h2y/((h2x-hopperBaseX)/2)) 
    
echo(atan((h2y*((h1y-(sin(grateA)*grateY))/(h1y)))/((h2x-hopperBaseX)/2)));

echo(h1y/tan((atan((h2y*((h1y-(sin(grateA)*grateY))/(h1y)))/((h2x-hopperBaseX)/2)))));
    
echo(h1x-((h1y/atan((atan((h2y*((h1y-(sin(grateA)*grateY))/(h1y)))/((h2x-hopperBaseX)/2)))))*2));

echo(hopperBaseS);

translate([h1x-((h1x-hopperBaseS)/2),0,0])
rotate([0,0,atan(h1y/((h1x-hopperBaseS)/2))])
    translate([0,-sin(atan(h1y/((h1x-hopperBaseS)/2)))*(h1x-hopperBaseS)/2,0])
#cube([sqrt((((h1x-hopperBaseS)/2)*((h1x-hopperBaseS)/2))+((h1y)*(h1y))),sin(atan(h1y/((h1x-hopperBaseS)/2)))*(h1x-hopperBaseS)/2,h1z]);
    
} //end cuts module
} //end h1p module