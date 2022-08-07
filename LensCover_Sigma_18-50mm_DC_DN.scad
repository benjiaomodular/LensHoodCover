use <LensCover.scad>

$fn = 100;

DIA_EXT = 75.5; // External diameter of the lens
DIA_INT = 72; // Internal diameter of the lens
WALL_THICKNESS = 2;
CAP_HEIGHT = 25;

lens_cover(
     r=DIA_EXT/2,
     ri=DIA_INT/2,
     h=CAP_HEIGHT,
     t=WALL_THICKNESS);