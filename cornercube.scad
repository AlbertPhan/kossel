rotate([0,0,-40]) translate([0,4.5,5]) cube([1,10,10], center=true);
rotate([0,0,40]) translate([0,4.5,5]) cube([1,10,10], center=true);
rotate([-10,0,0]) translate([0,4.5,9.5]) cube([10,10,1], center=true);
translate([0,7,4]) % sphere(r=4, $fn=64);
translate([0,7,4]) rotate([-130,0,0]) % cylinder(r=2, h=10, $fn=32);