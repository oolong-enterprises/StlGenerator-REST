// ================================
// PARAMETRIC SPIRAL VORTEX
// ================================

$fn = 80;

// ---- Parameters ----
outer_radius = 30;
inner_radius = 8;
height = 25;

arms = 8;
twist = 180;
thickness = 4;

segments = 120;


// ---- Main Shape ----
module vortex() {

    linear_extrude(
        height = height,
        twist = twist,
        slices = segments
    )
    difference() {

        // Outer disk
        circle(outer_radius);

        // Center hole
        circle(inner_radius);

        // Cut spiral channels
        for (i = [0 : arms-1]) {

            rotate(i * 360 / arms)
                translate([inner_radius + 8, 0, 0])
                    square(
                        [outer_radius, thickness],
                        center = true
                    );
        }
    }
}


// ---- Decorative Base ----
module base() {

    difference() {

        cylinder(
            h = 4,
            r = outer_radius + 3
        );

        cylinder(
            h = 5,
            r = inner_radius - 1
        );
    }
}


// ---- Build ----
base();

translate([0,0,4])
    vortex();