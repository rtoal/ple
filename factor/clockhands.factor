USING: kernel math math.parser formatting io sequences prettyprint ;
IN: time-calc
IN: two-digits

: time-calc ( i -- h m s )
    43200 * 21600 + 11.0 / >integer 3600 /mod    ! rem h
    60 /mod                                      ! s m h
    rot                                          ! h m s
    dup zero? [ drop 12 ] when                   ! Adjust 0 hour
;

: two-digits ( n -- )
    number>string 2 CHAR: 0 pad-head write
;

11 [                              ! Loop from 0 to 10
    dup time-calc                 ! Get h m s
    two-digits ":" write          ! Print h:
    two-digits ":" write          ! Print m:
    two-digits nl write           ! Print s
] each-integer

clear
