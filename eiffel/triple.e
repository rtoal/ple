class
    TRIPLE

create

    make

feature

    make
        do
            across 1 |..| 40 as c loop
                across 1 |..| c as b loop
                    across 1 |..| b as a loop
                        if a * a + b * b = c * c then
                            io.put_string (a.out + ", " + b.out + ", " + c.out + "%N")
                        end
                    end
                end
            end
        end

end