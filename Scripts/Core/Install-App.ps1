
function Install-App {
    
     <#
    .SYNOPSIS
    Installs an application using Chocolatey or Winget based on availability and installation status.

    .DESCRIPTION
    This function attempts to install a specified application using Chocolatey. If the Chocolatey installation fails, it falls back to using Winget to install the application. The function also handles some cleanup tasks related to Chocolatey and logs the results of the installation process.

    .PARAMETER appName
    The name of the application to be installed. This parameter is used for logging and status messages.

    .PARAMETER appChoco
    The package name of the application as recognized by Chocolatey. This parameter is used to perform the installation via Chocolatey.

    .PARAMETER appWinget
    The package identifier for the application as recognized by Winget. This parameter is used to perform the installation via Winget if Chocolatey fails.

    .EXAMPLE
    Install-App -appName "Google Chrome" -appChoco "googlechrome" -appWinget "Google.Chrome"
    Attempts to install Google Chrome using Chocolatey. If the installation fails, it attempts to install it using Winget.
    #>

    param (
        [string]$appName,
        [string]$appChoco,
        [string]$appWinget
    )

    Install-Choco

    if(Test-Path "C:\ProgramData\chocolatey\lib"){
        Remove-Item -Path "C:\ProgramData\chocolatey\lib\$appChoco" -Force -Recurse
        # debug
        #Add-Log -Message "C:\ProgramData\chocolatey\lib\$appChoco" -Level "INFO"
    }
        
    $chocoResult = $(Start-Process -FilePath "choco" -ArgumentList "install $appChoco --confirm --acceptlicense -q -r --ignore-http-cache --allowemptychecksumsecure --allowemptychecksum --usepackagecodes --ignoredetectedreboot --ignore-checksums --ignore-reboot-requests" -Wait -NoNewWindow -PassThru).ExitCode

    if ($chocoResult -ne 0) {

        Add-Log -Message "Chocolatey installation failed for $appName." -Level "INFO"
        Add-Log -Message "Attempting to install $appName using Winget." -Level "INFO"

        #Install Winget if not install on Device
        Install-Winget

        Start-Process -FilePath "winget" -ArgumentList "settings --enable InstallerHashOverride" -NoNewWindow -Wait -PassThru
        $wingetResult = $(Start-Process -FilePath "winget" -ArgumentList "install --accept-source-agreements --accept-package-agreements --id $appWinget --force -e -h --silent --exact" -Wait -NoNewWindow -PassThru).ExitCode

        # Check winget
        if ($wingetResult -ne 0) {
            Add-Log -Message "Winget installation failed for $appName. Please install $appName manually." -Level "ERROR"
            UpdateUI -Button "installBtn" -ButtonText "installText" -Content "Install" -Icon "installIcon" -TextIcon "" -Width "100"
        } 
        else
        {
            Add-Log -Message " $appName installed successfully using Winget." -Level "INFO"
            UpdateUI -Button "installBtn" -ButtonText "installText" -Content "Install" -Icon "installIcon" -TextIcon "" -Width "100"
        }
    }
    else
    {
        Add-Log -Message "Installed $appName successfully using Chocolatey." -Level "INFO"
    }
}