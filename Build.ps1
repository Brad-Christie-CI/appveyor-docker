$ErrorActionPreference = "Stop"

Write-Host "Build started..."

docker build -t bchsitecore/example .

Write-Host "Build complete."