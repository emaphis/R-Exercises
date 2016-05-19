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


## Subset extend and sort

# Subset data frame
# Subsetting syntax from matirces and lists
# [ from matrices
# [[ and $ from lists

people <- data.frame(name, age, child,
                     stringsAsFactors = FALSE)

#    name age child
# 1  Anne  28 FALSE
# 2  Pete  30  TRUE
# 3 Frank  21  TRUE
# 4 Julia  39 FALSE
# 5  Cath  35  TRUE

people[3,2]  # row,column
# [1] 21

people[3,"age"]
# [1] 21

people[3,]
#    name age child
# 3 Frank  21  TRUE

people[,"age"]  # get age column
# [1] 28 30 21 39 35

people[c(3,5),c("age","child")]
#   age child
# 3  21  TRUE
# 5  35  TRUE


#   age
# 1  28
# 2  30
# 3  21
# 4  39
# 5  35

people$age  # vetctor
# [1] 28 30 21 39 35

people[["age"]]
people[[2]]

people["age"]  # data frame
people[2]

people[c("name","age")] # two column data frame


## Extend Data Frame

# add column
height <- c(163,177,163,162,157)

people$height <- height
people[["height"]] <- height

weight <- c(74,63,68,55,56)
cbind(people,weight)

## Add row
tom <- data.frame(name="Tom", age=37, child=FALSE, height=183)

rbind(people, tom)
#    name age child height
# 1  Anne  28 FALSE    163
# 2  Pete  30  TRUE    177
# 3 Frank  21  TRUE    163
# 4 Julia  39 FALSE    162
# 5  Cath  35  TRUE    157
# 6   Tom  37 FALSE    183

## Sorting
sort(people$age)
# [1] 21 28 30 35 39

ranks <- order(people$age)
# [1] 3 1 2 5 4

people[ranks,]
#    name age child height
# 3 Frank  21  TRUE    163
# 1  Anne  28 FALSE    163
# 2  Pete  30  TRUE    177
# 5  Cath  35  TRUE    157
# 4 Julia  39 FALSE    162

people[order(people$age, decreasing = TRUE), ]
#    name age child height
# 4 Julia  39 FALSE    162
# 5  Cath  35  TRUE    157
# 2  Pete  30  TRUE    177
# 1  Anne  28 FALSE    163
# 3 Frank  21  TRUE    163