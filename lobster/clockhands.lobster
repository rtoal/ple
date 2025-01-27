def pad(n): return if n < 10: "0{n}" else: "{n}"
for (11) i:
    let t = (43200 * i + 21600) / 11
    var h = t / 3600
    let m = t / 60 % 60
    let s = t % 60
    if h == 0: h = 12
    print "{pad(h)}:{pad(m)}:{pad(s)}"
