foreach ($i in 0..10) {
    Get-Date -UnixTimeSeconds ([int][Math]::Floor((43200 * $i + 21600) / 11)) -AsUTC -Format "hh:mm:ss"
}