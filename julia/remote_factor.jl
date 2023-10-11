using Distributed
addprocs(3)
@assert nprocs() == 4

@everywhere import Primes
using Primes

future = remotecall(factor, 2, 21883298135690819)
@assert isa(future, Future)

factors = fetch(future)
@assert collect(factors) == [93234719=>1,234711901=>1]
