@{
  RootModule        = 'OhMyPosh.psm1'
  ModuleVersion     = '1.0.0'

  Author            = 'CainCarmo'
  Description       = 'A PowerShell module for customizing your prompt with themes and segments.'

  PowerShellVersion = '7.1'

  FunctionsToExport = @(
    'Set-OhMyPoshTheme'
  )

  CmdletsToExport   = @()
  AliasesToExport   = @()
  VariablesToExport = '*'
}
