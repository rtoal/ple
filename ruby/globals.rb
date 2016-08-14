$x, $y = 1, 2           # globals
x, z = 10, 20           # private variables of main object

def example()
  x, y = 100, 200       # local variables
  p $x, x, $y, y        # globals and locals do not conflict
  p z rescue p 'No z'   # unlike blocks, methods don't capture
  p local_variables     # [:x, :y]
  p global_variables    # long list, including :$x and :$y
end

example
