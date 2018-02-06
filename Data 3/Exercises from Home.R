# Exercises

# Exercise 1. (from here -- 
#              http://bioinformatics.nki.nl/courses/Rstat_12_I/texts/resources/exercises_apply_LP121206.pdf)


# Let's create a 5x5 matrix with values drawn from a normal distribution
mat <- matrix(NA, ncol=5, nrow=5)
for(i in 1:ncol(mat)) {
  mat[,i] <- rnorm(5)
}
mat

# a) Use apply to calculate the standard deviation of the columns of the matrix.

apply(mat,2,sd)

# b) Use apply to calculate the maximum value in each of the rows of the matrix.

apply(mat,1,max)

# Exercise 2.
# For each age (not age group) in W1mod find maximum BMI and write the BMIs
# into a vector.
# 
# First do this using apply() family of functions and then using summarise()
#  in dplyr

# Exercise 3. 

# Create 1000 vectors of random length in the range from 1 to 100 that have values from the
# standard normal distribution. Put them into a list. For each vector calculate the mean
# and return the results as a) a list, b) a vector.

# Note that when indexing a list you need to use double square brackets: [[]]

# Create a scatter plot showing how the mean is associated with the sample size
