Function Get-ToggleStatus {

    Param($ToggleSwitch)

    if($ToggleSwitch -eq "ToggleDarkMode"){
        $app = (Get-ItemProperty -path 'HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize').AppsUseLightTheme
        $system = (Get-ItemProperty -path 'HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize').SystemUsesLightTheme
        if($app -eq 0 -and $system -eq 0){
            return $true
        }
        else{
            return $false
        }
    }
  
    if($ToggleSwitch -eq "ToggleShowExt"){
        $hideextvalue = (Get-ItemProperty -path 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced').HideFileExt
        if($hideextvalue -eq 0){
            return $true
        }
        else{
            return $false
        }
    }

    if($ToggleSwitch -eq "ToggleShowHidden"){
        $hideextvalue = (Get-ItemPropertyValue -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "ShowSuperHidden")
        if($hideextvalue -eq 1){
            return $true
        }
        else{
            return $false
        }
    }

    if($ToggleSwitch -eq "ToggleNumLook"){
        $numlockvalue = (Get-ItemProperty -path 'HKCU:\Control Panel\Keyboard').InitialKeyboardIndicators
        if($numlockvalue -eq 2){
            return $true
        }
        else{
            return $false
        }
    } 
    
    if ($ToggleSwitch -eq "ToggleStickyKeys") {
        $StickyKeys = (Get-ItemProperty -path 'HKCU:\Control Panel\Accessibility\StickyKeys').Flags
        if($StickyKeys -eq 58){
            return $false
        }
        else{
            return $true
        }
    }
}