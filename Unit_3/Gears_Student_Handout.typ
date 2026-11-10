// command: render
// Keep the assets/ directory beside this .typ file.
#set page(paper: "us-letter", margin: (x: 0.7in, y: 0.66in), numbering: "1")
#set text(font: "Libertinus Sans", size: 10.5pt)
#set par(leading: 0.6em)
#set heading(numbering: none)
#show heading.where(level: 1): set text(size: 14pt, weight: "bold", fill: rgb("205477"))
#show heading.where(level: 2): set text(size: 11.5pt, weight: "bold")
#let blue = rgb("205477")
#let note(body) = block(fill: rgb("eef5f9"), inset: 9pt, radius: 5pt, width: 100%)[#body]
#let blank(w: 1.3in) = box(width: w, height: 0.55pt, stroke: (bottom: 0.7pt + gray))

#align(center)[
  #text(size: 19pt, weight: "bold", fill: blue)[Understanding Gears]
  #text(size: 11pt)[A visual guide to gear geometry, motion, and Onshape]
]
#v(0.12in)
*Name:* #blank(2.4in) #h(0.32in) *Date:* #blank(1.3in)
#v(0.15in)

*Our goal:* Design two gears in Onshape that can physically mesh, then model how they rotate in an assembly.

= 1. What do gears do?

*Gears* are toothed wheels that transmit rotary motion and torque. Two _external spur gears_ rotate in *opposite directions* when their teeth mesh. Changing the number of teeth changes the ratio of their rotational speeds.

#figure(
  image("assets/gear_pair.svg", width: 91%),
  caption: [Two meshing spur gears. Dashed circles are *pitch circles*, not the outer edges of the teeth.],
)

*Key vocabulary*

- *Tooth count* ($N$): The number of teeth around a gear.
- *Pitch circle:* An imaginary circle that describes a gear's effective rolling motion.
- *Pitch diameter* ($d$): The diameter of that pitch circle, measured in millimeters.
- *Driver / input gear:* The gear whose rotation is supplied by a motor or another mechanism.
- *Driven / output gear:* The gear that receives motion from the driver.

#note[*Notice:* Tooth tips extend beyond the pitch circle. Do not use outside diameter when calculating the nominal distance between gear shafts.]

= 2. Module: the size of a tooth

The *module* ($m$) describes the size of gear teeth in a metric gear system:

$ m = d / N quad "so" quad d = m N $

Here $d$ is in millimeters, $N$ is a count, and module is expressed in millimeters. For example, a gear with 20 teeth and module 2 has a pitch diameter of $2 times 20 = 40$ mm.

#figure(
  image("assets/module_comparison.svg", width: 96%),
  caption: [Illustrative comparison of three 20-tooth gears. Increasing the module makes the teeth and pitch diameter larger.],
)

*Important:* Standard spur gears should have the *same module* to mesh properly. A module-2 gear generally will not mesh correctly with a module-3 gear.

#pagebreak()

= 3. Pressure angle: the direction of the push

The *pressure angle* ($phi$) describes how the contact force between gear teeth is directed. It is measured between the *line of action* (direction of the force between teeth) and the *tangent to the pitch circles* at their contact point.

#figure(
  image("assets/pressure_angle.svg", width: 96%),
  caption: [At the pitch point, a 20° pressure angle means the tooth-contact force is tilted 20° away from the common tangent. This is a conceptual force diagram, not a tooth-profile drawing.],
)

A *20° pressure angle* is a common standard for involute spur gears. A larger pressure angle generally produces a greater force pushing the shafts apart, but can also give the teeth thicker bases.

*Why does this matter?* Your printed frame must hold the gear shafts in place against forces that try to separate them.

*Compatibility checklist:* To create an ordinary matching spur-gear pair, use the same *module* and *pressure angle* for both gears. The gears may have different tooth counts.

= 4. The center distance between two gears

For two standard external spur gears with no profile shift, the nominal center distance is half the sum of their pitch diameters:

$ C = (d_1 + d_2) / 2 = (m (N_1 + N_2)) / 2 $

*Our classroom gear pair:*

#table(
  columns: (1.6fr, 1fr, 1fr),
  inset: 6pt,
  stroke: 0.5pt + rgb("c5d1d9"),
  table.header([*Parameter*], [*Input gear*], [*Output gear*]),
  [Teeth ($N$)], [20], [40],
  [Module ($m$)], [2 mm], [2 mm],
  [Pressure angle], [20°], [20°],
  [Pitch diameter ($d$)], [40 mm], [80 mm],
)

$ C = (40 + 80) / 2 = 60 " mm" $

That means the centers of our shafts should be *60 mm apart* in Onshape.

= 5. Gear ratios: speed and torque

For a simple pair of external gears:

$ "Output rotations" = "Input rotations" times N_"input" / N_"output" $

Our 20-tooth driver and 40-tooth driven gear give *one-half* as much output rotation (in the opposite direction). In the ideal case, the output torque is *twice* the input torque. Real gears lose some energy to friction and deformation.

*Torque* is the turning effect of a force about an axis. Its SI unit is the newton-meter (N·m). Increasing output torque generally requires decreasing output speed.

#note[*Onshape connection:* A *Revolute mate* allows a part to spin about an axis. A *Gear Relation* links two revolute motions at a chosen ratio. This models their coordinated rotation but does *not* automatically calculate the motor torque or test physical tooth contact.]

#pagebreak()

= 6. Onshape setup checklist

Use these starting specifications for your two gears:

- *Gear A:* 20 teeth, module 2, pressure angle 20°, thickness 6 mm.
- *Gear B:* 40 teeth, module 2, pressure angle 20°, thickness 6 mm.
- *Bores:* Use 5 mm nominal diameter initially; printed hole fit must be tested.
- *Frame:* Two shaft locations 60 mm apart.

#table(
  columns: (0.4in, 1fr),
  inset: 6pt,
  stroke: none,
  [☐], [Generate both spur gears using the Onshape custom feature.],
  [☐], [Create a plate or bracket with the correct shaft spacing.],
  [☐], [Insert the gears and frame into an Assembly and fix the frame.],
  [☐], [Add one Revolute mate for each gear.],
  [☐], [Connect the revolute motions with a Gear Relation.],
  [☐], [Animate the input through 360° and inspect the output.],
)

= 7. Check your understanding

*1.* A 30-tooth gear has module 2 mm. What is its pitch diameter?

#v(0.33in)

*2.* Two module-2 gears have 15 and 35 teeth. What is their nominal center distance?

#v(0.42in)

*3.* A 20-tooth driver turns 180° and drives a 40-tooth gear. How many degrees does the output turn, and in what direction?

#v(0.42in)

*4.* Why won't two gears with different modules usually mesh properly?

#v(0.46in)

*5.* What does the 20° pressure angle tell us about the force between teeth? Why might that affect the frame design?

#v(0.55in)

*6.* Suppose you have a servo that moves 180°. What tooth-count ratio would make the output move 60°? Give one pair of tooth counts.

#v(0.52in)

#note[*Design question:* When we eventually drive these gears using an Arduino and a servo, which part of your design will determine how much torque the output mechanism needs?]
