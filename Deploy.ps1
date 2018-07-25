[CmdletBinding()]
Param(
  [Parameter(Position = 1, Mandatory = $false, HelpMessage = "Tag name")]
  [ValidateNotNullOrEmpty()]
  [string]$TagName = "bchsitecore/example"
)
$ErrorActionPreference = "Stop"

Write-Host "Deploy started..."

$env:DOCKER_PASS | docker login --username bchsitecore --password-stdin
docker push $TagName

Write-Host "Deploy complete."