// command: render
// Engineering Design: CAD and Fabrication
// Class 2 Teacher Notes
// 2026-2027

#set page(
  paper: "us-letter",
  margin: (x: 0.65in, y: 0.6in),
)

#set text(font: "Arial", size: 10.5pt)
#set par(leading: 0.65em)

#let navy = rgb("#17365D")
#let light = rgb("#EAF1F8")

#let section(title) = [
  #v(0.45em)
  #block(
    width: 100%,
    fill: light,
    inset: (x: 0.45em, y: 0.32em),
    radius: 3pt,
  )[
    #text(weight: "bold", fill: navy, size: 12pt)[#title]
  ]
  #v(0.25em)
]

#align(center)[
  #text(size: 19pt, weight: "bold", fill: navy)[Engineering Design: CAD and Fabrication]
  #v(0.12em)
  #text(size: 15pt, weight: "bold")[Class 2 Teacher Notes — Introduction to Onshape]
]

#v(0.5em)

#grid(
  columns: (1fr, 1fr),
  gutter: 1em,
  [*Class length:* 70 minutes],
  [*Focus:* Onshape setup, navigation, sketches, dimensions, constraints, and first extrude],
)

#section("Purpose of the Lesson")

Students should leave class with a first mental model of how Onshape works:

#align(center)[
  #text(size: 13pt, weight: "bold", fill: navy)[
    SKETCH → CONSTRAIN → FEATURE → MODIFY
  ]
]

The goal is not to teach every tool. The goal is to help students understand that CAD is a system for describing geometry and relationships so that a model can respond predictably to change.

The guided object is a small mounting plate. Its geometry is intentionally simple so that the software workflow—not the shape itself—is the lesson.

#section("Learning Goals")

By the end of class, students should be able to:

- open and navigate an Onshape document;
- identify a Part Studio and the origin planes;
- begin and finish a sketch;
- create a rectangle and circles;
- apply dimensions and basic geometric relationships;
- explain the difference between geometry that merely looks correct and geometry that is constrained;
- extrude a sketch into a 3D part;
- edit a dimension and observe how the model rebuilds.

#section("Materials and Preparation")

Before class:

- Confirm that students know how they are expected to create or access their Onshape Education accounts.
- Have the student handout available digitally or on paper.
- If possible, have a physical mounting plate, bracket, robot chassis plate, or similar object to hold up during the introduction.
- Create a teacher demo document in advance, but begin the live demonstration from a blank document.
- Decide whether students should use millimeters by default and be ready to verify units with the class.

#section("Suggested Class Flow")

#table(
  columns: (0.85in, 1.45in, 1fr),
  inset: 5pt,
  stroke: 0.5pt + rgb("#BBBBBB"),
  table.header(
    [*Time*],
    [*Stage*],
    [*Teacher moves*],
  ),
  [0–5 min],
  [Launch],
  [Reconnect to Day 1: engineered objects contain intentional decisions. Hold up a simple bracket or plate and ask, “What decisions did someone make here?” Then explain that today students will begin describing those decisions in CAD.],
  [5–15 min],
  [Account setup],
  [Have students create or access their Onshape accounts. Circulate aggressively. Students who finish early should help a neighbor with navigation only, not account credentials. Once everyone is in, have students create a new document using your class naming convention.],
  [15–23 min],
  [Orientation],
  [Introduce the document, Part Studio, feature tree, graphics area, view cube, origin, and the Top/Front/Right planes. Keep this brief and physical: point, click, rotate, pan, zoom.],
  [23–45 min],
  [Guided mounting plate],
  [Build the mounting plate together. Pause repeatedly to ask what Onshape currently knows and what it does not yet know. Emphasize the distinction between drawing approximate geometry and defining precise geometry.],
  [45–52 min],
  [Extrude and inspect],
  [Finish the sketch, extrude the plate to 4 mm, then orbit around it. Ask students to identify what came from the sketch and what came from the feature.],
  [52–58 min],
  [The “magic trick”],
  [Edit one controlling dimension, such as plate length from 60 mm to 80 mm. Ask students to predict what should happen before confirming. Use this to introduce design intent.],
  [58–67 min],
  [Independent modification],
  [Students make two intentional changes to adapt the plate for a different device. Require them to be able to explain what they changed and why.],
  [67–70 min],
  [Exit],
  [Ask: “What is the difference between drawing something in CAD and defining it?” Preview that the next class will focus on measurement and precision.],
)

#section("Detailed Teacher Moves")

*1. Start with the object, not the software.*

Hold up a simple manufactured bracket or plate. Ask:

- What does this part need to do?
- Which parts of its shape are probably intentional?
- Which dimensions might matter?
- What could go wrong if one hole moved by 5 mm?

Then transition:

“Yesterday we talked about design decisions. Today we are going to start putting those decisions into a CAD model.”

*2. Establish the document hierarchy without overexplaining it.*

As students enter Onshape, say:

“The document is the container for the project. A Part Studio is one workspace inside that document where we can create parts.”

Point out the tabs, but do not spend time on assemblies, drawings, versions, or branches yet.

*3. Make navigation a thirty-second challenge.*

After showing rotate, pan, zoom, and the view cube, tell students:

“Make your screen look completely different from mine. Now get back to the Top view.”

This gives them permission to explore without fear of “breaking” the model.

*4. Use the planes as a decision point.*

Before clicking a sketch plane, ask:

“If we were manufacturing a flat plate, which face of the object are we really designing first?”

Accept reasonable answers. The important idea is that a 2D sketch is created on a plane.

*5. Draw badly on purpose.*

Create a rectangle that is obviously not exactly 60 mm by 30 mm.

Ask:

“Is this a rectangle?”

Then:

“Is this the rectangle we want?”

Use the distinction to introduce dimensions.

Suggested language:

“Geometry tells Onshape what kind of shapes these are. Dimensions and constraints tell Onshape the relationships we care about.”

*6. Make “fully constrained” meaningful.*

As the sketch approaches full constraint, ask students to drag a point or circle before it is fully constrained.

Then constrain or dimension it and try again.

Emphasize:

“If I can accidentally drag this somewhere else, then I have not fully explained my design.”

*7. Build the mounting plate.*

Suggested dimensions:

- plate: 60 mm × 30 mm;
- two holes: 6 mm diameter;
- each hole center: 10 mm from the nearest short end;
- holes centered vertically;
- extrusion thickness: 4 mm.

Do not rush students into using every possible constraint. The first priority is understanding the workflow.

*8. Separate sketch from feature.*

Before extruding, ask:

“What do we have right now?”

Desired answer: a 2D sketch.

After extruding, ask:

“What did the Extrude feature add?”

Desired answer: thickness, a third dimension, and a solid part.

Use the sentence:

“A sketch describes geometry. A feature does something with that geometry.”

*9. Demonstrate design intent.*

Edit the plate length from 60 mm to 80 mm.

Before confirming, ask:

“What should happen to the holes?”

If the holes are dimensioned from the ends, they should remain 10 mm from the ends. If they are located differently, use the result as a productive discussion rather than correcting it immediately.

Suggested language:

“Good CAD is not only correct right now. Good CAD behaves correctly when something changes.”

#section("Independent Challenge")

Give students approximately 8–10 minutes.

Prompt:

“Imagine that this mounting plate must fit a different device. Make at least two intentional changes.”

Possible changes:

- change plate length or width;
- change hole diameter;
- change hole spacing;
- add a third mounting hole;
- make the plate thicker;
- make another justified geometric change.

Students should be ready to explain:

1. What did you change?
2. Why did you change it?
3. Did the model respond the way you expected?

#section("Likely Student Difficulties")

*Students cannot move the view the way they want.*  
Treat navigation as low stakes. Help them return to a standard view using the view cube.

*Students sketch on the wrong plane.*  
Do not frame this as a disaster. Ask whether the part could still be modeled there, then show how to exit and begin again if needed.

*Students cannot enter a dimension.*  
Check whether they are still inside the sketch and whether the correct sketch entity is selected.

*The sketch is not fully constrained.*  
Ask, “What can still move?” Have the student drag geometry gently and identify the remaining freedom.

*Students confuse hole radius and diameter.*  
Use the diameter symbol and connect this to the measurement lesson that follows.

*Students rush ahead into decorative features.*  
Redirect toward precision: “Before adding anything, can you explain why every current dimension is where it is?”

#section("Closure")

End with the question:

“What is the difference between drawing something in CAD and defining it?”

A useful target response is:

“Drawing makes the shape look right; defining it tells the software the dimensions and relationships that make it right.”

Then preview the next class: students will use rulers and calipers to decide what measurements are actually needed to define a physical object.
