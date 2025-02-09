local input = ""
foreach (byte in stdin.readblob(stdin.len()-2))
{
    input += byte.tochar()
}
input = input.tolower()

local regex = regexp("[a-z\']+")
local counts = {}
local index = 0
for (;;)
{
    local res = regex.search(input, index)
    if (res == null)
        break
    local word = input.slice(res.begin, res.end)
    if (word in counts)
        counts[word]++
    else
        counts[word] <- 1
    index = res.end
}

foreach (word in counts.keys().sort(@(a, b) a <=> b))
{
    printf("%s %d\n", word, counts[word])
}