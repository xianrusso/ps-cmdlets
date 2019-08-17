param (
    [Parameter(Mandatory = $true)]
    [String] $dir
)

$len = (Get-ChildItem $dir | measure).Count

Write-Host "$len files in $dir"
