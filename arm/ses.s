// int sum_of_even_squares(int* a, unsigned int length);

        .text
        .globl     _sum_of_even_squares
        .p2align   2

_sum_of_even_squares:               ; x0 = start of array, x1 = length
        mov     x3, x0              ; x3 = iterator, initialized to start
        add     x1, x0, x1, lsl 2   ; x1 = x0 + (x1 * sizeof(int)), end of array
        mov     w0, 0               ; w0 = total
        cmp     x3, x1              ; check if iterator already hit the end
        bhs     .done               ; if so, done
.again:
        ldr     w2, [x3], 4         ; w2 = next element, x3 += 4 (point to next)
        tst     w2, 1               ; test if it is even
        madd    w4, w2, w2, w0      ; w4 = w2 * w2 + total
        csel    w0, w4, w0, eq      ; if even, update total
        cmp     x3, x1              ; check if x3 reached end of array
        blo     .again              ; if not, continue loop
.done:
        ret                         ; return total (in w0)
