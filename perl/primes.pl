# This script runs a thread for all values in 2..n where n is the first
# command line argument.  Each thread writes its value to STDOUT if it is
# prime.

use strict;
use warnings;
use threads;
use threads::shared;

my $output_lock: shared;

sub print_primes {
    my $n = shift;
    my @checkers;
    for my $i (2 .. $n) {
        $checkers[$i-2] = threads->new(
            sub {
                for my $divisor (2 .. $i) {
                    if ($divisor == $i) {
                        lock $output_lock;
                        print $divisor . " ";
                    } elsif ($i % $divisor == 0) {
                        last;
                    }
                }
            }
        );
    }
    for my $t (@checkers) {
        $t->join;
    }
}

die "Supply exactly one argument\n" unless @ARGV == 1;
die "Supply a positive integer\n" unless $ARGV[0] =~ /^\d+$/;
print_primes $ARGV[0];
