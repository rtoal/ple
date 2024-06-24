# Script illustrating a concurrent list summer.

use strict;
use warnings;
use threads;

# Returns the sum of the values in its first argument which
# should be an array reference.
sub sum {
    my $array = shift;
    my $length = scalar @$array;
    my $mid = $length/2;

    # Sum up the first half of the values on a thread
    my $first_half_thread = threads->new(
        sub {
            my $partial_sum = 0;
            $partial_sum += $array->[$_] for (0 .. $length/2-1);
            return $partial_sum;
        }
    );

    # Sum up the second half in parallel with the thread
    my $sum2 = 0;
    $sum2 += $array->[$_] for ($length/2 .. $length-1);

    # Wait until the thread finishes and capture its return value.
    my $sum1 = $first_half_thread->join;

    # Now we can leave the subroutine.
    return $sum1 + $sum2;
}

# Test
die unless (sum [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]) == 55;
die unless (sum [100, 200, 300, 400]) == 1000;
die unless (sum []) == 0;
die unless (sum [(7) x 20000]) == 140000;
