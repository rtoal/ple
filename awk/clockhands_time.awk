BEGIN {
    for (i = 0; i < 11; i++) {
        print strftime("%I:%M:%S", (43200 * i + 21600) / 11, 1)
    }
}
