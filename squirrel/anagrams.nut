function join(a, separator = "")
{
    return a.reduce(@(str1, str2) str1 + separator + str2);
}

function printAnagrams(a, n)
{
    if (n == 0)
    {
        print(join(a) + "\n")
    }
    else
    {
        for (local i = 0 ; i < n ; i++)
        {
            printAnagrams(a, n-1)
            local j = n % 2 == 0 ? 0 : i
            local temp = a[j]
            a[j] = a[n]
            a[n] = temp
        }
        printAnagrams(a, n-1)
    }
}

// Builds the input from stdin.
local word = []
foreach (byte in stdin.readblob(stdin.len()-2))
{
    word.push(byte.tochar())
    if (byte == 32) {
        throw "Exactly one argument is needed."
    }
}
printAnagrams(word, word.len()-1)