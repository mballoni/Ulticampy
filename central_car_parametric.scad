$fn=100;
distanceCenters=9;
bearingExternalDiameter=9;

xlength=50;
ylength=50;


difference(){
  union() {
    y(bearingExternalDiameter+2);
    x(bearingExternalDiameter+2); 
  }
  y(bearingExternalDiameter);
  x(bearingExternalDiameter);
}

module bearingSpaces(){
  y(bearingExternalDiameter);
  x(bearingExternalDiameter);
}

module y(diameter){
rotate([0, 90, 0])
  cylinder(h=ylength, d=diameter, center=true);
}
 
module x(diameter){
translate([0, 0, distanceCenters])
  rotate([90, 0, 0])
    cylinder(h=xlength, d=diameter, center=true);
}
 