function Get-SelectedTweaks
{

    $items = @()

    foreach ($item in $sync.TweaksListView.Items)
    {
        if ($item.IsChecked)
        {
            foreach ($program in $sync.database.Tweaks)
            {
                if($item.Content -eq $program.Name)
                {
                    $items += @{
                        Name = $program.Name
                        Type = $program.type
                        registry = $program.Registry
                        service = $program.Service
                        removeAppxPackage = $program.RemoveAppxPackage
                        Commands = $program.Commands

                        # if you want to implement a new thing from JSON applications do it here.
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

       $tagToFilter =  $true
       # Check if the item has the tag
       $itemTag = $item.IsChecked
       return $itemTag -eq $tagToFilter
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
                
                function Set-Registry {
                    param (
                        $Name,
                        $Type,
                        $Path,
                        $Value
                    )
                    
                    try
                    {
                        if (-not (Test-Path -Path $Path)) {
                            New-Item -Path $Path -Force | Out-Null
                        }

                        Write-Host "$Name disabled" -ForegroundColor Yellow
                        Set-ItemProperty -Path $Path -Name $Name -Type $Type -Value $Value -Force -ErrorAction Stop
            
                    }
                    catch {
                        Write-Error "An error occurred: $_" -ForegroundColor Red
                    }
                }

                function Remove-Registry {
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
                            Write-Output "Registry key '$KeyPath' and its subkeys have been deleted." -ForegroundColor Yellow
                        } else {
                            Write-Output "Registry key '$KeyPath' does not exist." -ForegroundColor Red
                        }
                    }
                    catch {
                        Write-Output "An error occurred: $_" -ForegroundColor red
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
                            Write-Host "Service '$ServiceName' disabled." -ForegroundColor Yellow
                        }
                        else {
                            Write-Host "Service '$ServiceName' not found." -ForegroundColor Yellow
                        }
                    }
                    catch
                    {
                        Write-Host "Failed to disable service '$ServiceName'. Error: $_" -ForegroundColor Red
                    }
                }

                function Remove-AppxPackage  {

                    param (
                        $Name
                    )
                
                    if (Get-AppxPackage -AllUsers -Name $Name -ErrorAction SilentlyContinue)
                    {
                        try {

                            Get-AppxPackage -AllUsers -Name $Name | Remove-AppxPackage -ErrorAction Stop

                            Write-Host "Successfully removed $App" -ForegroundColor Yellow

                        } 
                        catch {
                            Write-Host "Failed to remove $App. $_" -ForegroundColor red
                        }
                    }
                    else {
                        Write-Host "$App : Not found." -ForegroundColor Yellow
                    }
                }
                
                function UpdateUI {

                    param($InstallBtn,$Description)
                    
                    $sync['window'].Dispatcher.Invoke([Action]{
                        $sync.applyBtn.Content = "$InstallBtn"
                        $sync.Description.Text = "$Description"
                    })
                }

                function Finish {

                    $sync.TweaksListView.Dispatcher.Invoke([Action]{
                        foreach ($item in $sync.TweaksListView.Items)
                        {
                            $item.IsChecked = $false
                            $sync.TweaksListView.Clear()
                            $collectionView = [System.Windows.Data.CollectionViewSource]::GetDefaultView($sync.TweaksListView.Items)
                            $collectionView.Filter = $null
                        }
                    })

                    UpdateUI -InstallBtn "Apply" -Description "" 


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
                        UpdateUI -InstallBtn "Wait..." -Description "Applying..." 
                        $sync.ProcessRunning = $true

                        foreach ($app in $tweaks) 
                        {

                            if ($app.Type -eq "command")
                            {
                                foreach ($cmd in $app.Commands) 
                                {
                                    Start-Process -FilePath "powershell.exe" -ArgumentList "-Command `"$($cmd.run)`"" -NoNewWindow -Wait
                                    Write-Host $app.Name Done 

                                    # debug
                                    #Write-Host Start-Process -FilePath "powershell.exe" -ArgumentList "-Command `"$($cmd.run)`"" -NoNewWindow -Wait
                                }
                            }

                            if ($app.Type -eq "modifying")
                            {
                                foreach ($re in $app.registry) 
                                {
                                    Set-Registry -Name $re.Name -Type $re.Type -Path $re.Path -Value $re.Value



                                    # debug
                                    #Write-Host Set-Registry -Name $re.Name -Type $re.Type -Path $re.Path -Value $re.Value
                                    
                                }
                            }

                            if ($app.Type -eq "delete")
                            {
                                foreach ($re in $app.registry) 
                                {
                                    Remove-Registry -RegistryPath $re.Path -Folder $re.Name

                                    # debug
                                    #Write-Host Remove-Registry -RegistryPath $re.Path -Folder $re.Name

                                }
                            }
            
                            if ($app.Type -eq "service")
                            {
                                foreach ($se in $app.service) 
                                {
                                    Disable-Service -ServiceName $($se.Name) -StartupType $($se.StartupType)
                                }
                            }

                            if ($app.Type -eq "AppxPackage")
                            {
                                foreach ($appx in $app.removeAppxPackage) 
                                {
                                   Remove-AppxPackage -Name $appx.Name

                                   # debug
                                   #Write-Host Remove-AppxPackage -Name $appx.Name

                                }
                            }
                        }

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
                                $item.IsChecked = $false
                                $sync.TweaksListView.Clear()
                                $collectionView = [System.Windows.Data.CollectionViewSource]::GetDefaultView($sync.TweaksListView.Items)
                                $collectionView.Filter = $null
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

