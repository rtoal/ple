@assert typeof(Set) == UnionAll
@assert typeof(Set{String}) == DataType

@assert typeof(DataType) == DataType
@assert typeof(UnionAll) == DataType

@assert typeof(Type) == UnionAll
@assert typeof(Type{UInt128}) == DataType
