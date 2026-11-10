// command: render


#set page(
  paper: "us-letter",
  margin: (x: 0.75in, y: 0.65in),
)

#let blank(len) = box(
  width: len,
  height: 0.2in,
  stroke: (bottom: 0.8pt + black),
)

#set text(
  font: "Arial",
  size: 10.5pt,
)

#set heading(numbering: none)

#let line = [#box(width: 100%, inset: (bottom: 3pt))[#line(length: 100%, stroke: 0.6pt)]]

#align(center)[
  #text(size: 18pt, weight: "bold")[Introduction to Onshape Assemblies]
  #v(3pt)
  #text(size: 11pt)[Building a Simple Hinged Lever]
]

#v(8pt)

#grid(
  columns: (1fr, 1fr),
  gutter: 18pt,
  [*Name:* #line],
  [*Date:* #line],
)

#v(10pt)

#figure(
  image("img/Minimalist CAD Hinge Lever Assembly.png", width: 72%),
  caption: [Our completed hinged-lever assembly],
)

#v(8pt)

= The Big Idea

So far, we have mostly used *Part Studios*. A Part Studio answers the question:

#align(center)[
  #box(
    inset: 8pt,
    stroke: 0.8pt,
    radius: 4pt,
  )[
    *What are the parts?*
  ]
]

An *Assembly* answers a different question:

#align(center)[
  #box(
    inset: 8pt,
    stroke: 0.8pt,
    radius: 4pt,
  )[
    *How are the parts connected, and how are they allowed to move?*
  ]
]

Today we will assemble the mechanism shown above.

= 1. Degrees of Freedom

A completely free rigid object can move in *six* independent ways.

*Three translations:*
- left / right
- forward / backward
- up / down

*Three rotations:*
- rotation about one axis
- rotation about a second axis
- rotation about a third axis

These independent types of movement are called *degrees of freedom*.

#v(4pt)

*Prediction:* Once our lever is assembled, how should it be allowed to move?

#line
#line

= 2. Insert the Parts

Open the *Assembly* tab in Onshape.

Use *Insert* to add:

- [ ] Base
- [ ] Lever
- [ ] Pin, if your version of the model includes a separate pin

Before adding any mates, try dragging the pieces around.

*What do you notice about their movement?*

#line
#line

= 3. Fix the Base

Right-click the base and choose *Fix*.

Try dragging it again.

*Why is it useful to make one part the fixed reference for the assembly?*

#line
#line

= 4. Mate Connectors

Select the *Revolute Mate* tool.

Move your mouse over the circular hole in the lever. Onshape will show possible *mate connectors*.

A mate connector tells Onshape both:

- *where* two parts connect, and
- *how* that connection is oriented.

A mate connector is therefore more than just a point. It acts like a small coordinate system.

#v(4pt)

*What feature of the lever makes the center of the hole a useful mate connector?*

#line
#line

= 5. Create the Revolute Mate

1. Select the mate connector at the center of the lever's pivot hole.
2. Select the matching mate connector at the center of the base's pivot hole.
3. If needed, use the flip or reorientation controls so the parts line up correctly.
4. Accept the mate.

#v(4pt)

- [ ] Revolute mate completed
- [ ] Lever is positioned correctly
- [ ] Lever can rotate about the pivot

#v(4pt)

*Test it:* Click and drag the lever.

*What motion is still allowed?*

#line

*What motions are no longer allowed?*

#line
#line

= 6. Compare Mate Types

Edit the Revolute Mate and temporarily change it to a *Fastened Mate*.

Try dragging the lever again.

#table(
  columns: (1fr, 2fr),
  stroke: 0.6pt,
  inset: 5pt,
  [*Mate Type*], [*Allowed Relative Motion*],
  [Fastened], [],
  [Revolute], [],
)

#v(5pt)

*Why is a Fastened Mate not appropriate for this mechanism?*

#line
#line

Change the mate back to *Revolute* before continuing.

= 7. Add Motion Limits

Edit the Revolute Mate and turn on *Limits*.

Choose a useful range of motion.

*Minimum angle:* #blank(2in)

*Maximum angle:* #blank(2in)

Now drag the lever again.

*Why might a real mechanical design need motion limits?*

#line
#line
#line

= 8. Vocabulary

#table(
  columns: (1.2fr, 3fr),
  stroke: 0.5pt,
  inset: 5pt,
  [*Term*], [*Meaning*],
  [Assembly], [A workspace where parts are positioned and related to one another.],
  [Instance], [One occurrence of a part inside an assembly.],
  [Degree of Freedom], [One independent way an object can move or rotate.],
  [Fix], [Prevent an instance from moving so it can act as a stationary reference.],
  [Mate], [A relationship that controls the position and allowed relative motion of two parts.],
  [Mate Connector], [A coordinate system that defines where and how parts connect.],
  [Revolute Mate], [A mate that allows rotation about one axis.],
  [Fastened Mate], [A mate that allows no relative motion.],
  [Limit], [A restriction on the allowed range of motion of a mate.],
)

= 9. Check Your Understanding

*1. What is the difference between a Part Studio and an Assembly?*

#line
#line

*2. Why did we fix the base?*

#line
#line

*3. What motion does a Revolute Mate allow?*

#line

*4. Why is a Revolute Mate a better choice than a Fastened Mate for this mechanism?*

#line
#line

*5. Prediction: Onshape also has a Slider Mate. What do you think it allows a part to do?*

#line
#line

#v(10pt)

#align(center)[
  #box(
    width: 90%,
    inset: 10pt,
    stroke: 1pt,
    radius: 5pt,
  )[
    #align(center)[
      *The question to ask when building an assembly:*

      #v(4pt)

      _How should these two parts be allowed to move relative to each other?_
    ]
  ]
]
