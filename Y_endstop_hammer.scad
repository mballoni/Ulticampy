color("red")
linear_extrude(4)
translate([-22.5,-18,0])
  square([5,15]);
main();

module main() {
linear_extrude(2)
difference() {
  square([45, 26], center = true);
  translate([-10,10,0])
    square([45, 26], center = true);
}
}