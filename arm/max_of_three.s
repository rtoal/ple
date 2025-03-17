        .global _max_of_three
        .text
        .p2align 2

_max_of_three:
        cmp     w0, w1            ; compare x and y
        csel    w8, w1, w0, lt    ; t = (x < y) ? y : x
        cmp     w8, w2            ; compare t and z
        csel    w0, w2, w8, lt    ; w0 = (t < z) ? z : t
        ret                       ; value in w0 is the result
