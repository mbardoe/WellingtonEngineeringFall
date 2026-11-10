// command: render
// Mechanical Desktop Indicator Design Challenge
// Student project packet for Engineering CAD.

#set page(
  paper: "us-letter",
  margin: (x: 0.68in, y: 0.62in),
  numbering: "1",
)
#set text(size: 10.5pt)
#set par(leading: 0.7em)
#set heading(numbering: none)

#let navy = rgb("0B2239")
#let blue = rgb("E3EFF8")
#let pale = rgb("F3F5F7")
#let green = rgb("DDEED9")
#let gold = rgb("F7E8BD")

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
    line(length: 100%, stroke: 0.45pt + rgb("8B96A1"))
  }
}

#let cell-space(h: 0.28in) = block(height: h)[]

#let writing-box(title, height: 1.4in) = block(
  width: 100%,
  height: height,
  inset: 8pt,
  radius: 3pt,
  stroke: 0.6pt + rgb("8B96A1"),
)[
  #text(weight: "bold", fill: navy)[#title]
]

#let checkbox(body) = [#box(width: 9pt, height: 9pt, stroke: 0.8pt + black)[] #h(4pt)#body]

#let callout(title, body, fill-color: blue) = block(
  width: 100%,
  inset: 9pt,
  radius: 4pt,
  fill: fill-color,
  stroke: 0.6pt + navy,
)[
  #text(weight: "bold", fill: navy)[#title]
  #body
]

#align(center)[
  #text(size: 21pt, weight: "bold", fill: navy)[Mechanical Desktop Indicator]
  #text(size: 13pt, weight: "bold")[3D-Printing Design Challenge]
]

#v(0.12in)

#grid(
  columns: (1fr, 1fr),
  gutter: 0.35in,
  [*Name:* #line(length: 2.15in, stroke: 0.6pt)],
  [*Class:* #line(length: 1.75in, stroke: 0.6pt)],
)

#v(0.12in)

#callout[The challenge][
  Design and 3D print a small desktop object that visibly changes between at least two states when a person moves a lever, knob, slider, handle, or other control.

  Your input control and visible output must be distinct features. A mechanism must transmit or transform the user’s motion.
]

= What might it do?

Your indicator might:

- change between *Available* and *Busy*;
- raise or lower a flag;
- move a pointer among several choices;
- reveal one of two messages;
- rotate between different faces or symbols;
- open and close jaws, wings, shutters, or panels; or
- perform another clear, repeatable change of state.

These are starting points, not templates. Your object should reflect a particular purpose, audience, or personality.

= The motion system

#align(center)[
  #block(width: 92%, fill: pale, inset: 10pt, radius: 4pt)[
    #align(center)[
      *User input*  →  *mechanism*  →  *visible output*

      lever, knob, or slider #h(0.45in) pivot, cam, linkage, or guide #h(0.45in) flag, message, pointer, or motion
    ]
  ]
]

#v(0.1in)

Possible mechanisms include a pivoting lever, rotating axle, sliding track, cam and follower, crank and slider, or simple linkage. You may use a different mechanism if you can explain how it works.

= Required design features

Your finished design must:

#grid(
  columns: (1fr, 1fr),
  gutter: 10pt,
  row-gutter: 7pt,
  checkbox[Have at least *three printed parts*.],
  checkbox[Change between at least *two clear states*.],
  checkbox[Include a distinct input and output.],
  checkbox[Include at least one moving joint.],
  checkbox[Use an intentional clearance dimension.],
  checkbox[Operate repeatedly without falling apart.],
  checkbox[Stand securely on a desktop.],
  checkbox[Fit within a 120 mm cube when assembled.],
)

#v(0.12in)

The moving joint may use a printed axle, pin and hole, hinge, sliding track, cam, or another approved connection. Simple hardware such as a screw, dowel, magnet, or rubber band may be used with approval, but the design must remain primarily 3D printed.

= Design for FDM printing

Your model must show that you considered:

- *Orientation:* Which face of each part should touch the build plate?
- *Supports:* Can geometry or orientation reduce support material? Will supports touch an important surface?
- *Layer direction:* How will forces act on the printed layers?
- *Wall thickness:* Are levers, pins, and walls thick enough to print and function?
- *Hole accuracy:* Will printed pins, axles, and holes have usable dimensions?
- *Clearance:* Is there deliberate space between parts that must rotate or slide?
- *Assembly:* Can the mechanism actually be put together after printing?

#callout(fill-color: gold)[Printing budget][
  Target no more than *75 g of filament* and *two hours of total print time* using the class profile. Designs exceeding either target require approval.
]

#pagebreak()

= Day 1 — Ideate and prototype

Your goal today is to decide what the object communicates, select a mechanism, and test the motion before investing time in detailed CAD.

== Step 1: Define the purpose

Who is the object for, where will it sit, and what information or change will it display?
#answer(lines: 3)

== Step 2: Generate three concepts

Create three quick concepts. Each sketch should show the user input, visible output, and proposed mechanism.

#grid(
  columns: (1fr, 1fr, 1fr),
  gutter: 8pt,
  writing-box[Concept A],
  writing-box[Concept B],
  writing-box[Concept C],
)

#v(0.12in)

#table(
  columns: (1.35in, 1.45in, 1.45in, 1.45in),
  inset: 6pt,
  stroke: 0.45pt + rgb("AAB3BD"),
  table.header(
    //fill: navy,
    text(fill: white, weight: "bold")[Question],
    text(fill: white, weight: "bold")[Concept A],
    text(fill: white, weight: "bold")[Concept B],
    text(fill: white, weight: "bold")[Concept C],
  ),
  [What moves?], [#cell-space()], [ ], [ ],
  [Why is it useful or interesting?], [#cell-space(h: 0.38in)], [ ], [ ],
  [Hardest printing problem?], [#cell-space(h: 0.38in)], [ ], [ ],
)

== Step 3: Select and prototype

Chosen concept: #line(length: 2in, stroke: 0.6pt)

Why is this the strongest concept?
#answer(lines: 2)

Make a quick motion prototype using paper, cardboard, fasteners, craft materials, LEGO, or simple digital geometry. It does not need to resemble the finished product. It needs to answer: *Will this motion work?*

#grid(
  columns: (1fr, 1fr),
  gutter: 0.25in,
  writing-box(height: 1.75in)[Sketch the mechanism and label its parts.],
  writing-box(height: 1.75in)[Sketch an exploded view showing assembly.],
)

What did your prototype teach you?
#answer(lines: 2)

== Day 1 checkpoint

#grid(
  columns: (1fr, 1fr),
  gutter: 10pt,
  row-gutter: 7pt,
  checkbox[Three concepts completed],
  checkbox[One concept selected],
  checkbox[Input and output identified],
  checkbox[Mechanism tested or demonstrated],
  checkbox[Major parts identified],
  checkbox[Likely print risks identified],
)

#pagebreak()

= Day 2 — Design in Onshape

Your goal today is a complete mechanical draft—not polished decoration.

== Recommended modeling order

1. Create the base or frame that establishes the overall size.
2. Model the moving output part.
3. Model the input control.
4. Add the axle, pin, guide, cam, or linkage connecting them.
5. Add stops so the mechanism cannot move farther than intended.
6. Check that the parts can be assembled.
7. Add nonessential styling only after the mechanism is complete.

== CAD requirements

#grid(
  columns: (1fr, 1fr),
  gutter: 10pt,
  row-gutter: 7pt,
  checkbox[Separate parts are separate Onshape parts.],
  checkbox[Important sketches are fully constrained.],
  checkbox[Key dimensions are intentional.],
  checkbox[Repeated dimensions use variables when useful.],
  checkbox[Part names clearly describe their functions.],
  checkbox[A named version records the Day 2 draft.],
  checkbox[Parts do not unintentionally overlap.],
  checkbox[Assembly order is possible.],
)

== Plan the critical connection

#table(
  columns: (1.65in, 1.4in, 1.4in, 1.4in),
  inset: 6pt,
  stroke: 0.45pt + rgb("AAB3BD"),
  table.header(
    //fill: navy,
    text(fill: white, weight: "bold")[Feature],
    text(fill: white, weight: "bold")[Part 1 dimension],
    text(fill: white, weight: "bold")[Part 2 dimension],
    text(fill: white, weight: "bold")[Clearance],
  ),
  [Pin and hole], [#cell-space()], [ ], [ ],
  [Slider and track], [#cell-space()], [ ], [ ],
  [Other connection], [#cell-space()], [ ], [ ],
)

#v(0.1in)

Which connection is most likely to fail or fit poorly, and why?
#answer(lines: 2)

Design a small connection test if the fit is uncertain. The test should reproduce only the critical geometry—not the entire project.

Describe the test you will print:
#answer(lines: 2)

== Day 2 checkpoint

By the end of class, your Onshape document should contain all major functional parts, the connection dimensions, an assembly plan, and a named *Day 2 Draft* version.

#pagebreak()

= Day 3 — Review, revise, and prepare for printing

== Peer design review

Reviewer: #line(length: 2.1in, stroke: 0.6pt)

Operate the model or study the mechanism with its designer. Do not begin with decoration. Focus on function, assembly, and printability.

#table(
  columns: (2.2in, 0.65in, 0.65in, 2.15in),
  inset: 6pt,
  stroke: 0.45pt + rgb("AAB3BD"),
  table.header(
    //fill: navy,
    text(fill: white, weight: "bold")[Review question],
    text(fill: white, weight: "bold")[Yes],
    text(fill: white, weight: "bold")[Not yet],
    text(fill: white, weight: "bold")[Comment],
  ),
  [Are the input and output clear?], [ ], [ ], [#cell-space()],
  [Can the mechanism move without interference?], [ ], [ ], [#cell-space()],
  [Can the parts be assembled?], [ ], [ ], [#cell-space()],
  [Is clearance included at moving interfaces?], [ ], [ ], [#cell-space()],
  [Are thin or fragile features oriented well?], [ ], [ ], [#cell-space()],
  [Can supports be removed from every location?], [ ], [ ], [#cell-space()],
  [Are important surfaces protected from supports?], [ ], [ ], [#cell-space()],
  [Is the print budget reasonable?], [ ], [ ], [#cell-space()],
)

#v(0.1in)

The most important improvement I recommend is:
#answer(lines: 2)

== Revision decision

What change will you make in response to the review?
#answer(lines: 2)

Why will that change improve the design?
#answer(lines: 2)

== Prepare each part in Bambu Studio

For every part:

#grid(
  columns: (1fr, 1fr),
  gutter: 10pt,
  row-gutter: 7pt,
  checkbox[Confirm the model’s size and units.],
  checkbox[Choose and justify orientation.],
  checkbox[Inspect walls and holes in Preview.],
  checkbox[Inspect bridges and overhangs.],
  checkbox[Check support locations and removal.],
  checkbox[Consider layer direction under load.],
  checkbox[Record time and filament estimates.],
  checkbox[Save the Bambu Studio project.],
)

#v(0.12in)

#table(
  columns: (1.3in, 1.65in, 0.85in, 1.0in, 1.1in),
  inset: 6pt,
  stroke: 0.45pt + rgb("AAB3BD"),
  table.header(
    //fill: navy,
    text(fill: white, weight: "bold")[Part],
    text(fill: white, weight: "bold")[Build-plate face],
    text(fill: white, weight: "bold")[Support?],
    text(fill: white, weight: "bold")[Time],
    text(fill: white, weight: "bold")[Filament],
  ),
  [#cell-space()], [ ], [ ], [ ], [ ],
  [#cell-space()], [ ], [ ], [ ], [ ],
  [#cell-space()], [ ], [ ], [ ], [ ],
  [#cell-space()], [ ], [ ], [ ], [ ],
)

== Day 3 submission checklist

#grid(
  columns: (1fr, 1fr),
  gutter: 10pt,
  row-gutter: 7pt,
  checkbox[Onshape document shared correctly],
  checkbox[Named print-ready version created],
  checkbox[Peer feedback recorded],
  checkbox[At least one revision completed],
  checkbox[Connection test included if needed],
  checkbox[Bambu Studio project saved],
  checkbox[Time and material within budget],
  checkbox[Teacher print review requested],
)

#callout[Print queue rule][
  Students make and justify the manufacturing decisions. The teacher approves files and controls the printer queue. Do not send a job directly to a printer unless specifically authorized.
]

#pagebreak()

= After Day 3 — Print, test, and improve

Printing begins after Day 3. Your first print may be a connection test, a draft part, or the full design, depending on risk and print time.

When your print is complete:

1. Compare the physical parts with the CAD model and slicer preview.
2. Test the mechanism at least ten times.
3. Record problems involving fit, friction, strength, supports, surface quality, or assembly.
4. Make at least one justified improvement. The improvement may be a CAD revision, changed orientation, or changed print setting.
5. Create a final named version before any revised print.

== Print-test record

What worked as intended?
#answer(lines: 3)

What did not work as intended?
#answer(lines: 3)

What evidence did the physical print provide?
#answer(lines: 2)

What will you change before the final version?
#answer(lines: 3)

= Final deliverables

- The assembled and functioning desktop indicator
- A shared Onshape document with clearly named parts and versions
- The approved Bambu Studio project
- This completed design packet
- A brief demonstration explaining the input, mechanism, output, and most important revision

= Evaluation

#table(
  columns: (1.75in, 0.75in, 3.4in),
  inset: 7pt,
  stroke: 0.45pt + rgb("AAB3BD"),
  table.header(
    //fill: navy,
    text(fill: white, weight: "bold")[Category],
    text(fill: white, weight: "bold")[Points],
    text(fill: white, weight: "bold")[Evidence of success],
  ),
  [Function and mechanism], [30], [The input reliably produces a clear output; the mechanism moves repeatedly and the object stands securely.],
  [Design for FDM], [25], [Orientation, supports, clearances, wall thickness, holes, layer direction, time, and material are handled thoughtfully.],
  [CAD quality], [20], [Parts are intentionally dimensioned, organized, named, constrained, and possible to assemble.],
  [Testing and revision], [15], [Prototype, peer feedback, print evidence, and at least one justified improvement influence the final design.],
  [Communication and finish], [10], [The purpose and motion are understandable; the student can explain important choices and tradeoffs.],
)

#v(0.12in)

#align(center)[
  #text(size: 9pt, fill: rgb("4E5964"))[
    A successful print is not merely an object that finished printing. It is an object designed for its process, its motion, and its purpose.
  ]
]
