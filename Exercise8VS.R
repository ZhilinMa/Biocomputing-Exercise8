read.csv("iris.csv")-> iris
#1 
nrow(iris)-> irisrows
#head function by selecting rows from this
head=iris[1:irisrows,]
head
#2 
  #last two rows in the last two columns 
nrow(iris)->irisrows
ncol(iris)->iriscolumns
last2= iris[(irisrows-1):irisrows, (iriscolumns-1):iriscolumns]
last2
  #get the number of observations for each species included in the data set
nrow(iris[iris$Species=="setosa",])
nrow(iris[iris$Species=="versicolor",])
nrow(iris[iris$Species=="virginica",])
  #get rows with Sepal.Width > 3.5
SW<- iris[iris$Sepal.Width>3.5,]
SW
  #write the data for the species setosa to setosa.csv
setosa<-iris[iris$Species=="setosa",]
write.csv(setosa, "setosa.csv")
  #mean min and max Petal lengths from virginica
virginicaPL<-iris[iris$Species=="virginica", "Petal.Length"]
mean(virginicaPL)
min(virginicaPL)
max(virginicaPL)