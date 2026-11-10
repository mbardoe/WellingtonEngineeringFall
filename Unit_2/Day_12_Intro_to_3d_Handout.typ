// command: render
// Designing for FDM Printing — Student Investigation Handout

#set page(
  paper: "us-letter",
  margin: (x: 0.68in, y: 0.62in),
  numbering: "1",
)
#set text(size: 10.5pt)
#set par(leading: 0.7em)
#set heading(numbering: none)

#let navy = rgb("17365D")
#let blue = rgb("DCEAF7")
#let pale = rgb("F3F5F7")
#let green = rgb("DDEED9")

#show heading.where(level: 1): it => [
  #v(0.1in)
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

#let writing-cell(h: 0.31in) = block(height: h)[]

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
  #text(size: 20pt, weight: "bold", fill: navy)[Design Rules from Evidence]
  #text(size: 13pt, weight: "bold")[Designing for FDM Printing]
]

#v(0.12in)

#grid(
  columns: (1fr, 1fr),
  gutter: 0.35in,
  [*Name:* #line(length: 2.15in, stroke: 0.6pt)],
  [*Date:* #line(length: 1.75in, stroke: 0.6pt)],
)

#v(0.12in)

#callout[Driving question][
  How should we change a design so that an FDM printer can manufacture it successfully, accurately, and with useful strength?
]

= Part 1 — Predict before testing

Without examining the test sample closely, make three predictions.

*1. Overhang:* At approximately what angle do you predict that the underside will become noticeably rough?

Prediction: #line(length: 0.75in, stroke: 0.6pt)° because #line(length: 3.75in, stroke: 0.6pt)

#v(0.1in)

*2. Bridge:* What is the longest bridge you predict will print acceptably?

Prediction: #line(length: 0.75in, stroke: 0.6pt) mm because #line(length: 3.75in, stroke: 0.6pt)

#v(0.1in)

*3. Hole:* Will a printed hole be smaller than, equal to, or larger than its modeled diameter? Explain.
#answer(lines: 2)

= Part 2 — Three structures

#table(
  columns: (1.0in, 2.0in, 2.65in),
  inset: 6pt,
  stroke: 0.45pt + rgb("B9C2CC"),
  table.header(
    text(fill: white, weight: "bold")[Feature],
    text(fill: white, weight: "bold")[What supports new filament?],
    text(fill: white, weight: "bold")[Sketch or example],
  ),
  [Overhang], [Earlier material underneath part of the new line], [#writing-cell(h: 0.48in)],
  [Bridge], [Supported endpoints on opposite sides of a gap], [#writing-cell(h: 0.48in)],
  [Support], [Temporary printed structure beneath the model], [#writing-cell(h: 0.48in)],
)

List two costs or disadvantages of using supports.

*1.* #line(length: 2.3in, stroke: 0.5pt) #h(0.2in) *2.* #line(length: 2.3in, stroke: 0.5pt)

#pagebreak()

= Part 3 — Examine the FDM test sample

Use observations and measurements—not guesses—to complete the tables. “Acceptable” depends on the purpose of the feature, so describe the quality you see.

== Overhangs

#table(
  columns: (1.15in, 1.45in, 3.15in),
  inset: 6pt,
  stroke: 0.45pt + rgb("B9C2CC"),
  table.header(
    text(fill: white, weight: "bold")[Angle],
    text(fill: white, weight: "bold")[Acceptable?],
    text(fill: white, weight: "bold")[Evidence or surface-quality observation],
  ),
  [ ], [ ], [#writing-cell()],
  [ ], [ ], [#writing-cell()],
  [ ], [ ], [#writing-cell()],
  [ ], [ ], [#writing-cell()],
  [ ], [ ], [#writing-cell()],
)

At what tested angle did quality first become unacceptable for a visible finished surface? #line(length: 0.6in, stroke: 0.6pt)°

== Bridges

#table(
  columns: (1.15in, 1.45in, 3.15in),
  inset: 6pt,
  stroke: 0.45pt + rgb("B9C2CC"),
  table.header(
    text(fill: white, weight: "bold")[Length],
    text(fill: white, weight: "bold")[Acceptable?],
    text(fill: white, weight: "bold")[Sagging, loose strands, or other evidence],
  ),
  [ ], [ ], [#writing-cell()],
  [ ], [ ], [#writing-cell()],
  [ ], [ ], [#writing-cell()],
  [ ], [ ], [#writing-cell()],
)

Longest acceptable tested bridge for this use: #line(length: 0.75in, stroke: 0.6pt) mm

== Walls

#table(
  columns: (1.2in, 1.3in, 1.25in, 2.0in),
  inset: 6pt,
  stroke: 0.45pt + rgb("B9C2CC"),
  table.header(
    text(fill: white, weight: "bold")[Modeled],
    text(fill: white, weight: "bold")[Printed?],
    text(fill: white, weight: "bold")[Measured],
    text(fill: white, weight: "bold")[Quality/rigidity],
  ),
  [ ], [ ], [ ], [#writing-cell()],
  [ ], [ ], [ ], [#writing-cell()],
  [ ], [ ], [ ], [#writing-cell()],
  [ ], [ ], [ ], [#writing-cell()],
)

Why should you inspect a thin wall in Bambu Studio Preview before printing?
#answer(lines: 1)

#pagebreak()

== Holes

Measure the available vertical holes. Record the nominal CAD diameter and the actual printed diameter.

#table(
  columns: (1.35in, 1.45in, 1.35in, 1.8in),
  inset: 6pt,
  stroke: 0.45pt + rgb("B9C2CC"),
  table.header(
    text(fill: white, weight: "bold")[Modeled],
    text(fill: white, weight: "bold")[Measured],
    text(fill: white, weight: "bold")[Difference],
    text(fill: white, weight: "bold")[Observation],
  ),
  [ ], [ ], [ ], [#writing-cell()],
  [ ], [ ], [ ], [#writing-cell()],
  [ ], [ ], [ ], [#writing-cell()],
  [ ], [ ], [ ], [#writing-cell()],
)

Compare the horizontal hole with the vertical holes. What happens near the top of the horizontal hole, and why?
#answer(lines: 2)

If a pin must move inside a hole, why is modeling both at exactly the same diameter risky?
#answer(lines: 1)

== Supported surface

Compare a surface printed against supports with an ordinary side or top surface. What differences do you notice?
#answer(lines: 2)

= Part 4 — Layer direction and load

Examine the two identical parts printed in different orientations.

*Part A orientation:* #line(length: 1.55in, stroke: 0.6pt) #h(0.2in) *Part B orientation:* #line(length: 1.55in, stroke: 0.6pt)

Draw short lines on each sketch to represent its printed layers.

#grid(
  columns: (1fr, 1fr),
  gutter: 0.3in,
  block(height: 1.05in, stroke: 0.55pt + rgb("8A959F"), inset: 7pt)[*Part A*],
  block(height: 1.05in, stroke: 0.55pt + rgb("8A959F"), inset: 7pt)[*Part B*],
)

#v(0.08in)

Which part do you predict will better resist the demonstrated load? Explain using layer direction.
#answer(lines: 2)

After gently testing the parts, what evidence supported or challenged your prediction?
#answer(lines: 2)

#pagebreak()

= Part 5 — Bambu Studio orientation challenge

Prepare the shared model in two plausible orientations. Slice both before making your recommendation.

#table(
  columns: (2.0in, 1.95in, 1.95in),
  inset: 7pt,
  stroke: 0.5pt + rgb("AAB3BD"),
  table.header(
    text(fill: white, weight: "bold")[Criterion],
    text(fill: white, weight: "bold")[Orientation A],
    text(fill: white, weight: "bold")[Orientation B],
  ),
  [Build-plate contact], [#writing-cell()], [#writing-cell()],
  [Support amount and location], [#writing-cell(h: 0.4in)], [#writing-cell(h: 0.4in)],
  [Important surface quality], [#writing-cell(h: 0.4in)], [#writing-cell(h: 0.4in)],
  [Layer direction under load], [#writing-cell(h: 0.4in)], [#writing-cell(h: 0.4in)],
  [Accuracy of important holes], [#writing-cell(h: 0.4in)], [#writing-cell(h: 0.4in)],
  [Estimated time and filament], [#writing-cell()], [#writing-cell()],
)

#v(0.1in)

#block(width: 100%, fill: green, inset: 9pt, radius: 4pt, stroke: 0.6pt + rgb("4D7D45"))[
  *Recommendation:* We would print orientation #line(length: 0.4in, stroke: 0.6pt) because
  #answer(lines: 2)

  *The most important tradeoff is*
  #answer(lines: 1)
]

= Part 6 — Our starting design rules

Record the rules developed by the class. Phrase them as useful starting points, not universal guarantees.

*1.* #answer(lines: 1)

*2.* #answer(lines: 1)

*3.* #answer(lines: 1)

*4.* #answer(lines: 1)

= Exit ticket

*1. What is the difference between an overhang and a bridge?*
#answer(lines: 1)

*2. Why might you avoid supports even when the slicer can generate them?*
#answer(lines: 1)

*3. Identify one feature in your upcoming desktop object that could be affected by orientation, clearance, wall thickness, or support use.*
#answer(lines: 2)

#pagebreak()

= Reference Appendix — 3D Printing Vocabulary and Acronyms

#callout[How to use this glossary][
  This is a reference for the entire 3D-printing unit, not a list to memorize all at once. Use it when reading a slicer, diagnosing a print, or explaining a design decision.
]

#v(0.08in)

#set text(size: 9.2pt)
#set par(leading: 0.58em)

#columns(2, gutter: 0.3in)[
  == Processes, files, and workflow

  - *AM — Additive manufacturing:* Making an object by adding material layer by layer rather than cutting material away.
  - *FDM — Fused Deposition Modeling:* A common process that melts thermoplastic filament and deposits it in layers. The term is widely used for filament printing.
  - *FFF — Fused Filament Fabrication:* Another name for the same general filament-extrusion process as FDM.
  - *CAD — Computer-Aided Design:* Software and methods used to create the geometry of a part. Onshape is a CAD system.
  - *CAM — Computer-Aided Manufacturing:* Software and methods used to convert a design into machine instructions. A slicer performs a type of CAM work.
  - *SLA — Stereolithography:* A process that uses light to cure liquid photopolymer resin into solid layers.
  - *MSLA — Masked Stereolithography:* Resin printing that exposes an entire layer through an LCD mask.
  - *SLS — Selective Laser Sintering:* A process that uses a laser to fuse powdered material, commonly nylon, into solid layers.
  - *Slicer:* Software that converts a 3D model into layers and machine toolpaths. Bambu Studio is a slicer.
  - *Slicing:* The process of dividing a model into layers and generating the toolpaths used to print it.
  - *STL — Stereolithography file:* A common mesh format that stores the outer surface as triangles. It usually does not reliably store units, colors, materials, or design history.
  - *3MF — 3D Manufacturing Format:* A newer file format that can store units, orientation, colors, materials, and other manufacturing information.
  - *Mesh:* A surface made from many polygons, usually triangles, that approximates the shape of a 3D model.
  - *G-code:* Machine instructions describing motions, temperatures, extrusion, speeds, and other printer actions.
  - *Toolpath:* The route the nozzle follows while depositing or moving between locations.
  - *Post-processing:* Work performed after printing, such as removing supports, washing and curing resin, sanding, drilling, or painting.
  - *Preview:* The slicer view used to inspect layers, walls, infill, supports, travel moves, time, and material estimates before printing.
  - *Build volume:* The maximum printable region of a printer, usually given as width × depth × height.

  == Materials

  - *Filament:* Thermoplastic supplied as a long strand on a spool and fed into an FDM printer.
  - *Thermoplastic:* Plastic that softens when heated and hardens again when cooled.
  - *Photopolymer resin:* Liquid material that hardens when exposed to particular wavelengths of light. Uncured resin requires appropriate skin, eye, ventilation, and disposal precautions.
  - *PLA — Polylactic Acid:* A common, relatively easy-to-print material with good detail and low warping. It can soften in high heat and may be brittle in some applications.
  - *PETG — Polyethylene Terephthalate Glycol-modified:* A durable filament with good layer adhesion and useful chemical and moisture resistance. It can produce stringing.
  - *ABS — Acrylonitrile Butadiene Styrene:* A tough, heat-resistant plastic that tends to warp and generally requires an enclosed, properly ventilated printing setup.
  - *ASA — Acrylonitrile Styrene Acrylate:* Similar to ABS, with improved weather and ultraviolet resistance. It also benefits from an enclosure and appropriate ventilation.
  - *TPU — Thermoplastic Polyurethane:* A flexible, rubber-like filament used for grips, bumpers, straps, and compliant parts.
  - *PVA — Polyvinyl Alcohol:* A water-soluble material sometimes used for removable supports in multi-material printing.
  - *Composite filament:* Plastic mixed with another material, such as carbon fiber, glass fiber, or wood particles. Some composites require a wear-resistant nozzle.
  - *Drying / dry filament:* Removing absorbed moisture from filament. Wet filament may bubble, string, print roughly, or produce weak parts.

  == Printer hardware

  - *Spool:* The reel that holds filament.
  - *Extruder:* The mechanism that grips and pushes filament toward the hot end.
  - *Drive gear:* The toothed gear in the extruder that presses against and moves the filament.
  - *Direct-drive extruder:* An extruder mounted close to the hot end, creating a short filament path.
  - *Bowden extruder:* An extruder that pushes filament through a tube to a separately located hot end.
  - *Hot end:* The heated assembly that melts filament before it exits the nozzle.
  - *Heater block:* The heated metal block surrounding the nozzle and heat source.
  - *Nozzle:* The small opening through which molten plastic is deposited.
  - *Nozzle diameter:* The diameter of the nozzle opening. It strongly influences possible line width, detail, flow, and print speed.
  - *Toolhead:* The moving assembly that carries the hot end and often the extruder, sensors, and cooling fans.
  - *Part-cooling fan:* A fan that cools newly deposited plastic, especially for overhangs and bridges.
  - *Build plate / print bed:* The surface on which the first layer is printed.
  - *Build surface:* The top material or coating on the build plate that affects adhesion and surface texture.
  - *PEI — Polyetherimide:* A common build-surface material that provides good adhesion for many filaments when used correctly.
  - *Gantry:* The frame and motion system that guides the toolhead or build plate.
  - *Enclosure:* A housing around the print area that improves temperature control and limits access to moving or hot components.
  - *AMS — Automatic Material System:* Bambu Lab’s system for automatically selecting and changing among multiple filament spools.

  == Slicer settings and printed structure

  - *Layer:* One horizontal cross-section of deposited material.
  - *Layer height:* The vertical thickness of each layer. Smaller values usually increase detail and print time.
  - *Line width / extrusion width:* The width of one deposited line of plastic. It is related to, but not always identical to, nozzle diameter.
  - *Wall / perimeter:* A toolpath forming the outside or inside boundary of a printed part.
  - *Wall loops:* The number of adjacent perimeter lines used to form a wall.
  - *Shell:* The combined outer structure of walls and top/bottom layers.
  - *Top layers:* Solid layers that close the upper surfaces of a part.
  - *Bottom layers:* Solid layers that form the lower surfaces of a part.
  - *Infill:* Internal structure printed inside the shell rather than filling the entire part with solid plastic.
  - *Infill density:* The percentage of the interior assigned to infill. It is only one of several factors affecting strength.
  - *Infill pattern:* The repeated geometry used for infill, such as grid, gyroid, or cubic.
  - *First layer:* The initial layer placed on the build plate. Its adhesion and geometry strongly affect the rest of the print.
  - *Nozzle temperature:* The target temperature used to melt and extrude the filament.
  - *Bed temperature:* The target temperature of the build plate.
  - *Print speed:* The requested toolhead speed during printing. Different feature types may use different speeds.
  - *Cooling:* The use of airflow to solidify newly deposited plastic.
  - *Retraction:* Pulling filament backward before a travel move to reduce leaking and stringing.
  - *Travel move:* Toolhead motion during which the printer is not intentionally extruding material.
  - *Z-seam:* The location where perimeter toolpaths begin and end on successive layers, often forming a visible vertical line.
  - *Support:* Temporary printed material placed beneath geometry that cannot print reliably on its own.
  - *Support interface:* Dense support layers immediately below the model that improve support quality but can affect removal and surface finish.
  - *Tree / organic support:* Branching support geometry intended to reach overhangs while reducing contact and material use.
  - *Skirt:* One or more lines printed around, but not touching, the model to prime the nozzle and check flow.
  - *Brim:* Extra first-layer lines attached around the model to increase bed contact and reduce warping.
  - *Raft:* A removable platform printed beneath the entire model. It uses more material and changes the bottom surface.

  == Design and dimensional terms

  - *Orientation:* The direction and position in which a model is placed on the build plate.
  - *Overhang:* Geometry that extends beyond the material in the layer below it.
  - *Bridge:* A printed span crossing a gap between supported endpoints.
  - *Wall thickness:* The modeled thickness of a wall. The slicer must be able to represent it with viable extrusion paths.
  - *Nominal dimension:* The intended or labeled dimension in the design.
  - *Dimensional accuracy:* How closely a printed measurement matches its nominal CAD dimension.
  - *Tolerance:* The acceptable amount that an actual dimension may vary from its target value.
  - *Clearance:* Deliberate space between parts so they can assemble or move.
  - *Fit:* The relationship between mating parts. A clearance fit leaves space; a press or interference fit relies on contact and deformation.
  - *Chamfer:* A flat angled edge, often used to ease assembly or reduce a difficult bottom-edge overhang.
  - *Fillet:* A rounded edge or corner used to reduce stress concentration, improve feel, or change printability.
  - *Teardrop hole:* A modified horizontal hole with an angled or pointed top designed to reduce unsupported overhangs.
  - *Print-in-place:* Multiple connected or moving components printed together without later assembly.
  - *Anisotropic:* Having properties that depend on direction. FDM parts may behave differently along layers than across layer boundaries.
  - *Manifold / watertight model:* A closed, unambiguous solid with no unintended gaps, internal faces, or non-printable surface connections.
  - *Resolution:* The level of detail a process can represent. Layer height is one part of resolution, but nozzle size, motion, material, and geometry also matter.

  == Quality, calibration, and failure terms

  - *Bed adhesion:* How well the first layer remains attached to the build surface.
  - *Bed leveling / tramming:* Adjusting or compensating for the relationship between the nozzle’s motion plane and the build plate.
  - *Calibration:* Testing and adjusting printer or material settings to improve predictable performance.
  - *Warping:* Corners or edges lifting as printed plastic cools and contracts.
  - *Stringing:* Thin unwanted strands left between separated features during travel moves.
  - *Under-extrusion:* Depositing too little material, producing gaps, thin lines, or weak layers.
  - *Over-extrusion:* Depositing too much material, producing swollen dimensions, rough surfaces, or excess plastic.
  - *Layer adhesion:* The bond between adjacent printed layers.
  - *Delamination:* Layers separating because the bonds between them fail.
  - *Layer shift:* A sudden sideways displacement of later layers caused by lost or obstructed motion.
  - *Elephant’s foot:* The bottom of a print spreading outward because the first layers are compressed or remain too warm.
  - *Ringing / ghosting:* Repeated ripples near corners or abrupt direction changes, usually associated with vibration and motion.
  - *Sagging:* Unsupported or bridged material drooping before it solidifies.
  - *Support scars:* Roughness or marks left where support material contacted the model.
  - *Clog:* A blockage that prevents filament from flowing correctly through the nozzle.
  - *Failed print:* A print that cannot serve its intended purpose, whether because of adhesion, geometry, strength, dimensions, settings, or machine problems.
]

#set text(size: 10.5pt)
#set par(leading: 0.7em)

#align(center)[
  #text(size: 9pt, fill: rgb("59636E"))[
    Test critical features. Inspect the sliced toolpath. Design for the load and the manufacturing process.
  ]
]
