###Chapter 3 Functions

###Function Documentation
# Consult the documentation on the mean() function
help(mean)

# Inspect the arguments of the mean() function
args(mean)

###Use A Function
# The linkedin and facebook vectors have already been created for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
facebook <- c(17, 7, 5, 16, 8, 13, 14)

# Calculate average number of views
avg_li = mean(linkedin)
avg_fb = mean(facebook)

# Inspect avg_li and avg_fb
avg_li
avg_fb

# Calculate the mean of linkedin minus facebook
mean(linkedin - facebook)

###Use A Function (2)
# The linkedin and facebook vectors have already been created for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
facebook <- c(17, 7, 5, 16, 8, 13, 14)

# Calculate the mean of the sum
avg_sum = mean(linkedin + facebook)

# Calculate the trimmed mean of the sum
avg_sum_trimmed = mean(linkedin + facebook, trim = 0.2)

# Inspect both new variables
avg_sum
avg_sum_trimmed

###Use A Function (3)
# The linkedin and facebook vectors have already been created for you
linkedin <- c(16, 9, 13, 5, NA, 17, 14)
facebook <- c(17, NA, 5, 16, 8, 13, 14)

# Basic average of linkedin
mean(linkedin)

# Advanced average of linkedin
mean(linkedin, na.rm = TRUE)

###Functions Inside Functions
# The linkedin and facebook vectors have already been created for you
linkedin <- c(16, 9, 13, 5, NA, 17, 14)
facebook <- c(17, NA, 5, 16, 8, 13, 14)

# Calculate the mean absolute deviation
mean(abs(linkedin - facebook), na.rm = TRUE)

###Write Your Own Function
# Create a function pow_two()
pow_two <- function(x) {
  x ^ 2
}

# Use the function 
pow_two(12)

# Create a function sum_abs()
sum_abs <- function(x, y) {
  abs(x) + abs(y)
}

# Use the function
sum_abs(-2, 3)

###Write Your Own Function (2)
# Define the function hello()
hello <- function() {
  print("Hi there!")
  TRUE
}

# Call the function hello()
hello()

# Define the function my_filter()
my_filter <- function(x) {
  if (x > 0) {
    return(x)
  } else {
    return(NULL)
  }
}

# Call the function my_filter() twice
my_filter(5)
my_filter(-5)

###Write Your Own Function (3)
# Extend the pow_two() function
pow_two <- function(x, print_info = TRUE) {
  y <- x ^ 2
  if (print_info) {
    print(paste(x, "to the power two equals", y))
  }
  return(y)
}

###Function Scoping
two_dice <- function() {
  possibilities <- 1:6
  dice1 <- sample(possibilities, size = 1)
  dice2 <- sample(possibilities, size = 1)
  dice1 + dice2
}

###R Passes Arguments By Value
increment <- function(x, inc = 1) {
  x <- x + inc
  x
}
count <- 5
a <- increment(count, 2)
b <- increment(count)
count <- increment(count, 2)

###R You Functional?
# The linkedin and facebook vectors have already been created for you

# Define the interpret function
interpret <- function(num_views) {
  if (num_views > 15) {
    print("You're popular!")
    return(num_views)
  } else {
    print("Try to be more visible!")
    return(0)
  }
}

# Call the interpret function twice
interpret(linkedin[1])
interpret(facebook[2])

###R You Functional? (2)
# The linkedin and facebook vectors have already been created for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
facebook <- c(17, 7, 5, 16, 8, 13, 14)

# The interpret() can be used inside interpret_all()
interpret <- function(num_views) {
  if (num_views > 15) {
    print("You're popular!")
    return(num_views)
  } else {
    print("Try to be more visible!")
    return(0)
  }
}

# Define the interpret_all() function
interpret_all <- function(views, return_sum = TRUE) {
  count <- 0
  for (v in views) {
    count <- count + interpret(v)
  }
  if (return_sum) {
    return(count)
  } else {
    return(NULL)
  }
}

# Call the interpret_all() function on both linkedin and facebook
interpret_all(linkedin)
interpret_all(facebook)

###Load An R Package
# The mtcars vectors have already been prepared for you
wt <- mtcars$wt
hp <- mtcars$hp

# Request the currently attached packages
search()

# Try the qplot() function with wt and hp
qplot(wt, hp)

# Load the ggplot2 package
library("ggplot2")

# Retry the qplot() function
qplot(wt, hp)

# Check out the currently attached packages again
search()

