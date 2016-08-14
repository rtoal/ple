for _, x in ipairs {true, false} do
  for _, y in ipairs {true, false} do
    for _, z in ipairs {true, false} do
      print(x, y, z, x and y or z)
    end
  end
end
