// command: render
#set page(
  paper: "us-letter",
  margin: (x: 0.7in, y: 0.65in),
)

#set text(
  font: "Arial",
  size: 10.5pt,
)

#set par(justify: false, leading: 0.65em)

#let blank(len) = box(
  width: len,
  height: 0.2in,
  stroke: (bottom: 0.8pt + black),
)

#let response(height: 1in) = block(
  width: 100%,
  height: height,
  stroke: 0.7pt + gray,
  inset: 6pt,
)

#align(center)[
  #text(size: 18pt, weight: "bold")[
    3D Printing Tolerance Coupon
  ]

  #text(size: 11pt)[
    Designing for Fit
  ]
]

#v(0.25in)

*Name:* #blank(2.3in) #h(0.3in) *Date:* #blank(1.4in)

= The Challenge

A CAD model can specify a part as exactly 10.00 mm wide and a hole as
exactly 10.00 mm wide. But will the printed part actually fit?

Probably not!

3D printers have limitations. Printed dimensions can differ slightly from
the dimensions in the CAD model because of layer height, extrusion,
material properties, printer calibration, orientation, and other factors.

Your goal is to design and print a *tolerance coupon* that will help us
understand how much clearance we should include when designing parts that
need to fit together.

At the end of this project, you should be able to make a statement such as:

#quote[
  On our printer, a 12.00 mm peg fits snugly into a 12.30 mm opening,
  while a 12.50 mm opening gives it a loose sliding fit.
]

= Part 1 — Choose What You Will Test

You will design a *peg* and a series of matching *openings*.

You may choose the cross-sectional shape of your peg. Possibilities include:

- circle
- square
- rectangle
- hexagon
- triangle
- another shape approved by your instructor

Choose something that can be measured and dimensioned clearly.

*My shape:* #blank(2.5in)

*Nominal size of my peg:* #blank(1.5in) mm

#v(0.1in)

For example, you might choose:

- a 10.00 mm diameter circular peg,
- a 12.00 mm square peg, or
- an 8.00 mm × 15.00 mm rectangular peg.

#pagebreak()

== Sketch Your Design

Sketch the cross section of your peg. Clearly show the dimension or
dimensions that determine its size.

#response(height: 1.5in)

= Part 2 — Design the Experiment

Your peg will stay the *same size* throughout the experiment.

The openings will change size.

This makes the *clearance* between the peg and opening the variable you are
testing.

$ "clearance" = "opening size" - "peg size" $

For example, if your peg is 10.00 mm wide and your opening is 10.30 mm wide,

$ "clearance" = 10.30 " mm" - 10.00 " mm" = 0.30 " mm" $

== Choose Your Clearances

Create at least *six different openings*. Your openings should include a
range of clearances so that you can observe different kinds of fit.

A useful starting range might be:

$ -0.20, quad 0.00, quad +0.10, quad +0.20, quad +0.30, quad +0.50 " mm" $

You may choose a different range if you think it will produce a more useful
experiment.

Complete your plan before beginning your CAD model.

#table(
  columns: (1fr, 1.4fr, 1.4fr),
  inset: 6pt,
  stroke: 0.6pt + gray,

  [*Opening*], [*Clearance*], [*Opening Size*],
  [1], [], [],
  [2], [], [],
  [3], [], [],
  [4], [], [],
  [5], [], [],
  [6], [], [],
  [7 (optional)], [], [],
  [8 (optional)], [], [],
)

#v(0.15in)

*Why did you choose this range of clearances?*

#response(height: 0.75in)

= Part 3 — Design the Coupon in Onshape

Create a single tolerance coupon that contains:

- a base plate,
- at least six test openings,
- labels identifying the size or clearance of each opening,
- one separate test peg.

The peg should use the *same geometry and nominal dimensions* for every
test. Only the dimensions of the openings should change.

== Design Requirements

Your coupon should:

- be small enough that it does not waste unnecessary filament;
- be thick enough to test the fit realistically;
- leave enough material between openings that the coupon is strong;
- have openings that are easy to access and test;
- clearly identify each opening;
- use dimensions and constraints so that the model can be edited easily;
- use a consistent method for generating the different opening sizes.

*Important:* Do not simply draw six unrelated openings by eye. Think about
how you can design your Onshape document so the dimensions clearly show the
different clearances being tested.

== Before Printing

Check each item:

- ☐ All sketches are fully or appropriately constrained.
- ☐ The peg has the intended nominal dimensions.
- ☐ Each opening has the correct dimensions.
- ☐ Each opening is labeled.
- ☐ The coupon is reasonably compact.
- ☐ The peg and coupon are separate printable parts.
- ☐ I have checked the model using Onshape's measurement tools.

= Part 4 — Make a Prediction

Before printing, predict what will happen.

*Smallest clearance that I think will allow the peg to enter:*

#blank(1.5in) mm

*Clearance that I think will give the best snug fit:*

#blank(1.5in) mm

*Clearance that I think will give an easy sliding fit:*

#blank(1.5in) mm

Explain your reasoning.

#response(height: 0.8in)

= Part 5 — Print and Test

Print your coupon and peg using the class printer and the assigned print
settings.

Do *not* force the peg into an opening so hard that you damage the coupon.
The goal is to observe the fit.

For each opening, classify the fit.

*Interference* — The peg does not enter, or requires excessive force.

*Press fit* — The peg enters with significant pressure and stays firmly in
place.

*Snug fit* — The peg can be inserted by hand but has very little movement.

*Sliding fit* — The peg moves in and out easily without excessive wobble.

*Loose fit* — The peg fits but has obvious extra space or movement.

#table(
  columns: (0.7fr, 1fr, 1fr, 1.3fr, 2fr),
  inset: 5pt,
  stroke: 0.6pt + gray,

  [*Test*], [*Clearance*], [*Opening*], [*Fit*], [*Observations*],
  [1], [], [], [], [],
  [2], [], [], [], [],
  [3], [], [], [], [],
  [4], [], [], [], [],
  [5], [], [], [], [],
  [6], [], [], [], [],
  [7], [], [], [], [],
  [8], [], [], [], [],
)

= Part 6 — Measure the Printed Parts

If calipers are available, measure your printed peg.

*Designed peg dimension:* #blank(1.2in) mm

*Actual printed dimension:* #blank(1.2in) mm

*Difference:* #blank(1.2in) mm

Was the printed peg larger or smaller than the CAD model?

#response(height: 0.55in)

If possible, measure one or more openings as well. Are the printed openings
the dimensions you specified in CAD?

#response(height: 0.7in)

= Part 7 — What Did We Learn?

Based on your experiment, complete the following.

== Press or Very Tight Fit

Recommended clearance: #blank(1.4in) mm

== Snug Fit

Recommended clearance: #blank(1.4in) mm

== Sliding Fit

Recommended clearance: #blank(1.4in) mm

== Loose Fit

Recommended clearance: #blank(1.4in) mm

= Reflection

*1. Did the results match your prediction? Explain.*

#response(height: 0.8in)

*2. Why doesn't a peg necessarily fit into an opening with exactly the same
CAD dimensions?*

#response(height: 0.8in)

*3. If you redesigned your coupon, what would you change about the range or
spacing of your test sizes?*

#response(height: 0.8in)

*4. Suppose you were designing two printed parts that needed to slide
together. What clearance would you use based on your results? Why?*

#response(height: 0.8in)

= Class Data

Your coupon is one experiment. As a class, we can compare results from
different shapes and sizes.

Consider:

- Do circles behave differently from squares?
- Does the nominal size of the feature matter?
- Are printed holes generally larger or smaller than expected?
- Are printed pegs generally larger or smaller than expected?
- Does the same clearance produce the same type of fit for every geometry?

The goal is to turn our results into a set of *design guidelines for our
printer* that we can use in future engineering projects.