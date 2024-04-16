function Catgoray($cat){

    <#
    .DESCRIPTION
    This function filters and populates a list of applications based on the specified category.

    .PARAMETER cat
    The category based on which the applications are filtered.

    .EXAMPLE
    Catgoray -cat "SomeCategory"

    .EXAMPLE
    ShowAll "Show all apps"
    #>

    $list.Items.Clear()

    foreach ($item in $sync.configs.applications)
    {
        if($item.catgory -eq $cat)
        {
            $checkbox = New-Object System.Windows.Controls.CheckBox
            $list.Items.Add($checkbox)
            $checkbox.Content = $item.name
            $checkbox.Foreground = "White"
        }
    }
}

function ShowAll{
    $list.Items.Clear()
    foreach ($item in $sync.configs.applications)
    {
            $checkbox = New-Object System.Windows.Controls.CheckBox
            $list.Items.Add($checkbox)
            $checkbox.Content = $item.name
            $checkbox.Foreground = "White"
    }
}
