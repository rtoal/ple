class S:
    p = 1
class B(S):
    q = 8
    def __init__(self, name): self.blah = name; print('B constructor')
class A(S):
    def __init__(self, name,o): self.name = name; print('A constructor')
    q = 88
class D(B,A):
    pass

d = D('woooo')
#print(d.name)
print(d.blah)
print(D.mro())
print(d.q)
print(d.p)