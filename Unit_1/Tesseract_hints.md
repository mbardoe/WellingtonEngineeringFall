<!-- command: render -->
<!-- command: grid -->
# Hints for Designing a 3D-Printable Tesseract in Onshape

A tesseract is a “cube within a cube,” connected by struts. Here are some ideas and hints for modeling one that can actually be 3D printed.

---

## General Strategy
1. **Start with the larger cube.**  
   - Make a cube using a sketch and extrusion.  

2. **Create the smaller cube.**  
   - Use **Transform → Scale** to shrink a copy of the larger cube down. 
   - You may need to make some constructions lines to find a point about a quarter of the way from far corner to far corner.

3. **Build one connector.**  
   - Make a bar or cylinder that overlaps with both cubes.  
   - Use a **Boolean Subtract** to cut matching holes into the cubes.  
   - Place the connector into the holes.  

4. **Multiply the connectors.**  
   - Use a **Circular Pattern** to generate three more connectors.  
   - Use a **Mirror** to create the last four.  

---

## Making Planes
- **Three-point plane:**  
  - Define a plane by selecting **three points**. For example, choose midpoints of three cube edges to create a plane that bisects the cube.  

- **Perpendicular plane:**  
  - Make a plane **perpendicular to a line and passing through a point**. This is useful for positioning connectors at angles.  

- **Cutting into halves:**  
  - Midpoints on opposite edges give you planes that slice the cube into two equal parts. Printing each half separately helps avoid support material.  

---

## Printing Considerations
- **Avoid supports when possible:**  
  - Splitting the cubes in half lets you orient each half flat on the print bed.  

- **Think about strength:**  
  - A **butt joint** is when two pieces only touch end-to-end. This is weak for 3D prints.  
  - Stronger options:  
    - **Tenon-and-hole connectors:** one piece slots into the other.  
    - **Overlap:** increase the surface area where parts meet.  

- **Tolerance check:**  
  - Leave a tiny gap ( about 0.2 mm) between connectors and holes so parts fit together after printing.  

---

## Extra Tips
- Increase connector diameter if parts look too thin — balance durability and appearance.  
- Organize your model into **assemblies of sub-parts** (e.g., cube halves, connectors) to make reprinting or replacing easier.  
