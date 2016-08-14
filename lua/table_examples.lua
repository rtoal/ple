widget = {
  weight = 5.0,
  ['part number'] = 'C8122-X',
  'green',                       -- key is 1
  'round',                       -- key is 2
  [4] = 'magnetic',
  imported = false,
  'metal',                       -- key is 3
}

print('pairs iterates through ALL pairs in arbitrary order')
for key, value in pairs(widget) do
  print(key .. ' => ' .. tostring(value))
end

print('ipairs iterates integer-keyed pairs from 1 in order')
for key, value in ipairs(widget) do
  print(key .. ' => ' .. tostring(value))
end
