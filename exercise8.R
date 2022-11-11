#Exercise8
#first need to set correct working directory
setwd("~test/Exercises/Biocomputing-Exercise8/")

#make a variable containing file
iris=read.table("iris.csv",header=TRUE,sep=",")

#create version of head function in bash
topfive=iris[1:5,]

#problem2
#last two rows and last two columns
#we know the last two columns are columns 4 and 5
tail(iris[4:5],n=2)

#number of observations for each species
#I am going to create a variable for each species, then count the number of rows included in each variable
setosa=iris[iris$Species=="setosa",]
nrow(setosa)
versicolor=iris[iris$Species=="versicolor",]
nrow(versicolor)
virginica=iris[iris$Species=="virginica",]
nrow(virginica)

#sepalwidth>3.5
iris[iris[,2]>3.5,]

#data for setosa into new file
setosa=iris[iris$Species=="setosa",]
write.table(setosa,file="setosa.csv")

#mean,minimum, and maximum of Petal.Length from virginica
mean(iris[iris$Species=="virginica",]$Petal.Length)
min(iris[iris$Species=="virginica",]$Petal.Length)
max(iris[iris$Species=="virginica",]$Petal.Length)

