Set-PSDebug -Trace 0
$SourceFolder = "$Env:PALTRY_HOME\src"
Import-Module $SourceFolder\lib.psm1

Out-Info "Formatting code..."
Install-Module -Name PowerShell-Beautifier -Scope "CurrentUser"
Import-Module PowerShell-Beautifier.psd1
Get-ChildItem -Path $SourceFolder -Include *.ps1,*.psm1 -Recurse | Edit-DTWBeautifyScript
