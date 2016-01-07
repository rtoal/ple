macro unless(condition, body)
  :(if !$condition
    $(esc(body))
  end)
end

x, y = 0, 1
@unless (x == 5) begin
  y = 3                  # should execute
end
@unless (x == 0) begin
  y = 5                  # should not execute
end

@assert y == 3
