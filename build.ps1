param (
    [string]$OutputScript = "itt.ps1",
    [string]$Assets = ".\Assets",
    [string]$Controls = ".\Controls",
    [string]$DatabaseDirectory = ".\Assets\Database",
    [string]$StartScript = ".\initiation\start.ps1",
    [string]$MainScript = ".\initiation\main.ps1",
    [string]$ScritsDirectory = ".\Scripts",
    [string]$windows = ".\windows",
    [string]$LoadXamlScript = ".\initiation\xaml.ps1"
)

# Initialize synchronized hashtable
$sync = [Hashtable]::Synchronized(@{})
$sync.database = @{}

# write content to output script
function WriteToScript {
    param (
        [string]$Content
    )
    $streamWriter = $null
    try {
        $streamWriter = [System.IO.StreamWriter]::new($OutputScript, $true)
        $streamWriter.WriteLine($Content)
    }
    finally {
        if ($null -ne $streamWriter) {
            $streamWriter.Dispose()
        }
    }
}


# Replace placeholder
function ReplaceTextInFile {
    param (
        [string]$FilePath,
        [string]$TextToReplace,
        [string]$ReplacementText
    )

    # Read the content of the file
    $content = Get-Content $FilePath

    # Replace the text
    $newContent = $content -replace [regex]::Escape($TextToReplace), $ReplacementText

    # Write the modified content back to the file
    $newContent | Out-File -FilePath $FilePath -Encoding utf8
}

# handle file content generation
function AddFileContentToScript {
    param (
        [string]$FilePath
    )
    $Content = Get-Content -Path $FilePath -Raw
    WriteToScript -Content $Content
}

# process files in a directory
function ProcessDirectory {
    param (
        [string]$Directory
    )
    
    Get-ChildItem $Directory -Recurse -File | ForEach-Object {
        if ($_.DirectoryName -ne $Directory) {
            AddFileContentToScript -FilePath $_.FullName
        }
    }
}

# Generate Checkboxex apps/tewaks/settings
function GenerateCheckboxes {
    param (
        [array]$Items,
        [string]$ContentField,
        [string]$TagField = "",
        [string]$IsCheckedField = "",
        [string]$ToggleField = "",
        [string]$NameField = ""

    )

    $Checkboxes = ""
    
    #$ReversedItems = $Items[$Items.Count..0]

    foreach ($Item in $Items) {        

        $CleanedItem = $Item.Description -replace '[^\w\s]', '.'
        $Cat = $Item.category -replace '[^\w\s]', ''

        # grap name of each item  
        $Content = $Item.$ContentField

        #Add Tag(Cat) in Applications.json to apps items
        $Tag = if ($TagField) { "Tag=`"$($Item.$TagField)`"" } else { "" }

        # Grap and add the Name form Settings.json to Toggle Settings items
        $Name = if ($NameField) { "Name=`"$($Item.$NameField)`"" } else { "" }

        # Add Toggle Style to Item on Settings
        $Toggle = if ($ToggleField) { "Style=`"{StaticResource ToggleSwitchStyle}`"" } else { "" }

        #Checkbox the item if is true in Applications.json
        $IsChecked = if ($IsCheckedField) { "IsChecked=`"$($Item.$IsCheckedField)`"" } else { "" }

        $Checkboxes += @"

        <StackPanel Orientation="Vertical" Width="auto" Margin="10">
            <StackPanel Orientation="Horizontal">
                <CheckBox Content="$Content" $Tag $IsChecked $Toggle $Name ToolTip="Install it again to update" FontSize="15" Foreground="{DynamicResource DefaultTextColor}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                <Label  HorizontalAlignment="Center" VerticalAlignment="Center" Margin="5,0,0,0" FontSize="13" Content="$Cat"/>
            </StackPanel>
                <TextBlock Width="555" Background="Transparent" Margin="8" FontSize="15" VerticalAlignment="Center" TextWrapping="Wrap" Text="$CleanedItem"/>
        </StackPanel>

"@
    }
    return $Checkboxes
}

# Process each JSON file in the specified directory
function Sync-JsonFiles {
    param (
        [Parameter(Mandatory = $true)]
        [string]$DatabaseDirectory,
        [Parameter(Mandatory = $true)]
        [string]$OutputScriptPath
    )

    Get-ChildItem $DatabaseDirectory | Where-Object {$_.extension -eq ".json"} | ForEach-Object {
        $json = (Get-Content $_.FullName -Raw).replace("'", "''")
        $sync.database.$($_.BaseName) = $json | ConvertFrom-Json
        Write-Output "`$sync.database.$($_.BaseName) = '$json' | ConvertFrom-Json" | Out-File $OutputScriptPath -Append -Encoding default
    }
}

# Display the number of items in json files
function CountItems {
    Write-Host  "`n` $($sync.database.Applications.Count) Apps" -ForegroundColor Yellow
    Write-Host  " $($sync.database.Tweaks.Count) Tweaks" -ForegroundColor Yellow
    Write-Host  " $($sync.database.Quotes.Q.Count) Quotes" -ForegroundColor Yellow
    Write-Host  " $($sync.database.OST.Tracks.Count) Tracks `n` " -ForegroundColor Yellow
}


# Write script header
function WriteHeader {

    WriteToScript -Content @"
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
"@
}

# Main script generation
try {

    if (Test-Path -Path $OutputScript) {
        Remove-Item -Path $OutputScript -Force
    }

    WriteHeader
    WriteToScript -Content @"
#===========================================================================
#region Begin Start
#===========================================================================
"@

    AddFileContentToScript -FilePath $StartScript
    ReplaceTextInFile -FilePath $OutputScript -TextToReplace '#{replaceme}' -ReplacementText "$(Get-Date -Format 'MM/dd/yy')"
    WriteToScript -Content @"
#===========================================================================
#endregion End Start
#===========================================================================
"@

    WriteToScript -Content @"
#===========================================================================
#region Begin Database /APPS/TWEEAKS/Quotes/OST/Settings
#===========================================================================
"@

    Sync-JsonFiles -DatabaseDirectory $DatabaseDirectory -OutputScriptPath $OutputScript

    WriteToScript -Content @"
#===========================================================================
#endregion End Database /APPS/TWEEAKS/Quotes/OST/Settings
#===========================================================================
"@

WriteToScript -Content @"
#===========================================================================
#region Begin WPF Window
#===========================================================================
"@

    # Define file paths
    $FilePaths = @{
        "Xaml"    = Join-Path -Path $windows -ChildPath "window.xaml"
        "AppXaml" = Join-Path -Path $Controls -ChildPath "taps.xaml"
        "Style"   = Join-Path -Path $Assets -ChildPath "Styles/Styles.xaml"
        "Colors"  = Join-Path -Path $Assets -ChildPath "Styles/Colors.xaml"
    }

    # Read and replace placeholders in XAML content
    try {
        # Read content from files
        $XamlContent     = (Get-Content -Path $FilePaths["Xaml"] -Raw) -replace "'", "''"
        $AppXamlContent  = Get-Content -Path $FilePaths["AppXaml"] -Raw
        $StyleContent    = Get-Content -Path $FilePaths["Style"] -Raw
        $ColorsContent   = Get-Content -Path $FilePaths["Colors"] -Raw

        # Replace placeholders with actual content
        $XamlContent = $XamlContent -replace "{{Taps}}", $AppXamlContent
        $XamlContent = $XamlContent -replace "{{Style}}", $StyleContent
        $XamlContent = $XamlContent -replace "{{Colors}}", $ColorsContent

    } catch {
        Write-Error "An error occurred while processing the XAML content: $($_.Exception.Message)"
    }
   
    $AppsCheckboxes = GenerateCheckboxes -Items $sync.database.Applications -ContentField "Name" -TagField "category" -IsCheckedField "check"
    $TweaksCheckboxes = GenerateCheckboxes -Items $sync.database.Tweaks -ContentField "Name"
    $SettingsCheckboxes = GenerateCheckboxes -Items $sync.database.Settings -ContentField "Content" -NameField "Name" -ToggleField "Style="{StaticResource ToggleSwitchStyle}""


    $XamlContent = $XamlContent -replace "{{Apps}}", $AppsCheckboxes 
    $XamlContent = $XamlContent -replace "{{Tweaks}}", $TweaksCheckboxes 
    $XamlContent = $XamlContent -replace "{{Settings}}", $SettingsCheckboxes 

    WriteToScript -Content "`$inputXML = '$XamlContent'"

    WriteToScript -Content @"
#===========================================================================
#endregion End WPF Window
#===========================================================================
"@

WriteToScript -Content @"
#===========================================================================
#region Begin WPF About Window
#===========================================================================

"@

    # Define file paths
    $FilePaths = @{
        
        "about" = Join-Path -Path $windows -ChildPath "about.xaml"
    }

    # Read and replace placeholders in XAML content
    try {
        $childXaml = (Get-Content -Path $FilePaths["about"] -Raw) -replace "'", "''"

    } catch {
        Write-Error "Error: $($_.Exception.Message)"
    }
   
    WriteToScript -Content "`$childXaml = '$childXaml'"
    WriteToScript -Content @"
#===========================================================================
#endregion End WPF About Window
#===========================================================================
"@

    WriteToScript -Content @"
#===========================================================================
#region Begin loadXmal
#===========================================================================
"@

    AddFileContentToScript -FilePath $LoadXamlScript
    WriteToScript -Content @"
#===========================================================================
#endregion End loadXmal
#===========================================================================
"@

    # Write Main section
    WriteToScript -Content @"
#===========================================================================
#region Begin Main Functions
#===========================================================================
"@
    ProcessDirectory -Directory $ScritsDirectory
    AddFileContentToScript -FilePath $MainScript
    WriteToScript -Content @"
#===========================================================================
#endregion End Main Functions
#===========================================================================
"@

Clear-Host
Write-Host " `n` Successfully build " -ForegroundColor Green
CountItems
./itt.ps1
}

catch {
    Write-Error "An error occurred: $_"
}