
// command: render

#let blank(len) = box(
  width: len,
  height: 0.5pt,
  stroke: 1pt + black
)

#set page(
  paper: "us-letter",
  margin: (x: 0.7in, y: 0.65in),
)

#set text(size: 10.5pt)
#set par(leading: 0.7em)
#set heading(numbering: none)

#let linefill() = line(length: 100%, stroke: 0.6pt)

#let response(lines: 2) = {
  for i in range(lines) {
    v(0.18in)
    linefill()
  }
}

#align(center)[
  #text(size: 18pt, weight: "bold")[Pegboard Design Challenge]
  #v(0.04in)
  #text(size: 13pt)[Day 2 — Critique, Revise, and Reflect]
]

#v(0.12in)

#grid(
  columns: (1fr, 1fr),
  gutter: 0.4in,
  [*Name:* #blank(2.2in)],
  [*Date:* #blank(1.7in)],
)

#v(0.16in)

== Today's Goal

Engineering design rarely ends with the first working idea.

Today you will show your *Draft Design* to two classmates, listen to their feedback, decide what is useful, and make at least *one meaningful revision* to your design.

You are not required to follow every suggestion.

Your responsibility as the designer is to decide:

#align(center)[
  *What change would actually make my design better?*
]

#v(0.12in)

== 1. Present Your Draft

Show your Onshape model to your reviewer.

Be prepared to explain:

- what your object does;
- who might use it;
- how it attaches to the pegboard;
- which dimensions are important;
- anything you are currently unsure about.

#v(0.08in)

== 2. Gather Feedback

Complete two peer-feedback conversations.

*Feedback from Reviewer 1 — What idea, question, or suggestion seems most important?*

#response(lines: 3)

*Feedback from Reviewer 2 — What idea, question, or suggestion seems most important?*

#response(lines: 3)

#pagebreak()

#align(center)[
  #text(size: 16pt, weight: "bold")[Make a Design Decision]
]

#v(0.12in)

== 3. Evaluate the Feedback

Compare the feedback you received.

*What feedback do you agree with? Why?*

#response(lines: 3)

*Was there any feedback you decided not to follow? Why?*

#response(lines: 3)

== 4. Plan Your Revision

You must make at least *one meaningful change* that is inspired by or responds to the feedback you received.

*Describe the change you intend to make.*

#response(lines: 3)

*Why do you think this change will improve the design?*

#response(lines: 3)

*Sketch the change if a drawing will help you plan it.*

#block(
  width: 100%,
  height: 2.0in,
  stroke: 0.7pt,
  inset: 0.12in,
)[]

#pagebreak()

#align(center)[
  #text(size: 16pt, weight: "bold")[Revise and Reflect]
]

#v(0.12in)

== 5. Revise Your Onshape Model

Return to your *Draft Design* and implement your revision.

While revising, check:

- [ ] Does the part still fit the provided pegboard?
- [ ] Are important dimensions intentional?
- [ ] Are functionally important sketches appropriately constrained?
- [ ] Does the revised design perform its intended function?
- [ ] Is the feature tree understandable?
- [ ] Did the revision actually improve the design?

#v(0.14in)

== 6. Compare Draft and Final Design

*What specifically changed between your Draft Design and Final Design?*

#response(lines: 2)

*What effect did the change have on the design?*

#response(lines: 2)

*If you had another class period to improve this design, what would you investigate or change next?*

#response(lines: 3)

== 7. Final Submission

Before submitting:

- [ ] Give your part a meaningful name.
- [ ] Inspect the design from several angles.
- [ ] Check its interaction with the pegboard.
- [ ] Clean up unnecessary sketches or features.
- [ ] Make sure your Part Studio is understandable.
- [ ] Create a Version named *Final Design*.
- [ ] Submit your assignment in Onshape.

#v(0.15in)

#block(
  width: 100%,
  stroke: 0.8pt,
  inset: 0.12in,
)[
  *Final Reflection*

  Good engineering is not about getting the first idea right.

  It is about creating an idea, testing it, listening to useful information,
  and making intentional decisions about what to improve.
]

