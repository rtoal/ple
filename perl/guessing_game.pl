use strict;
use warnings;

my $random_number = int(rand(9)) + 1;
my $user_guess = 0;

print("Welcome to the guessing game!\n");
print("Type \'exit\' to leave the program\n");

while ($user_guess != $random_number and lc($user_guess) ne "exit") {
    print("Please enter an integer between 1-10: \n");

    $user_guess = <STDIN>;
    chomp($user_guess);

    if (lc($user_guess) eq "exit") {
        last;
    }

    if ($user_guess == $random_number) {
        print("You guessed correctly!\n");
    }
    elsif ($user_guess < $random_number) {
        print("Too low!\n");
    }
    elsif ($user_guess > $random_number) {
        print("Too high!\n");
    }
    else {
        print("There was an error\n");
    }
}
