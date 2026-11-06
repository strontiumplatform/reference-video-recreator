# Changelog

## 1.0.0 (2026-11-06): first release

Forked from [Realistic Mini Dramas](https://github.com/ai-playbooks/realistic-mini-dramas) **1.1.1**. It keeps that package's zero-preflight, browser-only design: a short `SYSTEM_PROMPT.md` that loads the full `PLAYBOOK.md` from GitHub, the ChatGPT Full access NOTE as the first message, built-in fallback essentials, the never-stop error table, and `AGENTS.md` / `CLAUDE.md` saying "run nothing, use the browser".

**Live test (2026-11-06):** the anchor stage was tested end to end in VideoExpress: photo upload to the Media Library, the one-time Consistent Character disclaimer, the Reference Photo slots, Create Image and + Consistent Character. The findings are built into this release (Creative mode ON, detailed Character Descriptions, confirmed UI labels). The video generation, assembly and export stages follow the Realistic Mini Dramas recipe and were not yet re-run live in this test.

### Changed from Realistic Mini Dramas
- **Input:** instead of a topic and a style, the user attaches **1–2 real reference photos per character** (1 or 2 characters), names them, writes a story and picks an **English accent** per character. Optional length, format and pacing.
- **Realistic only.** Image Type **Photorealistic (Cinematic)** with **Use Creative mode ALWAYS ON** for every anchor, start image and retry (the live test showed a clearly closer likeness to the real person than with it off). The 3D / 2D / other style routing is gone.
- **Identity from real photos:** the photos are uploaded to **Media Library → My Media → Images** (the agent does it, e.g. with Claude in Chrome's file upload, or asks the user to). The user clicks **I Agree** on the one-time Consistent Character disclaimer. Anchors are made from each photo in **Reference Photo**; then **Reference Photo** = Character 1's anchor and **Reference Photo 2** = Character 2's anchor for the clips.
- **Character anchor portraits:** one chest-up portrait per character in the video's wardrobe, checked hard against the photos, selected (✓) in the 2-image carousel and saved with **+ Consistent Character** (to My AI Images, into the next empty slot). Character Bible rewritten as a very detailed **Character Description** (90–140 words: age/build, head and face shape, cheeks, jaw, chin, eyes, brows, nose, lips, skin tone/undertone/texture/marks, ears/facial hair, hair, accessories, plus a garment-by-garment **Wardrobe Lock**), verbatim in every image prompt, plus a **Short Tag** for video prompts. Image prompts now run ~200–400 words. New **World Lock** (max two locations, fixed landmarks and light).
- **Voice Lock:** one voice line plus a normalized accent phrase (e.g. `speaking English with a natural Australian accent`) per character, repeated word for word in every clip. Accent normalization table added.
- **Pacing:** default ~30 s as **4 clips × 8 s**, each with **2–3 cuts inside** the clip using **LTX 2.5 multi-shot prompting** (≈ 10 shots). Optional **Single-shot** mode with 5 s clips. Replaces the 4–5 s one-shot-per-clip model (45 s ≈ 15 shots).
- **LTX 2.5 prompt style:** one present-tense paragraph of 130–200 words, shot size and camera named per shot, "A hard cut transitions to…", re-identify by Short Tag after every cut, sound woven in at the end with "no music".
- **Prompt enhancement:** both **Automatically enhance my image prompt** and **Automatically enhance my video prompt** are **OFF**. The video one is **ON by default** inside Advanced Mode and must be unticked every time (it collapses multi-shot prompts into one take and strips the cuts).
- **Clip tags:** every video prompt starts with `C## —` (was `S## —`), so clips are easy to find in My AI Videos.
- **5-parallel wave rule:** the agent counts running renders, prepares the next start image and prompt while waiting, and submits when a slot frees up. A 30 s Multi-shot video fits in one wave.
- **Dead-air trim:** heads and tails only, because the cuts now live inside each clip. New fallback trim: 8 s clip −0.3 s / −0.5 s, 5 s clip −0.3 s / −0.4 s (was −0.5/−1.0 and −0.3/−0.6, with 2.5–3.5 s targets per shot).
- **Format:** **Vertical 9:16** (default everywhere) or Landscape 16:9, exported at FullHD (1080×1920 or 1920×1080).
- **Consent and privacy:** adults only, the user must have the right to use the likeness, no sexual, humiliating, hateful, political-impersonation, fake-news or deceptive content of a real person. **Public gallery off** on every generation, now framed as a real-faces privacy rule.
- **English only for now.** Non-English requests continue in English with the chosen accent.

### Added
- `CHATGPT_SETUP.md` section on attaching photos (close, front-facing head-and-shoulders photos work best), uploading them into the Media Library and the one-time disclaimer.
- Troubleshooting for likeness drift (photo quality, Creative mode ON), the disclaimer, the rewritten Image Prompt, leftover prompt text, blended faces, the wrong mouth moving, accent drift and missing cuts.
- UI map entries **confirmed live 2026-11-06**: the Media Library **Upload Media** dialog (+ Add files, jpg/jpeg/png/gif, 15 MB per image, Media name, Upload files), the one-time **Disclaimer** / **I Agree**, the **Reference Photo** / **Reference Photo 2** slots and their **Select Image** picker, **+ Consistent Character** behaviour, the 2-image carousel, the expected Image Prompt rewrite, Image Type options, prompt boxes that Cmd/Ctrl+A doesn't reliably clear, the video enhancer being ON by default, and Import Media having no file upload. Also right-click → **Add to Timeline**.
- Links to `docs/ltx-2.5-prompting.md` and the worked example `examples/realistic-rooftop-tickets.md`.

### Not carried over
- The 3D, 2D and Other style routes, the optional reference video input, the `fast-pacing-and-trim.md` skill reference, the thumbnail assets, `GITHUB_UPLOAD.md` and the mini-drama example storyboards.

## 2.0 — Reference Video Recreator (2026-11-06)
- Video-first analysis and timestamped frames, portable complete prompt, Count Meterov visual preset.
- Creative Mode checked before every image, Landscape 16:9 default, reference-driven duration.
- Local inspection permitted; captions, product demonstrations, end cards and resumable ledger added.
