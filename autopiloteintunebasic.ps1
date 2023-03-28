$AppId = 'c06d865e-c3c2-4a4e-9752-3fc7ce8a3f60'
$TenantId = '9ced4109-8739-4295-8d3f-a19371aae263'
$AppSecret = 'O788Q~~iNY~WNMveTUIhm7jGCFV0dPe4~bJk9a~T'
$GroupTag = "" #Location code for company location or BLANK for Default => Hybrid Azure AD Joined
Install-PackageProvider -Name NuGet -MinimumVersion 2.8.5.201 -Confirm:$false -Force:$true
Install-Script get-windowsautopilotinfo -Confirm:$false -Force:$true
Install-Module -Name Microsoft.Graph.Intune -Confirm:$false -Force:$true
Install-Module -Name WindowsAutoPilotIntune -Confirm:$false -Force:$true
Get-WindowsAutoPilotInfo -Online -TenantId $TenantId -AppId $AppId -AppSecret $AppSecret -GroupTag $GroupTag
