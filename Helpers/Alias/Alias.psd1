@{
  RootModule        = 'Aliases.psm1'
  ModuleVersion     = '1.0.0'

  Author            = 'CainCarmo'
  Description       = 'A PowerShell module that defines custom aliases for various commands and functions.'

  PowerShellVersion = '7.1'

  FunctionsToExport = @(
    'ListFolders',
    'Set-LocationDownloads',
    'Set-LocationDocuments',
    'Set-LocationImages',
    'Set-LocationWallpapers',
    'Set-LocationScoopFolder',
    'Open-PwshConfig',
    'Open-PwshHistory',
    'Open-TerminalConfig',
    'Open-TranslucentTBConfig',
    'Remove-PowerShellHistory'
  )

  CmdletsToExport   = @()
  AliasesToExport   = @()
  VariablesToExport = '*'
}
