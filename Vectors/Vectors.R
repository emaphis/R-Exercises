## Vectors

## Arithmetic

my_apples <- 5
my_oranges <- 6
my_apples + my_oranges

earnings <- c(50,100,30)
earnings * 3
# [1] 150 300  90


earnings/10
# [1]  5 10  3
earnings - 20
# [1] 30 80 10
earnings + 100
# [1] 150 200 130
earnings^2
# [1]  2500 10000   900

expenses <- c(30, 40, 80)
earnings - expenses
# [1]  20  60 -50

bank <- earnings - expenses
sum(bank)
# [1] 30

earnings > expenses
# [1]  TRUE  TRUE FALSE

## subsetting vectors
remain <- c(spades = 11, hearts = 12, diamonds = 11, clubs = 13)

remain[1]
# spades 
# 11

remain[3]
# diamonds 
# 11

remain["spades"]
# spades 
# 11

# selecting by position
remain_black <- remain[c(1,4)]
# > remain_black
# spades  clubs 
# 11     13

# selecting by name
remain[c("spades","clubs")]
# spades  clubs 
# 11     13 

# subset all but some

remain[-1]  # all but index 1 is returned
# hearts diamonds    clubs 
# 12       11       13 
remain[-c(1,2)] # all but 1 and 2
# diamonds    clubs 
# 11       13

# subset using a logical vector
remain[c(FALSE,TRUE,FALSE,TRUE)]
# hearts  clubs 
# 12     13

selection_vector <- c(FALSE,TRUE,FALSE,TRUE)
remain[selection_vector]

# recyling
remain[c(TRUE,FALSE)]
#   spades diamonds 
#   11       11 

# selecting subsetts inclusively
remain[c(2:4)]
#  hearts diamonds    clubs 
#  12       11       13 
