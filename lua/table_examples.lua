producer_key = "maufacturer"

widget = {
  weight = 5.0,                  -- key is "weight"
  ["part number"] = "C8122-X",   -- key is "part number"
  "green",                       -- key is 1
  "round",                       -- key is 2
  [4] = "magnetic",              -- key is 4
  imported = false,              -- key is "imported"
  "metal",                       -- key is 3
  [producer_key] = "Acme"        -- key is "manufacturer"
}

print("pairs iterates through ALL pairs in arbitrary order")
for key, value in pairs(widget) do
  print(key .. " => " .. tostring(value))
end

print("ipairs iterates integer-keyed pairs from 1 in order")
for key, value in ipairs(widget) do
  print(key .. " => " .. tostring(value))
end
