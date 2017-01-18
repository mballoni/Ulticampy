


difference(){
union() {
  linker();
  clamp();
  translate([-2,-18,0])
    support();
}
translate([8,-1,6])
  #screwHole();
translate([-8,-1,6])
  #screwHole();
translate([-2,-18,0])
  cylinder(h=4, d=19, $fn =100);
}
module screwHole() {
  rotate([90,0,0])
    cylinder(h=17, r=3.2, $fn =100);
}

module linker() {
  translate([-15.142,-24.3,0])
    cube([27,30,4]);
}

module support() {
  difference(){
    cylinder(h=4, d=25);
    cylinder(h=4, d=19, $fn =100);
  }
}

module clamp() {
  translate([-15,33,-2.2])
  rotate([90,0,0])
    import("/home/marcelo/repositories/MAKER/UlticampyV3/STL Printer parts/Hotend1ClampForCentralCarriageDoulbeE3Dv6Inductive_v2.STL");
}