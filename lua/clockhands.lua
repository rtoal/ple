for i = 0, 10 do
  local t = math.floor((i + 0.5) * 43200 / 11)
  local h = t // 3600
  local m = t % 3600
  print(string.format("%02d:%02d:%02d", (h < 1 and 12 or h), m // 60, m % 60))
end