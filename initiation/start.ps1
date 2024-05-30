# Load DLLs
Add-Type -AssemblyName PresentationFramework
Add-Type -AssemblyName PresentationCore
Add-Type -AssemblyName PresentationFramework.Aero
Add-Type -AssemblyName System.Windows.Forms

# Variable to sync between runspaces
$sync = [Hashtable]::Synchronized(@{})
$sync.PSScriptRoot = $PSScriptRoot
$sync.version = "#{replaceme}"
$sync.github =   "https://github.com/emadadel4"
$sync.telegram = "https://t.me/emadadel4"
$sync.website =  "https://eprojects.orgfree.com"
$sync.developer =   "Emad Adel @emadadel4"
$sync.registryPath = "HKCU:\Software\ITTEmadadel"
$sync.firebaseUrl = "https://ittools-7d9fe-default-rtdb.firebaseio.com/"
$sync.database = @{}
$sync.ProcessRunning = $false
$sync.isDarkMode
$sync.Langusege = "en"
$sync.mediaPlayer = New-Object -ComObject WMPlayer.OCX
$currentPid = [System.Security.Principal.WindowsIdentity]::GetCurrent()
$principal = new-object System.Security.Principal.WindowsPrincipal($currentPid)
$administrator=[System.Security.Principal.WindowsBuiltInRole]::Administrator
$newProcess = new-object System.Diagnostics.ProcessStartInfo "PowerShell";

if ($principal.IsInRole($administrator))
{
    $Host.UI.RawUI.WindowTitle = $myInvocation.MyCommand.Definition + "(Admin)"
    #Clear-Host
}
else
{
    $newProcess.Arguments = $myInvocation.MyCommand.Definition;
    $newProcess.Verb = "runas";
    $newProcess.WindowWidth = 20  # Set the width of the window
    $newProcess.WindowHeight = 20  # Set the height of the window
    [System.Diagnostics.Process]::Start($newProcess);
    break
}
