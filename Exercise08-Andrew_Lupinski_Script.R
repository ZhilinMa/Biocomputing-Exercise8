###Exercise 8 -Andrew Lupinski###

#Load the .csv file "iris.csv"
iris<-read.table("iris.csv", header=TRUE, sep=",")

### Question 1: Write R code that replicates the functionality of the head function we used in bash.
#I am going to subset my data to output the top 20 lines of code from the iris data set
TopTwenty<-iris[1:20,]
TopTwenty 

### Question 2:

#Print the last 2 rows in the last 2 columns to the R terminal:
dim(iris)
# iris.csv has 150 rows and 5 columns
numcolumns=ncol(iris)
numrows=nrow(iris)
last2x2<-iris[(numrows-1):numrows,(numcolumns-1):numcolumns]
last2x2

#Get the number of observations for each species included in the data set:
#What are the unique species?
unique(iris$Species)
#number of observations per species
nrow(iris[iris$Species=="setosa",])
nrow(iris[iris$Species=="versicolor",])
nrow(iris[iris$Species=="virginica",])

#Get rows with Sepal.Width > 3.5
sepalWidth<-iris[iris[,2]>3.5,]
sepalWidth

#Write the data for the species setosa to a comma-delimited file names ‘setosa.csv’
setosa<-iris[iris$Species=="setosa",]
write.table(setosa,"setosa.csv",row.names=FALSE,col.names=TRUE,sep=",")

#Calculate the mean, minimum, and maximum petal length from virginica
virginica<-iris[iris$Species=="virginica",]
virginicaPetalLength<-virginica[,3]
mean(virginicaPetalLength)
min(virginicaPetalLength)
max(virginicaPetalLength)
