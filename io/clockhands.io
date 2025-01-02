for (i, 0, 10, 
    (if ((h := (((t := ((i + 0.5) * 43200 / 11) floor) / 3600) floor)) == 0, 12, h asString alignRight(2, "0")) .. ":") print
    (((m := t % 3600) / 60) floor asString alignRight(2, "0") .. ":".. ((m % 60) asString alignRight(2, "0"))) println 
)