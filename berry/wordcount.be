import string

def is_letter_or_comma(c)
    regex = ["a", "b", "c", "d", "e", "f",
             "g", "h", "i", "j", "k", "l",
             "m", "n", "o", "p", "q", "r",
             "s", "t", "u", "v", "w", "x",
             "y", "z", "'"
            ]
    for item: regex
        if c == item
            return true
        end
    end
    return false
end

def split_by_regex(s)
    current = ""
    result = []
    for i: 0..(size(s)-1)
        c = string.tolower(s[i])
        if is_letter_or_comma(c)
            current += c
        elif size(current)
            result.push(current)
            current = "" 
        end
    end
    return result
end

def sort(a)
    # Standard bubble sort.
    for i: 0..(size(a)-2)
        for i: 0..(size(a)-2)
            if a[i] > a[i+1]
                temp = a[i]
                a[i] = a[i+1]
                a[i+1] = temp
            end
        end
    end
    return a
end

args = _argv
args.remove(0)
words = split_by_regex(args.concat(" "))
counts = {}
for word: words
    if !counts.insert(word, 1)
        counts[word] += 1
    end
end
alphabetized_words = []
for word: counts.keys()
    alphabetized_words.push(word)
end
alphabetized_words = sort(alphabetized_words)
for word: alphabetized_words
    print(word, counts[word])
end