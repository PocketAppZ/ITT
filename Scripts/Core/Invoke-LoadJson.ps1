function LoadJson {

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
            
            #Write-Host $item.Content

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
        $sync['window'].FindName('list').Clear()
        $collectionView = [System.Windows.Data.CollectionViewSource]::GetDefaultView($sync['window'].FindName('list').Items)
        $collectionView.Filter = $filterPredicate
        [System.Windows.MessageBox]::Show("Restored successfully", "ITT", [System.Windows.MessageBoxButton]::OK, [System.Windows.MessageBoxImage]::Information)

    }
}

function SaveItemsToJson
{
  
    $items = @()

    ClearFilter

    foreach ($item in $sync['window'].FindName('list').Items)
    {

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
