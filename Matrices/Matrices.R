## Matrices

## Create and name

# Vector: 1D array of data elements
# Matix: 2D array of data elemnts
# work with rows and columns

matrix(1:6, nrow = 3)
#       [,1] [,2]
# [1,]    1    4
# [2,]    2    5
# [3,]    3    6

matrix(1:6, nrow = 2)
#       [,1] [,2] [,3]
# [1,]    1    3    5
# [2,]    2    4    6

matrix(1:6, nrow = 2)
#       [,1] [,2] [,3]
# [1,]    1    3    5
# [2,]    2    4    6


## recycling

matrix(1:3, nrow = 2, ncol = 3)
#       [,1] [,2] [,3]
# [1,]    1    3    2
# [2,]    2    1    3


## rbind(), cbind()

# Using the matrix() function, it was necessary to
# explicitly state an input vector. However, using
# rbind() and cbind(), this is no longer necessary.
# Also it is no longer necessary to state explicitly
# how the matrix has to be filled in, as was the case
# with the matrix() function. Note that it is not
# possible to combine different types of values, as
# there will be automatic coercion. In order to do this,
# you will need a list. This is something you'll learn
# about later on.

cbind(1:3, 1:3)  # column bind
#       [,1] [,2]
# [1,]    1    1
# [2,]    2    2
# [3,]    3    3

rbind (1:3, 1:3)
#       [,1] [,2] [,3]
# [1,]    1    2    3
# [2,]    1    2    3

m <- matrix(1:6, byrow = TRUE, nrow = 2)
#       [,1] [,2] [,3]
# [1,]    1    2    3
# [2,]    4    5    6

rbind(m, 7:9)  # add another row
#        [,1] [,2] [,3]
# [1,]    1    2    3
# [2,]    4    5    6
# [3,]    7    8    9

cbind(m, c(10,11))
#       [,1] [,2] [,3] [,4]
# [1,]    1    2    3   10
# [2,]    4    5    6   11


## Naming a matrix rownames() colnames()

m <- matrix(1:6, byrow = TRUE, nrow = 2)
#       [,1] [,2] [,3]
# [1,]    1    2    3
# [2,]    4    5    6

rownames(m) <- c("row1","row2")
#       [,1] [,2] [,3]
# row1    1    2    3
# row2    4    5    6

colnames(m) <- c("col1","col2","col3")
#      col1 col2 col3
# row1    1    2    3
# row2    4    5    6

m2 <- matrix(1:6, byrow = TRUE, nrow = 2,
             dimnames = list(c("row1", "row2"),
                             c("col1", "col2", "col3")))
#      col1 col2 col3
# row1    1    2    3
# row2    4    5    6

## Coercion
num <- matrix(1:8, ncol = 2)
#       [,1] [,2]
# [1,]    1    5
# [2,]    2    6
# [3,]    3    7
# [4,]    4    8

char <- matrix(LETTERS[1:6], nrow = 4, ncol = 3)
#     [,1] [,2] [,3]
# [1,] "A"  "E"  "C" 
# [2,] "B"  "F"  "D" 
# [3,] "C"  "A"  "E" 
# [4,] "D"  "B"  "F" 

cbind(num, char)  # bind them to gether
#     [,1] [,2] [,3] [,4] [,5]
# [1,] "1"  "5"  "A"  "E"  "C" 
# [2,] "2"  "6"  "B"  "F"  "D" 
# [3,] "3"  "7"  "C"  "A"  "E" 
# [4,] "4"  "8"  "D"  "B"  "F" 

