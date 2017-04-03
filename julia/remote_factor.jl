addprocs(3)
using Primes.factor
@assert nprocs() == 4
future = remotecall(factor, 4, 21883298135690819)
@assert isa(future, Future)
factors = fetch(future)
@assert factors == Dict(234711901=>1,93234719=>1)
