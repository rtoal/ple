def main
  x = 100                              # x is a local var of main
  [1,2,3].map{|x| x * x}               # a new block-local x
  puts x                               # outer x unchanged at 100
  [1,2,3].each{|y| x = x + y}          # block can mutate outer x
  puts x                               # x mutated to 106
  [1,2,3].each{|y; x| x = (x||0) + y}  # ; makes new x in block
  puts x                               # x unchanged at 106
end

main
