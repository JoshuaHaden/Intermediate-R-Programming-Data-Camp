###Chapter 4 The Apply Family

###Use lapply With A Built-In R Function
# The vector pioneers has already been created for you
pioneers <- c("GAUSS:1777", "BAYES:1702", "PASCAL:1623", "PEARSON:1857")

# Split names from birth year: split_math
split_math <- strsplit(pioneers, split = ":")

# Convert to lowercase strings: split_low
split_low <- lapply(split_math, tolower)

# Take a look at the structure of split_low
str(split_low)

###Use lapply With Your Own Function
# Code from previous exercise:
pioneers <- c("GAUSS:1777", "BAYES:1702", "PASCAL:1623", "PEARSON:1857")
split <- strsplit(pioneers, split = ":")
split_low <- lapply(split, tolower)

# Write function select_first()
select_first <- function(x) {
  x[1]
}

# Apply select_first() over split_low: names
names <- lapply(split_low, select_first)

# Write function select_second()
select_second <- function(x) {
  x[2]
}

###lapply And Anonymous Functions
# Definition of split_low
pioneers <- c("GAUSS:1777", "BAYES:1702", "PASCAL:1623", "PEARSON:1857")
split <- strsplit(pioneers, split = ":")
split_low <- lapply(split, tolower)

names <- lapply(split_low, function(x) { x[1] })

years <- lapply(split_low, function(x) { x[2] })

###Use lapply With Additional Arguments
# Definition of split_low
pioneers <- c("GAUSS:1777", "BAYES:1702", "PASCAL:1623", "PEARSON:1857")
split <- strsplit(pioneers, split = ":")
split_low <- lapply(split, tolower)

# Replace the select_*() functions by a single function: select_el
select_el <- function(x, index) {
  x[index]
}

# Call the select_el() function twice on split_low: names and years
names <- lapply(split_low, select_el, index = 1)
years <- lapply(split_low, select_el, index = 2)

###Apply Functions That Return NULL
lapply(split_low, function(x) {
  if (nchar(x[1]) > 5) {
    return(NULL)
  } else {
    return(x[2])
  }
})

###How To Use sapply
# temp has already been defined in Data Camp's workspace

# Use lapply() to find each day's minimum temperature
lapply(temp, min)

# Use sapply() to find each day's minimum temperature
sapply(temp, min)

# Use lapply() to find each day's maximum temperature
lapply(temp, max)

# Use sapply() to find each day's maximum temperature
sapply(temp, max)

###sapply With Your Own Function
# temp is already defined in the workspace

# Define a function calculates the average of the min and max of a vector: extremes_avg
extremes_avg <- function(x) {
  (min(x) + max(x))/2
}

# Apply extremes_avg() over temp using sapply()
sapply(temp, extremes_avg)

# Apply extremes_avg() over temp using lapply()
lapply(temp, extremes_avg)

###sapply With Function Returning Vector
# temp is already available in the workspace

# Create a function that returns min and max of a vector: extremes
extremes <- function(x) {
  c(min = min(x), max = max(x))
}

# Apply extremes() over temp with sapply()
sapply(temp, extremes)

# Apply extremes() over temp with lapply()
lapply(temp, extremes)

###sapply Can't Simplify, Now What?
# temp is already prepared for you in the workspace

# Create a function that returns all values below zero: below_zero
below_zero <- function(x) {
  return(x[x < 0])
}

# Apply below_zero over temp using sapply(): freezing_s
freezing_s <- sapply(temp, below_zero)

# Apply below_zero over temp using lapply(): freezing_l
freezing_l <- lapply(temp, below_zero)

# Compare freezing_s to freezing_l using identical()
identical(freezing_s, freezing_l)

###sapply With Functions That Return NULL
# temp is already available in the workspace

# Write a function that 'cat()s' out the average temperatures: print_info
print_info <- function(x) {
  cat("The average temperature is", mean(x), "\n")
}

# Apply print_info() over temp using lapply()
sapply(temp, print_info)

# Apply print_info() over temp using sapply()
lapply(temp, print_info)

###Reverse Engineering sapply
sapply(list(runif (10), runif (10)), 
       function(x) c(min = min(x), mean = mean(x), max = max(x)))

###Use vapply
# temp is already available in the workspace

# Code the basics() function
basics <- function(x) {
  c(min = min(x), mean = mean(x), max = max(x))
}

# Apply basics() over temp using vapply()
vapply(temp, basics, numeric(3))

###Use vapply (2)
# temp is already available in the workspace

# Definition of the basics() function
basics <- function(x) {
  c(min = min(x), mean = mean(x), median = median(x), max = max(x))
}

# Fix the error:
vapply(temp, basics, numeric(4))

###From sapply To vapply
# temp is already defined in the workspace

# Convert to vapply() expression
vapply(temp, max, numeric(1))

# Convert to vapply() expression
vapply(temp, function(x, y) { mean(x) > y }, logical(1), y = 5)

# Definition of get_info (don't change)
get_info <- function(x, y) { 
  if (mean(x) > y) {
    return("Not too cold!")
  } else {
    return("Pretty cold!")
  }
}

# Convert to vapply() expression
vapply(temp, get_info, character(1), y = 5)

