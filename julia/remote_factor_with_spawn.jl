addprocs(3)
ref = @spawn factor(21883298135690819)
factors = fetch(ref)
@assert factors == Dict(234711901=>1,93234719=>1)
