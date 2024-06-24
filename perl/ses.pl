use strict;
use warnings;
use List::Util qw(sum0);

sub sum_of_even_squares {
    sum0 map { $_**2 } grep { $_ % 2 == 0 } @_;
}

die unless sum_of_even_squares() == 0;
die unless sum_of_even_squares(1..10) == 220;
die unless sum_of_even_squares(1..100) == 171700;
die unless sum_of_even_squares(1) == 0;
die unless sum_of_even_squares(2) == 4;
die unless sum_of_even_squares(1, 2, 3, 4, 5) == 20;
print "All tests passed\n";
