// command: render
// Engineering Design: CAD and Fabrication
// Day 4 Lesson Plan
// 2026-2027

#set page(
  paper: "us-letter",
  margin: (x: 0.65in, y: 0.6in),
)

#set text(font: "Arial", size: 10.5pt)
#set par(leading: 0.65em)

#let navy = rgb("#17365D")
#let light = rgb("#EAF1F8")
#let pale = rgb("#F7F7F7")
#let rule = rgb("#BBBBBB")

#let section(title) = [
  #v(0.4em)
  #block(
    width: 100%,
    fill: light,
    inset: (x: 0.45em, y: 0.3em),
    radius: 3pt,
  )[
    #text(weight: "bold", fill: navy, size: 12pt)[#title]
  ]
  #v(0.2em)
]

#align(center)[
  #text(size: 19pt, weight: "bold", fill: navy)[Engineering Design: CAD and Fabrication]
  #v(0.1em)
  #text(size: 15pt, weight: "bold")[Day 4 Lesson Plan — Building Parts from Features]
]

#v(0.45em)

#grid(
  columns: (1fr, 1fr),
  gutter: 1em,
  [*Class length:* 70 minutes],
  [*Core tools:* Remove, Fillet, Chamfer, Hole, Linear Pattern],
)

#section("Lesson Purpose")

Students will build a small electronics mounting plate while learning how Onshape models are created as a sequence of features. Each new tool should be introduced as a solution to a design need rather than as an isolated command.

#align(center)[
  #text(size: 13pt, weight: "bold", fill: navy)[
    A CAD model is a recipe of design decisions.
  ]
]

The guided part is an *80 mm × 40 mm × 6 mm electronics mounting plate* with a cable opening, rounded corners, a chamfered opening, and a repeated row of mounting holes.

#section("Learning Goals")

By the end of class, students should be able to:

- use *Extrude Remove* to remove material from an existing solid;
- use *Fillet* and *Chamfer* to modify edges;
- create a manufactured hole using the *Hole* feature;
- repeat a feature using a *Linear Pattern*;
- read the feature tree as a sequence of modeling operations;
- explain why feature choice and feature order matter;
- predict how a model may respond when an earlier dimension changes.

#section("Suggested Class Flow")

#table(
  columns: (0.85in, 1.45in, 1fr),
  inset: 5pt,
  stroke: 0.5pt + rule,
  table.header(
    [*Time*],
    [*Stage*],
    [*Teacher moves*],
  ),
  [0–8 min],
  [Reconnect],
  [Review the Day 3 measurement/CAD work. Ask students what they learned from trying to reproduce the AA battery and VEX IQ piece. Connect their work to the idea that more complicated objects are built from multiple features.],
  [8–12 min],
  [Launch guided part],
  [Show the finished electronics mounting plate or a quick preview. Explain that every new feature will solve a specific design problem.],
  [12–42 min],
  [Guided build],
  [Build the mounting plate step by step. Pause before each feature to ask what the design needs and which CAD operation might accomplish it.],
  [42–52 min],
  [Feature-tree discussion],
  [Read the feature tree from top to bottom as a recipe. Edit an early dimension and have students predict what will rebuild correctly and what may not.],
  [52–66 min],
  [Student work],
  [Students continue or revise their Day 3 AA battery/VEX models and apply one or more new features where appropriate.],
  [66–70 min],
  [Closure],
  [Ask students to explain the difference between Remove and Hole, and why a pattern may be better than drawing repeated geometry individually.],
)

#section("Guided Part — Electronics Mounting Plate")

*Target geometry*

- Base plate: 80 mm × 40 mm × 6 mm
- Cable opening: 30 mm × 12 mm, centered
- Outside corner fillets: 5 mm radius
- Cable-opening chamfer: 1 mm
- Mounting holes: 4 mm diameter
- First hole center: 10 mm from the left end and 8 mm from one long edge
- Linear pattern: 4 hole instances, 20 mm spacing

#section("Step 1 — Create the Base Plate")

*Student actions*

1. Create a new sketch on the *Top* plane.
2. Draw a rectangle.
3. Dimension it to *80 mm × 40 mm*.
4. Finish the sketch.
5. Use *Extrude → New* to make the plate *6 mm* thick.

*Teacher moves*

Ask:

- “What information is stored in the sketch?”
- “What information is stored in the Extrude feature?”
- “If I change the sketch later, what do you predict will happen to the solid?”

#block(
  width: 100%,
  fill: pale,
  inset: 0.5em,
  radius: 3pt,
)[
  *A sketch defines 2D geometry. A feature uses that geometry to create or modify a 3D part.*
]

#section("Step 2 — Make the Cable Opening with Remove")

*Student actions*

1. Select the top face of the plate.
2. Start a new sketch.
3. Draw a rectangle near the center.
4. Dimension it to *30 mm × 12 mm*.
5. Constrain or dimension it so that it is centered on the plate.
6. Finish the sketch.
7. Choose *Extrude*.
8. Change the operation to *Remove*.
9. Use *Through all* and confirm.

*Teacher moves*

Before clicking Remove, ask:

- “What does the design need us to do now: add material or take material away?”
- “What is the difference between this Extrude and the first one?”

Suggested language:

“Extrude is not only a way to create material. It can also use a sketch to remove material from an existing part.”

#section("Step 3 — Add Fillets")

*Student actions*

1. Choose *Fillet*.
2. Select the four outside vertical corner edges.
3. Set the radius to *5 mm*.
4. Confirm the feature.

*Teacher moves*

Ask:

- “Did we change the original rectangle sketch?”
- “Where does the fillet appear in the feature tree?”
- “Why might an engineered part use a rounded corner instead of a sharp one?”

Emphasize that the original sketch can remain simple while later features modify the solid.

#section("Step 4 — Add a Chamfer")

*Student actions*

1. Choose *Chamfer*.
2. Select the upper edges around the rectangular cable opening.
3. Set the chamfer to *1 mm*.
4. Confirm the feature.

*Teacher moves*

Compare the two edge treatments:

- *Fillet* → rounded edge
- *Chamfer* → flat beveled edge

Ask:

- “Why might an opening for a wire or another part benefit from a chamfer?”
- “When might a designer prefer a chamfer instead of a fillet?”

#section("Step 5 — Locate the First Mounting Hole")

*Student actions*

1. Select the top face and begin a new sketch.
2. Use the *Point* tool to place one point near the lower-left portion of the plate.
3. Dimension the point so its center is:
   - *10 mm from the left end*, and
   - *8 mm from the lower long edge*.
4. Finish the sketch.

*Teacher moves*

Ask:

- “Why are we placing a point instead of drawing a circle?”
- “What does this sketch communicate about the design?”

Explain that the point defines the intended location for a manufactured hole.

#section("Step 6 — Create the Hole")

*Student actions*

1. Choose the *Hole* feature.
2. Select the sketch point.
3. Create a *Simple* hole.
4. Set the diameter to *4 mm*.
5. Make it *Through all*.
6. Confirm the feature.

*Teacher moves*

Ask:

“Why does Onshape have a Hole feature if we could sketch a circle and use Extrude Remove?”

Let students speculate before discussing the idea that a Hole feature communicates a more specific manufacturing intent.

Possible follow-up:

“The model is not only describing the final shape. It is also describing what kind of feature this is.”

#section("Step 7 — Repeat the Hole with a Linear Pattern")

*Student actions*

1. Choose *Linear Pattern*.
2. Set the pattern type to *Feature*.
3. Select the Hole feature in the feature tree.
4. Select a long edge of the plate as the pattern direction.
5. Set the number of instances to *4*.
6. Set the spacing to *20 mm*.
7. Reverse the direction if needed.
8. Confirm the pattern.

*Teacher moves*

Before creating the pattern, ask:

- “We need four equally spaced holes. Should we draw and dimension four separate circles?”
- “What information repeats in this design?”

#block(
  width: 100%,
  fill: pale,
  inset: 0.5em,
  radius: 3pt,
)[
  *Good CAD often describes the relationship that repeats instead of recreating the same geometry several times.*
]

#section("Step 8 — Read the Feature Tree")

Point to the feature tree and read the model from top to bottom:

#align(center)[
  *Sketch → Extrude → Sketch → Remove → Fillet → Chamfer → Sketch → Hole → Linear Pattern*
]

Ask students to explain what each step contributes to the final part.

Suggested language:

“The feature tree is the recipe Onshape follows every time it rebuilds the model.”

Then ask:

- Which features depend on earlier features?
- What might happen if an early feature were deleted?
- Why might feature order matter?

#section("Step 9 — Test the Design Intent")

Edit the original plate sketch and change the plate length:

#align(center)[
  *80 mm → 100 mm*
]

Before confirming, ask:

- “What do you predict will happen to the cable opening?”
- “What do you predict will happen to the fillets?”
- “What do you predict will happen to the row of holes?”
- “Will four holes at 20 mm spacing still make sense on the longer plate?”

After the rebuild, discuss whether the model behaved *correctly* and whether it behaved *as the designer intended*.

#block(
  width: 100%,
  fill: pale,
  inset: 0.5em,
  radius: 3pt,
)[
  *A model can rebuild without errors and still fail to capture the intended design relationship.*
]

#section("Student Work Time")

After the demonstration, have students return to the AA battery and VEX IQ models begun during the measurement activity.

Possible expectations:

- Finish the basic solids if they are incomplete.
- Use *Remove* or *Hole* where appropriate.
- Add a fillet or chamfer only if it corresponds to real geometry.
- Look for repeated geometry that could be created with a pattern.
- Rename sketches and features if time allows.

Circulate with questions such as:

- “What feature are you trying to create?”
- “What earlier geometry does this feature depend on?”
- “Could you model this more simply?”
- “If one dimension changed, what would you want the rest of the model to do?”

#section("Closure")

Ask students to respond orally or in their engineering journals:

1. What is the difference between *Extrude Remove* and the *Hole* feature?
2. Why might a *Linear Pattern* be better than creating repeated geometry one piece at a time?
3. What does the feature tree tell you about how a part was constructed?

End with:

“Good CAD is not just a correct shape. It is a model whose construction makes sense and whose important relationships survive change.”
