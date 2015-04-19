function g()
  local x::String
  x = 2
end

function main()
  println("This message will appear")
  try
    g()
  catch
    println("Type error is caught at runtime!")
  end
end

main()
