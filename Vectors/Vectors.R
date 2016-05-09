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
