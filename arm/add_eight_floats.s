// extern void add_eight_floats(float a[8], float b[8]);
// a[i] += b[i] for i in 0..7

        .text
        .global _add_eight_floats
        .p2align 2

_add_eight_floats:
        ld1.4s     {v0, v1}, [x0] // Load 8 floats from a into v0, v1
        ld1.4s     {v2, v3}, [x1] // Load 8 floats from b into v2, v3
        fadd.4s    v0, v0, v2     // Add a[0..3] and b[0..3]
        fadd.4s    v1, v1, v3     // Add a[4..7] and b[4..7]
        st1.4s     {v0, v1}, [x0] // Store the 8 sums back into a
        ret
