#!/usr/bin/env bash
osabie clockhands.abe < /dev/null | diff ../test/clockhands_expected - && \
osabie first_twelve_fibs.abe < /dev/null && \
osabie five_hellos.abe < /dev/null && \
osabie hello.abe < /dev/null && \
osabie hypot.abe < <(echo -e "3\n4\n\n") | diff <(echo -e "5.0") -

if [ $? -ne 0 ]; then
    echo
    echo "*** 05AB1E TESTS FAILED ***"
    exit 1
else
    echo
    echo "05AB1E TESTS PASSED"
fi
