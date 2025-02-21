def pad(n) -> String:
    return ("0{}" if n < 10 else "{}").format(n)

def main():
    for i in range(11):	
        t = (43200 * i + 21600) // 11
        h = t // 3600
        m = t // 60 % 60
        s = t % 60
        print("{}:{}:{}".format(pad(h or 12), pad(m), pad(s)))


https://gist.github.com/modularbot/cc4f5e8c5d6e2789a5b9b0328b2174bd