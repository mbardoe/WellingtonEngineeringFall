// command: render
// Engineering Design: CAD and Fabrication
// Class 2 Student Handout
// 2026-2027

#set page(
  paper: "us-letter",
  margin: (x: 0.7in, y: 0.65in),
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
  #text(size: 15pt, weight: "bold")[Class 2 — Your First Onshape Part]
]

#v(0.5em)

#grid(
  columns: (1fr, 1fr),
  gutter: 1em,
  [*Name:* #h(0.3em) #line(length: 2.4in, stroke: 0.6pt)],
  [*Date:* #h(0.3em) #line(length: 1.7in, stroke: 0.6pt)],
)

#section("Today’s Goal")

Today you will create your first Onshape part: a simple mounting plate.

The shape is simple on purpose. The goal is to learn the basic CAD workflow:

#align(center)[
  #text(size: 13pt, weight: "bold", fill: navy)[
    SKETCH → CONSTRAIN → FEATURE → MODIFY
  ]
]

By the end of class, you should be able to create a sketch, control its dimensions, turn it into a 3D part, and change the design without starting over.

#section("Part A — Set Up Onshape")

Follow your teacher’s instructions to create or access your Onshape account.

Once you are signed in:

1. Create a new Onshape document.
2. Name it using the class naming convention your teacher gives you.
3. Find the *Part Studio* tab.
4. Locate the graphics area, feature list, view cube, and origin.
5. Practice rotating, panning, and zooming the view.
6. Return to a standard top view.

#block(
  width: 100%,
  fill: rgb("#F7F7F7"),
  inset: 0.55em,
  radius: 3pt,
)[
  *Important:* You are not going to “break” the model by changing the view. Get comfortable moving around.
]

#section("Part B — Start the Mounting Plate")

You will create a plate with these final dimensions:

#table(
  columns: (1.7fr, 1fr),
  inset: 5pt,
  stroke: 0.5pt + rgb("#BBBBBB"),
  [*Feature*], [*Dimension*],
  [Plate length], [60 mm],
  [Plate width], [30 mm],
  [Plate thickness], [4 mm],
  [Hole diameter], [6 mm],
  [Hole position from each short end], [10 mm],
)

*Step 1: Start a sketch.*

1. Click *Sketch*.
2. Choose a plane for the sketch.
3. Orient the view so you are looking directly at the sketch plane.

*Step 2: Draw the outside of the plate.*

1. Use a rectangle tool to draw an approximate rectangle.
2. Do not worry about drawing it exactly to size.
3. Add dimensions so the rectangle is exactly *60 mm × 30 mm*.

Pause and think:

*Before you added dimensions, what did Onshape know about the rectangle?*

#line(length: 100%, stroke: 0.5pt + rgb("#AAAAAA"))
#v(0.7em)

*What did the dimensions tell Onshape?*

#line(length: 100%, stroke: 0.5pt + rgb("#AAAAAA"))
#v(0.7em)

#section("Part C — Add the Mounting Holes")

Add two circles to the same sketch.

Each hole should have:

- diameter: *6 mm*;
- center located *10 mm from the nearest short end*;
- center aligned with the vertical middle of the plate.

Your teacher will demonstrate one good way to define these relationships.

Before the sketch is fully constrained, gently drag one of the circles.

*What can still move?*

#line(length: 100%, stroke: 0.5pt + rgb("#AAAAAA"))
#v(0.7em)

After the geometry is constrained, try again.

*What changed?*

#line(length: 100%, stroke: 0.5pt + rgb("#AAAAAA"))
#v(0.7em)

#block(
  width: 100%,
  fill: rgb("#F7F7F7"),
  inset: 0.55em,
  radius: 3pt,
)[
  *Key idea:* A shape that looks correct is not necessarily fully defined. Dimensions and constraints tell Onshape which relationships must remain true.
]

#pagebreak()

#section("Part D — Turn the Sketch into a Part")

When the sketch is complete:

1. Finish the sketch.
2. Choose *Extrude*.
3. Select the plate region.
4. Extrude the plate to a thickness of *4 mm*.
5. Confirm the feature.
6. Rotate the model and inspect it from several directions.

*What information came from the sketch?*

#line(length: 100%, stroke: 0.5pt + rgb("#AAAAAA"))
#v(0.7em)
#line(length: 100%, stroke: 0.5pt + rgb("#AAAAAA"))
#v(0.7em)

*What information came from the Extrude feature?*

#line(length: 100%, stroke: 0.5pt + rgb("#AAAAAA"))
#v(0.7em)
#line(length: 100%, stroke: 0.5pt + rgb("#AAAAAA"))
#v(0.7em)

#align(center)[
  #text(size: 12pt, weight: "bold", fill: navy)[
    A sketch describes 2D geometry. A feature does something with that geometry.
  ]
]

#section("Part E — The CAD Magic Trick")

Now edit the dimension that controls the plate length.

Change:

*60 mm → 80 mm*

Before you confirm the change, predict what should happen.

*What do you expect the holes to do?*

#line(length: 100%, stroke: 0.5pt + rgb("#AAAAAA"))
#v(0.7em)
#line(length: 100%, stroke: 0.5pt + rgb("#AAAAAA"))
#v(0.7em)

Now confirm the change.

*Did the model behave the way you expected? Explain.*

#line(length: 100%, stroke: 0.5pt + rgb("#AAAAAA"))
#v(0.7em)
#line(length: 100%, stroke: 0.5pt + rgb("#AAAAAA"))
#v(0.7em)

#block(
  width: 100%,
  fill: rgb("#F7F7F7"),
  inset: 0.55em,
  radius: 3pt,
)[
  *Design intent:* Good CAD is not only correct at one set of dimensions. A well-designed model responds predictably when important dimensions change.
]

#section("Part F — Independent Design Challenge")

Imagine that your mounting plate now needs to fit a different device.

Make *at least two intentional changes* to your model.

Possible changes include:

- change the plate length or width;
- change the hole diameter;
- change the hole spacing;
- add a third mounting hole;
- change the plate thickness;
- make another justified geometric change.

*Change 1:*

#line(length: 100%, stroke: 0.5pt + rgb("#AAAAAA"))
#v(0.7em)

*Why did you make this change?*

#line(length: 100%, stroke: 0.5pt + rgb("#AAAAAA"))
#v(0.7em)

*Change 2:*

#line(length: 100%, stroke: 0.5pt + rgb("#AAAAAA"))
#v(0.7em)

*Why did you make this change?*

#line(length: 100%, stroke: 0.5pt + rgb("#AAAAAA"))
#v(0.7em)

#section("Exit Question")

What is the difference between *drawing* something in CAD and *defining* it?

#line(length: 100%, stroke: 0.5pt + rgb("#AAAAAA"))
#v(0.7em)
#line(length: 100%, stroke: 0.5pt + rgb("#AAAAAA"))
#v(0.7em)
#line(length: 100%, stroke: 0.5pt + rgb("#AAAAAA"))
