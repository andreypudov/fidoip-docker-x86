. (Join-Path $PSScriptRoot common.ps1)

Push-Location
Set-Location $PSScriptRoot

Invoke-Expression "$Docker run $Mounts --rm -it $Image"

Pop-Location