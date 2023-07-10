New-Item -Type Directory -Path "c:\HardHash"
Set-Location -Path "c:\HardHash"
$env:Path +=";c:\Program Files\WindowsPowerShell\Scripts"
Set-ExecutionPolicy -ExecutionPolicy Bypass -Force
Set-ExecutionPolicy RemoteSigned
Install-Script -name get-windowsautopilotinfo -Confirm:$false -Force:$true
Get-WindowsAutoPilotInfo -OutputFile HardwareHashDevice.csv
import-csv -path "c:\HardHash\HardwareHashDevice.csv" -delimiter "," | select-object "hardware hash"
