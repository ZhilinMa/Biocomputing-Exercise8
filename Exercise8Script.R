#This is my work for Exercise 8 in Tutorial due 11/11
setwd("/Users/kevinbuck/Desktop/BioComputing/Exercises/Biocomputing-Exercise8")
####Problem 1: Replicating the head function in R####

#way 1: manual (run these lines sequentially, and user inputs the agruments)

file.name <-  readline(prompt="Please enter file name to be read:  ") #user specifies file name here
num.lines <- as.numeric(readline(prompt="Enter # of lines to read: ")) #user specifies number of lines to be read from table
table <- read.csv(file=file.name)
print(table[1:num.lines,])

#way 2 : Define new function (this is something Stuart didnt teach but I know might be more efficient)

newHead <- function(file.input,number.lines){
  temp.table <- read.csv(file = file.input)
  print(temp.table[1:number.lines,])
}

newHead("iris.csv",3)  #this is the input that would then be used in the terminal to utilize the new function

#### Problem 2: Manipulating Iris.csv ####
iris.table <- read.csv("iris.csv")
iris.row=nrow(iris.table)
iris.col=ncol(iris.table)
#printing last 2 rows in last 2 columns
iris.table[(iris.row-1):iris.row,(iris.col-1):iris.col]

#getting the number of observations for each species included in the dataset
species.list=unique(iris.table[,"Species"])
print(species.list)
num.setosa <- sum(iris.table[,"Species"] == "setosa")
num.versicolor <- sum(iris.table[,"Species"] == "versicolor")
num.virginica <- sum(iris.table[,"Species"] == "virginica")
#return rows with Sepal.Width > 3.5
iris.table[iris.table[,"Sepal.Width"]>3.5,]
#writing all data for setosa species to comma delimited file named setosa.csv
setosa.only <- iris.table[iris.table[,"Species"] == "setosa",]
write.table(setosa.only,file="setosa.csv")
#calculating min, max, mean for Petal.Length observations of virginica
virginica.only <- iris.table[iris.table[,"Species"] == "virginica",]
maxPL <- max(virginica.only$Petal.Length)
minPL <- min(virginica.only$Petal.Length)
meanPL <- mean(virginica.only$Petal.Length)
print(paste("The maximum Virginica Petal length is ", maxPL,sep=""))
print( paste("The minumum Virginica Petal length is ", minPL,sep=""))
print(paste("The maximum Virginica Petal length is ", meanPL,sep=""))
