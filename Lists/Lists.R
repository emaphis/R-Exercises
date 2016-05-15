## Lists

## Create and name Lists

# Like a Vector but can contain multiple data types
list("Rsome times", 190, 6)
# [[1]]
# [1] "Rsome times"
# 
# [[2]]
# [1] 190
# 
# [[3]]
# [1] 6

song <- list("Rsome times", 190, 6)
is.list(song) # TRUE

names(song) <- c("title", "duration", "track")
# $title
# [1] "Rsome times"
# 
# $duration
# [1] 190
# 
# $track
# [1] 6

# other method
song <- list(title = "Rsome times",
             duration = 190,
             track = 6)
str(song)
# List of 3
#   $ title   : chr "Rsome times"
#   $ duration: num 190
#   $ track   : num 6


## List in List
similar_song <- list(title = "R you on time?",
                     duration = 230)

song <- list(title = "Rsome times",
             duration = 190,
             track = 6,
             similar = similar_song)