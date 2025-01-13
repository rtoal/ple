       IDENTIFICATION DIVISION.
       PROGRAM-ID. ClockHands.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 I PIC 9(2).
       01 T PIC 9(5).
       01 H PIC 9(2).
       01 M PIC 9(2).
       01 S PIC 9(2).

       PROCEDURE DIVISION.
           PERFORM VARYING I FROM 0 BY 1 UNTIL I >= 11
               COMPUTE T = (I + 0.5) * 43200 / 11
               DIVIDE T BY 3600 GIVING H REMAINDER T
               DIVIDE T BY 60 GIVING M REMAINDER S
               IF H EQUAL TO 0 SET H TO 12 END-IF
               DISPLAY H, ":", M, ":", S
           END-PERFORM.
           STOP RUN.
       END PROGRAM ClockHands.
