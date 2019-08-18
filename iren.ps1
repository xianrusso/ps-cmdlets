function Iterate-Rename {
    Param (
        [Parameter(Mandatory = $true)]
        [String] $dir,
        [Parameter(Mandatory = $true)]
        [String] $extension
    )

    Process {
        $i = 0
        $list = Get-ChildItem -Path $dir -Filter *$extension 
        foreach ($file in $list) {
            $newname = [String]::Concat($i, $extension)
            Rename-Item -Path $file.FullName -NewName $newname
            $i++
        }          
    }
}

Iterate-Rename
