# Day 6 Class Handout: Model Organization and CAD Skill Check

**Name:** ____________________________________  
**Date:** _____________________________________

## Today's challenge

Create a simple mounting plate independently, organize the Onshape document so another person can understand it, and test whether the model changes predictably.

### Learning goals

By the end of class, you should be able to:

- Use clear names for an Onshape document, Part Studio, sketches, and features.
- Create fully constrained sketches using dimensions and geometric constraints.
- Use additive and subtractive features to create a three-dimensional part.
- Build symmetry and relationships into a model instead of positioning features by guesswork.
- Compare a finished model with its specifications.
- Make a dimensional change and determine whether the model preserves its design intent.

## Today's workflow

| Approximate time | Task |
|---:|---|
| 0–7 minutes | Model-organization demonstration |
| 7–12 minutes | Organization audit of an earlier model |
| 12–34 minutes | Individual CAD skill check |
| 34–41 minutes | Change test and final model audit |
| 41–45 minutes | Submit evidence and complete the exit ticket |

---

## Part 1: Make a model understandable

A CAD model should communicate not only what the part looks like, but also how it was constructed. Names such as `Sketch 1` and `Extrude 2` do not tell another designer very much.

### Naming examples

| Unclear name | More useful name |
|---|---|
| `Document 1` | `LastName_Mounting_Plate` |
| `Part Studio 1` | `Mounting Plate` |
| `Sketch 1` | `Base Profile` |
| `Extrude 1` | `Base Extrude` |
| `Sketch 2` | `Mounting Hole Layout` |
| `Extrude 2` | `Mounting Holes` |
| `Fillet 1` | `Corner Fillets` |

Good names describe the feature's **purpose**, not merely the command used to make it.

### Quick organization audit

Open the model you created most recently. Examine its document name, Part Studio name, sketches, and features.

1. Identify one name that would be unclear to another student:

   ____________________________________________________________________________

2. Rename it so that its purpose is clear. Record the new name:

   ____________________________________________________________________________

3. Find one sketch and check its constraint status.

   - [ ] Fully constrained
   - [ ] Under-constrained
   - [ ] Over-constrained or contains an error

4. What information helped you understand the order in which the model was built?

   ____________________________________________________________________________

---

## Part 2: Individual CAD skill check

### The design brief

Create a mounting plate that could be used to attach a small component to a robot or another structure. Follow the specifications below.

Work independently unless your teacher gives different directions. If you become stuck, record the problem and any help you receive; asking a precise question is part of engineering work.

### Model setup

- Use **millimeters**.
- Name the document `LastName_Mounting_Plate`.
- Name the Part Studio `Mounting Plate`.
- Build the base so that its center is at the sketch origin.
- Fully constrain every sketch.

### Required geometry

| Feature | Specification |
|---|---|
| Base | Rectangular plate, **70 mm × 40 mm × 5 mm** |
| Mounting holes | Two **Ø6 mm** holes through the plate |
| Hole locations | Both centers lie on the plate's horizontal centerline; each center is **10 mm** from its nearest short end |
| Raised center pad | Rectangular pad, **30 mm × 20 mm**, centered on the plate, raised **4 mm** above the base |
| Center hole | One **Ø10 mm** hole through the center of the raised pad and base |
| Corner treatment | Apply **R4 mm** fillets to the four outside vertical edges of the base |

### Design-intent reminders

- Use the origin, midpoint, symmetry, equal, horizontal, and vertical constraints when they communicate a relationship.
- Avoid locating a centered feature by entering two unrelated edge distances.
- Avoid repeating a dimension when a geometric constraint can describe the relationship more clearly.
- Do not drag geometry until it merely *looks* correct.

### Required feature names

Your feature list should make the construction sequence understandable. Use these names or equally descriptive alternatives:

1. `Base Profile`
2. `Base Extrude`
3. `Mounting Hole Layout`
4. `Mounting Holes`
5. `Center Pad Profile`
6. `Center Pad`
7. `Center Hole Layout`
8. `Center Hole`
9. `Corner Fillets`

### Build checklist

- [ ] The document and Part Studio have descriptive names.
- [ ] The base is centered at the origin.
- [ ] Every sketch is fully constrained.
- [ ] The base dimensions and thickness match the specifications.
- [ ] The mounting holes have the correct diameter and locations.
- [ ] The center pad has the correct size, location, and height.
- [ ] The center hole passes through both the pad and the base.
- [ ] The four outside corners have the specified radius.
- [ ] Sketches and features have descriptive names.
- [ ] No feature contains an error or warning.

### Progress record

If you do not finish every feature, submit the model as it exists at the end of the work period. Check the last feature you completed successfully:

- [ ] Base
- [ ] Mounting holes
- [ ] Raised center pad
- [ ] Center hole
- [ ] Corner fillets
- [ ] Complete model

Describe one obstacle or question you encountered:

______________________________________________________________________________

______________________________________________________________________________

Help or reference used, if any:

______________________________________________________________________________

---

## Part 3: Change test

A model can match its original specifications and still be poorly designed. A well-constructed model should respond predictably when an important dimension changes.

Change the base length from **70 mm** to **90 mm**. Rebuild the model and inspect the result.

After the change:

- [ ] The model rebuilds without errors.
- [ ] The base is 90 mm long.
- [ ] Each mounting-hole center remains 10 mm from its nearest short end.
- [ ] The mounting holes remain on the horizontal centerline.
- [ ] The raised pad remains centered on the plate.
- [ ] The center hole remains centered in the pad and plate.
- [ ] The corner fillets remain intact.

### Analyze the result

Did the model pass every part of the change test?

- [ ] Yes
- [ ] No

If not, what moved incorrectly, broke, or produced an error?

______________________________________________________________________________

What constraint, dimension, sketch relationship, or feature would you revise?

______________________________________________________________________________

After completing the test, return the base length to **70 mm** for submission.

---

## Part 4: Final audit and submission

### Final model audit

- [ ] The base length has been returned to 70 mm.
- [ ] The model agrees with all required specifications.
- [ ] All sketches are fully constrained.
- [ ] All sketches and features have clear names.
- [ ] Suppressed, unused, or accidental features have been removed or clearly identified.
- [ ] The final model contains no errors.

### Submit

Submit the following as directed by your teacher:

- [ ] A link to your Onshape document
- [ ] A screenshot showing the finished part and feature list
- [ ] This completed handout

Onshape document link:

______________________________________________________________________________

---

## Exit ticket

1. Identify one feature name in your model and explain why it is more useful than an automatic name such as `Extrude 2`.

   ____________________________________________________________________________

   ____________________________________________________________________________

2. What is the difference between a sketch that is fully constrained and one that merely appears to be in the correct position?

   ____________________________________________________________________________

   ____________________________________________________________________________

3. What happened when you changed the plate length? What did the result reveal about your model's design intent?

   ____________________________________________________________________________

   ____________________________________________________________________________

4. What is one CAD skill you can now perform confidently, and what is one skill you still need to practice?

   **Confident:** ______________________________________________________________

   **Need to practice:** _______________________________________________________
