
length=90;
width=16;
inset=8;
inset2=20;
recess=2;
m3clearH=3.3;
m3clearV=3.8;
m3nutV=7.1;
nutTrapHeight=2.5;
overlap=1;

difference() {
	cube([width,length,15-recess]);
	translate([width/2,inset,-1]) cylinder(r=m3clearV/2,h=15,$fn=16);
	translate([width/2,inset,15-recess-nutTrapHeight]) cylinder(r=m3nutV/2,h=15,$fn=6);
	translate([width/2,length-inset,-1]) cylinder(r=m3clearV/2,h=15,$fn=16);
	translate([width/2,length-inset,15-recess-nutTrapHeight]) cylinder(r=m3nutV/2,h=15,$fn=6);

	translate([-overlap,inset2,15/2-recess])
		rotate([0,90,0]) cylinder(r=m3clearH/2,h=width+2*overlap,$fn=16);
	translate([-overlap,length-inset2,15/2-recess])
		rotate([0,90,0]) cylinder(r=m3clearH/2,h=width+2*overlap,$fn=16);
}
