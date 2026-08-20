// command: render
// Engineering Design: CAD and Fabrication
// Day 1 Student Handout
// 2026-2027

#set page(
  paper: "us-letter",
  margin: (x: 0.7in, y: 0.65in),
)

#set text(
  font: "Arial",
  size: 10.5pt,
)

#set par(
  leading: 0.65em,
)

#let navy = rgb("#17365D")
#let light-blue = rgb("#EAF1F8")
#let mid-blue = rgb("#D6E4F2")
#let gray = rgb("#666666")

#let section(title) = [
  #v(0.35em)
  #block(
    width: 100%,
    fill: light-blue,
    inset: (x: 0.45em, y: 0.3em),
    radius: 3pt,
  )[
    #text(weight: "bold", fill: navy, size: 12pt)[#title]
  ]
  #v(0.25em)
]

#let linefill(n) = [
  #v(.5cm)
  #for i in range(n) {
    line(length: 100%, stroke: 0.5pt + rgb("#AAAAAA"))
    v(0.7em)
  }
]

#align(center)[
  #text(size: 20pt, weight: "bold", fill: navy)[Engineering Design: CAD and Fabrication]
  #v(0.15em)
  #text(size: 15pt, weight: "bold")[Day 1 — What Does an Engineer See?]
]

#v(0.6em)

#grid(
  columns: (1fr, 1fr),
  gutter: 1em,
  [
    *Name:* #h(0.35em) #line(length: 2.5in, stroke: 0.6pt)
  ],
  [
    *Date:* #h(0.35em) August 20, 2026
  ],
)

#section("Big Idea")

#block(
  width: 100%,
  fill: rgb("#F7F7F7"),
  inset: 0.55em,
  radius: 3pt,
)[
  *Engineered objects are collections of intentional decisions made under constraints.*
]

#section("Learning Goals")

By the end of class, you should be able to:

- identify deliberate design choices in an everyday manufactured object;
- distinguish a *requirement* or *constraint* from a *design decision*;
- use a simple engineering design cycle to improve a design;
- record ideas, tests, and revisions in an engineering journal.

#section("1. Design Detective")

Choose one manufactured object from the classroom.

*Object:* #h(0.35em) #line(length: 3in, stroke: 0.6pt)

*What problem does this object solve?*

#linefill(2)

*Identify three design decisions you notice.*

#enum(
  [ ],
  [ ],
  [ ],
)

#v(0.3em)

*What is one constraint the designer probably faced?*


#linefill(2)

*What is one thing you might change about this design? Why?*

#linefill(2)

*Quick sketch:* Draw the object below. Label at least *three* important features.

#box(
  width: 100%,
  height: 2.35in,
  stroke: 0.7pt + rgb("#AAAAAA"),
  radius: 3pt,
)

#pagebreak()

#section("2. The Engineering Design Cycle")

Today we will use this cycle:

#align(center)[
  #text(size: 13pt, weight: "bold", fill: navy)[
    DEFINE → IDEATE → BUILD → TEST → REVISE
  ]
]

Engineering rarely happens in a straight line. Testing often sends you backward so that you can improve an earlier decision.

#section("3. Constrained Design Challenge — Index-Card Shelf")

*Goal:* Build a structure that holds the assigned object at least *10 cm above the tabletop for 10 seconds.*

*Materials per team:*
- 2 index cards
- 30 cm of masking tape
- scissors
- 1 assigned test object

*Constraints:*
- Use only the supplied materials.
- The structure may not be attached to the table.
- The test object must be supported entirely by the structure.
- Your team gets *two official tests*.
- You must sketch your first design *before* you begin building.

#v(0.4em)

*Before building: What must your design do?*

#linefill(2)

*What choices are still available to your team?*

#linefill(2)

*Version 1 sketch:* Label any important folds, supports, joints, or other features.

#box(
  width: 100%,
  height: 2.25in,
  stroke: 0.7pt + rgb("#AAAAAA"),
  radius: 3pt,
)

#section("4. Test, Learn, Revise")

*Test 1*

Did the structure succeed?  #h(0.5em) YES / NO

What happened?

#linefill(2)

What failed first, or what seems weakest?

#linefill(2)

What will you change before Test 2?

#linefill(2)

*Test 2*

Did the structure succeed?  #h(0.5em) YES / NO

What improved? What still needs work?

#linefill(3)

#section("5. Individual Reflection")

Complete each sentence.

*One decision my group made intentionally was...*

#linefill(2)

*One thing testing taught us was...*

#linefill(2)

*If we built Version 3, I would...*

#linefill(2)

#section("6. Exit Question")

Why might an engineer want to make a CAD model before making the physical object?

#linefill(3)

#section("Homework — Design Noticing")

Choose one everyday manufactured object at home.

- Photograph or sketch it.
- Identify *five* design decisions that someone intentionally made.
- Propose *one improvement* and explain why it might make the object better.

Bring your work to the next class.
