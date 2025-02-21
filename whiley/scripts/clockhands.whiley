import std::io
import string from std::ascii

function build_clock(int h, int m, int s) -> string:
    return ['0' + (h / 10), '0' + (h % 10), ':',
            '0' + (m / 10), '0' + (m % 10), ':',
            '0' + (s / 10), '0' + (s % 10)]

public export method main():
    int i = 0
    while i < 11:
        int t = ((43200 * i) + 21600) / 11
        int h = t / 3600
        int m = (t / 60) % 60
        int s = t % 60
        if h == 0:
            h = 12
        io::println(build_clock(h, m, s))
        i = i + 1
