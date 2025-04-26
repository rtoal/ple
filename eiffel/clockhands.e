class
    CLOCKHANDS

create
    make

feature

    make
        local
            t: INTEGER
            h: INTEGER
            m: INTEGER
            s: INTEGER
        do
            across 0 |..| 10 as i loop
                t := (43200 * i + 21600) // 11
                h := t // 3600
                m := t // 60 \\ 60
                s := t \\ 60
                if h = 0 then
                    h := 12
                end
                print (pad (h) + ":" + pad (m) + ":" + pad (s) + "%N")
            end
        end

feature

    pad (n: INTEGER): STRING
        do
            if n < 10 then
                Result := "0" + n.out
            else 
                Result := n.out
            end
        end  
end
