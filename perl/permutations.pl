use strict;
use warnings;

sub print_permutations {
    my ($a, $n) = @_;
    if ($n <= 0) {
        print join("\t", @$a), "\n";
    } else {
        for my $i (0 .. $n - 1) {
            print_permutations($a, $n - 1);
            my $j = $n % 2 == 0 ? 0 : $i;
            @$a[$j, $n] = @$a[$n, $j];
        }
        print_permutations($a, $n - 1);
    }
}

print_permutations(\@ARGV, scalar(@ARGV) - 1);
