// 12 hour Antiparallel clockhands in ARM64
// clang -arch arm64 clockhands.s && ./a.out

.section __TEXT,__text,regular,pure_instructions
.globl _main
.extern _printf

.p2align 2
_main:
    stp x29, x30, [sp, #-16]!       // save frame pointer and link register
    mov x29, sp                     // save stack pointer as frame pointer
    mov x4, #0                      // i = 0

.top:
    cmp x4, #11                     // if i >= 11
    b.ge .bottom                    // ...exit the loop

    // t = (43200 * i + 21600) / 11
    mov x5, #43200
    mul x0, x5, x4                  // x0 = 43200*i
    mov x5, #21600
    add x0, x0, x5                  // x0 = 43200*i+21600
    mov x5, #11
    udiv x0, x0, x5                 // x0 = t = (43200*i+21600)/11

    // h, t = t divmod 3600
    mov x5, #3600
    udiv x1, x0, x5                 // x1 = h = t / 3600
    msub x0, x1, x5, x0             // x0 = t = t - (h * 3600)

    // m, s = t divmod 60
    mov x5, #60
    udiv x2, x0, x5                 // x2 = m = t / 60
    msub x3, x2, x5, x0             // x3 = s = t - (m * 60)

    mov x5, #12
    cmp x1, #0                      // Check if h >= 12
    csel x1, x5, x1, eq             // If h == 0, set h to 12

    adrp x0, hms_format@PAGE
    add  x0, x0, hms_format@PAGEOFF // x0 = format string
    stp x3, x4, [sp, #-16]!         // push printf args AND save x4
    stp x1, x2, [sp, #-16]!
    bl _printf
    ldp x1, x2, [sp], #16           // restore x1...x4
    ldp x3, x4, [sp], #16

    add x4, x4, #1                  // i++
    b .top

.bottom:
    ldp x29, x30, [sp], #16         // restore frame pointer and link register
    mov w0, #0                      // return code 0
    ret

.section __TEXT,__cstring,cstring_literals
hms_format:
    .asciz "%02d:%02d:%02d\n"
