
// command: render

#set page(
  paper: "us-letter",
  margin: (x: 0.72in, y: 0.68in),
)

#set text(size: 10.5pt)
#set par(leading: 0.7em)
#set heading(numbering: none)

#let section-title(body) = [
  #v(0.12in)
  #text(size: 13pt, weight: "bold")[#body]
  #v(0.05in)
]

#align(center)[
  #text(size: 18pt, weight: "bold")[
    Engineering CAD & Design
  ]
  #v(0.04in)
  #text(size: 14pt)[
    Onshape Organization, History, Comments, and Skill Check
  ]
]

#v(0.14in)

#grid(
  columns: (1fr, 1fr),
  gutter: 0.35in,
  [
    *Class Length:* 45 minutes
  ],
  [
    *Platform:* Onshape
  ],
)

#v(0.14in)

#section-title[Lesson Purpose]

Students are beginning to move beyond simple CAD parts that can be created from a single sketch. Before beginning more complex multi-sketch design work, this class focuses on two goals:

- helping students treat an Onshape document as an organized engineering record rather than simply a place where a model exists;
- checking whether students can independently use the core CAD skills they have practiced so far.

The lesson introduces document organization, Onshape History, Versions, and Comments. Students then complete a short individual CAD skill check.

#section-title[Learning Goals]

By the end of class, students should be able to:

- organize an Onshape document using meaningful document, Part Studio, sketch, feature, and part names;
- use Onshape History to inspect previous changes to a document;
- explain the difference between automatic document history and a deliberately created Version;
- create a Version at an important point in the design process;
- use Comments to communicate engineering questions, decisions, or concerns;
- independently create a simple part from a dimensioned drawing;
- identify at least one CAD skill they can perform confidently and one skill they still need to improve.

#section-title[Materials and Preparation]

*Teacher preparation:*

- Have a simple Onshape document ready for demonstration.
- Make sure the demonstration model contains several sketches and features so that naming and organization are visible.
- Prepare a small dimensioned part for the individual CAD skill check.
- Ideally, the skill-check part should require:
  - one base sketch;
  - geometric constraints and dimensions;
  - an Extrude;
  - a second sketch on a face;
  - an Extrude Remove;
  - one Fillet or Chamfer;
  - one Mirror or Linear Pattern.
- Have the four upcoming project examples available to show:
  - U-shaped sensor bracket;
  - ball mount;
  - AA battery holder;
  - half hinge.

*Students need:*

- laptop;
- Onshape account;
- mouse recommended;
- access to their most recent CAD document.

#section-title[Class Sequence]

== 0–5 Minutes: Entry Task — Is Your CAD File Understandable?

As students enter, ask them to open the Onshape document they worked on most recently.

Display the following question:

#quote[
Could another student open your document and figure out what you were trying to build?
]

Ask students to inspect their own work and check the following:

- Is the document named clearly?
- Is the Part Studio named clearly?
- Does the part itself have a meaningful name?
- Are there sketches or features that would benefit from being renamed?
- Are there any names such as `Sketch 1`, `Sketch 7`, `Extrude 4`, or `Copy of Part 1` that make the document difficult to understand?

Students should make at least one organizational improvement before the class discussion begins.

*Teacher goal:* Establish that organization is part of engineering practice, not merely cosmetic cleanup.

*Possible teacher prompt:*

#quote[
A CAD file is not just the final shape. It is also a record of how that shape was designed.
]

#section-title[5–12 Minutes: Demonstration — Organizing an Onshape Document]

Project the teacher demonstration document.

Show students several levels of naming and organization.

*1. Document name*

Compare an unclear document name such as:

#quote[
Part 3 Copy
]

with a clearer name such as:

#quote[
Ultrasonic Sensor Mount — Prototype 1
]

Discuss why the second name becomes more useful when students have many projects.

*2. Part Studio names*

Show that one document can eventually contain multiple Part Studios or assemblies.

Rename a generic Part Studio to something meaningful.

Examples:

- `Sensor Bracket`
- `Battery Holder`
- `Wheel Hub`

*3. Part names*

Show students where the actual solid part is named.

Explain that this becomes especially important when parts are inserted into assemblies.

*4. Sketch and feature names*

Explain that students do not need to rename every single feature.

Instead, they should rename features when the name helps explain the design.

Examples:

- `Base Profile`
- `Mounting Holes`
- `Sensor Cutout`
- `Corner Fillets`

Emphasize that good naming should make the feature tree easier to read.

*Teacher emphasis:*

Avoid turning this into a rigid naming-system lesson. The objective is clarity.

A useful rule is:

#quote[
Name things when the name will help you or someone else understand the design later.
]

#section-title[12–18 Minutes: Demonstration — History and Versions]

Explain that one of Onshape's important features is that it keeps a detailed history of changes.

Make a visible change to the demonstration part.

For example:

- change a dimension;
- suppress a feature;
- add a hole;
- alter an extrusion depth.

Then open the document History.

Show students that Onshape records changes automatically.

Discuss how History can help when:

- a part suddenly stops working;
- a student changes the wrong dimension;
- a feature disappears;
- a partner changes something unexpectedly;
- a student wants to determine when a design decision was made.

Then explain the distinction between *History* and a *Version*.

#quote[
History is Onshape remembering what happened.

A Version is you deliberately saying, “This particular point in the design matters.”
]

Show students how to create a Version.

Ask every student to create a Version of their current document named:

#quote[
Before Skill Check
]

Explain that versions can mark important milestones such as:

- first working prototype;
- design before major revision;
- design sent to the 3D printer;
- final submitted design.

#section-title[18–23 Minutes: Demonstration — Comments as Engineering Communication]

Introduce Comments as a way to communicate about a design without immediately modifying it.

Demonstrate adding a comment.

Use a realistic example:

#quote[
I think this mounting hole needs to move about 3 mm before we print the part.
]

Discuss situations where comments may be useful:

- asking a partner a question;
- documenting a possible design problem;
- identifying something to check before printing;
- explaining why a design decision was made;
- leaving a reminder for future work.

Ask each student to leave one meaningful comment in their current document.

A simple prompt is:

#quote[
Leave a comment identifying one thing you should check before manufacturing or continuing this design.
]

Possible examples:

- “Check whether this hole matches the bolt size.”
- “Measure the sensor again before printing.”
- “This wall may be too thin.”
- “Check clearance with the wheel.”

#section-title[23–26 Minutes: Introduce the Individual CAD Skill Check]

Explain that the next activity is a short individual skill check.

Clarify that it is not primarily a speed competition.

The purpose is to determine which basic CAD operations students can now perform independently.

Display or distribute the dimensioned drawing.

Tell students:

#quote[
Your goal is to turn the drawing into a working Onshape model. Use the dimensions in the drawing rather than estimating from the picture.
]

Explain the help policy.

Students may ask questions about:

- what a symbol or dimension means;
- where a command is located;
- terminology they do not understand.

However, encourage students to make their own modeling decisions.

A useful classroom rule is:

#quote[
I can ask you questions and give you hints, but I am not going to take over your mouse.
]

#section-title[26–40 Minutes: Individual CAD Skill Check]

Students work independently.

The model should require students to demonstrate most of the following:

- create a sketch on an appropriate plane;
- draw the base geometry;
- use dimensions;
- use geometric constraints;
- create an Extrude;
- create a new sketch on an existing face;
- use Extrude Remove to create a hole, slot, or cutout;
- apply a Fillet or Chamfer;
- create a repeated feature using Mirror or Linear Pattern.

Encourage students to check whether sketches are fully constrained when reasonable.

During the activity, circulate and observe.

Rather than immediately giving procedures, use questions such as:

- “What feature are you trying to create?”
- “What geometry already exists that you could build from?”
- “Which plane or face makes sense for this sketch?”
- “What dimension controls that distance?”
- “Is anything still free to move in your sketch?”
- “Would this be easier as another sketch or as a feature?”
- “Is there a feature you could mirror instead of drawing twice?”

Keep informal notes about patterns you observe.

Possible categories to track:

- sketching;
- constraints;
- dimensions;
- extrusion;
- choosing sketch planes;
- removing material;
- fillets/chamfers;
- patterns/mirrors;
- interpreting drawings;
- navigating Onshape.

#section-title[40–44 Minutes: Save a Version and Reflect]

When students finish, or when approximately four minutes remain, ask them to stop modeling.

Have each student create another Version named:

#quote[
Skill Check Complete
]

Then ask students to answer two short reflection questions.

*1.*

#quote[
What is one CAD task you were able to do today without help?
]

*2.*

#quote[
What is one Onshape operation or design skill you still do not feel confident using?
]

Students can submit these responses through the LMS, on paper, or in another format that is easy to review.

Use these responses along with your observations to decide what needs reinforcement in the next several classes.

#section-title[44–45 Minutes: Preview the Next Design Challenge]

Show students the four example parts:

- U-shaped sensor bracket;
- ball mount;
- AA battery holder;
- half hinge.

Explain that these parts are different from many of the earliest class exercises.

They are unlikely to be created effectively from one sketch followed by one extrusion.

Tell students:

#quote[
The next step is learning how to build a part from several sketches and several features. You already know many of the individual tools. Now the challenge is deciding how to combine them.
]

If possible, briefly point out one example.

For instance, with the U-shaped bracket:

- one sketch might define the base;
- another might create a vertical wall;
- another might create mounting holes;
- fillets may finish the edges.

The purpose is not to teach the solution yet, but to help students recognize that a complex part can be decomposed into several simpler modeling decisions.

#section-title[Assessment]

The lesson provides three sources of formative assessment.

*Document organization*

Can the student create and maintain an understandable CAD file?

*Individual skill check*

Can the student independently use the basic modeling tools introduced so far?

*Reflection*

Can the student identify an area of strength and an area where further support is needed?

The skill check should primarily be diagnostic. Its most useful outcome is identifying which concepts need to be revisited before students begin more open-ended design work.

#section-title[What to Watch For]

During the skill check, pay particular attention to students who:

- begin drawing without first considering the best sketch plane;
- redraw geometry instead of referencing existing geometry;
- leave sketches significantly under-constrained;
- use many unnecessary sketches;
- attempt to create an entire complicated object from a single sketch;
- struggle to distinguish adding material from removing material;
- manually duplicate geometry that could be mirrored or patterned;
- rely heavily on visual estimation instead of dimensions;
- know individual Onshape commands but struggle to determine which command to use next.

These difficulties will help identify the transition students need to make from *learning CAD commands* to *thinking like a CAD designer*.

#section-title[Possible Follow-Up Lesson]

The next lesson can begin the transition to multi-feature design.

Students choose one of the following:

- U-shaped sensor bracket;
- ball mount;
- AA battery holder;
- half hinge.

Before opening Onshape, students first analyze the object and answer:

- What is the simplest shape that could serve as the starting feature?
- How many sketches might be needed?
- Which features add material?
- Which features remove material?
- Which features could be mirrored or patterned?
- Which dimensions are critical to the function of the part?

The emphasis should shift from:

#quote[
Which Onshape button do I click?
]

to:

#quote[
How should I break this object into a sequence of simple features?
]

