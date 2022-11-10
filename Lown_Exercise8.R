# Laurel Lown
# Exercise 8 due 11/11

setwd("/Users/laurellown/Documents/PhD/fall_22/intro_to_biocomputing/exercises/Biocomputing-Exercise8")
getwd()

# 1. Replication of head function in bash
working_file=read.csv("iris.csv") # import data set from desired file
numberrows=10 # set to desired rows you wish to view
toplines=working_file[1:numberrows,]
toplines

# 2. Various iris.csv things
iris_df=read.csv("iris.csv")
# Print the last 2 rows in the last 2 columns
numcolumns=ncol(iris_df) # will display total number of columns
numrows=nrow(iris_df) # will display total number of rows
last2_2=iris_df[(numrows-1):numrows,(numcolumns-1):numcolumns] # will display last 2 rows and last 2 columns
last2_2

# Get the number of observations for each species included in the data set
numsetosa=sum(iris_df$Species=="setosa")
numsetosa
numversicolor=sum(iris_df$Species=="versicolor")
numversicolor
numvirginica=sum(iris_df$Species=="virginica")
numvirginica

table(iris$Species) # another option to display all counts in one line of code

#Get rows with Sepal.width > 3.5
sepalwidthrows=iris_df[iris_df$Sepal.Width>3.5,]
sepalwidthrows

# Write the data for the species setosa to a .csv file called setosa.csv
setosa=iris_df[iris_df$Species=="setosa",]
write.csv(setosa,"/Users/laurellown/Documents/PhD/fall_22/intro_to_biocomputing/exercises/Biocomputing-Exercise8/setosa.csv")

# Calculate the mean, min, and max of Petal.Length for observations of virginica
virginica=iris_df[iris_df$Species=="virginica",] # isolate virginica data
virginica_petal=virginica$Petal.Length # separate petal.legth data
mean_virginica=mean(virginica_petal) # calculates mean
min_virginica=min(virginica_petal) # calculates minimum
max_virginica=max(virginica_petal) # calculates maximum


