$ErrorActionPreference = "Stop"

Write-Host "Deploy started..."

$env:DOCKER_PASS | docker login --username bchsitecore --password-stdin
docker push bchsitecore/example

Write-Host "Deploy complete."