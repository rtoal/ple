using Distributed
addprocs(3)
@everywhere import Primes

ref = @spawn Primes.factor(21883298135690819)
factors = fetch(ref)
@assert collect(factors) == [93234719=>1, 234711901=>1]
