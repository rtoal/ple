param (
    [Parameter(Mandatory)]
    [String]$Word
)

function Get-Permutations {
    param (
        [Parameter(Mandatory = $true)] $A,
        [Parameter(Mandatory = $true)] $N
    )
    if ($N -le 1) {
        "$($A -join '')"
    } else {
        foreach ($i in 1..($N-1)) {
            Get-Permutations ($A) ($N-1)
            $j = ($N % 2 -ne 0) ? 1 : $i
            $A[$j], $A[$N] = $A[$N], $A[$j]
        }
        Get-Permutations ($A) ($N-1)
    }
}

Get-Permutations ($Word -split "") ($Word.length)