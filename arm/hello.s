// It's the Hello, world program in ARM64
//
// clang -arch arm64 hello.s && ./a.out

.section __TEXT,__text,regular,pure_instructions
.globl _main
.extern _printf

.p2align 2
_main:
    stp x29, x30, [sp, #-16]!       // save frame pointer and link register
    mov x29, sp                     // save stack pointer as frame pointer

    adrp x0, message@PAGE           // address of string
    add x0, x0, message@PAGEOFF     // ... in two instructions
    bl _printf

    ldp x29, x30, [sp], #16         // restore frame pointer and link register
    mov w0, #0                      // return code 0
    ret

.section __TEXT,__cstring,cstring_literals
message:
    .asciz "Hello, world!\n"
