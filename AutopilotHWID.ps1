New-Item -Type Directory -Path “c:\HH”
Set-Location -Path “c:\HH”
$env:Path +=”;c:\Program Files\WindowsPowerShell\Scripts”
Set-ExecutionPolicy -ExecutionPolicy Bypass -Force
Install-Script -Name Get-WindowsAutoPilotInfo
Get-WindowsAutoPilotInfo -OutputFile HardwareHashDevice.csv
import-csv -path "c:\HH\HardwareHashDevice.csv" -delimiter "," | select-object "hardware hash"
