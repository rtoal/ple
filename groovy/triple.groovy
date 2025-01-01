1.upto(40) {c ->
    1.upto(c) {b ->
        1.upto(b) {a ->
            if (a ** 2 + b ** 2 == c ** 2) {
                println "${a}, ${b}, ${c}"
            }
        }
    }
}