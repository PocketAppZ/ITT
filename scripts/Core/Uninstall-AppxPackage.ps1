function Uninstall-AppxPackage {
    <#
        .SYNOPSIS
        Uninstalls an AppX package and removes any provisioned package references.
        .DESCRIPTION
        This function uninstalls a specified AppX package from the current user profile and removes any provisioned package references from the system. It uses PowerShell commands to handle both the removal of the AppX package and any associated provisioned package. Logging is used to track the process.
        .PARAMETER Name
        The name or partial name of the AppX package to be uninstalled. This parameter is required.
        .EXAMPLE
        Uninstall-AppxPackage -Name "Microsoft.BingNews"
        Attempts to remove the AppX package with a display name that includes "Microsoft.BingNews" from the current user profile and any provisioned package references from the system.
        .NOTES
        - Ensure that the `$Name` parameter correctly matches the display name or part of the display name of the AppX package you wish to uninstall.
        - The function runs PowerShell commands in a new process to handle the removal operations.
        - Add-Log should be implemented in your script or module to handle logging appropriately.
    #>
    param (
        [array]$tweak
    )
    try {
        foreach ($name in $tweak) {
            Add-Log -Message "Removing $name..." -Level "info"
            Get-AppxPackage "*$name*" | Remove-AppxPackage -ErrorAction SilentlyContinue
            Get-AppxProvisionedPackage -Online | Where-Object DisplayName -like "*$name*" | Remove-AppxProvisionedPackage -Online -ErrorAction SilentlyContinue
        }
    } 
    catch 
    {
        Add-Log -Message "PLEASE USE (WINDOWS POWERSHELL) NOT (TERMINAL POWERSHELL 7) TO UNINSTALL $NAME." -Level "WARNING"
    }
}