function Assert-Equals {
    param (
        [Parameter(Mandatory = $true)] $Item1,
        [Parameter(Mandatory = $true)] $Item2
    )
    
    if ($Item1 -ne $Item2) {
        Write-Error "$Item1 and $Item2 are not equals."
    }
}

function Get-Sum-Of-Even-Squares {
    param (
        [Parameter(Mandatory = $true)] $Numbers
    )
    
    filter Even {if ($_ % 2 -eq 0) {$_ * $_}}
    $Numbers | Even | ForEach-Object {$sum=0} {$sum += $_} {$sum}
}

Assert-Equals (Get-Sum-Of-Even-Squares (@())) (0)
Assert-Equals (Get-Sum-Of-Even-Squares (,1)) (0)
Assert-Equals (Get-Sum-Of-Even-Squares (1..2)) (4)
Assert-Equals (Get-Sum-Of-Even-Squares (1..3)) (4)
Assert-Equals (Get-Sum-Of-Even-Squares (1..4)) (20)