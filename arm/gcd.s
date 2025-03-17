; unsigned int gcd(unsigned int x, unsigned int y);

        .global _gcd
        .text
        .p2align 2
_gcd:
        cbz     w1, .done         ; if y == 0 goto done
.again:
        udiv    w3, w0, w1        ; w3 = x / y
        mov     w2, w1            ; w2 = y
        msub    w1, w3, w1, w0    ; new_y = x - (x/y) * y
        mov     w0, w2            ; new_x = y
        cbnz    w1, .again        ; if new_y != 0 goto again
.done:
        ret                       ; return x
