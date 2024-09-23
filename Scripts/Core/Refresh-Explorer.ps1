function Refresh-Explorer {
    
    Invoke-ScriptBlock -ScriptBlock {

        $itt.ProcessRunning = $true

        # Stop the Explorer process
        Stop-Process -Name explorer -Force

        # Wait a moment to ensure the process has stopped
        Start-Sleep -Seconds 1

        # Restart the Explorer process
        Stop-Process -Name explorer -Force

        $itt.ProcessRunning = $false
    }
}