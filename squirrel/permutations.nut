function join(a, separator = "")
{
    return a.reduce(@(str1, str2) str1 + separator + str2);
}

function printPermutations(a, n)
{
    if (n == 0)
    {
        print(join(a, "\t") + "\n")
    }
    else
    {
        for (local i = 0 ; i < n ; i++)
        {
            printPermutations(a, n-1)
            local j = n % 2 == 0 ? 0 : i
            local temp = a[j]
            a[j] = a[n]
            a[n] = temp
        }
        printPermutations(a, n-1)
    }
}

// Check stdin if it's empty.
if (stdin.len() == 2)
{
    throw "At least one argument is needed."
}

// Builds the input from stdin.
local input = ""
foreach (byte in stdin.readblob(stdin.len()-2))
{
    input += byte.tochar()
}

local phrase = split(input, " ")
printPermutations(phrase, phrase.len()-1)