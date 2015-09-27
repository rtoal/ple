@assert zeros(Int64, 3) == [0, 0, 0]
@assert zeros(Int64, 2, 2) == [0 0; 0 0]
@assert ones(Int64, 3, 2) == [1 1; 1 1; 1 1]
@assert eye(Int32, 3) == [1 0 0; 0 1 0; 0 0 1]
@assert fill(5, 1, 4) == [5 5 5 5]
@assert transpose([1 3; 2 4]) == [1 2; 3 4]
@assert [1 3; 2 4]' == [1 2; 3 4]            # postfix ' transposes
@assert fill(10, 3, 1) == [10 10 10]'        # 2d column array!
@assert [2x for x in 1:5] == [2,4,6,8,10]
