$fn = 100;

module lens_cover(r, ri, h, t){
    difference(){
        cylinder(r=r+t, h=h);
        translate([0, 0, 4]) cylinder(r=r, h=h);
    }

    difference(){
        cylinder(r=ri, h=9);
        translate([0, 0, 4]) cylinder(r=ri-10, h=h);
    }
}

lens_cover(
     r=41.5,
     ri=38,
     h=39,
     t=2);
