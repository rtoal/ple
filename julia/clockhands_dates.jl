using Dates
for i = 0:10 
    t = div(43200 * i + 21600, 11)
    println(Dates.format(Dates.unix2datetime(t),"II:MM:SS"))
end