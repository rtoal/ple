foreach ($i in 0..10) {
    $t = [int][Math]::Floor(($i + 0.5) * 43200 / 11)
    $h = [int][Math]::Floor($t / 3600)
    $m = $t % 3600
    "{0:D2}:{1:D2}:{2:D2}" -f (($h -eq 0)? 12 : $h), [int][Math]::Floor($m / 60), ($m % 60)
}