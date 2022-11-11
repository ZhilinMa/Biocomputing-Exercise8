#get into correct working directory

#Question1:
#write code that replicates functionality of head in bash
#Define variable with file to return lines from
#Define variable representing number of lines returned from top of indicated file

#To replicate head (bash) in R:
#FirstXRows will be the variable your parsed information will be stored
  #Would recommend using _dataframe after to explain where it came from
#Where X is the number of rows you want to parse out:
#FirstXRows<-dataframe[1:X,] 

#Question2:
#import iris.csv
iris <- read.table("iris.csv", header=TRUE, sep=',')

#print last 2 rows in last 2 columns
dim(iris) #to find out the dimensions
last2=iris[149:150,4:5]
last2

#get the number of observations for each species in the dataset
table(iris$Species)

#get rows with Sepal.Width > 3.5
widesepal=iris[iris$Sepal.Width > 3.5,]

#write the data for species setosa to csv, named "setosa.csv"
iris_setosa=iris[iris$Species=="setosa",]
write.table(iris_setosa, "setosa.csv",row.names=FALSE,sep=',')

#calculate mean, minimum, maximum of Petal.length from virginica
#isolate virginica
iris_virginica=iris[iris$Species=="virginica",]
mean(iris_virginica$Petal.Length)
max(iris_virginica$Petal.Length)
min(iris_virginica$Petal.Length)
