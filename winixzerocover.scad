$fn = 32;

b = 110;
l1 = 50+5;
l2 = 9+1;
l3 = 44-5;
d = 1.2;
alpha1 = -35+5+1; //-55;
alpha2 = -35-5-1; //-55;

module bar(l) {
    translate([0,0,-d/2]) cube([l,b,d]);
    rotate([-90,0,0]) cylinder(d=d, h=b);
    translate([l,0,0]) rotate([-90,0,0]) cylinder(d=d, h=b);
}


translate([l3,0,0]) rotate(S[0,alpha2,0])
union() {
  translate([l2,0,0]) rotate([0,alpha1,0]) bar(l1);
  bar(l2);
}
bar(l3);
translate([l3-6.5-d,0,0]) cube([d,b,d+d]);
