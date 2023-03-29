New-Item -Type Directory -Path "C:\HWID"
Set-Location -Path "C:\HWID"
$env:Path += ";C:\Program Files\WindowsPowerShell\Scripts"
Set-ExecutionPolicy -Scope Process -ExecutionPolicy RemoteSigned
Install-Script -Name Get-WindowsAutopilotInfo
Get-WindowsAutopilotInfo -OutputFile Autopilot_HWID.csv
#import-csv -path "c:\hwid\autopilot_hwid.csv" -delimiter "," | select-object "hardware hash"
Get-content -path "c:\hwid\autopilot_hwid.csv"
