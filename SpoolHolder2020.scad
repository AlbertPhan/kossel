// Reel holder for 2020 Kossel

overlap=0.1;
m4radius=2+0.4;

difference () {
	union() {
		translate([0,0,12]) rotate([0,90,0])
			union() {
				translate([0,0,0]) cylinder(r=15,h=80,$fn=64);
				translate([0,0,0]) cylinder(r=20,h=6,$fn=64);
				translate([0,0,80-6]) cylinder(r=20,h=6,$fn=64);
			}
		translate([-25,-15,0]) cube([25+overlap,30,30]);
	}
	translate([0,0,-100]) cube([999,999,200],center=true);
	translate([-25/2-5,0,0]) cube([25,20,100],center=true);
	translate([-15,0,15]) rotate([90,0,0]) cylinder(r=m4radius,h=20,$fn=16);
	translate([-15,0,22.5]) rotate([-90,0,0]) cylinder(r=m4radius,h=20,$fn=16);
	translate([-15,0,7.5]) rotate([-90,0,0]) cylinder(r=m4radius,h=20,$fn=16);
}
