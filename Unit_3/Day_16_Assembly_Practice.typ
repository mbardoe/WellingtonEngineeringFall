//command: render
#set document(title: "Onshape: Assemble a Quick-Return Mechanism")
#set page(paper: "us-letter", margin: (x: 0.65in, y: 0.55in), footer: context align(right)[#text(size: 9pt)[Quick-return assembly · #counter(page).display()]])
#set text(font: "DejaVu Sans", size: 10pt)
#set par(leading: 0.55em)
#set heading(numbering: none)
#show heading: set text(fill: rgb("#173b53"))
#let check(body) = block(inset: 7pt, width: 100%, fill: rgb("#eef3f6"))[*Check:* #body]
#let space() = v(0.5in)

= Assemble a Quick-Return Mechanism
*Engineering CAD & Design* #h(1fr)

Name: #line(length: 1.6in)

*Your task:* Use the supplied parts to build a working Onshape assembly. You will choose connections that allow the intended motion, then test the mechanism. You do not need to model the parts.

#grid(columns: (1fr, 1fr), gutter: 14pt,
  [#image("img/assembled.png", height: 2.9in)
   #text(size: 9pt)[Reference: completed mechanism. Colors may differ in your document.]],
  [
   == Identify the four parts
   *Base:* stationary stand with a horizontal guide and two pivot pins.

   *Disk:* circular wheel with a center hole and an offset pin.

   *Crank:* long slotted lever with a lower pivot hole, a long middle slot, and an open upper fork.

   *Slider:* block that travels in the horizontal guide; its pin engages the crank's upper fork.

   The video calls the slotted lever the *crank*. Use that name when identifying parts.
  ]
)

== 1. Insert the parts and fix the base
+ Open your copy of the supplied Onshape document.
+ Open an Assembly tab.
+ Normally, you would insert the parts, but they have already been inserted for you.
+ Drag the moving parts apart enough to see their holes, pins, and slots.
+ Right-click the *base* in the instance list and choose *Fix*.

#check[The base stays still when dragged. The other three parts remain movable. Fix only the base.]

== Before making each connection
Predict the motion first. A *revolute mate* permits rotation about one axis. A *slider mate* permits translation along one axis. A *tangent mate* maintains contact between selected faces.

For revolute and slider mates, hover over geometry to reveal an inferred mate connector. Inspect its origin and blue Z axis before selecting it. If the preview puts a part on the wrong side, use the mate dialog's orientation controls.

#pagebreak()
= Connect the moving parts to the base

== 2. Connect the disk to the base — Revolute
*Connection:* Disk center hole ↔ base's upper pivot pin.

+ Choose *Revolute mate*.
+ Select an inferred connector at the center of the disk's circular center-hole edge.
+ Select an inferred connector at the center of the circular edge of the base pin behind the disk.
+ Inspect the preview. The disk must sit around this pin, with its offset pin facing toward the crank.
+ If needed, flip the primary axis or adjust the connector to the matching end face. Confirm.
+ Rename the mate *Disk–Base Revolute*.

#check[Drag the disk. It rotates around its center, without sliding along the pin or moving the base.]

== 3. Connect the crank to the base — Revolute
*Connection:* Crank's lower pivot hole ↔ base's lower pivot pin.

+ Choose *Revolute mate*.
+ Select the connector at the center of the crank's lower circular hole.
+ Select the connector at the center of the base's lower pivot-pin edge.
+ Inspect the preview. The crank extends upward in front of the disk; the long slot lies near the disk's offset pin.
+ Correct the orientation if necessary, then confirm.
+ Rename the mate *Crank–Base Revolute*.

#check[Drag the crank. It swings about its lower pivot. At this stage, it can move independently of the disk.]

== 4. Connect the slider to the base — Slider
*Connection:* Slider block ↔ horizontal guide on the base.

+ Choose *Slider mate*.
+ On the slider, choose an inferred connector from a guide edge or face. Choose the matching location on the base's guide.
+ Orient both connectors so their *blue Z axes run along the horizontal guide*. The Z axis determines the allowed sliding direction.
+ Inspect the preview. The slider fits in the guide and its pin faces toward the crank's upper fork.
+ Confirm, then rename the mate *Slider–Base Slider*.

#check[The slider moves horizontally along the guide. It does not rotate or lift away. If it moves in the wrong direction, edit the mate connector orientation.]

*Pause and explain:* Why would a fastened mate be unsuitable for the disk or slider?
#space()

#pagebreak()
= Couple the parts using contact

*For both tangent mates:* Select faces, rather than edges or mate connectors. Turn *Tangent propagation* off so only the intended faces are selected. Use the straight inner wall shown in the close-up, rather than the rounded end of a slot.

== 5. Connect the disk pin to the crank's long slot — Tangent
#grid(columns: (1fr, 1fr), gutter: 14pt,
 [#image("img/disk_contact.png", height: 2.2in)
  #text(size: 9pt)[Highlighted selections: curved side of the offset pin and one straight inner slot wall.]],
 [
  *Connection:* Disk's offset pin ↔ long middle slot in the crank.

  + Drag the disk and crank until the offset pin is positioned inside the long slot.
  + Choose *Tangent mate* and turn off *Tangent propagation*.
  + Select the *cylindrical side face* of the disk's offset pin—not its flat circular end.
  + Select one *straight inner wall face* of the crank's long slot, matching the close-up.
  + If the preview places the pin outside the slot, use *Flip* to choose the internal contact solution.
  + Confirm. Rename the mate *Disk Pin–Crank Slot*.
 ])
#check[Rotate the disk slowly. Its pin travels along the slot and makes the crank swing. The pin should remain inside the slot.]

== 6. Connect the slider pin to the upper fork — Tangent
#grid(columns: (1fr, 1fr), gutter: 14pt,
 [#image("img/slider_contact.png", height: 2.05in)
  #text(size: 9pt)[Highlighted selections: curved side of the slider pin and a straight inner wall of the upper fork.]],
 [
  *Connection:* Slider's pin ↔ open fork at the top of the crank.

  + Position the slider pin between the two sides of the upper fork.
  + Choose *Tangent mate* and turn off *Tangent propagation*.
  + Select the *cylindrical side face* of the slider pin.
  + Select one *straight inner wall face* of the crank's upper fork, matching the close-up.
  + Flip the contact solution if the pin appears outside the fork.
  + Confirm. Rename the mate *Slider Pin–Crank Fork*.
 ])
#check[Rotate the disk. The crank swings and drives the slider back and forth along the guide.]

*Why tangent?* Each pin needs to move along a slot or fork as the crank swings. A revolute mate here would lock the pin to one location on the crank.

#pagebreak()
= Test, troubleshoot, and explain

== 7. Animate the mechanism
+ Right-click *Disk–Base Revolute* in the mate list and choose *Animate*.
+ Set the animation to cover one full revolution (0° to 360°).
+ Use a slow playback speed and select *Loop*.
+ Watch several cycles. The disk turns continuously, the crank rocks, and the slider reciprocates.

#check[No mate reports an error. The base stays still, both pins remain in their intended openings, and the slider completes repeated strokes.]

== If something does not work
#table(
 columns: (1fr, 1.7fr), inset: 6pt,
 table.header([*What you see*], [*What to check*]),
 [A part is on the wrong side.], [Edit the mate. Check the selected connector's end face and primary-axis orientation.],
 [Slider moves vertically or out of the guide.], [Edit the slider mate. Align both blue Z axes along the horizontal guide.],
 [Pin is outside a slot or fork.], [Edit the tangent mate. Check the selected faces and flip the contact solution.],
 [Mechanism locks after a new mate.], [Suppress the newest mate temporarily. Check for duplicate mates, a fixed moving part, or the wrong contact face.],
 [Part looks connected but moves independently.], [Check that the relevant tangent mate is active and connects the intended pair of parts.],
)

== 8. Observe the quick return
With the disk turning at a constant rate, compare the time for the slider to travel left-to-right with the time for right-to-left. A quick-return mechanism has unequal stroke times. Which direction is quicker depends on the direction of disk rotation.

*Which direction was quicker in your animation? What did you observe?*
#space()
*Trace the motion:* Describe how the disk's rotation reaches the slider.
#space()
*Explain a mate choice:* Choose one connection and explain why its mate allows the needed motion.
#space()

== Submit
- Your assembly contains one base, one disk, one crank, and one slider.
- Only the base is fixed.
- You have two revolute mates, one slider mate, and two tangent mates.
- Your disk drives a complete, repeating cycle.
- Submit your document link and a screenshot of the finished assembly as directed by your teacher.

#text(size: 8pt)[Adapted from CADemist, “Onshape Tutorial: Unleashing the Power of the Quick Return Mechanism.” Assembly segment: approximately 18:24–21:30. Reference: #link("https://www.youtube.com/watch?v=c2U8ujLMxCI")[YouTube tutorial]. Close-up images supplied by the teacher.]
