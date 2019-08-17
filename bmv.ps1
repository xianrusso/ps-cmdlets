param(
    [Parameter(Mandatory = $true)]
    [String] $search_folder,
    [Parameter(Mandatory = $true)]
    [String] $destination_folder,
    [Parameter(Mandatory = $true)]
    [String[]] $file_list
)

foreach ($file in $file_list) {
    Set-Location $search_folder
    $file_to_move = Get-ChildItem -Path $search_folder -Filter $file
    if ($file_to_move) {
        Move-Item $file_to_move $destination_folder -Force
    }
}
