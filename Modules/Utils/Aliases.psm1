function ListItems {
  param()

  eza -lha --icons=auto --sort=name --extended --group-directories-first
  Write-Host $([String]::Empty)
}
