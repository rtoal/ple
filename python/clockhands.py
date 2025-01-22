for i in range(0, 11):
    t = (43200 * i + 21600) // 11
    h, t = divmod(t, 3600)
    m, s = divmod(t, 60)
    print(f'{(h or 12):02}:{m:02}:{s:02}')