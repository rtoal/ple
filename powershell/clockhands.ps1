foreach ($i in 0..10) {
    $t = [int][Math]::Floor((43200 * $i + 21600) / 11)
    $h = [int][Math]::Floor($t / 3600)
    $m = [int][Math]::Floor($t / 60) % 60
    $s = $t % 60
    "{0:D2}:{1:D2}:{2:D2}" -f (($h -eq 0)? 12 : $h), $m, $s
}