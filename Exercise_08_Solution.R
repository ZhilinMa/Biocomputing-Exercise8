#Part 1: rebuilding head
#you put what you want to head in for these two variables, making sure that the file
#you want to head is in R's working directory
fileToHead <- "iris.csv" #<- put whatever file you want to head here in place of iris.csv
numLinestoHead <- 18 #<- put however many lines you want to head here in place of 7

#and then R does the rest
fileToHeadDF <- read.csv(fileToHead)
fileToHeadDF[1:numLinestoHead,]


#Part 2: working with irises
#creates a data frame from iris.csv
df <- read.csv("iris.csv")

#1 prints the last 2 columns of the last 2 rows of iris.csv using the data frame
df[(dim(df)[1]-1):dim(df)[1],(dim(df)[2]-1):dim(df)[2]]

#2 gives the number of observations for each plant
#for setosa:
num_obs_set <- dim(df[df[,5]=="setosa",])[1]

#for versicolor:
num_obs_vers <- dim(df[df[,5]=="versicolor",])[1]

#for virginica:
num_obs_virg <- dim(df[df[,5]=="virginica",])[1]

#3 gets rows with Sepal Width > 3.5 and puts them in a data frame
wideSepal <- df[df[,2]>3.5,]

#4 writes the data for setosa to a data frame and then a csv
setosa <- df[df[,5]=="setosa",]
write.csv(setosa, "setosa.csv")

#5 calculates the mean, minimum, and maximum of Petal.Length for observations from virginica
virginica <- df[df[,5]=="virginica",]
meanPetalLengthVirginica <- mean(virginica$Petal.Length)
minPetalLengthVirginica <- min(virginica$Petal.Length)
maxPetalLengthVirginica <- max(virginica$Petal.Length)
