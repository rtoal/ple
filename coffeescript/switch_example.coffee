go = (direction) ->
  switch direction
    when 'north' then y++
    when 'south' then y--
    when 'west' then x--
    when 'east' then x++
    else throw 'Unknown direction'
