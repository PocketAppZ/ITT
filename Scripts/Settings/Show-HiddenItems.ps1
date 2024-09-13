function Invoke-ShowFile {

    <#
        .SYNOPSIS
        Toggles the visibility of hidden files and folders in Windows Explorer.

        .DESCRIPTION
        The `Invoke-ShowFile` function updates the Windows registry to show or hide hidden files and folders in Windows Explorer based on the `$Enabled` parameter.
        - If `$Enabled` is `$true`, hidden items and super-hidden items (e.g., system files) are shown.
        - If `$Enabled` is `$false`, these items are hidden.

        .PARAMETER Enabled
        A boolean value that determines whether hidden files and folders should be shown (`$true`) or hidden (`$false`).

        .EXAMPLE
            Invoke-ShowFile -Enabled $true
        This example makes hidden files and folders visible in Windows Explorer.

        .EXAMPLE
            Invoke-ShowFile -Enabled $false
        This example hides hidden files and folders in Windows Explorer.

        .NOTES
        - The function requires restarting Windows Explorer to apply the changes.
        - Administrative privileges might be required depending on system configuration.
    #>

    Param($Enabled)
    Try {
        $value = if ($Enabled -eq $false) { 1 } else { 2 }

        $hiddenItemsKey = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced"
        
        # Set registry values to show or hide hidden items
        Set-ItemProperty -Path $hiddenItemsKey -Name Hidden -Value $value
        Set-ItemProperty -Path $hiddenItemsKey -Name ShowSuperHidden -Value $value

        Stop-Process -Name explorer -Force
    }
    Catch [System.Security.SecurityException] {
        Write-Warning "Unable to set registry keys due to a Security Exception"
    }
    Catch [System.Management.Automation.ItemNotFoundException] {
        Write-Warning $psitem.Exception.ErrorRecord
    }
    Catch {
        Write-Warning "Unable to set registry keys due to unhandled exception"
        Write-Warning $psitem.Exception.StackTrace
    }
}