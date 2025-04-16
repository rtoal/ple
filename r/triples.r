for (c in 1:40) {
    for (b in 1:c) {
        for (a in 1:b) {
            if (a ** 2 + b ** 2 == c ** 2) {
                cat(gettextf("%d, %d, %d\n", a, b, c))
            }
        }
    }
}




