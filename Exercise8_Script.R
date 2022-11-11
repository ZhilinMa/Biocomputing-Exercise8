#Question 1. Write R code that replicates the functionality of the head function in bash
setwd("~/Desktop/biocomputing-2022/Biocomputing-Exercise8")
file <- read.csv("iris.csv")
number_of_lines = 5
head_lines <- file [1:number_of_lines,]
print (head_lines)

#Question 2. Load the data in the iris.csv file and write code for the following:
iris_file <- read.csv("iris.csv")
#print the last 2 rows in the last 2 columns to the R terminal
rows <- nrow(iris_file)
columns <- ncol(iris_file)
iris_file [(rows-1):rows, (columns-1:columns)]
#get the number of observations for each species included in the data set
num_observations <- table(iris_file$Species)
num_observations
#get rows with Sepal.Width > 3.5
sepal_width <- iris_file[iris_file$Sepal.Width>3.5,]
sepal_width
#write the data for the species setosa to a comma-delimited file named "setosa.csv"
setosa <- iris_file[iris_file$Species=="setosa",]
write.csv(setosa, file="setosa.csv")
#calculate the mean, minimum, and maximum of Petal.Length for observations from virginica
virginica <- iris_file[iris_file$Species=="virginica",]
virpetallengths <- virginica$Petal.Length
pl_mean <- mean(virpetallengths)
pl_min <- min(virpetallengths)
pl_max <- max(virpetallengths)