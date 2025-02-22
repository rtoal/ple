import string, time
offset = time.dump(0)["hour"]
for i: 0..10
    t = time.dump((43200 * i + 21600) / 11)
    h = (t["hour"] - offset) % 12
    print(string.format("%02d:%02d:%02d", (h < 0) ? h + 12 : (h) ? h: 12, t["min"], t["sec"]))
end