f(x) = x + 100

macro g()         # According to Julia docs, ...
  :(f(x) + 5)     # ... f is global, x is local, right?
end               # if so, f should refer to the f above?

(function main()
  local x = 3
  f(x) = x - 100  # f in the call environment subtracts 100
  println(@g())   # So why does this do -92?
end)()
