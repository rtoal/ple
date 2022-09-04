#!/usr/bin/env bash
javac *.java && \
javac a/*.java && \
javac b/*.java && \
javac old/*.java && \
java -ea AnagramApp rats | diff ../test/rats_heap_expected - && \
java -ea AnimalChorusExample && \
java -ea AnimalsApp && \
java -ea ArithmeticSequenceExample && \
java -ea CircleApp && \
java -ea EqualsExample && \
java -ea EvenSquareSummer && \
java -ea IntrospectionExample && \
java -ea InvarianceExample && \
java -ea ListAndSetExample && \
java -ea MinMaxTester && \
java -ea OptionalDemo && \
java -ea PairExample && \
java -ea PermutationsApp I like carrots | diff ../test/carrots_expected - && \
java -ea PrimePrinter && \
java -ea RaceConditionExample && \
java -ea ReflectionExample && \
java -ea SheepAdder && \
java -ea TopTenScorersApp.java < ../test/wnba_input | diff ../test/wnba_expected - && \
java -ea TraditionalWordCountApp < ../test/wordcount_ascii_input | diff ../test/wordcount_ascii_expected - && \
java -ea TripleApp | diff ../test/triple_expected - && \
java -ea TwiceExample && \
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
