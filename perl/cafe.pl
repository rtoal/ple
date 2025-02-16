# An illustration of hashes and user input

use strict;
use warnings;
use utf8;
use open qw(:std :utf8);

my %drinks_available = (
    "mocha" => 1,
    "matcha" => 1,
    "tea" => 1
);

my %syrups_available = (
    "raspberry" => 1,
    "lavender" => 1,
    "blueberry" => 1,
    "vanilla" => 1
);

print("What drink would you like to order? We have mocha, matcha, and tea.\n");
my $customer_drink = <STDIN>;
chomp($customer_drink);
$customer_drink = lc($customer_drink);

print("Which syrup? We have raspberry, lavender, blueberry, and vanilla.\n");
my $customer_syrup = <STDIN>;
chomp($customer_syrup);
$customer_syrup = lc($customer_syrup); 

if ($drinks_available{$customer_drink} and $syrups_available{$customer_syrup}) {
    print("One order of $customer_drink with $customer_syrup!\n");
} else {
    print("Unfortunately, we do not have at least one of those items.\n");
}
