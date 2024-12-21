for i in range(0, 11):
    t = int((i + 0.5) * 43200.0 / 11)
    h, t = divmod(t, 3600)
    m, s = divmod(t, 60)
    print(f'{(h if h else 12):02}:{m:02}:{s:02}')