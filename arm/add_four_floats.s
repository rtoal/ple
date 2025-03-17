; extern void add_four_floats(float a[4], float b[4]);
; x[i] += y[i] for i in range(0..=4)

        .text
        .global _add_four_floats
        .p2align 2

_add_four_floats:
        ld1     {v0.4s}, [x0]           ; Load 4 floats from x into v0
        ld1     {v1.4s}, [x1]           ; Load 4 floats from y into v1
        fadd    v0.4s, v0.4s, v1.4s     ; Add corresponding floats
        st1     {v0.4s}, [x0]           ; Store result back to x
        ret
