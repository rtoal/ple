BEGIN {
    FS = "[^A-Za-z']+"
}

{
    for (i = 1; i <= NF; i++) if ($i) counts[tolower($i)]++
}

END {
    for (word in counts) print word, counts[word]
}
