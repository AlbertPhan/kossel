include <configuration.scad>;

thickness = 5.5;
width = 16;
height = 15;
slotWidth = 5.0;
slotDepth = 1.4;
overlap=0.01;

module tube(innerDiameter, outerDiameter, length) {
	difference() {
		cylinder(r=outerDiameter/2, h=length, $fn=32);
		translate([0,0,-overlap])
			cylinder(r=innerDiameter/2, h=length+2*overlap, $fn=32);
		translate([0,1,-overlap])
			cube([outerDiameter/2,outerDiameter/2,length+2*overlap]);
	}
}

module endstop() {
  difference() {
    union() {
      cube([width, thickness, height], center=true);
      translate([0, slotDepth, 0])
        cube([slotWidth, thickness, height], center=true);
      translate([-6,-5.75,-height/2]) tube(6,8,8,1.5);
      mirror([1,0,0]) translate([-6,-5.75,-height/2]) tube(6,8,8,1.5);
    }
    translate([0, 0, 3.5]) rotate([90, 0, 0]) {
      cylinder(r=m3_wide_radius, h=20, center=true, $fn=12);
      translate([0, 0, -3.0+thickness/2]) {
        cylinder(r=3, h=10, $fn=24);
        translate([0, 5, 5])
          cube([6, 10, 10], center=true);
      }
    }
  }
}

translate([0, 0, height/2]) endstop();