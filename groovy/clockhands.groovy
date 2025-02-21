0.upto(10) {i ->
    int t = (i + 0.5) * 43200.0 / 11
    int h = t / 3600
    int m = t % 3600
    printf "%02d:%02d:%02d\n", h == 0 ? 12 : h, m.intdiv(60), m % 60
}