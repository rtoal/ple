use strict;
use warnings;

sub twice {
    my ($f, $x) = @_;
    return $f->($f->($x));
}

sub square { $_[0] * $_[0]; }
sub addFive { $_[0] + 5; }

die unless twice(\&square, 3) == 81;
die unless twice(\&addFive, 8) == 18;
