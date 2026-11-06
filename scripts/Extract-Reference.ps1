[CmdletBinding()]
param(
    [Parameter(Mandatory=$true)][string]$VideoPath,
    [Parameter(Mandatory=$true)][string]$OutputDirectory,
    [ValidateRange(0.5,60)][double]$IntervalSeconds = 4
)
$ErrorActionPreference = 'Stop'
Get-Command ffmpeg,ffprobe -ErrorAction Stop | Out-Null
$sourcePath = (Resolve-Path -LiteralPath $VideoPath).Path
$targetPath = [IO.Path]::GetFullPath($OutputDirectory)
if (Test-Path -LiteralPath $targetPath) { throw 'Choose a new output directory; existing results are never overwritten.' }
$probeText = & ffprobe -v error -show_format -show_streams -of json $sourcePath
if ($LASTEXITCODE -ne 0) { throw 'FFprobe failed.' }
$metadata = ($probeText -join "`n") | ConvertFrom-Json
$video = @($metadata.streams | Where-Object codec_type -eq 'video')[0]
if (-not $video) { throw 'No video stream found.' }
$duration = [double]::Parse([string]$metadata.format.duration,[Globalization.CultureInfo]::InvariantCulture)
if ($duration -le 0) { throw 'Cannot determine a positive duration.' }
New-Item -ItemType Directory -Path $targetPath | Out-Null
$probeText | Set-Content -LiteralPath (Join-Path $targetPath 'metadata.json') -Encoding utf8
(Get-FileHash -LiteralPath $sourcePath -Algorithm SHA256).Hash | Set-Content -LiteralPath (Join-Path $targetPath 'source-hash.txt')
$times = [Collections.Generic.List[double]]::new()
for ($t = 0.0; $t -lt $duration; $t += $IntervalSeconds) { $times.Add($t) }
$endTime = [Math]::Max(0,$duration-0.25)
if ([Math]::Abs($times[$times.Count-1]-$endTime) -gt 0.25) { $times.Add($endTime) }
$rows = @()
for ($i=0; $i -lt $times.Count; $i++) {
    $stamp = $times[$i].ToString('0.000',[Globalization.CultureInfo]::InvariantCulture)
    $name = 'frame-{0:D4}.jpg' -f ($i+1)
    $framePath = Join-Path $targetPath $name
    & ffmpeg -hide_banner -loglevel error -ss $stamp -i $sourcePath -map 0:v:0 -frames:v 1 -vf 'scale=960:-2' -q:v 2 $framePath
    if ($LASTEXITCODE -ne 0 -or -not (Test-Path -LiteralPath $framePath)) { throw "Frame extraction failed at $stamp seconds." }
    $rows += [pscustomobject]@{frame=$name;timestamp_seconds=$stamp;kind='uniform_sample_not_cut_boundary'}
}
$rows | Export-Csv -LiteralPath (Join-Path $targetPath 'manifest.csv') -NoTypeInformation -Encoding utf8
$tileRows = [int][Math]::Ceiling($times.Count/3.0)
$pattern = Join-Path $targetPath 'frame-%04d.jpg'
& ffmpeg -hide_banner -loglevel error -framerate 1 -start_number 1 -i $pattern -vf "scale=320:-2,tile=3x${tileRows}" -frames:v 1 (Join-Path $targetPath 'contact-sheet.jpg')
if ($LASTEXITCODE -ne 0) { throw 'Contact sheet generation failed.' }
Write-Output "Extracted $($rows.Count) timestamped samples to $targetPath. Sample times are not detected cuts; audio is not analyzed."
