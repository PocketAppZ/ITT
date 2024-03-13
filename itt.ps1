
#region GUI
[System.Reflection.Assembly]::LoadWithPartialName("PresentationFramework") | Out-Null
[System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms") | Out-Null

[xml]$xaml = @"
<Window
    xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
    xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
    x:Name="Window" Title="ITT" WindowStartupLocation = "CenterScreen" 
    Width = "800" Height = "600" ShowInTaskbar = "True">

		    
    <Grid>

        <Grid.RowDefinitions>
            <RowDefinition Height="25"/>
            <RowDefinition Height="*"/>
            <RowDefinition Height="60"/>
        </Grid.RowDefinitions>

        <Grid.ColumnDefinitions>
            <ColumnDefinition Width="*"/>
            <ColumnDefinition Width="155"/>
        </Grid.ColumnDefinitions>

        <Menu Grid.Row="0" Grid.Column="0" Grid.ColumnSpan="2" Background="{x:Null}">
            <MenuItem x:Name="aboutBtn" Header="About">

            </MenuItem>
        </Menu>


        <TabControl TabStripPlacement="Left" Margin="0, 0, 0, 10" Grid.Row="1" BorderBrush="#FFC1C1C1">
            <TabItem Header="Apps" BorderBrush="{x:Null}" Padding="16" Background="{x:Null}">
                <TabItem.Content>
                    <ListView x:Name="list" Margin="5" BorderBrush="{x:Null}">
                        <CheckBox x:Name="selectall" Content="Select all"/>
                    </ListView>
                </TabItem.Content>
            </TabItem>

            <TabItem Header="Tweeks" Padding="16" BorderBrush="{x:Null}" Background="{x:Null}" Foreground="Black">
                <TabItem.Content>
                    <TextBlock TextWrapping="WrapWithOverflow">
                        Soon.
                    </TextBlock>
                </TabItem.Content>
            </TabItem>
        </TabControl>


        <Grid Grid.Row="2">
		<TextBlock Cursor="Pen" x:Name="quotes" Margin="10" TextWrapping="Wrap" Text="Lorem ipsum, dolor sit amet consectetur adipisicing elit. Magni commodi repellat similique velit harum. Odit ipsum aliquam laborum quisquam suscipit, dolore non blanditiis ut! Ut, quasi! Autem animi ad eaque."/>
        </Grid>


        <Grid Grid.Row="4" Grid.Column="3">
            <Button x:Name="applybtn" Content="Apply" Width="100" Height="40" BorderBrush="{x:Null}"  Background="#FF2578FF" Foreground="White"/>
        </Grid>

        <Grid Grid.Row="1" Grid.Column="1" Margin="10">
            <TextBlock x:Name="Discription" Text="VLC media player is a free and open-source, portable, cross-platform media player software and streaming media server" TextWrapping="Wrap"/>
        </Grid>


    </Grid>



</Window>
"@ 

#endregion

#region Load Xaml
function Import-Xaml {
	$manager = New-Object System.Xml.XmlNamespaceManager -ArgumentList $xaml.NameTable
	$manager.AddNamespace("x", "http://schemas.microsoft.com/winfx/2006/xaml");
	$xamlReader = New-Object System.Xml.XmlNodeReader $xaml
	[Windows.Markup.XamlReader]::Load($xamlReader)
}

$Window = Import-Xaml 
#endregion








#$url = "https://raw.githubusercontent.com/emadadel4/ITT/main/js/softwearlist.json"
#$result = Invoke-WebRequest -Uri $url
#$json = $result.Content | ConvertFrom-Json


#region Controls
$selectall = $Window.FindName("selectall")
$list = $Window.FindName("list")
$quotes = $Window.FindName("quotes")
$Discription = $Window.FindName("Discription")
$applyBtn = $Window.FindName('applybtn')
$aboutBtn = $Window.FindName('aboutBtn')
#endregion




function Quotes {

	$url = "https://raw.githubusercontent.com/emadadel4/ITT/main/js/quotes.json"
	$result = Invoke-WebRequest -Uri $url
	$quotes = $result.Content | ConvertFrom-Json
	$Q = $quotes.Q
	$randomQuotes = Get-Random -InputObject $Q
    return $randomQuotes   
}

function Apps {

	$url = "https://raw.githubusercontent.com/emadadel4/ITT/main/js/softwearlist.json"
	$result = Invoke-WebRequest -Uri $url
	$json = $result.Content | ConvertFrom-Json
    return $json   
}




#region Generate names from json file
foreach ($item in Apps)
{
	$checkbox = New-Object System.Windows.Controls.CheckBox
	$list.Items.Add($checkbox)
	$checkbox.Content = $item.name
}
#endregion

#region Select a program and install 
$applyBtn.add_Click({

	$Link = "https://ninite.com/"


	foreach ($item in $list.Items)
	{
		if ($item.IsChecked)
		{
			foreach ($data in $json)
			{
				if($item.Content -eq $data.name)
				{
					#Write-Host $data.url
					$Link = $Link + $data.url + "-"
				}
			}
		}
	}


	$Link = $Link + "/ninite.exe"
	$Destination = "$env:temp/Install.exe"

	if (Test-Path $Destination)
	{
		Remove-Item -Verbose -Force $Destination
	}

	if ([System.Windows.MessageBox]::Show('Do you want install selected programes', 'ITTS', [System.Windows.Forms.MessageBoxButtons]::YesNo) -eq 'Yes')
	{
		Write-Host "Ninite Link: $($Link)"
		Write-Host "Starting Installer Download"
		$Discription.Text = "Starting Installer Download"
		Invoke-WebRequest $Link -OutFile $Destination
		$Discription.Text = "Starting Installation"
		Start-Process -Filepath $Destination
	}
})

$selectall.add_Checked({

	if ($checkbox.IsChecked -eq $false)
	{
        # Code to execute when checkbox is unchecked
		foreach ($item in $list.Items)
		 {
			$item.IsChecked = $true
		 }
	}

})


$selectall.add_Unchecked({

	if ($checkbox.IsChecked -eq $true)
	{
        # Code to execute when checkbox is unchecked
		foreach ($item in $list.Items)
		 {
			$item.IsChecked = $false
		 }
	}
})



#endregion


#region Show discription of item
$list.Add_SelectionChanged({
	
	foreach($data in Apps)
	{
		if( $list.SelectedItem.Content -eq $data.name)
		{
			$Discription.Text = $data.discription
		}
	}

})
#endregion


$quotes.Text =  Quotes

$aboutBtn.add_Click({

	[System.Windows.MessageBox]::Show('Development by Emad Adel', 'ITTS', [System.Windows.Forms.MessageBoxButtons]::OK)
})


$quotes.add_MouseDown({
	$quotes.Text =  Quotes

	$quotes.Text | Set-Clipboard

})

#Finaly Show Window
$Window.ShowDialog()


