# set working directory
setwd('~/Biocomputing/Biocomputing-Exercise8/')

# PROBLEM 1
# head function implementation
table <- read.table(file="iris.csv",sep=",",header = TRUE)

# turn table into a matrix

# number of lines wanted
numLines <- 5

# print rows to the terminal
table[1:numLines,]

# PROBLEM 2
# Load iris.csv file
table2 <- read.table(file="iris.csv",sep=",",header = TRUE)
# turn table to matrix

# print last 2 rows and last 2 columns
text <- "Last two rows of the table:"
text

botrow <- nrow(table2)
table2[(botrow-1):botrow,]

text <- "Last two columns of the table:"
text

colrow <- ncol(table2)
table2[,(colrow-1):colrow]

# number of operations for each species (using tables generated above)
text <- "Setosa operations:"
text
setosa = table2[table2[,5] == "setosa",]
nrow(setosa)
text <- "Versicolor operations:"
text
versicolor = table2[table2[,5] == "versicolor",]
nrow(versicolor)
text <- "Virginica operations:"
text
virginica = table2[table2[,5] == "virginica",]
nrow(virginica)

# rows with Sepal.Width > 3.5
text <- "Rows with Sepal.Width > 3.5"
text
width = table2[table2[,2] > 3.5,]
width

# write "setosa" data to a new file (using setosa table above)
write.table(x=setosa,file="setosa.csv",sep=",",row.names=FALSE)

# calculate mean, minimum, and maximum of Petal.Length for virginica species
# using the virginica table above
length = virginica[,3]
text <- "Minimum Petal.Length of Virginica:"
text
min(length)
text <- "Maximum Petal.Length of Virginica:"
text
max(length)
text <- "Mean Petal.Length of Virginica:"
text
mean(length)

