use <LensHoodCover.scad>

$fn = 100;

RADIUS = 41.5; // External radius of the lens
RADIUS_INT = 38; // Internal radius of the lens
WALL_THICKNESS = 2;
CAP_HEIGHT = 25;


difference(){
    lens_cover(
         r=RADIUS,
         ri=RADIUS_INT,
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
            text("400mm f5.6",
                halign="center",
                font="Liberation Sans",
                size=8);
            }}
        
    }
}