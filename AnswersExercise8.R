#Number 1
#create a variable that sets the number of lines
num_lines=3
#Create variable iris from reading iris.csv
#Assume ~ takes the user to C:Users/15135/Documents, but one needs to move to Desktop (also in 15135) to use the file 
iris=read.csv("~/../Desktop/Exercise8/Biocomputing-Exercise8/iris.csv")
#runs the same function of head, using num_lines as a variable
topNlines=iris[1:num_lines,]
#print the contents
topNlines

#Number 2
#first bullet
#start off by assigning iris
iris=read.csv("~/../Desktop/Exercise8/Biocomputing-Exercise8/iris.csv")
#determine number of columns
iris
#since it is determined that the 4th and 5th columns are last, one can run this code to isolate these two columns with the data from the last two rows
tail(iris[c(4,5)], n=2)

#second bullet
#determine observation number for each species
table(iris$Species)

#third bullet
#get rows with Sepal.Width>3.5
subset(iris, Sepal.Width > 3.5)

#fourth bullet
#write data for the species setosa to a comma-delimited file named 'setosa.csv'
setosa=subset(iris, Species=="setosa")
write.table(setosa, '~/../Desktop/Exercise8/Biocomputing-Exercise8/setosa.csv', sep=',')

#fifth row
#calculate the mean, minimum, and maximum of Petal.Length for observations from virginica
virginica = subset(iris, Species=="virginica")
print("Mean petal length for virginica: ")
print(mean(virginica[["Petal.Length"]]))
print("Min petal length for virginica: ")
print(min(virginica[["Petal.Length"]]))
print("Max petal length for virginica: ")
print(max(virginica[["Petal.Length"]]))
