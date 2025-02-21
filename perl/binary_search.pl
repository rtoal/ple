# A hand coded binary search, to illustrate some Perl features

use strict;
use warnings;
use utf8;
use open qw(:std :utf8);

sub binary_search {
    # Arguments are passed as the list @_
    my ($element_to_find, @ordered_array) = @_;

    my $array_length = scalar @ordered_array;
    my $start_index = 0;
    my $end_index = $array_length - 1;

    while ($start_index <= $end_index) {
        # Floor division uses an explicit int() call
        my $middle_index = int(($start_index + $end_index) / 2);
        my $middle_element = $ordered_array[$middle_index];

        if ($middle_element == $element_to_find) {
            # No booleans in Perl, 1 means true
            return 1;
        }
        elsif ($middle_element < $element_to_find) {
            $start_index = $middle_index + 1;
        }
        else {
            $end_index = $middle_index - 1;
        }
    }

    # No booleans in Perl, 0 means false
    return 0;
} 

die unless binary_search(3, (1, 3, 5, 7, 9)) == 1;
die unless binary_search(5, (1, 3, 5, 7, 9)) == 1;
die unless binary_search(8, (1, 3, 5, 7, 9)) == 0;
die unless binary_search(5, ()) == 0;
die unless binary_search(5, (5)) == 1;
