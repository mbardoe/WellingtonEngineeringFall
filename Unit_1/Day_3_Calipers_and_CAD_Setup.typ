// command: render
// Engineering Design: CAD and Fabrication
// Caliper Measurement and CAD Setup
// Student Handout

#set page(
  paper: "us-letter",
  margin: (x: 0.7in, y: 0.65in),
)

#set text(font: "Arial", size: 10.5pt)
#set par(leading: 0.65em)

#let navy = rgb("#17365D")
#let light = rgb("#EAF1F8")

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
  #text(size: 14pt, weight: "bold")[Measuring with Calipers → Building a CAD Model]
]

#v(0.5em)

#grid(
  columns: (1fr, 1fr),
  gutter: 1em,
  [*Name:* #h(0.3em) #line(length: 2.35in, stroke: 0.6pt)],
  [*Date:* #h(0.3em) #line(length: 1.65in, stroke: 0.6pt)],
)

#section("1. How to Use a Digital Caliper")

Before measuring, close the jaws gently and press *ZERO*. Make sure the display is in *millimeters (mm)*.

#table(
  columns: (1.35in, 1.7in, 1fr),
  inset: 5pt,
  stroke: 0.5pt + rgb("#BBBBBB"),
  table.header(
    [*Caliper part*],
    [*What it measures*],
    [*How to use it*],
  ),
  [Outside jaws],
  [Outside dimensions],
  [Close the large jaws gently around the object. Useful for thickness, width, and outside diameter.],
  [Inside jaws],
  [Inside dimensions],
  [Open the small upper jaws inside a hole or opening until they touch both sides.],
  [Depth rod],
  [Depth],
  [Extend the thin rod from the end of the caliper into a hole, slot, or recess.],
  )

#v(0.4em)

*Good measuring habits:*

- Hold the caliper square to the feature you are measuring.
- Close the jaws *gently*. Squeezing can change the reading.
- Measure the same feature more than once if the result seems uncertain.
- Record units with every measurement.
- Think about exactly *which surfaces* define the dimension you want.

#block(
  width: 100%,
  fill: rgb("#F7F7F7"),
  inset: 0.55em,
  radius: 3pt,
)[
  *Engineering question:* What measurements would another person need in order to reproduce this object accurately?
]

#section("2. Object A — AA Battery")

Measure the battery and record the dimensions below.

#table(
  columns: (2.25in, 1.3in, 1fr),
  inset: 5pt,
  stroke: 0.5pt + rgb("#BBBBBB"),
  [*Dimension*], [*Measurement*], [*Caliper method*],
  [Overall battery length], [], [Outside jaws],
  [Main body diameter], [], [Outside jaws],
  [Positive terminal diameter], [], [Outside jaws],
  [Positive terminal height], [], [Outside jaws or step measurement],
)

#v(0.35em)

*Technical sketch:* Make a simple side-view sketch of the battery and label your measured dimensions.

#box(
  width: 100%,
  height: 1.85in,
  stroke: 0.7pt + rgb("#AAAAAA"),
  radius: 3pt,
)

#pagebreak()

#section("3. Object B — VEX IQ 2×4 Piece")

Measure the VEX IQ piece. Your goal is to collect enough information to reproduce its main geometry in Onshape.

#table(
  columns: (2.25in, 1.3in, 1fr),
  inset: 5pt,
  stroke: 0.5pt + rgb("#BBBBBB"),
  [*Dimension*], [*Measurement*], [*Caliper method*],
  [Overall length], [], [Outside jaws],
  [Overall width], [], [Outside jaws],
  [Thickness], [], [Outside jaws],
  [Hole diameter], [], [Inside jaws],
  [Center-to-center hole spacing], [], [Measure repeated spacing carefully],
  [Edge to nearest hole center], [], [Use your measured geometry],
)

#v(0.35em)

*Technical sketch:* Make a top-view sketch of the VEX piece. Show the outside shape, hole locations, and the dimensions needed to define them.

#box(
  width: 100%,
  height: 2.0in,
  stroke: 0.7pt + rgb("#AAAAAA"),
  radius: 3pt,
)

#section("4. Move from Measurement to CAD")

You will create *two CAD models* from your measurements.

*AA Battery*

1. Sketch a circle for the main body.
2. Dimension the circle using your measured body diameter.
3. Extrude it to the measured battery length.
4. Add the positive terminal as a second sketch and feature.

*VEX IQ 2×4 Piece*

1. Sketch the outside rectangle.
2. Dimension its length and width.
3. Add circles for the holes.
4. Use dimensions and constraints to locate the hole centers.
5. Extrude the part to the measured thickness.
6. Remove the holes if needed.

#section("5. Before You Start Modeling")

For each object, ask yourself:

- Which measurements control the *overall size*?
- Which measurements locate important *features*?
- Which dimensions repeat?
- Which relationships could be handled with *constraints* rather than extra dimensions?
- What feature should come first in the model?

#block(
  width: 100%,
  fill: rgb("#F7F7F7"),
  inset: 0.55em,
  radius: 3pt,
)[
  *Goal:* Your model does not need every tiny manufacturing detail. It should capture the important geometry well enough that someone could recognize and reproduce the object.
]
