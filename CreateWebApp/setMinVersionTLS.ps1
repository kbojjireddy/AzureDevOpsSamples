param(
  [string] [Parameter(Mandatory = $true)] $saName,
  [string] [Parameter(Mandatory = $true)] $saResourceGroupName,
  [string] [Parameter(Mandatory = $true)] $minimumTlsVersion
)      
$ErrorActionPreference = 'Stop'
$DeploymentScriptOutputs = @{}                               
$output = 'Setting the MinimumTlsVersion to : {0} on the Storage Account : {1} located in the Resource Group : {2}.' -f $MinimumTlsVersion,$saName,$saResourceGroupName
$DeploymentScriptOutputs['action1'] = $output
#Set-AzStorageAccount -ResourceGroupName $saResourceGroupName -AccountName $saName -MinimumTlsVersion $minimumTlsVersion
$DeploymentScriptOutputs['end'] = 'End of the operation'
