length=130;
height=60;
thickness=2.5;
round=5;
overlap=0.1;

module fuseCutout() {
	translate([0,0,-overlap])
		difference() {
			cylinder(r=6.8,h=thickness+2*overlap,$fn=32);
			translate([5.5,-10,-overlap]) cube([20,20,thickness+4*overlap]);
		}
}

module switchCutout() {
	union() {
		cube([13,19,10], center=true);
	}
}

module inletCutout() {
	union() {
		cube([19.5,27,10], center=true);
	}
}

module roundCorner(radius, height) {
	difference() {
		cube([radius+2,radius+2,height]);
		translate([0,0,-overlap]) cylinder(r=radius,h=height+2*overlap,$fn=32);
	}
}

difference() {
	translate([-height/2,0,0]) cube([height,length,2.5]);
	translate([0,30,0]) fuseCutout();
	translate([0,55,0]) switchCutout();
	translate([0,90,0]) inletCutout();
	translate([20,10,-overlap]) cylinder(r=1.6,h=thickness+2*overlap, $fn=16);
	translate([20,length-10,-overlap]) cylinder(r=1.6,h=thickness+2*overlap, $fn=16);
	translate([-20,10,-overlap]) cylinder(r=1.6,h=thickness+2*overlap, $fn=16);
	translate([-20,length-10,-overlap]) cylinder(r=1.6,h=thickness+2*overlap, $fn=16);
	translate([-height/2+round,round,-overlap])
		rotate([0,0,180]) roundCorner(round,thickness+2*overlap);
	translate([height/2-round,round,-overlap])
		rotate([0,0,-90]) roundCorner(round,thickness+2*overlap);
	translate([-height/2+round,length-round,-overlap])
		rotate([0,0,90]) roundCorner(round,thickness+2*overlap);
	translate([height/2-round,length-round,-overlap])
		rotate([0,0,0]) roundCorner(round,thickness+2*overlap);
}


