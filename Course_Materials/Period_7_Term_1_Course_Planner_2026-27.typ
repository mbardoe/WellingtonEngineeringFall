// command: render
// Engineering Design Course Calendar - Period 7, Term 1, 2026-2027
// Homework shown in the final column is due at the start of that class.

#let course-name = "Engineering Design: CAD and Fabrication"
#let teacher-name = "Dr. Bardoe"
#let school-year = "2026-2027"

#set page(
  paper: "us-letter",
  flipped: true,
  margin: (x: 0.42in, top: 0.38in, bottom: 0.42in),
  footer: context align(
    center,
    text(size: 8pt, fill: rgb("666666"))[
      #course-name | #school-year | Page #counter(page).display()
    ],
  ),
)
#set text(font: "Arial", size: 8.5pt)
#set par(leading: 0.5em)

#let meeting(number, unit, date, day, kind, time, content, homework) = (
  number: number,
  unit: unit,
  date: date,
  day: day,
  kind: kind,
  time: time,
  content: content,
  homework: homework,
)

#let no-homework = [#text(fill: rgb("666666"), style: "italic")[None]]

#let unit-1-name = [CAD Foundations and Precise Parts]
#let unit-2-name = [Designing for 3D Printing]
#let unit-3-name = [Assemblies and Interacting Parts]
#let unit-4-name = [Parametric Design and Version Management]

#let unit-1 = (
  meeting(1, unit-1-name, "Aug. 20", "Thu.", "4B*", "12:00–1:10", [
    Course launch. Examine manufactured objects and identify design decisions. Introduce the design cycle and begin engineering journals with a short constrained challenge.
  ], no-homework),
  meeting(2, unit-1-name, "Aug. 25", "Tue.", "5B", "12:00–1:10", [
    Onshape documents, Part Studios, views, navigation, units, and sketches. Create a simple fully dimensioned sketch.
  ], [
    *Design noticing:* Annotate five design decisions in an everyday manufactured object and propose one improvement. _(30 min.)_
  ]),
  meeting(3, unit-1-name, "Aug. 27", "Thu.", "5C", "9:25–10:10", [
    *45-minute class.* Measurement workshop using rulers and calipers. Discuss dimensions, radius, diameter, and appropriate precision; make a measured technical sketch.
  ], no-homework),
  meeting(4, unit-1-name, "Aug. 28", "Fri.", "5D", "2:10–3:20", [
    Basic features: extrude, remove, fillet, chamfer, and hole. Build a guided example part.
  ], [
    *Sketch practice:* Reproduce and fully constrain three supplied sketches; test each by changing one dimension. _(30 min.)_
  ]),
  meeting(5, unit-1-name, "Sept. 1", "Tue.", "5B", "12:00–1:10", [
    Sketch constraints and design intent. Change dimensions and examine which models adapt predictably.
  ], [
    *Measurement practice:* Measure a small object and produce a dimensioned hand sketch with a proposed feature sequence. _(30 min.)_
  ]),
  meeting(6, unit-1-name, "Sept. 3", "Thu.", "5C", "9:25–10:10", [
    *45-minute class.* File organization, naming. Complete a short individual CAD skill check.
  ], no-homework),
  meeting(7, unit-1-name, "Sept. 4", "Fri.", "5D", "2:10–3:20", [
    Build a part from a supplied dimensioned drawing. Choose and justify the order of features.
  ], [
    *Parametric change challenge:* Modify three dimensions in the guided part; record what changed correctly and what broke. _(30 min.)_
  ]),
  meeting(8, unit-1-name, "Sept. 9", "Wed.", "4B", "12:00–1:10", [
    Launch the reverse-engineering challenge. Measure a physical part, plan the feature sequence, and begin modeling it from scratch.
  ], [
    *Drawing-to-model challenge:* Spend 30 minutes building the supplied part. Submit the current model even if unfinished.
  ]),
  meeting(9, unit-1-name, "Sept. 11", "Fri.", "4D", "12:00–1:10", [
    Complete and verify the reverse-engineered part. Compare the CAD dimensions with the original object.
  ], [
    *Reverse-engineering plan:* Complete measurements, an annotated sketch, and a proposed feature order. _(30 min.)_
  ]),
  meeting(10, unit-1-name, "Sept. 15", "Tue.", "4B", "12:00–1:10", [
    Engineering drawings: standard and isometric views, title blocks, dimensions, and avoiding missing or redundant information.
  ], [
    *Model verification:* List discrepancies between the CAD model and physical part; create a named “Measured Model” version. _(30 min.)_
  ]),
)

#let unit-2 = (
  meeting(11, unit-2-name, "Sept. 17", "Thu.", "4D", "12:00–1:10", [
    CAD-to-printer workflow: export, import into the slicer, orient a part, and interpret layers, walls, infill, supports, time, and material estimates.
  ], [
    *Drawing cleanup:* Revise the engineering drawing using the views-and-dimensions checklist. _(30 min.)_
  ]),
  meeting(12, unit-2-name, "Sept. 22", "Tue.", "5B", "12:00–1:10", [
    Design for FDM printing: overhangs, bridges, wall thickness, layer direction, strength, hole accuracy, and supports. Redesign poor examples.
  ], [
    *FDM video response:* Add three timestamped comments—one new idea, one design implication, and one question. _(30 min.)_
  ]),
  meeting(13, unit-2-name, "Sept. 24", "Thu.", "5C", "9:25–10:10", [
    *45-minute class.* Introduce tolerance and clearance. Design a compact coupon that tests several peg-and-hole or tab-and-slot clearances.
  ], no-homework),
  meeting(14, unit-2-name, "Sept. 25", "Fri.", "5D", "2:10–3:20", [
    Examine printed coupons, measure actual results, and determine useful clearances for press, snug, sliding, and loose fits.
  ], [
    *Printability critique:* Diagnose two poorly designed models and sketch or model corrections. _(30 min.)_
  ]),
  meeting(15, unit-2-name, "Sept. 29", "Tue.", "4B", "12:00–1:10", [
    Launch the directed-but-open useful-object project. Identify a need, examine examples, collect measurements, and establish design criteria.
  ], [
    *Tolerance prediction:* Finish the coupon CAD and predict which clearances will create press, snug, sliding, and loose fits. _(30 min.)_
  ]),
  meeting(16, unit-2-name, "Oct. 1", "Thu.", "4D", "12:00–1:10", [
    Model the useful object. Confer on design intent, printability, size, print time, and appropriate tolerances.
  ], [
    *Tolerance analysis:* Compare nominal and measured dimensions; write three practical design rules from the class results. _(30 min.)_
  ]),
  meeting(17, unit-2-name, "Oct. 6", "Tue.", "4B", "12:00–1:10", [
    Peer design review. Revise, slice, estimate print time and material, and submit the first version for printing.
  ], [
    *Useful-object proposal:* Define the need, collect measurements, make two concept sketches, and identify constraints. _(30 min.)_
  ]),
  meeting(18, unit-2-name, "Oct. 8", "Thu.", "4D", "12:00–1:10", [
    Test printed objects for fit, stability, and usability. Revise the CAD model and document what changed.
  ], [
    *Project sprint 1:* Work for 30 minutes on the model; submit a screenshot and identify the next modeling problem.
  ]),
)

#let unit-3 = (
  meeting(19, unit-3-name, "Oct. 14", "Wed.", "4B", "12:00–1:10", [
    Onshape assemblies: insert, fix, mate connectors, fastened mates, revolute mates, and slider mates. Build a guided hinge or linkage.
  ], [
    *Project sprint 2 and fabrication preparation:* Revise after feedback, document one change, choose print orientation and settings, and write a test plan. _(Two 30-min. blocks.)_
  ]),
  meeting(20, unit-3-name, "Oct. 16", "Fri.", "4D", "12:00–1:10", [
    Assembly challenge: build a small multi-part mechanism and use the assembly to test motion and part interaction.
  ], [
    *Testing reflection:* Identify one success, one failure, and one required revision in the useful-object print. _(30 min.)_
  ]),
  meeting(21, unit-3-name, "Oct. 20", "Tue.", "5B", "12:00–1:10", [
    Check interference, range of motion, accessibility, and the effect of dimensional changes. Create part drawings and an assembly or exploded view.
  ], [
    *Assemblies video response:* Use timestamped comments to explain three mate types and when each is useful. _(30 min.)_
  ]),
)

#let unit-4 = (
  meeting(22, unit-4-name, "Oct. 22", "Thu.", "5C", "9:25–10:10", [
    *45-minute class.* Launch the Parametric Product Family Project. Audit a useful-object model: identify inputs, dependencies, repeated dimensions, and changes that break it.
  ], no-homework),
  meeting(23, unit-4-name, "Oct. 23", "Fri.", "5D", "2:10–3:20", [
    Use variables, expressions, relationships, symmetry, patterns, and feature order to replace hard-coded dimensions with meaningful controls.
  ], [
    *Assembly completion:* Finish the mechanism, check motion and interference, and capture evidence of its working range. _(30 min.)_
  ]),
  meeting(24, unit-4-name, "Oct. 27", "Tue.", "5B", "12:00–1:10", [
    Create configurations or defined size variations. Stress-test the model with unusually small, large, narrow, and wide inputs; diagnose failures.
  ], [
    *Parametric audit:* Identify controlling and dependent dimensions, repeated values, and two changes that currently break the model. _(30 min.)_
  ]),
  meeting(25, unit-4-name, "Oct. 29", "Thu.", "5C", "9:25–10:10", [
    *45-minute class.* Distinguish history, versions, workspaces, and branches. Create a named baseline version, then branch to explore an alternative.
  ], no-homework),
  meeting(26, unit-4-name, "Oct. 30", "Fri.", "5D", "2:10–3:20", [
    Develop a meaningful alternative—such as a new mounting method, structure, capacity, material strategy, or appearance—in the design branch.
  ], [
    *Parametric refactor and versioning response:* Test small, typical, and large values; explain history, versions, workspaces, and branches; create a baseline version. _(Two 30-min. blocks.)_
  ]),
  meeting(27, unit-4-name, "Nov. 4", "Wed.", "5B", "12:00–1:10", [
    Compare the baseline and alternative against shared criteria. Decide whether to merge, retain, or reject the alternative; prepare a critical physical test if needed.
  ], [
    *Alternative-design sprint:* Work for 30 minutes in the branch. Then compare the alternatives and justify which should continue. _(Two 30-min. blocks.)_
  ]),
  meeting(28, unit-4-name, "Nov. 5", "Thu.", "5C", "9:25–10:10", [
    *45-minute class.* Test the selected design or critical geometry. Create the final named version, engineering drawing, parameter table, and change log.
  ], no-homework),
  meeting(29, unit-4-name, "Nov. 6", "Fri.", "5D", "2:10–3:20", [
    Final design review and gallery walk. Demonstrate a live parameter change, explain the version history, and defend accepted and rejected decisions.
  ], [
    *Final documentation and rehearsal:* Complete the drawing, parameter table, change log, test explanation, and practice the live demonstration. _(Two 30-min. blocks.)_
  ]),
)

#let planner-page(unit-number, unit-name, meetings, first: false) = {
  if not first { pagebreak() }
  grid(
    columns: (1fr, auto),
    align: (left, right),
    row-gutter: 5pt,
    [#text(size: 15pt, weight: "bold", fill: rgb("0b326b"))[#course-name]],
    [#text(size: 10pt, weight: "bold")[Term 1]],
    [#teacher-name],
    [Period 7 | #school-year],
  )
  v(0.11in)
  block(
    width: 100%,
    inset: (x: 8pt, y: 5pt),
    fill: rgb("0b326b"),
    radius: 2pt,
    text(fill: white, weight: "bold", size: 11pt)[Unit #unit-number: #unit-name],
  )
  v(0.09in)
  table(
    columns: (0.38in, 1.32in, 1.02in, 1.05in, 3.93in, 2.40in),
    rows: (0.36in,) + (1.18in,) * meetings.len(),
    stroke: 0.65pt + rgb("9aa6b2"),
    inset: 5pt,
    align: (center, left, center, center, left, left),
    fill: (x, y) => if y == 0 { rgb("dce8f5") } else if calc.odd(y) { rgb("f8fafc") },
    table.header(
      [*Class*], [*Unit*], [*Date*], [*Time*], [*Class content / activities*], [*Homework due at start*],
    ),
    ..meetings.map(m => (
      [*#m.number*],
      [*Unit #unit-number*\ #m.unit],
      [#m.day\ #m.date\ #text(size: 7.5pt, fill: rgb("666666"))[#m.kind]],
      [#m.time],
      m.content,
      m.homework,
    )).flatten(),
  )
}

#let unit-pages(unit-number, unit-name, meetings, first: false) = {
  let page-count = calc.ceil(meetings.len() / 5)
  for i in range(page-count) {
    let start = i * 5
    let end = calc.min(start + 5, meetings.len())
    planner-page(
      unit-number,
      unit-name,
      meetings.slice(start, end),
      first: first and i == 0,
    )
  }
}

#unit-pages(1, unit-1-name, unit-1, first: true)
#unit-pages(2, unit-2-name, unit-2)
#unit-pages(3, unit-3-name, unit-3)
#unit-pages(4, unit-4-name, unit-4)
