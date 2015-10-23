macro unless(condition, body)
  :(if !$condition
    $(esc(body))
  end)
end

x, y = 0, 1
@unless (x == 5) begin   # should execute
  y = 3
end
@unless (x == 0) begin   # should not execute
  y = 5
end

@assert y == 3
