use strict;
use warnings;

sub twice {
    my ($f, $x) = @_;
    return $f->($f->($x));
}

sub square { $_[0] * $_[0]; }
sub addSix { $_[0] + 6; }

die unless twice(\&square, 5) == 625;
die unless twice(\&addSix, 8) == 20;
