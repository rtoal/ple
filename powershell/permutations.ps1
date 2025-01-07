param (
    [Parameter(Mandatory, ValueFromRemainingArguments)]
    [string[]]$phrase
)

function Get-Permutations {
    param (
        [Parameter(Mandatory = $true)] $a,
        [Parameter(Mandatory = $true)] $n
    )
    if ($n -le 0) {
        "$($a -join "`t`")"
    } else {
        foreach ($i in 0..($n-1)) {
            Get-Permutations ($a) ($n-1)
            $j = ($n % 2 -eq 0) ? 0 : $i
            $a[$j], $a[$n] = $a[$n], $a[$j]
        }
        Get-Permutations ($a) ($n-1)
    }
}

Get-Permutations ($phrase) ($phrase.count-1)