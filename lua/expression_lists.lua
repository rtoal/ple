function three()
    return 5, 6, 7
end

a, b = three()            -- 5, 6
c, d, e, f = three()      -- 5, 6, 7, nil
g, h, i = 4, three()      -- 4, 5, 6
