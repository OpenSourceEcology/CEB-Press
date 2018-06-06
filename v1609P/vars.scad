brickW=6; 
brickL=12;
brickCH=6;

$fn=8; //defines resolution of circles. 8 is okay for review. 100  or greater should be used for for final dxf export.

dZstandard=0.5; //thickness of steel to be cut for drawer parts
fZstandard=0.5;
aZstandard=0.5; //thickness of steel to be cut for arm parts

fBOLTHOLEstandardD=1; //standard bolts used on frame
sliderodholeOD=1.2; 

dGap=0.03125; //gap between a hole cut's edge and the part sitting within the hole. //D3 appears to use 0.3125, is this in error?

//all parts set to standard thickness below
//off standard preferences can be defined below

//drawer
drawergap=0.0283;  //extra room for drawer to slide in the space between f1 and f4
drawerHgap=0.1884;  //total extra space from drawer sides to frame walls. sum of both sides.

d1z=dZstandard;
d2z=dZstandard;
d3z=dZstandard;
d4z=dZstandard;
d5z=dZstandard;
d6z=dZstandard;
d5z=dZstandard;
d7z=dZstandard;
d8z=dZstandard;
d9z=dZstandard;

//frame
f1x=24.2;
f1y=6;
f1z=0.5;


f2y=3.5;
f2z=fZstandard;

f3x=f1x;
f3y=3.5;
f3z=fZstandard;

f4y=11;
f4z=fZstandard;

f5y=3.5;
f5z=fZstandard;

f6y=8;
f6z=fZstandard;

f8y=brickW;
f8z=fZstandard;
f8boltD=1;

f9y=4.5;
f9x=43.5;  //set based on MAINcylinder
f9z=fZstandard;

f8x=f9x;

f11x=1.25;
f11z=fZstandard;

f13z=fZstandard;

//arms

a1x=4;
a1y=72; //calculate based on drawer cylinder
a1z=aZstandard;

a2x=6;
a2y=72;  //calculate based on drawer cylinder
a2z=aZstandard;

a4z=aZstandard;
a6z=aZstandard;

//
//Input your main cylinder's dimenions here
//
cylinderMAINminC2E=0; //main hydraulic cylinder's distance from center of mounting hole to the end of the shaft when fully compressed.
cylinderMAINmaxC2E=0; //main hydraulic cylinder's distance from center of mounting hole to the end of the shaft when fully extended.

//
//Input your drawer cylinder's dimenions here
//
cylinderDRAWERbodyH=3; //measured when in position, largest length from top to bottom of cylinder
cylinderDRAWERminC2C=0; //drawer's hydraulic cylinder's distance from the center of one mounting hole to the center of the other when fully compressed.
cylinderDRAWERmaxC2C=0; ///drawer's hydraulic cylinder's distance from the center of one mounting hole to the center of the other when fully extended.
cylinderDRAWERrodclevisW=2.5; //width of cylinders' clevis on end of rod
cylinderDRAWERrodclevisID=1;
cylinderDRAWERrodclevisOD=2;
cylinderDRAWERrearclevisW=2.5; //width of mounting clevis cylinder body
cylinderDRAWERrearclevisID=1;
cylinderDRAWERrearclevisOD=2;
cylinderDRAWERrearclevisClearance=3; //usable space around rear clevis pin (in diameter). be aware of hyraulic fittings.

//the following variables are calculated in order of dependence on preceding variables
d3x=brickL+(d2z*2);
d3y=brickCH-d1z;
d4x=brickW+d3z+d3z;
d4y=brickCH-d1z;
d5x=brickL+(d2z*2);
d5y=brickW;
d6x=brickL+(d2z*2);
d6y=brickCH;
d7x=cylinderDRAWERrearclevisClearance;
d7y=a4z+d8z+cylinderDRAWERbodyH;
d9x=cylinderDRAWERbodyH+d6z;
d9y=cylinderDRAWERbodyH+d8z;
d8x=brickL+(d2z*2);
d8y=max(5,(d9x-d6z));   //need to review fundamentals, 5 minimun unless d9 gets larger than d8
d1x=18.5;   //need to come up with a formula
d1y=18;     //need to come up with a formula
d2x=d8y+d6z+brickW+d3z+d5y+d3z;
d2y=brickCH;

f11y=f8y;
f6x=brickL+(d2z*2)+(f9y*2)+drawerHgap;
f8x=43.5;  //need to define based on MAINcylinder inputs


f2x=brickL+(d2z*2)+drawerHgap+(f9y*2)-(1.4*2);  //distance between large cut outs in f9

f5x=brickL+(d2z*2)+drawerHgap+(f9y*2)+(a1x*2); //distance between outer edges of each A1

f4x=f5x-0.5;   //same as f5 but minus 0.25 on each side to give a little overhang
