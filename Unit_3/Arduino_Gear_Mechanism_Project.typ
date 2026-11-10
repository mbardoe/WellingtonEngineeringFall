// command: render
// Engineering CAD & Design — student project description and assessment rubric
// Keep the assets/ folder beside this .typ file when rendering.
// Images are concept illustrations, not detailed construction drawings.

#set page(paper: "us-letter", margin: (x: 0.72in, y: 0.66in), numbering: "1")
#set text(font: "Arial", size: 10.2pt)
#set par(leading: 0.64em)
#set heading(numbering: none)
#show heading.where(level: 1): set text(size: 14pt, weight: "bold", fill: rgb("205477"))
#show heading.where(level: 2): set text(size: 11.5pt, weight: "bold", fill: rgb("205477"))

#let blue = rgb("205477")
#let light = rgb("eef5f9")
#let rule = rgb("cad6dd")
#let callout(body) = block(width: 100%, fill: light, radius: 5pt, inset: 10pt)[#body]
#let blank(w: 1.5in) = box(width: w, height: 0.65pt, stroke: (bottom: 0.7pt + rgb("7c8b93")))
#let smallhead(body) = text(fill: blue, size: 10.5pt, weight: "bold")[#body]
#let scorebox = box(width: 0.45in, height: 0.23in, stroke: 0.8pt + rgb("7c8b93"))
#let tableblank(w: 1.5in) = box(
  width: w,
  height: 0.26in,
  stroke: (bottom: 0.7pt + rgb("7c8b93"))
)
#align(center)[
  #text(size: 19pt, weight: "bold", fill: blue)[Gear-Driven Mechanism Challenge]
  #text(size: 11pt)[Engineering CAD & Design — Partner Project]
]
#v(0.11in)
*Partner 1:* #blank(w: 2.2in) #h(0.25in) *Partner 2:* #blank(w: 2.0in)
#v(0.12in)

#callout[
  *The challenge:* Working with a partner, design, 3D print, assemble, and program a working device in which a *potentiometer controls a servo motor* and the servo transfers motion through *at least two meshing gears*. Your mechanism should perform a useful, recognizable, or entertaining action. You will create the parts in Onshape, model their motion in an assembly, and demonstrate a working physical device.
]

= Required features

Every team must build a mechanism that includes *all* of the following:

1. *Arduino* that reads the potentiometer and sends a control signal to the servo.
2. *Potentiometer* that lets a person move the mechanism forward and backward by turning a knob.
3. *Servo motor* that supplies the input motion to the mechanism.
4. *At least two working, 3D-printed gears* that physically mesh. The servo must drive one gear, which drives another and changes or transfers the output motion; decorative gears do not count.
5. *Designed and printed structure* that securely supports the gears, servo, shafts, and other moving components (no hand-held supports during the demonstration).
6. *Appropriate regulated power source and wiring* for the Arduino and servo, with accessible connections and a common ground where separate supplies are used.
7. *Onshape assembly* demonstrating the intended motion, including relevant mates and Gear Relations.

= Your mission

Create a device whose *output motion is noticeably different from the motion of the servo*. Your gears might increase torque, reduce or increase output angle, reverse rotation, or redirect motion onto another axis. You should be able to explain *why gears are necessary* in your design.

#image("assets/control_path.svg", width: 100%)

*Design freedom:* You choose the mechanism, gear type, tooth counts, gear ratio, appearance, and arrangement of components. The engineering decisions must be supported by calculations and testing.

#pagebreak()

= Ideas for your design

These eight illustrated concepts are offered to spark ideas. *They are not step-by-step construction plans*, and you are welcome to propose your own device if it meets the requirements. All designs must use at least two meshing gears.

#let idea(img, name, how, challenge) = block(
  width: 100%,
  fill: rgb("f3f7fa"),
  stroke: 0.6pt + rgb("cad6dd"),
  radius: 5pt,
  inset: 7pt,
)[
  #grid(
    columns: (1.14in, 1fr),
    gutter: 9pt,
    image(img, width: 1.14in, height: 0.97in, fit: "contain"),
    [
      #text(weight: "bold", size: 10.4pt, fill: rgb("205477"))[#name]
      #v(2pt)
      #text(size: 9pt)[#how]
      #v(3pt)
      #text(size: 8.4pt, fill: rgb("4b5f6d"))[*Design challenge:* #challenge]
    ],
  )
]

#grid(
  columns: (1fr, 1fr),
  column-gutter: 9pt,
  row-gutter: 9pt,
  idea("assets/example_1.png", "Robotic grabber", "Two spur gears open and close gripping arms.", "Synchronize the fingers."),
  idea("assets/example_2.png", "Rotating radar dish", "Bevel gears redirect rotation onto a vertical shaft.", "Align perpendicular shafts."),
  idea("assets/example_3.png", "Motorized drawbridge", "A small gear drives a larger gear attached to a hinge.", "Provide adequate lifting torque."),
  idea("assets/example_4.png", "Mechanical iris", "A pinion drives a geared ring that moves several blades.", "Avoid collisions and binding."),
  idea("assets/example_5.png", "Miniature forklift", "A gear train turns a drum that lifts a platform.", "Guide the platform vertically."),
  idea("assets/example_6.png", "Animated eyes", "Two gears coordinate the motion of two eyes.", "Make opposite rotations look coordinated."),
  idea("assets/example_7.png", "Articulating crane arm", "Gears lift and lower a pivoting boom.", "Balance weight and torque."),
  idea("assets/example_8.png", "Tilting display platform", "Meshing gears adjust the angle of a platform.", "Support the platform without wobble."),
)

#v(0.12in)
#callout[
  *A strong project is not necessarily a complicated one.* A simpler mechanism that works smoothly, includes thoughtful calculations, and improves through testing can be more successful than an ambitious mechanism that never functions reliably.
]

#pagebreak()

= Engineering requirements and planning

== Gear design

Use matching tooth geometry in each meshing pair. For an ordinary involute spur-gear pair, both gears should have the *same module* and *pressure angle*. A useful starting point is module 2 mm with a 20° pressure angle. Students may choose other values if they can justify the choice.

For standard external spur gears without profile shift:

$ d = m N quad C = (d_1 + d_2) / 2 = m (N_1 + N_2) / 2 $

For an input gear driving an output gear (using magnitudes):

$ theta_("out") = theta_("in") (N_("in") / N_("out")) $

For two external spur gears, the output rotates in the *opposite* direction. A larger output gear reduces output angle and speed but increases ideal output torque.

The gears should remain engaged throughout the intended motion. Account for print tolerances, shafts, axial clearance, and the servo's limited angle of travel. A Gear Relation in Onshape models motion, *not* physical tooth contact or friction.

== Initial proposal — complete before detailed CAD work

#table(
  columns: (1.45fr, 2.55fr),
  inset: (x: 7pt, y: 8pt),
  stroke: 0.5pt + rule,
  [*Our device will...*], [#tableblank(w: 3.75in)],
  [*How gears change motion*], [#tableblank(w: 3.75in)],
  [*Input / output teeth*], [#tableblank(w: 1.0in) / #blank(w: 1.0in)],
  [*Module / pressure angle*], [#tableblank(w: 1.0in) / #blank(w: 1.0in)],
  [*Predicted output range*], [#tableblank(w: 2.3in)],
  [*Main design challenge*], [#tableblank(w: 3.75in)],
)

*Proposal sketch:* On a separate page or in your design notebook, draw the device and label the *servo*, *input gear*, *output gear*, *shafts*, *mounting structure*, *moving output*, *Arduino*, *potentiometer*, and *power source*. Show which parts are fixed and which move.

== Plan for torque and load

Explain what the driven part must move or lift. If gravity acts on a hinged load, Onshape's assigned-material mass properties and center-of-mass position can help estimate a worst-case gravitational torque:

$ tau_("load") = m g L $

Here $L$ is the *horizontal* distance from the pivot to the center of mass at the position being checked. A gear reduction can increase available output torque, but losses and friction reduce the ideal result. Compare the estimated demand to the servo's usable torque with a reasonable safety margin. Do not assume that the advertised stall torque is an appropriate continuous operating torque.

== Partner responsibilities

*Both students must actively participate* in CAD, electronics/programming, assembly, and testing. You may divide tasks for efficiency, but neither person should be exclusively the CAD designer or exclusively the programmer. Each partner should be able to explain the full mechanism and demonstrate the Arduino control.

#callout[
  *Check-in with your teacher:* Show a concept sketch, planned gear pair and ratio, expected range of motion, support/shaft approach, and preliminary power plan *before* beginning a full set of prints.
]

#pagebreak()

= Project workflow and checkpoints

#table(
  columns: (0.83fr, 2.23fr, 1.34fr),
  inset: (x: 7pt, y: 7pt),
  stroke: 0.5pt + rule,

  table.header(
    [*Phase*],
    [*What your pair does*],
    [*Evidence to show*],
  ),

  [*1. Propose*],
  [Sketch and explain the intended motion; choose gear type, tooth counts, ratios, and basic layout.],
  [Labeled sketch and calculations],

  [*2. Model*],
  [Build or generate printable gears, supports, and moving parts in Onshape.],
  [Editable Part Studios],

  [*3. Assemble*],
  [Use mates and Gear Relations to demonstrate the intended motion and check alignment.],
  [Working Onshape assembly],

  [*4. Fabricate*],
  [Print parts, assemble shafts/gears/mounts, and verify that the mechanism moves by hand.],
  [Physical gear mechanism],

  [*5. Control*],
  [Wire Arduino, potentiometer, and servo; program potentiometer-to-position control.],
  [Working powered device],

  [*6. Improve*],
  [Test the mechanism, document at least one issue or limitation, make and evaluate a revision.],
  [Test notes and before/after evidence],
)
= Electronics and reliability expectations

- Turning the potentiometer should control the *position* of the output mechanism predictably; reversing the knob direction should reverse the movement.
- Choose a supply with the correct voltage and enough current for your *specific* servo. Do not assume the Arduino's 5 V pin can supply a loaded servo. If the servo uses a separate regulated supply, connect its ground to Arduino ground so the signal has a common reference.
- Protect moving gears from fingers and loose wires. Secure the servo and other components; do not hold them in place during demonstrations.
- Prevent the servo from being commanded beyond the mechanism's safe motion range. Use code limits and appropriate physical clearances.
- Show that the device can operate repeatedly without the gears separating, jumping teeth, or jamming.

= Final submission

*As a team, submit:*

1. *Onshape link* with clearly named Part Studios and an Assembly whose mates and Gear Relations demonstrate the mechanism.
2. *Design evidence* including a labeled concept sketch, tooth counts, gear ratio, center-distance calculation when applicable, and an explanation of how gears serve the device.
3. *Arduino program* with comments identifying the potentiometer input, servo output, and the mapping or limits used to control motion.
4. *Testing and iteration record* showing at least one measured observation or failure, the improvement attempted, and the result.
5. *Working demonstration* of the assembled device, including a clear explanation of the gear train and control system.

*Individually, each partner submits a short reflection* (about one paragraph): What did you contribute? What did you learn? Which design decision would you change if you had more time?

= Readiness checklist

#grid(
  columns: (1fr, 1fr),
  column-gutter: 0.18in,
  row-gutter: 5pt,
  [□ Gears physically mesh and move],
  [□ Servo drives the gear system],
  [□ Potentiometer controls position],
  [□ Supports hold shafts in place],
  [□ Onshape assembly moves correctly],
  [□ Electronics safely secured],
  [□ Gear calculations are recorded],
  [□ Revision/testing is documented],
)

#pagebreak()

= Assessment rubric — 100 points

Each category is scored independently. The descriptions describe four levels of performance; the listed point values are anchors, and the teacher may award intermediate scores where appropriate. *Meets expectations* describes successful completion of the assignment, not merely participation.

#table(
  columns: (1.05fr, 1.9fr, 1.9fr, 1.9fr),
  inset: (x: 6pt, y: 6pt),
  stroke: 0.5pt + rule,
  table.header([*Criterion*], [*Exceeds expectations*], [*Meets expectations*], [*Developing / incomplete*]),
  [*1. Planning and calculations* \\ *15 points*],
  [*15* — Detailed, feasible concept; accurate gear and motion calculations; thoughtful load/torque reasoning.],
  [*12* — Clear design proposal, sketch, gear specifications, and mostly accurate calculations.],
  [*9* — Some unclear or incorrect choices; *0–6* — major planning or calculation evidence missing.],
  [*2. Onshape CAD and assembly* \\ *25 points*],
  [*25* — Accurate, organized models and realistic mounting; complete mates/relations; strong attention to constraints and motion.],
  [*21* — Editable gear and support models; functioning assembly with suitable mates and Gear Relations.],
  [*16* — Models or mates partly functional; *0–12* — incomplete or nonfunctional CAD/assembly.],
  [*3. Physical mechanical function* \\ *20 points*],
  [*20* — Smooth, repeatable operation; good alignment, fits, and rigidity; gears transfer motion reliably.],
  [*17* — Two printed gears mesh, transfer motion, and are supported in a working device.],
  [*13* — Inconsistent meshing or unreliable motion; *0–10* — gears fail to drive the intended output.],
)

#v(0.15in)
*Subtotal (planning + CAD + mechanism):* #scorebox * / 60*

#callout[
  *What matters most:* This is a mechanical-design project. A beautifully decorated enclosure cannot substitute for correctly designed and functioning gears, and a successful Arduino program cannot substitute for a complete Onshape assembly.
]

#pagebreak()

= Assessment rubric — continued

#table(
  columns: (1.05fr, 1.9fr, 1.9fr, 1.9fr),
  inset: (x: 6pt, y: 6pt),
  stroke: 0.5pt + rule,
  table.header([*Criterion*], [*Exceeds expectations*], [*Meets expectations*], [*Developing / incomplete*]),
  [*4. Electronics and control* \\ *15 points*],
  [*15* — Safe, secure wiring; intuitive, smooth and reliable potentiometer control; suitable movement limits.],
  [*12* — Arduino reads the potentiometer, moves the servo, and drives the intended mechanism safely.],
  [*9* — Control works inconsistently or integration is weak; *0–6* — major wiring or code elements missing.],
  [*5. Testing, revision, and explanation* \\ *15 points*],
  [*15* — Specific test evidence, well-reasoned improvement, clear before/after results, thorough technical explanation.],
  [*12* — Documents a problem, implements or tests an improvement, and explains key design decisions.],
  [*9* — Limited testing or explanation; *0–6* — little evidence of revision or design reasoning.],
  [*6. Collaboration and individual contribution* \\ *10 points*],
  [*10* — Both partners demonstrate broad engagement, shared decisions, reliable teamwork, and thoughtful reflections.],
  [*8* — Both partners contribute meaningfully and can explain the CAD, mechanism, and control.],
  [*6* — Uneven contributions or incomplete reflections; *0–4* — little evidence of collaboration.],
)

#v(0.14in)
*Subtotal (electronics + iteration + teamwork):* #scorebox * / 40*

#v(0.17in)
#callout[
  *Total score:* #scorebox / 100
]

== Comments and next steps

*One design strength:* #blank(w: 5.1in)
#v(0.16in)
*One improvement to pursue:* #blank(w: 4.6in)
#v(0.20in)

== Final design discussion

Be prepared to answer these questions when you demonstrate your device:

- Why did you choose these gear sizes? What does the gear ratio accomplish?
- How is the servo's motion different from the mechanism's output motion?
- What was the hardest part to design or fabricate, and how did you address it?
- If you redesigned this device, what would you change first?
