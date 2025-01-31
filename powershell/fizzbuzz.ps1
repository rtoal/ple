switch(1..20)
{
    {$_ % 15 -eq 0} {"FizzBuzz"}
    {$_ % 3 -eq 0} {"Fizz"}
    {$_ % 5 -eq 0} {"Buzz"}
    default {$_}
}