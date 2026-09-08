
// command: render

#let blank(len) = box(
  width: len,
  height: 0.5pt,
  stroke: 1pt + black
)

#set page(
  paper: "us-letter",
  margin: (x: 0.72in, y: 0.65in),
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
  #text(size: 13pt)[Peer Design Feedback]
]

#v(0.12in)

*Designer:* #blank(2.2in) #h(0.35in)
*Reviewer:* #blank(2.2in)

#v(0.16in)

== Your Job as a Reviewer

Your job is *not* to redesign this object for your classmate.

Your job is to help the designer notice strengths, questions, and opportunities they may not have noticed themselves.

Look at the actual Onshape model. Ask the designer to explain what the object does and how it attaches to the pegboard.

#v(0.1in)

== 1. Understand the Design

*In one sentence, what is this design supposed to do?*

#response(lines: 2)

*How does the design attach to the pegboard?*

#response(lines: 2)

== 2. What Is Working?

Identify one part of the design that you think is particularly successful.

Consider:

- function;
- attachment to the pegboard;
- shape and dimensions;
- simplicity;
- usability;
- CAD construction.

#response(lines: 3)

== 3. Ask a Question

What is one question you have about how the design would work in real life?

#response(lines: 3)

== 4. Look for an Opportunity

Identify *one specific change* that the designer should consider.

Your suggestion might:

- make the attachment more secure;
- make the object easier to use;
- strengthen a weak area;
- reduce unnecessary material;
- improve clearance or fit;
- simplify the design;
- improve how the CAD model is constructed.

#response(lines: 4)



