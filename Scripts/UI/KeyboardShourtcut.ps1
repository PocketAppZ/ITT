$commonKeyEvents = {

    if ($itt.ProcessRunning -eq $true) {
        return
    }

    if (($_.Key -eq "Enter")) {

        switch ($itt.currentList) {
            "appslist" {
                Invoke-Install                
            }
            "tweakslist" {
                Invoke-ApplyTweaks
            }
        }
    }

    if (($_.Key -eq "S" -and $_.KeyboardDevice.Modifiers -eq "Ctrl")) {

        switch ($itt.currentList) {
            "appslist" {
                Invoke-Install                
            }
            "tweakslist" {
                Invoke-ApplyTweaks
            }
        }
    }

     # Quit from applaction
     if (($_.Key -eq "X" -and $_.KeyboardDevice.Modifiers -eq "Ctrl")) {
        $this.Close()
    }

    # Foucs on Search box
    if (($_.Key -eq "F" -and $_.KeyboardDevice.Modifiers -eq "Ctrl")) {
        $itt.SearchInput.Focus()
    }

    # Lost Foucs on Search box
    if ($_.Key -eq "Escape") {
        $itt.SearchInput.MoveFocus([System.Windows.Input.TraversalRequest]::New([System.Windows.Input.FocusNavigationDirection]::Next))
    }


    if ($_.Key -eq "Q" -and $_.KeyboardDevice.Modifiers -eq "Ctrl") {
        $itt.TabControl.SelectedItem = $itt.TabControl.Items | Where-Object { $_.Name -eq "apps" }
    }

    if ($_.Key -eq "W" -and $_.KeyboardDevice.Modifiers -eq "Ctrl") {
        $itt.TabControl.SelectedItem = $itt.TabControl.Items | Where-Object { $_.Name -eq "tweeksTab" }
    }

    if ($_.Key -eq "E" -and $_.KeyboardDevice.Modifiers -eq "Ctrl") {
        $itt.TabControl.SelectedItem = $itt.TabControl.Items | Where-Object { $_.Name -eq "SettingsTab" }
    }
   
}

$itt["window"].Add_PreViewKeyDown($commonKeyEvents)
