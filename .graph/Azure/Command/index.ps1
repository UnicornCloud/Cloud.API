# [guide: Getting Started with Azure PowerShell](https://youtu.be/RQMdJ-9-lxY)

$location = "eastus"

# Common Commands:
Get-AzResourceGroup | ft    # Format Table
Get-AzResourceGroup | format-table

get-psprovider

# Usage:
Get-AzVMUsage -Location $location | Sort-Object -Property CurrentValue -Descending

# Environment
Get-AzEnvironment

# Available Regions
Get-AzLocation

## Size allowed per region
Get-AzVMSize -Location $location

# View VMs
Get-AzVM

# Running
Get-AzVM -Status | Where PowerState -ne "VM running"

# View the templates available
# [guide @46:10](https://youtu.be/RQMdJ-9-lxY?t=2770)
Get-AzVMImagePublisher -Location $location

Get-AzVMImageOffer -Location $location -PublisherName "MicrosoftWindowsServer"

Get-AzVMImageSku -Location $location -PublisherName "MicrosoftWindowsServer" -Offer "WindowsServer"

Get-AzVMImage -Location $location -PublisherName "MicrosoftWindowsServer" -Offer "WindowsServer" -Skus "2019-Datacenter-core"

# View extensions available
Get-AzVMImagePublisher - Location $location | `

Get-AzVMExtensionImageType | `

Get-AzVMExtensionImage | Select Type, Version

# Resource Graph
# [guide:](https://www.youtube.com/watch?v=RQMdJ-9-lxY&t=2870s)
Import-Module Az.ResourceGraph

# prime: https://github.com/johnthebrit/RandomStuff/blob/master/PowerShellStuff/AzGettingStarted.ps1
