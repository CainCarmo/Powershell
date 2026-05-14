function Get-VideoSection {
  param(
    [Parameter(Mandatory = $true)]
    [string]$filePath,
    [Parameter(Mandatory = $true, HelpMessage = "The start time of the section (HH:MM:SS)")]
    [string]$sectionStart,
    [Parameter(Mandatory = $true, HelpMessage = "The end time of the section (HH:MM:SS)")]
    [string]$sectionEnd,
    [Parameter(HelpMessage = "The output file path for the extracted section")]
    [string]$outputPath
  )

  if (-not (Get-Command ffmpeg -ErrorAction SilentlyContinue)) {
    Write-Error "ffmpeg is not installed. Please install it to use this function."
    return
  }

  if (-not (Get-Command yt-dlp -ErrorAction SilentlyContinue)) {
    Write-Error "yt-dlp is not installed. Please install it to use this function."
    return
  }

  if ([string]::IsNullOrEmpty($outputPath)) {
    $outputPath = Join-Path -Path (Get-Location) -ChildPath "pwsh-download.mp4"
  }

  if (-not $filePath -match "^https?://") {
    if (-not (Test-Path -Path $filePath)) {
      Write-Error "The specified file path does not exist: $filePath"
      return
    }

    ffmpeg -i "${filePath}" -ss "${sectionStart}" -to "${sectionEnd}" -c copy "${outputPath}"
    return
  }

  yt-dlp "${filePath}" -f "bestvideo+bestaudio/best" --download-sections "*${sectionStart}-${sectionEnd}" -o "${outputPath}"
}
