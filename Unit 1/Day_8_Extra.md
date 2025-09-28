<!-- command: render -->
<!-- command: grid -->
# OnShape Project: Hinged Box

In this project, you will design a **box with a hinged lid** in OnShape.  
You will practice making multiple parts, assembling them, and using the **parts library** for standard hardware.  

This time, you’ll begin by **choosing a hinge pin from the OnShape Standard Content Library**, then design the hinge barrels to fit your chosen pin.

---

## Step 1: Explore the Parts Library
1. Create or open a new **Assembly tab**.  
2. Click **Insert** (top left of the toolbar).  
3. In the Insert dialog, select the **Standard Content** tab.  
   - This is OnShape’s built-in library of standard hardware.  

4. At the top, choose a **Standard**:  
   - For this project, use **ISO (metric)**.  

5. Under **Category**, select **Pins**.  
   - You will see different types of pins, such as:  
     - **Parallel Pins (ISO 8734)**  
     - **Taper Pins (ISO 2339)**  
     - **Grooved Pins (ISO 8740)**  

6. Click on a pin type to see available **diameters** and **lengths**.  
   - Don’t insert anything yet. Just explore!  

*Standard Content Library view:*  
![OnShape Standard Content Example](img/standardpart.png)
---

## Step 2: Choose a Pin
- Decide which pin you want to use for your hinge.  
- Write down its **diameter** and **length**.  
- You will design your hinge barrels so the pin fits correctly.  

*Tip: A 5 mm or 6 mm diameter pin works well for a small box hinge.*

---

## Step 3: Design the Box Base
1. Create a new Part Studio.  
2. Sketch a rectangle on the **Top plane** (e.g., 100 mm × 60 mm).  
3. Extrude upward to create the box base (e.g., 40 mm tall).  
4. Use **Shell** to hollow out the box walls (e.g., 3 mm wall thickness).  
5. Add **Fillets** to soften sharp edges if desired.  

---

## Step 4: Design the Lid
1. In the same Part Studio, create a new sketch on the **Top plane**.  
2. Sketch a rectangle that matches the **outer dimensions of the box**.  
3. Extrude upward to make a lid (e.g., 5 mm thick).  
4. Optionally add fillets or decorative details.  

---

## Step 5: Add Hinge Features
1. On one long side of the box, sketch and extrude **cylindrical barrels** (hinge loops).  
   - Size the holes slightly larger than your chosen pin diameter.  
   - Example: if you chose a **5 mm pin**, make the hinge holes **5.2 mm** for clearance.  
2. On the matching side of the lid, create **cylindrical barrels** that fit into the gaps between the box barrels.  
3. Make sure the barrels line up to form a continuous hinge path for the pin.  

*Hinge barrel layout example:*  
![Hinge Barrel Example](img/hingepic.png)
---

## Step 6: Insert the Pin
1. Switch back to the **Assembly tab**.  
2. Insert your **Box** and **Lid** parts.  
3. Open the **Standard Content** tab again.  
4. Select the **Pin** you explored earlier.  
   - Configure its **diameter** and **length** to match your design.  
5. Insert the pin into the hinge barrels.  

---

## Step 7: Mate the Assembly
1. Use a **Revolute Mate** between the lid and box so the lid can rotate.  
2. Use **Fastened Mates** to lock the pin in place.  
3. Drag the lid to test — it should open and close like a real hinge!  

---

## Step 8: Animate
1. Select the **Revolute Mate**.  
2. Use the **Animate tool** to show the lid opening and closing.  
3. Save your animation.  

---

## Deliverable
- A working **hinged box assembly** with:  
  - Box base  
  - Lid  
  - Pin from the Standard Content Library  
- An animation showing the lid opening and closing.  
- Save your document as:  
  - `Lastname_HingedBox`

---

## Challenge (Optional)
- Add a **latch mechanism** using another standard part (like a bolt or clip).  
- Add a **decorative design** (engraved text, logo, or pattern) to the lid.  
- Scale the box so it could hold a specific object (e.g., a deck of cards, USB sticks, or jewelry).
