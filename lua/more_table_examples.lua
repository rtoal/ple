colors = {'red', 'blue', 'green'}
dog = {name = 'Lisichka', breed = 'G-SHEP', age = 13}

-- Length operator counts number of integer keys only
assert(#colors == 3)
assert(colors[1] == 'red')

-- Need our own function to count all pairs!
function number_of_pairs(t)
  local count = 0
  for _, _ in pairs(t) do count = count + 1 end
  return count
end

-- Assignment of nil removes a key pair
assert(number_of_pairs(dog) == 3)
dog.age = nil
assert(number_of_pairs(dog) == 2)
