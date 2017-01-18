$fn=120;
union(){
  difference(){
rotate([90,0,0])
import("/home/marcelo/repositories/MAKER/UlticampyV3/STL Printer parts/BodyForCentralCarriageDoulbeE3Dv6Inductive_v2.STL");
translate([53,-11.5,0])
#cylinder(d=18, h=100);
  }
}