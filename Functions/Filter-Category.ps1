#region Function to filter a list based on a search input
function Search{
    
    # if you on Tweeaks tab return to apps tab
    $sync['window'].FindName('apps').IsSelected = $true

    # Retrieves the search input, converts it to lowercase, and filters the list based on the input
    $filter = $sync.searchInput.Text.ToLower() -replace '[^\p{L}\p{N}]', ''
    $collectionView = [System.Windows.Data.CollectionViewSource]::GetDefaultView($sync['window'].FindName('list').Items)
    $collectionView.Filter = {
        param($item)
        $item -like "*$filter*"
    }

}

function FilterByCat {
    param (
        $Cat
    )

    # if user on Other tab return to app list
    $sync['window'].FindName('apps').IsSelected = $true

    $collectionView = [System.Windows.Data.CollectionViewSource]::GetDefaultView($sync['window'].FindName('list').Items)

    # Define the filter predicate
    $filterPredicate = {
        param($item)

        # Define the tag you want to filter by
        $tagToFilter =  $Cat
        # Check if the item has the tag
        $itemTag = $item.Tag
        return $itemTag -eq $tagToFilter
    }


    if($Cat -eq "All")
    {

        $sync['window'].FindName('list').Clear()
        $collectionView = [System.Windows.Data.CollectionViewSource]::GetDefaultView($sync['window'].FindName('list').Items)
        $collectionView.Filter = $null
        
    }else{

        $sync['window'].FindName('list').Clear()
        # Apply the filter to the collection view
        $collectionView.Filter = $filterPredicate

    }
}

function ClearFilter {

    $sync['window'].FindName('list').Clear()
    $collectionView = [System.Windows.Data.CollectionViewSource]::GetDefaultView($sync['window'].FindName('list').Items)
    $collectionView.Filter = $null
}
#endregion
