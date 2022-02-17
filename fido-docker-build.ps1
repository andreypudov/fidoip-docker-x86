. (Join-Path $PSScriptRoot common.ps1)

Push-Location
Set-Location $PSScriptRoot

Invoke-Expression "${Docker} build ${MyInvocation.Line} -t ${Image} ."

Pop-Location