overlap=0.1;

difference()
{
	translate([-4,-15,0]) cube([8,30,2.5]);
	translate([0,-10,-overlap]) cylinder(r=1.8,h=2.5+2*overlap,$fn=16);
	translate([0,10,-overlap]) cylinder(r=1.8,h=2.5+2*overlap,$fn=16);
}
translate([0,0,2.5-overlap]) cylinder(r=4.95/2,h=5+overlap,$fn=32);
