######################################################################################
#      ___ _____ _____   _____ __  __    _    ____       _    ____  _____ _          #
#     |_ _|_   _|_   _| | ____|  \/  |  / \  |  _ \     / \  |  _ \| ____| |         #
#      | |  | |   | |   |  _| | |\/| | / _ \ | | | |   / _ \ | | | |  _| | |         #
#      | |  | |   | |   | |___| |  | |/ ___ \| |_| |  / ___ \| |_| | |___| |___      #
#     |___| |_|   |_|   |_____|_|  |_/_/   \_\____/  /_/   \_\____/|_____|_____|     #
#                Automatically generated from build don't play here :)               # 
#                              #StandWithPalestine                                   #
# https://github.com/emadadel4                                                       #
# https://t.me/emadadel4                                                             #
# https://emadadel4.github.io/itt                                                    #
######################################################################################
#===========================================================================
#region Begin Start
#===========================================================================
# Load DLLs
Add-Type -AssemblyName System.Windows.Forms

# Synchronized Hashtable for shared variables
$sync = [Hashtable]::Synchronized(@{
    database       = @{}
    ProcessRunning = $false
    lastupdate     = "07/29/24"
    github         = "https://github.com/emadadel4"
    telegram       = "https://t.me/emadadel4"
    website        = "https://emadadel4.github.io"
    developer      = "Emad Adel"
    registryPath   = "HKCU:\Software\itt.emadadel"
    firebaseUrl    = "https://ittools-7d9fe-default-rtdb.firebaseio.com/Users"
    isDarkMode     = $null
    Langusege      = "en"
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
$sync.mediaPlayer = New-Object -ComObject WMPlayer.OCX


#===========================================================================
#endregion End Start
#===========================================================================
#===========================================================================
#region Begin Database /APPS/TWEEAKS/Quotes/OST/Settings
#===========================================================================
$sync.database.Applications = '[
  {
    "name": "Mozilla Firefox",
    "description": "A widely-used open-source web browser known for its speed, privacy features, and customization options.",
    "winget": "Mozilla.Firefox",
    "choco": "firefox",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Web Browsers",
    "suggestion": "true",
    "check": "false"
  },
  {
    "name": "Mozilla Firefox ESR",
    "description": "A widely-used open-source web browser known for its speed, privacy features, and customization options.",
    "winget": "Mozilla.Firefox.ESR",
    "choco": "firefoxesr",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Web Browsers",
    "suggestion": "true",
    "check": "false"
  },
  {
    "name": "Thorium SSE3",
    "description": "A web browser designed for smooth and secure browsing experiences.",
    "winget": "Alex313031.Thorium",
    "choco": "thorium --params /SSE3",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Web Browsers",
    "check": "false"
  },
  {
    "name": "Thorium AVX",
    "description": "A web browser designed for smooth and secure browsing experiences.",
    "winget": "Alex313031.Thorium.AVX2",
    "choco": "thorium --params /AVX",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Web Browsers",
    "check": "false"
  },
  {
    "name": "Microsoft Edge",
    "description": "Microsoft''s web browser built for fast and secure internet surfing, integrating seamlessly with Windows ecosystem.",
    "winget": "Microsoft.Edge",
    "choco": "microsoft-edge",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Web Browsers",
    "check": "false"
  },
  {
    "name": "Google Chrome",
    "description": "A popular web browser known for its speed, simplicity, and vast ecosystem of extensions.",
    "winget": "Google.Chrome",
    "choco": "googlechrome",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Web Browsers",
    "check": "false"
  },
  {
    "name": "Chromium",
    "description": "An open-source web browser project that serves as the foundation for many browsers, including Google Chrome.",
    "winget": "eloston.ungoogled-chromium",
    "choco": "chromium",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Web Browsers",
    "check": "false"
  },
  {
    "name": "Brave",
    "description": "A privacy-focused web browser that blocks ads and trackers, offering faster and safer browsing experiences.",
    "winget": "Brave.Brave",
    "choco": "brave",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Web Browsers",
    "check": "false"
  },
  {
    "name": "Tor Browser",
    "description": "A web browser that prioritizes user privacy by routing internet traffic through a global network of servers, enabling anonymous browsing.",
    "winget": "TorProject.TorBrowser",
    "choco": "tor-browser",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Web Browsers",
    "check": "false"
  },
  {
    "name": "Opera",
    "description": "The Opera web browser makes the Web fast and fun, giving you a better web browser experience on any computer.",
    "winget": "Opera.Opera",
    "choco": "opera",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Web Browsers",
    "check": "false"
  },
  {
    "name": "Internet Download Manager",
    "description": "A popular download manager tool that accelerates downloads and allows users to organize and schedule downloads efficiently.",
    "winget": "Tonec.InternetDownloadManager",
    "choco": "internet-download-manager",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Web Browsers",
    "check": "false"
  },
  {
    "name": "JDownloader",
    "description": "JDownloader is an internet download manager.",
    "winget": "AppWork.JDownloader",
    "choco": "jdownloader",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Web Browsers",
    "check": "false"
  },
  {
    "name": "KLite Mega Codec Full Pack",
    "description": "Comprehensive collection of audio and video codecs, filters, and tools, enabling playback of various media formats.",
    "winget": "none",
    "choco": "k-litecodecpackfull",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Media",
    "suggestion": "true",
    "check": "false"
  },
  {
    "name": "PotPlayer",
    "description": "A multimedia player with a sleek interface and advanced features, supporting a wide range of audio and video formats.",
    "winget": "Daum.PotPlayer",
    "choco": "potplayer",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Media",
    "check": "false"
  },
  {
    "name": "VLC",
    "description": "A versatile media player capable of playing almost any multimedia file format, with support for various streaming protocols.",
    "winget": "VideoLAN.VLC",
    "choco": "vlc.install",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Media",
    "suggestion": "true",
    "check": "false"
  },
  {
    "name": "Kodi",
    "description": "A powerful open-source media center software that allows users to organize and stream their media collections.",
    "winget": "9NBLGGH4T892",
    "choco": "kodi",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Media",
    "check": "false"
  },
  {
    "name": "Jellyfin Server",
    "description": "An open-source media server software that enables users to stream their media libraries across devices, providing a self-hosted alternative to commercial services.",
    "winget": "Jellyfin.Server",
    "choco": "jellyfin",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Media",
    "check": "false"
  },
  {
    "name": "Winamp",
    "description": "A classic media player known for its customizable interface and extensive plugin support, providing a nostalgic music playback experience.",
    "winget": "Winamp.Winamp",
    "choco": "winamp",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Media",
    "check": "false"
  },
  {
    "name": "Aimp",
    "description": "A lightweight and feature-rich audio player with support for various audio formats and customizable interface themes.",
    "winget": "AIMP.AIMP",
    "choco": "aimp",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Media",
    "check": "false"
  },
  {
    "name": "Spotify",
    "description": "Spotify is a new way to listen to music.",
    "winget": "Spotify.Spotify",
    "choco": "spotify",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Media",
    "check": "false"
  },
  {
    "name": "FastStone Image Viewer",
    "description": "FastStone Image Viewer is a fast, stable, user-friendly image browser, converter and editor ",
    "winget": "FastStone.Viewer",
    "choco": "fsviewer",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Imaging",
    "check": "false"
  },
  {
    "name": "OpenOffice",
    "description": "An open-source office productivity suite offering word processing, spreadsheet, presentation, and other office tools, compatible with Microsoft Office formats.",
    "winget": "Apache.OpenOffice",
    "choco": "openoffice",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Documents",
    "check": "false"
  },
  {
    "name": "FoxitReader",
    "description": "A lightweight and feature-rich PDF reader with annotation, form filling, and document signing capabilities.",
    "winget": "Foxit.FoxitReader",
    "choco": "foxitreader",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Documents",
    "check": "false"
  },
  {
    "name": "LibreOffice",
    "description": "A powerful open-source office suite providing word processing, spreadsheet, presentation, and other office tools, compatible with Microsoft Office formats.",
    "winget": "Foxit.FoxitReader",
    "choco": "libreoffice-fresh",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Documents",
    "suggestion": "true",
    "check": "false"
  },
  {
    "name": "SumatraPDF",
    "description": "A lightweight and fast PDF reader with minimalistic design and focus on simplicity and speed.",
    "winget": "SumatraPDF.SumatraPDF",
    "choco": "sumatrapdf.install",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Documents",
    "check": "false"
  },
  {
    "name": "WinRAR",
    "description": "A popular file compression and archiving utility that supports various archive formats and offers advanced features such as encryption and self-extracting archives.",
    "winget": "RARLab.WinRAR",
    "choco": "winrar",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Compression",
    "suggestion": "true",
    "check": "false"
  },
  {
    "name": "7Zip",
    "description": "An open-source file archiver with a high compression ratio, supporting various archive formats and providing a powerful command-line interface.",
    "winget": "7zip.7zip",
    "choco": "7zip",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Compression",
    "suggestion": "true",
    "check": "false"
  },
  {
    "name": "PeaZip",
    "description": " PeaZip is a free cross-platform file archiver.",
    "winget": "Giorgiotani.Peazip",
    "choco": "peazip",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Compression",
    "check": "false"
  },
  {
    "name": "Telegram Desktop",
    "description": "A cross-platform messaging app with a focus on speed and security, offering end-to-end encryption and a wide range of features such as group chats, file sharing, and stickers.",
    "winget": "Telegram.TelegramDesktop",
    "choco": "telegram",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Communication",
    "suggestion": "true",
    "check": "false"
  },
  {
    "name": "Signal",
    "description": "Fast, simple, secure. Privacy that fits in your pocket.",
    "winget": "OpenWhisperSystems.Signal",
    "choco": "signal",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Communication",
    "check": "false"
  },
  {
    "name": "Meta Messenger",
    "description": "A messaging app that allows users to connect with friends and family through text messages, voice calls, and video calls, offering various multimedia sharing features.",
    "winget": "9WZDNCRF0083",
    "choco": "messenger",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Communication",
    "check": "false"
  },
  {
    "name": "Zoom",
    "description": "A video conferencing app that facilitates online meetings, webinars, and virtual events, allowing participants to interact through video, audio, and chat.",
    "winget": "Zoom.ZoomRooms",
    "choco": "zoom",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Communication",
    "check": "false"
  },
  {
    "name": "Microsoft Teams",
    "description": "A collaboration platform that combines workplace chat, video meetings, file storage, and application integration, enhancing teamwork and productivity within organizations.",
    "winget": "Microsoft.Teams",
    "choco": "microsoft-teams.install",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Communication",
    "check": "false"
  },
  {
    "name": "Discord",
    "description": "A VoIP application and digital distribution platform designed for creating communities and connecting gamers, providing text, voice, and video communication features.",
    "winget": "Discord.Discord",
    "choco": "discord",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Communication",
    "check": "false"
  },
  {
    "name": "TeamViewer",
    "description": "A remote access and support software that enables users to remotely control computers, transfer files, and collaborate online, facilitating remote work and IT support.",
    "winget": "TeamViewer.TeamViewer",
    "choco": "teamviewer",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "File Sharing",
    "check": "false"
  },
  {
    "name": "GIMP",
    "description": "A free and open-source raster graphics editor used for image retouching and editing, drawing and painting, and converting between different image formats.",
    "winget": "GIMP.GIMP",
    "choco": "gimp",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Imaging",
    "check": "false"
  },
  {
    "name": "Microsoft Visual C++ Runtime - all versions",
    "description": "Microsoft Visual C++ Redistributable installs run-time components of Visual C++ libraries. These components are required to run C++ applications that are developed using Visual Studio and link dynamically to Visual C++ libraries.",
    "winget": "none",
    "choco": "vcredist-all",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Runtimes",
    "check": "false"
  },
  {
    "name": "DirectX",
    "description": "DirectX is a collection of APIs for handling tasks related to games and videos.",
    "winget": "Microsoft.DirectX",
    "choco": "directx",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Runtimes",
    "check": "false"
  },
  {
    "name": "Microsoft Visual C++ 2005 (x86) Redistributable",
    "description": "A set of runtime components required to run applications developed with Microsoft Visual C++ 2005, providing libraries, DLLs, and other resources.",
    "winget": "none",
    "choco": "vcredist2005",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Runtimes",
    "check": "false"
  },
  {
    "name": "Microsoft Visual C++ 2005 (x64) Redistributable",
    "description": "A set of runtime components required to run 64-bit applications developed with Microsoft Visual C++ 2005, providing libraries, DLLs, and other resources.",
    "winget": "none",
    "choco": "vcredist2005",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Runtimes",
    "check": "false"
  },
  {
    "name": "Microsoft Visual C++ 2008 (x86) Redistributable",
    "description": "A set of runtime components required to run applications developed with Microsoft Visual C++ 2008, providing libraries, DLLs, and other resources.",
    "winget": "none",
    "choco": "vcredist2008",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Runtimes",
    "check": "false"
  },
  {
    "name": "Microsoft Visual C++ 2008 (x64) Redistributable",
    "description": "A set of runtime components required to run 64-bit applications developed with Microsoft Visual C++ 2008, providing libraries, DLLs, and other resources.",
    "winget": "none",
    "choco": "vcredist2008",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Runtimes",
    "check": "false"
  },
  {
    "name": "Microsoft Visual C++ 2010 (x86) Redistributable",
    "description": "A set of runtime components required to run applications developed with Microsoft Visual C++ 2010, providing libraries, DLLs, and other resources.",
    "winget": "none",
    "choco": "vcredist2010",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Runtimes",
    "check": "false"
  },
  {
    "name": "Microsoft Visual C++ 2010 (x64) Redistributable",
    "description": "A set of runtime components required to run 64-bit applications developed with Microsoft Visual C++ 2010, providing libraries, DLLs, and other resources.",
    "winget": "none",
    "choco": "vcredist2010",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Runtimes",
    "check": "false"
  },
  {
    "name": "Microsoft Visual C++ 2012 (x86) Redistributable",
    "description": "A set of runtime components required to run applications developed with Microsoft Visual C++ 2012, providing libraries, DLLs, and other resources.",
    "winget": "none",
    "choco": "vcredist2012",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Runtimes",
    "check": "false"
  },
  {
    "name": "Microsoft Visual C++ 2012 (x64) Redistributable",
    "description": "A set of runtime components required to run 64-bit applications developed with Microsoft Visual C++ 2012, providing libraries, DLLs, and other resources.",
    "winget": "none",
    "choco": "vcredist2012",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Runtimes",
    "check": "false"
  },
  {
    "name": "Microsoft Visual C++ 2013 (x86) Redistributable",
    "description": "A set of runtime components required to run applications developed with Microsoft Visual C++ 2013, providing libraries, DLLs, and other resources.",
    "winget": "none",
    "choco": "vcredist2013",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Runtimes",
    "check": "false"
  },
  {
    "name": "Microsoft Visual C++ 2013 (x64) Redistributable",
    "description": "A set of runtime components required to run 64-bit applications developed with Microsoft Visual C++ 2013, providing libraries, DLLs, and other resources.",
    "winget": "none",
    "choco": "vcredist2013",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Runtimes",
    "check": "false"
  },
  {
    "name": "Microsoft Visual C++ 2015-2022 (x64) Redistributable",
    "description": "A set of runtime components required to run 64-bit applications developed with Microsoft Visual C++ 2015-2022, providing libraries, DLLs, and other resources.",
    "winget": "none",
    "choco": "vcredist2015",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Runtimes",
    "check": "false"
  },
  {
    "name": "Microsoft Visual C++ 2015-2022  (x86) Redistributable",
    "description": "A set of runtime components required to run applications developed with Microsoft Visual C++ 2015-2022, providing libraries, DLLs, and other resources.",
    "winget": "none",
    "choco": "vcredist2015",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Runtimes",
    "check": "false"
  },
  {
    "name": "NET Framework All Versions",
    "description": "A comprehensive and consistent programming model for building applications that have visually stunning user experiences, seamless and secure communication, and the ability to model a range of business processes.",
    "winget": "none",
    "choco": "dotnet-all",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Runtimes",
    "check": "false"
  },
  {
    "name": "AMD Ryzen Chipset Drivers",
    "description": "Supports: AMD Ryzen Threadripper PRO Processor, AMD Ryzen 8000/7040/7000 Series Desktop & Mobile Processors, AMD Ryzen 5000/3rd Gen/2nd Gen Desktop & Threadripper Processors, AMD Ryzen Desktop Processor with Radeon Graphics & Mobile Processor with Radeon Graphics, 7th-Gen AMD A-Series Processors, AMD X670E/X670/B650E/B650/B350/A320/X370/X399/B450/X470/X570/B550/A520/A620/TRX40/TRX50/WRX80/WRX90 Chipsets",
    "winget": "none",
    "choco": "amd-ryzen-chipset",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Drivers",
    "check": "false"
  },
  {
    "name": "NVidia Display Driver",
    "description": "The software component that allows the operating system and installed software to communicate with and control the NVIDIA graphics processing unit (GPU).",
    "winget": "none",
    "choco": "nvidia-display-driver",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Drivers",
    "check": "false"
  },
  {
    "name": "NVIDIA GeForce Experience",
    "description": "A cloud-based gaming service provided by NVIDIA that allows users to play video games on supported devices via a remote gaming PC hosted on NVIDIA''s servers.",
    "winget": "Nvidia.GeForceExperience",
    "choco": "geforce-experience",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Drivers",
    "check": "false"
  },
  {
    "name": "Msi Afterburner",
    "description": "MSI Afterburner is the ultimate graphics card utility, co-developed by MSI and RivaTuner teams.",
    "winget": "Guru3D.Afterburner",
    "choco": "msiafterburner",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Drivers",
    "check": "false"
  },
  {
    "name": "NVIDIA PhysX",
    "description": "A physics processing unit (PPU) software development kit (SDK) offered by NVIDIA for real-time physics simulations in video games.",
    "winget": "Nvidia.PhysXLegacy",
    "choco": "physx.legacy",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Drivers",
    "check": "false"
  },
  {
    "name": "Steam",
    "description": "A digital distribution platform developed by Valve Corporation for purchasing and playing video games.",
    "winget": "Valve.Steam",
    "choco": "steam",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Gaming",
    "check": "false"
  },
  {
    "name": "Ubisoft Connect",
    "description": "A digital distribution, digital rights management, multiplayer, and communications service developed by Ubisoft, providing access to Ubisoft''s games, rewards, and social features.",
    "winget": "Ubisoft.Connect",
    "choco": "ubisoft-connect",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Gaming",
    "check": "false"
  },
  {
    "name": "Origin",
    "description": " Game store launcher",
    "winget": "ElectronicArts.Origin",
    "choco": "origin",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Gaming",
    "check": "false"
  },
  {
    "name": "Rockstar Games Launcher",
    "description": "Download and play the latest Rockstar Games PC titles",
    "winget": "none",
    "choco": "rockstar-launcher",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Gaming",
    "check": "false"
  },
  {
    "name": "GameSave Manager",
    "description": "A utility tool that allows users to backup, restore, and transfer their game saves between different gaming platforms and directories.",
    "winget": "InsaneMatt.GameSaveManager",
    "choco": "gamesavemanager",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Gaming",
    "check": "false"
  },
  {
    "name": "StreamlabsOBS",
    "description": "A free and open-source streaming software built on top of OBS Studio with additional features tailored for streamers, such as built-in alerts, overlays, and chat integration.",
    "winget": "Streamlabs.StreamlabsOBS",
    "choco": "streamlabs-obs",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Gaming",
    "check": "false"
  },
  {
    "name": "OBS Studio",
    "description": "A free and open-source software for video recording and live streaming. It offers high performance real-time video/audio capturing and mixing.",
    "winget": "OBSProject.OBSStudio",
    "choco": "obs-studio.install",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Gaming",
    "check": "false"
  },
  {
    "name": "Logitech Gaming Software",
    "description": "Logitech Gaming Software lets you customize Logitech G gaming mice, keyboards, headsets and select wheels.",
    "winget": "Logitech.LGS",
    "choco": "logitechgaming",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Gaming",
    "check": "false"
  },
  {
    "name": "Lively Wallpaper",
    "description": "A software that allows users to set animated and interactive wallpapers on their Windows desktop, providing various customization options.",
    "winget": "rocksdanister.LivelyWallpaper",
    "choco": "lively",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Gaming",
    "check": "false"
  },
  {
    "name": "Playnite",
    "description": "Open source video game library manager and launcher with support for 3rd party libraries like Steam, GOG, Origin, Battle.net and Uplay.",
    "winget": "Playnite.Playnite",
    "choco": "playnite",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Gaming",
    "check": "false"
  },
  {
    "name": "Driver Easy",
    "description": "A driver update tool that automatically detects, downloads, and installs device drivers for the user''s computer hardware.",
    "winget": "Easeware.DriverEasy",
    "choco": "drivereasyfree",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Drivers",
    "check": "false"
  },
  {
    "name": "Intel Graphics Windows DCH",
    "description": "Intel Graphics Driver for Windows 10.",
    "winget": "none",
    "choco": "intel-graphics-driver",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Drivers",
    "check": "false"
  },
  {
    "name": "Intel Driver Support Assistant",
    "description": "Intel Driver & Support Assistant enables you to scan computing devices for the latest drivers available from Intel.",
    "winget": "Intel.IntelDriverAndSupportAssistant",
    "choco": "intel-dsa",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Drivers",
    "check": "false"
  },
  {
    "name": "Intel Network Adapter",
    "description": "Intel Network Adapter Drivers for Windows 10.",
    "winget": "Intel.WiFiDrivers",
    "choco": "intel-network-drivers-win10",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Drivers",
    "check": "false"
  },
  {
    "name": "Snappy Driver Installer",
    "description": "A free and open-source tool for updating and installing device drivers on Windows, offering offline driver updates and wide hardware support.",
    "winget": "samlab-ws.SnappyDriverInstaller",
    "choco": "sdio",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Drivers",
    "check": "false"
  },
  {
    "name": "Driver booster",
    "description": "Scans and identifies outdated drivers automatically, and downloads and installs the right update for you with just ONE click.",
    "winget": "IObit.DriverBooster",
    "choco": "driverbooster",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Drivers",
    "check": "false"
  },
  {
    "name": "Driver Genius",
    "description": "Professional driver management tool and hardware diagnostics.",
    "winget": "none",
    "choco": "drivergenius",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Drivers",
    "check": "false"
  },
  {
    "name": "Display Driver Uninstaller",
    "description": "Utility to completely remove system drivers",
    "winget": "Wagnardsoft.DisplayDriverUninstaller",
    "choco": "ddu",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Drivers",
    "check": "false"
  },
  {
    "name": "Driver Store Explorer",
    "description": " Windows driver store utility.",
    "winget": "none",
    "choco": "rapr",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Drivers",
    "check": "false"
  },
  {
    "name": "1Password",
    "description": "A password manager that securely stores login credentials, credit card information, and other sensitive data in an encrypted vault, accessible with a single master password.",
    "winget": "AgileBits.1Password",
    "choco": "1password",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "name": "AOMEI Partition Assistant Standard",
    "description": "AOMEI Partition Assistant Standard allows you to realize disk upgrade/replacement, partition style conversion, OS migration and other disk managements without any difficulties.",
    "winget": "AOMEI.PartitionAssistant",
    "choco": "partition-assistant-standard",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Disk Tools",
    "check": "false"
  },
  {
    "name": "AOMEI Backupper Standard",
    "description": "A backup and recovery software that enables users to create system backups, disk backups, partition backups, and file backups to protect data against system failures and data loss.",
    "winget": "AOMEI.Backupper.Standard",
    "choco": "backupper-standard",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Disk Tools",
    "check": "false"
  },
  {
    "name": "Recuva recover",
    "description": "A data recovery software that helps users retrieve accidentally deleted files, including photos, documents, videos, and more, from various storage devices such as hard drives, USB drives, and memory cards.",
    "winget": "Piriform.Recuva",
    "choco": "recuva",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Disk Tools",
    "check": "false"
  },
  {
    "name": "CCleaner",
    "description": "A system optimization, privacy, and cleaning tool that helps users remove unused files, clean up temporary files, and optimize their Windows PCs for better performance.",
    "winget": "SingularLabs.CCEnhancer",
    "choco": "ccleaner",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "name": "BCUninstaller",
    "description": "A powerful uninstaller tool for Windows that allows users to remove unwanted programs, plugins, and Windows Store apps, along with leftover files and registry entries.",
    "winget": "Klocman.BulkCrapUninstaller",
    "choco": "bulk-crap-uninstaller",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Utilities",
    "suggestion": "true",
    "check": "false"
  },
  {
    "name": "Easy Context Menu",
    "description": "To install Easy Context Menu, run the following command from the command line or from PowerShell:",
    "winget": "none",
    "choco": "ecm",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "name": "HWiNFO",
    "description": "A hardware information and diagnostic tool that provides detailed information about the hardware components of a computer system, including sensors, temperature, voltage, and more.",
    "winget": "REALiX.HWiNFO",
    "choco": "hwinfo.install",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Utilities",
    "suggestion": "true",
    "check": "false"
  },
  {
    "name": "Speccy",
    "description": "A system information tool that provides detailed information about the hardware and operating system of a computer, including CPU, RAM, motherboard, graphics card, and storage devices.",
    "winget": "Piriform.Speccy",
    "choco": "speccy",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "name": "FurMark",
    "description": "A graphics card stress testing and benchmarking utility that helps users test the stability, cooling, and performance of their GPU by rendering a highly intensive 3D graphics scene.",
    "winget": "Geeks3D.FurMark",
    "choco": "furmark",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "name": "Hard Disk Sentinel",
    "description": "A hard disk monitoring and analysis software that helps users monitor the health, performance, and temperature of their hard drives, SSDs, and other storage devices.",
    "winget": "JanosMathe.HardDiskSentinelPro",
    "choco": "hdsentinel",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Disk Tools",
    "check": "false"
  },
  {
    "name": "CPU-Z",
    "description": "A system monitoring utility that provides detailed information about the CPU, motherboard, memory, and other hardware components of a computer system.",
    "winget": "CPUID.CPU-Z",
    "choco": "cpu-z",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "name": "Mem Reduct",
    "description": "Lightweight real-time memory management application to monitor and clean system memory on your computer.",
    "winget": "Henry++.MemReduct",
    "choco": "memreduct",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "name": "HandBrake",
    "description": "A free and open-source video transcoder tool that converts video files from one format to another, supporting a wide range of input and output formats.",
    "winget": "HandBrake.HandBrake",
    "choco": "handbrake.install",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "name": "Rufus Portable",
    "description": "A utility tool for creating bootable USB drives from ISO images, helping users to install or run operating systems, such as Windows, Linux, or other utilities.",
    "winget": "Rufus.Rufus",
    "choco": "rufus",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Portable",
    "suggestion": "true",
    "check": "false"
  },
  {
    "name": "ImgBurn",
    "description": "Lightweight CD / DVD burning application ",
    "winget": "LIGHTNINGUK.ImgBurn",
    "choco": "imgburn",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "Virtual CloneDrive",
    "description": "A free software that allows users to mount disc images as virtual drives, enabling them to access the content of ISO, BIN, and CCD files without the need for physical discs.",
    "winget": "none",
    "choco": "virtualclonedrive",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "name": "Ultra ISO",
    "description": "A powerful ISO image management tool that enables users to create, edit, extract, and burn ISO files, providing a comprehensive solution for managing disk image files.",
    "winget": "EZBSystems.UltraISO",
    "choco": "ultraiso",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "name": "Ventoy",
    "description": "An open-source tool for creating bootable USB drives with multiple ISO files, allowing users to boot various operating systems or utilities directly from a single USB drive.",
    "winget": "Ventoy.Ventoy",
    "choco": "ventoy",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "name": "iVentoy",
    "description": "With iVentoy you can boot and install OS on multiple machines at the same time through the network.",
    "winget": "none",
    "choco": "iventoy",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "name": "AutoHotkey",
    "description": "A scripting language for automating repetitive tasks and creating macros on Windows, allowing users to customize keyboard shortcuts, remap keys, and automate mouse actions.",
    "winget": "AutoHotkey.AutoHotkey",
    "choco": "autohotkey",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "name": "Rainmeter",
    "description": "A customizable desktop customization tool that displays customizable skins, widgets, and applets on the Windows desktop, providing users with real-time system monitoring and information.",
    "winget": "Rainmeter.Rainmeter",
    "choco": "rainmeter",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "name": "FxSound",
    "description": "An audio enhancer software that improves the sound quality of music, videos, and games on Windows PCs by providing advanced audio processing and customization options.",
    "winget": "FxSoundLLC.FxSound",
    "choco": "fxsound",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Utilities",
    "suggestion": "true",
    "check": "false"
  },
  {
    "name": "Vysor",
    "description": "A screen mirroring and remote control software that enables users to view and control Android devices from Windows PCs, allowing for easy screen sharing, app testing, and troubleshooting.",
    "winget": "Vysor.Vysor",
    "choco": "vysor",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "name": "Unified Remote",
    "description": "A remote control app that turns smartphones into universal remote controls for Windows, macOS, and Linux computers, allowing users to control media playback, presentations, and more.",
    "winget": "UnifiedIntents.UnifiedRemote",
    "choco": "unifiedremote",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "name": "AnyDesk",
    "description": "A remote desktop software that allows users to access and control Windows, macOS, Linux, Android, and iOS devices from anywhere, providing secure and reliable remote access.",
    "winget": "AnyDeskSoftwareGmbH.AnyDesk",
    "choco": "anydesk",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "File Sharing",
    "check": "false"
  },
  {
    "name": "Airdroid",
    "description": "AirDroid is a free and fast Android device manager app that allows you to access Android phone/tablet from computer remotely and securely. Manage SMS, files, photos and videos, WhatsApp, Line, WeChat and more on computer.",
    "winget": "AirDroid.AirDroid",
    "choco": "airdroid",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "File Sharing",
    "check": "false"
  },
  {
    "name": "UltraViewer",
    "description": "Remote control to support your clients / partners from everywhere.",
    "winget": "DucFabulous.UltraViewer",
    "choco": "ultraviewer",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "File Sharing",
    "check": "false"
  },
  {
    "name": "Wireless Network Watcher Portable",
    "description": "Wireless Network Watcher is a small utility that scans your wireless network and displays the list of all computers and devices that are currently connected to your network.",
    "winget": "NirSoft.WirelessNetworkWatcher",
    "choco": "wnetwatcher.portable",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Portable",
    "check": "false"
  },
  {
    "name": "WifiInfoView",
    "description": "Wireless Network Watcher is a small utility that scans your wireless network and displays the list of all computers and devices that are currently connected to your network.",
    "winget": "NirSoft.WifiInfoView",
    "choco": "wifiinfoview",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "name": "qBittorrent",
    "description": "A free and open-source BitTorrent client for downloading and uploading files via the BitTorrent protocol, providing users with a lightweight and feature-rich torrenting experience.",
    "winget": "qBittorrent.qBittorrent",
    "choco": "qbittorrent",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "File Sharing",
    "suggestion": "true",
    "check": "false"
  },
  {
    "name": "Google Earth Pro",
    "description": "Google Earth Pro on desktop is free for users with advanced feature needs. Import and export GIS data, and go back in time with historical imagery.",
    "winget": "Google.EarthPro",
    "choco": "googleearthpro",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Imaging",
    "check": "false"
  },
  {
    "name": "XAMPP",
    "description": "XAMPP is a free and open-source cross-platform web server solution stack package developed by Apache Friends, consisting mainly of the Apache HTTP Server, MariaDB database, and interpreters for scripts written in the PHP and Perl programming languages.",
    "winget": "ApacheFriends.Xampp.8.2",
    "choco": "xampp-81",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "Visual Studio Professional 2022",
    "description": "Visual Studio Professional 2022 is an integrated development environment (IDE) from Microsoft. It is used to develop computer programs, websites, web apps, web services, and mobile apps.",
    "winget": "Microsoft.VisualStudio.2022.Professional",
    "choco": "visualstudio2022professional",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "Visual Studio Community 2022",
    "description": "Visual Studio Community 2022 is a free, fully-featured, and extensible IDE for individual developers, open source projects, academic research, education, and small professional teams.",
    "winget": "Microsoft.VisualStudio.2022.Community",
    "choco": "visualstudio2022community",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "Unity Hub",
    "description": "Unity is a cross-platform game creation system developed by Unity Technologies and used to develop video games for PC, consoles, mobile",
    "winget": "Unity.UnityHub",
    "choco": "unity-hub",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "Godot Engine",
    "description": "Godot is a feature-packed, cross-platform game engine for creating 2D and 3D games. It provides a comprehensive set of tools and features to develop games efficiently and quickly.",
    "winget": "GodotEngine.GodotEngine",
    "choco": "godot",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "Unity3D Engine",
    "description": "Unity is a cross-platform game creation system developed by Unity Technologies and used to develop video games for PC, consoles, mobile",
    "winget": "Unity.Unity.2020",
    "choco": "unity",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "Blender",
    "description": "Blender is a free and open-source professional-grade 3D computer graphics and video compositing program.",
    "winget": "BlenderFoundation.Blender",
    "choco": "blender",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "Visual Studio Code",
    "description": "Visual Studio Code is a free source-code editor developed by Microsoft for Windows, Linux, and macOS. It includes support for debugging, embedded Git control, syntax highlighting, intelligent code completion, snippets, and code refactoring.",
    "winget": "Microsoft.VisualStudioCode",
    "choco": "vscode",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "Vim",
    "description": "Vim is an advanced text editor that seeks to provide the power of the de-facto Unix editor ''Vi'', with a more complete feature set. It''s us... Keep Reading ",
    "winget": "vim.vim",
    "choco": "vim",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "Sublime Text 4",
    "description": "Sublime Text 4 - The sophisticated text editor for code, markup and prose. ",
    "winget": "SublimeHQ.SublimeText.4",
    "choco": "sublimetext4",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "Atom",
    "description": "Atom is a text editor that''s modern, approachable, yet hackable to the core—a tool you can customize to do anything but also use productively without ever touching a config file.",
    "winget": "GitHub.Atom",
    "choco": "atom",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "InnoSetup",
    "description": "Inno Setup is a free installer for Windows programs. First introduced in 1997, Inno Setup today rivals and even surpasses many commercial installers in feature set and stability.",
    "winget": "JRSoftware.InnoSetup",
    "choco": "innosetup",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "PyCharm Community Edition",
    "description": "PyCharm Community Edition is a free and open-source IDE for Python development. It provides smart code completion, code inspections, on-the-fly error highlighting, and quick-fixes.",
    "winget": "JetBrains.PyCharm.Community",
    "choco": "pycharm-community",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "PyCharm Professional Edition",
    "description": "PyCharm Professional Edition is a powerful IDE for professional Python development. It includes advanced features such as database tools, web development support, and scientific tools integration.",
    "winget": "JetBrains.PyCharm.Professional",
    "choco": "pycharm",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "Jetbrains Rider",
    "description": "Rider is a cross-platform .NET IDE developed by JetBrains. It supports C#, VB.NET, F#, ASP.NET, JavaScript, TypeScript, HTML, CSS, and SQL languages and frameworks.",
    "winget": "JetBrains.Rider",
    "choco": "jetbrains-rider",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "Node.js LTS",
    "description": "Node.js is a JavaScript runtime built on Chrome''s V8 JavaScript engine. LTS (Long Term Support) releases are supported for an extended period and provide stability for production environments.",
    "winget": "OpenJS.NodeJS.LTS",
    "choco": "nodejs-lts",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "Electrum-LTS",
    "description": "Electrum is a lightweight Bitcoin wallet focused on speed and simplicity, with support for hardware wallets and multisig functionality. LTS (Long Term Support) releases provide stability and security updates for an extended period.",
    "winget": "Electrum.Electrum",
    "choco": "electronim",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "Hugo",
    "description": "Hugo is one of the most popular open-source static site generators. With its amazing speed and flexibility, Hugo makes building websites f... Keep Reading ",
    "winget": "Hugo.Hugo",
    "choco": "hugo",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "Hugo Extended",
    "description": "Hugo is one of the most popular open-source static site generators. With its amazing speed and flexibility, Hugo makes building websites f... Keep Reading ",
    "winget": "Hugo.Hugo.Extended",
    "choco": "hugo-extended",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "Notepad++",
    "description": "Notepad++ is a free source code editor and Notepad replacement that supports several languages. It offers syntax highlighting, code folding, auto-completion, and other features for efficient code editing.",
    "winget": "Notepad++.Notepad++",
    "choco": "notepadplusplus",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "Windows Terminal",
    "description": "Windows Terminal is a modern terminal application for users of command-line tools and shells like Command Prompt, PowerShell, and Windows Subsystem for Linux (WSL). It provides multiple tabs, custom themes, and GPU-accelerated text rendering.",
    "winget": "Microsoft.WindowsTerminal",
    "choco": "microsoft-windows-terminal",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "Powershell 7",
    "description": "PowerShell Core is a cross-platform (Windows, Linux, and macOS) automation and configuration tool/framework that works well with your existing tools and is optimized for dealing with structured data (e.g., JSON, CSV, XML, etc.), REST APIs, and object models.",
    "winget": "Microsoft.PowerShell",
    "choco": "powershell-core",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "x64dbg Portable",
    "description": "An open-source x64/x32 debugger for windows.",
    "winget": "none",
    "choco": "x64dbg.portable",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Portable",
    "check": "false"
  },
  {
    "name": "dnSpy",
    "description": "dnSpy is a tool to reverse engineer .NET assemblies. It includes a decompiler, a debugger and an assembly editor (and more) and can be easily extended by writing your own extension. It uses dnlib to read and write assemblies so it can handle obfuscated assemblies (eg. malware) without crashing.",
    "winget": "dnSpyEx.dnSpy",
    "choco": "dnspy",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "Cheat Engine",
    "description": "Cheat Engine is an open source tool designed to help you modify single player games.",
    "winget": "none",
    "choco": "cheatengine",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "Python 3.9",
    "description": "Python is a popular high-level programming language known for its simplicity and versatility. It is used in various fields such as web development, data science, machine learning, and automation.",
    "winget": "Python.Python.3.9",
    "choco": "python",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "Git",
    "description": "Git is a free and open-source distributed version control system designed to handle everything from small to very large projects with speed and efficiency.",
    "winget": "Git.Git",
    "choco": "git",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "GitHub Desktop",
    "description": "GitHub Desktop is a seamless way to contribute to projects on GitHub and GitHub Enterprise. It provides an intuitive interface for managing repositories, branching, committing, and merging code changes.",
    "winget": "GitHub.GitHubDesktop",
    "choco": "github-desktop",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "Docker Desktop",
    "description": "Docker Desktop is an easy-to-install application for Windows and macOS that enables developers to build, share, and run containerized applications and microservices locally.",
    "winget": "Docker.DockerDesktop",
    "choco": "docker-desktop",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "Docker Compose",
    "description": "Docker Compose is a tool for defining and running multi-container Docker applications. It allows you to use a YAML file to configure your application''s services, networks, and volumes.",
    "winget": "Docker.DockerCompose",
    "choco": "docker-compose",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "PowerToys",
    "description": "PowerToys is a set of utilities for power users to tune and streamline their Windows experience for greater productivity. It includes tools like FancyZones for window management, PowerRename for batch renaming files, and more.",
    "winget": "Microsoft.PowerToys",
    "choco": "powertoys",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "Notion",
    "description": "The all-in-one workspace for your notes, tasks, wikis, and databases.",
    "winget": "Notion.Notion",
    "choco": "notion",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "FL Studio",
    "description": "FL Studio is a digital audio workstation (DAW) developed by Image-Line. It allows you to compose, arrange, record, edit, mix, and master professional-quality music.",
    "winget": "ImageLine.FLStudio",
    "choco": "ImageLine.FLStudio",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Media Tools",
    "check": "false"
  },
  {
    "name": "Android Debug Bridge",
    "description": "Android Debug Bridge (ADB) is a command-line tool that allows you to communicate with an Android device. It is used for various debugging tasks such as installing and debugging apps.",
    "winget": "none",
    "choco": "adb",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "Universal ADB Drivers",
    "description": "Universal ADB Drivers are drivers that provide compatibility with a wide range of Android devices for debugging purposes. They allow you to connect your Android device to a computer and use ADB commands.",
    "winget": "none",
    "choco": "universal-adb-drivers",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "Scrcpy",
    "description": "Scrcpy is a free and open-source tool that allows you to display and control your Android device from a computer. It provides high-performance screen mirroring and supports various input methods.",
    "winget": "Genymobile.scrcpy",
    "choco": "scrcpy",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "VirtualBox",
    "description": "VirtualBox is a cross-platform virtualization application. It installs on existing Intel or AMD-based computers, whether they are running Windows, Mac, Linux or Solaris operating systems. It extends the capabilities of your existing computer so that it can run multiple operating systems (inside multiple virtual machines) at the same time.",
    "winget": "Oracle.VirtualBox",
    "choco": "virtualbox",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "Oh My Posh",
    "description": " Oh my Posh is a custom prompt engine for any shell that has the ability to adjust the prompt string with a function or variable.",
    "winget": "JanDeDobbeleer.OhMyPosh",
    "choco": "oh-my-posh",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "Malwarebytes",
    "description": "Multiple layers of malware-crushing tech, including virus protection. Thorough malware and spyware removal. Specialized ransomware protection.",
    "winget": "Malwarebytes.Malwarebytes",
    "choco": "malwarebytes",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Security",
    "check": "false"
  },
  {
    "name": "Avast Free Antivirus",
    "description": "Avast Free Antivirus.",
    "winget": "XPDNZJFNCR1B07",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "choco": "avastfreeantivirus",
    "category": "Security",
    "check": "false"
  },
  {
    "name": "Nerd Fonts - CascadiaCode",
    "description": "Nerd Fonts is a project that patches developer targeted fonts with a high number of glyphs (icons).",
    "winget": "none",
    "choco": "nerd-fonts-cascadiacode",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "Java SE Runtime Environment 8.0.411",
    "description": "Java allows you to play online games, chat with people around the world, calculate your mortgage interest, and view images in 3D, just to name a few. It''s also integral to the intranet applications and other e-business solutions that are the foundation of corporate computing. Please note you now need a Java License from Oracle to use unless installed for Personal Use and Development Use.",
    "winget": "none",
    "choco": "jre8",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Runtimes",
    "check": "false"
  },
  {
    "name": "Audacity",
    "description": "Audacity is free, open source, cross-platform software for recording and editing sounds.",
    "winget": "Audacity.Audacity",
    "choco": "audacity",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Media Tools",
    "check": "false"
  },
  {
    "name": "MusicBee",
    "description": "MusicBee makes it easy to organize, find and play music files on your computer, on portable devices and on the web.",
    "winget": "MusicBee.MusicBee",
    "choco": "musicbee",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Media",
    "check": "false"
  },
  {
    "name": "Format Factory",
    "description": "multifunctional media processing tools",
    "winget": "none",
    "choco": "formatfactory",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Media Tools",
    "check": "false"
  },
  {
    "name": "Winaero Tweaker",
    "description": "Customize the appearance and behavior of the Windows operating system",
    "winget": "none",
    "choco": "winaero-tweaker",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "name": "Windows Subsystem for Linux WSL2",
    "description": "To install Windows Subsystem for Linux 2, run the following command from the command line or from PowerShell:",
    "winget": "Microsoft.WSL",
    "choco": "wsl2",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "Wamp Server 3.3.5",
    "description": "WampServer is a Windows web development environment. It allows you to create web applications.",
    "winget": "none",
    "choco": "wamp-server",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "MongoDB",
    "description": "MongoDB stores data using a flexible document data model that is similar to JSON. Documents contain one or more fields, including arrays, binary data and sub-documents. Fields can vary from document to document. This flexibility allows development teams to evolve the data model rapidly as their application requirements change.",
    "winget": "MongoDB.Server",
    "choco": "mongodb",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "MPC-BE",
    "description": "Media Player Classic - BE is a free and open source audio and video player for Windows.",
    "winget": " MPC-BE.MPC-BE",
    "choco": "mpc-be",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Media",
    "check": "false"
  },
  {
    "name": "Kdenlive",
    "description": "A powerful non-linear video editor",
    "winget": "KDE.Kdenlive",
    "choco": "kdenlive",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Media Tools",
    "check": "false"
  },
  {
    "name": "TablePlus",
    "description": "Modern, native, and friendly GUI tool for relational databases: MySQL, PostgreSQL, SQLite, MongoDB, Redis, and more.",
    "winget": "TablePlus.TablePlus",
    "choco": "tableplus",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "Hosts File Editor",
    "description": "Hosts File Editor makes it easy to change your hosts file as well as archive multiple versions for easy retrieval.",
    "winget": "scottlerch.hosts-file-editor",
    "choco": "hosts.editor",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "name": "Subtitle Edit",
    "description": "With SE you can easily adjust a subtitle if it is out of sync with the video in several different ways. You can also use SE for making new subtitles from scratch (do use the time-line/waveform/spectrogram) or translating subtitles.",
    "winget": "9NWH51GWJTKN",
    "choco": "subtitleedit",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "Skype",
    "description": "Skype - Install Skype, add your friends as contacts, then call, video call and instant message with them for free. Call people who aren''t on Skype too, at really low rates.",
    "winget": "Microsoft.Skype",
    "choco": "skype",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Communication",
    "check": "false"
  },
  {
    "name": "FileZilla",
    "description": "FileZilla Client is a fast and reliable cross-platform FTP, FTPS and SFTP client with lots of useful features and an intuitive graphical user interface.",
    "winget": "none",
    "choco": "filezilla",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "Everything",
    "description": "Everything Search Engine - locate files and folders by name instantly",
    "winget": "voidtools.Everything",
    "choco": "everything",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "name": "Yarn",
    "description": "Yarn is a package manager for the npm and bower registries with a few specific focuses.",
    "winget": "Yarn.Yarn",
    "choco": "yarn",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "VMware Workstation Player",
    "description": "VMware Workstation Player™ is a streamlined desktop virtualization application that runs another operating system on the same computer without rebooting. VMware Workstation Player provides a simple user interface, unmatched operating system support, and portability across the VMware ecosystem.",
    "winget": "none",
    "choco": "vmware-workstation-player",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "HDD Low Level Format Tool",
    "description": "Will erase, Low-Level Format and re-certify a SATA, IDE or SCSI hard disk drive with any size of up to 281 474 976 710 655 bytes.",
    "winget": "none",
    "choco": "llftool",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "name": "BlueStacks",
    "description": "Play Android Games on PC.",
    "winget": "BlueStack.BlueStacks",
    "choco": "bluestacks",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Gaming",
    "check": "false"
  },
  {
    "name": "Intel Wireless Bluetooth for Windows 10 and Windows 11",
    "description": "Bluetooth for Windows 10 and Windows",
    "winget": "none",
    "choco": "intel-bluetooth-drivers",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Drivers",
    "check": "false"
  },
  {
    "name": "Office 365 Business",
    "description": "Microsoft 365 (formerly Office 365) is a line of subscription services offered by Microsoft as part of the Microsoft Office product line. The brand encompasses plans that allow use of the Microsoft Office software suite over the life of the subscription, as well as cloud-based software as a service products for business environments, such as hosted Exchange Server, Skype for Business Server, and SharePoint, among others. All Microsoft 365 plans include automatic updates to their respective software at no additional charge, as opposed to conventional licenses for these programs—where new versions require purchase of a new license.",
    "winget": "Microsoft.Office",
    "choco": "office365business",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Documents",
    "check": "false"
  },
  {
    "name": "Bandicam",
    "description": "Bandicam is a closed-source screen capture and screen recording software originally developed by Bandisoft and later by Bandicam Company that can take screenshots or record screen changes. Bandicam consists of three main modes. One is the Screen Recording mode, which can be used for recording a certain area on the PC screen",
    "winget": "BandicamCompany.Bandicam",
    "choco": "none",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Imaging",
    "check": "false"
  },
  {
    "name": "QQPlayer",
    "description": "QQPlayer media player",
    "winget": "Tencent.QQPlayer",
    "choco": "none",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Media",
    "check": "false"
  },
  {
    "name": "4K Video Downloader",
    "description": "4K Video Downloader allows downloading videos, playlists, channels and subtitles from YouTube, Facebook, Vimeo and other video sites in high quality.",
    "winget": "OpenMedia.4KVideoDownloader",
    "choco": "4k-video-downloader",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "name": "Active@ Partition Recovery",
    "description": "Active@ Partition Recovery is a freeware toolkit that helps to recover deleted and damaged logical drives and partitions within Windows, WinPE (recovery boot disk) and Linux (recovery LiveCD) environments.",
    "winget": "LSoftTechnologies.ActivePartitionRecovery",
    "choco": "none",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Disk Tools",
    "check": "false"
  },
  {
    "name": "HiSuite",
    "description": "HUAWEI HiSuite is the official Android Smart Device Manager tool,HiSuite helps users to connect their HUAWEI smartphones and tablets to PC",
    "winget": "Huawei.HiSuite",
    "choco": "none",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "name": "Android Studio",
    "description": "Android Studio is the official integrated development environment for Google''s Android operating system, built on JetBrains IntelliJ IDEA software and designed specifically for Android development",
    "winget": "Google.AndroidStudio",
    "choco": "androidstudio",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "LibreWolf",
    "description": "LibreWolf is designed to increase protection against tracking and fingerprinting techniques, while also including a few security improvements. This is achieved through our privacy and security oriented settings and patches. LibreWolf also aims to remove all the telemetry, data collection and annoyances, as well as disabling anti-freedom features like DRM.",
    "winget": "LibreWolf.LibreWolf",
    "choco": "librewolf",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Web Browsers",
    "check": "false"
  },
  {
    "name": "Flow Launcher",
    "description": "Dedicated to making your workflow flow more seamless. Search everything from applications, files, bookmarks, YouTube, Twitter and more. Flow will continue to evolve, designed to be open and built with the community at heart.",
    "winget": "Flow-Launcher.Flow-Launcher",
    "choco": "flow-launcher",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "name": "IconsExtract",
    "description": "The IconsExtract utility scans the files and folders on your computer, and extract the icons and cursors stored in EXE, DLL, OCX, CPL, and in other file types.",
    "winget": "none",
    "choco": "iconsext",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "name": "AdGuard Home",
    "description": "AdGuard Home is a network-wide software for blocking ads and tracking. After you set it up, it''ll cover ALL your home devices, and you don''t need any client-side software for that.",
    "winget": "AdGuard.AdGuardHome",
    "choco": "adguardhome",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Security",
    "check": "false"
  },
  {
    "name": "Burp Suite Community Edition",
    "description": "Burp Suite is an integrated platform for performing security testing of web applications. Its various tools work seamlessly together to support the entire testing process, from initial mapping and analysis of an application''s attack surface, through to finding and exploiting security vulnerabilities.",
    "winget": "PortSwigger.BurpSuite.Community",
    "choco": "burp-suite-free-edition",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "CoreTemp",
    "description": "Core Temp is a compact, no fuss, small footprint, yet powerful program to monitor processor temperature and other vital information.",
    "winget": "ALCPU.CoreTemp",
    "choco": "coretemp",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "name": "ShareX",
    "description": "Screen capture, file sharing and productivity tool.",
    "winget": "ShareX.ShareX",
    "choco": "sharex",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "File Sharing",
    "check": "false"
  },
  {
    "name": "ONLY OFFICE",
    "description": "ONLYOFFICE is a project developed by experienced IT experts from Ascensio System SIA, leading IT company with headquarters in Riga, Latvia. Originally ONLYOFFICE was designed for internal team collaboration. An attempt to introduce it to a wider audience proved to be successful: ONLYOFFICE received very positive feedback from the Internet community. As a result, its functionality was considerably revised and expanded that brought about a high and stable growth of users from different countries.",
    "winget": "ONLYOFFICE.DesktopEditors",
    "choco": "onlyoffice",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Documents",
    "check": "false"
  },
  {
    "name": "ESET Internet Security",
    "description": "Ideal for modern users concerned about their privacy, who actively use internet for shopping, banking, work and communication.",
    "winget": "ESET.EndpointSecurity",
    "choco": "eset-internet-security",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Security",
    "check": "false"
  },
  {
    "name": "WinDirStat",
    "description": "WinDirStat is a disk usage statistics viewer and cleanup tool for Microsoft Windows.",
    "winget": "WinDirStat.WinDirStat",
    "choco": "windirstat",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Disk Tools",
    "check": "false"
  },
  {
    "name": "Winmerge",
    "description": "WinMerge is an Open Source differencing and merging tool for Windows. WinMerge can compare both  folders and files, presenting differences in a visual text format that is easy to understand and handle.",
    "winget": "WinMerge.WinMerge",
    "choco": "winmerge",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "name": "Wireshark",
    "description": "Wireshark is the worlds foremost and widely-used network protocol analyzer. It lets you see whats happening on your network at a microscopic level and is the de facto (and often de jure) standard across many commercial and non-profit enterprises, government agencies, and educational institutions. Wireshark development thrives thanks to the volunteer contributions of networking experts around the globe and is the continuation of a project started by Gerald Combs in 1998.",
    "winget": "WiresharkFoundation.Wireshark",
    "choco": "wireshark",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "name": "TeraCopy",
    "description": "TeraCopy is designed to copy and move files at the maximum possible speed. It skips bad files during the copying process, and then displays them at the end of the transfer so that you can see which ones need attention. TeraCopy can automatically check the copied files for errors by calculating their CRC checksum values. It also provides a lot more information about the files being copied than its Windows counterpart. TeraCopy integrates with Windows Explorer''s right-click menu and can be set as the default copy handler.",
    "winget": "CodeSector.TeraCopy",
    "choco": "teracopy",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "name": "QuickLook",
    "description": "Quick Look is among the few features I missed from Mac OS X It enables very quick preview of file by pressing Space key while highlighting it without opening its associated application Then I decide to add this feature to Windows by myself which results this QuickLook project",
    "winget": "QL-Win.QuickLook",
    "choco": "quicklook",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "name": "RepoZ",
    "description": "RepoZ provides a quick overview of the git repositories on your development machine including their current branch and a short status information It uses the repositories on your machine to create an efficient navigation widget and makes sure youll never loose track of your work along the way",
    "winget": "AndreasWascher.RepoZ",
    "choco": "repoz",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "Intel Graphics Command Center",
    "description": "Dont have time to mess around with settings The Intel Graphics Command Center easily finds and tunes your games complete with recommended settings for your computer Use oneclick optimization for many popular titles and instantly get the most out of your system. (Windows 10 version 1709 or higher,6th Gen Intel Core Platforms or newer).",
    "winget": "9PLFNLNT3G5G",
    "choco": "none",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Drivers",
    "check": "false"
  },
  {
    "name": "Go Programming Language",
    "description": "Go is expressive concise clean and efficient Its concurrency mechanisms make it easy to write programs that get the most out of multicore and networked machines while its novel type system enables flexible and modular program construction Go compiles quickly to machine code yet has the convenience of garbage collection and the power of runtime reflection Its a fast statically typed compiled language that feels like a dynamically typed interpreted language",
    "winget": "Language GoLang.Go",
    "choco": "golang",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "Rust",
    "description": "Rust is a curlybrace blockstructured expression language It visually resembles the C language family but differs significantly in syntactic and semantic details Its design is oriented toward concerns of programming in the large that is of creating and maintaining boundaries  both abstract and operational  that preserve largesystem integrity availability and concurrency",
    "winget": "Rustlang.Rust.GNU",
    "choco": "rust",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "Inkscape",
    "description": "Inkscape is an opensource vector graphics editor similar to Adobe Illustrator Corel Draw Freehand or Xara X What sets Inkscape apart is its use of Scalable Vector Graphics SVG an open XMLbased W3C standard as the native format",
    "winget": "Inkscape.Inkscape",
    "choco": "inkscape",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Imaging",
    "check": "false"
  },
  {
    "name": "Youtube dl",
    "description": "outubedl is a small commandline program to download videos from YouTubecom and a few more sites It is written in Python and its not platform specific It should work in your Unix box in Windows or in Mac OS X It is released to the public domain which means you can modify it redistribute it or use it however you like",
    "winget": "youtube-dl.youtube-dl",
    "choco": "youtube-dl",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "name": "Postman",
    "description": "Postman helps you be more efficient while working with APIs Using Postman you can construct complex HTTP requests quickly organize them in collections and share them with your coworkers",
    "winget": "Postman.Postman",
    "choco": "postman",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "Azure CLI",
    "description": "The Azure CLI is available across Azure services and is designed to get you working quickly with Azure with an emphasis on automation",
    "winget": "Microsoft.AzureCLI",
    "choco": "azure-cli",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "GameMaker-Studio",
    "description": "GameMaker Studio has everything you need for games development no matter what your level or expertise",
    "winget": "YoYoGames.GameMaker.Studio.2",
    "choco": "none",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "Charles",
    "description": "Charles is an HTTP proxy  HTTP monitor  Reverse Proxy that enables a developer to view all of the HTTP and SSL  HTTPS traffic between their machine and the Internet This includes requests responses and the HTTP headers which contain the cookies and caching information",
    "winget": "XK72.Charles",
    "choco": "charles",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "Windows Media Player",
    "description": "Media Player is designed to make listening to and watching your multimedia content more enjoyable At the heart of Media Player is a fullfeatured music library that allows you to quickly browse and play music as well as create and manage playlists All your content in the music and video folders on your PC will appear automatically in your library",
    "winget": "9WZDNCRFJ3PT",
    "choco": "none",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Media",
    "check": "false"
  },
  {
    "name": "espanso",
    "description": "A crossplatform Text Expander written in Rust",
    "winget": "Espanso.Espanso",
    "choco": "espanso",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "Ability Office",
    "description": "Ability Office Standard offers 3 core applications essential for home and business Word Processor Spreadsheet and Presentation in one affordable office suite It also includes a Photoalbum and quick application Launcher Just perfect for working from home allowing files to be edited and exchanged with those back in the office and absolutely ideal for students and school children",
    "winget": "Ability.AbilityOffice.8.Standard",
    "choco": "abilityoffice",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Documents",
    "check": "false"
  },
  {
    "name": "Winbox",
    "description": "Small utility that allows administration of MikroTik RouterOS using a fast and simple GUI",
    "winget": "Mikrotik.Winbox",
    "choco": "none",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "name": "SearchMyFiles",
    "description": "SearchMyFiles allows you to make a very accurate search that cannot be done with Windows search For Example You can search all files created in the last 10 minutes with size between 500 and 700 bytes",
    "winget": "NirSoft.SearchMyFiles",
    "choco": "searchmyfiles",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "name": "iTunes",
    "description": "iTunes is the best way to organize and enjoy the music movies and TV shows you already have and shop for the ones you want to get Its home to Apple Music which gives you unlimited access to millions of songs curated playlists1 and Beats 1 radio hosted by Zane Lowe and a team of acclaimed DJs Enjoy all the entertainment iTunes has to offer on your Mac and PC",
    "winget": "Apple.iTunes",
    "choco": "itunes",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Media",
    "check": "false"
  },
  {
    "name": "StartIsBack++",
    "description": "StartIsBack returns Windows 10 and Windows 8 a real fully featured start menu and start button behaving exactly like the ones in Windows 7",
    "winget": "StartIsBack.StartIsBack",
    "choco": "startisback",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "name": "Advanced SystemCare Free",
    "description": "Over time your computer may accumulate with large quantities of useless temporary and duplicate files Advanced SystemCare 12 will help clean up these junk files and free up your disk space Also you can use our advanced tools to make registry clean for better use",
    "winget": "XPFFGSS4Z9M2TX",
    "choco": "afedteated",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "name": "Send Anywhere",
    "description": "Send Anywhere is a multiplatform file sharing service where users can directly share digital content in real time",
    "winget": "Estmob.SendAnywhere",
    "choco": "none",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "File Sharing",
    "check": "false"
  },
  {
    "name": "YUMI Legacy",
    "description": "YUMI Your Universal Multiboot Installer is the successor to MultibootISOs It can be used to create a Multiboot USB Flash Drive containing multiple operating systems antivirus utilities disc cloning diagnostic tools and more Contrary to MultiBootISOs which used grub to boot ISO files directly from USB YUMI uses syslinux to boot extracted distributions stored on the USB device and reverts to using grub to Boot Multiple ISO files from USB if necessary",
    "winget": "YumiUsb.Legacy",
    "choco": "yumi",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "name": "YUMI UEFI",
    "description": "YUMI Your Universal Multiboot Installer is the successor to MultibootISOs It can be used to create a Multiboot USB Flash Drive containing multiple operating systems antivirus utilities disc cloning diagnostic tools and more Contrary to MultiBootISOs which used grub to boot ISO files directly from USB YUMI uses syslinux to boot extracted distributions stored on the USB device and reverts to using grub to Boot Multiple ISO files from USB if necessary",
    "winget": "YumiUsb.UEFI",
    "choco": "yumi-uefi",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "name": "OP Auto Clicker",
    "description": "A fullfledged autoclicker with two modes of autoclicking at your dynamic cursor location or at a prespecified location The maximum amounts of clicked can also be set or left as infinite Hotkeys work in the background for convenience",
    "winget": "OPAutoClicker.OPAutoClicker",
    "choco": "autoclicker",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "name": "Spotube",
    "description": "Spotube is a Flutter based lightweight spotify client It utilizes the power of Spotify  Youtubes public API  creates a hazardless performant  resource friendly User Experience",
    "winget": "KRTirtho.Spotube",
    "choco": "spotube",
    "scoop": "none",
    "default": [
      {
        "fileType": "none",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Media",
    "check": "false"
  },
  {
    "name": "Audio Switcher",
    "description": "Easily switch the default audio device input or output on any Windows PC Vista and above Using this application you can switch output OR input sound devices at the click of a button or the press of a key I designed this application to be incredibly small and lightweight There is no bloat it does exactly what it should nothing more nothing less",
    "winget": "FortyOneLtd.AudioSwitcher",
    "choco": "audioswitcher",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Media",
    "check": "false"
  },
  {
    "name": "Microsoft Teams Classic Desktop",
    "description": "Microsoft Teams is a messaging app for teams where all conversations meetings files and notes can be accessed by everyone all in one place Its a place for collaboration and work to happen in the open",
    "winget": "none",
    "choco": "microsoft-teams.install",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Communication",
    "check": "false"
  },
  {
    "name": "Microsoft Windows SDK for Windows 10 and .NET Framework 4.7",
    "description": "The Windows 10 SDK for Windows 10 version 1809 provides the latest headers libraries metadata and tools for building Windows 10 apps NoteWindows 10 development targeting Windows 10 version 1903 or later requires Visual Studio 2017 or later This SDK will not be discovered by previous versions of Visual Studio",
    "winget": "none",
    "choco": "windows-sdk-10.1",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Runtimes",
    "check": "false"
  },
  {
    "name": "RunAsDate Portable",
    "description": "RunAsDate is a small utility that allows you to run a program in the date and time that you specify This utility doesnt change the current system date and time of your computer but it only injects the datetime that you specify into the desired application",
    "winget": "none",
    "choco": "runasdate",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Portable",
    "check": "false"
  },
  {
    "name": "Visual Studio 2017 Build ",
    "description": "These Build Tools allow you to build native and managed MSBuildbased applications without requiring the Visual Studio IDE There are options to install the Visual C compilers and libraries MFC ATL and CCLI support",
    "winget": "none",
    "choco": "visualstudio2017buildtools",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "MSEdgeRedirect",
    "description": "This tool filters and passes the command line arguments of Microsoft Edge processes into your default browser instead of hooking into the microsoftedge handler this should provide resiliency against future changes Additionally an Image File Execution Options mode is available to operate similarly to the Old EdgeDeflector Additional modes are planned for future versions",
    "winget": "rcmaehl.MSEdgeRedirect",
    "choco": "msedgeredirect",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "name": "NET Desktop Runtime 5",
    "description": "NET Core is a general purpose development platform maintained by Microsoft and the NET community on GitHub It is crossplatform supporting Windows macOS and Linux and can be used in device cloud and embeddedIoT scenarios This package is required to run Windows Desktop applications with the .NET Runtime.",
    "winget": "Microsoft.DotNet.HostingBundle.5",
    "choco": "dotnet-5.0-desktopruntime",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Runtimes",
    "check": "false"
  },
  {
    "name": "NET Desktop Runtime 3",
    "description": "NET Core is a general purpose development platform maintained by Microsoft and the NET community on GitHub It is crossplatform supporting Windows macOS and Linux and can be used in device cloud and embeddedIoT scenarios This package is required to run Windows Desktop applications with the .NET Runtime.",
    "winget": "dotnetcore-3.0-desktopruntime",
    "choco": "Microsoft.DotNet.HostingBundle.3_1",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Runtimes",
    "check": "false"
  },
  {
    "name": "NET Desktop Runtime 6",
    "description": "NET Core is a general purpose development platform maintained by Microsoft and the NET community on GitHub It is crossplatform supporting Windows macOS and Linux and can be used in device cloud and embeddedIoT scenarios This package is required to run Windows Desktop applications with the .NET Runtime.",
    "winget": "Microsoft.DotNet.HostingBundle.6",
    "choco": "dotnet-6.0-desktopruntime",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Runtimes",
    "check": "false"
  },
  {
    "name": "NET Desktop Runtime 7",
    "description": "NET Core is a general purpose development platform maintained by Microsoft and the NET community on GitHub It is crossplatform supporting Windows macOS and Linux and can be used in device cloud and embeddedIoT scenarios This package is required to run Windows Desktop applications with the .NET Runtime.",
    "winget": "Microsoft.DotNet.AspNetCore.7",
    "choco": "dotnet-7.0-desktopruntime",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Runtimes",
    "check": "false"
  },
  {
    "name": "NET Desktop Runtime 8",
    "description": "NET Core is a general purpose development platform maintained by Microsoft and the NET community on GitHub It is crossplatform supporting Windows macOS and Linux and can be used in device cloud and embeddedIoT scenarios This package is required to run Windows Desktop applications with the NET Runtime",
    "winget": "Microsoft.DotNet.DesktopRuntime.8",
    "choco": "dotnet-desktopruntime",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Runtimes",
    "check": "false"
  },
  {
    "name": "Viber",
    "description": "Viber is a mobile application that lets you make free phone calls and send text messages to anyone who also has the application installed You can call or text any Viber user anywhere in the world for free",
    "winget": "XPFM5P5KDWF0JP",
    "choco": "viber",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Communication",
    "check": "false"
  },
  {
    "name": "StartAllBack",
    "description": "Introducing  StartAllBack Windows 11 from a better timeline Embrace enhance unsweep classic UI from under the rug",
    "winget": "StartIsBack.StartAllBack",
    "choco": "startallback",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "name": "DiskGenius Free",
    "description": "With powerful capabilities and userfriendly interface DiskGenius Free Edition provides a robust solution for individuals and organizations to seek efficient disk management",
    "winget": "Eassos.DiskGenius",
    "choco": "diskgenius",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Disk Tools",
    "check": "false"
  },
  {
    "name": "UNFORMAT",
    "description": "UNFORMAT is a software utility created to solve almost all data loss scenarios due to logical failure It can recover deleted files on a disk or restore deleted or damaged partitions and volumes As well as recovers data after using the FORMAT command",
    "winget": "LSoftTechnologies.UNFORMAT",
    "choco": "none",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Disk Tools",
    "check": "false"
  },
  {
    "name": "Active@ UNDELETE",
    "description": "Active UNDELETE helps you to recover deleted files and restore deleted partitions from a variety of file systems such as FAT NTFS NTFS  EFS MacOS HFS ApFS Linux ext2 ext3 ext4 ZFS Unix UFS Advanced scan algorithms help to restore files even from severely damaged disks Sophisticated userfriendly UI makes navigation through your data a breeze",
    "winget": "LSoftTechnologies.ActiveUNDELETE",
    "choco": "none",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Disk Tools",
    "check": "false"
  },
  {
    "name": "HxD Hex Editor",
    "description": "HxD is a carefully designed and fast hex editor which additionally to raw disk editing and modifying of main memory RAM handles files of any size",
    "winget": "MHNexus.HxD",
    "choco": "hxd",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Disk Tools",
    "check": "false"
  },
  {
    "name": "Epic Games Launcher",
    "description": "The Epic Games Launcher is how you obtain the Unreal Game Engine modding tools and other Epic Games like Fortnite and the new Epic Games Store",
    "winget": "EpicGames.EpicGamesLauncher",
    "choco": "epicgameslauncher",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Gaming",
    "check": "false"
  },
  {
    "name": "Vivaldi",
    "description": "The new Vivaldi browser protects you from trackers blocks unwanted ads and puts you in control with unique builtin features Get Vivaldi and browse fast",
    "winget": "VivaldiTechnologies.Vivaldi",
    "choco": "vivaldi",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Web Browsers",
    "check": "false"
  },
  {
    "name": "Microsoft PC Manager",
    "description": "Microsoft PC manager a good way to protect your personal computer and optimize performance provides PC cleanup antivirus and Windows update making your computer safe and secure",
    "winget": "9PM860492SZD",
    "choco": "none",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "name": "Openshot",
    "description": "OpenShot Video Editor is an awardwinning opensource video editor available on Linux Mac and Windows OpenShot can create stunning videos films and animations with an easytouse interface and rich set of features",
    "winget": "OpenShot.OpenShot",
    "choco": "openshot",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Media Tools",
    "check": "false"
  },
  {
    "name": "WhatsApp",
    "description": "WhatsApp Messenger or simply WhatsApp is an American freeware crossplatform centralized messaging and voiceoverIP VoIP service owned by Facebook Inc It allows users to send text messages and voice messages make voice and video calls and share images documents user locations and other content",
    "winget": "9NKSQGP7F2NH",
    "choco": "none",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Communication",
    "check": "false"
  },
  {
    "name": "Paint.NET",
    "description": "PaintNET is image and photo editing software for PCs that run Windows",
    "winget": "dotPDNLLC.paintdotnet",
    "choco": "paint.net",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Imaging",
    "check": "false"
  },
  {
    "name": "Stretchly",
    "description": "stretchly is a crossplatform electron app that reminds you to take breaks when working on your computer By default it runs in your tray and displays a reminder window containing an idea for a microbreak for 20 seconds every 10 minutes",
    "winget": "Stretchly.Stretchly",
    "choco": "stretchly",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "name": "Microsoft Silverlight",
    "description": "Silverlight is a powerful development tool for creating engaging interactive user experiences for Web and mobile applications",
    "winget": "none",
    "choco": "silverlight",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Runtimes",
    "check": "false"
  },
  {
    "name": "TreeSize",
    "description": "Every hard disk is too small if you just wait long enough TreeSize Free tells you where precious disk space has gone",
    "winget": "JAMSoftware.TreeSize.Free",
    "choco": "treesizefree",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "name": "Dot Net 3.5",
    "description": "NET is a free crossplatform opensource developer platform for building many different types of applications",
    "winget": "Microsoft.DotNet.DesktopRuntime.3_1",
    "choco": "dotnet3.5",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Runtimes",
    "check": "false"
  },
  {
    "name": "Flash Player ActiveX",
    "description": "The Adobe Flash Player is freeware software for viewing multimedia executing Rich Internet Applications and streaming video and audio content created on the Adobe Flash platform",
    "winget": "none",
    "choco": "flashplayeractivex",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Runtimes",
    "check": "false"
  },
  {
    "name": "Google Drive",
    "description": "Google Drive  All your files  everywhere Safely store your files and access them from any device Choose folders on your computer to sync with Google Drive or backup to Google Photos and access all of your content directly from your PC or Mac",
    "winget": "none",
    "choco": "googledrive",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "File Sharing",
    "check": "false"
  },
  {
    "name": "Dot Net 4.5.2",
    "description": "The Microsoft NET Framework 452 is a highly compatible inplace update to the Microsoft NET Framework 4 Microsoft NET Framework 45 and Microsoft NET Framework 451",
    "winget": "none",
    "choco": "dotnet4.5.2",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Runtimes",
    "check": "false"
  },
  {
    "name": "Dropbox",
    "description": "Organize all your team''s content, tune out distractions, and get everyone coordinated with the world''s first smart workspace.",
    "winget": "Dropbox.Dropbox",
    "choco": "dropbox",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "File Sharing",
    "check": "false"
  },
  {
    "name": "cURL",
    "description": "Command line tool and library for transferring data with URLs",
    "winget": "cURL.cURL",
    "choco": "curl",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "PDF Creator",
    "description": "PDFCreator lets you convert any printable document to PDF",
    "winget": "pdfforge.PDFCreator",
    "choco": "pdfcreator",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Documents",
    "check": "false"
  },
  {
    "name": "Autoruns",
    "description": "This utility shows you what programs are configured to run during system bootup or login",
    "winget": "Microsoft.Sysinternals.Autoruns",
    "choco": "autoruns",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "name": "Microsoft OneDrive",
    "description": "Save your files and photos to OneDrive and access them from any device anywhere",
    "winget": "Microsoft.OneDrive",
    "choco": "onedrive",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "File Sharing",
    "check": "false"
  },
  {
    "name": "Process Explorer",
    "description": "Process Explorer shows you information about which handles and DLLs processes have opened or loaded",
    "winget": "Microsoft.Sysinternals.ProcessExplorer",
    "choco": "procexp",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "name": "FFmpeg",
    "description": "FFmpeg is a widelyused crossplatform multimedia framework which can process almost all common and many uncommon media formats It has over 1000 internal components to capture decode encode modify combine stream media and it can make use of dozens of external libraries to provide more capabilities",
    "winget": "Gyan.FFmpeg",
    "choco": "ffmpeg",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Media Tools",
    "check": "false"
  },
  {
    "name": "OpenVPN Connect",
    "description": "The official OpenVPN Connect client software developed and maintained by OpenVPN Inc",
    "winget": "OpenVPNTechnologies.OpenVPNConnect",
    "choco": "openvpn-connect",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "name": "Git Large File Storage",
    "description": "Git Large File Storage LFS replaces large files such as audio samples videos datasets and graphics with text pointers inside Git while storing the file contents on a remote server like GitHubcom or GitHub Enterprise",
    "winget": "none",
    "choco": "git-lfs",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Development",
    "check": "false"
  },
  {
    "name": "Nmap",
    "description": "Nmap Network Mapper is a free and open source utility for network discovery and security auditing",
    "winget": "Insecure.Nmap",
    "choco": "nmap",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "name": "UltraVNC",
    "description": "UltraVNC is an open source application that uses the VNC protocol to control another computer remotely over a network connection UltraVNC allows the use of a remote computer",
    "winget": "uvncbvba.UltraVnc",
    "choco": "ultravnc",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "File Sharing",
    "check": "false"
  },
  {
    "name": "Plex",
    "description": "Plex is a global streaming media service and a clientserver media player platform made by Plex Inc",
    "winget": "Plex.Plex",
    "choco": "plex",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Media Tools",
    "check": "false"
  },
  {
    "name": "Plex Media Server",
    "description": "Plex Media Server helps you organise your media and stream it to your devices",
    "winget": "Plex.PlexMediaServer",
    "choco": "plexmediaserver",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Media Tools",
    "check": "false"
  },
  {
    "name": "Microsoft Visio Viewer",
    "description": "By using Microsoft Visio 2016 Viewer Visio users can freely distribute Visio drawings files with a vsdx vsdm vsd vdx vdw vstx vstm vst or vtx extension to team members partners customers or others even if the recipients do not have Visio installed on their computer",
    "winget": "Microsoft.VisioViewer",
    "choco": "visioviewer",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Documents",
    "check": "false"
  },
  {
    "name": "Key''n''Stroke",
    "description": "KeynStroke makes it easy for your audience to follow your actions on the screen",
    "winget": "none",
    "choco": "key-n-stroke",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "name": "Ability Office",
    "description": "Ability Office 8 Standard complete office suite",
    "winget": "Ability.AbilityOffice.8.Standard",
    "choco": "abilityoffice",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Documents",
    "check": "false"
  },
  {
    "name": "Fing",
    "description": "Fing App is a free network scanner that makes you discover all connected devices run internet speed tests and help troubleshoot network and device issues Get Fingbox for more advanced security and protection for your network",
    "winget": "none",
    "choco": "fing",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Utilities",
    "check": "false"
  },
  {
    "name": "Ryujinx",
    "description": "Ryujinx is an opensource Nintendo Switch emulator created by gdkchan and written in C This emulator aims at providing excellent accuracy and performance a userfriendly interface and consistent builds",
    "winget": "none",
    "choco": "ryujinx --params ''/DesktopShortcut''",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Gaming",
    "check": "false"
  },
  {
    "name": "Omnify Hotspot",
    "description": "The best virtual router to turn your PC into a WiFi hotspot  repeater WiFi hotspot allows you to create a wireless access point and share your internet Its easy to use and quick to start as you only need to give it a name and password and then connect your smartphone tablet media player ereader printer laptop and other wireless devices The network name can also include Unicode characters and Emojis",
    "winget": "none",
    "choco": "omnifyhotspot",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "File Sharing",
    "check": "false"
  },
  {
    "name": "MKVToolNix",
    "description": "MKVToolNix is a set of tools to create alter and inspect Matroska files under Linux other Unices and Windows",
    "winget": "MoritzBunkus.MKVToolNix",
    "choco": "mkvtoolnix",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "none",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Media Tools",
    "check": "false"
  },
  {
    "name": "Neat Download Manager",
    "description": "Neat Download Manager is a free Internet Download Manager for Windows",
    "winget": "none",
    "choco": "none",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "true",
        "url": "https://www.neatdownloadmanager.com/file/NeatDM_setup.exe",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Web Browsers",
    "check": "false"
  },
  {
    "name": "x630ce for all games",
    "description": "Xbox 360 Controller Emulator” allows your controller (gamepad, joystick, steering wheel, pedals, etc.) to function on your PC as an Xbox 360 controller. It allows you to remap buttons and axes and to drive cars with steering wheel and pedals or to fly planes with joystick and throttle in games like “Grand Theft Auto” or “Saints Row” • Digitally Signed",
    "winget": "none",
    "choco": "none",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "https://www.x360ce.com/files/x360ce.zip",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Web Browsers",
    "check": "false"
  },
  {
    "name": "x630ce x86",
    "description": "Xbox 360 Controller Emulator” allows your controller (gamepad, joystick, steering wheel, pedals, etc.) to function on your PC as an Xbox 360 controller. It allows you to remap buttons and axes and to drive cars with steering wheel and pedals or to fly planes with joystick and throttle in games like “Grand Theft Auto” or “Saints Row” • Digitally Signed",
    "winget": "none",
    "choco": "none",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "https://www.x360ce.com/files/x360ce_x86.zip",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Web Browsers",
    "check": "false"
  },
  {
    "name": "x630ce x64",
    "description": "Xbox 360 Controller Emulator” allows your controller (gamepad, joystick, steering wheel, pedals, etc.) to function on your PC as an Xbox 360 controller. It allows you to remap buttons and axes and to drive cars with steering wheel and pedals or to fly planes with joystick and throttle in games like “Grand Theft Auto” or “Saints Row” • Digitally Signed",
    "winget": "none",
    "choco": "none",
    "scoop": "none",
    "default": [
      {
        "IsExcute": "false",
        "url": "https://www.x360ce.com/files/x360ce_x64.zip",
        "exeArgs": "/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath",
        "output": "none"
      }
    ],
    "category": "Web Browsers",
    "check": "false"
  }
]
' | ConvertFrom-Json
$sync.database.locales = '{
  "Controls": {
    "ar": {
        "Welcome": "توفر هذه الأداة تسهيلات كبيرة في عملية تثبيت البرامج وتحسين الاداء. انضم إلينا لتساهم في تطويرها وجعلها أكثر اكتمالًا",
        "sysinfo": "معلومات النظام",
        "PowerOptions": "خيارات الطاقة",
        "devicemgr": "إدارة الأجهزة",
        "services": "خدمات",
        "networks": "شبكات",
        "appsfeatures": "التطبيقات و الميزات",
        "taskmgr": "مدير المهام",
        "diskmgr": "إدارة القرص",
        "InstallBtn": "تثبيت",
        "applyBtn": "تطبيق",
        "downloading": "جارٍ التثبيت",
        "about":"عن المطور",
        "thirdparty":"روابط خارجية",
        "preferences":"التفضيلات",
        "management":"إدارة الجهاز",
        "apps":"تطبيقات",
        "tweaks":"تحسينات",
        "settings": "إعدادات",
        "saveapps":"حفظ البرامج المختارة",
        "loadapps":"أسترجاع البرامج المختارة",
        "music":"الموسيقى",
        "on":"تشغيل ",
        "off":"كتم",
        "Dark":"ليلا",
        "Light":"نهارا",
        "defaultTheme":"استخدام إعداد النظام",
        "ittlink":"أنشاء أختصار على سطح المكتب",
        "theme":"المظهر",
        "language":"اللغة",
        "mas":"تفعيل الويندوز",
        "winoffice":"تنزيل ويندوز / أوفيس",
        "idm":"تفعيل الدون لود مانجر",
        "extensions":"أضافات المتصفحات",
        "all": "الكل",
        "search": "بحث",
        "restorepoint": "إنشاء نقطة الاستعادة",
        "chocoloc": "مجلد التنزيلات المحمولة",
        "InstallMessage":"هل تريد تثبيت البرامج المختارة؟",
        "ApplyMessage":"هل تريد تطبيق التحسينات المختارة؟",
        "Applying": "جارٍ التطبيق",
        "Pleasewait": "يرجى الانتظار، يوجد عملية في الخلفية",
        "choseapp":"اختر على الأقل تطبيقًا لتثبيته",
        "chosetweak":"يرجى الانتظار حتى يتم تطبيق التحسينات",
        "lastupdate":"آخر تحديث",
        "sourcecode":"الشفرة المصدرية",
        "devby":"صنع بـ ♥ من قبل عماد عادل",
        "exit":"هل أنت متأكد من رغبتك في إغلاق البرنامج؟ إذا كان هناك أي تثبيتات، فسيتم إيقافها."
    },
    "en": {
        "Welcome": "Save time by installing multiple programs at once and boost your Windows performance. Join us in improving the tool and make it great.",
        "sysinfo": "System Info",
        "PowerOptions": "Power Options",
        "devicemgr": "Device Manager",
        "services": "Services",
        "networks": "Networks",
        "appsfeatures": "Apps-Features",
        "taskmgr": "Task Manager",
        "diskmgr": "Disk Managment",
        "installBtn": "Install",
        "applyBtn": "Apply",
        "downloading": "Downloading",
        "about":"About",
        "thirdparty":"Third-party",
        "preferences":"Preferences",
        "management":"Management",
        "apps":"Apps",
        "tweaks":"Tweaks",
        "settings": "Settings",
        "saveapps":"Save selected apps",
        "loadapps":"Restore selected apps",
        "music":"Music",
        "on":"Unmute ",
        "off":"Mute",
        "Dark":"Dark ",
        "Light":"Light",
        "defaultTheme":"Use system setting",
        "ittlink":"Create desktop shortcut",
        "theme":"Theme",
        "language":"Language",
        "mas":"Microsoft Activation Scripts (MAS)",
        "winoffice":"Download Windows / Office ISO",
        "idm":"IDM Activation",
        "extensions":"Browsers Extensions",
        "all": "All",
        "search": "Search",
        "restorepoint": "Create restore point",
        "chocoloc": "Portable Downloads Folder",
        "InstallMessage":"Do you want install selected apps",
        "ApplyMessage":"Do you want to apply selected tweaks",
        "installing": "Installing..",
        "Applying": "Applying..",
        "choseapp":"Select at least one app to install",
        "chosetweak":"Please wait for the tweaks to be applied",
        "pleasewait": "Please wait, there is a process in the background.",
        "lastupdate":"Last update",
        "sourcecode":"Source Code",
        "devby":"Made with ♥ by Emad Adel",
        "exit":"Are you sure you want to close the program? If there are any installations, they will be terminated."
    },
    "fr": {
        "Welcome": "Économisez du temps en installant plusieurs programmes à la fois et améliorez les performances de votre Windows. Rejoignez-nous pour améliorer l''outil et le rendre excellent.",
        "sysinfo": "Informations Système",
        "PowerOptions": "Options d''Alimentation",
        "devicemgr": "Gestionnaire de périphériques",
        "services": "Services",
        "networks": "Réseaux",
        "appsfeatures": "Fonctionnalités des Applications",
        "taskmgr": "Gestionnaire des tâches",
        "diskmgr": "Gestion des disques",
        "installBtn": "Installer",
        "applyBtn": "Appliquer",
        "downloading": "Téléchargement en cours",
        "about": "À propos",
        "thirdparty": "Tiers",
        "preferences": "Préférences",
        "management": "Gestion",
        "apps": "Applications",
        "tweaks": "Réglages",
        "settings": "Paramètres",
        "saveapps": "Enregistrer les applications sélectionnées",
        "loadapps": "Restaurer les applications sélectionnées",
        "music": "Musique",
        "on": "Activer",
        "off": "Désactiver",
        "Dark": "Sombre",
        "Light": "Clair",
        "defaultTheme": "Système",
        "ittlink": "Créer un raccourci sur le bureau",
        "theme": "Thème",
        "language": "Langue",
        "mas": "Scripts d''Activation Microsoft (MAS)",
        "winoffice": "Télécharger Windows / Office ISO",
        "idm": "Activation IDM",
        "extensions": "Extensions de Navigateurs",
        "all": "Tout",

        "restorepoint": "Créer un point de restauration",
        "chocoloc": "Dossier Téléchargements Portable",

        "InstallMessage": "Souhaitez-vous installer les applications sélectionnées",
        "ApplyMessage": "Souhaitez-vous appliquer les ajustements sélectionnés",
        "installing": "Installation en cours...",
        "Applying": "Application des ajustements...",
        "choseapp": "Sélectionnez au moins une application à installer",
        "chosetweak": "Veuillez patienter pendant l''application des ajustements",
        "pleasewait": "Veuillez patienter, un processus est en cours en arrière-plan.",
        "lastupdate": "Dernière mise à jour",
        "sourcecode": "Code Source",
        "devby": "Créé avec ♥ par Emad Adel",
        "exit": "Êtes-vous sûr de vouloir fermer le programme ? Toute installation en cours sera interrompue."
    },
    "tr": {
        "Welcome": "Birden fazla programı tek seferde kurarak zaman kazanın ve Windows performansınızı artırın. Aracı iyileştirmemize katılın ve harika yapalım.",
        "sysinfo": "Sistem Bilgisi",
        "PowerOptions": "Güç Seçenekleri",
        "devicemgr": "Cihaz Yöneticisi",
        "services": "Hizmetler",
        "networks": "Ağlar",
        "appsfeatures": "Uygulamalar-Özellikler",
        "taskmgr": "Görev Yöneticisi",
        "diskmgr": "Disk Yönetimi",
        "installBtn": "Yükle",
        "applyBtn": "Uygula",
        "downloading": "İndiriliyor",
        "about": "Hakkında",
        "thirdparty": "Üçüncü Taraf",
        "preferences": "Tercihler",
        "management": "Yönetim",
        "apps": "Uygulamalar",
        "tweaks": "Düzeltmeler",
        "settings": "Ayarlar",
        "saveapps": "Seçili uygulamaları kaydet",
        "loadapps": "Seçili uygulamaları geri yükle",
        "music": "Müzik",
        "on": "Aç",
        "off": "Kapat",
        "Dark": "Koyu",
        "Light": "Açık",
        "defaultTheme": "Sistem",
        "ittlink": "Masaüstü kısayolu oluştur",
        "theme": "Tema",
        "language": "Dil",
        "mas": "Microsoft Aktivasyon Komut Dosyaları (MAS)",
        "winoffice": "Windows / Office ISO İndir",
        "idm": "IDM Aktivasyonu",
        "extensions": "Tarayıcı Eklentileri",
        "all": "Tüm",
        "restorepoint": "Geri yükleme noktası oluştur",
        "chocoloc": "Taşınabilir İndirilenler Klasörü",
        "InstallMessage": "Seçilen uygulamaları yüklemek istiyor musunuz",
        "ApplyMessage": "Seçilen düzeltmeleri uygulamak istiyor musunuz",
        "installing": "Yükleniyor..",
        "Applying": "Uygulanıyor..",
        "choseapp": "Lütfen kurulacak en az bir uygulama seçin",
        "chosetweak": "Düzeltmelerin uygulanmasını bekleyin",
        "pleasewait": "Lütfen bekleyin, arka planda bir işlem var.",
        "lastupdate": "Son güncelleme",
        "sourcecode": "Kaynak Kod",
        "devby": "Emad Adel tarafından ♥ ile yapıldı",
        "exit": "Programı kapatmak istediğinizden emin misiniz? Eğer herhangi bir yükleme işlemi varsa, kesilecektir."
    },
    "zh": {
        "Welcome": "通过一次安装多个程序节省时间并提升您的Windows性能。加入我们，改进工具，使其更加优秀。",
        "sysinfo": "系统信息",
        "PowerOptions": "电源选项",
        "devicemgr": "设备管理器",
        "services": "服务",
        "networks": "网络",
        "appsfeatures": "应用特性",
        "taskmgr": "任务管理器",
        "diskmgr": "磁盘管理",
        "installBtn": "安装",
        "applyBtn": "应用",
        "downloading": "下载中",
        "about": "关于",
        "thirdparty": "第三方",
        "preferences": "偏好",
        "management": "管理",
        "apps": "应用",
        "tweaks": "调整",
        "settings": "设置",
        "saveapps": "保存选定应用",
        "loadapps": "恢复选定应用",
        "music": "音乐",
        "on": "开启",
        "off": "关闭",
        "Dark": "深色",
        "Light": "浅色",
        "defaultTheme": "系统",
        "ittlink": "创建桌面快捷方式",
        "theme": "主题",
        "language": "语言",
        "mas": "Microsoft 激活脚本 (MAS)",
        "winoffice": "下载 Windows / Office ISO",
        "idm": "IDM 激活",
        "extensions": "浏览器扩展",
        "all": "都",
        "restorepoint": "创建还原点",
        "chocoloc": "便携下载文件夹",
        "InstallMessage": "是否要安装选定的应用",
        "ApplyMessage": "是否要应用选定的调整",
        "installing": "安装中..",
        "Applying": "应用中..",
        "choseapp": "请选择至少一款要安装的应用",
        "chosetweak": "请等待调整应用完成",
        "pleasewait": "请等待，后台有进程在进行中。",
        "lastupdate": "最后更新",
        "sourcecode": "源代码",
        "devby": "由 Emad Adel ♥ 制作",
        "exit": "您确定要关闭程序吗？如果有任何安装正在进行，它们将被终止。"
    },
    "ko": {
        "Welcome": "여러 프로그램을 한 번에 설치하여 시간을 절약하고 Windows 성능을 향상시킵니다. 도구를 개선하고 우리와 함께 훌륭하게 만들어 보세요.",
        "sysinfo": "시스템 정보",
        "PowerOptions": "전원 옵션",
        "devicemgr": "장치 관리자",
        "services": "서비스",
        "networks": "네트워크",
        "appsfeatures": "앱 기능",
        "taskmgr": "작업 관리자",
        "diskmgr": "디스크 관리",
        "installBtn": "설치",
        "applyBtn": "적용",
        "downloading": "다운로드 중",
        "about": "정보",
        "thirdparty": "외부",
        "preferences": "환경 설정",
        "management": "관리",
        "apps": "앱",
        "tweaks": "설정",
        "settings": "설정",
        "saveapps": "선택한 앱 저장",
        "loadapps": "선택한 앱 복원",
        "music": "음악",
        "on": "켜기",
        "off": "끄기",
        "Dark": "다크",
        "Light": "라이트",
        "defaultTheme": "시스템",
        "ittlink": "바탕화면 바로 가기 만들기",
        "theme": "테마",
        "language": "언어",
        "mas": "Microsoft 활성화 스크립트 (MAS)",
        "winoffice": "Windows / Office ISO 다운로드",
        "idm": "IDM 활성화",
        "extensions": "브라우저 확장 프로그램",
        "all": "모두",
        "restorepoint": "복원 지점 생성",
        "chocoloc": "휴대용 다운로드 폴더",
        "InstallMessage": "선택한 앱을 설치하시겠습니까",
        "ApplyMessage": "선택한 조정 사항을 적용하시겠습니까",
        "installing": "설치 중..",
        "Applying": "적용 중..",
        "choseapp": "설치할 적어도 하나의 앱을 선택하십시오",
        "chosetweak": "조정 사항 적용 대기 중",
        "pleasewait": "배경에서 프로세스가 진행 중입니다. 잠시 기다려주세요.",
        "lastupdate": "마지막 업데이트",
        "sourcecode": "소스 코드",
        "devby": "Emad Adel 제작 ♥",
        "exit": "프로그램을 종료하시겠습니까? 진행 중인 설치가 있으면 중단됩니다."
    },
    "de": {
        "Welcome": "Sparen Sie Zeit, indem Sie mehrere Programme gleichzeitig installieren und verbessern Sie die Leistung Ihres Windows. Helfen Sie uns dabei, das Tool zu verbessern und großartig zu machen.",
        "sysinfo": "Systeminformationen",
        "PowerOptions": "Energieoptionen",
        "devicemgr": "Geräte-Manager",
        "services": "Dienste",
        "networks": "Netzwerke",
        "appsfeatures": "Apps-Funktionen",
        "taskmgr": "Task-Manager",
        "diskmgr": "Festplattenverwaltung",
        "installBtn": "Installieren",
        "applyBtn": "Anwenden",
        "downloading": "Herunterladen",
        "about": "Über",
        "thirdparty": "Drittanbieter",
        "preferences": "Einstellungen",
        "management": "Verwaltung",
        "apps": "Apps",
        "tweaks": "Anpassungen",
        "settings": "Einstellungen",
        "saveapps": "Ausgewählte Apps speichern",
        "loadapps": "Ausgewählte Apps wiederherstellen",
        "music": "Musik",
        "on": "Stummschalten ",
        "off": "Stummschalten",
        "Dark": "Dunkel ",
        "Light": "Hell",
        "defaultTheme": "System",
        "ittlink": "Desktop-Verknüpfung erstellen",
        "theme": "Thema",
        "language": "Sprache",
        "mas": "Microsoft-Aktivierungsskripte (MAS)",
        "winoffice": "Windows / Office ISO herunterladen",
        "idm": "IDM-Aktivierung",
        "extensions": "Browser-Erweiterungen",
        "all": "Alle",
        "restorepoint": "Wiederherstellungspunkt erstellen",
        "chocoloc": "Tragbarer Download-Ordner",
        "InstallMessage": "Möchten Sie die ausgewählten Apps installieren?",
        "ApplyMessage": "Möchten Sie die ausgewählten Anpassungen anwenden?",
        "installing": "Installiere..",
        "Applying": "Wende an..",
        "choseapp": "Wählen Sie mindestens eine App zum Installieren aus",
        "chosetweak": "Bitte warten Sie, bis die Anpassungen angewendet wurden",
        "pleasewait": "Bitte warten Sie, es läuft ein Prozess im Hintergrund.",
        "lastupdate": "Letztes Update",
        "sourcecode": "Quellcode",
        "devby": "Hergestellt mit ♥ von Emad Adel",
        "exit": "Sind Sie sicher, dass Sie das Programm schließen möchten? Falls Installationen laufen, werden sie abgebrochen."
    },
    "ru": {
        "Welcome": "Экономьте время, устанавливая несколько программ одновременно и улучшая производительность Windows. Присоединяйтесь к нам в улучшении этого инструмента и сделайте его лучше.",
        "sysinfo": "Информация о системе",
        "PowerOptions": "Питание",
        "devicemgr": "Диспетчер устройств",
        "services": "Службы",
        "networks": "Сети",
        "appsfeatures": "Особенности приложений",
        "taskmgr": "Диспетчер задач",
        "diskmgr": "Управление дисками",
        "installBtn": "Установить",
        "applyBtn": "Применить",
        "downloading": "Загрузка",
        "about": "О программе",
        "thirdparty": "Сторонние приложения",
        "preferences": "Настройки",
        "management": "Управление",
        "apps": "Приложения",
        "tweaks": "Настройки",
        "settings": "Настройки",
        "saveapps": "Сохранить выбранные приложения",
        "loadapps": "Восстановить выбранные приложения",
        "music": "Музыка",
        "on": "Включить ",
        "off": "Выключить",
        "Dark": "Темная ",
        "Light": "Светлая",
        "defaultTheme": "Системная",
        "ittlink": "Создать ярлык на рабочем столе",
        "theme": "Тема",
        "language": "Язык",
        "mas": "Скрипты активации Microsoft (MAS)",
        "winoffice": "Скачать Windows / Office ISO",
        "idm": "Активация IDM",
        "extensions": "Расширения браузера",
        "all": "Все",
        "restorepoint": "Создать точку восстановления",
        "chocoloc": "Портативная папка загрузок",
        "InstallMessage": "Хотите установить выбранные приложения?",
        "ApplyMessage": "Хотите применить выбранные настройки?",
        "installing": "Установка..",
        "Applying": "Применение..",
        "choseapp": "Выберите хотя бы одно приложение для установки",
        "chosetweak": "Пожалуйста, подождите, пока будут применены настройки",
        "pleasewait": "Пожалуйста, подождите, идет процесс на заднем плане.",
        "lastupdate": "Последнее обновление",
        "sourcecode": "Исходный код",
        "devby": "Сделано с ♥ Emad Adel",
        "exit": "Вы уверены, что хотите закрыть программу? Если есть установки, они будут прерваны."
    },
    "es": {
    "Welcome": "Ahorra tiempo instalando varios programas a la vez y mejora el rendimiento de tu Windows. Únete a nosotros para mejorar la herramienta y hacerla excelente.",
    "sysinfo": "Información del Sistema",
    "PowerOptions": "Opciones de Energía",
    "devicemgr": "Administrador de Dispositivos",
    "services": "Servicios",
    "networks": "Redes",
    "appsfeatures": "Aplicaciones-Características",
    "taskmgr": "Administrador de Tareas",
    "diskmgr": "Administración de Discos",
    "installBtn": "Instalar",
    "applyBtn": "Aplicar",
    "downloading": "Descargando",
    "about": "Acerca de",
    "thirdparty": "Terceros",
    "preferences": "Preferencias",
    "management": "Gestión",
    "apps": "Aplicaciones",
    "tweaks": "Ajustes",
    "settings": "Configuración",
    "saveapps": "Guardar aplicaciones seleccionadas",
    "loadapps": "Restaurar aplicaciones seleccionadas",
    "music": "Música",
    "on": "Activado ",
    "off": "Desactivado",
    "Dark": "Oscuro ",
    "Light": "Claro",
    "defaultTheme": "Sistema",
    "ittlink": "Crear acceso directo en el escritorio",
    "theme": "Tema",
    "language": "Idioma",
    "mas": "Scripts de Activación de Microsoft (MAS)",
    "winoffice": "Descargar ISO de Windows / Office",
    "idm": "Activación de IDM",
    "extensions": "Extensiones de Navegadores",
    "all": "Todo",
    "restorepoint": "Crear punto de restauración",
    "chocoloc": "Carpeta de Descargas Portátiles",
    "InstallMessage": "¿Deseas instalar las aplicaciones seleccionadas?",
    "ApplyMessage": "¿Deseas aplicar los ajustes seleccionados?",
    "installing": "Instalando..",
    "Applying": "Aplicando..",
    "choseapp": "Selecciona al menos una aplicación para instalar",
    "chosetweak": "Por favor espera mientras se aplican los ajustes",
    "pleasewait": "Por favor espera, hay un proceso en segundo plano.",
    "lastupdate": "Última actualización",
    "sourcecode": "Código Fuente",
    "devby": "Hecho con ♥ por Emad Adel",
    "exit": "¿Estás seguro de que quieres cerrar el programa? Si hay instalaciones en curso, se cancelarán."
    }
  }
}
' | ConvertFrom-Json
$sync.database.OST = '{
  "Tracks": [
    "https://epsilon.vgmsite.com/soundtracks/far-cry-3/iqgdbfrhtw/17.%20Further%20%28feat.%20Serena%20McKinney%29.mp3",
    "https://dl.vgmdownloads.com/soundtracks/hollow-knight-original-soundtrack/qqrmmaqyqg/26.%20Hollow%20Knight.mp3",
    "https://dl.vgmdownloads.com/soundtracks/assassin-s-creed-3/jgevpclfcr/01.%20Assassin%27s%20Creed%20III%20Main%20Theme.mp3",
    "https://dl.vgmdownloads.com/soundtracks/assassins-creed-mirage-original-game-soundtrack-2023/axtwruyduh/01.%20Mirage%20Theme.mp3",
    "https://vgmsite.com/soundtracks/assassins-creed-ezios-family-m-me-remix-2022/qdxeshajdz/01.%20Ezio%27s%20Family%20%28M%C3%B8me%20Remix%29.mp3",
    "https://archive.org/download/GrandTheftAuto4ThemeSong_201904/Grand%20Theft%20Auto%204%20Theme%20Song.mp3",
    "https://epsilon.vgmsite.com/soundtracks/assassin-s-creed-2/jlrprchapt/1-03%20Ezio%27s%20Family.mp3",
    "https://epsilon.vgmsite.com/soundtracks/assassin-s-creed-2/nkantwuktr/1-01%20Earth.mp3",
    "https://epsilon.vgmsite.com/soundtracks/mass-effect-3-gamerip-2012/nchtmgcz/304.%20End%20of%20Cycle.mp3",
    "https://dl.vgmdownloads.com/soundtracks/somerville-2022/naszqoqnhr/01.%20Intro%20%28Somerville%20Original%20Soundtrack%29%20%28feat.%20Dominique%20Charpentier%29.mp3",
    "https://archive.org/download/kate-chruscicka-requiem-for-a-dream-electric-violin/Kate%20Chruscicka-Requiem%20For%20A%20Dream%20%28Electric%20Violin%29.mp3",
    "https://archive.org/download/InceptionSoundtrackHD12TimeHansZimmer/Inception%20Soundtrack%20HD%20-%20%2312%20Time%20%28Hans%20Zimmer%29.mp3",
    "https://epsilon.vgmsite.com/soundtracks/little-nightmares-ii-original-soundtrack/bplsnxvnzm/01.%20Main%20Theme.mp3",
    "https://dl.vgmdownloads.com/soundtracks/assassin-s-creed-3/qhigmkctpn/09.%20Trouble%20in%20Town.mp3",
    "https://vgmsite.com/soundtracks/assassin-s-creed-odyssey-original-game-soundtrack/kbtrtqrtyf/01.%20Legend%20of%20the%20Eagle%20Bearer%20%28Main%20Theme%29.mp3",
    "https://vgmsite.com/soundtracks/assassin-s-creed-odyssey-original-game-soundtrack/kcjbuaurdi/11.%20Assassin%27s%20Creed.mp3",
    "https://archive.org/download/exit-music-for-a-film-westworld-soundtrack/exit-music-for-a-film-westworld-soundtrack.mp3",
    "https://dl.vgmdownloads.com/soundtracks/max-payne-3/xhaxngwzys/1.%20MAX%20THEME.mp3",
    "https://vgmsite.com/soundtracks/max-payne-3-macos-ps3-windows-xbox-360-gamerip-2012/hcwizawdyl/112.%20Theme%20Variation%2003.mp3",
    "https://archive.org/download/ludovico-einaudi-experience-mp-3-70-k/Ludovico%20Einaudi%20-%20Experience%28MP3_70K%29.mp3",
    "https://archive.org/download/GTASanAndreasThemeSongFull_201904/GTA%20San%20Andreas%20Theme%20Song%20Full%20%21%20%21.mp3",
    "https://archive.org/download/interstellar-soundtrack/22%20No%20Time%20for%20Caution%20%28Docking%20scene%29%201.m4a",
    "https://archive.org/download/interstellar-soundtrack/26%20Organ%20Variation.m4a",
    "https://archive.org/download/interstellar-soundtrack/25%20Tick%20Tock.m4a",
    "https://archive.org/download/interstellar-soundtrack/30%20Day%20One%20%28Original%20Demo%29.m4a",
    "https://archive.org/download/max-richter-memoryhouse/09%20November.mp3",
    "https://archive.org/download/ZackHemseyTheWay_201704/Zack%20Hemsey%20-%20The%20Way.mp3",
    "https://eta.vgmtreasurechest.com/soundtracks/cyberpunk-2077-original-game-score/zalnnwrhwh/1-03%20The%20Rebel%20Path.mp3",
    "https://archive.org/download/tvtunes_32383/HBOs%20The%20Leftovers%20Piano%20Theme%20-%20Max%20Richter.mp3",
    "https://archive.org/download/maxrichteronthenatureofdaylight_201911/Max%20Richter%20-%20On%20the%20Nature%20of%20Daylight.mp3",
    "https://archive.org/download/InceptionSoundtrackDreamIsCollapsingHansZimmer/Inception%20Soundtrack-Dream%20is%20Collapsing%20%28Hans%20Zimmer%29.mp3"
  ]
}
' | ConvertFrom-Json
$sync.database.Quotes = '{
  "Q": [
    "إما تموت بطلا، أو تعيش طويلاً حتى ترى نفسك اصبحت الشرير",
    "بعض الرجال يريدون فقط مشاهدة العالم يحترق",
    "أنت دائما تخشى ما لا تفهمه",
    "التعاون مع الشر لا يجعلك تفوز. إنه يجعلك مثله",
    "القتال الحقيقي هو دائمًا ضد الذات",
    "الوحدة هي أسوأ أشكال العقوبة",
    "الجمال الحقيقي لا يكمن في المظهر الخارجي، بل في النية والروح",
    "ليس كل ما نخاف منه سيئًا، وليس كل ما نحبه جيدًا",
    "ظننت أنه يمكننا أن نكون رجالاً شرفاء في زمن غير شريف",
    "يمكنك أن تعطي رجلاً مسدسًا ليسرق بنكًا، لكن أعطه بنكًا يمكنه سرقة العالم",
    "أنت تعتقد أن الظلام هو حليفك لكنك تبنيت الظلام , انا لقد ولدت فيه",
    "لا يغرنك من تكلم حسناً عنك ولا يؤذيك من تكلم سيئاً عليك",
    "اختر أن تكون شمعة تضيء دروب الآخرين، ولا تكن ظلامًا يعكر جوهر الحياة",
    "النية خير معيار للأفعال",
    "الإيمان هو أن ترى الشيء الذي لا يمكن رؤيته بالعين",
    "الحقيقة تجعلك حرًا",
    "العدالة شيئ و القانون شيئ",
    "الحرية لا تُعطى بل تأخذ",
    "ما أخذ بالقوة لا يٌسترد إلا بالقوة",
    "الجهل سيئ و من صناعة الانظمة",
    "كل ما احلم به جرفته الامواج بعيدا",
    "من جاءني رحيما بادلته احتراما",
    "ولدت من جديد حينما رأيت ذلك",
    "الوطنية للفقراء و الوطن للاغنياء",
    "حين انتهيت من بناء قاربي جف البحر",
    "المشاكل لن تنتهي هكذا الدنيا",
    "البطولة لا تأتي من القوة البدنية، بل من الإرادة والعزم",
    "القوة ليست في القدرة على تحمل الصعاب، بل في القدرة على التغلب عليها",
    "عليك أن تتحطم قبل أن تتعلم كيف تقوم مرة أخرى",
    "الإيمان بالمستحيل هو البداية لتحقيق المعجزات",
    "الكون يحتفظ بأسرار لا يمكن للعقل البشري فهمها بأكملها",
    "البقاء لا يعني شيئًا إذا كانت الحياة بلا معنى",
    "عندما ننظر إلى السماء، نرى ليس فقط النجوم بل أيضًا أحلامنا وآمالنا",
    "العالم ينقسم إلى طرفين: أولئك الذين لديهم القوة، وأولئك الذين يسعون للقوة",
    "لقد قالوا إن الحقيقة تضر، ولكنهم لم يذكروا أن الكذب يؤلم أكثر",
    "الموت ليس الأسوأ في الحياة. الأسوأ هو ما يموت به الإنسان دون أن يعيش",
    "عندما نقف معًا، نحن قوة لا يمكن أن تُقهر",
    "كل شيء في الحياة يتم الدفع ثمنه، لكن بعض الأشياء لا يمكن شراؤها بالمال",
    "الحقيقة ليست دائماً واضحة، لكنها دائماً هناك",
    "الجشع هو موتك السريع، والغباء هو رصاصتك الخاصة",
    "الحياة ليست سهلة، ولكن الصعوبات تجعلنا أقوى",
    "تموت البراءة وتحيا الكلاب",
    "رجال الحق قالو الصابرون نالوا والذهن حامل لما لا تحمل الجبال",
    "أردتم السلام , فأشعلنا حربا في الخفاء",
    "أنت لأ تخاف الموت أنت ترحب به",
    "لاستغلال خوف الآخرين، عليك أن تسيطر على خوفك",
    "حرية كذابة، عالم إستبدادي",
    "رَحْمَتِي وَسِعَتْ كُلَّ شَيْءٍ",
    "عندما تتبول الأنظمة علي الشعوب تتسارع الصحافة لإقناعهم بانها مطر و رجال الدين بانها طاهرة",
    "يا تموت وإنت واقف يا تموت وانت راكع",
    "عايش في أكبر سجن بس من جوايا حر",
    "قلبي نطق بالحقيقة بالخيانة إتوصف",
    "الحقيقة هي، أن الأشياء نادراً ما تسير كما نريدها",
    "الحظ ليس عادلاً، ولكن العالم ليس كذلك أيضًا.",
    "الحرية تأتي بثمن. وأحياناً، تكون الكلفة مرتفعة للغاية",
    "الأشياء التي نحبها أكثر، هي الأشياء التي نفقدها",
    "أصغر الاصوات بإمكانها أن تصبح عظيمة",
    "هل انت 1 ام 0",
    "حياتي جعلتني كالميت الحي لكن انعكاسي اظهر لي مازلت على قيد الحياة",
    "المقاومه ما هي الا نتاج للقهر والظلم والاستبداد",
    "لقد خلقنا الله أحراراً، ولم يخلقنا تراثاً أو عقاراً",
    "الرأسمالية تسعى دائماً للربح حتى على حساب الإنسانية والبيئة",
    "الرأسمالية هي آلة تعمل على سحق الأمل لصالح الجشع",
    "الرأسمالية تجعل من البشر مجرد أدوات لتحقيق الربح",
    "الرأسمالية تخلق تفاوتًا اقتصاديًا وظلمًا اجتماعيًا لا يمكن التغاضي عنه",
    "الرأسمالية تجعلنا نعتقد أن السعادة مرتبطة بالامتلاك، وليس بالوجود",
    "الرأسمالية تضع الربح قبل القيم الإنسانية",
    "الظلم يولد الطغيان والمقاومة",
    "الوحدة هي ذلك المكان الذي تكتشف فيه نفسك دون ضغوط من الآخرين",
    "الوحدة هي الهدوء الذي يعزلك عن العالم ويجعلك تكتشف نفسك",
    "لا يمكن لأي قوة على وجه الأرض أن تقهر روحاً متمسكة بالإيمان في الحق"
  ]
}
' | ConvertFrom-Json
$sync.database.Settings = '[
  {
      "Content": "Show file extensions",
      "Name":"ToggleShowExt",
      "description": "Show file extensions in Windows displays the suffix at the end of file names (like .txt, .jpg, .exe), indicating file types and helping users identify which programs can open them, simplifying file management and differentiation.",
      "category": "Protection"
    },
  {
    "Content": "Show Super Hidden",
    "Name":"ToggleShowHidden",
    "description": "Show Super Hidden displays files and folders in Windows that are hidden beyond standard hidden files, often system files to prevent accidental changes.",
    "category": "Protection"

},
  {
    "Content": "Dark Mode",
    "Name":"ToggleDarkMode",
    "description": "Dark Mode is a setting that changes the screen to darker colors, reducing eye strain and saving battery life on OLED screens.",
    "category": "Personalize"
  }
]' | ConvertFrom-Json
$sync.database.Tweaks = '[
  {
    "name": "System File Checker",
    "description": "sfc /scannow Use the System File Checker tool to repair missing or corrupted system files",
    "check": "false",
    "category": "Fixer",
    "type": "command",
    "refresh": "false",
    "InvokeCommand": [
      "sfc /scannow"
    ],
    "UndoCommand": [
      ""
    ]
  },
  {
    "name": "Disk cleanup",
    "description": "Clean temporary files that are not necessary",
    "check": "false",
    "category": "Cleanup",
    "type": "command",
    "refresh": "false",
    "InvokeCommand": [
      "cleanmgr.exe /d C: /VERYLOWDISK /sagerun:1 Dism.exe /online /Cleanup-Image /StartComponentCleanup /ResetBase"
    ],
    "UndoCommand": [
      ""
    ]
  },
  {
    "name": "Restore All Windows Services to Default",
    "description": "If you face a problem with some system services, you can restore all services to Default.",
    "check": "false",
    "category": "Fixer",
    "type": "command",
    "refresh": "false",
    "InvokeCommand": [
      "Invoke-RestMethod https://raw.githubusercontent.com/emadadel4/WindowsTweaks/main/restore.bat | Invoke-Expression"
    ],
    "UndoCommand": [
      ""
    ]
  },
  {
    "name": "Fix Stutter in Games",
    "description": "Fix Stutter in Games Disable GameBarPresenceWriter for Windows 10 and 11",
    "check": "false",
    "category": "Performance",
    "type": "command",
    "refresh": "false",
    "InvokeCommand": [
      "\r\n        takeown /f C:\\Windows\\System32\\GameBarPresenceWriter.exe\r\n\r\n        takeown /f C:\\Windows\\System32\\GameBarPresenceWriter.proxy.dll\r\n\r\n        takeown /f C:\\Windows\\System32\\Windows.Gaming.UI.GameBar.dll\r\n\r\n        Start-Sleep -Seconds 1\r\n\r\n\r\n        icacls C:\\Windows\\System32\\GameBarPresenceWriter.exe /grant administrators:F\r\n\r\n        icacls C:\\Windows\\System32\\GameBarPresenceWriter.proxy.dll /grant administrators:F\r\n\r\n        icacls C:\\Windows\\System32\\Windows.Gaming.UI.GameBar.dll /grant administrators:F\r\n\r\n        Start-Sleep -Seconds 1\r\n\r\n\r\n        Rename-Item C:\\Windows\\System32\\GameBarPresenceWriter.exe -NewName GameBarPresenceWriter.exe_backup\r\n\r\n        Rename-Item C:\\Windows\\System32\\GameBarPresenceWriter.proxy.dll -NewName GameBarPresenceWriter.proxy.dll_backup\r\n\r\n        Rename-Item C:\\Windows\\System32\\Windows.Gaming.UI.GameBar.dll -NewName Windows.Gaming.UI.GameBar.dll_backup\r\n\r\n      "
    ],
    "UndoCommand": [
      ""
    ]
  },
  {
    "name": "Enable the Ultimate Performance Power Plan",
    "description": "Enable the Ultimate Performance Power Plan",
    "check": "false",
    "category": "Performance",
    "type": "command",
    "refresh": "false",
    "InvokeCommand": [
      "powercfg -duplicatescheme e9a42b02-d5df-448d-aa00-03f14749eb61; Start-Process powercfg.cpl"
    ],
    "UndoCommand": [
      ""
    ]
  },
  {
    "name": "Reset the TCP/IP Stack",
    "description": "If you have an internet problem, Reset network configuration",
    "check": "false",
    "category": "Fixer",
    "type": "command",
    "refresh": "false",
    "InvokeCommand": [
      "netsh int ip reset"
    ],
    "UndoCommand": [
      ""
    ]
  },
  {
    "name": "Setup Auto login",
    "description": "Setup auto login Windows username",
    "check": "false",
    "category": "Other",
    "type": "command",
    "refresh": "false",
    "InvokeCommand": [
      "curl.exe -ss \"https://live.sysinternals.com/Autologon.exe\" -o $env:temp\\autologin.exe ; cmd /c $env:temp\\autologin.exe /accepteula"
    ],
    "UndoCommand": [
      ""
    ]
  },
  {
    "name": "Disable  Xbox Services",
    "description": "Disables all Xbox Services Game Mode and Optimizations for Windowed Games and fix stutter playing smooth",
    "check": "false",
    "category": "Performance",
    "type": "modifying",
    "refresh": "false",
    "Registry": [
      {
        "Path": "HKCU:\\SOFTWARE\\Microsoft\\GameBar",
        "Name": "AutoGameModeEnabled",
        "Type": "DWord",
        "Value": "0",
        "defaultValue": "1"
      },
      {
        "Path": "HKCU:\\SOFTWARE\\Microsoft\\GameBar",
        "Name": "AllowAutoGameMode",
        "Type": "DWord",
        "Value": "0",
        "defaultValue": "1"
      },
      {
        "Path": "HKCU:\\SOFTWARE\\Microsoft\\GameBar",
        "Name": "ShowStartupPanel",
        "Type": "DWord",
        "Value": "0",
        "defaultValue": "1"
      },
      {
        "Path": "HKCU:\\System\\GameConfigStore",
        "Name": "GameDVR_Enabled",
        "Type": "DWord",
        "Value": "0",
        "defaultValue": "1"
      },
      {
        "Path": "HKCU:\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\GameBar",
        "Name": "AppCaptureEnabled",
        "Type": "DWord",
        "Value": "0",
        "defaultValue": "1"
      },
      {
        "Path": "HKCU:\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\GameBar",
        "Name": "UseNexusForGameBarEnabled",
        "Type": "DWord",
        "Value": "0",
        "defaultValue": "1"
      },
      {
        "Path": "HKCU:\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\GameBar",
        "Name": "AudioCaptureEnabled",
        "Type": "DWord",
        "Value": "0",
        "defaultValue": "1"
      },
      {
        "Path": "HKCU:\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\GameBar",
        "Name": "CursorCaptureEnabled",
        "Type": "DWord",
        "Value": "0",
        "defaultValue": "1"
      },
      {
        "Path": "HKLM:\\Software\\Policies\\Microsoft\\Windows\\GameDVR",
        "Name": "AllowgameDVR",
        "Type": "DWord",
        "Value": "0",
        "defaultValue": "1"
      },
      {
        "Path": "HKLM:\\System\\CurrentControlSet\\Services\\xbgm",
        "Name": "Start",
        "Type": "DWord",
        "Value": "4",
        "defaultValue": "0"
      },
      {
        "Path": "HKCU:\\System\\GameConfigStore",
        "Name": "GameDVR_FSEBehaviorMode",
        "Type": "DWord",
        "Value": "2",
        "defaultValue": "0"
      },
      {
        "Path": "HKCU:\\System\\GameConfigStore",
        "Name": "GameDVR_HonorUserFSEBehaviorMode",
        "Type": "DWord",
        "Value": "1",
        "defaultValue": "0"
      },
      {
        "Path": "HKCU:\\System\\GameConfigStore",
        "Name": "GameDVR_FSEBehavior",
        "Type": "DWord",
        "Value": "2",
        "defaultValue": "0"
      },
      {
        "Path": "HKCU:\\System\\GameConfigStore",
        "Name": "GameDVR_DXGIHonorFSEWindowsCompatible",
        "Type": "DWord",
        "Value": "1",
        "defaultValue": "0"
      },
      {
        "Path": "HKCU:\\System\\GameConfigStore",
        "Name": "GameDVR_EFSEFeatureFlags",
        "Type": "DWord",
        "Value": "0",
        "defaultValue": "0"
      },
      {
        "Path": "HKCU:\\System\\GameConfigStore",
        "Name": "GameDVR_DSEBehavior",
        "Type": "DWord",
        "Value": "2",
        "defaultValue": "0"
      },
      {
        "Path": "HKCU:\\Software\\Microsoft\\DirectX\\UserGpuPreferences",
        "Name": "DirectXUserGlobalSettings",
        "Type": "String",
        "Value": "SwapEffectUpgradeEnable=1;",
        "defaultValue": "0"
      },
      {
        "Path": "HKCU:\\Software\\Microsoft\\DirectX\\GraphicsSettings",
        "Name": "",
        "Type": "DWord",
        "Value": "1",
        "defaultValue": "0"
      },
      {
        "Path": "HKCU:\\Software\\Microsoft\\DirectX\\GraphicsSettings",
        "Name": "SwapEffectUpgradeCache",
        "Type": "DWord",
        "Value": "1",
        "defaultValue": "0"
      },
      {
        "Path": "HKCU:\\SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\SoftwareProtectionPlatform",
        "Name": "InactivityShutdownDelay",
        "Type": "DWord",
        "Value": "4294967295",
        "defaultValue": "0"
      },
      {
        "Path": "HKLM:\\SOFTWARE\\Microsoft\\Windows\\Dwm",
        "Name": "OverlayTestMode",
        "Type": "DWord",
        "Value": "5",
        "defaultValue": "0"
      },
      {
        "Path": "HKLM:\\SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\Multimedia\\SystemProfile\\Tasks\\Games",
        "Name": "GPU Priority",
        "Type": "DWord",
        "Value": "8",
        "defaultValue": "8"
      },
      {
        "Path": "HKLM:\\SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\Multimedia\\SystemProfile\\Tasks\\Games",
        "Name": "Scheduling Category",
        "Type": "String",
        "Value": "High",
        "defaultValue": "High"
      },
      {
        "Path": "HKLM:\\SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\Multimedia\\SystemProfile\\Tasks\\Games",
        "Name": "SFIO Priority",
        "Type": "String",
        "Value": "High",
        "defaultValue": "High"
      },
      {
        "Path": "HKLM:\\SYSTEM\\CurrentControlSet\\Control\\PriorityControl",
        "Name": "IRQ8Priority",
        "Type": "DWord",
        "Value": "1",
        "defaultValue": "0"
      }
    ],
    "InvokeCommand": [
      "Disable-MMAgent -MemoryCompression | Out-Null",
      "\r\n        takeown /f C:\\Windows\\System32\\GameBarPresenceWriter.exe\r\n\r\n        takeown /f C:\\Windows\\System32\\GameBarPresenceWriter.proxy.dll\r\n\r\n        takeown /f C:\\Windows\\System32\\Windows.Gaming.UI.GameBar.dll\r\n\r\n        Start-Sleep -Seconds 1\r\n\r\n\r\n        icacls C:\\Windows\\System32\\GameBarPresenceWriter.exe /grant administrators:F\r\n\r\n        icacls C:\\Windows\\System32\\GameBarPresenceWriter.proxy.dll /grant administrators:F\r\n\r\n        icacls C:\\Windows\\System32\\Windows.Gaming.UI.GameBar.dll /grant administrators:F\r\n\r\n        Start-Sleep -Seconds 1\r\n\r\n\r\n        Rename-Item C:\\Windows\\System32\\GameBarPresenceWriter.exe -NewName GameBarPresenceWriter.exe_backup\r\n\r\n        Rename-Item C:\\Windows\\System32\\GameBarPresenceWriter.proxy.dll -NewName GameBarPresenceWriter.proxy.dll_backup\r\n\r\n        Rename-Item C:\\Windows\\System32\\Windows.Gaming.UI.GameBar.dll -NewName Windows.Gaming.UI.GameBar.dll_backup\r\n\r\n      "
    ],
    "UndoCommand": [
      ""
    ]
  },
  {
    "name": "Disable Data Collection",
    "description": "Disable Data Collection",
    "check": "false",
    "category": "Privacy",
    "type": "modifying",
    "refresh": "false",
    "Registry": [
      {
        "Path": "HKLM:\\SOFTWARE\\Policies\\Microsoft\\Windows\\DataCollection",
        "Name": "AllowTelemetry",
        "Type": "DWord",
        "Value": "0",
        "defaultValue": "1"
      }
    ],
    "InvokeCommand": [
      ""
    ],
    "UndoCommand": [
      ""
    ]
  },
  {
    "name": "Disable Start Menu Ads",
    "description": "Disable Start menu Ads and Settings",
    "check": "false",
    "category": "Privacy",
    "type": "modifying",
    "refresh": "true",
    "Registry": [
      {
        "Path": "HKCU:\\Software\\Microsoft\\Windows\\CurrentVersion\\AdvertisingInfo",
        "Name": "Enabled",
        "Type": "DWord",
        "Value": "0",
        "defaultValue": "1"
      },
      {
        "Path": "HKCU:\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\ContentDeliveryManager",
        "Name": "SystemPaneSuggestionsEnabled",
        "Type": "DWord",
        "Value": "0",
        "defaultValue": "1"
      },
      {
        "Path": "HKCU:\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\ContentDeliveryManager",
        "Name": "SoftLandingEnabled",
        "Type": "DWord",
        "Value": "0",
        "defaultValue": "1"
      },
      {
        "Path": "HKCU:\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Explorer\\Advanced",
        "Name": "ShowSyncProviderNotifications",
        "Type": "DWord",
        "Value": "0",
        "defaultValue": "1"
      }
    ],
    "InvokeCommand": [
      ""
    ],
    "UndoCommand": [
      ""
    ]
  },
  {
    "name": "Disable Windows Web Search",
    "description": "Disable web search in Windows by modifying the registry settings related to Windows Search for Windows 10 and 11",
    "check": "false",
    "category": "Privacy",
    "type": "modifying",
    "refresh": "false",
    "Registry": [
      {
        "Path": "HKCU:\\Software\\Microsoft\\Windows\\CurrentVersion\\Search",
        "Name": "BingSearchEnabled",
        "Type": "DWord",
        "Value": "0",
        "defaultValue": "1"
      }
    ],
    "InvokeCommand": [
      ""
    ],
    "UndoCommand": [
      ""
    ]
  },
  {
    "name": "Turn off background Apps",
    "description": "Turn off background apps for Windows 10 and 11",
    "check": "false",
    "category": "Performance",
    "type": "modifying",
    "refresh": "false",
    "Registry": [
      {
        "Path": "HKCU:\\Software\\Microsoft\\Windows\\CurrentVersion\\BackgroundAccessApplications",
        "Name": "GlobalUserDisabled",
        "Type": "DWord",
        "Value": "1",
        "defaultValue": "0"
      },
      {
        "Path": "HKCU:\\Software\\Microsoft\\Windows\\CurrentVersion\\Search",
        "Name": "BackgroundAppGlobalToggle",
        "Type": "DWord",
        "Value": "0",
        "defaultValue": "1"
      }
    ],
    "InvokeCommand": [
      ""
    ],
    "UndoCommand": [
      ""
    ]
  },
  {
    "name": "Disable suggestions on Start Menu",
    "description": "Disables suggestions on start menu for Windows 10 and 11",
    "check": "false",
    "category": "Privacy",
    "type": "modifying",
    "refresh": "false",
    "Registry": [
      {
        "Path": "HKLM:\\SOFTWARE\\Policies\\Microsoft\\Windows\\CloudContent",
        "Name": "DisableWindowsConsumerFeatures",
        "Type": "DWord",
        "Value": "1",
        "defaultValue": "0"
      }
    ],
    "InvokeCommand": [
      ""
    ],
    "UndoCommand": [
      ""
    ]
  },
  {
    "name": "Clean Taskbar",
    "description": "Disable the (News and interests) and (People icon) Show Search icon only for Windows 10/11",
    "check": "false",
    "category": "Performance",
    "type": "modifying",
    "refresh": "true",
    "Registry": [
      {
        "Path": "HKCU:\\Software\\Microsoft\\Windows\\CurrentVersion\\Feeds",
        "Name": "ShellFeedsTaskbarViewMode",
        "Type": "DWord",
        "Value": "2",
        "defaultValue": "0"
      },
      {
        "Path": "HKCU:\\Software\\Microsoft\\Windows\\CurrentVersion\\Search",
        "Name": "SearchboxTaskbarMode",
        "Type": "DWord",
        "Value": "1",
        "defaultValue": "2"
      },
      {
        "Path": "HKCU:\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Explorer\\Advanced\\People",
        "Name": "PeopleBand",
        "Type": "DWord",
        "Value": "0",
        "defaultValue": "1"
      },
      {
        "Path": "HKCU:\\Software\\Microsoft\\Windows\\CurrentVersion\\Policies\\Explorer",
        "Name": "HideSCAMeetNow",
        "Type": "DWord",
        "Value": "1",
        "defaultValue": "0"
      },
      {
        "Path": "HKLM:\\Software\\Microsoft\\Windows\\CurrentVersion\\Policies\\Explorer",
        "Name": "HideSCAMeetNow",
        "Type": "DWord",
        "Value": "1",
        "defaultValue": "0"
      }
    ],
    "InvokeCommand": [
      ""
    ],
    "UndoCommand": [
      ""
    ]
  },
  {
    "name": "Remove Folder Shortcuts From File Explorer",
    "description": "Remove Documents, Videos, Pictures, Desktop. Shortcuts from File Explorer",
    "check": "false",
    "category": "Other",
    "type": "delete",
    "refresh": "false",
    "Registry": [
      {
        "Path": "HKEY_LOCAL_MACHINE\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Explorer\\MyComputer\\NameSpace\\",
        "Name": "{0DB7E03F-FC29-4DC6-9020-FF41B59E513A}"
      },
      {
        "Path": "HKEY_LOCAL_MACHINE\\SOFTWARE\\Wow6432Node\\Microsoft\\Windows\\CurrentVersion\\Explorer\\MyComputer\\NameSpace\\",
        "Name": "{0DB7E03F-FC29-4DC6-9020-FF41B59E513A}"
      },
      {
        "Path": "HKEY_LOCAL_MACHINE\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Explorer\\MyComputer\\NameSpace\\",
        "Name": "{f86fa3ab-70d2-4fc7-9c99-fcbf05467f3a}"
      },
      {
        "Path": "HKEY_LOCAL_MACHINE\\SOFTWARE\\Wow6432Node\\Microsoft\\Windows\\CurrentVersion\\Explorer\\MyComputer\\NameSpace\\",
        "Name": "{f86fa3ab-70d2-4fc7-9c99-fcbf05467f3a}"
      },
      {
        "Path": "HKEY_LOCAL_MACHINE\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Explorer\\MyComputer\\NameSpace\\",
        "Name": "{3dfdf296-dbec-4fb4-81d1-6a3438bcf4de}"
      },
      {
        "Path": "HKEY_LOCAL_MACHINE\\SOFTWARE\\Wow6432Node\\Microsoft\\Windows\\CurrentVersion\\Explorer\\MyComputer\\NameSpace\\",
        "Name": "{3dfdf296-dbec-4fb4-81d1-6a3438bcf4de}"
      },
      {
        "Path": "HKEY_LOCAL_MACHINE\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Explorer\\MyComputer\\NameSpace\\",
        "Name": "{24ad3ad4-a569-4530-98e1-ab02f9417aa8}"
      },
      {
        "Path": "HKEY_LOCAL_MACHINE\\SOFTWARE\\Wow6432Node\\Microsoft\\Windows\\CurrentVersion\\Explorer\\MyComputer\\NameSpace\\",
        "Name": "{24ad3ad4-a569-4530-98e1-ab02f9417aa8}"
      },
      {
        "Path": "HKEY_LOCAL_MACHINE\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Explorer\\MyComputer\\NameSpace\\",
        "Name": "{088e3905-0323-4b02-9826-5d99428e115f}"
      },
      {
        "Path": "HKEY_LOCAL_MACHINE\\SOFTWARE\\Wow6432Node\\Microsoft\\Windows\\CurrentVersion\\Explorer\\MyComputer\\NameSpace\\",
        "Name": "{088e3905-0323-4b02-9826-5d99428e115f}"
      },
      {
        "Path": "HKEY_LOCAL_MACHINE\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Explorer\\MyComputer\\NameSpace\\",
        "Name": "{B4BFCC3A-DB2C-424C-B029-7FE99A87C641}"
      },
      {
        "Path": "HKEY_LOCAL_MACHINE\\SOFTWARE\\Wow6432Node\\Microsoft\\Windows\\CurrentVersion\\Explorer\\MyComputer\\NameSpace\\",
        "Name": "{B4BFCC3A-DB2C-424C-B029-7FE99A87C641}"
      },
      {
        "Path": "HKEY_LOCAL_MACHINE\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Explorer\\MyComputer\\NameSpace\\",
        "Name": "{d3162b92-9365-467a-956b-92703aca08af}"
      },
      {
        "Path": "HKEY_LOCAL_MACHINE\\SOFTWARE\\Wow6432Node\\Microsoft\\Windows\\CurrentVersion\\Explorer\\MyComputer\\NameSpace\\",
        "Name": "{d3162b92-9365-467a-956b-92703aca08af}"
      }
    ],
    "InvokeCommand": [
      ""
    ],
    "UndoCommand": [
      ""
    ]
  },
  {
    "name": "Optimize Windows Services",
    "description": "Disable (Print Spooler), (Fax), (Diagnostic Policy), (Downloaded Maps Manager), (Windows Error Reporting Service), (Remote Registry) , (Internet Connection Sharing), (Disables Telemetry and Data) ",
    "check": "false",
    "category": "Performance",
    "type": "service",
    "refresh": "false",
    "Service": [
      {
        "Name": "Spooler",
        "StartupType": "Disabled",
        "DefaultType": "Automatic"
      },
      {
        "Name": "Fax",
        "StartupType": "Disabled",
        "DefaultType": "Automatic"
      },
      {
        "Name": "DPS",
        "StartupType": "Disabled",
        "DefaultType": "Automatic"
      },
      {
        "Name": "MapsBroker",
        "StartupType": "Disabled",
        "DefaultType": "Automatic"
      },
      {
        "Name": "WerSvc",
        "StartupType": "Disabled",
        "DefaultType": "Manual"
      },
      {
        "Name": "RemoteRegistry",
        "StartupType": "Disabled",
        "DefaultType": "Disabled"
      },
      {
        "Name": "lmhosts",
        "StartupType": "Disabled",
        "DefaultType": "Manual"
      },
      {
        "Name": "SharedAccess",
        "StartupType": "Disabled",
        "DefaultType": "Manual"
      },
      {
        "Name": "DiagTrack",
        "StartupType": "Disabled",
        "DefaultType": "Manual"
      }
    ],
    "InvokeCommand": [
      ""
    ],
    "UndoCommand": [
      ""
    ]
  },
  {
    "name": "Remove Windows 10/11 Bloatware",
    "description": "BingNews, GetHelp, Getstarted, Messaging, Microsoft3DViewer, MicrosoftOfficeHub, MicrosoftSolitaireCollection, News, Office.Lens, Office.OneNote, Office.Sway, OneConnect, People, Print3D, RemoteDesktop, SkypeApp, StorePurchaseApp, Office.Todo.List, Whiteboard, WindowsAlarms, WindowsCamera, windowscommunicationsapps, WindowsFeedbackHub, WindowsMaps, WindowsSoundRecorder, Xbox.TCUI, XboxApp, XboxGameOverlay, XboxIdentityProvider, XboxSpeechToTextOverlay, ZuneMusic, ZuneVideo, Windows.Cortana, MSPaint, Clipchamp",
    "check": "false",
    "category": "Performance",
    "type": "AppxPackage",
    "refresh": "false",
    "RemoveAppxPackage": [
      {
        "Name": "Microsoft.BingNews"
      },
      {
        "Name": "Microsoft.BingWeather_1.0.6.0_x64__8wekyb3d8bbwe"
      },
      {
        "Name": "MicrosoftWindows.Client.WebExperience_cw5n1h2txyewy"
      },
      {
        "Name": "Microsoft.GetHelp"
      },
      {
        "Name": "Microsoft.XboxGamingOverlay"
      },
      {
        "Name": "Microsoft.BingWeather"
      },
      {
        "Name": "Microsoft.Messaging"
      },
      {
        "Name": "Microsoft.Microsoft3DViewer"
      },
      {
        "Name": "Microsoft.MicrosoftOfficeHub"
      },
      {
        "Name": "Microsoft.MicrosoftSolitaireCollection"
      },
      {
        "Name": "Microsoft.NetworkSpeedTest"
      },
      {
        "Name": "Microsoft.News"
      },
      {
        "Name": "Microsoft.549981C3F5F10"
      },
      {
        "Name": "Microsoft.Office.Lens"
      },
      {
        "Name": "Microsoft.Office.OneNote"
      },
      {
        "Name": "Microsoft.Office.Sway"
      },
      {
        "Name": "Microsoft.OneConnect"
      },
      {
        "Name": "Microsoft.People"
      },
      {
        "Name": "Microsoft.Print3D"
      },
      {
        "Name": "Microsoft.RemoteDesktop"
      },
      {
        "Name": "Microsoft.SkypeApp"
      },
      {
        "Name": "Microsoft.StorePurchaseApp"
      },
      {
        "Name": "Microsoft.Office.Todo.List"
      },
      {
        "Name": "Microsoft.Whiteboard"
      },
      {
        "Name": "Microsoft.WindowsAlarms"
      },
      {
        "Name": "Microsoft.WindowsCamera"
      },
      {
        "Name": "Microsoft.windowscommunicationsapps"
      },
      {
        "Name": "Microsoft.WindowsFeedbackHub"
      },
      {
        "Name": "Microsoft.WindowsMaps"
      },
      {
        "Name": "Microsoft.YourPhone"
      },
      {
        "Name": "Microsoft.WindowsSoundRecorder"
      },
      {
        "Name": "Microsoft.Xbox.TCUI"
      },
      {
        "Name": "Microsoft.XboxApp"
      },
      {
        "Name": "Microsoft.XboxGameOverlay"
      },
      {
        "Name": "Microsoft.GamingApp"
      },
      {
        "Name": "Microsoft.XboxIdentityProvider"
      },
      {
        "Name": "Microsoft.XboxSpeechToTextOverlay"
      },
      {
        "Name": "Microsoft.Windows.Cortana"
      },
      {
        "Name": "Microsoft.Windows.DevHome"
      },
      {
        "Name": "Microsoft.MixedReality.Portal"
      },
      {
        "Name": "Microsoft.MSPaint"
      },
      {
        "Name": "Microsoft.Getstarted"
      },
      {
        "Name": "EclipseManager"
      },
      {
        "Name": "ActiproSoftwareLLC"
      },
      {
        "Name": "AdobeSystemsIncorporated.AdobePhotoshopExpress"
      },
      {
        "Name": "Duolingo-LearnLanguagesforFree"
      },
      {
        "Name": "PandoraMediaInc"
      },
      {
        "Name": "CandyCrush"
      },
      {
        "Name": "BubbleWitch3Saga"
      },
      {
        "Name": "Wunderlist"
      },
      {
        "Name": "Flipboard"
      },
      {
        "Name": "Twitter"
      },
      {
        "Name": "Facebook"
      },
      {
        "Name": "Minecraft"
      },
      {
        "Name": "Royal Revolt"
      },
      {
        "Name": "Sway"
      },
      {
        "Name": "Microsoft.549981"
      },
      {
        "Name": "Microsoft.MicrosoftStickyNotes"
      },
      {
        "Name": "TikTok.TikTok_8wekyb3d8bbwe"
      },
      {
        "Name": "TikTok"
      },
      {
        "Name": "Microsoft.ZuneMusic"
      },
      {
        "Name": "Microsoft.ZuneVideo"
      }
    ],
    "InvokeCommand": [
      ""
    ],
    "UndoCommand": [
      ""
    ]
  },
  {
    "name": "Disable Hibernate",
    "description": "Hibernate is a power-saving mode in Microsoft Windows operating systems that allows the system to save the current state of your computer to the hard disk and then power down completely.",
    "check": "false",
    "category": "Performance",
    "type": "command",
    "refresh": "false",
    "Registry": [
      {
        "Path": "HKLM:\\System\\CurrentControlSet\\Control\\Session Manager\\Power",
        "Name": "HibernateEnabled",
        "Type": "DWord",
        "Value": "0",
        "defaultValue": "1"
      },
      {
        "Path": "HKLM:\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Explorer\\FlyoutMenuSettings",
        "Name": "ShowHibernateOption",
        "Type": "DWord",
        "Value": "0",
        "defaultValue": "1"
      }
    ],
    "InvokeCommand": [
      "powercfg.exe /hibernate off"
    ],
    "UndoCommand": [
      "powercfg.exe /hibernate on"
    ]
  },
  {
    "name": "Disable OneDrive",
    "description": "Disabling OneDrive for Windows 10 and 11",
    "check": "false",
    "category": "Performance",
    "type": "modifying",
    "refresh": "false",
    "Registry": [
      {
        "Path": "HKLM:\\SOFTWARE\\Policies\\Microsoft\\Windows\\OneDrive",
        "Name": "DisableFileSyncNGSC",
        "Type": "DWord",
        "Value": "1",
        "defaultValue": "0"
      },
      {
        "Path": "HKCU:\\Software\\Microsoft\\Windows\\CurrentVersion\\Run",
        "Name": "OneDrive",
        "Type": "String",
        "Value": "",
        "defaultValue": ""
      }
    ],
    "InvokeCommand": [
      ""
    ],
    "UndoCommand": [
      ""
    ]
  },
  {
    "name": "Activate Windows Old Photo Viewer",
    "description": "This tweak enables the classic Windows Photo Viewer for Windows 10.",
    "check": "false",
    "category": "Classic",
    "type": "modifying",
    "refresh": "false",
    "Registry": [
      {
        "Path": "HKLM:\\SOFTWARE\\Microsoft\\Windows Photo Viewer\\Capabilities\\FileAssociations",
        "Name": ".jpg",
        "Type": "String",
        "Value": "PhotoViewer.FileAssoc.Tiff",
        "defaultValue": "0"
      },
      {
        "Path": "HKLM:\\SOFTWARE\\Microsoft\\Windows Photo Viewer\\Capabilities\\FileAssociations",
        "Name": ".jpeg",
        "Type": "String",
        "Value": "PhotoViewer.FileAssoc.Tiff",
        "defaultValue": "0"
      },
      {
        "Path": "HKLM:\\SOFTWARE\\Microsoft\\Windows Photo Viewer\\Capabilities\\FileAssociations",
        "Name": ".png",
        "Type": "String",
        "Value": "PhotoViewer.FileAssoc.Tiff",
        "defaultValue": "0"
      },
      {
        "Path": "HKLM:\\SOFTWARE\\Microsoft\\Windows Photo Viewer\\Capabilities\\FileAssociations",
        "Name": ".bmp",
        "Type": "String",
        "Value": "PhotoViewer.FileAssoc.Tiff",
        "defaultValue": "0"
      },
      {
        "Path": "HKLM:\\SOFTWARE\\Microsoft\\Windows Photo Viewer\\Capabilities\\FileAssociations",
        "Name": ".gif",
        "Type": "String",
        "Value": "PhotoViewer.FileAssoc.Tiff",
        "defaultValue": "0"
      },
      {
        "Path": "HKLM:\\SOFTWARE\\Microsoft\\Windows Photo Viewer\\Capabilities\\FileAssociations",
        "Name": "ApplicationIcon",
        "Type": "String",
        "Value": "C:\\Program Files (x86)\\Windows Photo Viewer\\photoviewer.dll",
        "defaultValue": "0"
      },
      {
        "Path": "HKLM:\\SOFTWARE\\Microsoft\\Windows Photo Viewer\\Capabilities\\FileAssociations",
        "Name": "ApplicationName",
        "Type": "String",
        "Value": "Windows Photo Viewer",
        "defaultValue": "0"
      }
    ],
    "InvokeCommand": [
      ""
    ],
    "UndoCommand": [
      ""
    ]
  },
  {
    "name": "Restore Classic Context Menu Windows 11",
    "description": "Restore the old context menu for Windows 11",
    "check": "false",
    "category": "Classic",
    "type": "modifying",
    "refresh": "true",
    "Registry": [
      {
        "Path": "HKCU:\\Software\\Classes\\CLSID\\",
        "Name": "{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}",
        "Type": "String",
        "Value": "",
        "defaultValue": ""
      },
      {
        "Path": "HKCU:\\Software\\Classes\\CLSID\\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\\InprocServer32",
        "Name": "",
        "Type": "String",
        "Value": "",
        "defaultValue": "default"
      }
    ],
    "InvokeCommand": [
      ""
    ],
    "UndoCommand": [
      ""
    ]
  },
  {
    "name": "Remove Copilot in Windows 11",
    "description": "Copilot in Windows provides centralized generative AI assistance to your users right from the Windows desktop Copilot in Windows appears as a side bar docked on the Windows desktop and is designed to help users get things done in Windows Copilot in Windows can perform common tasks in Windows like changing Windows settings which makes it different from the browserbased Copilot in Edge",
    "check": "false",
    "category": "Privacy",
    "type": "modifying",
    "refresh": "true",
    "Registry": [
      {
        "Path": "HKCU:\\Software\\Policies\\Microsoft\\Windows\\WindowsCopilot",
        "Name": "TurnOffWindowsCopilot",
        "Type": "DWord",
        "Value": "1",
        "defaultValue": "0"
      },
      {
        "Path": "HKCU:\\SOFTWARE\\Policies\\Microsoft\\Windows\\WindowsCopilot",
        "Name": "TurnOffWindowsCopilot",
        "Type": "DWord",
        "Value": "1",
        "defaultValue": "0"
      },
      {
        "Path": "HKLM:\\SOFTWARE\\Policies\\Microsoft\\Edge",
        "Name": "HubsSidebarEnabled",
        "Type": "DWord",
        "Value": "0",
        "defaultValue": "1"
      },
      {
        "Path": "HKCU:\\Software\\Policies\\Microsoft\\Windows\\Explorer",
        "Name": "DisableSearchBoxSuggestions",
        "Type": "DWord",
        "Value": "1",
        "defaultValue": "0"
      },
      {
        "Path": "HKLM:\\SOFTWARE\\Policies\\Microsoft\\Windows\\Explorer",
        "Name": "DisableSearchBoxSuggestions",
        "Type": "DWord",
        "Value": "1",
        "defaultValue": "0"
      }
    ],
    "InvokeCommand": [
      ""
    ],
    "UndoCommand": [
      ""
    ]
  },
  {
    "name": "Disable Recall Snapshots in Windows 11 24H",
    "description": "Recall is an upcoming preview experience exclusive to Copilot+ PCs that will help you easily find and remember things you''ve seen using natural language.",
    "check": "false",
    "category": "Privacy",
    "type": "modifying",
    "refresh": "true",
    "Registry": [
      {
        "Path": "HKCU:\\Software\\Policies\\Microsoft\\Windows\\WindowsAI",
        "Name": "DisableAIDataAnalysis",
        "Type": "DWord",
        "Value": "1",
        "defaultValue": "0"
      },
      {
        "Path": "HKLM:\\SOFTWARE\\Policies\\Microsoft\\Windows\\WindowsAI",
        "Name": "DisableAIDataAnalysis",
        "Type": "DWord",
        "Value": "1",
        "defaultValue": "0"
      }
    ],
    "InvokeCommand": [
      ""
    ],
    "UndoCommand": [
      ""
    ]
  },
  {
    "name": "Delete Thumbnail Cache",
    "description": "removing the stored image thumbnails on your computer These thumbnails are small versions of images used by the operating system to display image previews quickly Over time the cache can become large or corrupted causing slowdowns or display issues Deleting it can free up space and resolve such issues as the system will regenerate",
    "check": "false",
    "category": "Performance",
    "type": "command",
    "refresh": "false",
    "InvokeCommand": [
      "Remove-Item \"$env:LocalAppData\\Microsoft\\Windows\\Explorer\\thumbcache*\" -Force -Recurse"
    ],
    "UndoCommand": [
      ""
    ]
  },
  {
    "name": "Old Volume Control in Windows 10",
    "description": "The old volume control in Windows 10 refers to the classic audio mixer interface that was used in earlier versions of Windows, before the modern volume control system was introduced. This interface allowed users to adjust the volume for individual applications separately, providing a more detailed and flexible approach to managing audio levels.",
    "check": "false",
    "category": "Classic",
    "type": "modifying",
    "refresh": "false",
    "Registry": {
      "Path": "HKLM:\\Software\\Microsoft\\Windows NT\\CurrentVersion\\MTCUVC",
      "Name": "EnableMtcUvc",
      "Type": "DWord",
      "Value": "0",
      "defaultValue": "1"
    },
    "InvokeCommand": [
      ""
    ],
    "UndoCommand": [
      ""
    ]
  },
  {
    "name": "Disable Toggle Key Sounds",
    "description": "Toggle key sounds in Windows are audio cues that play when you press the Caps Lock, Num Lock, or Scroll Lock keys. These sounds help users identify when these keys are activated or deactivated.",
    "check": "false",
    "category": "Classic",
    "type": "modifying",
    "refresh": "false",
    "Registry": {
      "Path": "HKCU:\\Control Panel\\Accessibility\\ToggleKeys",
      "Name": "Flags",
      "Type": "String",
      "Value": "58",
      "defaultValue": "62"
    },
    "InvokeCommand": [
      ""
    ],
    "UndoCommand": [
      ""
    ]
  },
  {
    "name": "Clear Start Menu Windows 11",
    "description": "Clear all pinned apps from the start menu",
    "check": "false",
    "category": "Performance",
    "type": "command",
    "refresh": "false",
    "InvokeCommand": [
      "Invoke-RestMethod https://raw.githubusercontent.com/emadadel4/WindowsTweaks/main/ClearStartMenu.ps1 | Invoke-Expression"
    ],
    "UndoCommand": [
      ""
    ]
  }
]
' | ConvertFrom-Json
#===========================================================================
#endregion End Database /APPS/TWEEAKS/Quotes/OST/Settings
#===========================================================================
#===========================================================================
#region Begin WPF Window
#===========================================================================
$inputXML = '
<!--Window-->
<Window
xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
x:Name="Window" Title="Install Tweak Tool #StandWithPalestine" WindowStartupLocation = "CenterScreen" 
Background="{DynamicResource BGColor}"
Height="622" Width="799" MinHeight="622" MinWidth="799"  Topmost="False"  ShowInTaskbar = "True" Icon="https://raw.githubusercontent.com/emadadel4/ITT/main/Assets/Icons/icon.ico">

<Window.Resources>
    <!--Button Style-->
      <Style TargetType="Button">
        <Setter Property="Background" Value="{DynamicResource BGButtonColor}"/>
        <Setter Property="Foreground" Value="{DynamicResource DefaultTextColor2}"/>
        <Setter Property="BorderBrush" Value="Transparent"/>
        <Setter Property="BorderThickness" Value="1"/>
        
        <Setter Property="Template">
            <Setter.Value>
                <ControlTemplate TargetType="Button">
                    <Border CornerRadius="20" BorderBrush="{TemplateBinding BorderBrush}" BorderThickness="{TemplateBinding BorderThickness}" Background="{TemplateBinding Background}">
                        <ContentPresenter HorizontalAlignment="Center"
                                            VerticalAlignment="Center"/>
                        
                    </Border>
                </ControlTemplate>
            </Setter.Value>
        </Setter>
        <Style.Triggers>
            <Trigger Property="IsMouseOver" Value="True">
                <Setter Property="Background" Value="{DynamicResource ButtonHighlightColor}"/>
                <Setter Property="Foreground" Value="{DynamicResource FGButtonColor}"/>
            </Trigger>
        </Style.Triggers>
    </Style>
<!--End Button Style-->

<!--Textbox Style-->
  <Style TargetType="TextBox">
    <Setter Property="Background" Value="{DynamicResource FGColor}"/>
      <Setter Property="Foreground" Value="{DynamicResource FGTextColor}"/>
      <Setter Property="BorderBrush" Value="{DynamicResource BorderBrush}"/>
      <Setter Property="BorderThickness" Value="0"/>
      <Setter Property="Template">
          <Setter.Value>
              <ControlTemplate TargetType="TextBox">
                  <Border Margin="0" Background="{TemplateBinding Background}"
                          BorderBrush="{TemplateBinding BorderBrush}"
                          BorderThickness="{TemplateBinding BorderThickness}"
                          CornerRadius="16">
                      <ScrollViewer x:Name="PART_ContentHost" />
                  </Border>
              </ControlTemplate>
          </Setter.Value>
      </Setter>
      <Style.Triggers>
              <Trigger Property="IsFocused" Value="True">
                  <Setter Property="BorderThickness" Value="2"/>
                  <Setter Property="BorderBrush" Value="{DynamicResource BGButtonColor}"/>
                  <Setter Property="Background" Value="{DynamicResource FGColor}"/>
              </Trigger>
          </Style.Triggers>
  </Style>
<!--End Textbox Style-->

<!--Label Style-->
  <Style TargetType="Label">
    <Setter Property="Background" Value="{DynamicResource Label}"/>
    <Setter Property="Foreground" Value="{DynamicResource DefaultTextColor}"/>
    <Setter Property="FontSize" Value="20"/>
    <Setter Property="Template">
        <Setter.Value>
            <ControlTemplate TargetType="Label">
                <Border Padding="4" Background="{TemplateBinding Background}"
                        BorderBrush="{TemplateBinding BorderBrush}"
                        BorderThickness="{TemplateBinding BorderThickness}"
                        CornerRadius="0">
                    <ContentPresenter HorizontalAlignment="{TemplateBinding HorizontalContentAlignment}"
                                      VerticalAlignment="{TemplateBinding VerticalContentAlignment}"/>
                </Border>
            </ControlTemplate>
        </Setter.Value>
    </Setter>
  </Style>
  
<!--End Label Style-->

<!--TextBlock Style-->
  <Style TargetType="TextBlock">
      <Setter Property="Foreground" Value="{DynamicResource FGTextColor}"/>
  </Style>
<!--End TextBlock Style-->

<!--CheckBox Style-->
  <Style TargetType="CheckBox">
      <Setter Property="Foreground" Value="{DynamicResource DefaultTextColor}"/>
      <Setter Property="Margin" Value="0,0,0,0"/>
      <Setter Property="BorderThickness" Value="0"/>
        <Setter Property="Template">
                <Setter.Value>
                    <ControlTemplate TargetType="CheckBox">
                        <StackPanel Orientation="Horizontal">
                            <!-- Default checkbox icon -->
                            <Grid Width="18" Height="18" Margin="0,0,5,0">
                                <Ellipse Width="18" Height="18" Fill="{TemplateBinding Background}" Stroke="{TemplateBinding BorderBrush}" StrokeThickness="1"/>
                                <Path x:Name="CheckMark" Width="7" Height="7" SnapsToDevicePixels="False" Stroke="blue" StrokeThickness="2" Data="M 0 3.5 L 7 3.5 M 3.5 0 L 3.5 7" Visibility="Collapsed"/>
                            </Grid>
                            <!-- Content with background -->
                            <Border CornerRadius="0" Background="{DynamicResource checkboxBG}"
                                    BorderBrush="{TemplateBinding BorderBrush}"
                                    BorderThickness="{TemplateBinding BorderThickness}"
                                    Padding="5">
                                <ContentPresenter/>
                            </Border>
                        </StackPanel>
                        <ControlTemplate.Triggers>
                            <Trigger Property="IsChecked" Value="True">
                                <Setter TargetName="CheckMark" Property="Visibility" Value="Visible"/>
                                <Setter Property="Background" Value="{DynamicResource BGButtonColor}"/>
                                <Setter TargetName="CheckMark" Property="Stroke" Value="white"/>
                                <Setter Property="BorderBrush" Value="{DynamicResource highlight}"/>
                            </Trigger>
                              <Trigger Property="IsChecked" Value="False">
                                <Setter Property="Background" Value="white"/>
                            </Trigger>
                         <Trigger Property="IsMouseOver" Value="True">
                            <Setter Property="Background" Value="{DynamicResource highlight}"/>
                            <Setter  Property="BorderBrush" Value="{DynamicResource highlight}"/>
                            <Setter  Property="BorderThickness" Value="0.5"/>
                        </Trigger>
                        </ControlTemplate.Triggers>
                    </ControlTemplate>
                </Setter.Value>
            </Setter>
  </Style>
<!--End CheckBox Style-->

 <!-- Define the Menu Style -->
    <Style TargetType="Menu">
        <Setter Property="Background" Value="#FFFFFF"/>
        <Setter Property="Foreground" Value="#000000"/>
        <Setter Property="FontSize" Value="14"/>
        <Setter Property="FontFamily" Value="Segoe UI"/>
        <Setter Property="Margin" Value="5"/>
        <Setter Property="Template">
            <Setter.Value>
                <ControlTemplate TargetType="Menu">
                    <Border Background="{TemplateBinding Background}" 
                            BorderBrush="{TemplateBinding BorderBrush}" 
                            BorderThickness="0" 
                            CornerRadius="8">
                        <ItemsPresenter />
                    </Border>
                </ControlTemplate>
            </Setter.Value>
        </Setter>
    </Style>

    <Style TargetType="MenuItem">
        <Setter Property="Background" Value="Transparent"/>
        <Setter Property="Foreground" Value="#000000"/>
        <Setter Property="BorderBrush" Value="#000000"/>
        <Setter Property="FontSize" Value="14"/>
        <Setter Property="FontFamily" Value="Segoe UI"/>
        <Setter Property="Margin" Value="1"/>
        <Setter Property="Padding" Value="0"/>
        <Setter Property="Template">
            <Setter.Value>
                <ControlTemplate TargetType="MenuItem">
                    <Border x:Name="Border"
                            Background="{TemplateBinding Background}" 
                            BorderBrush="{TemplateBinding BorderBrush}"
                            HorizontalAlignment="Left"
                            Padding="5"
                            CornerRadius="2">
                        <Grid>
                            <Grid.ColumnDefinitions>
                                <ColumnDefinition Width="Auto"/>
                                <ColumnDefinition Width="*"/>
                                <ColumnDefinition Width="Auto"/>
                            </Grid.ColumnDefinitions>
                            
                            <!-- Icon -->
                            <ContentPresenter Grid.Column="0" 
                                            ContentSource="Icon" 
                                            HorizontalAlignment="Left"
                                            VerticalAlignment="Center"
                                            Margin="0,0,4,0"/>
                            
                            <!-- Text -->
                            <TextBlock x:Name="TextBlock"
                                    Grid.Column="1" 
                                    Text="{TemplateBinding Header}"
                                    Foreground="{DynamicResource DefaultTextColor}"/>
                            
                            <!-- Arrow Down Indicator -->
                            <Path x:Name="Arrow"
                                Grid.Column="2"
                                Data="M0,0 L4,4 L8,0 Z"
                                Fill="{DynamicResource DefaultTextColor}"
                                HorizontalAlignment="Center"
                                VerticalAlignment="Center"
                                Margin="4,0,0,0"
                                Visibility="Collapsed"/>
                            
                            <!-- Popup for Submenu -->
                            <Popup Name="PART_Popup" 
                                Placement="Bottom" 
                                IsOpen="{TemplateBinding IsSubmenuOpen}" 
                                AllowsTransparency="True" 
                                Focusable="False" 
                                PopupAnimation="Slide">
                                <Border Background="{DynamicResource FGColor}" 
                                        BorderBrush="{DynamicResource BorderBrush}" 
                                        BorderThickness="0.8"
                                        CornerRadius="5">
                                    <StackPanel IsItemsHost="True" 
                                                KeyboardNavigation.DirectionalNavigation="Cycle"/>
                                </Border>
                            </Popup>
                        </Grid>
                    </Border>
                    <ControlTemplate.Triggers>
                        <Trigger Property="IsMouseOver" Value="True">
                            <!-- Adjust appearance on hover if needed -->
                            <!-- <Setter TargetName="Border" Property="Background" Value="{DynamicResource BGButtonColor}"/>
                            <Setter TargetName="TextBlock" Property="Foreground" Value="{DynamicResource DefaultTextColor2}"/> -->
                        </Trigger>
                        <Trigger Property="HasItems" Value="True">
                            <Setter TargetName="Arrow" Property="Visibility" Value="Visible"/>
                        </Trigger>
                    </ControlTemplate.Triggers>
                </ControlTemplate>
            </Setter.Value>
        </Setter>
    </Style>
<!-- End Define the Menu Style -->

<!--ListViewItem Style-->
    <Style TargetType="ListViewItem">
        <Setter Property="Background" Value="{DynamicResource FGColor}"/>
        <Setter Property="Margin" Value="3"/>
        <Setter Property="BorderThickness" Value="0"/>
        <Setter Property="Padding" Value="0"/>
        <Setter Property="Template">
            <Setter.Value>
                <ControlTemplate TargetType="ListViewItem">
                    <Border Background="{TemplateBinding Background}"
                            CornerRadius="0" 
                            BorderBrush="{TemplateBinding BorderBrush}"
                            BorderThickness="{TemplateBinding BorderThickness}">
                        <ContentPresenter HorizontalAlignment="Left"
                                        VerticalAlignment="Center"
                                        ContentSource="Content"/>
                    </Border>
                </ControlTemplate>
            </Setter.Value>
        </Setter>
    </Style>
<!--End ListViewItem Style-->


<!--Scrollbar Thumbs-->
    <Style x:Key="ScrollThumbs" TargetType="{x:Type Thumb}">
        <Setter Property="Template">
            <Setter.Value>
                <ControlTemplate TargetType="{x:Type Thumb}">
                    <Grid x:Name="Grid">
                        <Rectangle HorizontalAlignment="Stretch" VerticalAlignment="Stretch" Width="Auto" Height="Auto" Fill="Transparent" />
                        <Border x:Name="Rectangle1" CornerRadius="5" HorizontalAlignment="Stretch" VerticalAlignment="Stretch" Width="Auto" Height="Auto" Background="{TemplateBinding Background}" />
                    </Grid>
                    <ControlTemplate.Triggers>
                        <Trigger Property="Tag" Value="Horizontal">
                            <Setter TargetName="Rectangle1" Property="Width" Value="Auto" />
                            <Setter TargetName="Rectangle1" Property="Height" Value="7" />
                        </Trigger>
                    </ControlTemplate.Triggers>
                </ControlTemplate>
            </Setter.Value>
        </Setter>
    </Style>
    <Style x:Key="{x:Type ScrollBar}" TargetType="{x:Type ScrollBar}">
        <Setter Property="Stylus.IsFlicksEnabled" Value="false" />
        <Setter Property="Foreground" Value="{DynamicResource BGButtonColor}" />
        <Setter Property="Background" Value="{DynamicResource FGColor}" />
        <Setter Property="Width" Value="8" />
        <Setter Property="Template">
            <Setter.Value>
                <ControlTemplate TargetType="{x:Type ScrollBar}">
                    <Grid x:Name="GridRoot" Width="8" Background="{TemplateBinding Background}">
                        <Grid.RowDefinitions>
                            <RowDefinition Height="0.00001*" />
                        </Grid.RowDefinitions>
                        <Track x:Name="PART_Track" Grid.Row="0" IsDirectionReversed="true" Focusable="false">
                            <Track.Thumb>
                                <Thumb x:Name="Thumb" Background="{TemplateBinding Foreground}" Style="{DynamicResource ScrollThumbs}" />
                            </Track.Thumb>
                            <Track.IncreaseRepeatButton>
                                <RepeatButton x:Name="PageUp" Command="ScrollBar.PageDownCommand" Opacity="0" Focusable="false" />
                            </Track.IncreaseRepeatButton>
                            <Track.DecreaseRepeatButton>
                                <RepeatButton x:Name="PageDown" Command="ScrollBar.PageUpCommand" Opacity="0" Focusable="false" />
                            </Track.DecreaseRepeatButton>
                        </Track>
                    </Grid>
                    <ControlTemplate.Triggers>
                        <Trigger SourceName="Thumb" Property="IsMouseOver" Value="true">
                            <Setter Value="{DynamicResource ButtonSelectBrush}" TargetName="Thumb" Property="Background" />
                        </Trigger>
                        <Trigger SourceName="Thumb" Property="IsDragging" Value="true">
                            <Setter Value="{DynamicResource DarkBrush}" TargetName="Thumb" Property="Background" />
                        </Trigger>
                        <Trigger Property="IsEnabled" Value="false">
                            <Setter TargetName="Thumb" Property="Visibility" Value="Collapsed" />
                        </Trigger>
                        <Trigger Property="Orientation" Value="Horizontal">
                            <Setter TargetName="GridRoot" Property="LayoutTransform">
                                <Setter.Value>
                                    <RotateTransform Angle="-90" />
                                </Setter.Value>
                            </Setter>
                            <Setter TargetName="PART_Track" Property="LayoutTransform">
                                <Setter.Value>
                                    <RotateTransform Angle="-90" />
                                </Setter.Value>
                            </Setter>
                            <Setter Property="Width" Value="Auto" />
                            <Setter Property="Height" Value="8" />
                            <Setter TargetName="Thumb" Property="Tag" Value="Horizontal" />
                            <Setter TargetName="PageDown" Property="Command" Value="ScrollBar.PageLeftCommand" />
                            <Setter TargetName="PageUp" Property="Command" Value="ScrollBar.PageRightCommand" />
                        </Trigger>
                    </ControlTemplate.Triggers>
                </ControlTemplate>
            </Setter.Value>
        </Setter>
    </Style>
<!--End Scrollbar Thumbs-->

<!--TabControl Style-->
    <Style TargetType="TabItem">
        <Setter Property="Template">
            <Setter.Value>
                <ControlTemplate TargetType="TabItem">
                    <Border Name="Border" CornerRadius="4" BorderThickness="0,0,0,0" Padding="8" BorderBrush="Transparent"  Margin="5,5">
                        <ContentPresenter x:Name="ContentSite"
                        VerticalAlignment="Center"
                        HorizontalAlignment="Center"
                        ContentSource="Header"
                        />
                    </Border>
                    <ControlTemplate.Triggers>
                        <Trigger Property="IsSelected" Value="True">
                            <Setter TargetName="Border" Property="Background" Value="{DynamicResource BGButtonColor}" />
                            <Setter Property="Foreground" Value="white" />
                        </Trigger>
                        <Trigger Property="IsSelected" Value="False">
                            <Setter TargetName="Border" Property="Background" Value="{DynamicResource FGColor}" />
                            <Setter Property="Foreground" Value="{DynamicResource DefaultTextColor}" />
                        </Trigger>
                    </ControlTemplate.Triggers>
                </ControlTemplate>
            </Setter.Value>
        </Setter>
    </Style>
<!--End TabControl Style-->

<!--ComboBox Style-->
    <Style TargetType="ComboBox">
        <Setter Property="Background" Value="{DynamicResource FGColor}"/>
        <Setter Property="BorderBrush" Value="{DynamicResource FGColor}"/>
        <Setter Property="Foreground" Value="{DynamicResource DefaultTextColor}"/>
        <Setter Property="BorderThickness" Value="1"/>
        <Setter Property="Padding" Value="6,3"/>
        <Setter Property="HorizontalContentAlignment" Value="Left"/>
        <Setter Property="VerticalContentAlignment" Value="Center"/>
        <Setter Property="ScrollViewer.HorizontalScrollBarVisibility" Value="Disabled"/>
        <Setter Property="ScrollViewer.VerticalScrollBarVisibility" Value="Auto"/>
        <Setter Property="Template">
            <Setter.Value>
                <ControlTemplate TargetType="ComboBox">
                    <Grid>
                        <ToggleButton 
                            Name="ToggleButton"
                            Grid.Column="2" 
                            Focusable="false"
                            IsChecked="{Binding Path=IsDropDownOpen, Mode=TwoWay, RelativeSource={RelativeSource TemplatedParent}}"
                            ClickMode="Press"
                            Background="Transparent"
                            BorderBrush="Transparent">
                            <ToggleButton.Template>
                                <ControlTemplate TargetType="ToggleButton">
                                    <Border Name="Border" Background="{TemplateBinding Background}" BorderBrush="{TemplateBinding BorderBrush}" BorderThickness="{TemplateBinding BorderThickness}">
                                        <Grid>
                                            <ContentPresenter HorizontalAlignment="Center" VerticalAlignment="Center"/>
                                            <Path x:Name="Arrow" Data="M 0 0 L 4 4 L 8 0 Z" Fill="{DynamicResource DefaultTextColor}" HorizontalAlignment="Right" Margin="5" VerticalAlignment="Center"/>
                                        </Grid>
                                    </Border>
                                </ControlTemplate>
                            </ToggleButton.Template>
                        </ToggleButton>
                        <ContentPresenter
                            Name="ContentSite"
                            IsHitTestVisible="False"
                            Content="{TemplateBinding SelectionBoxItem}"
                            ContentTemplate="{TemplateBinding SelectionBoxItemTemplate}"
                            ContentTemplateSelector="{TemplateBinding ItemTemplateSelector}"
                            Margin="3,3,23,3"
                            VerticalAlignment="Center"
                            HorizontalAlignment="Left"/>
                        <TextBox 
                            x:Name="PART_EditableTextBox"
                            Style="{x:Null}" 
                            HorizontalAlignment="Left" 
                            VerticalAlignment="Center"
                            Margin="3,3,23,3"
                            Focusable="True"
                            Background="Transparent"
                            Visibility="Hidden"
                            IsReadOnly="{TemplateBinding IsReadOnly}"/>
                        <Popup 
                            Name="Popup"
                            Placement="Bottom"
                            IsOpen="{TemplateBinding IsDropDownOpen}"
                            AllowsTransparency="True" 
                            Focusable="False"
                            PopupAnimation="Slide">
                            <Grid 
                                Name="DropDown"
                                SnapsToDevicePixels="True"
                                MinWidth="{TemplateBinding ActualWidth}"
                                MaxHeight="{TemplateBinding MaxDropDownHeight}">
                                <Border 
                                    x:Name="DropDownBorder"
                                    Background="{DynamicResource FGColor}" 
                                    BorderBrush="Gray" 
                                    BorderThickness="1"/>
                                <ScrollViewer Margin="4,6,4,6" SnapsToDevicePixels="True">
                                    <StackPanel IsItemsHost="True" KeyboardNavigation.DirectionalNavigation="Contained"/>
                                </ScrollViewer>
                            </Grid>
                        </Popup>
                    </Grid>
                    <ControlTemplate.Triggers>
                        <Trigger Property="HasItems" Value="false">
                            <Setter TargetName="DropDownBorder" Property="MinHeight" Value="95"/>
                        </Trigger>
                        <Trigger Property="IsEnabled" Value="false">
                            <Setter Property="Foreground" Value="Gray"/>
                        </Trigger>
                        <Trigger Property="IsGrouping" Value="true">
                            <Setter Property="ScrollViewer.CanContentScroll" Value="false"/>
                        </Trigger>
                    </ControlTemplate.Triggers>
                </ControlTemplate>
            </Setter.Value>
        </Setter>
    </Style>
<!--End ComboBox Style-->

<!--ToggleSwitchStyle Style-->
    <Style x:Key="ToggleSwitchStyle" TargetType="CheckBox">
        <Setter Property="Template">
            <Setter.Value>
                <ControlTemplate TargetType="CheckBox">
                    <StackPanel Orientation="Horizontal">
                        <TextBlock Text="{TemplateBinding Content}" VerticalAlignment="Center" Margin="0,0,5,0"/>
                        <Grid>
                            <Border Name="emad" Width="45"
                                    Height="20"
                                    Background="{DynamicResource Label}"
                                    CornerRadius="10"
                                    Margin="0,0,5,0"
                            />
                            <Border Name="ToggleSwitchButton"
                                    Width="12"
                                    Height="12"
                                    Background="Black"
                                    CornerRadius="12.5"
                                    Margin="5"
                                    HorizontalAlignment="Left"
                            />
                        </Grid>
                        <TextBlock>
                            <TextBlock.Style>
                                <Style TargetType="TextBlock">
                                    <Setter Property="Text" Value="Off"/>
                                    <Setter Property="Margin" Value="7"/>
                                    <Style.Triggers>
                                        <DataTrigger Binding="{Binding RelativeSource={RelativeSource TemplatedParent}, Path=IsChecked}" Value="True">
                                            <Setter Property="Text" Value="On"/>
                                        </DataTrigger>
                                    </Style.Triggers>
                                </Style>
                            </TextBlock.Style>
                        </TextBlock>
                    </StackPanel>
                    <ControlTemplate.Triggers>
                        <Trigger Property="IsChecked" Value="false">
                            <Trigger.ExitActions>
                                <RemoveStoryboard BeginStoryboardName="WPFToggleSwitchLeft" />
                                <BeginStoryboard x:Name="WPFToggleSwitchRight">
                                    <Storyboard>
                                        <ThicknessAnimation Storyboard.TargetProperty="Margin"
                                                Storyboard.TargetName="ToggleSwitchButton"
                                                Duration="0:0:0:0.10"
                                                From="0,0,0,0"
                                                To="25,0,0,0">
                                        </ThicknessAnimation>
                                    </Storyboard>
                                </BeginStoryboard>
                            </Trigger.ExitActions>
                            <Setter TargetName="ToggleSwitchButton" Property="Background" Value="{DynamicResource ToggleSwitchDisable}"/>
                            <Setter TargetName="emad" Property="BorderBrush" Value="{DynamicResource ToggleSwitchBorderBrush}"/>
                            <Setter TargetName="emad" Property="BorderThickness" Value="2"/>

                        </Trigger>
                        <Trigger Property="IsChecked" Value="true">
                            <Trigger.ExitActions>
                                <RemoveStoryboard BeginStoryboardName="WPFToggleSwitchRight" />
                                <BeginStoryboard x:Name="WPFToggleSwitchLeft">
                                    <Storyboard>
                                        <ThicknessAnimation Storyboard.TargetProperty="Margin"
                                                Storyboard.TargetName="ToggleSwitchButton"
                                                Duration="0:0:0:0.10"
                                                From="25,0,0,0"
                                                To="5,0,0,0">
                                        </ThicknessAnimation>
                                    </Storyboard>
                                </BeginStoryboard>
                            </Trigger.ExitActions>
                            <Setter TargetName="ToggleSwitchButton" Property="Background" Value="{DynamicResource ToggleSwitchEnable}"/>
                            <Setter TargetName="emad" Property="Background" Value="{DynamicResource BGButtonColor}"/>

                        </Trigger>
                    </ControlTemplate.Triggers>
                </ControlTemplate>
            </Setter.Value>
        </Setter>
    </Style>
<!--End ToggleSwitchStyle Style-->

    <!--Theme styles colors-->

        <!--Light mode -->
                <ResourceDictionary x:Key="Light">
                        <SolidColorBrush x:Key="BGColor" Color="White"/>
                        <SolidColorBrush x:Key="FGColor" Color="WhiteSmoke"/>
                        <SolidColorBrush x:Key="BGButtonColor" Color="#525FE1" />
                        <SolidColorBrush x:Key="ButtonHighlightColor" Color="#FF6C76E0" />
                        <SolidColorBrush x:Key="FGButtonColor" Color="White" />
                        <SolidColorBrush x:Key="FGTextColor" Color="Black" />
                        <SolidColorBrush x:Key="DefaultTextColor" Color="Black"/>
                        <SolidColorBrush x:Key="DefaultTextColor2" Color="White"/>
                        <SolidColorBrush x:Key="BorderBrush" Color="#FFB3B3B3"/>
                        <SolidColorBrush x:Key="ButtonBorder" Color="#525FE1"/>
                        <SolidColorBrush x:Key="Label" Color="LightBlue"/>
                        <SolidColorBrush x:Key="checkboxBG" Color="White"/>
                        <SolidColorBrush x:Key="highlight" Color="blue"/>
                        <SolidColorBrush x:Key="ToggleSwitchBG" Color="#282828"/>
                        <SolidColorBrush x:Key="ToggleSwitchFG" Color="#282828"/>
                        <SolidColorBrush x:Key="ToggleSwitchEnable" Color="white"/>
                        <SolidColorBrush x:Key="ToggleSwitchDisable" Color="black"/>
                        <SolidColorBrush x:Key="ToggleSwitchBorderBrush" Color="black"/>
                </ResourceDictionary>
        <!--Light mode -->

        <!--Dark mode-->
                <ResourceDictionary x:Key="Dark">
                        <SolidColorBrush x:Key="BGColor" Color="#FF121212"/>
                        <SolidColorBrush x:Key="FGColor" Color="#282828"/>
                        <SolidColorBrush x:Key="BGButtonColor" Color="#1DB954" />
                        <SolidColorBrush x:Key="FGButtonColor" Color="White" />
                        <SolidColorBrush x:Key="ButtonHighlightColor" Color="#FF45D477" />
                        <SolidColorBrush x:Key="FGTextColor" Color="WhiteSmoke" />
                        <SolidColorBrush x:Key="DefaultTextColor" Color="White"/>
                        <SolidColorBrush x:Key="DefaultTextColor2" Color="White"/>
                        <SolidColorBrush x:Key="BorderBrush" Color="WhiteSmoke" />
                        <SolidColorBrush x:Key="ButtonBorder" Color="#1DB954"/>
                        <SolidColorBrush x:Key="Label" Color="#3f3f3f"/>
                        <SolidColorBrush x:Key="checkboxBG" Color="#1DB954"/>
                        <SolidColorBrush x:Key="highlight" Color="#3cb043"/>
                        <SolidColorBrush x:Key="ToggleSwitchBG" Color="#282828"/>
                        <SolidColorBrush x:Key="ToggleSwitchFG" Color="#282828"/>
                        <SolidColorBrush x:Key="ToggleSwitchEnable" Color="white"/>
                        <SolidColorBrush x:Key="ToggleSwitchDisable" Color="#c9c9c7"/>
                        <SolidColorBrush x:Key="ToggleSwitchBorderBrush" Color="#c9c9c7"/>
                </ResourceDictionary>
        <!--Dark mode -->

<!--End Theme styles colors-->

</Window.Resources>

<Grid>
    <Grid.RowDefinitions>
            <RowDefinition Height="Auto"/>
            <RowDefinition Height="*"/>
            <RowDefinition Height="Auto"/>
    </Grid.RowDefinitions>
    <Grid>
        <!--Header Section-->


            <Grid.ColumnDefinitions>
                <ColumnDefinition Width="Auto"/>
                <ColumnDefinition Width="*"/>
            </Grid.ColumnDefinitions>

            <!--Menu-->
                <Menu Grid.Row="0" Grid.Column="0" Background="Transparent" BorderBrush="Transparent" HorizontalAlignment="Left" BorderThickness="0">
                            
                    <MenuItem IsEnabled="False">
                        <MenuItem.Icon>
                            <!--Logo-->
                            <Ellipse Name="logo" Margin="10,10,0,0" Width="70" Height="70">
                                <Ellipse.Fill>
                                    <ImageBrush ImageSource="https://raw.githubusercontent.com/emadadel4/ITT/main/Assets/Images/logo.png" />
                                </Ellipse.Fill>
                            </Ellipse>
                            <!--End Logo-->
                        </MenuItem.Icon>
                
                    </MenuItem>

                    <MenuItem Header="{Binding management}" FontFamily="arial" FontSize="13"  Margin="10,0,0,0" BorderBrush="Transparent" BorderThickness="0" VerticalAlignment="Center" HorizontalAlignment="Left">
                        <MenuItem.Icon>
                            <TextBlock FontFamily="Segoe MDL2 Assets" FontSize="15" Text=""/>
                        </MenuItem.Icon>
                        <MenuItem Name="sysinfo" Header="{Binding sysinfo}">
                            <MenuItem.Icon>
                                <TextBlock FontFamily="Segoe MDL2 Assets" FontSize="16" Text=""/>
                            </MenuItem.Icon>
                        </MenuItem>

                        <MenuItem Name="poweroption" Header="{Binding poweroptions}">
                            <MenuItem.Icon>
                                <TextBlock FontFamily="Segoe MDL2 Assets" FontSize="16" Text=""/>
                            </MenuItem.Icon>
                        </MenuItem>

                        <MenuItem Name="deviceManager" Header="{Binding devicemgr}">
                            <MenuItem.Icon>
                                <TextBlock FontFamily="Segoe MDL2 Assets" FontSize="16" Text=""/>
                            </MenuItem.Icon>
                        </MenuItem>
                        <MenuItem Name="services" Header="{Binding services}">
                            <MenuItem.Icon>
                                <TextBlock FontFamily="Segoe MDL2 Assets" FontSize="16" Text=""/>
                            </MenuItem.Icon>
                        </MenuItem>
                        <MenuItem Name="network" Header="{Binding networks}">
                            <MenuItem.Icon>
                                <TextBlock FontFamily="Segoe MDL2 Assets" FontSize="16" Text=""/>
                            </MenuItem.Icon>
                        </MenuItem>
                        <MenuItem Name="appsfeatures" Header="{Binding appsfeatures}">
                            <MenuItem.Icon>
                                <TextBlock FontFamily="Segoe MDL2 Assets" FontSize="16" Text=""/>
                            </MenuItem.Icon>
                        </MenuItem>
                        <MenuItem Name="taskmgr" Header="{Binding taskmgr}">
                            <MenuItem.Icon>
                                <TextBlock FontFamily="Segoe MDL2 Assets" FontSize="16" Text=""/>
                            </MenuItem.Icon>
                        </MenuItem>
                        <MenuItem Name="diskmgmt" Header="{Binding diskmgr}">
                            <MenuItem.Icon>
                                <TextBlock FontFamily="Segoe MDL2 Assets" FontSize="16" Text=""/>
                            </MenuItem.Icon>
                        </MenuItem>
                    </MenuItem>

                    <MenuItem Header="{Binding preferences}" FontFamily="arial" FontSize="13"  BorderBrush="Transparent" BorderThickness="0" VerticalAlignment="Center" HorizontalAlignment="Left">
                        <MenuItem.Icon>
                            <TextBlock FontFamily="Segoe MDL2 Assets" FontSize="15" HorizontalAlignment="Center" VerticalAlignment="Center" Text=""/>
                        </MenuItem.Icon>

                        <MenuItem Name="restorepoint" Header="{Binding restorepoint}">
                            <MenuItem.Icon>
                                <TextBlock FontFamily="Segoe MDL2 Assets" FontSize="16" Text=""/>
                            </MenuItem.Icon>
                        </MenuItem>

                        <MenuItem Name="chocoloc" Header="{Binding chocoloc}">
                            <MenuItem.Icon>
                                <TextBlock FontFamily="Segoe MDL2 Assets" FontSize="16" Text=""/>
                            </MenuItem.Icon>
                        </MenuItem>

                        <MenuItem Name="save" Header="{Binding saveapps}">
                            <MenuItem.Icon>
                                <TextBlock FontFamily="Segoe MDL2 Assets" FontSize="16" Text=""/>
                            </MenuItem.Icon>
                        </MenuItem>
                        <MenuItem Name="load" Header="{Binding loadapps}">
                            <MenuItem.Icon>
                                <TextBlock FontFamily="Segoe MDL2 Assets" FontSize="16" Text=""/>
                            </MenuItem.Icon>
                        </MenuItem>

                        <MenuItem Header="{Binding theme}">
                            <MenuItem.Icon>
                                <TextBlock FontFamily="Segoe MDL2 Assets" FontSize="16" Text=""/>
                            </MenuItem.Icon>
                            <MenuItem Name="systheme" Header="{Binding defaultTheme}"/>
                            <MenuItem Name="Dark" Header="{Binding Dark}"/>
                            <MenuItem Name="Light" Header="{Binding Light}"/>
                        </MenuItem>

                        <MenuItem Header="{Binding music}">
                            <MenuItem.Icon>
                                <TextBlock FontFamily="Segoe MDL2 Assets" FontSize="16" Text=""/>
                            </MenuItem.Icon>
                            <MenuItem Name="moff" Header="{Binding off}"/>
                            <MenuItem Name="mon" Header="{Binding on}"/>
                        </MenuItem>

                        <MenuItem Header="{Binding language}">
                                <MenuItem.Icon>
                                    <TextBlock FontFamily="Segoe MDL2 Assets" FontSize="16" Text=""/>
                                </MenuItem.Icon>
                                <MenuItem Name="ar" Header="عربي" />
                                <MenuItem Name="en" Header="English" />
                                <MenuItem Name="fr" Header="Français" />
                                <MenuItem Name="tr" Header="Türkçe" />
                                <MenuItem Name="zh" Header="中文" />
                                <MenuItem Name="ko" Header="한국어" />
                                <MenuItem Name="de" Header="Deutsch" />
                                <MenuItem Name="ru" Header="Русский" />
                                <MenuItem Name="es" Header="Español" />
                        </MenuItem>

                    
                        <MenuItem Name="ittshortcut" Header="{Binding ittlink}">
                            <MenuItem.Icon>
                                <TextBlock FontFamily="Segoe MDL2 Assets" FontSize="15" Text=""/>
                            </MenuItem.Icon>
                        </MenuItem>

                   

                    </MenuItem>
                    

                    <MenuItem Header="{Binding thirdparty}" FontFamily="arial" FontSize="13"  BorderThickness="0" VerticalAlignment="Center" HorizontalAlignment="Center">
                        <MenuItem.Icon>
                            <TextBlock FontFamily="Segoe MDL2 Assets" FontSize="15" Text=""/>
                        </MenuItem.Icon>


                        <MenuItem Name="mas" Header="{Binding mas}">
                            <MenuItem.Icon>
                                <TextBlock FontFamily="Segoe MDL2 Assets" FontSize="16" Text=""/>
                            </MenuItem.Icon>
                        </MenuItem>
                        <MenuItem Name="idm" Header="{Binding idm}">
                            <MenuItem.Icon>
                                <TextBlock FontFamily="Segoe MDL2 Assets" FontSize="16" Text=""/>
                            </MenuItem.Icon>
                        </MenuItem>

                        <MenuItem Name="winoffice" Header="{Binding winoffice}">
                            <MenuItem.Icon>
                                <TextBlock FontFamily="Segoe MDL2 Assets" FontSize="16" Text=""/>
                            </MenuItem.Icon>
                        </MenuItem>

                        <MenuItem Header="{Binding extensions}">
                            <MenuItem.Icon>
                                <TextBlock FontFamily="Segoe MDL2 Assets" FontSize="16" Text=""/>
                            </MenuItem.Icon>
                            
                            <MenuItem Name="uBlock" Header="uBlock Origin"/>
                            <MenuItem Name="unhook" Header="Unhook: Customize youtube"/>
                            <MenuItem Name="neat" Header="Neat Download Manager"/>
                        </MenuItem>

                        
                        
                    </MenuItem>

                    
                    <MenuItem Name="dev" Header="{Binding about}" FontFamily="arial" FontSize="13"  BorderBrush="Transparent" BorderThickness="1" VerticalAlignment="Center" HorizontalAlignment="Center">
                        <MenuItem.Icon>
                            <TextBlock FontFamily="Segoe MDL2 Assets" FontSize="15" Text=""/>
                        </MenuItem.Icon>
                    </MenuItem>


                </Menu>
            <!--End Menu-->


            <Grid Grid.Column="1"  HorizontalAlignment="Right" Margin="0,0,20,0">

                <Grid.ColumnDefinitions>
                    <ColumnDefinition Width="Auto"/>
                    <ColumnDefinition Width="Auto"/>
                </Grid.ColumnDefinitions>
                
                <!--Catagory-->
                    <ComboBox SelectedIndex="0" Name="category" Grid.Column="0" VerticalAlignment="Center" HorizontalAlignment="Left" Width="auto">

                        <ComboBoxItem Content="{Binding all}"></ComboBoxItem>

                        <ComboBoxItem Content="Web Browsers"></ComboBoxItem>

                        <ComboBoxItem Content="Media"></ComboBoxItem>

                        <ComboBoxItem Content="Media Tools"></ComboBoxItem>

                        <ComboBoxItem Content="Documents"></ComboBoxItem>

                        <ComboBoxItem Content="Compression"></ComboBoxItem>

                        <ComboBoxItem Content="Communication"></ComboBoxItem>

                        <ComboBoxItem Content="File Sharing"></ComboBoxItem>

                        <ComboBoxItem Content="Imaging"></ComboBoxItem>

                        <ComboBoxItem Content="Gaming"></ComboBoxItem>

                        <ComboBoxItem Content="Utilities"></ComboBoxItem>

                        <ComboBoxItem Content="Disk Tools"></ComboBoxItem>

                        <ComboBoxItem Content="Development"></ComboBoxItem>

                        <ComboBoxItem Content="Security"></ComboBoxItem>

                        <ComboBoxItem Content="Portable"></ComboBoxItem>

                        <ComboBoxItem Content="Runtimes"></ComboBoxItem>

                        <ComboBoxItem Content="Drivers"></ComboBoxItem>

                    </ComboBox>
                <!--End Catagory-->

                <!--Search -->
                    <Grid HorizontalAlignment="Right" Grid.Column="1" VerticalAlignment="Center">
                        <TextBox Padding="8"
                                Width="120"
                                VerticalAlignment="Center"
                                HorizontalAlignment="Left"
                                Text="{Binding Text_searchInput}"
                                Name="searchInput" />

                        <TextBlock IsHitTestVisible="False"
                                Text=""
                                FontFamily="Segoe MDL2 Assets"
                                VerticalAlignment="Center"
                                HorizontalAlignment="Left"
                                Margin="20,0,5,0"
                                FontSize="12"
                                Foreground="{DynamicResource FGTextColor}">
                            <TextBlock.Style>
                                <Style TargetType="{x:Type TextBlock}">
                                    <Setter Property="Visibility" Value="Hidden"/>
                                    <Style.Triggers>
                                        <DataTrigger Binding="{Binding Text, ElementName=searchInput}" Value="">
                                            <Setter Property="Visibility" Value="Visible"/>
                                        </DataTrigger>
                                    </Style.Triggers>
                                </Style>
                            </TextBlock.Style>
                        </TextBlock>

                        <TextBlock Text="{Binding search}"
                                IsHitTestVisible="False"
                                VerticalAlignment="Center"
                                HorizontalAlignment="Left"
                                Margin="38,0,0,0"
                                Foreground="{DynamicResource FGTextColor}">
                            <TextBlock.Style>
                                <Style TargetType="{x:Type TextBlock}">
                                    <Style.Triggers>
                                        <DataTrigger Binding="{Binding IsFocused, ElementName=searchInput}" Value="True">
                                            <Setter Property="Visibility" Value="Hidden"/>
                                        </DataTrigger>
                                        <DataTrigger Binding="{Binding Text, ElementName=searchInput}" Value="">
                                            <Setter Property="Visibility" Value="Visible"/>
                                        </DataTrigger>
                                    </Style.Triggers>
                                </Style>
                            </TextBlock.Style>
                        </TextBlock>
                    </Grid>
                <!--End Search-->

            </Grid>

        <!--Header Section-->
    </Grid>
        <!--TabControl-->
                <TabControl Name="taps" TabStripPlacement="Left" Grid.Row="1"  BorderBrush="{DynamicResource FGColor}" Foreground="White" Background="Transparent">
                        <TabItem Name="apps" Header="{Binding apps}" BorderBrush="{x:Null}">
                            <TabItem.HeaderTemplate>
                                <DataTemplate>
                                    <StackPanel Orientation="Horizontal">
                                        <TextBlock Text="" FontFamily="Segoe MDL2 Assets" FontSize="18" Margin="0,0,5,0"/>
                                        <TextBlock Text="{Binding}" FontFamily="Sego UI" FontSize="15"  Margin="0,0,5,0"/>
                                    </StackPanel>
                                </DataTemplate>
                        </TabItem.HeaderTemplate>
                            <TabItem.Content>
                                <ListView Name="appslist"  Margin="0" ScrollViewer.VerticalScrollBarVisibility="Auto" BorderBrush="{x:Null}" Background="{x:Null}">
                                    
        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Mozilla Firefox" Tag="Web Browsers" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Web Browsers"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="A widely.used open.source web browser known for its speed. privacy features. and customization options."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Mozilla Firefox ESR" Tag="Web Browsers" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Web Browsers"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="A widely.used open.source web browser known for its speed. privacy features. and customization options."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Thorium SSE3" Tag="Web Browsers" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Web Browsers"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="A web browser designed for smooth and secure browsing experiences."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Thorium AVX" Tag="Web Browsers" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Web Browsers"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="A web browser designed for smooth and secure browsing experiences."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Microsoft Edge" Tag="Web Browsers" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Web Browsers"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Microsoft..s web browser built for fast and secure internet surfing. integrating seamlessly with Windows ecosystem."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Google Chrome" Tag="Web Browsers" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Web Browsers"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="A popular web browser known for its speed. simplicity. and vast ecosystem of extensions."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Chromium" Tag="Web Browsers" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Web Browsers"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="An open.source web browser project that serves as the foundation for many browsers. including Google Chrome."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Brave" Tag="Web Browsers" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Web Browsers"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="A privacy.focused web browser that blocks ads and trackers. offering faster and safer browsing experiences."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Tor Browser" Tag="Web Browsers" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Web Browsers"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="A web browser that prioritizes user privacy by routing internet traffic through a global network of servers. enabling anonymous browsing."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Opera" Tag="Web Browsers" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Web Browsers"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="The Opera web browser makes the Web fast and fun. giving you a better web browser experience on any computer."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Internet Download Manager" Tag="Web Browsers" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Web Browsers"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="A popular download manager tool that accelerates downloads and allows users to organize and schedule downloads efficiently."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="JDownloader" Tag="Web Browsers" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Web Browsers"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="JDownloader is an internet download manager."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="KLite Mega Codec Full Pack" Tag="Media" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Media"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Comprehensive collection of audio and video codecs. filters. and tools. enabling playback of various media formats."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="PotPlayer" Tag="Media" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Media"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="A multimedia player with a sleek interface and advanced features. supporting a wide range of audio and video formats."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="VLC" Tag="Media" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Media"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="A versatile media player capable of playing almost any multimedia file format. with support for various streaming protocols."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Kodi" Tag="Media" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Media"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="A powerful open.source media center software that allows users to organize and stream their media collections."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Jellyfin Server" Tag="Media" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Media"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="An open.source media server software that enables users to stream their media libraries across devices. providing a self.hosted alternative to commercial services."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Winamp" Tag="Media" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Media"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="A classic media player known for its customizable interface and extensive plugin support. providing a nostalgic music playback experience."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Aimp" Tag="Media" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Media"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="A lightweight and feature.rich audio player with support for various audio formats and customizable interface themes."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Spotify" Tag="Media" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Media"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Spotify is a new way to listen to music."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="FastStone Image Viewer" Tag="Imaging" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Imaging"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="FastStone Image Viewer is a fast. stable. user.friendly image browser. converter and editor "/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="OpenOffice" Tag="Documents" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Documents"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="An open.source office productivity suite offering word processing. spreadsheet. presentation. and other office tools. compatible with Microsoft Office formats."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="FoxitReader" Tag="Documents" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Documents"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="A lightweight and feature.rich PDF reader with annotation. form filling. and document signing capabilities."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="LibreOffice" Tag="Documents" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Documents"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="A powerful open.source office suite providing word processing. spreadsheet. presentation. and other office tools. compatible with Microsoft Office formats."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="SumatraPDF" Tag="Documents" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Documents"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="A lightweight and fast PDF reader with minimalistic design and focus on simplicity and speed."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="WinRAR" Tag="Compression" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Compression"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="A popular file compression and archiving utility that supports various archive formats and offers advanced features such as encryption and self.extracting archives."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="7Zip" Tag="Compression" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Compression"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="An open.source file archiver with a high compression ratio. supporting various archive formats and providing a powerful command.line interface."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="PeaZip" Tag="Compression" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Compression"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text=" PeaZip is a free cross.platform file archiver."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Telegram Desktop" Tag="Communication" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Communication"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="A cross.platform messaging app with a focus on speed and security. offering end.to.end encryption and a wide range of features such as group chats. file sharing. and stickers."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Signal" Tag="Communication" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Communication"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Fast. simple. secure. Privacy that fits in your pocket."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Meta Messenger" Tag="Communication" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Communication"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="A messaging app that allows users to connect with friends and family through text messages. voice calls. and video calls. offering various multimedia sharing features."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Zoom" Tag="Communication" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Communication"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="A video conferencing app that facilitates online meetings. webinars. and virtual events. allowing participants to interact through video. audio. and chat."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Microsoft Teams" Tag="Communication" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Communication"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="A collaboration platform that combines workplace chat. video meetings. file storage. and application integration. enhancing teamwork and productivity within organizations."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Discord" Tag="Communication" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Communication"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="A VoIP application and digital distribution platform designed for creating communities and connecting gamers. providing text. voice. and video communication features."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="TeamViewer" Tag="File Sharing" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="File Sharing"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="A remote access and support software that enables users to remotely control computers. transfer files. and collaborate online. facilitating remote work and IT support."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="GIMP" Tag="Imaging" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Imaging"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="A free and open.source raster graphics editor used for image retouching and editing. drawing and painting. and converting between different image formats."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Microsoft Visual C++ Runtime - all versions" Tag="Runtimes" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Runtimes"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Microsoft Visual C.. Redistributable installs run.time components of Visual C.. libraries. These components are required to run C.. applications that are developed using Visual Studio and link dynamically to Visual C.. libraries."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="DirectX" Tag="Runtimes" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Runtimes"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="DirectX is a collection of APIs for handling tasks related to games and videos."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Microsoft Visual C++ 2005 (x86) Redistributable" Tag="Runtimes" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Runtimes"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="A set of runtime components required to run applications developed with Microsoft Visual C.. 2005. providing libraries. DLLs. and other resources."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Microsoft Visual C++ 2005 (x64) Redistributable" Tag="Runtimes" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Runtimes"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="A set of runtime components required to run 64.bit applications developed with Microsoft Visual C.. 2005. providing libraries. DLLs. and other resources."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Microsoft Visual C++ 2008 (x86) Redistributable" Tag="Runtimes" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Runtimes"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="A set of runtime components required to run applications developed with Microsoft Visual C.. 2008. providing libraries. DLLs. and other resources."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Microsoft Visual C++ 2008 (x64) Redistributable" Tag="Runtimes" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Runtimes"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="A set of runtime components required to run 64.bit applications developed with Microsoft Visual C.. 2008. providing libraries. DLLs. and other resources."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Microsoft Visual C++ 2010 (x86) Redistributable" Tag="Runtimes" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Runtimes"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="A set of runtime components required to run applications developed with Microsoft Visual C.. 2010. providing libraries. DLLs. and other resources."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Microsoft Visual C++ 2010 (x64) Redistributable" Tag="Runtimes" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Runtimes"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="A set of runtime components required to run 64.bit applications developed with Microsoft Visual C.. 2010. providing libraries. DLLs. and other resources."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Microsoft Visual C++ 2012 (x86) Redistributable" Tag="Runtimes" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Runtimes"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="A set of runtime components required to run applications developed with Microsoft Visual C.. 2012. providing libraries. DLLs. and other resources."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Microsoft Visual C++ 2012 (x64) Redistributable" Tag="Runtimes" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Runtimes"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="A set of runtime components required to run 64.bit applications developed with Microsoft Visual C.. 2012. providing libraries. DLLs. and other resources."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Microsoft Visual C++ 2013 (x86) Redistributable" Tag="Runtimes" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Runtimes"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="A set of runtime components required to run applications developed with Microsoft Visual C.. 2013. providing libraries. DLLs. and other resources."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Microsoft Visual C++ 2013 (x64) Redistributable" Tag="Runtimes" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Runtimes"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="A set of runtime components required to run 64.bit applications developed with Microsoft Visual C.. 2013. providing libraries. DLLs. and other resources."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Microsoft Visual C++ 2015-2022 (x64) Redistributable" Tag="Runtimes" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Runtimes"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="A set of runtime components required to run 64.bit applications developed with Microsoft Visual C.. 2015.2022. providing libraries. DLLs. and other resources."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Microsoft Visual C++ 2015-2022  (x86) Redistributable" Tag="Runtimes" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Runtimes"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="A set of runtime components required to run applications developed with Microsoft Visual C.. 2015.2022. providing libraries. DLLs. and other resources."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="NET Framework All Versions" Tag="Runtimes" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Runtimes"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="A comprehensive and consistent programming model for building applications that have visually stunning user experiences. seamless and secure communication. and the ability to model a range of business processes."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="AMD Ryzen Chipset Drivers" Tag="Drivers" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Drivers"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Supports. AMD Ryzen Threadripper PRO Processor. AMD Ryzen 8000.7040.7000 Series Desktop . Mobile Processors. AMD Ryzen 5000.3rd Gen.2nd Gen Desktop . Threadripper Processors. AMD Ryzen Desktop Processor with Radeon Graphics . Mobile Processor with Radeon Graphics. 7th.Gen AMD A.Series Processors. AMD X670E.X670.B650E.B650.B350.A320.X370.X399.B450.X470.X570.B550.A520.A620.TRX40.TRX50.WRX80.WRX90 Chipsets"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="NVidia Display Driver" Tag="Drivers" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Drivers"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="The software component that allows the operating system and installed software to communicate with and control the NVIDIA graphics processing unit .GPU.."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="NVIDIA GeForce Experience" Tag="Drivers" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Drivers"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="A cloud.based gaming service provided by NVIDIA that allows users to play video games on supported devices via a remote gaming PC hosted on NVIDIA..s servers."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Msi Afterburner" Tag="Drivers" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Drivers"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="MSI Afterburner is the ultimate graphics card utility. co.developed by MSI and RivaTuner teams."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="NVIDIA PhysX" Tag="Drivers" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Drivers"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="A physics processing unit .PPU. software development kit .SDK. offered by NVIDIA for real.time physics simulations in video games."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Steam" Tag="Gaming" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Gaming"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="A digital distribution platform developed by Valve Corporation for purchasing and playing video games."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Ubisoft Connect" Tag="Gaming" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Gaming"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="A digital distribution. digital rights management. multiplayer. and communications service developed by Ubisoft. providing access to Ubisoft..s games. rewards. and social features."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Origin" Tag="Gaming" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Gaming"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text=" Game store launcher"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Rockstar Games Launcher" Tag="Gaming" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Gaming"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Download and play the latest Rockstar Games PC titles"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="GameSave Manager" Tag="Gaming" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Gaming"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="A utility tool that allows users to backup. restore. and transfer their game saves between different gaming platforms and directories."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="StreamlabsOBS" Tag="Gaming" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Gaming"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="A free and open.source streaming software built on top of OBS Studio with additional features tailored for streamers. such as built.in alerts. overlays. and chat integration."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="OBS Studio" Tag="Gaming" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Gaming"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="A free and open.source software for video recording and live streaming. It offers high performance real.time video.audio capturing and mixing."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Logitech Gaming Software" Tag="Gaming" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Gaming"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Logitech Gaming Software lets you customize Logitech G gaming mice. keyboards. headsets and select wheels."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Lively Wallpaper" Tag="Gaming" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Gaming"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="A software that allows users to set animated and interactive wallpapers on their Windows desktop. providing various customization options."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Playnite" Tag="Gaming" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Gaming"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Open source video game library manager and launcher with support for 3rd party libraries like Steam. GOG. Origin. Battle.net and Uplay."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Driver Easy" Tag="Drivers" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Drivers"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="A driver update tool that automatically detects. downloads. and installs device drivers for the user..s computer hardware."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Intel Graphics Windows DCH" Tag="Drivers" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Drivers"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Intel Graphics Driver for Windows 10."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Intel Driver Support Assistant" Tag="Drivers" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Drivers"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Intel Driver . Support Assistant enables you to scan computing devices for the latest drivers available from Intel."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Intel Network Adapter" Tag="Drivers" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Drivers"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Intel Network Adapter Drivers for Windows 10."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Snappy Driver Installer" Tag="Drivers" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Drivers"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="A free and open.source tool for updating and installing device drivers on Windows. offering offline driver updates and wide hardware support."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Driver booster" Tag="Drivers" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Drivers"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Scans and identifies outdated drivers automatically. and downloads and installs the right update for you with just ONE click."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Driver Genius" Tag="Drivers" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Drivers"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Professional driver management tool and hardware diagnostics."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Display Driver Uninstaller" Tag="Drivers" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Drivers"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Utility to completely remove system drivers"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Driver Store Explorer" Tag="Drivers" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Drivers"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text=" Windows driver store utility."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="1Password" Tag="Utilities" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="A password manager that securely stores login credentials. credit card information. and other sensitive data in an encrypted vault. accessible with a single master password."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="AOMEI Partition Assistant Standard" Tag="Disk Tools" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Disk Tools"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="AOMEI Partition Assistant Standard allows you to realize disk upgrade.replacement. partition style conversion. OS migration and other disk managements without any difficulties."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="AOMEI Backupper Standard" Tag="Disk Tools" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Disk Tools"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="A backup and recovery software that enables users to create system backups. disk backups. partition backups. and file backups to protect data against system failures and data loss."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Recuva recover" Tag="Disk Tools" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Disk Tools"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="A data recovery software that helps users retrieve accidentally deleted files. including photos. documents. videos. and more. from various storage devices such as hard drives. USB drives. and memory cards."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="CCleaner" Tag="Utilities" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="A system optimization. privacy. and cleaning tool that helps users remove unused files. clean up temporary files. and optimize their Windows PCs for better performance."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="BCUninstaller" Tag="Utilities" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="A powerful uninstaller tool for Windows that allows users to remove unwanted programs. plugins. and Windows Store apps. along with leftover files and registry entries."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Easy Context Menu" Tag="Utilities" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="To install Easy Context Menu. run the following command from the command line or from PowerShell."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="HWiNFO" Tag="Utilities" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="A hardware information and diagnostic tool that provides detailed information about the hardware components of a computer system. including sensors. temperature. voltage. and more."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Speccy" Tag="Utilities" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="A system information tool that provides detailed information about the hardware and operating system of a computer. including CPU. RAM. motherboard. graphics card. and storage devices."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="FurMark" Tag="Utilities" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="A graphics card stress testing and benchmarking utility that helps users test the stability. cooling. and performance of their GPU by rendering a highly intensive 3D graphics scene."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Hard Disk Sentinel" Tag="Disk Tools" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Disk Tools"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="A hard disk monitoring and analysis software that helps users monitor the health. performance. and temperature of their hard drives. SSDs. and other storage devices."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="CPU-Z" Tag="Utilities" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="A system monitoring utility that provides detailed information about the CPU. motherboard. memory. and other hardware components of a computer system."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Mem Reduct" Tag="Utilities" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Lightweight real.time memory management application to monitor and clean system memory on your computer."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="HandBrake" Tag="Utilities" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="A free and open.source video transcoder tool that converts video files from one format to another. supporting a wide range of input and output formats."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Rufus Portable" Tag="Portable" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Portable"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="A utility tool for creating bootable USB drives from ISO images. helping users to install or run operating systems. such as Windows. Linux. or other utilities."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="ImgBurn" Tag="Development" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Lightweight CD . DVD burning application "/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Virtual CloneDrive" Tag="Utilities" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="A free software that allows users to mount disc images as virtual drives. enabling them to access the content of ISO. BIN. and CCD files without the need for physical discs."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Ultra ISO" Tag="Utilities" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="A powerful ISO image management tool that enables users to create. edit. extract. and burn ISO files. providing a comprehensive solution for managing disk image files."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Ventoy" Tag="Utilities" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="An open.source tool for creating bootable USB drives with multiple ISO files. allowing users to boot various operating systems or utilities directly from a single USB drive."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="iVentoy" Tag="Utilities" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="With iVentoy you can boot and install OS on multiple machines at the same time through the network."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="AutoHotkey" Tag="Utilities" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="A scripting language for automating repetitive tasks and creating macros on Windows. allowing users to customize keyboard shortcuts. remap keys. and automate mouse actions."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Rainmeter" Tag="Utilities" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="A customizable desktop customization tool that displays customizable skins. widgets. and applets on the Windows desktop. providing users with real.time system monitoring and information."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="FxSound" Tag="Utilities" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="An audio enhancer software that improves the sound quality of music. videos. and games on Windows PCs by providing advanced audio processing and customization options."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Vysor" Tag="Utilities" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="A screen mirroring and remote control software that enables users to view and control Android devices from Windows PCs. allowing for easy screen sharing. app testing. and troubleshooting."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Unified Remote" Tag="Utilities" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="A remote control app that turns smartphones into universal remote controls for Windows. macOS. and Linux computers. allowing users to control media playback. presentations. and more."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="AnyDesk" Tag="File Sharing" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="File Sharing"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="A remote desktop software that allows users to access and control Windows. macOS. Linux. Android. and iOS devices from anywhere. providing secure and reliable remote access."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Airdroid" Tag="File Sharing" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="File Sharing"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="AirDroid is a free and fast Android device manager app that allows you to access Android phone.tablet from computer remotely and securely. Manage SMS. files. photos and videos. WhatsApp. Line. WeChat and more on computer."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="UltraViewer" Tag="File Sharing" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="File Sharing"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Remote control to support your clients . partners from everywhere."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Wireless Network Watcher Portable" Tag="Portable" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Portable"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Wireless Network Watcher is a small utility that scans your wireless network and displays the list of all computers and devices that are currently connected to your network."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="WifiInfoView" Tag="Utilities" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Wireless Network Watcher is a small utility that scans your wireless network and displays the list of all computers and devices that are currently connected to your network."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="qBittorrent" Tag="File Sharing" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="File Sharing"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="A free and open.source BitTorrent client for downloading and uploading files via the BitTorrent protocol. providing users with a lightweight and feature.rich torrenting experience."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Google Earth Pro" Tag="Imaging" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Imaging"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Google Earth Pro on desktop is free for users with advanced feature needs. Import and export GIS data. and go back in time with historical imagery."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="XAMPP" Tag="Development" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="XAMPP is a free and open.source cross.platform web server solution stack package developed by Apache Friends. consisting mainly of the Apache HTTP Server. MariaDB database. and interpreters for scripts written in the PHP and Perl programming languages."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Visual Studio Professional 2022" Tag="Development" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Visual Studio Professional 2022 is an integrated development environment .IDE. from Microsoft. It is used to develop computer programs. websites. web apps. web services. and mobile apps."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Visual Studio Community 2022" Tag="Development" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Visual Studio Community 2022 is a free. fully.featured. and extensible IDE for individual developers. open source projects. academic research. education. and small professional teams."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Unity Hub" Tag="Development" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Unity is a cross.platform game creation system developed by Unity Technologies and used to develop video games for PC. consoles. mobile"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Godot Engine" Tag="Development" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Godot is a feature.packed. cross.platform game engine for creating 2D and 3D games. It provides a comprehensive set of tools and features to develop games efficiently and quickly."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Unity3D Engine" Tag="Development" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Unity is a cross.platform game creation system developed by Unity Technologies and used to develop video games for PC. consoles. mobile"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Blender" Tag="Development" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Blender is a free and open.source professional.grade 3D computer graphics and video compositing program."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Visual Studio Code" Tag="Development" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Visual Studio Code is a free source.code editor developed by Microsoft for Windows. Linux. and macOS. It includes support for debugging. embedded Git control. syntax highlighting. intelligent code completion. snippets. and code refactoring."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Vim" Tag="Development" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Vim is an advanced text editor that seeks to provide the power of the de.facto Unix editor ..Vi... with a more complete feature set. It..s us... Keep Reading "/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Sublime Text 4" Tag="Development" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Sublime Text 4 . The sophisticated text editor for code. markup and prose. "/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Atom" Tag="Development" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Atom is a text editor that..s modern. approachable. yet hackable to the core.a tool you can customize to do anything but also use productively without ever touching a config file."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="InnoSetup" Tag="Development" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Inno Setup is a free installer for Windows programs. First introduced in 1997. Inno Setup today rivals and even surpasses many commercial installers in feature set and stability."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="PyCharm Community Edition" Tag="Development" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="PyCharm Community Edition is a free and open.source IDE for Python development. It provides smart code completion. code inspections. on.the.fly error highlighting. and quick.fixes."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="PyCharm Professional Edition" Tag="Development" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="PyCharm Professional Edition is a powerful IDE for professional Python development. It includes advanced features such as database tools. web development support. and scientific tools integration."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Jetbrains Rider" Tag="Development" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Rider is a cross.platform .NET IDE developed by JetBrains. It supports C.. VB.NET. F.. ASP.NET. JavaScript. TypeScript. HTML. CSS. and SQL languages and frameworks."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Node.js LTS" Tag="Development" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Node.js is a JavaScript runtime built on Chrome..s V8 JavaScript engine. LTS .Long Term Support. releases are supported for an extended period and provide stability for production environments."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Electrum-LTS" Tag="Development" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Electrum is a lightweight Bitcoin wallet focused on speed and simplicity. with support for hardware wallets and multisig functionality. LTS .Long Term Support. releases provide stability and security updates for an extended period."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Hugo" Tag="Development" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Hugo is one of the most popular open.source static site generators. With its amazing speed and flexibility. Hugo makes building websites f... Keep Reading "/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Hugo Extended" Tag="Development" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Hugo is one of the most popular open.source static site generators. With its amazing speed and flexibility. Hugo makes building websites f... Keep Reading "/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Notepad++" Tag="Development" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Notepad.. is a free source code editor and Notepad replacement that supports several languages. It offers syntax highlighting. code folding. auto.completion. and other features for efficient code editing."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Windows Terminal" Tag="Development" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Windows Terminal is a modern terminal application for users of command.line tools and shells like Command Prompt. PowerShell. and Windows Subsystem for Linux .WSL.. It provides multiple tabs. custom themes. and GPU.accelerated text rendering."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Powershell 7" Tag="Development" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="PowerShell Core is a cross.platform .Windows. Linux. and macOS. automation and configuration tool.framework that works well with your existing tools and is optimized for dealing with structured data .e.g.. JSON. CSV. XML. etc... REST APIs. and object models."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="x64dbg Portable" Tag="Portable" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Portable"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="An open.source x64.x32 debugger for windows."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="dnSpy" Tag="Development" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="dnSpy is a tool to reverse engineer .NET assemblies. It includes a decompiler. a debugger and an assembly editor .and more. and can be easily extended by writing your own extension. It uses dnlib to read and write assemblies so it can handle obfuscated assemblies .eg. malware. without crashing."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Cheat Engine" Tag="Development" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Cheat Engine is an open source tool designed to help you modify single player games."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Python 3.9" Tag="Development" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Python is a popular high.level programming language known for its simplicity and versatility. It is used in various fields such as web development. data science. machine learning. and automation."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Git" Tag="Development" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Git is a free and open.source distributed version control system designed to handle everything from small to very large projects with speed and efficiency."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="GitHub Desktop" Tag="Development" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="GitHub Desktop is a seamless way to contribute to projects on GitHub and GitHub Enterprise. It provides an intuitive interface for managing repositories. branching. committing. and merging code changes."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Docker Desktop" Tag="Development" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Docker Desktop is an easy.to.install application for Windows and macOS that enables developers to build. share. and run containerized applications and microservices locally."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Docker Compose" Tag="Development" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Docker Compose is a tool for defining and running multi.container Docker applications. It allows you to use a YAML file to configure your application..s services. networks. and volumes."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="PowerToys" Tag="Development" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="PowerToys is a set of utilities for power users to tune and streamline their Windows experience for greater productivity. It includes tools like FancyZones for window management. PowerRename for batch renaming files. and more."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Notion" Tag="Development" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="The all.in.one workspace for your notes. tasks. wikis. and databases."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="FL Studio" Tag="Media Tools" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Media Tools"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="FL Studio is a digital audio workstation .DAW. developed by Image.Line. It allows you to compose. arrange. record. edit. mix. and master professional.quality music."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Android Debug Bridge" Tag="Development" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Android Debug Bridge .ADB. is a command.line tool that allows you to communicate with an Android device. It is used for various debugging tasks such as installing and debugging apps."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Universal ADB Drivers" Tag="Development" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Universal ADB Drivers are drivers that provide compatibility with a wide range of Android devices for debugging purposes. They allow you to connect your Android device to a computer and use ADB commands."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Scrcpy" Tag="Development" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Scrcpy is a free and open.source tool that allows you to display and control your Android device from a computer. It provides high.performance screen mirroring and supports various input methods."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="VirtualBox" Tag="Development" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="VirtualBox is a cross.platform virtualization application. It installs on existing Intel or AMD.based computers. whether they are running Windows. Mac. Linux or Solaris operating systems. It extends the capabilities of your existing computer so that it can run multiple operating systems .inside multiple virtual machines. at the same time."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Oh My Posh" Tag="Development" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text=" Oh my Posh is a custom prompt engine for any shell that has the ability to adjust the prompt string with a function or variable."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Malwarebytes" Tag="Security" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Security"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Multiple layers of malware.crushing tech. including virus protection. Thorough malware and spyware removal. Specialized ransomware protection."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Avast Free Antivirus" Tag="Security" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Security"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Avast Free Antivirus."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Nerd Fonts - CascadiaCode" Tag="Development" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Nerd Fonts is a project that patches developer targeted fonts with a high number of glyphs .icons.."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Java SE Runtime Environment 8.0.411" Tag="Runtimes" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Runtimes"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Java allows you to play online games. chat with people around the world. calculate your mortgage interest. and view images in 3D. just to name a few. It..s also integral to the intranet applications and other e.business solutions that are the foundation of corporate computing. Please note you now need a Java License from Oracle to use unless installed for Personal Use and Development Use."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Audacity" Tag="Media Tools" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Media Tools"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Audacity is free. open source. cross.platform software for recording and editing sounds."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="MusicBee" Tag="Media" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Media"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="MusicBee makes it easy to organize. find and play music files on your computer. on portable devices and on the web."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Format Factory" Tag="Media Tools" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Media Tools"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="multifunctional media processing tools"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Winaero Tweaker" Tag="Utilities" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Customize the appearance and behavior of the Windows operating system"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Windows Subsystem for Linux WSL2" Tag="Development" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="To install Windows Subsystem for Linux 2. run the following command from the command line or from PowerShell."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Wamp Server 3.3.5" Tag="Development" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="WampServer is a Windows web development environment. It allows you to create web applications."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="MongoDB" Tag="Development" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="MongoDB stores data using a flexible document data model that is similar to JSON. Documents contain one or more fields. including arrays. binary data and sub.documents. Fields can vary from document to document. This flexibility allows development teams to evolve the data model rapidly as their application requirements change."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="MPC-BE" Tag="Media" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Media"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Media Player Classic . BE is a free and open source audio and video player for Windows."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Kdenlive" Tag="Media Tools" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Media Tools"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="A powerful non.linear video editor"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="TablePlus" Tag="Development" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Modern. native. and friendly GUI tool for relational databases. MySQL. PostgreSQL. SQLite. MongoDB. Redis. and more."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Hosts File Editor" Tag="Utilities" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Hosts File Editor makes it easy to change your hosts file as well as archive multiple versions for easy retrieval."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Subtitle Edit" Tag="Development" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="With SE you can easily adjust a subtitle if it is out of sync with the video in several different ways. You can also use SE for making new subtitles from scratch .do use the time.line.waveform.spectrogram. or translating subtitles."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Skype" Tag="Communication" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Communication"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Skype . Install Skype. add your friends as contacts. then call. video call and instant message with them for free. Call people who aren..t on Skype too. at really low rates."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="FileZilla" Tag="Development" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="FileZilla Client is a fast and reliable cross.platform FTP. FTPS and SFTP client with lots of useful features and an intuitive graphical user interface."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Everything" Tag="Utilities" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Everything Search Engine . locate files and folders by name instantly"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Yarn" Tag="Development" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Yarn is a package manager for the npm and bower registries with a few specific focuses."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="VMware Workstation Player" Tag="Development" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="VMware Workstation Player. is a streamlined desktop virtualization application that runs another operating system on the same computer without rebooting. VMware Workstation Player provides a simple user interface. unmatched operating system support. and portability across the VMware ecosystem."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="HDD Low Level Format Tool" Tag="Utilities" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Will erase. Low.Level Format and re.certify a SATA. IDE or SCSI hard disk drive with any size of up to 281 474 976 710 655 bytes."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="BlueStacks" Tag="Gaming" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Gaming"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Play Android Games on PC."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Intel Wireless Bluetooth for Windows 10 and Windows 11" Tag="Drivers" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Drivers"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Bluetooth for Windows 10 and Windows"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Office 365 Business" Tag="Documents" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Documents"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Microsoft 365 .formerly Office 365. is a line of subscription services offered by Microsoft as part of the Microsoft Office product line. The brand encompasses plans that allow use of the Microsoft Office software suite over the life of the subscription. as well as cloud.based software as a service products for business environments. such as hosted Exchange Server. Skype for Business Server. and SharePoint. among others. All Microsoft 365 plans include automatic updates to their respective software at no additional charge. as opposed to conventional licenses for these programs.where new versions require purchase of a new license."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Bandicam" Tag="Imaging" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Imaging"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Bandicam is a closed.source screen capture and screen recording software originally developed by Bandisoft and later by Bandicam Company that can take screenshots or record screen changes. Bandicam consists of three main modes. One is the Screen Recording mode. which can be used for recording a certain area on the PC screen"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="QQPlayer" Tag="Media" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Media"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="QQPlayer media player"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="4K Video Downloader" Tag="Utilities" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="4K Video Downloader allows downloading videos. playlists. channels and subtitles from YouTube. Facebook. Vimeo and other video sites in high quality."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Active@ Partition Recovery" Tag="Disk Tools" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Disk Tools"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Active. Partition Recovery is a freeware toolkit that helps to recover deleted and damaged logical drives and partitions within Windows. WinPE .recovery boot disk. and Linux .recovery LiveCD. environments."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="HiSuite" Tag="Utilities" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="HUAWEI HiSuite is the official Android Smart Device Manager tool.HiSuite helps users to connect their HUAWEI smartphones and tablets to PC"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Android Studio" Tag="Development" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Android Studio is the official integrated development environment for Google..s Android operating system. built on JetBrains IntelliJ IDEA software and designed specifically for Android development"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="LibreWolf" Tag="Web Browsers" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Web Browsers"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="LibreWolf is designed to increase protection against tracking and fingerprinting techniques. while also including a few security improvements. This is achieved through our privacy and security oriented settings and patches. LibreWolf also aims to remove all the telemetry. data collection and annoyances. as well as disabling anti.freedom features like DRM."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Flow Launcher" Tag="Utilities" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Dedicated to making your workflow flow more seamless. Search everything from applications. files. bookmarks. YouTube. Twitter and more. Flow will continue to evolve. designed to be open and built with the community at heart."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="IconsExtract" Tag="Utilities" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="The IconsExtract utility scans the files and folders on your computer. and extract the icons and cursors stored in EXE. DLL. OCX. CPL. and in other file types."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="AdGuard Home" Tag="Security" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Security"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="AdGuard Home is a network.wide software for blocking ads and tracking. After you set it up. it..ll cover ALL your home devices. and you don..t need any client.side software for that."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Burp Suite Community Edition" Tag="Development" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Burp Suite is an integrated platform for performing security testing of web applications. Its various tools work seamlessly together to support the entire testing process. from initial mapping and analysis of an application..s attack surface. through to finding and exploiting security vulnerabilities."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="CoreTemp" Tag="Utilities" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Core Temp is a compact. no fuss. small footprint. yet powerful program to monitor processor temperature and other vital information."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="ShareX" Tag="File Sharing" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="File Sharing"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Screen capture. file sharing and productivity tool."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="ONLY OFFICE" Tag="Documents" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Documents"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="ONLYOFFICE is a project developed by experienced IT experts from Ascensio System SIA. leading IT company with headquarters in Riga. Latvia. Originally ONLYOFFICE was designed for internal team collaboration. An attempt to introduce it to a wider audience proved to be successful. ONLYOFFICE received very positive feedback from the Internet community. As a result. its functionality was considerably revised and expanded that brought about a high and stable growth of users from different countries."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="ESET Internet Security" Tag="Security" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Security"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Ideal for modern users concerned about their privacy. who actively use internet for shopping. banking. work and communication."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="WinDirStat" Tag="Disk Tools" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Disk Tools"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="WinDirStat is a disk usage statistics viewer and cleanup tool for Microsoft Windows."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Winmerge" Tag="Utilities" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="WinMerge is an Open Source differencing and merging tool for Windows. WinMerge can compare both  folders and files. presenting differences in a visual text format that is easy to understand and handle."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Wireshark" Tag="Utilities" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Wireshark is the worlds foremost and widely.used network protocol analyzer. It lets you see whats happening on your network at a microscopic level and is the de facto .and often de jure. standard across many commercial and non.profit enterprises. government agencies. and educational institutions. Wireshark development thrives thanks to the volunteer contributions of networking experts around the globe and is the continuation of a project started by Gerald Combs in 1998."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="TeraCopy" Tag="Utilities" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="TeraCopy is designed to copy and move files at the maximum possible speed. It skips bad files during the copying process. and then displays them at the end of the transfer so that you can see which ones need attention. TeraCopy can automatically check the copied files for errors by calculating their CRC checksum values. It also provides a lot more information about the files being copied than its Windows counterpart. TeraCopy integrates with Windows Explorer..s right.click menu and can be set as the default copy handler."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="QuickLook" Tag="Utilities" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Quick Look is among the few features I missed from Mac OS X It enables very quick preview of file by pressing Space key while highlighting it without opening its associated application Then I decide to add this feature to Windows by myself which results this QuickLook project"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="RepoZ" Tag="Development" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="RepoZ provides a quick overview of the git repositories on your development machine including their current branch and a short status information It uses the repositories on your machine to create an efficient navigation widget and makes sure youll never loose track of your work along the way"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Intel Graphics Command Center" Tag="Drivers" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Drivers"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Dont have time to mess around with settings The Intel Graphics Command Center easily finds and tunes your games complete with recommended settings for your computer Use oneclick optimization for many popular titles and instantly get the most out of your system. .Windows 10 version 1709 or higher.6th Gen Intel Core Platforms or newer.."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Go Programming Language" Tag="Development" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Go is expressive concise clean and efficient Its concurrency mechanisms make it easy to write programs that get the most out of multicore and networked machines while its novel type system enables flexible and modular program construction Go compiles quickly to machine code yet has the convenience of garbage collection and the power of runtime reflection Its a fast statically typed compiled language that feels like a dynamically typed interpreted language"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Rust" Tag="Development" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Rust is a curlybrace blockstructured expression language It visually resembles the C language family but differs significantly in syntactic and semantic details Its design is oriented toward concerns of programming in the large that is of creating and maintaining boundaries  both abstract and operational  that preserve largesystem integrity availability and concurrency"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Inkscape" Tag="Imaging" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Imaging"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Inkscape is an opensource vector graphics editor similar to Adobe Illustrator Corel Draw Freehand or Xara X What sets Inkscape apart is its use of Scalable Vector Graphics SVG an open XMLbased W3C standard as the native format"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Youtube dl" Tag="Utilities" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="outubedl is a small commandline program to download videos from YouTubecom and a few more sites It is written in Python and its not platform specific It should work in your Unix box in Windows or in Mac OS X It is released to the public domain which means you can modify it redistribute it or use it however you like"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Postman" Tag="Development" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Postman helps you be more efficient while working with APIs Using Postman you can construct complex HTTP requests quickly organize them in collections and share them with your coworkers"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Azure CLI" Tag="Development" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="The Azure CLI is available across Azure services and is designed to get you working quickly with Azure with an emphasis on automation"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="GameMaker-Studio" Tag="Development" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="GameMaker Studio has everything you need for games development no matter what your level or expertise"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Charles" Tag="Development" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Charles is an HTTP proxy  HTTP monitor  Reverse Proxy that enables a developer to view all of the HTTP and SSL  HTTPS traffic between their machine and the Internet This includes requests responses and the HTTP headers which contain the cookies and caching information"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Windows Media Player" Tag="Media" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Media"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Media Player is designed to make listening to and watching your multimedia content more enjoyable At the heart of Media Player is a fullfeatured music library that allows you to quickly browse and play music as well as create and manage playlists All your content in the music and video folders on your PC will appear automatically in your library"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="espanso" Tag="Development" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="A crossplatform Text Expander written in Rust"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Ability Office" Tag="Documents" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Documents"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Ability Office Standard offers 3 core applications essential for home and business Word Processor Spreadsheet and Presentation in one affordable office suite It also includes a Photoalbum and quick application Launcher Just perfect for working from home allowing files to be edited and exchanged with those back in the office and absolutely ideal for students and school children"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Winbox" Tag="Utilities" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Small utility that allows administration of MikroTik RouterOS using a fast and simple GUI"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="SearchMyFiles" Tag="Utilities" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="SearchMyFiles allows you to make a very accurate search that cannot be done with Windows search For Example You can search all files created in the last 10 minutes with size between 500 and 700 bytes"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="iTunes" Tag="Media" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Media"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="iTunes is the best way to organize and enjoy the music movies and TV shows you already have and shop for the ones you want to get Its home to Apple Music which gives you unlimited access to millions of songs curated playlists1 and Beats 1 radio hosted by Zane Lowe and a team of acclaimed DJs Enjoy all the entertainment iTunes has to offer on your Mac and PC"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="StartIsBack++" Tag="Utilities" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="StartIsBack returns Windows 10 and Windows 8 a real fully featured start menu and start button behaving exactly like the ones in Windows 7"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Advanced SystemCare Free" Tag="Utilities" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Over time your computer may accumulate with large quantities of useless temporary and duplicate files Advanced SystemCare 12 will help clean up these junk files and free up your disk space Also you can use our advanced tools to make registry clean for better use"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Send Anywhere" Tag="File Sharing" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="File Sharing"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Send Anywhere is a multiplatform file sharing service where users can directly share digital content in real time"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="YUMI Legacy" Tag="Utilities" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="YUMI Your Universal Multiboot Installer is the successor to MultibootISOs It can be used to create a Multiboot USB Flash Drive containing multiple operating systems antivirus utilities disc cloning diagnostic tools and more Contrary to MultiBootISOs which used grub to boot ISO files directly from USB YUMI uses syslinux to boot extracted distributions stored on the USB device and reverts to using grub to Boot Multiple ISO files from USB if necessary"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="YUMI UEFI" Tag="Utilities" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="YUMI Your Universal Multiboot Installer is the successor to MultibootISOs It can be used to create a Multiboot USB Flash Drive containing multiple operating systems antivirus utilities disc cloning diagnostic tools and more Contrary to MultiBootISOs which used grub to boot ISO files directly from USB YUMI uses syslinux to boot extracted distributions stored on the USB device and reverts to using grub to Boot Multiple ISO files from USB if necessary"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="OP Auto Clicker" Tag="Utilities" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="A fullfledged autoclicker with two modes of autoclicking at your dynamic cursor location or at a prespecified location The maximum amounts of clicked can also be set or left as infinite Hotkeys work in the background for convenience"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Spotube" Tag="Media" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Media"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Spotube is a Flutter based lightweight spotify client It utilizes the power of Spotify  Youtubes public API  creates a hazardless performant  resource friendly User Experience"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Audio Switcher" Tag="Media" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Media"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Easily switch the default audio device input or output on any Windows PC Vista and above Using this application you can switch output OR input sound devices at the click of a button or the press of a key I designed this application to be incredibly small and lightweight There is no bloat it does exactly what it should nothing more nothing less"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Microsoft Teams Classic Desktop" Tag="Communication" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Communication"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Microsoft Teams is a messaging app for teams where all conversations meetings files and notes can be accessed by everyone all in one place Its a place for collaboration and work to happen in the open"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Microsoft Windows SDK for Windows 10 and .NET Framework 4.7" Tag="Runtimes" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Runtimes"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="The Windows 10 SDK for Windows 10 version 1809 provides the latest headers libraries metadata and tools for building Windows 10 apps NoteWindows 10 development targeting Windows 10 version 1903 or later requires Visual Studio 2017 or later This SDK will not be discovered by previous versions of Visual Studio"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="RunAsDate Portable" Tag="Portable" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Portable"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="RunAsDate is a small utility that allows you to run a program in the date and time that you specify This utility doesnt change the current system date and time of your computer but it only injects the datetime that you specify into the desired application"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Visual Studio 2017 Build " Tag="Development" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="These Build Tools allow you to build native and managed MSBuildbased applications without requiring the Visual Studio IDE There are options to install the Visual C compilers and libraries MFC ATL and CCLI support"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="MSEdgeRedirect" Tag="Utilities" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="This tool filters and passes the command line arguments of Microsoft Edge processes into your default browser instead of hooking into the microsoftedge handler this should provide resiliency against future changes Additionally an Image File Execution Options mode is available to operate similarly to the Old EdgeDeflector Additional modes are planned for future versions"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="NET Desktop Runtime 5" Tag="Runtimes" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Runtimes"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="NET Core is a general purpose development platform maintained by Microsoft and the NET community on GitHub It is crossplatform supporting Windows macOS and Linux and can be used in device cloud and embeddedIoT scenarios This package is required to run Windows Desktop applications with the .NET Runtime."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="NET Desktop Runtime 3" Tag="Runtimes" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Runtimes"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="NET Core is a general purpose development platform maintained by Microsoft and the NET community on GitHub It is crossplatform supporting Windows macOS and Linux and can be used in device cloud and embeddedIoT scenarios This package is required to run Windows Desktop applications with the .NET Runtime."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="NET Desktop Runtime 6" Tag="Runtimes" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Runtimes"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="NET Core is a general purpose development platform maintained by Microsoft and the NET community on GitHub It is crossplatform supporting Windows macOS and Linux and can be used in device cloud and embeddedIoT scenarios This package is required to run Windows Desktop applications with the .NET Runtime."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="NET Desktop Runtime 7" Tag="Runtimes" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Runtimes"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="NET Core is a general purpose development platform maintained by Microsoft and the NET community on GitHub It is crossplatform supporting Windows macOS and Linux and can be used in device cloud and embeddedIoT scenarios This package is required to run Windows Desktop applications with the .NET Runtime."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="NET Desktop Runtime 8" Tag="Runtimes" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Runtimes"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="NET Core is a general purpose development platform maintained by Microsoft and the NET community on GitHub It is crossplatform supporting Windows macOS and Linux and can be used in device cloud and embeddedIoT scenarios This package is required to run Windows Desktop applications with the NET Runtime"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Viber" Tag="Communication" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Communication"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Viber is a mobile application that lets you make free phone calls and send text messages to anyone who also has the application installed You can call or text any Viber user anywhere in the world for free"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="StartAllBack" Tag="Utilities" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Introducing  StartAllBack Windows 11 from a better timeline Embrace enhance unsweep classic UI from under the rug"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="DiskGenius Free" Tag="Disk Tools" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Disk Tools"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="With powerful capabilities and userfriendly interface DiskGenius Free Edition provides a robust solution for individuals and organizations to seek efficient disk management"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="UNFORMAT" Tag="Disk Tools" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Disk Tools"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="UNFORMAT is a software utility created to solve almost all data loss scenarios due to logical failure It can recover deleted files on a disk or restore deleted or damaged partitions and volumes As well as recovers data after using the FORMAT command"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Active@ UNDELETE" Tag="Disk Tools" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Disk Tools"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Active UNDELETE helps you to recover deleted files and restore deleted partitions from a variety of file systems such as FAT NTFS NTFS  EFS MacOS HFS ApFS Linux ext2 ext3 ext4 ZFS Unix UFS Advanced scan algorithms help to restore files even from severely damaged disks Sophisticated userfriendly UI makes navigation through your data a breeze"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="HxD Hex Editor" Tag="Disk Tools" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Disk Tools"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="HxD is a carefully designed and fast hex editor which additionally to raw disk editing and modifying of main memory RAM handles files of any size"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Epic Games Launcher" Tag="Gaming" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Gaming"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="The Epic Games Launcher is how you obtain the Unreal Game Engine modding tools and other Epic Games like Fortnite and the new Epic Games Store"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Vivaldi" Tag="Web Browsers" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Web Browsers"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="The new Vivaldi browser protects you from trackers blocks unwanted ads and puts you in control with unique builtin features Get Vivaldi and browse fast"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Microsoft PC Manager" Tag="Utilities" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Microsoft PC manager a good way to protect your personal computer and optimize performance provides PC cleanup antivirus and Windows update making your computer safe and secure"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Openshot" Tag="Media Tools" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Media Tools"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="OpenShot Video Editor is an awardwinning opensource video editor available on Linux Mac and Windows OpenShot can create stunning videos films and animations with an easytouse interface and rich set of features"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="WhatsApp" Tag="Communication" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Communication"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="WhatsApp Messenger or simply WhatsApp is an American freeware crossplatform centralized messaging and voiceoverIP VoIP service owned by Facebook Inc It allows users to send text messages and voice messages make voice and video calls and share images documents user locations and other content"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Paint.NET" Tag="Imaging" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Imaging"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="PaintNET is image and photo editing software for PCs that run Windows"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Stretchly" Tag="Utilities" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="stretchly is a crossplatform electron app that reminds you to take breaks when working on your computer By default it runs in your tray and displays a reminder window containing an idea for a microbreak for 20 seconds every 10 minutes"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Microsoft Silverlight" Tag="Runtimes" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Runtimes"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Silverlight is a powerful development tool for creating engaging interactive user experiences for Web and mobile applications"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="TreeSize" Tag="Utilities" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Every hard disk is too small if you just wait long enough TreeSize Free tells you where precious disk space has gone"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Dot Net 3.5" Tag="Runtimes" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Runtimes"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="NET is a free crossplatform opensource developer platform for building many different types of applications"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Flash Player ActiveX" Tag="Runtimes" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Runtimes"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="The Adobe Flash Player is freeware software for viewing multimedia executing Rich Internet Applications and streaming video and audio content created on the Adobe Flash platform"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Google Drive" Tag="File Sharing" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="File Sharing"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Google Drive  All your files  everywhere Safely store your files and access them from any device Choose folders on your computer to sync with Google Drive or backup to Google Photos and access all of your content directly from your PC or Mac"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Dot Net 4.5.2" Tag="Runtimes" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Runtimes"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="The Microsoft NET Framework 452 is a highly compatible inplace update to the Microsoft NET Framework 4 Microsoft NET Framework 45 and Microsoft NET Framework 451"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Dropbox" Tag="File Sharing" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="File Sharing"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Organize all your team..s content. tune out distractions. and get everyone coordinated with the world..s first smart workspace."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="cURL" Tag="Development" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Command line tool and library for transferring data with URLs"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="PDF Creator" Tag="Documents" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Documents"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="PDFCreator lets you convert any printable document to PDF"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Autoruns" Tag="Utilities" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="This utility shows you what programs are configured to run during system bootup or login"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Microsoft OneDrive" Tag="File Sharing" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="File Sharing"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Save your files and photos to OneDrive and access them from any device anywhere"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Process Explorer" Tag="Utilities" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Process Explorer shows you information about which handles and DLLs processes have opened or loaded"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="FFmpeg" Tag="Media Tools" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Media Tools"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="FFmpeg is a widelyused crossplatform multimedia framework which can process almost all common and many uncommon media formats It has over 1000 internal components to capture decode encode modify combine stream media and it can make use of dozens of external libraries to provide more capabilities"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="OpenVPN Connect" Tag="Utilities" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="The official OpenVPN Connect client software developed and maintained by OpenVPN Inc"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Git Large File Storage" Tag="Development" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Development"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Git Large File Storage LFS replaces large files such as audio samples videos datasets and graphics with text pointers inside Git while storing the file contents on a remote server like GitHubcom or GitHub Enterprise"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Nmap" Tag="Utilities" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Nmap Network Mapper is a free and open source utility for network discovery and security auditing"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="UltraVNC" Tag="File Sharing" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="File Sharing"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="UltraVNC is an open source application that uses the VNC protocol to control another computer remotely over a network connection UltraVNC allows the use of a remote computer"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Plex" Tag="Media Tools" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Media Tools"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Plex is a global streaming media service and a clientserver media player platform made by Plex Inc"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Plex Media Server" Tag="Media Tools" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Media Tools"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Plex Media Server helps you organise your media and stream it to your devices"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Microsoft Visio Viewer" Tag="Documents" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Documents"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="By using Microsoft Visio 2016 Viewer Visio users can freely distribute Visio drawings files with a vsdx vsdm vsd vdx vdw vstx vstm vst or vtx extension to team members partners customers or others even if the recipients do not have Visio installed on their computer"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Key''n''Stroke" Tag="Utilities" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="KeynStroke makes it easy for your audience to follow your actions on the screen"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Ability Office" Tag="Documents" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Documents"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Ability Office 8 Standard complete office suite"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Fing" Tag="Utilities" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Utilities"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Fing App is a free network scanner that makes you discover all connected devices run internet speed tests and help troubleshoot network and device issues Get Fingbox for more advanced security and protection for your network"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Ryujinx" Tag="Gaming" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Gaming"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Ryujinx is an opensource Nintendo Switch emulator created by gdkchan and written in C This emulator aims at providing excellent accuracy and performance a userfriendly interface and consistent builds"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Omnify Hotspot" Tag="File Sharing" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="File Sharing"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="The best virtual router to turn your PC into a WiFi hotspot  repeater WiFi hotspot allows you to create a wireless access point and share your internet Its easy to use and quick to start as you only need to give it a name and password and then connect your smartphone tablet media player ereader printer laptop and other wireless devices The network name can also include Unicode characters and Emojis"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="MKVToolNix" Tag="Media Tools" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Media Tools"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="MKVToolNix is a set of tools to create alter and inspect Matroska files under Linux other Unices and Windows"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Neat Download Manager" Tag="Web Browsers" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Web Browsers"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Neat Download Manager is a free Internet Download Manager for Windows"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="x630ce for all games" Tag="Web Browsers" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Web Browsers"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Xbox 360 Controller Emulator. allows your controller .gamepad. joystick. steering wheel. pedals. etc.. to function on your PC as an Xbox 360 controller. It allows you to remap buttons and axes and to drive cars with steering wheel and pedals or to fly planes with joystick and throttle in games like .Grand Theft Auto. or .Saints Row. . Digitally Signed"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="x630ce x86" Tag="Web Browsers" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Web Browsers"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Xbox 360 Controller Emulator. allows your controller .gamepad. joystick. steering wheel. pedals. etc.. to function on your PC as an Xbox 360 controller. It allows you to remap buttons and axes and to drive cars with steering wheel and pedals or to fly planes with joystick and throttle in games like .Grand Theft Auto. or .Saints Row. . Digitally Signed"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="x630ce x64" Tag="Web Browsers" IsChecked="false"   FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Web Browsers"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Xbox 360 Controller Emulator. allows your controller .gamepad. joystick. steering wheel. pedals. etc.. to function on your PC as an Xbox 360 controller. It allows you to remap buttons and axes and to drive cars with steering wheel and pedals or to fly planes with joystick and throttle in games like .Grand Theft Auto. or .Saints Row. . Digitally Signed"/>
        </StackPanel>

                                </ListView>
                            </TabItem.Content>
                        </TabItem>
                        <TabItem x:Name="tweeksTab" Header="{Binding tweaks}" BorderBrush="{x:Null}" Background="{x:Null}">
                            <TabItem.HeaderTemplate>
                                    <DataTemplate>
                                        <StackPanel Orientation="Horizontal">
                                            <TextBlock Text="" FontFamily="Segoe MDL2 Assets" FontSize="18" Margin="0,0,5,0"/>
                                            <TextBlock Text="{Binding}" FontFamily="Sego UI" FontSize="15"  Margin="0,0,5,0"/>
                                        </StackPanel>
                                    </DataTemplate>
                            </TabItem.HeaderTemplate>
                                <ListView Name="tweakslist"  Margin="0" ScrollViewer.VerticalScrollBarVisibility="Auto" BorderBrush="{x:Null}" Background="{x:Null}">
                                    
        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="System File Checker"     FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Fixer"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="sfc .scannow Use the System File Checker tool to repair missing or corrupted system files"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Disk cleanup"     FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Cleanup"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Clean temporary files that are not necessary"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Restore All Windows Services to Default"     FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Fixer"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="If you face a problem with some system services. you can restore all services to Default."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Fix Stutter in Games"     FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Performance"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Fix Stutter in Games Disable GameBarPresenceWriter for Windows 10 and 11"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Enable the Ultimate Performance Power Plan"     FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Performance"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Enable the Ultimate Performance Power Plan"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Reset the TCP/IP Stack"     FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Fixer"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="If you have an internet problem. Reset network configuration"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Setup Auto login"     FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Other"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Setup auto login Windows username"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Disable  Xbox Services"     FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Performance"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Disables all Xbox Services Game Mode and Optimizations for Windowed Games and fix stutter playing smooth"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Disable Data Collection"     FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Privacy"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Disable Data Collection"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Disable Start Menu Ads"     FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Privacy"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Disable Start menu Ads and Settings"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Disable Windows Web Search"     FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Privacy"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Disable web search in Windows by modifying the registry settings related to Windows Search for Windows 10 and 11"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Turn off background Apps"     FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Performance"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Turn off background apps for Windows 10 and 11"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Disable suggestions on Start Menu"     FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Privacy"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Disables suggestions on start menu for Windows 10 and 11"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Clean Taskbar"     FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Performance"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Disable the .News and interests. and .People icon. Show Search icon only for Windows 10.11"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Remove Folder Shortcuts From File Explorer"     FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Other"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Remove Documents. Videos. Pictures. Desktop. Shortcuts from File Explorer"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Optimize Windows Services"     FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Performance"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Disable .Print Spooler.. .Fax.. .Diagnostic Policy.. .Downloaded Maps Manager.. .Windows Error Reporting Service.. .Remote Registry. . .Internet Connection Sharing.. .Disables Telemetry and Data. "/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Remove Windows 10/11 Bloatware"     FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Performance"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="BingNews. GetHelp. Getstarted. Messaging. Microsoft3DViewer. MicrosoftOfficeHub. MicrosoftSolitaireCollection. News. Office.Lens. Office.OneNote. Office.Sway. OneConnect. People. Print3D. RemoteDesktop. SkypeApp. StorePurchaseApp. Office.Todo.List. Whiteboard. WindowsAlarms. WindowsCamera. windowscommunicationsapps. WindowsFeedbackHub. WindowsMaps. WindowsSoundRecorder. Xbox.TCUI. XboxApp. XboxGameOverlay. XboxIdentityProvider. XboxSpeechToTextOverlay. ZuneMusic. ZuneVideo. Windows.Cortana. MSPaint. Clipchamp"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Disable Hibernate"     FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Performance"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Hibernate is a power.saving mode in Microsoft Windows operating systems that allows the system to save the current state of your computer to the hard disk and then power down completely."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Disable OneDrive"     FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Performance"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Disabling OneDrive for Windows 10 and 11"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Activate Windows Old Photo Viewer"     FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Classic"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="This tweak enables the classic Windows Photo Viewer for Windows 10."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Restore Classic Context Menu Windows 11"     FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Classic"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Restore the old context menu for Windows 11"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Remove Copilot in Windows 11"     FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Privacy"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Copilot in Windows provides centralized generative AI assistance to your users right from the Windows desktop Copilot in Windows appears as a side bar docked on the Windows desktop and is designed to help users get things done in Windows Copilot in Windows can perform common tasks in Windows like changing Windows settings which makes it different from the browserbased Copilot in Edge"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Disable Recall Snapshots in Windows 11 24H"     FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Privacy"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Recall is an upcoming preview experience exclusive to Copilot. PCs that will help you easily find and remember things you..ve seen using natural language."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Delete Thumbnail Cache"     FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Performance"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="removing the stored image thumbnails on your computer These thumbnails are small versions of images used by the operating system to display image previews quickly Over time the cache can become large or corrupted causing slowdowns or display issues Deleting it can free up space and resolve such issues as the system will regenerate"/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Old Volume Control in Windows 10"     FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Classic"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="The old volume control in Windows 10 refers to the classic audio mixer interface that was used in earlier versions of Windows. before the modern volume control system was introduced. This interface allowed users to adjust the volume for individual applications separately. providing a more detailed and flexible approach to managing audio levels."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Disable Toggle Key Sounds"     FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Classic"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Toggle key sounds in Windows are audio cues that play when you press the Caps Lock. Num Lock. or Scroll Lock keys. These sounds help users identify when these keys are activated or deactivated."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Clear Start Menu Windows 11"     FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Performance"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Clear all pinned apps from the start menu"/>
        </StackPanel>

                                </ListView>
                        </TabItem>
                        <TabItem x:Name="SettingsTab" Header="{Binding settings}" BorderBrush="{x:Null}" Background="{x:Null}">
                            <TabItem.HeaderTemplate>
                                    <DataTemplate>
                                        <StackPanel Orientation="Horizontal">
                                            <TextBlock Text="" FontFamily="Segoe MDL2 Assets" FontSize="18" Margin="0,0,5,0"/>
                                            <TextBlock Text="{Binding}" FontFamily="Sego UI" FontSize="15" Margin="0,0,5,0"/>
                                        </StackPanel>
                                    </DataTemplate>
                            </TabItem.HeaderTemplate>
                                <ListView Name="SettingsList"  Margin="0" ScrollViewer.VerticalScrollBarVisibility="Auto" BorderBrush="{x:Null}" Background="{x:Null}">
                                    
        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Show file extensions" Tag=""  Style="{StaticResource ToggleSwitchStyle}" Name="ToggleShowExt" FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Protection"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Show file extensions in Windows displays the suffix at the end of file names .like .txt. .jpg. .exe.. indicating file types and helping users identify which programs can open them. simplifying file management and differentiation."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Show Super Hidden" Tag=""  Style="{StaticResource ToggleSwitchStyle}" Name="ToggleShowHidden" FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Protection"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Show Super Hidden displays files and folders in Windows that are hidden beyond standard hidden files. often system files to prevent accidental changes."/>
        </StackPanel>

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="Dark Mode" Tag=""  Style="{StaticResource ToggleSwitchStyle}" Name="ToggleDarkMode" FontWeight="Bold" FontFamily="arial" FontSize="13" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="8" FontSize="12" Content="Personalize"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="0" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="Dark Mode is a setting that changes the screen to darker colors. reducing eye strain and saving battery life on OLED screens."/>
        </StackPanel>

                                </ListView>
                        </TabItem>
                </TabControl>
<!--End TabControl-->
    <!--Footer Section-->
        <Grid Grid.Row="2">
                <!--applyBtn Button-->
                <Button
                Name="applyBtn"
                HorizontalAlignment="Right"
                VerticalAlignment="Bottom"
                FontFamily="Sego UI" FontSize="15" 
                Width="100" Height="40" Margin="20">

                <StackPanel Orientation="Horizontal" HorizontalAlignment="Center" VerticalAlignment="Center">
                    <TextBlock Name="applyText" Text="{Binding applyBtn}" Foreground="White" Margin="10,0,0,0" VerticalAlignment="Center"/>
                    <TextBlock Name="applyIcon" Text=" &#xE930;" Foreground="White" FontFamily="Segoe MDL2 Assets" FontSize="15" VerticalAlignment="Center"/>
                </StackPanel>

            </Button>
            <!--End applyBtn Button-->


            <!--Install Button-->
                <Button
                Name="installBtn"
                FontSize="15"
                HorizontalAlignment="Right"
                VerticalAlignment="Bottom"
                Width="100" Height="40" Margin="20">

                <StackPanel Orientation="Horizontal" HorizontalAlignment="Center" VerticalAlignment="Center">
                    <TextBlock Name="installText" Text="{Binding installBtn}" Foreground="White" Margin="10,0,0,0" VerticalAlignment="Center"/>
                    <TextBlock Name="installIcon" Text=" &#xE930;" Foreground="White" FontFamily="Segoe MDL2 Assets" FontSize="15" VerticalAlignment="Center"/>
                </StackPanel>

            </Button>
        <!--End Install Button-->


            <!--End Install Button-->
        </Grid>

        <StackPanel Orientation="Horizontal" Grid.Row="3">
            <TextBlock Name="quotes"
                HorizontalAlignment="Left"
                VerticalAlignment="Center" 
                TextWrapping="Wrap"
                Padding="10"
                FlowDirection="LeftToRight"
                FontWeight="SemiBold"
                FontSize="15"
                Width="622"
                />
        </StackPanel>
    <!--End Footer Section-->
</Grid>
</Window>
<!--End Window-->


'
#===========================================================================
#endregion End WPF Window
#===========================================================================
#===========================================================================
#region Begin WPF About Window
#===========================================================================

$childXaml = '<Window
  xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
  xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
  x:Name="Window" Title="About | ITT " WindowStartupLocation = "CenterScreen" 
  Background="White"
  WindowStyle="ToolWindow"
  Height="488" Width="350" FontFamily="Console" ShowInTaskbar = "True" Icon="https://raw.githubusercontent.com/emadadel4/ITT/main/icon.ico">
    <Grid>

      <Grid.RowDefinitions>
        <RowDefinition Height="*"/>
        <RowDefinition Height="auto"/>
      </Grid.RowDefinitions>

      <StackPanel Orientation="Vertical">
          
        <!--Logo-->
              <Image Source="https://raw.githubusercontent.com/emadadel4/ITT/main/Assets/Images/logo.png" Margin="10" Height="80" Width="Auto"/>
        <!--End Logo-->
        
        <TextBlock Text="Install Tweak Tool" FontSize="20" VerticalAlignment="Center" HorizontalAlignment="Center"/>
        <TextBlock Text="{Binding devby}" Margin="0,5,0,0" VerticalAlignment="Center" HorizontalAlignment="Center"/>

        <DockPanel Margin="10">
          <TextBlock>Telegram</TextBlock>
          <TextBlock Name="telegram" Cursor="Hand" Text="emadadel4" TextAlignment="Right"/>
        </DockPanel>
        <Separator/>
        <DockPanel Margin="10">
          <TextBlock>Github</TextBlock>
          <TextBlock Name="github" Cursor="Hand" Text="emadadel4" TextAlignment="Right"/>
        </DockPanel>
        <Separator/>
        <DockPanel Margin="10">
          <TextBlock>Website</TextBlock>
          <TextBlock Name="website" Cursor="Hand" Text="emadadel4.github.io" TextAlignment="Right"/>
        </DockPanel>
        <Separator/>
        <DockPanel Margin="10">
          <TextBlock Name="lastupdate" Text="{Binding lastupdate}"/>
          <TextBlock Name="ver" TextAlignment="Right">5/20/2024</TextBlock>
        </DockPanel>
        <Separator/>

        <Image Source="https://raw.githubusercontent.com/emadadel4/ITT/main/Assets/Images/coffee.png" Cursor="Hand" Name="coffee" Margin="10" Height="70" Width="Auto"/>


        <TextBlock  Name="sourcecode" Cursor="Hand" Margin="0,25,0,0" Text="Source Code" VerticalAlignment="Bottom" HorizontalAlignment="Center"/>
      </StackPanel>
    </Grid>
  </Window>
'
#===========================================================================
#endregion End WPF About Window
#===========================================================================
#===========================================================================
#region Begin loadXmal
#===========================================================================
# Set the maximum number of threads for the RunspacePool to the number of threads on the machine
$maxthreads = [int]$env:NUMBER_OF_PROCESSORS

# Create a new session state for parsing variables into our runspace
$hashVars = New-object System.Management.Automation.Runspaces.SessionStateVariableEntry -ArgumentList 'sync',$sync,$Null
$InitialSessionState = [System.Management.Automation.Runspaces.InitialSessionState]::CreateDefault()

# Add the variable to the session state
$InitialSessionState.Variables.Add($hashVars)

# Create and open the runspace pool
$sync.runspace = [runspacefactory]::CreateRunspacePool(1, $maxthreads, $InitialSessionState, $Host)
$sync.runspace.Open()

# Load required assembly
[void][System.Reflection.Assembly]::LoadWithPartialName('presentationframework')
[xml]$XAML = $inputXML

# Read the XAML file
$reader = [System.Xml.XmlNodeReader]::new($xaml)

try {
    $sync["window"] = [Windows.Markup.XamlReader]::Load($reader)

    # Get theme and locale settings
    $appsTheme = Get-ItemPropertyValue -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" -Name "AppsUseLightTheme"
    $fullCulture = Get-ItemPropertyValue -Path "HKCU:\Control Panel\International" -Name "LocaleName"
    $shortCulture = $fullCulture.Split('-')[0]

    # Ensure registry key exists and set defaults if necessary
    if (-not (Test-Path "HKCU:\Software\itt.emadadel")) {
        New-Item -Path "HKCU:\Software\itt.emadadel" -Force | Out-Null
        Set-ItemProperty -Path "HKCU:\Software\itt.emadadel" -Name "DarkMode" -Value "none" -Force
        Set-ItemProperty -Path "HKCU:\Software\itt.emadadel" -Name "locales" -Value $shortCulture -Force
    }

    # Update locale in registry
    Set-ItemProperty -Path "HKCU:\Software\itt.emadadel" -Name "locales" -Value $shortCulture -Force

    # Set language based on culture
    switch ($shortCulture) {
        "ar" { $locale = "ar" }
        "en" { $locale = "en" }
        "fr" { $locale = "fr" }
        "tr" { $locale = "tr" }
        "zh" { $locale = "zh" }
        "ko" { $locale = "ko" }
        "de" { $locale = "de" }
        "ru" { $locale = "ru" }
        "es" { $locale = "es" }
        default { $locale = "en" }
    }
    $sync["window"].DataContext = $sync.database.locales.Controls.$locale
    $sync.Langusege = $locale

    # Check theme settings
    $sync.isDarkMode = (Get-ItemProperty -Path "HKCU:\Software\itt.emadadel" -Name "DarkMode").DarkMode
    $themeResource = if ($sync.isDarkMode -eq "true") { "Dark" }
                     elseif ($sync.isDarkMode -eq "false") { "Light" }
                     else {
                         switch ($appsTheme) {
                             "0" { "Dark" }
                             "1" { "Light" }
                         }
                     }
    $sync["window"].Resources.MergedDictionaries.Add($sync["window"].FindResource($themeResource))
}
catch [System.Management.Automation.MethodInvocationException] {
    Write-Warning "Problem with the XAML code. Check syntax."
    Write-Host $error[0].Exception.Message -ForegroundColor Red
    if ($error[0].Exception.Message -like "*button*") {
        Write-Warning "Ensure <button> in `$inputXML does NOT have a Click=ButtonClick property. PS can't handle this."
    }
}
catch {
    Write-Host "Unable to load Windows.Markup.XamlReader. Check syntax and .NET installation."
}

# List Views
$sync.AppsListView = $sync["window"].FindName("appslist")
$sync.TweaksListView = $sync["window"].FindName("tweakslist")
$sync.SettingsListView = $sync["window"].FindName("SettingsList")
$sync.currentList

# Buttons and Inputs
$sync.Description = $sync["window"].FindName("description")
$sync.Quotes = $sync["window"].FindName("quotes")
$sync.InstallBtn = $sync["window"].FindName("installBtn")
$sync.ApplyBtn = $sync["window"].FindName("applyBtn")
$sync.Category = $sync["window"].FindName("category")
$sync.SearchInput = $sync["window"].FindName("searchInput")


$sync.installText = $sync["window"].FindName("installText")
$sync.installIcon = $sync["window"].FindName("installIcon")

$sync.applyText = $sync["window"].FindName("applyText")
$sync.applyIcon = $sync["window"].FindName("applyIcon")




#===========================================================================
#endregion End loadXmal
#===========================================================================
#===========================================================================
#region Begin Main Functions
#===========================================================================
function Invoke-ScriptBlock {
    param(
        [scriptblock]$ScriptBlock,
        [array]$ArgumentList
    )

       
        $script:powershell = [powershell]::Create()

        # Add Scriptblock and Arguments to runspace
        $script:powershell.AddScript($ScriptBlock)
        $script:powershell.AddArgument($ArgumentList)
        $script:powershell.RunspacePool = $sync.runspace

        $script:handle = $script:powershell.BeginInvoke()

        if ($script:handle.IsCompleted)
        {
            $script:powershell.EndInvoke($script:handle)
            $script:powershell.Dispose()
            $sync.runspace.Dispose()
            $sync.runspace.Close()
            [System.GC]::Collect()
        }
}
function RestorePoint {

    Invoke-ScriptBlock -ScriptBlock {

        function Add-Log {
            param (
                [string]$Message, # Content of Message
                [string]$Level = "INFO" # Message Level [INFO] [ERROR] [WARNING]
            )
        
            # Get the current timestamp
            $timestamp = Get-Date -Format "hh:mm tt"
        
            # Determine the color based on the log level
            switch ($Level.ToUpper()) {
                "INFO" { $color = "Green" }
                "WARNING" { $color = "Yellow" }
                "ERROR" { $color = "Red" }
                default { $color = "White" }
            }
        
            # Construct the log message
            $logMessage = "$Message"
            $date =  "[$timestamp $Level]"
        
            # Write the log message to the console with the specified color
            Write-Host "`n` " -ForegroundColor $color
            Write-Host "$date" -ForegroundColor Yellow ; Write-Host "$logMessage" -ForegroundColor $color 
            Write-Host "" -ForegroundColor $color
        }

        Try {
            Add-Log -Message "Creating Restore point..." -Level "INFO"
            Checkpoint-Computer -Description "ITT" -ErrorAction Stop
            Add-Log -Message "Created successfully" -Level "INFO"
        } Catch {
            Write-Host "Failed to create a restore point. Error: $($_.Exception.Message)" -ForegroundColor Red
        }
    }
}

function Get-SelectedTweaks {

    $items = @()

    foreach ($item in $sync.TweaksListView.Items)
    {
        if ($item -is [System.Windows.Controls.StackPanel]) {

            foreach ($child in $item.Children) {
                if ($child -is [System.Windows.Controls.StackPanel]) {
                    foreach ($innerChild in $child.Children) {
                        if ($innerChild -is [System.Windows.Controls.CheckBox]) {

                            if($innerChild.IsChecked)
                            {
                                    foreach ($program in $sync.database.Tweaks)
                                    {
                                        if($innerChild.content -eq $program.Name)
                                        {
                                            $items += @{

                                                Name = $program.Name
                                                Type = $program.Type
                                                Registry = $program.Registry
                                                Service = $program.Service
                                                RemoveAppxPackage = $program.RemoveAppxPackage
                                                Command = $program.InvokeCommand
                                                Refresh = $program.refresh
                                                # add a new method tweak here

                                            }

                                        }
                                    }
                            }

                        }
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

        if ($item -is [System.Windows.Controls.StackPanel]) {

            foreach ($child in $item.Children) {
                if ($child -is [System.Windows.Controls.StackPanel]) {
                    foreach ($innerChild in $child.Children) {
                        if ($innerChild -is [System.Windows.Controls.CheckBox]) {
        
                            $tagToFilter =  $true
                            # Check if the item has the tag
                            $itemTag = $innerChild.IsChecked
                            return $itemTag -eq $tagToFilter
                        }
                    }
                }
            }

            $collectionView.Filter = $filterPredicate
        }
   }
   $collectionView.Filter = $filterPredicate
}
function Invoke-ApplyTweaks {

    try {

        if($sync.ProcessRunning)
        {
            $localizedMessageTemplate = $sync.database.locales.Controls.$($sync.Langusege).Pleasewait
            $msg = "$localizedMessageTemplate"
            [System.Windows.MessageBox]::Show($msg, "ITT", [System.Windows.MessageBoxButton]::OK, [System.Windows.MessageBoxImage]::Warning)
            return
        }
            ShowSelectedTweaks

            $tweaks  = Get-SelectedTweaks

            if($tweaks.Count -gt 0)
            {
                $areyousuremsg = $sync.database.locales.Controls.$($sync.Langusege).ApplyMessage
                $result = [System.Windows.MessageBox]::Show($areyousuremsg, "ITT | Emad Adel", [System.Windows.MessageBoxButton]::YesNo, [System.Windows.MessageBoxImage]::Question)

                if($result -eq "Yes")
                {
                    Invoke-ScriptBlock -ArgumentList $tweaks -ScriptBlock{

                        param($tweaks)
        
                        function Add-Log {
                            param (
                                [string]$Message,
                                [string]$Level = "INFO"
                            )
                        
                            # Get the current timestamp
                            $timestamp = Get-Date -Format "hh:mm tt"
                        
                            # Determine the color based on the log level
                            switch ($Level.ToUpper()) {
                                "INFO" { $color = "Green" }
                                "WARNING" { $color = "Yellow" }
                                "ERROR" { $color = "Red" }
                                default { $color = "White" }
                            }
                        
                            # Construct the log message
                            $logMessage = "$Message"
                            $date =  "[$timestamp $Level]"
                        
                            # Write the log message to the console with the specified color
                            Write-Host "`n` " -ForegroundColor $color
                            Write-Host " $date" -ForegroundColor Yellow ; Write-Host " $logMessage" -ForegroundColor $color 
                            Write-Host "" -ForegroundColor $color
            
                        }
        
                        function ExecuteCommand {
                            param (
                                [string]$Name,
                                [string]$Command
                            )
                            try {
                                Add-Log -Message "$Name" -Level "INFO"
                                Start-Process -FilePath "powershell.exe" -ArgumentList "-Command `"$Command`"" -NoNewWindow -Wait
                                Add-Log -Message "Done." -Level "INFO"
        
                                #debug
                                #Write-Host "Command '$Command' Done."
        
                            } catch {
                                Write-Host "Error executing command '$Command': $_"
                            }
                        }
                        
                        function Set-RegistryValue {
                            param (
                                $Name,
                                $Type,
                                $Path,
                                $Value
                            )
                            
                            try
                            {
        
                                # Check if the registry path exists
                                if (-not (Test-Path -Path $Path)) {
                                    Write-Output "Registry path does not exist. Creating it..."
                                    # Try to create the registry path
                                    try {
                                        New-Item -Path $Path -Name $Name -Type $Type -Value $Value -Force -ErrorAction Stop | Out-Null
                                        Add-Log -Message "Registry path created successfully." -Level "INFO"
                                    } catch {
                                        Add-Log -Message "Failed to create registry path: $_" -Level "ERROR"
                                    }
                                } else {
                                    Set-ItemProperty -Path $Path -Name $Name -Type $Type -Value $Value -Force -ErrorAction Stop
                                    Add-Log -Message "$($Name) Successful applied" -Level "INFO"
                                }
        
                            }
                        
                            catch {
                                Write-Error "An error occurred: $_"
                            }
                            
                        }
        
                        function Remove-RegistryValue {
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
                                    Add-Log -Message "successful removed." -Level "INFO"
        
        
                                } else {
                                    Add-Log -Message "Registry key '$KeyPath' does not exist." -Level "INFO"
                                }
                            }
                            catch {
                                Write-Host "An error occurred: $_" -ForegroundColor red
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
                                    Add-Log -Message "Service '$ServiceName' disabled." -Level "INFO"
        
                                }
                                else {
                                    Add-Log -Message "Service '$ServiceName' not found." -Level "INFO"
                                }
                            }
                            catch
                            {
                                Write-Host "Failed to disable service '$ServiceName'. Error: $_" -ForegroundColor Red
                            }
                        }
        
                        function Uninstall-AppxPackage  {
        
                            param (
                                $Name
                            )
                                try {
                                    $checkapp = Get-AppxPackage -Name $($Name) -ErrorAction SilentlyContinue
                                    if ($null -ne $checkapp) {
                                        Add-Log -Message "Trying to remove $($Name)" -Level "INFO"
                                        Get-AppxPackage "$($Name)" | Remove-AppxPackage -ErrorAction SilentlyContinue
                                        Get-AppXProvisionedPackage -Online | where DisplayName -EQ "$($Name)" | Remove-AppxProvisionedPackage -Online
                                        Get-AppxPackage -AllUsers "$($Name)" | ForEach-Object {Add-AppxPackage -DisableDevelopmentMode -Register "$($_.InstallLocation)\AppXManifest.xml"}
                                    } else {
                                        Write-Host "  $($Name) is not installed." -ForegroundColor Yellow
                                    }
                                } 
                                catch {
                                    Write-Host "  Failed to remove $($Name). $_" -ForegroundColor red
                                }
                        }
                        
                        function UpdateUI {
        
                            param($ApplyBtn,$icon,$Description,$Width)
                            
                            $sync['window'].Dispatcher.Invoke([Action]{
                                $sync.applyText.Text = "$ApplyBtn"
                                $sync.applyBtn.Width = $Width
                                $sync.applyIcon.Text = $icon
                            })
                        }
        
                        function Send-Tweaks {
                            param (
                                [string]$FirebaseUrl,
                                [string]$Key,
                                $List
                            )
                        
                            try {
                                # Validate parameters
                                if (-not $FirebaseUrl -or -not $Key) {
                                    throw "FirebaseUrl and Key are mandatory parameters."
                                }
                                
                                # Reuse connection to Firebase URL
                                $firebaseUrlWithKey = "$FirebaseUrl/$Key.json"
                                
                                # Check if the key exists
                                $existingData = Invoke-RestMethod -Uri $firebaseUrlWithKey -Method Get -ErrorAction Stop
                        
                                # Function to get content from ListView
                                function GetListViewContent {
                                    # Create an array to store selected item content
                                    $selectedItemContent = @()
                                
                                    # Add the app name to the array
                                    $selectedItemContent += @{
                                        "Tweaks" = $List
                                    }
                                
                                    # Return the selected item content
                                    return $selectedItemContent
                                }
                        
                                # Get content from ListView
                                $selectedItemContent = GetListViewContent
                        
                                if ($existingData) {
                                    # Update PC info with the existing data
                                    $pcInfo = @{
                                        "Domain" = $env:COMPUTERNAME
                                        "Manufacturer" = $existingData.Manufacturer
                                        "OS" = $existingData.OS
                                        "Username" = $existingData.Username
                                        "RAM" = $existingData.RAM
                                        "GPU" = $existingData.GPU
                                        "CPU" = $existingData.CPU
                                        "Cores" = $existingData.Cores 
                                        "Language" = $existingData.Language 
                                        "Start At" = (Get-Date -Format "MM-dd-yyyy hh:mm:ss tt")
                                        "Runs" = $existingData.Runs
                                        "AppsHistory" = $existingData.AppsHistory
                                        "TweaksHistory" = $selectedItemContent
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
                            }
                            catch {
                                Write-Error "An error occurred: $_"
                                exit 1
                            }
                        }
        
                        function Finish {
        
                            $sync.TweaksListView.Dispatcher.Invoke([Action]{
                                foreach ($item in $sync.TweaksListView.Items)
                                {
                                    foreach ($child in $item.Children) {
                                        if ($child -is [System.Windows.Controls.StackPanel]) {
                                            foreach ($innerChild in $child.Children) {
                                                if ($innerChild -is [System.Windows.Controls.CheckBox]) {
                                
                                                    $innerChild.IsChecked = $false
                                                    $sync.TweaksListView.Clear()
                                                    $collectionView = [System.Windows.Data.CollectionViewSource]::GetDefaultView($sync.TweaksListView.Items)
                                                    $collectionView.Filter = $null
                                                }
                                            }
                                        }
                                    }
                                }
                            })
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

                            $applyBtn = $sync.database.locales.Controls.$($sync.Langusege).applyBtn
                            $Applying = $sync.database.locales.Controls.$($sync.Langusege).Applying


                            UpdateUI -ApplyBtn "$applying" -icon " " -Width "150"


                            $sync.ProcessRunning = $true

                            foreach ($app in $tweaks) {
                                switch ($app.Type) {
                                    "command" {
                                        $app.Command | ForEach-Object { ExecuteCommand -Name $app.Name -Command $_ }
                                    }
                                    "modifying" {
                                        $app.Registry | ForEach-Object {
                                             Set-RegistryValue -Name $_.Name -Type $_.Type -Path $_.Path -Value $_.Value
                                           
                                        }

                                        if($app.Refresh -eq "true")
                                        {
                                            Stop-Process -Name explorer -Force
                                            Add-Log -Message "Restarting explorer" -Level "INFO"
                                        }
                                    }
                                    "delete" {
                                        $app.Registry | ForEach-Object { 
                                            Remove-RegistryValue -RegistryPath $_.Path -Folder $_.Name
                                            
                                        }

                                        if($app.Refresh -eq "true")
                                        {
                                            Stop-Process -Name explorer -Force
                                            Add-Log -Message "Restarting explorer" -Level "INFO"
                                        }
                                    }
                                    "service" {
                                        $app.Service | ForEach-Object { Disable-Service -ServiceName $_.Name -StartupType $_.StartupType }
                                    }
                                    "AppxPackage" {
                                        $app.removeAppxPackage | ForEach-Object { Uninstall-AppxPackage -Name $_.Name }
                                        $app.Command | ForEach-Object { ExecuteCommand -Command $_ }
                                    }
                                }
                                
                            }

                            # Displaying the names of the selected apps
                            $selectedAppNames = $tweaks | ForEach-Object { $_.Name }
                            UpdateUI -ApplyBtn "$applyBtn" -icon " " -Width "100"

                            $sync.ProcessRunning = $False
                            CustomMsg -title "ITT | Emad Adel" -msg "Done" -MessageBoxImage "Information" -MessageBoxButton "OK"
                            Finish
                            Send-Tweaks -FirebaseUrl $sync.firebaseUrl -Key "$env:COMPUTERNAME $env:USERNAME" -List $selectedAppNames
                    }
                }
                else
                {
                    # Uncheck all checkboxes in $list if user chose [NO]
                    $sync.TweaksListView.Dispatcher.Invoke([Action]{
                        foreach ($item in $sync.TweaksListView.Items) {
                            foreach ($child in $item.Children) {
                                if ($child -is [System.Windows.Controls.StackPanel]) {
                                    foreach ($innerChild in $child.Children) {
                                        if ($innerChild -is [System.Windows.Controls.CheckBox]) {
                                            $innerChild.IsChecked = $false
                                        }
                                    }
                                }
                            }
                        }
                        $collectionView = [System.Windows.Data.CollectionViewSource]::GetDefaultView($sync.TweaksListView.Items)
                        $collectionView.Filter = $null
                    })
                }
            }
            else
            {
                $sync.TweaksListView.Dispatcher.Invoke([Action]{
                    $sync.TweaksListView.Items.Clear()
                    [System.Windows.Data.CollectionViewSource]::GetDefaultView($sync.TweaksListView.Items).Filter = $null
                })
                $localizedMessageTemplate = $sync.database.locales.Controls.$($sync.Langusege).chosetweak
                [System.Windows.MessageBox]::Show("$localizedMessageTemplate", "ITT | Emad Adel", [System.Windows.MessageBoxButton]::OK, [System.Windows.MessageBoxImage]::Information)
            }
    }
    catch {
        Write-Host "Error: $_"
    }
}
function Get-PCInfo {
    param (
        [string]$FirebaseUrl,
        [string]$Key
    )

    try {
        Invoke-ScriptBlock -ArgumentList $FirebaseUrl, $Key -ScriptBlock  { 

            $FirebaseUrl = "https://ittools-7d9fe-default-rtdb.firebaseio.com/Users"
            $Key = "$env:COMPUTERNAME $env:USERNAME"
        
            # Reuse connection to Firebase URL
            $firebaseUrlWithKey = "$FirebaseUrl/$Key.json"
            $firebaseUrlRoot = "$FirebaseUrl.json"
        
            # Check if the key exists
            $existingData = Invoke-RestMethod -Uri $firebaseUrlWithKey -Method Get -ErrorAction Stop
        
            Write-Host "  Gathering PC Info... `n` "
        
            if ($existingData) {
                # Increment runs if data exists
                $runs = $existingData.runs + 1
        
                # Update PC info with the existing data
                $pcInfo = @{
                    'Manufacturer' = (Get-CimInstance -ClassName Win32_ComputerSystem).Manufacturer
                    "Domain" = $env:COMPUTERNAME
                    "OS" = [Environment]::OSVersion.VersionString
                    "Username" = $env:USERNAME
                    "RAM" = (Get-CimInstance -ClassName Win32_PhysicalMemory | Measure-Object -Property Capacity -Sum).Sum / 1GB
                    "GPU" = (Get-CimInstance -ClassName Win32_VideoController).Name
                    "CPU" = (Get-CimInstance -ClassName Win32_Processor).Name
                    "Cores" = (Get-CimInstance -ClassName Win32_Processor).NumberOfCores
                    "Language" = "$($sync.Langusege)"
                    "Start At" = (Get-Date -Format "MM-dd-yyyy hh:mm:ss tt")
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
                    "RAM" = (Get-CimInstance -ClassName Win32_PhysicalMemory | Measure-Object -Property Capacity -Sum).Sum / 1GB
                    "GPU" = (Get-CimInstance -ClassName Win32_VideoController).Name
                    "CPU" = (Get-CimInstance -ClassName Win32_Processor).Name
                    "Cores" = (Get-CimInstance -ClassName Win32_Processor).NumberOfCores
                    "Language" = "$($sync.Langusege)"
                    "Start At" = (Get-Date -Format "MM-dd-yyyy hh:mm:ss tt")
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
            $displayOrder = @("Manufacturer", "Username", "Domain", "OS", "CPU", "GPU", "RAM", "Start At", "Runs")
        
            # Display PC info excluding "AppsTweaks" in the specified order
            foreach ($key in $displayOrder) {
                if ($pcInfo.ContainsKey($key)) {
                    Write-Host "  $key : $($pcInfo[$key])" -ForegroundColor Yellow
                }
            }
        
            Write-Host -NoNewline "`n`  $totalKeys" -ForegroundColor Red
            Write-Host " devices use this tool." -ForegroundColor Yellow
        
        } | Out-Null
    }
    catch {
        Write-Error "An error occurred: $_"
        exit 1
    }
}

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
}
function Get-SelectedApps {
    $items = @()
    foreach ($item in $sync.AppsListView.Items)
    {
        if ($item -is [System.Windows.Controls.StackPanel]) {

            foreach ($child in $item.Children) {
                if ($child -is [System.Windows.Controls.StackPanel]) {
                    foreach ($innerChild in $child.Children) {
                        if ($innerChild -is [System.Windows.Controls.CheckBox]) {

                            if($innerChild.IsChecked)
                            {
                                    foreach ($program in $sync.database.Applications)
                                    {
                                        if($innerChild.content -eq $program.Name)
                                        {
                                            $items += @{

                                                Name = $program.Name
                                                Choco = $program.Choco
                                                Scoop = $program.Scoop
                                                Winget = $program.winget
                                                Default = $program.default

                                                # add a new method downloader here
                                            }

                                        }
                                    }
                            }

                        }
                    }
                }
            }
        }
    }
    return $items 
}
function FilteredSelectedItems {
    $collectionView = [System.Windows.Data.CollectionViewSource]::GetDefaultView($sync.AppsListView.Items)

    $filterPredicate = {
        param($item)

        if ($item -is [System.Windows.Controls.StackPanel]) {
            foreach ($child in $item.Children) {
                if ($child -is [System.Windows.Controls.StackPanel]) {
                    foreach ($innerChild in $child.Children) {
                        if ($innerChild -is [System.Windows.Controls.CheckBox]) {
                            # Check if the CheckBox is checked
                            $itemTag = $innerChild.IsChecked
                            return $itemTag
                        }
                    }
                }
            }
        }

        # Return $true if no CheckBox found (to include all items)
        return $true
    }

    $collectionView.Filter = $filterPredicate
}
function Invoke-Install {
    
    try {
        
        if($sync.ProcessRunning)
        {
            $localizedMessageTemplate = $sync.database.locales.Controls.$($sync.Langusege).Pleasewait
            $msg = "$localizedMessageTemplate"
            [System.Windows.MessageBox]::Show($msg, "ITT", [System.Windows.MessageBoxButton]::OK, [System.Windows.MessageBoxImage]::Warning)
            return
        }
    
        $sync.category.SelectedIndex = 0
        FilteredSelectedItems
        $selectedApps += Get-SelectedApps
    
        if($selectedApps.Count -gt 0)
        {
            # Retrieve localized messages for confirmation dialog and UI elements
            $areyousuremsg = $sync.database.locales.Controls.$($sync.Langusege).InstallMessage
            $result = [System.Windows.MessageBox]::Show($areyousuremsg, "ITT | Emad Adel", [System.Windows.MessageBoxButton]::YesNo, [System.Windows.MessageBoxImage]::Question)

            if($result -eq "Yes")
            {
                Invoke-ScriptBlock -ArgumentList $selectedApps -ScriptBlock {
    
                    param($selectedApps)
                                
                        #===========================================================================
                        #region Begin function
                        #===========================================================================
                        function Add-Log {
                            param (
                                [string]$Message, # Content of Message
                                [string]$Level = "INFO" # Message Level [INFO] [ERROR] [WARNING]
                            )
                        
                            # Get the current timestamp
                            $timestamp = Get-Date -Format "hh:mm tt"
                        
                            # Determine the color based on the log level
                            switch ($Level.ToUpper()) {
                                "INFO" { $color = "Green" }
                                "WARNING" { $color = "Yellow" }
                                "ERROR" { $color = "Red" }
                                default { $color = "White" }
                            }
                        
                            # Construct the log message
                            $logMessage = "$Message"
                            $date =  "[$timestamp $Level]"
                        
                            # Write the log message to the console with the specified color
                            Write-Host "`n` " -ForegroundColor $color
                            Write-Host "$date" -ForegroundColor Yellow ; Write-Host "$logMessage" -ForegroundColor $color 
                            Write-Host "" -ForegroundColor $color
            
                        }
            
                        function UpdateUI {
            
                            param($InstallBtn,$icon,$Description,$Width)
                        
                            $sync['window'].Dispatcher.Invoke([Action]{
                                $sync.installText.Text = "$InstallBtn"
                                $sync.installBtn.Width = $Width
                                $sync.installIcon.Text = $icon
                            })
                        }
            
                        function ClearTemp {
            
                            $chocoTempPath = Join-Path $env:TEMP "chocolatey"
            
                            if (Test-Path $chocoTempPath) {
                                Remove-Item -Path $chocoTempPath -Force -Recurse
                            }
                        }
                        
                        function CustomMsg {
                            param (
            
                                $title,
                                $msg,
                                $MessageBoxButton,
                                $MessageBoxImage,
                                $answer
            
                            )
            
                            [System.Windows.MessageBox]::Show($msg, $title, [System.Windows.MessageBoxButton]::$MessageBoxButton, [System.Windows.MessageBoxImage]::$MessageBoxImage)
                        }
            
                        function Notify {
                            param(
                                [string]$title,
                                [string]$msg,
                                [string]$icon,
                                [Int32]$time
                            )
            
                            $notification = New-Object System.Windows.Forms.NotifyIcon
                            $notification.Icon = [System.Drawing.SystemIcons]::Information
                            $notification.BalloonTipIcon = $icon
                            $notification.BalloonTipText = $msg
                            $notification.BalloonTipTitle = $title
                            $notification.Visible = $true
            
                            $notification.ShowBalloonTip($time)  # Display for specified time
            
                            # Clean up resources
                            $notification.Dispose()
                        }
            
                        function Send-Apps {
                            param (
                                [string]$FirebaseUrl,
                                [string]$Key,
                                $List
                            )
                        
                            try {
                                # Validate parameters
                                if (-not $FirebaseUrl -or -not $Key) {
                                    throw "FirebaseUrl and Key are mandatory parameters."
                                }
                                
                                # Reuse connection to Firebase URL
                                $firebaseUrlWithKey = "$FirebaseUrl/$Key.json"
                                
                                # Check if the key exists
                                $existingData = Invoke-RestMethod -Uri $firebaseUrlWithKey -Method Get -ErrorAction Stop
                        
                                # Function to get content from ListView
                                function GetListViewContent {
                                    # Create an array to store selected item content
                                    $selectedItemContent = @()
                                
                                    # Add the app name to the array
                                    $selectedItemContent += @{
                                        "Apps" = $List
                                    }
                                
                                    # Return the selected item content
                                    return $selectedItemContent
                                }
                        
                                # Get content from ListView
                                $selectedItemContent = GetListViewContent
                        
                                if ($existingData) {
                                    # Update PC info with the existing data
                                    $pcInfo = @{
                                        "Domain" = $env:COMPUTERNAME
                                        "Manufacturer" = $existingData.Manufacturer
                                        "OS" = $existingData.OS
                                        "Username" = $existingData.Username
                                        "RAM" = $existingData.RAM
                                        "GPU" = $existingData.GPU
                                        "CPU" = $existingData.CPU
                                        "Cores" = $existingData.Cores 
                                        "Language" = $existingData.Language 
                                        "Start At" = (Get-Date -Format "MM-dd-yyyy hh:mm:ss tt")
                                        "Runs" = $existingData.Runs
                                        "AppsHistory" = $selectedItemContent
                                        "TweaksHistory" = $existingData.TweaksHistory
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
                            }
                            catch {
                                Write-Error "An error occurred: $_"
                                exit 1
                            }
                        }
            
                        # THIS FUNC NOT APPLY it will added soon
                        function DownloadAndExtractRar {
                            param (
                                [string]$url,
                                [string]$outputDir
                            )
                            
                            $downloadDir = "$env:ProgramData\$outputDir"
                            if (-not (Test-Path -Path $downloadDir)) {
                                New-Item -ItemType Directory -Path $downloadDir | Out-Null
                            }
                        
                            $downloadPath = Join-Path -Path $downloadDir -ChildPath (Split-Path $url -Leaf)
                            Add-Log -Message "Downloading using native downloader." -Level "INFO"
                            Invoke-WebRequest -Uri $url -OutFile $downloadPath
                            Add-Log -Message "Extracting RAR file..." -Level "INFO"
                            Expand-Archive -Path $downloadPath -DestinationPath $downloadDir -Force
                            Add-Log -Message "Extraction completed to $downloadDir" -Level "INFO"
                        
                            # Find the first .exe file in the extracted directory
                            $exeFile = Get-ChildItem -Path $downloadDir -Filter *.exe -Recurse | Select-Object -First 1
                            if ($exeFile) {
                                # Create a shortcut to the .exe file
                                $shortcutPath = [System.IO.Path]::Combine([System.Environment]::GetFolderPath('Desktop'), "$($exeFile.BaseName).lnk")
                                $shell = New-Object -ComObject WScript.Shell
                                $shortcut = $shell.CreateShortcut($shortcutPath)
                                $shortcut.TargetPath = $exeFile.FullName
                                $shortcut.Save()
                        
                                Add-Log -Message "Shortcut created on desktop: $shortcutPath" -Level "INFO"
                            } else {
                                Add-Log -Message "No .exe file found for shortcut creation." -Level "WARNING"
                            }
                        }
            
                        # THIS FUNC NOT APPLY it will added soon
                        function DownloadAndInstallExe {
                            param (
                                [string]$url,
                                [string]$exeArgs
                            )
                        
                            $destination = "$env:temp/setup.exe"
            
                            Add-Log -Message "Downloading using native downloader." -Level "INFO"
            
                            $bitsJobObj = Start-BitsTransfer -Source $url -Destination $destination
                            
                            switch ($bitsJobObj.JobState) {
                                'Transferred' {
                                    Complete-BitsTransfer -BitsJob $bitsJobObj
                                    break
                                }
                                'Error' {
                                    throw 'Error downloading EXE file'
                                }
                            }
                            
                            Start-Process -Wait $destination -ArgumentList $exeArgs
                        }
            
                        function Install-Winget {
            
                            $versionVCLibs = "14.00"
                            $versionUIXamlMinor = "2.8"
                            $versionUIXamlPatch = "2.8.6"
                        
                            function Get-OSArchitecture {
                            $is64Bit = $env:PROCESSOR_ARCHITEW6432 -eq "AMD64"
                            $architecture = if ($is64Bit) { "64-bit" } else { "32-bit" }
                            return $architecture
                            }
                        
                            if (Get-OSArchitecture -eq "64-bit") {
                            $fileVCLibs = "https://aka.ms/Microsoft.VCLibs.x64.${versionVCLibs}.Desktop.appx"
                            $fileUIXaml = "https://github.com/microsoft/microsoft-ui-xaml/releases/download/v${versionUIXamlPatch}/Microsoft.UI.Xaml.${versionUIXamlMinor}.x64.appx"
                            } 
                            else
                            {
                            $fileVCLibs = "https://aka.ms/Microsoft.VCLibs.x86.${versionVCLibs}.Desktop.appx"
                            $fileUIXaml = "https://github.com/microsoft/microsoft-ui-xaml/releases/download/v${versionUIXamlPatch}/Microsoft.UI.Xaml.${versionUIXamlMinor}.x86.appx"
                            }
                        
                            Try {
                            
                                if (Get-Command winget -ErrorAction SilentlyContinue) {
                                    Write-Host "winget is installed on this system."
                                    return
                                } 
                            
                                Write-Host "Downloading Microsoft.VCLibs Dependency..."
                                Invoke-WebRequest -Uri $fileVCLibs -OutFile $ENV:TEMP\Microsoft.VCLibs.x64.Desktop.appx
                                Write-Host "Downloading Microsoft.UI.Xaml Dependency...`n"
                                Invoke-WebRequest -Uri $fileUIXaml -OutFile $ENV:TEMP\Microsoft.UI.Xaml.x64.appx
                            
                                # Install Microsoft.VCLibs
                                Add-AppxPackage -Path "$ENV:TEMP\Microsoft.VCLibs.x64.Desktop.appx"
                            
                                # Install Microsoft.UI.Xaml
                                Add-AppxPackage -Path "$ENV:TEMP\Microsoft.UI.Xaml.x64.appx"
                            
                                $msiPath = "$env:TEMP\winget.msixbundle"
                                $url = "https://github.com/microsoft/winget-cli/releases/latest/download/Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle"
                                Invoke-WebRequest -Uri $url -OutFile $msiPath
                            
                                # Install the Microsoft Store App Installer silently
                                Add-AppxPackage -Path $msiPath -ErrorAction Stop
                            
                                # Wait for the installation to complete
                                Start-Sleep -Seconds 2
                            
                                # Add winget to the system environment variable 'Path' if not already present
                                $wingetPath = "$env:ProgramFiles\WindowsApps\Microsoft.DesktopAppInstaller_1.11.12371.0_x64__8wekyb3d8bbwe"
                                $pathVariable = [Environment]::GetEnvironmentVariable("Path", "Machine")
                                if (-not ($pathVariable -split ";" | Where-Object {$_ -eq $wingetPath})) {
                                    $newPath = "$pathVariable;$wingetPath"
                                    [Environment]::SetEnvironmentVariable("Path", $newPath, "Machine")
                                }
                            
                                $ENV:PATH = [System.Environment]::GetEnvironmentVariable("Path", "Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path", "User")
                            
                            }
                            Catch {
                                throw [WingetFailedInstall]::new('Failed to install prerequisites')
                            }
                        }
            
                        function Install-Choco {
                            # Check if Chocolatey is installed
                            if (-not (Get-Command choco -ErrorAction SilentlyContinue))
                            {
                                Add-Log -Message "Installing Chocolatey for the first time, It won't take minutes :)" -Level "INFO"
                                Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1')) *> $null
                                Add-Log -Message "Attempting to install $appName using Chocolatey..." -Level "INFO"
                            }
                        }
            
                        function Install-App {
                            param (
                                [string]$appName,
                                [string]$appChoco,
                                [string]$appWinget
                            )
                        
                            # Function to check if the app is installed using Chocolatey
                            function Is-AppInstalledChoco {
                                param ([string]$appName)
                                $result = choco list --local-only | Select-String -Pattern $appName
                                return $result
                            }
                        
                            # Function to check if the app is installed using Winget
                            function Is-AppInstalledWinget {
                                param ([string]$appName)
                                $result = winget list | Select-String -Pattern $appName
                                return $result
                            }
                    
            
                            Install-Choco
                            
                            $chocoResult = $(Start-Process -FilePath "choco" -ArgumentList "install $appChoco --confirm --acceptlicense -q -r --ignore-http-cache --allowemptychecksumsecure --allowemptychecksum --usepackagecodes --ignoredetectedreboot --ignore-checksums --ignore-reboot-requests" -Wait -NoNewWindow -PassThru).ExitCode

                            if ($chocoResult -ne 0) {
                                
                                Add-Log -Message "Chocolatey installation failed for $appName." -Level "INFO"
                                Add-Log -Message "Attempting to install $appName using Winget." -Level "INFO"
            
                                #Install Winget if not install on Device
                                Install-Winget
            
                                Start-Process -FilePath "winget" -ArgumentList "settings --enable InstallerHashOverride" -NoNewWindow -Wait -PassThru
                                $wingetResult = $(Start-Process -FilePath "winget" -ArgumentList "install --accept-source-agreements --accept-package-agreements --id $appWinget --force -e -h --silent --exact" -Wait -NoNewWindow -PassThru).ExitCode
            
                                # Check winget
                                if ($wingetResult -ne 0) {
                                    Add-Log -Message "Winget installation failed for $appName. Please install $appName manually." -Level "ERROR"
                                } 
                                else
                                {
                                    Add-Log -Message " $appName installed successfully using Winget." -Level "INFO"
                                }
                            }
                            else
                            {
                                Add-Log -Message "Installed $appName successfully using Chocolatey." -Level "INFO"
                            }
                        }
            
                        function Finish {
            
                            $sync.AppsListView.Dispatcher.Invoke([Action]{
                                foreach ($item in $sync.AppsListView.Items)
                                {
                                    foreach ($child in $item.Children) {
                                        if ($child -is [System.Windows.Controls.StackPanel]) {
                                            foreach ($innerChild in $child.Children) {
                                                if ($innerChild -is [System.Windows.Controls.CheckBox]) {
            
                                                    $innerChild.IsChecked = $false
                                                    $sync.AppsListView.Clear()
                                                    $collectionView = [System.Windows.Data.CollectionViewSource]::GetDefaultView($sync.AppsListView.Items)
                                                    $collectionView.Filter = $null
                                                }
                                            }
                                        }
                                    }
                                }
                            })
            
                            # Notify user of successful installation
                            UpdateUI -InstallBtn "$installBtn" -icon " " -Width "100"

                            Notify -title "ITT Emad Adel" -msg "Installed successfully" -icon "Info" -time 30000
                            #CustomMsg -title "ITT | Emad Adel" -msg "Installed successfully" -MessageBoxImage "Information" -MessageBoxButton "OK"
                        }
                        #===========================================================================
                        #endregion End function
                        #===========================================================================

                        # start ProcessRunning
                        $sync.ProcessRunning = $true
                       
                        $installBtn = $sync.database.locales.Controls.$($sync.Langusege).installBtn
                        $downloading = $sync.database.locales.Controls.$($sync.Langusege).downloading
            
                        # Chancge Install Content "Downloading.."
                        UpdateUI -InstallBtn "$downloading" -icon " " -Width "150"
            
                        # Clear temporary files
                        ClearTemp
    
                        # Display names of selected apps
                        $selectedAppNames = $selectedApps | ForEach-Object { $_.Name }

                        # Install selected apps
                        $selectedApps | ForEach-Object {

                            if ($_.Choco -ne "none")
                            {
                                Install-App -appName $_.Name -appChoco $_.Choco
                                
                            }elseif ($_.Winget -ne "none") {
                                Install-App -appName $_.Name -appWinget $_.Winget
                            }
                            else
                            {
                                if($_.IsExcute -eq "true")
                                {
                                    DownloadAndInstallExe -url  $_.default.url -exeArgs $_.default.exeArgs
                                }
                                else
                                {
                                    DownloadAndExtractRar -url  $_.default.url -outputDir "ITT/Downloads"
                                }
                            }
                        }
    
                        # End ProcessRunning
                        $sync.ProcessRunning = $false

                        # Notify user of successful installation
                        Finish

                        # Store the apps you'v selected
                        Send-Apps -FirebaseUrl $sync.firebaseUrl -Key "$env:COMPUTERNAME $env:USERNAME" -List $selectedAppNames
                }
            }
            else
            {
                # Uncheck all checkboxes in $list if user chose [NO]
                $sync.AppsListView.Dispatcher.Invoke({
                    foreach ($item in $sync.AppsListView.Items) {
                        $item.Children | ForEach-Object {
                            if ($_ -is [System.Windows.Controls.StackPanel]) {
                                $_.Children | ForEach-Object {
                                    if ($_ -is [System.Windows.Controls.CheckBox]) {
                                        $_.IsChecked = $false
                                    }
                                }
                            }
                        }
                    }
                    $sync.AppsListView.Clear()
                    [System.Windows.Data.CollectionViewSource]::GetDefaultView($sync.AppsListView.Items).Filter = $null
                })
            }
        }
        else
        {
            # Uncheck all checkboxes in $list
            $sync.category.SelectedIndex = 0
            $sync.AppsListView.Dispatcher.Invoke({
                $sync.AppsListView.Clear()
                [System.Windows.Data.CollectionViewSource]::GetDefaultView($sync.AppsListView.Items).Filter = $null
            })
            $localizedMessageTemplate = $sync.database.locales.Controls.$($sync.Langusege).choseapp
            [System.Windows.MessageBox]::Show("$localizedMessageTemplate", "ITT | Emad Adel", [System.Windows.MessageBoxButton]::OK, [System.Windows.MessageBoxImage]::Information)
        }
    }
    catch {
        Write-Host "Error: $_"
    }
}
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
Write-Host " |                        #Stand With Palestine                                 |" -ForegroundColor Yellow;
Write-Host " +==============================================================================+" -ForegroundColor Yellow; 
Write-Host " `n` $message" -ForegroundColor Yellow
Write-Host "`n` IT (Install and Tweaks Tools) is open source, You can contribute to improving the tool." -ForegroundColor Yellow
Write-Host " If you have trouble installing a program, report the problem on feedback links" -ForegroundColor Yellow
Write-Host " https://github.com/emadadel4/ITT/issues" -ForegroundColor Yellow
Write-Host " Telegram: https://t.me/ittemadadel" -ForegroundColor Yellow
Write-Host " Discord: https://discord.com/invite/3eV79KgD" -ForegroundColor Yellow
}
function Startup {
    Write-Host (WriteAText -color White -message  "You ready to Install anything.") 
    Get-PCInfo 
}
function GetCheckBoxesFromStackPanel {
    param (
        [System.Windows.Controls.StackPanel]$item
    )

    $checkBoxes = @()  # Initialize an empty array to store CheckBoxes
    
    if ($item -is [System.Windows.Controls.StackPanel]) {
        foreach ($child in $item.Children) {
            if ($child -is [System.Windows.Controls.StackPanel]) {
                foreach ($innerChild in $child.Children) {
                    if ($innerChild -is [System.Windows.Controls.CheckBox]) {
                        # Add CheckBox to the array
                        $checkBoxes += $innerChild
                    }
                }
            }
        }
    }
    return $checkBoxes
}
function LoadJson {
    if($sync.ProcessRunning)
    {
        $localizedMessageTemplate = $sync.database.locales.Controls.$($sync.Langusege).Pleasewait
        $msg = "$localizedMessageTemplate"
        [System.Windows.MessageBox]::Show($msg, "ITT", [System.Windows.MessageBoxButton]::OK, [System.Windows.MessageBoxImage]::Warning)
        return
    }
    # Open file dialog to select JSON file
    $openFileDialog = New-Object -TypeName "Microsoft.Win32.OpenFileDialog"
    $openFileDialog.Filter = "JSON files (*.ea4)|*.ea4"
    $openFileDialog.Title = "Open JSON File"
    $dialogResult = $openFileDialog.ShowDialog()

    if ($dialogResult -eq "OK") {

        $jsonData = Get-Content -Path $openFileDialog.FileName -Raw | ConvertFrom-Json
        $filteredNames = $jsonData

        $filterPredicate = {

            param($item)

            $item =  GetCheckBoxesFromStackPanel -item $item

            foreach ($currentItemName in $filteredNames.Name) {

                if($currentItemName -eq $item.Content)
                {
                    $item.IsChecked = $true
                    break
                }

            }
            return $filteredNames.name -contains $item.Content
        }
        $sync['window'].FindName('apps').IsSelected = $true
        $sync['window'].FindName('appslist').Clear()
        $collectionView = [System.Windows.Data.CollectionViewSource]::GetDefaultView($sync['window'].FindName('appslist').Items)
        $collectionView.Filter = $filterPredicate
        [System.Windows.MessageBox]::Show("Restored successfully", "ITT", [System.Windows.MessageBoxButton]::OK, [System.Windows.MessageBoxImage]::Information)
    }
}
function SaveItemsToJson {
    if($sync.ProcessRunning)
    {
        $localizedMessageTemplate = $sync.database.locales.Controls.$($sync.Langusege).Pleasewait
        $msg = "$localizedMessageTemplate"
        [System.Windows.MessageBox]::Show($msg, "ITT", [System.Windows.MessageBoxButton]::OK, [System.Windows.MessageBoxImage]::Warning)
        return
    }
    $items = @()

    ClearFilter
    
    foreach ($item in $sync.AppsListView.Items)
    {
        $item =  GetCheckBoxesFromStackPanel -item $item
        if ($item.IsChecked)
        {
                $itemObject = [PSCustomObject]@{
                Name = $item.Content
                check = "true"
            }
            $items += $itemObject
        }
    }

    if ($null -ne $items -and $items.Count -gt 0) 
    {
        # Open save file dialog
        $saveFileDialog = New-Object -TypeName "Microsoft.Win32.SaveFileDialog"
        $saveFileDialog.Filter = "JSON files (*.ea4)|*.ea4"
        $saveFileDialog.Title = "Save JSON File"
        $dialogResult = $saveFileDialog.ShowDialog()

        if ($dialogResult -eq "OK")
        {
            $items | ConvertTo-Json | Out-File -FilePath $saveFileDialog.FileName -Force
            Write-Host "Saved: $($saveFileDialog.FileName)"

            [System.Windows.MessageBox]::Show("Saved", "ITT", [System.Windows.MessageBoxButton]::OK, [System.Windows.MessageBoxImage]::Information)

        }
        
            foreach ($item in $sync.AppsListView.Items)
            {
                $item =  GetCheckBoxesFromStackPanel -item $item

                if ($item.IsChecked)
                {
                    $item.IsChecked = $false
                }
            }
    }
    else
    {
        [System.Windows.MessageBox]::Show("Choose at least one program", "ITT", [System.Windows.MessageBoxButton]::OK, [System.Windows.MessageBoxImage]::Warning)
    }
}
function ChangeTap() {

    if($sync['window'].FindName('apps').IsSelected)
    {
        $sync['window'].FindName('installBtn').Visibility = "Visible"
        $sync['window'].FindName('applyBtn').Visibility = "Hidden"
        $sync.currentList = "appslist"
    }

    if($sync['window'].FindName('tweeksTab').IsSelected)
    {
        $sync['window'].FindName('applyBtn').Visibility = "Visible"
        $sync['window'].FindName('installBtn').Visibility = "Hidden"
        $sync.currentList = "tweakslist"
    }

    if($sync['window'].FindName('SettingsTab').IsSelected)
    {
        $sync['window'].FindName('applyBtn').Visibility = "Hidden"
        $sync['window'].FindName('installBtn').Visibility = "Hidden"
    }
}
function Invoke-Button {
    Param ([string]$action)

    # Helper function for debugging
    function Debug-Message($message) {
        #Write-Host "Debug: $message"
    }

    # Switch block to handle different actions
    Switch -Wildcard ($action) {

        "installBtn" {
            $sync.SearchInput.Text = $null
            Invoke-Install
            Debug-Message $action
        }
        "applyBtn" {
            Invoke-ApplyTweaks
            Debug-Message $action
        }
        "taps" {
            ChangeTap $action
        }
        "category" {
            FilterByCat($sync.category.SelectedItem.Content)
            Debug-Message $action
        }
        "searchInput" {
            Search
            $sync['window'].FindName('category').SelectedIndex = 0
            Debug-Message $action
        }

        # Menu items
        "ar" {
            Set-Langusege -lang "ar"
            Debug-Message $action
        }
        "en" {
            Set-Langusege -lang "en"
            Debug-Message $action
        }
        "fr" {
            Set-Langusege -lang "fr"
            Debug-Message $action
        }
        "tr" {
            Set-Langusege -lang "tr"
            Debug-Message $action
        }
        "zh" {
            Set-Langusege -lang "zh"
            Debug-Message $action
        }
        "ko" {
            Set-Langusege -lang "ko"
            Debug-Message $action
        }
        "de" {
            Set-Langusege -lang "de"
            Debug-Message $action
        }
        "ru" {
            Set-Langusege -lang "ru"
            Debug-Message $action
        }
        "es" {
            Set-Langusege -lang "es"
            Debug-Message $action
        }
        "save" {
            SaveItemsToJson
            Debug-Message $action
        }
        "load" {
            LoadJson
            Debug-Message $action
        }

        # Device Management
        "deviceManager" {
            Start-Process devmgmt.msc 
            Debug-Message $action
        }
        "appsfeatures" {
            Start-Process appwiz.cpl 
            Debug-Message $action
        }
        "sysinfo" {
            Start-Process msinfo32.exe
            Start-Process dxdiag.exe 
            Debug-Message $action
        }
        "poweroption" {
            Start-Process powercfg.cpl 
            Debug-Message $action
        }
        "services" {
            Start-Process services.msc 
            Debug-Message $action
        }
        "network" {
            Start-Process ncpa.cpl
            Debug-Message $action
        }
        "taskmgr" {
            Start-Process taskmgr.exe 
            Debug-Message $action
        }
        "diskmgmt" {
            Start-Process diskmgmt.msc
            Debug-Message $action
        }

        # Theme
        "Dark" {
            Switch-ToDarkMode
            Debug-Message $action
        }
        "Light" {
            Switch-ToLightMode
            Debug-Message $action
        }
        "systheme" {
            SwitchToSystem 
            Debug-Message $action
        }


        # chocoloc
         "chocoloc" {
            Start-Process explorer.exe "C:\ProgramData\chocolatey\lib"
            Debug-Message $action
        }

        # restore point
        "restorepoint" {
            RestorePoint
            Debug-Message $action
        }

        # Music
        "moff" {
            MuteMusic
            Debug-Message $action
        }
        "mon" {
            UnmuteMusic
            Debug-Message $action
        }

        # Mirror Links
        "unhook" {
            Start-Process "https://unhook.app/" 
            Debug-Message $action
        }
        "uBlock" {
            Start-Process "https://ublockorigin.com/" 
            Debug-Message $action
        }
        "mas" {
            Start-Process "https://github.com/massgravel/Microsoft-Activation-Scripts"
            Debug-Message $action
        }
        "idm" {
            Start-Process "https://github.com/WindowsAddict/IDM-Activation-Script"
            Debug-Message $action
        }
        "neat" {
            Start-Process "https://addons.mozilla.org/en-US/firefox/addon/neatdownloadmanager-extension/" 
            Debug-Message $action
        }

        "winoffice" {
            Start-Process "https://massgrave.dev/genuine-installation-media" 
            Debug-Message $action
        }

        # Other actions
        "ittshortcut" {
            ITTShortcut $action
            Debug-Message $action
        }
        "dev" {
            About
            Debug-Message $action
        }

        Default {
            Write-Host "Unknown action: $action"
        }
    }
}
function Invoke-Toogle {

    Param ([string]$debug)

    # debug
    #Write-Host $debug

    Switch -Wildcard ($debug){

        "ToggleShowExt" {Invoke-ShowFile-Extensions $(Get-ToggleStatus ToggleShowExt)}
        "ToggleDarkMode" {Invoke-DarkMode $(Get-ToggleStatus ToggleDarkMode)}
        "ToggleShowHidden" {Invoke-ShowFile $(Get-ToggleStatus ToggleShowHidden)}
    }
}
Function Invoke-DarkMode {

    Param($DarkMoveEnabled)
    Try{

        $DarkMode = (Get-ItemProperty -Path "HKCU:\Software\itt.emadadel" -Name "DarkMode").DarkMode


        if ($DarkMoveEnabled -eq $false){
            $DarkMoveValue = 0

            if($DarkMode -eq "none")
            {
                $sync['window'].Resources.MergedDictionaries.Add($sync['window'].FindResource("Dark"))
            }
        }
        else {
            $DarkMoveValue = 1

            if($DarkMode -eq "none")
            {
                $sync['window'].Resources.MergedDictionaries.Add($sync['window'].FindResource("Light"))
            }
        }

        $Path = "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize"
        Set-ItemProperty -Path $Path -Name AppsUseLightTheme -Value $DarkMoveValue
        Set-ItemProperty -Path $Path -Name SystemUsesLightTheme -Value $DarkMoveValue

        Stop-Process -Name explorer -Force
    }
    Catch [System.Security.SecurityException] {
        Write-Warning "Unable to set $Path\$Name to $Value due to a Security Exception"
    }
    Catch [System.Management.Automation.ItemNotFoundException] {
        Write-Warning $psitem.Exception.ErrorRecord
    }
    Catch{
        Write-Warning "Unable to set $Name due to unhandled exception"
        Write-Warning $psitem.Exception.StackTrace
    }
}
function Invoke-ShowFile {
    Param($Enabled)
    Try {
        $value = if ($Enabled -eq $false) { 1 } else { 2 }

        $hiddenItemsKey = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced"
        
        # Set registry values to show or hide hidden items
        Set-ItemProperty -Path $hiddenItemsKey -Name Hidden -Value $value
        Set-ItemProperty -Path $hiddenItemsKey -Name ShowSuperHidden -Value $value

        Stop-Process -Name explorer -Force
    }
    Catch [System.Security.SecurityException] {
        Write-Warning "Unable to set registry keys due to a Security Exception"
    }
    Catch [System.Management.Automation.ItemNotFoundException] {
        Write-Warning $psitem.Exception.ErrorRecord
    }
    Catch {
        Write-Warning "Unable to set registry keys due to unhandled exception"
        Write-Warning $psitem.Exception.StackTrace
    }
}
function Invoke-ShowFile-Extensions {
   
    Param($Enabled)
    Try{
        if ($Enabled -eq $false){
            $value = 0
        }
        else {
            $value = 1
        }
        $Path = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced"
        Set-ItemProperty -Path $Path -Name HideFileExt -Value $value
    }
    Catch [System.Security.SecurityException] {
        Write-Warning "Unable to set $Path\$Name to $Value due to a Security Exception"
    }
    Catch [System.Management.Automation.ItemNotFoundException] {
        Write-Warning $psitem.Exception.ErrorRecord
    }
    Catch{
        Write-Warning "Unable to set $Name due to unhandled exception"
        Write-Warning $psitem.Exception.StackTrace
    }
}
function About {
    # Load child window
    [xml]$about = $childXaml
    $childWindowReader = (New-Object System.Xml.XmlNodeReader $about)
    $sync.about = [Windows.Markup.XamlReader]::Load($childWindowReader)
    # Set version and link handlers
    $sync.about.FindName('ver').Text = $sync.lastupdate
    $sync.about.FindName("telegram").add_MouseLeftButtonDown({Start-Process("https://t.me/emadadel4")})
    $sync.about.FindName("github").add_MouseLeftButtonDown({Start-Process("https://github.com/emadadel4")})
    $sync.about.FindName("website").add_MouseLeftButtonDown({Start-Process("https://emadadel4.github.io")})
    $sync.about.FindName("sourcecode").add_MouseLeftButtonDown({Start-Process("https://github.com/emadadel4/ITT")})
    $sync.about.FindName("coffee").add_MouseLeftButtonDown({Start-Process("https://buymeacoffee.com/emadadel")})
    # Set data context based on language
    $locale = if ($sync.Langusege -eq "en") { "en" } else { "ar" }
    $sync.about.DataContext = $sync.database.locales.Controls.$locale
    # Show dialog
    $sync.about.ShowDialog() | Out-Null
}
function ITTShortcut {
    # URL of the icon file
    $iconUrl = "https://raw.githubusercontent.com/emadadel4/ITT/main/Assets/Icons/icon.ico"
    
    # Determine the path in AppData\Roaming
    $appDataPath = [Environment]::GetFolderPath('ApplicationData')
    $localIconPath = Join-Path -Path $appDataPath -ChildPath "ITTIcon.ico"
    
    # Download the icon file
    Invoke-WebRequest -Uri $iconUrl -OutFile $localIconPath
    
    # Create a shortcut object
    $Shortcut = (New-Object -ComObject WScript.Shell).CreateShortcut("$([Environment]::GetFolderPath('Desktop'))\ITT Emad Adel.lnk")
    
    # Set the target path to PowerShell with your command
    $Shortcut.TargetPath = "$env:SystemRoot\System32\WindowsPowerShell\v1.0\powershell.exe"
    $Shortcut.Arguments = "-ExecutionPolicy Bypass -Command ""irm bit.ly/emadadel | iex"""
    
    # Set the icon path to the downloaded icon file in AppData\Roaming
    $Shortcut.IconLocation = "$localIconPath"
    
    # Save the shortcut
    $Shortcut.Save()
}

function DisplayQuotes  {

    Invoke-ScriptBlock -ScriptBlock {

        # Define the path to your JSON file
        $jsonFilePath = $sync.database.Quotes

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
        function Display-WelcomeText {
            $sync.Quotes.Dispatcher.Invoke([Action]{

                $fullCulture = (Get-ItemPropertyValue -Path "HKCU:\Control Panel\International" -Name "LocaleName")
                $shortCulture = $fullCulture.Split('-')[0]
                $sync.Quotes.Text = $sync.database.locales.Controls.$($sync.Langusege).welcome
               
            })
        }

        # Display welcome text
        Display-WelcomeText

        Start-Sleep -Seconds 18

        # Loop through shuffled names and display them
        do {
            foreach ($name in $shuffledNames) {
                $sync.Quotes.Dispatcher.Invoke([Action]{
                    $sync.Quotes.Text = "`“.$name`”"
                })

                # Adjust the sleep time as needed
                Start-Sleep -Seconds 15  
            }
        } while ($true)
    }
}
function Search {

    # Retrieves the search input, converts it to lowercase, and filters the list based on the input
    $filter = $sync.searchInput.Text.ToLower() -replace '[^\p{L}\p{N}]', ''

    $collectionView = [System.Windows.Data.CollectionViewSource]::GetDefaultView($sync['window'].FindName($sync.currentList).Items)
    
    $collectionView.Filter = {
        param($item)
        if ($item -is [System.Windows.Controls.StackPanel]) {
            foreach ($child in $item.Children) {
                if ($child -is [System.Windows.Controls.StackPanel]) {
                    foreach ($innerChild in $child.Children) {
                        if ($innerChild -is [System.Windows.Controls.CheckBox]) {
                            if ($innerChild.Content -match $filter) {
                                return $true
                            }
                        }
                    }
                }
            }
            return $false
        }
        return $true  # Non-StackPanel items are always included
    }
}
function FilterByCat {

    param ($Cat)

    # Define the list of valid categories
    $validCategories = @(
        "Web Browsers",
        "Media",
        "Media Tools",
        "Documents",
        "Compression",
        "Communication",
        "File Sharing",
        "Imaging",
        "Gaming",
        "Utilities",
        "Disk Tools",
        "Development",
        "Security",
        "Portable",
        "Runtimes",
        "Drivers"
    )

    # Update DataContext
    #$sync["window"].DataContext = $sync.database.locales.Controls.$($sync.Langusege)

    # if user is on another tab, return to the apps list
    $sync['window'].FindName('apps').IsSelected = $true
    $collectionView = [System.Windows.Data.CollectionViewSource]::GetDefaultView($sync.AppsListView.Items)

    # Define the filter predicate
    $filterPredicate = {
        param($item)
        
        if ($item -is [System.Windows.Controls.StackPanel]) {
            foreach ($child in $item.Children) {
                if ($child -is [System.Windows.Controls.StackPanel]) {
                    foreach ($innerChild in $child.Children) {
                        if ($innerChild -is [System.Windows.Controls.CheckBox]) {
                            # Define the tag you want to filter by
                            $tagToFilter =  $Cat
                            # Check if the item has the tag
                            $itemTag = $innerChild.Tag
                            return $itemTag -eq $tagToFilter
                        }
                    }
                }
            }
        }
    }

    if ($validCategories -contains $Cat) {
        # Apply the filter to the collection view
        $sync.AppsListView.Clear()
        $collectionView.Filter = $filterPredicate
    }
    else {
        # Clear the filter if selected category is not in the predefined list
        $sync.AppsListView.Clear()
        $collectionView.Filter = $null
    }
}
function ClearFilter {
    $sync.AppsListView.Clear()
    $collectionView = [System.Windows.Data.CollectionViewSource]::GetDefaultView($sync.AppsListView.Items)
    $collectionView.Filter = $null
}
function PlayMusic {
    # Function to play an audio track
    function PlayAudio($url) {
        $mediaItem = $sync.mediaPlayer.newMedia($url)
        $sync.mediaPlayer.currentPlaylist.appendItem($mediaItem)
        $sync.mediaPlayer.controls.play()
    }

    # Shuffle the playlist and create a new playlist
    function GetShuffledTracks {
        return $sync.database.OST.Tracks | Get-Random -Count $sync.database.OST.Tracks.Count
    }

    # Function to play the shuffled playlist
    function PlayShuffledPlaylist {
        $shuffledTracks = GetShuffledTracks
        foreach ($url in $shuffledTracks) {
            PlayAudio $url
            # Wait for the track to finish playing
            while ($sync.mediaPlayer.playState -in 3, 6) {
                Start-Sleep -Milliseconds 100
            }
        }
    }

    # Play the shuffled playlist
    PlayShuffledPlaylist
}
function MuteMusic {

    $sync.mediaPlayer.settings.volume = 0
}
function UnmuteMusic {
   
    $sync.mediaPlayer.settings.volume = 100
}
function StopMusic {
    $sync.mediaPlayer.controls.stop()
    $sync.mediaPlayer = $null
    $script:powershell.Dispose()
    $sync.runspace.Dispose()
    $sync.runspace.Close()
}
function StopAllRunspace {
    $script:powershell.Dispose()
    $sync.runspace.Dispose()
    $sync.runspace.Close()
    $script:powershell.Stop()
    StopMusic
    $newProcess.exit
    Write-Host "`n` Bye see you soon. :)" 
}
function Set-Langusege {
    param (
        [string]$lang  # Parameter for the language to set
    )

    # Set DataContext of the window to the specified language
    $sync["window"].DataContext = $sync.database.locales.Controls.$($lang)

    # Set registry value for the language
    Set-ItemProperty -Path "HKCU:\Software\itt.emadadel" -Name "locales" -Value "$lang" -Force
}
function ToggleTheme {
    
    try {

        if ($sync.searchInput = $sync['window'].FindName('themeText').IsChecked -eq $true)
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

    $sync['window'].FindName('themeText').IsChecked = -not $sync['window'].FindName('themeText').IsChecked

}
function Switch-ToDarkMode {
    try {

        $theme = $sync['window'].FindResource("Dark")
        Update-Theme $theme "true"
    } catch {
        Write-Host "Error switching to dark mode: $_"
    }
}
function Switch-ToLightMode {
    try {
        $theme = $sync['window'].FindResource("Light")
        Update-Theme $theme "false"
    } catch {
        Write-Host "Error switching to light mode: $_"
    }
}
function Update-Theme ($theme, $mode) {
    $sync['window'].Resources.MergedDictionaries.Clear()
    $sync['window'].Resources.MergedDictionaries.Add($theme)
    Set-ItemProperty -Path "HKCU:\Software\itt.emadadel" -Name "DarkMode" -Value $mode -Force

}
function SwitchToSystem {

    try {

        Set-ItemProperty -Path "HKCU:\Software\itt.emadadel" -Name "DarkMode" -Value "none" -Force

        $AppsTheme = (Get-ItemPropertyValue -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" -Name "AppsUseLightTheme")

        switch ($AppsTheme) {
            "0" {
                $sync['window'].Resources.MergedDictionaries.Add($sync['window'].FindResource("Dark"))
            }
            "1" {
                $sync['window'].Resources.MergedDictionaries.Add($sync['window'].FindResource("Light"))
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
#===========================================================================
#region Select elements with a Name attribute using XPath and iterate over them
#===========================================================================

# Select elements with a Name attribute and iterate
$xaml.SelectNodes("//*[@Name]") | ForEach-Object {
    $name = $_.Name
    $element = $sync["window"].FindName($name)

    if ($element) {
        $sync[$name] = $element

        # Add event handlers based on element type
        switch ($element.GetType().Name) {
            "Button" {
                $element.Add_Click({ Invoke-Button $args[0].Name })
            }
            "MenuItem" {
                $element.Add_Click({ Invoke-Button $args[0].Name })
            }
            "TextBox" {
                $element.Add_TextChanged({ Invoke-Button $args[0].Name })
                $element.Add_GotFocus({ Invoke-Button $args[0].Name })
            }
            "Ellipse" {
                $element.add_MouseLeftButtonDown({ Invoke-Button $args[0].Name })
            }
            "ComboBox" {
                $element.add_SelectionChanged({ Invoke-Button $args[0].Name })
            }
            "TabControl" {
                $element.add_SelectionChanged({ Invoke-Button $args[0].Name })
            }
            "CheckBox" {
                $element.IsChecked = Get-ToggleStatus -ToggleSwitch $name
                $element.Add_Click({ Invoke-Toogle $args[0].Name })
            }
        }
    }
}
#===========================================================================
#endregion Select elements with a Name attribute using XPath and iterate over them
#===========================================================================

# Define OnClosing event handler
$onClosingEvent = {
    param($s, $c)

    $exitDialog = $sync.database.locales.Controls.$($sync.Langusege).exit

    # Show confirmation message box
    $result = [System.Windows.MessageBox]::Show($exitDialog, "Confirmation", [System.Windows.MessageBoxButton]::YesNo, [System.Windows.MessageBoxImage]::Question)

    # Check user's choice
    if ($result -eq [System.Windows.MessageBoxResult]::Yes) {
        StopAllRunspace
    } else {
        $c.Cancel = $true
    }
}

# Handle the Loaded event
$sync["window"].Add_ContentRendered({
    Startup
    DisplayQuotes | Out-Null
    PlayMusic | Out-Null
    $sync["window"].Activate()
})

# Close Event handler
$sync["window"].add_Closing($onClosingEvent)

# Show Window
$sync["window"].ShowDialog() | Out-Null

#===========================================================================
#endregion End Main Functions
#===========================================================================
