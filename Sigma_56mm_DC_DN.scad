use <LensCover.scad>

$fn = 100;

DIA_EXT = 78; // External diameter of the lens
DIA_INT = 74; // Internal diameter of the lens
WALL_THICKNESS = 2;
CAP_HEIGHT = 25;

     
difference(){
    lens_cover(
         r=DIA_EXT/2,
         ri=DIA_INT/2,
         h=CAP_HEIGHT,
         t=WALL_THICKNESS);
        
    translate([0, 4, 0]){
        mirror(v=[1,0,0]){
            linear_extrude(height=3 ) {
                text("Sigma",
                    halign="center",
                    font="Liberation Sans",
                    size=12);
                }
        }
    }
    
    translate([0, -10, 0]){
        mirror(v=[1,0,0]){
        linear_extrude(height=3) {
            text("56mm f1.4",
                halign="center",
                font="Liberation Sans",
                size=8);
            }}
        
    }
}