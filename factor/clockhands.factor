USING: kernel math math.parser formatting io sequences ;

: time-calc ( i -- h m s )
    43200 * 21600 + 11 / 3600 /mod    ! h rem
    swap                              ! rem h
    60 /mod                           ! s m h
    rot                               ! h m s
    dup zero? [ drop 12 ] when        ! Adjust 0 hour
;

: two-digits ( n -- )
    2 0 pad-left number>string print
;

: antiparallel-clock-hands ( -- )
    11 [                              ! Loop from 0 to 10
        dup time-calc                 ! Get h m s
        [ two-digits ":" print ] tri  ! Print h:m:s
        two-digits ":" print
        two-digits
        nl
    ] each-integer
;

antiparallel-clock-hands
