void main() {
    for (int i = 0; i < 11; i++) {
        int t = (int)((i + 0.5) * 43200 / 11);
        int h = t / 3600;
        int a = t % 3600;
        int m = a / 60;
        int s = a % 60;
        stdout.printf("%02d:%02d:%02d\n", h == 0 ? 12 : h, m, s);
    }
}