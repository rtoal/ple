addprocs(3)
ref = @spawn factor(3690764180561429)
factors = fetch(ref)
@assert Set(keys(factors)) == Set([2477,53,4637,163861,37])
