function ToggleTheme {
    
    try {

        if ($itt.searchInput = $itt['window'].FindName('themeText').IsChecked -eq $true)
        {
            Switch-ToDarkMode
        } 
        else
        {
            Switch-ToLightMode
        }
        
    }
    catch {
        Write-Host "Error toggling theme: $_"
    }

    $itt['window'].FindName('themeText').IsChecked = -not $itt['window'].FindName('themeText').IsChecked

}
function Switch-ToDarkMode {
    try {

        $theme = $itt['window'].FindResource("Dark")
        Update-Theme $theme "true"
    } catch {
        Write-Host "Error switching to dark mode: $_"
    }
}
function Switch-ToLightMode {
    try {
        $theme = $itt['window'].FindResource("Light")
        Update-Theme $theme "false"
    } catch {
        Write-Host "Error switching to light mode: $_"
    }
}
function Update-Theme ($theme, $mode) {
    $itt['window'].Resources.MergedDictionaries.Clear()
    $itt['window'].Resources.MergedDictionaries.Add($theme)
    Set-ItemProperty -Path $itt.registryPath -Name "DarkMode" -Value $mode -Force

}
function SwitchToSystem {

    try {

        Set-ItemProperty -Path $itt.registryPath  -Name "DarkMode" -Value "none" -Force

        $AppsTheme = (Get-ItemPropertyValue -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" -Name "AppsUseLightTheme")

        switch ($AppsTheme) {
            "0" {
                $itt['window'].Resources.MergedDictionaries.Add($itt['window'].FindResource("Dark"))
            }
            "1" {
                $itt['window'].Resources.MergedDictionaries.Add($itt['window'].FindResource("Light"))
            }
            Default {
                Write-Host "Unknown theme value: $AppsTheme"
            }
        }
    }
    catch {
        Write-Host "Error occurred: $_"
    }
}