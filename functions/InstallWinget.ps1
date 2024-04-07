function Install-WinWinget {

        <#PSScriptInfo
    
    .VERSION 3.0.1
    
    .GUID 3b581edb-5d90-4fa1-ba15-4f2377275463
    
    .AUTHOR asheroto, 1ckov, MisterZeus, ChrisTitusTech
    
    .COMPANYNAME asheroto
    
    .TAGS PowerShell Windows winget win get install installer fix script setup
    
    .PROJECTURI https://github.com/asheroto/winget-install
    
    .RELEASENOTES
    [Version 0.0.1] - Initial Release.
    [Version 0.0.2] - Implemented function to get the latest version of winget and its license.
    [Version 0.0.3] - Signed file for PSGallery.
    [Version 0.0.4] - Changed URI to grab latest release instead of releases and preleases.
    [Version 0.0.5] - Updated version number of dependencies.
    [Version 1.0.0] - Major refactor code, see release notes for more information.
    [Version 1.0.1] - Fixed minor bug where version 2.8 was hardcoded in URL.
    [Version 1.0.2] - Hardcoded UI Xaml version 2.8.4 as a failsafe in case the API fails. Added CheckForUpdates, Version, Help functions. Various bug fixes.
    [Version 1.0.3] - Added error message to catch block. Fixed bug where appx package was not being installed.
    [Version 1.0.4] - MisterZeus optimized code for readability.
    [Version 2.0.0] - Major refactor. Reverted to UI.Xaml 2.7.3 for stability. Adjusted script to fix install issues due to winget changes (thank you ChrisTitusTech). Added in all architecture support.
    [Version 2.0.1] - Renamed repo and URL references from winget-installer to winget-install. Added extra space after the last line of output.
    [Version 2.0.2] - Adjusted CheckForUpdates to include Install-Script instructions and extra spacing.
    [Version 2.1.0] - Added alternate method/URL for dependencies in case the main URL is down. Fixed licensing issue when winget is installed on Server 2022.
    [Version 2.1.1] - Switched primary/alternate methods. Added Cleanup function to avoid errors when cleaning up temp files. Added output of URL for alternate method. Suppressed Add-AppxProvisionedPackage output. Improved success message. Improved verbiage. Improve PS script comments. Added check if the URL is empty. Moved display of URL beneath the check.
    [Version 3.0.0] - Major changes. Added OS version detection checks - detects OS version, release ID, ensures compatibility. Forces older file installation for Server 2022 to avoid issues after installing. Added DebugMode, DisableCleanup, Force. Renamed CheckForUpdates to CheckForUpdate. Improved output. Improved error handling. Improved comments. Improved code readability. Moved CheckForUpdate into function. Added PowerShellGalleryName. Renamed Get-OSVersion to Get-OSInfo. Moved architecture detection into Get-OSInfo. Renamed Get-NewestLink to Get-WingetDownloadUrl. Have Get-WingetDownloadUrl not get preview releases.
    [Version 3.0.1] - Updated Get-OSInfo function to fix issues when used on non-English systems. Improved error handling of "resources in use" error.
    
    #>

    <#
    .SYNOPSIS
        Downloads and installs the latest version of winget and its dependencies. Updates the PATH variable if needed.
    .DESCRIPTION
        Downloads and installs the latest version of winget and its dependencies. Updates the PATH variable if needed.
    
    This script is designed to be straightforward and easy to use, removing the hassle of manually downloading, installing, and configuring winget. To make the newly installed winget available for use, a system reboot may be required after running the script.
    
    This function should be run with administrative privileges.
    .EXAMPLE
        winget-install
    .PARAMETER DebugMode
        Enables debug mode, which shows additional information for debugging.
    .PARAMETER DisableCleanup
        Disables cleanup of the script and prerequisites after installation.
    .PARAMETER Force
        Ensures installation of winget and its dependencies, even if already present.
    .PARAMETER CheckForUpdate
        Checks if there is an update available for the script.
    .PARAMETER Version
        Displays the version of the script.
    .PARAMETER Help
        Displays the full help information for the script.
    .NOTES
        Version : 3.0.1
        Created by : asheroto
    .LINK
        Project Site: https://github.com/asheroto/winget-install
    #>
    [CmdletBinding()]
    param (
        [switch]$Version,
        [switch]$Help,
        [switch]$CheckForUpdate,
        [switch]$DisableCleanup,
        [switch]$DebugMode,
        [switch]$Force
    )

    # Version
    $CurrentVersion = '3.0.1'
    $RepoOwner = 'asheroto'
    $RepoName = 'winget-install'
    $PowerShellGalleryName = 'winget-install'

    # Versions
    $ProgressPreference = 'SilentlyContinue' # Suppress progress bar (makes downloading super fast)
    $ConfirmPreference = 'None' # Suppress confirmation prompts

    # Display version if -Version is specified
    if ($Version.IsPresent) {
        $CurrentVersion
        exit 0
    }

    # Display full help if -Help is specified
    if ($Help) {
        Get-Help -Name $MyInvocation.MyCommand.Source -Full
        exit 0
    }

    # Display $PSVersionTable and Get-Host if -Verbose is specified
    if ($PSBoundParameters.ContainsKey('Verbose') -and $PSBoundParameters['Verbose']) {
        $PSVersionTable
        Get-Host
    }

    function Get-TempFolder {
        <#
            .SYNOPSIS
            Gets the path of the current user's temp folder.
    
            .DESCRIPTION
            This function retrieves the path of the current user's temp folder.
    
            .EXAMPLE
            Get-TempFolder
        #>
        return [System.IO.Path]::GetTempPath()
    }

    function Get-OSInfo {
        <#
            .SYNOPSIS
            Retrieves detailed information about the operating system version and architecture.
    
            .DESCRIPTION
            This function queries both the Windows registry and the Win32_OperatingSystem class to gather comprehensive information about the operating system. It returns details such as the release ID, display version, name, type (Workstation/Server), numeric version, edition ID, version (object that includes major, minor, and build numbers), and architecture (OS architecture, not processor architecture).
    
            .EXAMPLE
            Get-OSInfo
    
            This example retrieves the OS version details of the current system and returns an object with properties like ReleaseId, DisplayVersion, Name, Type, NumericVersion, EditionId, Version, and Architecture.
    
            .EXAMPLE
            (Get-OSInfo).Version.Major
    
            This example retrieves the major version number of the operating system. The Get-OSInfo function returns an object with a Version property, which itself is an object containing Major, Minor, and Build properties. You can access these sub-properties using dot notation.
    
            .EXAMPLE
            $osDetails = Get-OSInfo
            Write-Output "OS Name: $($osDetails.Name)"
            Write-Output "OS Type: $($osDetails.Type)"
            Write-Output "OS Architecture: $($osDetails.Architecture)"
    
            This example stores the result of Get-OSInfo in a variable and then accesses various properties to print details about the operating system.
        #>
        [CmdletBinding()]
        param ()

        try {
            # Get registry values
            $registryValues = Get-ItemProperty "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion"
            $releaseIdValue = $registryValues.ReleaseId
            $displayVersionValue = $registryValues.DisplayVersion
            $nameValue = $registryValues.ProductName
            $editionIdValue = $registryValues.EditionId

            # Strip out "Server" from the $editionIdValue if it exists
            $editionIdValue = $editionIdValue -replace "Server", ""

            # Get OS details using Get-CimInstance because the registry key for Name is not always correct with Windows 11
            $osDetails = Get-CimInstance -ClassName Win32_OperatingSystem
            $nameValue = $osDetails.Caption

            # Get architecture details of the OS (not the processor)
            # Get only the numbers
            $architecture = ($osDetails.OSArchitecture -replace "[^\d]").Trim()

            # If 32-bit or 64-bit replace with x32 and x64
            if ($architecture -eq "32") {
                $architecture = "x32"
            } elseif ($architecture -eq "64") {
                $architecture = "x64"
            }

            # Get OS version details (as version object)
            $versionValue = [System.Environment]::OSVersion.Version

            # Determine product type
            # Reference: https://learn.microsoft.com/en-us/dotnet/api/microsoft.powershell.commands.producttype?view=powershellsdk-1.1.0
            if ($osDetails.ProductType -eq 1) {
                $typeValue = "Workstation"
            } elseif ($osDetails.ProductType -eq 2 -or $osDetails.ProductType -eq 3) {
                $typeValue = "Server"
            } else {
                $typeValue = "Unknown"
            }

            # Extract numerical value from Name
            $numericVersion = ($nameValue -replace "[^\d]").Trim()

            # Create and return custom object with the required properties
            $result = [PSCustomObject]@{
                ReleaseId      = $releaseIdValue
                DisplayVersion = $displayVersionValue
                Name           = $nameValue
                Type           = $typeValue
                NumericVersion = $numericVersion
                EditionId      = $editionIdValue
                Version        = $versionValue
                Architecture   = $architecture
            }

            return $result
        } catch {
            Write-Error "Unable to get OS version details.`nError: $_"
            exit 1
        }
    }

    function Get-GitHubRelease {
        <#
            .SYNOPSIS
            Fetches the latest release information of a GitHub repository.
    
            .DESCRIPTION
            This function uses the GitHub API to get information about the latest release of a specified repository, including its version and the date it was published.
    
            .PARAMETER Owner
            The GitHub username of the repository owner.
    
            .PARAMETER Repo
            The name of the repository.
    
            .EXAMPLE
            Get-GitHubRelease -Owner "asheroto" -Repo "winget-install"
            This command retrieves the latest release version and published datetime of the winget-install repository owned by asheroto.
        #>
        [CmdletBinding()]
        param (
            [string]$Owner,
            [string]$Repo
        )
        try {
            $url = "https://api.github.com/repos/$Owner/$Repo/releases/latest"
            $response = Invoke-RestMethod -Uri $url -ErrorAction Stop

            $latestVersion = $response.tag_name
            $publishedAt = $response.published_at

            # Convert UTC time string to local time
            $UtcDateTime = [DateTime]::Parse($publishedAt, [System.Globalization.CultureInfo]::InvariantCulture, [System.Globalization.DateTimeStyles]::RoundtripKind)
            $PublishedLocalDateTime = $UtcDateTime.ToLocalTime()

            [PSCustomObject]@{
                LatestVersion     = $latestVersion
                PublishedDateTime = $PublishedLocalDateTime
            }
        } catch {
            Write-Error "Unable to check for updates.`nError: $_"
            exit 1
        }
    }

    function CheckForUpdate {
        param (
            [string]$RepoOwner,
            [string]$RepoName,
            [version]$CurrentVersion,
            [string]$PowerShellGalleryName
        )

        $Data = Get-GitHubRelease -Owner $RepoOwner -Repo $RepoName

        if ($Data.LatestVersion -gt $CurrentVersion) {
            Write-Output "`nA new version of $RepoName is available.`n"
            Write-Output "Current version: $CurrentVersion."
            Write-Output "Latest version: $($Data.LatestVersion)."
            Write-Output "Published at: $($Data.PublishedDateTime).`n"
            Write-Output "You can download the latest version from https://github.com/$RepoOwner/$RepoName/releases`n"
            if ($PowerShellGalleryName) {
                Write-Output "Or you can run the following command to update:"
                Write-Output "Install-Script $PowerShellGalleryName -Force`n"
            }
        } else {
            Write-Output "`n$RepoName is up to date.`n"
            Write-Output "Current version: $CurrentVersion."
            Write-Output "Latest version: $($Data.LatestVersion)."
            Write-Output "Published at: $($Data.PublishedDateTime)."
            Write-Output "`nRepository: https://github.com/$RepoOwner/$RepoName/releases`n"
        }
        exit 0
    }

    function Write-Section($text) {
        <#
            .SYNOPSIS
            Prints a text block surrounded by a section divider for enhanced output readability.
    
            .DESCRIPTION
            This function takes a string input and prints it to the console, surrounded by a section divider made of hash characters.
            It is designed to enhance the readability of console output.
    
            .PARAMETER text
            The text to be printed within the section divider.
    
            .EXAMPLE
            Write-Section "Downloading Files..."
            This command prints the text "Downloading Files..." surrounded by a section divider.
        #>
        Write-Output ""
        Write-Output ("#" * ($text.Length + 4))
        Write-Output "# $text #"
        Write-Output ("#" * ($text.Length + 4))
        Write-Output ""
    }

    function Get-WingetDownloadUrl {
        <#
            .SYNOPSIS
            Retrieves the download URL of the latest release asset that matches a specified pattern from the GitHub repository.
    
            .DESCRIPTION
            This function uses the GitHub API to get information about the latest release of the winget-cli repository.
            It then retrieves the download URL for the release asset that matches a specified pattern.
    
            .PARAMETER Match
            The pattern to match in the asset names.
    
            .EXAMPLE
            Get-WingetDownloadUrl "msixbundle"
            This command retrieves the download URL for the latest release asset with a name that contains "msixbundle".
        #>
        [CmdletBinding()]
        param (
            [Parameter(Mandatory = $true)]
            [string]$Match
        )

        $uri = "https://api.github.com/repos/microsoft/winget-cli/releases"
        Write-Debug "Getting information from $uri"
        $releases = Invoke-RestMethod -uri $uri -Method Get -ErrorAction stop

        Write-Debug "Getting latest release..."
        foreach ($release in $releases) {
            if ($release.name -match "preview") {
                continue
            }
            $data = $release.assets | Where-Object name -Match $Match
            if ($data) {
                return $data.browser_download_url
            }
        }

        Write-Debug "Falling back to the latest release..."
        $latestRelease = $releases | Select-Object -First 1
        $data = $latestRelease.assets | Where-Object name -Match $Match
        return $data.browser_download_url
    }

    function Get-WingetStatus {
        <#
            .SYNOPSIS
            Checks if winget is installed.
    
            .DESCRIPTION
            This function checks if winget is installed.
    
            .EXAMPLE
            Get-WingetStatus
        #>

        # Check if winget is installed
        $winget = Get-Command -Name winget -ErrorAction SilentlyContinue

        # If winget is installed, return $true
        if ($null -ne $winget) {
            return $true
        }

        # If winget is not installed, return $false
        return $false
    }

    function Update-PathEnvironmentVariable {
        <#
            .SYNOPSIS
            Updates the PATH environment variable with a new path for both the User and Machine levels.
    
            .DESCRIPTION
            The function will add a new path to the PATH environment variable, making sure it is not a duplicate.
            If the new path is already in the PATH variable, the function will skip adding it.
            This function operates at both User and Machine levels.
    
            .PARAMETER NewPath
            The new directory path to be added to the PATH environment variable.
    
            .EXAMPLE
            Update-PathEnvironmentVariable -NewPath "C:\NewDirectory"
            This command will add the directory "C:\NewDirectory" to the PATH variable at both the User and Machine levels.
        #>
        param(
            [string]$NewPath
        )

        foreach ($Level in "Machine", "User") {
            # Get the current PATH variable
            $path = [Environment]::GetEnvironmentVariable("PATH", $Level)

            # Check if the new path is already in the PATH variable
            if (!$path.Contains($NewPath)) {
                if ($DebugMode) {
                    Write-Output "Adding $NewPath to PATH variable for $Level..."
                } else {
                    Write-Output "Adding PATH variable for $Level..."
                }

                # Add the new path to the PATH variable
                $path = ($path + ";" + $NewPath).Split(';') | Select-Object -Unique
                $path = $path -join ';'

                # Set the new PATH variable
                [Environment]::SetEnvironmentVariable("PATH", $path, $Level)
            } else {
                if ($DebugMode) {
                    Write-Output "$NewPath already present in PATH variable for $Level, skipping."
                } else {
                    Write-Output "PATH variable already present for $Level, skipping."
                }
            }
        }
    }

    function Handle-Error {
        <#
            .SYNOPSIS
                Handles common errors that may occur during an installation process.
    
            .DESCRIPTION
                This function takes an ErrorRecord object and checks for certain known error codes.
                Depending on the error code, it writes appropriate warning messages or throws the error.
    
            .PARAMETER ErrorRecord
                The ErrorRecord object that represents the error that was caught. This object contains
                information about the error, including the exception that was thrown.
    
            .EXAMPLE
                try {
                    # Some code that may throw an error...
                } catch {
                    Handle-Error $_
                }
                This example shows how you might use the Handle-Error function in a try-catch block.
                If an error occurs in the try block, the catch block catches it and calls Handle-Error,
                passing the error (represented by the $_ variable) to the function.
        #>
        param($ErrorRecord)

        # Store current value
        $OriginalErrorActionPreference = $ErrorActionPreference

        # Set to silently continue
        $ErrorActionPreference = 'SilentlyContinue'

        if ($ErrorRecord.Exception.Message -match '0x80073D06') {
            Write-Warning "Higher version already installed."
            Write-Warning "That's okay, continuing..."
        } elseif ($ErrorRecord.Exception.Message -match '0x80073CF0') {
            Write-Warning "Same version already installed."
            Write-Warning "That's okay, continuing..."
        } elseif ($ErrorRecord.Exception.Message -match '0x80073D02') {
            # Stop execution and return the ErrorRecord so that the calling try/catch block throws the error
            Write-Warning "Resources modified are in-use. Try closing Windows Terminal / PowerShell / Command Prompt and try again."
            Write-Warning "If the problem persists, restart your computer."
            return $ErrorRecord
        } elseif ($ErrorRecord.Exception.Message -match 'Unable to connect to the remote server') {
            Write-Warning "Cannot connect to the Internet to download the required files."
            Write-Warning "Try running the script again and make sure you are connected to the Internet."
            Write-Warning "Sometimes the nuget.org server is down, so you may need to try again later."
            return $ErrorRecord
        } elseif ($ErrorRecord.Exception.Message -match "The remote name could not be resolved") {
            Write-Warning "Cannot connect to the Internet to download the required files."
            Write-Warning "Try running the script again and make sure you are connected to the Internet."
            Write-Warning "Make sure DNS is working correctly on your computer."
        } else {
            # For other errors, we should stop the execution and return the ErrorRecord so that the calling try/catch block throws the error
            return $ErrorRecord
        }

        # Reset to original value
        $ErrorActionPreference = $OriginalErrorActionPreference
    }

    function Cleanup {
        <#
            .SYNOPSIS
                Deletes a file or directory specified without prompting for confirmation or displaying errors.
    
            .DESCRIPTION
                This function takes a path to a file or directory and deletes it without prompting for confirmation or displaying errors.
                If the path is a directory, the function will delete the directory and all its contents.
    
            .PARAMETER Path
                The path of the file or directory to be deleted.
    
            .PARAMETER Recurse
                If the path is a directory, this switch specifies whether to delete the directory and all its contents.
    
            .EXAMPLE
                Cleanup -Path "C:\Temp"
                This example deletes the directory "C:\Temp" and all its contents.
    
            .EXAMPLE
                Cleanup -Path "C:\Temp" -Recurse
                This example deletes the directory "C:\Temp" and all its contents.
    
            .EXAMPLE
                Cleanup -Path "C:\Temp\file.txt"
                This example deletes the file "C:\Temp\file.txt".
        #>
        param (
            [string]$Path,
            [switch]$Recurse
        )

        try {
            if (Test-Path -Path $Path) {
                if ($Recurse -and (Get-Item -Path $Path) -is [System.IO.DirectoryInfo]) {
                    Get-ChildItem -Path $Path -Recurse | Remove-Item -Force -Recurse
                    Remove-Item -Path $Path -Force -Recurse
                } else {
                    Remove-Item -Path $Path -Force
                }
            }
            if ($DebugMode) {
                Write-Output "Deleted: $Path"
            }
        } catch {
            # Errors are ignored
        }
    }

    function Install-Prerequisite {
        <#
            .SYNOPSIS
            Downloads and installs a prerequisite for winget.
    
            .DESCRIPTION
            This function takes a name, version, URL, alternate URL, content type, and body and downloads and installs the prerequisite.
    
            .PARAMETER Name
            The name of the prerequisite.
    
            .PARAMETER Version
            The version of the prerequisite.
    
            .PARAMETER Url
            The URL of the prerequisite.
    
            .PARAMETER AlternateUrl
            The alternate URL of the prerequisite.
    
            .PARAMETER ContentType
            The content type of the prerequisite.
    
            .PARAMETER Body
            The body of the prerequisite.
    
            .PARAMETER NupkgVersion
            The nupkg version of the prerequisite.
    
            .PARAMETER AppxFileVersion
            The appx file version of the prerequisite.
    
            .EXAMPLE
            Install-Prerequisite -Name "VCLibs" -Version "14.00" -Url "https://store.rg-adguard.net/api/GetFiles" -AlternateUrl "https://aka.ms/Microsoft.VCLibs.$arch.14.00.Desktop.appx" -ContentType "application/x-www-form-urlencoded" -Body "type=PackageFamilyName&url=Microsoft.VCLibs.140.00_8wekyb3d8bbwe&ring=RP&lang=en-US"
    
            Where $arch is the architecture type of the current system.
        #>
        param (
            [string]$Name,
            [string]$Url,
            [string]$AlternateUrl,
            [string]$ContentType,
            [string]$Body,
            [string]$NupkgVersion,
            [string]$AppxFileVersion
        )

        $osVersion = Get-OSInfo
        $arch = $osVersion.Architecture

        Write-Section "Downloading & installing ${arch} ${Name}..."

        $ThrowReason = @{
            Message = ""
            Code    = 0
        }
        try {
            # ============================================================================ #
            # Windows 10 / Server 2022 detection
            # ============================================================================ #

            # Function to extract domain from URL
            function Get-DomainFromUrl($url) {
                $uri = [System.Uri]$url
                $domain = $uri.Host -replace "^www\."
                return $domain
            }

            # If Server 2022 or Windows 10, force non-store version of VCLibs (return true)
            $messageTemplate = "{OS} detected. Using {DOMAIN} version of {NAME}."

            # Determine the OS-specific information
            $osType = $osVersion.Type
            $osNumericVersion = $osVersion.NumericVersion

            if (($osType -eq "Server" -and $osNumericVersion -eq 2022) -or ($osType -eq "Workstation" -and $osNumericVersion -eq 10)) {
                if ($osType -eq "Server") {
                    $osName = "Server 2022"
                } else {
                    $osName = "Windows 10"
                }
                $domain = Get-DomainFromUrl $AlternateUrl
                $ThrowReason.Message = ($messageTemplate -replace "{OS}", $osName) -replace "{NAME}", $Name -replace "{DOMAIN}", $domain
                $ThrowReason.Code = 1
                throw
            }

            # ============================================================================ #
            # Primary method
            # ============================================================================ #

            $url = Invoke-WebRequest -Uri $Url -Method "POST" -ContentType $ContentType -Body $Body -UseBasicParsing | ForEach-Object Links | Where-Object outerHTML -match "$Name.+_${arch}__8wekyb3d8bbwe.appx" | ForEach-Object href

            # If the URL is empty, try the alternate method
            if ($url -eq "") {
                $ThrowReason.Message = "URL is empty"
                $ThrowReason.Code = 2
                throw
            }

            if ($DebugMode) {
                Write-Output "URL: ${url}`n"
            }
            Write-Output "Installing ${arch} ${Name}..."
            Add-AppxPackage $url -ErrorAction Stop
            Write-Output "`n$Name installed successfully."
        } catch {
            # Alternate method
            if ($_.Exception.Message -match '0x80073D02') {
                # If resources in use exception, fail immediately
                Handle-Error $_
                throw
            }

            try {
                $url = $AlternateUrl

                # Throw reason if alternate method is required
                if ($ThrowReason.Code -eq 0) {
                    Write-Warning "Error when trying to download or install $Name. Trying alternate method..."
                } else {
                    Write-Warning $ThrowReason.Message
                }
                Write-Output ""

                # If the URL is empty, throw error
                if ($url -eq "") {
                    throw "URL is empty"
                }

                # Specific logic for VCLibs alternate method
                if ($Name -eq "VCLibs") {
                    if ($DebugMode) {
                        Write-Output "URL: $($url)`n"
                    }
                    Write-Output "Installing ${arch} ${Name}..."
                    Add-AppxPackage $url -ErrorAction Stop
                    Write-Output "`n$Name installed successfully."
                }

                # Specific logic for UI.Xaml
                if ($Name -eq "UI.Xaml") {
                    $TempFolder = Get-TempFolder

                    $uiXaml = @{
                        url           = $url
                        appxFolder    = "tools/AppX/$arch/Release/"
                        appxFilename  = "Microsoft.UI.Xaml.$AppxFileVersion.appx"
                        nupkgFilename = Join-Path -Path $TempFolder -ChildPath "Microsoft.UI.Xaml.$NupkgVersion.nupkg"
                        nupkgFolder   = Join-Path -Path $TempFolder -ChildPath "Microsoft.UI.Xaml.$NupkgVersion"
                    }

                    # Debug
                    if ($DebugMode) {
                        $formattedDebugOutput = ($uiXaml | ConvertTo-Json -Depth 10 -Compress) -replace '\\\\', '\'
                        Write-Output "uiXaml:"
                        Write-Output $formattedDebugOutput
                        Write-Output ""
                    }

                    # Downloading
                    Write-Output "Downloading UI.Xaml..."
                    if ($DebugMode) {
                        Write-Output "URL: $($uiXaml.url)"
                    }
                    Invoke-WebRequest -Uri $uiXaml.url -OutFile $uiXaml.nupkgFilename

                    # Check if folder exists and delete if needed (will occur whether DisableCleanup is $true or $false)
                    Cleanup -Path $uiXaml.nupkgFolder -Recurse

                    # Extracting
                    Write-Output "Extracting...`n"
                    if ($DebugMode) {
                        Write-Output "Into folder: $($uiXaml.nupkgFolder)`n"
                    }
                    Add-Type -Assembly System.IO.Compression.FileSystem
                    [IO.Compression.ZipFile]::ExtractToDirectory($uiXaml.nupkgFilename, $uiXaml.nupkgFolder)

                    # Prep for install
                    Write-Output "Installing ${arch} ${Name}..."
                    $XamlAppxFolder = Join-Path -Path $uiXaml.nupkgFolder -ChildPath $uiXaml.appxFolder
                    $XamlAppxPath = Join-Path -Path $XamlAppxFolder -ChildPath $uiXaml.appxFilename

                    # Debugging
                    if ($DebugMode) { Write-Output "Installing appx Packages in: $XamlAppxFolder" }

                    # Install
                    Get-ChildItem -Path $XamlAppxPath -Filter *.appx | ForEach-Object {
                        if ($DebugMode) { Write-Output "Installing appx Package: $($_.Name)" }
                        Add-AppxPackage $_.FullName -ErrorAction Stop
                    }
                    Write-Output "`nUI.Xaml installed successfully."

                    # Cleanup
                    if ($DisableCleanup -eq $false) {
                        if ($DebugMode) { Write-Output "" } # Extra line break for readability if DebugMode is enabled
                        Cleanup -Path $uiXaml.nupkgFilename
                        Cleanup -Path $uiXaml.nupkgFolder -Recurse $true
                    }
                }
            } catch {
                # If unable to connect to remote server and Windows 10 or Server 2022, display warning message
                $ShowOldVersionMessage = $False
                if ($_.Exception.Message -match "Unable to connect to the remote server") {
                    # Determine the correct Windows caption and set $ShowOutput to $True if conditions are met
                    if ($osVersion.Type -eq "Workstation" -and $osVersion.NumericVersion -eq 10) {
                        $WindowsCaption = "Windows 10"
                        $ShowOldVersionMessage = $True
                    } elseif ($osVersion.Type -eq "Server" -and $osVersion.NumericVersion -eq 2022) {
                        $WindowsCaption = "Server 2022"
                        $ShowOldVersionMessage = $True
                    }

                    # Output the warning message if $ShowOldVersionMessage is $True, otherwise output the generic error message
                    if ($ShowOldVersionMessage) {
                        $OldVersionMessage = "There is an issue connecting to the server to download $Name. Unfortunately this is a known issue with the prerequisite server URLs - sometimes they are down. Since you're using $WindowsCaption you must use the non-store versions of the prerequisites, the prerequisites from the Windows store will not work, so you may need to try again later or install manually."
                        Write-Warning $OldVersionMessage
                    } else {
                        Write-Warning "Error when trying to download or install $Name. Please try again later or manually install $Name."
                    }
                }

                $errorHandled = Handle-Error $_
                if ($null -ne $errorHandled) {
                    throw $errorHandled
                }
                $errorHandled = $null
            }
        }
    }

    # ============================================================================ #
    # Initial checks
    # ============================================================================ #

    # Check for updates if -CheckForUpdate is specified
    if ($CheckForUpdate) {
        CheckForUpdate -RepoOwner $RepoOwner -RepoName $RepoName -CurrentVersion $CurrentVersion -PowerShellGalleryName $PowerShellGalleryName
    }

    # Heading
    Write-Output "winget-install $CurrentVersion"
    Write-Output "To check for updates, run winget-install -CheckForUpdate"

    # Set OS version
    $osVersion = Get-OSInfo

    # Set architecture type
    $arch = $osVersion.Architecture

    # If it's a workstation, make sure it is Windows 10+
    if ($osVersion.Type -eq "Workstation" -and $osVersion.NumericVersion -lt 10) {
        Write-Error "winget is only compatible with Windows 10 or greater."
        exit 1
    }

    # If it's a workstation with Windows 10, make sure it's version 1809 or greater
    if ($osVersion.Type -eq "Workstation" -and $osVersion.NumericVersion -eq 10 -and $osVersion.ReleaseId -lt 1809) {
        Write-Error "winget is only compatible with Windows 10 version 1809 or greater."
        exit 1
    }

    # If it's a server, it needs to be 2022+
    if ($osVersion.Type -eq "Server" -and $osVersion.NumericVersion -lt 2022) {
        Write-Error "winget is only compatible with Windows Server 2022+."
        exit 1
    }

    # Check if winget is already installed
    if (Get-WingetStatus) {
        if ($Force -eq $false) {
            Write-Output "winget is already installed, exiting..."
            exit 0
        }
    }

    # ============================================================================ #
    # Beginning of installation process
    # ============================================================================ #

    try {
        # ============================================================================ #
        # Install prerequisites
        # ============================================================================ #

        # VCLibs
        Install-Prerequisite -Name "VCLibs" -Version "14.00" -Url "https://store.rg-adguard.net/api/GetFiles" -AlternateUrl "https://aka.ms/Microsoft.VCLibs.$arch.14.00.Desktop.appx" -ContentType "application/x-www-form-urlencoded" -Body "type=PackageFamilyName&url=Microsoft.VCLibs.140.00_8wekyb3d8bbwe&ring=RP&lang=en-US"

        # UI.Xaml
        Install-Prerequisite -Name "UI.Xaml" -Version "2.7.3" -Url "https://store.rg-adguard.net/api/GetFiles" -AlternateUrl "https://www.nuget.org/api/v2/package/Microsoft.UI.Xaml/2.7.3" -ContentType "application/x-www-form-urlencoded" -Body "type=ProductId&url=9P5VK8KZB5QZ&ring=RP&lang=en-US" -NupkgVersion "2.7.3" -AppxFileVersion "2.7"

        # ============================================================================ #
        # Install winget
        # ============================================================================ #

        $TempFolder = Get-TempFolder

        # Output
        Write-Section "Downloading & installing winget..."

        Write-Output "Retrieving download URL for winget from GitHub..."
        $wingetUrl = Get-WingetDownloadUrl -Match "msixbundle"
        $wingetPath = Join-Path -Path $tempFolder -ChildPath "winget.msixbundle"
        $wingetLicenseUrl = Get-WingetDownloadUrl -Match "License1.xml"
        $wingetLicensePath = Join-Path -Path $tempFolder -ChildPath "license1.xml"

        # If the URL is empty, throw error
        if ($wingetUrl -eq "") {
            throw "URL is empty"
        }

        Write-Output "Downloading winget..."
        if ($DebugMode) {
            Write-Output "`nURL: $wingetUrl"
            Write-Output "Saving as: $wingetPath"
        }
        Invoke-WebRequest -Uri $wingetUrl -OutFile $wingetPath

        Write-Output "Downloading license..."
        if ($DebugMode) {
            Write-Output "`nURL: $wingetLicenseUrl"
            Write-Output "Saving as: $wingetLicensePath"
        }
        Invoke-WebRequest -Uri $wingetLicenseUrl -OutFile $wingetLicensePath

        Write-Output "`nInstalling winget..."

        # Debugging
        if ($DebugMode) {
            Write-Output "wingetPath: $wingetPath"
            Write-Output "wingetLicensePath: $wingetLicensePath"
        }

        # Try to install winget
        try {
            # Add-AppxPackage will throw an error if the app is already installed or higher version installed, so we need to catch it and continue
            Add-AppxProvisionedPackage -Online -PackagePath $wingetPath -LicensePath $wingetLicensePath -ErrorAction SilentlyContinue | Out-Null
            Write-Output "`nwinget installed successfully."
        } catch {
            $errorHandled = Handle-Error $_
            if ($null -ne $errorHandled) {
                throw $errorHandled
            }
            $errorHandled = $null
        }

        # Cleanup
        if ($DisableCleanup -eq $false) {
            if ($DebugMode) { Write-Output "" } # Extra line break for readability if DebugMode is enabled
            Cleanup -Path $wingetPath
            Cleanup -Path $wingetLicensePath
        }

        # ============================================================================ #
        # PATH environment variable
        # ============================================================================ #

        # Add the WindowsApps directory to the PATH variable
        Write-Section "Checking and adding WindowsApps directory to PATH variable for current user if not present..."
        $WindowsAppsPath = [IO.Path]::Combine([Environment]::GetEnvironmentVariable("LOCALAPPDATA"), "Microsoft", "WindowsApps")
        Update-PathEnvironmentVariable -NewPath $WindowsAppsPath

        # ============================================================================ #
        # Finished
        # ============================================================================ #

        Write-Section "Installation complete!"

        # Timeout for 5 seconds to check winget
        Write-Output "Checking if winget is installed and working..."
        Start-Sleep -Seconds 3

        # Check if winget is installed
        if (Get-WingetStatus -eq $true) {
            Write-Output "winget is installed and working now, you can go ahead and use it."
        } else {
            Write-Warning "winget is installed but is not detected as a command. Try using winget now. If it doesn't work, wait about 1 minute and try again (it is sometimes delayed). Also try restarting your computer."
            Write-Warning "If you restart your computer and the command still isn't recognized, please read the Troubleshooting section`nof the README: https://github.com/asheroto/winget-install#troubleshooting`n"
            Write-Warning "Make sure you have the latest version of the script by running this command: $PowerShellGalleryName -CheckForUpdate"
        }
    } catch {
        # ============================================================================ #
        # Error handling
        # ============================================================================ #

        Write-Section "WARNING! An error occurred during installation!"
        Write-Warning "If messages above don't help and the problem persists, please read the Troubleshooting section`nof the README: https://github.com/asheroto/winget-install#troubleshooting"
        Write-Warning "Make sure you have the latest version of the script by running this command: $PowerShellGalleryName -CheckForUpdate"

        # If it's not 0x80073D02 (resources in use), show error
        if ($_.Exception.Message -notmatch '0x80073D02') {
            if ($DebugMode) {
                Write-Warning "Line number : $($_.InvocationInfo.ScriptLineNumber)"
            }
            Write-Warning "Error: $($_.Exception.Message)`n"
        }
    }
    # SIG # Begin signature block
    # MIIpMgYJKoZIhvcNAQcCoIIpIzCCKR8CAQExDzANBglghkgBZQMEAgEFADB5Bgor
    # BgEEAYI3AgEEoGswaTA0BgorBgEEAYI3AgEeMCYCAwEAAAQQH8w7YFlLCE63JNLG
    # KX7zUQIBAAIBAAIBAAIBAAIBADAxMA0GCWCGSAFlAwQCAQUABCDA8Zp7VepgV4G3
    # EU8JBTEMtijydCzIbx89TZx61DzcXaCCDh8wggawMIIEmKADAgECAhAIrUCyYNKc
    # TJ9ezam9k67ZMA0GCSqGSIb3DQEBDAUAMGIxCzAJBgNVBAYTAlVTMRUwEwYDVQQK
    # EwxEaWdpQ2VydCBJbmMxGTAXBgNVBAsTEHd3dy5kaWdpY2VydC5jb20xITAfBgNV
    # BAMTGERpZ2lDZXJ0IFRydXN0ZWQgUm9vdCBHNDAeFw0yMTA0MjkwMDAwMDBaFw0z
    # NjA0MjgyMzU5NTlaMGkxCzAJBgNVBAYTAlVTMRcwFQYDVQQKEw5EaWdpQ2VydCwg
    # SW5jLjFBMD8GA1UEAxM4RGlnaUNlcnQgVHJ1c3RlZCBHNCBDb2RlIFNpZ25pbmcg
    # UlNBNDA5NiBTSEEzODQgMjAyMSBDQTEwggIiMA0GCSqGSIb3DQEBAQUAA4ICDwAw
    # ggIKAoICAQDVtC9C0CiteLdd1TlZG7GIQvUzjOs9gZdwxbvEhSYwn6SOaNhc9es0
    # JAfhS0/TeEP0F9ce2vnS1WcaUk8OoVf8iJnBkcyBAz5NcCRks43iCH00fUyAVxJr
    # Q5qZ8sU7H/Lvy0daE6ZMswEgJfMQ04uy+wjwiuCdCcBlp/qYgEk1hz1RGeiQIXhF
    # LqGfLOEYwhrMxe6TSXBCMo/7xuoc82VokaJNTIIRSFJo3hC9FFdd6BgTZcV/sk+F
    # LEikVoQ11vkunKoAFdE3/hoGlMJ8yOobMubKwvSnowMOdKWvObarYBLj6Na59zHh
    # 3K3kGKDYwSNHR7OhD26jq22YBoMbt2pnLdK9RBqSEIGPsDsJ18ebMlrC/2pgVItJ
    # wZPt4bRc4G/rJvmM1bL5OBDm6s6R9b7T+2+TYTRcvJNFKIM2KmYoX7BzzosmJQay
    # g9Rc9hUZTO1i4F4z8ujo7AqnsAMrkbI2eb73rQgedaZlzLvjSFDzd5Ea/ttQokbI
    # YViY9XwCFjyDKK05huzUtw1T0PhH5nUwjewwk3YUpltLXXRhTT8SkXbev1jLchAp
    # QfDVxW0mdmgRQRNYmtwmKwH0iU1Z23jPgUo+QEdfyYFQc4UQIyFZYIpkVMHMIRro
    # OBl8ZhzNeDhFMJlP/2NPTLuqDQhTQXxYPUez+rbsjDIJAsxsPAxWEQIDAQABo4IB
    # WTCCAVUwEgYDVR0TAQH/BAgwBgEB/wIBADAdBgNVHQ4EFgQUaDfg67Y7+F8Rhvv+
    # YXsIiGX0TkIwHwYDVR0jBBgwFoAU7NfjgtJxXWRM3y5nP+e6mK4cD08wDgYDVR0P
    # AQH/BAQDAgGGMBMGA1UdJQQMMAoGCCsGAQUFBwMDMHcGCCsGAQUFBwEBBGswaTAk
    # BggrBgEFBQcwAYYYaHR0cDovL29jc3AuZGlnaWNlcnQuY29tMEEGCCsGAQUFBzAC
    # hjVodHRwOi8vY2FjZXJ0cy5kaWdpY2VydC5jb20vRGlnaUNlcnRUcnVzdGVkUm9v
    # dEc0LmNydDBDBgNVHR8EPDA6MDigNqA0hjJodHRwOi8vY3JsMy5kaWdpY2VydC5j
    # b20vRGlnaUNlcnRUcnVzdGVkUm9vdEc0LmNybDAcBgNVHSAEFTATMAcGBWeBDAED
    # MAgGBmeBDAEEATANBgkqhkiG9w0BAQwFAAOCAgEAOiNEPY0Idu6PvDqZ01bgAhql
    # +Eg08yy25nRm95RysQDKr2wwJxMSnpBEn0v9nqN8JtU3vDpdSG2V1T9J9Ce7FoFF
    # UP2cvbaF4HZ+N3HLIvdaqpDP9ZNq4+sg0dVQeYiaiorBtr2hSBh+3NiAGhEZGM1h
    # mYFW9snjdufE5BtfQ/g+lP92OT2e1JnPSt0o618moZVYSNUa/tcnP/2Q0XaG3Ryw
    # YFzzDaju4ImhvTnhOE7abrs2nfvlIVNaw8rpavGiPttDuDPITzgUkpn13c5Ubdld
    # AhQfQDN8A+KVssIhdXNSy0bYxDQcoqVLjc1vdjcshT8azibpGL6QB7BDf5WIIIJw
    # 8MzK7/0pNVwfiThV9zeKiwmhywvpMRr/LhlcOXHhvpynCgbWJme3kuZOX956rEnP
    # LqR0kq3bPKSchh/jwVYbKyP/j7XqiHtwa+aguv06P0WmxOgWkVKLQcBIhEuWTatE
    # QOON8BUozu3xGFYHKi8QxAwIZDwzj64ojDzLj4gLDb879M4ee47vtevLt/B3E+bn
    # KD+sEq6lLyJsQfmCXBVmzGwOysWGw/YmMwwHS6DTBwJqakAwSEs0qFEgu60bhQji
    # WQ1tygVQK+pKHJ6l/aCnHwZ05/LWUpD9r4VIIflXO7ScA+2GRfS0YW6/aOImYIbq
    # yK+p/pQd52MbOoZWeE4wggdnMIIFT6ADAgECAhAN0Uk2zX4f3m8X7HdlwxBNMA0G
    # CSqGSIb3DQEBCwUAMGkxCzAJBgNVBAYTAlVTMRcwFQYDVQQKEw5EaWdpQ2VydCwg
    # SW5jLjFBMD8GA1UEAxM4RGlnaUNlcnQgVHJ1c3RlZCBHNCBDb2RlIFNpZ25pbmcg
    # UlNBNDA5NiBTSEEzODQgMjAyMSBDQTEwHhcNMjMwMzE3MDAwMDAwWhcNMjQwMzE2
    # MjM1OTU5WjBvMQswCQYDVQQGEwJVUzERMA8GA1UECBMIT2tsYWhvbWExETAPBgNV
    # BAcTCE11c2tvZ2VlMRwwGgYDVQQKExNBc2hlciBTb2x1dGlvbnMgSW5jMRwwGgYD
    # VQQDExNBc2hlciBTb2x1dGlvbnMgSW5jMIICIjANBgkqhkiG9w0BAQEFAAOCAg8A
    # MIICCgKCAgEA081RwO7808Fuab0RP0L2gthlZB8fiiGUBpnqJhsD1Bzpk+45B2LA
    # qmrUp+nZIXNwr5me/55enGI9CkhaxmZoFhBxoM1u5lODNp8GaAYzIEi0IJldzZ9y
    # PAQMfhTkHRiOwKBqTGO3h/gSZtaZ+8F+ltCmlXvv2vpqFpt5JL+uJm9SRIN5WLiP
    # QM/isjYR+eIcaZxQeHLfbnemNcaT4cXOMChUsmG6WsoHZO1o76dCN+owz23koLy2
    # Y1R3N2PMQj3kj8Bnlph6ffNnitKhXuwj3NkWwPSSQvYhcBuTcCOxpXpUjWlQNuTt
    # llTHp9leKMq11raPkSaLe2qVX4eBc6HPtBT+7XagpaA409d7fmYTOLKmE0BCEdgb
    # YZzYmKSyjrAgWlU9SYxurhFgHuQFD0CsBW1aXl6IEjn26cVx+hmj2KCOFELAdh1r
    # 9UTNt37a/o/TYCp/mQ22/oa/224is1dpNj7RAHnNaix5n8RKKHufEh85lVjS/cBn
    # 7z3cCKejyfBaUGK10SUwZKJiJ51DKkRkdh4A5cL85wKkQcFnRpfT/T+KTOEYRFT/
    # vz3uK9bMLwuBj+gkP3WnlVXf67IY3FfZaQUDNdtwur4UTGrDQOn8Xl2rEy7L9VlJ
    # UOCjX93WfW0B1Q4IxSdF6vIJw1m44HpIU4jxnqTBEo6BVVRCtdmp/x0CAwEAAaOC
    # AgMwggH/MB8GA1UdIwQYMBaAFGg34Ou2O/hfEYb7/mF7CIhl9E5CMB0GA1UdDgQW
    # BBTH3/U7rGshoJKjtOAVqNAEWJ/PBDAOBgNVHQ8BAf8EBAMCB4AwEwYDVR0lBAww
    # CgYIKwYBBQUHAwMwgbUGA1UdHwSBrTCBqjBToFGgT4ZNaHR0cDovL2NybDMuZGln
    # aWNlcnQuY29tL0RpZ2lDZXJ0VHJ1c3RlZEc0Q29kZVNpZ25pbmdSU0E0MDk2U0hB
    # Mzg0MjAyMUNBMS5jcmwwU6BRoE+GTWh0dHA6Ly9jcmw0LmRpZ2ljZXJ0LmNvbS9E
    # aWdpQ2VydFRydXN0ZWRHNENvZGVTaWduaW5nUlNBNDA5NlNIQTM4NDIwMjFDQTEu
    # Y3JsMD4GA1UdIAQ3MDUwMwYGZ4EMAQQBMCkwJwYIKwYBBQUHAgEWG2h0dHA6Ly93
    # d3cuZGlnaWNlcnQuY29tL0NQUzCBlAYIKwYBBQUHAQEEgYcwgYQwJAYIKwYBBQUH
    # MAGGGGh0dHA6Ly9vY3NwLmRpZ2ljZXJ0LmNvbTBcBggrBgEFBQcwAoZQaHR0cDov
    # L2NhY2VydHMuZGlnaWNlcnQuY29tL0RpZ2lDZXJ0VHJ1c3RlZEc0Q29kZVNpZ25p
    # bmdSU0E0MDk2U0hBMzg0MjAyMUNBMS5jcnQwCQYDVR0TBAIwADANBgkqhkiG9w0B
    # AQsFAAOCAgEAQtDUmTp7UG2w4A4WaT6BoMLBLqzm09S64nFfuIUFjWk3KTCStpwR
    # 3KzwG78CpYb7I0G6T7O2Emv+u0WgKVaWPbLFlnrjXXB+68DxR+CFWh6UDioz/9wo
    # +eD/V2eKilAc2WSEIC8NzXT3C4yEtxUmnebK7Ysxy4qLlb4Sxk9NspS+Lg3jKBxb
    # ExduQWHi1ytqw9NCghzK1Y2h5/AHwSYfwz7AyRerN3gTwzmmgTaWYEHVCL0NQddO
    # 1lkSz6LPq2/JWHns7I0tNPCT5nZYva1v34EZvP9+P+SUDBH8bfrm6HlTd+Z6qNW5
    # ACsALaCCAsZRQ6i7UZfjolD/lADn65f46XfnNMIo8PPpagFBIvxg03DGDJQu4QnY
    # AyZhtrLDxc8VLtGZP8QVBf9JVcjVD8FxMMobDnuDq0YZ1h3ydRo1dqOzWVDipp0i
    # oPd0UbL7EcZr6QcM72LWFvAACyVcIiXlh5jY+JehqaZMlS9aw4WQT0gpvBOaOJqb
    # vGoAbtyHRFIkFbJG/Wxkpr+VkU1JvilXCh8g0OsXwvJk4dK4GeBVa7VLlq95fLiK
    # zL54EZDTY1W+YfKYUseiptRlu5XBUn15C9rTpqDZhHFz6exyLfYcJzdxJJdArjio
    # UKKR9ZhLfxm1bmFMb8NPWOKH/ZI6vR0jNgwalk3nTx63ZnVAOJLH+BkxghppMIIa
    # ZQIBATB9MGkxCzAJBgNVBAYTAlVTMRcwFQYDVQQKEw5EaWdpQ2VydCwgSW5jLjFB
    # MD8GA1UEAxM4RGlnaUNlcnQgVHJ1c3RlZCBHNCBDb2RlIFNpZ25pbmcgUlNBNDA5
    # NiBTSEEzODQgMjAyMSBDQTECEA3RSTbNfh/ebxfsd2XDEE0wDQYJYIZIAWUDBAIB
    # BQCgfDAQBgorBgEEAYI3AgEMMQIwADAZBgkqhkiG9w0BCQMxDAYKKwYBBAGCNwIB
    # BDAcBgorBgEEAYI3AgELMQ4wDAYKKwYBBAGCNwIBFTAvBgkqhkiG9w0BCQQxIgQg
    # +G28RiG51Rx5ZlprfuJjJfXQ7gUROL1Kg1o3eD9EFdowDQYJKoZIhvcNAQEBBQAE
    # ggIACT2ScJvg5XlMOXE6U4vOH3/hHGrvIQrRLfFgYvw6kPsAH6anlmilqdKfmyd/
    # ccJGi5tAnosGkEDHTAC7FsbqxYvWZt1nKaDAebAb5mx1nS7IDmAJ23NLoE6DveY7
    # fyLFzeEOdjmfRINce3R2et7uZx5ciRhvU+UxhLHJRWhmzURAD4YDd9FXQSEUPVdi
    # ht1FUaSzy4Sg7rhr/F0grBIQM10scBKbXvDlN1coVWfisY+ZVtTVdY1X76K/iF5R
    # mXCE75K3LTF/xCe7WuF9mTGseNXek2wNPN8BANX3xsimSOBvZl7R+kmGEdJ0veqH
    # FIYW3ZHWCOfpebn9l4HldWq2DT98gG8anaXX7LfkJzHZP3PeMxPTJAVXijPQKjPX
    # v4T2yxNDQ9T04ztjmlhJ+R/QyolIn3+WaF1mSIAVOKJTuGWu4Nfbdyna8ik5EcUC
    # NpoHvXwT+9Yvjrcbvqr0IoKsvSP2kkaZsLyk+C3tsw6eLS/zZVXsVoIUYuqdUj1X
    # IzmHDHaKzec1LKmBl/FOinmvZylt8RCEpDjhAJJ5TppxsgrtGUaR3H+b6FemQtDl
    # aQt4Fg1Z/KCXcmUkYXlK1iOwYLo+komVpm/2vP/LyyixDk3E0r+6W4D0l1ZN1Uwr
    # r3eCO/QiabL2KBIp+n01ZML+n783L1OFMHtajHrwxNHsM1ahghc/MIIXOwYKKwYB
    # BAGCNwMDATGCFyswghcnBgkqhkiG9w0BBwKgghcYMIIXFAIBAzEPMA0GCWCGSAFl
    # AwQCAQUAMHcGCyqGSIb3DQEJEAEEoGgEZjBkAgEBBglghkgBhv1sBwEwMTANBglg
    # hkgBZQMEAgEFAAQgcMQWIdEqoN75GC/NHNc9HATkMlpacYGTvFTEqdp+KfYCEB6I
    # ctcxH4F3F8+CIq4jN+kYDzIwMjMwOTI1MjEyNTU0WqCCEwkwggbCMIIEqqADAgEC
    # AhAFRK/zlJ0IOaa/2z9f5WEWMA0GCSqGSIb3DQEBCwUAMGMxCzAJBgNVBAYTAlVT
    # MRcwFQYDVQQKEw5EaWdpQ2VydCwgSW5jLjE7MDkGA1UEAxMyRGlnaUNlcnQgVHJ1
    # c3RlZCBHNCBSU0E0MDk2IFNIQTI1NiBUaW1lU3RhbXBpbmcgQ0EwHhcNMjMwNzE0
    # MDAwMDAwWhcNMzQxMDEzMjM1OTU5WjBIMQswCQYDVQQGEwJVUzEXMBUGA1UEChMO
    # RGlnaUNlcnQsIEluYy4xIDAeBgNVBAMTF0RpZ2lDZXJ0IFRpbWVzdGFtcCAyMDIz
    # MIICIjANBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEAo1NFhx2DjlusPlSzI+DP
    # n9fl0uddoQ4J3C9Io5d6OyqcZ9xiFVjBqZMRp82qsmrdECmKHmJjadNYnDVxvzqX
    # 65RQjxwg6seaOy+WZuNp52n+W8PWKyAcwZeUtKVQgfLPywemMGjKg0La/H8JJJSk
    # ghraarrYO8pd3hkYhftF6g1hbJ3+cV7EBpo88MUueQ8bZlLjyNY+X9pD04T10Mf2
    # SC1eRXWWdf7dEKEbg8G45lKVtUfXeCk5a+B4WZfjRCtK1ZXO7wgX6oJkTf8j48qG
    # 7rSkIWRw69XloNpjsy7pBe6q9iT1HbybHLK3X9/w7nZ9MZllR1WdSiQvrCuXvp/k
    # /XtzPjLuUjT71Lvr1KAsNJvj3m5kGQc3AZEPHLVRzapMZoOIaGK7vEEbeBlt5NkP
    # 4FhB+9ixLOFRr7StFQYU6mIIE9NpHnxkTZ0P387RXoyqq1AVybPKvNfEO2hEo6U7
    # Qv1zfe7dCv95NBB+plwKWEwAPoVpdceDZNZ1zY8SdlalJPrXxGshuugfNJgvOupr
    # AbD3+yqG7HtSOKmYCaFxsmxxrz64b5bV4RAT/mFHCoz+8LbH1cfebCTwv0KCyqBx
    # PZySkwS0aXAnDU+3tTbRyV8IpHCj7ArxES5k4MsiK8rxKBMhSVF+BmbTO77665E4
    # 2FEHypS34lCh8zrTioPLQHsCAwEAAaOCAYswggGHMA4GA1UdDwEB/wQEAwIHgDAM
    # BgNVHRMBAf8EAjAAMBYGA1UdJQEB/wQMMAoGCCsGAQUFBwMIMCAGA1UdIAQZMBcw
    # CAYGZ4EMAQQCMAsGCWCGSAGG/WwHATAfBgNVHSMEGDAWgBS6FtltTYUvcyl2mi91
    # jGogj57IbzAdBgNVHQ4EFgQUpbbvE+fvzdBkodVWqWUxo97V40kwWgYDVR0fBFMw
    # UTBPoE2gS4ZJaHR0cDovL2NybDMuZGlnaWNlcnQuY29tL0RpZ2lDZXJ0VHJ1c3Rl
    # ZEc0UlNBNDA5NlNIQTI1NlRpbWVTdGFtcGluZ0NBLmNybDCBkAYIKwYBBQUHAQEE
    # gYMwgYAwJAYIKwYBBQUHMAGGGGh0dHA6Ly9vY3NwLmRpZ2ljZXJ0LmNvbTBYBggr
    # BgEFBQcwAoZMaHR0cDovL2NhY2VydHMuZGlnaWNlcnQuY29tL0RpZ2lDZXJ0VHJ1
    # c3RlZEc0UlNBNDA5NlNIQTI1NlRpbWVTdGFtcGluZ0NBLmNydDANBgkqhkiG9w0B
    # AQsFAAOCAgEAgRrW3qCptZgXvHCNT4o8aJzYJf/LLOTN6l0ikuyMIgKpuM+AqNnn
    # 48XtJoKKcS8Y3U623mzX4WCcK+3tPUiOuGu6fF29wmE3aEl3o+uQqhLXJ4Xzjh6S
    # 2sJAOJ9dyKAuJXglnSoFeoQpmLZXeY/bJlYrsPOnvTcM2Jh2T1a5UsK2nTipgedt
    # QVyMadG5K8TGe8+c+njikxp2oml101DkRBK+IA2eqUTQ+OVJdwhaIcW0z5iVGlS6
    # ubzBaRm6zxbygzc0brBBJt3eWpdPM43UjXd9dUWhpVgmagNF3tlQtVCMr1a9TMXh
    # RsUo063nQwBw3syYnhmJA+rUkTfvTVLzyWAhxFZH7doRS4wyw4jmWOK22z75X7BC
    # 1o/jF5HRqsBV44a/rCcsQdCaM0qoNtS5cpZ+l3k4SF/Kwtw9Mt911jZnWon49qfH
    # 5U81PAC9vpwqbHkB3NpE5jreODsHXjlY9HxzMVWggBHLFAx+rrz+pOt5Zapo1iLK
    # O+uagjVXKBbLafIymrLS2Dq4sUaGa7oX/cR3bBVsrquvczroSUa31X/MtjjA2Owc
    # 9bahuEMs305MfR5ocMB3CtQC4Fxguyj/OOVSWtasFyIjTvTs0xf7UGv/B3cfcZdE
    # Qcm4RtNsMnxYL2dHZeUbc7aZ+WssBkbvQR7w8F/g29mtkIBEr4AQQYowggauMIIE
    # lqADAgECAhAHNje3JFR82Ees/ShmKl5bMA0GCSqGSIb3DQEBCwUAMGIxCzAJBgNV
    # BAYTAlVTMRUwEwYDVQQKEwxEaWdpQ2VydCBJbmMxGTAXBgNVBAsTEHd3dy5kaWdp
    # Y2VydC5jb20xITAfBgNVBAMTGERpZ2lDZXJ0IFRydXN0ZWQgUm9vdCBHNDAeFw0y
    # MjAzMjMwMDAwMDBaFw0zNzAzMjIyMzU5NTlaMGMxCzAJBgNVBAYTAlVTMRcwFQYD
    # VQQKEw5EaWdpQ2VydCwgSW5jLjE7MDkGA1UEAxMyRGlnaUNlcnQgVHJ1c3RlZCBH
    # NCBSU0E0MDk2IFNIQTI1NiBUaW1lU3RhbXBpbmcgQ0EwggIiMA0GCSqGSIb3DQEB
    # AQUAA4ICDwAwggIKAoICAQDGhjUGSbPBPXJJUVXHJQPE8pE3qZdRodbSg9GeTKJt
    # oLDMg/la9hGhRBVCX6SI82j6ffOciQt/nR+eDzMfUBMLJnOWbfhXqAJ9/UO0hNoR
    # 8XOxs+4rgISKIhjf69o9xBd/qxkrPkLcZ47qUT3w1lbU5ygt69OxtXXnHwZljZQp
    # 09nsad/ZkIdGAHvbREGJ3HxqV3rwN3mfXazL6IRktFLydkf3YYMZ3V+0VAshaG43
    # IbtArF+y3kp9zvU5EmfvDqVjbOSmxR3NNg1c1eYbqMFkdECnwHLFuk4fsbVYTXn+
    # 149zk6wsOeKlSNbwsDETqVcplicu9Yemj052FVUmcJgmf6AaRyBD40NjgHt1bicl
    # kJg6OBGz9vae5jtb7IHeIhTZgirHkr+g3uM+onP65x9abJTyUpURK1h0QCirc0PO
    # 30qhHGs4xSnzyqqWc0Jon7ZGs506o9UD4L/wojzKQtwYSH8UNM/STKvvmz3+Drhk
    # Kvp1KCRB7UK/BZxmSVJQ9FHzNklNiyDSLFc1eSuo80VgvCONWPfcYd6T/jnA+bIw
    # pUzX6ZhKWD7TA4j+s4/TXkt2ElGTyYwMO1uKIqjBJgj5FBASA31fI7tk42PgpuE+
    # 9sJ0sj8eCXbsq11GdeJgo1gJASgADoRU7s7pXcheMBK9Rp6103a50g5rmQzSM7TN
    # sQIDAQABo4IBXTCCAVkwEgYDVR0TAQH/BAgwBgEB/wIBADAdBgNVHQ4EFgQUuhbZ
    # bU2FL3MpdpovdYxqII+eyG8wHwYDVR0jBBgwFoAU7NfjgtJxXWRM3y5nP+e6mK4c
    # D08wDgYDVR0PAQH/BAQDAgGGMBMGA1UdJQQMMAoGCCsGAQUFBwMIMHcGCCsGAQUF
    # BwEBBGswaTAkBggrBgEFBQcwAYYYaHR0cDovL29jc3AuZGlnaWNlcnQuY29tMEEG
    # CCsGAQUFBzAChjVodHRwOi8vY2FjZXJ0cy5kaWdpY2VydC5jb20vRGlnaUNlcnRU
    # cnVzdGVkUm9vdEc0LmNydDBDBgNVHR8EPDA6MDigNqA0hjJodHRwOi8vY3JsMy5k
    # aWdpY2VydC5jb20vRGlnaUNlcnRUcnVzdGVkUm9vdEc0LmNybDAgBgNVHSAEGTAX
    # MAgGBmeBDAEEAjALBglghkgBhv1sBwEwDQYJKoZIhvcNAQELBQADggIBAH1ZjsCT
    # tm+YqUQiAX5m1tghQuGwGC4QTRPPMFPOvxj7x1Bd4ksp+3CKDaopafxpwc8dB+k+
    # YMjYC+VcW9dth/qEICU0MWfNthKWb8RQTGIdDAiCqBa9qVbPFXONASIlzpVpP0d3
    # +3J0FNf/q0+KLHqrhc1DX+1gtqpPkWaeLJ7giqzl/Yy8ZCaHbJK9nXzQcAp876i8
    # dU+6WvepELJd6f8oVInw1YpxdmXazPByoyP6wCeCRK6ZJxurJB4mwbfeKuv2nrF5
    # mYGjVoarCkXJ38SNoOeY+/umnXKvxMfBwWpx2cYTgAnEtp/Nh4cku0+jSbl3ZpHx
    # cpzpSwJSpzd+k1OsOx0ISQ+UzTl63f8lY5knLD0/a6fxZsNBzU+2QJshIUDQtxMk
    # zdwdeDrknq3lNHGS1yZr5Dhzq6YBT70/O3itTK37xJV77QpfMzmHQXh6OOmc4d0j
    # /R0o08f56PGYX/sr2H7yRp11LB4nLCbbbxV7HhmLNriT1ObyF5lZynDwN7+YAN8g
    # Fk8n+2BnFqFmut1VwDophrCYoCvtlUG3OtUVmDG0YgkPCr2B2RP+v6TR81fZvAT6
    # gt4y3wSJ8ADNXcL50CN/AAvkdgIm2fBldkKmKYcJRyvmfxqkhQ/8mJb2VVQrH4D6
    # wPIOK+XW+6kvRBVK5xMOHds3OBqhK/bt1nz8MIIFjTCCBHWgAwIBAgIQDpsYjvnQ
    # Lefv21DiCEAYWjANBgkqhkiG9w0BAQwFADBlMQswCQYDVQQGEwJVUzEVMBMGA1UE
    # ChMMRGlnaUNlcnQgSW5jMRkwFwYDVQQLExB3d3cuZGlnaWNlcnQuY29tMSQwIgYD
    # VQQDExtEaWdpQ2VydCBBc3N1cmVkIElEIFJvb3QgQ0EwHhcNMjIwODAxMDAwMDAw
    # WhcNMzExMTA5MjM1OTU5WjBiMQswCQYDVQQGEwJVUzEVMBMGA1UEChMMRGlnaUNl
    # cnQgSW5jMRkwFwYDVQQLExB3d3cuZGlnaWNlcnQuY29tMSEwHwYDVQQDExhEaWdp
    # Q2VydCBUcnVzdGVkIFJvb3QgRzQwggIiMA0GCSqGSIb3DQEBAQUAA4ICDwAwggIK
    # AoICAQC/5pBzaN675F1KPDAiMGkz7MKnJS7JIT3yithZwuEppz1Yq3aaza57G4QN
    # xDAf8xukOBbrVsaXbR2rsnnyyhHS5F/WBTxSD1Ifxp4VpX6+n6lXFllVcq9ok3DC
    # srp1mWpzMpTREEQQLt+C8weE5nQ7bXHiLQwb7iDVySAdYyktzuxeTsiT+CFhmzTr
    # BcZe7FsavOvJz82sNEBfsXpm7nfISKhmV1efVFiODCu3T6cw2Vbuyntd463JT17l
    # Necxy9qTXtyOj4DatpGYQJB5w3jHtrHEtWoYOAMQjdjUN6QuBX2I9YI+EJFwq1WC
    # QTLX2wRzKm6RAXwhTNS8rhsDdV14Ztk6MUSaM0C/CNdaSaTC5qmgZ92kJ7yhTzm1
    # EVgX9yRcRo9k98FpiHaYdj1ZXUJ2h4mXaXpI8OCiEhtmmnTK3kse5w5jrubU75KS
    # Op493ADkRSWJtppEGSt+wJS00mFt6zPZxd9LBADMfRyVw4/3IbKyEbe7f/LVjHAs
    # QWCqsWMYRJUadmJ+9oCw++hkpjPRiQfhvbfmQ6QYuKZ3AeEPlAwhHbJUKSWJbOUO
    # UlFHdL4mrLZBdd56rF+NP8m800ERElvlEFDrMcXKchYiCd98THU/Y+whX8QgUWtv
    # sauGi0/C1kVfnSD8oR7FwI+isX4KJpn15GkvmB0t9dmpsh3lGwIDAQABo4IBOjCC
    # ATYwDwYDVR0TAQH/BAUwAwEB/zAdBgNVHQ4EFgQU7NfjgtJxXWRM3y5nP+e6mK4c
    # D08wHwYDVR0jBBgwFoAUReuir/SSy4IxLVGLp6chnfNtyA8wDgYDVR0PAQH/BAQD
    # AgGGMHkGCCsGAQUFBwEBBG0wazAkBggrBgEFBQcwAYYYaHR0cDovL29jc3AuZGln
    # aWNlcnQuY29tMEMGCCsGAQUFBzAChjdodHRwOi8vY2FjZXJ0cy5kaWdpY2VydC5j
    # b20vRGlnaUNlcnRBc3N1cmVkSURSb290Q0EuY3J0MEUGA1UdHwQ+MDwwOqA4oDaG
    # NGh0dHA6Ly9jcmwzLmRpZ2ljZXJ0LmNvbS9EaWdpQ2VydEFzc3VyZWRJRFJvb3RD
    # QS5jcmwwEQYDVR0gBAowCDAGBgRVHSAAMA0GCSqGSIb3DQEBDAUAA4IBAQBwoL9D
    # XFXnOF+go3QbPbYW1/e/Vwe9mqyhhyzshV6pGrsi+IcaaVQi7aSId229GhT0E0p6
    # Ly23OO/0/4C5+KH38nLeJLxSA8hO0Cre+i1Wz/n096wwepqLsl7Uz9FDRJtDIeuW
    # cqFItJnLnU+nBgMTdydE1Od/6Fmo8L8vC6bp8jQ87PcDx4eo0kxAGTVGamlUsLih
    # Vo7spNU96LHc/RzY9HdaXFSMb++hUD38dglohJ9vytsgjTVgHAIDyyCwrFigDkBj
    # xZgiwbJZ9VVrzyerbHbObyMt9H5xaiNrIv8SuFQtJ37YOtnwtoeW/VvRXKwYw02f
    # c7cBqZ9Xql4o4rmUMYIDdjCCA3ICAQEwdzBjMQswCQYDVQQGEwJVUzEXMBUGA1UE
    # ChMORGlnaUNlcnQsIEluYy4xOzA5BgNVBAMTMkRpZ2lDZXJ0IFRydXN0ZWQgRzQg
    # UlNBNDA5NiBTSEEyNTYgVGltZVN0YW1waW5nIENBAhAFRK/zlJ0IOaa/2z9f5WEW
    # MA0GCWCGSAFlAwQCAQUAoIHRMBoGCSqGSIb3DQEJAzENBgsqhkiG9w0BCRABBDAc
    # BgkqhkiG9w0BCQUxDxcNMjMwOTI1MjEyNTU0WjArBgsqhkiG9w0BCRACDDEcMBow
    # GDAWBBRm8CsywsLJD4JdzqqKycZPGZzPQDAvBgkqhkiG9w0BCQQxIgQgnSDktGqF
    # OsXB+sJKVZWbVciyYoKl9hh9DqP7O16TI38wNwYLKoZIhvcNAQkQAi8xKDAmMCQw
    # IgQg0vbkbe10IszR1EBXaEE2b4KK2lWarjMWr00amtQMeCgwDQYJKoZIhvcNAQEB
    # BQAEggIAWSPdbuvbxwgjzDEtT5bV6yoW2rC3rFh92iicm0uD225LFpzNdJ5qdt7f
    # SSi0EcgC3bcRX571kYd5KJwQbyCUXbXD+IwAsvLft6pO19K/XaVYl6252yuC7Fz5
    # IjbhoTmfe+vvHfe8uo2OCeflXnZnP2L5VShGDLhfJZiRmOlQrZ+PIcH4XFULbQly
    # 8uf7zyG+5IHKQ6sfF40MPDZnmR8e7u+vvwjUULjWAcKFCd7yqo58c3BvmBSU9UcP
    # BrlyzF15qUSj2c+bPWn8dC06+8cLGnlc906qkqzpKJ1PGZUR/JB04vCh6oJseaF9
    # CW154t0X5id/zDoQcayAOf3b/p6HqgnJiZn2/r+hRU3a/iZfC9imveawitVUEnj9
    # f9t+SHDkAFIQlMh+bmsx3fG4imZhQmoaN1ohYvgTBAHEhXDW0J+0TKMFPEq9FCxJ
    # c1jrFiWD09bBEAmNJlnyxFttO0qOlCXiYVpMd/fd9lYMi/AObYDRRmdMd5XQh/Jy
    # R3LMbRQbCPeGXnxUO8d3+gZcZNZv+imFodn2OGSAOV/MNjaeImUqN5xeMSgTp01Z
    # Zo6C98i8ABB7CKa8xcXV6doQmbAQhXlgO978LXS84nNL3/kmyqa2HsSrDQeCFKIZ
    # h3WOYM3LuTPW8kXnMebMvmNa5Qsgr0X7+ggWo20Xl8ZdumPBBn8=
    # SIG # End signature block
}