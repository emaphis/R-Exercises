## Data frames

# Datasets
#  Observations
#  Variables

## Data Frome
# specifically for datasets
# Rows = observations
# Columns = variables
#  - can contain elements of different types
#  - elements in same column must be same type


## Create Data Frome - data.frame()

name <- c("Anne", "Pete", "Frank", "Julia", "Cath")
age <- c(28,30,21,39,35)
child <- c(FALSE,TRUE,TRUE,FALSE,TRUE)

df <- data.frame(name,age,child)
#    name age child
# 1  Anne  28 FALSE
# 2  Pete  30  TRUE
# 3 Frank  21  TRUE
# 4 Julia  39 FALSE
# 5  Cath  35  TRUE

## data frame name
names(df) <- c("Name","Age","Child")

# or
df <- data.frame(Name=name, Age=age, Child=child)
#    Name Age Child
# 1  Anne  28 FALSE
# 2  Pete  30  TRUE
# 3 Frank  21  TRUE
# 4 Julia  39 FALSE
# 5  Cath  35  TRUE

# Data Frame Structure
str(df)
# 'data.frame':	5 obs. of  3 variables:
#  $ Name : Factor w/ 5 levels "Anne","Cath",..: 1 5 3 4 2
#  $ Age  : num  28 30 21 39 35
#  $ Child: logi  FALSE TRUE TRUE FALSE TRUE

