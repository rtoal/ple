# An illustration of hashes and user input

use v5.40;
use utf8;

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

say "What drink would you like to order? We have mocha, matcha, and tea.";
my $customer_drink = <STDIN>;
chomp($customer_drink);
$customer_drink = lc($customer_drink);

say "Which syrup? We have raspberry, lavender, blueberry, and vanilla.";
my $customer_syrup = <STDIN>;
chomp($customer_syrup);
$customer_syrup = lc($customer_syrup);

if ($drinks_available{$customer_drink} and $syrups_available{$customer_syrup}) {
    say "One order of $customer_drink with $customer_syrup!";
} else {
    say "Unfortunately, we do not have at least one of those items.";
}
