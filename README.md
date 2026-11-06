# Reference Video Recreator

Turn an uploaded reference video into a reusable visual blueprint and a new VideoExpress production: frames → style/beat map → consistent characters → new shots → captions → edit → export.

**Creative Mode ON for every image. Landscape 16:9 by default.** Duration follows the reference unless specified.

## Quick start
1. Paste everything below the divider in [SYSTEM_PROMPT.md](SYSTEM_PROMPT.md) into a browser-capable chat.
2. Attach a reference video and optionally a new story/product, replacement photos, verified offer and accent.
3. The agent analyzes actual frames and available audio, then produces through export. It retains progress when login, terms, credits or tool access require help.

The full prompt is self-contained for future chats. [PLAYBOOK.md](PLAYBOOK.md) indexes supporting files. This is a workflow package, not a video generation model.

## Included
- [Complete portable system prompt](SYSTEM_PROMPT.md)
- [Short launcher](PROMPT_COMPACT.md)
- [Count Meterov visual preset and original example](examples/count-meterov-reference.md)
- [Frame extraction helper](scripts/Extract-Reference.ps1) and [usage](docs/reference-analysis.md)
- [Reference blueprint template](templates/reference-blueprint.md), [shot plan](templates/shot-plan.csv), [progress ledger](templates/production-ledger.csv)
- Inherited VideoExpress UI notes and LTX prompting examples. These are historical technique references; current defaults come from SYSTEM_PROMPT.md.

The supplied Count Meterov reference measures 71.042 seconds, 1920×1080, 24 fps. Its preset describes theatrical direct-address comedy, purple/amber lighting, reaction cuts, a mascot demonstration, highlighted captions and an offer card. Inspection used sampled frames; audio was not listened to or transcribed. No recreation has yet been generated with this fork.

Keep source videos and extracted frames in ignored work/ or outputs/. Do not publish private footage to this repository. Old offers seen on screen must be revalidated before reuse.

## Attribution
Forked from [ai-playbooks/realistic-consistent-character-videos](https://github.com/ai-playbooks/realistic-consistent-character-videos), itself based on Realistic Mini Dramas. Original character consistency and UI references remain. This fork adds video-first analysis and local frame extraction, mandatory Creative Mode checks, landscape defaults, reference-driven timing, captions, demonstrations and end cards.
