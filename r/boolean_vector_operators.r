items <- c("ababa", "baba", "cabaa")

# Or ( | )
items == "a" | items == "b"

# And ( & )
nchar(items) == 5 & substring(items, 0, 1) == "a"

# Negation ( ! )
!substring(items, nchar(items) -1, nchar(items)) == "a"
# Note that the == operator takes precedence before ! operator.