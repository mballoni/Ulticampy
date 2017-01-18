difference() {
  cube([10,20,4], true);
  translate([0,5,1]) 
    #cylinder(h=5,d=6.5 , center=true, $fn=6);
  translate([0,5,0]) 
    #cylinder(h=5,d=3.5 , center=true, $fn=100);
  
}