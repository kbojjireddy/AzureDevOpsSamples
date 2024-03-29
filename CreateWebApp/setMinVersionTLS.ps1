param(
  [string] [Parameter(Mandatory = $true)] $saName,
  [string] [Parameter(Mandatory = $true)] $saResourceGroupName,
  [string] [Parameter(Mandatory = $true)] $minimumTlsVersion,
  [string] [Parameter(Mandatory = $true)] $subscriptionId
)      
$ErrorActionPreference = 'Stop'
$DeploymentScriptOutputs = @{}                               
$output = 'Setting the MinimumTlsVersion to : {0} on the Storage Account : {1} located in the Resource Group : {2} subscriptionId:{3}' -f $MinimumTlsVersion,$saName,$saResourceGroupName, $subscriptionId 
#Set-AzContext -SubscriptionId $subscriptionId

Set-AzContext -Tenant b02efbdc-6758-4c84-90b4-3fd8851c06f4 -Subscription "Metallic Sandbox - SRE"
$context=Get-AzContext
$output = $output + $context.Name
$DeploymentScriptOutputs['action1'] = $output
#Set-AzStorageAccount -ResourceGroupName $saResourceGroupName -AccountName $saName -MinimumTlsVersion $minimumTlsVersion
$DeploymentScriptOutputs['end'] = 'End of the operation'
