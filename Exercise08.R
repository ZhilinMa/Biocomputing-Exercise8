
#set working directory
setwd("~/Desktop/BIOS60125/Biocomputing-Exercise8/")

table <- read.table("iris.csv", header = TRUE, sep = ",")

##Assignment 1
fileName <- "iris.csv"
num <- 7
#load file
table <- read.csv(fileName)
table[1:num,]

##Assignment2
Iris <- read.csv("iris.csv")
###2.1
numRows <- nrow(Iris)
numColumns <- ncol(Iris)
Iris[(numRows - 1):numRows, (numColumns-1):numColumns]

###2.2
setosa <- sum(Iris$Species=="setosa")
versicolor <- sum(Iris$Species=="versicolor")
virginicca <- sum(Iris$Species=="virginica")
setosa
versicolor
virginicca

###2.3
numWidth <- sum(Iris$Seoal.width > 3.5)

###2.4
subtable <- Iris[Iris$Species=="setosa",]
write.table(subtable, "setosa.csv", row.names = FALSE, sep = ",")

###2.5
subtable2 <- iris[iris$Species=="virginica",]
virginicaPetalLength <- subtable2[,3]
mean(virginicaPetalLength)
min(virginicaPetalLength)
max(virginicaPetalLength)