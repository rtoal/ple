; extern void add_four_floats(float a[4], float b[4]);
; x[i] += y[i] for i in range(0..=4)

        .text
        .global _add_four_floats
        .p2align 2

_add_four_floats:
        ld1.4s     {v0}, [x0]     ; Load 4 floats from x into v0
        ld1.4s     {v1}, [x1]     ; Load 4 floats from y into v1
        fadd.4s    v0, v0, v1     ; Add corresponding floats
        st1.4s     {v0}, [x0]     ; Store result back to x
        ret
