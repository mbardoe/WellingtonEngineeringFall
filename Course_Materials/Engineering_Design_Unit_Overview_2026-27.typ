// Engineering Design: CAD and Fabrication
// Unit descriptions, learning goals, and timeline for Term 1, 2026-2027

#let course-name = "Engineering Design: CAD and Fabrication"
#let school-year = "2026-2027"
#let teacher-name = "Dr. Bardoe"
#let navy = rgb("163a63")
#let blue = rgb("dce9f5")
#let pale = rgb("f5f8fb")
#let gray = rgb("5d6670")

#set page(
  paper: "us-letter",
  margin: (x: 0.72in, top: 0.65in, bottom: 0.68in),
  footer: context align(
    center,
    text(size: 8pt, fill: gray)[
      #course-name | #school-year | Page #counter(page).display()
    ],
  ),
)
#set text(font: "Arial", size: 10pt, fill: rgb("20252a"))
#set par(leading: 0.66em, justify: false)
#set heading(numbering: none)
#show heading.where(level: 1): it => {
  v(0.12in)
  block(
    width: 100%,
    inset: (x: 10pt, y: 7pt),
    fill: navy,
    radius: 3pt,
    text(fill: white, size: 15pt, weight: "bold")[#it.body],
  )
  v(0.08in)
}
#show heading.where(level: 2): it => {
  v(0.10in)
  text(size: 11pt, weight: "bold", fill: navy)[#it.body]
  v(0.03in)
}
#show list: set list(indent: 15pt, body-indent: 5pt, spacing: 4pt)

#let label-box(label, body) = block(
  width: 100%,
  inset: 9pt,
  fill: pale,
  stroke: 0.7pt + rgb("c5d0dc"),
  radius: 3pt,
  [#text(weight: "bold", fill: navy)[#label] #body],
)

#let timeline(rows) = table(
  columns: (1.15in, 1fr),
  stroke: 0.65pt + rgb("aab4be"),
  inset: (x: 7pt, y: 6pt),
  align: (left, left),
  fill: (x, y) => if y == 0 { blue } else if calc.odd(y) { pale },
  table.header([*Meeting(s)*], [*Focus and progression*]),
  ..rows.flatten(),
)

#align(center)[
  #text(size: 22pt, weight: "bold", fill: navy)[#course-name]
  #v(0.08in)
  #text(size: 14pt, weight: "bold")[Unit Overview]
  #v(0.04in)
  #text(size: 10.5pt, fill: gray)[Term 1 | Period 7 | #school-year | #teacher-name]
]

#v(0.22in)

#label-box([Course purpose.], [
  Students will use CAD as an engineering tool to model ideas precisely, predict how parts interact, communicate designs, manufacture physical objects, and manage the process of testing and improving a design. They will create parametric models that respond predictably to changing requirements and use versioning to document and evaluate design decisions.
])

== Course structure

The term includes *29 class meetings*. Skills introduced early in the course continue to be used in later units; the units mark changes in emphasis rather than isolated topics.

#table(
  columns: (0.55in, 2.35in, 0.85in, 1.25in, 1fr),
  stroke: 0.65pt + rgb("aab4be"),
  inset: (x: 6pt, y: 6pt),
  align: (center, left, center, center, left),
  fill: (x, y) => if y == 0 { blue } else if calc.odd(y) { pale },
  table.header([*Unit*], [*Title*], [*Meetings*], [*Class range*], [*Principal product*]),
  [1], [CAD Foundations and Precise Parts], [10], [1–10], [Reverse-engineered part and engineering drawing],
  [2], [Designing for 3D Printing], [8], [11–18], [Useful printed object with a tested revision],
  [3], [Assemblies and Interacting Parts], [3], [19–21], [Working assembly and supporting documentation],
  [4], [Parametric Design and Version Management], [8], [22–29], [Parametric product family with documented design history],
)

== Course-wide learning goals

By the end of the term, students will be able to:

- Create accurate, fully constrained sketches and use them to build three-dimensional parts.
- Plan and construct a CAD model from measurements or a dimensioned drawing.
- Create engineering drawings that communicate enough information to reproduce a part.
- Prepare a CAD model for FDM 3D printing and account for manufacturing constraints.
- Select tolerances and clearances based on physical testing rather than nominal dimensions alone.
- Construct assemblies and evaluate how parts fit, move, and interact.
- Build robust parametric models that can adapt to changing requirements.
- Use named versions and branches to preserve milestones, explore alternatives, and explain design decisions.
- Apply an iterative design process: define, ideate, model, fabricate, test, revise, and communicate.

#pagebreak()

= Unit 1: CAD Foundations and Precise Parts

#label-box([Length.], [10 class meetings (Meetings 1–10)])

== Unit description

Students learn the basic language and workflow of CAD while developing habits of precision, organization, and design intent. They begin with sketches and guided parts, then work from a supplied engineering drawing and finally reverse-engineer a physical object. The unit ends with an engineering drawing that communicates the completed part.

== Learning goals

Students will be able to:

- Navigate an Onshape document and organize Part Studios, parts, and files clearly.
- Measure physical objects with rulers and calipers and choose an appropriate level of precision.
- Create dimensioned, fully constrained sketches using geometric and dimensional constraints.
- Use core features such as extrude, remove, hole, fillet, chamfer, mirror, and pattern.
- Choose a logical feature order and explain how that order affects model behavior.
- Modify dimensions and evaluate whether a model changes predictably.
- Create a part from a dimensioned drawing and from measurements of a physical object.
- Produce an engineering drawing with appropriate views, dimensions, units, and a title block.
- Use Onshape history, comments, and a named version to document a verified model.

== General timeline

#timeline((
  ([Meeting 1], [Course launch, design-process introduction, engineering journals, and a short constrained design challenge.]),
  ([Meetings 2–3], [Onshape navigation, sketching, units, measurement, calipers, technical sketches, and appropriate precision.]),
  ([Meetings 4–6], [Basic features, sketch constraints, design intent, predictable dimension changes, file organization, history, and an individual skill check.]),
  ([Meeting 7], [Construct a part from a supplied dimensioned drawing and justify the feature sequence.]),
  ([Meetings 8–9], [Measure, plan, model, and verify a reverse-engineered physical part.]),
  ([Meeting 10], [Create and critique the engineering drawing for the reverse-engineered part.]),
))

== Evidence of learning

- Fully constrained sketch and guided practice parts
- Drawing-to-model part
- Reverse-engineered CAD part with a named verified version
- Completed engineering drawing

#pagebreak()

= Unit 2: Designing for 3D Printing

#label-box([Length.], [8 class meetings (Meetings 11–18)])

== Unit description

Students move from virtual models to physical objects. They learn the CAD-to-printer workflow and investigate how FDM printing constrains geometry, accuracy, strength, orientation, and size. A tolerance investigation provides shared evidence for design decisions. Students then design, print, test, and revise a useful object that must fit a measured need.

== Learning goals

Students will be able to:

- Export a model, import it into a slicer, orient it, and interpret the print preview.
- Explain how layers, walls, infill, supports, overhangs, bridges, and print orientation affect a part.
- Revise geometry to reduce unnecessary supports and improve printability.
- Distinguish nominal CAD dimensions from the dimensions of a manufactured part.
- Design and use a tolerance coupon to select clearances for press, snug, sliding, or loose fits.
- Define a need and translate measurements and constraints into design criteria.
- Evaluate a proposed design for print time, material use, strength, fit, and usability.
- Test a printed object and make a documented CAD revision based on evidence.

== General timeline

#timeline((
  ([Meeting 11], [Practice the complete CAD-to-printer workflow: export, slice, orient, preview, and estimate time and material.]),
  ([Meeting 12], [Study design for FDM printing, including supports, overhangs, bridges, wall thickness, layer direction, and hole accuracy.]),
  ([Meetings 13–14], [Design, print, measure, and interpret a tolerance coupon; establish practical class guidelines for fit.]),
  ([Meeting 15], [Launch the directed-but-open useful-object project; identify a need, collect measurements, develop concepts, and establish criteria.]),
  ([Meetings 16–17], [Model, confer, review, revise, slice, and submit the first printable version.]),
  ([Meeting 18], [Test the printed object for fit, stability, and usability; document results and revise the model.]),
))

== Evidence of learning

- Printability redesign and sliced sample part
- Tolerance coupon, measurements, and design rules
- Useful-object proposal and first printable version
- Physical prototype, test record, and revised CAD model

#pagebreak()

= Unit 3: Assemblies and Interacting Parts

#label-box([Length.], [3 class meetings (Meetings 19–21)])

== Unit description

Students extend their work from individual parts to systems of parts. They use assemblies to represent fixed and moving relationships, test interaction before fabrication, and identify interference or restricted motion. Because this is a short unit, it emphasizes a focused mechanism challenge and prepares students to consider relationships among parts in the culminating parametric-design work.

== Learning goals

Students will be able to:

- Insert and organize parts in an Onshape assembly.
- Use mate connectors and select appropriate fastened, revolute, and slider mates.
- Build and manipulate a small multi-part mechanism.
- Evaluate range of motion, interference, fit, and access for assembly.
- Predict how a dimensional change to one part may affect the larger assembly.
- Communicate a multi-part design with part drawings and an assembly or exploded view.

== General timeline

#timeline((
  ([Meeting 19], [Learn the assembly workspace, mate connectors, and common mate types through a guided hinge or linkage.]),
  ([Meeting 20], [Complete a small mechanism challenge and use the assembly to test motion and interaction.]),
  ([Meeting 21], [Check interference, range of motion, accessibility, and dimensional changes; prepare part and assembly documentation.]),
))

== Evidence of learning

- Guided moving assembly
- Completed mechanism challenge
- Motion and interference checks
- Part drawings and assembly or exploded view

#pagebreak()

= Unit 4: Parametric Design and Version Management

#label-box([Length.], [8 class meetings (Meetings 22–29)])

== Unit description

Students return to an earlier useful-object design and transform it from a single finished shape into a flexible design system. They identify meaningful inputs, replace repeated or hard-coded dimensions with variables and relationships, create multiple valid variations, and stress-test the model. They also use named versions and a branch to preserve milestones, explore a genuine alternative, and make an evidence-based decision about which design should continue.

== Learning goals

Students will be able to:

- Distinguish controlling parameters from dependent dimensions.
- Use variables, expressions, constraints, symmetry, patterns, and feature order to encode design intent.
- Create multiple useful sizes or configurations from a common model.
- Stress-test a model with extreme parameter values and diagnose why features fail.
- Distinguish automatic history, workspaces, named versions, and branches.
- Preserve a baseline, explore a meaningful alternative in a branch, and compare the two designs using stated criteria.
- Decide whether to merge, retain, or reject an alternative and justify that decision.
- Communicate a final design with a parameter table, change log, engineering drawing, physical test, and live demonstration.

== General timeline

#timeline((
  ([Meeting 22], [Launch the Parametric Product Family Project and audit an existing design for inputs, dependencies, repeated values, and fragile features.]),
  ([Meetings 23–24], [Refactor with variables and relationships; create several variations and stress-test small, typical, and large parameter values.]),
  ([Meeting 25], [Distinguish history, workspaces, versions, and branches; preserve a baseline and open an alternative branch.]),
  ([Meeting 26], [Develop a meaningful functional, structural, manufacturing, or aesthetic alternative in the branch.]),
  ([Meeting 27], [Compare the baseline and alternative against shared criteria; decide whether to merge, retain, or reject the alternative.]),
  ([Meeting 28], [Test the selected design or critical geometry and complete the final version, parameter table, change log, and drawing.]),
  ([Meeting 29], [Present the design history, demonstrate a live parameter change, and defend one accepted and one rejected decision.]),
))

== Evidence of learning

- Parametric-design audit and refactored model
- At least three valid sizes or configurations
- Named baseline and final versions, plus an alternative-design branch
- Criteria-based comparison and recorded design decision
- Physical test of the complete object or critical geometry
- Engineering drawing, parameter table, change log, and final presentation
