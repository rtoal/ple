t = {
  weight = 5.0,
  ['part number'] = 1011882,
  'green',
  'round',
  imported = false,
  'metal',
}

for key, value in pairs(t) do
  print(key .. ' => ' .. tostring(value))
end

for key, value in ipairs(t) do
  print(key .. ' => ' .. tostring(value))
end
