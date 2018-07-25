[CmdletBinding()]
Param(
  [Parameter(Position = 1, Mandatory = $false, HelpMessage = "Tag name")]
  [ValidateNotNullOrEmpty()]
  [string]$TagName = "bchsitecore/example"
)
$ErrorActionPreference = "Stop"

Write-Host "Build started..."

docker build -t $TagName .

Write-Host "Build complete."