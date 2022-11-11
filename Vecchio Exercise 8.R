# Exercise 8
# Joe Vecchio

setwd("~/Desktop") # Set Working directory to path containing data file
iris <- read.csv("iris.csv") # Assign variable name to file
write.table(iris, file = "iris.txt", sep = "\t", quote = FALSE) # Renamed filed .txt and separated by tab
datatable <- read.table("iris.txt") # Read table

# Number One
file <- "iris.csv" # Load data
n <- 10 # N number of rows
datatable <- read.csv("iris.csv") # variable of iris.csv
firstnrows <- datatable[1:linenumber,] # variable containing first n rows

# Number Two

#2a
rownumber <- nrow(iris) # counts number of rows
columnnumber <- ncol(iris) # counts number of columns
iris[(rownumber-1):rownumber, (columnnumber-1): columnnumber] # selection last two rows and columns of dataset

#2b
setcount <- sum(iris$Species == "setosa") # number of observations for setosa
vercount <- sum(iris$Species == "versicolor") # number of observations for versicolor
vircount <- sum(iris$Species == "virginica") # number of observations for virginica

#2c
sepalwidth35 <- sum(iris$Sepal.Width > 3.5) # new variable with amount of sepal widths over 3.5

#2d
setosadata <- iris[iris$Species=="setosa",] # selecting all data with setosa species
write.table(setosadata, file = "setosa.csv", sep = ",", quote = FALSE) # comma delimited

#2e
virginicadata <- iris[iris$Species=="virginica",] # selecting all data with virginica species
virginicapetallengths <- virginicadata[,3] # defining new variable with petal lengths from third column
maxvirplength <- max(virginicapetallengths) # maximum value
minvirplength <- min(virginicapetallengths) # minimum value
avgvirplength <- mean(virginicapetallengths) # average value