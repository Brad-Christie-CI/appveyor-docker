$ErrorActionPreference = "Stop"

Write-Host "Deploy started..."

$env:DOCKER_PASS | docker login --username bchsitecore --password-stdin
docker push $env:DOCKER_USER/iis

Write-Host "Deploy complete."