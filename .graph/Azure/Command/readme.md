# Common Commands:
```
Get-AzResourceGroup | ft    # Format Table
Get-AzResourceGroup | format-table

get-psprovider

# Usage:
$region = "eastus"
Get-AzVMUsage -Location $region | Sort-Object -Property CurrentValue -Descending 

# Environment
Get-AzEnvironment

# Region
Get-AzLocation

## Size allowed per region
Get-AzVMSize -Location southcentralus
Get-AzVMSize -Location eastus

#View VMs
Get-AzVM

# Running
Get-AzVM -Status | Where PowerState -ne "VM running"

# Start

```
