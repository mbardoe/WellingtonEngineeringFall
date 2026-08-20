# Day 7 Class Handout: Thermos Lid - Drawing to Model

**Name:** ____________________________________  
**Date:** _____________________________________  

## Today's challenge

Create an accurate Onshape model of a thermos lid using only the supplied engineering drawing. Before modeling, interpret the views and dimensions and plan an efficient order of features. Your finished feature list should show how you understood the part.

### Learning goals

By the end of class, you should be able to:

- Read dimensions and basic symbols from an engineering drawing.
- Use a section view to understand geometry that is hidden in an exterior view.
- Break a complex-looking object into simpler features.
- Choose and justify an efficient feature sequence.
- Use sketch constraints and relationships to capture design intent.
- Compare a CAD model systematically with its source drawing.
- Organize a Part Studio with clear sketch and feature names.

## Materials

- [Thermos lid dimensioned drawing](thermos_lid_drawing.pdf)
- Computer with Onshape
- This handout
- Pencil or pen

## Today's workflow

| Approximate time | Task |
|---:|---|
| 0-10 minutes | Read the drawing and decode its symbols |
| 10-18 minutes | Identify the part's features and plan a feature sequence |
| 18-53 minutes | Build the thermos lid in Onshape |
| 53-63 minutes | Partner model audit and revision |
| 63-70 minutes | Organize, submit, and complete the exit ticket |

---

## Part 1: Read before you model

An engineering drawing communicates size and shape through several views. Do not begin by tracing the picture or measuring the printed page.

### Drawing-symbol reference

| Symbol or notation | Meaning |
|---|---|
| `Ø` | Diameter: the distance across a circle through its center |
| `R` | Radius: the distance from a circle's center to its edge |
| `4X` | The dimension applies in four places |
| `45°` | An angular dimension |
| `SECTION A-A` | A cut through the part that reveals its interior geometry |
| Diagonal hatch lines | Solid material cut by the section plane |
| Scale `1:2` | The printed view is half the object's full size |

The written dimensions control the model. The scale is useful for displaying the drawing, but it is not permission to measure the page. If the picture and a printed dimension seem different, use the printed dimension.

### Title-block check

Use the title block in the lower-right corner of the drawing.

| Question | Your answer |
|---|---|
| What is the part called? |  |
| What units are used? |  |
| What material is specified? |  |
| What is the drawing scale? |  |
| What type of projection is identified? |  |

Why would measuring the diameter directly from the printed drawing give the wrong size?

______________________________________________________________________________

### Interpret the views

1. Which view best shows the lid's overall circular layout?

   ____________________________________________________________________________

2. What information does Section A-A reveal that the exterior side view does not?

   ____________________________________________________________________________

3. In the section view, what do the hatched regions represent?

   ____________________________________________________________________________

4. What does `4X R.0625` tell you?

   ____________________________________________________________________________

5. Find one pair of features that should be concentric. Name them.

   ____________________________________________________________________________

### Set up the document

- Name the document `LastName_Thermos_Lid`.
- Name the Part Studio `Thermos Lid`.
- Use **inches**, as specified in the title block.
- Place the main circular geometry at the sketch origin.
- Enter dimensions exactly as shown. If your workspace uses another default unit, type `in` after each value.
- Fully constrain each sketch before moving to the next feature.

---

## Part 2: Build a feature plan

The object is rotationally symmetric except for the curved tab. Look at all views and identify the simpler pieces of geometry that combine to make the lid.

### Feature inventory

Complete the table before opening Onshape.

| Feature you observe | View that explains it best | Important dimension(s) | Likely Onshape tool or operation |
|---|---|---|---|
| Main upper body or rim |  |  |  |
| Recessed interior |  |  |  |
| Lower cylindrical section |  |  |  |
| Center opening and underside boss |  |  |  |
| Curved 45-degree tab |  |  |  |
| Rounded edges |  |  |  |

### Choose a feature sequence

There is more than one reasonable way to build this part. Plan a sequence that uses the part's symmetry and makes later features easy to locate.

| Step | Feature to create | Sketch plane or face | Operation | Why create it at this point? |
|---:|---|---|---|---|
| 1 |  |  |  |  |
| 2 |  |  |  |  |
| 3 |  |  |  |  |
| 4 |  |  |  |  |
| 5 |  |  |  |  |
| 6 |  |  |  |  |
| 7 |  |  |  |  |

Which feature do you predict will be most difficult to construct or dimension?

______________________________________________________________________________

What relationship or reference will help you locate that feature?

______________________________________________________________________________

### Planning reminders

- Use the origin to keep circular features concentric.
- Prefer constraints and relationships over positioning geometry by eye.
- A section view can often be understood as stacked diameters, heights, recesses, and wall thicknesses.
- The curved tab is described by two radii, an angle, and four small corner radii.
- Decide whether a hole or recess should be created before or after nearby additive features.
- Leave small fillets until the major geometry is stable unless an earlier fillet is required by your construction method.

---

## Part 3: Model the thermos lid

Build one solid part that agrees with the dimensioned drawing. Work independently unless your teacher gives different directions.

If you become stuck, do not start guessing. Record the exact feature and dimension you are trying to interpret, compare the top and section views, and then ask a specific question.

### Required model characteristics

- [ ] The document and Part Studio have descriptive names.
- [ ] The main circular geometry is centered at the origin.
- [ ] The upper outside and inside diameters match the drawing.
- [ ] The lower outside and inside diameters match the drawing.
- [ ] The overall height and the heights shown in Section A-A match the drawing.
- [ ] The center opening and underside boss match the drawing.
- [ ] The curved tab uses the specified inner radius, outer radius, and angle.
- [ ] The four corners of the tab use the specified radius.
- [ ] The indicated lid edges have the specified rounds.
- [ ] Every sketch is fully constrained.
- [ ] The finished model is one continuous part.
- [ ] No feature contains an error or warning.

### Name features by purpose

Use names that allow another designer to understand your construction. Your exact list will depend on the sequence you chose.

Useful names might include:

- `Main Lid Body`
- `Interior Recess`
- `Lower Section`
- `Center Boss`
- `Center Opening`
- `Curved Tab`
- `Edge Rounds`

Avoid leaving the entire feature list with automatic names such as `Sketch 3` and `Extrude 4`.

### Progress record

At the end of the modeling period, check the last stage you completed successfully:

- [ ] Main outside form
- [ ] Interior recess and wall geometry
- [ ] Lower cylindrical section
- [ ] Center boss and opening
- [ ] Curved tab
- [ ] Edge rounds
- [ ] Complete model

Describe one modeling or drawing-interpretation problem you encountered:

______________________________________________________________________________

______________________________________________________________________________

What did you try before requesting help?

______________________________________________________________________________

Help or reference used, if any:

______________________________________________________________________________

---

## Part 4: Partner model audit

Exchange computers with a partner. Do not edit your partner's model.

**Reviewer:** __________________________________

### Drawing-to-model check

- [ ] The model's overall shape agrees with the isometric view.
- [ ] The top layout agrees with the top view.
- [ ] The interior and underside agree with Section A-A.
- [ ] Circular features appear concentric where required.
- [ ] The curved tab appears to span the specified angle.
- [ ] The model contains the required edge rounds.
- [ ] The feature list is understandable.
- [ ] The sketches I inspected are fully constrained.
- [ ] I found no feature errors or warnings.

One dimension or feature I checked directly:

______________________________________________________________________________

One discrepancy, ambiguity, or possible improvement:

______________________________________________________________________________

One feature or modeling choice that communicates design intent well:

______________________________________________________________________________

Return the computer to its owner. Make at least one revision in response to the audit.

### Revision made

What did you change?

______________________________________________________________________________

Why did that change improve the model?

______________________________________________________________________________

---

## Part 5: Final audit and submission

### Final model audit

- [ ] I compared the model with the top, side, section, and isometric views.
- [ ] I used written dimensions rather than measuring the drawing.
- [ ] I checked the model's units.
- [ ] All completed sketches are fully constrained.
- [ ] Important sketches and features have descriptive names.
- [ ] The model contains no errors.
- [ ] If unfinished, I identified my precise next step below.

My next modeling step, or `complete`:

______________________________________________________________________________

### Submit

Submit the following as directed by your teacher:

- [ ] A link to your Onshape document
- [ ] A screenshot showing the model and feature list
- [ ] This completed handout

Onshape document link:

______________________________________________________________________________

---

## Exit ticket

1. Which view was most important for understanding the lid's interior geometry? Why?

   ____________________________________________________________________________

   ____________________________________________________________________________

2. Describe your feature sequence in one or two sentences. Why did you choose that order?

   ____________________________________________________________________________

   ____________________________________________________________________________

3. Identify one place where you used a relationship such as concentric, equal, symmetric, or coincident instead of positioning geometry by eye.

   ____________________________________________________________________________

4. If you rebuilt the lid, what would you do differently?

   ____________________________________________________________________________

