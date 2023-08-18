# This script uses binary search to find a target number in an ordered array

sub BinarySearch {
    ($element_to_find, @ordered_array) = @_; # Parameters that will be defined outside the function

    $array_length = scalar @ordered_array;
    $start_index = 0;
    $end_index = $array_length - 1;

    while($start_index <= $end_index) {
        $middle_index = int(($start_index + $end_index) / 2);
        $middle_element = @ordered_array[$middle_index];

        if ($middle_element == $element_to_find) {
            return 1; # Return 1 for true  
        }
        elsif ($middle_element < $element_to_find) {
            $start_index = $middle_index + 1;
        }
        else {
            $end_index = $middle_index - 1;
        }
    }

    return 0; # Return 0 for false
} 

@ordered_array = (1, 3, 5, 7);
$element_to_find = 5;

$result = BinarySearch($element_to_find, @ordered_array); # Calling the function with parameters

if ($result) {
    print "Element found!\n";
} else {
    print "Element not found.\n";
}


