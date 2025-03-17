; extern void add_eight_floats(float a[8], float b[8]);
; x[i] += y[i] for i in range(0..=8)

        .text
        .global _add_eight_floats
        .p2align 2

_add_eight_floats:
        ld1.4s     {v0, v1}, [x0] ; Load 4 floats from x into v0
        ld1.4s     {v2, v3}, [x1] ; Load 4 floats from y into v1
        fadd.4s    v0, v0, v2     ; Add corresponding floats
        fadd.4s    v1, v1, v3     ; Add corresponding floats
        st1.4s     {v0, v1}, [x0] ; Store result back to x
        ret
