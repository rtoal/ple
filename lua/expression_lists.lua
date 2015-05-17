function computeThreeThings()
  return 5, 6, 7
end

a, b = computeThreeThings()          -- a=5, b=6
c, d, e, f = computeThreeThings()    -- c=5, d=6, e=7, f=nil
g, h, i = 4, computeThreeThings()    -- g=4, h=5, i=6
