Set-Variable Image  -Option ReadOnly -Value "fidoip32:1.0.5_5-1_4"
Set-Variable Mounts -Option ReadOnly -Value "-v ${PSScriptRoot}/home/fido:/home/fido -v ${PSScriptRoot}/usr/local/etc:/usr/local/etc -v ${PSScriptRoot}/usr/local/bin:/usr/local/bin"
Set-Variable Docker -Option ReadOnly -Value "docker"