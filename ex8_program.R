setwd("~/Desktop/class materials/biocomputing/R_Unit/Biocomputing-Exercise8/")

# 1) replicate head function
name <- "iris.csv"
num <- 5
file_contents <- read.csv(name)

print(file_contents[1:num,])

  # head function to compare
head(file_contents,num)


# 2) 
iris <- read.csv("iris.csv")

  # 2.1) print last 2 rows in last 2 cols to terminal
rows = nrow(iris)
cols = ncol(iris)
print(iris[ (rows-1):rows,  (cols-1):cols ] )


  # 2.2) get num of observations for each species included in  data set
setosa     = sum(iris$Species=="setosa")
versicolor = sum(iris$Species=="versicolor")
virginica  = sum(iris$Species=="virginica")


  # 2.3) get rows wih Sepal.Width > 3.5
s_width = sum(iris$Sepal.Width > 3.5)


  # 2.4) write data for species with setosa to 'setosa.csv'
dataSet = iris[iris$Species=="setosa",]
write.table(dataSet,"setosa.csv",row.names=FALSE,sep=",")


  # 2.5) calculate mean, min, max of Petal.Length for observations from virginica
virginicaSet = iris[iris$Species=="virginica",]

total = nrow(virginicaSet)

mean_val = sum(virginicaSet$Petal.Length)/total
max_val  = max(virginicaSet$Petal.Length)
min_val  = min(virginicaSet$Petal.Length)





