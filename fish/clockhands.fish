for i in (seq 0 10)
    set t (math floor \(\(43200 x $i + 21600\) / 11\))
    set h (math floor $t / 3600 )
    set m (math floor $t / 60 % 60)
    set s (math $t % 60)
    if test $h -eq 0 
        set h 12 
    end
    printf "%02d:%02d:%02d\n" $h $m $s
end