use v5.40;
use utf8;
use open qw(:std :utf8);

my %word_count;

while (my $line = <>) {
    chomp $line;

    my @words = ($line =~ /[\p{L}'’]+/g);

    foreach my $word (@words) {
        $word_count{lc $word}++;
    }
}

foreach my $word (sort keys %word_count) {
    say "$word $word_count{$word}";
}
