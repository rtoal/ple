using Printf
for i = 0:10
    t = div(43200 * i + 21600, 11)
    h, t = divrem(t, 3600)
    m, s = divrem(t, 60)
    @printf("%02d:%02d:%02d\n", (h == 0 ? 12 : h), m, s)
end