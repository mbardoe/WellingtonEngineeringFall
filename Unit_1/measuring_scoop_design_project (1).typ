// command: render
// Measuring Scoop Design Project
// Student handout

#set page(
  paper: "us-letter",
  margin: (x: 0.68in, y: 0.62in),
)

#set text(size: 10.5pt)
#set par(leading: 0.68em)
#set heading(numbering: none)

#align(center)[
  #text(size: 18pt, weight: "bold")[Measuring Scoop Design Project]
  #v(0.06in)
  #text(size: 11pt)[Onshape Engineering Design Challenge]
]

#v(0.14in)

#grid(
  columns: (1fr, 1fr),
  gutter: 0.45in,
  [*Name:* #line(length: 2.15in, stroke: 0.7pt)],
  [*Date:* #line(length: 1.65in, stroke: 0.7pt)],
)

#v(0.18in)

== The Challenge

Design a *single-piece measuring scoop* in Onshape that holds *30 mL* when filled to the rim.

Your final scoop should have a capacity between *29 mL and 31 mL*. You will begin by sketching and estimating the size of your scoop, then build it in Onshape, measure the actual interior volume, and revise your design if needed.

This project is not about finding one "correct" shape. Your scoop should be functional, thoughtfully designed, and clearly the result of several intentional CAD features.

#v(0.12in)

== Design Requirements

Your measuring scoop must:

- be modeled as one finished part;
- have an interior capacity between *29 mL and 31 mL*;
- include a functional handle;
- have reasonable wall thickness throughout the cup;
- use multiple sketches and multiple Onshape features;
- include at least *one added design feature* beyond the basic cup and handle;
- use fillets, chamfers, or other finishing features where they improve the design.

#v(0.08in)

*Possible added features:*

#grid(
  columns: (1fr, 1fr),
  gutter: 0.28in,
  [
    - hanging hole
    - pouring spout
    - thumb rest
    - reinforcing rib
  ],
  [
    - flat resting surface
    - grip or finger feature
    - capacity marking or label
    - tapered or shaped handle
  ],
)

You may also invent an added feature of your own.

#v(0.16in)

== Step 1 — Sketch Before You Model

Before opening a new Part Studio, sketch your idea below. Show the important dimensions you think you will need. Your sketch does not need to be artistic, but it should communicate your plan.

#v(0.08in)

#rect(
  width: 100%,
  height: 3.05in,
  stroke: 0.8pt,
)[]

#v(0.08in)

*Label at least:* cup diameter or width, cup depth, approximate wall thickness, handle length, and your added feature.

#pagebreak()

#align(center)[
  #text(size: 16pt, weight: "bold")[Measuring Scoop Design Project — Planning & Testing]
]

#v(0.12in)

== Step 2 — Estimate the Volume

Before you model the scoop, make a reasonable estimate of the dimensions needed to hold 30 mL.

*Useful conversion:*

$1 " mL" = 1 " cm"^3 = 1000 " mm"^3$

Therefore,

$30 " mL" = 30,000 " mm"^3$

If your cup is approximately cylindrical, you may begin with

$V = pi r^2 h$

If your cup has a different shape, choose a reasonable geometric approximation and explain it.

#v(0.08in)

*Shape I am using for my estimate:* #line(length: 4.25in, stroke: 0.7pt)

#v(0.10in)

*Dimensions I plan to start with:*

#rect(
  width: 100%,
  height: 0.62in,
  stroke: 0.7pt,
)[]

#v(0.10in)

*My preliminary volume calculation:*

#rect(
  width: 100%,
  height: 1.30in,
  stroke: 0.7pt,
)[]

#v(0.08in)

*Predicted capacity:* #line(length: 1.25in, stroke: 0.7pt) mL

#v(0.16in)

== Step 3 — Build the Scoop in Onshape

Build your design using a sequence of intentional features. Think about which geometry should be created first and which details should be added later.

Some features that may be useful include:

- *Revolve* or *Extrude* for the main cup shape
- *Shell* or *Extrude Remove* for the interior
- additional sketches and extrudes for the handle
- *Fillet* or *Chamfer* for rounded or finished edges
- *Rib*, *Mirror*, or other features when they support your design

You do not need to use every feature listed above.

#v(0.14in)

== Step 4 — Create a Solid Representing the Empty Space

To measure the capacity of the scoop, you need Onshape to create a temporary solid representing the space that liquid would occupy.

1. Finish the inside surface of your scoop.
2. Create or use a *plane or surface across the open top* of the scoop so that the interior is completely closed.
3. Choose *Enclose*.
4. Select the faces, surfaces, and/or plane that completely surround the empty interior.
5. Set the result operation to *New*.
6. Accept the feature.

You should now have a second part: a solid that represents the volume inside your scoop.

#v(0.14in)

== Step 5 — Check the Capacity

1. Select the new enclosed-volume part.
2. Click the *Mass Properties* icon in the *bottom-right corner* of the Onshape window.
3. Find the reported *Volume*.
4. Record the value below and convert units if necessary.

#v(0.07in)

*First measured capacity:* #line(length: 1.35in, stroke: 0.7pt) mL

#v(0.10in)

Was your first design within the required 29–31 mL range?  *Yes / No*

#v(0.12in)

== Step 6 — Revise and Verify

If your capacity is outside the target range, change one or more dimensions and measure again.

*What did you change, and why?*

#rect(
  width: 100%,
  height: 0.72in,
  stroke: 0.7pt,
)[]

#v(0.08in)

*Final measured capacity:* #line(length: 1.35in, stroke: 0.7pt) mL

#v(0.12in)

== Final Check

Before submitting, confirm that your model:

- ☐ is one finished scoop part;
- ☐ holds between 29 mL and 31 mL;
- ☐ includes a functional handle;
- ☐ includes at least one added design feature;
- ☐ uses multiple sketches and CAD features;
- ☐ has been checked using an enclosed interior volume;
- ☐ shows evidence of revision or verification.
