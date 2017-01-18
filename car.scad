union(){
    mirror([1,0,0]) 
        half(true);
    half(true);
    translate([1.1,0,0])
        halfExtended();
    translate([-1.1,0,0])
        mirror([1,0,0])
            halfExtended();
}
module half(showHole) {
difference(){
difference(){
union(){
translate([-38.8,-50,-318.26])import("Bushing_XY_Car_-_assembled_mode_Ulticampy_v3.stl");

linear_extrude(height = 7.94)
    translate([-17, -5.9, 0])
    square([33.6,6]);
translate([-17, -7.9, 0])
    linear_extrude(height = 2)
    square([33.6,3]);
}
if(showHole){
translate([-11.5, -3, -5])       
    #cylinder(h=25, r=1.65, $fn=100);
}
}
translate([0, -50, -5])
cube([100,100,20]);
}
}

module halfExtended() {
    union() {
       difference() {
            half(false);
            translate([-17, -50, -10])    
                cube([150,150,30]);
        }    
    }
}