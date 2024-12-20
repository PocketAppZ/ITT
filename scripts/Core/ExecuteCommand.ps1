function ExecuteCommand {
    <#
    .SYNOPSIS
    Executes a PowerShell command in a new process.
    .DESCRIPTION
    This function starts a new PowerShell process to execute the specified command. It waits for the command to complete before returning control to the caller. The function handles any errors that occur during the execution of the command and outputs an error message if needed.
    .PARAMETER Name
    An optional name or identifier for the command being executed. This parameter is currently not used in the function but could be used for logging or tracking purposes.
    .PARAMETER Command
    The PowerShell command to be executed. This parameter is required.
    .EXAMPLE
    ExecuteCommand -Name "Greeting" -Command "Write-Output 'Welcome to ITT'"
    Executes the PowerShell command `Write-Output 'Welcome to ITT'` in a new PowerShell process.
    #>
    param (
        [array]$tweak
    )
    try {
        foreach ($cmd in $tweak) {
            Add-Log -Message "Please wait..."
            $script = [scriptblock]::Create($cmd)
            Invoke-Command  $script -ErrorAction Stop
        }
    } catch  {
        Add-Log -Message "The specified command was not found." -Level "WARNING"
    }
}