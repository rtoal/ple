addprocs(3)

trials = 4000000
hits = @parallel (+) for i = 1:trials
  Int(sum(rand(2).^2) < 1)
end

approximation = hits/trials * 4
@assert(3.1 < approximation < 3.2)
