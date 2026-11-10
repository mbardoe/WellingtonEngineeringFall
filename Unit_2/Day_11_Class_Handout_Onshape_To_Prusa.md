# How to 3D Print from OnShape to the Ender-3 S1 Pro

This guide shows you how to take a part you designed in **OnShape**, export it to **PrusaSlicer**, and then 3D print it on the **Creality Ender-3 S1 Pro** (with a 0.4 mm nozzle).

---

## Step 1: Export from OnShape
1. Open your part in OnShape.  
2. Right-click on the part name in the **Parts list** (bottom left).  
3. Select **Export…**.  
4. In the dialog box:
   - **Format**: `.STL`  
   - **Units**: Millimeters  
   - **Resolution**: Fine  
   - Leave the rest as default  
5. Click **OK** to download your STL file.

*OnShape Export Example*  
![OnShape Export STL](INSERT_IMAGE_LINK)

---

## Step 2: Open the File in PrusaSlicer
1. Open **PrusaSlicer** on your computer.  
2. Drag your `.STL` file into the workspace.  
3. Make sure the **Printer Profile** is set to:  
   - **Creality Ender-3 S1 Pro** (if available)  
   - If not, select **Ender-3** as a base profile and adjust as needed.  

---

## Step 3: Configure Print Settings
1. In the **Print Settings** panel:
   - **Layer Height**: 0.2 mm (good balance of speed and quality)  
   - **Perimeters**: 2–3  
   - **Infill**: 15–20% (Grid or Gyroid works well)  
   - **Supports**: Enable only if needed  
   - **Brim/Raft**: Use if your part has a small contact area  

2. In the **Filament Settings** panel:
   - **Material**: PLA  
   - **Temperature**: 200–210 °C (hotend), 60 °C (bed)  

3. In the **Printer Settings** panel:
   - **Nozzle Diameter**: 0.4 mm (default for the Ender-3 S1 Pro)

*PrusaSlicer Setup Example*  
![PrusaSlicer Setup](INSERT_IMAGE_LINK)

---

## Step 4: Slice and Save
1. Click **Slice Now** (bottom right).  
2. Preview the toolpath to make sure the layers look correct.  
3. Save the file as `.gcode` to your computer.  
4. Copy the `.gcode` file to the **microSD card** for the printer.

---

## Step 5: Print on the Ender-3 S1 Pro
1. Insert the **microSD card** into the Ender-3 S1 Pro.  
2. Preheat the printer:  
   - PLA: 200 °C (nozzle), 60 °C (bed).  
3. On the printer’s screen, choose:  
   - **Print → Select File → [your file].gcode**  
4. Wait while the printer heats and begins printing.  
5. Watch the first layer carefully:  
   - The filament should stick evenly to the bed.  
   - If it doesn’t, pause and adjust bed leveling or clean the surface.

---

## Step 6: Remove and Finish
1. When the print is done, let the bed cool.  
2. Gently remove the part using a scraper or by flexing the build plate.  
3. Trim any extra strings or support material.

---

## Tips
- Always check that your part fits within the **build volume** of the Ender-3 S1 Pro (220 × 220 × 270 mm).  
- If your print is too large, scale it down in PrusaSlicer.  
- For better adhesion, add a **brim** or use glue stick on the bed.  
- Never leave the printer unattended for long periods.

---

## Deliverable
- A successful 3D print of your OnShape design!  
- Take a photo of your print to document your progress.

---
