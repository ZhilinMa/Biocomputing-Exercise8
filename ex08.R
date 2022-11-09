setwd("~/Desktop/biocomputing/Biocomputing-Exercise8")

# Problem 1:
# create a function that replicates the behavior of head
my_head <- function(input_file, num_lines) {
  head_lines <- input_file[1:num_lines,]
  return(head_lines)
}
# test my_head function with iris and different num_lines
my_input_file <- read.csv(file = "iris.csv", header = TRUE)
my_head(my_input_file, 7)
my_head(my_input_file, 12)
my_head(my_input_file, 10)

# Problem 2:
# load the data contained in "iris.csv"
iris_data = read.csv(file = "iris.csv", header = TRUE)
# print the last 2 rows in the last 2 columns
rows = nrow(iris_data)
cols = ncol(iris_data)
iris_data[(rows-1):rows, (cols-1):cols]
# get num_observations for each species in data set
num_obsv <- table(iris_data$Species)
num_obsv
# get rows with Sepal.Width > 3.5
sepal_width <- subset(iris_data, Sepal.Width > 3.5)
sepal_width
# write setosa data to setosa.csv
setosa <- subset(iris_data, Species=="setosa")
write.csv(setosa, file="setosa.csv", row.names=FALSE)
# mean, min, max of petal.length from virginica
virginica <- subset(iris_data, Species=="virginica")
mean(virginica$Petal.Length)
min(virginica$Petal.Length)
max(virginica$Petal.Length)