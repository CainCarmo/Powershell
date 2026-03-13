# --> Modules
Import-Module -Name PSReadLine
Import-Module -Name Terminal-Icons

# --> Settings
Set-PSReadLineOption -EditMode Windows
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineKeyHandler -Key Tab -Function TabCompleteNext
