# Exercise 8 - Carol Moreira

# Setting working directory
> setwd("~/Desktop")

# Loading data and reading csv file
> iris <- read.csv("iris.csv", header = TRUE, stringsAsFactors = FALSE)

# Replicate the functionality of the head function we used in Bash.
  # In bash, head is used to print the first ten lines (by default) or any other
  # amount specified of a file or files. In R, readLines serves the same purpose
  # and the amount of lines can be specified. 
> linesiris <- readLines('iris.csv', n=10)

# Print the last 2 rows in the last 2 columns to the R terminal
> last2columns <- iris [,c(4,5)]
> last2rows2columns <- tail(last2columns, n=2)

# Get the number of observations for each species included in the data set
> table(iris$Species)

# Get rows with Sepal.Width > 3.5
> spwdt <- iris[iris$Sepal.Width > 3.5,]

# Write the data for the species setosa to a comma-delimited file names 
  # ‘setosa.csv’
> setosa <- iris[iris$Species == 'setosa',]
> write.csv(setosa, "~/Desktop/setosa.csv")

# Calculate the mean, minimum, and maximum of Petal.Length for observations from
  # virginica
> petalspecies <- iris[,c(3,5)]
> petalvirginica <- petalspecies[petalspecies$Species == 'virginica',]
> mean(petalvirginica$Petal.Length)
> min(petalvirginica$Petal.Length)
> max(petalvirginica$Petal.Length)
