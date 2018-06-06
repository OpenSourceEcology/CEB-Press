$fn=20;

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

cylMain(0); //rodend pin holder: 1 = yes, 0 = no

echo(cylMainRet-cylMainJ-(cylMainS/2));

module cylMain(PinYN){

MAINcylinder();
translate([0,0,cylMainRet])  //to animate include "+($t*(cylMainStroke))"
MAINcylinderROD(PinYN);  //rodend pin holder: 1 = yes, 0 = no
}

module MAINcylinder(){
    difference(){
    translate([-cylMainE/2,0,0])
rotate([0,90,0])
cylinder(h = cylMainE, r = cylMainS/2);
    
    translate([-cylMainE/2,0,0])
rotate([0,90,0])
cylinder(h = cylMainE, r = cylMainR/2);
    } //end difference
    
    translate([0,0,(cylMainS/2)])
    cylinder(h = (cylMainRet-cylMainJ-(cylMainS/2)), r = (cylMainBore/2)+cylMainB);
    
}// end Main Cylinder module

module MAINcylinderROD(PinYN){
difference(){
            
    translate([-cylMainG/2,0,0])
rotate([0,90,0])
cylinder(h = PinYN*(cylMainG), r = PinYN*(cylMainS/2));
    
    translate([-cylMainG/2,0,0])
rotate([0,90,0])
cylinder(h = cylMainG, r = cylMainR/2);

    } //end difference
                translate([0,0,-(cylMainStroke+cylMainJ-(cylMainS/2))-(cylMainS/2)])
            cylinder(h = cylMainStroke+cylMainJ-(cylMainS/2), r = cylMainD/2);
    
}