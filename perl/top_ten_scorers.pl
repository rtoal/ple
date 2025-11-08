use v5.40;
use utf8;
use open qw(:std :utf8);

my @players;

while (my $line = <>) {
    chomp $line;
    my ($team, $name, $games, $points) = split /,/, $line;
    if ($games >= 15) {
        push @players, [$name, $team, $points / $games];
    }
}

@players = sort { $b->[2] <=> $a->[2] } @players;

foreach my $player (@players[0..9]) {
    printf "%-22s%-4s%8.2f\n", @$player;
}
