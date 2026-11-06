# Extract and inspect reference frames
Requires PowerShell plus FFmpeg and FFprobe on PATH. No Python or external upload required.

```powershell
./scripts/Extract-Reference.ps1 -VideoPath 'C:/path/reference.mp4' -OutputDirectory './work/reference' -IntervalSeconds 4
```
The helper refuses an existing output directory to avoid mixing runs. It writes metadata.json, manifest.csv, individual JPGs, contact-sheet.jpg and source-hash.txt locally. Times in the manifest are sample positions, NOT detected cuts. Add closer samples or scrub playback around transitions before claiming exact shot durations. Frame extraction cannot establish dialogue, accent or music. Listen separately with a supported player/transcription tool; mark audio unavailable when necessary.

For browser-only environments, view the attachment in a supported player and note seek times/screenshots manually. If the attachment cannot be accessed, request an accessible copy; never invent a blueprint. Only upload selected authorized assets to VideoExpress. Do not commit private reference assets to GitHub.
