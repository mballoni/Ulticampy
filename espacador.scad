innerDiameter = 9.1;
width=2.5;
$fn = 100;


spacer(9);

translate([10,10,0])
    spacer(21);
translate([10,23,0])
    spacer(21);
translate([25,20,0])
    spacer(9);

translate([-15,20,0])
    spacer(21);
translate([-15,5,0])
    spacer(19);
translate([-15,-10,0])
    spacer(19);
    
module spacer(height) {
    difference() {
        //outer
        cylinder(h=height, d = innerDiameter+width);
        //inner diameter
        cylinder(h=height, d = innerDiameter);
    }
}