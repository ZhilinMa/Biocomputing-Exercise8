readfile<-"iris.csv"
num<-5
data<-read.csv(file=readfile,header=TRUE)
head_of_iris<-data[1:num,]
head_of_iris

iris<-read.csv(file="iris.csv",header=TRUE)
iris[(nrow(iris)-1):nrow(iris),(ncol(iris)-1):ncol(iris)]


nrow(iris[iris$Species == "virginica", ])
nrow(iris[iris$Species == "versicolor", ])
nrow(iris[iris$Species == "setosa", ])

iris[iris$Sepal.Width > 3.5, ]

write.table((iris[iris$Species == "setosa", ]),file="setosa.csv",sep = ",")

virginica<-iris[iris$Species == "virginica", ]
mean(virginica$Petal.Length)
max(virginica$Petal.Length)
min(virginica$Petal.Length)