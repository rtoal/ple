# A handcoded binary search, to illustrate some Perl features

sub binary_search {
    # Arugments are passed as the list @_
    ($element_to_find, @ordered_array) = @_;

    $array_length = scalar @ordered_array;
    $start_index = 0;
    $end_index = $array_length - 1;

    while ($start_index <= $end_index) {
        $middle_index = int(($start_index + $end_index) / 2);
        $middle_element = @ordered_array[$middle_index];

        if ($middle_element == $element_to_find) {
            return 1; # 1 means true
        }
        elsif ($middle_element < $element_to_find) {
            $start_index = $middle_index + 1;
        }
        else {
            $end_index = $middle_index - 1;
        }
    }

    return 0; # 0 means false
} 

die unless binary_search(3, (1, 3, 5, 7, 9)) == 1;
die unless binary_search(5, (1, 3, 5, 7, 9)) == 1;
die unless binary_search(8, (1, 3, 5, 7, 9)) == 0;
die unless binary_search(5, ()) == 0;
die unless binary_search(5, (5)) == 1;

