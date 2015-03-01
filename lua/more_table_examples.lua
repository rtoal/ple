colors = {'red', 'blue', 'green'}
dog = {name = 'Lisichka', breed = 'G-SHEP', age = 13}

assert(#colors == 3)
assert(colors[1] == 'red')
for k,v in pairs(table.pack(dog)) do print(k,v) end
assert(#table.pack(dog) == 3)
dog.age = nil
assert(#table.pack(dog) == 2)