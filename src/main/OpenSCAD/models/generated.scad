outer_diameter = 20.000000;
inner_diameter = 4.000000;
thickness = 10.000000;

difference() {
    cylinder(d = outer_diameter, h = thickness);
    cylinder(d = inner_diameter, h = thickness);
}
