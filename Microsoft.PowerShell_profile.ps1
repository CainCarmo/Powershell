# --> Environments
$Global:PROFILE_HOME = (
  $PROFILE -split "\\" | ForEach-Object {
    if ($_.Contains(".ps1")) { return }  return $_
  }) -join "\\"


# --> Modules
Import-Module -Name PSReadLine
Import-Module -Name "${PROFILE_HOME}\Helpers\Alias\Aliases.psm1"
Import-Module -Name "${PROFILE_HOME}\Modules\Layout\OhMyPosh\OhMyPosh.psm1"

# --> Settings
Set-PSReadLineOption -EditMode Windows
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineKeyHandler -Key Tab -Function TabCompleteNext

# --> Styling
Set-OhMyPoshTheme -themeName "kushal"

# --> Aliases
Set-Alias -Name nv -Value nvim -Force
Set-Alias -Name ls -Value ListFolders

Set-Alias -Name down -Value Set-LocationDownloads
Set-Alias -Name docs -Value Set-LocationDocuments
Set-Alias -Name imgs -Value Set-LocationImages
Set-Alias -Name wpps -Value Set-LocationWallpapers
Set-Alias -Name scoop_folder -Value Set-LocationScoopFolder

Set-Alias -Name pwsh_conf -Value Open-PwshConfig
Set-Alias -Name pwsh_hist -Value Open-PwshHistory
Set-Alias -Name term_conf -Value Open-TerminalConfig
Set-Alias -Name translucent_conf -Value Open-TranslucentTBConfig
Set-Alias -Name clear_pwsh_hist -Value Remove-PowerShellHistory
