# --> Variables
$Global:PS_HOME_PROFILE = (
  $PROFILE -split "\\" | ForEach-Object {
    if ($_.Contains(".ps1")) { return }  return $_
  }) -join "\\"

# --> Modules
Import-Module -Name PSReadLine
Import-Module -Name Terminal-Icons
Import-Module -Name "${PS_HOME_PROFILE}\Modules\UI\OhMyPosh.psd1"

# --> Settings
Set-PSReadLineOption -EditMode Windows
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineKeyHandler -Key Tab -Function TabCompleteNext

Set-OhMyPoshTheme -themeName "kushal"
