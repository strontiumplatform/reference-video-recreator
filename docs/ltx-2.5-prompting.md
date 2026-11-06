> Historical supporting reference. Current SYSTEM_PROMPT.md at the repository root controls defaults and workflow: Creative Mode always ON, Landscape 16:9 default, reference-video analysis allowed.

# LTX 2.5 prompting for realistic talking characters

A practical reference for writing image-to-video prompts for Lightricks **LTX 2.5** when the clip must show real-looking people who speak with lip sync, keep a steady accent and stay recognizable across cuts. It is the background to Section 7 of [`PLAYBOOK.md`](../PLAYBOOK.md), where VideoExpress's "Video and Audio Prompt" field runs LTX 2.5 on 3–10 s clips.

**How to read the labels**

- **[OFFICIAL]**: Lightricks sources: docs.ltx.io, the ltx.io blog and capability pages, the Lightricks/LTX-2 GitHub repository (including the system prompts of its prompt enhancer) and the Lightricks Hugging Face model card.
- **[SECONDARY]**: provider and third-party guides (fal.ai, Runware, deAPI) and community threads.
- **[INFERENCE]**: our own conclusions from the above. Not documented anywhere; treat as tested habits, not facts.

Quotes are kept short; everything else is paraphrased. Source numbers such as [S1] refer to the list at the end.

---

## 1. Why the enhancer's system prompt is the best style guide

The LTX-2 repository publishes the system prompts its prompt enhancer uses to rewrite user prompts into the style of the model's training captions [S5][S6]. A prompt that already reads like the enhancer's output sits close to what the model saw in training, so those files are the most direct evidence of what LTX 2.5 "wants". **[OFFICIAL]**

The 2.5 image-to-video enhancer prompt [S5] asks, in short, for:

1. Opening on the action or a visual detail, never "The scene opens…", "We see…" or "There is…".
2. Only observable content: visible cues instead of named emotions.
3. Full detail for setting, light and people, with multiple people consistently differentiated.
4. For every shot, the **shot type**, **camera motion** (or "the camera remains static") and **viewpoint**, woven into prose, not tags.
5. A full soundscape: dialogue quoted exactly, tone of voice, music, ambience.
6. Real-time order with "Initially…", "A moment later…", "Simultaneously…".
7. One paragraph, no bullets or "Audio:" labels, roughly 150–220 words.
8. An opening that matches the reference image exactly, and a single continuous take.

The older LTX-2/2.3 enhancer [S6] adds: describe only what changes from the image (an inaccurate restatement "may cause scene cuts"), weave audio through the action, pair each quote with its voice quality and accent, never alter the user's dialogue, no timestamps.

**[INFERENCE]** The two versions disagree on how much to restate the first frame. The safe middle path for 2.5: one short opening clause naming each person by traits that are visible in the start image, with no new attributes, then spend the remaining words on motion, speech, camera and sound.

---

## 2. Structure rules

**The six elements** [S1][S3] **[OFFICIAL]**: (1) shot and scale, (2) scene: light, palette, textures, (3) action as a natural beginning-to-end sequence where every sentence has a doing verb, (4) characters: age, hair, clothing, emotion shown physically, (5) camera movement, including how the subject looks after the move, (6) audio: ambience, music, speech, with dialogue in quotation marks plus language and accent.

**Form** **[OFFICIAL]**
- One flowing paragraph, present tense [S1][S3]. Dialogue-heavy scenes may be written screenplay-style; the official samples use speaker cues with a delivery note and a "(beat)" [S3].
- Lead with the main action [S7].
- Write the pauses you want. The 2.5 duration logic will not stretch a moment or add a pause you did not prompt for [S1].
- Few characters, one coherent light logic per shot, and layer detail over iterations rather than all at once [S1].

**Avoid** **[OFFICIAL]** [S1][S3]
- Emotion labels without a visual cue.
- Readable text, signage and logos (better in 2.5, still unreliable; add in post).
- Chaotic physics: jumping, juggling, spins. Dancing is fine.
- Piling up characters, layered actions and objects: the more you ask for, the more gets dropped [S3].
- Conflicting light sources.
- Prompts copied from other models in tag or shot-list syntax [S1].

**Secondary additions** **[SECONDARY]**
- A bare noun-phrase opening tends to come out near-static; open on a verb [S9].
- Labelled fields look assembled; write prose [S9]. (One guide ends with a "Sound:" line [S8]; the official enhancer forbids labels, so we follow it.)
- No negative prompt on the hosted API; describe the positive end state [S9].
- Resolution and duration are request parameters, not prompt text [S9].
- Give every action an end state, or the clip drifts or loops [S9].

---

## 3. Dialogue and lip sync

**Official** **[OFFICIAL]**
- Spoken words go in **double quotation marks**, with language and accent stated where needed [S1][S3].
- Delivery is attached to the verb: "says softly", "mutters defensively", "exhales, slightly annoyed" [S3]. The official vocabulary covers voice quality (resonant, monotone, gravelly) and volume (whisper, mutter, shout) [S3].
- The enhancer pairs every quote with a voice description and never changes the words [S6].
- For lip-synced dialogue in one framing, the docs prefer a single continuous take [S1].

**Secondary** **[SECONDARY]**
- Budget about **2.5 spoken words per second**, with a beat of silence at each end [S9].
- A line that starts on frame one gives lip sync nothing to lock onto; leave a short breath first [S8].
- Keep speech out of the final second, where it tends to arrive half-finished [S9].
- Keep the camera static or slow while someone talks [S9]; 24/25 fps reads better than 50 for dialogue [S8].
- Describe the voice with tonal or physical words ("a warm, measured voice"), not an emotion, and keep one speaker per line [S10].
- Pin micro-motions to phrases: a blink, a small nod on the last word, a brow lift on a key word [S9].

**Keeping the listener's mouth closed.** There is no official rule beyond "few, clearly differentiated characters" [S1][S5]. Community fixes [S12][S13][S15] **[SECONDARY]**: name the speaker immediately before every line, keep the two people visually distinct, give the listener a concrete silent action, keep lines short, and fall back to one speaker per clip.

**[INFERENCE]** Our rules for realistic two-person clips:
- One speaker per clip.
- The speaker's identifying tag sits right before the quote.
- The other person "listens, lips closed, and does not speak".
- Never more than two visible people, since more faces are reported to merge [S9].

---

## 4. Accent phrasing

- Official guidance is simply to name the language and accent you want [S1][S3]. The clearest official template comes from the Dub-It speech-replacement guide: `[Speaker] is speaking [Language/Accent], saying: "[Dialogue]"` [S1]. **[OFFICIAL]**
- Guide phrasings seen in the wild: "English with a slight German accent" [S8], "in a calm British accent" [S10]. **[SECONDARY]**
- The model does not translate; write non-English lines in their own language and script [S1]. **[OFFICIAL]**

**[INFERENCE]** Accent stability across clips depends on repetition more than on wording. Fix one **Voice Lock** per character, a voice line plus an accent phrase, and paste it word for word before every line that character speaks:

```
says in a warm, mid-pitched, confident female voice, speaking English with a natural Australian accent: "…"
```

Changing even an adjective between clips invites a different voice.

---

## 5. Multi-shot cuts inside one clip

**Supported.** LTX 2.5 introduced native multi-shot generation that keeps identity, setting, light, voice and style across cuts [S2][S11]. There is no shot-count parameter: cuts are written in the prompt. **[OFFICIAL]**

**Phrasing** **[OFFICIAL]** [S1]
- Still one chronological paragraph. No shot list, numbered beats or sluglines unless the cut is also described in prose.
- Name the transition: "A hard cut transitions to…", "The view cuts to a close-up of…", "A match cut connects…", "The image dissolves into…".
- At each cut:
  - name the transition;
  - re-establish scale, angle, who is in frame, and light if it changed;
  - reuse the same visual identifiers for returning people;
  - state what the audio does ("the score continues across the cut").
- Plan 2–4 shots, each with a job: establish, detail, reaction.

**How many cuts per clip** **[SECONDARY]**: a shot needs about 3 s to register; a cut every 2 s reads like a slideshow [S9]. Guides stop at 3 shots for 8–10 s, never more than 4 [S8][S10b].

**Identity across cuts** **[SECONDARY]**: re-identify people with the same visible descriptors, not names or pronouns; the model cannot see a name, and an unannounced subject can return as someone else [S10b][S8].

**[INFERENCE]**
- 5–6 s: one shot. 8 s: 2–3 shots. Never more than 2 cuts in 8 s.
- Change shot size by at least one step at each cut.
- Keep each sentence of dialogue inside one shot.
- Don't use "[0–3s]" timestamps or "Shot 1:" numbering.

---

## 6. Image-to-video rules

- **The image sets the look; the prompt says what happens.** The model already knows what the scene looks like from the image, so spend the words on motion, camera and audio [S4][S10c]. Re-captioning the still with new traits causes identity drift [S9]. **[OFFICIAL + SECONDARY]**
- **Keep the opening consistent with the frame.** The 2.5 enhancer opens by matching the image without inventing or contradicting anything [S5]. **[OFFICIAL]**
- **Cuts from a start image are off the default path.** The docs prefer a single take for a first-frame clip unless you intentionally describe a cut away from it [S1], and the 2.5 i2v enhancer is told to avoid hard cuts [S5]. **[OFFICIAL]** **[INFERENCE]** So:
  - Shot A is the start image's framing and carries the dialogue, because the image anchors identity and lip sync best.
  - Later shots change scale or angle of the same people in the same place (medium → close-up, or a reverse angle on the listener), re-identified by their visible traits.
  - Anyone who appears after a cut should already be visible in the start image.
- **Small, supported motion.** Big camera swings or people walking into frame force the model to invent unseen detail [S10c]. Add "gentle" or "slow" to hair and fabric movement [S9]. **[SECONDARY]**
- **Camera vocabulary** **[OFFICIAL]** [S3]: follows, tracks, pans, tilts, pushes in, pulls back, handheld, over-the-shoulder, static frame; slow dolly-ins and over-the-shoulder framings are said to help consistency. Say where a move ends [S10d]. **[SECONDARY]**
- **Fixing a frozen start:** open on a verb and give a concrete first micro-movement (an inhale, a blink, a head turn) before the first word [S9][S8]. **[SECONDARY]**

---

## 7. Audio and "no music"

- Describe ambience, effects, speech and music in prose; the official examples use plain, concrete settings such as café noise and rain [S1][S3]. **[OFFICIAL]**
- Every sound should have a visible source and be tied to its action ("the slap of paper on wood"); abstract mood audio lands less reliably [S6][S8][S10]. **[OFFICIAL/SECONDARY]**
- Mix in words: voice up front, effects with the motion, the ambient bed underneath, with volume words ("a distant murmur") [S10]. **[SECONDARY]**
- **No music.** An official sample keeps a vocal-only track with an explicit no-music phrase [S1]. One provider calls "no music" the single most useful audio direction, because the model otherwise often adds its own score [S10]. **[OFFICIAL + SECONDARY]**
- **No captions.** No official guidance. Quoted dialogue is spoken, not rendered as on-screen text [S10]. **[INFERENCE]** Don't mention subtitles or captions at all, since naming them can invite them. If text appears anyway, add "no on-screen text" once at the end; negative phrasing is weak in LTX [S9], so keep it to one clause.

---

## 8. Prompt enhancer: off

- **[OFFICIAL]** The enhancer is an LLM rewrite. It helps most with short, rough prompts or prompts written for another model, least with prompts that already follow the structure. The docs say to leave it off if you want your prompt submitted exactly as written [S1][S4].
- **[INFERENCE from S5]** Leaving it on with a hand-written multi-shot prompt risks four things:
  - The 2.5 i2v enhancer is told to write one continuous take, so it may strip your cuts.
  - It adds aesthetic descriptors you didn't ask for.
  - It expands the text to 150–220 words, which can shift dialogue timing.
  - It may reword your Voice Lock, which loosens the accent.
- **Recommendation:** switch any "enhance my video prompt" toggle **off**, and write in enhancer-output style anyway so that any server-side rewrite changes little.

---

## 9. Word budgets

| Clip | Spoken words (max) | Prompt length | Shots | Source |
|---|---|---|---|---|
| 5 s, Single-shot | **10** | 80–150 words | 1 | [INFERENCE] from [S9] |
| 8 s, Multi-shot | **16** total, ~8 per line, max 2 lines | 130–200 words | 2–3 | [INFERENCE] from [S9][S10b] |
| 10 s | 20–25 | 150–220 words | up to 3 | [SECONDARY] [S9]; [OFFICIAL] [S5][S7] |

The spoken budget is ~2.5 words/s minus ~1.5 s of silence (a breath before the first word, a beat after the last). Fewer words is always safer: if words get skipped or rushed, shorten the line before anything else. The official prompt-length ceiling is "within 200 words" in the LTX-2 README [S7]; the 2.5 enhancer writes 150–220 [S5].

---

## 10. Failure modes and fixes

| Symptom | Fix | Label / source |
|---|---|---|
| Face drifts or morphs | Don't re-describe the still with new traits; keep motion small; reuse identical descriptors after cuts; max two people | [SECONDARY] S9, S10b, S10c; [OFFICIAL] S1 |
| Static or frozen opening | Open on a verb with a concrete first micro-movement | [SECONDARY] S9 |
| Extra, skipped or rushed words | ~2.5 words/s, silence at both ends, nothing in the last second | [SECONDARY] S9; [OFFICIAL] S1 (Dub-It timing) |
| Wrong person's mouth moves | Name the speaker right before the line; distinct looks; silent action for the listener; one speaker per clip | [SECONDARY] S10, S12, S13 |
| Loose lip sync | Steady camera, one framing for the line, a beat before the first word | [OFFICIAL] S1; [SECONDARY] S8, S9 |
| Accent wanders between clips | Identical Voice Lock in every prompt; enhancer off | [INFERENCE] |
| Unwanted score | End with "no music" | [OFFICIAL] S1; [SECONDARY] S10 |
| Cut ignored, or a camera move instead of a cut | Name the cut ("A hard cut transitions to…"), change shot size, re-establish framing; enhancer off | [OFFICIAL] S1; [SECONDARY] S10b |
| Thin or silent audio | Close, concrete sound sources tied to visible actions | [SECONDARY] S8, S9 |
| Garbled text or logos | Leave them out; add in post | [OFFICIAL] S1, S3 |
| Clip loops or drifts at the end | Give the action an end state; end on the action or the last word | [SECONDARY] S9 |

---

For fill-in templates that put all of this together (Multi-shot 8 s and Single-shot 5 s), see `PLAYBOOK.md` Section 7; for a complete worked production, see [`examples/realistic-rooftop-tickets.md`](../examples/realistic-rooftop-tickets.md). **[INFERENCE]**

---

## Sources

**Official (Lightricks)**
- [S1] LTX Docs, Prompting Guide (LTX-2.5 multi-shot, enhancer, Dub-It template): https://docs.ltx.io/api-documentation/implementation-guides/prompting-guide.md
- [S2] LTX Docs, LTX-2.5 model page: https://docs.ltx.io/models/ltx-2-5.md
- [S3] LTX blog, "Prompting Guide for LTX-2": https://ltx.io/blog/prompting-guide-for-ltx-2
- [S4] LTX Docs, Image-to-Video workflow: https://docs.ltx.io/open-source-model/usage-guides/image-to-video.md
- [S5] LTX-2 repository, Gemma 4 image-to-video enhancer system prompt: https://raw.githubusercontent.com/Lightricks/LTX-2/main/packages/ltx-core/src/ltx_core/text_encoders/gemma/encoders/prompts/gemma4_i2v_system_prompt.txt
- [S6] LTX-2 repository, Gemma 3 image-to-video enhancer system prompt (LTX-2/2.3): https://raw.githubusercontent.com/Lightricks/LTX-2/main/packages/ltx-core/src/ltx_core/text_encoders/gemma/encoders/prompts/gemma3_i2v_system_prompt.txt
- [S7] LTX-2 GitHub README, "Prompting for LTX-2": https://github.com/Lightricks/LTX-2
- [S11] LTX multi-shot capability page: https://ltx.io/model/capabilities/multi-shot-video-generation ; Hugging Face model card: https://huggingface.co/Lightricks/LTX-2.5

**Secondary**
- [S8] fal.ai, "How To Use LTX-2.5: Prompts & Workflows": https://fal.ai/learn/tools/how-to-use-ltx-2-5
- [S9] deAPI, LTX-2.5 prompting guide (multi-shot, native audio): https://deapi.ai/blog/ltx-2-5-prompting-guide-multi-shot-scenes-native-audio-and-prompts-that-actually-cut
- [S10] Runware, LTX-2.5 Pro native audio guide: https://runware.ai/docs/models/lightricks-ltx-2-5-pro/guides/native-audio
- [S10b] Runware, multi-shot guide: https://runware.ai/docs/models/lightricks-ltx-2-5-pro/guides/multi-shot
- [S10c] Runware, first-and-last-frame guide: https://runware.ai/docs/models/lightricks-ltx-2-5-pro/guides/first-and-last-frame
- [S10d] Runware, camera-movement guide: https://runware.ai/docs/models/lightricks-ltx-2-5-pro/guides/camera-movement
- [S12] Reddit thread snapshot on LTX speaker mix-ups: https://reddit.sentinel-team.org/posts/1sn81lv/snapshots/2026-04-17T23%3A24%3A32.190246Z
- [S13] Hugging Face forum, "LTX 2.3 problem with dialogs": https://discuss.huggingface.co/t/ltx-2-3-problem-with-dialogs/176649 ; Oakgen, wrong character speaking: https://oakgen.ai/blog/ai-video-wrong-character-speaking
- [S14] LTX 2.3 lip-sync guide (seen only as a search snippet): https://ltx.io/model/model-blog/ltx-2-3-lip-sync-guide
- [S15] Atlabs help, lip sync with multiple characters: https://help.atlabs.ai/en-us/article/lip-sync-with-multiple-characters-in-one-scene-1vvbxfa/
- [S16] Hugging Face, Lightricks/LTX-2.5 discussion #44 (custom-audio lip sync): https://huggingface.co/Lightricks/LTX-2.5/discussions/44

Not verified: how VideoExpress calls LTX 2.5 internally (whether a server-side enhancer runs, and which frame rate it uses).
