param (
    [Parameter(Mandatory)]
    [String]$word
)

function Get-Permutations {
    param (
        [Parameter(Mandatory = $true)] $a,
        [Parameter(Mandatory = $true)] $n
    )
    if ($n -le 1) {
        "$($a -join '')"
    } else {
        foreach ($i in 1..($n-1)) {
            Get-Permutations ($a) ($n-1)
            $j = ($n % 2 -ne 0) ? 1 : $i
            $a[$j], $a[$n] = $a[$n], $a[$j]
        }
        Get-Permutations ($a) ($n-1)
    }
}

Get-Permutations ($word -split "") ($word.length)