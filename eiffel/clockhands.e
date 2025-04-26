class
    CLOCKHANDS

create
    make

feature

    make
        do
            across 0 |..| 10 as i loop
                t := (43200 * i + 21600) / 11
                h := t / 3600
                m := t / 60 \\ 60
                s := t \\ 60
                io.put_string (pad (h) + ":" + pad (m) + ":" + pad (s) + "%N")
            end
        end
    
    pad (n: INTEGER)
        do
            if n < 10 then
                Result := "0" + n
            elseif boolean_expression then
                Result := n + ""
            end
        end 
end