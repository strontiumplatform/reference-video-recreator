> Historical supporting reference. Current SYSTEM_PROMPT.md at the repository root controls defaults and workflow: Creative Mode always ON, Landscape 16:9 default, reference-video analysis allowed.

# VideoExpress UI map

Observed live in the signed-in editor at https://app.videoexpress.ai/ on 2026-10-23 (inherited from Realistic Mini Dramas). Entries marked **(confirmed live 2026-11-06)** were tested end to end with this workflow (photo upload, disclaimer, reference slots and anchor portraits). Labels are shown **bold**, exactly as they appear. If the UI changes, find the control by its visible text and keep going.

## Top bar
**New** · **Open** · **Save** (its arrow opens **Save Project As** / **Export Project**) · **My Videos** · **Public Gallery** · **Workflows** · orange **Export Video** button.

## Right sidebar
**Media Library** · **Create with AI** · Import Media / Text to Speech · Text Animations · Filters · Fast Cut · Automatic Captions · Audio Cutter.

**Import Media has NO file upload** (confirmed live 2026-11-06): it only offers Text to Speech, CloneVoice, Artistly and the webcam / voice / screen recorders. Upload photos through the Media Library (below).

## Create with AI → Create Video From Prompt (the generation dialog)
Menu entries include: **Create Video From Prompt** (Image to Video · Lipsync HD · Narrate · Consistent Character, "3.5" badge), Text To Video, First Frame Last Frame, Smart Edit, Stylize Character, Image To Video (Old Algorithm), Lipsync Video (Old Algorithm), Outpainting, Change Aspect Ratio, AI Sound Maker. **Always use Create Video From Prompt.** The "3.5" badge is a version label. It is not a model name you need to check. Image-to-video runs on LTX 2.5, which makes picture, voice, lip sync and sound from one prompt and can cut between shots inside one clip.

| Control | Default | Set it to |
|---|---|---|
| **Landscape 16:9** / **Vertical 9:16** | Vertical | **Vertical 9:16** (default) or the user's choice; re-check before every Create Image and Create Video |
| **Image Prompt** (textarea) | keeps last value | select all, delete, **confirm it's empty**, type the new prompt |
| **Video and Audio Prompt** (textarea, "New – Multi-Shot" label) | keeps last value | select all, delete, **confirm it's empty**, type a new prompt starting with `C## —` |
| **Image Type** (select: **Human**, **2D**, **3D**, **Photorealistic (Cinematic)**, **Other**) | Human | **Photorealistic (Cinematic)** (confirmed live 2026-11-06) |
| **Use Creative mode** | off | **ALWAYS ON** for every anchor, start image and retry (confirmed live 2026-11-06: clearly closer likeness to the real person than off) |
| **Automatically enhance my image prompt** | **on** | **OFF** (it rewrites your identity text) |
| **Use Consistent Character** | off | **ON** on every image, with only the people visible in that frame (first tick shows a one-time **Disclaimer**; the user clicks **I Agree**) |
| → **Reference Photo** / **Reference Photo 2** | empty | anchors: only that character's uploaded photo in **Reference Photo**; clips: **Reference Photo** = Character 1's anchor, **Reference Photo 2** = Character 2's anchor **(confirmed live 2026-11-06)** |
| → **Use from Library** | – | not needed: pick anchors from **My AI Images** in the slot picker |
| **Lipsync HD Video** / **Narration Video (Choose my Audio)** | off | OFF (LTX 2.5 makes the voice and lip sync natively) |
| **Share this in the public gallery** | **ON** | **uncheck** on every generation (it turns back on when the dialog reopens) |
| **Advanced Mode** | off | **ON** |
| → **Automatically enhance my video prompt** | **on** | **untick it, OFF** (the enhancer rewrites prompts into a single take and strips your cuts) **(confirmed live 2026-11-06: ON by default)** |
| → **Video Only (No Sound)** | off | OFF |
| → **Manual Video Length, sec** (slider 3–10) | off / 5 | ON, then set the slider to **8** (Multi-shot) or **5** (Single-shot) |
| Buttons | | **Enhance Prompt** (don't use) · **Create Image** · **+ Consistent Character** · **Create Video** |

### Uploading the reference photos (confirmed live 2026-11-06)
1. **Media Library** (right sidebar) → **My Media** → open the **Images** folder → **Upload file**.
2. The **Upload Media** dialog opens → **+ Add files** (jpg, jpeg, png, gif; max **15 MB** per image).
3. Each added file gets a **Media name** field: type `[NAME] - reference photo`.
4. Click **Upload files**.
- The dialog uses a standard multiple file input, so Claude in Chrome's file upload works on it. If your browser tool can't reach the chat's attachments, ask the user once to upload them the same way and reply "done".
- **Photo quality:** close, sharp, front-facing head-and-shoulders photos give a much better likeness than full-body photos with small faces (a full-body photo produced a younger, slimmer stranger in testing).

### Use Consistent Character and the Reference Photo slots (confirmed live 2026-11-06)
- **First tick on an account:** a one-time **Disclaimer** appears (no celebrities or famous people; the user assumes all legal liability; VideoExpress shares information in case of legal claims) with an **I Agree** button. **The user must click I Agree**, never the agent. Ask: *"VideoExpress is showing a one-time Consistent Character disclaimer. Please read it and click I Agree in the open tab, then reply 'done'."*
- Ticking **Use Consistent Character** shows two slots: **Reference Photo** (slot 1) and **Reference Photo 2** (slot 2).
- Clicking a slot opens a **Select Image** picker over the Media Library (folders: **Images**, **My AI Images**, …). Pick the image → **Choose**. The picker has its own **Upload file** button.
- Each filled slot shows a thumbnail with a trash icon to empty it.
- Anchors: empty both slots, then only that character's uploaded photo in **Reference Photo**. Clips: **Reference Photo** = Character 1's anchor, **Reference Photo 2** = Character 2's anchor (both from **My AI Images**). For a one-person frame, keep only that person's anchor in a slot, then restore both.
- Check the thumbnails after every change: the right person in the right slot, not swapped. Re-read the slots every time the dialog opens.

### Create Image and the carousel (confirmed live 2026-11-06)
- Each **Create Image** makes **2 images** in a carousel (about 20–40 s). The **✓** marks the selected one; click an image to select it.
- With Use Consistent Character on, VideoExpress **rewrites and shortens the Image Prompt text** in the box after Create Image, even with image enhancement off. That's expected. Paste your full prompt again for every image; never reuse the rewritten text.

### + Consistent Character (confirmed live 2026-11-06)
Select the best anchor image in the carousel (✓), then click **+ Consistent Character**. There is no naming step: it saves the selected image to **My AI Images** and puts it into the next empty reference slot. Pick anchors later from **My AI Images** in the slot picker.

### Dialog quirks
- The dialog **remembers every field and image** between opens. Overwrite both prompts and re-set every checkbox on every clip.
- Ticking **Manual Video Length** resets the slider to **10**. Set the slider after ticking, then re-read it. Click the handle and use Arrow Left/Right if dragging misses.
- **Create Video** is often below the fold. Scroll inside the dialog with the mouse wheel.
- The **Close** button is unreliable. Use the top-right **X**.
- Element references go stale after every change. Re-read the page before each click so you don't toggle the wrong checkbox.
- Generated images are 1088×1920 (vertical) and appear in a carousel, 2 per Create Image. Make sure the new one has the ✓ before you click Create Video.
- **Cmd/Ctrl+A doesn't reliably clear the prompt boxes** (confirmed live 2026-11-06). Click into the box, select all, delete, then re-read the box and confirm it's empty before typing; delete again if text remains.
- With Use Consistent Character on, the Image Prompt is rewritten after Create Image even with the enhancer off (see above). If it's rewritten *before* you click Create Image, the image enhancer is ON: turn it off and retype.

### Submission results
- Success: toast *"Your video will appear in your Media Library under the My Media tab when it's ready."* plus *"Video: <id>"*.
- *"You can generate up to 5 AI videos in parallel…"*: nothing was created. Wait until a clip finishes (or 60 s) and click **Create Video** once more.
- Login / Terms / upgrade / payment screen: the user must click it. Ask them, wait for "done", then continue.
- **5-parallel limit:** at most 5 videos render at once per account. Create Image doesn't count toward it, so prepare the next start image and prompt while waiting.

## Media Library
**Media Library** → **My Media** tab → folders include **Images** (uploaded photos), **My AI Images** (anchors saved with + Consistent Character) and **My AI Videos**. Double-click **My AI Videos** (sort **Newest**) for the clips. Each card is titled with the start of its video prompt, which is why every prompt starts with `C## —`. Rendering clips show a **% ring**. Leave and re-enter the folder to refresh. Thumbnails can look cropped, so trust the title.

## Timeline editor
- **Preview** top-left, with the canvas buttons **Landscape 16:9** / **Vertical 9:16** above it. Player buttons: **Step backward**, **Play**, **Step forward**. The time readout shows whole seconds only.
- **Timeline toolbar:** Undo · Redo | **Zoom out** · **Zoom in** | Add track below · Add track at top | Copy · Paste · **Cut** (scissors, which splits the clip under the playhead; no selection needed) | Save current frame.
- **Track row, left side:** **Auto Align Clips** (`+|+`, packs clips together and closes gaps) · Fast Cut Toggle · Mute · Disable video · trash. ⚠️ The trash icon deletes the whole TRACK. Never use it for a clip.
- **Adding clips:** drag a thumbnail from My AI Videos onto track 1 (it lands where you drop it), or **right-click the card → Add to Timeline**. Check that exactly one new clip appeared, then click Auto Align Clips.
- **Selecting:** left-click a clip. There's no properties panel and there are no numeric start/end/duration fields.
- **Right-click a clip:** Properties (volume only), Resize and move, Voice Changer, Save Audio, Separate Audio and Video, Transition In/Out/Between, Add voiceover, **Delete**.
- **Deleting a clip piece:** right-click → **Delete**. The keyboard Delete/Backspace keys do nothing. Deleting leaves a gap (no ripple), so click **Auto Align Clips**.
- **Trimming by edge:** both clip edges are drag handles (about 8 px wide, full clip height). Right edge leftward trims the end. Left edge rightward trims the start but shifts the clip and leaves a gap, so click Auto Align Clips. Minimum clip width is 10 px.
- **Heads and tails only:** Multi-shot clips have their shot cuts inside them. Trim only the start and end of each clip; never cut inside it.
- **Playhead:** click the ruler strip above the tracks, or use Step forward/backward (about 0.1 s per press after 3 zoom-ins), or focus the playhead handle and press Arrow Left/Right (1 px per press). There's no timecode input.
- **Scale:** after clicking **Zoom in** 3 times from the default, the ruler labels every 3 s, 120 px apart: **40 px = 1 s**, **1 px = 25 ms**.
- **Fallback trim** when you can't judge the media: 8 s clip −0.3 s start (12 px) / −0.5 s end (20 px); 5 s clip −0.3 s (12 px) / −0.4 s (16 px).
- **No audio waveform** on the timeline. Judge cut points from the preview frame and by playing the audio.
- **Fast Cut** adds transitions only. Don't use it for dead-air removal.

## Save and export
1. **Save** (name the project `[Title] – Consistent Character`; use **Save Project As** to rename).
2. **Export Video** → **High** / **FullHD** / **mp4** → server queue ("number N in the queue"). 9:16 exports 1080×1920; 16:9 exports 1920×1080.
3. **My Videos** lists the finished file with a download link. Files are hosted for 40 days.
