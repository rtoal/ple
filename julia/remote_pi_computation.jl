addprocs(3)

@everywhere function approximate_pi(trials::Int64)
  hits = 0
  for i in 1:trials
    if sum(rand(2).^2) < 1
      hits += 1
    end
  end
  hits/trials * 4
end

references = [@spawn approximate_pi(1000000) for i=1:3]
approximation = sum([fetch(ref) for ref in references])/3
@assert 3.1 < approximation < 3.2
