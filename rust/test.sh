#/usr/bin/env bash
rustc --out-dir $TEMPDIR/ $TESTDIR/$TESTNAME.rs &> /dev/null && $TEMPDIR/$TESTNAME $TESTARGS
EXIT_CODE=$?
rm -rf $TEMPDIR/$TESTNAME
exit $EXIT_CODE
