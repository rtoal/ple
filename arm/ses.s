// int sum_of_even_squares(int* a, unsigned int length);

        .text
        .globl     _sum_of_even_squares
        .p2align   2

_sum_of_even_squares:

        cbz	       w1, Done

        mov        x8, x0
        mov        w0, #0
        mov        w9, w1
Again:
        ldr        w10, [x8], #4
        mul        w11, w10, w10
        tst        w10, #0x1
        csel       w10, w11, wzr, eq
        add        w0, w10, w0
        subs       x9, x9, #1
        b.ne       Again

        ret
Done:
        mov        w0, #0
        ret
