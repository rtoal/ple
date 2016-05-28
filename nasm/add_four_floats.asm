; void add_four_floats(float x[4], float y[4])
; x[i] += y[i] for i in range(0..4)

        global   _add_four_floats
        section  .text

_add_four_floats:
        movdqa   xmm0, [rdi]    ; all four values of x
        movdqa   xmm1, [rsi]    ; all four values of y
        addps    xmm0, xmm1     ; do all four sums in one shot
        movdqa   [rdi], xmm0
        ret
