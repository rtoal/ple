use v5.40;
use utf8;

sub palindrome($word) {
    my $reversed = reverse($word);
    return $word eq $reversed
}

die unless palindrome("racecar") == 1;
die unless palindrome("hello") == 0;
die unless palindrome("a") == 1;
die unless palindrome("ab") == 0;
die unless palindrome("aba") == 1;
die unless palindrome("キツツキ") == 1;
say "All tests passed";
