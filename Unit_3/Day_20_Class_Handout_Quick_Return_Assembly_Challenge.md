<!-- command: render -->
<!-- command: grid -->
# Create Parts and Assemble a Quick Return Mechanism

## The Goal

The goal of this challenge is to:

* Become better familiar with sketches, extrusion, and revolve.
* To practice doing OnShape on your own.
* Become more familiar with assembly.


![Quick Return Mechanism](../Unit_1/img/Quick_Re_Full.png)

## Create a Sketch for Base, Disk, and Slider

Use the drawing tools and diagrams below to recreate the sketch necessary to create the base, disk, and slider.


![Bottom of Sketch 1](../Unit_1/img/Quick_Re_Bottom_Sketch1.png)

![Top of Sketch 1](../Unit_1/img/Quick%20_Re_Top_Sketch_1.png)

## Extrude the parts

1. Extrude base plate. New, symmetric, 102mm
2. Extrude slide rail. New, symmetric, 188mm
3. Extrude long stand, Add, symmetric, 18mm, and put the slide rail and base plate in the merge scope.
4. Rename the part "Base"
5. Extrude the slider without the pin. New, 22mm, symmetric
6. Revolve the pin on the slider around the bottom line. Add to the slider.
7. Revolve the pin at the middle of the base around bottom line. Add to base
8. Revolve the rectangle that makes the disk around the same axis as the middle pin, make new, and rename to base.
9. Revolve the top pin of the disk around its bottom line and add to disk.
10. Rename Part 3 "disk"
11. Revolve the bottom peg around its bottom line and add to the base. 

## Create The Crank

![Sketch 2](../Unit_1/img/Quick_Re_Sketch_2.png)

1. Add new sketch based on the plane of the front of the bottom pin.
2. Create vertical construction line from center of bottom pin vertically up 172 mm.
3. Make a slot (an option under the offset command), use the construction line, and then change the diameter of the 
rounded ends to 16mm
4. Project the faces of all pins into the sketch.
5. create a vertical construction line that starts at the center of the disk's pin down 60 mm
6. Make a slot using that construction line. You may need to right click on it and choose select other, to make another
slot with diameter 8mm
7. Use the center rectangle tool to make a rectangle with center the of the top circle of the larger slot and that is as
wide as the pin on the slider. Then make the bottom edge of that rectangle incident the center of the slider pin.
8. Extrude the crank minus the cutouts 4mm toward the disk.
9. Rename the part crank.

## Chamfer some parts.

1. Chamfer the edge of the disk 1mm (equal distance)
2. Chamfer the top of the base plate 4mm
3. Chamfer the edges of the stand bar 4mm
4. Chamfer the 8 edges around the where the stand bar and the base plate meet

## Assemble the pieces and mate them.

1. Go to the assembly tab, and insert the entire parts studio.
2. Pull apart the various parts.
3. Right-click on the base and fix it in position
4. Make a revolute mate between the center of the disk and its pin.
5. Make a revolute mate between the pin hole for the crank and its pin
6. Then make a slider mate connector between the back bottom edge of the slider. Make sure that the blue axis goes 
along the sliding edge. Then make connect to the slide track in the appropriate location and make sure the blue is pointing
parallel to the desired action.
7. Move the slider in place and create a tangent mate between the outer face of the pin and the inner face of the crank.
8. Make a similar tangent mate for the crank on the disk and the slot of the crank.

**Turn the wheel and see the slider move. See how the slider moves fast one way and slowly the other.**
