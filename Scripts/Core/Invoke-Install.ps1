function Get-SelectedApps
{

    $items = @()

    foreach ($item in $sync.AppsListView.Items)
    {
        if ($item -is [System.Windows.Controls.StackPanel]) {

            foreach ($child in $item.Children) {
                if ($child -is [System.Windows.Controls.StackPanel]) {
                    foreach ($innerChild in $child.Children) {
                        if ($innerChild -is [System.Windows.Controls.CheckBox]) {

                            if($innerChild.IsChecked)
                            {
                                    foreach ($program in $sync.database.Applications)
                                    {
                                        if($innerChild.content -eq $program.Name)
                                        {
                                            $items += @{

                                                Name = $program.Name
                                                Choco = $program.Choco
                                                Scoop = $program.Scoop
                                                Winget = $program.winget
                                                Default = $program.default

                                                # add a new method downloader here
                                            }

                                        }
                                    }
                            }

                        }
                    }
                }
            }
        }
    }

    return $items 
}


function ShowSelectedItems {
    
    $collectionView = [System.Windows.Data.CollectionViewSource]::GetDefaultView($sync.AppsListView.Items)

    $filterPredicate = {
       param($item)

       if ($item -is [System.Windows.Controls.StackPanel]) {

        foreach ($child in $item.Children) {
            if ($child -is [System.Windows.Controls.StackPanel]) {
                foreach ($innerChild in $child.Children) {
                    if ($innerChild -is [System.Windows.Controls.CheckBox]) {
    
                        $tagToFilter =  $true
                        # Check if the item has the tag
                        $itemTag = $innerChild.IsChecked
                        return $itemTag -eq $tagToFilter
                    }
                }
            }
        }

        $collectionView.Filter = $filterPredicate

    }
     
}


   $collectionView.Filter = $filterPredicate

}

function Invoke-Install
{
    
    if($sync.ProcessRunning)
    {
        $msg = "Please wait there is a process in the background."
        [System.Windows.MessageBox]::Show($msg, "ITT", [System.Windows.MessageBoxButton]::OK, [System.Windows.MessageBoxImage]::Warning)
        return
    }

    $sync.category.SelectedIndex = 0
    ShowSelectedItems

    $selectedApps += Get-SelectedApps
    
    if($selectedApps.Count -gt 0)
    {
        Invoke-ScriptBlock -ArgumentList $selectedApps -ScriptBlock {

            param($selectedApps)

            function UpdateUI {

                param($InstallBtn,$Description)
               
                $sync['window'].Dispatcher.Invoke([Action]{
                    $sync.installBtn.Content = "$InstallBtn"
                    #$sync.Description.Text = "$Description"
                })
            }

            function ClearTemp {

                $chocoTempPath = Join-Path $env:TEMP "chocolatey"

                if (Test-Path $chocoTempPath) {
                    Remove-Item -Path $chocoTempPath -Force -Recurse
                    Write-Output "Clear Chocolatey temp folder"
                }
            }
            
            function CustomMsg 
            {
                param (

                    $title,
                    $msg,
                    $MessageBoxButton,
                    $MessageBoxImage,
                    $answer

                )

                [System.Windows.MessageBox]::Show($msg, $title, [System.Windows.MessageBoxButton]::$MessageBoxButton, [System.Windows.MessageBoxImage]::$MessageBoxImage)
            }

            function Notify {
                param(
                    [string]$title,
                    [string]$msg,
                    [string]$icon,
                    [Int32]$time
                )
               
                $notification = New-Object System.Windows.Forms.NotifyIcon
                $notification.Icon = [System.Drawing.SystemIcons]::Information
                $notification.BalloonTipIcon = $icon
                $notification.BalloonTipText = $msg
                $notification.BalloonTipTitle = $title
                $notification.Visible = $true

                $notification.ShowBalloonTip($time)  # Display for specified time
            
                # Clean up resources
                $notification.Dispose()
            }
            

            function Finish {

                $sync.AppsListView.Dispatcher.Invoke([Action]{
                    foreach ($item in $sync.AppsListView.Items)
                    {
                        foreach ($child in $item.Children) {
                            if ($child -is [System.Windows.Controls.StackPanel]) {
                                foreach ($innerChild in $child.Children) {
                                    if ($innerChild -is [System.Windows.Controls.CheckBox]) {
                    
                                        $innerChild.IsChecked = $false
                                        $sync.AppsListView.Clear()
                                        $collectionView = [System.Windows.Data.CollectionViewSource]::GetDefaultView($sync.AppsListView.Items)
                                        $collectionView.Filter = $null
                                    }
                                }
                            }
                        }
                    }
                })

                Start-Sleep 5

                Clear-Host

Write-Host "
+----------------------------------------------------------------------------+
|  ___ _____ _____   _____ __  __    _    ____       _    ____  _____ _      |
| |_ _|_   _|_   _| | ____|  \/  |  / \  |  _ \     / \  |  _ \| ____| |     |
|  | |  | |   | |   |  _| | |\/| | / _ \ | | | |   / _ \ | | | |  _| | |     |
|  | |  | |   | |   | |___| |  | |/ ___ \| |_| |  / ___ \| |_| | |___| |___  |
| |___| |_|   |_|   |_____|_|  |_/_/   \_\____/  /_/   \_\____/|_____|_____| |
|                                                                            |
+----------------------------------------------------------------------------+
You ready to Install anything.

(IT Tools) is open source, You can contribute to improving the tool.
If you have trouble installing a program, report the problem on feedback links
https://github.com/emadadel4/ITT/issues
https://t.me/emadadel4
" -ForegroundColor White
            }

            function SendApps {
                param (
                    [string]$FirebaseUrl,
                    [string]$Key,
                    $list
                )
            
                # Validate parameters
                if (-not $FirebaseUrl -or -not $Key) {
                    throw "FirebaseUrl and Key are mandatory parameters."
                }
            
                # Reuse connection to Firebase URL
                $firebaseUrlWithKey = "$FirebaseUrl/$Key.json"
            
                # Check if the key exists
                $existingData = Invoke-RestMethod -Uri $firebaseUrlWithKey -Method Get -ErrorAction SilentlyContinue
            
            
                # Function to get content from ListView
                function GetListViewContent {
                    # Create an array to store selected item content
                    $selectedItemContent = @()
            
                    # Add the app name to the array
                    $selectedItemContent += @{
                        "Apps" = $list
                    }
            
                    # Return the selected item content
                    return $selectedItemContent
                }
            
                # Get content from ListView
                $selectedItemContent += GetListViewContent
            
            
                if ($existingData) {
            
                    # Update PC info with the existing data
                    $pcInfo = @{
                        "Domain" = $env:COMPUTERNAME
                        "OS" = $existingData.OS
                        "Username" = $existingData.Username
                        "RAM" = $existingData.Ram
                        "GPU" = $existingData.GPU
                        "CPU" = $existingData.CPU
                        "Start At" = (Get-Date -Format "MM-dd-yyyy hh:mm:ss tt")
                        "Runs" = $existingData.runs
                        "AppsTweaks" = $selectedItemContent
                    }
                }
              
                # Convert to JSON
                $json = $pcInfo | ConvertTo-Json
            
                # Set headers
                $headers = @{
                    "Content-Type" = "application/json"
                }
            
                # Update Firebase database with the new value
                Invoke-RestMethod -Uri $firebaseUrlWithKey -Method Put -Body $json -Headers $headers
            }

            function DownloadAndExtractRar {
                param (
                    [string]$url,
                    [string]$outputDir
                )
            
                $downloadDir = "$env:ProgramData\$outputDir"
                if (-not (Test-Path -Path $downloadDir)) {
                    New-Item -ItemType Directory -Path $downloadDir | Out-Null
                }
            
                $downloadPath = Join-Path -Path $downloadDir -ChildPath (Split-Path $url -Leaf)
            
                Write-Host "Downloading RAR file..." -ForegroundColor Yellow
                Invoke-WebRequest -Uri $url -OutFile $downloadPath
            
                Write-Host "Extracting RAR file..." -ForegroundColor Yellow
                Expand-Archive -Path $downloadPath -DestinationPath $downloadDir -Force
            
                Write-Host "Extraction completed to $downloadDir" -ForegroundColor Green
                Invoke-Item $downloadDir
            }
            
            function DownloadAndInstallExe {
                param (
                    [string]$url,
                    [string]$exeArgs
                )
            
                $destination = "$env:temp/setup.exe"

                Write-Host "Downloading..." -ForegroundColor Yellow

                $bitsJobObj = Start-BitsTransfer -Source $url -Destination $destination
                
                switch ($bitsJobObj.JobState) {
                    'Transferred' {
                        Complete-BitsTransfer -BitsJob $bitsJobObj
                        break
                    }
                    'Error' {
                        throw 'Error downloading EXE file'
                    }
                }
                
                Start-Process -Wait $destination -ArgumentList $exeArgs
            }

            function Add-Log {
                param (
                    [string]$Message,
                    [string]$Level = "INFO"
                )
            
                # Get the current timestamp
                $timestamp = Get-Date -Format "HH:mm"
            
                # Determine the color based on the log level
                switch ($Level.ToUpper()) {
                    "INFO" { $color = "Green" }
                    "WARNING" { $color = "Yellow" }
                    "ERROR" { $color = "Red" }
                    default { $color = "White" }
                }
            
                # Construct the log message
                $logMessage = "[$timestamp $Level] $Message"
            
                # Write the log message to the console with the specified color
                Write-Host "========================================================================" -ForegroundColor $color
                Write-Host " * $logMessage * " -ForegroundColor $color
                Write-Host "========================================================================" -ForegroundColor $color


            }

            function Install-Winget {
                param (
                    [string]$WingetUrl = "https://github.com/microsoft/winget-cli/releases/latest/download/Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle",
                    [string]$TempPath = "$env:TEMP\winget.msixbundle"
                )
              
                # Check if winget is already installed
                if (Get-Command winget -ErrorAction SilentlyContinue) {
                    Write-Host "winget is installed. Continue installing..." -ForegroundColor Green
                    return
                }
              
                # Download winget from GitHub
                Write-Host "Downloading winget from GitHub..."
                try {
                    Invoke-WebRequest -Uri $WingetUrl -OutFile $TempPath
                    Write-Host "Download complete."
                } catch {
                    Write-Error "Failed to download winget: $_"
                    return
                }
              
                # Install winget
                Write-Host "Installing winget..."
                try {
                    Add-AppxPackage -Path $TempPath
                    Write-Host "winget installation complete."
                } catch {
                    Write-Error "Failed to install winget: $_"
                    return
                }
              
                # Verify installation
                if (Get-Command winget -ErrorAction SilentlyContinue) {
                    Write-Host "winget is installed successfully."
              
                    # Check if winget is in the PATH environment variable
                    $wingetPath = (Get-Command winget).Source
                    $envPath = [System.Environment]::GetEnvironmentVariable("Path", [System.EnvironmentVariableTarget]::Machine)
                    if ($envPath -notcontains $wingetPath) {
                        Write-Host "Adding winget to the PATH environment variable..."
                        $newPath = $envPath + ";" + (Split-Path $wingetPath)
                        [System.Environment]::SetEnvironmentVariable("Path", $newPath, [System.EnvironmentVariableTarget]::Machine)
                        Write-Host "winget added to PATH. You may need to restart your session to use winget."
                    } else {
                        Write-Host "winget is already in the PATH."
                    }
                } else {
                    Write-Error "winget installation verification failed."
                }
              
                # Clean up
                Remove-Item $TempPath -Force
            }

            function Install-App {
                param (
                    [string]$appName,
                    [string]$appChoco,
                    [string]$appWinget
                )
            
                # Function to check if the app is installed using Chocolatey
                function Is-AppInstalledChoco {
                    param ([string]$appName)
                    $result = choco list --local-only | Select-String -Pattern $appName
                    return $result
                }
            
                # Function to check if the app is installed using Winget
                function Is-AppInstalledWinget {
                    param ([string]$appName)
                    $result = winget list | Select-String -Pattern $appName
                    return $result
                }
        
                #$isInstalledChoco = Is-AppInstalledChoco $appChoco

                Add-Log -Message "Attempting to install $appName using Chocolatey..." -Level "INFO"

                $chocoResult = Start-Process -FilePath "choco" -ArgumentList "install $appChoco --confirm --acceptlicense -q -r --ignore-http-cache --allowemptychecksumsecure --allowemptychecksum --usepackagecodes --ignoredetectedreboot --ignore-checksums --ignore-reboot-requests" -NoNewWindow -Wait -PassThru
            
                if ($chocoResult.ExitCode -eq 0) {
                    Add-Log -Message "$appName installed successfully using Chocolatey!." -Level "INFO"
                } else {

                    Clear-Host

                    Add-Log -Message "Chocolatey installation failed for $appName." -Level "ERROR"
                    Add-Log -Message "Attempting to install $appName using Winget." -Level "INFO"

                    Install-Winget

                    # Check if the app is installed via Winget
                    $isInstalledWinget = Is-AppInstalledWinget $appWinget

                    # Check if the app is installed via Chocolatey
                    if ($isInstalledWinget) {
                        Add-Log -Message "$appName is already installed." -Level "INFO"
                        return
                    }

                    # start install by using Winget
                    Start-Process -FilePath "winget" -ArgumentList "settings --enable InstallerHashOverride" -NoNewWindow -Wait -PassThru
                    $wingetResult = Start-Process -FilePath "winget" -ArgumentList "install --accept-source-agreements --accept-package-agreements --ignore-security-hash --id $appWinget --force -e -h --silent --exact" -NoNewWindow -Wait -PassThru

                    # check winget install opritaion
                    if ($wingetResult.ExitCode -eq 0) {

                        # if winget install app sus
                        Add-Log -Message " $appName installed successfully using Winget." -Level "INFO"
                    } 
                    elseif ($wingetResult.ExitCode -eq 1) 
                    {
                        # if install failed 
                        Add-Log -Message "Winget installation failed for $appName. Please install $appName manually." -Level "ERROR"
                        exit 1
                    }
                }
            }

            try 
            {

                $result = [System.Windows.MessageBox]::Show("Do you want to install selected apps", "ITT | Emad Adel", [System.Windows.MessageBoxButton]::YesNo, [System.Windows.MessageBoxImage]::Question)
                
                if($result -eq "Yes")
                {
                    $sync.ProcessRunning = $true

                    UpdateUI -InstallBtn "Downloading..." -Description "Downloading..." 

                    #Write-Host "Installing Follwing Apps $($selectedApps.Name)" -ForegroundColor Green

                    # Displaying the names of the selected apps
                    $selectedAppNames = $selectedApps | ForEach-Object { $_.Name }

                    foreach ($app in $selectedApps) 
                    {
                        Install-App -appName $app.Name -appChoco $app.Choco -appWinget $app.Winget
                    }

                        Add-Log -Message "All applications have been processed." -Level "INFO"


                    Notify -title "ITT Emad Adel" -msg "Installed successfully: Portable Apps will save in C:\ProgramData\chocolatey\lib" -icon "Info" -time 8000
                    UpdateUI -InstallBtn "Install..."
                    CustomMsg -title "ITT | Emad Adel" -msg "Installed successfully: Portable Apps will save in C:\ProgramData\chocolatey\lib" -MessageBoxImage "Information" -MessageBoxButton "OK"
                    Add-Log -Message "Portable Apps will save in C:\ProgramData\chocolatey\lib." -Level "INFO"
                    Finish
                    SendApps -FirebaseUrl $sync.firebaseUrl -Key $env:COMPUTERNAME -list $selectedAppNames

                    $sync.ProcessRunning = $false
                }
                else
                {
                    # Uncheck all checkboxes in $list
                    $sync.AppsListView.Dispatcher.Invoke([Action]{
                        foreach ($item in $sync.AppsListView.Items)
                        {
                            foreach ($child in $item.Children) {
                                if ($child -is [System.Windows.Controls.StackPanel]) {
                                    foreach ($innerChild in $child.Children) {
                                        if ($innerChild -is [System.Windows.Controls.CheckBox]) {
                        
                                            $innerChild.IsChecked = $false
                                            $sync.AppsListView.Clear()
                                            $collectionView = [System.Windows.Data.CollectionViewSource]::GetDefaultView($sync.AppsListView.Items)
                                            $collectionView.Filter = $null
                                        }
                                    }
                                }
                            }
                        }
                    })
                }
            }
            catch {

                Write-Host "Error: $_"
            }
        }
    }
    else
    {
        [System.Windows.MessageBox]::Show("Choose at least one program", "ITT | Emad Adel", [System.Windows.MessageBoxButton]::OK, [System.Windows.MessageBoxImage]::Information)
    }
}