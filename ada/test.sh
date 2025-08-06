#!/usr/bin/env bash
alr build && \
bin/antiparallel_clock_hands && \
bin/min && \
bin/parallel_summer && \
bin/ses && \
bin/sieve && \
bin/summer && \
bin/task_demo && \
bin/trinary && \
bin/triple | diff ../test/triple_expected -

if [ $? -ne 0 ]; then
    echo
    echo "*** ADA TESTS FAILED ***"
    exit 1
else
    echo
    echo "ADA TESTS PASSED"
fi
