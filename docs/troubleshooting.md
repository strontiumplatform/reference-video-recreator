> Historical supporting reference. Current SYSTEM_PROMPT.md at the repository root controls defaults and workflow: Creative Mode always ON, Landscape 16:9 default, reference-video analysis allowed.

# Troubleshooting

## Why it might fail in ChatGPT / Codex

The errors:

> "both the file reader and the browser-control runtime failed to start with the same process security error… the process launcher is still failing"
> "the local process launcher failed, and the browser-control session exited unexpectedly"

**Main cause: ChatGPT doesn't have Full access.** On Mac and Windows, ChatGPT runs its browser tool through a process launcher. In the default **Ask for approval** mode that launcher is sandboxed, so the browser tool and the file reader both fail to start. Once the chat is switched to **Full access**, the same prompt works end to end. That's why the prompt's first message shows a Full access NOTE before asking for photos and a story.

**Don't make it worse.** This package has no CLI, no tests and no audit step, so there's nothing for the agent to launch. If an agent says it needs to "read a file", "run a script" or "verify the setup", it's working from an old or different prompt.

VideoExpress itself is not the problem. The app doesn't block browser automation.

## How to run it so this never happens

**The one honest limit:** if your chat environment's own browser tool cannot launch, no prompt can fix that. That's the platform, not the workflow. Start a fresh session with browser or agent mode enabled and paste again. The agent will at least hand you the character bible and all prompts before stopping, so nothing is lost.

### ChatGPT (recommended setup)
1. **Turn on Full access:** ChatGPT **Settings → General → Permissions → Full access**, then choose **Full access** in the chat's permissions menu (Settings only adds it to the menu). Mac: allow Screen Recording and Accessibility if asked. Details in [CHATGPT_SETUP.md](../CHATGPT_SETUP.md).
2. Open a **new chat** with Full access selected and Agent/browser mode available.
3. Paste the **short prompt** from `SYSTEM_PROMPT.md` (everything below the line) and attach your photos. Its first message repeats the Full access NOTE and asks for photos, names, story and accent.
4. The AI opens the full `PLAYBOOK.md` from GitHub in its browser. It's public, so no login is needed.
5. Upload the photos into **Media Library → My Media → Images**, click **I Agree** on the one-time Consistent Character disclaimer, sign in to VideoExpress or accept its one-time Terms screen when asked, then reply `done`.

### ChatGPT Atlas / a connected Chrome browser
1. Sign in to https://app.videoexpress.ai/ in that browser **first**.
2. Turn on agent mode in that browser, paste the short prompt from `SYSTEM_PROMPT.md` and attach the photos.
3. The agent uses your existing session, so no login step is needed.

### Codex
- **Not recommended for this task.** It's a browser job, and Codex runs work in a sandbox where processes may be blocked.
- If you use it anyway: open this repository so `AGENTS.md` loads (it tells Codex not to run anything), and make sure browser or computer control is enabled for the session. If the browser tool reports a launcher or sandbox error, switch to ChatGPT with agent mode or to Claude.

### Claude
- **claude.ai + Claude in Chrome:** sign in to VideoExpress in Chrome, open the Claude in Chrome extension, paste the prompt and attach the photos.
- **Claude desktop app:** use a session with the built-in browser. Paste the prompt with the photos, then sign in to VideoExpress in the browser pane when asked.
- **Claude Code:** open this repo (`CLAUDE.md` loads automatically) in a session with a browser tool available, then paste the prompt or say "make a consistent-character video" and give the photo paths.

### Compact version
If your platform limits instruction length, for example a custom GPT's instructions field, use `PROMPT_COMPACT.md` instead of the full prompt.

## Symptom → fix

| Symptom | Fix |
|---|---|
| ChatGPT: "process launcher failed" / "process security error" / "file read is failing" | Full access isn't selected for this chat. Settings → General → Permissions → Full access, then pick Full access in the chat's permissions menu, then reply `done`. |
| AI can't open GitHub | It falls back to the essentials built into the prompt. Or reply: `Open https://github.com/ai-playbooks/realistic-consistent-character-videos/blob/main/PLAYBOOK.md instead.` |
| AI asks before following the GitHub page | Reply: `Yes. That's my playbook, follow it.` |
| ChatGPT: "browser-control session exited unexpectedly" | Check Full access is selected for this chat, then reply: `Start a new browser session and continue from the next unfinished step.` |
| **Agent can't upload the photos** | Normal for some browser tools. In the open VideoExpress tab: **Media Library → My Media → Images → Upload file** → **+ Add files** (jpg/jpeg/png/gif, max 15 MB each) → name each `[Name] - reference photo` → **Upload files**. Reply `done`. (The Import Media panel has no file upload.) |
| **A "Disclaimer" pops up when Use Consistent Character is ticked** | One-time per account: no celebrities or famous people, you accept all legal liability. Read it, click **I Agree** yourself, reply `done`. The agent never accepts it for you. |
| **Photos ended up in the wrong slots** | Say: `Swap them: Reference Photo is [Name 1], Reference Photo 2 is [Name 2]. Regenerate the anchors.` |
| **Agent refuses because the photos are real people** | Confirm in one line who they are and that you have their permission. It will still refuse sexual, humiliating, hateful, political-impersonation, fake-news or deceptive stories, and photos of children. |
| **Face doesn't look like the photo (likeness drift)** | Use a close, sharp, front-facing head-and-shoulders photo; full-body photos with a small face give a younger, slimmer stranger. Ask: `Regenerate the anchor for [Name] with Creative mode ON, image enhance OFF and a more detailed Character Description where it drifted, then redo the drifting clips.` |
| **The Image Prompt text got shorter after Create Image** | Expected: with Use Consistent Character on, VideoExpress rewrites and shortens the box text even with image enhancement off. Paste the full prompt again for every image; never reuse the rewritten text. |
| **Old prompt text is still in the box** | Cmd/Ctrl+A doesn't always select it. Click into the box, select all, delete, and confirm it's empty before typing. |
| **Two people blend into one face** | Ask for more different Short Tags (hair, clothing colour), fixed screen sides, and both references selected in every two-person shot. |
| **Wrong person's mouth moves** | Ask: `Regenerate C## with the speaker's Short Tag right before the quote, the other person "lips closed, does not speak", one speaker per clip.` Or make it a solo close-up. |
| **Accent wanders or changes between clips** | The Voice Lock must be word-for-word identical in every video prompt, and **Automatically enhance my video prompt** must be OFF. Ask the agent to check both and regenerate the odd clip. |
| **No cuts inside a Multi-shot clip** | The video enhancer is probably ON (it is ON by default inside Advanced Mode and rewrites prompts into a single take). Turn it off, and make sure each cut is written as "A hard cut transitions to…" with a new shot size. |
| **Extra or missing words** | Shorten the line (max ~8 words per shot) with a breath before and after it. |
| **"You can generate up to 5 AI videos in parallel…"** | Normal. Nothing was created. The agent waits until a clip finishes, then clicks Create Video again. Don't make it start over. |
| **Clips missing in My AI Videos** | They're still rendering (% ring) or the folder is stale. Leave **My AI Videos** and re-enter it. Clips are titled by their video prompt (`C01 —`, `C02 —`…). |
| **Duration slider stuck at 10** | Ticking "Manual Video Length, sec" resets the slider to 10. Set the slider *after* ticking the box: click the handle, press Arrow Left until it reads 8 (or 5), then re-read it. |
| **"Share this in the public gallery" checked again** | It's on by default and turns back on whenever the dialog reopens. The agent unchecks it on every generation. If you spot it checked, say "uncheck the gallery box on every generation". |
| **Export says "number N in the queue"** | Normal server queue. Wait. The finished file appears in **My Videos** with a download link (hosted 40 days). |
| **Dead air / pauses still in the final video** | Tell the agent: "Redo the dead-air trim at each clip's start and end only, keep the cuts inside the clips, Auto Align Clips, play it through, then re-export." If it can't play media, it uses the fixed fallback (8 s clip: −0.3 s start / −0.5 s end; 5 s clip: −0.3 s / −0.4 s). |
| **A cut inside a clip got trimmed away** | The trim must touch only heads and tails. Ask: `Undo, then trim only the first and last frames of each clip.` |
| **Agent starts "auditing" or asks for approval** | Reply: "No audits or approvals. Follow Section 0 and continue production." |
| **Non-English dialogue requested** | Not supported yet. The agent continues in English with the chosen accent. |
| **Out of credits / upgrade screen** | Top up in the open tab and reply `done`. The agent continues where it stopped. |
