#!/usr/bin/env bash
javac *.java && \
javac a/*.java && \
javac b/*.java && \
java -ea AnagramApp rats | diff ../test/rats_heap_expected - && \
java -ea AnimalChorusApp && \
java -ea AnimalsApp && \
java -ea CircleApp && \
java -ea EqualsDemo && \
java -ea EvenSquareSummer && \
java -ea IntrospectionExample && \
java -ea ListAndSetExample && \
java -ea MinMaxTester && \
java -ea OptionalDemo && \
java -ea PrimePrinter && \
java -ea RaceConditionDemo && \
java -ea ReflectionExample && \
java -ea SheepAdder && \
java -ea ThreeIsFive && \
java -ea TraditionalWordCountApp < ../test/wordcount_ascii_input | diff ../test/wordcount_ascii_expected - && \
java -ea TripleApp | diff ../test/triple_expected - && \
java -ea TwiceApp && \
java -ea TypeExperiment && \
java -ea WordCountApp < ../test/wordcount_ascii_input | diff ../test/wordcount_ascii_expected -

if [ $? -ne 0 ]; then
    echo
    echo "*** JAVA TESTS FAILED ***"
    exit 1
else
    echo
    echo "JAVA TESTS PASSED"
fi
