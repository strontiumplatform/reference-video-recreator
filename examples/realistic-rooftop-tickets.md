> Historical supporting reference. Current SYSTEM_PROMPT.md at the repository root controls defaults and workflow: Creative Mode always ON, Landscape 16:9 default, reference-video analysis allowed.

# Rooftop Tickets: Realistic, 30 s, Multi-shot

> Maya surprises Leo with front-row concert tickets at a rooftop café. He claims he's busy. Then he slides out the exact same pair he bought for her, and the spare tickets go to a couple at the next table.

> **Note:** In a real run, the Character Description comes from the user's photos. MAYA and LEO are fictional; their descriptions below are written as if read feature by feature off two close, front-facing reference photos (Section 2a of `PLAYBOOK.md`). Swap in the traits you see in your own photos and keep everything else.

**Production card (Section 2e)**

> 🎬 **Rooftop Tickets** · Realistic · 9:16 · ~30 s · 4 clips · Multi-shot
> **Cast:** Maya (Australian) · Leo (British)
> **Hook:** Maya slaps two front-row tickets on the table: "Don't say you're busy."
> Producing now. I'll come back with the finished video.

## Character Bible

### Character Descriptions (90–140 words each, face feature by feature plus the Wardrobe Lock; paste verbatim into every image prompt)

- `MAYA — woman in her late 20s, slim build, narrow shoulders; oval face, high defined cheekbones, softly tapered jaw, small rounded chin; warm brown almond-shaped eyes; straight, medium-thick dark brown brows with a clear gap; narrow straight nose with a softly rounded tip; medium-width mouth, fuller lower lip, rosy-brown lips; light olive skin with a warm golden undertone, natural texture, faint freckles across the nose, one small mole on the left cheekbone; thick, shoulder-length wavy black hair parted on the left, tucked behind the right ear; small gold hoop earrings; no glasses. Wearing a rust-orange chunky ribbed knit crew-neck sweater, light-wash straight-leg jeans, white canvas sneakers`
- `LEO — man in his early 30s, tall and lean, straight shoulders; rectangular face, high forehead, flat cheeks, defined square jaw and chin; hazel-green eyes, slightly hooded and deep-set, faint laugh lines; thick, straight light-brown brows sitting low; straight nose with a slightly pointed tip; medium-width mouth, thin upper lip, fuller lower lip; fair skin with a pink undertone, natural texture, light freckles across the nose and cheeks; even light-brown stubble on the jaw, chin and upper lip; short, tight, curly medium-brown hair, fuller on top, short at the sides, a few curls on the forehead, ears uncovered; no glasses. Wearing a knee-length charcoal wool overcoat, white crew-neck cotton tee, dark indigo slim jeans, white leather sneakers`

### Short Tags (use in every video prompt, after every cut)

- MAYA: `the woman with shoulder-length wavy black hair in the rust-orange sweater`
- LEO: `the man with short curly brown hair in the charcoal overcoat`

They differ in hair (long wavy black vs short curly brown) and clothing colour (warm rust-orange vs dark charcoal), so the model never blends them.

### Voice Locks (paste verbatim before every line)

- MAYA: `a warm, mid-pitched, confident female voice, speaking English with a natural Australian accent`
- LEO: `a low, relaxed, slightly husky male voice, speaking English with a neutral British accent`

### World Lock (one location for the whole video)

`ROOFTOP CAFÉ — wooden tables, string lights overhead, glass railing on the right, city skyline behind, late golden hour, warm sun from frame left, soft cool fill from the sky`

Blocking for every clip: **MAYA at frame left, LEO at frame right**, one small round wooden table between them. The glass railing stays on the right, the sun stays on the left.

### Props (counted, same in every shot)

Two white coffee cups; one black phone (screen never readable); Maya's two plain paper concert tickets; from C03 on, Leo's two identical paper tickets. No readable print on any ticket.

## Settings (Section 4, identical for every image and clip)

| Setting | Value |
|---|---|
| Format | **Vertical 9:16** (re-check before every Create Image and Create Video) |
| Image Type | **Photorealistic (Cinematic)** |
| Use Creative mode | **ON** (always: anchors, start images and retries) |
| Automatically enhance my image prompt | **OFF** |
| Use Consistent Character | **ON**: anchors from the photos first; then **Reference Photo** = MAYA's anchor, **Reference Photo 2** = LEO's anchor (both filled for C01–C04) |
| Lipsync HD Video / Narration Video | **OFF** |
| Share this in the public gallery | **OFF** (uncheck every time) |
| Advanced Mode | **ON** |
| → Automatically enhance my video prompt | **OFF** (it is ON by default; untick it every time) |
| → Video Only (No Sound) | **OFF** |
| → Manual Video Length, sec | **ON**, slider at **8** (Single-shot variant: **5**) |
| Clip math | 30 s Multi-shot → **4 clips × 8 s**, 2–3 shots each (12 shots total) |
| Sum of trim targets | **≈ 29.4 s** |

Prompt lengths: the video prompts are 198–200 words each, and the Single-shot one is about 135. The anchor prompts run about 270–280 words, the Single-shot start image about 300 and the two-person start-image prompts about 390–400 words, inside the playbook's ~200–400. That is because the realism tag, each full Character Description (MAYA 104 words, LEO 115) and the World Lock are pasted in verbatim, so only the pose text was kept short. After Create Image, VideoExpress may rewrite and shorten the Image Prompt in the box; paste the full prompt again for the next image.

**Realism tag (start of every image prompt):**

```
Photorealistic candid photograph, real people, natural skin texture with visible pores, true-to-life colour, soft natural contrast, shot on a full-frame cinema camera, 35mm lens, shallow depth of field, motivated practical lighting.
```

## Character anchor portraits (Section 5, once per character)

Settings as above (**Creative mode ON**). Empty both slots, put only that character's photo in **Reference Photo** (picker → **Images** → `[NAME] - reference photo` → **Choose**), Create Image (2 images in the carousel), check them hard against the photo, click the closest so it has the ✓, then **+ Consistent Character**. It is saved to **My AI Images** (no naming) and drops into the next empty slot.

**MAYA** (Reference Photo = `MAYA - reference photo` only)
```
Photorealistic candid photograph, real people, natural skin texture with visible pores, true-to-life colour, soft natural contrast, shot on a full-frame cinema camera, 35mm lens, shallow depth of field, motivated practical lighting. Character anchor portrait of MAYA — woman in her late 20s, slim build, narrow shoulders; oval face, high defined cheekbones, softly tapered jaw, small rounded chin; warm brown almond-shaped eyes; straight, medium-thick dark brown brows with a clear gap; narrow straight nose with a softly rounded tip; medium-width mouth, fuller lower lip, rosy-brown lips; light olive skin with a warm golden undertone, natural texture, faint freckles across the nose, one small mole on the left cheekbone; thick, shoulder-length wavy black hair parted on the left, tucked behind the right ear; small gold hoop earrings; no glasses. Wearing a rust-orange chunky ribbed knit crew-neck sweater, light-wash straight-leg jeans, white canvas sneakers. The reference photo shows THE SAME real person: preserve their real head shape, full cheek and jaw proportions, eye shape, brows, nose and lip shapes, apparent age, skin tone, natural skin texture and hair exactly. Do not slim, smooth or beautify the face, do not make them look younger, no actor substitution, no added beard, make-up or glasses that are not in the photo. Copy only the face and hair from the photo; ignore its background, clothing and any logos. Chest-up, facing the camera, relaxed natural expression with lips closed, in a rooftop café with wooden tables, string lights and a city skyline behind, softly out of focus, late golden-hour sun from frame left with soft cool fill from the sky. Exactly one person. No text, logos or watermark.
```

**LEO** (Reference Photo = `LEO - reference photo` only)
```
Photorealistic candid photograph, real people, natural skin texture with visible pores, true-to-life colour, soft natural contrast, shot on a full-frame cinema camera, 35mm lens, shallow depth of field, motivated practical lighting. Character anchor portrait of LEO — man in his early 30s, tall and lean, straight shoulders; rectangular face, high forehead, flat cheeks, defined square jaw and chin; hazel-green eyes, slightly hooded and deep-set, faint laugh lines; thick, straight light-brown brows sitting low; straight nose with a slightly pointed tip; medium-width mouth, thin upper lip, fuller lower lip; fair skin with a pink undertone, natural texture, light freckles across the nose and cheeks; even light-brown stubble on the jaw, chin and upper lip; short, tight, curly medium-brown hair, fuller on top, short at the sides, a few curls on the forehead, ears uncovered; no glasses. Wearing a knee-length charcoal wool overcoat, white crew-neck cotton tee, dark indigo slim jeans, white leather sneakers. The reference photo shows THE SAME real person: preserve their real head shape, full cheek and jaw proportions, eye shape, brows, nose and lip shapes, apparent age, skin tone, natural skin texture and hair exactly. Do not slim, smooth or beautify the face, do not make them look younger, no actor substitution, no added beard, make-up or glasses that are not in the photo. Copy only the face and hair from the photo; ignore its background, clothing and any logos. Chest-up, facing the camera, relaxed natural expression with lips closed, in a rooftop café with wooden tables, string lights and a city skyline behind, softly out of focus, late golden-hour sun from frame left with soft cool fill from the sky. Exactly one person. No text, logos or watermark.
```

## Clip list

| Clip | Role | Shots (A → B → C) | Speaker and line | Words | Length | Trim target |
|---|---|---|---|---|---|---|
| C01 | HOOK | medium two-shot → close-up Leo → insert hand on pocket | MAYA: "Front row. Tonight. Don't say you're busy." | 7 | 8 s | keep ~7.3 s |
| C02 | ESCALATION | MCU two-shot favouring Leo → close-up Maya → insert tickets | LEO: "Tonight? Can't, sorry. Huge work deadline." | 6 | 8 s | keep ~7.2 s |
| C03 | TWIST | medium two-shot → close-up Leo → top-down insert, four tickets | MAYA: "Wait. You bought the same tickets?" | 6 | 8 s | keep ~7.4 s |
| C04 | PAYOFF | medium two-shot → insert tickets to next table → MCU Maya toast | LEO: "Spare pair? That couple. Front row's on us." | 8 | 8 s | keep ~7.5 s |

One speaker per clip, one line per clip, every line inside Shot A and well under the 16-word budget. Total ≈ 29.4 s after trimming.

---

### C01 · HOOK

- **Speaker:** MAYA · "Front row. Tonight. Don't say you're busy." (7 words)
- **Use Consistent Character:** Reference Photo = MAYA anchor, Reference Photo 2 = LEO anchor
- **Manual Video Length:** 8 s
- **Trim target:** keep ~7.3 s (cut ~0.3 s before the ticket slap; cut ~0.4 s after the hand lands on the pocket)

**Image Prompt**
```
Photorealistic candid photograph, real people, natural skin texture with visible pores, true-to-life colour, soft natural contrast, shot on a full-frame cinema camera, 35mm lens, shallow depth of field, motivated practical lighting. Medium two-shot, seated eye level, front-facing, vertical 9:16 composition. MAYA — woman in her late 20s, slim build, narrow shoulders; oval face, high defined cheekbones, softly tapered jaw, small rounded chin; warm brown almond-shaped eyes; straight, medium-thick dark brown brows with a clear gap; narrow straight nose with a softly rounded tip; medium-width mouth, fuller lower lip, rosy-brown lips; light olive skin with a warm golden undertone, natural texture, faint freckles across the nose, one small mole on the left cheekbone; thick, shoulder-length wavy black hair parted on the left, tucked behind the right ear; small gold hoop earrings; no glasses. Wearing a rust-orange chunky ribbed knit crew-neck sweater, light-wash straight-leg jeans, white canvas sneakers, screen LEFT, leaning in, three-quarter to camera, right hand slapping two tickets flat on the table, brows raised in a dare, face unobstructed, mouth relaxed and slightly parted. LEO — man in his early 30s, tall and lean, straight shoulders; rectangular face, high forehead, flat cheeks, defined square jaw and chin; hazel-green eyes, slightly hooded and deep-set, faint laugh lines; thick, straight light-brown brows sitting low; straight nose with a slightly pointed tip; medium-width mouth, thin upper lip, fuller lower lip; fair skin with a pink undertone, natural texture, light freckles across the nose and cheeks; even light-brown stubble on the jaw, chin and upper lip; short, tight, curly medium-brown hair, fuller on top, short at the sides, a few curls on the forehead, ears uncovered; no glasses. Wearing a knee-length charcoal wool overcoat, white crew-neck cotton tee, dark indigo slim jeans, white leather sneakers, screen RIGHT, cup frozen halfway to his lips, eyes on the tickets, lips closed. All references show the same real people: keep each real face, hair and skin exactly; no beauty filter. ROOFTOP CAFÉ — wooden tables, string lights overhead, glass railing on the right, city skyline behind, late golden hour, warm sun from frame left, soft cool fill from the sky. Two white cups, two plain paper tickets, one phone face-down. EXACTLY 2 people; nobody else visible. Natural candid moment, believable hands, faces large and readable in the frame, nothing important in the top 10% or bottom 20% of the frame. No text, captions, logos, watermark or borders.
```

**Video and Audio Prompt**
```
C01 — A medium two-shot, front-facing at eye level, the camera holding static on the woman with shoulder-length wavy black hair in the rust-orange sweater at frame left and the man with short curly brown hair in the charcoal overcoat at frame right, at a rooftop café table in golden sun from frame left. Initially the woman slaps two paper tickets onto the table and leans in, then, after a quick breath, the woman with shoulder-length wavy black hair in the rust-orange sweater says in a warm, mid-pitched, confident female voice, speaking English with a natural Australian accent: "Front row. Tonight. Don't say you're busy." The man freezes, cup halfway to his lips, listens, lips closed, and does not speak. A hard cut transitions to a close-up of the man with short curly brown hair in the charcoal overcoat from a slight side angle, same golden light; the camera pushes in slightly as his eyes dart to his coat, silent. The view cuts to a close-up of his hand pressing flat over the coat's inner pocket. The sound carries across the cuts: her clear voice up front, the slap of paper on wood, café chatter and distant traffic, no music.
```

---

### C02 · ESCALATION

- **Speaker:** LEO · "Tonight? Can't, sorry. Huge work deadline." (6 words)
- **Use Consistent Character:** Reference Photo = MAYA anchor, Reference Photo 2 = LEO anchor
- **Manual Video Length:** 8 s
- **Trim target:** keep ~7.2 s (cut ~0.3 s before the phone lift; cut ~0.5 s after the tickets stop moving)

**Image Prompt**
```
Photorealistic candid photograph, real people, natural skin texture with visible pores, true-to-life colour, soft natural contrast, shot on a full-frame cinema camera, 35mm lens, shallow depth of field, motivated practical lighting. Medium close-up two-shot favouring the man, eye level, vertical 9:16 composition. LEO — man in his early 30s, tall and lean, straight shoulders; rectangular face, high forehead, flat cheeks, defined square jaw and chin; hazel-green eyes, slightly hooded and deep-set, faint laugh lines; thick, straight light-brown brows sitting low; straight nose with a slightly pointed tip; medium-width mouth, thin upper lip, fuller lower lip; fair skin with a pink undertone, natural texture, light freckles across the nose and cheeks; even light-brown stubble on the jaw, chin and upper lip; short, tight, curly medium-brown hair, fuller on top, short at the sides, a few curls on the forehead, ears uncovered; no glasses. Wearing a knee-length charcoal wool overcoat, white crew-neck cotton tee, dark indigo slim jeans, white leather sneakers, screen RIGHT and nearer the lens, three-quarter to camera, lifting a black phone, screen turned away, brows raised in a mock-apologetic wince, face unobstructed, mouth relaxed and slightly parted. MAYA — woman in her late 20s, slim build, narrow shoulders; oval face, high defined cheekbones, softly tapered jaw, small rounded chin; warm brown almond-shaped eyes; straight, medium-thick dark brown brows with a clear gap; narrow straight nose with a softly rounded tip; medium-width mouth, fuller lower lip, rosy-brown lips; light olive skin with a warm golden undertone, natural texture, faint freckles across the nose, one small mole on the left cheekbone; thick, shoulder-length wavy black hair parted on the left, tucked behind the right ear; small gold hoop earrings; no glasses. Wearing a rust-orange chunky ribbed knit crew-neck sweater, light-wash straight-leg jeans, white canvas sneakers, screen LEFT, further back, arms folded, eyes on him, lips closed. All references show the same real people: keep each real face, hair and skin exactly; no beauty filter. ROOFTOP CAFÉ — wooden tables, string lights overhead, glass railing on the right, city skyline behind, late golden hour, warm sun from frame left, soft cool fill from the sky. Two white cups, two plain paper tickets between them. EXACTLY 2 people; nobody else visible. Natural candid moment, believable hands, faces large and readable in the frame, nothing important in the top 10% or bottom 20% of the frame. No text, captions, logos, watermark or borders.
```

**Video and Audio Prompt**
```
C02 — A medium close-up two-shot, front-facing at eye level, the camera remaining static on the man with short curly brown hair in the charcoal overcoat at frame right, nearer the lens, and the woman with shoulder-length wavy black hair in the rust-orange sweater at frame left, same rooftop table, same golden light. Initially the man taps his phone twice and winces, then, after a quick breath, the man with short curly brown hair in the charcoal overcoat says in a low, relaxed, slightly husky male voice, speaking English with a neutral British accent: "Tonight? Can't, sorry. Huge work deadline." He shrugs on the last word while the woman listens, lips closed, arms folded, and does not speak. A hard cut transitions to a close-up of the woman with shoulder-length wavy black hair in the rust-orange sweater, front-facing in the same warm light; the camera remains static as her brows pull together and her eyes narrow, silent. The view cuts to a close-up of her fingers sliding the two tickets back to her side of the table. The sound carries across the cuts: his voice up front, two soft taps on glass, paper scraping on wood, café chatter, no music.
```

---

### C03 · TWIST

- **Speaker:** MAYA · "Wait. You bought the same tickets?" (6 words)
- **Use Consistent Character:** Reference Photo = MAYA anchor, Reference Photo 2 = LEO anchor
- **Manual Video Length:** 8 s
- **Trim target:** keep ~7.4 s (cut ~0.3 s before his hand moves; cut ~0.3 s after the four-ticket insert lands)

**Image Prompt**
```
Photorealistic candid photograph, real people, natural skin texture with visible pores, true-to-life colour, soft natural contrast, shot on a full-frame cinema camera, 35mm lens, shallow depth of field, motivated practical lighting. Medium two-shot, chest height, front-facing, vertical 9:16 composition. MAYA — woman in her late 20s, slim build, narrow shoulders; oval face, high defined cheekbones, softly tapered jaw, small rounded chin; warm brown almond-shaped eyes; straight, medium-thick dark brown brows with a clear gap; narrow straight nose with a softly rounded tip; medium-width mouth, fuller lower lip, rosy-brown lips; light olive skin with a warm golden undertone, natural texture, faint freckles across the nose, one small mole on the left cheekbone; thick, shoulder-length wavy black hair parted on the left, tucked behind the right ear; small gold hoop earrings; no glasses. Wearing a rust-orange chunky ribbed knit crew-neck sweater, light-wash straight-leg jeans, white canvas sneakers, screen LEFT, half-risen from her chair, three-quarter to camera, fingertips on her two tickets, eyes on his hand, face unobstructed, mouth relaxed and slightly parted. LEO — man in his early 30s, tall and lean, straight shoulders; rectangular face, high forehead, flat cheeks, defined square jaw and chin; hazel-green eyes, slightly hooded and deep-set, faint laugh lines; thick, straight light-brown brows sitting low; straight nose with a slightly pointed tip; medium-width mouth, thin upper lip, fuller lower lip; fair skin with a pink undertone, natural texture, light freckles across the nose and cheeks; even light-brown stubble on the jaw, chin and upper lip; short, tight, curly medium-brown hair, fuller on top, short at the sides, a few curls on the forehead, ears uncovered; no glasses. Wearing a knee-length charcoal wool overcoat, white crew-neck cotton tee, dark indigo slim jeans, white leather sneakers, screen RIGHT, seated, drawing two identical tickets from his inner coat pocket, a sly grin, lips closed. All references show the same real people: keep each real face, hair and skin exactly; no beauty filter. ROOFTOP CAFÉ — wooden tables, string lights overhead, glass railing on the right, city skyline behind, late golden hour, warm sun from frame left, soft cool fill from the sky. Two white cups, four plain paper tickets. EXACTLY 2 people; nobody else visible. Natural candid moment, believable hands, faces large and readable in the frame, nothing important in the top 10% or bottom 20% of the frame. No text, captions, logos, watermark or borders.
```

**Video and Audio Prompt**
```
C03 — A medium two-shot, front-facing at chest height, the camera holding static on the woman with shoulder-length wavy black hair in the rust-orange sweater at frame left, half-risen from her chair, and the man with short curly brown hair in the charcoal overcoat at frame right, same rooftop table and light. Initially the man pulls two tickets from his overcoat and lays them beside hers, then, after a quick breath, the woman with shoulder-length wavy black hair in the rust-orange sweater sinks back down and says in a warm, mid-pitched, confident female voice, speaking English with a natural Australian accent: "Wait. You bought the same tickets?" Her eyebrows shoot up on "same" while the man listens, lips closed, grinning, and does not speak. A hard cut transitions to a close-up of the man with short curly brown hair in the charcoal overcoat from a slight side angle in the same light; the camera pushes in slightly as he shrugs, silent. The view cuts to a top-down close-up of four identical paper tickets side by side on the wooden table. The sound carries across the cuts: her voice up front, a rustle of paper, a chair creaking, café chatter, no music.
```

---

### C04 · PAYOFF

- **Speaker:** LEO · "Spare pair? That couple. Front row's on us." (8 words)
- **Use Consistent Character:** Reference Photo = MAYA anchor, Reference Photo 2 = LEO anchor
- **Manual Video Length:** 8 s
- **Trim target:** keep ~7.5 s (cut ~0.3 s before he picks up the tickets; end right as her cup reaches the toast, ~0.2 s)

**Image Prompt**
```
Photorealistic candid photograph, real people, natural skin texture with visible pores, true-to-life colour, soft natural contrast, shot on a full-frame cinema camera, 35mm lens, shallow depth of field, motivated practical lighting. Medium two-shot, seated eye level, front-facing, vertical 9:16 composition. MAYA — woman in her late 20s, slim build, narrow shoulders; oval face, high defined cheekbones, softly tapered jaw, small rounded chin; warm brown almond-shaped eyes; straight, medium-thick dark brown brows with a clear gap; narrow straight nose with a softly rounded tip; medium-width mouth, fuller lower lip, rosy-brown lips; light olive skin with a warm golden undertone, natural texture, faint freckles across the nose, one small mole on the left cheekbone; thick, shoulder-length wavy black hair parted on the left, tucked behind the right ear; small gold hoop earrings; no glasses. Wearing a rust-orange chunky ribbed knit crew-neck sweater, light-wash straight-leg jeans, white canvas sneakers, screen LEFT, leaning back, a wide closed-lip grin, hand around her cup. LEO — man in his early 30s, tall and lean, straight shoulders; rectangular face, high forehead, flat cheeks, defined square jaw and chin; hazel-green eyes, slightly hooded and deep-set, faint laugh lines; thick, straight light-brown brows sitting low; straight nose with a slightly pointed tip; medium-width mouth, thin upper lip, fuller lower lip; fair skin with a pink undertone, natural texture, light freckles across the nose and cheeks; even light-brown stubble on the jaw, chin and upper lip; short, tight, curly medium-brown hair, fuller on top, short at the sides, a few curls on the forehead, ears uncovered; no glasses. Wearing a knee-length charcoal wool overcoat, white crew-neck cotton tee, dark indigo slim jeans, white leather sneakers, screen RIGHT, three-quarter to camera, mid-laugh, lifting two tickets, head tilting toward frame right, face unobstructed, mouth relaxed and slightly parted. All references show the same real people: keep each real face, hair and skin exactly; no beauty filter. ROOFTOP CAFÉ — wooden tables, string lights overhead, glass railing on the right, city skyline behind, late golden hour, warm sun from frame left, soft cool fill from the sky. Two white cups, four plain paper tickets. EXACTLY 2 people; nobody else visible. Natural candid moment, believable hands, faces large and readable in the frame, nothing important in the top 10% or bottom 20% of the frame. No text, captions, logos, watermark or borders.
```

**Video and Audio Prompt**
```
C04 — A medium two-shot, front-facing at eye level, the camera remaining static on the woman with shoulder-length wavy black hair in the rust-orange sweater at frame left and the man with short curly brown hair in the charcoal overcoat at frame right, both laughing at the same rooftop table in golden light. Initially the man lifts one pair of tickets and tilts his head toward a table off-screen right, then, after a quick breath, the man with short curly brown hair in the charcoal overcoat says in a low, relaxed, slightly husky male voice, speaking English with a neutral British accent: "Spare pair? That couple. Front row's on us." The woman grins, lips closed, nods once, and does not speak. A hard cut transitions to a close-up of his hand in the charcoal sleeve setting the two tickets beside two strangers' coffee cups on a neighbouring table. The view cuts to a medium close-up of the woman with shoulder-length wavy black hair in the rust-orange sweater, front-facing, laughing softly as she raises her white cup toward him. The sound carries across the cuts: his voice up front, paper tapping on wood, her soft laugh, café chatter, no music.
```

---

## Single-shot variant of C01 (5 s)

Use this instead of the Multi-shot C01 when the user picks **Single-shot** pacing (a full Single-shot version is 7 clips × 5 s; only C01 is shown here). One continuous take, no cuts, max 10 words.

- **Speaker:** MAYA · "Front row. Tonight. Don't say you're busy." (7 words)
- **Use Consistent Character:** Reference Photo = MAYA anchor only
- **Manual Video Length:** 5 s
- **Trim target:** keep ~4.3 s (cut ~0.3 s from the start, ~0.4 s from the end)

**Image Prompt**
```
Photorealistic candid photograph, real people, natural skin texture with visible pores, true-to-life colour, soft natural contrast, shot on a full-frame cinema camera, 35mm lens, shallow depth of field, motivated practical lighting. Medium close-up, camera at seated eye level, front-facing, vertical 9:16 composition. MAYA — woman in her late 20s, slim build, narrow shoulders; oval face, high defined cheekbones, softly tapered jaw, small rounded chin; warm brown almond-shaped eyes; straight, medium-thick dark brown brows with a clear gap; narrow straight nose with a softly rounded tip; medium-width mouth, fuller lower lip, rosy-brown lips; light olive skin with a warm golden undertone, natural texture, faint freckles across the nose, one small mole on the left cheekbone; thick, shoulder-length wavy black hair parted on the left, tucked behind the right ear; small gold hoop earrings; no glasses. Wearing a rust-orange chunky ribbed knit crew-neck sweater, light-wash straight-leg jeans, white canvas sneakers, CENTER, seated at a café table and leaning toward the lens, body three-quarter toward camera, gaze just right of the lens toward someone off-screen right, her right hand holding two paper tickets up beside her cheek, eyebrows raised in a playful dare, face unobstructed, mouth relaxed and slightly parted. The reference shows the same real person: keep her real face, hair and skin exactly; no beauty filter. ROOFTOP CAFÉ — wooden tables, string lights overhead, glass railing on the right, city skyline behind, late golden hour, warm sun from frame left, soft cool fill from the sky. Two plain paper tickets with no readable print, one white coffee cup on the table. EXACTLY 1 person; nobody else visible. Natural candid moment, believable hands, face large and readable in the frame, nothing important in the top 10% or bottom 20% of the frame. No text, captions, logos, watermark or borders.
```

**Video and Audio Prompt**
```
C01 — A medium close-up, front-facing at eye level, the camera remains static on the woman with shoulder-length wavy black hair in the rust-orange sweater at a wooden rooftop café table, warm string lights and late golden sun from frame left. Initially the woman with shoulder-length wavy black hair in the rust-orange sweater blinks and gives the tickets beside her cheek a quick flick, then after a quick breath the woman with shoulder-length wavy black hair in the rust-orange sweater says in a warm, mid-pitched, confident female voice, speaking English with a natural Australian accent: "Front row. Tonight. Don't say you're busy." Her eyebrows lift on "busy", and she finishes by slapping the tickets onto the table with a dare-me grin. The flat slap of paper on wood, soft café chatter and distant traffic below, no music.
```

## Edit notes (Section 9)

Add C01 → C04 to track 1 in order (find them by the `C01 —` … `C04 —` titles), click **Auto Align Clips**, then trim heads and tails only to the targets above; never cut inside a clip, where the shot cuts live. If you can't judge motion or audio, use the default: 0.3 s (12 px) off the start and 0.5 s (20 px) off the end of each 8 s clip. Auto Align again, play from 0:00, check for gaps or frozen holds, then **Save** as `Rooftop Tickets – Consistent Character` and **Export Video** (High / FullHD / mp4, 1080×1920).
