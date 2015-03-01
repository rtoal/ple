x = 1
do
  print(x)           -- 1          (global x)
  local x = x + 2    -- 1 + 2 = 3  (global x)
  print(x)           -- 3          (NOW its the local x)
end
print(x)             -- back to 1  (in global scope again)
