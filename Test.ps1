$ErrorActionPreference = "Stop"

Write-Host "Test started..."

$ContainerId = $(docker run --rm --detach bchsitecore/example)
Write-Verbose "`$ContainerID: $ContainerID"

$IPAddress = $(docker inspect --format '{{ .NetworkSettings.Networks.nat.IPAddress }}' $ContainerId)
Write-Verbose "`$IPAddress: $IPAddress"

$Response = Invoke-WebRequest "http://$IPAddress/" -UseBasicParsing
If ($Response.StatusCode -ne 200) {
  Write-Warning "Unexpected status code: $($Response.StatusCode)"
}

docker stop $ContainerId

Write-Host "Test complete."