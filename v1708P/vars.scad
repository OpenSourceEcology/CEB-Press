brickW=6; 
brickL=24;
brickCH=6; //Is brick height being shortened by d1z??

//3.625 x 2.25 x 8
//6 x 12 x 6

grateX=56;
grateY=23;
grateH=37; //Height mounted above press's frame
grateA=17.5; //angle of grate

//grateX=56;
//grateY=23;
//grateH=37; //Height mounted above press's frame
//grateA=17.5; //angle of grate


$fn=8; //defines resolution of circles. 8 is okay for review. 100  or greater should be used for for final dxf export.

dZstandard=0.5; //thickness of steel to be cut for drawer parts
fZstandard=0.5;
aZstandard=0.5; //thickness of steel to be cut for arm parts
hZstandard=0.125;

fBOLTHOLEstandardD=1; //standard bolts used on frame
aBOLTHOLEstandardD=1;

sliderodholeOD=1.2; 
d1bushingOD=1.25;
d1bushingL=1.25;
d1shaftOD=1;
d1bolt1OD=1;
d1bolt2OD=0.75;
d1nut2AF=1.25;
d1nut2H=0.665;


dGap=0.03125; //gap between a hole cut's edge and the part sitting within the hole. //D3 appears to use 0.3125, is this in error?

//all parts set to standard thickness below
//off standard preferences can be defined below

//drawer
drawergap=0.0283;  //extra room for drawer to slide in the space between f1 and f4
drawerHgap=0.1884;  //total extra space from drawer sides to frame walls. sum of both sides.

d2clevispinaccessholeOD=3;

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

d11z=dZstandard;
d12z=dZstandard;


//frame

f1y=6;
f1z=fZstandard;


f2y=3.5;
f2z=fZstandard;

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

f9z=fZstandard;




f12z=fZstandard;   

f11x=1.25;
f11z=fZstandard;

f13z=fZstandard;

f14y=3.5;
f14z=fZstandard;

//arms

a1x=4;
a1z=aZstandard;
a1out=24; //length from frame to A5 edge for bricks to sit on as they exit

a2x=6;
a2z=aZstandard;

a3x=4;
a3y=72;
a3z=aZstandard;

a4x=6;
a4y=72;
a4z=aZstandard;

a5x=6;
a5y=72;
a5z=aZstandard;

a6z=aZstandard;

//guards

h1x=grateX;
h1y=grateH;  //might need to tweak for grate thickness

h1z=hZstandard;
h2z=hZstandard;
h3z=hZstandard;
h4z=hZstandard;
h5z=hZstandard;
h6z=hZstandard;
h7z=hZstandard;
h8z=hZstandard;

//
//Input your main cylinder's dimenions here
//
cylMainBore = 5;
cylMainStroke = 16;
cylMainExt = 43;
cylMainRet = 27;
cylMainA = (cylMainRet-cylMainStroke); //center to center minus stroke length
cylMainB = 0.25; // cylinder wall thickness
cylMainD = 2.5; //Rod OD
cylMainE = 5.75; //rear pin holder width
cylMainG = 4; //rod pin holder width
cylMainJ = 3.8; //distance from the end of the cylinder body to rod pin center
cylMainR = 1.52; //pin hole ID
cylMainS = 2.5; //pin holder OD

//
//Input your drawer cylinder's dimenions here
//
//
cylDrawerBore = 5;
cylDrawerStroke = 16;
cylDrawerExt = 43;
cylDrawerRet = 27;
cylDrawerA = (cylMainRet-cylMainStroke); //center to center minus stroke length
cylDrawerB = 0.25; // cylinder wall thickness
cylDrawerD = 2.5; //Rod OD
cylDrawerE = 5.75; //rear pin holder width
cylDrawerG = 4; //rod pin holder width
cylDrawerJ = 3.8; //distance from the end of the cylinder body to rod pin center
cylDrawerR = 1.52; //pin hole ID
cylDrawerS = 2.5; //pin holder OD

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
d9x=cylinderDRAWERbodyH+d6z; //should be based on clevis size?
d9y=cylinderDRAWERbodyH+d8z;
d8x=brickL+(d2z*2);
d8y=max(5,(d9x-d6z));   //need to review fundamentals, 5 minimun unless d9 gets larger than d8
d11x=1.5+(d1bolt1OD*2)+d1bushingOD;
d11y=max((0.5+d1bushingL),4);

d12x=d8x;
d12y=d11y+1;

f1x=((brickL+(d2z*2)+drawerHgap+(f9y*2)));
f3x=f1x;

d1x=(brickL+d2z+d2z);
//d1x=(((f1x/2)-(((brickL+(d2z*2)+drawerHgap)/2)-fZstandard-(sliderodholeOD/2)))+(d11x/2))*2;
d1y=((brickW+d3z+d3z)*3)+1;

d2x=d8y+d6z+brickW+d3z+d5y+d3z;
d2y=brickCH;



f11y=f8y;
f6x=brickL+(d2z*2)+(f9y*2)+drawerHgap;

f9x=(f2z+((cylMainS+0.125)/2)+cylMainRet-cylMainJ+1+f4y+drawergap+d2y+f1y);  //leaves 1" between top of cylinder and bottom of F4
f8x=f9x;


f2x=brickL+(d2z*2)+drawerHgap+(f9y*2)-(1.4*2);  //distance between large cut outs in f9

f5x=brickL+(d2z*2)+drawerHgap+(f9y*2)+(a1x*2); //distance between outer edges of each A1

f4x=f5x-0.5;   //same as f5 but minus 0.25 on each side to give a little overhang

f14x=brickL+(1*2)+(.125*2)+(dGap*2); 

f12x=f3x;
f12y=(f3y*2)+brickW;

sliderodoffset=(((brickL+(d2z*2)+drawerHgap)/2)-fZstandard-(sliderodholeOD/2));

distancetof8center=(cylDrawerExt+(a4x/2)+((d9x-d6z)/2)+d6z+(brickW/2)); //F8 center on A1

a1y=distancetof8center+(brickW/2)+a1out;
a2y=a1y;

h7x=f5x-((a1x/2)*2)+(1.5*2);
h7y=cylDrawerStroke;

h8x=f5x-((a1x/2)*2)+(1.5*2);
h8y=a1out-a5x-f5y;  //distance between a5 and f5

hopperBaseX=brickL;
hopperBaseY=brickW;

h2x=grateX;
h2y=sqrt(((h1y-(sin(grateA)*grateY))*(h1y-(sin(grateA)*grateY)))+(((cos(grateA)*grateY)-hopperBaseY)*((cos(grateA)*grateY)-hopperBaseY)));

//h1y-(sin(grateA)*grateY)
//(cos(grateA)*grateY)-hopperBaseY

echo(h1y-(sin(grateA)*grateY));
echo((cos(grateA)*grateY)-hopperBaseY);
echo(h2y);
echo(atan((h1y-(sin(grateA)*grateY))/((cos(grateA)*grateY)-hopperBaseY)));
echo((h1y-(sin(grateA)*grateY))/(h1y));

// ECHO - REQUIRED PARTS BASED ON INPUTS

echo(str("Minimum drawer cylinder stroke length: ",(d3z*2)+d5y+brickW));
//would be cool to validate and confirm user inputed stroke length. set error=1; if drawer cylinder is not long enough. print an echo warning.

echo(str("Grate hieght above ground level: ",(1)));
