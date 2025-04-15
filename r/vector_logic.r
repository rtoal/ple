a <- c(TRUE, TRUE, TRUE)
b <- c(FALSE, FALSE, TRUE)
c <- c(FALSE, FALSE, FALSE)
d <- c(TRUE, FALSE, TRUE)

a & b   # FALSE FALSE TRUE
b | d   # TRUE FALSE TRUE

any(a)  # TRUE
any(b)  # TRUE
any(c)  # FALSE

all(a)  # TRUE
all(b)  # FALSE
all(c)  # FALSE

e <- c(NA, NA, NA)
f <- c(NA, FALSE, TRUE)
g <- c(NA, NA, TRUE)
h <- c(NA, FALSE, NA)

any(e)  # NA
all(e)  # NA
any(f)  # TRUE
all(f)  # FALSE
any(g)  # TRUE
all(g)  # NA
any(h)  # NA
all(h)  # FALSE

i <- 1:10
h <- c(TRUE, TRUE, TRUE, FALSE, TRUE, FALSE, FALSE, FALSE, FALSE, TRUE)
j <- c(TRUE, FALSE, NA, TRUE, FALSE, NA, TRUE, FALSE, NA, TRUE)
i[h]    # 1 2 3 5 10
i[j]    # 1 NA 4 NA 7 NA 10

k <- 1
k[TRUE]     # 1
k[FALSE]    # numeric(0)
k[NA]       # NA

l <- 1:5
l[TRUE]     # 1
l[FALSE]    # integer(0)
l[NA]       # NA NA NA NA NA

m <- 1:10
m[c(TRUE, FALSE, TRUE)]     # 1 3 4 6 7 9 10
m[c(NA, TRUE, FALSE)]       # NA 2 NA 5 NA 8 NA

n <- 1:26
n[c("Hello, ", TRUE)]       # NA NA
n[c(TRUE, FALSE, "hi")]     # NA NA NA
