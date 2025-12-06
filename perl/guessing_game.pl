use v5.40;

my $random_number = int(rand(9)) + 1;
my $user_guess = 0;

say "Welcome to the guessing game!";
say "Type 'exit' to leave the program";

while ($user_guess != $random_number and lc($user_guess) ne "exit") {
    say "Please enter an integer between 1-10:";
    $user_guess = <STDIN>;
    chomp($user_guess);

    if (lc($user_guess) eq "exit") {
        last;
    }

    if ($user_guess == $random_number) {
        say "You guessed correctly!";
    }
    elsif ($user_guess < $random_number) {
        say "Too low!";
    }
    elsif ($user_guess > $random_number) {
        say "Too high!";
    }
    else {
        say "There was an error";
    }
}
