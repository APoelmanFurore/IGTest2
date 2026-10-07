$ErrorActionPreference = "Stop"

$repoRoot = $PSScriptRoot
$cacheDir = Join-Path $repoRoot "input-cache"
$publisherJar = Join-Path $cacheDir "publisher.jar"

New-Item -ItemType Directory -Force -Path $cacheDir | Out-Null

$downloadUrl = "https://github.com/HL7/fhir-ig-publisher/releases/latest/download/publisher.jar"
Invoke-WebRequest -Uri $downloadUrl -OutFile $publisherJar

Write-Host "Downloaded IG Publisher to $publisherJar"
