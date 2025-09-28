<!-- command: render -->
<!-- command: grid -->
# OnShape Project: Custom Pivot with Screwdriver Slot

In this step, you will design a **pivot part** (fastener) to hold your scissors together.  
You will also add a **flat-head screwdriver slot** at the top, then bring the pivot into the assembly and finish with an animation.

---

## Step 1: Create Pivot Part In-Context
1. In your **Scissors Assembly**, click **Create Part Studio In-Context**.  
2. Choose the **origin of the assembly** for the part location.  

---

## Step 2: Sketch the Pivot Profile
1. Start a sketch on the **Front plane**.  
2. Use **Project Edges** to bring in references:
   - The top and bottom of the assembly  
   - The two cylinder holes  
3. Hide the planes so your sketch is clear.  
4. Draw a **vertical line through the origin** (this will be your axis of revolution).  
5. Sketch the pivot profile:
   - A **box shape** at the bottom (the shaft).  
   - A **box with an arc on top** (the head).  
6. Add construction lines:
   - One horizontal at the top.  
   - One vertical at the bottom along the revolution axis.  
7. Dimension the pivot shaft:
   - Use the distance tool past the axis to set the **diameter to 5 mm**.  

*Pivot profile sketch example:*  
![Handle Sketch Reference](img/pivot.png)

---

## Step 3: Add the Screwdriver Slot
1. Draw a **short horizontal line** across the top of the head, **0.4 mm from the top**.  
2. Mirror this line across the axis to make a full slot.  

---

## Step 4: Revolve & Slot Cut
1. Use **Revolve** around the axis to create the 3D pivot.  
2. Finish by using **Extrude → Remove** to cut the slot at the top.  
   - Depth: about **1 mm**.  

---

## Step 5: Finalize the Pivot
1. Rename the part **Pivot**.  
2. Give it a **special appearance** (metallic or another finish).  

---

## Step 6: Add Pivot to Assembly
1. Go back to the **Scissors Assembly** tab.  
2. Insert the **Pivot part** you just created.  
3. Set the pivot as **Fixed** (so it doesn’t move).  
4. The blades and handles should rotate around the pivot using the **Revolute Mate**.  

---

## Step 7: Animate
1. Select the **Revolute Mate**.  
2. Use **Animate** to show the scissors opening and closing.  
3. Save your animation.

---

## Deliverable
- A **custom pivot part** with a screwdriver slot.  
- The pivot fixed in the assembly.  
- A working animation of the scissors opening and closing.  
- Save your document as:  
  - `Lastname_ScissorsPivot`

---
