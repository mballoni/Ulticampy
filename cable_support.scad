
difference(){
  body();
  translate([0,0,4])
  rotate([90,0,0])
    #cylinder(h=20,d=2.5, $fn=100);
}

module body(){
cube([10,35,2.5], true);
translate([0,-17.5,2.75])
  cube([10,2,8], true);
}