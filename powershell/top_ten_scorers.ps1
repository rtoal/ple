param (
    [Parameter(Mandatory, ValueFromRemainingArguments)]
    [string[]] $PlayerData
)

class Player {
    [string] $Name
    [string] $Team
    [float]  $Avg

    Player(
        [string] $Name,
        [string] $Team,
        [float]  $Avg
    ) {
        $this.Name = $Name
        $this.Team = $Team
        $this.Avg = $Avg
    }

    [string] ToString() {
        return "{0,-22}{1,-4}{2,8}" -f $this.Name, $this.Team, ("{0:F2}" -f $this.Avg)
    }
}

$players = @()

foreach ($line in $PlayerData) {
    $data = $line -split ","
    $name = $data[1]
    $team = $data[0]
    $games = [float]$data[2]
    $avg = [float]$data[3] / $games
    if ($games -ge 15) {
        $players += [Player]::new($name, $team, $avg)
    }
}

$players | Sort-Object Avg -Descending -Top 10 | ForEach-Object {"$_"}