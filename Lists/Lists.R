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

## Subset and extended lists
# [ versus [[

song[1]
# $title
# [1] "Rsome times"

song[[1]]
# [1] "Rsome times"

song[c(1,3)]
# List of 2
#  $ title: chr "Rsome times"
#  $ track: num 6

# the first element of the routh element
song[[4]][[1]]
# [1] "R you on time?"

song[[c(4,1)]]

## Subset fy names:

song[["duration"]]
# [1] 190

song["duration"]
# List of 1
#  $ duration: num 190

song[c("duration", "similar")]
# List of 2
#  $ duration: num 190
#  $ similar :List of 2
#   ..$ title   : chr "R you on time?"
#   ..$ duration: num 230

## Subset by logicals
song[c(FALSE, TRUE, TRUE, FALSE)]
# List of 2
#  $ duration: num 190
#  $ track   : num 6

## '$' and extending

song$duration
# [1] 190

friends <- c("Kurt", "Florence", "Patti", "Dave")
song$sent <- friends

# List of 5
#  $ title   : chr "Rsome times"
#  $ duration: num 190
#  $ track   : num 6
#  $ similar :List of 2
#   ..$ title   : chr "R you on time?"
#   ..$ duration: num 230
#  $ sent    : chr [1:4] "Kurt" "Florence" "Patti" "Dave"

# song[["sent"]] <- friends
