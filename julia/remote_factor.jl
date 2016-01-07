addprocs(3)
@assert nprocs() == 4
ref = remotecall(4, factor, 21883298135690819)
@assert isa(ref, RemoteRef)
factors = fetch(ref)
@assert factors == Dict(234711901=>1,93234719=>1)
