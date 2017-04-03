a = [11 12 13 14; 21 22 23 24; 31 32 33 34]

@assert a[2,3] == 23                     # element in row 2, col 3
@assert a[2,2:4] == [22,23,24]           # row 2, cols 2 through 4
@assert a[1:3,3] == [13; 23; 33]         # rows 1 through 3 of col 3
@assert a[3,1:end] == [31,32,33,34]      # row 3, all elements
@assert a[3,:] == [31,32,33,34]          # row 3, all elements
@assert a[2,[1;3;4]] == [21,23,24]       # row 2, cols 1, 3, 4
@assert a[[1;3],[1;4]] == [11 14; 31 34] # very disjointed subarray
@assert a[7] == 13                       # enumerates by columns
