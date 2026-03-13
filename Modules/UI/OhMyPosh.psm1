class OhMyPosh {
  [string]$themeName
  [string]$configPath

  OhMyPosh([string]$theme) {
    $this.themeName = $theme
    $this.configPath = "${Env:POSH_THEMES_PATH}\$($this.themeName).omp.json"
  }

  [void] SetTheme() {
    oh-my-posh init pwsh --config $this.configPath | Invoke-Expression
  }
}

function Set-OhMyPoshTheme {
  param (
    [Parameter(Mandatory = $true)]
    [string]$themeName
  )

  $omp = [OhMyPosh]::new($themeName)
  $omp.SetTheme()
}
