// Feet for Kossel

m5clear = 5.0;
m5head = 8.6;
m5headDepth = 2.8;
baseThickness = 2.4;
headRecess = 1.0;
height = m5headDepth+baseThickness+headRecess;
extraClear = 0.6;
overlap = 0.1;

difference() {
	cylinder(r1=14, r2=11, h=height, $fn=80);
	translate([0,0,-overlap])
		cylinder(r=(m5clear+extraClear)/2, h=height+2*overlap, $fn=32);
	translate([0,0,baseThickness])
		cylinder(r=(m5head+extraClear)/2, h=height-baseThickness+overlap, $fn=40);
}
