// command: render
// Engineering Design: CAD and Fabrication
// Day 5 Student Handout — Multi-Feature Design Challenge

#set page(
  paper: "us-letter",
  margin: (x: 0.65in, y: 0.6in),
)

#set text(font: "Arial", size: 10.3pt)
#set par(leading: 0.62em)

#let navy = rgb("#17365D")
#let light = rgb("#EAF1F8")
#let pale = rgb("#F7F7F7")
#let rule = rgb("#BBBBBB")

#let section(title) = [
  #v(0.35em)
  #block(
    width: 100%,
    fill: light,
    inset: (x: 0.45em, y: 0.28em),
    radius: 3pt,
  )[
    #text(weight: "bold", fill: navy, size: 12pt)[#title]
  ]
  #v(0.2em)
]

#align(center)[
  #text(size: 19pt, weight: "bold", fill: navy)[Engineering Design: CAD and Fabrication]
  #v(0.1em)
  #text(size: 15pt, weight: "bold")[Multi-Feature Design Challenge]
]

#v(0.4em)

#grid(
  columns: (1fr, 1fr),
  gutter: 1em,
  [*Name:* #h(0.25em) #line(length: 2.35in, stroke: 0.6pt)],
  [*Date:* #h(0.25em) #line(length: 1.65in, stroke: 0.6pt)],
)

#section("The Challenge")

Choose *one* of the four parts below and build a recognizable, well-organized version in Onshape.

Your goal is not to reproduce every tiny manufacturing detail. Your goal is to show that you can build a part as a *sequence of sketches and features*.

#block(
  width: 100%,
  fill: pale,
  inset: 0.5em,
  radius: 3pt,
)[
  *A useful modeling routine:*  
  *What is the base shape? → What gets added? → What gets removed? → What repeats? → Where should the next sketch live?*
]

#section("Option 1 — U-Shaped Sensor Bracket")

#image("img/Sensor U shaped bracket.png", width: 2.5in)

*Good for practicing:* multiple sketches, sketches on different faces, holes, fillets, symmetry or mirror.

*Possible feature plan:*  
base → upright sides → side holes → mounting holes → fillets

#section("Option 2 — Ball Mount")

#image("img/Ball Mount.png", width: 2.5in)

*Good for practicing:* stacked additive features, mounting holes, rounded geometry, fillets/chamfers.

*Possible feature plan:*  
base → neck/support → ball or rounded top → mounting holes → edge treatment

#section("Option 3 — AA Battery Holder")

#image("img/battery holder.jpg", width: 2.5in)

*Good for practicing:* fit, adding walls/supports, removing material, mounting holes, fillets.

*Possible feature plan:*  
base → supports/walls → battery recess → end stops or tabs → mounting holes

#section("Option 4 — Simple Half Hinge")

#image("img/half_hinge.jpg", width: 2.5in)

*Good for practicing:* cylindrical features, holes, repeated geometry, patterns, feature order.

*Possible feature plan:*  
base plate → hinge barrel(s) → pin hole → mounting holes → pattern → fillets/chamfers

#pagebreak()

#section("Before You Model")

Spend a few minutes planning before you start clicking tools.

*1. Which option did you choose?*

#line(length: 100%, stroke: 0.5pt + rgb("#AAAAAA"))
#v(0.65em)

*2. What is the simplest base shape?*

#line(length: 100%, stroke: 0.5pt + rgb("#AAAAAA"))
#v(0.65em)

*3. What geometry will you need to add later?*

#line(length: 100%, stroke: 0.5pt + rgb("#AAAAAA"))
#v(0.65em)

*4. What geometry will you need to remove?*

#line(length: 100%, stroke: 0.5pt + rgb("#AAAAAA"))
#v(0.65em)

*5. Does anything repeat or need to stay symmetric?*

#line(length: 100%, stroke: 0.5pt + rgb("#AAAAAA"))
#v(0.65em)

#section("Write a Feature Plan")

Your plan may change while you work. That is normal. The purpose is to give yourself a starting strategy.

#table(
  columns: (0.75in, 1.8in, 1.45in, 1fr),
  inset: 5pt,
  stroke: 0.5pt + rule,
  table.header(
    [*Step*],
    [*Sketch / geometry*],
    [*Feature*],
    [*What this step accomplishes*],
  ),
  [1], [], [], [],
  [2], [], [], [],
  [3], [], [], [],
  [4], [], [], [],
  [5], [], [], [],
  [6], [], [], [],
)

#section("While You Work")

If you get stuck, do *not* immediately start over. Ask yourself:

- What feature am I trying to create?
- What face or plane should the sketch be on?
- Am I adding material or removing material?
- Could I make one good feature and then *pattern* or *mirror* it?
- Is this new geometry really part of the previous sketch, or should it be a new sketch?
- Which dimension or constraint should control this relationship?

#block(
  width: 100%,
  fill: pale,
  inset: 0.5em,
  radius: 3pt,
)[
  *Guideline:* One sketch should usually describe one clear modeling idea. A complicated part does not need one complicated sketch.
]

#section("Minimum Target for Class")

By the end of class, aim to have:

- a feature plan;
- the main base geometry completed;
- at least one additional sketch and feature;
- a clear idea of the next modeling step.

If you reach that point, you are on track.

#section("Homework / Continue the Model")

Continue the *same* model rather than starting a new one.

By the next class, be ready to show:

- a recognizable version of your chosen part;
- at least *two sketches*;
- at least *three features*;
- a feature tree that you can explain;
- one place where you revised your original plan.

You do not need every small detail completed.

#section("Success Checklist")

- [ ] My model clearly resembles the part I chose.
- [ ] I used more than one sketch.
- [ ] I used several features rather than trying to make everything at once.
- [ ] My sketches live on sensible faces or planes.
- [ ] I used a pattern, mirror, or relationship when repeated geometry made that useful.
- [ ] I can explain the order of my features.
- [ ] I can identify one important dimension and predict what should happen if it changes.

#section("Before You Leave")

Complete this sentence:

*The next modeling problem I need to solve is...*

#line(length: 100%, stroke: 0.5pt + rgb("#AAAAAA"))
#v(0.65em)
#line(length: 100%, stroke: 0.5pt + rgb("#AAAAAA"))
