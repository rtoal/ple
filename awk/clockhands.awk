BEGIN {
    for (i = 0; i < 11; i++) {
        t = int((43200 * i + 21600) / 11)
        h = int(t / 3600)
        m = int(t / 60) % 60
        s = t % 60
        printf "%02d:%02d:%02d\n", (h ? h : 12), m, s
    }
}