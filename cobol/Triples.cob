       IDENTIFICATION DIVISION.
       PROGRAM-ID. Triples.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 A PIC 9(2).
       01 B PIC 9(2).
       01 C PIC 9(2).
       01 LEG1 PIC Z9.
       01 LEG2 PIC Z9.
       01 HYP PIC Z9.

       PROCEDURE DIVISION.
           PERFORM VARYING C FROM 1 BY 1 UNTIL C > 40
               PERFORM VARYING B FROM 1 BY 1 UNTIL B > C
                   PERFORM VARYING A FROM 1 BY 1 UNTIL A > B
                       IF A * A + B * B EQUAL TO C * C
                           SET LEG1 TO A
                           SET LEG2 TO B
                           SET HYP TO C
                           DISPLAY LEG1, ', ', LEG2, ', ', HYP
                       END-IF
                   END-PERFORM
               END-PERFORM
           END-PERFORM.
           STOP RUN.
       END PROGRAM Triples.
