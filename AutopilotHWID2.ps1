New-Item -Type Directory -Path "c:\HardHash"
Set-Location -Path "c:\HardHash"
$env:Path +=";c:\Program Files\WindowsPowerShell\Scripts"
Install-PackageProvider -Name NuGet -MinimumVersion 2.8.5.201 -Confirm:$false -Force:$true
Install-Script get-windowsautopilotinfo -Confirm:$false -Force:$true
Install-Module -Name Microsoft.Graph.Intune -Confirm:$false -Force:$true
Install-Module -Name WindowsAutoPilotIntune -Confirm:$false -Force:$true
Get-WindowsAutoPilotInfo -OutputFile HardwareHashDevice.csv
import-csv -path "c:\HardHash\HardwareHashDevice.csv" -delimiter "," | select-object "hardware hash"
