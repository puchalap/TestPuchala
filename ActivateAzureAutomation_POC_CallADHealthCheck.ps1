#Test @ 1:00 Pm#
Param
(
    [string]$ADServer,
    [string]$OnPremCredential
)

$Cred = Get-AutomationPSCredential -Name $OnPremCredential

Invoke-Command -ComputerName $ADServer -Credential $Cred -scriptblock {

cd "C:\temp"
.\ActivateAzureAutomation_POC_ADHealthCheck.ps1
