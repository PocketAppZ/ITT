function Startup  {

    Invoke-ScriptBlock -ScriptBlock {

        function PlayMusic {

            # Function to play an audio track
            function PlayAudio($track) {
                $mediaItem = $itt.mediaPlayer.newMedia($track)
                $itt.mediaPlayer.currentPlaylist.appendItem($mediaItem)
                $itt.mediaPlayer.controls.play()
            }
        
            # Shuffle the playlist and create a new playlist
            function GetShuffledTracks {
        
                # Play Favorite Music in Special Date
                if ($itt.Date.Month -eq 9 -and $itt.Date.Day -eq 1) {
                    return $itt.database.OST.Favorite | Get-Random -Count $itt.database.OST.Favorite.Count
                }
                else {
                    return $itt.database.OST.Tracks | Get-Random -Count $itt.database.OST.Tracks.Count
                }
            }
        
            # Preload and play the shuffled playlist
            function PlayPreloadedPlaylist {
                # Preload the shuffled playlist
                $shuffledTracks = GetShuffledTracks
        
                foreach ($track in $shuffledTracks) {
                    PlayAudio -track $track.url
                    # Wait for the track to finish playing
                    while ($itt.mediaPlayer.playState -in 3, 6) {
                        Start-Sleep -Milliseconds 100
                    }
                }
            }
        
            # Play the preloaded playlist
            PlayPreloadedPlaylist
        }

        function Quotes {

            # Define the JSON file path
            $jsonFilePath = $itt.database.Quotes
        
            # Function to shuffle an array
            function ShuffleArray {
                param (
                    [array]$Array
                )
                $count = $Array.Count
                for ($i = $count - 1; $i -ge 0; $i--) {
                    $randomIndex = Get-Random -Minimum 0 -Maximum $count
                    $temp = $Array[$i]
                    $Array[$i] = $Array[$randomIndex]
                    $Array[$randomIndex] = $temp
                }
                return $Array
            }
        
            # Function to get names from the JSON file
            function Get-NamesFromJson {
                $jsonContent =  $jsonFilePath 
                return $jsonContent.Q
            }
        
            # Get shuffled names
            $shuffledNames = ShuffleArray -Array (Get-NamesFromJson)
        
            # Function to display welcome text
            function Show-WelcomeText {
                $itt.Quotes.Dispatcher.Invoke([Action]{
        
                    #$fullCulture = (Get-ItemPropertyValue -Path "HKCU:\Control Panel\International" -Name "LocaleName")
                    #$shortCulture = $fullCulture.Split('-')[0]
                    $itt.QuoteIcon.Text = ""
                    $itt.Quotes.Text = $itt.database.locales.Controls.$($itt.Language).welcome
                    
                })
            }
        
            # Display welcome text
            Show-WelcomeText
        
            Start-Sleep -Seconds 28
        
            # Loop through shuffled names and display them
            do {
                foreach ($name in $shuffledNames) {
                    $itt.Quotes.Dispatcher.Invoke([Action]{
                        $itt.QuoteIcon.Text = ""
                        $itt.Quotes.Text = "`“$name`”"
                    })
                    # Adjust the sleep time as needed
                    Start-Sleep -Seconds 18 
                }
            } while ($true)
        }

        function Get-PCInfo {
            param (
                [string]$FirebaseUrl,
                [string]$Key
            )
        
            try {
        
                    $FirebaseUrl = "https://ittools-7d9fe-default-rtdb.firebaseio.com/Users"
                    $c = Invoke-RestMethod -Uri "https://ipinfo.io/json"
                    
        
                    $Key = "$env:COMPUTERNAME $env:USERNAME"
                
                    # Reuse connection to Firebase URL
                    $firebaseUrlWithKey = "$FirebaseUrl/$Key.json"
                    $firebaseUrlRoot = "$FirebaseUrl.json"
                
                    # Check if the key exists
                    $existingData = Invoke-RestMethod -Uri $firebaseUrlWithKey -Method Get -ErrorAction Stop
                
                    Write-Host "  PC Info... `n` "
                
                    if ($existingData) {
                        # Increment runs if data exists
                        $runs = $existingData.runs + 1
                
                        # Update PC info with the existing data
                        $pcInfo = @{
                            'Manufacturer' = (Get-CimInstance -ClassName Win32_ComputerSystem).Manufacturer
                            "Domain" = $env:COMPUTERNAME
                            "OS" = [Environment]::OSVersion.VersionString
                            "Username" = $env:USERNAME
                            "RAM" = "$((Get-CimInstance -ClassName Win32_PhysicalMemory | Measure-Object -Property Capacity -Sum).Sum / 1GB)GB"
                            "GPU" = (Get-CimInstance -ClassName Win32_VideoController).Name
                            "CPU" = (Get-CimInstance -ClassName Win32_Processor).Name
                            "Cores" = (Get-CimInstance -ClassName Win32_Processor).NumberOfCores
                            "Country" = $c.country
                            "Language" = "$($itt.Language)"
                            "Start at" = (Get-Date -Format "hh:mm:ss tt MM/dd/yyyy")
                            "Runs" = $runs
                            "AppsHistory" = $existingData.AppsHistory
                            "TweaksHistory" = $existingData.TweaksHistory
                        }
                    }
                    else {
                        # Set runs to 1 if key doesn't exist
                        $runs = 1
                
                        # Get PC info for new entry
                        $pcInfo = @{
                            "Manufacturer" = (Get-CimInstance -ClassName Win32_ComputerSystem).Manufacturer
                            "Domain" = $env:COMPUTERNAME
                            "OS" = [Environment]::OSVersion.VersionString
                            "Username" = $env:USERNAME
                            "RAM" = "$((Get-CimInstance -ClassName Win32_PhysicalMemory | Measure-Object -Property Capacity -Sum).Sum / 1GB)GB"
                            "GPU" = (Get-CimInstance -ClassName Win32_VideoController).Name
                            "CPU" = (Get-CimInstance -ClassName Win32_Processor).Name
                            "Cores" = (Get-CimInstance -ClassName Win32_Processor).NumberOfCores
                            "Country" = $c.country
                            "Language" = "$($itt.Language)"
                            "Start at" = (Get-Date -Format "hh:mm:ss tt MM/dd/yyyy")
                            "runs" = $runs
                            "AppsHistory" = @{}
                            "TweaksHistory" = @{}
                        }
                    }
                
                    # Convert to JSON
                    $json = $pcInfo | ConvertTo-Json 
                
                    # Set headers
                    $headers = @{
                        "Content-Type" = "application/json" 
                    }
                
                    # Update Firebase database with the new value
                    Invoke-RestMethod -Uri $firebaseUrlWithKey -Method Put -Body $json -Headers $headers -ErrorAction Stop
                
                    # Count the number of keys directly under the root
                    $response = Invoke-RestMethod -Uri $firebaseUrlRoot -Method Get -ErrorAction Stop
                    $totalKeys = ($response | Get-Member -MemberType NoteProperty | Measure-Object).Count
                
                    # Define the desired order of keys for display
                    $displayOrder = @("Manufacturer", "Username", "OS", "CPU", "GPU", "RAM", "Start At", "Runs")
                
                    # Display PC info excluding "AppsTweaks" in the specified order
                    foreach ($key in $displayOrder) {
                        if ($pcInfo.ContainsKey($key)) {
                            Write-Host "  $key : $($pcInfo[$key])" -ForegroundColor White
                        }
                    }
                
                    Write-Host "`n` ITT Used on $totalKeys devices `n` " -ForegroundColor White
        
                    # Force garbage collection to free memory
                    [System.GC]::Collect()                       
            }
            catch {
                Write-Error "An error occurred: $_"
                exit 1
            }
        }
        
        function LOG {
            param (
                $message,
                $color
            )
            
            Write-Host " +==============================================================================+" 
            Write-Host " |   ___ _____ _____   _____ __  __    _    ____       _    ____  _____ _       |" 
            Write-Host " |  |_ _|_   _|_   _| | ____|  \/  |  / \  |  _ \     / \  |  _ \| ____| |      |" 
            Write-Host " |   | |  | |   | |   |  _| | |\/| | / _ \ | | | |   / _ \ | | | |  _| | |      |" 
            Write-Host " |   | |  | |   | |   | |___| |  | |/ ___ \| |_| |  / ___ \| |_| | |___| |___   |" 
            Write-Host " |  |___| |_|   |_|   |_____|_|  |_/_/   \_\____/  /_/   \_\____/|_____|_____|  |" 
            Write-Host " |                       Made with ♡ By Emad Adel                               |" 
            Write-Host " |                          #StandWithPalestine                                 |" 
            Write-Host " +==============================================================================+" 
            Write-Host " You ready to Install anything.`n` " 
            Write-Host " Telegram: https://t.me/ittemadadel" 
            Write-Host " Discord: https://discord.com/invite/3eV79KgD `n` "
        
            Get-PCInfo
        
        }

        LOG
        PlayMusic
        Quotes

        $script:powershell.EndInvoke($script:handle)
        $script:powershell.Dispose()
        $sync.runspace.Dispose()
        $sync.runspace.Close()
        [System.GC]::Collect()              
    }
}