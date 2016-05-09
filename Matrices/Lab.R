## Matrices

## Naming
# Star Wars box office in millions (!)
box <- c(460.998, 314.4, 290.475, 247.900, 309.306, 165.8)

# Create star_wars_matrix - three rows, two columns
star_wars_matrix0 <- matrix(box, byrow = TRUE, nrow = 3)

## Analyzing matrices

# Star Wars box office in millions (!)
new_hope <- c(460.998, 314.4)
empire_strikes <- c(290.475, 247.900)
return_jedi <- c(309.306, 165.8)

# Create star_wars_matrix
star_wars_matrix <- rbind(new_hope, empire_strikes, return_jedi)

colnames(star_wars_matrix) <- c("US", "non-US")

rownames(star_wars_matrix) <- c("A New Hope", "The Empire Stikes Back", "Return of the Jedi")

col <- c("US", "non-US")
row <- c("A New Hope", "The Empire Strikes Back", "Return of the Jedi")
star_wars_matrix <- matrix(c(new_hope, empire_strikes, return_jedi), byrow = TRUE, nrow = 3, dimnames = list(row, col))

# Calculate the worldwide box office: worldwide_vector
worldwide_vector <- rowSums(star_wars_matrix)
