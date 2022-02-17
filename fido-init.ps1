. (Join-Path $PSScriptRoot common.ps1)

Push-Location
Set-Location $PSScriptRoot

# http://stackoverflow.com/a/31316636/539470
Set-Variable Container -Option ReadOnly -Value (Invoke-Expression "${Docker} create ${Image}")

New-Item -Type Directory -ErrorAction Ignore -Path "${PSScriptRoot}\home"
New-Item -Type Directory -ErrorAction Ignore -Path "${PSScriptRoot}\usr\local"

Invoke-Expression "${Docker} cp ${Container}:/home/fido ${PSScriptRoot}/home"
Invoke-Expression "${Docker} cp ${Container}:/usr/local/etc ${PSScriptRoot}/usr/local"
Invoke-Expression "${Docker} cp ${Container}:/usr/local/bin ${PSScriptRoot}/usr/local"
Invoke-Expression "${Docker} rm -v ${Container}"

Invoke-Expression "${PSScriptRoot}\fido-shell.ps1 bash"

Pop-Location