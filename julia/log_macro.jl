using LinearAlgebra

macro log(ex)
    :(begin
        local starttime = time()
        local result = $(esc(ex))
        println("Computed $result in $(time()-starttime)s")
    end)
end

starttime = 5000            # Just to illustrate hygiene
@log det(Matrix{Float64}(I, starttime, starttime))  # A 5000x5000 matrix
@assert starttime == 5000   # Not destroyed by the macro!
