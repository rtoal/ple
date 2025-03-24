param (
    [Parameter(Mandatory, ValueFromRemainingArguments)]
    [string[]] $Phrase
)

function Get-Permutations {
    param (
        [Parameter(Mandatory = $true)] $A,
        [Parameter(Mandatory = $true)] $N
    )
    if ($N -le 0) {
        $($A -join "`t")
    } else {
        foreach ($i in 0..($N-1)) {
            Get-Permutations ($A) ($N-1)
            $j = ($N % 2 -eq 0) ? 0 : $i
            $A[$j], $A[$N] = $A[$N], $A[$j]
        }
        Get-Permutations ($A) ($N-1)
    }
}

Get-Permutations ($Phrase) ($Phrase.count-1)