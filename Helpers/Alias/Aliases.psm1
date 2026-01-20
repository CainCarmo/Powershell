function ListFolders {
  eza -lha --icons = auto --sort = name --group-directories-first
}

function Set-LocationDownloads {
  Set-Location -Path "${Env:USERPROFILE}\Downloads"
}

function Set-LocationDocuments {
  Set-Location -Path "${Env:USERPROFILE}\OneDrive\Documentos"
}

function Set-LocationImages {
  Set-Location -Path "${Env:USERPROFILE}\OneDrive\Images"
}

function Set-LocationWallpapers {
  Set-Location -Path "${Env:USERPROFILE}\Pictures\Wallpapers"
}

function Set-LocationScoopFolder {
  Set-Location -Path "${Env:USERPROFILE}\scoop"
}

function Open-PwshConfig {
  param (
    [Parameter(Position = 0, HelpMessage = "Editor to use (e.g., nvim, code, notepad)")]
    [string] $editor = "nvim"
  )

  Set-Location -Path "${Env:USERPROFILE}\OneDrive\Documentos\PowerShell"
  Invoke-Expression "$editor ${Env:USERPROFILE}\OneDrive\Documentos\PowerShell\Microsoft.PowerShell_profile.ps1"
}

function Open-PwshHistory {
  param (
    [Parameter(Position = 0, HelpMessage = "Editor to use (e.g., nvim, code, notepad)")]
    [string] $editor = "nvim"
  )

  Invoke-Expression "$editor ${Env:USERPROFILE}\AppData\Roaming\Microsoft\Windows\PowerShell\PSReadLine\ConsoleHost_history.txt"
}

function Open-TerminalConfig {
  param (
    [Parameter(Position = 0, HelpMessage = "Editor to use (e.g., nvim, code, notepad)")]
    [string] $editor = "nvim"
  )

  Invoke-Expression "$editor ${Env:LOCALAPPDATA}\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json"
}

function Open-TranslucentTBConfig {
  param (
    [Parameter(Position = 0, HelpMessage = "Editor to use (e.g., nvim, code, notepad)")]
    [string] $editor = "nvim"
  )

  Invoke-Expression "$editor ${Env:USERPROFILE}\scoop\apps\translucenttb\current\settings.json"
}

function Remove-PowerShellHistory {
  $historyPath = "$Env:USERPROFILE\AppData\Roaming\Microsoft\Windows\PowerShell\PSReadLine\ConsoleHost_history.txt"

  if (Test-Path $historyPath) {
    Remove-Item $historyPath -Force
  }
}
