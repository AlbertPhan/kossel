// Mini Kossel draight shield holders

height=200;
width=50;
standoff=4;
thickness=3.2;			// thickness of main plate
slotWall=1.5;			// thickness around slot
extrusion=15;
slotWidth=3.5;
slotDepth=6;
retainerExtraDepth=2;
holeHeights=[20,height/2,height-20];
holeDiameter=3.3;

overlap=1;
slotCubeWidth=slotWidth+2*slotWall;

module slot() {
translate([-(slotWidth+2*slotWall)/2,0])
	difference() {
		cube([slotWidth+2*slotWall,height,slotDepth+retainerExtraDepth]);
		translate([slotWall,-overlap,retainerExtraDepth])
			cube([slotWidth,height+2*overlap,slotDepth+overlap]);
	}
}

difference() {
	union() {
		difference() {
			translate([-width/2,0,0]) cube([50,200,thickness]);
			translate([-(width-slotCubeWidth)/2,0,thickness])
				rotate([0,-30,0]) 
					translate([-(slotCubeWidth+2)/2,-overlap,0])
						cube([slotCubeWidth+2,height+2*overlap,20]);
			translate([(width-slotCubeWidth)/2,0,thickness])
				rotate([0,30,0]) 
					translate([-(slotCubeWidth+2)/2,-overlap,0])
						cube([slotCubeWidth+2,height+2*overlap,20]);
		}
		translate([-extrusion/2,0,thickness-overlap])
			cube([extrusion,height,standoff+overlap]);
		translate([-width/2+slotCubeWidth*cos(30)/2,0,slotCubeWidth*sin(30)/2])
			rotate([0,-30,0]) slot();
		translate([width/2-slotCubeWidth*cos(30)/2,0,slotCubeWidth*sin(30)/2])
			rotate([0,30,0]) slot();
	}
 	for (i=holeHeights) {
		translate([0,i,-overlap])
			cylinder(r=holeDiameter/2,h=thickness+standoff+2*overlap,$fn=16);
	}
}
