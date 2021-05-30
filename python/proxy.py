class C:
    def __init__(self, x):
        self.x = x

    def m1(self): return f"calling m1 from C, x = {self.x}"
    def m2(self): return f"calling m2 from C, x = {self.x}"

class Proxy(object):
    def __init__(self, prototype):
        self.prototype = prototype

    def m2(self):
        self.x = 10
        return f"calling m2 from Proxy x = {self.x}"

    def __getattr__(self, name):
        return getattr(self.prototype, name)

c1 = C(5)
c2 = Proxy(c1)

print(f"Proxied call: {c2.m1()}")
print(f"Overridden call: {c2.m2()}")
