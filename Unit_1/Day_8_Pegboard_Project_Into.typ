
// command: render

#set page(
  paper: "us-letter",
  margin: (x: 0.7in, y: 0.65in),
)

#set text(size: 10.5pt)
#set par(leading: 0.68em)
#set heading(numbering: none)

#let linefill() = line(length: 100%, stroke: 0.6pt)

#let response(lines: 2) = {
  for i in range(lines) {
    v(0.18in)
    linefill()
  }
}

#let idea-box(title) = block(
  width: 100%,
  height: 2.05in,
  stroke: 0.7pt,
  inset: 0.12in,
)[
  *#title*
  #v(0.05in)
  #text(size: 9pt, fill: gray)[
    Sketch your idea. Show how it attaches to the pegboard.
  ]
]

#align(center)[
  #text(size: 18pt, weight: "bold")[Pegboard Design Challenge]
  #v(0.04in)
  #text(size: 13pt)[Wednesday — Ideate, Plan, and Create]
]

#v(0.12in)

#grid(
  columns: (1fr, 1fr),
  gutter: 0.4in,
  [*Name:* #line(length: 2.2in, stroke: 0.7pt)],
  [*Date:* #line(length: 1.7in, stroke: 0.7pt)],
)

#v(0.16in)

== The Challenge

Design an *original, useful object* that attaches to the provided pegboard.

The pegboard is a *fixed engineering interface*. You may examine it, measure it, and build around it, but *you may not change its geometry or dimensions.*

Today your goal is to:

- understand the interface;
- generate several possible solutions;
- select and plan one solution;
- begin building a complete draft in Onshape.

Bring a *completed Draft Design* to the next class.

#v(0.08in)

== 1. Understand the Interface

Before designing, inspect the provided Onshape model.

*Pegboard hole diameter:* #line(length: 1.15in) \
*Hole spacing:* #line(length: 1.15in) \
*Board thickness:* #line(length: 1.15in)

#v(0.08in)

*What must your design do in order to attach securely to this interface?*

#response(lines: 2)

#pagebreak()

#align(center)[
  #text(size: 16pt, weight: "bold")[Generate Ideas]
]

#v(0.08in)

Do not settle on your first idea immediately. Generate *three meaningfully different solutions*.

Think about objects that could be held, organized, supported, displayed, protected, or made easier to access.

#v(0.12in)

#grid(
  columns: (1fr, 1fr),
  gutter: 0.18in,
  idea-box[Idea 1],
  idea-box[Idea 2],
)

#v(0.18in)

#idea-box[Idea 3]

#v(0.18in)

== 2. Choose a Direction

*Which idea are you developing? Why?*

#response(lines: 2)

*What will your design hold, support, organize, display, or otherwise do?*

#response(lines: 2)

#pagebreak()

#align(center)[
  #text(size: 16pt, weight: "bold")[Plan Before You Model]
]

#v(0.1in)

== 3. Develop Your Chosen Idea

Use this space for a larger sketch of your selected design.

Add important dimensions and label features that matter.

#block(
  width: 100%,
  height: 3.1in,
  stroke: 0.7pt,
  inset: 0.12in,
)[
  #text(size: 9pt, fill: gray)[
    Detailed design sketch
  ]
]

#v(0.18in)

*How will your design attach to the pegboard?*

#response(lines: 2)

*What dimensions are critical to making your design work?*

#response(lines: 2)

== 4. Plan Your CAD Strategy

Before you start clicking, think about how the model could be constructed.

*What should your first sketch describe?*

#response(lines: 1)

*What should your first feature create?*

#response(lines: 1)

*What other sketches or features do you think you will need?*

#response(lines: 2)

#v(0.12in)

#block(
  width: 100%,
  stroke: 0.8pt,
  inset: 0.12in,
)[
  *Remember:* You are not trying to use every Onshape feature you know.
  Choose sketches and features because they make sense for your design.
]

#v(0.15in)

== Before Next Class

Before the next class:

- [ ] Build a complete draft of your design in Onshape.
- [ ] Check that it fits the provided pegboard.
- [ ] Give your part a meaningful name.
- [ ] Create a Version named *Draft Design*.
- [ ] Come to class ready to show and explain your design to two classmates.

