class FastFetch {
  [string]$configPath

  FastFetch() {
    $this.configPath = "${Global:PS_HOME_PROFILE}\assets\config\fastfetch.json"
  }
}

function Show-SystemInfo {
  $ff = [FastFetch]::new()
  fastfetch -c $ff.configPath
}
