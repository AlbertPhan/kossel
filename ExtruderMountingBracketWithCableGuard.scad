// Mounting brackey for Ormerod extruder on 2020 Kossel
// The body screws on a JK42HS34-1334A motor are 26mm long and are recessed by 2.5mm, total 28.5mm.
// Therefore we can use a 35mm screw to fix trhe bracket to the motor if the screw goes through 6.5mm of plastic.

width=20;
m3headClear=5.6+0.4;
m3clear=3+0.2;
m3headDepth=3;
thickness=6.5+m3headDepth;
m4clear=4+0.2;
m4headClear=7.5+0.4;
m4headDepth=3;
cableGuardLength=40;
cableGuardWidth=4;
cableGuardHeight=12;

nema17holeSpacing=31;
nema17body=42;

nema17offset=3;

mountingHoleSpacing = nema17body + 2*6;
overlap=0.02;

difference() {
	// Basic shape
	union() {
		translate([0,0,thickness/2]) cube([mountingHoleSpacing,width,thickness],center=true);
		translate([-mountingHoleSpacing/2,0,0]) cylinder(r=width/2,h=thickness, $fn=64);
		translate([mountingHoleSpacing/2,0,0]) cylinder(r=width/2,h=thickness, $fn=64);

		// Cable guard
		translate([-cableGuardLength/2,-width/2,thickness-overlap])
			cube([cableGuardLength,cableGuardWidth,cableGuardHeight+overlap]);
	}

	// Holes for mounting bracket into extrusion
	translate([-mountingHoleSpacing/2,0,-overlap]) cylinder(r=m4clear/2,h=thickness+2*overlap, $fn=16);
	translate([mountingHoleSpacing/2,0,-overlap]) cylinder(r=m4clear/2,h=thickness+2*overlap, $fn=16);
	translate([-mountingHoleSpacing/2,0,thickness-m4headDepth])
		cylinder(r=m4headClear/2,h=thickness, $fn=32);
	translate([mountingHoleSpacing/2,0,thickness-m4headDepth])
		cylinder(r=m4headClear/2,h=thickness, $fn=32);

	// holed for attaching stepper motor
	translate([-nema17holeSpacing/2,nema17offset,m3headDepth+0.4]) cylinder(r=m3clear/2,h=thickness, $fn=16);
	translate([nema17holeSpacing/2,nema17offset,m3headDepth+0.4]) cylinder(r=m3clear/2,h=thickness, $fn=16);
	translate([-nema17holeSpacing/2,nema17offset,-overlap])
		cylinder(r=m3headClear/2,h=m3headDepth+overlap, $fn=32);
	translate([nema17holeSpacing/2,nema17offset,-overlap])
		cylinder(r=m3headClear/2,h=m3headDepth+overlap, $fn=32);
}
