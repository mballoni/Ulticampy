$fn = 100;
outerSquare=30;
innerSquare=25;
height=20;
holeDiameter=2.5;


difference() {
  linear_extrude(height = 2, center = true)
    squares();
  holes();
}

module squares() {
  minkowski() {
    #sorround(-(outerSquare/2), height/2);
    square([outerSquare, height], true);
    #sorround((outerSquare/2), -height/2);
  }
  //#square([innerSquare, height], true);
}

module sorround(x, y) {
  translate([x, y, 0])
    circle(d=2);
}

module holes(){
  translate([(outerSquare/2) - ((outerSquare-innerSquare) / 2), 0, -2])
    #cylinder(h=10, d=holeDiameter);
  
  translate([- (outerSquare/2) + ((outerSquare-innerSquare) / 2), 0, -2])
    #cylinder(h=10, d=holeDiameter);  
}