x = 1
do
  print(x)           -- 1          (refers to global x)
  local x = x + 2    -- 1 + 2 = 3  (also refers to global x!)
  print(x)           -- 3          (NOW x refers to the local)
end
print(x)             -- back to 1  (in global scope again)
