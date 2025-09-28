<!-- command: render -->
<!-- command: grid -->
# OnShape Project: Modeling Scissors

In this project, you will model a pair of scissors in OnShape.  
This will give you practice with **sketching, extrude, sweep, and planes**.

---

## Step 1: Sketch the Blade
1. Start a **new sketch** on the **Top plane**.  
2. Draw a **horizontal line** for the blade, centered on the origin, length **118 mm**.  
3. Continue sketching the general blade shape using the reference image.  
   - Use straight lines and arcs.  
   - Add an **arc at the end of the blade**.  
4. Add dimensions to fully define the sketch.  
   - Don’t forget the **angle** between the top and bottom edges.  
5. Add a **circle for the mating hole**.  

*Reference image for blade sketch:*  
![Blade Sketch Reference](img/blade.png.png)

---

## Step 2: Extrude the Blade
1. Finish the sketch.  
2. Use **Extrude** to a thickness of **1.4 mm**.  
3. Rename the part **Blade**.  
4. Edit the part appearance (color, finish) if you like.  

---

## Step 3: Sweep Path Along the Blade
1. Create a new **sketch** on the blade face.  
2. Draw a **line parallel to the edge**, offset **0.5 mm from the bottom**.  
3. Add an **arc that sweeps upward**.  
   - Line length = **50 mm**  
   - Arc radius = **14 mm**  

---

## Step 4: Create a Sweep Plane
1. Define a **plane** at the end of the sweep path.  
   - Use **Curve Point** to define the plane.  
   - Select the **endpoint of the sweep path** and the line of the sweep.  
2. On this plane, sketch the cross-section of the material to sweep.  
3. Use the **Sweep tool** to cut or add material along the path.  

---

## Deliverable
- A completed **scissors blade model** with swept geometry.  
- Save your OnShape document as:  
  - `Lastname_Scissors`  

---
