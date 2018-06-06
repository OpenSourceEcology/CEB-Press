//Corner Joint - allows the sides of two parts to create inlayed corner. Aids with welding.
//need to verify module math is the same throughout all parts.

module cornerjoint(Z,L,H,EndGap,PadL,PadH,CJangle,CJcenter){
    //change so that H = Z of inlayed part (usually 0.5)
    //add center and angle in degrees option, orgin far side of cut out area

     if((CJangle==0)&&(CJcenter==0))
      {    
        translate([0,0,0])
        rotate([0,0,CJangle])
        difference(){
        cube([L,H+PadH,Z]);
        translate([EndGap,H,0])
        cube([PadL,PadH,Z]);
        translate([L-EndGap-PadL,H,0])
        cube([PadL,PadH,Z]);}
      }    
else if((CJangle==90)&&(CJcenter==0))
      {    
        translate([H+PadH,0,0])
        rotate([0,0,CJangle])
        difference(){
        cube([L,H+PadH,Z]);
        translate([EndGap,H,0])
        cube([PadL,PadH,Z]);
        translate([L-EndGap-PadL,H,0])
        cube([PadL,PadH,Z]);}
      }
else if((CJangle==180)&&(CJcenter==0))       
      {    
        translate([L,H+PadH,0])
        rotate([0,0,CJangle])
        difference(){
        cube([L,H+PadH,Z]);
        translate([EndGap,H,0])
        cube([PadL,PadH,Z]);
        translate([L-EndGap-PadL,H,0])
        cube([PadL,PadH,Z]);}
      }
else if((CJangle==270)&&(CJcenter==0))
      {    
        translate([0,L,0])
        rotate([0,0,CJangle])
        difference(){
        cube([L,H+PadH,Z]);
        translate([EndGap,H,0])
        cube([PadL,PadH,Z]);
        translate([L-EndGap-PadL,H,0])
        cube([PadL,PadH,Z]);}
      }  
      
//centered     
   
else if((CJangle==0)&&(CJcenter==1))
      {    
        translate([-L/2,0,0])
        rotate([0,0,CJangle])
        difference(){
        cube([L,H+PadH,Z]);
        translate([EndGap,H,0])
        cube([PadL,PadH,Z]);
        translate([L-EndGap-PadL,H,0])
        cube([PadL,PadH,Z]);}
      }  
else if((CJangle==90)&&(CJcenter==1))
      {    
        translate([0,-L/2,0])
        rotate([0,0,CJangle])
        difference(){
        cube([L,H+PadH,Z]);
        translate([EndGap,H,0])
        cube([PadL,PadH,Z]);
        translate([L-EndGap-PadL,H,0])
        cube([PadL,PadH,Z]);}
      }
else if((CJangle==180)&&(CJcenter==1))       
      {    
        translate([L/2,0,0])
        rotate([0,0,CJangle])
        difference(){
        cube([L,H+PadH,Z]);
        translate([EndGap,H,0])
        cube([PadL,PadH,Z]);
        translate([L-EndGap-PadL,H,0])
        cube([PadL,PadH,Z]);}
      }
else if((CJangle==270)&&(CJcenter==1))
      {    
        translate([0,L/2,0])
        rotate([0,0,CJangle])
        difference(){
        cube([L,H+PadH,Z]);
        translate([EndGap,H,0])
        cube([PadL,PadH,Z]);
        translate([L-EndGap-PadL,H,0])
        cube([PadL,PadH,Z]);}
      }
} //end cornerjoint module

//Tab Insert - used to cut a hole for an abutting part to insert into. Typically aids with welding the two parts.
module tabinsert(X,Y,Z,dGap,cGap,c1,c2,c3,c4,c5,c6,c7,c8,center){
    translate([-dGap-(center*(X/2)),-dGap-(center*(Y/2)),0]){
        //main cut
        cube([X+(dGap*2),Y+(dGap*2),Z]);
        //corner c1c2
        translate([-cGap,(Y+(dGap*2))-c1+cGap,0])
            {
        cube([c2,c1,Z]);}
       //corner c3c4
       translate([(X+(dGap*2))-c3+cGap,(Y+(dGap*2))-c4+cGap,0]){
           cube([c3,c4,Z]);
       }
       //corner c5c6
       translate([(X+(dGap*2))-c6+cGap,-cGap,0])
      {
          cube([c6,c5,Z]);
      }
       
       //corner c7c8 
       translate([-cGap,-cGap,0]){
           cube([c7,c8,Z]);
       }
    
    } //end center translate
} //end tabinsert module
 