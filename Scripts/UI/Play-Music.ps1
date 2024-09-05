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

# Mute the music by setting the volume to the specified value
function MuteMusic {
    param($value)
    $itt.mediaPlayer.settings.volume = $value
    # Save the volume setting to the registry for persistence
    Set-ItemProperty -Path $itt.registryPath -Name "Music" -Value "$value" -Force
}

# Unmute the music by setting the volume to the specified value
function UnmuteMusic {
    param($value)
    $itt.mediaPlayer.settings.volume = $value
    # Save the volume setting to the registry for persistence
    Set-ItemProperty -Path $itt.registryPath -Name "Music" -Value "$value" -Force
}

# Stop the music and clean up resources
function StopMusic {
    $itt.mediaPlayer.controls.stop()    # Stop the media player
    $itt.mediaPlayer = $null            # Clear the media player object
    $script:powershell.Dispose()         # Dispose of the PowerShell object
    $itt.runspace.Dispose()             # Dispose of the runspace
    $itt.runspace.Close()               # Close the runspace
}

# Stop all runspaces, stop the music, and exit the process
function StopAllRunspace {
    $script:powershell.Dispose()         # Dispose of the PowerShell object
    $itt.runspace.Dispose()             # Dispose of the runspace
    $itt.runspace.Close()               # Close the runspace
    $script:powershell.Stop()            # Stop the PowerShell script
    StopMusic                            # Stop the music and clean up resources
    $newProcess.exit                     # Exit the process
    # Display a message reminding to pray for the oppressed
    Write-Host "`n` Don't forget to pray for the oppressed people, Stand with Palestine" 
}