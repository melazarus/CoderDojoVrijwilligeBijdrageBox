echo($t);

rotate([0,$t*360,0])
translate([0,0,-50])
{
color("#FFFFFF")
  difference()
  {
    cylinder(d=200, h=100, $fn=120);
    
    translate([-50,-100,-0.05])
      cube([100,10,100.1]);
    
    translate([-20,80,50])
      cube([40,40,5]);
  }
translate([0,100,52])
  cylinder(d=20, h=1,$fn=120);
color("#000000")
  translate([0,0,100])
    linear_extrude(1)
      scale([1.1,1.1,1.1])
        import("logo.svg");
}