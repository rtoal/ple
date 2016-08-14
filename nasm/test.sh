#!/usr/bin/env bash
/usr/local/bin/nasm -f macho64 maxofthree.asm && gcc -std=c11 callmaxofthree.c maxofthree.o && ./a.out && \
/usr/local/bin/nasm -f macho64 add_four_floats.asm && gcc -std=c11 test_add_four_floats.c add_four_floats.o && ./a.out

if [ $? -ne 0 ]; then
    echo
    echo "*** NASM TESTS FAILED ***"
    exit 1
else
    echo
    echo "NASM TESTS PASSED"
fi
