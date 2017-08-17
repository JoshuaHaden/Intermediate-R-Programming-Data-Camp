###Chapter 2 Loops

###Write A While Loop
# Initialize the speed variable
speed <- 64

# Code the while loop
while (speed>30) {
  print("Slow down!")
  speed <- speed - 7
}

# Print out the speed variable
speed

###Throw In More Conditionals
# Initialize the speed variable
speed <- 64

# Extend/adapt the while loop
while (speed > 30) {
  print(paste("Your speed is",speed))
  if (speed > 48) {
    print("Slow down big time!")
    speed <- speed - 11
  } else {
    print("Slow down!")
    speed <- speed - 6
  }
}

###Stop The While Loop: Break
# Initialize the speed variable
speed <- 88

while (speed > 30) {
  print(paste("Your speed is",speed))
  
  # Break the while loop when speed exceeds 80
  if (speed > 80)
    break
  
  if (speed > 48) {
    print("Slow down big time!")
    speed <- speed - 11
  } else {
    print("Slow down!")
    speed <- speed - 6
  }
}

###Build A While Loop From Scratch
# Initialize i as 1 
i <- 1

# Code the while loop
while (i <= 10) {
  print(i * 3)
  if ( (i * 3) %% 8 == 0) {
    break
  }
  i <- i + 1
}

###Loop Over A Vector
# The linkedin vector has already been defined for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)

# Loop version 1
for (p in linkedin) {
  print(p)
}

# Loop version 2
for (i in 1:length(linkedin)) {
  print(linkedin[i])
}

###Loop Over A List
# The nyc list is already specified
nyc <- list(pop = 8405837, 
            boroughs = c("Manhattan", "Bronx", "Brooklyn", "Queens", "Staten Island"), 
            capital = FALSE)

# Loop version 1
for (info in nyc) {
  print(info)
}

# Loop version 2
for (i in 1:length(nyc)) {
  print(nyc[[i]])
}

###Loop Over A Matrix
# The tic-tac-toe matrix has already been defined for you
ttt <- matrix(c("O", NA, "X", NA, "O", NA, "X", "O", "X"), nrow = 3, ncol = 3)

# define the double for loop
for (i in 1:nrow(ttt)) {
  for (j in 1:ncol(ttt)) {
    print(paste("On row", i, "and column", j, "the board contains", ttt[i,j]))
  }
}

###Mix It Up With Control Flow
# The linkedin vector has already been defined for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)

# Code the for loop with conditionals
for (li in linkedin) {
  if (li > 10) {
    print("You're popular!")
  } else {
    print("Be more visible!")
  }
  print(li)
}

###Next, You Break It
# The linkedin vector has already been defined for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)

# Adapt/extend the for loop
for (li in linkedin) {
  if (li > 10) {
    print("You're popular!")
  } else {
    print("Be more visible!")
  }
  
  # Add code to conditionally break iteration
  if (li > 16) {
    print("This is ridiculous, I'm outta here!")
    break
  }
  
  # Add code to conditionally skip iteration
  if (li < 5) {
    print("This is too embarrassing!")
    next
  }
  
  print(li)
}

###Build A For Loop From Scratch
# Pre-defined variables
rquote <- "r's internals are irrefutably intriguing"
chars <- strsplit(rquote, split = "")[[1]]

# Initialize rcount
rcount <- 0

# Finish the for loop
for (char in chars) {
  if (char == "r") {
    rcount <- rcount + 1
  }
  if (char == "u") {
    break
  }
}

# Print out rcount
rcount

