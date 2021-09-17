param(
  [string] [Parameter(Mandatory = $true)] $saName,
  [string] [Parameter(Mandatory = $true)] $saResourceGroupName,
  [string] [Parameter(Mandatory = $true)] $minimumTlsVersion,
  [string] [Parameter(Mandatory = $true)] $subscriptionId
)      
$ErrorActionPreference = 'Stop'
$DeploymentScriptOutputs = @{}                               
$output = 'Setting the MinimumTlsVersion to : {0} on the Storage Account : {1} located in the Resource Group : {2} Resource Group Id:{3}' -f $MinimumTlsVersion,$saName,$saResourceGroupName, $saResourceGroupId 
$DeploymentScriptOutputs['action1'] = $output
#Set-AzContext -Subscription $subscriptionId
Set-AzContext -Subscription 63679251-405f-4675-89cd-195d3323c2e0
Set-AzStorageAccount -ResourceGroupName $saResourceGroupName -AccountName $saName -MinimumTlsVersion $minimumTlsVersion
$DeploymentScriptOutputs['end'] = 'End of the operation 1'
