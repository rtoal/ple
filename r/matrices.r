
matrix(1:120, nrow = 5)

# Default
matrix(1:7)

# Warning will be given for uneven matrix, but won't terminate the program.
matrix(1:10, ncol = 3)

# Matrix Access
a <- matrix(1:16, nrow = 4)
a
a[1,]
a[,2]
a[3,3]
a[1:3, 3:4]

# Matrix Setting
a[1,] <- 3:6
a[2:3, 3:4] <- matrix(-1:-4, nrow=2)
a

# Dimensions
# Note: all matrices have 2 dimensions.
dim(matrix(1,33, nrow = 3))