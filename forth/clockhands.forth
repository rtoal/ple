: time-calc ( i -- h m s )
  43200 * 21600 + 11 / 3600 /mod swap  ( -- h t )
  60 /mod rot                          ( -- s m h )
  dup 0= if drop 12 then
;

: two-digits ( n -- )
    0 <# # # #> type
;

: antiparallel-clock-hands ( -- )
    11 0 do
        i time-calc
        two-digits ." :" 
        two-digits ." :" 
        two-digits cr
    loop
;

antiparallel-clock-hands
