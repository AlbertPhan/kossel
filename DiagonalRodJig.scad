overlap=0.1;

difference()
{
	translate([-4,-25,0]) cube([8,50,2.5]);
	translate([0,0,-overlap]) cylinder(r=1.8,h=2.5+2*overlap,$fn=16);
}
translate([0,-15,2.5-overlap]) cylinder(r=4.95/2,h=5+overlap,$fn=32);
translate([0,15,2.5-overlap]) cylinder(r=4.95/2,h=5+overlap,$fn=32);
//translate([0,0,2.5-overlap]) cylinder(r=5.25/2,h=5+overlap,$fn=32);
