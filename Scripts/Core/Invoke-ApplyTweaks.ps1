function Get-SelectedTweaks {

    $items = @()

    foreach ($item in $sync.TweaksListView.Items)
    {
        if ($item -is [System.Windows.Controls.StackPanel]) {

            foreach ($child in $item.Children) {
                if ($child -is [System.Windows.Controls.StackPanel]) {
                    foreach ($innerChild in $child.Children) {
                        if ($innerChild -is [System.Windows.Controls.CheckBox]) {

                            if($innerChild.IsChecked)
                            {
                                    foreach ($program in $sync.database.Tweaks)
                                    {
                                        if($innerChild.content -eq $program.Name)
                                        {
                                            $items += @{

                                                Name = $program.Name
                                                Type = $program.Type
                                                Registry = $program.Registry
                                                Service = $program.Service
                                                RemoveAppxPackage = $program.RemoveAppxPackage
                                                Command = $program.InvokeCommand
                                                Refresh = $program.refresh
                                                # add a new method tweak here

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

function ShowSelectedTweaks {
    
    $collectionView = [System.Windows.Data.CollectionViewSource]::GetDefaultView($sync.TweaksListView.Items)

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

function Invoke-ApplyTweaks
{

    if($sync.ProcessRunning)
    {
        $msg = "Please wait for the tweak to be applying...."
        [System.Windows.MessageBox]::Show($msg, "ITT", [System.Windows.MessageBoxButton]::OK, [System.Windows.MessageBoxImage]::Warning)
        return
    }

        $tweaks  = Get-SelectedTweaks

        if($tweaks.Count -gt 0)
        {

            ShowSelectedTweaks

            Invoke-ScriptBlock -ArgumentList $tweaks -ScriptBlock{

                param($tweaks)

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
                    $logMessage = "$Message"
                    $date =  "[$timestamp $Level]"
                
                    # Write the log message to the console with the specified color
                    Write-Host "`n` " -ForegroundColor $color
                    Write-Host " $date" -ForegroundColor Yellow ; Write-Host " *$logMessage * " -ForegroundColor $color 
                    Write-Host "" -ForegroundColor $color
    
                }

                function ExecuteCommand {
                    param (
                        [string]$Name,
                        [string]$Command
                    )
                    try {
                        Add-Log -Message "Applying $Name" -Level "INFO"
                        Start-Process -FilePath "powershell.exe" -ArgumentList "-Command `"$Command`"" -NoNewWindow -Wait
                        Add-Log -Message "Executed successfully." -Level "INFO"

                        #debug
                        #Write-Host "Command '$Command' executed successfully."

                    } catch {
                        Write-Host "Error executing command '$Command': $_"
                    }
                }
                
                function Set-RegistryValue {
                    param (
                        $Name,
                        $Type,
                        $Path,
                        $Value
                    )
                    
                    try
                    {

                        # Check if the registry path exists
                        if (-not (Test-Path -Path $Path)) {
                            Write-Output "Registry path does not exist. Creating it..."
                            # Try to create the registry path
                            try {
                                New-Item -Path $Path -Name $Name -Type $Type -Value $Value -Force -ErrorAction Stop | Out-Null
                                Add-Log -Message "Registry path created successfully." -Level "INFO"
                            } catch {
                                Add-Log -Message "Failed to create registry path: $_" -Level "ERROR"
                            }
                        } else {
                            Set-ItemProperty -Path $Path -Name $Name -Type $Type -Value $Value -Force -ErrorAction Stop
                            Add-Log -Message "$($Name) Successful applied" -Level "INFO"
                        }

                    }
                
                    catch {
                        Write-Error "An error occurred: $_"
                    }
                    
                }

                function Remove-RegistryValue {
                    param (
                        [Parameter(Mandatory=$true)]
                        [string]$RegistryPath,
                        [Parameter(Mandatory=$true)]
                        [string]$Folder
                    )
                
                    try {
                        # Combine the registry path and folder to create the full registry key path
                        $KeyPath = "$RegistryPath\\$Folder"
                
                        # Check if the registry key exists
                        if (Test-Path "Registry::$KeyPath") {

                            # Delete the registry key and all subkeys recursively

                            Remove-Item -Path "Registry::$KeyPath" -Recurse -Force
                            Add-Log -Message "successful removed." -Level "INFO"


                        } else {
                            Add-Log -Message "Registry key '$KeyPath' does not exist." -Level "INFO"
                        }
                    }
                    catch {
                        Write-Host "An error occurred: $_" -ForegroundColor red
                    }
                }

                function Disable-Service {
                    param(
                        $ServiceName,
                        $StartupType
                    )

                    try {


                         # Check if the service exists
                        if (Get-Service -Name $ServiceName -ErrorAction SilentlyContinue) {

                            Set-Service -Name $ServiceName -StartupType $StartupType -ErrorAction Stop
                            Stop-Service -Name $ServiceName 
                            Add-Log -Message "Service '$ServiceName' disabled." -Level "INFO"

                        }
                        else {
                            Add-Log -Message "Service '$ServiceName' not found." -Level "INFO"
                        }
                    }
                    catch
                    {
                        Write-Host "Failed to disable service '$ServiceName'. Error: $_" -ForegroundColor Red
                    }
                }

                function Uninstall-AppxPackage  {

                    param (
                        $Name
                    )
                    
                    if (powershell.exe -Command "Import-Module Appx; if (Get-AppxPackage -Name '$Name' -ErrorAction SilentlyContinue) { exit 0 } else { exit 1 }")
                    {
                        try {

                            powershell.exe -Command "Import-Module Appx; Get-AppxPackage -AllUsers -Name $($Name) | Remove-AppxPackage -ErrorAction Stop"
                            Add-Log -Message "Successfully removed $($Name)" -Level "INFO"

                        } 
                        catch {
                            Write-Host "Failed to remove $($Name). $_" -ForegroundColor red
                        }
                    }
                    else {
                        Add-Log -Message "$($Name) : Not installed." -Level "INFO"
                    }
                }
                
                function UpdateUI {

                    param($InstallBtn,$Description)
                    
                    $sync['window'].Dispatcher.Invoke([Action]{
                        $sync.applyBtn.Content = "$InstallBtn"
                        #$sync.Description.Text = "$Description"
                    })
                }

                function Finish {

                    $sync.TweaksListView.Dispatcher.Invoke([Action]{
                        foreach ($item in $sync.TweaksListView.Items)
                        {
                            foreach ($child in $item.Children) {
                                if ($child -is [System.Windows.Controls.StackPanel]) {
                                    foreach ($innerChild in $child.Children) {
                                        if ($innerChild -is [System.Windows.Controls.CheckBox]) {
                        
                                            $innerChild.IsChecked = $false
                                            $sync.TweaksListView.Clear()
                                            $collectionView = [System.Windows.Data.CollectionViewSource]::GetDefaultView($sync.TweaksListView.Items)
                                            $collectionView.Filter = $null
                                        }
                                    }
                                }
                            }
                        }
                    })

                    UpdateUI -InstallBtn "Apply" -Description "" 

                    Start-Sleep 10

                    Clear-Host

                    Write-Host "+==============================================================================+";
                    Write-Host "|                                                                              |";
                    Write-Host "|                                                                              |";
                    Write-Host "|   ___ _____ _____   _____ __  __    _    ____       _    ____  _____ _       |";
                    Write-Host "|  |_ _|_   _|_   _| | ____|  \/  |  / \  |  _ \     / \  |  _ \| ____| |      |";
                    Write-Host "|   | |  | |   | |   |  _| | |\/| | / _ \ | | | |   / _ \ | | | |  _| | |      |";
                    Write-Host "|   | |  | |   | |   | |___| |  | |/ ___ \| |_| |  / ___ \| |_| | |___| |___   |";
                    Write-Host "|  |___| |_|   |_|   |_____|_|  |_/_/   \_\____/  /_/   \_\____/|_____|_____|  |";
                    Write-Host "|                                                                              |";
                    Write-Host "|                                                                              |";
                    Write-Host "+==============================================================================+";
                    Write-Host "`n` You ready to Install anything."
                    Write-Host  "`n` (IT Tools) is open source, You can contribute to improving the tool."
                    Write-Host " If you have trouble installing a program, report the problem on feedback links"
                    Write-Host  " https://github.com/emadadel4/ITT/issues"
                    Write-Host  " https://t.me/emadadel4"

         
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

                try
                {
                    $msg = [System.Windows.MessageBox]::Show("Do you want to apply $($tweaks.Count) selected Tweaks", "ITT | Emad Adel", [System.Windows.MessageBoxButton]::YesNo, [System.Windows.MessageBoxImage]::Question)

                    if ($msg -eq "Yes")
                    {
                        UpdateUI -InstallBtn "Applying..." -Description "Applying..." 
                        $sync.ProcessRunning = $true

                        foreach ($app in $tweaks) {
                            switch ($app.Type) {
                                "command" {
                                    
                                    foreach ($cmd in $app.Command) {
                                        ExecuteCommand -Name $app.Name -Command $cmd
                                    }

                                    if($app.Refresh -eq "true")
                                    {
                                        Write-Host "Restarting exploror..."
                                        #Stop-Process -Name explorer -Force
                                    }
                                }
                                "modifying" {

                                    foreach ($mod in $app.Registry) {
                                        Set-RegistryValue -Name $mod.Name -Type $mod.Type -Path $mod.Path -Value $mod.Value
                                    }

                                    if($app.Refresh -eq "true")
                                    {
                                        Write-Host "Restarting exploror..."
                                        #Stop-Process -Name explorer -Force
                                    }

                                }
                                "delete" {

                                    foreach ($re in $app.Registry) {
                                        Remove-RegistryValue -RegistryPath $re.Path -Folder $re.Name
                                    }

                                    if($app.Refresh -eq "true")
                                    {
                                        Write-Host "Restarting exploror..."
                                        #Stop-Process -Name explorer -Force
                                    }
                                }
                                "service" {
                                    foreach ($se in $app.Service) {
                                        Disable-Service -ServiceName $se.Name -StartupType $se.StartupType
                                    }
                                }
                                "AppxPackage" {
                                    foreach ($appx in $app.removeAppxPackage) {
                                        Uninstall-AppxPackage -Name $appx.Name
                                    }
                                }
                            }
                        }


                        # restart explorer
                        #Stop-Process -Name explorer -Force; Start-Process explorer

                        $sync.ProcessRunning = $False
                        CustomMsg -title "ITT | Emad Adel" -msg "Done" -MessageBoxImage "Information" -MessageBoxButton "OK"
                        Start-Sleep -Seconds 1
                        Finish

                    }
                    else
                    {
                        # Uncheck all checkboxes in $list
                        $sync.TweaksListView.Dispatcher.Invoke([Action]{
                            foreach ($item in $sync.TweaksListView.Items)
                            {
                                foreach ($child in $item.Children) {
                                    if ($child -is [System.Windows.Controls.StackPanel]) {
                                        foreach ($innerChild in $child.Children) {
                                            if ($innerChild -is [System.Windows.Controls.CheckBox]) {
                            
                                                $innerChild.IsChecked = $false
                                                $sync.TweaksListView.Clear()
                                                $collectionView = [System.Windows.Data.CollectionViewSource]::GetDefaultView($sync.TweaksListView.Items)
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
            [System.Windows.MessageBox]::Show("Choose at least one tweak", "ITT | Emad Adel", [System.Windows.MessageBoxButton]::OK, [System.Windows.MessageBoxImage]::Information)
        }
}
