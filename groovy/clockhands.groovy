0.upto(10) {i ->
    def t = (int)((i + 0.5) * 43200.0 / 11);
    def h = t.intdiv(3600);
    def m = t % 3600;
    printf("%02d:%02d:%02d\n", (h == 0 ? 12 : h), m.intdiv(60), m % 60);
}