import core.stdc.stdio;

int main() {
    for (int i = 0; i < 11; i++) {
        int t = cast(int)((cast(double)i + 0.5) * 43200.0 / 11.0);
        int h = t / 3600;
        int m = t % 3600;
        printf("%02d:%02d:%02d\n", (h ? h : 12), m / 60, m % 60);
    }
    return 0;
}
