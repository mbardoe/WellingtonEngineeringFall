// command: render
// 3D Printing Introduction — Student Handout

#set page(
  paper: "us-letter",
  margin: (x: 0.68in, y: 0.62in),
  numbering: "1",
)
#set text(size: 10.5pt)
#set par(leading: 0.72em)
#set heading(numbering: none)

#let navy = rgb("17365D")
#let blue = rgb("DCEAF7")
#let pale = rgb("F3F5F7")
#let green = rgb("DCEFD8")

#show heading.where(level: 1): it => [
  #v(0.11in)
  #text(size: 15pt, weight: "bold", fill: navy)[#it.body]
  #v(0.04in)
]

#show heading.where(level: 2): it => [
  #v(0.07in)
  #text(size: 11.5pt, weight: "bold", fill: navy)[#it.body]
  #v(0.02in)
]

#let answer(lines: 1) = {
  for _ in range(lines) {
    v(0.17in)
    line(length: 100%, stroke: 0.45pt + rgb("9AA5B1"))
  }
}

#let writing-cell(h: 0.3in) = block(height: h)[]

#let check(text-body) = [#box(width: 9pt, height: 9pt, stroke: 0.8pt + black) #h(4pt)#text-body]

#let callout(title, body) = block(
  width: 100%,
  inset: 9pt,
  radius: 4pt,
  fill: blue,
  stroke: 0.6pt + navy,
)[
  #text(weight: "bold", fill: navy)[#title]
  #body
]

#align(center)[
  #text(size: 20pt, weight: "bold", fill: navy)[From CAD to Plastic]
  #text(size: 13pt, weight: "bold")[Introduction to 3D Printing]
]

#v(0.12in)

#grid(
  columns: (1fr, 1fr),
  gutter: 0.35in,
  [*Name:* #line(length: 2.15in, stroke: 0.6pt)],
  [*Date:* #line(length: 1.75in, stroke: 0.6pt)],
)

#v(0.13in)

#callout[The big idea][
  A 3D printer does not make an object all at once. It prints a stack of thin, two-dimensional layers.
]

= Part 1 — Notice the evidence

Examine the sample prints. Record two observations that give you clues about how they were made.

*1.* #answer(lines: 1)

*2.* #answer(lines: 1)

= Part 2 — How the process works

#align(center)[
  #block(width: 92%, fill: pale, inset: 10pt, radius: 4pt)[
    #align(center)[
      *CAD solid*  →  *mesh file*  →  *slices and toolpaths*  →  *plastic layers*  →  *finished part*

      Onshape #h(1.2in) Bambu Studio #h(0.85in) 3D printer
    ]
  ]
]

#v(0.1in)

Label or describe the job of each component during the demonstration.

#table(
  columns: (1.25in, 1fr),
  inset: 6pt,
  stroke: 0.45pt + rgb("B9C2CC"),
  table.header(

    text(fill: white, weight: "bold")[Component],
    text(fill: white, weight: "bold")[What it does],
  ),
  [Filament], [#writing-cell()],
  [Extruder], [#writing-cell()],
  [Hot end/nozzle], [#writing-cell()],
  [Build plate], [#writing-cell()],
  [X/Y/Z motion], [#writing-cell()],
)

== Four design ideas

*1. Orientation matters.* The same CAD model can be manufactured in several orientations. Orientation can change bed contact, supports, surface quality, time, and strength.

Which face would you place on the build plate first, and why?
#answer(lines: 2)

*2. New plastic needs something beneath it.* A printer can handle some overhangs and bridge some gaps, but it cannot reliably print into open air. *Supports* are temporary structures added by the slicer.

One cost or disadvantage of supports is:
#answer(lines: 1)

*3. Most prints are not solid.* The outside shape is made from walls plus top and bottom layers. *Infill* is the internal structure. More infill is not automatically better.

Why might an engineer avoid making every part 100% solid?
#answer(lines: 1)

*4. Fit requires space.* A 10.00 mm printed peg will not necessarily slide into a 10.00 mm printed hole. *Clearance* is intentionally designed space between mating parts. *Tolerance* describes acceptable variation from a target dimension.

If two printed parts must move, what should the designer plan to test?
#answer(lines: 1)

= Part 3 — From Onshape to a sliced preview

Follow the class demonstration. Check each step after you complete it.

#grid(
  columns: (1fr, 1fr),
  gutter: 10pt,
  row-gutter: 7pt,
  check[Open the shared Onshape part.],
  check[Export the part as STL or 3MF.],
  check[Open Bambu Studio.],
  check[Choose the class printer/nozzle.],
  check[Choose the class filament preset.],
  check[Import the model.],
  check[Check its size and units.],
  check[Place and orient it on the plate.],
  check[Click *Slice Plate*.],
  check[Open *Preview*.],
)

#v(0.1in)

Move the layer slider through the sliced model. Find each feature:

#grid(
  columns: (1fr, 1fr, 1fr),
  gutter: 8pt,
  row-gutter: 7pt,
  check[First layer],
  check[Walls],
  check[Infill],
  check[Top layers],
  check[Supports, if any],
  check[Estimated time],
)

#v(0.1in)

What did you notice when you moved the layer slider?
#answer(lines: 2)

#pagebreak()

= Part 4 — Orientation challenge

Prepare the shared model in *two different orientations*. Slice both versions before choosing one. Your goal is not to find a magic “correct” answer; it is to make a defensible engineering decision.

#table(
  columns: (2.0in, 1.95in, 1.95in),
  inset: 7pt,
  stroke: 0.5pt + rgb("AAB3BD"),
  table.header(
    text(fill: white, weight: "bold")[Evidence],
    text(fill: white, weight: "bold")[Orientation A],
    text(fill: white, weight: "bold")[Orientation B],
  ),
  [Face touching the build plate], [#writing-cell()], [#writing-cell()],
  [Estimated print time], [#writing-cell()], [#writing-cell()],
  [Estimated filament use], [#writing-cell()], [#writing-cell()],
  [Support required? How much?], [#writing-cell(h: 0.4in)], [#writing-cell(h: 0.4in)],
  [Surfaces likely affected by supports or the bed], [#writing-cell(h: 0.48in)], [#writing-cell(h: 0.48in)],
  [Layer direction and possible weak areas], [#writing-cell(h: 0.48in)], [#writing-cell(h: 0.48in)],
  [Other advantage or disadvantage], [#writing-cell(h: 0.4in)], [#writing-cell(h: 0.4in)],
)

#v(0.12in)

#block(width: 100%, fill: green, inset: 9pt, radius: 4pt, stroke: 0.6pt + rgb("4D7D45"))[
  *Our recommendation:* Print the part in orientation #line(length: 0.45in, stroke: 0.6pt).

  *Claim:* This is the better choice because
  #answer(lines: 2)

  *Evidence from the slicer:*
  #answer(lines: 2)
]

= Part 5 — Printer safety and class workflow

- The nozzle and build plate may be hot.
- Keep hands, hair, sleeves, and tools away from the moving printer.
- Do not reach into the printer while it is operating.
- Students prepare and justify files; the teacher reviews the file and controls the print queue.

Why do you think the first layer is especially important?
#answer(lines: 2)

= Exit ticket

*1. Complete the sentence:* A slicer is software that
#answer(lines: 1)

*2. Name one way orientation can change a print.*
#answer(lines: 1)

*3. What is one question you still have about 3D printing?*
#answer(lines: 1)

#v(0.08in)

#align(center)[
  #text(size: 9pt, fill: rgb("59636E"))[
    Today you control the slicing decisions. Your teacher controls the printer queue.
  ]
]
