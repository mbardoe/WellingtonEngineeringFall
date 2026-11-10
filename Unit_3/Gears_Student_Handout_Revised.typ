// command: render
// Keep the assets/ directory beside this .typ file.
#set page(paper: "us-letter", margin: (x: 0.7in, y: 0.66in), numbering: "1")
#set text(font: "Arial", size: 10.5pt)
#set par(leading: 0.6em)
#set heading(numbering: none)
#show heading.where(level: 1): set text(size: 14pt, weight: "bold", fill: rgb("205477"))
#show heading.where(level: 2): set text(size: 11.5pt, weight: "bold")
#let blue = rgb("205477")
#let note(body) = block(fill: rgb("eef5f9"), inset: 9pt, radius: 5pt, width: 100%)[#body]
#let blank(w: 1.3in) = box(width: w, height: 0.55pt, stroke: (bottom: 0.7pt + gray))

#align(center)[
  #text(size: 19pt, weight: "bold", fill: blue)[Understanding and Building Gears] \
  #text(size: 11pt)[Two 70-minute classes · Gear geometry, assemblies, and torque]
]
#v(0.12in)
*Name:* #blank(w: 2.4in) #h(0.32in) *Date:* #blank(w: 1.3in)
#v(0.15in)

*Our goal:* Design two gears in Onshape that can physically mesh, then model their motion in an Assembly and explore how gears change speed and torque.

*Day 1:* Geometry, modeling, and assembly. #h(0.3in) *Day 2:* Testing, torque, and a design challenge.

= 1. What do gears do?

*Gears* are toothed wheels that transmit rotary motion and torque. Two _external spur gears_ rotate in *opposite directions* when their teeth mesh. Changing the number of teeth changes the ratio of their rotational speeds.

#figure(
  image("img/gear_pair.svg", width: 91%),
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
  image("img/module_comparison.svg", width: 96%),
  caption: [Illustrative comparison of three 20-tooth gears. Increasing the module makes the teeth and pitch diameter larger.],
)

*Important:* Standard spur gears should have the *same module* to mesh properly. A module-2 gear generally will not mesh correctly with a module-3 gear.

#pagebreak()

= 3. Pressure angle: the direction of the push

The *pressure angle* ($phi$) describes how the contact force between gear teeth is directed. It is measured between the *line of action* (direction of the force between teeth) and the *tangent to the pitch circles* at their contact point.

#figure(
  image("img/pressure_angle.svg", width: 96%),
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

= Day 1 — Build the gear parts

*Today's goal:* Use what you learned about pitch circles, module, and pressure angle to make a matched pair of spur gears and a support plate. *Class time:* 70 minutes.

#note[*Before opening Onshape (0–20 min):* With a partner, explain why the 20- and 40-tooth gears should have the same module and pressure angle. Use the table on the previous page to predict their center distance and their relative motion.]

== A. Predict the movement (5 min)

Imagine the *20-tooth input* gear makes one full turn clockwise.

- The 40-tooth output gear will turn (circle one): *180° / 360° / 720°*.
- The output direction will be (circle one): *clockwise / counterclockwise*.
- Explain why: #blank(w: 4.0in)

== B. Create the two gears in Onshape (20 min)

1. Create a document named *Gear Mechanisms — Your Name*.
2. Open a *Part Studio*. Locate the *Add custom features* (+) button in the toolbar and add the *Spur Gear* feature supplied by your teacher. The exact controls may vary by version.
3. Generate *Gear A* using 20 teeth, module 2 mm, 20° pressure angle, and 6 mm thickness.
4. Generate *Gear B* using 40 teeth, module 2 mm, 20° pressure angle, and 6 mm thickness.
5. Add a *5 mm nominal bore* to both gears if your feature does not add it automatically. This dimension is for our digital model; actual shaft fit requires a print test.
6. Rename the parts *Gear A — 20T* and *Gear B — 40T*. Give them contrasting appearances so you can distinguish them in the Assembly.

#note[*FeatureScript reminder:* Use a real involute gear generator. Do not create approximate triangular teeth by hand. If the feature asks for gear-center points, sketch those points first and select them in the feature dialog.]

== C. Check your geometry (5 min)

Complete the calculations and check them against the model:

#table(
  columns: (1.65fr, 1fr, 1fr),
  inset: 5pt, stroke: 0.5pt + rgb("c5d1d9"),
  table.header([*Quantity*],[*Gear A*],[*Gear B*]),
  [Number of teeth], [20], [40],
  [Module], [2 mm], [2 mm],
  [Pitch diameter $d=m N$], [#blank(w: 0.75in)], [#blank(w: 0.75in)],
  [Approx. outer diameter $m(N+2)$], [#blank(w: 0.75in)], [#blank(w: 0.75in)],
)

*Nominal shaft spacing:* $C=(d_1+d_2)/2=$ #blank(w: 1.0in)

== D. Model a stationary frame (10 min)

1. Create a *new Part Studio* and name it *Gear Frame*.
2. Sketch a rectangular plate approximately *145 mm × 105 mm* on the Top plane.
3. Draw *two shaft-center circles* on a horizontal line. Constrain their center-to-center distance to the value you calculated above.
4. Position the pair so that neither gear would overhang the plate. For a 40T, module-2 gear, remember that its outer diameter is about 84 mm.
5. Extrude the plate *4 mm*. Cut shaft openings or add short shaft supports as directed by your teacher.

*Design note:* The frame must keep the gear axes parallel and their centers a fixed distance apart. A moving frame would invalidate the gear alignment.

#pagebreak()

= Day 1 — Create and test the Assembly

== E. Bring parts into an Assembly (15 min)

1. Create an *Assembly* tab. Use *Insert* to bring in *Gear Frame*, *Gear A*, and *Gear B*.
2. Right-click *Gear Frame* and choose *Fix*. It must remain stationary.
3. Apply a *Revolute mate* between Gear A's central bore and the corresponding shaft location on the frame. Check that its axis is perpendicular to the plate.
4. Repeat for Gear B. Each gear should have *one rotational degree of freedom* and no unintended translation.
5. Add a *Gear Relation* between the two Revolute mates. Select the *input* mate first and the *output* mate second. Use a ratio of *0.5* ($20/40$). Set the direction so that the two external gears counter-rotate.
6. Rotate Gear A by dragging it. Does Gear B rotate in the opposite direction? Do both gears stay centered on their shafts?
7. Right-click Gear A's Revolute mate in the Mate Features list and choose *Animate*. Set 0° to 360° and play the animation. Gear B should rotate *180° in the opposite direction*.

#note[*Critical distinction:* A *Gear Relation* enforces the ratio of two rotations. It does not check whether the tooth shapes actually touch correctly, provide backlash, or calculate motor torque. Printed gears still require physical testing.]

== F. Troubleshooting and verification (5 min)

#table(
  columns: (1.3fr, 2.2fr), inset: 5pt, stroke: 0.5pt + rgb("c5d1d9"),
  table.header([*Symptom*], [*What to check*]),
  [Gear floats or slides], [Recheck its Revolute mate and mate connectors.],
  [Gears rotate together], [Check the *Reverse* option and the mates' axis directions.],
  [Incorrect output angle], [Check tooth counts, mate selection order, and the 0.5 ratio.],
  [Teeth visibly overlap], [Check 60 mm center spacing, tooth phase, and the gear generator settings.],
)

== G. Explain your result (5 min)

*Observed input rotation:* #blank(w: 0.8in) ° #h(0.2in) *Observed output rotation:* #blank(w: 0.8in) °

*Why does Gear B rotate less than Gear A?*

#v(0.44in)

*What prevents us from concluding that these gears will definitely work after printing?*

#v(0.45in)

#note[*Day 1 checkpoint:* Your Onshape document should contain two modeled gears, a frame, and an Assembly with two Revolute mates and one Gear Relation. Be prepared to demonstrate a complete input turn.]

#pagebreak()

= Day 2 — Speed, torque, and load

*Today's goal:* Verify your gear motion, estimate how gearing changes torque, and design a new gear arrangement for a specified result. *Class time:* 70 minutes.

== A. Reopen, review, and troubleshoot (10 min)

Show a partner your animated assembly. Does the input gear turn 360° while the output turns 180° in the opposite direction? If not, revisit the checklist on the preceding page.

== B. Gear ratios as engineering decisions (15 min)

For ideal gears, without friction or deformation:

$ "Output angle" = "Input angle" times N_"input" / N_"output" $

$ tau_"output" = tau_"input" times N_"output" / N_"input" $

Here $tau$ represents torque. Gearing that *slows the output* can *increase output torque*; gearing that speeds it up decreases torque. Actual output torque is lower because of losses.

*Investigation:* Assume the input has 0.20 N·m of torque and rotates through 180°. Complete the table.

#table(
  columns: (0.85fr, 0.85fr, 1.1fr, 1.1fr),
  inset: 6pt, stroke: 0.5pt + rgb("c5d1d9"),
  table.header([*Input teeth*], [*Output teeth*], [*Output angle*], [*Ideal output torque*]),
  [20], [40], [#blank(w: 0.8in)], [#blank(w: 0.8in)],
  [40], [20], [#blank(w: 0.8in)], [#blank(w: 0.8in)],
  [20], [60], [#blank(w: 0.8in)], [#blank(w: 0.8in)],
  [30], [30], [#blank(w: 0.8in)], [#blank(w: 0.8in)],
)

*Discussion:* A servo can turn through 180°, but you want a platform to turn only 60°. Which ratio would you choose? Why?

#v(0.36in)

== C. What does Onshape tell us about torque? (10 min)

Onshape provides *mass*, *center of mass*, *volume*, and *moment of inertia* using its *Mass properties* tool. It does *not* calculate the motor torque needed to animate a gear train directly from a Gear Relation.

*Example:* A small drawbridge has mass 0.15 kg, and the horizontal distance from its hinge to its center of mass is 0.10 m. When horizontal, the torque due to gravity is

$ tau = m g L = 0.15 times 9.81 times 0.10 approx 0.147 " N m" $

With an ideal 2:1 gear reduction, the servo would need half this torque just to hold the bridge horizontal: about 0.074 N·m. With 80% estimated drive efficiency, the required input torque becomes about 0.092 N·m. A real design also needs a safety margin for motion, friction, and shocks.

*In Onshape:* Assign a material to a modeled load, open *Mass properties* from the bottom-right toolbar, and locate the reported mass and center of mass. Then measure the perpendicular lever arm about the pivot axis.

*Concept check:* Why does the required torque change as a drawbridge rises toward vertical?

#v(0.34in)

#pagebreak()

= Day 2 — Gear mechanism design challenge

== D. Choose one modification (25 min)

Extend your original Onshape document. Keep the gears realistic and the axes of the frame correctly positioned. You may create a second Assembly or use a copied version of your first Assembly.

#table(
  columns: (1.1fr, 2.4fr), inset: 7pt, stroke: 0.5pt + rgb("c5d1d9"),
  table.header([*Challenge*], [*Your objective*]),
  [*A. Same-direction output*], [Add a third gear between the original input and output gears. Arrange it so the first and last gears rotate in the *same* direction. Calculate both shaft spacings and create both Gear Relations.],
  [*B. Servo range reduction*], [Design a gear pair so a 180° input produces *60° output rotation*. Choose compatible tooth counts and the correct center spacing. Animate the input and verify the result.],
  [*C. Turn a corner*], [Use compatible *bevel gears* to redirect rotation between perpendicular shafts. Create the required shaft supports and model the linked rotation. This is the advanced option.],
)

*Challenge chosen:* #blank(w: 2.6in)

*Planned tooth counts / gearing:* #blank(w: 2.35in)

*Module:* #blank(w: 0.75in) #h(0.2in) *Pressure angle:* #blank(w: 0.75in)

*Calculated center spacing or shaft geometry:*

#v(0.55in)

*Predicted motion for 180° input:*

#v(0.55in)

*What will you build or change in the Part Studio?*

#v(0.55in)

*What mate(s) and relation(s) must change in the Assembly?*

#v(0.5in)

== E. Share and reflect (10 min)

Demonstrate your modification to a classmate. Have your partner verify the goal and explain the motion in their own words.

*Partner's observation:* #blank(w: 3.3in)

*One improvement I would make before 3D printing:*

#v(0.5in)

#note[*Looking ahead:* Your upcoming Arduino mechanism will use a potentiometer to control a servo. The servo will drive at least two actual meshing gears. Consider how you will mount the servo horn, support the output shaft, and keep the moving parts aligned.]

#pagebreak()

= Review, submission, and vocabulary reference

== F. Check your understanding

*1.* A 30-tooth gear has module 2 mm. What is its pitch diameter?

#v(0.35in)

*2.* Two module-2 gears have 15 and 35 teeth. What is their nominal center distance?

#v(0.4in)

*3.* A 20-tooth driver turns 180° and drives a 40-tooth gear. How many degrees does the output turn, and in what direction?

#v(0.4in)

*4.* Why won't two gears with different modules usually mesh properly?

#v(0.42in)

*5.* What does the 20° pressure angle tell us about the force between teeth? Why might that affect the frame design?

#v(0.48in)

*6.* Suppose you have a servo that moves 180°. What tooth-count ratio would make the output move 60°? Give one pair of tooth counts.

#v(0.45in)

== Final Onshape submission checklist

- ☐ Two correctly generated module-2, 20°-pressure-angle spur gears.
- ☐ A rigid plate or frame with correctly calculated shaft spacing.
- ☐ An Assembly with a fixed frame and properly constrained Revolute mates.
- ☐ A Gear Relation that produces the predicted direction and rotation ratio.
- ☐ An animated mechanism that can be demonstrated to the teacher.
- ☐ A completed independent Day 2 design modification.
- ☐ Calculations and written responses on this handout.

== Essential terms

*Module:* Metric gear-tooth size $m=d/N$. #h(0.15in) *Pitch diameter:* Diameter of the effective rolling circle. \
*Pressure angle:* Angle between the tooth-force line and the pitch-circle tangent. \
*Center distance:* Distance between the rotational axes of two gears. \
*Gear ratio:* Tooth-count ratio that controls relative angular speeds. \
*Torque:* Turning effect of a force about an axis. \
*Revolute mate:* Permits rotation about one fixed axis in an Onshape Assembly. \
*Gear Relation:* Links two rotations at a set ratio; it is not tooth-contact simulation.

#v(0.12in)
#text(size: 9pt, fill: gray)[Onshape reference: #link("https://cad.onshape.com/help/Content/Assembly/gear_relation.htm")[Gear Relation] · #link("https://cad.onshape.com/help/Content/Assembly/revolute_mate.htm")[Revolute Mate] · #link("https://cad.onshape.com/help/Content/View/mass_properties_tool.htm")[Mass Properties]]
