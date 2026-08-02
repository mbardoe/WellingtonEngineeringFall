<!-- command: render -->
# OnShape Scissors Assembly Tutorial – Class Notes

This guide walks you through creating, assembling, and animating a pair of scissors in OnShape.

---

## Part 1 – Creating the Blade

1. **Start a new sketch** on the **Top Plane**.
2. Draw a **horizontal line** through the origin – this will be the blade’s edge.  
   - Length: 118 mm
3. Continue sketching the **general blade profile** based on the reference image.  
   - Use an **arc** for the tip of the blade.  
   - Add all necessary **dimensions**, including the angle between the top and bottom edges.  
4. Add a **circle for the pivot hole** (mating circle).  
5. **Extrude** the sketch to a thickness of **1.4 mm**.  
6. Rename the part **Blade** and adjust its **appearance**.

---

## Part 2 – Adding the Blade Edge (Sweep)

1. Define a **sweep path** along the blade face:  
   - Draw a line **0.5 mm** from the bottom edge, length **50 mm**.  
   - Add an arc with **radius 14 mm** that curves upward.  
2. Create a **plane** for the sweep profile:  
   - Use **Curve Point** with the endpoint of the sweep and the sweep line.  
3. On the plane, draw a **triangle profile**:  
   - The hypotenuse connects to the sweep line.  
   - One leg goes to the top.  
   - The angle between the hypotenuse and the top face is **18°**.  
4. **Sweep** the triangle profile along the path (straight + curved).  
5. The **blade is now finished**.

![Blade Sketch Placeholder](img/blade.png.png)

---

## Part 3 – Creating the Handle

1. Start a **new sketch** on the **Top Plane**.  
2. Add a **centerline** at 3° from the blade edge, passing through the pivot circle.  
3. Draw the general handle profile:  
   - Use lines and arcs to form the outside curve.  
   - Make tangent connections between arcs.  
   - The vertical distance from top to bottom: **8 mm**.  
   - Acute angle: **66°**.  
   - Add construction lines to align midpoints with the blade.  
   - Dimension key features:  
     - Distance from handle center to pivot: **60 mm**  
     - Handle radius: **14 mm**  
     - Bottom arc radius: **38 mm**  
   - Add a **circle (Ø18 mm)** for the finger hole.  
4. **Extrude** the handle profile as a **new solid**:  
   - Two-sided extrusion: **2.5 mm up** and **1.7 mm down**.  
5. Use a **Boolean Subtract**:  
   - Tool = Blade  
   - Target = Handle  
6. Apply **fillets**:  
   - Full round on top/bottom, outside, and inside.  
   - Bottom outer edge fillet.  
7. Make the **Blade + Handle a Composite Part**.  
8. Add a **Mate Connector** on the bottom edge.

![Handle Sketch Placeholder](img/handle.png.png)

---

## Part 4 – Assembly

1. Import **two copies** of the composite part into a new **Assembly**.  
2. Add a **Mate Connector** to the origin and name it.  
3. Use a **Revolute Mate**:  
   - Connect one scissor part to the origin.  
   - Add the other, flip its primary axis.  
4. The two blades should now move.  
5. Define **Revolute Mate limits**.  
6. Add a **Gear Relation** between the two revolutes (opposite direction).  
7. Adjust limits (e.g., –3° to –42°).  
8. Hide mate connectors for clarity.

---

## Part 5 – Creating the Pivot

1. Use **Create Part in Context** at the assembly origin.  
2. Start a sketch on the **Front Plane** and **project edges**.  
3. Draw the pivot profile:  
   - Line through origin.  
   - Rectangular base and rounded top with arc.  
   - Construction lines for alignment.  
   - Revolute diameter: **5 mm**.  
4. Add a small line for the **flat head slot**:  
   - 0.4 mm from top, mirror across axis.  
5. **Revolve** to create the pivot.  
6. **Extrude-remove** the slot (1 mm deep).  
7. Rename the part **Pivot**, assign appearance, and return it to the assembly.  
8. Fix the pivot in place.  

---

## Part 6 – Animate the Scissors

1. In the assembly, animate the revolute mates.  
2. Adjust the limits and gear relation so the blades open/close like real scissors.  
3. Play the animation — the scissors are complete!

---
