import string
for i: 0..10
    t = (43200 * i + 21600) / 11
    h = t / 3600 m = t / 60 % 60 s = t % 60
    print(string.format("%02d:%02d:%02d", h ? h : 12, m, s))
end