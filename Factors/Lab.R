## Factors

# Definition of hand_vector
hand_vector <- c("Right", "Left", "Left", "Right", "Left")

# Convert hand_vector to a factor: hand_factor
hand_factor <- factor(hand_vector)
# [1] Right Left  Left  Right Left 
# Levels: Left Right

# Display the structure of hand_factor
str(hand_factor)
#  Factor w/ 2 levels "Left","Right": 2 1 1 2 1

## Factor Levels
survey_vector <- c("R", "L", "L", "R", "R")

# Encode survey_vector as a factor with the correct names: survey_factor
survey_factor <- factor(survey_vector,
                        levels = c("R","L"),
                        labels = c("Right", "Left"))
# [1] Right Left  Left  Right Right
# Levels: Right Left

## Summarizing a vector and a factor

summary(survey_vector)
# Length     Class      Mode 
#     5      character    character 

summary(survey_factor)
# Right  Left 
#     3     2

## Nominal versus Ordinal, Unordered versus Ordered

# Definition of animal_vector and temperature_vector
animal_vector <- c("Elephant", "Giraffe", "Donkey", "Horse")
temperature_vector <- c("High", "Low", "High", "Low", "Medium")

# Convert animal_vector to a factor: animal_factor
animal_factor <- factor(animal_vector)
# [1] Elephant Giraffe  Donkey   Horse   
# Levels: Donkey Elephant Giraffe Horse

# Encode temperature_vector as a factor: temperature_factor
temperature_factor <- factor(temperature_vector,ordered = TRUE,
                             levels = c("Low","Medium","High"))

# [1] High Low  High Low  Medium
# Levels: Low < Medium < High

## Left better than right?

# Definition of survey_vector and survey_factor
survey_vector <- c("R", "L", "L", "R", "R")
survey_factor <- factor(survey_vector, levels = c("R", "L"), labels = c("Right", "Left"))

# First element from survey_factor: right
right <- survey_factor[1]

# Second element from survey_factor: left
left <- survey_factor[1]

# Right 'greater than' left?
right > left  # warning message - not meaningful


## Ordered factors

# Create speed_vector
speed_vector <- c("OK", "Slow", "Slow", "OK", "Fast")

# Convert speed_vector to ordered speed_factor
speed_factor <- factor(speed_vector, ordered = TRUE,
                       levels = c("Slow","OK","Fast"))

# Print speed_factor
speed_factor
# [1] OK   Slow Slow OK   Fast
# Levels: Slow < OK < Fast

# Summarize speed_factor
summary(speed_factor)
# Slow   OK Fast 
#    2    2    1 

# Comparing ordered factors

# Definition of speed_vector and speed_factor
speed_vector <- c("Fast", "Slow", "Slow", "Fast", "Ultra-fast")
factor_speed_vector <- factor(speed_vector, ordered = TRUE,
                              levels = c("Slow", "Fast", "Ultra-fast"))

# Compare DA2 with DA5: compare_them
compare_them <- factor_speed_vector[2] > factor_speed_vector[5]

# Print compare_them: Is DA2 faster than DA5?
compare_them


## Flying high in factor space

fly_class <- c("eco", "bus", "eco", "bus", "fir", "eco", "eco", "bus", "eco", "eco", "fir", "eco",
               "eco", "eco", "eco", "bus", "eco", "eco", "eco", "fir", "bus", "eco", "eco", "fir",
               "eco", "bus", "eco", "eco", "eco", "eco", "fir", "fir", "eco", "bus", "eco", "eco",
               "bus", "eco", "eco", "eco", "eco", "eco", "eco", "eco", "eco", "eco", "eco", "eco",
               "eco", "bus")

# Prespecification of levels and labels
lvls <- c("eco", "bus", "fir")
lbls <- c("economy", "business", "first")

# Encode fly_class as a factor, with the appropriate names and ordering
fly_class_factor <- factor(fly_class, levels = lvls, labels = lbls)
