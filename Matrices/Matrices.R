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


###################################3
## Matrix subsetting

m <- matrix(sample(1:15,12), nrow = 3)
#      [,1] [,2] [,3] [,4]
# [1,]   11    3    7    5
# [2,]   12   10   13    4
# [3,]   15    8    6    9

m[3,1]  # row 3, column 1
# [1] 15

m[3,]  # row 3.
# [1] 15  8  6  9

m[,3]  # 3rd column
# [1]  7 13  6

m[,3]  # 3rd column
# [1]  7 13  6

m[4] # columns the rows
# [1] 3

m[2, c(2,3)]  # row 2, cols 2,3 -> 10,13
# [1] 10 13

m[c(1,2), c(2,3)] # row 1,2, col 2,3 -> 3,10 / 7,13
# [,1] [,2]
# [1,]    3    7
# [2,]   10   13

# subset by name,
rownames(m) <- c("r1","r2","r3") # assign names
colnames(m) <- c("a","b","c","d")
#     a  b  c d
# r1 11  3  7 5
# r2 12 10 13 4
# r3 15  8  6 9

m[2,3]  # r2 c3 -> 10
# [1] 13

m["r2","c"]
# [1] 13

m[2,"c"] # => 13

# subset with a logical vector

m[c(FALSE, FALSE, TRUE),   # cols then rows
  c(FALSE, FALSE, TRUE, TRUE)] # 6 9

########################
## Matrix Math

## colSums(), rowSums()

## element-wise computation

the_fellowship <- c(316,556)
two_towers  <- c(343,584)
return_king <- c(378,742)

lotr_matrix <- rbind(the_fellowship,two_towers,return_king)
colnames(lotr_matrix) <- c("US", "non-US")
rownames(lotr_matrix) <- c("Fellowship", "Two Towers","Return King")

# convert to Euros
lotr_matrix / 1.12
#                 US   non-US
# Fellowship  282.1429 496.4286
# Two Towers  306.2500 521.4286
# Return King 337.5000 662.5000

# theater_cut
theater_cut <- matrix(c(50,50,80,80,100,100),
                      byrow = TRUE, nrow = 3)

lotr_matrix - theater_cut
#              US non-US
# Fellowship  266    506
# Two Towers  263    504
# Return King 278    642

# recycling
lotr_matrix - c(50,80,100)
#              US non-US
# Fellowship  266    506
# Two Towers  263    504
# Return King 278    642

# Euro conversion rates at time of realease
rates <- matrix(c(1.11,0.99,0.82), nrow = 3, ncol = 2)

lotr_matrix * rates
#                 US non-US
# Fellowship  350.76 617.16
# Two Towers  339.57 578.16
# Return King 309.96 608.44
