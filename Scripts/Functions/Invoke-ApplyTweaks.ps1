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
                        registry = $program.registry
                        service = $program.service
                        Command = $program.command


                    }
                }
            }
        }
    }

    return $items 
}

# function ShowSelectedItems {
    
#     $collectionView = [System.Windows.Data.CollectionViewSource]::GetDefaultView($sync.AppsListView.Items)

#     $filterPredicate = {
#        param($item)

#        $tagToFilter =  $true
#        # Check if the item has the tag
#        $itemTag = $item.IsChecked
#        return $itemTag -eq $tagToFilter
#    }

#    $collectionView.Filter = $filterPredicate

# }

function Invoke-ApplyTweaks
{
    $tweaks  = Get-SelectedTweaks

    if(Get-SelectedTweaks -ne $null)
    {
        if($tweaks.Count -gt 0)
        {

            Invoke-RunspaceWithScriptBlock -ArgumentList $tweaks -ScriptBlock{

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

                        Write-Host "$Name disabled"
                        Set-ItemProperty -Path $Path -Name $Name -Type $Type -Value $Value -Force -ErrorAction Stop
            
                    }
                    catch {
                        Write-Error "An error occurred: $_"
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
                            Write-Host "Service '$ServiceName' disabled."
                        }
                        else {
                            Write-Host "Service '$ServiceName' not found."
                        }
                    }
                    catch
                    {
                        Write-Host "Failed to disable service '$ServiceName'. Error: $_"
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
                        }
                    })

                    UpdateUI -InstallBtn "Apply" -Description "" 


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
                    $msg = [System.Windows.MessageBox]::Show("Do you want to install $($tweaks.Count) selected Tweaks", "ITT | Emad Adel", [System.Windows.MessageBoxButton]::YesNo, [System.Windows.MessageBoxImage]::Question)

                    if ($msg -eq "Yes")
                    {
                        UpdateUI -InstallBtn "Wait..." -Description "Applying..." 
                        $sync.ProcessRunning = $true

                        foreach ($app in $tweaks) 
                        {
            
                            if ($app.Type -eq "reg")
                            {
                                foreach ($re in $app.registry) 
                                {
                                    Set-Registry -Name $re.Name -Type $re.Type -Path $re.Path -Value $re.Value
                                    Start-Process -FilePath "powershell.exe" -ArgumentList "-Command `"$($re.refresh)`"" -NoNewWindow -Wait
                                }
                            }
            
                            if ($app.Type -eq "service")
                            {
                                foreach ($se in $app.service) 
                                {
                                    Disable-Service -ServiceName $($se.Name) -StartupType $($se.StartupType)
                                }
                            }
            
                            if ($app.Type -eq "script")
                            {
                                Start-Process -FilePath "powershell.exe" -ArgumentList "-Command `"$($app.Command)`"" -NoNewWindow -Wait
                            }
                        }

                        Start-Sleep -Seconds 2
                        $sync.ProcessRunning = $False
                        Finish
                        CustomMsg -title "ITT | Emad Adel" -msg "Done" -MessageBoxImage "Information" -MessageBoxButton "OK"
                    }
                    else
                    {
                        # Uncheck all checkboxes in $list
                        $sync.TweaksListView.Dispatcher.Invoke([Action]{
                            foreach ($item in $sync.TweaksListView.Items)
                            {
                                $item.IsChecked = $false
                            }
                        })
                    }
                }
                catch {
                    Write-Host "Error: $_"
                }
            }
        }
    }
}

