# Load DLLs
Add-Type -AssemblyName System.Windows.Forms

# Synchronized Hashtable for shared variables
$itt = [Hashtable]::Synchronized(@{
    database       = @{}
    ProcessRunning = $false
    lastupdate     = "#{replaceme}"
    github         = "https://github.com/emadadel4"
    telegram       = "https://t.me/emadadel4"
    website        = "https://emadadel4.github.io"
    developer      = "Emad Adel"
    registryPath   = "HKCU:\Software\ITT@emadadel"
    firebaseUrl    = "https://ittools-7d9fe-default-rtdb.firebaseio.com/Users"
    isDarkMode     = $null
    CurretTheme    = $null
    Date           = (Get-Date)
    Music          = "100"
    PopupWindow   = "On"
    Language       = "en"
})

$currentPid = [System.Security.Principal.WindowsIdentity]::GetCurrent()
$principal = [System.Security.Principal.WindowsPrincipal]$currentPid
$administrator = [System.Security.Principal.WindowsBuiltInRole]::Administrator

if (-not $principal.IsInRole($administrator)) {
    Start-Process -FilePath "PowerShell" -ArgumentList $myInvocation.MyCommand.Definition -Verb "runas"
    exit
}

$Host.UI.RawUI.WindowTitle = "ITT (Install and Tweaks Tool) - Admin"

# Initialize media player only when necessary
$itt.mediaPlayer = New-Object -ComObject WMPlayer.OCX