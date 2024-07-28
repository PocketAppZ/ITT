function WriteAText {
    param (
        $message,
        $color
    )
    
Write-Host " +==============================================================================+" -ForegroundColor Yellow;
Write-Host " |                                                                              |" -ForegroundColor Yellow;
Write-Host " |   ___ _____ _____   _____ __  __    _    ____       _    ____  _____ _       |" -ForegroundColor Yellow;
Write-Host " |  |_ _|_   _|_   _| | ____|  \/  |  / \  |  _ \     / \  |  _ \| ____| |      |" -ForegroundColor Yellow;
Write-Host " |   | |  | |   | |   |  _| | |\/| | / _ \ | | | |   / _ \ | | | |  _| | |      |" -ForegroundColor Yellow;
Write-Host " |   | |  | |   | |   | |___| |  | |/ ___ \| |_| |  / ___ \| |_| | |___| |___   |" -ForegroundColor Yellow;
Write-Host " |  |___| |_|   |_|   |_____|_|  |_/_/   \_\____/  /_/   \_\____/|_____|_____|  |" -ForegroundColor Yellow;
Write-Host " |                                                                              |" -ForegroundColor Yellow;
Write-Host " |                       Made with ♥ By Emad Adel                               |" -ForegroundColor Yellow;
Write-Host " |                          #StandWithPalestine                                 |" -ForegroundColor Yellow;
Write-Host " +==============================================================================+" -ForegroundColor Yellow; 
Write-Host " `n` $message" -ForegroundColor Yellow
Write-Host "`n` IT (Install and Tweaks Tool) is open source, You can contribute to improving the tool." -ForegroundColor Yellow
Write-Host " If you have trouble installing a program, report the problem on feedback links" -ForegroundColor Yellow
Write-Host " https://github.com/emadadel4/ITT/issues" -ForegroundColor Yellow
Write-Host " Telegram: https://t.me/ittemadadel" -ForegroundColor Yellow
Write-Host " Discord: https://discord.com/invite/3eV79KgD" -ForegroundColor Yellow
}
function Startup {
    Write-Host (WriteAText -color White -message  "You ready to Install anything.") 
    Get-PCInfo 
}