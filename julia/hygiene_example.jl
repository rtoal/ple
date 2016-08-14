macro tenTimesX()
  :(y = 10; x * y)
end

(function ()
  x = 2;
  y = 3;                     # Will this y be changed?
  z = @tenTimesX()           # Changed to 10 perhaps?
  @assert y == 3 && z == 20  # No, y will not change
end)()
